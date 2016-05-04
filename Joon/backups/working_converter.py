#!/usr/bin/env python

from old_translator.helper import *
import sys


def usage():
    print "Usage: python prefix_infix_converter.py filename"
    return sys.exit(0)


def translate_operations(exp):
    """
    Formats expression as LaTeX
        (does only operations)
    """
    for order in range(2):
        i = 0
        while i < len(exp):
            if exp[i] == "^" and order == 0:
                power = exp.pop(i+1)
                if power[-1] == ")":
                    power = ''.join(power[1:-1])
                exp[i-1] += exp.pop(i)+"{"+power+"}"
                i -= 2

            elif exp[i] == "*" and order == 1:
                exp[i-1] = exp[i-1]+" "+exp.pop(i+1)
                exp.pop(i)
                i -= 2

            elif exp[i] == "/" and order == 1:
                denominator = exp.pop(i+1)
                before = ""
                if exp[i-1][0] == "-":
                    before = "-"
                    exp[i-1] = exp[i-1][1:]
                if denominator[-1] == ")":
                    denominator = ''.join(denominator[1:-1])
                if denominator != "1":
                    exp[i-1] = before+"\\frac{"+exp[i-1]+"}{"+denominator+"}"
                exp.pop(i)
                i -= 2

            i += 1

    return ''.join(exp)


def convert(exp, param=""):
    """
    Formats based on category
    """
    exp = exp.strip()
    if exp[0] == "[":
        exp = exp[1:-1].split(",")
        if param in ["begin", "factor"]:
            return "\\frac{"+convert(exp[0])+"}{"+convert(exp[1])+"}"
        elif param in ["general"]:
            return [convert(exp[0]), convert(exp[1])]
    elif param in ["even", "odd"]:
        exp = exp.split(",")
        return [convert(exp[0]), convert(exp[1])]

    parens, i = list(), 0
    exp = format_text(exp, FORMATTING).split()

    while i < len(exp):
        if exp[i] == "(":
            try:
                parens.append([i, FUNCTIONS[exp[i-1]]])
            except KeyError:
                parens.append([i])

        elif exp[i] == ")":
            info = parens.pop()
            l = info[0]
            piece = translate_operations(exp[l:i+1])

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

    exp = format_text(translate_operations(exp), CHARACTERS)
    return exp


def generate_latex(info):
    """
    Adds spacing based on category of Maple expression
    """
    result = "\\begin{equation}\n  "+info["lhs"]+"\n  = "

    if info["category"] == 'power series':
        result += info["factor"]+" \\sum_{k=0}^\\infty "+info["general"]

    elif info["category"] == "asymptotic series":
        result += info["factor"]+"\\left("+info["general"]+"\\right), z\\rightarrow\\infty"

    elif info["category"] == "S-fraction":
        if "begin" in list(info):
            result += info["begin"]+"+\\CFK{m}{1}{\\infty}@{"+info["general"][0]+"}{"+info["general"][1]+"}"
        else:
            result += info["factor"]+" \\CFK{m}{1}{\\infty}@{"+info["general"][0]+"}{"+info["general"][1]+"}"

    elif info["category"] == "C-fraction":
        if "begin" in list(info):
            result += info["begin"]+"+\\CFK{m}{2}{\\infty}@{"+info["even"][0]+"}{"+info["even"][1]+"}"
        else:
            result += info["factor"]+" \\CFK{m}{2}{\\infty}@{"+info["even"][0]+"}{"+info["even"][1]+"}"

    else:
        pass

    # adds metadata
    result += "\n  %  \\constraint{$"+info["constraints"] + "$}"
    result += "\n  %  \\category{"+info["category"]+"}"
    result += "\n\\end{equation}"

    return result


def parse(li):
    """
    Parses the input data
    """
    result, exp = list(), list()
    li = li.split("\n")
    for line in li:
        if line != "):" and " = " in line:
            line = line.split(" = ")
            line[0] = line[0][2:]
            if line[0] in ["label", "booklabel", "parameters", "general",
                           "constraints", "begin", "even", "odd"]:
                line[1] = line[1][1:-2]
            elif line[0] in ["function", "factor", "lhs"]:
                line[1] = line[1][:-1]
            elif line[0] in ["category"]:
                line[1] = line[1][1:-1]
            if line[0] in ["factor", "begin", "lhs", "general",
                           "constraints", "even", "odd"]:
                line[1] = convert(line[1], line[0])
            exp.append(line)
        elif line == "):":
            result.append(dict((line[0], line[1]) for line in exp))
            exp = list()

    return result


def main():
    if len(sys.argv) != 2:
        usage()

    contents = open(sys.argv[1]).read()
    expressions = parse(contents)
    text = ""

    for exp in expressions:
        result = generate_latex(exp)
        text += result + "\n\n"
        print "Output for equation "+exp["booklabel"]+": \n"+result+"\n"

    with open("testing/test.tex", "w") as f:
        text = open("testing/primer").read() + text + "\\end{document}"
        f.write(text)


if __name__ == '__main__':
    main()
