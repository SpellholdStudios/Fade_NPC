APPEND E3FADEJ


/* Weathermistress Ada at Talos Temple */



IF WEIGHT #-1  ~Global("E3FadeREAda","GLOBAL",1)~ THEN BEGIN RE_FadeAda
SAY @6987
IF ~~ THEN REPLY @6988 GOTO FadeAda__teachme
IF ~~ THEN REPLY @6989 GOTO fade_TALMISS_greatsex
IF ~~ THEN REPLY @6990 GOTO fade_TALMISS_getout
END

IF ~~ THEN BEGIN FadeAda__teachme
SAY @6991
IF ~~ THEN REPLY @6989 GOTO fade_TALMISS_greatsex
IF ~!Global("RE_AdaSex","GLOBAL",1)~ THEN REPLY @6990 GOTO fade_TALMISS_getout
IF ~Global("RE_AdaSex","GLOBAL",1)~ THEN REPLY @6990 GOTO fade_TALMISS_liarliar
END

IF ~~ THEN BEGIN fade_TALMISS_greatsex
SAY @6992
IF~~THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3) SetGlobal("E3FadeREAda","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN fade_TALMISS_getout
SAY @6993
IF~~THEN DO ~SetGlobal("E3FadeREAda","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN fade_TALMISS_liarliar
SAY @6994
IF~~THEN DO ~SetGlobal("E3FadeREAda","GLOBAL",2)~ EXIT
END




/* Guildmistress Busya at Trademeet */



IF WEIGHT #-1  ~Global("E3FadeREBusya","GLOBAL",1)~ THEN BEGIN RE_FadeBusya
SAY @6995
IF ~~ THEN REPLY @6996 GOTO FadeBusya_whatever
IF ~~ THEN REPLY @6997 GOTO FadeBusya_whatever
IF ~~ THEN REPLY @6998 GOTO FadeBusya_whatever
END

IF ~~ THEN BEGIN FadeBusya_whatever
SAY @6999
IF~~THEN DO ~SetGlobal("E3FadeREBusya","GLOBAL",2)~ EXIT
END






/* Chanelle, maid at De'Arnise Keep */



IF WEIGHT #-1  ~Global("E3FadeREChanelle","GLOBAL",1)~ THEN BEGIN RE_FadeChanelle
SAY @7000
IF ~~ THEN REPLY @7001 GOTO FadeChanelle_notexactly
IF ~~ THEN REPLY @7002 GOTO FadeChanelle_notexactly
IF ~~ THEN REPLY @7003 GOTO FadeChanelle_notexactly
END

IF ~~ THEN BEGIN FadeChanelle_notexactly
SAY @7004
IF ~~ THEN REPLY @7005 GOTO FadeChanelle_oxplow
END

IF ~~ THEN BEGIN FadeChanelle_oxplow
SAY @7006
= @7007
IF~~THEN DO ~SetGlobal("E3FadeREChanelle","GLOBAL",2)~ EXIT
END



/* Encounter in Bridge District */



IF WEIGHT #-1  ~Global("E3FadeREIlona","GLOBAL",1)~ THEN BEGIN RE_FadeIlona
SAY @7008
IF ~~ THEN REPLY @7009 GOTO FadeIlona_harmless
IF ~~ THEN REPLY @7010 GOTO FadeIlona_irresistible
END

IF ~~ THEN BEGIN FadeIlona_harmless
SAY @7011
IF~~THEN DO ~SetGlobal("E3FadeREIlona","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN FadeIlona_irresistible
SAY @7012
IF~~THEN DO ~SetGlobal("E3FadeREIlona","GLOBAL",2)~ EXIT
END



/* Mithrest Inn, Athkatla */



IF WEIGHT #-1  ~Global("E3FadeRESheri","GLOBAL",1)~ THEN BEGIN RE_FadeSheri
SAY @7013
IF ~~ THEN REPLY @7014 GOTO FadeSheri_jealous
IF ~~ THEN REPLY @7015 GOTO FadeSheri_idontdance
IF ~~ THEN REPLY @7016 GOTO FadeSheri_feelbetter
IF ~~ THEN REPLY @7017 GOTO FadeSheri_daggers
END

IF ~~ THEN BEGIN FadeSheri_jealous
SAY @7018
IF ~~ THEN REPLY @7019 GOTO FadeSheri_forgiven
IF ~~ THEN REPLY @7020 GOTO FadeSheri_feelbetter
IF ~~ THEN REPLY @7021 GOTO FadeSheri_daggers
END

IF ~~ THEN BEGIN FadeSheri_idontdance
SAY @7022
IF ~~ THEN REPLY @7023 GOTO FadeSheri_feelbetter
IF ~~ THEN REPLY @7024 GOTO FadeSheri_feelbetter
IF ~~ THEN REPLY @7025 GOTO FadeSheri_daggers
END

IF ~~ THEN BEGIN FadeSheri_forgiven
SAY @7026
IF~~THEN DO ~SetGlobal("E3FadeRESheri","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN FadeSheri_feelbetter
SAY @7027
IF~~THEN DO ~SetGlobal("E3FadeRESheri","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN FadeSheri_daggers
SAY @7028
IF~~THEN DO ~SetGlobal("E3FadeRESheri","GLOBAL",2)~ EXIT
END



/* Ust Natha */



IF WEIGHT #-1  ~Global("E3FadeRESolaufeinSex","GLOBAL",1)~ THEN BEGIN RE_FadeSola
SAY @7029
IF ~~ THEN REPLY @7030 GOTO FadeSola_nothappy
IF ~~ THEN REPLY @7031 DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ GOTO FadeSola_disgusting
IF ~~ THEN REPLY @7032 GOTO FadeSola_nothappy
END

IF ~~ THEN BEGIN FadeSola_nothappy
SAY @7033
IF~~THEN DO ~SetGlobal("E3FadeRESolaufeinSex","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN FadeSola_disgusting
SAY @7034
IF~~THEN DO ~SetGlobal("E3FadeRESolaufeinSex","GLOBAL",2)~ EXIT
END



/* At the Temple of Helm, right after the talk with the High Watcher */



IF WEIGHT #-1  ~Global("E3FadeREIsabelle","GLOBAL",1)~ THEN BEGIN RE_FadeIsabelle
SAY @7035
IF ~~ THEN REPLY @7036 GOTO FadeIsabelle_mocking
END

IF ~~ THEN BEGIN FadeIsabelle_mocking
SAY @7037
IF ~~ THEN REPLY @7038 GOTO FadeIsabelle_clothing
END

IF ~~ THEN BEGIN FadeIsabelle_clothing
SAY @7039
IF ~~ THEN REPLY @7040 GOTO FadeIsabelle_overreacting
END

IF ~~ THEN BEGIN FadeIsabelle_overreacting
SAY @7041
= @7042
IF~~THEN DO ~SetGlobal("E3FadeREIsabelle","GLOBAL",2)~ EXIT
END



/* Anishai in Mae'var's Guildhall (2nd Floor) */



IF WEIGHT #-1  ~Global("E3FadeREAnishai","GLOBAL",1)~ THEN BEGIN RE_FadeAnishai
SAY @7043
IF~~THEN DO ~SetGlobal("E3FadeREAnishai","GLOBAL",2)~ EXIT
END




/* The Gypsy Fortune-Teller in Trademeet */



IF WEIGHT #-1  ~Global("E3FadeRERebecca","GLOBAL",1)~ THEN BEGIN RE_FadeRebecca
SAY @7044
IF ~~ THEN REPLY @7045 GOTO FadeRebecca_hmm
IF ~~ THEN REPLY @7046 GOTO FadeRebecca_strange
IF ~~ THEN REPLY @7047 GOTO FadeRebecca_die
END

IF ~~ THEN BEGIN FadeRebecca_hmm
SAY @7048
IF ~~ THEN REPLY @7047 GOTO FadeRebecca_die
END

IF ~~ THEN BEGIN FadeRebecca_strange
SAY @7049
IF ~~ THEN REPLY @7047 GOTO FadeRebecca_die
END

IF ~~ THEN BEGIN FadeRebecca_die
SAY @7050
IF~~THEN DO ~SetGlobal("E3FadeRERebecca","GLOBAL",2)~ EXIT
END




/* At the Den of the Seven Vales */



IF WEIGHT #-1  ~Global("E3FadeREChandra","GLOBAL",1)~ THEN BEGIN RE_FadeChandra
SAY @7051
IF~~THEN DO ~SetGlobal("E3FadeREChandra","GLOBAL",2)~ EXIT
END



END