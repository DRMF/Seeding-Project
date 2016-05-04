#!/usr/bin/env python

import sys

filename = "mpl/modbessel.mpl"

functions = dict((line.split(" || ")[0], line.split(" || ")[1:]) for line in
                 open("keys/functions").read().split("\n")[1:-1])
spacing = list([line, " "+line+" "] for line in
               open("keys/spacing").read().split("\n")[1:-1])
symbols = list(line.split(" || ") for line in
               open("keys/symbols").read().split("\n")[1:-1]
               if line != "" and "%" not in line)
parentheses = list(line.split(" || ") for line in
                   open("keys/parens").read().split("\n")[1:-1])
special = list(line.split(" || ") for line in
               open("keys/special").read().split("\n")[1:-1])


def format_text(string, li):
    for key in li:
        string = string.replace(key[0], key[1])
    return string


def usage():
    print "Usage: python converter.py"
    return sys.exit(0)


def basic_translate(exp):
    """
    Translates basic mathematical operations (does not include functions)
    Can't handle parentheses
    """
    for order in range(2):
        i = 0
        while i < len(exp):
            modified = False

            if exp[i] == "I":
                exp[i] = "i"

            elif exp[i] == "^" and order == 0:
                power = exp.pop(i+1)
                if power[-1] == ")":
                    power = ''.join(power[1:-1])
                exp[i-1] += "^{"+power+"}"
                modified = True

            elif exp[i] == "*" and order == 1:
                # rules for nicer spacing
                if exp[i-1][-1] in "0123456789" and exp[i+1][0] not in "0123456789" or exp[i-1][-1] not in "0123456789"\
                        and exp[i+1][0] in "0123456789" or exp[i+1][0] == "\\":
                    pass
                elif exp[i-1][-1] not in "})" and exp[i+1][0] != "\\":
                    exp[i-1] += " "
                exp[i-1] += exp.pop(i+1)
                modified = True

            elif exp[i] == "/" and order == 1:
                for index in [i-1, i+1]:
                    if exp[index][0] == "(" and exp[index][-1] == ")":
                        exp[index] = exp[index][1:-1]
                exp[i-1] = "\\frac{"+exp[i-1]+"}{"+exp.pop(i+1)+"}"
                modified = True

            if modified:
                exp.pop(i)
                i -= 1

            else:
                i += 1

    return ''.join(exp)


def translate(exp):
    """
    Translate a segment of Maple to LaTeX, including functions
    """
    exp = exp.strip()

    parens, i = list(), 0
    exp = format_text(exp, symbols+spacing).split()

    while i < len(exp):
        if exp[i] == "(":
            if exp[i-1] in functions:
                parens.append([i, functions[exp[i-1]]])
            else:
                parens.append([i])

        elif exp[i] == ")":
            info = parens.pop()
            l = info[0]
            piece = basic_translate(exp[l:i+1])

            if len(info) == 2:
                l -= 1
                func = info[1]
                piece = piece[1:-1].split(",")
                result = [func[-1]]
                for c in range(len(piece))[::-1]:
                    result += [piece[c], func[c]]
                piece = ''.join(result[::-1])

            exp = exp[0:l] + [piece] + exp[i+1:]
            i = l

        i += 1

    return format_text(basic_translate(exp), parentheses)


def convert(info):
    """
    Adds spacing based on the type
    """

    # parameters guaranteed to be present in Maple code
    exp_type, category, parameters, lhs, label, booklabel, constraints = "", "", "", "", "", "", ""
    # conditional parameters
    general, factor, begin, even, odd, front = "", "", "", "", "", ""

    for param in info:
        command = param + "="

        if param in ["lhs", "factor", "constraints", "front"]:
            command += "r'"+translate(info[param])+"'"
        else:
            command += "r'"+info[param]+"'"

        exec command

    result = "\\begin{equation*}\\tag{"+booklabel+"}\n  "+lhs+"\n  = "

    # translates the Maple information (with spacing)
    if exp_type == "series":
        # maybe something involving infix to postfix for the asymptotic series?
        general = translate(general)

        result += factor+" \\sum_{k=0}^\\infty "
        if category == "power series":
            result += general
        elif category == "asymptotic series":
            result += "\\left("+general+"\\right)"

        """
        if category == "power series":
            result += factor+" \\sum_{k=0}^\\infty "+general
        elif category == "asymptotic series":  # FIX THIS!
            print general
            result += "placeholder"


            # result += factor+"\\left("+general+"\\right), z\\rightarrow\\infty"
        """
    elif exp_type == "contfrac":
        start = 1  # in case the value of start isn't assigned

        if "even" in info:
            general = even.split("], [")
        else:
            general = general[1:-1].split("], [")

        if len(general) == 2:
            general[1] = general[1].split(", ")

        general[0] = general[0].split(", ")

        for i in range(len(general)):
            general[i] = [translate(piece) for piece in general[i]]

        general = general[0]

        """
        if len(general) == 1:
            general = general[0]
        else:
            for i in range(len(general)):
                general[i] = "\\frac{"+general[i][0]+"}{"+general[i][1]+"}"
        """

        if "begin" in info:
            begin = begin[1:-1].split("], [")

            '''
            if len(begin) == 1:
                begin[0] = begin[0][:-1]
            '''

            for piece in begin:
                piece = piece.split(", ")
                result += "\\frac{"+translate(piece[0])+"}{"+translate(piece[1])+"}+"
                start += 1

        elif "front" in info:
            result += front+"+"
            start -= 1

        if "factor" in info:
            result += factor+" "

        result += "\\CFK{m}{"+str(start)+"}{\\infty}@{"+general[0]+"}{"+general[1]+"}"

    # adds metadata
    result += "\n  %  \\constraint{$"+constraints+"$}"  # fix constraints
    result += "\n  %  \\category{"+category+"}"
    result += "\n\\end{equation*}"

    return format_text(result, special)


def parse(inp):
    inp = inp.split("\n")
    exp = dict()
    for line in inp:
        if "create" in line:
            exp["exp_type"] = line[9:-2]
        elif " = " in line:
            line = line.split(" = ")
            line[0] = line[0].strip()

            if line[0] in ["category"]:
                line[1] = line[1][1:-1].strip()

            elif line[0] in ["booklabel", "parameters", "general",
                             "label", "constraints", "begin",
                             "even", "odd"]:
                line[1] = line[1][1:-2].strip()

            elif line[0] in ["function", "lhs", "factor", "front"]:
                line[1] = line[1][:-1].strip()

            exp[line[0]] = line[1]

    return exp


def main():
    if len(sys.argv) != 1:
        usage()

    contents = open(filename).read().split("\n\n")
    text = ""

    for expression in contents:
        expression = parse(expression)

        text += convert(expression)+"\n\n"

    print text

    with open("testing/test.tex", "w") as f:
        text = open("testing/primer").read() + text + "\\end{document}"
        f.write(text)

if __name__ == '__main__':
    main()
