
__author__ = 'Edward Bian'
__status__ = 'Development'

from unittest import TestCase
from updateChapters import find_references

class TestFindReferences(TestCase):

    def test_find_references(self):
        self.assertEquals(find_references(['section{'],0,), )

