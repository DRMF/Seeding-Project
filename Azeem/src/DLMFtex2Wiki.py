# Version 15: Minor Fixes
# Convert tex to wikiText
import csv  # imported for using csv format
import sys  # imported for getting args
import os  # imported for copying file
from shutil import copyfile
import tex2Wiki as KLS
from tex2Wiki import append_text


# Change Accordingly based on project directory.
def is_number(char):
    try:
        "".join(["0" + str(float(char)) if float(char) < 10 else float(char)])
        return True
    except ValueError:
        return False


def modLabel(label):
    # label.replace("Formula:KLS:","KLS;")
    isNumer = False
    newlabel = ""
    num = ""
    for i in range(0, len(label)):
        if isNumer and not is_number(label[i]):
            if len(num) > 1:
                newlabel += num
                isNumer = False
                num = ""
            else:
                newlabel += "0" + str(num)
                num = ""
                isNumer = False
        if is_number(label[i]):
            isNumer = True
            num += str(label[i])
        else:
            isNumer = False
            newlabel += label[i]
    if len(num) > 1:
        newlabel += num
    elif len(num) == 1:
        newlabel += "0" + num
    return (newlabel)


def DLMF(n):
    for iterations in range(0, 1):
        try:
            tex = open(sys.argv[1], 'r')
            wiki = open(sys.argv[2], 'w')
            glossary = open(sys.argv[3], "r")
            main = open(sys.argv[4], "r")
            lLinks = open(sys.argv[5], 'r')
        except (IOError, IndexError):
            tex = open("../../data/ZE.3.tex", "r")
            wiki = open("../../data/ZE.4.xml", "w")
            glossary = open("../../data/new.Glossary.csv", "r")
            main = open("../../data/OrthogonalPolynomials.mmd", "r")
            lLinks = open("../../data/BruceLabelLinks", "r")
        mainText = main.read()
        mainPrepend = ""
        mainWrite = open("ZetaFunctions.mmd.new", "w")
        # tester=open("testData.txt",'w')
        # glossary=open('Glossary', 'r')
        try:
            gCSV = csv.reader(glossary, delimiter=',', quotechar='\"')
        except:
            raise
        lLink = lLinks.readlines()
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
        try:
            chapRef = [("GA", open("../../data/GA.tex", 'r')), ("ZE", open("../../data/ZE.3.tex", 'r'))]
        except IOError:
            chapRef = [("GA", open("GA.tex", 'r')), ("ZE", open("ZE.3.tex", 'r'))]
        refLabels = []
        for c in chapRef:
            refLines = refLines + (c[1].readlines())
            c[1].close()
        for i in range(0, len(refLines)):
            line = refLines[i]
            if "\\begin{equation}" in line:
                sLabel = line.find("\\label{") + 7
                eLabel = line.find("}", sLabel)
                label = line[sLabel:eLabel]
                for l in lLink:
                    if l.find(label) != -1 and l[len(label) + 1] == "=":
                        rlabel = l[l.find("=>") + 3:l.find("\\n")]
                        rlabel = rlabel.replace("/", "")
                        rlabel = rlabel.replace("#", ":")
                        break
                label = rlabel
                refLabels.append(label)
                refEqs.append("")
                math = True
            elif math:
                refEqs[len(refEqs) - 1] += line
                if "\\end{equation}" in refLines[i + 1] or "\\constraint" in refLines[i + 1] or "\\substitution" in \
                        refLines[i + 1] or "\\drmfn" in refLines[i + 1]:
                    math = False

        startFlag = True
        for i in range(0, len(lines)):
            line = lines[i]
            if "\\begin{document}" in line:
                # append_text("drmf_bof\n")
                parse = True
            elif "\\end{document}" in line:
                # append_text("</div>\n")
                mainPrepend += "</div>\n"
                mainText = ""
                mainText = mainPrepend + mainText
                mainText = mainText.replace("drmf_bof\n", "")
                mainText = mainText.replace("drmf_eof\n", "")
                mainText = mainText.replace("\'\'\'Zeta and Related Functions\'\'\'\n", "")
                mainText = mainText.replace("{{#set:Section=0}}\n", "")
                mainText = "drmf_bof\n\'\'\'Zeta and Related Functions\'\'\'\n{{#set:Section=0}}" + mainText + "\ndrmf_eof\n"
                mainWrite.write(mainText)
                mainWrite.close()
                main.close()
                os.system("cp -f ZetaFunctions.mmd.new ZetaFunctions.mmd")
                # append_text("\ndrmf_eof\n")
                parse = False
            elif "\\title" in line and parse:
                labels.append("Zeta and Related Functions")
                sections.append(["Zeta and Related Functions", 0])
            elif "\\part" in line:
                if KLS.getString(line) == "BOF":
                    parse = False
                elif KLS.getString(line) == "EOF":
                    parse = True
                elif parse:
                    stringWrite = "\'\'\'"
                    stringWrite += KLS.getString(line) + "\'\'\'\n"
                    chapter = KLS.getString(line)
                    if startFlag:
                        mainPrepend += (
                            "\n== Sections in " + chapter + " ==\n\n<div style=\"-moz-column-count:2; column-count:2;-webkit-column-count:2\">\n")
                        startFlag = False
                    else:
                        mainPrepend += (
                            "</div>\n\n== Sections in " + chapter + " ==\n\n<div style=\"-moz-column-count:2; "
                                                                    "column-count:2;-webkit-column-count:2\">\n")
                    head = True
            elif "\\section" in line:
                mainPrepend += ("* [[" + KLS.secLabel(KLS.getString(line)) + "|" + KLS.getString(line) + "]]\n")
                sections.append([KLS.getString(line)])

        secCounter = 0
        eqCounter = 0
        for i in range(0, len(lines)):
            line = lines[i]
            if "\\section" in line:
                parse = True
                secCounter += 1
                append_text("drmf_bof\n")
                append_text("\'\'\'" + KLS.secLabel(KLS.getString(line)) + "\'\'\'\n")
                append_text("{{DISPLAYTITLE:" + (sections[secCounter][0]) + "}}\n")
                append_text("<div id=\"drmf_head\">\n")
                append_text(
                    "<div id=\"alignleft\"> << [[" + KLS.secLabel(sections[secCounter - 1][0]) + "|" + KLS.secLabel(
                        sections[secCounter - 1][0]) + "]] </div>\n")
                append_text("<div id=\"aligncenter\"> [[Zeta_and_Related_Functions#" +
                                "Sections_in_" + chapter.replace(" ", "_") + "|" + KLS.secLabel(
                    sections[secCounter][0]) + "]] </div>\n")
                append_text(
                    "<div id=\"alignright\"> [[" + KLS.secLabel(sections[(secCounter + 1) % len(sections)][0]) +
                    "|" + KLS.secLabel(sections[(secCounter + 1) % len(sections)][0]) + "]] >> </div>\n</div>\n\n")
                head = True
                append_text("== " + KLS.getString(line) + " ==\n")
            elif ("\\section" in lines[(i + 1) % len(lines)] or "\\end{document}" in lines[
                    (i + 1) % len(lines)]) and parse:
                append_text("<div id=\"drmf_foot\">\n")
                append_text(
                    "<div id=\"alignleft\"> << [[" + KLS.secLabel(sections[secCounter - 1][0]) + "|" + KLS.secLabel(
                        sections[secCounter - 1][0]) + "]] </div>\n")
                append_text("<div id=\"aligncenter\"> [[Zeta_and_Related_Functions#" + "Sections_in_"
                                                                                           "" + chapter.replace(" ",
                                                                                                                "_") + "|" + KLS.secLabel(
                    sections[secCounter][0]) + "]] </div>\n")
                append_text(
                    "<div id=\"alignright\"> [[" + KLS.secLabel(sections[(secCounter + 1) % len(sections)][0]) +
                    "|" + KLS.secLabel(sections[(secCounter + 1) % len(sections)][0]) + "]] >> </div>\n</div>\n\n")
                append_text("drmf_eof\n")
                sections[secCounter].append(eqCounter)
                eqCounter = 0

            elif "\\subsection" in line and parse:
                append_text("\n== " + KLS.getString(line) + " ==\n")
                head = True
            elif "\\paragraph" in line and parse:
                append_text("\n=== " + KLS.getString(line) + " ===\n")
                head = True
            elif "\\subsubsection" in line and parse:
                append_text("\n=== " + KLS.getString(line) + " ===\n")
                head = True

            elif "\\begin{equation}" in line and parse:
                #                                                                          symLine=""
                if head:
                    append_text("\n")
                    head = False
                sLabel = line.find("\\label{") + 7
                eLabel = line.find("}", sLabel)
                label = (line[sLabel:eLabel])
                eqCounter += 1
                for l in lLink:
                    if label == l[0:l.find("=") - 1]:
                        rlabel = l[l.find("=>") + 3:l.find("\\n")]
                        rlabel = rlabel.replace("/", "")
                        rlabel = rlabel.replace("#", ":")
                        rlabel = rlabel.replace("!", ":")
                        break
                label = KLS.modLabel(rlabel)
                labels.append("Formula:" + rlabel)
                eqs.append("")
                # append_text("\n<span id=\""+rlabel.lstrip("Formula:")+"\"></span>\n")
                append_text("<math id=\"" + rlabel.lstrip("Formula:") + "\">{\displaystyle \n")
                math = True
            elif "\\begin{equation}" in line and not parse:
                sLabel = line.find("\\label{") + 7
                eLabel = line.find("}", sLabel)
                label = KLS.modLabel(line[sLabel:eLabel])
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
                # append_text("<div align=\"right\">Substitution(s): "+KLS.getEq(line)+"</div><br />\n")
            elif "\\proof" in line and parse:
                math = False
            elif "\\drmfn" in line and parse:
                math = False
                if "\\drmfname" in line and parse:
                    append_text(
                        "<div align=\"right\">This formula has the name: " + KLS.getString(line) + "</div><br />\n")
            elif math and parse:
                flagM = True
                eqs[len(eqs) - 1] += line

                if "\\end{equation}" in lines[i + 1] and not "\\subsection" in lines[i + 3] and not "\\section" in \
                        lines[i + 3] and not "\\part" in lines[i + 3]:
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

                        append_text(line.rstrip("\n"))
                        append_text("\n}</math><br />\n")
                    else:
                        append_text(line.rstrip("\n"))
                        append_text("\n}</math>\n")
                elif "\\end{equation}" in lines[i + 1]:
                    append_text(line.rstrip("\n"))
                    append_text("\n}</math>\n")
                elif "\\constraint" in lines[i + 1] or "\\substitution" in lines[i + 1] or "\\drmfn" in lines[i + 1]:
                    append_text(line.rstrip("\n"))
                    append_text("\n}</math>\n")
                else:
                    append_text(line)
            elif math and not parse:
                eqs[len(eqs) - 1] += line
                if "\\end{equation}" in lines[i + 1] or "\\constraint" in lines[i + 1] or "\\substitution" in lines[
                            i + 1] or "\\drmfn" in lines[i + 1]:
                    math = False
            if substitution and parse:
                subLine = subLine + line.replace("&", "&<br />")
                if "\\end{equation}" in lines[i + 1] or "\\substitution" in lines[i + 1] \
                        or "\\constraint" in lines[i + 1] or "\\drmfn" in lines[i + 1] or "\\proof" in lines[i + 1]:
                    substitution = False
                    append_text("<div align=\"right\">Substitution(s): " + KLS.getEq(subLine) + "</div><br />\n")

            if constraint and parse:
                conLine = conLine + line.replace("&", "&<br />")
                if "\\end{equation}" in lines[i + 1] or "\\substitution" \
                        in lines[i + 1] or "\\constraint" in lines[i + 1] or "\\drmfn" in lines[i + 1] or "\\proof" in \
                        lines[i + 1]:
                    constraint = False
                    append_text("<div align=\"right\">Constraint(s): " + KLS.getEq(conLine) + "</div><br />\n")

        eqCounter = n
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
                append_text("drmf_bof\n")
                label = labels[eqCounter]
                # if not "DLMF" in label:eqCounter+=1
                label = labels[eqCounter]
                append_text("\'\'\'" + KLS.secLabel(label) + "\'\'\'\n")
                append_text("{{DISPLAYTITLE:" + (labels[eqCounter]) + "}}\n")
                if eqCounter == len(labels) - 1:
                    break
                if eqCounter < endNum:  # FOR ANYTHING THAT IS NOT THE EXTRA EQUATIONS
                    append_text("<div id=\"drmf_head\">\n")
                    if newSec:
                        append_text("<div id=\"alignleft\"> "
                                        "<< [[" + KLS.secLabel(sections[secCount][0]).replace(" ",
                                                                                              "_") + "|" + KLS.secLabel(
                            sections[secCount][0]) + "]] </div>\n")
                    else:
                        append_text("<div id=\"alignleft\"> "
                                        "<< [[" + KLS.secLabel(labels[eqCounter - 1]).replace(" ",
                                                                                              "_") + "|" + KLS.secLabel(
                            labels[eqCounter - 1]) + "]] </div>\n")
                    append_text("<div id=\"aligncenter\"> [[" + KLS.secLabel(sections[secCount + 1][0]).replace(" ",
                                                                                                                    "_") + "#" +
                                    KLS.secLabel(labels[eqCounter][len("Formula:"):]) + "|formula in " + KLS.secLabel(
                        sections[secCount + 1][0]) + "]] </div>\n")
                    # if eqS==sections[secCount][1]:
                    if True:
                        append_text(
                            "<div id=\"alignright\"> [[" + KLS.secLabel(labels[(eqCounter + 1) % (endNum + 1)]).replace(
                                " ", "_") +
                            "|" + KLS.secLabel(labels[(eqCounter + 1) % (endNum + 1)]) + "]] >> </div>\n")
                    append_text("</div>\n\n")
                elif eqCounter == endNum:
                    append_text("<div id=\"drmf_head\">\n")
                    if newSec:
                        newSec = False
                        append_text(
                            "<div id=\"alignleft\"> << [[" + KLS.secLabel(sections[secCount][0]).replace(" ",
                                                                                                         "_") + "|" +
                            KLS.secLabel(sections[secCount][0]) + "]] </div>\n")
                    else:
                        append_text("<div id=\"alignleft\"> "
                                        "<< [[" + KLS.secLabel(labels[eqCounter - 1]).replace(" ",
                                                                                              "_") + "|" + KLS.secLabel(
                            labels[eqCounter - 1]) + "]] </div>\n")
                    append_text("<div id=\"aligncenter\"> [[" +
                                    KLS.secLabel(sections[secCount + 1][0]).replace(" ", "_") +
                                    "#" + KLS.secLabel(labels[eqCounter][len("Formula:"):]) +
                                    "|formula in " + KLS.secLabel(sections[secCount + 1][0]) +
                                    "]] </div>\n")
                    append_text("<div id=\"alignright\"> [[" + KLS.secLabel(
                        labels[(eqCounter + 1) % (endNum + 1)].replace(" ", "_")) +
                                    "|" + KLS.secLabel(labels[(eqCounter + 1) % (endNum + 1)]) + "]] </div>\n")
                    append_text("</div>\n\n")

                append_text("<br /><div align=\"center\"><math>{\displaystyle \n")
                math = True
            elif "\\end{equation}" in line:
                append_text(comToWrite)
                parse = False
                math = False
                if hProof:
                    append_text("\n== Proof ==\n\nWe ask users to provide proof(s), \
                    reference(s) to proof(s), or further clarification on the proof(s) in this space.\n")

                append_text("\n== Symbols List ==\n\n")
                newSym = []
                # if "09.07:04" in label:
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
                    try:
                        gCSV = csv.reader(open(sys.argv[3], 'rb'), delimiter=',', quotechar='\"')
                    except (IOError, IndexError):
                        gCSV = csv.reader(open('../../data/new.Glossary.csv', 'rb'), delimiter=',', quotechar='\"')
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

                        if (get):
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
                                        pass
                                    elif Q[o] == "}" or z == "]":
                                        listArgs.append(ap)
                                        ap = ""
                                    else:
                                        ap += Q[o]
                            # websiteF=G[4].strip("\n")
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
                            p2 = new2
                            finSym.append(web1 + " " + p1 + "]</span> : " + p2 + " :" + websiteF)
                            break

                    # preG=S
                    if not gFlag:
                        del newSym[s]

                gFlag = True
                # finSym.reverse()
                if ampFlag:
                    append_text("& : logical and")
                    gFlag = False
                for y in finSym:
                    if y == "& : logical and":
                        pass
                    elif gFlag:
                        gFlag = False
                        append_text("<span class=\"plainlinks\">[" + y)
                    else:
                        append_text("<br />\n<span class=\"plainlinks\">[" + y)

                append_text("\n<br />\n")

                append_text("\n== Bibliography==\n\n")  # should there be a space between bibliography and ==?
                r = KLS.unmodlabel(labels[eqCounter])
                q = r.find("DLMF:") + 5
                p = r.find(":", q)
                section = r[q:p]
                equation = r[p + 1:]
                # print("Section", section, r, p, q,)
                if equation.find(":") != -1:
                    equation = equation[0:equation.find(":")]
                if is_number(section) == False:
                    return eqCounter
                append_text("<span class=\"plainlinks\">[HTTP://DLMF.NIST.GOV/" +
                                section + "#" + equation + " Equation (" + equation[1:] + "), "
                                                                                          "Section " + section + "]</span> of [[Bibliography#DLMF|'''DLMF''']].\n\n")
                append_text("== URL links ==\n\nWe ask users to provide relevant URL links in this space.\n\n")
                if eqCounter < endNum:
                    append_text("<br /><div id=\"drmf_foot\">\n")
                    if newSec:
                        newSec = False
                        append_text(
                            "<div id=\"alignleft\"> << [[" + KLS.secLabel(sections[secCount][0]).replace(" ", "_") +
                            "|" + KLS.secLabel(sections[secCount][0]) + "]] </div>\n")
                    else:
                        append_text(
                            "<div id=\"alignleft\"> << [[" + KLS.secLabel(labels[eqCounter - 1]).replace(" ",
                                                                                                         "_") + "|" +
                            KLS.secLabel(labels[eqCounter - 1]) + "]] </div>\n")
                    append_text("<div id=\"aligncenter\"> [[" + KLS.secLabel(sections[secCount + 1][0]).replace(" ",
                                                                                                                    "_") + "#" +
                                    KLS.secLabel(labels[eqCounter][len("Formula:"):]) + "|formula in " + KLS.secLabel(
                        sections[secCount + 1][0]) + "]] </div>\n")
                    # if eqS==sections[secCount][1]:
                    # else:
                    if True:
                        append_text("<div id=\"alignright\"> [[" + KLS.secLabel(labels[(eqCounter + 1) %
                                                                                           (endNum + 1)]).replace(" ",
                                                                                                                  "_") + "|" + KLS.secLabel(
                            labels[(eqCounter + 1) % (endNum + 1)]) + "]] >> </div>\n")
                    append_text("</div>\n\ndrmf_eof\n")
                else:  # FOR EXTRA EQUATIONS
                    append_text("<br /><div id=\"drmf_foot\">\n")
                    append_text(
                        "<div id=\"alignleft\"> << [[" + labels[endNum - 1].replace(" ", "_") + "|" + labels[
                            endNum - 1] + "]] </div>\n")
                    append_text("<div id=\"aligncenter\"> [[" + labels[0].replace(" ", "_") + "#" + labels[endNum][
                                                                                                        8:] + "|formula in " +
                                    labels[0] + "]] </div>\n")
                    append_text(
                        "<div id=\"alignright\"> [[" + labels[(0) % endNum].replace(" ", "_") + "|" + labels[
                            0 % endNum] + "]] </div>\n")
                    append_text("</div>\n\ndrmf_eof\n")



            elif "\\constraint" in line and parse:
                # symbols=symbols+KLS.getSym(line)
                symLine = line.strip("\n")
                if hCon:
                    comToWrite = comToWrite + "\n== Constraint(s) ==\n\n"
                    hCon = False
                    constraint = True
                    math = False
                    conLine = ""
                    # append_text("<div align=\"left\">"+KLS.getEq(line)+"</div><br />\n")
            elif "\\substitution" in line and parse:
                # symbols=symbols+KLS.getSym(line)
                symLine = line.strip("\n")
                if hSub:
                    comToWrite = comToWrite + "\n== Substitution(s) ==\n\n"
                    hSub = False
                    # append_text("<div align=\"left\">"+KLS.getEq(line)+"</div><br />\n")
                substitution = True
                math = False
                subLine = ""
            elif "\\drmfname" in line and parse:
                math = False
                comToWrite = "\n== Name ==\n\n<div align=\"left\">" + KLS.getString(
                    line) + "</div><br />\n" + comToWrite

            elif "\\drmfnote" in line and parse:
                symbols = symbols + KLS.getSym(line)
                if hNote:
                    comToWrite = comToWrite + "\n== Note(s) ==\n\n"
                    hNote = False
                note = True
                math = False
                noteLine = ""

            elif "\\proof" in line and parse:
                # symbols=symbols+KLS.getSym(line)
                symLine = line.strip("\n")
                if hProof:
                    hProof = False
                    comToWrite = comToWrite + "\n== Proof ==\n\nWe ask users to provide proof(s), reference(s) to proof(s), " \
                                              "or further clarification on the proof(s) in this space. \n<br /><br />\n<div align=\"left\">"
                proof = True
                proofLine = ""
                pause = False
                pauseP = False
                for ind in range(0, len(line)):
                    if line[ind:ind + 7] == "\\eqref{":
                        pause = True
                        eqR = line[ind:line.find("}", ind) + 1]
                        rLab = KLS.getString(eqR)
                        for l in lLink:
                            if rLab == l[0:l.find("=") - 1]:
                                rlabel = l[l.find("=>") + 3:l.find("\\n")]
                                rlabel = rlabel.replace("/", "")
                                rlabel = rlabel.replace("#", ":")
                                rlabel = rlabel.replace("!", ":")
                                break

                        eInd = refLabels.index("" + rlabel)
                        z = line[line.find("}", ind + 7) + 1]
                        if z == "." or z == ",":
                            pauseP = True
                            proofLine += ("<br /> \n<math id=\"" + label + "\">{\displaystyle \n" + refEqs[
                                eInd] + "}</math>" + z + "<br />\n")
                        else:
                            if z == "}":
                                proofLine += ("<br /> \n<math id=\"" + rlabel + "\">{\displaystyle \n" + refEqs[
                                    eInd] + "}</math><br />")
                            else:
                                proofLine += ("<br /> \n<math id=\"" + rlabel + "\">{\displaystyle \n" + refEqs[
                                    eInd] + "}</math><br />\n")


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
                    append_text(comToWrite + KLS.getEqP(proofLine) + "</div>\n<br />\n")
                    comToWrite = ""
                    symbols = symbols + KLS.getSym(symLine)
                    symLine = ""

                    # append_text(line)

            elif proof:
                symLine += line.strip("\n")
                pauseP = False
                # symbols=symbols+KLS.getSym(line)
                for ind in range(0, len(line)):
                    if line[ind:ind + 7] == "\\eqref{":
                        pause = True
                        eqR = line[ind:line.find("}", ind) + 1]
                        rLab = KLS.getString(eqR)
                        for l in lLink:
                            if rLab == l[0:l.find("=") - 1]:
                                rlabel = l[l.find("=>") + 3:l.find("\\n")]
                                rlabel = rlabel.replace("/", "")
                                rlabel = rlabel.replace("#", ":")
                                rlabel = rlabel.replace("!", ":")
                                break

                        eInd = refLabels.index("" + rlabel.lstrip("Formula:"))
                        z = line[line.find("}", ind + 7) + 1]
                        if z == "." or z == ",":
                            pauseP = True
                            proofLine += ("<br /> \n<math id=\"" + rlabel + "\">{\displaystyle \n" + refEqs[
                                eInd] + "}</math>" + z + "<br />\n")
                        else:
                            proofLine += ("<br /> \n<math id=\"" + rlabel + "\">{\displaystyle \n" + refEqs[
                                eInd] + "}</math><br />\n")

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
                    append_text(comToWrite + KLS.getEqP(proofLine).rstrip("\n") + "</div>\n<br />\n")
                    comToWrite = ""
                    symbols = symbols + KLS.getSym(symLine)
                    symLine = ""

            elif math:
                if "\\end{equation}" in lines[i + 1] or "\\constraint" in lines[i + 1] \
                        or "\\substitution" in lines[i + 1] or "\\proof" in lines[i + 1] or "\\drmfnote" in lines[
                            i + 1] or "\\drmfname" in lines[i + 1]:
                    append_text(line.rstrip("\n"))
                    symLine += line.strip("\n")
                    symbols = symbols + KLS.getSym(symLine)
                    symLine = ""
                    append_text("\n}</math></div>\n")
                else:
                    symLine += line.strip("\n")
                    append_text(line)
            if note and parse:
                noteLine = noteLine + line
                symbols = symbols + KLS.getSym(line)
                if "\\end{equation}" in lines[i + 1] or "\\drmfn" in lines[i + 1] \
                        or "\\constraint" in lines[i + 1] \
                        or "\\substitution" in lines[i + 1] \
                        or "\\proof" in lines[i + 1]:
                    note = False
                    if "\\emph" in noteLine:
                        noteLine = noteLine[0:noteLine.find("\\emph{")] + "\'\'" + noteLine[
                                                                                   noteLine.find("\\emph{") + len(
                                                                                       "\\emph{"):
                                                                                   noteLine.find("}", noteLine.find(
                                                                                       "\\emph{") + len(
                                                                                       "\\emph{"))] + "\'\'" + \
                                   noteLine[noteLine.find("}", noteLine.find("\\emph{") + len("\\emph{")) + 1:]
                    comToWrite = comToWrite + "<div align=\"left\">" + KLS.getEq(noteLine) + "</div><br />\n"

            if constraint and parse:
                conLine = conLine + line.replace("&", "&<br />")

                symLine += line.strip("\n")
                # symbols=symbols+KLS.getSym(line)
                if "\\end{equation}" in lines[i + 1] or "\\drmfn" in lines[i + 1] \
                        or "\\constraint" in lines[i + 1] \
                        or "\\substitution" in lines[i + 1] \
                        or "\\proof" in lines[i + 1]:
                    constraint = False
                    symbols = symbols + KLS.getSym(symLine)
                    symLine = ""
                    append_text(comToWrite + "<div align=\"left\">" + KLS.getEq(conLine) + "</div><br />\n")
                    comToWrite = ""
            if substitution and parse:
                subLine = subLine + line.replace("&", "&<br />")

                symLine += line.strip("\n")
                # symbols=symbols+KLS.getSym(line)
                if "\\end{equation}" in lines[i + 1] or "\\drmfn" in lines[i + 1] or \
                                "\\substitution" in lines[i + 1] or "\\constraint" in lines[i + 1] or "\\proof" in \
                        lines[i + 1]:
                    substitution = False
                    symbols = symbols + KLS.getSym(symLine)
                    symLine = ""
                    append_text(comToWrite + "<div align=\"left\">" + KLS.getEq(subLine) + "</div><br />\n")
                    comToWrite = ""


if __name__ == "__main__":
    DLMF(0);
