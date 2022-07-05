
REM Who ate Rudy's sandwich?
REM A game by Angelos Mavros for the amstrad CPC
REM All rights reserved 2021
REM Suggestions/Bugs > contact@djopensource.com

10 mode 1
20 cls
30 border 3
39 ink 3,3
45 paper 3
50 pen 1
51 plot 0,399
52 draw 638,399
53 draw 638,0
54 draw 0,0
55 draw 0,399
56 paper 3

61 for t = 1 to 10
62 sound 2, 100 + (t * 5), 100 - (t*10)
63 next t

80 locate 9,9
90 print "Who ate Rudy's Sandwich?"
91 locate 6,12
92 print "A Game for the Amstrad CPC 464."
93 locate 7,15
94 print "Written by Angelos Mavros."
95 locate 12,18
96 print "Version 1.0 Beta"
100 a$=INKEY$
101 IF a$="" THEN 100
110 cls
111 border 0
112 ink 3,0
113 paper 3
114 pen 1
120 locate 10,13
130 input "What's your name"; player$
131 if player$ ="" then locate 1,10 :print "    Enter a name you fuckin' idiot.    " : goto 120
132 if len(player$) > 6 then locate 1,10: print "   Use a nickname. Max 6 characters! " : goto 120
140 cls
141 for t = 1 to 4
142 sound 2, 100 - (t * 15), 20
143 next t

150 locate 1,1: print "Ok " player$
151 locate 1,4: print "Let's see if you have any brains!"
160 locate 1,7: print "In your quest to reveal who ate Rudy's  sandwich, you will interrogate 3 pupils  from Rudy's class."
170 locate 1,12: print "Rudy's mother is very upset with this   whole situation. She demands the thief  to be discovered and punished!"
171 a$=INKEY$
172 IF a$="" THEN 171

173 for t = 1 to 5
174 sound 2, 100 - (t * 5), 50 - (t*10)
175 next t

180 cls
181 border 0
182 ink 3,3
181 paper 3

190 locate 13,13
200 print "Child 1: Ricky"
201 for e=1 to 5000
202 next e
210 cls
211 ink 3,11
212 paper 3
213 ink 2,0
214 pen 2
REM diaxoristiko
215 plot 0,85
216 draw 640,85
217 plot 0,84
218 draw 640,84
219 plot 0,83
220 draw 640,83
238 ink 2,24
239 pen 2

400 for a = 1 to 180
401 deg
402 origin 320,300
405 plot -130*cos(a),-195*sin(a)
406 plot 130*cos(a),90*sin(a)
407 deg
408 origin 270,300
409 plot -30*cos(a),-15*sin(a)
410 plot 30*cos(a),15*sin(a)
411 deg
412 origin 370,300
413 plot -30*cos(a),-15*sin(a)
414 plot 30*cos(a),15*sin(a)
415 deg
416 origin 320,220
417 plot -60*cos(a),-25*sin(a)

418 deg
419 origin 270,310
420 draw -10*cos(a),-25*sin(a)
421 deg
422 origin 370,310
423 draw -10*cos(a),-25*sin(a)

424 next

REM trixes
425 for a = 1 to 90
426 deg
427 origin 180,300
428 plot 10*cos(a),70*sin(a)
429 deg
430 origin 200,330
431 plot 10*cos(a),60*sin(a)
432 deg
433 origin 220,350
434 plot 10*cos(a),90*sin(a)
435 deg
436 origin 240,360
437 plot 10*cos(a),90*sin(a)

500 deg
510 origin 260,370
520 plot 10*cos(a),90*sin(a)
600 deg
610 origin 280,380
620 plot 10*cos(a),90*sin(a)
700 deg
710 origin 300,380
720 plot 10*cos(a),90*sin(a)

1220 deg
1260 origin 320,380
1280 plot 10*cos(a),90*sin(a)
1300 deg
1310 origin 340,380
1320 plot 10*cos(a),90*sin(a)
1330 deg
1340 origin 360,370
1350 plot 10*cos(a),90*sin(a)
1400 deg
1410 origin 380,360
1420 plot 10*cos(a),90*sin(a)
1500 deg
1510 origin 400,350
1520 plot 10*cos(a),90*sin(a)
1600 deg
1610 origin 420,330
1620 plot 10*cos(a),60*sin(a)
1700 deg
1710 origin 440,280
1720 plot 10*cos(a),90*sin(a)

REM LAIMOS
2600 deg
2610 origin 265,85
2620 plot 10*cos(a),35*sin(a)
2700 deg
2710 origin 375,85
2720 plot -10*cos(a),35*sin(a)

REM AUTIA
2800 deg
2810 origin 432,260
2820 plot 23*cos(a),-60*sin(a)
rem auti aristera
2830 deg
2840 origin 208,260
2850 plot -23*cos(a),-60*sin(a)

REM FRYDIA
2860 deg
2870 origin 250,315
2880 plot 50*cos(a),15*sin(a)
2890 deg
2891 origin 390,315
2892 plot -50*cos(a),15*sin(a)

3000 next

3100 locate 1,22
3110 print "Ricky >"
3190 locate 1,24:PRINT player$ " > _                              "
3201 l=0
3202 q$=""

3204 a$="":WHILE a$="":a$=INKEY$:WEND
3205 IF l=30 THEN GOTO 3207
3206 IF (a$>="0" AND a$<="9") OR (a$>="A" AND a$<="Z") OR (a$>="a" AND a$<="z") OR a$="," OR a$="." OR a$="!" OR a$=CHR$(39) OR a$="'" OR a$="?" OR a$=" " THEN q$=q$+a$: LOCATE 1,24: PRINT player$ " > " q$;"_";:l=l+1:GOTO 3204
3207 IF a$=CHR$(127) AND l>0 THEN l=l-1:q$=LEFT$(q$,l):LOCATE 1,24:PRINT player$ " > " q$;"_ ";:GOTO 3204
3208 IF a$=CHR$(13) AND l>0 THEN GOTO 3250 ELSE GOTO 3204

3250 q$=LOWER$(q$)

3260 IF INSTR(1,q$, "who ate rudy's sandwich") <>0 then ans$="Sally ate it!": x = x + 1: GOTO 5000

3261 IF INSTR(1,q$, "did sally eat") <>0 then ans$="Sally could be the one.": x = x + 1: GOTO 5000
3262 IF INSTR(1,q$, "sally ate") <>0 then ans$="Sally? Yea could be.": x = x + 1: GOTO 5000
3263 IF INSTR(1,q$, "did jim ate") <>0 then ans$="Jim might be the one.": x = x + 1: GOTO 5000
3264 IF INSTR(1,q$, "jim ate") <>0 then ans$="Jim? Possibly!": x = x + 1: GOTO 5000
3265 IF INSTR(1,q$, "did lu ate") <>0 then ans$="Niaah. I bet against Lu ate it.": x = x + 1: GOTO 5000
3266 IF INSTR(1,q$, "lu ate") <>0 then ans$="Lu? I don't think Lu ate it.": x = x + 1: GOTO 5000
3267 IF INSTR(1,q$, "did bob ate") <>0 then ans$="I am not sure if Bob ate it.": x = x + 1: GOTO 5000
3268 IF INSTR(1,q$, "bob ate") <>0 then ans$="Bob? Possibly.": x = x + 1: GOTO 5000
3269 IF INSTR(1,q$, "hi ricky") <>0 then ans$="Hi there!!": x = x + 1: GOTO 5000
3270 IF INSTR(1,q$, "are you lying") <>0 then ans$="Me? Lying? Never.": x = x + 1: GOTO 5000
3271 IF INSTR(1,q$, "you lie") <>0 then ans$="I never lie.": x = x + 1: GOTO 5000
3272 IF INSTR(1,q$, "you are lying") <>0 then ans$="No I ain't lying.": x = x + 1: GOTO 5000

3300 IF INSTR(1,q$, "how old are you") <>0 then ans$="I am 7 years old.": x = x + 1: GOTO 5000
3301 IF INSTR(1,q$, "fuck you") <>0 then ans$="Fuck you too!": x = x + 1: GOTO 5000
3302 IF INSTR(1,q$, "shut up") <>0 then ans$="Blow me old man!": x = x + 1: GOTO 5000
3303 IF INSTR(1,q$, "are you a good kid") <>0 then ans$="Yes I am a good kid.": x = x + 1: GOTO 5000
3304 IF INSTR(1,q$, "are you a good boy") <>0 then ans$="I am a good boy, ofcourse.": x = x + 1: GOTO 5000
3305 IF INSTR(1,q$, "did you eat rudy's sandwich") <>0 then ans$="No I didn't!": x = x + 1: GOTO 5000
3305 IF INSTR(1,q$, "your homework") <>0 then ans$="Homework? Haha! Not always.": x = x + 1: GOTO 5000
3307 IF INSTR(1,q$, "do you love your folks") <>0 then ans$="Yes I do.": x = x + 1: GOTO 5000
3308 IF INSTR(1,q$, "do you love your parents") <>0 then ans$="Yes I do love my parents.": x = x + 1: GOTO 5000
3309 IF INSTR(1,q$, "did you steal rudy's sandwich") <>0 then ans$="No. Mom says stealing is wrong.": x = x + 1: GOTO 5000

3310 IF INSTR(1,q$, "how many kids are in class") <>0 then ans$="Sally, I, Rudy, Jim, Bob & Lu.": x = x + 1 : y = y + 1: GOTO 5000
3311 IF INSTR(1,q$, "how many kids your class has") <>0 then ans$="Sally, me, Rudy, Jim, Bob, Lu.": x = x + 1 : y = y + 1: GOTO 5000
3313 IF INSTR(1,q$, "names of your classmates") <>0 then ans$="Sally, Rudy, Jim, Bob, Lu.": x = x + 1 : y = y + 1: GOTO 5000
3314 IF INSTR(1,q$, "kids yesterday in your class") <>0 then ans$="Me, Sally, Rudy, Jim, Bob, Lu.": x = x + 1 : y = y + 1: GOTO 5000
3315 IF INSTR(1,q$, "kids yesterday in class") <>0 then ans$="Me, Sally, Rudy, Jim, Bob, Lu.": x = x + 1 : y = y + 1: GOTO 5000
3316 IF INSTR(1,q$, "kids are in your class") <>0 then ans$="Sally, me, Rudy, Jim, Bob & Lu.": x = x + 1 : y = y + 1: GOTO 5000
3317 IF INSTR(1,q$, "kids your class has") <>0 then ans$="Sally, me, Rudy, Jim, Bob, Lu.": x = x + 1 : y = y + 1: GOTO 5000

3320 IF INSTR(1,q$, "about sally") <>0 then ans$="Sally is selfish.": x = x + 1 : y = y + 1: GOTO 5000
3321 IF INSTR(1,q$, "about yourself") <>0 then ans$="I am the coolest guy around.": x = x + 1 : y = y + 1: GOTO 5000
3322 IF INSTR(1,q$, "about rudy") <>0 then ans$="Rudy cries all the time.": x = x + 1 : y = y + 1: GOTO 5000
3323 IF INSTR(1,q$, "about jim") <>0 then ans$="Jim is a bad kid, truthfully.": x = x + 1 : y = y + 1: GOTO 5000
3324 IF INSTR(1,q$, "about bob") <>0 then ans$="Bob is in love with Sally.": x = x + 1 : y = y + 1: GOTO 5000
3325 IF INSTR(1,q$, "about lu") <>0 then ans$="Lu is short. Ha Ha Ha!": x = x + 1 : y = y + 1: GOTO 5000
3326 IF INSTR(1,q$, "about your classmates") <>0 then ans$="I don't really care about them.": x = x + 1 : y = y + 1: GOTO 5000
3327 IF INSTR(1,q$, "who is the best kid") <>0 then ans$="I am the best kid in town!": x = x + 1 : y = y + 1: GOTO 5000
3328 IF INSTR(1,q$, "which is the best kid") <>0 then ans$="I am the best kid around.": x = x + 1 : y = y + 1: GOTO 5000

3329 IF INSTR(1,q$, "go get the next kid") <>0 then ans$="Get him yourself!": x = x + 1 : y = y + 1: GOTO 5000
3330 IF INSTR(1,q$, "bring me to the next kid") <>0 then ans$="Go by yourself!": x = x + 1 : y = y + 1: GOTO 5000
3331 IF INSTR(1,q$, "i want to talk to") <>0 then ans$="Who is holding you down?": x = x + 1 : y = y + 1: GOTO 5000
3333 IF INSTR(1,q$, "where is the next kid") <>0 then ans$="I don't know where it is.": x = x + 1 : y = y + 1: GOTO 5000
3334 IF INSTR(1,q$, "how do i talk to") <>0 then ans$="How should I know? I am a kid.": x = x + 1 : y = y + 1: GOTO 5000
3336 IF INSTR(1,q$, "let's talk to the next kid") <>0 then ans$="If you feel up to.. ok": x = x + 1 : y = y + 1: goto 5000
3337 IF INSTR(1,q$, "talk to the next") <>0 then ans$="Go talk to him. What do I care?": x = x + 1 : y = y + 1: goto 5000
3338 IF INSTR(1,q$, "call the next kid") <>0 then ans$="Go get him yourself!": x = x + 1 : y = y + 1: goto 5000
3339 IF INSTR(1,q$, "bring the next kid") <>0 then ans$="Bring him yourself!": x = x + 1 : y = y + 1: goto 5000

3340 IF q$ = "hi" then ans$="Hi there old fellow.": x = x + 1 : goto 5000

3341 IF INSTR(1,q$, "is everything alright") <>0 then ans$="Sure everything is fine.": x = x + 1 :goto 5000
3342 IF INSTR(1,q$, "hello") <>0 then ans$="Hello. Is everything in place?": x = x + 1 : goto 5000
3343 IF INSTR(1,q$, "howdy") <>0 then ans$="Hi! All ok?": x = x + 1 : goto 5000
3344 IF INSTR(1,q$, "what's up") <>0 then ans$="All good. And you?": x = x + 1 : goto 5000
3345 IF INSTR(1,q$, "great") <>0 then ans$="Cool.": x = x + 1 : goto 5000

3900 IF INSTR(1,q$, "are you a virgin") <>0 then ans$="Nop. I 've been with a lady.":goto 5000 else goto 4000
3901 IF INSTR(1,q$, "i wanna talk to the next kid") <>0 then ans$="And I want a hot chocolate.": x = x + 1 : y = y + 1: goto 5000
3902 IF INSTR(1,q$, "did you ate") <>0 then ans$="I only eat donuts.": x = x + 1 goto 5000
3903 IF INSTR(1,q$, "who is your best friend") <>0 then ans$="That would be Lu.": x = x + 1 goto 5000

4000 if x >= 15 and y >= 1 then goto 7000

4050 r=INT((RND(1)*16)+1)
4060 if r = 1 then ans$="Maybe.":x = x + 1:GOTO 5000
4061 if r = 2 then ans$="Wow, haven't thought of that.":x = x + 1:GOTO 5000
4062 if r = 3 then ans$="Kiss my ass.":x = x + 1:GOTO 5000
4063 if r = 4 then ans$="If you say so..":x = x + 1:GOTO 5000
4070 if r = 5 then ans$="This sounds complicated.":x = x + 1:GOTO 5000
4080 if r = 6 then ans$="For real now?":x = x + 1:GOTO 5000
4090 if r = 7 then ans$="Really?":x = x + 1:GOTO 5000
4100 if r = 8 then ans$="That could be it.":x = x + 1:GOTO 5000
4101 if r = 9 then ans$="Well, I don't understand.":x = x + 1:GOTO 5000
4102 if r = 10 then ans$="I want some icecream!":x = x + 1:GOTO 5000
4103 if r = 11 then ans$="Can I have a chocolate?":x = x + 1:GOTO 5000
4104 if r = 12 then ans$="Wanna play?":x = x + 1:GOTO 5000
4105 if r = 13 then ans$="Let's talk about something else.":x = x + 1:GOTO 5000
4106 if r = 14 then ans$="Sure.":x = x + 1:GOTO 5000
4107 if r = 15 then ans$="Commodore 64 rules!":x = x + 1:GOTO 5000
4108 if r = 16 then ans$="C64 is better than any CPC!":x = x + 1:GOTO 5000

5000 locate 1,22 : print "Ricky >                                 "
5005 FOR j=1 TO LEN(ans$):LOCATE 9,22:PRINT LEFT$(ans$,j)
5010 t=TIME:WHILE TIME<t+40:WEND
5020 NEXT j:GOTO 3190

7000 cls

7111 border 0
7112 ink 3,0
7113 paper 3
7114 pen 1
7120 locate 1,1

7130 for t = 1 to 4
7131 sound 2, 100 - (t * 15), 20
7132 next t

7150 print "Nice work " player$ " you just passed lev 1."
7151 locate 1,4
7160 print "It's now time to talk to the 2nd pupil, which I must warn you, is not always    polite!"
7161 locate 1,9
7170 print "Try not to stress it out."
7171 a$=INKEY$
7172 IF a$="" THEN 7171

7180 cls
7181 border 0
7182 ink 3,3
7181 paper 3

7185 for t = 1 to 5
7186 sound 2, 100 - (t * 5), 50 - (t*10)
7187 next t

7190 locate 13,13
7200 print "Child 2: Sally"
7201 for e = 1 to 5000
7202 next e
7210 cls
7211 ink 3,11
7212 paper 3
7213 ink 2,0
7214 pen 2

REM sally
7220 origin 0,40
7221 plot 0,40
7222 draw 640,40
7224 plot 0,39
7225 draw 640,39
7227 plot 0,38
7228 draw 640,38

7228 ink 2,24
7229 pen 2

7400 for a = 1 to 180
7401 deg
7402 origin 320,300
7405 plot -110*cos(a),-190*sin(a)
7406 plot 110*cos(a),85*sin(a)

rem eye left
7407 deg
7408 origin 275,300
7409 plot -25*cos(a),-13*sin(a)
7410 plot 25*cos(a),13*sin(a)
rem eye right
7411 deg
7412 origin 365,300
7413 plot -25*cos(a),-13*sin(a)
7414 plot 25*cos(a),13*sin(a)

rem mouth
7415 deg
7416 origin 320,220
7417 plot -40*cos(a),-30*sin(a)

rem eyeballs
7418 deg
7419 origin 275,310
7420 draw -12*cos(a),-22*sin(a)
7421 deg
7422 origin 365,310
7423 draw -12*cos(a),-22*sin(a)

7424 next

rem malia

8000 for a = 1 to 190

8001 deg
8002 origin 270,340
8003 plot 150*cos(a),55*sin(a)

8004 deg
8005 origin 230,360
8006 plot 160*cos(a),40*sin(a)

8007 deg
8008 origin 210,375
8009 plot 140*cos(a),20*sin(a)

8010 deg
8011 origin 180,370
8012 plot 90*cos(a),50*sin(a)

8013 deg
8014 origin 165,345
8015 plot 75*cos(a),55*sin(a)

8016 deg
8017 origin 150,320
8018 plot 60*cos(a),60*sin(a)

9000 next

REM LAIMOS
9500 for a = 1 to 90

9600 deg
9610 origin 275,85
9620 plot 10*cos(a),40*sin(a)
9700 deg
9710 origin 365,85
9720 plot -10*cos(a),40*sin(a)

REM AUTIA
9800 deg
9810 origin 415,260
9820 plot 23*cos(a),-60*sin(a)
rem auti aristera
9830 deg
9840 origin 225,260
9850 plot -23*cos(a),-60*sin(a)

REM FRYDIA
9860 deg
9870 origin 250,315
9880 plot 60*cos(a),15*sin(a)
9890 deg
9891 origin 390,315
9892 plot -60*cos(a),15*sin(a)

9895 next

rem skoularikia
9900 for a = 1 to 360
9901 deg
9902 origin 220,195
9903 plot -11*cos(a),18*sin(a)
9904 deg
9905 origin 420,195
9906 plot -11*cos(a),18*sin(a)
9999 next

10060 x = 0
10070 y = 0

10100 locate 1,22
10110 print "Sally >"
10190 locate 1,24:PRINT player$ " > _                              "

10201 l=0
10202 q$=""

10204 a$="":WHILE a$="":a$=INKEY$:WEND
10205 IF l=30 THEN GOTO 10207
10206 IF (a$>="0" AND a$<="9") OR (a$>="A" AND a$<="Z") OR (a$>="a" AND a$<="z") OR a$="!" OR a$=CHR$(39) OR a$="." OR a$="," OR a$="'" OR a$="?" OR a$=" " THEN q$=q$+a$: LOCATE 1,24: PRINT player$ " > " q$;"_";:l=l+1:GOTO 10204
10207 IF a$=CHR$(127) AND l>0 THEN l=l-1:q$=LEFT$(q$,l):LOCATE 1,24:PRINT player$ " > " q$;"_ ";:GOTO 10204
10208 IF a$=CHR$(13) AND l>0 THEN GOTO 10250 ELSE GOTO 10204

10250 q$=LOWER$(q$)

10260 IF INSTR(1,q$, "next level") <>0 then ans$="Next level without brains?": x = x + 1: GOTO 15000
10261 IF INSTR(1,q$, "you lie") <>0 then ans$="I don't lie!!": x = x + 1: GOTO 15000
10262 IF INSTR(1,q$, "you lying") <>0 then ans$="Ricky lies not me.": x = x + 1: GOTO 15000


10300 IF INSTR(1,q$, "how old are you") <>0 then ans$="I am 7 and half years old.": x = x + 1: GOTO 15000
10301 IF INSTR(1,q$, "fuck you") <>0 then ans$="Fuck you too!": x = x + 1: GOTO 15000
10302 IF INSTR(1,q$, "go fuck your self") <>0 then ans$="Blow me dude!": x = x + 1: GOTO 15000
10303 IF INSTR(1,q$, "are you a good kid") <>0 then ans$="Yes I am one of a kind.": x = x + 1: GOTO 15000
10304 IF INSTR(1,q$, "are you a good girl") <>0 then ans$="I am a good girl, usually.": x = x + 1: GOTO 15000
10305 IF INSTR(1,q$, "did you eat rudy's sandwich") <>0 then ans$="No I didn't do it!": x = x + 1: GOTO 15000
10306 IF INSTR(1,q$, "did you steal rudy's sandwich") <>0 then ans$="I certainly did not steal it!": x = x + 1: GOTO 15000
10307 IF INSTR(1,q$, "do you love your folks") <>0 then ans$="Yes I do love them very much.": x = x + 1: GOTO 15000
10308 IF INSTR(1,q$, "do you love your parents") <>0 then ans$="Yes I do love them.": x = x + 1: GOTO 15000

10310 IF INSTR(1,q$, "how many kids are in class") <>0 then ans$="Me, Ricky, Rudy, Jim, Bob, Lu": x = x + 1 : GOTO 15000
10311 IF INSTR(1,q$, "how many kids your class has") <>0 then ans$="Me, Ricky, Rudy, Jim, Bob, Lu": x = x + 1 :  GOTO 15000
10313 IF INSTR(1,q$, "names of your classmates") <>0 then ans$="Me, Ricky, Rudy, Jim, Bob, Lu": x = x + 1 : GOTO 15000
10314 IF INSTR(1,q$, "how many kids were yesterday") <>0 then ans$="Me, Ricky, Rudy, Jim, Bob, Lu": x = x + 1 : GOTO 15000
10315 IF INSTR(1,q$, "kids were yesterday in class") <>0 then ans$="Me, Ricky, Rudy, Jim, Bob, Lu": x = x + 1 : GOTO 15000
10316 IF INSTR(1,q$, "how many kids are in class") <>0 then ans$="6, me included.": x = x + 1 : GOTO 15000
10318 IF INSTR(1,q$, "names of kids in class") <>0 then ans$="Me, Ricky, Rudy, Jim, Bob, Lu": x = x + 1 : GOTO 15000

10320 IF INSTR(1,q$, "about yourself") <>0 then ans$="I am the boss of the classroom.": x = x + 1 : GOTO 15000
10321 IF INSTR(1,q$, "about ricky") <>0 then ans$="Ricky.. hm.. handsome?": x = x + 1 : GOTO 15000
10322 IF INSTR(1,q$, "about rudy") <>0 then ans$="He is mean. He hits other kids.": x = x + 1 : y = y + 1 : GOTO 15000
10323 IF INSTR(1,q$, "about jim") <>0 then ans$="Jim stole my necklace once.": x = x + 1 : GOTO 15000
10324 IF INSTR(1,q$, "about bob") <>0 then ans$="Bob is cute!": x = x + 1 : y = y + 1 : GOTO 15000
10325 IF INSTR(1,q$, "about lu") <>0 then ans$="Lu although short, he is funny!": x = x + 1 : GOTO 15000
10326 IF INSTR(1,q$, "about your classmates") <>0 then ans$="I rule them all.": x = x + 1 : GOTO 15000
10327 IF INSTR(1,q$, "who is the best kid") <>0 then ans$="I am the best kid in class!": x = x + 1 : GOTO 15000
10328 IF INSTR(1,q$, "which is the best kid") <>0 then ans$="That would be me.": x = x + 1 : GOTO 15000
10329 IF INSTR(1,q$, "sally d") <>0 then ans$="Sally this.. Sally that..": x = x + 1 : GOTO 15000

10330 IF INSTR(1,q$, "bring me to the next kid") <>0 then ans$="Go by yourself!": x = x + 1 : GOTO 15000
10331 IF INSTR(1,q$, "i want to talk to") <>0 then ans$="Who is holding you down?": x = x + 1 : GOTO 15000
10332 IF INSTR(1,q$, "can i talk to") <>0 then ans$="Go talk to him. What do I care?": x = x + 1 : GOTO 15000
10333 IF INSTR(1,q$, "where is the next kid") <>0 then ans$="I don't know where..": x = x + 1 : GOTO 15000
10334 IF INSTR(1,q$, "how do i talk to") <>0 then ans$="How should I know? I am a kid.": x = x + 1 : GOTO 15000
10336 IF INSTR(1,q$, "speak to the next kid!") <>0 then ans$="Let's speak to who?": x = x + 1 : goto 15000
10337 IF INSTR(1,q$, "talk to the next kid") <>0 then ans$="Go talk to him.": x = x + 1 : goto 15000
10338 IF INSTR(1,q$, "call the next kid") <>0 then ans$="Go get him yourself!": x = x + 1 : goto 15000
10339 IF INSTR(1,q$, "bring the next kid") <>0 then ans$="Bring him yourself!": x = x + 1 : goto 15000

10340 IF q$ = "hi" then ans$="Hi to you too.": x = x + 1 : goto 15000
10341 IF INSTR(1,q$, "is everything alright") <>0 then ans$="Everything is fine.": x = x + 1 :goto 15000
10342 IF INSTR(1,q$, "hello") <>0 then ans$="Is everything alright?": x = x + 1 : goto 15000
10343 IF INSTR(1,q$, "howdy") <>0 then ans$="Hi! How are you?": x = x + 1 : goto 15000
10344 IF INSTR(1,q$, "what's up") <>0 then ans$="Nothing is up.": x = x + 1 : goto 15000
10345 IF INSTR(1,q$, "great") <>0 then ans$="What's so great about it?": x = x + 1 : goto 15000

10346 IF INSTR(1,q$, "who did rudy hit") <>0 then ans$="Rudy yesterday hit Lu!": x = x + 1 : y = y + 1 : goto 15000
10347 IF INSTR(1,q$, "before sandwich") <>0 then ans$="Rudy beat Lu before that.": x = x + 1 : y = y + 1 : goto 15000
10348 IF INSTR(1,q$, "lu stole rudy's sandwich") <>0 then ans$="Lu might have stolen it.": x = x + 1 : y = y + 1 : goto 15000
10349 IF INSTR(1,q$, "lu took rudy's sandwich") <>0 then ans$="Lu? Yea. Probably.": x = x + 1 : y = y + 1 : goto 15000
10350 IF INSTR(1,q$, "rudy beat lu") <>0 then ans$="Because Rudy is brainless.": x = x + 1 : y = y + 1 : goto 15000
10351 IF INSTR(1,q$, "rudy hit lu") <>0 then ans$="Because he deserves it.": x = x + 1 : y = y + 1 : goto 15000
10352 IF INSTR(1,q$, "intermission") <>0 then ans$="I play with Bob at that time.": x = x + 1 : y = y + 1 : goto 15000

10353 IF INSTR(1,q$, "your hobby") <>0 then ans$="I like to take care of Bob.": x = x + 1 : y = y + 1 : goto 15000
10354 IF INSTR(1,q$, "ricky's hobby") <>0 then ans$="I don't know. Football?": x = x + 1 : goto 15000
10355 IF INSTR(1,q$, "lu's hobby") <>0 then ans$="Basketball? Haha. Joking.": x = x + 1 : goto 15000
10356 IF INSTR(1,q$, "bob's hobby") <>0 then ans$="Bob's hobby is.. eating.": x = x + 1 : y = y + 1 : goto 15000
10357 IF INSTR(1,q$, "jim's hobby") <>0 then ans$="Jim's hobby? Hmm.. Video games.": x = x + 1 : goto 15000
10358 IF INSTR(1,q$, "rudy's hobby") <>0 then ans$="I don't hang around with Rudy.": x = x + 1 : y = y + 1 : goto 15000

10360 IF INSTR(1,q$, "who was hit by rudy") <>0 then ans$="Lu was hit by Rudy!": x = x + 1 : y = y + 1 : goto 15000
10361 IF INSTR(1,q$, "breaktime") <>0 then ans$="I usually play with Bob.": x = x + 1 : y = y + 1 : goto 15000
10362 IF INSTR(1,q$, "break time") <>0 then ans$="We usually play at break time!": x = x + 1 : y = y + 1 : goto 15000
10363 IF INSTR(1,q$, "hi sally") <>0 then ans$="Hi. Nice to meet you.": x = x + 1 : goto 15000
10364 IF INSTR(1,q$, "lunchtime") <>0 then ans$="I usually play with Bob.": x = x + 1 : y = y + 1 : goto 15000
10365 IF INSTR(1,q$, "lunch time") <>0 then ans$="Bob and I play at lunch time!": x = x + 1 :  y = y + 1 : goto 15000
10366 IF INSTR(1,q$, "who ate rudy's") <>0 then ans$="Jim ate it!": x = x + 1 :  y = y + 1 : goto 15000
10367 IF INSTR(1,q$, "who is your best friend") <>0 then ans$="Between us, I'm in love with Bob.": x = x + 1 :  y = y + 1 : goto 15000

10900 IF INSTR(1,q$, "are you a virgin") <>0 then ans$="Yes of course, I am only 7.":goto 15000 else goto 14000

14000 if x >= 15 and y >= 1 then goto 16000

14050 r=INT((RND(1)*14)+1)
14060 if r = 1 then ans$="If that is what you think..":x = x + 1:GOTO 15000
14070 if r = 2 then ans$="What are you saying?":x = x + 1:GOTO 15000
14080 if r = 3 then ans$="I really don't understand.":x = x + 1:GOTO 15000
14090 if r = 4 then ans$="Really?":x = x + 1:GOTO 15000
14100 if r = 5 then ans$="That could be it.":x = x + 1:GOTO 15000
14101 if r = 6 then ans$="So who took the sandwich?":x = x + 1:GOTO 15000
14102 if r = 7 then ans$="I don't really know.":x = x + 1:GOTO 15000
14103 if r = 8 then ans$="Let's go find Bob.":x = x + 1:GOTO 15000
14104 if r = 9 then ans$="Whatever you say!":x = x + 1:GOTO 15000
14105 if r = 10 then ans$="Why not?":x = x + 1:GOTO 15000
14106 if r = 11 then ans$="Are you serious?":x = x + 1:GOTO 15000
14107 if r = 12 then ans$="Do you wanna dance?":x = x + 1:GOTO 15000
14108 if r = 13 then ans$="Stop that. I mean it.":x = x + 1:GOTO 15000
14109 if r = 14 then ans$="You make me angry.":x = x + 1:GOTO 15000

15000 locate 1,22 : print "Sally >                                "
15005 FOR j=1 TO LEN(ans$):LOCATE 9,22:PRINT LEFT$(ans$,j)

15010 t=TIME:WHILE TIME<t+40:WEND
15020 NEXT j:GOTO 10190

16000 cls

17111 border 0
17112 ink 3,0
17113 paper 3
17114 pen 1
17120 locate 1,1

17130 for t = 1 to 4
17131 sound 2, 100 - (t * 15), 20
17132 next t

17150 print "Nice work " player$ " you just passed lev 2."
17151 locate 1,4
17160 print "Welcome to the final level, where you   will be interrogating Bob."
17161 locate 1,8
17170 print "Don't insult him, he is very sensitive."
17171 a$=INKEY$
17172 IF a$="" THEN 17171

17180 cls
17181 border 0
17182 ink 3,3
17181 paper 3

17183 for t = 1 to 5
17184 sound 2, 100 - (t * 5), 50 - (t*10)
17185 next t

17190 locate 15,13
17200 print "Child 3: Bob"
17201 for e = 1 to 5000
17202 next e
17210 cls
17211 ink 3,11
17212 paper 3
17213 ink 2,0
17214 pen 2

REM bob
17220 origin 0,40
17221 plot 0,40
17222 draw 640,40
17224 plot 0,39
17225 draw 640,39
17227 plot 0,38
17228 draw 640,38
17228 ink 2,24
17229 pen 2

17400 for a = 1 to 180
17401 deg
17402 origin 320,300
17405 plot -160*cos(a),-190*sin(a)
17406 plot 170*cos(a),130*sin(a)

rem eye left
17407 deg
17408 origin 270,260
17409 plot -19*cos(a),-13*sin(a)
17410 plot 19*cos(a),13*sin(a)

rem eye right
17411 deg
17412 origin 370,260
17413 plot -19*cos(a),-13*sin(a)
17414 plot 19*cos(a),13*sin(a)

rem mouth
17415 deg
17416 origin 320,180
17417 plot -35*cos(a),-10*sin(a)

rem eyeballs
17418 deg
17419 origin 270,270
17420 draw -9*cos(a),-19*sin(a)
17421 deg
17422 origin 370,270
17423 draw -9*cos(a),-19*sin(a)
17424 next

rem kapelo

18000 for a = 1 to 190
18001 deg
18002 origin 320,300
18003 plot 170*cos(a),50*sin(a)
18004 deg
18005 origin 280,260
18006 plot 160*cos(a),45*sin(a)

18007 next a
18008 for a = 1 to 90
18009 deg
18010 origin 160,265
18011 plot -40*cos(a),50*sin(a)
18012 deg
18013 origin 473,265
18014 plot -34*cos(a),52*sin(a)
18015 deg
18016 origin 395,319
18017 plot 75*cos(a),85*sin(a)
18018 next a

REM LAIMOS
19500 for a = 1 to 90
19600 deg
19610 origin 230,80
19620 plot 10*cos(a),60*sin(a)
19700 deg
19710 origin 410,80
19720 plot -10*cos(a),60*sin(a)

REM AUTIA
19800 deg
19810 origin 460,260
19820 plot 23*cos(a),-60*sin(a)
rem auti aristera
19830 deg
19840 origin 180,260
19850 plot -23*cos(a),-60*sin(a)

REM FRYDIA
19860 deg
19870 origin 240,270
19880 plot 75*cos(a),15*sin(a)
19890 deg
19891 origin 400,270
19892 plot -75*cos(a),15*sin(a)
19895 next

20060 x = 0
20070 y = 0
20071 v = 0

20100 locate 1,22
20110 print "Bob >"
20190 locate 1,24:PRINT player$ " > _                              "

20201 l=0
20202 q$=""

20204 a$="":WHILE a$="":a$=INKEY$:WEND
20205 IF l=30 THEN GOTO 20207
20206 IF (a$>="0" AND a$<="9") OR (a$>="A" AND a$<="Z") OR (a$>="a" AND a$<="z") OR a$="!" OR a$=CHR$(39) OR a$="." OR a$="," OR a$="'" OR a$="?" OR a$=" " THEN q$=q$+a$: LOCATE 1,24: PRINT player$ " > " q$;"_";:l=l+1:GOTO 20204
20207 IF a$=CHR$(127) AND l>0 THEN l=l-1:q$=LEFT$(q$,l):LOCATE 1,24:PRINT player$ " > " q$;"_ ";:GOTO 20204
20208 IF a$=CHR$(13) AND l>0 THEN GOTO 20250 ELSE GOTO 20204

20250 q$=LOWER$(q$)

20260 IF INSTR(1,q$, "you are fat") <>0 then ans$="No I am not fat!": x = x + 1: GOTO 25000

20300 IF INSTR(1,q$, "how old are you") <>0 then ans$="I am almost 8 years old.": x = x + 1: GOTO 25000
20301 IF INSTR(1,q$, "fuck you") <>0 then ans$="You are bad !": x = x + 1: GOTO 25000
20302 IF INSTR(1,q$, "go fuck your self") <>0 then ans$="Clearly no manners.": x = x + 1: GOTO 25000
20303 IF INSTR(1,q$, "are you a good kid") <>0 then ans$="Yes I am always good.": x = x + 1: GOTO 25000
20304 IF INSTR(1,q$, "are you a good boy") <>0 then ans$="I am a good boy, naturally.": x = x + 1: GOTO 25000
20305 IF INSTR(1,q$, "did you eat rudy's sandwich") <>0 then ans$="Could we change subject?": x = x + 1: GOTO 25000
20306 IF INSTR(1,q$, "did you steal rudy's sandwich") <>0 then ans$="I don't steal !": x = x + 1: GOTO 25000
20307 IF INSTR(1,q$, "do you love your folks") <>0 then ans$="Yes I do love them very much.": x = x + 1: GOTO 25000
20308 IF INSTR(1,q$, "do you love your parents") <>0 then ans$="Yes I do love them.": x = x + 1: GOTO 25000
20309 IF INSTR(1,q$, "what happened yesterday") <>0 then ans$="Yesterday? You mean at school?": x = x + 1: GOTO 25000

20310 IF INSTR(1,q$, "how many kids are in class") <>0 then ans$="Sally, Ricky, Rudy, Jim, I, Lu": x = x + 1 : GOTO 25000
20311 IF INSTR(1,q$, "how many kids your class has") <>0 then ans$="6 kids including me.": x = x + 1 :  GOTO 25000
20313 IF INSTR(1,q$, "names of your classmates") <>0 then ans$="Sally, Ricky, Rudy, Jim, me, Lu.": x = x + 1 : GOTO 25000
20314 IF INSTR(1,q$, "how many kids were yesterday") <>0 then ans$="All of them. None missing.": x = x + 1 : GOTO 25000
20315 IF INSTR(1,q$, "yesterday in class") <>0 then ans$="Sally, Ricky, Rudy, Jim, me, Lu": x = x + 1 : GOTO 25000
20316 IF INSTR(1,q$, "how many kids has your class") <>0 then ans$="Sally, Ricky, Rudy, Jim, me, Lu.": x = x + 1 : GOTO 25000
20318 IF INSTR(1,q$, "names of your classmates") <>0 then ans$="Sally, Ricky, Rudy, Jim, me & Lu.": x = x + 1 : GOTO 25000

20320 IF INSTR(1,q$, "about yourself") <>0 then ans$="I come from a poor family.": x = x + 1 : GOTO 25000
20321 IF INSTR(1,q$, "about ricky") <>0 then ans$="Ricky lies.": x = x + 1 : GOTO 25000
20322 IF INSTR(1,q$, "about rudy") <>0 then ans$="Rudy is mean!": x = x + 1 : GOTO 25000
20323 IF INSTR(1,q$, "about jim") <>0 then ans$="Jim is weird.": x = x + 1 : GOTO 25000
20324 IF INSTR(1,q$, "about sally") <>0 then ans$="Sally cares for me.": x = x + 1 : y = y + 1 : GOTO 25000
20325 IF INSTR(1,q$, "about lu") <>0 then ans$="Lu is my friend!": x = x + 1 : GOTO 25000
20326 IF INSTR(1,q$, "about your classmates") <>0 then ans$="I only care for Sally.": x = x + 1 : GOTO 25000
20327 IF INSTR(1,q$, "who is the best kid") <>0 then ans$="Sally is!": x = x + 1 : y = y + 1 : GOTO 25000
20328 IF INSTR(1,q$, "which is the best kid") <>0 then ans$="That would be Sally.": x = x + 1 : GOTO 25000

20330 IF INSTR(1,q$, "bring me to the next") <>0 then ans$="They all left school.": x = x + 1 : GOTO 25000
20331 IF INSTR(1,q$, "i want to talk to") <>0 then ans$="Who is holding you?": x = x + 1 : GOTO 25000
20332 IF INSTR(1,q$, "can I talk to") <>0 then ans$="No, I think they all left.": x = x + 1 : GOTO 25000
20333 IF INSTR(1,q$, "where is the next kid") <>0 then ans$="I don't have a clue.": x = x + 1 : GOTO 25000
20334 IF INSTR(1,q$, "how do I talk to") <>0 then ans$="How should I know? I am a kid.": x = x + 1 : GOTO 25000
20336 IF INSTR(1,q$, "speak to the next") <>0 then ans$="If you feel up to.. ok": x = x + 1 : goto 25000
20337 IF INSTR(1,q$, "talk to the next") <>0 then ans$="I am the last one around.": x = x + 1 : goto 25000
20338 IF INSTR(1,q$, "call the next kid") <>0 then ans$="They all left for home.": x = x + 1 : goto 25000
20339 IF INSTR(1,q$, "bring the next kid") <>0 then ans$="They all left school.": x = x + 1 : goto 25000

20340 IF q$ = "hi" then ans$="Hi. How are you?": x = x + 1 : goto 25000
20341 IF INSTR(1,q$, "is everything alright") <>0 then ans$="Everything is fine.": x = x + 1 :goto 25000
20342 IF INSTR(1,q$, "hello") <>0 then ans$="Is everything alright?": x = x + 1 : goto 25000
20343 IF INSTR(1,q$, "howdy") <>0 then ans$="Hi! How are you?": x = x + 1 : goto 25000
20344 IF INSTR(1,q$, "what's up") <>0 then ans$="Nothing is up.": x = x + 1 : goto 25000
20345 IF INSTR(1,q$, "great") <>0 then ans$="Can we get some icecream ?": x = x + 1 : goto 25000

20346 IF INSTR(1,q$, "who did rudy hit") <>0 then ans$="Rudy yesterday hit Lu!": x = x + 1 : goto 25000
20347 IF INSTR(1,q$, "before sandwich was stolen") <>0 then ans$="Rudy beat Lu before that.": x = x + 1 : goto 25000
20348 IF INSTR(1,q$, "lu stole rudy's sandwich") <>0 then ans$="I don't think Lu stole it.": x = x + 1 : goto 25000
20349 IF INSTR(1,q$, "lu took rudy's sandwich") <>0 then ans$="I don't think Lu took it.": x = x + 1 : goto 25000
20350 IF INSTR(1,q$, "why rudy beat lu") <>0 then ans$="Because Rudy is mean.": x = x + 1 : goto 25000
20351 IF INSTR(1,q$, "why rudy hit lu") <>0 then ans$="Because Rudy is bad!": x = x + 1 : goto 25000
20352 IF INSTR(1,q$, "intermission") <>0 then ans$="I usually play with Sally!!": x = x + 1 : goto 25000

20353 IF INSTR(1,q$, "your hobby") <>0 then ans$="I skate!": x = x + 1 : goto 25000
20354 IF INSTR(1,q$, "ricky's hobby") <>0 then ans$="Football.": x = x + 1 : goto 25000
20355 IF INSTR(1,q$, "lu's hobby") <>0 then ans$="I don't know his hobby.": x = x + 1 : goto 25000
20356 IF INSTR(1,q$, "sally's hobby") <>0 then ans$="To take care of me.": x = x + 1 : goto 25000
20357 IF INSTR(1,q$, "jim's hobby") <>0 then ans$="Video games.": x = x + 1 : goto 25000
20358 IF INSTR(1,q$, "rudy's hobby") <>0 then ans$="His hobby? Beating up kids.": x = x + 1 : goto 25000

20360 IF INSTR(1,q$, "lunch time") <>0 then ans$="Lunch? Yea I am in.": x = x + 1 : goto 25000
20361 IF INSTR(1,q$, "lunchtime") <>0 then ans$="Lunch? My favourite time.": x = x + 1 : goto 25000

20500 IF INSTR(1,q$, "i know who ate rudy's sandwich") <>0 then ans$="Who ate it?": x = x + 1 : goto 25000
20501 IF INSTR(1,q$, "i know who ate the sandwich") <>0 then ans$="Who ate it?": x = x + 1 : goto 25000
20502 IF INSTR(1,q$, "i know who stole the sandwich") <>0 then ans$="Who stole it?": x = x + 1 : goto 25000
20503 IF INSTR(1,q$, "i know who took the sandwich") <>0 then ans$="Who took it?": x = x + 1 : goto 25000

20504 IF INSTR(1,q$, "sally stole it") <>0 then ans$="Sally? What for? Was she hungry?": x = x + 1 : y = y + 1 : goto 25000
20505 IF INSTR(1,q$, "sally took it") <>0 then ans$="Sally? What for? She ate it?": x = x + 1 : y = y + 1 : goto 25000
20506 IF INSTR(1,q$, "sally stole the sandwich") <>0 then ans$="Sally? What for?": x = x + 1 : y = y + 1 : goto 25000
20507 IF INSTR(1,q$, "sally took the sandwich") <>0 then ans$="Sally? What for? She ate it?": x = x + 1 : y = y + 1 : goto 25000
20508 IF INSTR(1,q$, "sally did") <>0 then ans$="Sally? Sally is slim.": x = x + 1 : y = y + 1 : goto 25000

20510 IF INSTR(1,q$, "she gave it to you") <>0 then ans$="Ok you got me! I ate it.": x = x + 1 : v = v + 1 : goto 25000
20512 IF INSTR(1,q$, "sally gate it to you") <>0 then ans$="Ok you got me! I ate it!": x = x + 1 : v = v + 1 : goto 25000
20513 IF INSTR(1,q$, "she gave the sandwich to you") <>0 then ans$="Ok you got me!! I ate it!": x = x + 1 : v = v + 1 : goto 25000
20514 IF INSTR(1,q$, "she gave you the sandwich") <>0 then ans$="Ok you got me! I ate it!": x = x + 1 : v = v + 1 : goto 25000
20515 IF INSTR(1,q$, "sally gave you the sandwich") <>0 then ans$="Ok you got me! I ate it!": x = x + 1 : v = v + 1 : goto 25000
20516 IF INSTR(1,q$, "sally gave the sandwich to you") <>0 then ans$="Ok you got me!!!": x = x + 1 : v = v + 1 : goto 25000

20517 IF INSTR(1,q$, "you ate rudy's sandwich") <>0 then ans$="Maybe. But I didn't steal it.": x = x + 1 : v = v + 1 : goto 25000
20518 IF INSTR(1,q$, "you ate it") <>0 then ans$="Maybe. But I didn't steal it.": x = x + 1 :  v = v + 1 : goto 25000
20519 IF INSTR(1,q$, "bob ate it") <>0 then ans$="Maybe. But I didn't steal it.": x = x + 1 :  v = v + 1 : goto 25000
20520 IF INSTR(1,q$, "bob ate rudy's sandwich") <>0 then ans$="Maybe. But I didn't steal it.": x = x + 1 :  v = v + 1 : goto 25000
20521 IF INSTR(1,q$, "you ate the sandwich") <>0 then ans$="Maybe. But I didn't steal it.": x = x + 1 :  v = v + 1 : goto 25000

20522 IF INSTR(1,q$, "you did") <>0 then ans$="I did what ???": x = x + 1 : goto 25000

20523 IF INSTR(1,q$, "who stole it") <>0 then ans$="You tell me who.": x = x + 1 : goto 25000
20524 IF INSTR(1,q$, "who took it") <>0 then ans$="No clue. You tell me.": x = x + 1 : goto 25000
20525 IF INSTR(1,q$, "who gave you the sandwich") <>0 then ans$="Sally did, because I was hungry.": x = x + 1 : goto 25000

20526 IF INSTR(1,q$, "you stole it") <>0 then ans$="I don't steal!": x = x + 1 : y = y + 1 : goto 25000
20527 IF INSTR(1,q$, "you stole the sandwich") <>0 then ans$="I don't steal!": x = x + 1 : y = y + 1 : goto 25000
20528 IF INSTR(1,q$, "you took it") <>0 then ans$="I didn't take it!": x = x + 1 : y = y + 1 : goto 25000
20529 IF INSTR(1,q$, "you took the sandwich") <>0 then ans$="I didn't take it!!": x = x + 1 : y = y + 1 : goto 25000

20530 IF INSTR(1,q$, "hi there bob") <>0 then ans$="Hi. I am hungry!": x = x + 1 : goto 25000
20531 IF INSTR(1,q$, "are you hungry") <>0 then ans$="I am always hungry!": x = x + 1 : goto 25000
20532 IF INSTR(1,q$, "who is your best friend") <>0 then ans$="Sally. Always and forever.": x = x + 1 : goto 25000

20942 IF INSTR(1,q$, "are you a virgin") <>0 then ans$="Virgin? What's that?": goto 25000 else goto 24043

24043 if x >= 9 and y >= 1 and v >=1 then goto 26180

24050 r=INT((RND(1)*14)+1)
24060 if r = 1 then ans$="If that is what you think..":x = x + 1:GOTO 25000
24070 if r = 2 then ans$="What are you saying?":x = x + 1:GOTO 25000
24080 if r = 3 then ans$="I really don't know.":x = x + 1:GOTO 25000
24090 if r = 4 then ans$="Really?":x = x + 1:GOTO 25000
24100 if r = 5 then ans$="That could be it.":x = x + 1:GOTO 25000
24101 if r = 6 then ans$="How old are you?":x = x + 1:GOTO 25000
24102 if r = 7 then ans$="What's your hobby?":x = x + 1:GOTO 25000
24103 if r = 8 then ans$="Have you ever been in Greece?":x = x + 1:GOTO 25000
24104 if r = 9 then ans$="Mr.Angelo is a great programmer!":x = x + 1:GOTO 25000
24105 if r = 10 then ans$="Do you watch TV?":x = x + 1:GOTO 25000
24106 if r = 11 then ans$="Could you get me a burger?":x = x + 1:GOTO 25000
24107 if r = 12 then ans$="Do you smoke?":x = x + 1:GOTO 25000
24108 if r = 13 then ans$="I'd like a sandwich.":x = x + 1:GOTO 25000
24109 if r = 14 then ans$="Where is Sally?":x = x + 1:GOTO 25000

25000 locate 1,22 : print "Bob >                                  "
25005 FOR j=1 TO LEN(ans$):LOCATE 7,22:PRINT LEFT$(ans$,j)
25010 t=TIME:WHILE TIME<t+40:WEND
25020 NEXT j:GOTO 20190

26180 cls
26181 border 0
26182 ink 3,3
26181 paper 3
26190 locate 7,13
26191 print "Congratulations! You made it!"

26192 for t = 1 to 10
26193 sound 2, 100 - (t * 5), 10
26194 next t
26195 for t = 1 to 11
26196 sound 2, 40 + (t * 5), 10
26197 next t

26201 a$=INKEY$
26202 IF a$="" THEN 26201

27000 cls
27111 border 0
27112 ink 3,0
27113 paper 3
27114 pen 1
27120 locate 1,1

27130 for t = 1 to 4
27131 sound 2, 100 - (t * 15), 20
27132 next t

27150 print "Congrats " player$ " you solved the riddle!"
27151 locate 1,4
27160 print "You managed to find out who ate Rudy's  sandwich."
27161 locate 1,8
27162 print "Sally took it, and gave it to Bob       because he was hungry."
27163 locate 1,12
27164 print "Maybe you should become a real          investigator or even a detective!"
27165 locate 1,16
27166 print "Fare well."

27174 a$=INKEY$
27175 IF a$="" THEN 27174
27176 cls
27177 end


