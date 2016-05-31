from unittest import TestCase
from tex2Wiki import getEq
from tex2Wiki import setup_label_links
class TestModLabel(TestCase):

    def test_getEq(self):
        self.assertEqual('', getEq(''))
        self.assertEqual('', getEq(''))
        self.assertEqual('', getEq(''))
        self.assertEqual('', getEq(''))