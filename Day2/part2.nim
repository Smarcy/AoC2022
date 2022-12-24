import strformat

var
  input = open("input.txt")
  playerScore = 0
  enemyScore = 0

for line in input.lines:
  var
    enemyShape = line[0]
    expectedOutcome = line[2]
    myShape = 'O'

  case expectedOutcome:
    of 'X':
      case enemyShape:
        of 'A':
          myShape = 'Z'
        of 'B':
          myShape = 'X'
        of 'C':
          myShape = 'Y'
        else:
          echo "ERROR 1"
    of 'Y':
      case enemyShape:
        of 'A':
          myShape = 'X'
        of 'B':
          myShape = 'Y'
        of 'C':
          myShape = 'Z'
        else:
          echo "ERROR 1.2"
    of 'Z':
      case enemyShape:
        of 'A':
          myShape = 'Y'
        of 'B':
          myShape = 'Z'
        of 'C':
          myShape = 'X'
        else:
          echo "ERROR 1.3"
    else:
      echo "ERROR 2"


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
          echo "ERROR 3"
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
          echo "ERROR 4"
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
          echo "ERROR 5"
    else:
      echo "ERROR 6"

echo &"PlayerScore: {playerScore}"
echo &"EnemyScore: {enemyScore}"

#[ Output:
PlayerScore: 14652
EnemyScore: 10374

Solved.
]#
