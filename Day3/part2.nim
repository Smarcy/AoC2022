import strformat
import tables

var
  input = open("input.txt")
  summary = 0

  letterValues = initTable[char, int]()
  lowercaseLetters = {'a' .. 'z'}
  uppercaseLetters = {'A' .. 'Z'}
  i = 1

for letter in lowercaseLetters:
  letterValues[letter] = i
  inc i

for letter in uppercaseLetters:
  letterValues[letter] = i
  inc i

for i in 0..99:
  var
    fstBackpack = input.readLine()
    sndBackpack = input.readLine()
    thrdBackpack = input.readLine()

  for c in fstBackpack:
    if c in sndBackpack and c in thrdBackpack:
      inc(summary, letterValues[c])
      break

echo &"Summary: {summary}"

#[ Output:
# Summary: 2567

  Solved.
]#
