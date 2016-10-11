
__author__ = 'Edward Bian'
__status__ = 'Development'

from unittest import TestCase
from updateChapters import fix_chapter


class TestFixChapter(TestCase):
    def test_fix_chapter(self):
        '''
        self.assertEquals(fix_chapter(['\section{Wilson}\index{Wilson polynomials}'
                                       ,'\par'
                                       ,'\subsection*{Hypergeometric representation}'
                                       ,'\\begin{eqnarray}'
                                       ,'\label{DefWilson}'
                                       ,'& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                       ,'& &{}=\hyp{4}{3}{-n,n+a+b+c+d-1,a+ix,a-ix}{a+b,a+c,a+d}{1}.'
                                       ,'\end{eqnarray}'
                                       ,'\\newpage'
                                       ,'\subsection*{Orthogonality relation}'
                                       ,'If $Re(a,b,c,d)>0$ and non-real parameters occur in conjugate pairs, then'
                                       ,'\\begin{eqnarray}'
                                       ,'\label{OrthIWilson}'
                                       ,'\end{eqnarray}'
                                       ,'\subsection*{References}'],
                                      [14],['\\subsection*{9.1 Wilson}\\n\\label{sec9.1}\\n%\\n\\n%\\n\\n%\\n\\n%\\n\\n'],
                                       [#'\\newcommand{\hyp}[5]{\,\mbox{}_{#1}F_{#2}\!\left('
                                       #,' \genfrac{}{}{0pt}{}{#3}{#4};#5\\right)}'
                                       #,'\\newcommand{\qhyp}[5]{\,\mbox{}_{#1}\phi_{#2}\!\left(,'
                                       #,'  \genfrac{}{}{0pt}{}{#3}{#4};#5\\right)}'
                                       '%'
                                       ,'\subsection*{9.1 Wilson}'
                                       ,'\label{sec9.1}'
                                       ,'%'
                                       ,'\paragraph{Symmetry}'
                                       ,'The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetric in $a,b,c,d$.'
                                       ,'\\'
                                       ,'This follows from the orthogonality relation (9.1.2)'
                                       ,'together with the value of its coefficient of $y^n$ given in (9.1.5b).'
                                       ,'Alternatively, combine (9.1.1) with \mycite{AAR}{Theorem 3.1.1}.\\'
                                       ,'As a consequence, (9.1.12). Then the generating'
                                       ,'functions (9.1.13), (9.1.14) will follow by symmetry in the parameters.'
                                       ,'\\renewcommand{\\refname}{Standard references}']
                                      ,['Symmetry', 'Limit Relation', 'Special value'], 0, [],[1,4],[],[0,2,9,14]
                                      , [[0,0],[0,0],[0,0],[0,0]]),[])
        '''
#fix_chapter(chap, references       , paragraphs_to_be_added                          , kls, kls_list_all (basically word), chapticker2, new_commands, klsaddparas, sortmatch_2, tempref, sorter_check):
#fix_chapter_sort(chap, [5]              , [\\subsection*{9.1 Wilson}\n\\label{sec9.1}\n%\n, kls, word, sortloc(should be 0)   , 0,         , blank?,     , klsaddparas, sortmatch_2, tempref, sorter_check):
# fix_chapter_sort(  kls, chap, word, sortloc                                                                                                              , klsaddparas, sortmatch_2, tempref, sorter_check):
# fix_chapter(       chap, references, paragraphs_to_be_added, kls, kls_list_all, chapticker2, new_commands                                                , klsaddparas, sortmatch_2, tempref, sorter_check):
        self.assertEquals(fix_chapter(['\\newcommand{\qhypK}[5]{\,\mbox{}_{#1}\phi_{#2}\!\left('
                                    , '\\newcommand\\half{\\frac12}'
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
                                    , '& &\\frac{1}{2\\pi}\\int_0^{\\infty}'
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
                                    , 0, [], [3, 4, 7], [], [5, 6, 11, 14], [[0, 0], [0, 0]])
                                    , ['\\newcommand\\mybibitem[1]'
                                    , '\\usepackage[pdftex]{hyperref} \n\\usepackage {xparse} \n\\usepackage{cite} \n'
                                    , '\\newcommand{\\qhypK}[5]{\\,\\mbox{}_{#1}\\phi_{#2}\\!\\left('
                                    , '\\newcommand\\half{\\frac12}'
                                    , '%\\newcommand{\\hyp}[5]{\\,\\mbox{}_{#1}F_{#2}\\!\\left('
                                    , '%\\genfrac{}{}{0pt}{}{#3}{#4};#5\\right)}%Begin KLS Addendum additions\\subsection*{9.1 Wilson}\\n\\label{sec9.1}\\n%\\n%End of KLS Addendum additions'
                                    , '%\\newcommand{\\qhyp}[5]{\\,\\mbox{}_{#1}\\phi_{#2}\\!\\left('
                                    , '\\section{Wilson}\\index{Wilson polynomials}'
                                    , '\\subsection*{Hypergeometric representation}'
                                    , '\\begin{eqnarray}'
                                    , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                    , '\\end{eqnarray}'
                                    , '\\subsection*{Orthogonality relation}\\paragraph{\\bf KLS Addendum: Hypergeometric Representation}The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetricin $a,b,c,d$.'
                                    , '\\begin{eqnarray}'
                                    , '\\label{OrthIWilson}'
                                    , '& &\\frac{1}{2\\pi}\\int_0^{\\infty}'
                                    , '\\newcommand\\smallskipamount'
                                    , '\\end{eqnarray}'])




