BEGIN E3KEITA

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN E3KEITA mwraith_keita
@4578
== E3FAD25J @4579
== E3KEITA @4580
== E3FAD25J @4581
== E3KEITA @4582
== E3FAD25J @4583
== E3KEITA @4584
== E3FAD25J @4585
= @4586
END
IF ~~ THEN REPLY @4587 EXTERN HGWRA01 25
IF ~~ THEN REPLY @4588 EXTERN HGWRA01 25
IF ~~ THEN REPLY @4589 EXTERN HGWRA01 25
IF ~CheckStatGT(Player1,16,WIS)~ THEN REPLY @4590 EXTERN HGWRA01 25

EXTEND_BOTTOM HGWRA01 18
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)
InParty("E3Fade")~ THEN GOTO mwraith_1
END

EXTEND_BOTTOM HGWRA01 24
IF ~Global("E3LOVEDONE","GLOBAL",1)~ THEN DO
~ClearAllActions()
StartCutSceneMode()
StartCutScene("E3Cut011")~ EXIT
END

APPEND HGWRA01
IF ~~ THEN BEGIN mwraith_1
SAY @4591
IF ~~ THEN DO ~SetGlobal("E3LOVEDONE","GLOBAL",1)~ EXTERN E3FAD25J mwraith_1
END
END

APPEND E3FAD25J 
IF ~~ THEN BEGIN mwraith_1
SAY @4592
IF ~~ THEN EXTERN HGWRA01 24
END
END

APPEND AMCLER02
IF WEIGHT #-1 ~PartyHasItem("E3RING01")
InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3SPEAKRING","LOCALS",1)~ THEN BEGIN ring_start
SAY @4593
IF ~~ THEN REPLY @4594 DO ~SetGlobal("E3SPEAKRING","LOCALS",2)~ GOTO ring_someone
IF ~~ THEN REPLY @4595 DO ~SetGlobal("E3SPEAKRING","LOCALS",2)~ GOTO ring_special
IF ~~ THEN REPLY @4596 DO ~SetGlobal("E3SPEAKRING","LOCALS",2)~ GOTO ring_prying
IF ~~ THEN REPLY @4597 DO ~SetGlobal("E3SPEAKRING","LOCALS",2)~ GOTO ring_engraved
END

IF ~~ THEN BEGIN ring_someone
SAY @4598
IF ~~ THEN REPLY @4599 GOTO ring_special
IF ~~ THEN REPLY @4600 GOTO ring_so
IF ~~ THEN REPLY @4601 GOTO ring_prying
IF ~~ THEN REPLY @4602 GOTO ring_engraved
END

IF ~~ THEN BEGIN ring_special
SAY @4603
IF ~~ THEN REPLY @4604 GOTO ring_worth
IF ~~ THEN REPLY @4605 GOTO ring_accept
IF ~~ THEN REPLY @4606 GOTO ring_engraved
END

IF ~~ THEN BEGIN ring_prying
SAY @4607
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ring_engraved
SAY @4608
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ring_so
SAY @4609
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ring_worth
SAY @4610
IF ~~ THEN REPLY @4611 GOTO ring_her
IF ~~ THEN REPLY @4612 GOTO ring_perfect
IF ~~ THEN REPLY @4613 GOTO ring_companions
END

IF ~~ THEN BEGIN ring_accept
SAY @4614
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ring_her
SAY @4615
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ring_perfect
SAY @4616
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ring_companions
SAY @4617
IF ~~ THEN EXIT
END
END

APPEND AMSMITH
IF WEIGHT #-1 ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3ENLARGEARMOUR","GLOBAL",1)
InParty("E3Fade")~ THEN BEGIN armour_start
SAY @4618
IF ~~ THEN REPLY @4619 DO ~SetGlobal("E3ENLARGEARMOUR","GLOBAL",2)~ GOTO armour_tight
IF ~~ THEN REPLY @4620 DO ~SetGlobal("E3ENLARGEARMOUR","GLOBAL",2)~ EXTERN E3FAD25J armour_fade
IF ~~ THEN REPLY @4621 DO ~SetGlobal("E3ENLARGEARMOUR","GLOBAL",2)~ GOTO armour_armour
END

IF ~~ THEN BEGIN armour_do
SAY @4622
IF ~~ THEN DO ~TakePartyGold(500)~ EXTERN E3FAD25J armour_end
END

IF ~~ THEN BEGIN armour_not
SAY @4623
IF ~~ THEN DO ~TakePartyGold(500)~ EXTERN E3FAD25J armour_end
END

IF WEIGHT #-1 ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)
PartyHasItem("E3RING01")
!Global("E3ENGAGED","GLOBAL",1)
Global("E3ENLARGEARMOUR","GLOBAL",2)
Global("E3ENGRAVERING","GLOBAL",0)~ THEN BEGIN ring_start1
SAY @4624
IF ~~ THEN REPLY @4625 GOTO ring_chafe
IF ~~ THEN REPLY @4626 GOTO ring_ask
IF ~~ THEN REPLY @4627 GOTO ring_refer
IF ~~ THEN REPLY @4628 GOTO ring_firebrand
END

IF ~~ THEN BEGIN ring_chafe
SAY @4629
IF ~~ THEN REPLY @4630 GOTO ring_refer
IF ~~ THEN REPLY @4631 GOTO ring_ask
END

IF ~~ THEN BEGIN ring_ask
SAY @4632
IF ~~ THEN REPLY @4633 GOTO ring_cost
IF ~~ THEN REPLY @4634 DO ~SetGlobal("E3RINGOPTION","GLOBAL",1)~ GOTO ring_option
IF ~~ THEN REPLY @4635 DO ~SetGlobal("E3RINGOPTION","GLOBAL",2)~ GOTO ring_option
IF ~~ THEN REPLY @4636 GOTO ring_idea
END

IF ~~ THEN BEGIN ring_refer
SAY @4637
IF ~~ THEN REPLY @4638 GOTO ring_ask
IF ~~ THEN REPLY @4639 GOTO ring_idea
END

IF ~~ THEN BEGIN ring_firebrand
SAY @4640
IF ~~ THEN REPLY @4641 GOTO ring_ask
IF ~~ THEN REPLY @4639 GOTO ring_idea
END

IF ~~ THEN BEGIN ring_cost
SAY @4642
IF ~~ THEN REPLY @4634 DO ~SetGlobal("E3RINGOPTION","GLOBAL",1)~ GOTO ring_option
IF ~~ THEN REPLY @4635 DO ~SetGlobal("E3RINGOPTION","GLOBAL",2)~ GOTO ring_option
IF ~~ THEN REPLY @4636 GOTO ring_idea
IF ~~ THEN REPLY @4643 GOTO ring_simple
END

IF ~~ THEN BEGIN ring_option
SAY @4644
IF ~~ THEN REPLY @4645 GOTO ring_idea
IF ~~ THEN REPLY @4646 GOTO ring_long
IF ~~ THEN REPLY @4647 GOTO ring_do
END

IF ~~ THEN BEGIN ring_idea
SAY @4648
IF ~~ THEN DO ~SetGlobal("E3ENGRAVERING","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ring_simple
SAY @4649
IF ~~ THEN REPLY @4650 GOTO ring_idea
IF ~~ THEN REPLY @4634 DO ~SetGlobal("E3RINGOPTION","GLOBAL",1)~ GOTO ring_option
IF ~~ THEN REPLY @4635 DO ~SetGlobal("E3RINGOPTION","GLOBAL",2)~ GOTO ring_option
END

IF ~~ THEN BEGIN ring_long
SAY @4651
IF ~~ THEN REPLY @4652 GOTO ring_again
IF ~~ THEN REPLY @4653 GOTO ring_do
END

IF ~~ THEN BEGIN ring_do
SAY @4654
IF ~~ THEN DO ~SetGlobal("E3ENGRAVERING","GLOBAL",1)
TakePartyItem("E3RING01")
DestroyItem("E3RING01")
StartCutSceneMode()
StartCutScene("E3Cut012")~ EXIT
END

IF ~~ THEN BEGIN ring_again
SAY @4655
IF ~~ THEN DO ~SetGlobal("E3ENGRAVERING","GLOBAL",1)
TakePartyItem("E3RING01")
DestroyItem("E3RING01")
SetGlobalTimer("E3ENGRAVERINGTIMER","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN ring_ask1
SAY @4656
=
@4657
IF ~~ THEN REPLY @4633 GOTO ring_cost
IF ~~ THEN REPLY @4634 DO ~SetGlobal("E3RINGOPTION","GLOBAL",1)~ GOTO ring_option
IF ~~ THEN REPLY @4635 DO ~SetGlobal("E3RINGOPTION","GLOBAL",2)~ GOTO ring_option
IF ~~ THEN REPLY @4636 GOTO ring_idea
END

IF WEIGHT #-1 ~!PartyHasItem("E3RING01")
Global("E3ENGRAVERING","GLOBAL",2)
~ THEN BEGIN ring_start2
SAY @4658
IF ~PartyGoldGT(1999)~ THEN REPLY @4659 GOTO ring_thanks
IF ~PartyGoldGT(199)~ THEN REPLY @4660 GOTO ring_yesterday
IF ~PartyGoldGT(199)
CheckStatGT(Player1,20,CHR)~ THEN REPLY @4660 GOTO ring_yesterday2
IF ~PartyGoldGT(999)~ THEN REPLY @4661 GOTO ring_kidding
IF ~~ THEN REPLY @4662 GOTO ring_afford
END

IF WEIGHT #-1 ~!PartyHasItem("E3RING01")
Global("E3ENGRAVERING","GLOBAL",1)
GlobalTimerExpired("E3ENGRAVERINGTIMER","GLOBAL")~ THEN BEGIN ring_start3
SAY @4658
IF ~PartyGoldGT(1999)~ THEN REPLY @4659 GOTO ring_thanks
IF ~PartyGoldGT(199)~ THEN REPLY @4660 GOTO ring_yesterday
IF ~PartyGoldGT(199)
CheckStatGT(Player1,20,CHR)~ THEN REPLY @4660 GOTO ring_yesterday2
IF ~PartyGoldGT(999)~ THEN REPLY @4661 GOTO ring_kidding
IF ~~ THEN REPLY @4662 GOTO ring_afford
END

IF ~~ THEN BEGIN ring_thanks
SAY @4663
IF ~Global("E3RINGOPTION","GLOBAL",1)~ THEN DO
~SetGlobal("E3ENGRAVERING","GLOBAL",5)
TakePartyGold(2000)
GiveItemCreate("E3RING02",Player1,1,0,0)~ EXIT
IF ~Global("E3RINGOPTION","GLOBAL",2)~ THEN DO
~SetGlobal("E3ENGRAVERING","GLOBAL",5)
TakePartyGold(2000)
GiveItemCreate("E3RING03",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN ring_yesterday
SAY @4664
IF ~PartyGoldGT(1999)~ THEN REPLY @4665 GOTO ring_thanks
IF ~~ THEN REPLY @4662 GOTO ring_afford
IF ~Global("E3RINGOPTION","GLOBAL",1)~ THEN REPLY @4666 
DO ~GiveItemCreate("E3RING02",Player1,1,0,0)
SetGlobal("E3ENGRAVERING","GLOBAL",5)
Enemy()~ EXIT
IF ~Global("E3RINGOPTION","GLOBAL",2)~ THEN REPLY @4666
DO ~GiveItemCreate("E3RING03",Player1,1,0,0)
SetGlobal("E3ENGRAVERING","GLOBAL",5)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN ring_yesterday2
SAY @4667
IF ~Global("E3RINGOPTION","GLOBAL",1)~ THEN DO
~SetGlobal("E3ENGRAVERING","GLOBAL",5)
TakePartyGold(200)
GiveItemCreate("E3RING02",Player1,1,0,0)~ EXIT
IF ~Global("E3RINGOPTION","GLOBAL",2)~ THEN DO
~SetGlobal("E3ENGRAVERING","GLOBAL",5)
TakePartyGold(200)
GiveItemCreate("E3RING03",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN ring_kidding
SAY @4668
IF ~PartyGoldGT(1999)~ THEN REPLY @4665 GOTO ring_thanks
IF ~~ THEN REPLY @4662 GOTO ring_afford
IF ~Global("E3RINGOPTION","GLOBAL",1)~ THEN REPLY @4666 
DO ~GiveItemCreate("E3RING02",Player1,1,0,0)
SetGlobal("E3ENGRAVERING","GLOBAL",5)
Enemy()~ EXIT
IF ~Global("E3RINGOPTION","GLOBAL",2)~ THEN REPLY @4666
DO ~GiveItemCreate("E3RING03",Player1,1,0,0)
SetGlobal("E3ENGRAVERING","GLOBAL",5)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN ring_afford
SAY @4669
IF ~~ THEN DO ~SetGlobal("E3ENGRAVERING","GLOBAL",4)~ EXIT
END
END

CHAIN
IF ~~ THEN AMSMITH armour_tight
@4670
== E3FAD25J IF ~InParty("E3Fade")~ THEN @4671
== AMSMITH IF ~InParty("E3Fade")~ THEN @4672
END
IF ~~ THEN REPLY @4673 GOTO armour_do
IF ~~ THEN REPLY @4674 GOTO armour_not
IF ~~ THEN REPLY @4675 GOTO armour_tiefling

CHAIN
IF ~~ THEN AMSMITH armour_armour
@4676
== E3FAD25J IF ~InParty("E3Fade")~ THEN @4677
END
IF ~~ THEN GOTO armour_tight

CHAIN
IF ~~ THEN AMSMITH armour_tiefling
@4678
== E3FAD25J IF ~InParty("E3Fade")~ THEN @4679
== AMSMITH IF ~InParty("E3Fade")~ THEN @4680
END
IF ~~ THEN REPLY @4681 GOTO armour_further
IF ~~ THEN REPLY @4682 GOTO armour_do

CHAIN
IF ~~ THEN AMSMITH armour_further
@4683
== E3FAD25J IF ~InParty("E3Fade")~ THEN @4684
== AMSMITH IF ~InParty("E3Fade")~ THEN @4685
END
IF ~~ THEN DO ~TakePartyGold(500)~ EXTERN E3FAD25J armour_end

APPEND E3FAD25J
IF ~~ THEN BEGIN armour_fade
SAY @4686
IF ~~ THEN EXTERN AMSMITH armour_tight
END

IF ~~ THEN BEGIN armour_end
SAY @4687
IF ~~ THEN EXIT
END
END

EXTEND_BOTTOM AMSMITH 0
IF ~PartyHasItem("E3RING01")
!Global("E3ENGAGED","GLOBAL",1)
!Global("E3ENLARGEARMOUR","GLOBAL",2)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
OR(2)
Global("E3ENGRAVERING","GLOBAL",0)
Global("E3ENGRAVERING","GLOBAL",3)~ THEN REPLY @4688 GOTO ring_ask1

IF ~!PartyHasItem("E3RING01")
Global("E3ENGRAVERING","GLOBAL",4)~ THEN REPLY @4689 GOTO ring_start2
END

EXTEND_BOTTOM AMSMITH 18
IF ~PartyHasItem("E3RING01")
!Global("E3ENGAGED","GLOBAL",1)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
OR(2)
Global("E3ENGRAVERING","GLOBAL",0)
Global("E3ENGRAVERING","GLOBAL",3)~ THEN REPLY @4688 GOTO ring_ask1

IF ~!PartyHasItem("E3RING01")
Global("E3ENGRAVERING","GLOBAL",4)~ THEN REPLY @4689 GOTO ring_start2
END

EXTEND_BOTTOM BOTSMITH 4
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2) OR(3) PartyHasItem("E3RING01") PartyHasItem("E3RING02") PartyHasItem("E3RING03")~ THEN GOTO E3Fade0R1
END

APPEND BOTSMITH
IF ~~ THEN BEGIN E3Fade0R1
 SAY @4690
=  @4691
 IF ~PartyHasItem("SCRL5F")
NumItemsPartyGT("MISC42",1)
PartyHasItem("E3GEM")
     Global("E3CespenarTango2","GLOBAL",0)
     ~ THEN REPLY @4692 DO ~SetGlobal("ItemMaker","GLOBAL",178)
SetGlobal("E3CespenarTango2","GLOBAL",1)
TakePartyItem("E3RING01")
DestroyItem("E3RING01")
TakePartyItem("E3RING02")
DestroyItem("E3RING02")
TakePartyItem("E3RING03")
DestroyItem("E3RING03")
TakePartyItemNum("MISC42",2)
DestroyItem("MISC42")
DestroyItem("MISC42")
TakePartyItem("SCRL5F")
DestroyItem("SCRL5F")
TakePartyItem("E3GEM")
DestroyItem("E3GEM")~ GOTO 11
 
 IF ~~ THEN REPLY @4693 GOTO E3Fade0R2
END

IF ~~ THEN BEGIN E3Fade0R2
SAY @4694
 COPY_TRANS BOTSMITH 4
END
END


INTERJECT FINSOL01 27 e3fadefinsol01_1
== E3FAD25J IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @4696
END
IF ~~ THEN REPLY @4697 EXTERN E3FAD25J finsol01_think
IF ~~ THEN REPLY @4698 EXTERN E3FAD25J finsol01_essence
IF ~~ THEN REPLY @4699 EXTERN E3FAD25J finsol01_birthright

APPEND E3FAD25J
IF ~~ THEN BEGIN finsol01_think
SAY @4700
=
@4701
=
@4702
IF ~~ THEN REPLY @4703 GOTO finsol01_advice
IF ~~ THEN REPLY @4704 GOTO finsol01_birthright
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4705 GOTO finsol01_stay_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4706 GOTO finsol01_stay_2
END

IF ~~ THEN BEGIN finsol01_essence
SAY @4707
IF ~~ THEN REPLY @4708 GOTO finsol01_honest
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4709 GOTO finsol01_right_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4709 GOTO finsol01_right_2
IF ~~ THEN REPLY @4710 GOTO finsol01_birthright
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4711 GOTO finsol01_apart_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4712 GOTO finsol01_apart_2
END

IF ~~ THEN BEGIN finsol01_birthright
SAY @4713
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO finsol01_birthright_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO finsol01_birthright_2
END

IF ~~ THEN BEGIN finsol01_birthright_1
SAY @4714
IF ~~ THEN GOTO finsol01_birthright_2
END

IF ~~ THEN BEGIN finsol01_birthright_2
SAY @4715
IF ~~ THEN REPLY @4716 GOTO finsol01_now
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4717 GOTO finsol01_join_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4717 GOTO finsol01_join_2
IF ~~ THEN REPLY @4718 GOTO finsol01_taint
IF ~~ THEN REPLY @4719 GOTO finsol01_resent
END

IF ~~ THEN BEGIN finsol01_advice
SAY @4720
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO finsol01_advice_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO finsol01_advice_2
END

IF ~~ THEN BEGIN finsol01_advice_1
SAY @4714
IF ~~ THEN GOTO finsol01_advice_2
END

IF ~~ THEN BEGIN finsol01_advice_2
SAY @4721
=
@4722
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN finsol01_stay_1
SAY @4723
=
@4724
IF ~~ THEN GOTO finsol01_advice_2
END

IF ~~ THEN BEGIN finsol01_stay_2
SAY @4725
=
@4724
IF ~~ THEN GOTO finsol01_advice_2
END

IF ~~ THEN BEGIN finsol01_honest
SAY @4726
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO finsol01_honest_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO finsol01_honest_2
END

IF ~~ THEN BEGIN finsol01_honest_1
SAY @4727
IF ~~ THEN GOTO finsol01_advice_2
END

IF ~~ THEN BEGIN finsol01_honest_2
SAY @4728
IF ~~ THEN GOTO finsol01_advice_2
END

IF ~~ THEN BEGIN finsol01_right_1
SAY @4729
=
@4724
IF ~~ THEN GOTO finsol01_advice_2
END

IF ~~ THEN BEGIN finsol01_right_2
SAY @4730
=
@4724
IF ~~ THEN GOTO finsol01_advice_2
END

IF ~~ THEN BEGIN finsol01_apart_1
SAY @4731
=
@4732
=
@4724
IF ~~ THEN GOTO finsol01_advice_2
END

IF ~~ THEN BEGIN finsol01_apart_2
SAY @4733
=
@4732
=
@4724
IF ~~ THEN GOTO finsol01_advice_2
END

IF ~~ THEN BEGIN finsol01_now
SAY @4734
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO finsol01_now_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO finsol01_now_2
END

IF ~~ THEN BEGIN finsol01_now_1
SAY @4735
IF ~~ THEN GOTO finsol01_now_2
END

IF ~~ THEN BEGIN finsol01_now_2
SAY @4736
IF ~~ THEN GOTO finsol01_advice_2
END

IF ~~ THEN BEGIN finsol01_join_1
SAY @4737
=
@4738
=
@4739
COPY_TRANS FINSOL01 27
END


IF ~~ THEN BEGIN finsol01_join_2
SAY @4740
=
@4738
=
@4739
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN finsol01_taint
SAY @4741
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO finsol01_taint_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO finsol01_advice_2
END

IF ~~ THEN BEGIN finsol01_taint_1
SAY @4742
=
@4743
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN finsol01_resent
SAY @4744
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO finsol01_resent_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO finsol01_resent_2
END

IF ~~ THEN BEGIN finsol01_resent_1
SAY @4745
=
@4746
=
@4747
=
@4743
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN finsol01_resent_2
SAY @4748
=
@4746
=
@4747
=
@4743
COPY_TRANS FINSOL01 27
END
END

INTERJECT FINSOL01 29 e3fadefinsol01_2
== E3FAD25J IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @4749
END
IF ~~ THEN REPLY @4750 EXTERN E3FAD25J finsol01_promise
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4751 EXTERN E3FAD25J finsol01_understand_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4751 EXTERN E3FAD25J finsol01_understand_2
IF ~~ THEN REPLY @4752 EXTERN FINSOL01 finsol01_leave

INTERJECT FINSOL01 30 e3fadefinsol01_2
== E3FAD25J IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @4749
END
IF ~~ THEN REPLY @4750 EXTERN E3FAD25J finsol01_promise
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4753 EXTERN E3FAD25J finsol01_understand_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4753 EXTERN E3FAD25J finsol01_understand_2
IF ~~ THEN REPLY @4752 EXTERN FINSOL01 finsol01_leave

INTERJECT FINSOL01 31 e3fadefinsol01_2
== E3FAD25J IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @4749
END
IF ~~ THEN REPLY @4750 EXTERN E3FAD25J finsol01_promise
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4754 EXTERN E3FAD25J finsol01_understand_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4754 EXTERN E3FAD25J finsol01_understand_2
IF ~~ THEN REPLY @4752 EXTERN FINSOL01 finsol01_leave

APPEND E3FAD25J
IF ~~ THEN BEGIN finsol01_promise
SAY @4755
COPY_TRANS FINSOL01 29
END

IF ~~ THEN BEGIN finsol01_understand_1
SAY @4756
COPY_TRANS FINSOL01 29
END

IF ~~ THEN BEGIN finsol01_understand_2
SAY @4757
COPY_TRANS FINSOL01 29
END
END

APPEND FINSOL01
IF ~~ THEN BEGIN finsol01_leave
SAY @4758
COPY_TRANS FINSOL01 29
END
END

INTERJECT FINSOL01 32 e3fadefinsol01_3
== E3FAD25J IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @4759
END
IF ~~ THEN REPLY @4760 EXTERN E3FAD25J finsol01_happy
IF ~~ THEN REPLY @4761 EXTERN E3FAD25J finsol01_will
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @4762 EXTERN E3FAD25J finsol01_meant

APPEND E3FAD25J
IF ~~ THEN BEGIN finsol01_happy
SAY @4763
COPY_TRANS FINSOL01 32
END

IF ~~ THEN BEGIN finsol01_will
SAY @4764
COPY_TRANS FINSOL01 32
END

IF ~~ THEN BEGIN finsol01_meant
SAY @4765
COPY_TRANS FINSOL01 32
END
END

INTERJECT_COPY_TRANS FINSOL01 27 e3fadefinsol01_4
== E3FAD25J IF ~InParty("E3Fade")
!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @4766
END

INTERJECT_COPY_TRANS SARBUL06 2 e3fadesarbul06_1
== E3FAD25J IF ~InParty("E3Fade")~ THEN @4767
END

EXTEND_BOTTOM SARBUL06 1
IF ~InParty("E3Fade")~ THEN EXTERN E3FAD25J sarbul06_2
END

EXTEND_BOTTOM SARBUL06 6
IF ~InParty("E3Fade")~ THEN EXTERN E3FAD25J sarbul06_3
END

APPEND E3FAD25J 
IF ~~ THEN BEGIN sarbul06_2
SAY @4768
IF ~~ THEN DO ~Attack("sarbul06")~ EXIT
END

IF ~~ THEN BEGIN sarbul06_3
SAY @4769
IF ~~ THEN DO ~Attack("sarbul06")~ EXIT
END
END

EXTEND_TOP SARVOLO 9 #2
IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4770 GOTO sarvolo_faderom
IF ~InParty("E3Fade")
!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4770 GOTO sarvolo_fade
END

APPEND SARVOLO
IF ~~ THEN BEGIN sarvolo_faderom
SAY @4771
IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN sarvolo_fade
SAY @4772
IF ~~ THEN GOTO 9
END
END

EXTEND_BOTTOM SARDW04 1
IF ~InParty("E3Fade")~ THEN EXTERN E3FAD25J sardw04_1
END

CHAIN
IF ~~ THEN E3FAD25J sardw04_1
@4773
== SARDW04 @4774
== E3FAD25J @4775
== SARDW04 @4776
== E3FAD25J @4777
END
IF ~~ THEN REPLY @4778 EXTERN E3FAD25J sardw04_calm
IF ~~ THEN REPLY @4779 EXTERN E3FAD25J sardw04_behave
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4780 EXTERN E3FAD25J sardw04_weirdo

APPEND E3FAD25J
IF ~~ THEN BEGIN sardw04_calm
SAY @4781
IF ~~ THEN EXTERN SARDW04 sardw04_2
END

IF ~~ THEN BEGIN sardw04_behave
SAY @4782
IF ~~ THEN EXTERN SARDW04 sardw04_2
END

IF ~~ THEN BEGIN sardw04_weirdo
SAY @4783
IF ~~ THEN EXTERN SARDW04 sardw04_2
END

IF ~~ THEN BEGIN sardw04_vile
SAY @4784
=
@4785
=
@4786 
IF ~~ THEN DO ~SetGlobal("E3TAVERNOUTBURSTTALK","GLOBAL",1)
MakeUnselectable(5000)
MoveToPoint([1439.1203])
LeaveAreaLUA("AR5000","",[909.1626],12)~ EXIT
END

IF ~~ THEN BEGIN sardw04_timeout
SAY @4787
=
@4785
=
@4786 
IF ~~ THEN DO ~SetGlobal("E3TAVERNOUTBURSTTALK","GLOBAL",1)
MakeUnselectable(5000)
MoveToPoint([1439.1203])
LeaveAreaLUA("AR5000","",[909.1626],12)~ EXIT
END

IF ~~ THEN BEGIN sardw04_place
SAY @4788
=
@4789
=
@4790
=
@4791
IF ~~ THEN DO ~SetGlobal("E3TAVERNOUTBURSTTALK","GLOBAL",1)
MakeUnselectable(5000)
MoveToPoint([1439.1203])
LeaveAreaLUA("AR5000","",[909.1626],12)~ EXIT
END

IF ~~ THEN BEGIN sardw04_theatrics
SAY @4792
=
@4785
=
@4786 
IF ~~ THEN DO ~SetGlobal("E3TAVERNOUTBURSTTALK","GLOBAL",1)
MakeUnselectable(5000)
MoveToPoint([1439.1203])
LeaveAreaLUA("AR5000","",[909.1626],12)~ EXIT
END

IF ~~ THEN BEGIN sardw04_pack
SAY @4781
IF ~~ THEN REPLY @4793 EXTERN E3FAD25J sardw04_vile
IF ~~ THEN REPLY @4794 EXTERN E3FAD25J sardw04_timeout
IF ~~ THEN REPLY @4795 EXTERN E3FAD25J sardw04_place
IF ~~ THEN REPLY @4796 EXTERN E3FAD25J sardw04_theatrics
END

IF ~~ THEN BEGIN sardw04_3
SAY @4797
IF ~~ THEN REPLY @4798 GOTO sardw04_pack
IF ~~ THEN REPLY @4799 GOTO sardw04_place
END
END

APPEND SARDW04
IF ~~ THEN BEGIN sardw04_2
SAY @4800
IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4793 EXTERN E3FAD25J sardw04_vile
IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4794 EXTERN E3FAD25J sardw04_timeout
IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4795 EXTERN E3FAD25J sardw04_place
IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4796 EXTERN E3FAD25J sardw04_theatrics
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4801 EXTERN SARDW04 sardw04_girl
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @4802 EXTERN E3FAD25J sardw04_pack
END

IF ~~ THEN BEGIN sardw04_girl
SAY @4803
IF ~~ THEN EXTERN E3FAD25J sardw04_3
END
END
