
__author__ = 'Edward Bian'
__status__ = 'Development'

from unittest import TestCase
from updateChapters import chap1placer


class TestChap1Placer(TestCase):

    def test_chap1_placer(self):
        self.assertEquals(chap1placer(['WordsAndSomeMoreWords','SampleEquation', '\\end{document}']
                                    , ['\\subsection*{Generalities}', '\\paragraph{MathFunction}', 'MathEquations', 'WordsAndStuff',
                                       '\\subsection*{9.1 Wilson}', '\\paragraph{Symmetry}', 'WordsAndStuff'], [0,1,4,5])
                                    , 'WordsAndSomeMoreWordsSampleEquation\\paragraph{\\large\\bf KLS Addendum: Generalities}\\paragraph{MathFunction}MathEquationsWordsAndStuff\\end{document}')

