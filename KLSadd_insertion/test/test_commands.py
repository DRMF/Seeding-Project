
__author__ = 'Edward Bian'
__status__ = 'Development'

from unittest import TestCase
from updateChapters import get_commands
from updateChapters import insert_commands
from updateChapters import prepare_for_pdf


class TestGetCommands(TestCase):

    def test_get_commands(self):
        self.assertEquals(get_commands(['FakeCommands', 'MoreFakeCommands', '\\newcommand\\smallskipamount', 'Words',
                                        '\\newcommandBob', '\\newcommand\\mybibitem[1]', 'KLSAddendumStuff',
                                        '\\begin{document}'],[]), ['\\newcommand\\smallskipamount', 'Words',
                                        '\\newcommandBob', '\\newcommand\\mybibitem[1]'])


class TestInsertCommands(TestCase):

    def test_insert_commands(self):
        self.assertEquals(insert_commands(['Words','Commands','\\begin{document}','KLSAddendum',
                                           '\subsection*{Introduction}'],
                                          ['Words','Commands','\\begin{document}',
                                           '\subsection*{Hypergeometric representation}'],
                                          ['\\newcommand\\smallskipamount', '\\newcommand\\de\\delta',
                                           '\\newcommand\\la\\lambda'
                                           '\\newcommand\\mybibitem[1]']),
                                            (['Words','Commands','\\newcommand\\smallskipamount',
                                            '\\newcommand\\de\\delta', '\\newcommand\\la\\lambda'
                                            '\\newcommand\\mybibitem[1]', '\\begin{document}',
                                            '\subsection*{Hypergeometric representation}']))


class TestPrepareForPDF(TestCase):

    def test_prepare_for_pdf(self):
        self.assertEquals(prepare_for_pdf(['\\newcommand\\smallskipamount', '\usepackage[bottom]{footmisc}',
                                           '\subsection*{Hypergeometric representation}']),
                                            ['\\newcommand\\smallskipamount', '\usepackage[bottom]{footmisc}',
                                             '\\usepackage[pdftex]{hyperref} \n\\usepackage {xparse} \n\\usepackage{cite} \n',
                                             '\subsection*{Hypergeometric representation}'])
