EXTEND_BOTTOM FATESP 6 #4
IF ~ !Dead("E3FADE") !InMyArea("E3FADE") Global("E3FADESummonedToB","GLOBAL",0)~ 
THEN REPLY @4804 DO ~CreateVisualEffect("SPPORTAL",[1909.1228])
Wait(2) 
CreateCreature("e3fade25",[1909.1228],0) 
SetGlobal("E3FADESummonedToB","GLOBAL",1)~ GOTO 8
END

EXTEND_BOTTOM FATESP 6 #4
+ ~!Dead("E3Fade")
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