from unittest import TestCase
from remove_excess import remove_section


class TestRemoveExcess(TestCase):
    def test_remove_section(self):
        content = 'AABegin This should be removed BeginDDBB'
        result = remove_section(r'Begin', r'Begin', content)
        self.assertEqual('AABeginDDBB', result)
