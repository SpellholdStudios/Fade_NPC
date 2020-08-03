
////////////////////
////// NEERA ///////
////////////////////
 

//SoA

CHAIN IF WEIGHT #-1 ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
Global("E3FADENEERATALK","GLOBAL",0)~THEN BNEERA FadeNeeraSoA01
@6702
DO ~SetGlobal("E3FADENEERATALK","GLOBAL",1)~
==BE3FADE @6703
==BNEERA @6704
==BE3FADE @6705
==BNEERA @6706
==BE3FADE @6707
==BNEERA @6708
==BE3FADE @6709
==BNEERA @6710
==BE3FADE @6711
==BNEERA @6712
EXIT


CHAIN IF WEIGHT #-1 ~InParty("NEERA")
See("NEERA")
!StateCheck("NEERA",CD_STATE_NOTVALID)
Global("E3FADENEERATALK","GLOBAL",1)~THEN BE3FADE FadeNeeraSoA02
@6713
DO ~SetGlobal("E3FADENEERATALK","GLOBAL",2)~
==BNEERA @6714
==BE3FADE @6715
==BNEERA @6716
==BE3FADE @3669
==BNEERA @6717
==BE3FADE @6718
==BNEERA @6719
==BE3FADE @6720
==BNEERA @6721
==BE3FADE @6722
==BNEERA @6723
==BE3FADE @6724
==BNEERA @6725
EXIT


// Romance Conflict 

APPEND E3FADEJ


IF WEIGHT #-2 ~Global("E3FadeNeeraCon","GLOBAL",2)~ THEN BEGIN e3fadevsneera01
SAY @6726
IF ~~ THEN REPLY @6727 GOTO fadeneera_close
IF ~~ THEN REPLY @6728 GOTO fadeneera_important
IF ~~ THEN REPLY @6729 GOTO fadeneera_later
END

IF ~~ THEN BEGIN fadeneera_important
SAY @6730
IF ~~ THEN REPLY @6731 GOTO fadeneera_close
IF ~~ THEN REPLY @6729 GOTO fadeneera_later
END

IF ~~ THEN BEGIN fadeneera_close
SAY @6732
IF ~~ THEN REPLY @6733 GOTO fadeneera_jealous
IF ~~ THEN REPLY @6734 GOTO fadeneera_friends
END

IF ~~ THEN BEGIN fadeneera_friends
SAY @6735
IF ~~ THEN REPLY @6736 GOTO fadeneera_jealous2
IF ~~ THEN REPLY @6668 GOTO fadeneera_jealous
IF ~~ THEN REPLY @6737 GOTO fadeneera_jealous2
END

IF ~~ THEN BEGIN fadeneera_jealous
SAY @6738
IF ~~ THEN REPLY @6736 GOTO fadeneera_jealous2
IF ~~ THEN REPLY @6739 GOTO fadeneera_chance
IF ~~ THEN REPLY @6737 GOTO fadeneera_jealous2
END

IF ~~ THEN BEGIN fadeneera_jealous2
SAY @6740
IF ~~ THEN REPLY @6739 GOTO fadeneera_chance
IF ~~ THEN REPLY @6741 GOTO fadeneera_shutdown
END

IF ~~ THEN BEGIN fadeneera_chance
SAY @6742
IF ~~ THEN REPLY @6743 GOTO fadeneera_chance2
IF ~~ THEN REPLY @6744 GOTO fadeneera_later
IF ~~ THEN REPLY @6745 GOTO fadeneera_shutdown
END

IF ~~ THEN BEGIN fadeneera_chance2
SAY @6746
IF ~~ THEN REPLY @6747 GOTO fadeneera_later
IF ~~ THEN REPLY @6745 GOTO fadeneera_shutdown
END

IF ~~ THEN BEGIN fadeneera_later
SAY @6748
IF ~~ THEN DO ~SetGlobal("E3FadeNeeraCon","GLOBAL",3) RealSetGlobalTimer("E3FadeNeeraExtraT","GLOBAL",400)~ EXIT
END

IF ~~ THEN BEGIN fadeneera_shutdown
SAY @6749
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3) SetGlobal("E3FadeNeeraCon","GLOBAL",3)~ EXIT
END
END


APPEND NEERAJ

IF WEIGHT #-2 ~Global("E3NeeraFadeCon","GLOBAL",2)~ THEN BEGIN e3fadevsneera02
SAY @6750
IF ~~ THEN REPLY @6751 GOTO fadeneera_coy
IF ~~ THEN REPLY @6752 GOTO fadeneera_coy
END

IF ~~ THEN BEGIN fadeneera_coy
SAY @6753
IF ~~ THEN REPLY @6754 GOTO fadeneera_choose
IF ~~ THEN REPLY @6755 GOTO fadeneera_now
END

IF ~~ THEN BEGIN fadeneera_choose
SAY @6756
IF ~~ THEN REPLY @6757 GOTO fadeneera_now
IF ~~ THEN REPLY @6755 GOTO fadeneera_now
END

IF ~~ THEN BEGIN fadeneera_now
SAY @6758
IF ~~ THEN REPLY @6759 GOTO fadeneera_pickneera
IF ~~ THEN REPLY @6760 GOTO fadeneera_pickfade
END

IF ~~ THEN BEGIN fadeneera_pickneera
SAY @6761
= @6762
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3) SetGlobal("E3NeeraFadeCon","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN fadeneera_pickfade
SAY @6763
= @6764
IF ~~ THEN DO ~SetGlobal("NEERAROMANCEACTIVE","GLOBAL",3) SetGlobal("E3NeeraFadeCon","GLOBAL",3)~ EXIT
END
END

//ToB

CHAIN IF WEIGHT #-1 ~InParty("NEERA")
See("NEERA")
!StateCheck("NEERA",CD_STATE_NOTVALID)
Global("E3FADENEERA25TALK1","LOCALS",0)~THEN BE3FAD25 FadeNeeraToB01
@6765
DO ~SetGlobal("E3FADENEERA25TALK1","LOCALS",1)~
==BE3FAD25 @6766
==BNEERA25 @6767
==BNEERA25 @6768
==BE3FAD25 @6769
==BNEERA25 @6770
==BE3FAD25 @6771
==BNEERA25 @6772
==BE3FAD25 @6773
==BNEERA25 @6774
==BNEERA25 @6775
==BE3FAD25 @6776
==BNEERA25 @6777
==BNEERA25 @6778
==BE3FAD25 @6779
==BE3FAD25 @6780
==BNEERA25 @6781
==BE3FAD25 @6782
==BNEERA25 @6783
==BNEERA25 IF ~InParty("Dorn") !InParty("Sarevok") !InParty("Minsc")~ THEN @6784
==BNEERA25 IF ~InParty("Sarevok") !InParty("Dorn") !InParty("Minsc")~ THEN @6785
==BNEERA25 IF ~InParty("Minsc") !InParty("Sarevok") !InParty("Dorn")~ THEN @6786
EXIT

////////////////////////
/////// HEXXAT /////////
////////////////////////


CHAIN IF WEIGHT #-1 ~InParty("HEXXAT")
See("HEXXAT")
!StateCheck("HEXXAT",CD_STATE_NOTVALID)
Global("E3FADEHEXXATTALK","GLOBAL",0)~THEN BE3FADE FadeHexxatSoA01
@6787
DO ~SetGlobal("E3FADEHEXXATTALK","GLOBAL",1)~
==BHEXXAT @6788
==BE3FADE @6789
==BHEXXAT @6790
==BE3FADE @6791
==BHEXXAT @6792
==BE3FADE @6793
EXIT

CHAIN IF WEIGHT #-1 ~InParty("HEXXAT")
See("HEXXAT")
!StateCheck("HEXXAT",CD_STATE_NOTVALID)
Global("E3FADEHEXXATTALK","GLOBAL",1)~THEN BE3FADE FadeHexxatSoA02
@6794
DO ~SetGlobal("E3FADEHEXXATTALK","GLOBAL",2)~
==BHEXXAT @6795
==BE3FADE @6796
==BHEXXAT @6797
==BE3FADE @6798
==BHEXXAT @6799
==BE3FADE @6800
==BHEXXAT @6801
EXIT

APPEND E3FADEJ

// Romance Conflict - Hexxat

IF WEIGHT #-2 ~Global("E3FadeHexxatCon","GLOBAL",2)~ THEN BEGIN e3fadevshexxat01
SAY @6802
IF ~~ THEN REPLY @6803 GOTO fadehexxat_whatsup
IF ~~ THEN REPLY @6804 GOTO fadehexxat_huh
IF ~~ THEN REPLY @6805 GOTO fadehexxat_discuss
END

IF ~~ THEN BEGIN fadehexxat_huh
SAY @6806 
IF~~THEN GOTO fadehexxat_whatsup
END

IF ~~ THEN BEGIN fadehexxat_whatsup
SAY @6807
IF ~~ THEN REPLY @6808 GOTO fadehexxat_teamhexxat
IF ~~ THEN REPLY @6809 GOTO fadehexxat_teamfade
END

IF ~~ THEN BEGIN fadehexxat_teamhexxat
SAY @6810
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3) SetGlobal("E3FadeHexxatCon","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN fadehexxat_discuss
SAY @6811
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3) SetGlobal("E3FadeHexxatCon","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN fadehexxat_teamfade
SAY @6812
IF ~~ THEN DO ~SetGlobal("HEXXATROMANCEACTIVE","GLOBAL",3) SetGlobal("E3FadeHexxatCon","GLOBAL",3)~EXIT
END
END

CHAIN IF WEIGHT #-1 ~InParty("HEXXAT")
See("HEXXAT")
!StateCheck("HEXXAT",CD_STATE_NOTVALID)
Global("E3FADEHEXXATTALKTOB","GLOBAL",0)~THEN BE3FAD25 FadeHexxatToB01
@6813
DO ~SetGlobal("E3FADEHEXXATTALKTOB","GLOBAL",1)~
==BHEXXA25 @6814
==BE3FAD25 @6815
==BHEXXA25 @6816
==BE3FAD25 @6817
==BHEXXA25 @6818
==BE3FAD25 @6819
==BHEXXA25 @6820
EXIT

///////////////////////////
////////RASAAD/////////////
///////////////////////////


CHAIN IF WEIGHT #-1 ~InParty("RASAAD")
See("RASAAD")
!StateCheck("RASAAD",CD_STATE_NOTVALID)
Global("E3FADERASAADTALK","GLOBAL",0)~THEN BE3FADE FadeRasaadSoA01
  @6821
DO ~SetGlobal("E3FADERASAADTALK","GLOBAL",1)~
  ==BRASAAD @6822
  ==BE3FADE @6823
  ==BRASAAD @6824
  ==BE3FADE @6825
  ==BRASAAD @6826
  ==BE3FADE @6827
  ==BRASAAD @6828
  ==BE3FADE @879
  ==BE3FADE @6829
  ==BRASAAD @6830
  ==BE3FADE @6831  
  ==BRASAAD @6832
  EXIT
 
CHAIN IF WEIGHT #-1 ~InParty("RASAAD")
See("RASAAD")
!StateCheck("RASAAD",CD_STATE_NOTVALID)
Global("E3FADERASAADTALK","GLOBAL",1)~THEN BE3FADE FadeRasaadSoA02
  @6833
DO ~SetGlobal("E3FADERASAADTALK","GLOBAL",2)~
  ==BRASAAD @6834
  ==BE3FADE @6835
  ==BRASAAD @6836
  ==BE3FADE @6837
  ==BRASAAD @6838
  ==BE3FADE @6839
  ==BRASAAD @6840
  ==BE3FADE @6841
  ==BRASAAD @6842
  ==BE3FADE @6843
  ==BRASAAD @6844
  EXIT
 
CHAIN IF WEIGHT #-1 ~InParty("RASAAD")
See("RASAAD")
!StateCheck("RASAAD",CD_STATE_NOTVALID)
Global("E3FADERASAADTALK","GLOBAL",2)~THEN BRASAAD FadeRasaadSoA03
  @6845
DO ~SetGlobal("E3FADERASAADTALK","GLOBAL",3)~
 ==BE3FADE @6846
  ==BRASAAD @6847
  ==BE3FADE @6848
  ==BRASAAD @6849
  ==BE3FADE @6850
  ==BRASAAD @6851
  ==BRASAAD @6852
  ==BE3FADE @6853
  ==BRASAAD @6854
  ==BE3FADE @6855
  ==BRASAAD @6856
  ==BE3FADE @6857
  ==BE3FADE @6858
  ==BRASAAD @6859
  ==BRASAAD @6860
   EXIT
  
APPEND E3FADEJ
  
// Romance Conflict - Rasaad


IF WEIGHT #-2 ~Global("E3FadeRASAADCon","GLOBAL",2)~ THEN BEGIN e3fadevsrasaad01
SAY @6861
IF ~~ THEN REPLY @6862 GOTO faderasaad_friends
IF ~~ THEN REPLY @6863 GOTO faderasaad_allright
IF ~~ THEN REPLY @6864 GOTO faderasaad_unkind
END

IF ~~ THEN BEGIN faderasaad_friends
SAY @6865
IF ~~ THEN REPLY @6866 GOTO faderasaad_understand
IF ~~ THEN REPLY @6867 GOTO faderasaad_notwhatyouthink
IF ~~ THEN REPLY @6868 GOTO faderasaad_buggeroff
END

IF ~~ THEN BEGIN faderasaad_allright
SAY @6869
IF ~~ THEN REPLY @6870 GOTO faderasaad_friends
END

IF ~~ THEN BEGIN faderasaad_buggeroff
SAY @6871
IF ~~ THEN REPLY @6872 GOTO faderasaad_understand
IF ~~ THEN REPLY @6873 GOTO faderasaad_notwhatyouthink
END

IF ~~ THEN BEGIN faderasaad_unkind
SAY @6874
IF ~~ THEN REPLY @6875 GOTO faderasaad_liketheguy
IF ~~ THEN REPLY @6876 GOTO faderasaad_buggeroff
END

 
IF ~~ THEN BEGIN faderasaad_liketheguy
SAY @6877
IF ~~ THEN REPLY @6872 GOTO faderasaad_understand
IF ~~ THEN REPLY @6873 GOTO faderasaad_notwhatyouthink
END

IF ~~ THEN BEGIN faderasaad_understand
SAY @6878
= @6879
IF ~~ THEN REPLY @6880 DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3) SetGlobal("E3FadeRASAADCon","GLOBAL",3)~ EXIT
IF ~~ THEN REPLY @6881 DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3) SetGlobal("E3FadeRASAADCon","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN faderasaad_notwhatyouthink
SAY @6882
= @6883
IF ~~ THEN REPLY @6884 DO ~SetGlobal("RASAADROMANCEACTIVE","GLOBAL",3) SetGlobal("E3FadeRASAADCon","GLOBAL",3)~ EXIT
IF ~~ THEN REPLY @6885 DO ~SetGlobal("RASAADROMANCEACTIVE","GLOBAL",3) SetGlobal("E3FadeRASAADCon","GLOBAL",3)~ EXIT
END
END

//tob

CHAIN IF WEIGHT #-1 ~InParty("RASAAD")
See("RASAAD")
!StateCheck("RASAAD",CD_STATE_NOTVALID)
Global("E3FADERASAADTALKTOB","GLOBAL",0)~THEN BE3FAD25 FadeRasaadToB01
  @6886
DO ~SetGlobal("E3FADERASAADTALKTOB","GLOBAL",1)~
  ==BRASAA25 @6887
  ==BE3FAD25 @6888
  ==BRASAA25 @6889
  ==BE3FAD25 @6890
  ==BRASAA25 @6891
  ==BE3FAD25 @6892
  ==BRASAA25 @6893
  ==BE3FAD25 @6894
  ==BE3FAD25 @6895
  ==BE3FAD25 @6896
  ==BE3FAD25 @6897
  ==BRASAA25 @6898
  ==BE3FAD25 @6899
  END
  
// Rasaad's personal quest, Alorgoth's dragon is dead and the cave is collapsing

INTERJECT_COPY_TRANS RASAA25J 133 RASAA25J /* ~Let it! Alorgoth and I both will be buried here!~ */
== E3FAD25J IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@6900
END

CHAIN IF WEIGHT #-1 ~InParty("RASAAD")
See("RASAAD")
!StateCheck("RASAAD",CD_STATE_NOTVALID)
Global("E3FADERASAADTALKTOBQ1","GLOBAL",0)
GlobalGT("OHR_FINALE","GLOBAL",17)~THEN BE3FAD25 FadeRasaadToB02
  @6901
DO ~SetGlobal("E3FADERASAADTALKTOBQ1","GLOBAL",1)~
  ==BRASAA25 @6902
  ==BE3FAD25 @6903
  ==BRASAA25 @6904
  ==BE3FAD25 @6905
  ==BRASAA25 @6906
  ==BE3FAD25 @6907
  ==BRASAA25 @6908
  ==BE3FAD25 @6909
  ==BRASAA25 @6910
  ==BE3FAD25 @6911
  ==BRASAA25 @6912
  ==BE3FAD25 @6913
  ==BRASAA25 @6914
  END
  
///////////////////// 
/////// DORN ////////
/////////////////////

CHAIN IF WEIGHT #-1 ~InParty("DORN")
See("DORN")
!StateCheck("DORN",CD_STATE_NOTVALID)
Global("E3FADEDORNTALK","GLOBAL",0)~THEN BDORN FadeDornSoA01
  @6915
DO ~SetGlobal("E3FADEDORNTALK","GLOBAL",1)~
  ==BE3FADE @6916
  ==BDORN @6917
  ==BE3FADE @6918
  ==BDORN @6919
  ==BE3FADE @6920
  ==BDORN @6921
  ==BE3FADE @6922
  ==BDORN @6923
  ==BE3FADE @6924  
  ==BDORN @6925
  ==BE3FADE @6926
  ==BDORN @6927
  ==BE3FADE @6928
  EXIT

   
CHAIN IF WEIGHT #-1 ~InParty("DORN")
See("DORN")
!StateCheck("DORN",CD_STATE_NOTVALID)
Global("E3FADEDORNTALK","GLOBAL",1)~THEN BDORN FadeDornSoA02
@6929
DO ~SetGlobal("E3FADEDORNTALK","GLOBAL",2)~
  ==BE3FADE @6930
  ==BDORN @6931
  ==BE3FADE @6932
  ==BDORN @6933
  ==BE3FADE @6934
  ==BE3FADE @6935
  ==BDORN @6936
  ==BE3FADE @6937
  ==BDORN @6938
  ==BE3FADE @6939
  ==BDORN @6940
  ==BE3FADE @6941
  ==BDORN @6942
  ==BE3FADE @6943
  ==BE3FADE @6944
  ==BDORN @6945
  ==BE3FADE @6946
  ==BDORN @6947
  EXIT


// Interjection, Dorn's personal quest, Radiant Heart
INTERJECT_COPY_TRANS DORNJ 1 E3FadeRHDorn01 /*~Kill them all! None must live to tell of our deeds.~*/
== E3FADEJ IF ~InParty("E3FADE") !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@6948
END

APPEND E3FADEJ

// Romance Conflict - Dorn

IF WEIGHT #-2 ~Global("E3FadeDORNCon","GLOBAL",2)~ THEN BEGIN e3fadevsdorn01
SAY @6949
IF ~~ THEN REPLY @6950 GOTO fadedorn_bothering
IF ~~ THEN REPLY @6951 GOTO fadedorn_ticktock
IF ~~ THEN REPLY @6952 GOTO fadedorn_maketime
END

IF ~~ THEN BEGIN fadedorn_bothering
SAY @6953
IF~~THEN GOTO fadedorn_well
END

IF ~~ THEN BEGIN fadedorn_ticktock
SAY @6954
IF~~THEN GOTO fadedorn_well
END

IF ~~ THEN BEGIN fadedorn_maketime
SAY @6955
IF~~THEN GOTO fadedorn_well
END

IF ~~ THEN BEGIN fadedorn_well
SAY @6956
IF ~~ THEN REPLY @6957 GOTO fadedorn_friends
IF ~~ THEN REPLY @6958 GOTO fadedorn_dontask
END

IF ~~ THEN BEGIN fadedorn_friends
SAY @6959
IF ~~ THEN REPLY @6960 GOTO fadedorn_compromise
IF ~~ THEN REPLY @6961 GOTO fadedorn_dontask
END

IF ~~ THEN BEGIN fadedorn_compromise
SAY @6962
IF ~~ THEN DO ~SetGlobal("DORNROMANCEACTIVE","GLOBAL",3) SetGlobal("E3FadeDORNCon","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN fadedorn_dontask
SAY @6963
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3) SetGlobal("E3FadeDORNCon","GLOBAL",3)~ EXIT
END
END

/* This first banter MUST occur AFTER Gormnir's death */

CHAIN IF WEIGHT #-1 ~Dead("GROMNIR")
InParty("DORN")
See("DORN")
!StateCheck("DORN",CD_STATE_NOTVALID)
Global("E3FADEDORNTALKTOB","GLOBAL",0)~THEN BDORN25 FadeDornToB01
  @6964
DO ~SetGlobal("E3FADEDORNTALKTOB","GLOBAL",1)~
  ==BE3FAD25 @6965
  ==BDORN25 @6966
  ==BE3FAD25 @6967
  ==BDORN25 @6968
  ==BE3FAD25 @6969
  ==BDORN25 @6970
  ==BE3FAD25 @6971
  ==BDORN25 @6972
  ==BE3FAD25 @6973
  ==BDORN25 @6974
  ==BE3FAD25 @6975
  EXIT
  
/* This second banter is conditional, it must occur after Dorn completed his ToB quest to kill the tree */

CHAIN IF WEIGHT #-1 ~InParty("DORN")
See("DORN")
!StateCheck("DORN",CD_STATE_NOTVALID)
Global("E3FADEDORNTALKTOB","GLOBAL",1)
GlobalGT("OHD_dornkillstree","OH5500",2)~THEN BE3FAD25 FadeDornToB02
  @6976
DO ~SetGlobal("E3FADEDORNTALKTOB","GLOBAL",2)~
  ==BDORN25 @6977
  ==BE3FAD25 @6978
  ==BDORN25 @6979
  ==BE3FAD25 @6980
  ==BDORN25 @6981
  ==BE3FAD25 @6982
  ==BDORN25 @6983
  ==BE3FAD25 @6984
  ==BDORN25 @6985
  ==BE3FAD25 @6986
  EXIT