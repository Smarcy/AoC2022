import strutils
import strformat

var
  input = open("input.txt")
  result = 0

for line in input.lines:

  var
    ranges = split(line, ',')
    fstRange = split(ranges[0], '-')
    sndRange = split(ranges[1], '-')

  if (fstRange[0].parseInt >= sndRange[0].parseInt) and (fstRange[1].parseInt <=
      sndRange[1].parseInt):
    inc result
    continue

  if (sndRange[0].parseInt >= fstRange[0].parseInt) and (sndRange[1].parseInt <=
      fstRange[1].parseInt):
    inc result
    continue

echo result

#[ Output:
#
# Result: 532
#
# Solved.
]#
