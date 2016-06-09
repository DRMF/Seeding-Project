
from unittest import TestCase
from tex2Wiki import getString
from tex2Wiki import setup_label_links
class TestGetString(TestCase):

    def test_getString(self):
        self.assertEqual('eq:ZE.INT.EL6', getString('eq:ZE.INT.\nEL6'))
        self.assertEqual('eq:ZE.HZE.SP5', getString(' eq\n:ZE.HZE.SP5'))
        self.assertEqual('eq:GA.FR.Rf.1', getString(' eq\n:GA.F\nR.Rf.1'))
        self.assertEqual('eq:ZE.HZE.INT1', getString(' eq:ZE.HZE.INT\n1'))