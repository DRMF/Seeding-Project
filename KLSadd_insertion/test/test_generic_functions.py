
__author__ = 'Edward Bian'
__status__ = 'Development'

from unittest import TestCase
from updateChapters import new_keywords
from updateChapters import extraneous_section_deleter


class TestNewKeywords(TestCase):

    def test_new_keywords(self):
        self.assertEquals(new_keywords(['\\subsubsection*{ThisIsATest}\n'],[]), ['ThisIsATest', 'Limit Relation'])


class TestExtraneousSectionDeleter(TestCase):

    def testExtraneousSectionDeleter(self):
        self.assertEquals(extraneous_section_deleter(['reference', 'bananas', 'limit relation', '458673',
            'limit relations', 'apple']), ['bananas', '458673', 'apple'])