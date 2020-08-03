//PC-initiated flirts, Global 1

APPEND E3FADEJ

IF ~Global("E3DISABLEFLIRTS","GLOBAL",0)
IsGabber(Player1)
CombatCounter(0)
GlobalGT("E3LOVETALK","GLOBAL",6)
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
!Global("E3LOVETALK","GLOBAL",19)
!Global("E3LOVETALK","GLOBAL",27)
Global("E3TREATMENTNOFLIRT","GLOBAL",0)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN fadeflirtbase1
SAY @4265
IF ~RandomNum(4,1)~ THEN REPLY @4266 GOTO holdhand1
IF ~RandomNum(4,2)~ THEN REPLY @4266 GOTO holdhand2
IF ~RandomNum(4,3)~ THEN REPLY @4266 GOTO holdhand1
IF ~RandomNum(4,4)~ THEN REPLY @4266 GOTO holdhand2
IF ~RandomNum(4,1)~ THEN REPLY @4267 GOTO putarm1
IF ~RandomNum(4,2)~ THEN REPLY @4267 GOTO putarm2
IF ~RandomNum(4,3)~ THEN REPLY @4267 GOTO putarm1
IF ~RandomNum(4,4)~ THEN REPLY @4267 GOTO putarm2
IF ~RandomNum(4,1)~ THEN REPLY @4268 GOTO wink1
IF ~RandomNum(4,2)~ THEN REPLY @4268 GOTO wink2
IF ~RandomNum(4,3)~ THEN REPLY @4268 GOTO wink1
IF ~RandomNum(4,4)~ THEN REPLY @4268 GOTO wink2
IF ~HPPercentLT("E3Fade",51)~ THEN REPLY @4269 GOTO howareyou1
IF ~HPPercentGT("E3Fade",50)
RandomNum(4,1)~ THEN REPLY @4269 GOTO howareyou2
IF ~HPPercentGT("E3Fade",50)
RandomNum(4,2)~ THEN REPLY @4269 GOTO howareyou3
IF ~HPPercentGT("E3Fade",50)
RandomNum(4,3)~ THEN REPLY @4269 GOTO howareyou2
IF ~HPPercentGT("E3Fade",50)
RandomNum(4,4)~ THEN REPLY @4269 GOTO howareyou3
IF ~RandomNum(4,1)~ THEN REPLY @4270 GOTO brushhair1
IF ~RandomNum(4,2)~ THEN REPLY @4270 GOTO brushhair2
IF ~RandomNum(4,3)~ THEN REPLY @4270 GOTO brushhair1
IF ~RandomNum(4,4)~ THEN REPLY @4270 GOTO brushhair2
IF ~RandomNum(4,1)~ THEN REPLY @4271 GOTO smile1
IF ~RandomNum(4,2)~ THEN REPLY @4271 GOTO smile2
IF ~RandomNum(4,3)~ THEN REPLY @4271 GOTO smile1
IF ~RandomNum(4,4)~ THEN REPLY @4271 GOTO smile2
IF ~RandomNum(4,1)~ THEN REPLY @4272 GOTO standcloser1
IF ~RandomNum(4,2)~ THEN REPLY @4272 GOTO standcloser2
IF ~RandomNum(4,3)~ THEN REPLY @4272 GOTO standcloser3
IF ~RandomNum(4,4)~ THEN REPLY @4272 GOTO standcloser1
IF ~RandomNum(4,1)~ THEN REPLY @4273 GOTO touchtail1
IF ~RandomNum(4,2)~ THEN REPLY @4273 GOTO touchtail2
IF ~RandomNum(4,3)~ THEN REPLY @4273 GOTO touchtail3
IF ~RandomNum(4,4)~ THEN REPLY @4273 GOTO touchtail2
IF ~RandomNum(4,1)~ THEN REPLY @4274 GOTO asktattoos1
IF ~RandomNum(4,2)~ THEN REPLY @4274 GOTO asktattoos2
IF ~RandomNum(4,3)~ THEN REPLY @4274 GOTO asktattoos1
IF ~RandomNum(4,4)~ THEN REPLY @4274 GOTO asktattoos2
IF ~RandomNum(4,1)~ THEN REPLY @4275 GOTO tickle1
IF ~RandomNum(4,2)~ THEN REPLY @4275 GOTO tickle2
IF ~RandomNum(4,3)~ THEN REPLY @4275 GOTO tickle1
IF ~RandomNum(4,4)~ THEN REPLY @4275 GOTO tickle2
IF ~RandomNum(4,1)~ THEN REPLY @4276 GOTO kisshand1
IF ~RandomNum(4,2)~ THEN REPLY @4276 GOTO kisshand2
IF ~RandomNum(4,3)~ THEN REPLY @4276 GOTO kisshand1
IF ~RandomNum(4,4)~ THEN REPLY @4276 GOTO kisshand2
IF ~RandomNum(4,1)~ THEN REPLY @4277 GOTO watchwalk1
IF ~RandomNum(4,2)~ THEN REPLY @4277 GOTO watchwalk2
IF ~RandomNum(4,3)~ THEN REPLY @4277 GOTO watchwalk1
IF ~RandomNum(4,4)~ THEN REPLY @4277 GOTO watchwalk2
IF ~~ THEN REPLY @4278 GOTO askname
IF ~~ THEN REPLY @4279 GOTO breakup
END

IF ~~ THEN BEGIN holdhand1
SAY @4280
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN holdhand2
SAY @4281
IF ~~ THEN REPLY @4282 GOTO holdhand2_copy
IF ~~ THEN REPLY @4283 GOTO holdhand2_deserve
END

IF ~~ THEN BEGIN holdhand2_copy
SAY @4284
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN holdhand2_deserve
SAY @4285
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN putarm1
SAY @4286
IF ~~ THEN REPLY @4287 GOTO putarm1_cream
IF ~~ THEN REPLY @4288 GOTO putarm1_tighter
END

IF ~~ THEN BEGIN putarm1_cream
SAY @4289
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN putarm1_tighter
SAY @4290
IF ~~ THEN REPLY @4291 GOTO putarm1_cream
END

IF ~~ THEN BEGIN putarm2
SAY @4292
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wink1
SAY @4293
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wink2
SAY @4294
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN howareyou1
SAY @4295
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN howareyou2
SAY @4296
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN howareyou3
SAY @4297
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brushhair1
SAY @4298
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brushhair2
SAY @4299
IF ~~ THEN REPLY @4300 GOTO brushhair2_copper
IF ~~ THEN REPLY @4301 GOTO brushhair2_point
END

IF ~~ THEN BEGIN brushhair2_copper
SAY @4302
IF ~~ THEN REPLY @4303 GOTO brushhair2_tweak
IF ~~ THEN REPLY @4304 GOTO brushhair2_point
END

IF ~~ THEN BEGIN brushhair2_point
SAY @4305
IF ~~ THEN REPLY @4306 GOTO brushhair2_face
END

IF ~~ THEN BEGIN brushhair2_tweak
SAY @4307
IF ~~ THEN REPLY @4308 GOTO brushhair2_face
END

IF ~~ THEN BEGIN brushhair2_face
SAY @4309
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile1
SAY @4310
IF ~~ THEN REPLY @4311 GOTO smile1_smile
IF ~~ THEN REPLY @4312 GOTO smile1_day
END

IF ~~ THEN BEGIN smile1_smile
SAY @4313
IF ~~ THEN REPLY @4314 GOTO smile1_miserable
IF ~~ THEN REPLY @4315 GOTO smile1_tease
END

IF ~~ THEN BEGIN smile1_day
SAY @4316
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile1_miserable
SAY @4317 = @4318
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile1_tease
SAY @4319 = @4318
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile2
SAY @4320
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN standcloser1
SAY @4321
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN standcloser2
SAY @4322
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN standcloser3
SAY @4323
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail1
SAY @4324
IF ~~ THEN REPLY @4325 GOTO touchtail1_rude
IF ~~ THEN REPLY @4326 GOTO touchtail1_normal
END

IF ~~ THEN BEGIN touchtail1_rude
SAY @4327
IF ~~ THEN REPLY @4328 GOTO touchtail1_touch
IF ~~ THEN REPLY @4329 GOTO touchtail1_rather
END

IF ~~ THEN BEGIN touchtail1_normal
SAY @4330
IF ~~ THEN REPLY @4325 GOTO touchtail1_rude
IF ~~ THEN REPLY @4331 GOTO touchtail1_feel
END

IF ~~ THEN BEGIN touchtail1_touch
SAY @4332
IF ~~ THEN REPLY @4333 GOTO touchtail1_hurt
IF ~~ THEN REPLY @4334 GOTO touchtail1_like
END

IF ~~ THEN BEGIN touchtail1_rather
SAY @4335
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail1_feel
SAY @4336
IF ~~ THEN GOTO touchtail1_touch
END

IF ~~ THEN BEGIN touchtail1_hurt
SAY @4337
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail1_like
SAY @4338
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail2
SAY @4339 = @4340
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail3
SAY @4341
IF ~~ THEN REPLY @4342 GOTO touchtail3_know
IF ~~ THEN REPLY @4343 GOTO touchtail3_hang
END

IF ~~ THEN BEGIN touchtail3_know
SAY @4344
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail3_hang
SAY @4345
IF ~~ THEN REPLY @4346 GOTO touchtail3_use
IF ~~ THEN REPLY @4347 GOTO touchtail3_monkey
END

IF ~~ THEN BEGIN touchtail3_use
SAY @4348
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail3_monkey
SAY @4349
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN asktattoos1
SAY @4350
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN asktattoos2
SAY @4351
IF ~~ THEN REPLY @4352 GOTO asktattoos2_no
IF ~~ THEN REPLY @4353 GOTO asktattoos2_yes
END

IF ~~ THEN BEGIN asktattoos2_no
SAY @4354
IF ~~ THEN REPLY @4355 GOTO asktattoos2_ugly
IF ~~ THEN REPLY @4356 GOTO asktattoos2_beauty
END

IF ~~ THEN BEGIN asktattoos2_yes
SAY @4357
IF ~~ THEN REPLY @4358 GOTO asktattoos2_you
IF ~~ THEN REPLY @4359 GOTO asktattoos2_beauty
END

IF ~~ THEN BEGIN asktattoos2_ugly
SAY @4360
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN asktattoos2_beauty
SAY @4361
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN asktattoos2_you
SAY @4362
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1
SAY @4363
IF ~~ THEN REPLY @4364 GOTO tickle1_tickle
IF ~~ THEN REPLY @4365 GOTO tickle1_laugh
END

IF ~~ THEN BEGIN tickle1_tickle
SAY @4366
IF ~~ THEN REPLY @4367 GOTO tickle1_pin
IF ~~ THEN REPLY @4368 GOTO tickle1_pull
END

IF ~~ THEN BEGIN tickle1_laugh
SAY @4369
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1_pin
SAY @4370
IF ~~ THEN REPLY @4371 GOTO tickle1_pay
IF ~~ THEN REPLY @4372 GOTO tickle1_rhyme
END

IF ~~ THEN BEGIN tickle1_pull
SAY @4373
IF ~~ THEN REPLY @4374 GOTO tickle1_not
IF ~~ THEN REPLY @4375 GOTO tickle1_effect
IF ~~ THEN REPLY @4376 GOTO tickle1_stop
END

IF ~~ THEN BEGIN tickle1_pay
SAY @4377
IF ~~ THEN REPLY @4378 GOTO tickle1_rhyme
IF ~~ THEN REPLY @4379 GOTO tickle1_wait
END

IF ~~ THEN BEGIN tickle1_rhyme
SAY @4380
IF ~~ THEN REPLY @4381 GOTO tickle1_closer
IF ~~ THEN REPLY @4382 GOTO tickle1_beg
END

IF ~~ THEN BEGIN tickle1_not
SAY @4383 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1_effect
SAY @4384
IF ~~ THEN REPLY @4376 GOTO tickle1_stop
END

IF ~~ THEN BEGIN tickle1_stop
SAY @4385
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1_wait
SAY @4386
IF ~~ THEN REPLY @4387 GOTO tickle1_intrigued
IF ~~ THEN REPLY @4388 GOTO tickle1_sights
END

IF ~~ THEN BEGIN tickle1_closer
SAY @4389
IF ~~ THEN REPLY @4390 GOTO tickle1_beg
END

IF ~~ THEN BEGIN tickle1_beg
SAY @4391
IF ~~ THEN REPLY @4392 GOTO tickle1_long
END

IF ~~ THEN BEGIN tickle1_intrigued
SAY @4393
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1_sights
SAY @4394
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1_long
SAY @4395
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle2
SAY @4396
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisshand1
SAY @4397
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisshand2
SAY @4398 = @4399
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN watchwalk1
SAY @4400
IF ~~ THEN REPLY @4401 GOTO watchwalk1_sorry
IF ~~ THEN REPLY @4402 GOTO watchwalk1_cheek
END

IF ~~ THEN BEGIN watchwalk1_sorry
SAY @4403
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN watchwalk1_cheek
SAY @4404
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN watchwalk2
SAY @4405 = @4406
IF ~~ THEN REPLY @4407 GOTO watchwalk2_what
IF ~~ THEN REPLY @4408 GOTO watchwalk2_leg
IF ~~ THEN REPLY @4409 GOTO watchwalk2_breast
END

IF ~~ THEN BEGIN watchwalk2_what
SAY @4410
IF ~~ THEN REPLY @4411 GOTO watchwalk2_like
IF ~~ THEN REPLY @4412 GOTO watchwalk2_leg
IF ~~ THEN REPLY @4413 GOTO watchwalk2_breast
END

IF ~~ THEN BEGIN watchwalk2_leg
SAY @4414
IF ~~ THEN REPLY @4415 GOTO watchwalk2_realise
IF ~~ THEN REPLY @4416 GOTO watchwalk2_not
IF ~~ THEN REPLY @4417 GOTO watchwalk2_enjoy
IF ~~ THEN REPLY @4418 GOTO watchwalk2_thigh
END

IF ~~ THEN BEGIN watchwalk2_breast
SAY @4419
IF ~~ THEN REPLY @4415 GOTO watchwalk2_realise
IF ~~ THEN REPLY @4420 GOTO watchwalk2_not
IF ~~ THEN REPLY @4417 GOTO watchwalk2_enjoy
IF ~~ THEN REPLY @4418 GOTO watchwalk2_thigh
END

IF ~~ THEN BEGIN watchwalk2_like
SAY @4421 = @4422
IF ~~ THEN REPLY @4423 GOTO watchwalk2_realise
IF ~~ THEN REPLY @4417 GOTO watchwalk2_enjoy
IF ~~ THEN REPLY @4418 GOTO watchwalk2_thigh
END

IF ~~ THEN BEGIN watchwalk2_realise
SAY @4424 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN watchwalk2_not
SAY @4425 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN watchwalk2_enjoy
SAY @4426 = @4427
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN watchwalk2_thigh
SAY @4428
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN askname
SAY @4429
IF ~~ THEN REPLY @4430 GOTO askname_khertal
IF ~~ THEN REPLY @4431 GOTO askname_fade
END

IF ~~ THEN BEGIN askname_khertal
SAY @4432
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN askname_fade
SAY @4433
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN breakup
SAY @4434
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~Global("E3DISABLEFLIRTS","GLOBAL",0)
IsGabber(Player1)
CombatCounter(0)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
!Global("E3LOVETALK","GLOBAL",19)
Global("E3TREATMENTNOFLIRT","GLOBAL",0)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN fadeflirtbase2
SAY @4265
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
IF ~!Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,1)~ THEN REPLY @4273 GOTO touchtail2_1
IF ~!Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,2)~ THEN REPLY @4273 GOTO touchtail1
IF ~!Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,3)~ THEN REPLY @4273 GOTO touchtail2_1
IF ~!Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,4)~ THEN REPLY @4273 GOTO touchtail1
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,1)~ THEN REPLY @4273 GOTO touchtail2_1
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,2)~ THEN REPLY @4273 GOTO touchtail2_2
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,3)~ THEN REPLY @4273 GOTO touchtail1
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,4)~ THEN REPLY @4273 GOTO touchtail2_2
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
IF ~Global("E3FADENOOKIE","GLOBAL",1)
!AreaCheck("AR0704")
!AreaCheck("AR0709")
!AreaCheck("AR0406")
!AreaCheck("AR0513")
!AreaCheck("AR0509")
!AreaCheck("AR0021")
!AreaCheck("AR0313")
!AreaCheck("AR1105")
!AreaCheck("AR2010")
!AreaCheck("AR1602")
!AreaCheck("AR1100")
!AreaCheck("AR1200")
!AreaCheck("AR1700")~ THEN REPLY @4445 GOTO makelove1
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,1)
OR(13)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @4445 GOTO makelove1
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,2)
OR(13)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @4445 GOTO makelove2
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,3)
OR(13)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @4445 GOTO makelove1
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,4)
OR(13)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @4445 GOTO makelove2
IF ~~ THEN REPLY @4268 GOTO wink2_1
IF ~RandomNum(4,1)~ THEN REPLY @4446 GOTO kissneck1
IF ~RandomNum(4,2)~ THEN REPLY @4446 GOTO kissneck2
IF ~RandomNum(4,3)~ THEN REPLY @4446 GOTO kissneck1
IF ~RandomNum(4,4)~ THEN REPLY @4446 GOTO kissneck2
IF ~Global("E3FADENOOKIE","GLOBAL",1)
PartyHasItem("E3BIKINI")~ THEN REPLY @4447 GOTO chainmailbikini
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

IF ~~ THEN BEGIN doyouloveme1
SAY @4456
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail2_1
SAY @4457
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail2_2
SAY @4458
IF ~OR(13)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @4459 GOTO touchtail2_2_scales
IF ~~ THEN REPLY @4460 GOTO touchtail2_2_later
END

IF ~~ THEN BEGIN touchtail2_2_scales
SAY @4461
IF ~~ THEN REPLY @4462 GOTO touchtail2_2_control
IF ~~ THEN REPLY @4463 GOTO touchtail2_2_everytime
END

IF ~~ THEN BEGIN touchtail2_2_later
SAY @4464
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail2_2_control
SAY @4465
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN touchtail2_2_everytime
SAY @4466
IF ~~ THEN DO ~RestParty()~ EXIT
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

IF ~~ THEN BEGIN makelove1
SAY @4501
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN makelove2
SAY @4502
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN wink2_1
SAY @4503
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kissneck1
SAY @4504
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kissneck2
SAY @4505
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN chainmailbikini
SAY @4506
IF ~~ THEN REPLY @4507 GOTO bikini_love
IF ~~ THEN REPLY @4508 GOTO bikini_it
IF ~~ THEN REPLY @4509 GOTO bikini_have
IF ~~ THEN REPLY @4510 GOTO bikini_idea
END

IF ~~ THEN BEGIN bikini_love
SAY @4511
IF ~~ THEN REPLY @4512 GOTO bikini_size
IF ~~ THEN REPLY @4513 GOTO bikini_expensive
IF ~~ THEN REPLY @4514 GOTO bikini_fantasy
END

IF ~~ THEN BEGIN bikini_it
SAY @4515 
= @4516
IF ~~ THEN REPLY @4517 GOTO bikini_seacucumber
IF ~~ THEN REPLY @4518 GOTO bikini_nasty
IF ~~ THEN REPLY @4519 GOTO bikini_expensive
END

IF ~~ THEN BEGIN bikini_have
SAY @4520
IF ~~ THEN REPLY @4512 GOTO bikini_size
IF ~~ THEN REPLY @4513 GOTO bikini_expensive
IF ~~ THEN REPLY @4521 GOTO bikini_wear
END

IF ~~ THEN BEGIN bikini_idea
SAY @4522
IF ~~ THEN REPLY @4523 GOTO bikini_weirdo
IF ~~ THEN REPLY @4524 GOTO bikini_bought
IF ~~ THEN REPLY @4525 GOTO bikini_later
END

IF ~~ THEN BEGIN bikini_size
SAY @4526
IF ~~ THEN REPLY @4527 GOTO bikini_fun
IF ~~ THEN REPLY @4528 GOTO bikini_fantastic
IF ~~ THEN REPLY @4529 GOTO bikini_anything
END

IF ~~ THEN BEGIN bikini_expensive
SAY @4530
= @4531
IF ~~ THEN REPLY @4532 GOTO bikini_now
IF ~~ THEN REPLY @4533 GOTO bikini_anticipation
IF ~~ THEN REPLY @4534 GOTO bikini_occasionally
END

IF ~~ THEN BEGIN bikini_fantasy
SAY @4535
IF ~~ THEN REPLY @4517 GOTO bikini_seacucumber
IF ~~ THEN REPLY @4518 GOTO bikini_nasty
IF ~~ THEN REPLY @4519 GOTO bikini_expensive
END

IF ~~ THEN BEGIN bikini_seacucumber
SAY @4536
= @4537
IF ~~ THEN REPLY @4538 GOTO bikini_reallynasty
IF ~~ THEN REPLY @4539 GOTO bikini_weird
IF ~~ THEN REPLY @4540 GOTO bikini_size
END

IF ~~ THEN BEGIN bikini_nasty
SAY @4541
IF ~~ THEN REPLY @4512 GOTO bikini_size
IF ~~ THEN REPLY @4513 GOTO bikini_expensive
IF ~~ THEN REPLY @4521 GOTO bikini_wear
END

IF ~~ THEN BEGIN bikini_wear
SAY @4542
IF ~~ THEN REPLY @4543 GOTO bikini_expensive
IF ~~ THEN REPLY @4544 GOTO bikini_size
END

IF ~~ THEN BEGIN bikini_weirdo
SAY @4545
IF ~~ THEN REPLY @4546 GOTO bikini_blush
IF ~~ THEN REPLY @4547 GOTO bikini_later
END

IF ~~ THEN BEGIN bikini_bought
SAY @4526
= @4548
IF ~~ THEN REPLY @4549 GOTO bikini_fun
IF ~~ THEN REPLY @4532 GOTO bikini_now
IF ~~ THEN REPLY @4534 GOTO bikini_occasionally
END

IF ~~ THEN BEGIN bikini_later
SAY @4550
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bikini_fantastic
SAY @4551
IF ~~ THEN REPLY @4552 GOTO bikini_anything
IF ~~ THEN REPLY @4553 GOTO bikini_yes
END

IF ~~ THEN BEGIN bikini_anything
SAY @4554
= @4555
IF ~~ THEN DO ~DestroyItem("E3BIKINI")
SetGlobal("E3FADEWILLWEARBIKINI","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bikini_now
SAY @4556
= @4557
= @4558
IF ~~ THEN DO ~DestroyItem("E3BIKINI")
SetGlobal("E3FADEWILLWEARBIKINI","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bikini_anticipation
SAY @4559
IF ~~ THEN DO ~DestroyItem("E3BIKINI")
SetGlobal("E3FADEWILLWEARBIKINI","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bikini_occasionally
SAY @4560
= @4561
IF ~~ THEN DO ~DestroyItem("E3BIKINI")
SetGlobal("E3FADEWILLWEARBIKINI","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bikini_reallynasty
SAY @4562
IF ~~ THEN REPLY @4563 GOTO bikini_wait
IF ~~ THEN REPLY @4564 GOTO bikini_size
IF ~~ THEN REPLY @4565 GOTO bikini_expensive
IF ~~ THEN REPLY @4566 GOTO bikini_wear
END

IF ~~ THEN BEGIN bikini_weird
SAY @4567
= @4568
= @4569
IF ~~ THEN REPLY @4527 GOTO bikini_fun
IF ~~ THEN REPLY @4528 GOTO bikini_fantastic
IF ~~ THEN REPLY @4529 GOTO bikini_anything
END

IF ~~ THEN BEGIN bikini_blush
SAY @4526
= @4548
IF ~~ THEN REPLY @4570 GOTO bikini_fun
IF ~~ THEN REPLY @4532 GOTO bikini_now
IF ~~ THEN REPLY @4534 GOTO bikini_occasionally
END

IF ~~ THEN BEGIN bikini_wait
SAY @4571
IF ~~ THEN REPLY @4543 GOTO bikini_expensive
IF ~~ THEN REPLY @4572 GOTO bikini_size
IF ~~ THEN REPLY @4573 GOTO bikini_later
END

IF ~~ THEN BEGIN bikini_yes
SAY @4574
= @4575
IF ~~ THEN DO ~DestroyItem("E3BIKINI")
SetGlobal("E3FADEWILLWEARBIKINI","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bikini_fun
SAY @4576
= @4577
IF ~~ THEN DO ~DestroyItem("E3BIKINI")
SetGlobal("E3FADEWILLWEARBIKINI","GLOBAL",1)~ EXIT
END
END


