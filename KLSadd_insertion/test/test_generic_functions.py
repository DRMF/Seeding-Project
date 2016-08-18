
__author__ = 'Edward Bian'
__status__ = 'Development'

from unittest import TestCase
from updateChapters import new_keywords
from updateChapters import extraneous_section_deleter
from updateChapters import cut_words
from updateChapters import reference_formatter

class TestNewKeywords(TestCase):

    def test_new_keywords(self):
        self.assertEquals(new_keywords(['\\subsubsection*{ThisIsATest}\n', '\\subsubsection*{Special value}\n']
                                       ,[]), ['ThisIsATest', 'Symmetry', 'Limit Relation', 'Special value'])


class TestExtraneousSectionDeleter(TestCase):

    def test_extraneous_section_deleter(self):
        self.assertEquals(extraneous_section_deleter(['reference', 'bananas', 'limit relation', 'symmetry','458673',
            'limit relations', 'apple']), ['bananas', '458673', 'apple'])


class TestCutWords(TestCase):

    def test_cut_words(self):
        self.assertEquals(cut_words('MoreWords','WordsAndSomeMoreWords'), 'WordsAndSome')
        self.assertEquals(cut_words('SupposedToFail', 'WordsAndSomeMoreWords'), 'WordsAndSomeMoreWords')
        self.assertEquals(cut_words('StuffFromAddenum', '''\\paragraph{\\large\\bf KLSadd: TestCase}StuffFromAddenum\\begin{equation}\\end{equation}'''),
                                                        '''\\begin{equation}\\end{equation}''')

class TestReferenceFormatter(TestCase):

    def test_reference_formatter(self):
        self.assertEquals(reference_formatter(['by \eqref{1337}, This should work', 'WordsThatMightBeFoundInTheChapter'])
                                            , ['by \eqref{KLSadd: 1337}, This should work',
                                            'WordsThatMightBeFoundInTheChapter'])
        self.assertEquals(reference_formatter(['by \eqref{1337} and \eqref{360} This should work', 'WordsThatMightBeFoundInTheChapter'])
                                            , ['by \eqref{KLSadd: 1337} and \eqref{KLSadd: 360} This should work',
                                            'WordsThatMightBeFoundInTheChapter'])
        self.assertEquals(reference_formatter(['by \eqref{1337}, \eqref{720} and \eqref{360} This should work', 'WordsThatMightBeFoundInTheChapter'])
                                            , ['by \eqref{KLSadd: 1337}, \eqref{KLSadd: 720} and \eqref{KLSadd: 360} This should work',
                                            'WordsThatMightBeFoundInTheChapter'])
        self.assertEquals(reference_formatter(['by \eqref{1337}, \eqref{720}, \eqref{500} and \eqref{360} This should work', 'WordsThatMightBeFoundInTheChapter'])
                                            , ['by \eqref{KLSadd: 1337}, \eqref{KLSadd: 720}, \eqref{KLSadd: 500} and \eqref{KLSadd: 360} This should work',
                                            'WordsThatMightBeFoundInTheChapter'])
        self.assertEquals(reference_formatter(['by \eqref{1337}, \eqref{720}, \eqref{500}, \eqref{404} and \eqref{360} This should work', 'WordsThatMightBeFoundInTheChapter'])
                                            , ['by \eqref{KLSadd: 1337}, \eqref{KLSadd: 720}, \eqref{KLSadd: 500}, \eqref{KLSadd: 404} and \eqref{KLSadd: 360} This should work',
                                            'WordsThatMightBeFoundInTheChapter'])