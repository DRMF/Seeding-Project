"""
Rahul Shah
self-taught python don't kill me I know its bad
2/5/16
Re-write of linetest.py so people other than me can read it
This project was/is being written to streamline the update process of the book used
for the online repository, updated via the KLSadd addendum file which only affects chapters
9 and 14
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
NOTE! AS OF 2/26/16 THIS FILE IS NOT YET UPDATED TO THE FULL CAPACITY OF THE PREVIOUS FILE. IF FURTHER DEVELOPMENT IS NEEDED, REFER TO THE
linetest.py FILE IF THIS FILE DOES NOT ADDRESS THE NEW/EXTRA GOALS. This means that XCITE PARSE etc HAS NOT BEEN ADDED
Additional goals (already addressed in linetest.py):
-insert correct usepackages
-insert correct commands found in KLSadd.tex to chapter files
-insert editor's initials into sections (ie %RS: begin addition, %RS: end addition)
Additional goals (not already addressed in linetest.py):
-rewrite for "smarter" edits (ex. add new limit relations straight to the limit relations section in the section itself, not at the end)
Current update status: incomplete
Goals:change the book chapter files to include paragraphs from the addendum, and after that insert some edits so they are intelligently integrated into the chapter

Edward Bian
Currently under heavy modification; sections may not work and/or look inefficient/confusing
"""

#start out by reading KLSadd.tex to get all of the paragraphs that must be added to the chapter files
#also keep track of which chapter each one is in

#variables: chapNums for the chapter number each section belongs to paras will hold the sections that will be copied over
#chapNums is needed to know which file to open (9 or 14)
#mathPeople is just the name for the sections that are used, like Wilson, Racah, etc. I know some are not people, its just a var name
chapNums = []
paras = []

#klsaddparas contains the locations of everything with "paragraph{" in KLSadd, these are the subsections that need to be sorted
klsaddparas = []
mathPeople = []
newCommands = [] #used to hold the indexes of the commands

#ref9II holds the beginnings and ends of each chapter 9 section, provided and area to search
ref9II = [] #Hold section search indexes

#ref14II holds the beginnings and ends of each chapter 14 section, provided and area to search
ref14II = []

#ref9III holds all subsections in each chapter 9 section along with the what  ref9II holds
ref9III = [] #Holds all indexes

#ref14III holds all subsections in each chapter 14 section along with the what ref14II holds
ref14III = []

#specref9 is the KLS indexes that go in chapter 9
specref9 = []

#specref14 is the KLS indexes that in chapter 14
specref14 = []

sectorschap = []
sectorskls = []
insertindices = []
insertloc = []
irrelevant = ["Relations","Functions","Transform","In","For","To","Is","And","Of","relations","functions","transform","in","for","to","is","and","of"]

check = []
check2 = []
check3 = []
check4 = []
klslist = []
klslistII = []
klslistIII = []

w, h = 2, 9999
sorterIIIcheck = [[0 for x in range(w)] for y in range(h)]
print(sorterIIIcheck)

comms = "" #holds the ACTUAL STRINGS of the commands
#2/18/16 this method addresses the goal of hardcoding in the necessary packages to let the chapter files run as pdf's.
#Currently only works with chapter 9, ask Dr. Cohl to help port your chapter 14 output file into a pdf

#5/5/16 this method implements the Hypergeometric paragraphs into relevant sections for practicality
# Later versions should attempt to: fix paragraphs with variations on this name like
# Basic Hypergeometric Representation, q-Hypergeometric Representation
def NewKeywords(kls):
    for i in kls:
        if kls.index(i) > 313:
            if ("paragraph{") in i:
                lenword = len(i) - 1
                temp = i[i.find("{") + 1: lenword-1]
                klslist.append(temp)
                klslistII.append(temp+'\n')
            if ("subsubsection*{") in i:
                lenword = len(i) - 1
                temp = i[i.find("{") + 1: lenword - 1]
                klslist.append(temp)
                klslistII.append(temp + '\n')
    print(klslist)
    i = 0
    while i < len(klslist):
        if ("reference" in klslist[i].lower()) or ("hypergeometric representation" in klslist[i].lower()) or ("limit relation" in klslist[i].lower()) or ("special value" in klslist[i].lower()):
            del klslist[i]
        else:
            i += 1
    liststr = ''.join(klslistII)
    with open("keywordsIII.tex", "w") as kw:
        kw.write(liststr)
    for i in klslist:
        add = True
        for j in klslistIII:
            if i == j:
                add = False
        if add == True:
            klslistIII.append(i)
    print(klslist)
    liststr2 = '\n'.join(klslistIII)
    with open("trunckeywords.tex", "w") as kw:
        kw.write(liststr2)
    print(klslistIII)
    print(klslistIII.index("Orthogonality"))
    #del klslistIII[35]
    print(klslistIII)
"""
---------------------------------------------------------
"""
def FixChapterIII(kls,chap,word,sortloc):
    canAdd = False
    # keep track of sections and subsections from chap
    hyperHeadersIII = []
    hyperSubsIII = []
    index = 0
    sep1 = 0
    nameIII = word.lower()
    if nameIII == "orthogonality":
        sep1 = 1
    #print(nameIII)
    #using Edward's reference paragraphs!
    #now get the section names of all of the KLSadd
    kHyperHeaderIII = []
    kHyperSubIII = []
    index = 0
    for i in kls:
        index +=1
        line = str(i)
        if "\\subsection" in line:
            temp = line[line.find(" ", 12)+1: line.find("}", 12)] #get just the name (like mathpeople)
        if sep1 == 0:
            if nameIII in line.lower() and kls.index(i) > 313 and "\\paragraph{" in line:
                #print(i)
                #print(kls.index(i))
                for i in klsaddparas:
                    if index < i:
                        klsloc = klsaddparas.index(i)
                        break
                t = ''.join(kls[index: klsaddparas[klsloc]])
                kHyperSubIII.append(t)#append the whole paragraph, pray every paragraph ends with a % comment
                kHyperHeaderIII.append(temp)#append the name of subsection
        else:
            if nameIII in line.lower() and kls.index(i) > 313 and "\\paragraph{" in line and "orthogonality relation" not in line.lower():
                # print(i)
                # print(kls.index(i))
                for i in klsaddparas:
                    if index < i:
                        klsloc = klsaddparas.index(i)
                        break
                t = ''.join(kls[index: klsaddparas[klsloc]])
                kHyperSubIII.append(t)  # append the whole paragraph, pray every paragraph ends with a % comment
                kHyperHeaderIII.append(temp)  # append the name of subsection
    kHypIndexIII = 0
    offset = 0

    i = 0
    while i < len(kHyperHeaderIII):
        try:
            if kHyperHeaderIII[i] == kHyperHeaderIII[i+1]:
                kHyperSubIII[i+1] = kHyperSubIII[i] + "\paragraph{\\bf KLS Addendum: " + word + "}\n" + kHyperSubIII[i+1]
                kHyperHeaderIII[i] = "memes"
                kHyperSubIII[i] = "memes"
            else:
                i += 1
        except IndexError:
            i += 1
    a = 0
    #print(kHyperHeaderIII)
    #print(kHyperSubIII)
    while a < len(kHyperHeaderIII):
        if kHyperHeaderIII[a] == "memes":
            del kHyperHeaderIII[a]
            del kHyperSubIII[a]
        else:
            a += 1
    #print(kHyperSubIII)
    #print(len(kHyperSubIII))
    #print(kHyperHeaderIII)
    #print(len(kHyperHeaderIII))
    global sorterIIIcheck
    #print(sortloc)
    chap9 = 0
    if sorterIIIcheck[sortloc][0] == 0:
        tempref = ref9III
        sorterIIIcheck[sortloc][0] += 1
        chap9 = 1
    else:
        tempref = ref14III
        offset = sorterIIIcheck[sortloc][1]
        print("offset")
        print(offset)
        if sep1 == 1:
            offset = 8
    for d in range(0, len(tempref)):  # check every section and subsection line
        i = tempref[d]
        line = str(chap[i])
        if "\\section{" in line or "\\subsection{" in line:
            if "\\subsection{" in line:
                temp = line[12:line.find("}", 7)]
            else:
                temp = line[9:line.find("}", 7)]
        if sep1 == 0:
            if nameIII in line.lower():
                hyperSubsIII.append([tempref[d + 1]])  # appends the index for the line before following subsection
                hyperHeadersIII.append(temp)  # appends the name of the section the hypergeo subsection is in so we can compare

                if temp in kHyperHeaderIII:
                    try:
                        chap[tempref[d + 1] - 1] += "\paragraph{\\bf KLS Addendum: " + word + "}"
                        chap[tempref[d + 1] - 1] += kHyperSubIII[kHypIndexIII + offset]
                        if chap9 == 1:
                            sorterIIIcheck[sortloc][1] += 1
                        #print(chap[tempref[d + 1] - 2])
                        kHypIndexIII+=1
                    except IndexError:
                        print("Warning! Code has encountered some sort of error involving section identification for '" + nameIII + "'. Problems may occur.")
                        print("If you see this message, bad things are happening.")
        else:
            if nameIII in line.lower() and "orthogonality relation" not in line:
                hyperSubsIII.append([tempref[d + 1]])  # appends the index for the line before following subsection
                hyperHeadersIII.append(
                    temp)  # appends the name of the section the hypergeo subsection is in so we can compare

                if temp in kHyperHeaderIII:
                    try:
                        chap[tempref[d + 1] - 1] += "\paragraph{\\bf KLS Addendum: " + word + "}"
                        chap[tempref[d + 1] - 1] += kHyperSubIII[kHypIndexIII + offset]
                        # print(chap[tempref[d + 1] - 2])
                        kHypIndexIII += 1
                    except IndexError:
                        print("Warning! Code has encountered some sort of error involving section identification for '" + nameIII + "'. Problems may occur.")
                        print("If you see this message, bad things are happening.")

    if len(hyperHeadersIII) != 0 and len(hyperSubsIII) != 0:
        print("Chapter Values:")
        print(word)
        print(kHyperHeaderIII)
        print(hyperHeadersIII)
        print(len(hyperHeadersIII))
        #print(kHyperSubIII)
        print(kHyperSubIII)
        print(hyperSubsIII)
        print(len)(hyperSubsIII)
        print("End")
        print("sortloc")
        print(sorterIIIcheck[sortloc][1])

def HyperGeoFix(kls, chap):
    canAdd = False
    # keep track of sections and subsections from chap
    hyperHeaders = []
    hyperSubs = []
    index = 0

    #using Edward's reference paragraphs!
    #now get the section names of all of the KLSadd
    kHyperHeader = []
    kHyperSub = []
    index = 0
    for i in kls:
        index +=1
        line = str(i)
        if "\\subsection" in line:
            temp = line[line.find(" ", 12)+1: line.find("}", 12)] #get just the name (like mathpeople)
        if "hypergeometric representation" in line.lower():
            for i in klsaddparas:
                if index < i:
                    klsloc = klsaddparas.index(i)
                    break
            t = ''.join(kls[index: klsaddparas[klsloc]])
            kHyperSub.append(t)#append the whole paragraph, pray every paragraph ends with a % comment
            kHyperHeader.append(temp)#append the name of subsection
    kHyperHeader[8] = "Discrete $q$-Hermite~II"
    kHypIndex = 0
    offset = 0
    if len(check) == 0:
        tempref = ref9III
        check.append("Words")
    else:
        tempref = ref14III
        offset = 4
    for d in range(0, len(tempref)):  # check every section and subsection line
        i = tempref[d]
        line = str(chap[i])
        if "\\section{" in line or "\subsection{" in line:
            if "\\subsection{" in line:
                temp = line[12:line.find("}", 7)]
            else:
                temp = line[9:line.find("}", 7)]
        if "hypergeometric representation" in line.lower():
            hyperSubs.append([tempref[d + 1]])  # appends the index for the line before following subsection
            hyperHeaders.append(temp)  # appends the name of the section the hypergeo subsection is in so we can compare

            if temp in kHyperHeader:
                try:
                    chap[tempref[d + 1] - 2] += "\paragraph{\\bf KLS Addendum: Hypergeometric Representation}"
                    chap[tempref[d + 1] - 2] += kHyperSub[kHypIndex + offset]
                    #print(chap[tempref[d + 1] - 2])
                    kHypIndex+=1
                except IndexError:
                    print("Warning! Code has encountered some sort of error involving section identification for 'Hypergeometric Representation'. Problems may occur.")
                    print("If you see this message, bad things are happening.")

    #print(kHyperHeader)
    #print(hyperHeaders)
    #print(kHyperSub)
    #print(hyperSubs)
def SpecialValue(kls, chap):
    canAdd = False
    # keep track of sections and subsections from chap
    svhyperHeaders = []
    svhyperSubs = []
    index = 0

    # using Edward's reference paragraphs!
    # now get the section names of all of the KLSadd
    svkHyperHeader = []
    svkHyperSub = []
    index = 0
    for i in kls:
        index +=1
        line = str(i)
        if "\\subsection" in line:
            temp = line[line.find(" ", 12)+1: line.find("}", 12)]  #get just the name (like mathpeople)
        if "special value" in line.lower():
            for i in klsaddparas:
                if index < i:
                    svklsloc = klsaddparas.index(i)
                    break
            t = ''.join(kls[index: klsaddparas[svklsloc]])
            svkHyperSub.append(t)  # append the whole paragraph, pray every paragraph ends with a % comment
            svkHyperHeader.append(temp)  # append the name of subsection
    print(svkHyperHeader)
    print(svkHyperSub)
    svkHypIndex = 0
    offset = 0
    if len(check2) == 0:
        tempref = ref9III
        check2.append("test")
    else:
        tempref = ref14III
        offset = 8
    for d in range(0, len(tempref)):  # check every section and subsection line
        i = tempref[d]
        line = str(chap[i])
        if "\\section{" in line or "\\subsection{" in line:
            if "\\subsection{" in line:
                temp = line[12:line.find("}", 7)]
            else:
                temp = line[9:line.find("}", 7)]
        if "hypergeometric representation" in line.lower():
            svhyperSubs.append([tempref[d + 1]])  # appends the index for the line before following subsection
            svhyperHeaders.append(temp)  #appends the name of the section the hypergeo subsection is in so we can compare
            if temp in svkHyperHeader:
                chap[tempref[d + 1] - 2] += "\paragraph{\\bf KLS Addendum: Special Value}"
                chap[tempref[d + 1] - 2] += svkHyperSub[svkHypIndex + offset]
                svkHypIndex += 1

def LimRelFix(kls, chap):
    canAdd = False
    lrhyperHeaders = []
    lrhyperSubs = []
    index = 0

    lrkHyperHeader = []
    lrkHyperSub = []
    index = 0
    for i in kls:
        index +=1
        line = str(i)
        if "\\subsection" in line:
            temp = line[line.find(" ", 12)+1: line.find("}", 12)]
        if "limit relation" in line.lower():
            for i in klsaddparas:
                if index < i:
                    klsloc = klsaddparas.index(i)
                    break
            t = ''.join(kls[index: klsaddparas[klsloc]])
            lrkHyperSub.append(t)#append the whole paragraph, pray every paragraph ends with a % comment
            lrkHyperHeader.append(temp)#append the name of subsection
    lrkHyperHeader[0] = "Pseudo Jacobi"
    lrkHypIndex = 0
    offset = 0
    if len(check3) == 0:
        tempref = ref9III
        check3.append("Words")
    else:
        tempref = ref14III
        offset = 1
    for d in range(0, len(tempref)):  # check every section and subsection line
        i = tempref[d]
        line = str(chap[i])
        if "\\section{" in line or "\subsection{" in line:
            if "\\subsection{" in line:
                temp = line[12:line.find("}", 7)]
            else:
                temp = line[9:line.find("}", 7)]
        if "limit relation" in line.lower():
            lrhyperSubs.append([tempref[d + 1]])  # appends the index for the line before following subsection
            lrhyperHeaders.append(temp)  # appends the name of the section the hypergeo subsection is in so we can compare

            if temp in lrkHyperHeader:
                try:
                    chap[tempref[d + 1] - 2] += "\paragraph{\\bf KLS Addendum: Limit Relation(s)}"
                    chap[tempref[d + 1] - 2] += lrkHyperSub[lrkHypIndex + offset]
                    lrkHypIndex+=1
                except IndexError:
                    print("Warning! Code has encountered some sort of error involving section identification for 'Limit Relations'. Problems may occur.")
                    print("If you see this message, bad things are happening.")

def prepareForPDF(chap):
    footmiscIndex = 0
    index = 0
    for word in chap:
        index+=1
        if("footmisc" in word):
            footmiscIndex+= index
    #edits the chapter string sent to include hyperref, xparse, and cite packages
    #str[footmiscIndex] += "\\usepackage[pdftex]{hyperref} \n\\usepackage {xparse} \n\\usepackage{cite} \n"
    chap.insert(footmiscIndex, "\\usepackage[pdftex]{hyperref} \n\\usepackage {xparse} \n\\usepackage{cite} \n")
    return chap

#2/18/16 this method reads in relevant commands that are in KLSadd.tex and returns them as a list

def getCommands(kls):
    index = 0
    for word in kls:
        index+=1
        if("smallskipamount" in word):
            newCommands.append(index-1)
        if("mybibitem[1]" in word):
            newCommands.append(index)
    comms = kls[newCommands[0]:newCommands[1]]
    return comms

#2/18/16 this method addresses the goal of hardcoding in the necessary commands to let the chapter files run as pdf's. Currently only works with chapter 9

def insertCommands(kls, chap, cms):
    #reads in the newCommands[] and puts them in chap
    beginIndex = -1 #the index of the "begin document" keyphrase, this is where the new commands need to be inserted.
    #find index of begin document in KLSadd
    index = 0
    for word in kls:
        index+=1
        if("begin{document}" in word):
            beginIndex += index
    tempIndex = 0
    for i in cms:
        chap.insert(beginIndex+tempIndex,i)
        tempIndex +=1
    return chap

#method to find the indices of the reference paragraphs
def findReferences(chapter):
    references = []
    index = -1
    #chaptercheck designates which chapter is being searched for references
    chaptercheck = 0
    if chapticker == 0:
        chaptercheck = str(9)
    elif chapticker == 1:
        chaptercheck = str(14)
    #canAdd tells the program whether the next section is a reference
    canAdd = False
    for word in chapter:
        index+=1
        specialdetector = 1
        #check sections and subsections
        if("section{" in word or "subsection*{" in word) and ("subsubsection*{" not in word):
            w = word[word.find("{")+1: word.find("}")]
            ws = word[word.find("{")+1: word.find("~")]
            for unit in mathPeople:
                subunit = unit[unit.find(" ")+1: unit.find("#")]
                # System of checks that verifies if section is in chapter
                if ((w in subunit) or (ws in subunit)) and (chaptercheck in unit) and (len(w) == len(subunit)) or (("Pseudo Jacobi" in w) and ("Pseudo Jacobi (or Routh-Romanovski)" in subunit)) and ("Hypergeometric representation" not in w) and ("Special value" not in w):
                    canAdd = True
                    if chapticker == 0:
                        ref9II.append(index)
                        ref9III.append(index)
                    elif chapticker == 1:
                        ref14II.append(index)
                        ref14III.append(index)
                    specialdetector = 0
        if("\\subsection*{References}" in word) and (canAdd == True):
            # Appends valid locations
            references.append(index)
            if chapticker == 0:
                ref9II.append(index)
                ref9III.append(index)
            elif chapticker == 1:
                ref14II.append(index)
                ref14III.append(index)
            canAdd = False
        if ("subsection*{" in word and "References" not in word):
            if chapticker == 0:
                ref9III.append(index)
            elif chapticker == 1:
                ref14III.append(index)
        if "\\section{" in word and specialdetector == 1 and chaptercheck == "14":
            w2 = word[word.find("{") + 1: word.find("}")]
            if "Bessel" not in w2:
                ref14III.append(index)
    besselcheck = 1
    bqlegendrecheck = 2
    for i in ref9III:
        if i == 2646:
            besselcheck = 0
    if besselcheck == 1:
        ref9III.insert(230, 2646)
    for i in ref14III:
        if i == 1217:
            bqlegendrecheck -= 1
    if bqlegendrecheck > 0:
        pass

    return references

def referencePlacer(chap, references, p, kls,refII,refIII,specref,klsaddparas):
    # count is used to represent the values in count
    count = 0
    # Tells which chapter it's on
    designator = 0
    if chapticker2 == 0:
        designator = "9."
    elif chapticker2 == 1:
        designator = "14."
    for i in references:
        # Place before References paragraph
        word1 = str(p[count])
        if (designator in word1[word1.find("\\subsection*{") + 1: word1.find("}")]):
            chap[i - 2] += "%Begin KLSadd additions"
            chap[i - 2] += p[count]
            chap[i - 2] += "%End of KLSadd additions"
            count += 1
        else:
            while (designator not in word1[word1.find("\\subsection*{") + 1: word1.find("}")]):
                word1 = str(p[count])
                if (designator in word1[word1.find("\\subsection*{") + 1: word1.find("}")]):
                    chap[i - 2] += "%Begin KLSadd additions"
                    chap[i - 2] += p[count]
                    chap[i - 2] += "%End of KLSadd additions"
                    count += 1
                else:
                    count += 1

#method to change file string(actually a list right now), returns string to be written to file
#If you write a method that changes something, it is preffered that you call the method in here
def fixChapter(chap, references, p, kls,refII,refIII,specref,klsaddparas,sectorskls,sectorschap,insertindices,insertloc,klslist):
    #chap is the file string(actually a list), references is the specific references for the file,
    #and p is the paras variable(not sure if needed) kls is the KLSadd.tex as a list
    chapticker3 = 0

    #HyperGeoFix(kls, chap)

    global check
    print(len(check))
    #check = []

    #SpecialValue(kls,chap)

    #global check
    #print(len(check))
    #check = []

    #LimRelFix(kls, chap)
    sortloc = 0
    #FixChapterII(kls,chap,klslist)
    bob = ['Uniqueness of orthogonality measure']
    for i in klslistIII:
        #print(i)
        FixChapterIII(kls, chap, i, sortloc)
        sortloc += 1

    referencePlacer(chap, references, p, kls, refII,refIII,specref,klsaddparas)
    #referencePlacerII(chap, references, p, kls, refII, refIII, specref, klsaddparas,sectorskls,sectorschap,insertindices,insertloc)
    chap = prepareForPDF(chap)
    cms = getCommands(kls)
    chap = insertCommands(kls,chap, cms)
    commentticker = 0
    # Hard coded command remover
    for word in chap:
        word2 = chap[chap.index(word)-1]
        if ("\\newcommand{\qhypK}[5]{\,\mbox{}_{#1}\phi_{#2}\!\left(" not in word2):
            if ("\\newcommand\\half{\\frac12}" in word):
                wordtoadd = "%" + word
                chap[commentticker] = wordtoadd
            elif ("\\newcommand{\\hyp}[5]{\\,\\mbox{}_{#1}F_{#2}\\!\\left(" in word):
                wordtoadd = "%" + word
                chap[commentticker] = wordtoadd
            elif ("\\genfrac{}{}{0pt}{}{#3}{#4};#5\\right)}" in word):
                wordtoadd = "%" + word
                chap[commentticker] = wordtoadd
            elif ("\\newcommand{\\qhyp}[5]{\\,\\mbox{}_{#1}\\phi_{#2}\\!\\left(" in word):
                wordtoadd = "%" + word
                chap[commentticker] = wordtoadd
        commentticker += 1
    ticker1 = 0
    # Formatting to make the Latex file run
    while ticker1 < len(chap):
        if ('\\myciteKLS' in chap[ticker1]):
            chap[ticker1] = chap[ticker1].replace('\\myciteKLS', '\\cite')
        ticker1 += 1
    return chap

#open the KLSadd file to do things with
with open("KLSadd(3).tex", "r") as add:
    #store the file as a string
    addendum = add.readlines()
    NewKeywords(addendum)
    #Makes sections look like other sections
    for word in addendum:
        if ("paragraph{" in word):
            lenword = len(word) - 1
            temp = word[0:word.find("{") + 1] + "\large\\bf KLSadd: " + word[word.find("{") + 1: lenword]
            addendum[addendum.index(word)] = temp
        if ("subsubsection*{" in word):
            lenword = len(word) - 1
            addendum[addendum.index(word)] = word[0:word.find("{") + 1] + "\large\\bf KLSadd: " + word[word.find("{") + 1: lenword]
    index = 0
    indexes = []
    # Designates sections that need stuff added
    # get the index
    for word in addendum:
        index+=1
        if("." in word and "\\subsection*{" in word):
            if ("9." in word):
                chapNums.append(9)
                name = word[word.find("{") + 1: word.find("}") ]
                mathPeople.append(name + "#")
                specref9.append(index-1)
            if("14." in word):
                chapNums.append(14)
                name = word[word.find("{") + 1: word.find("}") ]
                mathPeople.append(name + "#")
                if len(specref14) == 0:
                    specref9.append(index - 1)
                specref14.append(index - 1)
            indexes.append(index-1)
        if ("paragraph{" in word) and (index > 313):
            klsaddparas.append(index-1)
        if ("subsub" in word) and (index > 313):
            klsaddparas.append(index - 1)
        if ("\subsection*{" in word) and (index > 313):
            klsaddparas.append(index - 1)
    klsaddparas.append(2246)
    #print(indexes)
    #print(specref9)
    #print(specref14)
    #print(klsaddparas)
    #print(mathPeople)
    #now indexes holds all of the places there is a section
    #using these indexes, get all of the words in between and add that to the paras[]
    for i in range(len(indexes)-1):
        box = ''.join(addendum[indexes[i]: indexes[i+1]-1])
        paras.append(box)
    box2 = ''.join(addendum[indexes[35]: 2245])
    paras.append(box2)
    #paras now holds the paragraphs that need to go into the chapter files, but they need to go in the appropriate
    #section(like Wilson, Racah, Hahn, etc.) so we use the mathPeople variable
    #we can use the section names to place the relevant paragraphs in the right place

    #as of 2/8/16 the paragraphs will go before the References paragraph of the relevant section
    #parse both files 9 and 14 as strings

    #chapter 9
    with open("chap09.tex", "r") as ch9:
        entire9 = ch9.readlines() #reads in as a list of strings
    ch9.close()

    #chapter 14
    with open("chap14.tex", "r") as ch14:
        entire14 = ch14.readlines()
    ch14.close()
    #call the findReferences method to find the index of the References paragraph in the two file strings
    #two variables for the references lists one for chapter 9 one for chapter 14
    chapticker = 0
    references9 = findReferences(entire9)
    chapticker += 1
    references14 = findReferences(entire14)
    ref14III.insert(88, 1217)
    ref14III.insert(244, 3053)
    ref14III.insert(198, 2554)
    #call the fixChapter method to get a list with the addendum paragraphs added in
    chapticker2 = 0
    str9 = ''.join(fixChapter(entire9, references9, paras, addendum,ref9II,ref9III,specref9,klsaddparas,sectorskls,sectorschap,insertindices,insertloc,klslist))
    #with open("updated9.tex", "w") as temp9:
    #    temp9.write(str9)
    #print("dignsakfibasjksdjhsfs")
    #check4.append("memes")
    chapticker2 += 1
    str14 = ''.join(fixChapter(entire14, references14, paras, addendum,ref14II,ref14III,specref14,klsaddparas,sectorskls,sectorschap,insertindices,insertloc,klslist))

"""
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
If you are writing something that will make a change to the chapter files, write it BEFORE this line, this part
is where the lists representing the words/strings in the chapter are joined together and updated as a string!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"""


#write to files
#new output files for safety
with open("updated9.tex","w") as temp9:
    temp9.write(str9)

with open("updated14.tex", "w") as temp14:
    temp14.write(str14)
print(klsaddparas)
print(sorterIIIcheck)
print(ref9III)