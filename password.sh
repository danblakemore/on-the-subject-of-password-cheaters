#!/usr/bin/env python3
#
# Copyright (c) 2015 Daniel Blakemore
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#

import random
import itertools
from pprint import pprint

words = ["about","after","again","below","could","every","first","found","great","house","large","learn","never","other","place","plant","point","right","small","sound","spell","still","study","their","there","these","thing","think","three","water","where","which","world","would","write"]

letters = list(input())

rows = []
for i in range(5):
    row = []
    for j in range(6):
        row.append(letters[i * 6 + j])
    rows.append(row)

pprint(list(zip(*rows))) # show the full grid

# make all words
potentials = map(lambda tuple: "".join(tuple), list(itertools.product(*rows)))

answers = set(words) & set(potentials)

print(answers)

admonishments = ["Stop Cheating!", "Learn to Read", "Is the game really fun if you aren't sweating?", "Go Practice Complex Wires", "Your defuser can't script THEIR gameplay!", "Try Trying!", "Do you really trust this program?", "\n" * 50 + "Scroll up if you really want to see the answer.", "I feel bad for helping you. You should feel bad."]

print(random.choice(admonishments))




