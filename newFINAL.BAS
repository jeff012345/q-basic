DECLARE SUB flashing.border ()
DECLARE SUB attack2 ()
DECLARE SUB pause ()
DECLARE SUB ob2 ()
DECLARE SUB death ()
DECLARE SUB game ()
DECLARE SUB dead ()
DECLARE SUB attack ()
DECLARE SUB boarder ()
DECLARE SUB begin ()
DECLARE SUB intro ()
DECLARE SUB lazer.down ()
DECLARE SUB lazer.left ()
DECLARE SUB lazer.right ()
DECLARE SUB lazer.up ()
DECLARE SUB ob ()
DECLARE SUB target ()
DECLARE SUB SCORE ()
COMMON SHARED tx, ty, scr, scr2, x, y, num, key$, ax, ay, k, tr, rnd2, cht, cht2, cht3, ax2, ay2, cht4, name$

'by Jeff Monticello
'9th grade 2004-2005

'Purpose
'to provide a game for the user to play

'major varibles
'tx, ty         location of target
'scr            score
'scr2           score for round 2
'x,y            location of player smiley
'key$           the keyboard key pressed
'ax,ay          location of attacking smiley
'k              counter
'rnd2           justify if round 2 or not
'cht1-4         cheats
'ax2,ay2        location of second attacking smiley
'tr             counter
'ans$           used for word answers

CALL intro
CALL begin
CALL boarder
CALL target
CALL ob
CALL game


SUB attack

LOCATE ax, ay
PRINT " "
IF ax = x THEN LET ax = x
IF ay > y THEN LET ay = ay - 1
IF ay < y THEN LET ay = ay + 1
IF ay = y THEN LET ay = y
IF ax > x THEN LET ax = ax - 1
IF ax < x THEN LET ax = ax + 1
IF ax = 5 AND ay = 15 THEN LET ax = 2: LET ay = 78
IF ax = 5 AND ay = 16 THEN LET ax = 2: LET ay = 78
IF ax = 5 AND ay = 17 THEN LET ax = 2: LET ay = 78
IF ax = 5 AND ay = 18 THEN LET ax = 2: LET ay = 78
IF ax = 12 AND ay = 68 THEN LET ax = 2: LET ay = 78
IF ax = 13 AND ay = 68 THEN LET ax = 2: LET ay = 78
IF ax = 14 AND ay = 68 THEN LET ax = 2: LET ay = 78

LOCATE ax, ay
COLOR 1
PRINT CHR$(1)
COLOR 7
IF ax = x AND ay = y THEN CALL dead
IF ax = tx AND ay = ty THEN CALL target

END SUB

SUB attack2

LOCATE ax, ay
PRINT " "
IF ax = x THEN LET ax = x
IF ay > y THEN LET ay = ay - 1
IF ay < y THEN LET ay = ay + 1
IF ay = y THEN LET ay = y
IF ax > x THEN LET ax = ax - 1
IF ax < x THEN LET ax = ax + 1
IF ax = 8 AND ay = 15 THEN LET ax = 2: LET ay = 79
IF ax = 8 AND ay = 16 THEN LET ax = 2: LET ay = 79
IF ax = 8 AND ay = 17 THEN LET ax = 2: LET ay = 79
IF ax = 8 AND ay = 18 THEN LET ax = 2: LET ay = 79
IF ax = 8 AND ay = 19 THEN LET ax = 2: LET ay = 79
IF ax = 8 AND ay = 20 THEN LET ax = 2: LET ay = 79
IF ax = 19 AND ay = 40 THEN LET ax = 2: LET ay = 79
IF ax = 19 AND ay = 41 THEN LET ax = 2: LET ay = 79
IF ax = 19 AND ay = 42 THEN LET ax = 2: LET ay = 79
IF ax = 19 AND ay = 43 THEN LET ax = 2: LET ay = 79
IF ax = 12 AND ay = 68 THEN LET ax = 2: LET ay = 79
IF ax = 13 AND ay = 68 THEN LET ax = 2: LET ay = 79
IF ax = 14 AND ay = 68 THEN LET ax = 2: LET ay = 79
IF ax = 15 AND ay = 68 THEN LET ax = 2: LET ay = 79
IF ax = 16 AND ay = 68 THEN LET ax = 2: LET ay = 79



LOCATE ax2, ay2
PRINT " "
IF ax2 = x THEN LET ax2 = x
IF ay2 > y THEN LET ay2 = ay2 - 1
IF ay2 < y THEN LET ay2 = ay2 + 1
IF ay2 = y THEN LET ay2 = y
IF ax2 > x THEN LET ax2 = ax2 - 1
IF ax2 < x THEN LET ax2 = ax2 + 1
IF ax2 = 8 AND ay2 = 15 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 8 AND ay2 = 16 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 8 AND ay2 = 17 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 8 AND ay2 = 18 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 8 AND ay2 = 19 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 8 AND ay2 = 20 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 19 AND ay2 = 40 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 19 AND ay2 = 41 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 19 AND ay2 = 42 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 19 AND ay2 = 43 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 12 AND ay2 = 68 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 13 AND ay2 = 68 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 14 AND ay2 = 68 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 15 AND ay2 = 68 THEN LET ax2 = 2: LET ay2 = 2
IF ax2 = 16 AND ay2 = 68 THEN LET ax2 = 2: LET ay2 = 2

LOCATE ax, ay
COLOR 1
PRINT CHR$(1)
COLOR 7
IF ax = x AND ay = y THEN CALL dead
IF ax = tx AND ay = ty THEN CALL target

LOCATE ax2, ay2
COLOR 4
PRINT CHR$(1)
COLOR 7
IF ax2 = x AND ay2 = y THEN CALL dead
IF ax2 = tx AND ay2 = ty THEN CALL target

conti:

END SUB

SUB begin

CLS
IF rnd2 = 0 THEN LET scr = 10
IF rnd2 = 1 THEN LET scr = src + 15

LET k = 700
IF cht = 1 THEN LET k = 7000
LET tr = 0

LET x = 12
LET y = 40

LOCATE x, y
PRINT CHR$(1)

LET ax = 2
LET ay = 78

LET ax2 = 2
LET ay2 = 2

LOCATE ax, ay
COLOR 1
PRINT CHR$(1)
COLOR 7

LET dx = 2
LET dy = 2

END SUB

SUB boarder

FOR u = 1 TO 80
        LOCATE 1, u
        PRINT "Б"
NEXT u
FOR v = 2 TO 23
        LOCATE v, 1
        PRINT "Б"
NEXT v
FOR c = 1 TO 80
        LOCATE 24, c
        PRINT "Б";
NEXT c
FOR n = 2 TO 23
        LOCATE n, 80
        PRINT "Б"
NEXT n
LOCATE 1, 33
PRINT " Targets Left"; scr

LOCATE 1, 1
PRINT "Player Name:"; name$

END SUB

SUB dead

dead:
CLS
LOCATE 12, 27
PRINT "You have just been killed!!"
SLEEP 1
LOCATE 13, 32
INPUT "Try again (y/n)"; ans$
IF ans$ = "y" THEN
        CALL intro
        CALL begin
        CALL boarder
        CALL target
        CALL ob
        CALL game
END IF
IF ans$ = "Y" THEN
        CALL intro
        CALL begin
        CALL boarder
        CALL target
        CALL ob
        CALL game
END IF
IF ans$ = "n" THEN CLS : END
IF ans$ = "N" THEN CLS : END
IF ans$ = "" THEN GOTO dead
IF ans$ <> "Y" THEN GOTO dead

END SUB

SUB death
IF i = 0 THEN LET i = 3

IF rnd2 = 0 THEN IF x = 5 AND y = 15 THEN GOTO hole
IF rnd2 = 0 THEN IF x = 5 AND y = 16 THEN GOTO hole
IF rnd2 = 0 THEN IF x = 5 AND y = 17 THEN GOTO hole
IF rnd2 = 0 THEN IF x = 5 AND y = 18 THEN GOTO hole
IF rnd2 = 1 THEN IF x = 8 AND y = 15 THEN GOTO hole
IF rnd2 = 1 THEN IF x = 8 AND y = 16 THEN GOTO hole
IF rnd2 = 1 THEN IF x = 8 AND y = 17 THEN GOTO hole
IF rnd2 = 1 THEN IF x = 8 AND y = 18 THEN GOTO hole
IF rnd2 = 1 THEN IF x = 19 AND y = 40 THEN GOTO hole
IF rnd2 = 1 THEN IF x = 19 AND y = 41 THEN GOTO hole
IF rnd2 = 1 THEN IF x = 19 AND y = 42 THEN GOTO hole
IF rnd2 = 1 THEN IF x = 19 AND y = 43 THEN GOTO hole
IF x = 12 AND y = 68 THEN GOTO hole
IF x = 13 AND y = 68 THEN GOTO hole
IF x = 14 AND y = 68 THEN GOTO hole
IF rnd2 = 1 THEN IF x = 15 AND y = 68 THEN GOTO hole
IF rnd2 = 1 THEN IF x = 16 AND y = 68 THEN GOTO hole
IF x = ax AND y = ay THEN CALL dead
IF y = 80 THEN GOTO edge
IF y = 1 THEN GOTO edge
IF x = 24 THEN GOTO edge
IF x = 1 THEN GOTO edge

IF i <> 0 THEN GOTO cont

hole:
CLS
LOCATE 12, 24
PRINT "You have fell into a never ending hole!!!"
SLEEP 1
LOCATE 13, 32
INPUT "Try again (y/n)"; ans$
IF ans$ = "y" THEN
        CALL intro
        CALL begin
        CALL boarder
        CALL target
        CALL ob
        CALL game
END IF
IF ans$ = "Y" THEN
        CALL intro
        CALL begin
        CALL boarder
        CALL target
        CALL ob
        CALL game
END IF
IF ans$ = "n" THEN CLS : END
IF ans$ = "N" THEN CLS : END
IF ans$ = "" THEN GOTO hole
IF ans$ <> "Y" THEN GOTO hole

edge:
CLS
LOCATE 12, 18
PRINT "You have fallen off the edge and died!!!"
SLEEP 1
LOCATE 13, 32
INPUT "Try again (y/n)"; ans$
IF ans$ = "y" THEN
        CALL intro
        CALL begin
        CALL boarder
        CALL target
        CALL ob
        CALL game
END IF
IF ans$ = "Y" THEN
        CALL intro
        CALL begin
        CALL boarder
        CALL target
        CALL ob
        CALL game
END IF

IF ans$ = "n" THEN CLS : END
IF ans$ = "N" THEN CLS : END
IF ans$ = "" THEN GOTO edge
IF ans$ <> "Y" THEN GOTO edge
END

cont:

END SUB

SUB game

start:
IF cht4 = 1 THEN GOTO ending
IF rnd2 = 0 THEN IF cht3 = 1 THEN GOTO round2


DO UNTIL scr = 0
        LET key$ = ""
        LET key$ = INKEY$
        IF key$ = "p" THEN CALL pause
        IF key$ = "s" THEN CALL lazer.down
        IF key$ = "w" THEN CALL lazer.up
        IF key$ = "d" THEN CALL lazer.right
        IF key$ = "a" THEN CALL lazer.left
        IF key$ <> "" THEN LOCATE x, y: PRINT " "
        IF key$ <> "" THEN IF key$ = CHR$(0) + CHR$(75) THEN y = y - 1 'Left
        IF key$ <> "" THEN IF key$ = CHR$(0) + CHR$(77) THEN y = y + 1 'Right
        IF key$ <> "" THEN IF key$ = CHR$(0) + CHR$(72) THEN x = x - 1 'Up
        IF key$ <> "" THEN IF key$ = CHR$(0) + CHR$(80) THEN x = x + 1 'Down
        CALL death
        IF tx = x AND ty = y THEN CALL SCORE
        LOCATE x, y: PRINT CHR$(1);
        LET tr = tr + 1
        IF cht = 0 AND rnd2 = 0 THEN IF tr = k THEN LET k = k + 700: CALL attack
        IF cht = 0 AND rnd2 = 1 THEN IF tr = k THEN LET k = k + 700: CALL attack2
        IF cht = 1 AND rnd2 = 0 THEN IF tr = k THEN LET k = k + 7000: CALL attack
        IF cht = 1 AND rnd2 = 1 THEN IF tr = k THEN LET k = k + 7000: CALL attack2
        LET key$ = ""
LOOP

round2:
IF rnd2 = 1 THEN GOTO ending
LET rnd2 = 1
CLS
LOCATE 1, 1
PRINT "Password for Round 2: FRIDAY"
LOCATE 12, 37
PRINT "ROUND 2"
LOCATE 14, 16
INPUT "Would you like to continue on to Round 2(y/n)"; ans$
IF ans$ = "n" THEN END
IF ans$ = "N" THEN END

CLS
IF num = src THEN CALL begin: CALL target: CALL boarder: CALL ob2: GOTO start

ending:
CLS
LOCATE 10, 5
PRINT "л     л   лллл    л      л         л             л ллллллл лл    л"
LOCATE 11, 5
PRINT " л   л   л    л   л      л          л     л     л     л    л л   л"
LOCATE 12, 5
PRINT "  ллл   л      л  л      л           л   л л   л      л    л  л  л"
LOCATE 13, 5
PRINT "   л     л    л    л    л             л л   л л       л    л   л л"
LOCATE 14, 5
PRINT "   л      лллл      лллл               л     л     ллллллл л    лл"

playagain:
SLEEP 1
LOCATE 16, 20
INPUT "Do you want to play again(y/n) "; answer$
IF answer$ = "y" THEN CALL intro: CALL begin: CALL boarder: CALL target: CALL ob: CALL game
IF answer$ = "n" THEN END
IF answer$ <> "n" THEN GOTO playagain
IF answer$ <> "y" THEN GOTO playagain

END


END SUB

SUB intro
CLS

LOCATE 2, 27
PRINT "Program by: Jeff Monticello"
LOCATE 3, 32

LOCATE 8, 55
PRINT CHR$(1)
LOCATE 8, 60
PRINT "Your Guy"
LOCATE 9, 55
COLOR 1
PRINT CHR$(1)
COLOR 7
LOCATE 9, 60
PRINT "Your enemy"
LOCATE 10, 55
COLOR 4
PRINT CHR$(1)
LOCATE 10, 60
PRINT "Enemy you cant kill"
COLOR 7
LOCATE 11, 55
PRINT "л"
LOCATE 11, 60
PRINT "Never ending hole"
LOCATE 12, 55
PRINT "Б"
LOCATE 12, 60
PRINT "Edge of map"

LOCATE 7, 1
PRINT "Controls"
LOCATE 8, 1
PRINT "Press UP to go up"
LOCATE 9, 1
PRINT "Press DOWN to go down"
LOCATE 10, 1
PRINT "Press LEFT to go left"
LOCATE 11, 1
PRINT "Press RIGHT to go right"
LOCATE 13, 1
PRINT "Press W to shoot up"
LOCATE 14, 1
PRINT "Press S to shoot down"
LOCATE 15, 1
PRINT "Press A to shoot left"
LOCATE 16, 1
PRINT "Press D to shoot right"

LET rnd2 = 0
LET cht4 = 0
LET key$ = ""

DO
        INPUT "What is your name"; name$
        INPUT "Do you know the password for round 2(y/n)"; ans$
        IF ans$ = "y" THEN INPUT "What is the  password"; pass$
        IF ans$ = "Y" THEN INPUT "What is the  password"; pass$
        IF pass$ = "FRIDAY" THEN LET cht3 = 1
        INPUT "Press ENTER to continue.", key$
        IF key$ = "slow" THEN LET cht = 1: LET key$ = ""
        IF key$ = "lazer" THEN LET cht2 = 1: LET key$ = ""
        IF key$ = "round" THEN LET cht3 = 1: LET key$ = ""
        IF key$ = "win" THEN LET cht4 = 1: LET key$ = ""

LOOP UNTIL key$ = ""








END SUB

SUB lazer.down

LET lx = x + 1
LET ly = y
IF cht2 = 1 THEN LET ly2 = ly + 1: LET ly3 = ly - 1

FOR lx = lx TO 23
        IF rnd2 = 0 THEN IF lx = 5 AND ly = 15 THEN LOCATE 5, 15: PRINT "л": GOTO done
        IF rnd2 = 0 THEN IF lx = 5 AND ly = 16 THEN LOCATE 5, 16: PRINT "л": GOTO done
        IF rnd2 = 0 THEN IF lx = 5 AND ly = 17 THEN LOCATE 5, 17: PRINT "л": GOTO done
        IF rnd2 = 0 THEN IF lx = 5 AND ly = 18 THEN LOCATE 5, 18: PRINT "л": GOTO done
        IF rnd2 = 0 THEN IF lx = 12 AND ly = 68 THEN LOCATE 12, 68: PRINT "л": GOTO done
       
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 15 THEN LOCATE 8, 15: PRINT "л": GOTO done
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 16 THEN LOCATE 8, 16: PRINT "л": GOTO done
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 17 THEN LOCATE 8, 17: PRINT "л": GOTO done
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 18 THEN LOCATE 8, 18: PRINT "л": GOTO done
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 19 THEN LOCATE 8, 19: PRINT "л": GOTO done
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 20 THEN LOCATE 8, 20: PRINT "л": GOTO done
        IF rnd2 = 1 THEN IF lx = 19 AND ly = 40 THEN LOCATE 19, 40: PRINT "л": GOTO done
        IF rnd2 = 1 THEN IF lx = 19 AND ly = 41 THEN LOCATE 19, 41: PRINT "л": GOTO done
        IF rnd2 = 1 THEN IF lx = 19 AND ly = 42 THEN LOCATE 19, 42: PRINT "л": GOTO done
        IF rnd2 = 1 THEN IF lx = 19 AND ly = 43 THEN LOCATE 19, 43: PRINT "л": GOTO done
        IF rnd2 = 1 THEN IF lx = 12 AND ly = 68 THEN LOCATE 12, 68: PRINT "л": GOTO done
        LOCATE lx, ly
        IF lx <> ax AND ly <> ay THEN PRINT "|"
        IF lx = ax AND ly = ay THEN
                LOCATE ax, ay
                PRINT " "
                LET ax = 2
                LET ay = 78
                LOCATE ax, ay
                COLOR 1
                PRINT CHR$(1)
        END IF
        COLOR 7
        FOR t = 1 TO 3000: NEXT t
        LOCATE lx, ly
        IF lx <> ax AND ly <> ay THEN PRINT " "
        IF lx = ax AND ly = ay THEN LET ax = 2: LET ay = 40: LOCATE ax, ay: PRINT ">"
       
        IF lx = ax AND ly = ay THEN LOCATE lx, ly: PRINT CHR$(1);
        IF lx = tx AND ly = ty THEN LOCATE tx, ty: PRINT " ": CALL SCORE
NEXT lx

done:



END SUB

SUB lazer.left

LET ly = y - 1
LET lx = x

FOR ly = ly TO 2 STEP -1
        IF rnd2 = 0 THEN IF lx = 5 AND ly = 18 THEN LOCATE 5, 18: PRINT "л": GOTO ennd
        IF rnd2 = 0 THEN IF lx = 12 AND ly = 68 THEN LOCATE 12, 68: PRINT "л": GOTO ennd
        IF rnd2 = 0 THEN IF lx = 13 AND ly = 68 THEN LOCATE 13, 68: PRINT "л": GOTO ennd
        IF rnd2 = 0 THEN IF lx = 14 AND ly = 68 THEN LOCATE 14, 68: PRINT "л": GOTO ennd
       
        IF rnd2 = 1 THEN IF lx = 12 AND ly = 68 THEN LOCATE 12, 68: PRINT "л": GOTO ennd
        IF rnd2 = 1 THEN IF lx = 13 AND ly = 68 THEN LOCATE 13, 68: PRINT "л": GOTO ennd
        IF rnd2 = 1 THEN IF lx = 14 AND ly = 68 THEN LOCATE 14, 68: PRINT "л": GOTO ennd
        IF rnd2 = 1 THEN IF lx = 15 AND ly = 68 THEN LOCATE 15, 68: PRINT "л": GOTO ennd
        IF rnd2 = 1 THEN IF lx = 16 AND ly = 68 THEN LOCATE 16, 68: PRINT "л": GOTO ennd
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 20 THEN LOCATE 8, 20: PRINT "л": GOTO ennd
        IF rnd2 = 1 THEN IF lx = 19 AND ly = 43 THEN LOCATE 19, 43: PRINT "л": GOTO ennd
        LOCATE lx, ly
        IF lx <> ax AND ly <> ay THEN PRINT "-"
        IF lx = ax AND ly = ay THEN
                LOCATE ax, ay
                PRINT " "
                LET ax = 2
                LET ay = 78
                LOCATE ax, ay
                COLOR 1
                PRINT CHR$(1)
        END IF
        COLOR 7
        FOR t = 1 TO 1000: NEXT t
        LOCATE lx, ly
        IF lx <> ax AND ly <> ay THEN PRINT " "
        IF ly = ty AND lx = tx THEN LOCATE tx, ty: PRINT " ": CALL SCORE
NEXT ly
ennd:

END SUB

SUB lazer.right

LET ly = y + 1
LET lx = x

FOR ly = ly TO 79
        IF rnd2 = 0 THEN IF lx = 5 AND ly = 15 THEN LOCATE 5, 15: PRINT "л": GOTO finish
        IF rnd2 = 0 THEN IF lx = 12 AND ly = 68 THEN LOCATE 12, 68: PRINT "л": GOTO finish
        IF rnd2 = 0 THEN IF lx = 13 AND ly = 68 THEN LOCATE 13, 68: PRINT "л": GOTO finish
        IF rnd2 = 0 THEN IF lx = 14 AND ly = 68 THEN LOCATE 14, 68: PRINT "л": GOTO finish
       
        IF rnd2 = 1 THEN IF lx = 19 AND ly = 40 THEN LOCATE 19, 40: PRINT "л": GOTO finish
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 15 THEN LOCATE 8, 15: PRINT "л": GOTO finish
        IF rnd2 = 1 THEN IF lx = 12 AND ly = 68 THEN LOCATE 12, 68: PRINT "л": GOTO finish
        IF rnd2 = 1 THEN IF lx = 13 AND ly = 68 THEN LOCATE 13, 68: PRINT "л": GOTO finish
        IF rnd2 = 1 THEN IF lx = 14 AND ly = 68 THEN LOCATE 14, 68: PRINT "л": GOTO finish
        IF rnd2 = 1 THEN IF lx = 15 AND ly = 68 THEN LOCATE 15, 68: PRINT "л": GOTO finish
        IF rnd2 = 1 THEN IF lx = 16 AND ly = 68 THEN LOCATE 16, 68: PRINT "л": GOTO finish

        LOCATE lx, ly
        IF lx <> ax AND ly <> ay THEN PRINT "-"
        IF lx = ax AND ly = ay THEN
                LOCATE ax, ay
                PRINT " "
                LET ax = 2
                LET ay = 78
                LOCATE ax, ay
                COLOR 1
                PRINT CHR$(1)
        END IF
        COLOR 7
        FOR t = 1 TO 1000: NEXT t
        LOCATE lx, ly
        IF lx <> ax AND ly <> ay THEN PRINT " "
        IF ly = ty AND lx = tx THEN LOCATE tx, ty: PRINT " ": CALL SCORE
NEXT ly
finish:

END SUB

SUB lazer.up

LET lx = x - 1
LET ly = y

FOR lx = lx TO 2 STEP -1
        IF rnd2 = 0 THEN IF lx = 5 AND ly = 15 THEN LOCATE 5, 15: PRINT "л": GOTO endd
        IF rnd2 = 0 THEN IF lx = 5 AND ly = 16 THEN LOCATE 5, 16: PRINT "л": GOTO endd
        IF rnd2 = 0 THEN IF lx = 5 AND ly = 17 THEN LOCATE 5, 17: PRINT "л": GOTO endd
        IF rnd2 = 0 THEN IF lx = 5 AND ly = 18 THEN LOCATE 5, 18: PRINT "л": GOTO endd
        IF rnd2 = 0 THEN IF lx = 14 AND ly = 68 THEN LOCATE 14, 68: PRINT "л": GOTO endd
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 15 THEN LOCATE 8, 15: PRINT "л": GOTO endd
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 16 THEN LOCATE 8, 16: PRINT "л": GOTO endd
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 17 THEN LOCATE 8, 17: PRINT "л": GOTO endd
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 18 THEN LOCATE 8, 18: PRINT "л": GOTO endd
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 19 THEN LOCATE 8, 19: PRINT "л": GOTO endd
        IF rnd2 = 1 THEN IF lx = 8 AND ly = 20 THEN LOCATE 8, 20: PRINT "л": GOTO endd
        IF rnd2 = 1 THEN IF lx = 19 AND ly = 40 THEN LOCATE 19, 40: PRINT "л": GOTO endd
        IF rnd2 = 1 THEN IF lx = 19 AND ly = 41 THEN LOCATE 19, 41: PRINT "л": GOTO endd
        IF rnd2 = 1 THEN IF lx = 19 AND ly = 42 THEN LOCATE 19, 42: PRINT "л": GOTO endd
        IF rnd2 = 1 THEN IF lx = 19 AND ly = 43 THEN LOCATE 19, 43: PRINT "л": GOTO endd
        IF rnd2 = 1 THEN IF lx = 16 AND ly = 68 THEN LOCATE 16, 44: PRINT "л": GOTO endd
        LOCATE lx, ly
        IF lx <> ax AND ly <> ay THEN PRINT "|"
        IF lx = ax AND ly = ay THEN
                LOCATE ax, ay
                PRINT " "
                LET ax = 2
                LET ay = 78
                LOCATE ax, ay
                COLOR 1
                PRINT CHR$(1)
        END IF
        COLOR 7
        FOR t = 1 TO 3000: NEXT t
        LOCATE lx, ly
        IF lx <> ax AND lx <> ax THEN PRINT " "
        IF lx = tx AND ly = ty THEN LOCATE tx, ty: PRINT " ": CALL SCORE
NEXT lx

endd:
END SUB

SUB ob

LOCATE 5, 15: PRINT "л"
LOCATE 5, 16: PRINT "л"
LOCATE 5, 17: PRINT "л"
LOCATE 5, 18: PRINT "л"
LOCATE 12, 68: PRINT "л"
LOCATE 13, 68: PRINT "л"
LOCATE 14, 68: PRINT "л"

END SUB

SUB ob2

LOCATE 8, 15: PRINT "л"
LOCATE 8, 16: PRINT "л"
LOCATE 8, 17: PRINT "л"
LOCATE 8, 18: PRINT "л"
LOCATE 8, 19: PRINT "л"
LOCATE 8, 20: PRINT "л"
LOCATE 19, 40: PRINT "л"
LOCATE 19, 41: PRINT "л"
LOCATE 19, 42: PRINT "л"
LOCATE 19, 43: PRINT "л"
LOCATE 12, 68: PRINT "л"
LOCATE 13, 68: PRINT "л"
LOCATE 14, 68: PRINT "л"
LOCATE 15, 68: PRINT "л"
LOCATE 16, 68: PRINT "л"


END SUB

SUB pause
LET key$ = ""

DO UNTIL l = 1
        LET key$ = INKEY$
        LOCATE 1, 75
        PRINT "PAUSED"
        IF key$ = "p" THEN LET l = 1
LOOP


LET key$ = ""

FOR ko = 75 TO 80
        LOCATE 1, ko
        PRINT "Б"
NEXT ko

END SUB

SUB SCORE

LET scr = scr - 1
LOCATE 1, 33
PRINT " Targets left "; scr
CALL target

END SUB

SUB target
starting:

RANDOMIZE TIMER
LET tx = INT(23 * RND(1)) + 2
LET ty = INT(79 * RND(1)) + 2
IF tx = 24 THEN LET tx = tx - 1
IF ty = 80 THEN LET ty = ty - 1
IF ty = 1 THEN LET ty = ty + 1
IF rnd2 = 0 THEN IF tx = 5 AND ty = 15 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 0 THEN IF tx = 5 AND ty = 16 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 0 THEN IF tx = 5 AND ty = 17 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 0 THEN IF tx = 5 AND ty = 18 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 0 THEN IF tx = 12 AND ty = 68 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 0 THEN IF tx = 13 AND ty = 68 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 0 THEN IF tx = 14 AND ty = 68 THEN LOCATE tx, ty: PRINT "л": GOTO starting

IF rnd2 = 1 THEN IF tx = 8 AND ty = 15 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 8 AND ty = 16 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 8 AND ty = 17 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 8 AND ty = 18 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 8 AND ty = 19 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 8 AND ty = 20 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 19 AND ty = 53 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 19 AND ty = 54 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 19 AND ty = 55 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 19 AND ty = 56 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 12 AND ty = 68 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 13 AND ty = 68 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 14 AND ty = 68 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 15 AND ty = 68 THEN LOCATE tx, ty: PRINT "л": GOTO starting
IF rnd2 = 1 THEN IF tx = 16 AND ty = 68 THEN LOCATE tx, ty: PRINT "л": GOTO starting

LOCATE tx, ty
COLOR 20: PRINT "л";
COLOR 7

END SUB

