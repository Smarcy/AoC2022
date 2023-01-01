import strutils

var
  cargo = @[@['T', 'P', 'Z', 'C', 'S', 'L', 'Q', 'N'],
                @['L', 'P', 'T', 'V', 'H', 'C', 'G'],
                @['D', 'C', 'Z', 'F'],
                @['G', 'W', 'T', 'D', 'L', 'M', 'V', 'C'],
                @['P', 'W', 'C'],
                @['P', 'F', 'J', 'D', 'C', 'T', 'S', 'Z'],
                @['V', 'W', 'G', 'B', 'D'],
                @['N', 'J', 'S', 'Q', 'H', 'W'],
                @['R', 'C', 'Q', 'F', 'S', 'L', 'V']]
  input = open("input.txt")

proc printCargo() =
  echo cargo[0]
  echo cargo[1]
  echo cargo[2]
  echo cargo[3]
  echo cargo[4]
  echo cargo[5]
  echo cargo[6]
  echo cargo[7]
  echo cargo[8]

# Skip first 10 lines to get to 'move x from y to z' lines
for i in 0..9:
  discard input.readLine

for line in input.lines:
  var
    lineSeq = line.split(" ")
    quantity = lineSeq[1].parseInt
    moveFrom = (lineSeq[3].parseInt)-1
    moveTo = (lineSeq[5].parseInt)-1
    tmpHolder: seq[char] = @[]

  for i in 0 ..< quantity:
    tmpHolder.add(cargo[moveFrom].pop)

  for i in 1 .. tmpHolder.len:
    cargo[moveTo].add(tmpHolder[^i])

printCargo()

#[ Output:

  DCVTCVPCL

  Solved
]#
