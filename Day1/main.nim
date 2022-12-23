import strutils
import sequtils
import algorithm

var input = open("input.txt")
var result = newSeq[int](300)
var i = 0

for line in input.lines:
  if line == "":
    inc i
  else:
    result[i] = result[i] + parseInt(line)

#  echo $i & " " & $result[i]
sort(result)
# echo result

echo result[result.high] + result[result.high-1] + result[result.high-2]
