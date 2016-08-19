##KLS Addendum Insertion Project

This project uses Python and string manipulation to insert sections of the KLSadd.tex file into the appropriate DRMF chapter sections. The updateChapters.py program is the most recently updated and cleanest version, however it is not completed. Should be run with a simple call to 
```
Python updateChapters.py
```
The program must have a tempchap9.tex and a tempchap14.tex as well as the KLSadd.tex file in the same directory!
The linetest.py program is the original program file fully updated. It is much harder to read and should only be used as a reference to update the updateChapters.py program. 

NOTE: Both the updateChapters.py and linetest.py lack a pdf version of their chapter 14 output. One must be generated to view results. 

NOTE: The KLSadd.tex file only deals with chapters 9 and 14, as stated in the document itself.

NOTE: when you run updateChapters.py or linetest.py you need the KLSadd.tex file, tempchap9.tex, and tempchap14.tex in order to run the program. The program *generates* updated9.tex and updated14.tex files. 

**DO NOT REMOVE INPUT FILES FROM .GITIGNORE, THEY ARE NOT PUBLIC**

This is a roadmap of updateChapters.py. It will help explain every piece of code and exactly how everything works in relation to each other.


_______________________________________________________________________________


First: the files

 - KLSadd.tex: This is the addendum we are working with. It has sections that correspond with sections in the chapter files, and it contains paragraphs that must be *inserted* into the chapter files. CAN BE FOUND ONINE IN PDF FORM: https://staff.fnwi.uva.nl/t.h.koornwinder/art/informal/KLSadd.pdf

 - chap09.tex and chap14.tex: these are chapter files. These are LATEX documents that are chapters in a book. This is a book written by smart math people. But they did some things wrong, so another math person wants to fix them. That math person wrote an addendum file called KLSadd.tex and our job is to pull paragraphs out of KLSadd and insert them at the end of the relevant section in the chapter files. Every chapter is made up of sections and every section has subsections

 - updateChapters.py: this is our code. This document will be going over the variables and methods in this program. This program should: take paragraphs from every section in KLSadd and insert them into the relevant chapter file and into the relevant section within that chapter.

 - linetest.py: this abomination of code is the original program. It did the job, and it did it well. However, I realized that it was very very unreadable. This program is the child I never wanted. This program does 100% work and its outputs can be used to check against updateChapters.py's output.

 - newtempchap09.tex and newtempchap14.tex these are output files of linetest.py and this is what the output to updateChapters.py should be like!!!!!!!

Next: the specifications

Toward the end of every section in the chapter file, there is a subsection called "References". It basically just contains a bunch of references to sources and other papers. Every paragraph in every subsection in KLSadd.tex must be put *before* the "References" subsection in the corresponding section in the chapter file. For example:
**These aren't real sections, obviously, just an example**

in chap09.tex:
```latex
\section{Dogs}\index{Dog polynomials}
\subsection*{Hypergeometric dogs}
blah blah blah
\subsection*{References}
\cite{Dogs101}
```

in KLSadd.tex:

```latex
\subsection*{9.15  Dogs}
\paragraph{Beagles}
The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetric
in $a,b,c,d$.
```

So in the chapter 9 file, section 15 "Dogs", before the References subsection, we need to add in the Beagles paragraph. HOWEVER, there are some changes that need to be made before we insert. The easiest change is adding a comment that tells us something was inserted. We just append something like "%RS insertion begin" and "%RS insertion complete" before and after, respectively, the Beagles paragraph when we insert. Another change is adding \large\bf before the paragraph name. This changes the size and format so it looks prettier. So the heading in this example would be:

```latex
\paragraph{\large\bf Beagles}
```
---

So after updateChapters.py is called, the chapter 9 file should look like this:

```latex
\section{Dogs}\index{Dog polynomials}
\subsection*{Hypergeometric dogs}
blah blah blah
%RS insertion begin
\paragraph{\large\bf Beagles}
The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetric
in $a,b,c,d$.
%RS insertion complete
\subsection*{References}
\cite{Dogs101}
```

The variables:

These are the variables in the beginning

-chapNums: chapNums is a list, denoted by the [], that holds the chapter number (in this case it's either a 9 or a 14) that corresponds to where a section in KLSadd should go

-paras: holds all of the text in the paragraphs of KLSadd.tex. This is the list that gets read when its time to insert paragraphs into the chapter file. Every element is a loooong string

-mathPeople: this holds the *name* of every section in KLSadd. It stores names like Wilson, Racah, Dual Hahn, etc. In our example with the Dogs above, it would hold "Dogs". This is useful to finding where to insert the correct paragraph

-newCommands: this is a list that holds ints representing line numbers in KLSadd.tex that correspond to commands. There are a few special commands in the file that help turn LATEX files into PDF files and they need to be copied over into both chapter files

-comms: holds the actual strings of the commands found from the line numbers stored in newCommands

---

The methods:

-prepareForPDF(chap): this method inserts some packages needed by LATEX files to be turned into pdf files. It takes a list called chap which is a String containing the contents of the chapter fie. It returns the chap String edited with the special packages in place.

-getCommands(kls): takes the KLSadd.tex as a string as a parameter and stores the special commands in the comms variable mentioned earlier

-insertCommands(kls, chap, cms): kls is KLSadd.tex, chap is a chapter file string, cms is a list of commands, it is the comms variable. This method returns the chap with the special commands inserted in place

-findReferences(str): takes a string representation of a chapter file. Returns a list of the line numbers of the "References" subsections. This references variable is used as an index as to where the paragraphs in paras should be inserted

-fixChapter(chap, references, p, kls): takes a chapter file string, a references list, the paras variable, and the KLSadd file string. This method basically just calls all of the methods above and adds all of the extra stuff like the commands and packages.




As a quick rundown:

The chapters and KLSadd are turned into Strings and passed through the fixChapter methods.

Then the strings are written into seperate updated chapter files.

---

At this point in time updateChapters.py is mostly functional (there are still a few areas that do not work correctly). Currently, unit tests and additional functions are being added.


