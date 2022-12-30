import strutils

var
  input = open("input.txt")
  result = 0

for line in input.lines:
  var
    pairs = line.split(",")
    fstPair = pairs[0]
    sndPair = pairs[1]

    fstNumber = fstPair.split("-")
    sndNumber = sndPair.split("-")

    fstSeq = fstNumber[0].parseInt .. fstNumber[1].parseInt
    sndSeq = sndNumber[0].parseInt .. sndNumber[1].parseInt

  if fstNumber[0].parseInt in sndSeq or fstNumber[1].parseInt in sndSeq or
      sndNumber[0].parseInt in fstSeq or sndNumber[1].parseInt in fstSeq:
    inc result

echo result

#[ Output:

  Result: 854

  Solved.
]#
