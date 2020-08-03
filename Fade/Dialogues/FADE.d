BEGIN E3FADE

IF ~Global("E3ACCEPTFADE","GLOBAL",1)~ THEN BEGIN fadeaccept
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY @2 EXIT
IF ~~ THEN REPLY @3 GOTO fadeaccept2
END

IF ~~ THEN BEGIN fadeaccept2
SAY @4
IF ~~ THEN DO ~SetGlobal("E3ACCEPTFADE","GLOBAL",2)~ EXIT
END

IF ~Global("E3ACCEPTFADE","GLOBAL",2)~ THEN BEGIN fadechange
SAY @5
IF ~~ THEN REPLY @6 GOTO fadechange2
IF ~~ THEN REPLY @7 GOTO fadechange3
END

IF ~~ THEN BEGIN fadechange2
SAY @8
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN fadechange3
SAY @4
IF ~~ THEN EXIT
END

IF ~Global("E3REFUSEFADE","GLOBAL",1)~ THEN BEGIN faderefuse
SAY @5
IF ~~ THEN REPLY @6 GOTO faderefuse2
IF ~~ THEN REPLY @7 GOTO faderefuse4
END

IF ~~ THEN BEGIN faderefuse2
SAY @8
IF ~~ THEN REPLY @9 GOTO faderefuse3
IF ~~ THEN REPLY @10 GOTO faderefuse3
IF ~~ THEN REPLY @11 DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN faderefuse3
SAY @12
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN faderefuse4
SAY @4
IF ~~ THEN EXIT
END

BEGIN E3FADEP
IF ~Global("E3FADEVAMPIRE","GLOBAL",5)~ THEN BEGIN vampire_start
SAY @13
IF ~~ THEN DO ~SetGlobal("E3FADEVAMPIRE","GLOBAL",6)~ EXTERN OGHMONK1 vampire_start
END

IF ~~ THEN BEGIN vampire_fade
SAY @14
IF ~~ THEN REPLY @15 GOTO vampire_closer
IF ~~ THEN REPLY @16 GOTO vampire_need
IF ~~ THEN REPLY @17 GOTO vampire_fight
END

IF ~~ THEN BEGIN vampire_closer
SAY @18
IF ~~ THEN REPLY @19 GOTO vampire_need
IF ~~ THEN REPLY @17 GOTO vampire_fight
END

IF ~~ THEN BEGIN vampire_need
SAY @20 = @21
IF ~~ THEN REPLY @22 GOTO vampire_okay
IF ~~ THEN REPLY @23 GOTO vampire_alright
END

IF ~~ THEN BEGIN vampire_fight
SAY @24 = @21
IF ~~ THEN REPLY @22 GOTO vampire_okay
IF ~~ THEN REPLY @23 GOTO vampire_alright
END

IF ~~ THEN BEGIN vampire_okay
SAY @25 = @26
IF ~~ THEN REPLY @27 GOTO vampire_love
IF ~~ THEN REPLY @28 GOTO vampire_heart
IF ~~ THEN REPLY @29 GOTO vampire_kiss
END

IF ~~ THEN BEGIN vampire_alright
SAY @30 = @26
IF ~~ THEN REPLY @27 GOTO vampire_love
IF ~~ THEN REPLY @28 GOTO vampire_heart
IF ~~ THEN REPLY @29 GOTO vampire_kiss
END

IF ~~ THEN BEGIN vampire_love
SAY @31 = @32
IF ~~ THEN REPLY @33 GOTO vampire_matters
IF ~~ THEN REPLY @29 GOTO vampire_kiss
END

IF ~~ THEN BEGIN vampire_heart
SAY @34 = @35
IF ~~ THEN REPLY @36 GOTO vampire_matters
IF ~~ THEN REPLY @29 GOTO vampire_kiss
END

IF ~~ THEN BEGIN vampire_kiss
SAY @37
IF ~~ THEN SOLVED_JOURNAL @38 
DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN vampire_matters
SAY @39
IF ~~ THEN SOLVED_JOURNAL @38
DO ~JoinParty()~ EXIT
END

IF ~Global("E3FADEJOINED","LOCALS",0)
Global("E3FADEARANONOWN","GLOBAL",1)
Global("E3FINALQUEST","GLOBAL",1)~ THEN BEGIN fadeonown1
SAY @40
IF ~~ THEN EXIT
END

IF ~Global("E3FADEJOINED","LOCALS",0)
Global("E3FADEARANONOWN","GLOBAL",2)
Global("E3FINALQUEST","GLOBAL",2)~ THEN BEGIN fadeonown2
SAY @41
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
SetGlobal("E3FADEARANONOWN","GLOBAL",3)
JoinParty()~ EXIT
END

IF ~Global("E3SLAVERKIDNAP","GLOBAL",2)
!Global("E3BOUGHTFADE","GLOBAL",1)
Dead("E3Mallon")
OR(2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN BEGIN kidnap_1_start
SAY @42 = @43
IF ~~ THEN REPLY @44 
DO ~SetGlobal("E3SLAVERKIDNAP","GLOBAL",3)~ GOTO kidnap_1_rescue
END

IF ~~ THEN BEGIN kidnap_1_rescue
SAY @45 = @46
IF ~~ THEN REPLY @47 GOTO kidnap_1_untie
IF ~~ THEN REPLY @48 GOTO kidnap_1_happened
END

IF ~~ THEN BEGIN kidnap_1_untie
SAY @49
IF ~~ THEN REPLY @50 GOTO kidnap_1_look
IF ~~ THEN REPLY @51 GOTO kidnap_1_comfort
IF ~~ THEN REPLY @52 GOTO kidnap_1_equipment
END

IF ~~ THEN BEGIN kidnap_1_happened
SAY @53
IF ~~ THEN REPLY @54 GOTO kidnap_1_untie
END

IF ~~ THEN BEGIN kidnap_1_look
SAY @55
IF ~~ THEN REPLY @56 GOTO kidnap_1_equipment
IF ~~ THEN REPLY @57 GOTO kidnap_1_injuries
END

IF ~~ THEN BEGIN kidnap_1_comfort
SAY @58
IF ~~ THEN REPLY @56 GOTO kidnap_1_equipment
IF ~~ THEN REPLY @59 GOTO kidnap_1_injuries
IF ~~ THEN REPLY @60 GOTO kidnap_1_why
END

IF ~~ THEN BEGIN kidnap_1_equipment
SAY @61
IF ~~ THEN REPLY @62 GOTO kidnap_1_corpse
IF ~~ THEN REPLY @63 GOTO kidnap_1_rage
END

IF ~~ THEN BEGIN kidnap_1_injuries
SAY @64
IF ~~ THEN REPLY @62 GOTO kidnap_1_corpse
IF ~~ THEN REPLY @63 GOTO kidnap_1_rage
END

IF ~~ THEN BEGIN kidnap_1_why
SAY @65 = @61
IF ~~ THEN REPLY @62 GOTO kidnap_1_corpse
IF ~~ THEN REPLY @63 GOTO kidnap_1_rage
END

IF ~~ THEN BEGIN kidnap_1_corpse
SAY @66
IF ~~ THEN REPLY @67 GOTO kidnap_1_rage
IF ~~ THEN REPLY @68 GOTO kidnap_1_drag
END

IF ~~ THEN BEGIN kidnap_1_rage
SAY @69 = @70 = @71 = @72
IF ~~ THEN REPLY @73 GOTO kidnap_1_treatment
IF ~~ THEN REPLY @74 GOTO kidnap_1_insane
IF ~~ THEN REPLY @75 GOTO kidnap_1_later
END

IF ~~ THEN BEGIN kidnap_1_insane
SAY @76
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
SetGlobal("E3FADEJOINED","LOCALS",0)
MoveGlobal("AR0307","E3Fade",[4836.2136])~ EXIT
END

IF ~~ THEN BEGIN kidnap_1_drag
SAY @77 = @72
IF ~~ THEN REPLY @73 GOTO kidnap_1_treatment
IF ~~ THEN REPLY @74 GOTO kidnap_1_insane
IF ~~ THEN REPLY @75 GOTO kidnap_1_later
END

IF ~~ THEN BEGIN kidnap_1_treatment
SAY @78 = @79
IF ~~ THEN DO ~SetGlobalTimer("E3TREATMENTTIMER","GLOBAL",ONE_DAY)
SetGlobal("E3TREATMENTNOFLIRT","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN kidnap_1_later
SAY @80
IF ~~ THEN REPLY @81 GOTO kidnap_1_treatment
IF ~~ THEN REPLY @82 GOTO kidnap_1_sorry
END

IF ~~ THEN BEGIN kidnap_1_sorry
SAY @83
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
SetGlobal("E3FADEJOINED","LOCALS",0)
MoveGlobal("AR0307","E3Fade",[4836.2136])~ EXIT
END

IF ~Global("E3SLAVERKIDNAP","GLOBAL",2)
Global("E3BOUGHTFADE","GLOBAL",1)
OR(2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN BEGIN kidnap_2_start
SAY @42 = @43
IF ~~ THEN REPLY @44 
DO ~SetGlobal("E3SLAVERKIDNAP","GLOBAL",3)~ GOTO kidnap_2_rescue
END

IF ~~ THEN BEGIN kidnap_2_rescue
SAY @45 = @46
IF ~~ THEN REPLY @47 GOTO kidnap_2_untie
IF ~~ THEN REPLY @48 GOTO kidnap_2_happened
END

IF ~~ THEN BEGIN kidnap_2_untie
SAY @49
IF ~~ THEN REPLY @50 GOTO kidnap_2_look
IF ~~ THEN REPLY @51 GOTO kidnap_2_comfort
IF ~~ THEN REPLY @52 GOTO kidnap_2_equipment
END

IF ~~ THEN BEGIN kidnap_2_happened
SAY @53
IF ~~ THEN REPLY @54 GOTO kidnap_2_untie
END

IF ~~ THEN BEGIN kidnap_2_look
SAY @55
IF ~~ THEN REPLY @56 GOTO kidnap_2_equipment
IF ~~ THEN REPLY @57 GOTO kidnap_2_injuries
END

IF ~~ THEN BEGIN kidnap_2_comfort
SAY @58
IF ~~ THEN REPLY @56 GOTO kidnap_2_equipment
IF ~~ THEN REPLY @59 GOTO kidnap_2_injuries
IF ~~ THEN REPLY @60 GOTO kidnap_2_why
END

IF ~~ THEN BEGIN kidnap_2_equipment
SAY @84 = @85
IF ~~ THEN REPLY @86 GOTO kidnap_2_contract
IF ~PartyHasItem("E3Contra")~ THEN REPLY @87 GOTO kidnap_2_yourself
IF ~~ THEN REPLY @88 GOTO kidnap_2_bed
END

IF ~~ THEN BEGIN kidnap_2_injuries
SAY @89 = @85
IF ~~ THEN REPLY @86 GOTO kidnap_2_contract
IF ~PartyHasItem("E3Contra")~ THEN REPLY @87 GOTO kidnap_2_yourself
IF ~~ THEN REPLY @88 GOTO kidnap_2_bed
END

IF ~~ THEN BEGIN kidnap_2_why
SAY @65 = @84 = @85
IF ~~ THEN REPLY @86 GOTO kidnap_2_contract
IF ~PartyHasItem("E3Contra")~ THEN REPLY @87 GOTO kidnap_2_yourself
IF ~~ THEN REPLY @88 GOTO kidnap_2_bed
END

IF ~~ THEN BEGIN kidnap_2_contract
SAY @90 = @91
IF ~~ THEN REPLY @92 GOTO kidnap_2_hug
IF ~~ THEN REPLY @93 GOTO kidnap_2_welcome
END

IF ~~ THEN BEGIN kidnap_2_yourself
SAY @94 
IF ~~ THEN DO ~TakePartyItem("E3Contra")
DestroyItem("E3Contra")~ GOTO kidnap_2_yourself2
END

IF ~~ THEN BEGIN kidnap_2_yourself2
SAY @95
IF ~~ THEN REPLY @92 GOTO kidnap_2_hug
IF ~~ THEN REPLY @93 GOTO kidnap_2_welcome
END

IF ~~ THEN BEGIN kidnap_2_bed
SAY @96 = @97
IF ~~ THEN DO ~Enemy()
ChangeAIScript("WTASIGHT",DEFAULT)~ EXIT
END

IF ~~ THEN BEGIN kidnap_2_hug
SAY @98 = @99
IF ~~ THEN REPLY @73 GOTO kidnap_2_treatment
IF ~~ THEN REPLY @75 GOTO kidnap_2_later
END

IF ~~ THEN BEGIN kidnap_2_welcome
SAY @72
IF ~~ THEN REPLY @73 GOTO kidnap_2_treatment
IF ~~ THEN REPLY @75 GOTO kidnap_2_later
END

IF ~~ THEN BEGIN kidnap_2_treatment
SAY @78 = @79
IF ~~ THEN DO ~SetGlobalTimer("E3TREATMENTTIMER","GLOBAL",ONE_DAY)
SetGlobal("E3TREATMENTNOFLIRT","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN kidnap_2_later
SAY @80
IF ~~ THEN REPLY @81 GOTO kidnap_2_treatment
IF ~~ THEN REPLY @82 GOTO kidnap_2_sorry
END

IF ~~ THEN BEGIN kidnap_2_sorry
SAY @83
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
SetGlobal("E3FADEJOINED","LOCALS",0)
MoveGlobal("AR0307","E3Fade",[4836.2136])~ EXIT
END

IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3FADEJOINED","LOCALS",1)~ THEN BEGIN fadeleave
SAY @100
IF ~~ THEN REPLY @101 GOTO fadeleave2
IF ~~ THEN REPLY @102 GOTO fadeleave3
END

IF ~~ THEN BEGIN fadeleave2
SAY @103
IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @104 DO ~SetGlobal("E3FADEJOINED","LOCALS",0)
MoveGlobal("AR0307","E3Fade",[4836.2136])~ EXIT
IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!InWatchersKeep()~ THEN REPLY @105 DO ~SetGlobal("E3FADEJOINED","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN fadeleave3
SAY @106
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3FADEJOINED","LOCALS",1)~ THEN BEGIN faderomleave
SAY @107
IF ~~ THEN REPLY @108 GOTO faderomleave2
IF ~~ THEN REPLY @109 GOTO faderomleave3
END

IF ~~ THEN BEGIN faderomleave2
SAY @110
IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @104 DO ~SetGlobal("E3FADEJOINED","GLOBAL",0)
MoveGlobal("AR0307","E3Fade",[4836.2136])~ EXIT
IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!InWatchersKeep()~ THEN REPLY @105 DO ~SetGlobal("E3FADEJOINED","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN faderomleave3
SAY @111
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("E3FADEJOINED","LOCALS",0)~ THEN BEGIN faderejoin
SAY @112
IF ~~ THEN REPLY @113 GOTO faderejoin2
IF ~~ THEN REPLY @114 GOTO faderejoin3
IF ~~ THEN REPLY @115 EXIT
IF ~~ THEN REPLY @116 EXIT
END

IF ~~ THEN BEGIN faderejoin2
SAY @117
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN faderejoin3
SAY @118
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
JoinParty()~ EXIT
END

BEGIN E3FADEJ

IF ~InParty(Myself)
Global("AttackedThieves","GLOBAL",1)~ THEN BEGIN attackedthieves
SAY @119
IF ~~ THEN DO ~SetGlobal("E3FADEISREALLYDEAD","GLOBAL",1)
LeaveParty()
ChangeAIScript("WTASIGHT",DEFAULT)
Enemy()
EquipMostDamagingMelee()
Attack(NearestEnemyOf(Myself))~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0300")
Global("E3FADEDOCKSTALK","LOCALS",0)~ THEN BEGIN fadedocks
SAY @120
IF ~~ THEN DO ~SetGlobal("E3FADEDOCKSTALK","LOCALS",1)~ GOTO fadedocks14
END

IF ~~ THEN BEGIN fadedocks2
SAY @121
IF ~~ THEN REPLY @122 GOTO fadedocks3
IF ~~ THEN REPLY @123 GOTO fadedocks4
IF ~~ THEN REPLY @124 GOTO fadedocks13
IF ~~ THEN REPLY @125 GOTO fadedocks5
END

IF ~~ THEN BEGIN fadedocks3
SAY @126 = @127 = @128 = @129
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks4
SAY @130 = @131 = @132
IF ~~ THEN REPLY @133 GOTO fadedocks5
IF ~~ THEN REPLY @134 GOTO fadedocks11
IF ~~ THEN REPLY @135 GOTO fadedocks12
END

IF ~~ THEN BEGIN fadedocks5
SAY @136
IF ~~ THEN REPLY @137 GOTO fadedocks6
IF ~~ THEN REPLY @138 GOTO fadedocks7
IF ~~ THEN REPLY @139 GOTO fadedocks8
END

IF ~~ THEN BEGIN fadedocks6
SAY @140 = @141 = @142
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks7
SAY @143 = @144
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks8
SAY @145
IF ~~ THEN REPLY @146 GOTO fadedocks9
IF ~~ THEN REPLY @147 GOTO fadedocks10
END

IF ~~ THEN BEGIN fadedocks9
SAY @148
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks10
SAY @149
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks11
SAY @150 = @151
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks12
SAY @152 = @153
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks13
SAY @154 = @155 = @129
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks14
SAY @156
IF ~~ THEN REPLY @157 GOTO fadedocks2
IF ~~ THEN REPLY @158 GOTO fadedocks4
IF ~~ THEN REPLY @159 GOTO fadedocks5
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR2013")
PartyHasItem("misc8l")
Global("E3FADETOMBTALK","LOCALS",0)~ THEN BEGIN fadetomb
SAY @160
IF ~~ THEN REPLY @161 DO ~SetGlobal("E3FADETOMBTALK","LOCALS",1)~ GOTO fadetomb2
IF ~~ THEN REPLY @162 DO ~SetGlobal("E3FADETOMBTALK","LOCALS",1)~ GOTO fadetomb16
IF ~~ THEN REPLY @163 DO ~SetGlobal("E3FADETOMBTALK","LOCALS",1)~ GOTO fadetomb17
END

IF ~~ THEN BEGIN fadetomb2
SAY @164
IF ~~ THEN REPLY @165 GOTO fadetomb3
IF ~~ THEN REPLY @166 GOTO fadetomb11
IF ~~ THEN REPLY @167 GOTO fadetomb15
END

IF ~~ THEN BEGIN fadetomb3
SAY @168 = @169
IF ~~ THEN REPLY @170 GOTO fadetomb4
IF ~~ THEN REPLY @171 GOTO fadetomb9
IF ~~ THEN REPLY @172 GOTO fadetomb10
IF ~~ THEN REPLY @173 EXIT
END

IF ~~ THEN BEGIN fadetomb4
SAY @174 = @175
IF ~~ THEN REPLY @176 GOTO fadetomb5
IF ~~ THEN REPLY @177 GOTO fadetomb6
IF ~~ THEN REPLY @178 GOTO fadetomb5
END

IF ~~ THEN BEGIN fadetomb5
SAY @179
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadetomb6
SAY @180
IF ~~ THEN REPLY @181 GOTO fadetomb5
IF ~~ THEN REPLY @182 GOTO fadetomb7
END

IF ~~ THEN BEGIN fadetomb7
SAY @183
IF ~~ THEN REPLY @184 EXIT
IF ~Global("E3FADEMATCH","GLOBAL",1)
OR (2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @185 GOTO fadetomb8
END

IF ~~ THEN BEGIN fadetomb8
SAY @186 = @187
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadetomb9
SAY @188 = @189
IF ~~ THEN REPLY @176 GOTO fadetomb5
IF ~~ THEN REPLY @190 GOTO fadetomb10
IF ~~ THEN REPLY @177 GOTO fadetomb6
IF ~~ THEN REPLY @178 GOTO fadetomb5
END

IF ~~ THEN BEGIN fadetomb10
SAY @191
IF ~~ THEN REPLY @184 EXIT
IF ~Global("E3FADEMATCH","GLOBAL",1)
OR (2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @185 GOTO fadetomb8
END

IF ~~ THEN BEGIN fadetomb11
SAY @192
IF ~~ THEN REPLY @193 GOTO fadetomb9
IF ~~ THEN REPLY @194 GOTO fadetomb12
IF ~~ THEN REPLY @195 EXIT
END

IF ~~ THEN BEGIN fadetomb12
SAY @196
IF ~~ THEN REPLY @197 GOTO fadetomb10
IF ~!Global("E3FADEMATCH","GLOBAL",1)~ THEN REPLY @198 GOTO fadetomb5
IF ~Global("E3FADEMATCH","GLOBAL",1)
OR (2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @198 GOTO fadetomb13
END

IF ~~ THEN BEGIN fadetomb13
SAY @199
IF ~~ THEN REPLY @200 GOTO fadetomb5
IF ~~ THEN REPLY @201 GOTO fadetomb7
IF ~~ THEN REPLY @202 GOTO fadetomb14
END

IF ~~ THEN BEGIN fadetomb14
SAY @203 = @204
IF ~~ THEN REPLY @184 EXIT
IF ~Global("E3FADEMATCH","GLOBAL",1)
OR (2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @185 GOTO fadetomb8
END

IF ~~ THEN BEGIN fadetomb15
SAY @205
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadetomb16
SAY @206
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadetomb17
SAY @207 
IF ~~ THEN DO ~IncrementGlobal("E3MEANTOFADE","GLOBAL",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0902")
Global("E3FADELATHTALK","LOCALS",0)~ THEN BEGIN fadelath
SAY @208
IF ~~ THEN REPLY @209 DO ~SetGlobal("E3FADELATHTALK","LOCALS",1)~ EXIT
IF ~~ THEN REPLY @210 DO ~SetGlobal("E3FADELATHTALK","LOCALS",1)~ GOTO fadelathwarning
END

IF ~~ THEN BEGIN fadelathwarning
SAY @211 = @212
IF ~~ THEN REPLY @213 GOTO fadelathno
IF ~~ THEN REPLY @214 GOTO fadelathaway
END

IF ~~ THEN BEGIN fadelathno
SAY @215
IF ~~ THEN REPLY @216 GOTO fadelathbehave
IF ~~ THEN REPLY @217 GOTO fadelathhand
END

IF ~~ THEN BEGIN fadelathaway
SAY @218
IF ~~ THEN REPLY @219 GOTO fadelathfuture
IF ~~ THEN REPLY @220 GOTO fadelathsulky
END

IF ~~ THEN BEGIN fadelathbehave
SAY @221
IF ~~ THEN REPLY @222 GOTO fadelathpleasant
IF ~~ THEN REPLY @223 GOTO fadelathoccupied
END

IF ~~ THEN BEGIN fadelathhand
SAY @224
IF ~~ THEN REPLY @222 GOTO fadelathpleasant
IF ~~ THEN REPLY @223 GOTO fadelathoccupied
END

IF ~~ THEN BEGIN fadelathfuture
SAY @225
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadelathsulky
SAY @226
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadelathpleasant
SAY @227 = @228
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadelathoccupied
SAY @229 = @230
IF ~~ THEN REPLY @231 GOTO fadelathshock
IF ~~ THEN REPLY @232 GOTO fadelathlater
END

IF ~~ THEN BEGIN fadelathshock
SAY @233 = @234
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadelathlater
SAY @235 = @234
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0202")
!InParty("Minsc")
Global("BeholderPlot","GLOBAL",1)
Global("E3FADESEWERS","LOCALS",0)~ THEN BEGIN fadesewers_start
SAY @236
IF ~~ THEN REPLY @237 DO ~SetGlobal("E3FADESEWERS","LOCALS",1)~ GOTO fadesewers_dark
IF ~~ THEN REPLY @238 DO ~SetGlobal("E3FADESEWERS","LOCALS",1)~ GOTO fadesewers_investigate
IF ~~ THEN REPLY @239 DO ~SetGlobal("E3FADESEWERS","LOCALS",1)~ GOTO fadesewers_complaining
END

IF ~~ THEN BEGIN fadesewers_dark
SAY @240
IF ~~ THEN REPLY @241 GOTO fadesewers_phobia
IF ~~ THEN REPLY @242 GOTO fadesewers_complaining
IF ~~ THEN REPLY @243 GOTO fadesewers_freak
END

IF ~~ THEN BEGIN fadesewers_investigate
SAY @244 = @245
IF ~~ THEN REPLY @246 GOTO fadesewers_dark
IF ~~ THEN REPLY @247 GOTO fadesewers_rats
END

IF ~~ THEN BEGIN fadesewers_complaining
SAY @248
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesewers_phobia
SAY @249
IF ~~ THEN REPLY @250 GOTO fadesewers_nonsense
IF ~~ THEN REPLY @251 GOTO fadesewers_spiders
IF ~~ THEN REPLY @252 GOTO fadesewers_ignore
END

IF ~~ THEN BEGIN fadesewers_freak
SAY @253
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesewers_rats
SAY @254
IF ~~ THEN REPLY @250 GOTO fadesewers_nonsense
IF ~~ THEN REPLY @251 GOTO fadesewers_spiders
IF ~~ THEN REPLY @252 GOTO fadesewers_ignore
END

IF ~~ THEN BEGIN fadesewers_nonsense
SAY @255
IF ~~ THEN REPLY @256 GOTO fadesewers_sewer
IF ~~ THEN REPLY @257 GOTO fadesewers_back
IF ~~ THEN REPLY @252 GOTO fadesewers_ignore
END

IF ~~ THEN BEGIN fadesewers_spiders
SAY @258
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesewers_ignore
SAY @259 = @260
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesewers_sewer
SAY @261 = @262
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesewers_back
SAY @263
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("E3FADERENAL","LOCALS",1)
OR(2)
AreaCheck("AR0305")
AreaCheck("AR0300")~ THEN BEGIN renal_start
SAY @264
IF ~~ THEN REPLY @265 DO ~SetGlobal("E3FADERENAL","LOCALS",2)~ GOTO renal_nice
IF ~~ THEN REPLY @266 DO ~SetGlobal("E3FADERENAL","LOCALS",2)~ GOTO renal_lackey
IF ~~ THEN REPLY @267 DO ~SetGlobal("E3FADERENAL","LOCALS",2)~ GOTO renal_like
END

IF ~~ THEN BEGIN renal_nice
SAY @268
IF ~~ THEN REPLY @269 GOTO renal_like
IF ~~ THEN REPLY @270 GOTO renal_lackey
END

IF ~~ THEN BEGIN renal_lackey
SAY @271
IF ~~ THEN REPLY @272 GOTO renal_like
IF ~~ THEN REPLY @273 GOTO renal_get
END

IF ~~ THEN BEGIN renal_like
SAY @274 = @275 = @276
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN renal_get
SAY @277
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0301")
Global("E3FADEMAEVAR","LOCALS",0)
Global("MaeVarWork","GLOBAL",0)~ THEN BEGIN maevar_start
SAY @278
IF ~~ THEN REPLY @279 DO ~SetGlobal("E3FADEMAEVAR","LOCALS",1)~ GOTO maevar_notice
IF ~~ THEN REPLY @280 DO ~SetGlobal("E3FADEMAEVAR","LOCALS",1)~ GOTO maevar_outside
END

IF ~~ THEN BEGIN maevar_notice
SAY @281
IF ~~ THEN REPLY @282 GOTO maevar_recognise
IF ~~ THEN REPLY @283 GOTO maevar_outside
IF ~~ THEN REPLY @284 GOTO maevar_talking
END

IF ~~ THEN BEGIN maevar_outside
SAY @285
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN maevar_recognise
SAY @286
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN maevar_talking
SAY @287
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR1002")
Global("E3FADECOUNCILBUILDING","LOCALS",0)~ THEN BEGIN council_start
SAY @288
IF ~InParty("Edwin")~ THEN DO ~SetGlobal("E3FADECOUNCILBUILDING","LOCALS",1)~ EXTERN EDWINJ fadecouncil
IF ~!InParty("Edwin")~ THEN DO ~SetGlobal("E3FADECOUNCILBUILDING","LOCALS",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0800")
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
Global("AranJob","GLOBAL",3)
!Global("LassalVampires","GLOBAL",3)
Global("E3FADEGRAVEYARDGIFT","LOCALS",0)
PartyHasItem("E3AMUL01")~ THEN BEGIN gift_start
SAY @289 = @290
IF ~~ THEN REPLY @291 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift_need
IF ~~ THEN REPLY @292 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift_appreciate
IF ~~ THEN REPLY @293 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift_take
IF ~~ THEN REPLY @294 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift_vampires
END

IF ~~ THEN BEGIN gift_need
SAY @295
IF ~~ THEN REPLY @296 GOTO gift_appreciate
IF ~~ THEN REPLY @297 GOTO gift_take
IF ~~ THEN REPLY @298 GOTO gift_vampires
END

IF ~~ THEN BEGIN gift_appreciate
SAY @299
IF ~~ THEN DO ~DestroyItem("E3AMUL01")
GiveItemCreate("E3AMUL02",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN gift_take
SAY @300 = @301
IF ~~ THEN DO ~DestroyItem("E3AMUL01")
GiveItemCreate("E3AMUL02",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN gift_vampires
SAY @302 = @301
IF ~~ THEN DO ~DestroyItem("E3AMUL01")
GiveItemCreate("E3AMUL02",Player1,1,0,0)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0800")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("AranJob","GLOBAL",3)
!Global("LassalVampires","GLOBAL",3)
Global("E3FADEGRAVEYARDGIFT","LOCALS",0)
PartyHasItem("E3AMUL01")~ THEN BEGIN gift2_start
SAY @303 = @290
IF ~~ THEN REPLY @304 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift2_need
IF ~~ THEN REPLY @292 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift2_appreciate
IF ~~ THEN REPLY @293 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift2_take
IF ~~ THEN REPLY @294 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift2_vampires
END

IF ~~ THEN BEGIN gift2_need
SAY @305
IF ~~ THEN REPLY @306 GOTO gift2_appreciate
IF ~~ THEN REPLY @307 GOTO gift2_take
IF ~~ THEN REPLY @298 GOTO gift2_vampires
END

IF ~~ THEN BEGIN gift2_appreciate
SAY @308
IF ~~ THEN DO ~DestroyItem("E3AMUL01")
GiveItemCreate("E3AMUL02",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN gift2_take
SAY @300 = @309
IF ~~ THEN DO ~DestroyItem("E3AMUL01")
GiveItemCreate("E3AMUL02",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN gift2_vampires
SAY @310 = @309
IF ~~ THEN DO ~DestroyItem("E3AMUL01")
GiveItemCreate("E3AMUL02",Player1,1,0,0)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
!Global("E3FADEROMANCEACTIVE","GLOBAL",1)
!Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3FADEFIRSTBODHIPOST","LOCALS",0)
Global("E3BODHILEAVE","GLOBAL",1)
AreaCheck("AR0801")~ THEN BEGIN firstbodhipost_start
SAY @311
IF ~~ THEN DO ~SetGlobal("E3FADEFIRSTBODHIPOST","LOCALS",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
OR(2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3FADEFIRSTBODHIPOST","LOCALS",0)
Global("E3BODHILEAVE","GLOBAL",1)
AreaCheck("AR0801")~ THEN BEGIN firstbodhipost_start
SAY @312
IF ~~ THEN DO ~SetGlobal("E3FADEFIRSTBODHIPOST","LOCALS",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR1602")
GlobalLT("AsylumPlot","GLOBAL",20)
Global("E3FADEBRYNNTALK","LOCALS",0)~ THEN BEGIN brynn_start
SAY @313
IF ~~ THEN REPLY @314 DO ~SetGlobal("E3FADEBRYNNTALK","LOCALS",1)~ GOTO brynn_feeling
IF ~~ THEN REPLY @315 DO ~SetGlobal("E3FADEBRYNNTALK","LOCALS",1)~ GOTO brynn_imoen
IF ~~ THEN REPLY @316 DO ~SetGlobal("E3FADEBRYNNTALK","LOCALS",1)~ GOTO brynn_sailing
IF ~~ THEN REPLY @317 DO ~SetGlobal("E3FADEBRYNNTALK","LOCALS",1)~ GOTO brynn_revenge
END

IF ~~ THEN BEGIN brynn_feeling
SAY @318
IF ~~ THEN REPLY @319 GOTO brynn_imoen
IF ~~ THEN REPLY @320 GOTO brynn_revenge
IF ~~ THEN REPLY @321 GOTO brynn_over
END

IF ~~ THEN BEGIN brynn_imoen
SAY @322
IF ~~ THEN REPLY @323 GOTO brynn_right
IF ~~ THEN REPLY @324 GOTO brynn_fine
IF ~~ THEN REPLY @325 GOTO brynn_revenge
END

IF ~~ THEN BEGIN brynn_sailing
SAY @326
IF ~~ THEN REPLY @319 GOTO brynn_imoen
IF ~~ THEN REPLY @320 GOTO brynn_revenge
IF ~~ THEN REPLY @321 GOTO brynn_over
END

IF ~~ THEN BEGIN brynn_revenge
SAY @327
IF ~~ THEN REPLY @328 GOTO brynn_pain
IF ~~ THEN REPLY @329 GOTO brynn_priority
IF ~~ THEN REPLY @330 GOTO brynn_clear
END

IF ~~ THEN BEGIN brynn_over
SAY @331 
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN GOTO brynn_smile
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN GOTO brynn_kiss
IF ~OR(2)
       !Global("E3FADEROMANCEACTIVE","GLOBAL",1)
       !Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_smile
SAY @332
IF ~~ THEN REPLY @333 GOTO brynn_prospect
IF ~~ THEN REPLY @334 GOTO brynn_agree
END

IF ~~ THEN BEGIN brynn_kiss
SAY @335
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_agree
SAY @336
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_right
SAY @337
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_fine
SAY @338
IF ~~ THEN REPLY @339 GOTO brynn_agree
IF ~~ THEN REPLY @340 GOTO brynn_dreams
IF ~~ THEN REPLY @341 GOTO brynn_exciting
END

IF ~~ THEN BEGIN brynn_pain
SAY @342
IF ~~ THEN REPLY @343 GOTO brynn_dare
IF ~~ THEN REPLY @344 GOTO brynn_priority
END

IF ~~ THEN BEGIN brynn_dare
SAY @345
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_priority
SAY @346
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_clear
SAY @347
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_prospect
SAY @348 = @349
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_dreams
SAY @350 = @351
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_exciting
SAY @352
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
Global("PhaereInnuendo","GLOBAL",2)
!Range("Phaere",6)
Global("E3FADEMAD2","LOCALS",0)~ THEN BEGIN phaere1_start
SAY @353
IF ~~ THEN REPLY @354 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere1_talking
IF ~~ THEN REPLY @355 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere1_choice
IF ~~ THEN REPLY @356 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere1_male
IF ~~ THEN REPLY @357 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere1_what
END

IF ~~ THEN BEGIN phaere1_talking
SAY @358
IF ~~ THEN REPLY @359 GOTO phaere1_choice
IF ~~ THEN REPLY @360 GOTO phaere1_what
IF ~~ THEN REPLY @361 GOTO phaere1_male
END

IF ~~ THEN BEGIN phaere1_choice
SAY @362
IF ~~ THEN REPLY @363 GOTO phaere1_turn
IF ~~ THEN REPLY @364 GOTO phaere1_what
IF ~~ THEN REPLY @365 GOTO phaere1_male
END

IF ~~ THEN BEGIN phaere1_male
SAY @366
IF ~~ THEN REPLY @367 GOTO phaere1_what
IF ~~ THEN REPLY @368 GOTO phaere1_alive
IF ~~ THEN REPLY @369 GOTO phaere1_turn
IF ~~ THEN REPLY @370 GOTO phaere1_understand
END

IF ~~ THEN BEGIN phaere1_what
SAY @371
IF ~~ THEN REPLY @372 GOTO phaere1_understand
IF ~~ THEN REPLY @368 GOTO phaere1_alive
IF ~~ THEN REPLY @369 GOTO phaere1_turn
END

IF ~~ THEN BEGIN phaere1_turn
SAY @373
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere1_alive
SAY @374
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere1_understand
SAY @375
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",2)
!Range("Phaere",6)
Global("E3FADEMAD2","LOCALS",0)~ THEN BEGIN phaere2_start
SAY @353
IF ~~ THEN REPLY @354 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere2_talking
IF ~~ THEN REPLY @355 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere2_choice
IF ~~ THEN REPLY @356 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere2_male
END

IF ~~ THEN BEGIN phaere2_talking
SAY @376
IF ~~ THEN REPLY @377 GOTO phaere2_choice
IF ~~ THEN REPLY @378 GOTO phaere2_want
IF ~~ THEN REPLY @361 GOTO phaere2_male
END

IF ~~ THEN BEGIN phaere2_choice
SAY @379
IF ~~ THEN REPLY @363 GOTO phaere2_turn
IF ~~ THEN REPLY @380 GOTO phaere2_situation
IF ~~ THEN REPLY @365 GOTO phaere2_male
IF ~~ THEN REPLY @378 GOTO phaere2_want
END

IF ~~ THEN BEGIN phaere2_male
SAY @366
IF ~~ THEN REPLY @381 GOTO phaere2_alive
IF ~~ THEN REPLY @369 GOTO phaere2_turn
IF ~~ THEN REPLY @370 GOTO phaere2_understand
END

IF ~~ THEN BEGIN phaere2_want
SAY @382
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN phaere2_turn
SAY @383
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere2_situation
SAY @384
IF ~~ THEN REPLY @385 GOTO phaere2_sorry
IF ~~ THEN REPLY @386 GOTO phaere2_alive
IF ~~ THEN REPLY @387 GOTO phaere2_problem
IF ~~ THEN REPLY @388 GOTO phaere2_understand
END

IF ~~ THEN BEGIN phaere2_alive
SAY @389
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere2_understand
SAY @390
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere2_sorry
SAY @391
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere2_problem
SAY @392
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
Global("PhaereInnuendo","GLOBAL",3)
!Range("Phaere",6)
Global("E3FADEMAD3","LOCALS",0)~ THEN BEGIN phaere3_start
SAY @393
IF ~~ THEN REPLY @394 DO ~SetGlobal("E3FADEMAD3","LOCALS",1)~ GOTO phaere3_give
IF ~~ THEN REPLY @395 DO ~SetGlobal("E3FADEMAD3","LOCALS",1)~ GOTO phaere3_possible
IF ~~ THEN REPLY @396 DO ~SetGlobal("E3FADEMAD3","LOCALS",1)~ GOTO phaere3_when
END

IF ~~ THEN BEGIN phaere3_give
SAY @397
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere3_possible
SAY @398
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere3_when
SAY @399
IF ~~ THEN REPLY @400 GOTO phaere3_much
IF ~~ THEN REPLY @401 GOTO phaere3_another
END

IF ~~ THEN BEGIN phaere3_much
SAY @402
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere3_another
SAY @403
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",3)
!Range("Phaere",6)
Global("E3FADEMAD3","LOCALS",0)~ THEN BEGIN phaere4_start
SAY @404
IF ~~ THEN REPLY @405 DO ~SetGlobal("E3FADEMAD3","LOCALS",1)~ GOTO phaere4_couldnt
IF ~~ THEN REPLY @406 DO ~SetGlobal("E3FADEMAD3","LOCALS",1)~ GOTO phaere4_couldnt
IF ~~ THEN REPLY @407 DO ~SetGlobal("E3FADEMAD3","LOCALS",1)~ GOTO phaere4_little
END

IF ~~ THEN BEGIN phaere4_couldnt
SAY @408
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere4_little
SAY @409 = @410
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0500")
Global("E3ARANSMUM","GLOBAL",2)
Global("E3FADEARANSMUM","LOCALS",0)~ THEN BEGIN aransmum_start
SAY @411
IF ~~ THEN DO ~SetGlobal("E3FADEARANSMUM","LOCALS",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0500")
Global("E3ARANSMUM","GLOBAL",4)
Global("E3FADEARANSMUM2","LOCALS",0)~ THEN BEGIN aransmum_quest
SAY @412
IF ~~ THEN DO ~SetGlobal("E3FADEARANSMUM2","LOCALS",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR1900")
Global("E3FADEGROVE","LOCALS",0)~ THEN BEGIN fadegrove
SAY @413
IF ~~ THEN REPLY @414 DO ~SetGlobal("E3FADEGROVE","LOCALS",1)~ GOTO fadegrove_okay
IF ~~ THEN REPLY @415 DO ~SetGlobal("E3FADEGROVE","LOCALS",1)~ GOTO fadegrove_annoyed
END

IF ~~ THEN BEGIN fadegrove_okay
SAY @416
IF ~OR(3)
!InParty("Cernd")
!See("Cernd")
StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN EXIT
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN EXTERN CERNDJ fadegrove
END

IF ~~ THEN BEGIN fadegrove_annoyed
SAY @417
IF ~OR(3)
!InParty("Cernd")
!See("Cernd")
StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN EXIT
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN EXTERN CERNDJ fadegrove
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR1515")
Global("E3FADESPELLHOLD","LOCALS",0)
Global("HasAsylumWardstone","GLOBAL",1)
OR(2)
Global("PPdeshSend","GLOBAL",0)
Global("PirateRefused","GLOBAL",1)~ THEN BEGIN fadespellhold
SAY @418
IF ~~ THEN DO ~SetGlobal("E3FADESPELLHOLD","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN fadelonk
SAY @419
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeimoen
SAY @420
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul1
SAY @421
IF ~~ THEN REPLY @422 GOTO fadesoul1_took
IF ~~ THEN REPLY @423 GOTO fadesoul1_soul
IF ~~ THEN REPLY @424 GOTO fadesoul1_time
END

IF ~~ THEN BEGIN fadesoul1_took
SAY @425
IF ~~ THEN REPLY @426 GOTO fadesoul1_going
IF ~~ THEN REPLY @427 GOTO fadesoul1_reason
IF ~~ THEN REPLY @428 GOTO fadesoul1_time
END

IF ~~ THEN BEGIN fadesoul1_soul
SAY @429
IF ~~ THEN REPLY @430 GOTO fadesoul1_help
IF ~~ THEN REPLY @431 GOTO fadesoul1_imoen
IF ~~ THEN REPLY @432 GOTO fadesoul1_time
END

IF ~~ THEN BEGIN fadesoul1_time
SAY @433 = @434
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul1_going
SAY @435 = @434
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul1_reason
SAY @436
IF ~~ THEN REPLY @430 GOTO fadesoul1_help
IF ~~ THEN REPLY @431 GOTO fadesoul1_imoen
IF ~~ THEN REPLY @432 GOTO fadesoul1_time
END

IF ~~ THEN BEGIN fadesoul1_help
SAY @437
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul1_imoen
SAY @438
IF ~~ THEN REPLY @439 GOTO fadesoul1_time
IF ~~ THEN REPLY @440 GOTO fadesoul1_vision
END

IF ~~ THEN BEGIN fadesoul1_vision
SAY @441 = @434
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul2
SAY @442
IF ~~ THEN REPLY @443 GOTO fadesoul2_took
IF ~~ THEN REPLY @423 GOTO fadesoul2_soul
IF ~~ THEN REPLY @424 GOTO fadesoul2_time
END

IF ~~ THEN BEGIN fadesoul2_took
SAY @425
IF ~~ THEN REPLY @426 GOTO fadesoul2_going
IF ~~ THEN REPLY @427 GOTO fadesoul2_reason
IF ~~ THEN REPLY @428 GOTO fadesoul2_time
IF ~~ THEN REPLY @444 GOTO fadesoul2_worry
END

IF ~~ THEN BEGIN fadesoul2_soul
SAY @429
IF ~~ THEN REPLY @445 GOTO fadesoul2_help
IF ~~ THEN REPLY @431 GOTO fadesoul2_imoen
IF ~~ THEN REPLY @432 GOTO fadesoul2_time
END

IF ~~ THEN BEGIN fadesoul2_time
SAY @433 = @446
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul2_going
SAY @435 = @446
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul2_reason
SAY @436
IF ~~ THEN REPLY @445 GOTO fadesoul2_help
IF ~~ THEN REPLY @431 GOTO fadesoul2_imoen
IF ~~ THEN REPLY @432 GOTO fadesoul2_time
END

IF ~~ THEN BEGIN fadesoul2_worry
SAY @447
IF ~~ THEN REPLY @448 GOTO fadesoul2_going
IF ~~ THEN REPLY @449 GOTO fadesoul2_reason
END

IF ~~ THEN BEGIN fadesoul2_help
SAY @450
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul2_imoen
SAY @438
IF ~~ THEN REPLY @439 GOTO fadesoul2_time
IF ~~ THEN REPLY @440 GOTO fadesoul2_vision
END

IF ~~ THEN BEGIN fadesoul2_vision
SAY @441 = @446
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesouln
SAY @421
IF ~~ THEN REPLY @422 GOTO fadesouln_took
IF ~~ THEN REPLY @423 GOTO fadesouln_soul
IF ~~ THEN REPLY @424 GOTO fadesouln_time
END

IF ~~ THEN BEGIN fadesouln_took
SAY @425
IF ~~ THEN REPLY @426 GOTO fadesouln_going
IF ~~ THEN REPLY @427 GOTO fadesouln_reason
IF ~~ THEN REPLY @428 GOTO fadesouln_time
END

IF ~~ THEN BEGIN fadesouln_soul
SAY @429
IF ~~ THEN REPLY @430 GOTO fadesouln_help
IF ~~ THEN REPLY @431 GOTO fadesouln_imoen
IF ~~ THEN REPLY @432 GOTO fadesouln_time
END

IF ~~ THEN BEGIN fadesouln_time
SAY @451
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesouln_going
SAY @452
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesouln_reason
SAY @436
IF ~~ THEN REPLY @430 GOTO fadesouln_help
IF ~~ THEN REPLY @431 GOTO fadesouln_imoen
IF ~~ THEN REPLY @432 GOTO fadesouln_time
END

IF ~~ THEN BEGIN fadesouln_help
SAY @453
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesouln_imoen
SAY @438
IF ~~ THEN REPLY @439 GOTO fadesouln_time
IF ~~ THEN REPLY @440 GOTO fadesouln_vision
END

IF ~~ THEN BEGIN fadesouln_vision
SAY @454
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeslayer
SAY @455
IF ~~ THEN REPLY @456 GOTO fadeslayer_slayer
IF ~~ THEN REPLY @457 GOTO fadeslayer_close
IF ~~ THEN REPLY @458 GOTO fadeslayer_how
IF ~~ THEN REPLY @459 GOTO fadeslayer_power
END

IF ~~ THEN BEGIN fadeslayer_slayer
SAY @460
IF ~~ THEN REPLY @461 GOTO fadeslayer_hurt
IF ~~ THEN REPLY @462 GOTO fadeslayer_swear
IF ~~ THEN REPLY @463 GOTO fadeslayer_need
END

IF ~~ THEN BEGIN fadeslayer_close
SAY @464
IF ~~ THEN REPLY @461 GOTO fadeslayer_hurt
IF ~~ THEN REPLY @462 GOTO fadeslayer_swear
IF ~~ THEN REPLY @463 GOTO fadeslayer_need
END

IF ~~ THEN BEGIN fadeslayer_how
SAY @465 = @466
IF ~~ THEN REPLY @461 GOTO fadeslayer_hurt
IF ~~ THEN REPLY @462 GOTO fadeslayer_swear
IF ~~ THEN REPLY @463 GOTO fadeslayer_need
END

IF ~~ THEN BEGIN fadeslayer_power
SAY @467
IF ~~ THEN REPLY @468 GOTO fadeslayer_again
IF ~~ THEN REPLY @469 GOTO fadeslayer_world
END

IF ~~ THEN BEGIN fadeslayer_hurt
SAY @470
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeslayer_swear
SAY @471 = @472
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeslayer_need
SAY @473 = @474 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeslayer_again
SAY @475 = @474
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeslayer_world
SAY @476
IF ~~ THEN REPLY @461 GOTO fadeslayer_backing
IF ~~ THEN REPLY @477 GOTO fadeslayer_defeat
END

IF ~~ THEN BEGIN fadeslayer_backing
SAY @478
IF ~~ THEN REPLY @479 GOTO fadeslayer_urge
IF ~~ THEN REPLY @477 GOTO fadeslayer_defeat
IF ~~ THEN REPLY @480 GOTO fadeslayer_over
END

IF ~~ THEN BEGIN fadeslayer_defeat
SAY @481
IF ~~ THEN REPLY @479 GOTO fadeslayer_urge
IF ~~ THEN REPLY @480 GOTO fadeslayer_over
END

IF ~~ THEN BEGIN fadeslayer_urge
SAY @482
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeslayer_over
SAY @483
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END  

IF ~GlobalTimerExpired("E3FADEREMINDSARAN","GLOBAL")
Global("E3FADEREMINDER","GLOBAL",0)
Global("E3FINALQUEST","GLOBAL",1)
InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN fade_reminder1
SAY @484 
IF ~~ THEN DO ~SetGlobal("E3FADEREMINDER","GLOBAL",1)
SetGlobalTimer("E3FADEREMINDSARAN","GLOBAL",THREE_DAYS)~ EXIT
END

IF ~GlobalTimerExpired("E3FADEREMINDSARAN","GLOBAL")
Global("E3FADEREMINDER","GLOBAL",1)
Global("E3FINALQUEST","GLOBAL",1)
InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN fade_reminder2
SAY @485
IF ~~ THEN DO ~SetGlobal("E3FADEREMINDER","GLOBAL",2)
SetGlobal("E3FADEARANONOWN","GLOBAL",1)
SetGlobal("E3FADEJOINED","LOCALS",0)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0307",4668,2017,6)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0500")
Global("E3FINALQUEST","GLOBAL",3)
Global("E3POSTFLAGONS","LOCALS",0)~ THEN BEGIN postflagons_start
SAY @486
IF ~~ THEN REPLY @487 DO ~SetGlobal("E3POSTFLAGONS","LOCALS",1)~ GOTO postflagons_alright
IF ~~ THEN REPLY @488 DO ~SetGlobal("E3POSTFLAGONS","LOCALS",1)~ GOTO postflagons_this
END

IF ~~ THEN BEGIN postflagons_alright
SAY @489
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postflagons_this
SAY @490
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0318")
Dead("E3Xekral")
Global("E3FINALQUEST","GLOBAL",4)
Global("E3KILLEDXEKRALTALK","LOCALS",0)~ THEN BEGIN killedxekral_start
SAY @491
IF ~~ THEN REPLY @492 DO ~SetGlobal("E3KILLEDXEKRALTALK","LOCALS",1)~ GOTO killedxekral_report
IF ~~ THEN REPLY @493 DO ~SetGlobal("E3KILLEDXEKRALTALK","LOCALS",1)~ GOTO killedxekral_scary
END

IF ~~ THEN BEGIN killedxekral_report
SAY @494
IF ~~ THEN REPLY @495 GOTO killedxekral_deal
IF ~~ THEN REPLY @496 GOTO killedxekral_past
IF ~~ THEN REPLY @497 GOTO killedxekral_punish
END

IF ~~ THEN BEGIN killedxekral_scary
SAY @498
IF ~~ THEN REPLY @495 GOTO killedxekral_deal
IF ~~ THEN REPLY @496 GOTO killedxekral_past
IF ~~ THEN REPLY @497 GOTO killedxekral_punish
END

IF ~~ THEN BEGIN killedxekral_deal
SAY @499
IF ~~ THEN REPLY @500 GOTO killedxekral_punish
IF ~~ THEN REPLY @501 GOTO killedxekral_leave
END

IF ~~ THEN BEGIN killedxekral_past
SAY @502
IF ~~ THEN REPLY @500 GOTO killedxekral_punish
IF ~~ THEN REPLY @501 GOTO killedxekral_leave
END

IF ~~ THEN BEGIN killedxekral_punish
SAY @503
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN killedxekral_leave
SAY @504
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR2600")
Global("ElvenCityTree","GLOBAL",2)
Global("E3DIDSULTALK1","LOCALS",0)~ THEN BEGIN sultalk1_start
SAY @505
IF ~~ THEN REPLY @506 DO ~SetGlobal("E3DIDSULTALK1","LOCALS",1)~ GOTO sultalk1_worry
IF ~~ THEN REPLY @507 DO ~SetGlobal("E3DIDSULTALK1","LOCALS",1)~ GOTO sultalk1_intimidate
IF ~~ THEN REPLY @508 DO ~SetGlobal("E3DIDSULTALK1","LOCALS",1)~ GOTO sultalk1_help
END

IF ~~ THEN BEGIN sultalk1_worry
SAY @509
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sultalk1_intimidate
SAY @510
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sultalk1_help
SAY @511
IF ~~ THEN EXIT
END

IF ~Global("E3DIDSULTALK2","LOCALS",2)~ THEN BEGIN sultalk2_start
SAY @512
IF ~~ THEN DO ~SetGlobal("E3DIDSULTALK2","LOCALS",3)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0202")
Dead("UnseeingEye")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)
Global("E3SEWERSTALK","LOCALS",0)~ THEN BEGIN finalquest4_sewers
SAY @513
IF ~~ THEN DO ~SetGlobal("E3SEWERSTALK","LOCALS",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0204")
Dead("E3Cirion")
Dead("E3Savanya")
Dead("E3Jekhril")
Dead("E3Sume")
Dead("E3Taeghen")
Dead("E3Eriale")
Global("E3FINALQUEST","GLOBAL",7)
Global("E3KILLEDCIRIONTALK","LOCALS",0)~ THEN BEGIN killedcirion_start
SAY @514 
IF ~~ THEN REPLY @515 DO ~SetGlobal("E3KILLEDCIRIONTALK","LOCALS",1)
SetGlobal("E3FINALQUEST","GLOBAL",8)~ GOTO killedcirion_family
IF ~~ THEN REPLY @516 DO ~SetGlobal("E3KILLEDCIRIONTALK","LOCALS",1)
SetGlobal("E3FINALQUEST","GLOBAL",8)~ GOTO killedcirion_know
IF ~~ THEN REPLY @517 DO ~SetGlobal("E3KILLEDCIRIONTALK","LOCALS",1)
SetGlobal("E3FINALQUEST","GLOBAL",8)~ GOTO killedcirion_okay
END

IF ~~ THEN BEGIN killedcirion_family
SAY @518 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN killedcirion_know
SAY @519
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN killedcirion_okay
SAY @520
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0314")
Dead("Embarl")
Global("E3DIDEMBARLDEADTALK","LOCALS",0)~ THEN BEGIN embarldead
SAY @521
IF ~~ THEN DO ~SetGlobal("E3DIDEMBARLDEADTALK","LOCALS",1)~ EXIT
END

IF ~Global("E3FRIENDTALK","GLOBAL",2)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN ft2_start
SAY @522
IF ~~ THEN REPLY @523 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_info
IF ~~ THEN REPLY @524 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_later
IF ~~ THEN REPLY @525 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_insult
IF ~~ THEN REPLY @526 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_annoyance
END

IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",3)
GlobalLT("E3LOVETALK","GLOBAL",3)
GlobalLT("E3FRIENDTALK","GLOBAL",3)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN ft2_start
SAY @522
IF ~~ THEN REPLY @523 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_info
IF ~~ THEN REPLY @524 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_later
IF ~~ THEN REPLY @525 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_insult
IF ~~ THEN REPLY @526 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_annoyance
END

IF ~~ THEN BEGIN ft2_info
SAY @527
IF ~~ THEN REPLY @528 GOTO ft2_sister
IF ~~ THEN REPLY @529 GOTO ft2_honour
IF ~~ THEN REPLY @530 GOTO ft2_uninterest
END

IF ~~ THEN BEGIN ft2_sister
SAY @531
IF ~~ THEN REPLY @532 GOTO ft2_abandon
IF ~~ THEN REPLY @533 GOTO ft2_location
IF ~~ THEN REPLY @534 GOTO ft2_insufferable
IF ~~ THEN REPLY @535 GOTO ft2_owe
END

IF ~~ THEN BEGIN ft2_abandon
SAY @536
IF ~~ THEN REPLY @537 EXIT
IF ~~ THEN REPLY @538 GOTO ft2_incarceration
END

IF ~~ THEN BEGIN ft2_incarceration
SAY @539 = @540
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft2_location
SAY @541
IF ~~ THEN REPLY @542 GOTO ft2_suffer
IF ~~ THEN REPLY @543 GOTO ft2_wizards
END

IF ~~ THEN BEGIN ft2_suffer
SAY @544 = @545
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft2_wizards
SAY @546 = @547
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft2_insufferable
SAY @548
IF ~~ THEN REPLY @549 EXIT
IF ~~ THEN REPLY @550 GOTO ft2_owe
END

IF ~~ THEN BEGIN ft2_owe
SAY @551 = @552
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft2_honour
SAY @553
IF ~~ THEN REPLY @554 GOTO ft2_friend
IF ~~ THEN REPLY @555 GOTO ft2_rescue
END

IF ~~ THEN BEGIN ft2_friend
SAY @556 = @557
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft2_rescue
SAY @558 = @559
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft2_uninterest
SAY @560
IF ~~ THEN REPLY @561 GOTO ft2_stop
IF ~~ THEN REPLY @562 GOTO ft2_sister
END

IF ~~ THEN BEGIN ft2_stop
SAY @563
IF ~~ THEN DO ~SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ft2_later
SAY @564
IF ~~ THEN REPLY @565 GOTO ft2_info
IF ~~ THEN REPLY @566 GOTO ft2_uninterest
IF ~~ THEN REPLY @567 GOTO ft2_insult
END

IF ~~ THEN BEGIN ft2_insult
SAY @563
IF ~~ THEN REPLY @568 GOTO ft2_allofthis
IF ~~ THEN REPLY @569 DO ~SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ft2_allofthis
SAY @570
IF ~~ THEN REPLY @571 GOTO ft2_sister
IF ~~ THEN REPLY @572 GOTO ft2_uninterest
IF ~~ THEN REPLY @573 GOTO ft2_honour
END

IF ~~ THEN BEGIN ft2_annoyance
SAY @574
IF ~~ THEN REPLY @568 GOTO ft2_allofthis
IF ~~ THEN REPLY @569 DO ~SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)~ EXIT
END

IF ~Global("E3FRIENDTALK","GLOBAL",4)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN ft4_start
SAY @575
IF ~~ THEN REPLY @576 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1b
IF ~~ THEN REPLY @577 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1c
IF ~~ THEN REPLY @578 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1d
IF ~~ THEN REPLY @579 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1e
END

IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",3)
GlobalLT("E3LOVETALK","GLOBAL",5)
GlobalLT("E3FRIENDTALK","GLOBAL",5)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN ft4_start
SAY @575
IF ~~ THEN REPLY @576 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1b
IF ~~ THEN REPLY @577 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1c
IF ~~ THEN REPLY @578 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1d
IF ~~ THEN REPLY @579 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1e
END

IF ~~ THEN BEGIN ft4_1b
SAY @580
IF ~~ THEN REPLY @581 GOTO ft4_1f
IF ~~ THEN REPLY @582 GOTO ft4_1g
IF ~~ THEN REPLY @583 GOTO ft4_1h
END

IF ~~ THEN BEGIN ft4_1c
SAY @584
IF ~~ THEN REPLY @585 GOTO ft4_1i
IF ~~ THEN REPLY @586 GOTO ft4_1j
IF ~~ THEN REPLY @587 GOTO ft4_1k
END

IF ~~ THEN BEGIN ft4_1d
SAY @588
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft4_1e
SAY @589
IF ~~ THEN REPLY @590 GOTO ft4_1l
IF ~~ THEN REPLY @591 GOTO ft4_4a
IF ~~ THEN REPLY @592 GOTO ft4_1m
END

IF ~~ THEN BEGIN ft4_1f
SAY @593
IF ~~ THEN REPLY @594 GOTO ft4_1n
IF ~~ THEN REPLY @595 GOTO ft4_1n
IF ~~ THEN REPLY @596 GOTO ft4_1p
END

IF ~~ THEN BEGIN ft4_1g
SAY @597
IF ~~ THEN REPLY @598 GOTO ft4_4a
IF ~~ THEN REPLY @599 GOTO ft4_1q
END

IF ~~ THEN BEGIN ft4_1h
SAY @600
IF ~~ THEN REPLY @594 GOTO ft4_1n
IF ~~ THEN REPLY @595 GOTO ft4_1n
IF ~~ THEN REPLY @601 GOTO ft4_1p
END

IF ~~ THEN BEGIN ft4_1i
SAY @602
IF ~~ THEN REPLY @603 GOTO ft4_1n
IF ~~ THEN REPLY @604 GOTO ft4_1p
IF ~~ THEN REPLY @605 GOTO ft4_1r
IF ~~ THEN REPLY @606 GOTO ft4_1n
END

IF ~~ THEN BEGIN ft4_1j
SAY @607
IF ~~ THEN REPLY @608 GOTO ft4_1s
IF ~~ THEN REPLY @609 GOTO ft4_1n
END

IF ~~ THEN BEGIN ft4_1k
SAY @610 = @611
IF ~~ THEN REPLY @612 GOTO ft4_1t
IF ~~ THEN REPLY @613 GOTO ft4_4b
END

IF ~~ THEN BEGIN ft4_1l
SAY @614
IF ~~ THEN REPLY @603 GOTO ft4_1n
IF ~~ THEN REPLY @615 GOTO ft4_1u
IF ~~ THEN REPLY @616 GOTO ft4_1r
END

IF ~~ THEN BEGIN ft4_1m
SAY @614
IF ~~ THEN REPLY @603 GOTO ft4_1n
IF ~~ THEN REPLY @615 GOTO ft4_1u
IF ~~ THEN REPLY @616 GOTO ft4_1r
END

IF ~~ THEN BEGIN ft4_1n
SAY @617
IF ~~ THEN REPLY @618 GOTO ft4_1r
IF ~~ THEN REPLY @619 GOTO ft4_4a
IF ~~ THEN REPLY @620 GOTO ft4_1v
END

IF ~~ THEN BEGIN ft4_1p
SAY @621
IF ~~ THEN REPLY @622 GOTO ft4_1r
IF ~~ THEN REPLY @623 GOTO ft4_1v
END

IF ~~ THEN BEGIN ft4_1q
SAY @624
IF ~~ THEN REPLY @603 GOTO ft4_1n
IF ~~ THEN REPLY @609 GOTO ft4_1n
IF ~~ THEN REPLY @601 GOTO ft4_1p
END

IF ~~ THEN BEGIN ft4_1r
SAY @625
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft4_1s
SAY @626
IF ~~ THEN REPLY @618 GOTO ft4_1r
IF ~~ THEN REPLY @620 GOTO ft4_1v
END

IF ~~ THEN BEGIN ft4_1t
SAY @627
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft4_1u
SAY @628
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft4_1v
SAY @629
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft4_4a
SAY @630
IF ~~ THEN DO ~SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ft4_4b
SAY @631
IF ~~ THEN DO ~SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)~ EXIT
END

IF ~Global("E3FRIENDTALK","GLOBAL",6)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN ft6_start
SAY @632
IF ~~ THEN REPLY @633 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",7)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft6_worry
IF ~~ THEN REPLY @634 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",7)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft6_feyri
IF ~~ THEN REPLY @635 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",7)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft6_elves
END

IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",3)
GlobalLT("E3LOVETALK","GLOBAL",7)
GlobalLT("E3FRIENDTALK","GLOBAL",7)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN ft6_start
SAY @632
IF ~~ THEN REPLY @633 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",7)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft6_worry
IF ~~ THEN REPLY @634 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",7)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft6_feyri
IF ~~ THEN REPLY @635 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",7)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft6_elves
END

IF ~~ THEN BEGIN ft6_worry
SAY @636
IF ~~ THEN REPLY @637 GOTO ft6_curious
IF ~~ THEN REPLY @638 GOTO ft6_elves
END

IF ~~ THEN BEGIN ft6_feyri
SAY @639
IF ~~ THEN REPLY @640 GOTO ft6_heritage
IF ~~ THEN REPLY @641 GOTO ft6_demonic
IF ~~ THEN REPLY @642 GOTO ft6_meet
END

IF ~~ THEN BEGIN ft6_elves
SAY @643
IF ~~ THEN REPLY @644 GOTO ft6_heritage
IF ~~ THEN REPLY @645 GOTO ft6_demonic
IF ~~ THEN REPLY @646 GOTO ft6_meet
END

IF ~~ THEN BEGIN ft6_curious
SAY @647
IF ~~ THEN REPLY @644 GOTO ft6_heritage
IF ~~ THEN REPLY @648 GOTO ft6_demonic
IF ~~ THEN REPLY @649 GOTO ft6_meet
END

IF ~~ THEN BEGIN ft6_heritage
SAY @650 = @651
IF ~~ THEN REPLY @652 GOTO ft6_evil
IF ~~ THEN REPLY @653 GOTO ft6_surprise
IF ~~ THEN REPLY @654 GOTO ft6_judge
IF ~~ THEN REPLY @655 GOTO ft6_shock
END

IF ~~ THEN BEGIN ft6_demonic
SAY @656 = @651
IF ~~ THEN REPLY @657 GOTO ft6_surprise
IF ~~ THEN REPLY @658 GOTO ft6_evil
IF ~~ THEN REPLY @659 GOTO ft6_judge
IF ~~ THEN REPLY @660 GOTO ft6_shock
END

IF ~~ THEN BEGIN ft6_meet
SAY @661
IF ~~ THEN REPLY @662 GOTO ft6_bother
IF ~~ THEN REPLY @663 GOTO ft6_interest
END

IF ~~ THEN BEGIN ft6_evil
SAY @664
IF ~~ THEN REPLY @665 GOTO ft6_excuse
IF ~~ THEN REPLY @666 GOTO ft6_different
END

IF ~~ THEN BEGIN ft6_surprise
SAY @667
IF ~~ THEN REPLY @668 GOTO ft6_tease
IF ~~ THEN REPLY @669 GOTO ft6_judge
IF ~~ THEN REPLY @670 GOTO ft6_matters
IF ~~ THEN REPLY @671 GOTO ft6_advantage
END

IF ~~ THEN BEGIN ft6_judge
SAY @672
IF ~~ THEN REPLY @673 GOTO ft6_trust
IF ~~ THEN REPLY @674 GOTO ft6_honest
IF ~~ THEN REPLY @675 GOTO ft6_letsgo
END

IF ~~ THEN BEGIN ft6_letsgo
SAY @676
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft6_shock
SAY @677 = @678
IF ~~ THEN REPLY @679 GOTO ft6_goaway
IF ~~ THEN REPLY @680 GOTO ft6_hasty
IF ~~ THEN REPLY @681 GOTO ft6_stayaway
END

IF ~~ THEN BEGIN ft6_goaway
SAY @682
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",0)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0307",4836,2136,6)~ EXIT
END

IF ~~ THEN BEGIN ft6_bother
SAY @683
IF ~~ THEN REPLY @657 GOTO ft6_surprise
IF ~~ THEN REPLY @684 GOTO ft6_evil
IF ~~ THEN REPLY @659 GOTO ft6_judge
IF ~~ THEN REPLY @685 GOTO ft6_shock
END

IF ~~ THEN BEGIN ft6_interest
SAY @686
IF ~~ THEN REPLY @687 GOTO ft6_evil
IF ~~ THEN REPLY @688 GOTO ft6_abyss
IF ~~ THEN REPLY @689 GOTO ft6_yet
END

IF ~~ THEN BEGIN ft6_excuse
SAY @690
IF ~~ THEN REPLY @691 GOTO ft6_different
IF ~~ THEN REPLY @692 GOTO ft6_exterminate
IF ~~ THEN REPLY @693 GOTO ft6_tease
END

IF ~~ THEN BEGIN ft6_different
SAY @694
IF ~~ THEN REPLY @695 GOTO ft6_compassion
IF ~~ THEN REPLY @696 GOTO ft6_experience
END

IF ~~ THEN BEGIN ft6_tease
SAY @697
IF ~~ THEN REPLY @695 GOTO ft6_compassion
IF ~~ THEN REPLY @696 GOTO ft6_experience
END

IF ~~ THEN BEGIN ft6_matters
SAY @698 = @699
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft6_advantage
SAY @700
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft6_trust
SAY @701
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft6_honest
SAY @702 = @703
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft6_hasty
SAY @704
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft6_stayaway
SAY @705
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",0)
SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0307",4836,2136,6)~ EXIT
END

IF ~~ THEN BEGIN ft6_abyss
SAY @706
IF ~~ THEN REPLY @707 GOTO ft6_different
END

IF ~~ THEN BEGIN ft6_yet
SAY @708 = @709
IF ~~ THEN REPLY @710 GOTO ft6_buttout
IF ~~ THEN REPLY @711 GOTO ft6_concern
END

IF ~~ THEN BEGIN ft6_buttout
SAY @712
IF ~~ THEN DO ~SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ft6_concern
SAY @713
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft6_exterminate
SAY @714
IF ~~ THEN REPLY @715 GOTO ft6_action
IF ~~ THEN REPLY @716 GOTO ft6_easy
END

IF ~~ THEN BEGIN ft6_compassion
SAY @717
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft6_experience
SAY @718
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft6_action
SAY @719
IF ~~ THEN REPLY @720 GOTO ft6_dare
IF ~~ THEN REPLY @721 GOTO ft6_easy
END

IF ~~ THEN BEGIN ft6_dare
SAY @722
IF ~~ THEN DO ~SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ft6_easy
SAY @723 = @724
IF ~~ THEN EXIT
END

IF ~Global("E3FRIENDTALK","GLOBAL",8)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN ft8_start
SAY @725
IF ~OR(7)
Class(Player1,MAGE)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,MAGE_THIEF)
Class(Player1,CLERIC_MAGE)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,SORCERER)
~ THEN REPLY @726
DO ~SetGlobal("E3FRIENDTALK","GLOBAL",9)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft8_choose
IF ~OR(3)
Class(Player1,FIGHTER)
Class(Player1,FIGHTER_THIEF)
Class(Player1,MONK)
~ THEN REPLY @727
DO ~SetGlobal("E3FRIENDTALK","GLOBAL",9)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft8_choose
IF ~OR(6)
Class(Player1,CLERIC)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_THIEF)
Class(Player1,FIGHTER_DRUID)
Class(Player1,CLERIC_RANGER)
~ THEN REPLY @728
DO ~SetGlobal("E3FRIENDTALK","GLOBAL",9)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft8_choose
IF ~OR(4)
Class(Player1,THIEF)
Class(Player1,BARD)
Class(Player1,PALADIN)
Class(Player1,RANGER)
~ THEN REPLY @729
DO ~SetGlobal("E3FRIENDTALK","GLOBAL",9)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft8_choose
IF ~~ THEN REPLY @730 GOTO ft8_experience
IF ~~ THEN REPLY @731 GOTO ft8_leave
IF ~~ THEN REPLY @732 GOTO ft8_earlier
END

IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",3)
GlobalLT("E3LOVETALK","GLOBAL",7)
GlobalLT("E3FRIENDTALK","GLOBAL",9)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN ft8_start
SAY @725
IF ~OR(7)
Class(Player1,MAGE)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,MAGE_THIEF)
Class(Player1,CLERIC_MAGE)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,SORCERER)
~ THEN REPLY @726
DO ~SetGlobal("E3FRIENDTALK","GLOBAL",9)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft8_choose
IF ~OR(3)
Class(Player1,FIGHTER)
Class(Player1,FIGHTER_THIEF)
Class(Player1,MONK)
~ THEN REPLY @727
DO ~SetGlobal("E3FRIENDTALK","GLOBAL",9)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft8_choose
IF ~OR(6)
Class(Player1,CLERIC)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_THIEF)
Class(Player1,FIGHTER_DRUID)
Class(Player1,CLERIC_RANGER)
~ THEN REPLY @728
DO ~SetGlobal("E3FRIENDTALK","GLOBAL",9)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft8_choose
IF ~OR(4)
Class(Player1,THIEF)
Class(Player1,BARD)
Class(Player1,PALADIN)
Class(Player1,RANGER)
~ THEN REPLY @729
DO ~SetGlobal("E3FRIENDTALK","GLOBAL",9)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft8_choose
IF ~~ THEN REPLY @730 GOTO ft8_experience
IF ~~ THEN REPLY @731 GOTO ft8_leave
IF ~~ THEN REPLY @732 GOTO ft8_earlier
END

IF ~~ THEN BEGIN ft8_choose
SAY @733
IF ~~ THEN REPLY @734 GOTO ft8_confines
IF ~~ THEN REPLY @735 GOTO ft8_fate
IF ~~ THEN REPLY @736 GOTO ft8_chance
END

IF ~~ THEN BEGIN ft8_experience
SAY @737
IF ~~ THEN REPLY @738 GOTO ft8_that
IF ~~ THEN REPLY @739 GOTO ft8_sacred
IF ~~ THEN REPLY @740 GOTO ft8_something
END

IF ~~ THEN BEGIN ft8_leave
SAY @741
IF ~~ THEN REPLY @138 GOTO ft8_mean
IF ~~ THEN REPLY @742 GOTO ft8_told
IF ~~ THEN REPLY @743 GOTO ft8_spy
END

IF ~~ THEN BEGIN ft8_earlier
SAY @744
IF ~~ THEN REPLY @745 GOTO ft8_experience
IF ~~ THEN REPLY @746 GOTO ft8_wrong
IF ~~ THEN REPLY @747 GOTO ft8_something
END

IF ~~ THEN BEGIN ft8_confines
SAY @748
IF ~~ THEN REPLY @745 GOTO ft8_experience
IF ~~ THEN REPLY @746 GOTO ft8_wrong
IF ~~ THEN REPLY @747 GOTO ft8_something
END

IF ~~ THEN BEGIN ft8_fate
SAY @749
IF ~~ THEN REPLY @750 GOTO ft8_experience
IF ~~ THEN REPLY @751 GOTO ft8_truth
IF ~~ THEN REPLY @752 GOTO ft8_mock
END

IF ~~ THEN BEGIN ft8_chance
SAY @753
IF ~~ THEN REPLY @754 GOTO ft8_mud
IF ~~ THEN REPLY @755 GOTO ft8_love
IF ~~ THEN REPLY @756 GOTO ft8_experience
END

IF ~~ THEN BEGIN ft8_that
SAY @757
IF ~~ THEN REPLY @758 GOTO ft8_tiresome
IF ~~ THEN REPLY @759 GOTO ft8_spy
IF ~~ THEN REPLY @760 GOTO ft8_personal
END

IF ~~ THEN BEGIN ft8_sacred
SAY @761
IF ~~ THEN REPLY @762 GOTO ft8_correct
IF ~~ THEN REPLY @763 GOTO ft8_travelled
IF ~~ THEN REPLY @764 GOTO ft8_something
END

IF ~~ THEN BEGIN ft8_something
SAY @765
IF ~~ THEN REPLY @766 GOTO ft8_adventuring
IF ~~ THEN REPLY @767 GOTO ft8_tact
IF ~~ THEN REPLY @768 GOTO ft8_memories
END

IF ~~ THEN BEGIN ft8_mean
SAY @769
IF ~~ THEN REPLY @738 GOTO ft8_that
IF ~~ THEN REPLY @739 GOTO ft8_sacred
IF ~~ THEN REPLY @740 GOTO ft8_something
END

IF ~~ THEN BEGIN ft8_told
SAY @770 = @771
IF ~~ THEN REPLY @758 GOTO ft8_tiresome
IF ~~ THEN REPLY @759 GOTO ft8_spy
IF ~~ THEN REPLY @760 GOTO ft8_personal
END

IF ~~ THEN BEGIN ft8_spy
SAY @772 = @773
IF ~~ THEN REPLY @774 GOTO ft8_tiresome
IF ~~ THEN REPLY @775 GOTO ft8_distance
IF ~~ THEN REPLY @776 GOTO ft8_tease
END

IF ~~ THEN BEGIN ft8_wrong
SAY @777
IF ~~ THEN REPLY @778 GOTO ft8_that
IF ~~ THEN REPLY @779 GOTO ft8_sacred
IF ~~ THEN REPLY @780 GOTO ft8_something
END

IF ~~ THEN BEGIN ft8_truth
SAY @781
IF ~~ THEN REPLY @782 GOTO ft8_experience
IF ~~ THEN REPLY @783 GOTO ft8_silly
IF ~~ THEN REPLY @784 GOTO ft8_ale
END

IF ~~ THEN BEGIN ft8_mock
SAY @785
IF ~~ THEN REPLY @784 GOTO ft8_ale
IF ~~ THEN REPLY @786 GOTO ft8_experience
IF ~~ THEN REPLY @787 GOTO ft8_notoriety
END

IF ~~ THEN BEGIN ft8_mud
SAY @788
IF ~~ THEN REPLY @789 GOTO ft8_choice
IF ~Gender(Player1,FEMALE)~ THEN REPLY @790 GOTO ft8_children
IF ~Gender(Player1,MALE)~ THEN REPLY @791 GOTO ft8_mouths
IF ~~ THEN REPLY @792 GOTO ft8_family
END

IF ~~ THEN BEGIN ft8_love
SAY @793
IF ~~ THEN REPLY @794 GOTO ft8_choice
IF ~Gender(Player1,FEMALE)~ THEN REPLY @795 GOTO ft8_children
IF ~Gender(Player1,MALE)~ THEN REPLY @796 GOTO ft8_mouths
IF ~~ THEN REPLY @797 GOTO ft8_adventuring
END

IF ~~ THEN BEGIN ft8_tiresome
SAY @798
IF ~~ THEN REPLY @782 GOTO ft8_experience
IF ~~ THEN REPLY @783 GOTO ft8_silly
IF ~~ THEN REPLY @784 GOTO ft8_ale
END

IF ~~ THEN BEGIN ft8_personal
SAY @799 = @800
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_correct
SAY @801 = @800
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_travelled
SAY @802 = @800
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_adventuring
SAY @803
IF ~~ THEN REPLY @804 GOTO ft8_trouble
IF ~~ THEN REPLY @805 GOTO ft8_start1
END

IF ~~ THEN BEGIN ft8_tact
SAY @806
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_memories
SAY @807
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_distance
SAY @808
IF ~~ THEN DO ~SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ft8_tease
SAY @809
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_silly
SAY @810 = @811
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_ale
SAY @812 = @811
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_notoriety
SAY @813 = @814
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_choice
SAY @815
IF ~~ THEN REPLY @816 GOTO ft8_better
IF ~~ THEN REPLY @817 GOTO ft8_dotage
IF ~~ THEN REPLY @818 GOTO ft8_larceny
END

IF ~~ THEN BEGIN ft8_children
SAY @819 = @820
IF ~~ THEN REPLY @821 GOTO ft8_experience
IF ~~ THEN REPLY @822 GOTO ft8_backs
END

IF ~~ THEN BEGIN ft8_mouths
SAY @823 = @820
IF ~~ THEN REPLY @821 GOTO ft8_experience
IF ~~ THEN REPLY @824 GOTO ft8_noble
END

IF ~~ THEN BEGIN ft8_family
SAY @825
IF ~~ THEN REPLY @738 GOTO ft8_that
IF ~~ THEN REPLY @739 GOTO ft8_sacred
IF ~~ THEN REPLY @740 GOTO ft8_something
END

IF ~~ THEN BEGIN ft8_trouble
SAY @826 = @827
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_start1
SAY @828
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_better
SAY @829 = @830
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_dotage
SAY @831 = @832
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_larceny
SAY @833
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_backs
SAY @834
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_noble
SAY @835
IF ~~ THEN REPLY @836 GOTO ft8_thing
IF ~~ THEN REPLY @837 GOTO ft8_themselves
END

IF ~~ THEN BEGIN ft8_thing
SAY @838
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft8_themselves
SAY @839
IF ~~ THEN EXIT
END

CHAIN
IF ~~ THEN EDWINJ fadecouncil
@840 == E3FADEJ @841 == EDWINJ @842
EXIT

CHAIN
IF ~~ THEN CERNDJ fadegrove
@843 == E3FADEJ @844
EXIT

EXTEND_BOTTOM PPWORKER 15
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN EXTERN E3FADEJ fadelonk
END

EXTEND_BOTTOM PPIMOEN 4
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN EXTERN E3FADEJ fadeimoen
END

INTERJECT_COPY_TRANS YOSHJ 113 e3fadeyoshimobetrayal
== E3FADEJ IF ~InParty("E3FADE") See("E3Fade") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN @845
END

ADD_TRANS_TRIGGER PLAYER1 3 ~OR(3)
!InParty("E3Fade")
!See("E3Fade") 
StateCheck("E3FADE",CD_STATE_NOTVALID)~

EXTEND_BOTTOM PLAYER1 3
IF ~InParty("E3FADE") See("E3Fade") !StateCheck("E3FADE",CD_STATE_NOTVALID)
Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN DO
~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN E3FADEJ fadesoul1
IF ~InParty("E3FADE") See("E3Fade") !StateCheck("E3FADE",CD_STATE_NOTVALID)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN DO
~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN E3FADEJ fadesoul2
IF ~InParty("E3FADE") See("E3Fade") !StateCheck("E3FADE",CD_STATE_NOTVALID)
OR(2)
Global("E3FADEROMANCEACTIVE","GLOBAL",0)
Global("E3FADEROMANCEACTIVE","GLOBAL",3)~ THEN DO
~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN E3FADEJ fadesouln
END

ADD_TRANS_TRIGGER PLAYER1 5 ~OR(4)
!InParty("E3Fade")
!See("E3Fade") 
StateCheck("E3FADE",CD_STATE_NOTVALID)
!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~

EXTEND_BOTTOM PLAYER1 5
IF ~InParty("E3FADE") See("E3Fade") !StateCheck("E3FADE",CD_STATE_NOTVALID)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN EXTERN E3FADEJ fadeslayer
END

APPEND OGHMONK1
IF ~~ THEN BEGIN vampire_start
SAY @846
IF ~~ THEN REPLY @847 EXTERN E3FADEP vampire_fade
IF ~~ THEN REPLY @848 GOTO vampire_dangerous
END

IF ~~ THEN BEGIN vampire_dangerous
SAY @849
IF ~~ THEN EXTERN E3FADEP vampire_fade
END
END

INTERJECT_COPY_TRANS OBSSOL01 10 e3fadespherehalflings
== E3FADEJ IF ~InParty("E3FADE") See("E3Fade") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN @850
END

INTERJECT_COPY_TRANS UDSILVER 0 e3fadeadalon
== E3FADEJ IF ~InParty("E3FADE") See("E3Fade") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN @851
== UDSILVER IF ~InParty("E3FADE") See("E3Fade") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN @852
END

INTERJECT SHTHLT01 96 e3fadestronghold
== E3FADEJ IF ~InParty("E3FADE") 
See("E3Fade")
!StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN @853
END
IF ~~ THEN REPLY @854 GOTO 101
IF ~~ THEN REPLY @855 DO ~SetGlobal("E3FADETHIEFSLAVERY","GLOBAL",1)~ GOTO 100

INTERJECT SHTHLT01 97 e3fadestronghold
== E3FADEJ IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN @853
END
IF ~~ THEN REPLY @854 GOTO 100
IF ~~ THEN REPLY @855 DO ~SetGlobal("E3FADETHIEFSLAVERY","GLOBAL",1)~ GOTO 102

INTERJECT SHTHLT01 98 e3fadestronghold
== E3FADEJ IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN @853
END
IF ~~ THEN REPLY @854 GOTO 103
IF ~~ THEN REPLY @855 DO ~SetGlobal("E3FADETHIEFSLAVERY","GLOBAL",1)~ GOTO 101

INTERJECT SHTHLT01 99 e3fadestronghold
== E3FADEJ IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN @853
END
IF ~~ THEN REPLY @854 GOTO 101
IF ~~ THEN REPLY @855 DO ~SetGlobal("E3FADETHIEFSLAVERY","GLOBAL",1)~ GOTO 100

//sword

CHAIN IF WEIGHT #-1 ~Global("E3SWORD4U","GLOBAL",1)~ THEN E3FadeJ SWGIFT000
@856
END
IF~~THEN REPLY @857 EXTERN E3FadeJ SWGIFT001
IF~~THEN REPLY @858 EXTERN E3FadeJ SWGIFT001
IF~~THEN REPLY @859 EXTERN E3FadeJ SWGIFT001

CHAIN E3FadeJ SWGIFT001
@860
END
IF~~THEN REPLY @861 EXTERN E3FadeJ SWGIFT002
IF~~THEN REPLY @862 EXTERN E3FadeJ SWGIFT002

CHAIN E3FadeJ SWGIFT002
@863
END
IF~~THEN REPLY @864 EXTERN E3FadeJ SWGIFT003
IF~~THEN REPLY @865 EXTERN E3FadeJ SWGIFT004
IF~~THEN REPLY @866 EXTERN E3FadeJ SWGIFT005

CHAIN E3FadeJ SWGIFT003
@867
EXTERN E3FadeJ SWGIFT005 

CHAIN E3FadeJ SWGIFT004
@868
EXTERN E3FadeJ SWGIFT006

CHAIN E3FadeJ SWGIFT005
@869
EXTERN E3FadeJ SWGIFT006

CHAIN E3FadeJ SWGIFT006
@870
END
IF~~THEN REPLY @871 EXTERN E3FadeJ SWGIFT007
IF~~THEN REPLY @872 EXTERN E3FadeJ SWGIFT007
IF~~THEN REPLY @873 EXTERN E3FadeJ SWGIFT008

CHAIN E3FadeJ SWGIFT007
@874
EXTERN E3FadeJ SWGIFT009

CHAIN E3FadeJ SWGIFT008
@875
EXTERN E3FadeJ SWGIFT009

CHAIN E3FadeJ SWGIFT009
@876
END
IF~~THEN REPLY @877 EXTERN E3FadeJ SWGIFT010
IF~~THEN REPLY @878 EXTERN E3FadeJ SWGIFT011

CHAIN E3FadeJ SWGIFT010
@879
==E3FadeJ @880
DO ~SetGlobal("E3SWORD4U","GLOBAL",2)~ EXIT

CHAIN E3FadeJ SWGIFT011
@881
DO ~SetGlobal("E3SWORD4U","GLOBAL",2)~ EXIT
