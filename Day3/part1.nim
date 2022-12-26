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

for line in input.lines:
  let
    n = line.len
    fstHalf = line[0 .. (n div 2)-1]
    sndHalf = line[(n div 2) .. ^1]

  for c in fstHalf:
    if c in sndHalf:
      inc(summary, letterValues[c])
      break
    else:
      continue

echo &"Summary: {summary}"

#[ Output:
# Summary: 8072

  Solved.
]#
