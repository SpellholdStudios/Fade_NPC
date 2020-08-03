
BEGIN E3FAD25J

////////////////////////////////////////////////
///////////////INTERJECTIONS////////////////////
////////////////////////////////////////////////

// Illasera

INTERJECT_COPY_TRANS ILLASERA 1 E3FadeIlla /*~So I have found you at last!  It was an effort to track you down, <CHARNAME>, in these woods.  Too many old wards for my liking...but here you are.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4835
== ILLASERA IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4836
END


// Sarevok (In Pocket Plane)
INTERJECT_COPY_TRANS SAREV25A 1 E3FadePPSarevok01 /*~So.  You have finally arrived.  I have been waiting for you.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4837
END

// Il-Khan Bullies (Saradush)
INTERJECT_COPY_TRANS SARBUL05 1 E3FadeBully /* ~Figures... you find elves, you find elf lovers!  Mind your own business and you won't get hurt.~ */
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4838
END


//Kiser Jhaeri

INTERJECT_COPY_TRANS SARKIS01 9 E3FadeKiser /*~A sorrowing circumstance, to be sure.  Who could have conjectured that Mateo was a traitor?~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4839
END

//Ardic Santele

INTERJECT_COPY_TRANS SARSON01 2 E3FadeArdic /*~Yes, I am Ardic Santele.  I never thought I would see the light of day again!~*/
== E3FAD25J IF ~Dead("sarkis01") InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4840
END

/*
//Volo (Tankard Tree Inn)

INTERJECT_COPY_TRANS SARVOLO 15 E3FadeVolo  
== SARVOLO IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
~The indomitable Fade, with a fiery temper to match her fiery hair, continues to be one of <CHARNAME>'s most loyal and stalwart companions.~
END

INTERJECT_COPY_TRANS SARVOLO 15 E3FadeVolo  
== SARVOLO IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
~The lovely Fade, with a fiery temper to match her fiery hair, stands by her beloved <CHARNAME>'s side throughout his journeys.~
END
*/

// Hectan (Lazarus Stolen Spellbook Quest)

INTERJECT_COPY_TRANS SARTHF1 2 E3FadeBookThief /*~I see where this is going!  Well, Lazarus is barking up the wrong tree!  I was at the Tankard Tree all night long... and I have witnesses to prove it!~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4841
== SARTHF1 IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4842
END

// Tazit (Orphan in Saradush)

INTERJECT_COPY_TRANS ORPHAN1 1 E3FadeOrphan1 /*~Is you a Bhaalspawn?!  Please don't eat me!  Daddy said Bhaalspawns eat little boys!  *sob*~ */
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4843
END

INTERJECT_COPY_TRANS ORPHAN1 4 E3FadeOrphan2 /*~Daddy got hit by the fire and fell down.  I can't wake him up, no matter what.  Please help my daddy.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4844
END

// Phlydian (Vampire in Saradush Prison)
INTERJECT_COPY_TRANS SARVAM01 2 E3FadeVamp01 /* ~You... you are a powerful one of your kind.  I can smell the murder in your heart.  You shall never let us live, I would think.~ */
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4845
END

//Melissan (after Gromnir's death)

INTERJECT_COPY_TRANS SARMEL01 34 E3FadeMel /*~Gromnir!  <CHARNAME>!  Lay aside your weapons!  We must work together to...  No!  I... I see I am too late to stop the bloodshed.  You have slain Gromnir and many other Bhaalspawn, as well.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4846
== SARMEL01 IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4847
END


//Nyalee

INTERJECT_COPY_TRANS HGNYA01 9 E3FadeNya1 /*~It is the boy...that traitorous fool of a half-giant boy of mine.  You come because of Yaga-Shura!  My boy has been a pain for you and I both, and you wish his blood, yes?~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4848
END

INTERJECT_COPY_TRANS HGNYA01 14 E3FadeNya2 /*~The boy has removed his heart, and he will keep it afired and bathed in magical flames.  While his heart burns, no harm may come to Yaga-Shura.  No death may come until his heart is quenched!~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4849
END


//Yaga's concubine

INTERJECT_COPY_TRANS YAGCON 0 E3FadeConc1 /*~You there, <RACE>!  Release me from these chains!~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4850
END

INTERJECT_COPY_TRANS YAGCON 5 E3FadeConc2 /*~Wait!  Wait.  I have information.  Release me and I will tell you what I know about the master of this place - the fire giant Yaga Shura.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4851
END

EXTEND_BOTTOM YAGCON 6
IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID) Global("E3FadeAndConcubine","GLOBAL",0)~ THEN EXTERN E3FAD25J E3FadeConc3
END

CHAIN E3FAD25J E3FadeConc3
@4852
== E3FAD25J @4853
== YAGCON @4854
== YAGCON @4855
== E3FAD25J @4856
== YAGCON @4857
== E3FAD25J @4858
== YAGCON @4859
== YAGCON @4860
== E3FAD25J @4861
== YAGCON @4862
== E3FAD25J @4863
==YAGCON @4864
DO ~AddXP2DA("Plot14A") DestroyItem("chains") EscapeArea()~
== E3FAD25J @4865
END
IF~~THEN REPLY @4866 EXTERN E3FAD25J E3FadeConc3-1
IF~~THEN REPLY @4867 EXTERN E3FAD25J E3FadeConc3-2
IF~~THEN REPLY @4868 EXTERN E3FAD25J E3FadeConc3-3

CHAIN E3FAD25J E3FadeConc3-1
@4869
DO ~SetGlobal("E3FadeAndConcubine","GLOBAL",1)~ EXIT

CHAIN E3FAD25J E3FadeConc3-2
@4870
DO ~SetGlobal("E3FadeAndConcubine","GLOBAL",1)~ EXIT

CHAIN E3FAD25J E3FadeConc3-3
@4871
DO ~SetGlobal("E3FadeAndConcubine","GLOBAL",1)~ EXIT


// Yaga-Shura

INTERJECT_COPY_TRANS YAGA01 4 E3FadeYaga01 /*~What...?!  No!  No, this cannot be!  I...I am wounded!!~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4872
== YAGA01 IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4873
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4874
END


// Balthazar (Amkethran)
INTERJECT_COPY_TRANS BALTH 3 E3FadeBalth01 /*~Melissan has already left the village, and did not say where she was going.  She has left with me directions for you to reach these...enclaves...she mentioned.  Is this what you expected?~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4875
END

// Marlowe (Amkethran)
INTERJECT_COPY_TRANS MARLOWE 1 E3FadeMarlowe1 /*~Excuse me, I... I do not mean to be rude... but you *are* one of the strangers that all the locals have been talking about, aren't you?  An adventurer from the north?~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4876
END

INTERJECT_COPY_TRANS MARLOWE 18 E3FadeMarlowe2 /*~A lich, my <LADYLORD>.  A powerful one.  In Calimshan, there are many strange wonders of magic, and Vongoethe is not out of place.  It is he who has chased us here, hunting us mercilessly.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4877
END


//Elminster (Balthazar Plot)

INTERJECT_COPY_TRANS AMELM01 13 E3FadeElmToB1 /*~As I understand it, Havarian has been into the monastery several times up until now.  He may be able to help you once again, if you're willing to look for his aid.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4878
END


//Saemon Havarian (Balthazar Plot)

INTERJECT_COPY_TRANS AMSAEMON 13 E3FadeSaemon1 /*~I've done only what I've had to, in the past.  I may owe you for my unfortunate rudeness, perhaps, but overall you and I are pretty even, <CHARNAME>.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4879
END


//Draconis (Abazigal Plot)

INTERJECT_COPY_TRANS BAZDRA01 2 E3FadeDraconis1 /*~No... I see I am wrong.  You are not brothers of the tattooed one.  *sniff*  I smell the taint of Bhaal on you.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4880
END


//Dying Monk (Abazigal Plot)

INTERJECT_COPY_TRANS BAZMONK 1 E3FadeMonk1 /*~Don't touch me with your scaly claws! *cough* ... no more torture... I beg you.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4881
END


//Iycanth the Mad (Abazigal Plot)

INTERJECT_COPY_TRANS BAZEYE01 2 E3FadeEyes1 /*~Well, I am Iycanth the Enlightened, most favored wizard of Lord Abazigal, ruler of Toril! These lovely creatures are my latest experiment and most trusted friends.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4882
END


//Captain Egeissag (Sendai Plot)

INTERJECT_COPY_TRANS SENGUA03 1 E3FadeBeh1 /*~So you are the one who has caused so much trouble...  I must admit, I am not impressed.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4883
END


//Beholder (Sendai Plot)

INTERJECT_COPY_TRANS SENBEH01 4 E3FadeBeh1 /*~Ahhh...and so it ends.  And so does my service with this particular drow dolt.  I mean, what's with these drow?  Have they nothing better to do than summon me for their stupid tasks?~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4884
== SENBEH01 IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4885
END


//Odren (Watcher's Keep)

INTERJECT_COPY_TRANS GORODR1 11 E3FadeOdren1 /* ~That day has come, <CHARNAME>.  The great evil struggles within, and has infected the Watcher's Keep to the point where we cannot bypass the creatures and foul magic that blocks our path.~ */
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4886
END


//Chromatic Demon (Watcher's Keep)

INTERJECT_COPY_TRANS GORCHR 1 E3FadeChrDemon1 /*~Hmmm... sounds like you have been tricked into doing Helm's dirty work.  Looks like we are both unwilling participants in this little drama.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4887
== GORCHR IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4888
END


//Yakman (Watcher's Keep)

INTERJECT_COPY_TRANS GORMAD1 0 E3FadeYakman1 /*~Wh-what?!  Yakman... Yakman sees people before him... but they must be illusions!  Yes, Yakman is seeing illusions!  Delusionary Yakman!~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4889
END


//Succubus (Watcher's Keep)

INTERJECT_COPY_TRANS GORSUC01 0 E3FadeSucc01 /*~Ahhh, look here, dear ladies.  Yet another hapless wanderer, drifting through these endless portals.  Is it lost, do you think?  Shall we ask it?~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4890
== GORSUC01 IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4891
END

//Carsten's Apprentice (Watcher's Keep)

INTERJECT_COPY_TRANS GORAPR 16 E3FadeCar1 /*~I am beyond your power to either help or harm.  (cough)  The tortures of the illithid cannot be undone.  I... embrace the darkness.~*/
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4892
== GORAPR IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@879
END


//Demogorgon (Watcher's Keep)

INTERJECT_COPY_TRANS GORDEMO 1 E3FadeDemo1 /* ~You do not see anything physical within the chamber...but you feel its presence all around you.  A phantasmal hand brushes your cheek, a curious gesture that startles you and is gone just as quickly.~ */
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4893
END


/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////

APPEND E3FAD25J

//Saradush, post tavern outburst
IF ~AreaCheck("AR5000")
Global("E3TAVERNOUTBURSTTALK","GLOBAL",1)~ THEN BEGIN posttavernoutburst_start
SAY @4894
=
@4895
IF ~~ THEN REPLY @4896 DO ~SetGlobal("E3TAVERNOUTBURSTTALK","GLOBAL",2)~ GOTO posttavernoutburst_together
IF ~~ THEN REPLY @4897 DO ~SetGlobal("E3TAVERNOUTBURSTTALK","GLOBAL",2)~ GOTO posttavernoutburst_careful
IF ~~ THEN REPLY @4898 DO ~SetGlobal("E3TAVERNOUTBURSTTALK","GLOBAL",2)~ GOTO posttavernoutburst_try
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4899 DO ~SetGlobal("E3TAVERNOUTBURSTTALK","GLOBAL",2)~ GOTO posttavernoutburst_be
END

IF ~~ THEN BEGIN posttavernoutburst_together
SAY @4900
IF ~~ THEN DO ~MakeUnselectable(0)~ EXIT
END

IF ~~ THEN BEGIN posttavernoutburst_careful
SAY @4901
=
@4902
IF ~~ THEN DO ~MakeUnselectable(0)~ EXIT
END

IF ~~ THEN BEGIN posttavernoutburst_try
SAY @4903
=
@4904
IF ~~ THEN DO ~MakeUnselectable(0)~ EXIT
END

IF ~~ THEN BEGIN posttavernoutburst_be
SAY @4905
=
@4906
IF ~~ THEN DO ~MakeUnselectable(0)~ EXIT
END

//Post oasis battle
IF ~InParty(Myself)
GlobalGT("TethyrBattleStart","GLOBAL",0)
Global("E3OASISTALK","LOCALS",1)
AreaCheck("AR6300")
See(Player1)
CombatCounter(0)
!See([ENEMY])
!Range([NEUTRAL],20)~ THEN BEGIN fadeoasistalk_start
SAY @4907
IF ~~ THEN REPLY @4908 DO ~SetGlobal("E3OASISTALK","LOCALS",2)~ GOTO fadeoasistalk_before
IF ~~ THEN REPLY @4909 DO ~SetGlobal("E3OASISTALK","LOCALS",2)~ GOTO fadeoasistalk_good
IF ~~ THEN REPLY @4910 DO ~SetGlobal("E3OASISTALK","LOCALS",2)~ GOTO fadeoasistalk_die
IF ~~ THEN REPLY @4911 DO ~SetGlobal("E3OASISTALK","LOCALS",2)~ GOTO fadeoasistalk_reason
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3FADEISPREGNANT","GLOBAL",1)
!Global("E3FADENOTPREGNANT","GLOBAL",1)~ THEN REPLY @4912 DO ~SetGlobal("E3OASISTALK","LOCALS",2)~ GOTO fadeoasistalk_vulnerable
END

IF ~~ THEN BEGIN fadeoasistalk_before
SAY @4913
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4914 GOTO fadeoasistalk_conclusion
IF ~~ THEN REPLY @4915 GOTO fadeoasistalk_good
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4916 GOTO fadeoasistalk_you
IF ~~ THEN REPLY @4917 GOTO fadeoasistalk_reason
IF ~~ THEN REPLY @4918 GOTO fadeoasistalk_die
END

IF ~~ THEN BEGIN fadeoasistalk_good
SAY @4919
=
@4920
IF ~~ THEN REPLY @4921 GOTO fadeoasistalk_foe
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4922 GOTO fadeoasistalk_knowledge_1
IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4922 GOTO fadeoasistalk_knowledge_2
IF ~~ THEN REPLY @4923 GOTO fadeoasistalk_reason
END

IF ~~ THEN BEGIN fadeoasistalk_die
SAY @4924
IF ~~ THEN REPLY @4925 GOTO fadeoasistalk_path
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4926 GOTO fadeoasistalk_slain
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4927 GOTO fadeoasistalk_honest
IF ~~ THEN REPLY @4928 GOTO fadeoasistalk_on
END

IF ~~ THEN BEGIN fadeoasistalk_reason
SAY @4929
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4930 GOTO fadeoasistalk_better_1
IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4930 GOTO fadeoasistalk_better_2
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4916 GOTO fadeoasistalk_you
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4931 GOTO fadeoasistalk_knowledge_1
IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4931 GOTO fadeoasistalk_knowledge_2
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4932 GOTO fadeoasistalk_despondent_1
IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4932 GOTO fadeoasistalk_despondent_2
END

IF ~~ THEN BEGIN fadeoasistalk_vulnerable
SAY @4933
IF ~~ THEN REPLY @4934 GOTO fadeoasistalk_you
IF ~~ THEN REPLY @4935 GOTO fadeoasistalk_harm
IF ~~ THEN REPLY @4936 GOTO fadeoasistalk_slain
END

IF ~~ THEN BEGIN fadeoasistalk_conclusion
SAY @4937
IF ~~ THEN REPLY @4938 GOTO fadeoasistalk_oppose
IF ~~ THEN REPLY @4939 GOTO fadeoasistalk_deal
IF ~~ THEN REPLY @4940 GOTO fadeoasistalk_true
END

IF ~~ THEN BEGIN fadeoasistalk_you
SAY @4941
=
@4942
IF ~~ THEN REPLY @4938 GOTO fadeoasistalk_oppose
IF ~~ THEN REPLY @4940 GOTO fadeoasistalk_true
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @4943 GOTO fadeoasistalk_specific
END

IF ~~ THEN BEGIN fadeoasistalk_foe
SAY @4944
=
@4945
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_knowledge_1
SAY @4946
IF ~~ THEN REPLY @4947 GOTO fadeoasistalk_you
IF ~~ THEN REPLY @4948 GOTO fadeoasistalk_despondent_1
END

IF ~~ THEN BEGIN fadeoasistalk_knowledge_2
SAY @4949
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_path
SAY @4950
=
@4951
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_slain
SAY @4952
=
@4953
IF ~~ THEN REPLY @4954 GOTO fadeoasistalk_frighten
IF ~~ THEN REPLY @4955 GOTO fadeoasistalk_dont
IF ~~ THEN REPLY @4956 GOTO fadeoasistalk_destroy
END

IF ~~ THEN BEGIN fadeoasistalk_honest
SAY @4957
=
@4958
IF ~~ THEN REPLY @4959 GOTO fadeoasistalk_and
IF ~~ THEN REPLY @4960 GOTO fadeoasistalk_angry
IF ~~ THEN REPLY @4961 GOTO fadeoasistalk_on
END

IF ~~ THEN BEGIN fadeoasistalk_on
SAY @4962
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_better_1
SAY @4963
=
@4964
IF ~~ THEN REPLY @4965 GOTO fadeoasistalk_promise
IF ~~ THEN REPLY @4940 GOTO fadeoasistalk_true
IF ~Global("E3FADEISPREGNANT","GLOBAL",1)
!Global("E3FADENOTPREGNANT","GLOBAL",1)~ THEN REPLY @4966 GOTO fadeoasistalk_tell
END

IF ~~ THEN BEGIN fadeoasistalk_better_2
SAY @4967
=
@4968
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_despondent_1
SAY @4969
=
@4964
IF ~~ THEN REPLY @4965 GOTO fadeoasistalk_promise
IF ~~ THEN REPLY @4940 GOTO fadeoasistalk_true
IF ~Global("E3FADEISPREGNANT","GLOBAL",1)
!Global("E3FADENOTPREGNANT","GLOBAL",1)~ THEN REPLY @4966 GOTO fadeoasistalk_tell
END

IF ~~ THEN BEGIN fadeoasistalk_despondent_2
SAY @4970
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_harm
SAY @4971
=
@4972
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4973 GOTO fadeoasistalk_conclusion
IF ~~ THEN REPLY @4915 GOTO fadeoasistalk_good
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4916 GOTO fadeoasistalk_you
IF ~~ THEN REPLY @4917 GOTO fadeoasistalk_reason
END

IF ~~ THEN BEGIN fadeoasistalk_oppose
SAY @4952
=
@4953
IF ~~ THEN REPLY @4954 GOTO fadeoasistalk_frighten
IF ~~ THEN REPLY @4955 GOTO fadeoasistalk_dont
IF ~~ THEN REPLY @4956 GOTO fadeoasistalk_destroy
END

IF ~~ THEN BEGIN fadeoasistalk_deal
SAY @4974
=
@4942
IF ~~ THEN REPLY @4938 GOTO fadeoasistalk_oppose
IF ~~ THEN REPLY @4940 GOTO fadeoasistalk_true
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @4943 GOTO fadeoasistalk_specific
END

IF ~~ THEN BEGIN fadeoasistalk_true
SAY @4975
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_specific
SAY @4976
IF ~~ THEN REPLY @4977 GOTO fadeoasistalk_do
IF ~~ THEN REPLY @4978 GOTO fadeoasistalk_while
IF ~~ THEN REPLY @4979 GOTO fadeoasistalk_forward
END

IF ~~ THEN BEGIN fadeoasistalk_frighten
SAY @4980
=
@4981
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_dont
SAY @4982
=
@4981
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_destroy
SAY @4983
=
@4984
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_and
SAY @4985
=
@4953
IF ~~ THEN REPLY @4954 GOTO fadeoasistalk_frighten
IF ~~ THEN REPLY @4955 GOTO fadeoasistalk_dont
IF ~~ THEN REPLY @4986 GOTO fadeoasistalk_destroy
END

IF ~~ THEN BEGIN fadeoasistalk_angry
SAY @4987
=
@4984
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_promise
SAY @4988
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_tell
SAY @4989
=
@4990
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_do
SAY @4991
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_while
SAY @4992
=
@4993
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeoasistalk_forward
SAY @4994
IF ~~ THEN EXIT
END

IF ~Global("E3BABYTAKECARE","LOCALS",1)
Global("E3BABYANNOUNCE","LOCALS",1)
NumInPartyGT(2)
See(Player1)
CombatCounter(0)~ THEN BEGIN babyannounce_start
SAY @4995
IF ~InParty("Imoen2")~ THEN DO ~SetGlobal("E3BABYANNOUNCE","LOCALS",2)~ EXTERN IMOEN25J babyannounce_imoen_1
IF ~!InParty("Imoen2")
InParty("Keldorn")~ THEN DO ~SetGlobal("E3BABYANNOUNCE","LOCALS",2)~ EXTERN KELDO25J babyannounce_keldorn_1
IF ~!InParty("Imoen2")
!InParty("Keldorn")
InParty("Jaheira")~ THEN DO ~SetGlobal("E3BABYANNOUNCE","LOCALS",2)~ EXTERN JAHEI25J babyannounce_jaheira_1
IF ~!InParty("Imoen2")
!InParty("Keldorn")
!InParty("Jaheira")~ THEN REPLY @4996 DO ~SetGlobal("E3BABYANNOUNCE","LOCALS",2)~ GOTO babyannounce_condition
IF ~!InParty("Imoen2")
!InParty("Keldorn")
!InParty("Jaheira")~ THEN REPLY @4997 DO ~SetGlobal("E3BABYANNOUNCE","LOCALS",2)~ GOTO babyannounce_plan_1
IF ~!InParty("Imoen2")
!InParty("Keldorn")
!InParty("Jaheira")~ THEN REPLY @4998 DO ~SetGlobal("E3BABYANNOUNCE","LOCALS",2)~ GOTO babyannounce_safe
END

IF ~~ THEN BEGIN babyannounce_sick
SAY @4999
IF ~!InParty("Imoen2")~ THEN REPLY @4996 GOTO babyannounce_condition
IF ~InParty("Imoen2")~ THEN REPLY @4996 EXTERN IMOEN25J babyannounce_imoen_2
IF ~!InParty("Imoen2")
!InParty("Edwin")~ THEN REPLY @4997 GOTO babyannounce_plan_1
IF ~InParty("Imoen2")~ THEN REPLY @4997 EXTERN IMOEN25J babyannounce_imoen_3
IF ~!InParty("Imoen2")
InParty("Edwin")~ THEN REPLY @4997 EXTERN EDWIN25J babyannounce_edwin_1
IF ~!InParty("Imoen2")~ THEN REPLY @4998 GOTO babyannounce_safe
IF ~InParty("Imoen2")~ THEN REPLY @4998 EXTERN IMOEN25J babyannounce_imoen_4
END

IF ~~ THEN BEGIN babyannounce_condition
SAY @5000
IF ~~ THEN REPLY @5001 GOTO babyannounce_right
IF ~~ THEN REPLY @5002 GOTO babyannounce_later
IF ~~ THEN REPLY @5003 GOTO babyannounce_benefit
END

IF ~~ THEN BEGIN babyannounce_plan_1
SAY @5004
IF ~~ THEN REPLY @5001 GOTO babyannounce_right
IF ~~ THEN REPLY @5002 GOTO babyannounce_later
IF ~~ THEN REPLY @5003 GOTO babyannounce_benefit
END

IF ~~ THEN BEGIN babyannounce_plan_2
SAY @5005
IF ~~ THEN REPLY @5001 GOTO babyannounce_right
IF ~~ THEN REPLY @5002 GOTO babyannounce_later
IF ~~ THEN REPLY @5003 GOTO babyannounce_benefit
END

IF ~~ THEN BEGIN babyannounce_plan_3
SAY @5006
IF ~~ THEN REPLY @5001 GOTO babyannounce_right
IF ~~ THEN REPLY @5002 GOTO babyannounce_later
IF ~~ THEN REPLY @5003 GOTO babyannounce_benefit
END

IF ~~ THEN BEGIN babyannounce_safe
SAY @5007
IF ~~ THEN REPLY @5001 GOTO babyannounce_right
IF ~~ THEN REPLY @5002 GOTO babyannounce_later
IF ~~ THEN REPLY @5003 GOTO babyannounce_benefit
END

IF ~~ THEN BEGIN babyannounce_right
SAY @5008
IF ~~ THEN REPLY @5009 GOTO babyannounce_thankyou
IF ~~ THEN REPLY @5010 GOTO babyannounce_really
IF ~~ THEN REPLY @5011 GOTO babyannounce_risk
END

IF ~~ THEN BEGIN babyannounce_later
SAY @5012
IF ~~ THEN REPLY @5013 GOTO babyannounce_thankyou
IF ~~ THEN REPLY @5014 GOTO babyannounce_really
IF ~~ THEN REPLY @5015 GOTO babyannounce_risk
END

IF ~~ THEN BEGIN babyannounce_benefit
SAY @5016
IF ~~ THEN REPLY @5017 GOTO babyannounce_thankyou
IF ~~ THEN REPLY @5018 GOTO babyannounce_really
IF ~~ THEN REPLY @5019 GOTO babyannounce_risk
END

//Flirts
IF ~Global("E3DISABLEFLIRTS","GLOBAL",0)
IsGabber(Player1)
CombatCounter(0)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN BEGIN fadeflirtbasetob
SAY @5020
IF ~Global("E3FADEISPREGNANT","GLOBAL",1)
!Global("E3FADENOTPREGNANT","GLOBAL",1)
GlobalGT("E3BABYTALK","GLOBAL",1)
Global("E3BABYTAKECARE","LOCALS",0)~ THEN REPLY @5021 DO ~SetGlobal("E3BABYTAKECARE","LOCALS",1)~ GOTO babytakecare_start
IF ~Global("E3ENGAGED","GLOBAL",0)
Global("E3PROPOSE","LOCALS",0)
OR(4)
PartyHasItem("E3RING01")
PartyHasItem("E3RING02")
PartyHasItem("E3RING03")
PartyHasItem("E3RING04")~ THEN REPLY @5022 DO ~SetGlobal("E3PROPOSE","LOCALS",1)~ GOTO propose_start
IF ~RandomNum(4,1)~ THEN REPLY @4435 GOTO kiss1
IF ~RandomNum(4,2)~ THEN REPLY @4435 GOTO kiss2
IF ~RandomNum(4,3)~ THEN REPLY @4435 GOTO kiss1
IF ~RandomNum(4,4)~ THEN REPLY @4435 GOTO kiss2
IF ~RandomNum(4,1)~ THEN REPLY @4436 GOTO cuddle1
IF ~RandomNum(4,2)~ THEN REPLY @4436 GOTO cuddle2
IF ~RandomNum(4,3)~ THEN REPLY @4436 GOTO cuddle1
IF ~RandomNum(4,4)~ THEN REPLY @4436 GOTO cuddle2
IF ~RandomNum(4,1)~ THEN REPLY @4437 GOTO checkmeout1
IF ~RandomNum(4,2)~ THEN REPLY @4437 GOTO checkmeout2
IF ~RandomNum(4,3)~ THEN REPLY @4437 GOTO checkmeout3
IF ~RandomNum(4,4)~ THEN REPLY @4437 GOTO checkmeout1
IF ~~ THEN REPLY @4438 GOTO doyouloveme1
IF ~HPPercentLT("E3Fade",100)
HPPercentGT("E3Fade",25)
RandomNum(4,1)~ THEN REPLY @4439 GOTO youarehurt1
IF ~HPPercentLT("E3Fade",100)
HPPercentGT("E3Fade",25)
RandomNum(4,2)~ THEN REPLY @4439 GOTO youarehurt2
IF ~HPPercentLT("E3Fade",100)
HPPercentGT("E3Fade",25)
RandomNum(4,3)~ THEN REPLY @4439 GOTO youarehurt3
IF ~HPPercentLT("E3Fade",100)
HPPercentGT("E3Fade",25)
RandomNum(4,4)~ THEN REPLY @4439 GOTO youarehurt1
IF ~HPPercentLT("E3Fade",26)~ THEN REPLY @4439 GOTO youarehurt4
IF ~RandomNum(4,1)~ THEN REPLY @4440 GOTO iloveyou1
IF ~RandomNum(4,2)~ THEN REPLY @4440 GOTO iloveyou2
IF ~RandomNum(4,3)~ THEN REPLY @4440 GOTO iloveyou1
IF ~RandomNum(4,4)~ THEN REPLY @4440 GOTO iloveyou2
IF ~RandomNum(4,1)~ THEN REPLY @4441 GOTO getherenow1
IF ~RandomNum(4,2)~ THEN REPLY @4441 GOTO getherenow2
IF ~RandomNum(4,3)~ THEN REPLY @4441 GOTO getherenow1
IF ~RandomNum(4,4)~ THEN REPLY @4441 GOTO getherenow2
IF ~RandomNum(4,1)~ THEN REPLY @4442 GOTO honeykitten1
IF ~RandomNum(4,2)~ THEN REPLY @4442 GOTO honeykitten2
IF ~RandomNum(4,3)~ THEN REPLY @4442 GOTO honeykitten1
IF ~RandomNum(4,4)~ THEN REPLY @4442 GOTO honeykitten2
IF ~RandomNum(4,1)~ THEN REPLY @4443 GOTO tracetattoo1
IF ~RandomNum(4,2)~ THEN REPLY @4443 GOTO tracetattoo2
IF ~RandomNum(4,3)~ THEN REPLY @4443 GOTO tracetattoo1
IF ~RandomNum(4,4)~ THEN REPLY @4443 GOTO tracetattoo2
IF ~RandomNum(4,1)~ THEN REPLY @4444 GOTO poketongue1
IF ~RandomNum(4,2)~ THEN REPLY @4444 GOTO poketongue2
IF ~RandomNum(4,3)~ THEN REPLY @4444 GOTO poketongue1
IF ~RandomNum(4,4)~ THEN REPLY @4444 GOTO poketongue2
IF ~~ THEN REPLY @157 EXIT
END


IF ~~ THEN BEGIN tracetattoo1
SAY @4492
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tracetattoo2
SAY @4493
IF ~~ THEN REPLY @4494 GOTO tracetattoo2_face
IF ~~ THEN REPLY @4495 GOTO tracetattoo2_accentuate
END

IF ~~ THEN BEGIN tracetattoo2_face
SAY @4496
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tracetattoo2_accentuate
SAY @4497 = @4498
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN poketongue1
SAY @4499
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN poketongue2
SAY @4500
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN youarehurt1
SAY @4467
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN youarehurt2
SAY @4468
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN youarehurt3
SAY @4469
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN youarehurt4
SAY @4470
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN iloveyou1
SAY @4471
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN iloveyou2
SAY @4472
IF ~~ THEN REPLY @4473 GOTO iloveyou2_nothing
IF ~~ THEN REPLY @4474 GOTO iloveyou2_excuse
END

IF ~~ THEN BEGIN iloveyou2_nothing
SAY @4475
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN iloveyou2_excuse
SAY @4476
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN getherenow1
SAY @4477
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN getherenow2
SAY @4478
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN honeykitten1
SAY @4479
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN honeykitten2
SAY @4480
IF ~~ THEN REPLY @4481 GOTO honeykitten2_terrible
IF ~~ THEN REPLY @4482 GOTO honeykitten2_cheeky
END

IF ~~ THEN BEGIN honeykitten2_terrible
SAY @4483
IF ~~ THEN REPLY @4484 GOTO honeykitten2_think
END

IF ~~ THEN BEGIN honeykitten2_think
SAY @4485
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN honeykitten2_cheeky
SAY @4486
IF ~~ THEN REPLY @4487 GOTO honeykitten2_filty
IF ~~ THEN REPLY @4488 GOTO honeykitten2_deserve
END

IF ~~ THEN BEGIN honeykitten2_filty
SAY @4489 = @4490
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN honeykitten2_deserve
SAY @4491
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN doyouloveme1
SAY @4456
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kiss1
SAY @4448
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kiss2
SAY @4449
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cuddle1
SAY @4450
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cuddle2
SAY @4451
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN checkmeout1
SAY @4452
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN checkmeout2
SAY @4453
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN checkmeout3
SAY @4454 = @4455
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN babytakecare_start
SAY @5023
IF ~~ THEN REPLY @5024 GOTO babytakecare_hurt
IF ~~ THEN REPLY @5025 GOTO babytakecare_lose
IF ~~ THEN REPLY @5026 GOTO babytakecare_fighting
END

IF ~~ THEN BEGIN babytakecare_hurt
SAY @5027
=
@5028
IF ~~ THEN REPLY @5029 GOTO babytakecare_gut
IF ~~ THEN REPLY @5030 GOTO babytakecare_battle
IF ~~ THEN REPLY @5031 GOTO babytakecare_safe
END

IF ~~ THEN BEGIN babytakecare_lose
SAY @5032
IF ~~ THEN REPLY @5033 GOTO babytakecare_care
IF ~~ THEN REPLY @5034 GOTO babytakecare_gut
IF ~~ THEN REPLY @5035 GOTO babytakecare_battle
IF ~~ THEN REPLY @5031 GOTO babytakecare_safe
END

IF ~~ THEN BEGIN babytakecare_fighting
SAY @5036
IF ~~ THEN REPLY @5037 GOTO babytakecare_hard
IF ~~ THEN REPLY @5038 GOTO babytakecare_lose
IF ~~ THEN REPLY @5039 GOTO babytakecare_battle
IF ~~ THEN REPLY @5031 GOTO babytakecare_safe
END

IF ~~ THEN BEGIN babytakecare_gut
SAY @5040
=
@5041
IF ~~ THEN REPLY @5042 GOTO babytakecare_ranged
IF ~~ THEN REPLY @5043 GOTO babytakecare_healing
IF ~~ THEN REPLY @5044 GOTO babytakecare_resurrect
END

IF ~~ THEN BEGIN babytakecare_battle
SAY @5045
IF ~~ THEN REPLY @5046 GOTO babytakecare_trouble
IF ~~ THEN REPLY @5047 GOTO babytakecare_ranged
IF ~~ THEN REPLY @5048 GOTO babytakecare_send
IF ~~ THEN REPLY @5044 GOTO babytakecare_resurrect
END

IF ~~ THEN BEGIN babytakecare_safe
SAY @5049
IF ~~ THEN REPLY @5050 GOTO babytakecare_charge
IF ~~ THEN REPLY @5051 GOTO babytakecare_healing
IF ~~ THEN REPLY @5052 GOTO babytakecare_resurrect
IF ~~ THEN REPLY @5053 GOTO babytakecare_ranged
END

IF ~~ THEN BEGIN babytakecare_care
SAY @5054
=
@5055
IF ~~ THEN REPLY @5050 GOTO babytakecare_charge
IF ~~ THEN REPLY @5051 GOTO babytakecare_healing
IF ~~ THEN REPLY @5052 GOTO babytakecare_resurrect
IF ~~ THEN REPLY @5053 GOTO babytakecare_ranged
END

IF ~~ THEN BEGIN babytakecare_hard
SAY @5056
IF ~~ THEN REPLY @5057 GOTO babytakecare_prove
IF ~~ THEN REPLY @5058 GOTO babytakecare_resurrect
IF ~~ THEN REPLY @5059 GOTO babytakecare_ranged
IF ~~ THEN REPLY @5060 GOTO babytakecare_worth
END

IF ~~ THEN BEGIN babytakecare_ranged
SAY @5061
IF ~~ THEN REPLY @5062 GOTO babytakecare_healing
IF ~~ THEN REPLY @5063 GOTO babytakecare_resurrect
IF ~~ THEN REPLY @5064 GOTO babytakecare_mother
END

IF ~~ THEN BEGIN babytakecare_trouble
SAY @5065
=
@5066
IF ~~ THEN REPLY @5067 GOTO babytakecare_healing
IF ~~ THEN REPLY @5068 GOTO babytakecare_sour
IF ~~ THEN REPLY @5069 GOTO babytakecare_fall
END

IF ~~ THEN BEGIN babytakecare_healing
SAY @5070
=
@5071
IF ~~ THEN REPLY @5072 GOTO babytakecare_administer
IF ~~ THEN REPLY @5073 GOTO babytakecare_sure
IF ~~ THEN REPLY @5074 GOTO babytakecare_harm
END

IF ~~ THEN BEGIN babytakecare_resurrect
SAY @5075
=
@5076
IF ~~ THEN REPLY @5067 GOTO babytakecare_healing
IF ~~ THEN REPLY @5077 GOTO babytakecare_sour
IF ~~ THEN REPLY @5069 GOTO babytakecare_fall
END

IF ~~ THEN BEGIN babytakecare_charge
SAY @5078
IF ~~ THEN REPLY @5067 GOTO babytakecare_healing
IF ~~ THEN REPLY @5068 GOTO babytakecare_sour
END

IF ~~ THEN BEGIN babytakecare_send
SAY @5079
= 
@5066
IF ~~ THEN REPLY @5067 GOTO babytakecare_healing
IF ~~ THEN REPLY @5080 GOTO babytakecare_sour
IF ~~ THEN REPLY @5081 GOTO babytakecare_fall
END

IF ~~ THEN BEGIN babytakecare_prove
SAY @5082
IF ~~ THEN REPLY @5062 GOTO babytakecare_healing
IF ~~ THEN REPLY @5063 GOTO babytakecare_resurrect
IF ~~ THEN REPLY @5064 GOTO babytakecare_mother
END

IF ~~ THEN BEGIN babytakecare_worth
SAY @5083
=
@5084
=
@5071
IF ~~ THEN REPLY @5072 GOTO babytakecare_administer
IF ~~ THEN REPLY @5073 GOTO babytakecare_sure
IF ~~ THEN REPLY @5074 GOTO babytakecare_harm
END

IF ~~ THEN BEGIN babytakecare_mother
SAY @5085
=
@5086
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN babytakecare_sour
SAY @5087
IF ~~ THEN REPLY @5062 GOTO babytakecare_healing
IF ~~ THEN REPLY @5064 GOTO babytakecare_mother
IF ~~ THEN REPLY @5088 GOTO babytakecare_fall
END

IF ~~ THEN BEGIN babytakecare_administer
SAY @5089
=
@5090
=
@5091
=
@5092
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN babytakecare_sure
SAY @5093
=
@5094
=
@5095
=
@5096
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN babytakecare_harm
SAY @5097
=
@5098
IF ~~ THEN REPLY @5064 GOTO babytakecare_mother
IF ~~ THEN REPLY @5088 GOTO babytakecare_fall
END

IF ~~ THEN BEGIN babytakecare_fall
SAY @5099
=
@5100
=
@5101
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN propose_start
SAY @5102
IF ~~ THEN REPLY @5103 GOTO propose_marry
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",0)~ THEN REPLY @5104 GOTO propose_thinking
IF ~Global("E3FADEISPREGNANT","GLOBAL",1)
!Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3TWINS","GLOBAL",1)~ THEN REPLY @5105 GOTO propose_thinking
IF ~Global("E3FADEISPREGNANT","GLOBAL",1)
!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3TWINS","GLOBAL",1)~ THEN REPLY @5106 GOTO propose_thinking
IF ~~ THEN REPLY @5107 GOTO propose_have
IF ~~ THEN REPLY @5108 GOTO propose_feel
END

IF ~~ THEN BEGIN propose_marry
SAY @5109
=
@5110
IF ~~ THEN REPLY @5111 GOTO propose_devoted
IF ~~ THEN REPLY @5112 GOTO propose_positive
IF ~~ THEN REPLY @5113 GOTO propose_forever
END

IF ~~ THEN BEGIN propose_thinking
SAY @5114
=
@5115
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO propose_thinking2
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",0)~ THEN REPLY @5116 GOTO propose_forever
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",0)~ THEN REPLY @5117 GOTO propose_question
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",0)~ THEN REPLY @5118 GOTO propose_positive
END

IF ~~ THEN BEGIN propose_thinking2
SAY @5119
IF ~~ THEN REPLY @5116 GOTO propose_forever
IF ~~ THEN REPLY @5117 GOTO propose_question
IF ~~ THEN REPLY @5118 GOTO propose_positive
IF ~!Global("E3TWINS","GLOBAL",1)~ THEN REPLY @5120 GOTO propose_world
IF ~Global("E3TWINS","GLOBAL",1)~ THEN REPLY @5121 GOTO propose_world
END

IF ~~ THEN BEGIN propose_have
SAY @5122
=
@5123
IF ~~ THEN REPLY @5124 GOTO propose_marry
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",0)~ THEN REPLY @5125 GOTO propose_thinking
IF ~Global("E3FADEISPREGNANT","GLOBAL",1)
!Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3TWINS","GLOBAL",1)~ THEN REPLY @5126 GOTO propose_thinking
IF ~Global("E3FADEISPREGNANT","GLOBAL",1)
!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3TWINS","GLOBAL",1)~ THEN REPLY @5127 GOTO propose_thinking
END

IF ~~ THEN BEGIN propose_feel
SAY @5128
=
@5129
IF ~~ THEN REPLY @5130 GOTO propose_marry
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",0)~ THEN REPLY @5131 GOTO propose_thinking
IF ~Global("E3FADEISPREGNANT","GLOBAL",1)
!Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3TWINS","GLOBAL",1)~ THEN REPLY @5132 GOTO propose_thinking
IF ~Global("E3FADEISPREGNANT","GLOBAL",1)
!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3TWINS","GLOBAL",1)~ THEN REPLY @5133 GOTO propose_thinking
END

IF ~~ THEN BEGIN propose_devoted
SAY @5134
IF ~~ THEN REPLY @5135 GOTO propose_proposal
IF ~~ THEN REPLY @5136 GOTO propose_excuses
IF ~~ THEN REPLY @5137 GOTO propose_listen
END

IF ~~ THEN BEGIN propose_positive
SAY @5138
IF ~~ THEN REPLY @5139 GOTO propose_yes
IF ~~ THEN REPLY @5140 GOTO propose_truth
IF ~~ THEN REPLY @5141 GOTO propose_time
END

IF ~~ THEN BEGIN propose_forever
SAY @5142
=
@5143
IF ~~ THEN REPLY @5135 GOTO propose_proposal
IF ~~ THEN REPLY @5144 GOTO propose_excuses
IF ~~ THEN REPLY @5137 GOTO propose_listen
END

IF ~~ THEN BEGIN propose_question
SAY @5145
=
@5146
IF ~~ THEN REPLY @5135 GOTO propose_proposal
IF ~~ THEN REPLY @5147 GOTO propose_excuses
IF ~~ THEN REPLY @5137 GOTO propose_listen
END

IF ~~ THEN BEGIN propose_world
SAY @5148
IF ~~ THEN REPLY @5149 GOTO propose_proposal
IF ~~ THEN REPLY @5150 GOTO propose_excuses
IF ~~ THEN REPLY @5151 GOTO propose_listen
END

IF ~~ THEN BEGIN propose_proposal
SAY @5152
=
@5153
IF ~~ THEN REPLY @5154 GOTO propose_now
IF ~~ THEN REPLY @5155 GOTO propose_kiss
IF ~~ THEN REPLY @5156 GOTO propose_future
END

IF ~~ THEN BEGIN propose_excuses
SAY @5157
=
@5153
IF ~~ THEN REPLY @5154 GOTO propose_now
IF ~~ THEN REPLY @5155 GOTO propose_kiss
IF ~~ THEN REPLY @5156 GOTO propose_future
END

IF ~~ THEN BEGIN propose_listen
SAY @5158
=
@5159
IF ~~ THEN REPLY @5154 GOTO propose_now
IF ~~ THEN REPLY @5155 GOTO propose_kiss
IF ~~ THEN REPLY @5156 GOTO propose_future
END

IF ~~ THEN BEGIN propose_yes
SAY @5160
=
@5161
IF ~~ THEN REPLY @5135 GOTO propose_proposal
IF ~~ THEN REPLY @5136 GOTO propose_excuses
IF ~~ THEN REPLY @5137 GOTO propose_listen
END

IF ~~ THEN BEGIN propose_truth
SAY @5162
=
@5153
IF ~~ THEN REPLY @5154 GOTO propose_now
IF ~~ THEN REPLY @5155 GOTO propose_kiss
IF ~~ THEN REPLY @5156 GOTO propose_future
END

IF ~~ THEN BEGIN propose_time
SAY @5163
=
@5153
IF ~~ THEN REPLY @5154 GOTO propose_now
IF ~~ THEN REPLY @5155 GOTO propose_kiss
IF ~~ THEN REPLY @5156 GOTO propose_future
IF ~~ THEN REPLY @5164 GOTO propose_force
END

IF ~~ THEN BEGIN propose_now
SAY @5165
=
@5166
IF ~~ THEN DO ~SetGlobal("E3ENGAGED","GLOBAL",1)
TakePartyItem("E3RING01")
TakePartyItem("E3RING02")
TakePartyItem("E3RING03")
TakePartyItem("E3RING04")~ EXIT
END

IF ~~ THEN BEGIN propose_kiss
SAY @5167
=
@5168
IF ~!Global("E3ENGRAVERING","GLOBAL",5)~ THEN GOTO propose_kiss2
IF ~Global("E3ENGRAVERING","GLOBAL",5)~ THEN GOTO propose_kiss3
END

IF ~~ THEN BEGIN propose_kiss2
SAY @5169
=
@5170
IF ~~ THEN REPLY @5171 GOTO propose_argument
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @5172 GOTO propose_deep
IF ~~ THEN REPLY @5173 GOTO propose_clutches
END

IF ~~ THEN BEGIN propose_kiss3
SAY @5174
=
@5170
IF ~~ THEN REPLY @5171 GOTO propose_argument
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @5172 GOTO propose_deep
IF ~~ THEN REPLY @5173 GOTO propose_clutches
END

IF ~~ THEN BEGIN propose_future
SAY @5175
=
@5176
IF ~!Global("E3ENGRAVERING","GLOBAL",5)~ THEN GOTO propose_future2
IF ~Global("E3ENGRAVERING","GLOBAL",5)~ THEN GOTO propose_future3
END

IF ~~ THEN BEGIN propose_future2
SAY @5177
IF ~~ THEN DO ~SetGlobal("E3ENGAGED","GLOBAL",1)
TakePartyItem("E3RING01")
TakePartyItem("E3RING02")
TakePartyItem("E3RING03")
TakePartyItem("E3RING04")~ EXIT
END

IF ~~ THEN BEGIN propose_future3
SAY @5178
IF ~~ THEN DO ~SetGlobal("E3ENGAGED","GLOBAL",1)
TakePartyItem("E3RING01")
TakePartyItem("E3RING02")
TakePartyItem("E3RING03")
TakePartyItem("E3RING04")~ EXIT
END

IF ~~ THEN BEGIN propose_force
SAY @5179
IF ~~ THEN REPLY @5180 GOTO propose_now
IF ~~ THEN REPLY @5155 GOTO propose_kiss
IF ~~ THEN REPLY @5181 GOTO propose_future
END

IF ~~ THEN BEGIN propose_argument
SAY @5182
=
@5183
IF ~!Global("E3ENGRAVERING","GLOBAL",5)~ THEN GOTO propose_future2
IF ~Global("E3ENGRAVERING","GLOBAL",5)~ THEN GOTO propose_future3
END

IF ~~ THEN BEGIN propose_deep
SAY @5184
IF ~~ THEN DO ~SetGlobal("E3ENGAGED","GLOBAL",1)
TakePartyItem("E3RING01")
TakePartyItem("E3RING02")
TakePartyItem("E3RING03")
TakePartyItem("E3RING04")~ EXIT
END

IF ~~ THEN BEGIN propose_clutches
SAY @5185
=
@5183
IF ~!Global("E3ENGRAVERING","GLOBAL",5)~ THEN GOTO propose_future2
IF ~Global("E3ENGRAVERING","GLOBAL",5)~ THEN GOTO propose_future3
END
END

CHAIN 
IF ~~ THEN E3FAD25J babyannounce_thankyou
@5186
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5187
== E3FAD25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5188
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5189
== E3FAD25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5190
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5191
== E3FAD25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5192
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5193
== E3FAD25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5194
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5195
==MAZZY25J IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @7056
==VALYG25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @7057
==E3FAD25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @7058
==VALYG25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @7059
==JAN25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7060
==E3FAD25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7061
==JAN25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7062
==E3FAD25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7063
==JAN25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7064
==E3FAD25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7065
==SAREV25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @7066
==E3FAD25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @7067
==SAREV25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @7068
==E3FAD25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @7069
==KORGA25J IF ~InParty("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @7070
==HAERD25J IF ~InParty("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @7071
==CERND25J IF ~InParty("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @7072
==E3FAD25J IF ~InParty("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @7073
==MINSC25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7074
==E3FAD25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7075
==MINSC25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7076
==E3FAD25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7077
==MINSC25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7078
==E3FAD25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7079
== AERIE25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5196
== E3FAD25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5197
== AERIE25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5198
== E3FAD25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5199
== AERIE25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5200
== VICON25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5201
== E3FAD25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5202
== VICON25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5203
== E3FAD25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5204
== VICON25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5205
== NALIA25J IF ~InParty("Nalia") !StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @5207
== JAHEI25J IF ~InParty("Jaheira") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @5208
END
IF ~InParty("Jaheira")~ THEN REPLY @5209 EXTERN JAHEI25J babyannounce_thinking
IF ~InParty("Jaheira")~ THEN REPLY @5210 EXTERN JAHEI25J babyannounce_accident
IF ~InParty("Jaheira")~ THEN REPLY @5211 EXTERN JAHEI25J babyannounce_help
IF ~!InParty("Jaheira")~ THEN EXIT

CHAIN
IF ~~ THEN E3FAD25J babyannounce_really
@5212
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5187
== E3FAD25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5188
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5189
== E3FAD25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5190
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5191
== E3FAD25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5192
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5193
== E3FAD25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5194
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5195
==MAZZY25J IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @7056
==VALYG25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @7057
==E3FAD25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @7058
==VALYG25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @7059
==JAN25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7060
==E3FAD25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7061
==JAN25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7062
==E3FAD25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7063
==JAN25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7064
==E3FAD25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7065
==SAREV25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @7066
==E3FAD25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @7067
==SAREV25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @7068
==E3FAD25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @7069
==KORGA25J IF ~InParty("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @7070
==HAERD25J IF ~InParty("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @7071
==CERND25J IF ~InParty("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @7072
==E3FAD25J IF ~InParty("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @7073
==MINSC25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7074
==E3FAD25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7075
==MINSC25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7076
==E3FAD25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7077
==MINSC25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7078
==E3FAD25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7079
== AERIE25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5196
== E3FAD25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5197
== AERIE25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5198
== E3FAD25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5199
== AERIE25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5200
== VICON25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5201
== E3FAD25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5202
== VICON25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5203
== E3FAD25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5204
== VICON25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5205
== NALIA25J IF ~InParty("Nalia") !StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @5207
== JAHEI25J IF ~InParty("Jaheira") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @5208
END
IF ~InParty("Jaheira")~ THEN REPLY @5209 EXTERN JAHEI25J babyannounce_thinking
IF ~InParty("Jaheira")~ THEN REPLY @5210 EXTERN JAHEI25J babyannounce_accident
IF ~InParty("Jaheira")~ THEN REPLY @5211 EXTERN JAHEI25J babyannounce_help
IF ~!InParty("Jaheira")~ THEN EXIT

CHAIN
IF ~~ THEN E3FAD25J babyannounce_risk
@5213
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5187
== E3FAD25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5188
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5189
== E3FAD25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5190
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5191
== E3FAD25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5192
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5193
== E3FAD25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5194
== ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @5195
==MAZZY25J IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @7056
==VALYG25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @7057
==E3FAD25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @7058
==VALYG25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @7059
==JAN25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7060
==E3FAD25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7061
==JAN25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7062
==E3FAD25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7063
==JAN25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7064
==E3FAD25J IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @7065
==SAREV25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @7066
==E3FAD25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @7067
==SAREV25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @7068
==E3FAD25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @7069
==KORGA25J IF ~InParty("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @7070
==HAERD25J IF ~InParty("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @7071
==CERND25J IF ~InParty("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @7072
==E3FAD25J IF ~InParty("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @7073
==MINSC25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7074
==E3FAD25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7075
==MINSC25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7076
==E3FAD25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7077
==MINSC25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7078
==E3FAD25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @7079
== AERIE25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5196
== E3FAD25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5197
== AERIE25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5198
== E3FAD25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5199
== AERIE25J IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @5200
== VICON25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5201
== E3FAD25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5202
== VICON25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5203
== E3FAD25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5204
== VICON25J IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @5205
== NALIA25J IF ~InParty("Nalia") !StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @5207
== JAHEI25J IF ~InParty("Jaheira") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @5208
END
IF ~InParty("Jaheira")~ THEN REPLY @5209 EXTERN JAHEI25J babyannounce_thinking
IF ~InParty("Jaheira")~ THEN REPLY @5210 EXTERN JAHEI25J babyannounce_accident
IF ~InParty("Jaheira")~ THEN REPLY @5211 EXTERN JAHEI25J babyannounce_help
IF ~!InParty("Jaheira")~ THEN DO ~RestParty()~ EXIT

APPEND IMOEN25J 
IF ~~ THEN BEGIN babyannounce_imoen_1
SAY @5214
IF ~~ THEN EXTERN E3FAD25J babyannounce_sick
END

IF ~~ THEN BEGIN babyannounce_imoen_2
SAY @5215
IF ~~ THEN EXTERN E3FAD25J babyannounce_condition
END

IF ~~ THEN BEGIN babyannounce_imoen_3
SAY @5216
IF ~~ THEN EXTERN E3FAD25J babyannounce_plan_2
END

IF ~~ THEN BEGIN babyannounce_imoen_4
SAY @5217
IF ~~ THEN EXTERN E3FAD25J babyannounce_safe
END
END

APPEND KELDO25J
IF ~~ THEN BEGIN babyannounce_keldorn_1
SAY @5218
IF ~~ THEN EXTERN E3FAD25J babyannounce_sick
END
END

APPEND JAHEI25J
IF ~~ THEN BEGIN babyannounce_jaheira_1
SAY @5219
IF ~~ THEN EXTERN E3FAD25J babyannounce_sick
END

IF ~~ THEN BEGIN babyannounce_thinking
SAY @5220
=
@5221
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN babyannounce_accident
SAY @5222
=
@5221
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN babyannounce_help
SAY @5223
=
@5221
IF ~~ THEN EXIT
END
END

APPEND EDWIN25J
IF ~~ THEN BEGIN babyannounce_edwin_1
SAY @5224
IF ~~ THEN EXTERN E3FAD25J babyannounce_plan_3
END
END

//////////////////////CESPENAR

EXTEND_BOTTOM BOTSMITH 4
IF ~Global("E3CespenarTango","GLOBAL",0) OR(2) PartyHasItem("E3DT") PartyHasItem("E3DTS")~ THEN GOTO E3Fade00
END

APPEND BOTSMITH
IF ~~ THEN BEGIN E3Fade00
 SAY @5225
IF~PartyHasItem("E3DT")~THEN GOTO E3Fade01
IF~!PartyHasItem("E3DT") PartyHasItem("E3DTS")~THEN GOTO E3Fade02
END

IF~~THEN BEGIN E3Fade01
SAY @5226
IF~~THEN GOTO E3Fade03
END

IF~~THEN BEGIN E3Fade02
SAY @5227
IF~~THEN GOTO E3Fade03
END

IF~~THEN BEGIN E3Fade03
SAY @5228
= @5229

 IF ~PartyHasItem("E3DT")
     PartyHasItem("E3DTS")
     Global("E3CespenarTango","GLOBAL",0)
     PartyGoldGT(7499)
     ~ THEN REPLY @5230 DO ~SetGlobal("ItemMaker","GLOBAL",178)
                 SetGlobal("E3CespenarTango","GLOBAL",1)
                                 TakePartyItem("E3DT")
                                 TakePartyItem("E3DTS")
                                 TakePartyGold(7500)
                                 DestroyGold(7500)~ GOTO 11
 
 IF ~~ THEN REPLY @5231 GOTO E3Fade04
END

IF ~~ THEN BEGIN E3Fade04
SAY @5232
 COPY_TRANS BOTSMITH 4
END
END