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

comms = "" #holds the ACTUAL STRINGS of the commands
#2/18/16 this method addresses the goal of hardcoding in the necessary packages to let the chapter files run as pdf's.
#Currently only works with chapter 9, ask Dr. Cohl to help port your chapter 14 output file into a pdf

#5/5/16 this method implements the Hypergeometric paragraphs into relevant sections for practicality
# Later versions should attempt to: fix paragraphs with variations on this name like
# Basic Hypergeometric Representation, q-Hypergeometric Representation

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
    print(kHyperHeader)
    print(len(kHyperHeader))
    print(kHyperSub)
    print(len(kHyperSub))
    print(klsaddparas)
    kHypIndex = 0
    offset = 0
    if len(check) == 0:
        tempref = ref9III
        global check
        print(len(check))
        print(check)
        check.append("Words")
    else:
        tempref = ref14III
        offset = 4
        print("baguette")
    print(tempref)
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
                    print(kHyperSub[kHypIndex + offset])
                    #print(chap[tempref[d + 1] - 2])
                    kHypIndex+=1
                    print(kHypIndex)
                except IndexError:
                    print("QED")

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
    print("svk")
    print(svkHyperHeader)
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
            svhyperHeaders.append(temp)  # appends the name of the section the hypergeo subsection is in so we can compare
            if temp in svkHyperHeader:
                chap[tempref[d + 1] - 2] += "\paragraph{\\bf KLS Addendum: Special Value}"
                chap[tempref[d + 1] - 2] += svkHyperSub[svkHypIndex + offset]
                svkHypIndex += 1

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

def referencePlacerII(chap, references, p, kls,refII,refIII,specref,klsaddparas,sectorskls,sectorschap,insertindices,insertloc):
    if chapticker2 == 0:
        designator = "9."
    elif chapticker2 == 1:
        designator = "14."
    count = 0
    count2 = 0
    count3 = 0
    secchaploc = 0
    secklsloc = 0
    sectionnuma = specref[count]
    sectionnumb = specref[count+1]
    sectionnumc = refII[count2]
    sectionnumd = refII[count2 + 1]
    while count < len(specref)-1:
        for word in klsaddparas:
            if word <> "@":
                if word > sectionnuma and word < sectionnumb:

                    lenwordII = len(kls[word])-1
                    #That 29 is where the KLS formatting ends
                    if "subsub" in kls[word]:
                        temp = kls[word][34: lenwordII]
                    else:
                        temp = kls[word][29 : lenwordII]
                    #with open("keywords.tex", "a") as log:
                    #    log.write(temp + " Location: " + str(word) + "\n")
                    #log.close()
                    #print(temp)
                    #print(word)
                    sectorskls = temp.split(' ')
                    for i in sectorskls:
                        for a in irrelevant:
                            if i == a:
                                sectorskls[sectorskls.index(i)] = "@@"
                                i == "@@"
                    #print(sectorskls)

                while count2 < len(refII) - 1:
                    for word2 in refIII:
                            if word2 > sectionnumc and word2 < sectionnumd and word2 <> "@":
                                lenwordIII = len(chap[word2])-3
                                # That 13 is where the KLS formatting ends
                                if "subsub" in chap[word2]:
                                    temp2 = chap[word2][16: lenwordIII]
                                else:
                                    temp2 = chap[word2][13: lenwordIII]
                                #if designator == "14.":
                                #    with open("keywords.tex", "a") as log:
                                #            log.write(temp2 + " Location: " + str(word2) + "\n")
                                #    log.close()
                                sectorschap = temp2.split(' ')
                                for i in sectorschap:
                                    for a in irrelevant:
                                        if i == a:
                                            i == "@@"
                                #print("temp2")
                                #print(temp2)
                                #print(word2)
                                ticker1 = 1
                                for i in sectorskls:
                                    for j in sectorschap:
                                        if (i in j) or (j in i):
                                            if ticker1 == 1:
                                                try:
                                                    locationdata = klsaddparas[klsaddparas.index(word)],"+"
                                                    moredata = str(klsaddparas[klsaddparas.index(word)])
                                                    insertindices.append(locationdata)
                                                    insertloc.append(refIII[refIII.index(word2)+1])
                                                    evenmoredata = str(refIII[refIII.index(word2)+1])
                                                    with open("keywordsII.tex", "a") as log:
                                                        log.write("Pair "+"\n")
                                                        log.write(moredata + "\n")
                                                        log.write(evenmoredata+"\n")
                                                    log.close()
                                                    klsaddparas[klsaddparas.index(word)] = "@"
                                                    refIII[refIII.index(word2)] = "@"
                                                    ticker1 = 0
                                                except ValueError:
                                                    pass
                    count2 += 1
                    sectionnumc = refII[count2]
                    if count2 + 1 == len(refII):
                        sectionnumd = refII[count2]
                    else:
                        sectionnumd = refII[count2 + 1]
                count2 = 0
        count += 1
        sectionnuma = specref[count]
        if count + 1 == len(specref):
            sectionnumb = specref[count]
        else:
            sectionnumb = specref[count + 1]
    #print(insertindices)
    #print(insertloc)
    #print(klsaddparas)
    #print(refIII)

#method to change file string(actually a list right now), returns string to be written to file
#If you write a method that changes something, it is preffered that you call the method in here
def fixChapter(chap, references, p, kls,refII,refIII,specref,klsaddparas,sectorskls,sectorschap,insertindices,insertloc):
    #chap is the file string(actually a list), references is the specific references for the file,
    #and p is the paras variable(not sure if needed) kls is the KLSadd.tex as a list
    chapticker3 = 0

    HyperGeoFix(kls, chap)

    global check
    print(len(check))
    #check = []

    SpecialValue(kls,chap)

    #global check
    #print(len(check))
    #check = []

    #LimRelFix(kls, chap)

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
    print(ref14III)
    print("memes")
    chapticker += 1
    references14 = findReferences(entire14)
    ref14III.insert(88, 1217)
    ref14III.insert(244, 3053)
    ref14III.insert(198, 2554)
    print(ref14III)
    print("memes")
    #call the fixChapter method to get a list with the addendum paragraphs added in
    chapticker2 = 0
    str9 = ''.join(fixChapter(entire9, references9, paras, addendum,ref9II,ref9III,specref9,klsaddparas,sectorskls,sectorschap,insertindices,insertloc))
    chapticker2 += 1
    str14 = ''.join(fixChapter(entire14, references14, paras, addendum,ref14II,ref14III,specref14,klsaddparas,sectorskls,sectorschap,insertindices,insertloc))
    #print(insertindices)
    #print(insertloc)
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
print(ref14III)
print(ref14III[87])

