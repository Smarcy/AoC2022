import strformat

var
  input = open("input.txt")
  playerScore = 0
  enemyScore = 0

for line in input.lines:
  var
    enemyShape = line[0]
    myShape = line[2]

  case myShape:
    of 'X':
      case enemyShape:
        of 'A':
          inc(playerScore, 4)
          inc(enemyScore, 4)
        of 'B':
          inc(playerScore, 1)
          inc(enemyScore, 8)
        of 'C':
          inc(playerScore, 7)
          inc(enemyScore, 3)
        else:
          discard
    of 'Y':
      case enemyShape:
        of 'A':
          inc(playerScore, 8)
          inc(enemyScore, 1)
        of 'B':
          inc(playerScore, 5)
          inc(enemyScore, 5)
        of 'C':
          inc(playerScore, 2)
          inc(enemyScore, 9)
        else:
          discard
    of 'Z':
      case enemyShape:
        of 'A':
          inc(playerScore, 3)
          inc(enemyScore, 7)
        of 'B':
          inc(playerScore, 9)
          inc(enemyScore, 2)
        of 'C':
          inc(playerScore, 6)
          inc(enemyScore, 6)
        else:
          discard
    else:
      discard

echo &"PlayerScore: {playerScore}"
echo &"EnemyScore: {enemyScore}"
