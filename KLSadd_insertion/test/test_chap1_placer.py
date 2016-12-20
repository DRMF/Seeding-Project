
__author__ = 'Edward Bian'
__status__ = 'Development'

from unittest import TestCase
from updateChapters import chap_1_placer


class TestChap1Placer(TestCase):

    def test_chap1_placer(self):
        self.assertEquals(chap_1_placer(['WordsAndSomeMoreWords', 'SampleEquation', '\\end{document}']
                                        , ['\\subsection*{Generalities}', '\\paragraph{MathFunction}', 'MathEquations', 'WordsAndStuff',
                                       '\\subsection*{9.1 Wilson}', '\\paragraph{Symmetry}', 'WordsAndStuff'], [0,1,4,5])
                          , 'WordsAndSomeMoreWordsSampleEquation\\paragraph{\\bf KLS Addendum: Generalities}\\paragraph{MathFunction}MathEquationsWordsAndStuff\\end{document}')

