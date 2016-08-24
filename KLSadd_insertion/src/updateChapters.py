import os

__author__ = "Rahul Shah"
__status__ = "Development"
__credits__ = ["Rahul Shah", "Edward Bian"]

# Path to data directory
DATA_DIR = os.path.dirname(os.path.realpath(__file__)) + "/../data/"

# holds all subsections in each chapter section along with the what holds

# w, h = 2, 100
# sorter_check = [[0 for _ in range(w)] for __ in range(h)]


def chap1placer(chap1, kls, klsaddparas):
    chapterstart = True
    index = 0
    kls_sub_chap1 = []
    kls_header_chap1 = []
    for item in kls:
        index += 1
        line = str(item)
        if "\\subsection" in line:
            temp = line[line.find(" ", 12) + 1: line.find("}", 12)+1]  # get just the name (like mathpeople)
        if chapterstart and ("\\paragraph{" in line or "\\subsubsection*{" in line):
            for item in klsaddparas:
                if index < item:
                    klsloc = klsaddparas.index(item)
                    break
            t = ''.join(kls[index-1: klsaddparas[klsloc]])
            kls_sub_chap1.append(t)  # append the whole paragraph, pray every paragraph ends with a % comment
            kls_header_chap1.append(temp)  # append the name of subsection
            break
    intro_to_add = ''.join(kls_sub_chap1)
    chap1 = chap1[:len(chap1)-1]
    chap1 = ''.join(chap1)
    total_chap1 = chap1 + "\\paragraph{\\large\\bf KLS Addendum: Generalities}" + intro_to_add + "\\end{document}"
    return total_chap1


def extraneous_section_deleter(list):
    """
    Removes sections that are irrelevant and will slow or confuse the program

    :param list:
    :return: Extraneous name free output
    """
    return [item for item in list if "reference" not in item.lower() and "limit relation" not in item.lower()
            and "symmetry" not in item.lower() and " hypergeometric representation" not in item.lower()
            and "hypergeometric representation " not in item.lower()]


def new_keywords(kls, kls_list):
    """
    This section checks through the Addendum and identifies words that are valid keywords of sections
    It then takes that list and removes duplicates, as well as printing the output to another file.

    :param kls: The addendum that provides the words.
    :return: Inputs results into a global list.
    """

    kls_list_chap = []
    for item in kls:
        if "paragraph{" in item or "subsubsection*{" in item:
            kls_list.append(item[item.find("{") + 1: len(item) - 2])
    kls_list = extraneous_section_deleter(kls_list)

    kls_list.append("Limit Relation")
    for item in kls_list:
        if item not in kls_list_chap:
            kls_list_chap.append(item)
    kls_list_chap[kls_list_chap.index("Special value")] = "Symmetry"
    kls_list_chap.append("Special value")
    w = 2
    h = len(kls_list_chap)+1
    sorter_check = [[0 for _ in range(w)] for __ in range(h)]
    return kls_list_chap, sorter_check


def fix_chapter_sort(kls, chap, word, sortloc, klsaddparas, sortmatch_2, tempref, sorter_check):
    """
    This function sorts through the input files and identifies and places sections from the addendum after their
    respective subsections in the chapter.

    :param kls: The addendum where the sections to be inserted are found.
    :param chap: The destination of inserted sections.
    :param word: The keyword that is being processed.
    :param sortloc: The location in the list of words, of the word being sorted.
    :return: This function outputs the processed chapter into a larger function for further processing.
    """
    hyper_headers_chap = []
    hyper_subs_chap = []

    special_input = 0
    name_chap = word.lower()
    if name_chap == "orthogonality":
        special_input = 1
    elif name_chap == "special value":
        special_input = 2
    elif name_chap == "symmetry":
        special_input = 3

    khyper_header_chap = []
    k_hyper_sub_chap = []
    index = 0

    chapterstart = False
    for item in kls:
        index += 1
        line = str(item)
        if "\\subsection" in line:
            temp = line[line.find(" ", 12)+1: line.find("}", 12)]  # get just the name (like mathpeople)
            if temp.lower() == 'wilson':
                chapterstart = True
        if special_input in (0, 2) and name_chap in line.lower() and chapterstart and ("\\paragraph{" in line or "\\subsubsection*{" in line) or \
        (special_input in (1, 3) and "orthogonality relation" not in line.lower() and name_chap in line.lower() and chapterstart
         and ("\\paragraph{" in line or "\\subsubsection*{" in line)):
            for item in klsaddparas:
                if index < item:
                    klsloc = klsaddparas.index(item)
                    break
            t = ''.join(kls[index: klsaddparas[klsloc]])
            k_hyper_sub_chap.append(t)  # append the whole paragraph, pray every paragraph ends with a % comment
            khyper_header_chap.append(temp)  # append the name of subsection

    for item in khyper_header_chap:
        if item == "Pseudo Jacobi (or Routh-Romanovski)":
            khyper_header_chap[khyper_header_chap.index(item)] = "Pseudo Jacobi"
    k_hyp_index_iii = 0
    offset = 0

    item = 0
    while item < len(khyper_header_chap):
        try:
            if khyper_header_chap[item] == khyper_header_chap[item+1]:
                k_hyper_sub_chap[item + 1] = k_hyper_sub_chap[item] + "\paragraph{\\bf KLS Addendum: " + \
                    word + "}\n" + k_hyper_sub_chap[item + 1]
                khyper_header_chap[item] = "memes"
                k_hyper_sub_chap[item] = "memes"
            else:
                item += 1
        except IndexError:
            item += 1

    a = 0
    while a < len(khyper_header_chap):
        if khyper_header_chap[a] == "memes":
            del khyper_header_chap[a]
            del k_hyper_sub_chap[a]
        else:
            a += 1

    #global sorter_check
    chap9 = 0

    if sorter_check[sortloc][0] == 0:
        sorter_check[sortloc][0] += 1
        chap9 = 1
    else:
        offset = sorter_check[sortloc][1]
        if special_input == 1:
            offset = 8

    if special_input in (2, 3):
        name_chap = 'hypergeometric representation'

    # Uses of numbers like 12, or 9 are for specific lengths of strings (like \\subsection{) where the
    # section does not change
    for d in range(0, len(tempref)):  # check every section and subsection line
        item = tempref[d]
        line = str(chap[item])
        if "\\section{" in line or "\\subsection{" in line:
            if "\\subsection{" in line:
                temp = line[12:line.find("}", 7)]
            else:
                temp = line[9:line.find("}", 7)]

        if name_chap in line.lower():
            if special_input in (0, 2, 3) or special_input == 1 and "orthogonality relation" not in line:
                hyper_subs_chap.append([tempref[d + 1]])  # appends the index for the line before following subsection
                hyper_headers_chap.append(temp)  # appends the name of the section the hypergeo subsection is in

                if temp in khyper_header_chap:
                    try:
                        chap[tempref[d + 1] - 1] += "\paragraph{\\bf KLS Addendum: " + word + "}" + \
                                                    k_hyper_sub_chap[k_hyp_index_iii + offset]
                        if chap9 == 1:
                            sorter_check[sortloc][1] += 1
                        k_hyp_index_iii += 1
                    except IndexError:
                        print("Warning! Code has found an error involving section finding for '" + name_chap + "'.")


    if len(hyper_headers_chap) != 0:
        # print "Stuff for checking"
        # print k_hyper_sub_chap
        # print khyper_header_chap
        # print hyper_headers_chap
        # print word
        sortmatch_2.append(k_hyper_sub_chap)
    return chap

def cut_words(word_to_find, word_to_search_in):
    """
    This function checks through the outputs of later sections and removes duplicates, so that the output file does
    not have duplicates.

    IN DEVELOPMENT

    :param word_to_find: Word that is being found
    :param word_to_search_in: The big word that is being searched
    :return: The big word without the word that was searched for
    """
    a = word_to_find
    b = word_to_search_in
    precheck = 1
    if a in b:
        if "\\paragraph{\\large\\bf KLSadd: " in b or "\\subsubsection*{\\large\\bf KLSadd: " in b:
            while True:
                if "\\paragraph{\\large\\bf KLSadd: " in b[b.find(a)-precheck:b.find(a)] or \
                        "\\subsubsection*{\\large\\bf KLSadd: " in b[b.find(a) - precheck:b.find(a)]:
                    return b[:b.find(a) - precheck] + b[b.find(a) + len(a):]
                else:
                    precheck += 1

        else:
            cut = b[:b.find(a)] + b[b.find(a) + len(a):]
            return cut
    else:
        return b


def prepare_for_pdf(chap):
    """
    Edits the chapter string sent to include hyperref, xparse, and cite packages

    :param chap: The chapter (9 or 14) that is being processed
    :return: The processed chapter, ready for additional processing
    """
    foot_misc_index = 0
    index = 0
    for word in chap:
        index += 1
        if "footmisc" in word:
            foot_misc_index += index
    # str[footmiscIndex] += "\\usepackage[pdftex]{hyperref} \n\\usepackage {xparse} \n\\usepackage{cite} \n"
    chap.insert(foot_misc_index, "\\usepackage[pdftex]{hyperref} \n\\usepackage {xparse} \n\\usepackage{cite} \n")
    return chap


def get_commands(kls, new_commands):
    """
    This method reads in relevant commands that are in KLSadd.tex and returns them as a list

    :param kls: The addendum is the source of what is being found
    :return:
    """
    index = 0
    for word in kls:
        index += 1
        if "smallskipamount" in word:
            new_commands.append(index - 1)
        if "mybibitem[1]" in word:
            new_commands.append(index)
    print new_commands
    return kls[new_commands[0]:new_commands[1]]


# 2/18/16 this method addresses the goal of hardcoding in the necessary commands to let the chapter files run as pdf's.
# Currently only works with chapter 9
def insert_commands(kls, chap, cms):
    """
    Inserts commands identified in previous functions.

    :param kls: Addendum to look through
    :param chap: The chapter that is receiving commands (9 or 14)
    :param cms: Commands to be inserted
    :return:
    """
    # reads in the newCommands[] and puts them in chap
    begin_index = -1  # the index of the "begin document" keyphrase, this is where the new commands need to be inserted.
    # find index of begin document in KLSadd
    index = 0

    for word in kls:
        index += 1
        if "begin{document}" in word:
            begin_index += index
    tempIndex = 0

    for i in cms:
        chap.insert(begin_index + tempIndex, i)
        tempIndex += 1
    return chap


# method to find the indices of the reference paragraphs
def find_references(chapter, chapticker, math_people):
    """
    This function searches the chapters and locates potential destinations of additions from the addendum.
    It puts these destinations in a list.

    :param chapter: The chapter being searched.
    :param chapticker: Which chapter is being searched (9 or 14).
    :return: List of references.
    """
    ref9_3 = []
    ref14_3 = []
    references = []
    index = -1
    # chaptercheck designates which chapter is being searched for references
    chaptercheck = 0
    if chapticker == 0:
        chaptercheck = str(9)
    elif chapticker == 1:
        chaptercheck = str(14)
    # canAdd tells the program whether the next section is a reference
    canadd = False

    for word in chapter:
        index += 1
        special_detector = 1
        # check sections and subsections
        if("section{" in word or "subsection*{" in word) and ("subsubsection*{" not in word):
            w = word[word.find("{")+1: word.find("}")]
            ws = word[word.find("{")+1: word.find("~")]
            if "bessel" in word.lower() and chapticker == 0:
                ref9_3.append(index)
            if ("big $q$-legendre" in word.lower() or "little $q$-legendre" in word.lower() or "continuous $q$-legendre" in word.lower()) and chapticker == 1:
                ref14_3.append(index)
            for unit in math_people:
                subunit = unit[unit.find(" ")+1: unit.find("#")]
                # System of checks that verifies if section is in chapter
                if (w in subunit or ws in subunit) and (chaptercheck in unit) and len(w) == len(subunit) or\
                ("Pseudo Jacobi" in w and "Pseudo Jacobi (or Routh-Romanovski)" in subunit):
                    canadd = True
                    if chapticker == 0:
                        ref9_3.append(index)
                    elif chapticker == 1:
                        ref14_3.append(index)
                    special_detector = 0
        if "\\subsection*{References}" in word and canadd:
            # Appends valid locations
            references.append(index)
            if chapticker == 0:
                ref9_3.append(index)
            elif chapticker == 1:
                ref14_3.append(index)
            canadd = False
        if "subsection*{" in word and "References" not in word:
            if chapticker == 0:
                ref9_3.append(index)
            elif chapticker == 1:
                ref14_3.append(index)
        if "\\section{" in word and special_detector == 1 and chaptercheck == "14":
            w2 = word[word.find("{") + 1: word.find("}")]
            if "Bessel" not in w2:
                ref14_3.append(index)

    bqlegendrecheck = 2

    # Special lines that the program does not normally register
    if bqlegendrecheck > 0:
        pass

    return references, ref9_3, ref14_3


def reference_placer(chap, references, p, chapticker2):
    """
    Places identified additions from the addendum into the chapter.

    :param chap: Chapter receiving the additions.
    :param references: List containing references
    :param p: List containing additions to be added.
    :param chapticker2: Which chapter is being searched (9 or 14).
    :return:
    """
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
        if designator in word1[word1.find("\\subsection*{") + 1: word1.find("}")]:
            chap[i - 2] += "%Begin KLSadd additions"
            chap[i - 2] += p[count]
            chap[i - 2] += "%End of KLSadd additions"
            count += 1
        else:
            while designator not in word1[word1.find("\\subsection*{") + 1: word1.find("}")]:
                word1 = str(p[count])
                if designator in word1[word1.find("\\subsection*{") + 1: word1.find("}")]:
                    chap[i - 2] += "%Begin KLSadd additions"
                    chap[i - 2] += p[count]
                    chap[i - 2] += "%End of KLSadd additions"
                    count += 1
                else:
                    count += 1
    return chap


# method to change file string(actually a list right now), returns string to be written to file
# If you write a method that changes something, it is preffered that you call the method in here
def fix_chapter(chap, references, paragraphs_to_be_added, kls, kls_list_all, chapticker2, new_commands, klsaddparas, sortmatch_2, tempref, sorter_check):
    """
    Removes specific lines stopping the latex file from converting into python, as well as running the
    functions responsible for sorting sections and placing the correct additions in the correct places

    :param chap: Chapter being processed.
    :param references: List containing references (used in reference placer).
    :param paragraphs_to_be_added: List containing additions to be added.
    :param kls: The addendum that contains sections to be added (not processed).
    :param kls_list_all: List of all identified keywords, fed into the chapter sorter.
    :param chapticker2: Which chapter is being searched (9 or 14).
    :return:
    """

    sort_location = 0

    for i in kls_list_all:
        fix_chapter_sort(kls, chap, i, sort_location, klsaddparas, sortmatch_2, tempref, sorter_check)
        sort_location += 1
        print sorter_check

    for a in range(len(paragraphs_to_be_added)-1):
        for b in sortmatch_2:
            for c in b:
                with open(DATA_DIR + "compare.tex", "a") as spook:
                    spook.write(paragraphs_to_be_added[a])
                    spook.write("NEXT: ")
                if "%" == c[-2]:
                     c = c[:-3]
                     #print "memes"
                     #print c
                elif "%" == c[-1]:
                     c = c[:-2]
                paragraphs_to_be_added[a] = cut_words(c, paragraphs_to_be_added[a])

    reference_placer(chap, references, paragraphs_to_be_added, chapticker2)
    chap = prepare_for_pdf(chap)
    cms = get_commands(kls,new_commands)
    print cms
    chap = insert_commands(kls, chap, cms)
    commentticker = 0

    # These commands mess up PDF reading and mus tbe commented out
    for word in chap:
        word2 = chap[chap.index(word)-1]
        if "\\newcommand{\qhypK}[5]{\,\mbox{}_{#1}\phi_{#2}\!\left(" not in word2:
            if "\\newcommand\\half{\\frac12}" in word:
                wordtoadd = "%" + word
                chap[commentticker] = wordtoadd
            elif "\\newcommand{\\hyp}[5]{\\,\\mbox{}_{#1}F_{#2}\\!\\left(" in word:
                wordtoadd = "%" + word
                chap[commentticker] = wordtoadd
            elif "\\genfrac{}{}{0pt}{}{#3}{#4};#5\\right)}" in word:
                wordtoadd = "%" + word
                chap[commentticker] = wordtoadd
            elif "\\newcommand{\\qhyp}[5]{\\,\\mbox{}_{#1}\\phi_{#2}\\!\\left(" in word:
                wordtoadd = "%" + word
                chap[commentticker] = wordtoadd
        commentticker += 1

    ticker1 = 0
    # Formatting to make the Latex file run
    while ticker1 < len(chap):
        if '\\myciteKLS' in chap[ticker1]:
            chap[ticker1] = chap[ticker1].replace('\\myciteKLS', '\\cite')
        ticker1 += 1
    return chap


def main():
    """
    Runs all of the other functions and outputs their results into an output file as well as putting together the list
    of additions that is fed into fix_chapter.

    :return:
    """
    chap_nums = []
    new_commands = []  # used to hold the indexes of the commands

    # contains the locations of things with "paragraph{" in KLSadd, these are subsections that need to be sorted
    klsaddparas = []
    math_people = []

    # Stores all keywords
    kls_list_full = []

    sortmatch_2 = []

    # open the KLSadd file to do things with
    with open(DATA_DIR + "KLSaddII.tex", "r") as add:
        # store the file as a string
        addendum = add.readlines()
        kls_list_all = new_keywords(addendum, kls_list_full)[0]
        # Makes sections look like other sections
        sorter_check = new_keywords(addendum, kls_list_full)[1]

        for item in addendum:
            addendum[addendum.index(item)] = item.replace("\\eqref{","\\eqref{KLSadd: ")

        for word in addendum:
            if "paragraph{" in word:
                lenword = len(word) - 1
                temp = word[0:word.find("{") + 1] + "\large\\bf KLSadd: " + word[word.find("{") + 1: lenword]
                addendum[addendum.index(word)] = temp
            if "subsubsection*{" in word:
                lenword = len(word) - 1
                addendum[addendum.index(word)] = word[0:word.find("{") + 1] + "\large\\bf KLSadd: " + \
                word[word.find("{") + 1: lenword]
        index = 0
        indexes = []

        # Designates sections that need stuff added
        # get the index
        startindex = 9999
        for word in addendum:
            index += 1
            if "." in word and "\\subsection*{" in word:
                if "9." in word:
                    chap_nums.append(9)
                    name = word[word.find("{") + 1: word.find("}")]
                    math_people.append(name + "#")
                if "14." in word:
                    chap_nums.append(14)
                    name = word[word.find("{") + 1: word.find("}")]
                    math_people.append(name + "#")
                if name == "9.1 Wilson":
                    startindex = addendum.index(word)
                    print startindex
                indexes.append(index-1)
            if "paragraph{" in word and index > startindex-1:
                klsaddparas.append(index-1)
            if "subsub" in word and index > startindex-1:
                klsaddparas.append(index - 1)
            if "\subsection*{" in word and index > startindex-1:
                klsaddparas.append(index - 1)
            if "\\renewcommand{\\refname}{Standard references}" in word:
                klsaddparas.append(index-1)
                indexes.append(index - 1)
        print(indexes)
        # now indexes holds all of the places there is a section
        # using these indexes, get all of the words in between and add that to the paras[]
        paras = []
        for i in range(len(indexes)-1):
            box = ''.join(addendum[indexes[i]: indexes[i+1]-1])
            paras.append(box)


        # paras now holds the paragraphs that need to go into the chapter files, but they need to go in the appropriate
        # section(like Wilson, Racah, Hahn, etc.) so we use the mathPeople variable
        # we can use the section names to place the relevant paragraphs in the right place

        # as of 2/8/16 the paragraphs will go before the References paragraph of the relevant section
        # parse both files 9 and 14 as strings

        with open(DATA_DIR + "chap01.tex", "r") as ch1:
            entire1 = ch1.readlines()  # reads in as a list of strings

        with open(DATA_DIR + "updated1.tex", "w") as temp1:
            temp1.write(chap1placer(entire1, addendum, klsaddparas))
        # chapter 9
        with open(DATA_DIR + "chap09.tex", "r") as ch9:
            entire9 = ch9.readlines()  # reads in as a list of strings

        # chapter 14
        with open(DATA_DIR + "chap14.tex", "r") as ch14:
            entire14 = ch14.readlines()

        # call the findReferences method to find the index of the References paragraph in the two file strings
        # two variables for the references lists one for chapter 9 one for chapter 14

        chapticker = 0
        references9 = find_references(entire9, chapticker, math_people)
        ref9_3 = references9[1]
        references9 = references9[0]
        chapticker += 1
        references14 = find_references(entire14, chapticker, math_people)
        ref14_3 = references14[2]
        references14 = references14[0]


        print ref14_3
        # call the fixChapter method to get a list with the addendum paragraphs added in
        chapticker2 = 0
        str9 = ''.join(fix_chapter(entire9, references9, paras, addendum, kls_list_all, chapticker2, new_commands, klsaddparas, sortmatch_2, ref9_3, sorter_check))
        print sorter_check
        print "DING"

        chapticker2 += 1
        str14 = ''.join(fix_chapter(entire14, references14, paras, addendum, kls_list_all, chapticker2, new_commands, klsaddparas, sortmatch_2, ref14_3, sorter_check))

        print "DING"

    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    # If you are writing something that will make a change to the chapter files, write it BEFORE this line, this part
    # is where the lists representing the words/strings in the chapter are joined together and updated as a string!
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    # write to files
    # new output files for safety
    with open(DATA_DIR + "updated9.tex", "w") as temp9:
        temp9.write(str9)

    with open(DATA_DIR + "updated14.tex", "w") as temp14:
        temp14.write(str14)

    print sorter_check

if __name__ == '__main__':
    main()