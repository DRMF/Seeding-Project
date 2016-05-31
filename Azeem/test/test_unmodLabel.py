from unittest import TestCase
from tex2Wiki import unmodLabel
from tex2Wiki import setup_label_links
class TestModLabel(TestCase):

    def test_unmodLabel(self):
        self.assertEqual('Formula:DLMF:25.2:E1', unmodLabel('Formula:DLMF:25.2:E1'))
        self.assertEqual('Formula:DLMF:15.2:E1', unmodLabel('Formula:DLMF:15.02:E1'))
        self.assertEqual('Formula:DLMF:5.12:E1', unmodLabel('Formula:DLMF:05.12:E1'))
        self.assertEqual('Formula:DLMF:5.2:E1', unmodLabel('Formula:DLMF:05.02:E1'))