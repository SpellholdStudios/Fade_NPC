
/* EET new ToB game */
EXTEND_BOTTOM FATESP 6 #100
IF ~Global("NEWGAME_TOB","GLOBAL",1)
 !Dead("E3FADE") !InMyArea("E3FADE") Global("E3FADESummonedToB","GLOBAL",0)~ 
THEN REPLY @4804 DO ~CreateVisualEffect("SPPORTAL",[1909.1228])
Wait(2) 
CreateCreature("e3fade25",[1909.1228],0) 
SetGlobal("E3FADESummonedToB","GLOBAL",1)~ GOTO 8
END

EXTEND_BOTTOM FATESP 6 #100
+ ~Global("NEWGAME_TOB","GLOBAL",1)
!Dead("E3Fade")
   !InMyArea("E3Fade")
   Global("E3FadeSummonedToB","GLOBAL",0) 
   Global("E3FADEROMANCEACTIVE","GLOBAL",0)
   Gender(Player1,MALE)~ 
+ @4805  
   DO ~CreateVisualEffect("SPPORTAL",[1909.1228])
Wait(2) 
CreateCreature("e3fade25",[1909.1228],0) 
SetGlobal("E3FADESummonedToB","GLOBAL",1)
SetGlobal("E3FADEMATCH","GLOBAL",1)
SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",2)~ GOTO 8
END


/* EET conti game */

/* Fade was in party - can be summoned (MoveGlobal) */
/* non-romance case */
EXTEND_BOTTOM FATESP 6 #100
IF ~Global("NEWGAME_TOB","GLOBAL",0)
BeenInParty("E3FADE") 
!Global("E3FADEROMANCEACTIVE","GLOBAL",2)
!Dead("E3FADE") !InMyArea("E3FADE") Global("E3FADESummonedToB","GLOBAL",0)~ 
THEN REPLY @4804 DO ~CreateVisualEffect("SPPORTAL",[1909.1228])
Wait(2) 
MoveGlobal("AR4500","E3FADE",[1999.1218]) 
ActionOverride("E3FADE",SetDialog("E3FADE25"))
ActionOverride("E3FADE",ChangeAIScript("E3Fade25",OVERRIDE))
SetGlobal("E3FADESummonedToB","GLOBAL",1)~ GOTO 8

/* romance case */
IF ~Global("NEWGAME_TOB","GLOBAL",0)
BeenInParty("E3FADE") 
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
!Dead("E3FADE") !InMyArea("E3FADE") Global("E3FADESummonedToB","GLOBAL",0)~ 
THEN REPLY @4805 DO ~CreateVisualEffect("SPPORTAL",[1909.1228])
Wait(2) 
MoveGlobal("AR4500","E3FADE",[1999.1218]) 
ActionOverride("E3FADE",SetDialog("E3FADE25"))
ActionOverride("E3FADE",ChangeAIScript("E3Fade25",OVERRIDE))
SetGlobal("E3FADESummonedToB","GLOBAL",1)~ GOTO 8

/* is dead - cannot be summoned */
IF ~Global("NEWGAME_TOB","GLOBAL",0)
Dead("E3FADE") Global("E3FADESummonedToB","GLOBAL",0)~ THEN REPLY @4804 DO ~SetGlobal("E3FADESummonedToB","GLOBAL",1)~ GOTO 10

/* was never in party - cannot be summoned */
IF ~Global("NEWGAME_TOB","GLOBAL",0)
!BeenInParty("E3FADE") 
!Dead("E3FADE") Global("E3FADESummonedToB","GLOBAL",0)~ THEN REPLY @4804 DO ~SetGlobal("E3FADESummonedToB","GLOBAL",1)~ GOTO 7
 
END

