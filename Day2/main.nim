import strformat

var
  input = open("input.txt")
  rounds = newSeq[string]()
  i = 1

for line in input.lines:
  rounds.add(line)
  echo &"Round: {i}"
  echo &"Enemy: {rounds[i-1][0]}"
  echo &"Player: {rounds[i-1][2]}"
  inc i

# echo rounds