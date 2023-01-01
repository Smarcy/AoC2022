let
  input = readFile("input.txt")

var
  n = 1

for i in 0..(input.len)-4:
  var
    a = input[i]
    b = input[i+1]
    c = input[i+2]
    d = input[i+3]

  if a != b and a != c and a != d and b != c and b != d and c != d:
    echo i+4
    break
  else:
    inc n

#[ Output:
  1582
  Solved.
]#
