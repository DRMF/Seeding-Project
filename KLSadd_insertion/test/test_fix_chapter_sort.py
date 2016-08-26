
__author__ = 'Edward Bian'
__status__ = 'Development'

from unittest import TestCase
from updateChapters import fix_chapter_sort


class TestFixChapterSort(TestCase):
    def test_fix_chapter_sort(self):
        self.assertEquals(fix_chapter_sort(['%'
                                          , '\\subsection*{9.1 Wilson}'
                                          , '\\paragraph{Hypergeometric Representation}'
                                          , 'The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetric'
                                          , 'in $a,b,c,d$.'
                                          , '\\renewcommand{\\refname}{Standard references}']
                                            ,['\\section{Wilson}\\index{Wilson polynomials}'
                                            ,'\\subsection*{Hypergeometric representation}'
                                            ,'\\begin{eqnarray}'
                                            ,'& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                            ,'\\end{eqnarray}'
                                            ,'\\subsection*{Orthogonality relation}'
                                            ,'\\begin{eqnarray}'
                                            ,'\\label{OrthIWilson}'
                                            ,'& &\\frac{1}{2\\pi}\\int_0^{\\infty}'
                                            ,'\\end{eqnarray}'],'Hypergeometric Representation',0,[1,2,5],[],[0, 1, 5, 9],[[0, 0], [0, 0]])
                                            ,['\\section{Wilson}\\index{Wilson polynomials}'
                                            , '\\subsection*{Hypergeometric representation}'
                                            , '\\begin{eqnarray}'
                                            , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                            , '\\end{eqnarray}\\paragraph{\\bf KLS Addendum: Hypergeometric Representation}The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetricin $a,b,c,d$.'
                                            , '\\subsection*{Orthogonality relation}'
                                            , '\\begin{eqnarray}'
                                            , '\\label{OrthIWilson}'
                                            , '& &\\frac{1}{2\\pi}\\int_0^{\\infty}'
                                            , '\\end{eqnarray}'])
        self.assertEquals(fix_chapter_sort(['%'
                                          , '\\subsection*{9.1 Wilson}'
                                          , '\\subsection*{14.1 Askey}'
                                          , '\\paragraph{Orthogonality}'
                                          , 'The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetric'
                                          , 'in $a,b,c,d$.'
                                          , '\\renewcommand{\\refname}{Standard references}']
                                          , ['\\section{Askey}\\index{Wilson polynomials}'
                                          , '\\subsection*{Hypergeometric representation}'
                                          , '\\begin{eqnarray}'
                                          , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                          , '\\end{eqnarray}'
                                          , '\\subsection*{Orthogonality}'
                                          , '\\begin{eqnarray}'
                                          , '\\label{OrthIWilson}'
                                          , '& &\\frac{1}{2\\pi}\\int_0^{\\infty}'
                                          , '\\end{eqnarray}'], 'Orthogonality', 0, [1, 2, 3, 6], [], [0, 1, 5, 9],[[1, 0], [1, 0]])
                                            , ['\\section{Askey}\\index{Wilson polynomials}'
                                            , '\\subsection*{Hypergeometric representation}'
                                            , '\\begin{eqnarray}'
                                            , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                            , '\\end{eqnarray}'
                                            , '\\subsection*{Orthogonality}'
                                            , '\\begin{eqnarray}'
                                            , '\\label{OrthIWilson}'
                                            , '& &\\frac{1}{2\\pi}\\int_0^{\\infty}\\paragraph{\\bf KLS Addendum: Orthogonality}The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetricin $a,b,c,d$.'
                                            , '\\end{eqnarray}'])
        self.assertEquals(fix_chapter_sort(['%'
                                            , '\\subsection*{9.1 Wilson}'
                                            , '\\paragraph{Special Value}'
                                            , 'The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetric'
                                            , 'in $a,b,c,d$.'
                                            , '\\renewcommand{\\refname}{Standard references}']
                                            , ['\\section{Wilson}\\index{Wilson polynomials}'
                                            , '\\subsection*{Hypergeometric representation}'
                                            , '\\begin{eqnarray}'
                                            , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                            , '\\end{eqnarray}'
                                            , '\\section*{Hypergeometric representation}'
                                            , '\\begin{eqnarray}'
                                            , '\\label{OrthIWilson}'
                                            , '& &\\frac{1}{2\\pi}\\int_0^{\\infty}'
                                            , '\\end{eqnarray}'], 'Special value', 0, [1, 2, 5], [], [0, 1, 5, 9], [[0, 0], [0, 0]])
                                            , ['\\section{Wilson}\\index{Wilson polynomials}'
                                            , '\\subsection*{Hypergeometric representation}'
                                            , '\\begin{eqnarray}'
                                            , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                            , '\\end{eqnarray}\\paragraph{\\bf KLS Addendum: Special value}The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetricin $a,b,c,d$.'
                                            , '\\section*{Hypergeometric representation}'
                                            , '\\begin{eqnarray}'
                                            , '\\label{OrthIWilson}'
                                            , '& &\\frac{1}{2\\pi}\\int_0^{\\infty}'
                                            , '\\end{eqnarray}'])
        self.assertEquals(fix_chapter_sort(['%'
                                            , '\\subsection*{9.1 Wilson)'
                                            , '\\subsection*{9.2 Pseudo Jacobi (or Routh-Romanovski)}'
                                            , '\\paragraph{Symmetry}'
                                            , 'The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetric'
                                            , 'in $a,b,c,d$.'
                                            , '\\renewcommand{\\refname}{Standard references}']
                                            , ['\\section{Pseudo Jacobi}\\index{Wilson polynomials}'
                                            , '\\subsection*{Hypergeometric representation}'
                                            , '\\begin{eqnarray}'
                                            , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                            , '\\end{eqnarray}'
                                            , '\\subsection*{Orthogonality}'
                                            , '\\begin{eqnarray}'
                                            , '\\label{OrthIWilson}'
                                            , '& &\\frac{1}{2\\pi}\\int_0^{\\infty}'
                                            , '\\end{eqnarray}'], 'Symmetry', 0, [1, 2, 3, 6], [], [0, 1, 5, 9], [[0, 0], [0, 0]])
                                            , ['\\section{Pseudo Jacobi}\\index{Wilson polynomials}'
                                            , '\\subsection*{Hypergeometric representation}'
                                            , '\\begin{eqnarray}'
                                            , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
                                            , '\\end{eqnarray}\\paragraph{\\bf KLS Addendum: Symmetry}The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetricin $a,b,c,d$.'
                                            , '\\subsection*{Orthogonality}'
                                            , '\\begin{eqnarray}'
                                            , '\\label{OrthIWilson}'
                                            , '& &\\frac{1}{2\\pi}\\int_0^{\\infty}'
                                            , '\\end{eqnarray}'])