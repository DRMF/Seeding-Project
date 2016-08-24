#
# __author__ = 'Edward Bian'
# __status__ = 'Development'
#
# from unittest import TestCase
# from updateChapters import fix_chapter_sort
#
#
# class TestFixChapterSort(TestCase):
#     def test_fix_chapter_sort(self):
#         self.assertEquals(fix_chapter_sort(['%'
#                                           , '\\subsection*{9.1 Wilson}'
#                                           , '\\paragraph{Hypergeometric Representation}'
#                                           , 'The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetric'
#                                           , 'in $a,b,c,d$.'
#                                           , '\\renewcommand{\\refname}{Standard references}']
#                                             ,['\\section{Wilson}\\index{Wilson polynomials}'
#                                             ,'\\subsection*{Hypergeometric representation}'
#                                             ,'\\begin{eqnarray}'
#                                             ,'& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
#                                             ,'\\end{eqnarray}'
#                                             ,'\\subsection*{Orthogonality relation}'
#                                             ,'\\begin{eqnarray}'
#                                             ,'\\label{OrthIWilson}'
#                                             ,'& &\\frac{1}{2\\pi}\\int_0^{\\infty}'
#                                             ,'\\end{eqnarray}'],'Hypergeometric Representation',0,[1,2,5],[],[0, 1, 5, 9])
#                                             ,['\\section{Wilson}\\index{Wilson polynomials}'
#                                             , '\\subsection*{Hypergeometric representation}'
#                                             , '\\begin{eqnarray}'
#                                             , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
#                                             , '\\end{eqnarray}\\paragraph{\\bf KLS Addendum: Hypergeometric Representation}The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetricin $a,b,c,d$.'
#                                             , '\\subsection*{Orthogonality relation}'
#                                             , '\\begin{eqnarray}'
#                                             , '\\label{OrthIWilson}'
#                                             , '& &\\frac{1}{2\\pi}\\int_0^{\\infty}'
#                                             , '\\end{eqnarray}'])
#         self.assertEquals(fix_chapter_sort(['%'
#                                           , '\\subsection*{9.1 Wilson}'
#                                           , '\\paragraph{Orthogonality}'
#                                           , 'The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetric'
#                                           , 'in $a,b,c,d$.'
#                                           , '\\renewcommand{\\refname}{Standard references}']
#                                           , ['\\section{Wilson}\\index{Wilson polynomials}'
#                                           , '\\subsection*{Hypergeometric representation}'
#                                           , '\\begin{eqnarray}'
#                                           , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
#                                           , '\\end{eqnarray}'
#                                           , '\\subsection*{Orthogonality}'
#                                           , '\\begin{eqnarray}'
#                                           , '\\label{OrthIWilson}'
#                                           , '& &\\frac{1}{2\\pi}\\int_0^{\\infty}'
#                                           , '\\end{eqnarray}'], 'Memes', 0, [1, 2, 5], [], [0, 1, 5, 9])
#                                             , ['\\section{Wilson}\\index{Wilson polynomials}'
#                                             , '\\subsection*{Hypergeometric representation}'
#                                             , '\\begin{eqnarray}'
#                                             , '& &\\frac{W_n(x^2;a,b,c,d)}{(a+b)_n(a+c)_n(a+d)_n}\\nonumber\\'
#                                             , '\\end{eqnarray}'
#                                             , '\\subsection*{Orthogonality}'
#                                             , '\\begin{eqnarray}'
#                                             , '\\label{OrthIWilson}'
#                                             , '& &\\frac{1}{2\\pi}\\int_0^{\\infty}'
#                                             , '\\end{eqnarray}'])