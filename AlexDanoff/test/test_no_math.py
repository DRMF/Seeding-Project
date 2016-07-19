"""Checks to see if DRMF file has only math mode, whitespace, and the text before
    first and after last math mode left after running replace_special.py"""
import re
import math_mode
from unittest import TestCase


begin_end = r'\\[begin]*[end]*{equation}'  # begin end equation environment
allSections = r'\\[a-zA-Z]*section'

infile = open('/home/ont1/DLMF/25.ZE/newMoritz/ZE.2.tex').read()
# 25.ZE/newMoritz/in.tex

def mainman():
    formatted = no_indices(infile.split('\n'))  # no indices
    removed_math = no_math(formatted)
    no_space = remove_command(removed_math)  # Empty
    # no_space = no_space.replace('\n',"")
    return no_space


def no_indices(content):
    # returns the input file without index or subsections
    section = re.compile(allSections)
    new_content = content[:]
    for line in content:
        if "\\index" in line or re.match(section, line):
            new_content.remove(line)
    return "\n".join(new_content)


def no_math(in_str):
    # Only remove math mode before first/ after last begin{equation} and within those environments
    # No special cases such as between dollar signs
    in_eq = False
    ranges = math_mode.find_math_ranges(in_str)
    in_str = in_str[ranges[0][0]:ranges[-1][1]]
    lines = in_str.split('\n')
    needed_lines = lines[:]
    been_in_eq = False

    for line in lines:
        if '\\begin{equation}' in line:
            been_in_eq = True
            in_eq = True
        if '\\end{equation}' in line:
            in_eq = False
        if in_eq:
            needed_lines.remove(line)
        if not been_in_eq:
            needed_lines.remove(line)
    return '\n'.join(needed_lines)


def remove_command(content):
    spaces = r'\s+'
    # removes the command that brings into and out of math mode
    commands = re.findall(begin_end, infile)
    new_list = content.split('\n')
    copy = []
    for i in range(len(new_list)):
        for command in commands:  # check if command in any of the lists, react appropriately
            if command in new_list[i]:
                new_list[i] = new_list[i].replace(command, "")
                commands.remove(command)
        if not re.match(spaces, new_list[i]) and new_list[i] != '':
            copy.append(new_list[i])
    return "".join(copy)  # if wish to make output more readable, change to '\n'

#print mainman()

# unittest Test Case starts below
class TestNoMath(TestCase):
    def test_no_math(self):
        self.assertEqual(mainman(), "")



# Fix this:
# write out to out.tex or make the unittest an actual unittest that returns values and stuff
# ask about what to do about all of the other text that is appearing