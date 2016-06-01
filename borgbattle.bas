REM CODE WRITTEN BY ABEL LOPEZ - MODIFICATION OF SOURCE CODE IS FORBIDDEN
REM DISTRIBUTION IS ENCOURAGE PROVIDED THE SOURCE CODE STAYS INTACT AND
REM UNMODIFIED.

Menu:
  LET EASY = 0
  LET MEDIUM = 0
  LET HARD = 0
  CLS
  COLOR 7, 1
  PRINT "                  STAR TREK: THE NEXT GENERATION - BORG BATTLE                  "
  COLOR 7, 0
  PRINT
  PRINT "1...PLAY GAME"
  PRINT "2...CREDITS"
  PRINT "3...END PROGRAM"
  PRINT
  INPUT "SELECTION: ", SEL$
  IF SEL$ = "1" THEN GOSUB Configure
  IF SEL$ = "2" THEN GOSUB Credits
  IF SEL$ = "3" THEN END
  PRINT "INVALID SELECTION"
  SLEEP 2
  GOSUB Menu

Configure:
  CLS
  COLOR 7, 1
  PRINT "                  STAR TREK: THE NEXT GENERATION - BORG BATTLE                  "
  COLOR 7, 0
  PRINT
  PRINT "1...EASY"
  PRINT "2...MEDIUM"
  PRINT "3...HARD"
  PRINT "4...TEH PWNAGE"
  PRINT ""
  INPUT "SELECT MODE:"; MODE$
  IF MODE$ = "1" THEN GOSUB Easymode
  IF MODE$ = "2" THEN GOSUB Mediummode
  IF MODE$ = "3" THEN GOSUB Hardmode
  IF MODE$ = "4" THEN GOSUB Pwnagemode
  PRINT "INVALID SELECTION"
  SLEEP 3
  GOSUB Configure

Cheats:
  LET CHEAT = 1
  CLS
  COLOR 7, 1
  PRINT "                  STAR TREK: THE NEXT GENERATION - BORG BATTLE                  "
  COLOR 7, 0
  PRINT "1...ENTER CHEAT CODE"
  PRINT "2...BEGIN GAME"
  INPUT "SELECTION: ", SLC$
  IF SLC$ = "1" THEN GOSUB Code
  IF SLC$ = "2" THEN GOSUB Guess
  PRINT "INVALID SELECTION"
  SLEEP 3
  GOSUB Cheats
Code:
  INPUT "ENTER CHEAT CODE: ", CHEAT$
  IF CHEAT$ = "IBORKTHESHIELD" THEN GOSUB Freqhack
  IF CHEAT$ = "GIMMEMORECHANCES" THEN GOSUB Morechance
  IF CHEAT$ = "ROFLCOPTER" THEN GOSUB Unlockall
  PRINT "INVALID CHEAT CODE NOOB!!"
  SLEEP 3
  GOSUB Cheats

Freqhack:
  PRINT "HACKING FREQUENCY...."
  SLEEP 2
  LOCATE 5, 22
  PRINT "FUCKIN' NOOB CHEATER"
  SLEEP 4
  PRINT
  PRINT
  PRINT "FREQUENCY IS"; X
  SLEEP 5
  GOSUB Cheats

Morechance:
  LET CHANCE = 1000
  PRINT "GEEZ, YOU MUST REALLY BE LAME..."
  PRINT "INCREASING YOUR CHANCES"
  SLEEP 5
  PRINT ""
  PRINT "YOU HAVE 1000 CHANCES NOW, NOOB"
  SLEEP 4
  GOSUB Cheats

Unlockall:
  PRINT "YOU THINK YOU GOT BAWLZ EH? GOOD LUCK, YOU'RE GONNA NEED IT"
  PRINT "UNLOCKING ALL 3 LEVELS AND ENABLING PWNAGE MODE..."
  SLEEP 5
  PRINT ""
  PRINT "THERE, IT'S ALL READY FOR YOU....NOOB"
  LET EASY = 1
  LET MEDIUM = 1
  LET HARD = 1
  PRINT "SIMPLY SELECT PWNAGE MODE ON THE MENU DOOD"
  SLEEP 5
  GOSUB Configure

Credits:
  CLS
  COLOR 7, 1
  PRINT "                  STAR TREK: THE NEXT GENERATION - BORG BATTLE                  "
  COLOR 7, 0
  PRINT ""
  PRINT "PROGRAMMER: ABEL LOPEZ"
  PRINT ""
  PRINT "STAR TREK IS THE PROPERTY OF THEIR RESPECTIVE OWNERS"
  PRINT ""
  PRINT "SEVERAL LINES ARE FROM NET SOURCES AND MY BUDDY CHRIS H."
  PRINT ""
  PRINT ""
  PRINT "VERSION 1.10"
  INPUT "PRESS ENTER TO RETURN TO MAIN MENU..."; A$
  GOSUB Menu

Easymode:
  LET EASY = 1
  LET CHANCE = 10
  REM -[GENERATE FREQUENCY]-
  LET X = 0
  RANDOMIZE TIMER
  X = INT(RND * 10) + 1
  LET FRX = 10
  GOSUB Game

Mediummode:
  LET MEDIUM = 1
  LET CHANCE = 20
  REM -[GENERATE FREQUENCY]-
  LET X = 0
  RANDOMIZE TIMER
  X = INT(RND * 100) + 2
  LET FRX = 100
  GOSUB Game

Hardmode:
  LET HARD = 1
  LET CHANCE = 25
  REM -[GENERATE FREQUENCY]-
  LET X = 0
  RANDOMIZE TIMER
  X = INT(RND * 1000) + 3
  LET FRX = 1000
  GOSUB Game

Pwnagemode:
  REM CHECK EASY
  IF EASY = 1 THEN GOSUB ChkMed
  PRINT "YOU HAVEN'T DONE THE EASY MODE YET"
  SLEEP 2
  GOSUB Menu
ChkMed:
  REM CHECK MEDIUM
  IF EASY = 1 AND MEDIUM = 1 THEN GOSUB ChkHard
  PRINT "YOU HAVEN'T DONE THE EASY AND MEDIUM MODES"
  SLEEP 2
  GOSUB Menu
ChkHard:
  REM CHECK HARD
  IF EASY = 1 AND MEDIUM = 1 AND HARD = 1 THEN GOSUB PwnageEnable
  PRINT "YOU HAVEN'T DONE THE EASY, MEDIUM AND HARD MODES"
  SLEEP 2
  GOSUB Menu
PwnageEnable:
  CLS
  COLOR 7, 1
  PRINT "                  STAR TREK: THE NEXT GENERATION - BORG BATTLE                  "
  COLOR 7, 0
  PRINT ""
  PRINT "OMFG!! YOU GOT THIS FAR!?!?! CONGRATS, GOOD LUCK ON THIS FINAL MODE"
  SLEEP 5
  REM -[SET CHANCES TO 30]-
  LET CHANCE = 30
  REM -[GENERATE FREQUENCY]-
  LET X = 0
  RANDOMIZE TIMER
  X = INT(RND * 10000) + 4
  LET FRX = 10000
  GOSUB Game

Game:
  CLS
  COLOR 7, 1
  PRINT "                  STAR TREK: THE NEXT GENERATION - BORG BATTLE                  "
  COLOR 7, 0
  PRINT ""
  PRINT "WE ARE THE BORG, YOU WILL BE ASSIMILATED, RESISTANCE IS FUTILE"
  PRINT ""
  PRINT "ENSIGN: WTF!?!?!?! THE BORG TRANSPORTED THEIR ASSIMILATION"
  PRINT "EXPLOSION DEVICE INTO CARGO BAY 2, I CAN'T TRANSPORT IT OFF THE SHIP"
  PRINT ""
  PRINT "I NEED THE FREQUENCY BEFORE I CAN BEAM IT OFF THE SHIP"
  PRINT "CADET: COME ON! WE NEED TO FIND THE BOMB SHIELD MODULATION"
  PRINT ""
  PRINT "1...BEGIN GAME"
  PRINT "2...ENTER CHEAT CODE"
  INPUT ST$
  IF ST$ = "1" THEN GOSUB Guess
  IF ST$ = "2" THEN GOSUB Cheats
  PRINT "INVALID SELECTION"
  SLEEP 3
  GOSUB Game
Guess:
  CLS
  COLOR 7, 1
  PRINT "                  STAR TREK: THE NEXT GENERATION - BORG BATTLE                  "
  COLOR 7, 0
  PRINT ""
  IF CHANCE = 0 THEN GOSUB Failguess
  PRINT "YOU HAVE"; CHANCE; "CHANCES LEFT"
  PRINT "FREQUENCY 0 -"; FRX
  INPUT "ENTER FREQUENCY:"; FREQ%
  IF FREQ% = X THEN GOSUB CorrectGuess
  IF FREQ% < X THEN PRINT "THEIR FREQUENCY IS TOO LOW - INCREASE FREQUENCY"
  IF FREQ% > X THEN PRINT "THEIR FREQUENCY IS TOO HIGH - DECREASE FREQUENCY"
  CHANCE = CHANCE - 1
  SLEEP 4
  GOSUB Guess

Failguess:
  PRINT "LOL, YOU RAN OUT OF CHANCES SO THEREFORE THE BOMB DETONATED, ASSIMILATING"
  PRINT "THE ENTIRE CREW, YOU LOST THE GAME NOOB!!"
  SLEEP 5
  GOSUB Menu
CorrectGuess:
  PRINT ""
  PRINT "CORRECT!!! THE FREQUENCY IS:"; X
  SLEEP 4
  CLS
  COLOR 7, 1
  PRINT "                  STAR TREK: THE NEXT GENERATION - BORG BATTLE                  "
  COLOR 7, 0
  PRINT ""
  PRINT "CAPTAIN!! OMFG!!!  I AM TEH PWNAGE, I GOT THE FREQUENCY"
  SLEEP 4
  PRINT "I AM ISOLATING IT AND NARROWING IT...."
  SLEEP 3
  INPUT "ENTER FREQUENCY:"; FREQ%
  IF FREQ% = X THEN GOSUB Transport
  PRINT "WTF!?!?!?!!!  FREQUENCY DOSEN'T MATCH....OH SHIT...WE DEAD!!!"
  PRINT "I AM SO FUXOR'N PWND. TIME TO GO WORKY WITH BORG.....FUCK!"
  PRINT "YOU SUCK NOOB, THE GAME IS OVER!!!"
  SLEEP 5
  GOSUB Menu
Transport:
  IF CHEAT = 1 THEN PRINT "WTF!? OMFG!?!?! WE GOT A CHEATER!!! *FAP* *FAP* *SPLURGE* PWND!!!!"
  PRINT "BEAMING IT OFF THE SHIP"
  SLEEP 4
  PRINT "TRANSPORT COMPLETE"
  SLEEP 2
  PRINT "SENSOR: URANIUM EXPLOSION DETECTED"
  PRINT "SOURCE: BEARING 80 MARK 55"
  PRINT
  PRINT "YEAH BITCH!!! THE MISSION IS FUCKIN' COMPLETE"
  SLEEP 3
  GOSUB Menu

