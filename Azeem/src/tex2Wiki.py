# Version 15: Minor Fixes
# Convert tex to wikiText
import csv  # imported for using csv format
import sys  # imported for getting args
import DLMFtex2Wiki as dlmf # imported for merging functionality for DLMF and KLS
from shutil import copyfile
import xml.etree.ElementTree as ET
import datetime


return_index = 0
next_formula_number = 0
lLink = ''
ET.register_namespace('', 'http://www.mediawiki.org/xml/export-0.10/')
root = ET.Element('{http://www.mediawiki.org/xml/export-0.10/}mediawiki')


def isnumber(char):  # Function to check if char is a number (assuming 1 character)
    try:
        float(char)
    except ValueError:
        return False
def getString(line):  # Gets all data within curly braces on a line
    # -------Initialization-------
    stringWrite = ""
    getStr = False
    pW = ""
    # ----------------------------
    for c in line:
        if c == "{" or c == "}":  # if there is a curly brace in the line
            getStr = not getStr  # toggle the getStr flag
            if c == "}":  # no more info needed
                break
        elif getStr:  # if within curly braces
            if not (pW == c and c == "-"):  # if there is no double dash (makes single dash)
                if c != "$":  # if not a $ sign
                    stringWrite += c  # this character is part of the data
                else:  # replace $ with ''
                    stringWrite += "\'\'"  # add double '
            pW = c  # change last character for finding double dashes
    return stringWrite.rstrip('\n').lstrip()  # return the data without newlines and without leading spaces


def getG(line):  # gets equation for symbols list
    start = True
    final = ""
    for c in line:
        if c == "$" and start:
            final += "<math> "
            start = False
        elif c == "$":
            final += "</math>"
            start = True
        else:
            final += c
    return final


def getEq(line):  # Gets all data within constraints,substitutions
    # -------Initialization-------
    per = 1
    stringWrite = ""
    fEq = False
    count = 0
    # ----------------------------
    for c in line:  # read each character
        if count >= 0 and per != 0:
            per += 1
            if c != " " and c != "%":
                per = 0
        if c == "{" and per == 0:
            if count > 0:
                stringWrite += c
            count += 1
        elif c == "}" and per == 0:
            count -= 1
            if count > 0:
                stringWrite += c
        elif c == "$" and per == 0:  # either begin or end equation
            fEq = not fEq  # toggle fEq flag to know if begin or end equation
            if fEq:  # if begin
                stringWrite += "<math>"
            else:  # if end
                stringWrite += "</math>"
        elif c == "\n" and per == 0:  # if newline
            stringWrite = stringWrite.strip()  # remove all leading and trailing whitespace

            # should above be rstrip?<-------------------------------------------------------------------CHECK THIS

            stringWrite += c  # add the newline character
            per += 1  # watch for % signs
        elif count > 0 and per == 0:  # not special character
            stringWrite += c  # write the character

    return stringWrite.rstrip().lstrip()


def getEqP(line):  # Gets all data within proofs
    per = 1
    stringWrite = ""
    fEq = False
    count = 0
    length = 0
    for c in line:
        if fEq and c != " " and c != "$" and c != "{" and c != "}" and not c.isalpha():
            length += 1
        if count >= 0 and per != 0:
            per += 1
            if c != " " and c != "%":
                # if c!="%":
                per = 0
        if c == "{" and per == 0:
            if count > 0:
                stringWrite += c
            count += 1
        elif c == "}" and per == 0:
            count -= 1
            if count > 0:
                stringWrite += c
        elif c == "$" and per == 0:
            fEq = not fEq
            if fEq:
                stringWrite += "<math> "
            else:
                if length < 10:
                    stringWrite += "</math>"
                else:
                    stringWrite += "</math>" + "<br />"
                length = 0
        elif c == "\n" and per == 0:
            stringWrite = stringWrite.strip()
            stringWrite += c
            per += 1
        elif count > 0 and per == 0:
            stringWrite += c

    return stringWrite.lstrip()


def getSym(line):  # Gets all symbols on a line for symbols list
    symList = []
    if line == "":
        return symList
    symbol = ""
    symFlag = False
    argFlag = False
    cC = 0
    for i in range(0, len(line)):
        # if "MeixnerPollaczek{\\lambda}{n}@{x}{\\phi}=\frac{\\pochhammer{2\\lambda}{n}}" in line:
        c = line[i]
        if symFlag:
            if c == "{" or c == "[":
                cC += 1
                argFlag = True
            if c != "}" and c != "]":
                if argFlag or c.isalpha():
                    symbol += c
                else:
                    symFlag = False
                    argFlag = False
                    symList.append(symbol)
                    symList += (getSym(symbol))
                    symbol = ""
            else:
                cC -= 1
                symbol += c
                if i + 1 == len(line):
                    p = ""
                else:
                    p = line[i + 1]
                if cC <= 0 and p != "{" and p != "[" and p != "@":
                    symFlag = False
                    # if "monicAskeyWilson{n+1}@{x}{a}{b}{c}{d}{q}+\\frac{1}{2}" in line:
                    symList.append(symbol)
                    symList += (getSym(symbol))
                    argFlag = False
                    symbol = ""

        elif c == "\\":
            symFlag = True
        elif c == "&" and not (i > line.find("\\begin{array}") and i < line.find("\\end{array}")):
            symList.append("&")

    # if "MeixnerPollaczek{\\lambda}{n}@{x}{\\phi}=\frac{\\pochhammer{2\\lambda}{n}}" in line:
    symList.append(symbol)
    symList += getSym(symbol)
    return symList


def unmodLabel(label):
    label = label.replace(".0", ".")
    label = label.replace(":0", ":")
    return label


def secLabel(label):
    return label.replace("\'\'", "")


def modLabel(line):
    global lLink
    start_label = line.find("\\formula{")
    if start_label > 0:
        start_label += len("\\formula{")
    else:
        start_label = line.find("\\label{")
        if start_label > 0:
            start_label += len("\\label{")
        else:
            global next_formula_number
            next_formula_number += 1
            return 'auto-number-' + str(next_formula_number)
    end_label = line.find("}", start_label)
    label = line[start_label:end_label]
    rlabel = label
    for l in lLink:
        if l.find(label) != -1 and l[len(label) + 1] == "=":
            rlabel = l[l.find("=>") + 3:l.find("\\n")]
            rlabel = rlabel.replace("/", "")
            rlabel = rlabel.replace("#", ":")
            break
    label = rlabel
    label = label.replace('eq:', 'Formula:')
    isNumer = False
    newlabel = ""
    num = ""
    for i in range(0, len(label)):
        if isNumer and not isnumber(label[i]):
            if len(num) > 1:
                newlabel += num
                num = ""
            else:
                newlabel += "0" + str(num)
                num = ""
        if isnumber(label[i]):
            isNumer = True
            num += str(label[i])
        else:
            isNumer = False
            newlabel += label[i]
    if len(num) > 1:
        newlabel += num
    elif len(num) == 1:
        newlabel += "0" + num
    return newlabel


def append_text(text):
    global wiki
    wiki.text = wiki.text + text


def append_revision(param):
    global wiki
    page = ET.SubElement(root, 'page')
    title = ET.SubElement(page, 'title')
    title.text = param
    revision = ET.SubElement(page, 'revision')
    timestamp = ET.SubElement(revision, 'timestamp')
    timestamp.text = str(datetime.datetime.utcnow())
    contributor = ET.SubElement(revision, 'contributor')
    username = ET.SubElement(contributor, 'username')
    username.text = 'SeedBot'
    wiki = ET.SubElement(revision, 'text')
    wiki.text = ''


def writeout(ofname):
    tree = ET.ElementTree(root)
    tree.write(ofname, xml_declaration=True, encoding='utf-8', method='xml')


def main():
    if len(sys.argv) != 6:
        fname = "../../data/ZE.3.tex"
        ofname = "../../data/ZE.4.xml"
        lname = "../../data/BruceLabelLinks"
        glossary =  "../../data/new.Glossary.csv"
        mmd =  "../../data/OrthogonalPolynomials.mmd"

    else:
        fname = sys.argv[1]
        ofname = sys.argv[2]
        lname = sys.argv[3]
        glossary = sys.argv[4]
        mmd = sys.argv[5]
    setup_label_links(lname)
    detect_data_set(fname,ofname,glossary,mmd,0)
    writeout(ofname)


def setup_label_links(ofname):
    global lLink
    lLink = open(ofname, "r").readlines()


def readin(fname,ofname,gloss,mmd,eqIndex):
    # try:
    for iterations in range(0, 1):
        tex = open(fname, 'r')
        main_file = open(mmd, "r")
        mainText = main_file.read()
        mainPrepend = ""
        mainWrite = open("OrthogonalPolynomials.mmd.new", "w")
        wiki = open(ofname, 'w')
        tester = open("testData.txt", 'w')
        # glossary=open('Glossary', 'r')
        glossary = open(gloss, 'rb')
        gCSV = csv.reader(glossary, delimiter=',', quotechar='\"')
        # lLinks=open('BruceLabelLinks', 'r')
        lGlos = glossary.readlines()
        # lLink=lLinks.readlines()
        math = False
        constraint = False
        substitution = False
        symbols = []
        lines = tex.readlines()
        refLines = []
        sections = []
        labels = []
        eqs = []
        refEqs = []
        parse = False
        head = False
        # chapRef=[("GA",open("GA.tex",'r')),("ZE",open("ZE.3.tex",'r'))]
        refLabels = []
        for i in range(0, len(refLines)):
            line = refLines[i]
            if "\\begin{equation}" in line:
                sLabel = line.find("\\formula{") + 9
                eLabel = line.find("}", sLabel)
                label = modLabel(line[sLabel:eLabel])
                refLabels.append(label)
                refEqs.append("")
                math = True
            elif math:
                refEqs[len(refEqs) - 1] += line
                if "\\end{equation}" in refLines[i + 1] or "\\constraint" in refLines[i + 1] or "\\substitution" in \
                        refLines[i + 1] or "\\drmfn" in refLines[i + 1]:
                    math = False

        for i in range(0, len(lines)):
            line = lines[i]
            if "\\begin{document}" in line:
                # wiki.write("drmf_bof\n")
                parse = True
            elif "\\end{document}" in line and parse:
                # wiki.write("</div>\n")
                mainPrepend += "</div>\n"
                mainText = mainPrepend + mainText
                mainText = mainText.replace("drmf_bof\n", "")
                mainText = mainText.replace("drmf_eof\n", "")
                mainText = mainText.replace("\'\'\'Orthogonal Polynomials\'\'\'\n", "")
                mainText = mainText.replace("{{#set:Section=0}}\n", "")
                mainText = mainText[0:mainText.rfind("== Sections ")]
                mainText = "drmf_bof\n\'\'\'Orthogonal Polynomials\'\'\'\n{{#set:Section=0}}" + mainText + "\ndrmf_eof\n"
                mainWrite.write(mainText)
                mainWrite.close()
                main_file.close()
                copyfile(mmd, 'OrthogonalPolynomials.mmd.new')
                parse = False
            elif "\\title" in line and parse:
                stringWrite = "\'\'\'"
                stringWrite += getString(line) + "\'\'\'\n"
                labels.append("Orthogonal Polynomials")
                sections.append(["Orthogonal Polynomials", 0])
                # wiki.write(stringWrite)
                # mainPrepend+=stringWrite
                chapter = getString(line)
                mainPrepend += (
                "\n== Sections in " + chapter + " ==\n\n<div style=\"-moz-column-count:2; column-count:2;-webkit-column-count:2\">\n")
            elif "\\part" in line:
                if getString(line) == "BOF":
                    parse = False
                elif getString(line) == "EOF":
                    parse = True
                elif parse:
                    mainPrepend += ("\n<br />\n= " + getString(line) + " =\n")
                    head = True
            elif "\\section" in line:
                mainPrepend += ("* [[" + secLabel(getString(line)) + "|" + getString(line) + "]]\n")
                sections.append([getString(line)])

        secCounter = 0
        eqCounter = 0
        for i in range(0, len(lines)):
            line = lines[i]
            # line.replace("\\begin{equation}","$")
            if "\\section" in line:
                parse = True
                secCounter += 1
                wiki.write("drmf_bof\n")
                wiki.write("\'\'\'" + secLabel(getString(line)) + "\'\'\'\n")
                wiki.write("{{DISPLAYTITLE:" + (sections[secCounter][0]) + "}}\n")
                wiki.write("<div id=\"drmf_head\">\n")
                wiki.write("<div id=\"alignleft\"> << [[" + secLabel(sections[secCounter - 1][0]) + "|" + secLabel(
                    sections[secCounter - 1][0]) + "]] </div>\n")
                # wiki.write("<div id=\"aligncenter\"> [[Orthogonal_Polynomials#"+secLabel(sections[secCounter][0])+"|"+secLabel(sections[secCounter][0])+"]] </div>\n")
                wiki.write("<div id=\"aligncenter\"> [[Orthogonal_Polynomials#" + "Sections_in_" + chapter.replace(" ",
                                                                                                                   "_") + "|" + secLabel(
                    sections[secCounter][0]) + "]] </div>\n")
                wiki.write(
                    "<div id=\"alignright\"> [[" + secLabel(sections[(secCounter + 1) % len(sections)][0]) + "|" + secLabel(
                        sections[(secCounter + 1) % len(sections)][0]) + "]] >> </div>\n</div>\n\n")
                # wiki.write("{{head|pre="+secLabel(sections[secCounter-1][0])+"|cur="+secLabel(sections[secCounter][0])+"|next="+secLabel(sections[(secCounter+1)%len(sections)][0])+"}}\n")
                # wiki.write("{{#set:Chapter="+chapter+"}}\n")
                # wiki.write("{{#set:Section="+str(secCounter)+"}}\n")
                # wiki.write("{{head}}\n")
                head = True
                wiki.write("== " + getString(line) + " ==\n")
            elif ("\\section" in lines[(i + 1) % len(lines)] or "\\end{document}" in lines[(i + 1) % len(lines)]) and parse:
                wiki.write("<div id=\"drmf_foot\">\n")
                wiki.write("<div id=\"alignleft\"> << [[" + secLabel(sections[secCounter - 1][0]) + "|" + secLabel(
                    sections[secCounter - 1][0]) + "]] </div>\n")
                # wiki.write("<div id=\"aligncenter\"> [[Orthogonal_Polynomials#"+secLabel(sections[secCounter][0])+"|"+secLabel(sections[secCounter][0])+"]] </div>\n")
                wiki.write("<div id=\"aligncenter\"> [[Orthogonal_Polynomials#" + "Sections_in_" + chapter.replace(" ",
                                                                                                                   "_") + "|" + secLabel(
                    sections[secCounter][0]) + "]] </div>\n")
                wiki.write(
                    "<div id=\"alignright\"> [[" + secLabel(sections[(secCounter + 1) % len(sections)][0]) + "|" + secLabel(
                        sections[(secCounter + 1) % len(sections)][0]) + "]] >> </div>\n</div>\n\n")
                # wiki.write("{{foot|pre="+secLabel(sections[secCounter-1][0])+"|cur="+secLabel(sections[secCounter][0])+"|next="+secLabel(sections[(secCounter+1)%len(sections)][0])+"}}\n")
                # wiki.write("{{foot}}\n")
                wiki.write("drmf_eof\n")
                sections[secCounter].append(eqCounter)
                eqCounter = 0

            elif "\\subsection" in line and parse:
                wiki.write("\n== " + getString(line) + " ==\n")
                head = True
            elif "\\paragraph" in line and parse:
                wiki.write("\n=== " + getString(line) + " ===\n")
                head = True
            elif "\\subsubsection" in line and parse:
                wiki.write("\n=== " + getString(line) + " ===\n")
                head = True

            elif "\\begin{equation}" in line and parse:
                #                                                                          symLine=""
                if head:
                    wiki.write("\n")
                    head = False
                sLabel = line.find("\\formula{") + 9
                eLabel = line.find("}", sLabel)
                label = modLabel(line[sLabel:eLabel])
                eqCounter += 1
                labels.append(label)
                eqs.append("")
                # wiki.write("\n<span id=\""+label.lstrip("Formula:")+"\"></span>\n")
                wiki.write("<math id=\"" + label.lstrip("Formula:") + "\">{\displaystyle \n")
                math = True
            elif "\\begin{equation}" in line and not parse:
                sLabel = line.find("\\formula{") + 9
                eLabel = line.find("}", sLabel)
                label = modLabel(line[sLabel:eLabel])
                labels.append("*" + label)  # special marker
                eqs.append("")
                math = True
            elif "\\end{equation}" in line:

                math = False
            elif "\\constraint" in line and parse:
                constraint = True
                math = False
                conLine = ""
            elif "\\substitution" in line and parse:
                substitution = True
                math = False
                subLine = ""
                # wiki.write("<div align=\"right\">Substitution(s): "+getEq(line)+"</div><br />\n")
            elif "\\proof" in line and parse:
                math = False
            elif "\\drmfn" in line and parse:
                math = False
                if "\\drmfname" in line and parse:
                    wiki.write("<div align=\"right\">This formula has the name: " + getString(line) + "</div><br />\n")
            elif math and parse:
                flagM = True
                eqs[len(eqs) - 1] += line

                if "\\end{equation}" in lines[i + 1] and not "\\subsection" in lines[i + 3] and not "\\section" in lines[
                            i + 3] and not "\\part" in lines[i + 3]:
                    u = i
                    flagM2 = False
                    while flagM:
                        u += 1
                        if "\\begin{equation}" in lines[u] in lines[u]:
                            flagM = False
                        if "\\section" in lines[u] or "\\subsection" in lines[i] or "\\part" in lines[
                            u] or "\\end{document}" in lines[u]:
                            flagM = False
                            flagM2 = True
                    if not (flagM2):

                        wiki.write(line.rstrip("\n"))
                        wiki.write("\n}</math><br />\n")
                    else:
                        wiki.write(line.rstrip("\n"))
                        wiki.write("\n}</math>\n")
                elif "\\end{equation}" in lines[i + 1]:
                    wiki.write(line.rstrip("\n"))
                    wiki.write("\n}</math>\n")
                elif "\\constraint" in lines[i + 1] or "\\substitution" in lines[i + 1] or "\\drmfn" in lines[i + 1]:
                    wiki.write(line.rstrip("\n"))
                    wiki.write("\n}</math>\n")
                else:
                    wiki.write(line)
            elif math and not parse:
                eqs[len(eqs) - 1] += line
                if "\\end{equation}" in lines[i + 1] or "\\constraint" in lines[i + 1] or "\\substitution" in lines[
                            i + 1] or "\\drmfn" in lines[i + 1]:
                    math = False
            if substitution and parse:
                subLine = subLine + line  # .replace("&","&<br />")
                if "\\end{equation}" in lines[i + 1] or "\\substitution" in lines[i + 1] or "\\constraint" in lines[
                            i + 1] or "\\drmfn" in lines[i + 1] or "\\proof" in lines[i + 1]:
                    lineR = ""
                    for i in range(0, len(subLine)):
                        if subLine[i] == "&" and not (
                                i > subLine.find("\\begin{array}") and i < subLine.find("\\end{array}")):
                            lineR += "&<br />"
                        else:
                            lineR += subLine[i]
                    substitution = False
                    wiki.write("<div align=\"right\">Substitution(s): " + getEq(lineR) + "</div><br />\n")

            if constraint and parse:
                conLine = conLine + line.replace("&", "&<br />")
                if "\\end{equation}" in lines[i + 1] or "\\substitution" in lines[i + 1] or "\\constraint" in lines[
                            i + 1] or "\\drmfn" in lines[i + 1] or "\\proof" in lines[i + 1]:
                    constraint = False
                    wiki.write("<div align=\"right\">Constraint(s): " + getEq(conLine) + "</div><br />\n")

        eqCounter = eqIndex #changed from 0
        endNum = len(labels) - 1

        parse = False
        constraint = False
        substitution = False
        note = False
        hCon = True
        hSub = True
        hNote = True
        hProof = True
        proof = False
        comToWrite = ""
        secCount = -1
        newSec = False
        symLine = ''
        eqS = ''
        noteLine = ''
        proofLine = ''
        pause = False

        for i in range(0, len(lines)):
            line = lines[i]

            if "\\section" in line:
                secCount += 1
                newSec = True
                eqS = 0

            if "\\begin{equation}" in line:
                symLine = line.strip("\n")
                eqS += 1
                constraint = False
                substitution = False
                note = False
                comToWrite = ""
                hCon = True
                hSub = True
                hNote = True
                hProof = True
                proof = False
                parse = True
                symbols = []
                eqCounter += 1
                wiki.write("drmf_bof\n")
                label = labels[eqCounter]
                wiki.write("\'\'\'" + secLabel(label) + "\'\'\'\n")
                wiki.write("{{DISPLAYTITLE:" + (labels[eqCounter]) + "}}\n")
                if eqCounter < endNum:  # FOR ANYTHING THAT IS NOT THE EXTRA EQUATIONS
                    wiki.write("<div id=\"drmf_head\">\n")
                    if newSec:
                        wiki.write("<div id=\"alignleft\"> << [[" + secLabel(sections[secCount][0]).replace(" ",
                                                                                                            "_") + "|" + secLabel(
                            sections[secCount][0]) + "]] </div>\n")
                    else:
                        wiki.write("<div id=\"alignleft\"> << [[" + secLabel(labels[eqCounter - 1]).replace(" ",
                                                                                                            "_") + "|" + secLabel(
                            labels[eqCounter - 1]) + "]] </div>\n")
                    wiki.write("<div id=\"aligncenter\"> [[" + secLabel(sections[secCount + 1][0]).replace(" ",
                                                                                                           "_") + "#" + secLabel(
                        labels[eqCounter][len("Formula:"):]) + "|formula in " + secLabel(
                        sections[secCount + 1][0]) + "]] </div>\n")
                    # if eqS==sections[secCount][1]:
                    # wiki.write("<div id=\"alignright\"> [["+secLabel(sections[(secCount+1)%len(sections)][0]).replace(" ","_")+"|"+secLabel(sections[(secCount+1)%len(sections)][0])+"]] >> </div>\n")
                    # else:
                    if True:
                        wiki.write(
                            "<div id=\"alignright\"> [[" + secLabel(labels[(eqCounter + 1) % (endNum + 1)]).replace(" ",
                                                                                                                    "_") + "|" + secLabel(
                                labels[(eqCounter + 1) % (endNum + 1)]) + "]] >> </div>\n")
                    wiki.write("</div>\n\n")
                elif eqCounter == endNum:
                    wiki.write("<div id=\"drmf_head\">\n")
                    if newSec:
                        newSec = False
                        wiki.write("<div id=\"alignleft\"> << [[" + secLabel(sections[secCount][0]).replace(" ",
                                                                                                            "_") + "|" + secLabel(
                            sections[secCount][0]) + "]] </div>\n")
                    else:
                        wiki.write("<div id=\"alignleft\"> << [[" + secLabel(labels[eqCounter - 1]).replace(" ",
                                                                                                            "_") + "|" + secLabel(
                            labels[eqCounter - 1]) + "]] </div>\n")
                    wiki.write("<div id=\"aligncenter\"> [[" + secLabel(sections[secCount + 1][0]).replace(" ",
                                                                                                           "_") + "#" + secLabel(
                        labels[eqCounter][len("Formula:"):]) + "|formula in " + secLabel(
                        sections[secCount + 1][0]) + "]] </div>\n")
                    wiki.write("<div id=\"alignright\"> [[" + secLabel(
                        labels[(eqCounter + 1) % (endNum + 1)].replace(" ", "_")) + "|" + secLabel(
                        labels[(eqCounter + 1) % (endNum + 1)]) + "]] </div>\n")
                    wiki.write("</div>\n\n")

                wiki.write("<br /><div align=\"center\"><math>{\displaystyle \n")
                math = True

            elif "\\end{equation}" in line:
                wiki.write(comToWrite)
                parse = False
                math = False
                if hProof:
                    wiki.write(
                        "\n== Proof ==\n\nWe ask users to provide proof(s), reference(s) to proof(s), or further clarification on the proof(s) in this space.\n")

                wiki.write("\n== Symbols List ==\n\n")
                newSym = []
                for x in symbols:
                    flagA = True
                    # if x not in newSym:
                    cN = 0
                    cC = 0
                    flag = True
                    ArgCx = 0
                    for z in x:
                        if z.isalpha() and flag or z == "&":
                            cN += 1
                        else:
                            flag = False
                            if z == "{" or z == "[":
                                cC += 1
                            if z == "}" or z == "]":
                                cC -= 1
                                if cC == 0:
                                    ArgCx += 1
                    noA = x[:cN]
                    for y in newSym:
                        cN = 0
                        cC = 0
                        ArgC = 0
                        flag = True
                        for z in y:
                            if z.isalpha() and flag or z == "&":
                                cN += 1
                            else:
                                flag = False
                                if z == "{" or z == "[":
                                    cC += 1
                                if z == "}" or z == "]":
                                    cC -= 1
                                    if cC == 0:
                                        ArgC += 1

                        if y[:cN] == noA:  # and ArgC==ArgCx:
                            flagA = False
                            break
                    if flagA:
                        newSym.append(x)
                newSym.reverse()
                symF = False
                ampFlag = False
                finSym = []
                for s in range(len(newSym) - 1, -1, -1):
                    symbolPar = "\\" + newSym[s]
                    ArgCx = 0
                    parCx = 0
                    parFlag = False
                    cC = 0
                    for z in symbolPar:
                        if z == "@":
                            parFlag = True
                        elif z.isalpha() or z == "&":
                            cN += 1
                        else:
                            if z == "{" or z == "[":
                                cC += 1
                            if z == "}" or z == "]":
                                cC -= 1
                                if cC == 0:
                                    if parFlag:
                                        parCx += 1
                                    else:
                                        ArgCx += 1

                    if symbolPar.find("{") != -1 or symbolPar.find("[") != -1:
                        if symbolPar.find("[") == -1:
                            symbol = symbolPar[0:symbolPar.find("{")]
                        elif symbolPar.find("{") == -1 or symbolPar.find("[") < symbolPar.find("{"):
                            symbol = symbolPar[0:symbolPar.find("[")]
                        else:
                            symbol = symbolPar[0:symbolPar.find("{")]
                    else:
                        symbol = symbolPar
                    gFlag = False
                    checkFlag = False
                    get = False
                    gCSV = csv.reader(open(gloss, 'rb'), delimiter=',', quotechar='\"')
                    preG = ""
                    if symbol == "\\&":
                        ampFlag = True
                    for S in gCSV:
                        G = S
                        ArgCx = 0
                        parCx = 0
                        parFlag = False
                        cC = 0
                        ind = G[0].find("@")
                        if ind == -1:
                            ind = len(G[0]) - 1
                        for z in G[0]:
                            if z == "@":
                                parFlag = True
                            elif z.isalpha():
                                cN += 1
                            else:
                                if z == "{" or z == "[":
                                    cC += 1
                                if z == "}" or z == "]":
                                    cC -= 1
                                    if cC == 0:
                                        if parFlag:
                                            parCx += 1
                                        else:
                                            ArgCx += 1
                        if G[0].find(symbol) == 0 and (len(G[0]) == len(symbol) or not G[0][
                            len(symbol)].isalpha()):  # and (numPar!=0 or numArg!=0):
                            checkFlag = True
                            get = True
                            preG = S


                        elif checkFlag:
                            get = True
                            checkFlag = False

                        if get:
                            if get:
                                G = preG
                            get = False
                            checkFlag = False
                            if True:
                                if symbolPar.find("@") != -1:
                                    Q = symbolPar[:symbolPar.find("@")]
                                else:
                                    Q = symbolPar
                            listArgs = []
                            if len(Q) > len(symbol) and (Q[len(symbol)] == "{" or Q[len(symbol)] == "["):
                                ap = ""
                                for o in range(len(symbol), len(Q)):
                                    if Q[o] == "{" or z == "[":
                                        argFlag = True
                                    elif Q[o] == "}" or z == "]":
                                        argFlag = False
                                        listArgs.append(ap)
                                        ap = ""
                                    else:
                                        ap += Q[o]
                            websiteF = ""
                            web1 = G[5]
                            for t in range(5, len(G)):
                                if G[t] != "":
                                    websiteF = websiteF + " [" + G[t] + " " + G[t] + "]"

                                # p1=Q
                                # if Q.find("@")!=-1:
                                # p1=Q[:Q.find("@")]
                            p1 = G[4].strip("$")
                            p1 = "<math>{\\displaystyle " + p1 + "}</math>"
                            # if checkFlag:
                            new2 = ""
                            pause = False
                            mathF = True

                            p2 = G[1]
                            for k in range(0, len(p2)):
                                if p2[k] == "$":
                                    if mathF:
                                        new2 += "<math>{\\displaystyle "
                                    else:
                                        new2 += "}</math>"
                                    mathF = not mathF
                                else:
                                    new2 += p2[k]
                            # p1=new1
                            p2 = new2
                            finSym.append(web1 + " " + p1 + "]</span> : " + p2 + " :" + websiteF)
                            break

                    if not gFlag:
                        del newSym[s]

                gFlag = True
                # finSym.reverse()
                if ampFlag:
                    wiki.write("& : logical and")
                    gFlag = False
                for y in finSym:
                    if y == "& : logical and":
                        pass
                    elif gFlag:
                        gFlag = False
                        wiki.write("<span class=\"plainlinks\">[" + y)
                    else:
                        wiki.write("<br />\n<span class=\"plainlinks\">[" + y)

                wiki.write("\n<br />\n")

                wiki.write("\n== Bibliography==\n\n")  # should there be a space between bibliography and ==?
                r = unmodLabel(labels[eqCounter])
                q = r.find("KLS:") + 4
                p = r.find(":", q)
                section = r[q:p]
                equation = r[p + 1:]
                if isnumber(section) == False: #checks for invalid section numbers
                    return eqCounter #return the index of failure, tries with DLMF data set
                if equation.find(":") != -1:
                    equation = equation[0:equation.find(":")]

                wiki.write(
                    "<span class=\"plainlinks\">[http://homepage.tudelft.nl/11r49/askey/contents.html Equation in Section " + section + "]</span> of [[Bibliography#KLS|'''KLS''']].\n\n")  # Where should it link to?
                wiki.write("== URL links ==\n\nWe ask users to provide relevant URL links in this space.\n\n")
                if eqCounter < endNum:
                    wiki.write("<br /><div id=\"drmf_foot\">\n")
                    if newSec:
                        newSec = False
                        wiki.write("<div id=\"alignleft\"> << [[" + secLabel(sections[secCount][0]).replace(" ",
                                                                                                            "_") + "|" + secLabel(
                            sections[secCount][0]) + "]] </div>\n")
                    else:
                        wiki.write("<div id=\"alignleft\"> << [[" + secLabel(labels[eqCounter - 1]).replace(" ",
                                                                                                            "_") + "|" + secLabel(
                            labels[eqCounter - 1]) + "]] </div>\n")
                    wiki.write("<div id=\"aligncenter\"> [[" + secLabel(sections[secCount + 1][0]).replace(" ",
                                                                                                           "_") + "#" + secLabel(
                        labels[eqCounter][len("Formula:"):]) + "|formula in " + secLabel(
                        sections[secCount + 1][0]) + "]] </div>\n")
                    # if eqS==sections[secCount][1]:
                    # wiki.write("<div id=\"alignright\"> [["+sections[(secCount+1)%len(sections)][0].replace(" ","_")+"|"+sections[(secCount+1)%len(sections)][0]+"]] >> </div>\n")
                    # else:
                    if True:
                        wiki.write(
                            "<div id=\"alignright\"> [[" + secLabel(labels[(eqCounter + 1) % (endNum + 1)]).replace(" ",
                                                                                                                    "_") + "|" + secLabel(
                                labels[(eqCounter + 1) % (endNum + 1)]) + "]] >> </div>\n")
                    wiki.write("</div>\n\ndrmf_eof\n")
                else:  # FOR EXTRA EQUATIONS
                    wiki.write("<br /><div id=\"drmf_foot\">\n")
                    wiki.write("<div id=\"alignleft\"> << [[" + labels[endNum - 1].replace(" ", "_") + "|" + labels[
                        endNum - 1] + "]] </div>\n")
                    wiki.write("<div id=\"aligncenter\"> [[" + labels[0].replace(" ", "_") + "#" + labels[endNum][
                                                                                                   8:] + "|formula in " +
                               labels[0] + "]] </div>\n")
                    wiki.write("<div id=\"alignright\"> [[" + labels[(0) % endNum].replace(" ", "_") + "|" + labels[
                        0 % endNum] + "]] </div>\n")
                    wiki.write("</div>\n\ndrmf_eof\n")



            elif "\\constraint" in line and parse:
                # symbols=symbols+getSym(line)
                symLine = line.strip("\n")
                if hCon:
                    comToWrite = comToWrite + "\n== Constraint(s) ==\n\n"
                    hCon = False
                    constraint = True
                    math = False
                    conLine = ""
                # wiki.write("<div align=\"left\">"+getEq(line)+"</div><br />\n")
            elif "\\substitution" in line and parse:
                # symbols=symbols+getSym(line)
                symLine = line.strip("\n")
                if hSub:
                    comToWrite = comToWrite + "\n== Substitution(s) ==\n\n"
                    hSub = False
                # wiki.write("<div align=\"left\">"+getEq(line)+"</div><br />\n")
                substitution = True
                math = False
                subLine = ""
            elif "\\drmfname" in line and parse:
                math = False
                comToWrite = "\n== Name ==\n\n<div align=\"left\">" + getString(line) + "</div><br />\n" + comToWrite

            elif "\\drmfnote" in line and parse:
                symbols = symbols + getSym(line)
                if hNote:
                    comToWrite = comToWrite + "\n== Note(s) ==\n\n"
                    hNote = False
                note = True
                math = False
                noteLine = ""

            elif "\\proof" in line and parse:
                # symbols=symbols+getSym(line)
                symLine = line.strip("\n")
                if hProof:
                    hProof = False
                    comToWrite = comToWrite + "\n== Proof ==\n\nWe ask users to provide proof(s), reference(s) to proof(s), or further clarification on the proof(s) in this space. \n<br /><br />\n<div align=\"left\">"
                proof = True
                proofLine = ""
                pause = False
                pauseP = False
                for ind in range(0, len(line)):
                    if line[ind:ind + 7] == "\\eqref{":
                        rLab = getString(eqR)
                        pause = True
                        eInd = refLabels.index("" + rLab)
                        z = line[line.find("}", ind + 7) + 1]
                        if z == "." or z == ",":
                            pauseP = True
                            proofLine += ("<br /> \n<math id=\"" + rLab + "\">{\displaystyle \n" + refEqs[
                                eInd] + "}</math>" + z + "<br />\n")
                        else:
                            if z == "}":
                                proofLine += (
                                "<br /> \n<math id=\"" + rLab + "\">{\displaystyle \n" + refEqs[eInd] + "}</math><br />")
                            else:
                                proofLine += (
                                "<br /> \n<math id=\"" + rLab + "\">{\displaystyle \n" + refEqs[eInd] + "}</math><br />\n")


                    else:
                        if pause:
                            if line[ind] == "}":
                                pause = False
                        elif pauseP:
                            pauseP = False
                        elif line[ind] == "\n" and "\\end{equation}" in lines[i + 1]:
                            pass
                        else:
                            proofLine += (line[ind])
                if "\\end{equation}" in lines[i + 1]:
                    proof = False
                    # symLine+=line.strip("\n")
                    wiki.write(comToWrite + getEqP(proofLine, False) + "</div>\n<br />\n")
                    comToWrite = ""
                    symbols = symbols + getSym(symLine)
                    symLine = ""
            elif proof:
                symLine += line.strip("\n")
                pauseP = False
                for ind in range(0, len(line)):
                    if line[ind:ind + 7] == "\\eqref{":
                        pause = True
                        eqR = line[ind:line.find("}", ind) + 1]
                        rLab = getString(eqR)
                        eInd = refLabels.index("" + label)
                        z = line[line.find("}", ind + 7) + 1]
                        if z == "." or z == ",":
                            pauseP = True
                            proofLine += ("<br /> \n<math id=\"" + rLab + "\">{\displaystyle \n" + refEqs[
                                eInd] + "}</math>" + z + "<br />\n")
                        else:
                            proofLine += (
                            "<br /> \n<math id=\"" + rLab + "\">{\displaystyle \n" + refEqs[eInd] + "}</math><br />\n")

                    else:
                        if pause:
                            if line[ind] == "}":
                                pause = False
                        elif pauseP:
                            pauseP = False
                        elif line[ind] == "\n" and "\\end{equation}" in lines[i + 1]:
                            pass

                        else:
                            proofLine += (line[ind])
                if "\\end{equation}" in lines[i + 1]:
                    proof = False
                    wiki.write(comToWrite + getEqP(proofLine, False).rstrip("\n") + "</div>\n<br />\n")
                    comToWrite = ""
                    symbols = symbols + getSym(symLine)
                    symLine = ""

            elif math:
                if "\\end{equation}" in lines[i + 1] or "\\constraint" in lines[i + 1] or "\\substitution" in lines[
                            i + 1] or "\\proof" in lines[i + 1] or "\\drmfnote" in lines[i + 1] or "\\drmfname" in lines[
                            i + 1]:
                    wiki.write(line.rstrip("\n"))
                    symLine += line.strip("\n")
                    symbols = symbols + getSym(symLine)
                    symLine = ""
                    wiki.write("\n}</math></div>\n")
                else:
                    symLine += line.strip("\n")
                    wiki.write(line)
            if note and parse:
                noteLine = noteLine + line
                symbols = symbols + getSym(line)
                if "\\end{equation}" in lines[i + 1] or "\\drmfn" in lines[i + 1] or "\\constraint" in lines[
                            i + 1] or "\\substitution" in lines[i + 1] or "\\proof" in lines[i + 1]:
                    note = False
                    if "\\emph" in noteLine:
                        noteLine = noteLine[0:noteLine.find("\\emph{")] + "\'\'" + noteLine[noteLine.find("\\emph{") + len(
                            "\\emph{"):noteLine.find("}", noteLine.find("\\emph{") + len("\\emph{"))] + "\'\'" + noteLine[
                                                                                                                 noteLine.find(
                                                                                                                     "}",
                                                                                                                     noteLine.find(
                                                                                                                         "\\emph{") + len(
                                                                                                                         "\\emph{")) + 1:]
                    comToWrite = comToWrite + "<div align=\"left\">" + getEq(noteLine) + "</div><br />\n"

            if constraint and parse:
                conLine = conLine + line.replace("&", "&<br />")

                symLine += line.strip("\n")
                # symbols=symbols+getSym(line)
                if "\\end{equation}" in lines[i + 1] or "\\drmfn" in lines[i + 1] or "\\constraint" in lines[
                            i + 1] or "\\substitution" in lines[i + 1] or "\\proof" in lines[i + 1]:
                    constraint = False
                    symbols = symbols + getSym(symLine)
                    symLine = ""
                    wiki.write(comToWrite + "<div align=\"left\">" + getEq(conLine) + "</div><br />\n")
                    comToWrite = ""
            if substitution and parse:
                subLine = subLine + line  # .replace("&","&<br />")

                symLine += line.strip("\n")
                if "\\end{equation}" in lines[i + 1] or "\\drmfn" in lines[i + 1] or "\\substitution" in lines[
                            i + 1] or "\\constraint" in lines[i + 1] or "\\proof" in lines[i + 1]:
                    substitution = False
                    symbols = symbols + getSym(symLine)
                    symLine = ""
                    lineR = ""
                    for i in range(0, len(subLine)):
                        if subLine[i] == "&" and not (
                                i > subLine.find("\\begin{array}") and i < subLine.find("\\end{array}")):
                            lineR += "&<br />"
                        else:
                            lineR += subLine[i]
                    wiki.write(comToWrite + "<div align=\"left\">" + getEq(lineR) + "</div><br />\n")
                    comToWrite = ""

def detect_data_set(fname,ofname,glossary,mmd,eqIndex):
    kls_return_status = readin(fname,ofname,glossary,mmd,eqIndex) #gets return type of the KLS readin() function
    if type(kls_return_status) == int: #return status will only be of type int if the readin() returns the index of failure. Will try running the DLMF function on the data set starting from the index of failure
        dlmf_return_status = dlmf.DLMF(kls_return_status)  #runs the DLMF function starting from the index of failure
        if type(dlmf_return_status) == int:
            detect_data_set(fname,ofname,glossary,mmd,eqIndex) #recursively call detect_data_set to switch back to KLS
    return 0

if __name__ == "__main__":
    main()


# TODO: Bug test detect_data_set function and fix possible code smells, check if outfile is being written correctly


