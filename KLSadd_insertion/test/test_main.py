
__author__ = 'Edward Bian'
__status__ = 'Development'

from unittest import TestCase
from updateChapters import fix_chapter


class TestFixChapter(TestCase):
    def test_fix_chapter(self):

#fix_chapter(chap, references       , paragraphs_to_be_added                          , kls, kls_list_all (basically word), chapticker2, new_commands, klsaddparas, sortmatch_2, tempref, sorter_check):
#fix_chapter_sort(chap, [5]              , [\\subsection*{9.1 Wilson}\n\\label{sec9.1}\n%\n, kls, word, sortloc(should be 0)   , 0,         , blank?,     , klsaddparas, sortmatch_2, tempref, sorter_check):
# fix_chapter_sort(  kls, chap, word, sortloc                                                                                                              , klsaddparas, sortmatch_2, tempref, sorter_check):
# fix_chapter(       chap, references, paragraphs_to_be_added, kls, kls_list_all, chapticker2, new_commands                                                , klsaddparas, sortmatch_2, tempref, sorter_check):
        self.assertEquals(fix_chapter(['\\newcommand{\qhypK}[5]{\,\mbox{}_{#1}\phi_{#2}\!\left('
                                    , '\\newcommand\half{\\frac50}'
                                    , '\\newcommand\half{\\frac12}'
                                    , '\\newcommand{\\hyp}[5]{\\,\\mbox{}_{#1}F_{#2}\\!\\left('
                                    , '\\genfrac{}{}{0pt}{}{#3}{#4};#5\\right)}'
                                    , '\\newcommand{\\qhyp}[5]{\\,\\mbox{}_{#1}\\phi_{#2}\\!\\left('
                                    , '\\section{Wilson}\\index{Wilson polynomials}'
                                    , '\\subsection*{Hypergeometric representation}'
                                    , '\\begin{eqnarray}'
                                    , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                    , '\\end{eqnarray}'
                                    , '\\subsection*{Orthogonality relation}'
                                    , '\\begin{eqnarray}'
                                    , '\\label{OrthIWilson}'
                                    , '\\myciteKLS'
                                    , '\\end{eqnarray}']
                                    ,[5],['\\subsection*{9.1 Wilson}\\n\\label{sec9.1}\\n%\\n']
                                    , ['\\newcommand\\smallskipamount'
                                    , '\\newcommand\\mybibitem[1]'
                                    ,'%'
                                    , '\\subsection*{9.1 Wilson}'
                                    , '\\paragraph{Hypergeometric Representation}'
                                    , 'The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetric'
                                    , 'in $a,b,c,d$.'
                                    , '\\renewcommand{\\refname}{Standard references}']
                                    , ['Hypergeometric Representation']
                                    , 9, [], [3, 4, 7], [['%ab']], [6, 7, 12, 15], [[0, 0], [0, 0]])

                                    # Expected output:

                                    , ['\\newcommand\\mybibitem[1]'
                                    , '\\usepackage[pdftex]{hyperref} \n\\usepackage {xparse} \n\\usepackage{cite} \n'
                                    , '\\newcommand{\\qhypK}[5]{\\,\\mbox{}_{#1}\\phi_{#2}\\!\\left('
                                    , '\\newcommand\half{\\frac50}'
                                    , '%\\newcommand\\half{\\frac12}'
                                    , '%\\newcommand{\\hyp}[5]{\\,\\mbox{}_{#1}F_{#2}\\!\\left(%Begin KLS Addendum additions\\subsection*{9.1 Wilson}\\n\\label{sec9.1}\\n%\\n%End of KLS Addendum additions'
                                    , '%\\genfrac{}{}{0pt}{}{#3}{#4};#5\\right)}'
                                    , '%\\newcommand{\\qhyp}[5]{\\,\\mbox{}_{#1}\\phi_{#2}\\!\\left('
                                    , '\\section{Wilson}\\index{Wilson polynomials}'
                                    , '\\subsection*{Hypergeometric representation}'
                                    , '\\begin{eqnarray}'
                                    , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                    , '\\end{eqnarray}'
                                    , '\\subsection*{Orthogonality relation}\\paragraph{\\bf KLS Addendum: Hypergeometric Representation}The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetricin $a,b,c,d$.'
                                    , '\\begin{eqnarray}'
                                    , '\\label{OrthIWilson}'
                                    , '\\cite'
                                    , '\\newcommand\\smallskipamount'
                                    , '\\end{eqnarray}'])
        self.assertEquals(fix_chapter(['\\newcommand{\qhypK}[5]{\,\mbox{}_{#1}\phi_{#2}\!\left('
                                    , '\\newcommand\half{\\frac50}'
                                    , '\\newcommand\half{\\frac12}'
                                    , '\\newcommand{\\hyp}[5]{\\,\\mbox{}_{#1}F_{#2}\\!\\left('
                                    , '\\genfrac{}{}{0pt}{}{#3}{#4};#5\\right)}'
                                    , '\\newcommand{\\qhyp}[5]{\\,\\mbox{}_{#1}\\phi_{#2}\\!\\left('
                                    , '\\section{Wilson}\\index{Wilson polynomials}'
                                    , '\\subsection*{Hypergeometric representation}'
                                    , '\\begin{eqnarray}'
                                    , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                    , '\\end{eqnarray}'
                                    , '\\subsection*{Orthogonality relation}'
                                    , '\\begin{eqnarray}'
                                    , '\\label{OrthIWilson}'
                                    , '\\myciteKLS'
                                    , '\\end{eqnarray}']
                                    ,[5],['\\subsection*{9.1 Wilson}\\n\\label{sec9.1}\\n%\\n']
                                    , ['\\newcommand\\smallskipamount'
                                    , '\\newcommand\\mybibitem[1]'
                                    ,'%'
                                    , '\\subsection*{9.1 Wilson}'
                                    , '\\paragraph{Hypergeometric Representation}'
                                    , 'The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetric'
                                    , 'in $a,b,c,d$.'
                                    , '\\renewcommand{\\refname}{Standard references}']
                                    , ['Hypergeometric Representation']
                                    , 9, [], [3, 4, 7], [['%a']], [6, 7, 12, 15], [[0, 0], [0, 0]])

                                    # Expected output:

                                    , ['\\newcommand\\mybibitem[1]'
                                    , '\\usepackage[pdftex]{hyperref} \n\\usepackage {xparse} \n\\usepackage{cite} \n'
                                    , '\\newcommand{\\qhypK}[5]{\\,\\mbox{}_{#1}\\phi_{#2}\\!\\left('
                                    , '\\newcommand\half{\\frac50}'
                                    , '%\\newcommand\\half{\\frac12}'
                                    , '%\\newcommand{\\hyp}[5]{\\,\\mbox{}_{#1}F_{#2}\\!\\left(%Begin KLS Addendum additions\\subsection*{9.1 Wilson}\\n\\label{sec9.1}\\n%\\n%End of KLS Addendum additions'
                                    , '%\\genfrac{}{}{0pt}{}{#3}{#4};#5\\right)}'
                                    , '%\\newcommand{\\qhyp}[5]{\\,\\mbox{}_{#1}\\phi_{#2}\\!\\left('
                                    , '\\section{Wilson}\\index{Wilson polynomials}'
                                    , '\\subsection*{Hypergeometric representation}'
                                    , '\\begin{eqnarray}'
                                    , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                    , '\\end{eqnarray}'
                                    , '\\subsection*{Orthogonality relation}\\paragraph{\\bf KLS Addendum: Hypergeometric Representation}The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetricin $a,b,c,d$.'
                                    , '\\begin{eqnarray}'
                                    , '\\label{OrthIWilson}'
                                    , '\\cite'
                                    , '\\newcommand\\smallskipamount'
                                    , '\\end{eqnarray}'])


