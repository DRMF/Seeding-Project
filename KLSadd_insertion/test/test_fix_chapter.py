
__author__ = 'Edward Bian'
__status__ = 'Development'

from unittest import TestCase
from updateChapters import fix_chapter


# class TestFixChapter(TestCase):
#     def test_fix_chapter(self):
#         self.assertEquals(fix_chapter(['\\newcommand{\qhypK}[5]{\,\mbox{}_{#1}\phi_{#2}\!\left('
#                                         , '\\newcommand\\half{\\frac12}'
#                                         , '\\newcommand{\\hyp}[5]{\\,\\mbox{}_{#1}F_{#2}\\!\\left('
#                                         , '\\genfrac{}{}{0pt}{}{#3}{#4};#5\\right)}'
#                                         , '\\newcommand{\\qhyp}[5]{\\,\\mbox{}_{#1}\\phi_{#2}\\!\\left('
#                                         , '\\subsection*{9.1 Wilson}'
#                                         , '\\paragraph{Hypergeometric Representation}'
#                                         , 'The Wilson polynomial $W_n(y;a,b,c,d)$ is symmetric'
#                                         ,'\\paragraph{Something}'
#                                         , 'Words'
#                                         , '\\renewcommand{\\refname}{Standard references}'
#                                         , '\\myciteKLS{SampleReference}'