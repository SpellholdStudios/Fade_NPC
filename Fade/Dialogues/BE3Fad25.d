BEGIN BE3FAD25

//Pocket Plane LT #1
IF ~Global("E3POCKETPLANETALKONE","LOCALS",2)~ THEN BEGIN ltpp1_start
SAY @5233
=
@5234
IF ~~ THEN REPLY @5235 DO ~SetGlobal("E3POCKETPLANETALKONE","LOCALS",3)~ GOTO ltpp1_matters
IF ~~ THEN REPLY @5236 DO ~SetGlobal("E3POCKETPLANETALKONE","LOCALS",3)~ GOTO ltpp1_remember
IF ~~ THEN REPLY @5237 DO ~SetGlobal("E3POCKETPLANETALKONE","LOCALS",3)~ GOTO ltpp1_pocket
IF ~~ THEN REPLY @5238 DO ~SetGlobal("E3POCKETPLANETALKONE","LOCALS",3)~ GOTO ltpp1_unsettling
IF ~~ THEN REPLY @5239 DO ~SetGlobal("E3POCKETPLANETALKONE","LOCALS",3)~ GOTO ltpp1_prophecy
IF ~~ THEN REPLY @5240 DO ~SetGlobal("E3POCKETPLANETALKONE","LOCALS",3)~ GOTO ltpp1_calls
END

IF ~~ THEN BEGIN ltpp1_matters
SAY @5241
IF ~InParty("Imoen2")~ THEN REPLY @5242 GOTO ltpp1_changed
IF ~!InParty("Imoen2")~ THEN REPLY @5243 GOTO ltpp1_changed
IF ~~ THEN REPLY @5244 GOTO ltpp1_analyse
IF ~~ THEN REPLY @5245 GOTO ltpp1_aware
END

IF ~~ THEN BEGIN ltpp1_remember
SAY @5246
IF ~~ THEN REPLY @5247 GOTO ltpp1_matters
IF ~~ THEN REPLY @5248 GOTO ltpp1_lessons
IF ~~ THEN REPLY @5249 GOTO ltpp1_prophecy
END

IF ~~ THEN BEGIN ltpp1_pocket
SAY @5250
IF ~~ THEN REPLY @5251 GOTO ltpp1_possible
IF ~~ THEN REPLY @5252 GOTO ltpp1_underdark
END

IF ~~ THEN BEGIN ltpp1_unsettling
SAY @5253
IF ~ReputationLT(Player1,10)~ THEN REPLY @5254 GOTO ltpp1_dead_1
IF ~ReputationGT(Player1,9)~ THEN REPLY @5254 GOTO ltpp1_dead_2
IF ~~ THEN REPLY @5255 GOTO ltpp1_taint
IF ~~ THEN REPLY @5256 GOTO ltpp1_influence
END

IF ~~ THEN BEGIN ltpp1_prophecy
SAY @5257
=
@5258
IF ~~ THEN REPLY @5259 GOTO ltpp1_headache
IF ~~ THEN REPLY @5260 GOTO ltpp1_separate
IF ~~ THEN REPLY @5261 GOTO ltpp1_immortal
END

IF ~~ THEN BEGIN ltpp1_calls
SAY @5262
IF ~~ THEN REPLY @5251 GOTO ltpp1_possible
IF ~~ THEN REPLY @5252 GOTO ltpp1_underdark
IF ~~ THEN REPLY @5263 GOTO ltpp1_crazy
END

IF ~~ THEN BEGIN ltpp1_changed
SAY @5264
IF ~~ THEN REPLY @5265 GOTO ltpp1_how
IF ~~ THEN REPLY @5266 GOTO ltpp1_realise
IF ~~ THEN REPLY @5267 GOTO ltpp1_stolen
END

IF ~~ THEN BEGIN ltpp1_analyse
SAY @5268
IF ~~ THEN REPLY @5269 GOTO ltpp1_fret
IF ~~ THEN REPLY @5270 GOTO ltpp1_fine
IF ~~ THEN REPLY @5271 GOTO ltpp1_prophecy
IF ~~ THEN REPLY @5238 DO ~SetGlobal("E3POCKETPLANETALKONE","LOCALS",2)~ GOTO ltpp1_unsettling
END

IF ~~ THEN BEGIN ltpp1_aware
SAY @5272
IF ~~ THEN REPLY @5273 GOTO ltpp1_separate
IF ~~ THEN REPLY @5274 DO ~SetGlobal("E3POCKETPLANETALKONE","LOCALS",2)~ GOTO ltpp1_unsettling
IF ~~ THEN REPLY @5275 GOTO ltpp1_responsibilities
END

IF ~~ THEN BEGIN ltpp1_lessons
SAY @5276
IF ~~ THEN REPLY @5237 GOTO ltpp1_pocket
IF ~~ THEN REPLY @5240 GOTO ltpp1_calls
END

IF ~~ THEN BEGIN ltpp1_possible
SAY @5277
IF ~~ THEN REPLY @5278 GOTO ltpp1_massacre
IF ~~ THEN REPLY @5279 GOTO ltpp1_emergency
IF ~~ THEN REPLY @5280 GOTO ltpp1_succubus
END

IF ~~ THEN BEGIN ltpp1_underdark
SAY @5281
=
@5282
IF ~~ THEN REPLY @5278 GOTO ltpp1_massacre
IF ~~ THEN REPLY @5279 GOTO ltpp1_emergency
IF ~~ THEN REPLY @5280 GOTO ltpp1_succubus
END

IF ~~ THEN BEGIN ltpp1_dead_1
SAY @5283
=
@5284
=
@5285
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_dead_2
SAY @5283
=
@5284
=
@5286
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_taint
SAY @5287
=
@5288
IF ~~ THEN REPLY @5289 GOTO ltpp1_think
IF ~~ THEN REPLY @5290 GOTO ltpp1_bhaal
IF ~~ THEN REPLY @5291 GOTO ltpp1_my
END

IF ~~ THEN BEGIN ltpp1_influence
SAY @5292
IF ~~ THEN REPLY @5289 GOTO ltpp1_think
IF ~~ THEN REPLY @5290 GOTO ltpp1_bhaal
IF ~~ THEN REPLY @5291 GOTO ltpp1_my
END

IF ~~ THEN BEGIN ltpp1_headache
SAY @5293
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_separate
SAY @5294
=
@5295
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_immortal
SAY @5296
=
@5297
IF ~InParty("Jaheira")~ THEN GOTO ltpp1_immortal_2
IF ~!InParty("Jaheira")
InParty("Cernd")~ THEN GOTO ltpp1_immortal_3
IF ~!InParty("Jaheira")
!InParty("Cernd")~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_immortal_2
SAY @5298
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_immortal_3
SAY @5299
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_crazy
SAY @5300
IF ~~ THEN REPLY @5278 GOTO ltpp1_massacre
IF ~~ THEN REPLY @5279 GOTO ltpp1_emergency
IF ~~ THEN REPLY @5280 GOTO ltpp1_succubus
END

IF ~~ THEN BEGIN ltpp1_how
SAY @5301
=
@5302
=
@5303
=
@5304
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_realise
SAY @5305
=
@5302
=
@5303
=
@5304
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_stolen
SAY @5306
=
@5302
=
@5303
=
@5304
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_fret
SAY @5307
IF ~~ THEN REPLY @5308 GOTO ltpp1_laughing
IF ~~ THEN REPLY @5309 GOTO ltpp1_disembowel
IF ~~ THEN REPLY @5310 GOTO ltpp1_fine
END

IF ~~ THEN BEGIN ltpp1_fine
SAY @5311
=
@5312
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_responsibilities
SAY @5313
=
@5302
=
@5303
=
@5304
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_massacre
SAY @5314
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_emergency
SAY @5315
=
@5316
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_succubus
SAY @5317
=
@5318
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_think
SAY @5319
=
@5320
=
@5321
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_bhaal
SAY @5322
=
@5323
=
@5320
=
@5321
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_my
SAY @5324
=
@5325
IF ~~ THEN REPLY @231 GOTO ltpp1_shock
IF ~~ THEN REPLY @5326 GOTO ltpp1_again
IF ~~ THEN REPLY @5327 GOTO ltpp1_regret
END

IF ~~ THEN BEGIN ltpp1_laughing
SAY @5328
=
@5316
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_disembowel
SAY @5329
=
@5330
=
@5316
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_shock
SAY @5331
=
@5332
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_again
SAY @5333
=
@5334
=
@5335
=
@5336
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpp1_regret
SAY @5331
=
@5332
IF ~~ THEN EXIT
END

//Master Wraith LT
IF ~Global("E3MASTERWRAITHTALK","LOCALS",1)~ THEN BEGIN ltmw_start
SAY @5337
=
@5338
IF ~~ THEN REPLY @5339 DO ~SetGlobal("E3MASTERWRAITHTALK","LOCALS",2)~ GOTO ltmw_trick
IF ~~ THEN REPLY @5340 DO ~SetGlobal("E3MASTERWRAITHTALK","LOCALS",2)~ GOTO ltmw_lies
IF ~~ THEN REPLY @5341 DO ~SetGlobal("E3MASTERWRAITHTALK","LOCALS",2)~ GOTO ltmw_past
END

IF ~~ THEN BEGIN ltmw_trick
SAY @5342
IF ~~ THEN REPLY @5343 GOTO ltmw_suffer
IF ~~ THEN REPLY @5344 GOTO ltmw_past
IF ~~ THEN REPLY @5345 GOTO ltmw_love
IF ~~ THEN REPLY @5346 GOTO ltmw_fears
END

IF ~~ THEN BEGIN ltmw_lies
SAY @5347
IF ~~ THEN REPLY @5348 GOTO ltmw_response
IF ~~ THEN REPLY @5349 GOTO ltmw_love
IF ~~ THEN REPLY @5344 GOTO ltmw_past
IF ~~ THEN REPLY @5346 GOTO ltmw_fears
END

IF ~~ THEN BEGIN ltmw_past
SAY @5350
=
@5351
IF ~~ THEN REPLY @5352 GOTO ltmw_feel
IF ~~ THEN REPLY @5353 GOTO ltmw_understand
IF ~~ THEN REPLY @5354 GOTO ltmw_fears
IF ~~ THEN REPLY @5355 GOTO ltmw_pay
END

IF ~~ THEN BEGIN ltmw_suffer
SAY @5356
=
@5357
=
@5351
IF ~~ THEN REPLY @5352 GOTO ltmw_feel
IF ~~ THEN REPLY @5353 GOTO ltmw_understand
IF ~~ THEN REPLY @5355 GOTO ltmw_pay
END

IF ~~ THEN BEGIN ltmw_love
SAY @5358
IF ~~ THEN REPLY @5359 GOTO ltmw_fears
IF ~~ THEN REPLY @5360 GOTO ltmw_destroy
IF ~~ THEN REPLY @5355 GOTO ltmw_pay
END

IF ~~ THEN BEGIN ltmw_response
SAY @5361
=
@5357
=
@5351
IF ~~ THEN REPLY @5352 GOTO ltmw_feel
IF ~~ THEN REPLY @5353 GOTO ltmw_understand
IF ~~ THEN REPLY @5355 GOTO ltmw_pay
END

IF ~~ THEN BEGIN ltmw_fears
SAY @5362
=
@5363
IF ~~ THEN REPLY @5364 GOTO ltmw_future
IF ~~ THEN REPLY @5365 GOTO ltmw_sure
IF ~~ THEN REPLY @5366 GOTO ltmw_deserve
END

IF ~~ THEN BEGIN ltmw_feel
SAY @5367
=
@5368
IF ~~ THEN REPLY @5369 GOTO ltmw_affection
IF ~~ THEN REPLY @5370 GOTO ltmw_pay
IF ~~ THEN REPLY @5371 GOTO ltmw_share
END

IF ~~ THEN BEGIN ltmw_understand
SAY @5372
IF ~~ THEN REPLY @5373 GOTO ltmw_happy
IF ~~ THEN REPLY @5374 GOTO ltmw_special
END

IF ~~ THEN BEGIN ltmw_pay
SAY @5362
=
@5363
IF ~~ THEN REPLY @5364 GOTO ltmw_future
IF ~~ THEN REPLY @5365 GOTO ltmw_sure
IF ~~ THEN REPLY @5366 GOTO ltmw_deserve
END

IF ~~ THEN BEGIN ltmw_destroy
SAY @5361
=
@5357
=
@5351
IF ~~ THEN REPLY @5352 GOTO ltmw_feel
IF ~~ THEN REPLY @5353 GOTO ltmw_understand
IF ~~ THEN REPLY @5355 GOTO ltmw_pay
END

IF ~~ THEN BEGIN ltmw_future
SAY @5375
=
@5376
=
@5377
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltmw_sure
SAY @5378
=
@5376
=
@5377
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltmw_deserve
SAY @5379
=
@5376
=
@5377
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltmw_affection
SAY @5380
=
@5376
=
@5377
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltmw_share
SAY @5381
=
@5376
=
@5377
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltmw_happy
SAY @5382
=
@5376
=
@5377
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltmw_special
SAY @5383
=
@5376
=
@5377
IF ~~ THEN EXIT
END

//Post Master Wraith LT
IF ~Global("E3POSTMWTALK","LOCALS",1)~ THEN BEGIN ltpostmw_start
SAY @5384
IF ~~ THEN REPLY @5385 DO ~SetGlobal("E3POSTMWTALK","LOCALS",2)~ GOTO ltpostmw_unlike
IF ~~ THEN REPLY @5386 DO ~SetGlobal("E3POSTMWTALK","LOCALS",2)~ GOTO ltpostmw_wrong
IF ~~ THEN REPLY @5387 DO ~SetGlobal("E3POSTMWTALK","LOCALS",2)~ GOTO ltpostmw_tired
END

IF ~~ THEN BEGIN ltpostmw_unlike
SAY @5388
IF ~~ THEN REPLY @5389 GOTO ltpostmw_both
IF ~~ THEN REPLY @5390 GOTO ltpostmw_out
IF ~~ THEN REPLY @5391 GOTO ltpostmw_sure
END

IF ~~ THEN BEGIN ltpostmw_wrong
SAY @5392
IF ~~ THEN REPLY @5393 GOTO ltpostmw_distance
IF ~~ THEN REPLY @5390 GOTO ltpostmw_out
IF ~~ THEN REPLY @5391 GOTO ltpostmw_sure
END

IF ~~ THEN BEGIN ltpostmw_tired
SAY @5394
IF ~~ THEN REPLY @5395 GOTO ltpostmw_formal
IF ~~ THEN REPLY @5396 GOTO ltpostmw_wrong
IF ~~ THEN REPLY @5397 GOTO ltpostmw_wraith
END

IF ~~ THEN BEGIN ltpostmw_both
SAY @5398
IF ~~ THEN REPLY @5399 GOTO ltpostmw_fate
IF ~~ THEN REPLY @5400 GOTO ltpostmw_discuss
IF ~~ THEN REPLY @5401 GOTO ltpostmw_say
END

IF ~~ THEN BEGIN ltpostmw_out
SAY @5402
IF ~~ THEN REPLY @5403 GOTO ltpostmw_power
IF ~~ THEN REPLY @5404 GOTO ltpostmw_withdrawn
IF ~Global("E3FADENOOKIE","GLOBAL",3)~ THEN REPLY @5405 GOTO ltpostmw_wink
END

IF ~~ THEN BEGIN ltpostmw_sure
SAY @5406
=
@5407
IF ~~ THEN REPLY @5408 GOTO ltpostmw_death
IF ~~ THEN REPLY @5409 GOTO ltpostmw_point
IF ~~ THEN REPLY @5410 GOTO ltpostmw_ever
END

IF ~~ THEN BEGIN ltpostmw_distance
SAY @5411
=
@5412
IF ~~ THEN REPLY @5399 GOTO ltpostmw_fate
IF ~~ THEN REPLY @5400 GOTO ltpostmw_discuss
IF ~~ THEN REPLY @5401 GOTO ltpostmw_say
END

IF ~~ THEN BEGIN ltpostmw_formal
SAY @5413
IF ~~ THEN REPLY @5393 GOTO ltpostmw_distance
IF ~~ THEN REPLY @5390 GOTO ltpostmw_out
IF ~~ THEN REPLY @5391 GOTO ltpostmw_sure
END

IF ~~ THEN BEGIN ltpostmw_wraith
SAY @5414
IF ~~ THEN REPLY @5399 GOTO ltpostmw_fate
IF ~~ THEN REPLY @5400 GOTO ltpostmw_discuss
IF ~~ THEN REPLY @5401 GOTO ltpostmw_say
END

IF ~~ THEN BEGIN ltpostmw_fate
SAY @5415
IF ~~ THEN REPLY @5416 GOTO ltpostmw_thinking
IF ~~ THEN REPLY @5417 GOTO ltpostmw_bother
IF ~~ THEN REPLY @5418 GOTO ltpostmw_establish
END

IF ~~ THEN BEGIN ltpostmw_discuss
SAY @5419
IF ~~ THEN REPLY @5420 GOTO ltpostmw_revisit
IF ~~ THEN REPLY @5421 GOTO ltpostmw_fate
IF ~~ THEN REPLY @5422 GOTO ltpostmw_rest
END

IF ~~ THEN BEGIN ltpostmw_say
SAY @5423
=
@5424
IF ~~ THEN REPLY @5416 GOTO ltpostmw_thinking
IF ~~ THEN REPLY @5417 GOTO ltpostmw_bother
IF ~~ THEN REPLY @5425 GOTO ltpostmw_establish
END

IF ~~ THEN BEGIN ltpostmw_power
SAY @5426
IF ~~ THEN REPLY @5427 GOTO ltpostmw_realms
IF ~~ THEN REPLY @5417 GOTO ltpostmw_bother
IF ~~ THEN REPLY @5428 GOTO ltpostmw_establish
END

IF ~~ THEN BEGIN ltpostmw_withdrawn
SAY @5429
=
@5412
IF ~~ THEN REPLY @5399 GOTO ltpostmw_fate
IF ~~ THEN REPLY @5400 GOTO ltpostmw_discuss
IF ~~ THEN REPLY @5401 GOTO ltpostmw_say
END

IF ~~ THEN BEGIN ltpostmw_wink
SAY @5430
IF ~~ THEN REPLY @5431 GOTO ltpostmw_wraith
IF ~~ THEN REPLY @5432 GOTO ltpostmw_words
IF ~~ THEN REPLY @5433 GOTO ltpostmw_distance
END

IF ~~ THEN BEGIN ltpostmw_death
SAY @5434
=
@5435
IF ~~ THEN REPLY @5436 GOTO ltpostmw_irenicus
IF ~~ THEN REPLY @5437 GOTO ltpostmw_concern
IF ~~ THEN REPLY @5438 GOTO ltpostmw_prophecy
IF ~~ THEN REPLY @5439 GOTO ltpostmw_sleep
END

IF ~~ THEN BEGIN ltpostmw_point
SAY @5440
IF ~~ THEN REPLY @5438 GOTO ltpostmw_prophecy
IF ~~ THEN REPLY @5441 GOTO ltpostmw_easy
IF ~~ THEN REPLY @5442 GOTO ltpostmw_tear
IF ~~ THEN REPLY @5439 GOTO ltpostmw_sleep
END

IF ~~ THEN BEGIN ltpostmw_ever
SAY @5443
=
@5444
IF ~~ THEN REPLY @5445 GOTO ltpostmw_encounter
IF ~~ THEN REPLY @5446 GOTO ltpostmw_prophecy
IF ~~ THEN REPLY @5441 GOTO ltpostmw_easy
IF ~~ THEN REPLY @5447 GOTO ltpostmw_sleep
END

IF ~~ THEN BEGIN ltpostmw_thinking
SAY @5448
=
@5435
IF ~~ THEN REPLY @5436 GOTO ltpostmw_irenicus
IF ~~ THEN REPLY @5437 GOTO ltpostmw_concern
IF ~~ THEN REPLY @5438 GOTO ltpostmw_prophecy
IF ~~ THEN REPLY @5439 GOTO ltpostmw_sleep
END

IF ~~ THEN BEGIN ltpostmw_bother
SAY @5449
IF ~~ THEN REPLY @5438 GOTO ltpostmw_prophecy
IF ~~ THEN REPLY @5441 GOTO ltpostmw_easy
IF ~~ THEN REPLY @5442 GOTO ltpostmw_tear
IF ~~ THEN REPLY @5439 GOTO ltpostmw_sleep
END

IF ~~ THEN BEGIN ltpostmw_establish
SAY @5450
=
@5444
IF ~~ THEN REPLY @5445 GOTO ltpostmw_encounter
IF ~~ THEN REPLY @5446 GOTO ltpostmw_prophecy
IF ~~ THEN REPLY @5441 GOTO ltpostmw_easy
IF ~~ THEN REPLY @5447 GOTO ltpostmw_sleep
END

IF ~~ THEN BEGIN ltpostmw_revisit
SAY @5451
=
@5452
IF ~~ THEN REPLY @5416 GOTO ltpostmw_thinking
IF ~~ THEN REPLY @5417 GOTO ltpostmw_bother
IF ~~ THEN REPLY @5425 GOTO ltpostmw_establish
END

IF ~~ THEN BEGIN ltpostmw_rest 
SAY @5453
=
@5454
IF ~~ THEN REPLY @5438 GOTO ltpostmw_prophecy
IF ~~ THEN REPLY @5441 GOTO ltpostmw_easy
IF ~~ THEN REPLY @5442 GOTO ltpostmw_tear
IF ~~ THEN REPLY @5439 GOTO ltpostmw_sleep
END

IF ~~ THEN BEGIN ltpostmw_realms
SAY @5455
=
@5444
IF ~~ THEN REPLY @5445 GOTO ltpostmw_encounter
IF ~~ THEN REPLY @5446 GOTO ltpostmw_prophecy
IF ~~ THEN REPLY @5441 GOTO ltpostmw_easy
IF ~~ THEN REPLY @5447 GOTO ltpostmw_sleep
END

IF ~~ THEN BEGIN ltpostmw_words
SAY @5456
=
@5457
IF ~~ THEN REPLY @5416 GOTO ltpostmw_thinking
IF ~~ THEN REPLY @5417 GOTO ltpostmw_bother
IF ~~ THEN REPLY @5425 GOTO ltpostmw_establish
END

IF ~~ THEN BEGIN ltpostmw_irenicus
SAY @5458
=
@5459
IF ~~ THEN REPLY @5460 GOTO ltpostmw_hollow
IF ~~ THEN REPLY @5461 GOTO ltpostmw_fight
IF ~~ THEN REPLY @5462 GOTO ltpostmw_torn
END

IF ~~ THEN BEGIN ltpostmw_concern
SAY @5463
IF ~~ THEN REPLY @5464 GOTO ltpostmw_future
IF ~~ THEN REPLY @5465 GOTO ltpostmw_bhaalspawn
IF ~~ THEN REPLY @5466 GOTO ltpostmw_paranoid
END

IF ~~ THEN BEGIN ltpostmw_prophecy
SAY @5467
=
@5468
IF ~~ THEN REPLY @5469 GOTO ltpostmw_promise
IF ~~ THEN REPLY @5464 GOTO ltpostmw_future
IF ~~ THEN REPLY @5470 GOTO ltpostmw_public
END

IF ~~ THEN BEGIN ltpostmw_sleep
SAY @5471
=
@5472
=
@5473
IF ~~ THEN REPLY @5460 GOTO ltpostmw_hollow
IF ~~ THEN REPLY @5461 GOTO ltpostmw_fight
IF ~~ THEN REPLY @5462 GOTO ltpostmw_torn
END

IF ~~ THEN BEGIN ltpostmw_easy
SAY @5474
=
@5475
IF ~~ THEN REPLY @5464 GOTO ltpostmw_future
IF ~~ THEN REPLY @5476 GOTO ltpostmw_bhaalspawn
IF ~~ THEN REPLY @5466 GOTO ltpostmw_paranoid
END

IF ~~ THEN BEGIN ltpostmw_tear
SAY @5477
=
@5478
IF ~~ THEN REPLY @5460 GOTO ltpostmw_hollow
IF ~~ THEN REPLY @5461 GOTO ltpostmw_fight
IF ~~ THEN REPLY @5479 GOTO ltpostmw_future
END

IF ~~ THEN BEGIN ltpostmw_encounter
SAY @5480
=
@5481
IF ~~ THEN REPLY @5464 GOTO ltpostmw_future
IF ~~ THEN REPLY @5465 GOTO ltpostmw_bhaalspawn
IF ~~ THEN REPLY @5466 GOTO ltpostmw_paranoid
END

IF ~~ THEN BEGIN ltpostmw_hollow
SAY @5482
=
@5483
=
@5484
IF ~~ THEN REPLY @5485 GOTO ltpostmw_celebrate
IF ~~ THEN REPLY @5486 GOTO ltpostmw_hug
IF ~~ THEN REPLY @5487 GOTO ltpostmw_problem
END

IF ~~ THEN BEGIN ltpostmw_fight
SAY @5488
=
@5489
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostmw_torn
SAY @5490
=
@5491
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostmw_future
SAY @5492
=
@5493
=
@5491
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostmw_bhaalspawn
SAY @5494
=
@5495
=
@5484
IF ~~ THEN REPLY @5485 GOTO ltpostmw_celebrate
IF ~~ THEN REPLY @5486 GOTO ltpostmw_hug
IF ~~ THEN REPLY @5487 GOTO ltpostmw_problem
END

IF ~~ THEN BEGIN ltpostmw_paranoid
SAY @5496
=
@5497
=
@5484
IF ~~ THEN REPLY @5485 GOTO ltpostmw_celebrate
IF ~~ THEN REPLY @5486 GOTO ltpostmw_hug
IF ~~ THEN REPLY @5487 GOTO ltpostmw_problem
END

IF ~~ THEN BEGIN ltpostmw_promise
SAY @5488
=
@5489
=
@5498
=
@5491
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostmw_public
SAY @5499
=
@5491
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostmw_celebrate
SAY @5500
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN GOTO ltpostmw_celebrate_1
IF ~!Global("E3FADENOOKIE","GLOBAL",1)~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostmw_celebrate_1
SAY @5501
IF ~~ THEN REPLY @5502 GOTO ltpostmw_ask
IF ~~ THEN REPLY @5503 GOTO ltpostmw_now
END

IF ~~ THEN BEGIN ltpostmw_hug
SAY @5504
=
@5505
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostmw_problem
SAY @5506
=
@5491
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostmw_ask
SAY @5507
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostmw_now
SAY @5508
IF ~~ THEN EXIT
END

//Post-Saradush LT
IF ~Global("E3POSTSARADUSHTALK","LOCALS",1)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN ltpostsd_start
SAY @5509
IF ~~ THEN REPLY @5510 DO ~SetGlobal("E3POSTSARADUSHTALK","LOCALS",2)~ GOTO ltpostsd_failed
IF ~~ THEN REPLY @5511 DO ~SetGlobal("E3POSTSARADUSHTALK","LOCALS",2)~ GOTO ltpostsd_incident
IF ~~ THEN REPLY @5512 DO ~SetGlobal("E3POSTSARADUSHTALK","LOCALS",2)~ GOTO ltpostsd_dwell
IF ~~ THEN REPLY @5513 DO ~SetGlobal("E3POSTSARADUSHTALK","LOCALS",2)~ GOTO ltpostsd_soft
END

IF ~~ THEN BEGIN ltpostsd_failed
SAY @5514
=
@5515
=
@5516
IF ~~ THEN REPLY @5517 GOTO ltpostsd_better
IF ~~ THEN REPLY @5518 GOTO ltpostsd_chaos
IF ~~ THEN REPLY @5519 GOTO ltpostsd_life
IF ~~ THEN REPLY @5520 GOTO ltpostsd_tell
END

IF ~~ THEN BEGIN ltpostsd_incident
SAY @5521
IF ~~ THEN REPLY @5522 GOTO ltpostsd_over
IF ~~ THEN REPLY @5523 GOTO ltpostsd_price
IF ~~ THEN REPLY @5524 GOTO ltpostsd_alive
IF ~~ THEN REPLY @5525 GOTO ltpostsd_stoke
END

IF ~~ THEN BEGIN ltpostsd_dwell
SAY @5526
IF ~~ THEN REPLY @5527 GOTO ltpostsd_little
IF ~~ THEN REPLY @5528 GOTO ltpostsd_fight
IF ~~ THEN REPLY @5529 GOTO ltpostsd_bloodlust
END

IF ~~ THEN BEGIN ltpostsd_soft
SAY @5530
IF ~~ THEN REPLY @5531 GOTO ltpostsd_team
IF ~~ THEN REPLY @5528 GOTO ltpostsd_fight
IF ~~ THEN REPLY @5529 GOTO ltpostsd_bloodlust
END

IF ~~ THEN BEGIN ltpostsd_better
SAY @5532
IF ~~ THEN REPLY @5533 GOTO ltpostsd_alive
IF ~~ THEN REPLY @5534 GOTO ltpostsd_abandon
IF ~~ THEN REPLY @5535 GOTO ltpostsd_chaos
END

IF ~~ THEN BEGIN ltpostsd_chaos
SAY @5536
IF ~~ THEN REPLY @5537 GOTO ltpostsd_alive
IF ~~ THEN REPLY @5538 GOTO ltpostsd_random
IF ~~ THEN REPLY @5539 GOTO ltpostsd_frighten
END

IF ~~ THEN BEGIN ltpostsd_life
SAY @5540
IF ~~ THEN REPLY @5541 GOTO ltpostsd_fascination
IF ~~ THEN REPLY @5542 GOTO ltpostsd_best
IF ~~ THEN REPLY @5543 GOTO ltpostsd_natural
END

IF ~~ THEN BEGIN ltpostsd_tell
SAY @5544
IF ~~ THEN REPLY @5533 GOTO ltpostsd_alive
IF ~~ THEN REPLY @5534 GOTO ltpostsd_abandon
IF ~~ THEN REPLY @5535 GOTO ltpostsd_chaos
END

IF ~~ THEN BEGIN ltpostsd_over
SAY @5545
IF ~~ THEN REPLY @5546 GOTO ltpostsd_weary
IF ~~ THEN REPLY @5547 GOTO ltpostsd_chaos
END

IF ~~ THEN BEGIN ltpostsd_price
SAY @5548
=
@5515
=
@5516
IF ~~ THEN REPLY @5517 GOTO ltpostsd_better
IF ~~ THEN REPLY @5518 GOTO ltpostsd_chaos
IF ~~ THEN REPLY @5519 GOTO ltpostsd_life
IF ~~ THEN REPLY @5520 GOTO ltpostsd_tell
IF ~~ THEN REPLY @5549 GOTO ltpostsd_did
END

IF ~~ THEN BEGIN ltpostsd_alive
SAY @5550
IF ~~ THEN REPLY @5551 GOTO ltpostsd_convinced
IF ~~ THEN REPLY @5552 GOTO ltpostsd_wrong
IF ~~ THEN REPLY @5553 GOTO ltpostsd_move
END

IF ~~ THEN BEGIN ltpostsd_stoke
SAY @5554
=
@5555
=
@5540
IF ~~ THEN REPLY @5541 GOTO ltpostsd_fascination
IF ~~ THEN REPLY @5542 GOTO ltpostsd_best
IF ~~ THEN REPLY @5543 GOTO ltpostsd_natural
END

IF ~~ THEN BEGIN ltpostsd_little
SAY @5556
IF ~~ THEN REPLY @5528 GOTO ltpostsd_fight
IF ~~ THEN REPLY @5557 GOTO ltpostsd_next
END

IF ~~ THEN BEGIN ltpostsd_fight
SAY @5558
=
@5559
=
@5555
=
@5560
IF ~~ THEN REPLY @5552 GOTO ltpostsd_wrong
IF ~~ THEN REPLY @5561 GOTO ltpostsd_frighten
IF ~~ THEN REPLY @5538 GOTO ltpostsd_random
END

IF ~~ THEN BEGIN ltpostsd_bloodlust
SAY @5558
=
@5559
=
@5555
=
@5560
IF ~~ THEN REPLY @5552 GOTO ltpostsd_wrong
IF ~~ THEN REPLY @5561 GOTO ltpostsd_frighten
IF ~~ THEN REPLY @5538 GOTO ltpostsd_random
END

IF ~~ THEN BEGIN ltpostsd_team
SAY @5562
=
@5563
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostsd_abandon
SAY @5564
=
@5555
=
@5540
IF ~~ THEN REPLY @5541 GOTO ltpostsd_fascination
IF ~~ THEN REPLY @5542 GOTO ltpostsd_best
IF ~~ THEN REPLY @5543 GOTO ltpostsd_natural
END

IF ~~ THEN BEGIN ltpostsd_random
SAY @5565
=
@5566
=
@5555
=
@5560
IF ~~ THEN REPLY @5552 GOTO ltpostsd_wrong
IF ~~ THEN REPLY @5561 GOTO ltpostsd_frighten
IF ~~ THEN REPLY @5538 GOTO ltpostsd_random
END

IF ~~ THEN BEGIN ltpostsd_frighten
SAY @5567
=
@5568
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostsd_fascination
SAY @5569
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostsd_best
SAY @5570
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostsd_natural
SAY @5571
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostsd_weary
SAY @5572
=
@5555
=
@5540
IF ~~ THEN REPLY @5541 GOTO ltpostsd_fascination
IF ~~ THEN REPLY @5542 GOTO ltpostsd_best
IF ~~ THEN REPLY @5543 GOTO ltpostsd_natural
END

IF ~~ THEN BEGIN ltpostsd_did
SAY @5573
IF ~~ THEN REPLY @5574 GOTO ltpostsd_team
IF ~~ THEN REPLY @5575 GOTO ltpostsd_bloodlust
IF ~~ THEN REPLY @5576 GOTO ltpostsd_fight
END

IF ~~ THEN BEGIN ltpostsd_convinced
SAY @5577
=
@5566
=
@5555
=
@5540
IF ~~ THEN REPLY @5541 GOTO ltpostsd_fascination
IF ~~ THEN REPLY @5542 GOTO ltpostsd_best
IF ~~ THEN REPLY @5543 GOTO ltpostsd_natural
END

IF ~~ THEN BEGIN ltpostsd_wrong
SAY @5578
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostsd_move
SAY @5579
=
@5580
=
@5563
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltpostsd_next
SAY @5581
=
@5582
=
@5560
IF ~~ THEN REPLY @5552 GOTO ltpostsd_wrong
IF ~~ THEN REPLY @5561 GOTO ltpostsd_frighten
IF ~~ THEN REPLY @5538 GOTO ltpostsd_random
END

//Final LT
IF ~Global("E3FINALLOVETALK","LOCALS",1)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN ltfinal_start
SAY @5583
IF ~~ THEN REPLY @5584 DO ~SetGlobal("E3FINALLOVETALK","LOCALS",2)~ GOTO ltfinal_what
IF ~~ THEN REPLY @5585 DO ~SetGlobal("E3FINALLOVETALK","LOCALS",2)~ GOTO ltfinal_happen
IF ~~ THEN REPLY @5586 DO ~SetGlobal("E3FINALLOVETALK","LOCALS",2)~ GOTO ltfinal_see
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @5587 DO ~SetGlobal("E3FINALLOVETALK","LOCALS",2)~ GOTO ltfinal_endanger
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @5588 DO ~SetGlobal("E3FINALLOVETALK","LOCALS",2)~ GOTO ltfinal_afterall
END

IF ~~ THEN BEGIN ltfinal_what
SAY @5589
=
@5590
IF ~~ THEN REPLY @5591 GOTO ltfinal_realise
IF ~Global("E3ENGAGED","GLOBAL",1)~ THEN REPLY @5592 GOTO ltfinal_dedicate_1
IF ~Global("E3ENGAGED","GLOBAL",0)~ THEN REPLY @5592 GOTO ltfinal_dedicate_2
IF ~~ THEN REPLY @5593 GOTO ltfinal_together
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @5594 GOTO ltfinal_baby
IF ~~ THEN REPLY @5595 GOTO ltfinal_slayer
END

IF ~~ THEN BEGIN ltfinal_happen
SAY @5596
IF ~~ THEN REPLY @5597 GOTO ltfinal_sure
IF ~Global("E3ENGAGED","GLOBAL",1)~ THEN REPLY @5598 GOTO ltfinal_dedicate_1
IF ~Global("E3ENGAGED","GLOBAL",0)~ THEN REPLY @5598 GOTO ltfinal_dedicate_2
IF ~~ THEN REPLY @5599 GOTO ltfinal_nothing
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @5594 GOTO ltfinal_baby
END

IF ~~ THEN BEGIN ltfinal_see
SAY @5600
=
@5590
IF ~~ THEN REPLY @5591 GOTO ltfinal_realise
IF ~Global("E3ENGAGED","GLOBAL",1)~ THEN REPLY @5592 GOTO ltfinal_dedicate_1
IF ~Global("E3ENGAGED","GLOBAL",0)~ THEN REPLY @5592 GOTO ltfinal_dedicate_2
IF ~~ THEN REPLY @5593 GOTO ltfinal_together
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @5594 GOTO ltfinal_baby
IF ~~ THEN REPLY @5595 GOTO ltfinal_slayer
END

IF ~~ THEN BEGIN ltfinal_endanger
SAY @5601
=
@5602
IF ~~ THEN REPLY @5603 GOTO ltfinal_family
IF ~~ THEN REPLY @5604 GOTO ltfinal_watching
IF ~~ THEN REPLY @5605 GOTO ltfinal_sure
END

IF ~~ THEN BEGIN ltfinal_afterall
SAY @5606
=
@5602
IF ~~ THEN REPLY @5607 GOTO ltfinal_dangerous
IF ~~ THEN REPLY @5605 GOTO ltfinal_sure
END

IF ~~ THEN BEGIN ltfinal_realise
SAY @5608
=
@5609
IF ~~ THEN REPLY @5610 GOTO ltfinal_survive
IF ~~ THEN REPLY @5611 GOTO ltfinal_fine
IF ~~ THEN REPLY @5612 GOTO ltfinal_goodbye
END

IF ~~ THEN BEGIN ltfinal_dedicate_1
SAY @5613
=
@5614
IF ~~ THEN REPLY @5615 GOTO ltfinal_heaven
IF ~~ THEN REPLY @5616 GOTO ltfinal_castle
IF ~~ THEN REPLY @5617 GOTO ltfinal_succubus
END

IF ~~ THEN BEGIN ltfinal_dedicate_2
SAY @5618
IF ~~ THEN REPLY @5619 GOTO ltfinal_marry
IF ~~ THEN REPLY @5620 GOTO ltfinal_dont
IF ~~ THEN REPLY @5621 GOTO ltfinal_nature
END

IF ~~ THEN BEGIN ltfinal_together
SAY @5622
IF ~~ THEN REPLY @5619 GOTO ltfinal_marry
IF ~~ THEN REPLY @5620 GOTO ltfinal_dont
IF ~~ THEN REPLY @5621 GOTO ltfinal_nature
END

IF ~~ THEN BEGIN ltfinal_baby
SAY @5623
=
@5624
IF ~~ THEN REPLY @5610 GOTO ltfinal_survive
IF ~~ THEN REPLY @5625 GOTO ltfinal_allow
IF ~~ THEN REPLY @5612 GOTO ltfinal_goodbye
END

IF ~~ THEN BEGIN ltfinal_slayer
SAY @5626
=
@5627
=
@5628
IF ~~ THEN REPLY @5610 GOTO ltfinal_survive
IF ~~ THEN REPLY @5611 GOTO ltfinal_fine
IF ~~ THEN REPLY @5612 GOTO ltfinal_goodbye
END

IF ~~ THEN BEGIN ltfinal_sure
SAY @5629
=
@5590
IF ~~ THEN REPLY @5591 GOTO ltfinal_realise
IF ~Global("E3ENGAGED","GLOBAL",1)~ THEN REPLY @5592 GOTO ltfinal_dedicate_1
IF ~Global("E3ENGAGED","GLOBAL",0)~ THEN REPLY @5592 GOTO ltfinal_dedicate_2
IF ~~ THEN REPLY @5593 GOTO ltfinal_together
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @5594 GOTO ltfinal_baby
IF ~~ THEN REPLY @5595 GOTO ltfinal_slayer
END

IF ~~ THEN BEGIN ltfinal_nothing
SAY @5630
=
@5631
IF ~~ THEN REPLY @5610 GOTO ltfinal_survive
IF ~~ THEN REPLY @5611 GOTO ltfinal_fine
IF ~~ THEN REPLY @5612 GOTO ltfinal_goodbye
END

IF ~~ THEN BEGIN ltfinal_family
SAY @5632
=
@5633
IF ~~ THEN REPLY @5610 GOTO ltfinal_survive
IF ~~ THEN REPLY @5625 GOTO ltfinal_allow
IF ~~ THEN REPLY @5612 GOTO ltfinal_goodbye
END

IF ~~ THEN BEGIN ltfinal_watching
SAY @5634
IF ~~ THEN REPLY @5635 GOTO ltfinal_teasing
IF ~~ THEN REPLY @5636 GOTO ltfinal_over
IF ~~ THEN REPLY @5637 GOTO ltfinal_sense
END

IF ~~ THEN BEGIN ltfinal_dangerous
SAY @5638
=
@5639
IF ~~ THEN REPLY @5591 GOTO ltfinal_realise
IF ~Global("E3ENGAGED","GLOBAL",1)~ THEN REPLY @5592 GOTO ltfinal_dedicate_1
IF ~Global("E3ENGAGED","GLOBAL",0)~ THEN REPLY @5592 GOTO ltfinal_dedicate_2
IF ~~ THEN REPLY @5593 GOTO ltfinal_together
IF ~~ THEN REPLY @5595 GOTO ltfinal_slayer
END

IF ~~ THEN BEGIN ltfinal_survive
SAY @5640
=
@5641 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltfinal_fine
SAY @5642
=
@5643
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltfinal_goodbye
SAY @5644
=
@5645
=
@5643
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltfinal_heaven
SAY @5646
=
@5647
IF ~~ THEN REPLY @5648 GOTO ltfinal_together
IF ~~ THEN REPLY @5610 GOTO ltfinal_survive
IF ~~ THEN REPLY @5649 GOTO ltfinal_nothing
END

IF ~~ THEN BEGIN ltfinal_castle
SAY @5650
=
@5651
IF ~~ THEN REPLY @5652 GOTO ltfinal_thrive
IF ~~ THEN REPLY @5653 GOTO ltfinal_heaven
IF ~~ THEN REPLY @5654 GOTO ltfinal_command
END

IF ~~ THEN BEGIN ltfinal_succubus
SAY @5655
=
@5656
IF ~~ THEN REPLY @5610 GOTO ltfinal_survive
IF ~~ THEN REPLY @5611 GOTO ltfinal_fine
IF ~~ THEN REPLY @5612 GOTO ltfinal_goodbye
END

IF ~~ THEN BEGIN ltfinal_marry
SAY @5657
=
@5658
IF ~~ THEN REPLY @5659 DO ~SetGlobal("E3ENGAGED","GLOBAL",1)~ GOTO ltfinal_name
IF ~~ THEN REPLY @5660 DO ~SetGlobal("E3ENGAGED","GLOBAL",1)~ GOTO ltfinal_happiest
IF ~~ THEN REPLY @5661 DO ~SetGlobal("E3ENGAGED","GLOBAL",1)~ GOTO ltfinal_live
END

IF ~~ THEN BEGIN ltfinal_dont
SAY @5662
=
@5663
IF ~~ THEN REPLY @5648 GOTO ltfinal_together
IF ~~ THEN REPLY @5610 GOTO ltfinal_survive
IF ~~ THEN REPLY @5649 GOTO ltfinal_nothing
END

IF ~~ THEN BEGIN ltfinal_nature
SAY @5664
IF ~~ THEN REPLY @5665 GOTO ltfinal_deserve
IF ~~ THEN REPLY @5666 GOTO ltfinal_nothing
END

IF ~~ THEN BEGIN ltfinal_allow
SAY @5667
=
@5668
=
@5643
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltfinal_teasing
SAY @5669
=
@5670
IF ~~ THEN REPLY @5671 GOTO ltfinal_together
IF ~~ THEN REPLY @5672 GOTO ltfinal_survive
IF ~~ THEN REPLY @5673 GOTO ltfinal_nothing
END

IF ~~ THEN BEGIN ltfinal_over
SAY @5674
=
@5675
IF ~~ THEN REPLY @5671 GOTO ltfinal_together
IF ~~ THEN REPLY @5672 GOTO ltfinal_survive
IF ~~ THEN REPLY @5673 GOTO ltfinal_nothing
END

IF ~~ THEN BEGIN ltfinal_sense
SAY @5676
=
@5677
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ltfinal_thrive
SAY @5678
=
@5656
IF ~~ THEN REPLY @5610 GOTO ltfinal_survive
IF ~~ THEN REPLY @5611 GOTO ltfinal_fine
IF ~~ THEN REPLY @5612 GOTO ltfinal_goodbye
END

IF ~~ THEN BEGIN ltfinal_command
SAY @5679
=
@5680
IF ~~ THEN REPLY @5648 GOTO ltfinal_together
IF ~~ THEN REPLY @5610 GOTO ltfinal_survive
IF ~~ THEN REPLY @5649 GOTO ltfinal_nothing
END

IF ~~ THEN BEGIN ltfinal_name
SAY @5681
=
@5682
IF ~~ THEN REPLY @5610 GOTO ltfinal_survive
IF ~~ THEN REPLY @5611 GOTO ltfinal_fine
IF ~~ THEN REPLY @5612 GOTO ltfinal_goodbye
END

IF ~~ THEN BEGIN ltfinal_happiest
SAY @5683
=
@5684
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ltfinal_live
SAY @5685
=
@5682
IF ~~ THEN REPLY @5610 GOTO ltfinal_survive
IF ~~ THEN REPLY @5611 GOTO ltfinal_fine
IF ~~ THEN REPLY @5612 GOTO ltfinal_goodbye
END

IF ~~ THEN BEGIN ltfinal_deserve
SAY @5686
=
@5684
IF ~~ THEN EXIT
END

//LT2
IF ~Global("E3EXPLOVETALK","GLOBAL",2)~ THEN BEGIN lt2_start
SAY @5687
IF ~~ THEN REPLY @5688 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",3)~ GOTO lt2_suppose
IF ~~ THEN REPLY @5689 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",3)~ GOTO lt2_happy
IF ~~ THEN REPLY @5690 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",3)~ GOTO lt2_be
IF ~~ THEN REPLY @5691 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",3)~ GOTO lt2_boring
END

IF ~~ THEN BEGIN lt2_suppose
SAY @5692
IF ~~ THEN REPLY @5693 GOTO lt2_wrong
IF ~~ THEN REPLY @5694 GOTO lt2_great
IF ~~ THEN REPLY @5695 GOTO lt2_destined
IF ~~ THEN REPLY @5696 GOTO lt2_life
END

IF ~~ THEN BEGIN lt2_happy
SAY @5697
IF ~~ THEN REPLY @5698 GOTO lt2_life
IF ~~ THEN REPLY @5699 GOTO lt2_obstacle
IF ~~ THEN REPLY @5700 GOTO lt2_sweetheart
END

IF ~~ THEN BEGIN lt2_be
SAY @5701
IF ~~ THEN REPLY @5702 GOTO lt2_wrong
IF ~~ THEN REPLY @5694 GOTO lt2_great
IF ~~ THEN REPLY @5695 GOTO lt2_destined
IF ~~ THEN REPLY @5696 GOTO lt2_life
END

IF ~~ THEN BEGIN lt2_boring
SAY @5703 
IF ~~ THEN REPLY @5704 GOTO lt2_reasonable
IF ~~ THEN REPLY @5705 GOTO lt2_less
IF ~~ THEN REPLY @5706 GOTO lt2_annoyed
END

IF ~~ THEN BEGIN lt2_wrong
SAY @5707
IF ~~ THEN REPLY @5698 GOTO lt2_life
IF ~~ THEN REPLY @5699 GOTO lt2_obstacle
IF ~~ THEN REPLY @5700 GOTO lt2_sweetheart
END

IF ~~ THEN BEGIN lt2_great
SAY @5708
IF ~~ THEN REPLY @5709 GOTO lt2_forced
IF ~~ THEN REPLY @5699 GOTO lt2_obstacle
IF ~~ THEN REPLY @5705 GOTO lt2_less
END

IF ~~ THEN BEGIN lt2_destined
SAY @5710
IF ~~ THEN REPLY @5711 GOTO lt2_choice
IF ~~ THEN REPLY @5712 GOTO lt2_obstacle
IF ~~ THEN REPLY @5713 GOTO lt2_sweetheart
END

IF ~~ THEN BEGIN lt2_life
SAY @5714
IF ~~ THEN REPLY @5711 GOTO lt2_choice
IF ~~ THEN REPLY @5699 GOTO lt2_obstacle
IF ~~ THEN REPLY @5700 GOTO lt2_sweetheart
END

IF ~~ THEN BEGIN lt2_forced
SAY @5715
=
@5716
=
@5717
IF ~~ THEN REPLY @5718 GOTO lt2_love
IF ~~ THEN REPLY @5719 GOTO lt2_met
IF ~~ THEN REPLY @5720 GOTO lt2_responsibilities
END

IF ~~ THEN BEGIN lt2_obstacle
SAY @5721
=
@5722
=
@5723
=
@5717
IF ~~ THEN REPLY @5718 GOTO lt2_love
IF ~~ THEN REPLY @5719 GOTO lt2_met
IF ~~ THEN REPLY @5720 GOTO lt2_responsibilities
END

IF ~~ THEN BEGIN lt2_sweetheart
SAY @5724
=
@5725
=
@5722
=
@5723
=
@5717
IF ~~ THEN REPLY @5726 GOTO lt2_met
IF ~~ THEN REPLY @5727 GOTO lt2_love
IF ~~ THEN REPLY @5720 GOTO lt2_responsibilities
END

IF ~~ THEN BEGIN lt2_reasonable
SAY @5728
=
@5722
=
@5729
= 
@5730
IF ~~ THEN REPLY @5731 GOTO lt2_love
IF ~~ THEN REPLY @5732 GOTO lt2_met
IF ~~ THEN REPLY @5720 GOTO lt2_responsibilities
END

IF ~~ THEN BEGIN lt2_less
SAY @5733
IF ~~ THEN REPLY @5734 GOTO lt2_wrong
IF ~~ THEN REPLY @5735 GOTO lt2_obstacle
IF ~~ THEN REPLY @5736 GOTO lt2_complaining
END

IF ~~ THEN BEGIN lt2_annoyed
SAY @5737
=
@5738
IF ~~ THEN REPLY @5739 GOTO lt2_wrong
IF ~~ THEN REPLY @5740 GOTO lt2_great
IF ~~ THEN REPLY @5741 GOTO lt2_destined
IF ~~ THEN REPLY @5696 GOTO lt2_life
END

IF ~~ THEN BEGIN lt2_choice
SAY @5742
=
@5743
=
@5744
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt2_love
SAY @5745
=
@5743
=
@5744
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt2_met
SAY @5746
=
@5747
=
@5743
=
@5744
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt2_responsibilities
SAY @5748
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt2_complaining
SAY @5749
=
@5722
=
@5729
= 
@5730
IF ~~ THEN REPLY @5731 GOTO lt2_love
IF ~~ THEN REPLY @5732 GOTO lt2_met
IF ~~ THEN REPLY @5750 GOTO lt2_responsibilities
END

//LT4
IF ~Global("E3EXPLOVETALK","GLOBAL",5)~ THEN BEGIN lt4_start
SAY @5751
IF ~~ THEN REPLY @5752 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",6)~ GOTO lt4_want
IF ~~ THEN REPLY @5753 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",6)~ GOTO lt4_nonsense
IF ~~ THEN REPLY @5754 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",6)~ GOTO lt4_mind
IF ~~ THEN REPLY @5755 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",6)~ GOTO lt4_package
IF ~~ THEN REPLY @5756 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",6)~ GOTO lt4_anything
END

IF ~~ THEN BEGIN lt4_want
SAY @5757
IF ~~ THEN REPLY @5758 GOTO lt4_patient
IF ~~ THEN REPLY @5759 GOTO lt4_exchange
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @5760 GOTO lt4_else
END

IF ~~ THEN BEGIN lt4_nonsense
SAY @5761
IF ~~ THEN REPLY @5762 GOTO lt4_time
IF ~~ THEN REPLY @5763 GOTO lt4_rubbish
IF ~~ THEN REPLY @5764 GOTO lt4_truth
END

IF ~~ THEN BEGIN lt4_mind
SAY @5765
=
@5766
IF ~~ THEN REPLY @5767 GOTO lt4_anywhere
IF ~~ THEN REPLY @5768 GOTO lt4_soul
IF ~~ THEN REPLY @5769 GOTO lt4_material
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @5770 GOTO lt4_else
END

IF ~~ THEN BEGIN lt4_package
SAY @5771
IF ~~ THEN REPLY @5772 GOTO lt4_sort
IF ~~ THEN REPLY @5773 GOTO lt4_areas
IF ~~ THEN REPLY @5774 GOTO lt4_djinni
END

IF ~~ THEN BEGIN lt4_anything
SAY @5775
IF ~~ THEN REPLY @5776 GOTO lt4_package
IF ~~ THEN REPLY @5777 GOTO lt4_ultimate
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @5778 GOTO lt4_honey
END

IF ~~ THEN BEGIN lt4_patient
SAY @5779
IF ~~ THEN REPLY @5780 GOTO lt4_package
IF ~~ THEN REPLY @5781 GOTO lt4_mind
IF ~~ THEN REPLY @5782 GOTO lt4_anything
END

IF ~~ THEN BEGIN lt4_exchange
SAY @5783
IF ~~ THEN REPLY @5784 GOTO lt4_think
IF ~~ THEN REPLY @5777 GOTO lt4_ultimate
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @5778 GOTO lt4_honey
END

IF ~~ THEN BEGIN lt4_else
SAY @5785
IF ~~ THEN REPLY @5786 GOTO lt4_package
IF ~~ THEN REPLY @5787 GOTO lt4_mind
IF ~~ THEN REPLY @5788 GOTO lt4_horrible
IF ~~ THEN REPLY @5789 GOTO lt4_threat
END

IF ~~ THEN BEGIN lt4_time
SAY @5790 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_rubbish
SAY @5791 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_truth
SAY @5792
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_anywhere
SAY @5793
IF ~~ THEN REPLY @5794 GOTO lt4_department
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @5795 GOTO lt4_desire
IF ~~ THEN REPLY @5796 GOTO lt4_third
END

IF ~~ THEN BEGIN lt4_soul
SAY @5797
IF ~~ THEN REPLY @5798 GOTO lt4_outside
IF ~~ THEN REPLY @5799 GOTO lt4_dragon
IF ~~ THEN REPLY @5800 GOTO lt4_tenday
END

IF ~~ THEN BEGIN lt4_material
SAY @5801
IF ~~ THEN REPLY @5802 GOTO lt4_gem
IF ~~ THEN REPLY @5803 GOTO lt4_magpie
IF ~~ THEN REPLY @5804 GOTO lt4_possession
END

IF ~~ THEN BEGIN lt4_sort
SAY @5805
IF ~~ THEN REPLY @5806 GOTO lt4_mess
IF ~~ THEN REPLY @5807 GOTO lt4_exotic
IF ~ReputationGT(Player1,9)~ THEN REPLY @5808 GOTO lt4_innocent_1
IF ~ReputationLT(Player1,10)~ THEN REPLY @5808 GOTO lt4_innocent_2
END

IF ~~ THEN BEGIN lt4_areas
SAY @5809
IF ~~ THEN REPLY @5810 GOTO lt4_nightmare
IF ~~ THEN REPLY @5811 GOTO lt4_slayer
IF ~~ THEN REPLY @5812 GOTO lt4_giveup
END

IF ~~ THEN BEGIN lt4_djinni
SAY @5813
IF ~~ THEN REPLY @5814 GOTO lt4_cheeky
IF ~~ THEN REPLY @5815 GOTO lt4_please
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @5816 GOTO lt4_easy
END

IF ~~ THEN BEGIN lt4_ultimate
SAY @5817
IF ~~ THEN REPLY @5818 GOTO lt4_mind
IF ~~ THEN REPLY @5786 GOTO lt4_package
IF ~~ THEN REPLY @5819 GOTO lt4_thing
END

IF ~~ THEN BEGIN lt4_honey
SAY @5820
IF ~~ THEN REPLY @5821 GOTO lt4_understand
IF ~~ THEN REPLY @5822 GOTO lt4_mind
IF ~~ THEN REPLY @5823 GOTO lt4_thing
IF ~~ THEN REPLY @5824 GOTO lt4_package
END

IF ~~ THEN BEGIN lt4_think
SAY @5825
IF ~~ THEN REPLY @5826 GOTO lt4_happiness
IF ~~ THEN REPLY @5827 GOTO lt4_show
END

IF ~~ THEN BEGIN lt4_horrible
SAY @5828
IF ~~ THEN REPLY @5829 GOTO lt4_rummage
IF ~~ THEN REPLY @5830 GOTO lt4_package
IF ~~ THEN REPLY @5831 GOTO lt4_mind
END

IF ~~ THEN BEGIN lt4_threat
SAY @5832
IF ~~ THEN REPLY @5833 GOTO lt4_package
IF ~~ THEN REPLY @5834 GOTO lt4_lake
IF ~~ THEN REPLY @5835 GOTO lt4_mind
END

IF ~~ THEN BEGIN lt4_department
SAY @5836
=
@5837
IF ~~ THEN REPLY @5838 GOTO lt4_temptress
IF ~~ THEN REPLY @5839 GOTO lt4_minx
IF ~~ THEN REPLY @5840 GOTO lt4_special
END

IF ~~ THEN BEGIN lt4_desire
SAY @5841
=
@5842
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_third
SAY @5843
IF ~~ THEN REPLY @5844 GOTO lt4_good
IF ~~ THEN REPLY @5845 GOTO lt4_rescind
END

IF ~~ THEN BEGIN lt4_outside
SAY @5846
IF ~~ THEN REPLY @5847 GOTO lt4_brave
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @5848 GOTO lt4_childhood_1
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN REPLY @5848 GOTO lt4_childhood_2
END

IF ~~ THEN BEGIN lt4_dragon
SAY @5849
=
@5850
IF ~~ THEN REPLY @5851 GOTO lt4_material
IF ~~ THEN REPLY @5802 GOTO lt4_gem
IF ~~ THEN REPLY @5852 GOTO lt4_kiss
END

IF ~~ THEN BEGIN lt4_tenday
SAY @5853
IF ~~ THEN REPLY @5854 GOTO lt4_heaven
IF ~~ THEN REPLY @5855 GOTO lt4_ourselves
END

IF ~~ THEN BEGIN lt4_gem
SAY @5856
=
@5857
IF ~~ THEN REPLY @5858 GOTO lt4_shiny
IF ~~ THEN REPLY @5859 GOTO lt4_pockets
IF ~~ THEN REPLY @5860 GOTO lt4_possession
END

IF ~~ THEN BEGIN lt4_magpie
SAY @5861
=
@5862
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_possession
SAY @5863
IF ~~ THEN REPLY @5864 GOTO lt4_kindness
IF ~~ THEN REPLY @5865 GOTO lt4_attitude
IF ~~ THEN REPLY @5866 GOTO lt4_guildmistress
END

IF ~~ THEN BEGIN lt4_mess
SAY @5867
IF ~~ THEN REPLY @5810 GOTO lt4_nightmare
IF ~~ THEN REPLY @5811 GOTO lt4_slayer
IF ~~ THEN REPLY @5812 GOTO lt4_giveup
END

IF ~~ THEN BEGIN lt4_exotic
SAY @5868
IF ~~ THEN REPLY @5810 GOTO lt4_nightmare
IF ~~ THEN REPLY @5811 GOTO lt4_slayer
IF ~~ THEN REPLY @5812 GOTO lt4_giveup
END

IF ~~ THEN BEGIN lt4_innocent_1
SAY @5869
=
@5870
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_innocent_2
SAY @5871
=
@5870
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_nightmare
SAY @5872
=
@5873
=
@5874
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_slayer
SAY @5875
=
@5876
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_giveup
SAY @5877
=
@5876
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_cheeky
SAY @5878
=
@5879
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_please
SAY @5880
IF ~~ THEN REPLY @5810 GOTO lt4_nightmare
IF ~~ THEN REPLY @5811 GOTO lt4_slayer
IF ~~ THEN REPLY @5812 GOTO lt4_giveup
END

IF ~~ THEN BEGIN lt4_easy
SAY @5881
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_thing
SAY @5882
=
@5883
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_understand
SAY @5884
=
@5885
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_happiness
SAY @5886
=
@5813
IF ~~ THEN REPLY @5814 GOTO lt4_cheeky
IF ~~ THEN REPLY @5815 GOTO lt4_please
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @5816 GOTO lt4_easy
END

IF ~~ THEN BEGIN lt4_show
SAY @5887
=
@5888
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_rummage
SAY @5889
=
@5890
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_lake
SAY @5891
=
@5892
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_temptress
SAY @5893
=
@5894
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_minx
SAY @5895
=
@5896
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_special
SAY @5897
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_good
SAY @5898
=
@5899
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_rescind
SAY @5900
=
@5901
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_brave
SAY @5902
IF ~!Global("E3FADENOTPREGNANT","GLOBAL",1)
Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN GOTO lt4_brave_2
IF ~OR(2)
Global("E3FADENOTPREGNANT","GLOBAL",1)
!Global("E3FADEISPREGNANT","GLOBAL",1)~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_brave_2
SAY @5903
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_childhood_1
SAY @5904
=
@5905
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_childhood_2
SAY @5906
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_kiss
SAY @5907
=
@5908
IF ~~ THEN REPLY @5909 GOTO lt4_worry
IF ~~ THEN REPLY @5910 GOTO lt4_get
END

IF ~~ THEN BEGIN lt4_heaven
SAY @5911
=
@5912
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_ourselves
SAY @5913
=
@5914
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_shiny
SAY @5915
IF ~~ THEN REPLY @5864 GOTO lt4_kindness
IF ~~ THEN REPLY @5865 GOTO lt4_attitude
IF ~~ THEN REPLY @5866 GOTO lt4_guildmistress
END

IF ~~ THEN BEGIN lt4_pockets
SAY @5916
IF ~~ THEN REPLY @5864 GOTO lt4_kindness
IF ~~ THEN REPLY @5865 GOTO lt4_attitude
IF ~~ THEN REPLY @5866 GOTO lt4_guildmistress
END

IF ~~ THEN BEGIN lt4_kindness
SAY @5917
=
@5918
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_attitude
SAY @5919
=
@5918
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_guildmistress
SAY @5920
=
@5921
=
@5922
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_worry
SAY @5923
=
@5924
=
@5922
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_get
SAY @5925
IF ~~ THEN REPLY @5926 GOTO lt4_rest
IF ~~ THEN REPLY @5927 GOTO lt4_ladylike
IF ~~ THEN REPLY @5928 GOTO lt4_thing
END

IF ~~ THEN BEGIN lt4_rest
SAY @5929
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_ladylike
SAY @5930
=
@5931
IF ~~ THEN EXIT
END


//LT8
IF ~Global("E3EXPLOVETALK","GLOBAL",8) Global("E3FADENOOKIE","GLOBAL",1)~ THEN BEGIN lt8_start
SAY @5932
=
@5933
IF ~~ THEN REPLY @5934 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",9)~ GOTO lt8_find
IF ~~ THEN REPLY @5935 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",9)~ GOTO lt8_myself
END

IF ~~ THEN BEGIN lt8_find
SAY @5936
IF ~~ THEN REPLY @5937 GOTO lt8_continue
IF ~~ THEN REPLY @5938 GOTO lt8_later
END

IF ~~ THEN BEGIN lt8_myself
SAY @5939
IF ~~ THEN REPLY @5940 GOTO lt8_thanks
IF ~~ THEN REPLY @5941 GOTO lt8_find
END

IF ~~ THEN BEGIN lt8_continue
SAY @5942
=
@5943
=
@5944
=
@5945
=
@5946
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt8_later
SAY @5947
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt8_thanks
SAY @5948
IF ~~ THEN DO ~RestParty()~ EXIT
END

//LT10
IF ~Global("E3EXPLOVETALK","GLOBAL",11) Global("E3FADENOOKIE","GLOBAL",1)~ THEN BEGIN lt12_start
SAY @5949
IF ~~ THEN REPLY @5950 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",12)~ GOTO lt12_funny
IF ~~ THEN REPLY @5951 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",12)~ GOTO lt12_accomplish
IF ~~ THEN REPLY @5952 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",12)~ GOTO lt12_cringe
END

IF ~~ THEN BEGIN lt12_funny
SAY @5953
IF ~~ THEN REPLY @5954 GOTO lt12_much
IF ~~ THEN REPLY @5955 GOTO lt12_used
IF ~~ THEN REPLY @5956 GOTO lt12_cringe
END

IF ~~ THEN BEGIN lt12_accomplish
SAY @5957
IF ~~ THEN REPLY @5958 GOTO lt12_bother
IF ~~ THEN REPLY @5959 GOTO lt12_cringe
IF ~~ THEN REPLY @5960 GOTO lt12_made
END

IF ~~ THEN BEGIN lt12_cringe
SAY @5961
IF ~~ THEN REPLY @5962 GOTO lt12_easier
IF ~~ THEN REPLY @5963 GOTO lt12_butterflies
IF ~~ THEN REPLY @5964 GOTO lt12_givenup
END

IF ~~ THEN BEGIN lt12_much
SAY @5965
IF ~~ THEN REPLY @5966 GOTO lt12_behave
IF ~~ THEN REPLY @5967 GOTO lt12_butterflies
IF ~~ THEN REPLY @5968 GOTO lt12_successfully
END

IF ~~ THEN BEGIN lt12_used
SAY @5969
IF ~~ THEN REPLY @5970 GOTO lt12_easier
IF ~~ THEN REPLY @5971 GOTO lt12_butterflies
IF ~~ THEN REPLY @5972 GOTO lt12_givenup
IF ~~ THEN REPLY @5973 GOTO lt12_clutches
END

IF ~~ THEN BEGIN lt12_bother
SAY @5974
IF ~~ THEN REPLY @5970 GOTO lt12_easier
IF ~~ THEN REPLY @5971 GOTO lt12_butterflies
IF ~~ THEN REPLY @5972 GOTO lt12_givenup
IF ~~ THEN REPLY @5973 GOTO lt12_clutches
END

IF ~~ THEN BEGIN lt12_made
SAY @5975
=
@5976
IF ~~ THEN REPLY @5970 GOTO lt12_easier
IF ~~ THEN REPLY @5971 GOTO lt12_butterflies
IF ~~ THEN REPLY @5972 GOTO lt12_givenup
IF ~~ THEN REPLY @5973 GOTO lt12_clutches
END

IF ~~ THEN BEGIN lt12_easier
SAY @5977
IF ~~ THEN REPLY @5978 GOTO lt12_what
IF ~~ THEN REPLY @5979 GOTO lt12_jugular
IF ~~ THEN REPLY @5980 GOTO lt12_cautious
END

IF ~~ THEN BEGIN lt12_butterflies
SAY @5981
IF ~~ THEN REPLY @5982 GOTO lt12_miss
IF ~~ THEN REPLY @5983 GOTO lt12_interesting
IF ~~ THEN REPLY @5984 GOTO lt12_mine
END

IF ~~ THEN BEGIN lt12_givenup
SAY @5985
IF ~~ THEN REPLY @5978 GOTO lt12_what
IF ~~ THEN REPLY @5979 GOTO lt12_jugular
IF ~~ THEN REPLY @5980 GOTO lt12_cautious
END

IF ~~ THEN BEGIN lt12_behave
SAY @5986
IF ~~ THEN REPLY @5987 GOTO lt12_that
IF ~~ THEN REPLY @5988 GOTO lt12_great
END

IF ~~ THEN BEGIN lt12_successfully
SAY @5989
IF ~~ THEN REPLY @5978 GOTO lt12_what
IF ~~ THEN REPLY @5979 GOTO lt12_jugular
IF ~~ THEN REPLY @5980 GOTO lt12_cautious
END

IF ~~ THEN BEGIN lt12_clutches
SAY @5990
IF ~~ THEN GOTO lt12_much
END

IF ~~ THEN BEGIN lt12_what
SAY @5991
IF ~~ THEN REPLY @5992 GOTO lt12_conquest
IF ~~ THEN REPLY @5993 GOTO lt12_behind
IF ~~ THEN REPLY @5994 GOTO lt12_jumped
IF ~~ THEN REPLY @5995 GOTO lt12_wink
END

IF ~~ THEN BEGIN lt12_jugular
SAY @5996
=
@5997
=
@5998
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_cautious
SAY @5999
=
@5997
=
@5998
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_miss
SAY @6000
IF ~~ THEN REPLY @5978 GOTO lt12_what
IF ~~ THEN REPLY @5979 GOTO lt12_jugular
IF ~~ THEN REPLY @5980 GOTO lt12_cautious
END

IF ~~ THEN BEGIN lt12_interesting
SAY @6001
=
@6002
IF ~~ THEN REPLY @5978 GOTO lt12_what
IF ~~ THEN REPLY @5979 GOTO lt12_jugular
IF ~~ THEN REPLY @5980 GOTO lt12_cautious
END

IF ~~ THEN BEGIN lt12_mine
SAY @6003
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_that
SAY @6004
IF ~~ THEN REPLY @6005 GOTO lt12_nice
IF ~~ THEN REPLY @6006 GOTO lt12_blush
IF ~~ THEN REPLY @6007 GOTO lt12_inspiration
END

IF ~~ THEN BEGIN lt12_great
SAY @6008
IF ~~ THEN REPLY @6009 GOTO lt12_special
IF ~~ THEN REPLY @6010 GOTO lt12_mean
IF ~~ THEN REPLY @6011 GOTO lt12_maam
END

IF ~~ THEN BEGIN lt12_conquest
SAY @6012
=
@6013
=
@5998
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_behind
SAY @6014
=
@6015
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_jumped
SAY @6016
IF ~~ THEN REPLY @6017 GOTO lt12_that
IF ~~ THEN REPLY @5988 GOTO lt12_great
END

IF ~~ THEN BEGIN lt12_wink
SAY @6018
IF ~~ THEN REPLY @6017 GOTO lt12_that
IF ~~ THEN REPLY @5988 GOTO lt12_great
END

IF ~~ THEN BEGIN lt12_nice
SAY @6019 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_blush
SAY @6020
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_inspiration
SAY @6021
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_special
SAY @6022
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_mean
SAY @6023
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_maam
SAY @6024
IF ~~ THEN EXIT
END

//LT12
IF ~Global("E3EXPLOVETALK","GLOBAL",14) Global("E3FADENOOKIE","GLOBAL",1)~ THEN BEGIN lt10_start
SAY @6025
IF ~~ THEN REPLY @6026 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",15)~ GOTO lt10_kiss
IF ~~ THEN REPLY @6027 DO ~SetGlobal("E3EXPLOVETALK","GLOBAL",15)~ GOTO lt10_what
END

IF ~~ THEN BEGIN lt10_kiss
SAY @6028
IF ~~ THEN REPLY @6029 GOTO lt10_dangerous
IF ~~ THEN REPLY @6030 GOTO lt10_children
IF ~~ THEN REPLY @6031 GOTO lt10_me
END

IF ~~ THEN BEGIN lt10_what
SAY @6032 
IF ~~ THEN REPLY @6033 GOTO lt10_kiss
IF ~~ THEN REPLY @6034 GOTO lt10_never
IF ~~ THEN REPLY @6035 GOTO lt10_pet
END

IF ~~ THEN BEGIN lt10_dangerous
SAY @6036
=
@6037
IF ~~ THEN REPLY @6038 GOTO lt10_want
IF ~~ THEN REPLY @6039 GOTO lt10_pregnant
IF ~~ THEN REPLY @6040 GOTO lt10_worry
IF ~~ THEN REPLY @6041 DO ~SetGlobal("E3FADENOTPREGNANT","GLOBAL",1)~ GOTO lt10_no
END

IF ~~ THEN BEGIN lt10_children
SAY @6042
=
@6037
IF ~~ THEN REPLY @6038 GOTO lt10_want
IF ~~ THEN REPLY @6039 GOTO lt10_pregnant
IF ~~ THEN REPLY @6040 GOTO lt10_worry
IF ~~ THEN REPLY @6041 DO ~SetGlobal("E3FADENOTPREGNANT","GLOBAL",1)~ GOTO lt10_no
END

IF ~~ THEN BEGIN lt10_me
SAY @6043
=
@6037
IF ~~ THEN REPLY @6038 GOTO lt10_want
IF ~~ THEN REPLY @6039 GOTO lt10_pregnant
IF ~~ THEN REPLY @6040 GOTO lt10_worry
IF ~~ THEN REPLY @6041 DO ~SetGlobal("E3FADENOTPREGNANT","GLOBAL",1)~ GOTO lt10_no
END

IF ~~ THEN BEGIN lt10_never
SAY @6044
=
@6045
=
@6037
IF ~~ THEN REPLY @6038 GOTO lt10_want
IF ~~ THEN REPLY @6039 GOTO lt10_pregnant
IF ~~ THEN REPLY @6040 GOTO lt10_worry
IF ~~ THEN REPLY @6041 DO ~SetGlobal("E3FADENOTPREGNANT","GLOBAL",1)~ GOTO lt10_no
END

IF ~~ THEN BEGIN lt10_pet
SAY @6046
=
@6045
=
@6037
IF ~~ THEN REPLY @6038 GOTO lt10_want
IF ~~ THEN REPLY @6039 GOTO lt10_pregnant
IF ~~ THEN REPLY @6040 GOTO lt10_worry
IF ~~ THEN REPLY @6041 DO ~SetGlobal("E3FADENOTPREGNANT","GLOBAL",1)~ GOTO lt10_no
END

IF ~~ THEN BEGIN lt10_want
SAY @6047
IF ~~ THEN REPLY @6048 GOTO lt10_sure
IF ~~ THEN REPLY @6049 GOTO lt10_mother
IF ~~ THEN REPLY @6050 GOTO lt10_cope
END

IF ~~ THEN BEGIN lt10_pregnant
SAY @6051
IF ~~ THEN REPLY @6052 GOTO lt10_father
IF ~~ THEN REPLY @6053 GOTO lt10_now
IF ~~ THEN REPLY @6054 GOTO lt10_worry
END

IF ~~ THEN BEGIN lt10_worry
SAY @6055
=
@6056
IF ~~ THEN REPLY @6049 GOTO lt10_mother
IF ~~ THEN REPLY @6050 GOTO lt10_cope
IF ~~ THEN REPLY @6057 GOTO lt10_together
END

IF ~~ THEN BEGIN lt10_no
SAY @6058
IF ~~ THEN REPLY @6059 GOTO lt10_want
IF ~~ THEN REPLY @6060 GOTO lt10_pregnant
IF ~~ THEN REPLY @6061 GOTO lt10_father
END

IF ~~ THEN BEGIN lt10_sure
SAY @6062
=
@6063
IF ~~ THEN REPLY @6064 GOTO lt10_leave
IF ~~ THEN REPLY @6065 GOTO lt10_love
IF ~~ THEN REPLY @6066 GOTO lt10_together
END

IF ~~ THEN BEGIN lt10_mother
SAY @6067
=
@6068
=
@6063
IF ~~ THEN REPLY @6064 GOTO lt10_leave
IF ~~ THEN REPLY @6065 GOTO lt10_love
IF ~~ THEN REPLY @6066 GOTO lt10_together
END

IF ~~ THEN BEGIN lt10_cope
SAY @6069
=
@6070
IF ~~ THEN REPLY @6071 GOTO lt10_do
IF ~~ THEN REPLY @6072 GOTO lt10_pessimistic
IF ~~ THEN REPLY @6073 GOTO lt10_do
IF ~~ THEN REPLY @6074 GOTO lt10_forever
END

IF ~~ THEN BEGIN lt10_father
SAY @6075
IF ~~ THEN REPLY @6076 GOTO lt10_want
IF ~~ THEN REPLY @6077 GOTO lt10_worry
IF ~~ THEN REPLY @6078 GOTO lt10_together
END

IF ~~ THEN BEGIN lt10_now
SAY @6079
=
@6068
=
@6063
IF ~~ THEN REPLY @6064 GOTO lt10_leave
IF ~~ THEN REPLY @6065 GOTO lt10_love
IF ~~ THEN REPLY @6066 GOTO lt10_together
END

IF ~~ THEN BEGIN lt10_together
SAY @6080
IF ~~ THEN REPLY @6081 GOTO lt10_cope
IF ~~ THEN REPLY @6082 GOTO lt10_future
END

IF ~~ THEN BEGIN lt10_leave
SAY @6083
IF ~~ THEN REPLY @6081 GOTO lt10_cope
IF ~~ THEN REPLY @6082 GOTO lt10_future
END

IF ~~ THEN BEGIN lt10_love
SAY @6084
IF ~~ THEN REPLY @6071 GOTO lt10_do
IF ~~ THEN REPLY @6074 GOTO lt10_forever
END

IF ~~ THEN BEGIN lt10_do
SAY @6085
IF ~~ THEN REPLY @6072 GOTO lt10_pessimistic
IF ~~ THEN REPLY @6082 GOTO lt10_future
IF ~~ THEN REPLY @6086 GOTO lt10_honest
END

IF ~~ THEN BEGIN lt10_pessimistic
SAY @6087
IF ~~ THEN REPLY @6082 GOTO lt10_future
IF ~~ THEN REPLY @6086 GOTO lt10_honest
END

IF ~~ THEN BEGIN lt10_forever
SAY @6088
=
@6089
IF ~~ THEN DO ~SetGlobal("E3FADEISPREGNANT","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt10_future
SAY @6090
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt10_honest
SAY @6091
=
@6089
IF ~~ THEN DO ~SetGlobal("E3FADEISPREGNANT","GLOBAL",1)~ EXIT
END

//BT2
IF ~Global("E3BABYTALK","GLOBAL",2)~ THEN BEGIN bt2_start
SAY @6092
IF ~~ THEN REPLY @6093 DO ~SetGlobal("E3BABYTALK","GLOBAL",3)~ GOTO bt2_rest
IF ~~ THEN REPLY @6094 DO ~SetGlobal("E3BABYTALK","GLOBAL",3)~ GOTO bt2_stop
IF ~NumInPartyGT(2)~ THEN REPLY @6095 DO ~SetGlobal("E3BABYTALK","GLOBAL",3)~ GOTO bt2_people
END

IF ~~ THEN BEGIN bt2_rest
SAY @6096
IF ~~ THEN REPLY @6097 GOTO bt2_ominous
IF ~~ THEN REPLY @6098 GOTO bt2_unwell
IF ~~ THEN REPLY @6099 GOTO bt2_problem
END

IF ~~ THEN BEGIN bt2_stop
SAY @6100
IF ~~ THEN REPLY @6097 GOTO bt2_ominous
IF ~~ THEN REPLY @6098 GOTO bt2_unwell
IF ~~ THEN REPLY @6099 GOTO bt2_problem
END

IF ~~ THEN BEGIN bt2_people
SAY @6101
=
@6102
IF ~~ THEN REPLY @6103 GOTO bt2_world
IF ~~ THEN REPLY @6104 GOTO bt2_cautious
IF ~~ THEN REPLY @6105 GOTO bt2_healing
END

IF ~~ THEN BEGIN bt2_ominous
SAY @6106
IF ~~ THEN REPLY @6107 GOTO bt2_scaring
IF ~~ THEN REPLY @6108 GOTO bt2_wrong
IF ~~ THEN REPLY @6109 GOTO bt2_lie
END

IF ~~ THEN BEGIN bt2_unwell
SAY @6110
=
@6111
IF ~~ THEN REPLY @6107 GOTO bt2_scaring
IF ~~ THEN REPLY @6108 GOTO bt2_wrong
IF ~~ THEN REPLY @6109 GOTO bt2_lie
END

IF ~~ THEN BEGIN bt2_problem
SAY @6112
=
@6113
IF ~~ THEN REPLY @6107 GOTO bt2_scaring
IF ~~ THEN REPLY @6108 GOTO bt2_wrong
IF ~~ THEN REPLY @6109 GOTO bt2_lie
END

IF ~~ THEN BEGIN bt2_world
SAY @6114
=
@6113
IF ~~ THEN REPLY @6107 GOTO bt2_scaring
IF ~~ THEN REPLY @6108 GOTO bt2_wrong
IF ~~ THEN REPLY @6109 GOTO bt2_lie
IF ~~ THEN REPLY @6115 GOTO bt2_female
END

IF ~~ THEN BEGIN bt2_cautious
SAY @6116
=
@6117
IF ~~ THEN REPLY @6107 GOTO bt2_scaring
IF ~~ THEN REPLY @6108 GOTO bt2_wrong
IF ~~ THEN REPLY @6109 GOTO bt2_lie
END

IF ~~ THEN BEGIN bt2_healing
SAY @6118
= 
@6119
IF ~~ THEN REPLY @6120 GOTO bt2_scaring
IF ~~ THEN REPLY @6108 GOTO bt2_wrong
IF ~~ THEN REPLY @6109 GOTO bt2_lie
END

IF ~~ THEN BEGIN bt2_scaring
SAY @6121
=
@6122
IF ~~ THEN REPLY @6123 GOTO bt2_now
IF ~~ THEN REPLY @6124 GOTO bt2_thing
IF ~~ THEN REPLY @6125 GOTO bt2_baby
IF ~~ THEN REPLY @6126 GOTO bt2_confused
IF ~~ THEN REPLY @6127 GOTO bt2_happening
END

IF ~~ THEN BEGIN bt2_wrong
SAY @6128
=
@6122
IF ~~ THEN REPLY @6123 GOTO bt2_now
IF ~~ THEN REPLY @6124 GOTO bt2_thing
IF ~~ THEN REPLY @6125 GOTO bt2_baby
IF ~~ THEN REPLY @6126 GOTO bt2_confused
IF ~~ THEN REPLY @6127 GOTO bt2_happening
END

IF ~~ THEN BEGIN bt2_lie
SAY @6129
=
@6130
IF ~~ THEN REPLY @6131 GOTO bt2_now
IF ~~ THEN REPLY @6124 GOTO bt2_thing
IF ~~ THEN REPLY @6125 GOTO bt2_baby
IF ~~ THEN REPLY @6126 GOTO bt2_confused
IF ~~ THEN REPLY @6127 GOTO bt2_happening
END

IF ~~ THEN BEGIN bt2_female
SAY @6132
=
@6133
=
@6122
IF ~~ THEN REPLY @6123 GOTO bt2_now
IF ~~ THEN REPLY @6124 GOTO bt2_thing
IF ~~ THEN REPLY @6125 GOTO bt2_baby
IF ~~ THEN REPLY @6126 GOTO bt2_confused
IF ~~ THEN REPLY @6127 GOTO bt2_happening
END

IF ~~ THEN BEGIN bt2_now
SAY @6134
=
@6135
IF ~~ THEN REPLY @6136 GOTO bt2_rid
IF ~~ THEN REPLY @6137 GOTO bt2_problem2
IF ~~ THEN REPLY @6138 GOTO bt2_brats
IF ~~ THEN REPLY @6139 GOTO bt2_pleased
END

IF ~~ THEN BEGIN bt2_thing
SAY @6140
=
@6141
IF ~~ THEN REPLY @6136 GOTO bt2_rid
IF ~~ THEN REPLY @6137 GOTO bt2_problem2
IF ~~ THEN REPLY @6138 GOTO bt2_brats
IF ~~ THEN REPLY @6139 GOTO bt2_pleased
END

IF ~~ THEN BEGIN bt2_baby
SAY @6142
IF ~~ THEN REPLY @6143 GOTO bt2_cry
IF ~~ THEN REPLY @6144 GOTO bt2_ecstatic
IF ~~ THEN REPLY @6145 GOTO bt2_emotional
IF ~~ THEN REPLY @6146 GOTO bt2_say
END

IF ~~ THEN BEGIN bt2_confused
SAY @6147
=
@6148
=
@6149
IF ~~ THEN REPLY @6136 GOTO bt2_rid
IF ~~ THEN REPLY @6137 GOTO bt2_problem2
IF ~~ THEN REPLY @6138 GOTO bt2_brats
IF ~~ THEN REPLY @6139 GOTO bt2_pleased
END

IF ~~ THEN BEGIN bt2_happening
SAY @6150
IF ~~ THEN REPLY @6151 GOTO bt2_brats
IF ~~ THEN REPLY @6152 GOTO bt2_responsibility
IF ~~ THEN REPLY @6153 GOTO bt2_make
END

IF ~~ THEN BEGIN bt2_rid
SAY @6154
=
@6155
IF ~~ THEN REPLY @6156 GOTO bt2_idea
IF ~~ THEN REPLY @6157 GOTO bt2_family
IF ~~ THEN REPLY @6158 GOTO bt2_problem2
END

IF ~~ THEN BEGIN bt2_problem2
SAY @6159
=
@6160
=
@6161
IF ~~ THEN REPLY @6162 GOTO bt2_family
IF ~~ THEN REPLY @6163 GOTO bt2_idea
IF ~~ THEN REPLY @6153 GOTO bt2_make
END

IF ~~ THEN BEGIN bt2_brats
SAY @6164
IF ~~ THEN REPLY @6165 GOTO bt2_you
IF ~~ THEN REPLY @6166 GOTO bt2_strong
IF ~~ THEN REPLY @6167 GOTO bt2_normal
END

IF ~~ THEN BEGIN bt2_pleased
SAY @6168
=
@6155
IF ~~ THEN REPLY @6156 GOTO bt2_idea
IF ~~ THEN REPLY @6157 GOTO bt2_family
IF ~~ THEN REPLY @6158 GOTO bt2_problem2
END

IF ~~ THEN BEGIN bt2_cry
SAY @6169
=
@6155
IF ~~ THEN REPLY @6156 GOTO bt2_idea
IF ~~ THEN REPLY @6157 GOTO bt2_family
IF ~~ THEN REPLY @6158 GOTO bt2_problem2
END

IF ~~ THEN BEGIN bt2_ecstatic
SAY @6170
=
@6171
=
@6155
IF ~~ THEN REPLY @6156 GOTO bt2_idea
IF ~~ THEN REPLY @6157 GOTO bt2_family
IF ~~ THEN REPLY @6158 GOTO bt2_problem2
END

IF ~~ THEN BEGIN bt2_emotional
SAY @6172
=
@6154
=
@6155
IF ~~ THEN REPLY @6156 GOTO bt2_idea
IF ~~ THEN REPLY @6173 GOTO bt2_natural
IF ~~ THEN REPLY @6157 GOTO bt2_family
IF ~~ THEN REPLY @6158 GOTO bt2_problem2
END

IF ~~ THEN BEGIN bt2_say
SAY @6174
=
@6155
IF ~~ THEN REPLY @6156 GOTO bt2_idea
IF ~~ THEN REPLY @6157 GOTO bt2_family
IF ~~ THEN REPLY @6158 GOTO bt2_problem2
END

IF ~~ THEN BEGIN bt2_responsibility
SAY @6175
IF ~~ THEN REPLY @6176 GOTO bt2_brats
IF ~~ THEN REPLY @6177 GOTO bt2_problem2
IF ~~ THEN REPLY @6153 GOTO bt2_make
END

IF ~~ THEN BEGIN bt2_make
SAY @6178
=
@6179
=
@6180
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bt2_idea
SAY @6181
=
@6182
=
@6183
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bt2_family
SAY @6184
=
@6185
=
@6186
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bt2_you
SAY @6187
=
@6188
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
SetGlobal("E3FADEJOINED","LOCALS",0)
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN bt2_strong
SAY @6189
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
SetGlobal("E3FADEJOINED","LOCALS",0)
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN bt2_normal
SAY @6190
=
@6191
=
@6192
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
SetGlobal("E3FADEJOINED","LOCALS",0)
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN bt2_natural
SAY @6181
=
@6193
=
@6182
=
@6183
IF ~~ THEN EXIT
END

//BT8
IF ~Global("E3BABYTALK","GLOBAL",5)~ THEN BEGIN bt8_start
SAY @6194
IF ~~ THEN REPLY @6195 DO ~SetGlobal("E3BABYTALK","GLOBAL",6)~ GOTO bt8_armourer
IF ~~ THEN REPLY @6196 DO ~SetGlobal("E3BABYTALK","GLOBAL",6)~ GOTO bt8_doting
IF ~~ THEN REPLY @6197 DO ~SetGlobal("E3BABYTALK","GLOBAL",6)~ GOTO bt8_look
END

IF ~~ THEN BEGIN bt8_armourer
SAY @6198
IF ~~ THEN REPLY @6199 GOTO bt8_sooner
IF ~~ THEN REPLY @6200 GOTO bt8_twins
IF ~~ THEN REPLY @6201 GOTO bt8_bigger
IF ~~ THEN REPLY @6202 GOTO bt8_builder
END

IF ~~ THEN BEGIN bt8_doting
SAY @6203
IF ~~ THEN REPLY @6204 GOTO bt8_baby
IF ~~ THEN REPLY @6205 GOTO bt8_armourer
IF ~~ THEN REPLY @6206 GOTO bt8_child
END

IF ~~ THEN BEGIN bt8_look
SAY @6207
IF ~~ THEN REPLY @6200 GOTO bt8_twins
IF ~~ THEN REPLY @6201 GOTO bt8_bigger
IF ~~ THEN REPLY @6208 GOTO bt8_armourer
END

IF ~~ THEN BEGIN bt8_sooner
SAY @6209
IF ~~ THEN REPLY @6210 GOTO bt8_brother
IF ~~ THEN REPLY @6211 GOTO bt8_fella
IF ~~ THEN REPLY @6212 GOTO bt8_two
END

IF ~~ THEN BEGIN bt8_twins
SAY @6213
IF ~~ THEN REPLY @6214 GOTO bt8_joking
IF ~~ THEN REPLY @6211 GOTO bt8_fella
IF ~~ THEN REPLY @6215 GOTO bt8_twice
END

IF ~~ THEN BEGIN bt8_bigger
SAY @6216
IF ~~ THEN REPLY @6217 GOTO bt8_fine
IF ~~ THEN REPLY @6218 GOTO bt8_twins
IF ~~ THEN REPLY @6219 GOTO bt8_growing
END

IF ~~ THEN BEGIN bt8_builder
SAY @6220
IF ~~ THEN REPLY @6217 GOTO bt8_fine
IF ~~ THEN REPLY @6218 GOTO bt8_twins
IF ~~ THEN REPLY @6219 GOTO bt8_growing
END

IF ~~ THEN BEGIN bt8_baby
SAY @6221
=
@6222
IF ~~ THEN REPLY @6217 GOTO bt8_fine
IF ~~ THEN REPLY @6218 GOTO bt8_twins
IF ~~ THEN REPLY @6219 GOTO bt8_growing
END

IF ~~ THEN BEGIN bt8_child
SAY @6223
IF ~~ THEN REPLY @6224 GOTO bt8_armourer
IF ~~ THEN REPLY @6200 GOTO bt8_twins
IF ~~ THEN REPLY @6225 GOTO bt8_constrict
END

IF ~~ THEN BEGIN bt8_brother
SAY @6226
IF ~~ THEN REPLY @6212 GOTO bt8_two
IF ~~ THEN REPLY @6215 GOTO bt8_twice
END

IF ~~ THEN BEGIN bt8_fella
SAY @6227
=
@6228
IF ~~ THEN REPLY @6229 GOTO bt8_health
IF ~~ THEN REPLY @6230 GOTO bt8_insult
IF ~~ THEN REPLY @6231 GOTO bt8_begin
END

IF ~~ THEN BEGIN bt8_two
SAY @6232
IF ~~ THEN REPLY @6233 GOTO bt8_shock
IF ~~ THEN REPLY @6234 GOTO bt8_tease
IF ~~ THEN REPLY @6235 GOTO bt8_fella
END

IF ~~ THEN BEGIN bt8_joking
SAY @6236
IF ~~ THEN REPLY @6233 GOTO bt8_shock
IF ~~ THEN REPLY @6234 GOTO bt8_tease
IF ~~ THEN REPLY @6235 GOTO bt8_fella
END

IF ~~ THEN BEGIN bt8_twice
SAY @6237
=
@6228
IF ~~ THEN REPLY @6229 GOTO bt8_health
IF ~~ THEN REPLY @6230 GOTO bt8_insult
IF ~~ THEN REPLY @6231 GOTO bt8_begin
END

IF ~~ THEN BEGIN bt8_fine
SAY @6238
=
@6228
IF ~~ THEN REPLY @6229 GOTO bt8_health
IF ~~ THEN REPLY @6230 GOTO bt8_insult
IF ~~ THEN REPLY @6231 GOTO bt8_begin
END

IF ~~ THEN BEGIN bt8_growing
SAY @6239
IF ~~ THEN REPLY @6199 GOTO bt8_sooner
IF ~~ THEN REPLY @6200 GOTO bt8_twins
END

IF ~~ THEN BEGIN bt8_constrict
SAY @6240
IF ~~ THEN REPLY @6241 GOTO bt8_state
IF ~~ THEN REPLY @6242 GOTO bt8_legacy
IF ~~ THEN REPLY @6243 GOTO bt8_twins
END

IF ~~ THEN BEGIN bt8_health
SAY @6244
=
@6245
IF ~~ THEN DO ~SetGlobal("E3SEEMIDWIFE","GLOBAL",1)
SetGlobal("E3ENLARGEARMOUR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bt8_insult
SAY @6246
=
@6247
IF ~~ THEN DO ~SetGlobal("E3SEEMIDWIFE","GLOBAL",1)
SetGlobal("E3ENLARGEARMOUR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bt8_begin
SAY @6248
IF ~~ THEN DO ~SetGlobal("E3SEEMIDWIFE","GLOBAL",1)
SetGlobal("E3ENLARGEARMOUR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bt8_shock
SAY @6249
=
@6228
IF ~~ THEN REPLY @6229 GOTO bt8_health
IF ~~ THEN REPLY @6230 GOTO bt8_insult
IF ~~ THEN REPLY @6231 GOTO bt8_begin
END

IF ~~ THEN BEGIN bt8_tease
SAY @6250
=
@6228
IF ~~ THEN REPLY @6229 GOTO bt8_health
IF ~~ THEN REPLY @6230 GOTO bt8_insult
IF ~~ THEN REPLY @6231 GOTO bt8_begin
END

IF ~~ THEN BEGIN bt8_state
SAY @6251
IF ~~ THEN REPLY @6252 GOTO bt8_beauty
IF ~~ THEN REPLY @6253 GOTO bt8_kinky
IF ~~ THEN REPLY @6254 GOTO bt8_fate
END

IF ~~ THEN BEGIN bt8_legacy
SAY @6255
=
@6256
IF ~~ THEN REPLY @6217 GOTO bt8_fine
IF ~~ THEN REPLY @6218 GOTO bt8_twins
IF ~~ THEN REPLY @6219 GOTO bt8_growing
END

IF ~~ THEN BEGIN bt8_beauty
SAY @6257
IF ~~ THEN REPLY @6199 GOTO bt8_sooner
IF ~~ THEN REPLY @6200 GOTO bt8_twins
IF ~~ THEN REPLY @6201 GOTO bt8_bigger
END

IF ~~ THEN BEGIN bt8_kinky
SAY @6258
IF ~~ THEN REPLY @6199 GOTO bt8_sooner
IF ~~ THEN REPLY @6200 GOTO bt8_twins
IF ~~ THEN REPLY @6201 GOTO bt8_bigger
END

IF ~~ THEN BEGIN bt8_fate
SAY @6259
=
@6260
IF ~~ THEN REPLY @6217 GOTO bt8_fine
IF ~~ THEN REPLY @6218 GOTO bt8_twins
IF ~~ THEN REPLY @6219 GOTO bt8_growing
END

//BT10
IF ~Global("E3BABYTALK","GLOBAL",8)~ THEN BEGIN bt10_start0
SAY @6261
=
@6262
IF ~~ THEN REPLY @6263 DO ~SetGlobal("E3BABYTALK","GLOBAL",9)~ GOTO bt10_allright
IF ~~ THEN REPLY @6264 DO ~SetGlobal("E3BABYTALK","GLOBAL",9)~ GOTO bt10_rest
IF ~~ THEN REPLY @6265 DO ~SetGlobal("E3BABYTALK","GLOBAL",9)~ GOTO bt10_uh
END

IF ~~ THEN BEGIN bt10_allright
SAY @6266
IF ~~ THEN REPLY @6267 GOTO bt10_moved
IF ~~ THEN REPLY @6268 GOTO bt10_felt1
IF ~~ THEN REPLY @6269 GOTO bt10_wind
END

IF ~~ THEN BEGIN bt10_felt1
SAY @6270
IF ~!InParty("Imoen2")~ THEN REPLY @6271 GOTO bt10_felt
IF ~InParty("Imoen2")~ THEN REPLY @6271 EXTERN BIMOEN25 bt10_felt
END

IF ~~ THEN BEGIN bt10_rest
SAY @6272
IF ~~ THEN REPLY @6273 GOTO bt10_feel
IF ~~ THEN REPLY @6274 GOTO bt10_boy
IF ~~ THEN REPLY @6267 GOTO bt10_moved
END

IF ~~ THEN BEGIN bt10_uh
SAY @6275
IF ~~ THEN REPLY @6276 GOTO bt10_wrong
IF ~~ THEN REPLY @6264 GOTO bt10_rest
IF ~~ THEN REPLY @6277 GOTO bt10_shocked
END

IF ~~ THEN BEGIN bt10_moved
SAY @6278
IF ~~ THEN REPLY @6279 GOTO bt10_happy
IF ~~ THEN REPLY @6280 GOTO bt10_felt1
IF ~~ THEN REPLY @6281 GOTO bt10_else
END

IF ~~ THEN BEGIN bt10_felt
SAY @6282
=
@6283
IF ~~ THEN REPLY @6284 GOTO bt10_parents
IF ~~ THEN REPLY @6285 GOTO bt10_delighted
IF ~~ THEN REPLY @6286 GOTO bt10_happy
END

IF ~~ THEN BEGIN bt10_wind
SAY @6287
IF ~~ THEN REPLY @6288 GOTO bt10_felt1
IF ~~ THEN REPLY @6289 GOTO bt10_feel
IF ~~ THEN REPLY @6290 GOTO bt10_boy
END

IF ~~ THEN BEGIN bt10_feel
SAY @6291
IF ~~ THEN REPLY @6279 GOTO bt10_happy
IF ~~ THEN REPLY @6280 GOTO bt10_felt1
IF ~~ THEN REPLY @6290 GOTO bt10_boy
END

IF ~~ THEN BEGIN bt10_boy
SAY @6292
IF ~~ THEN REPLY @6293 GOTO bt10_or
IF ~~ THEN REPLY @6294 GOTO bt10_nickname
IF ~~ THEN REPLY @6295 GOTO bt10_felt1
END

IF ~~ THEN BEGIN bt10_wrong
SAY @6296
IF ~~ THEN REPLY @6267 GOTO bt10_moved
IF ~~ THEN REPLY @6268 GOTO bt10_felt1
IF ~~ THEN REPLY @6269 GOTO bt10_wind
END

IF ~~ THEN BEGIN bt10_shocked
SAY @6297
IF ~~ THEN REPLY @6268 GOTO bt10_felt1
IF ~~ THEN REPLY @6289 GOTO bt10_feel
IF ~~ THEN REPLY @6267 GOTO bt10_moved
END

IF ~~ THEN BEGIN bt10_happy
SAY @6298
IF ~~ THEN REPLY @6299 GOTO bt10_accept
IF ~~ THEN REPLY @6300 GOTO bt10_wanting
IF ~~ THEN REPLY @6301 GOTO bt10_alive
END

IF ~~ THEN BEGIN bt10_else
SAY @6302
IF ~~ THEN REPLY @6288 GOTO bt10_felt1
IF ~~ THEN REPLY @6289 GOTO bt10_feel
IF ~~ THEN REPLY @6290 GOTO bt10_boy
END

IF ~~ THEN BEGIN bt10_parents
SAY @6303
=
@6304
IF ~~ THEN REPLY @6305 GOTO bt10_worried
IF ~~ THEN REPLY @6306 GOTO bt10_cope
IF ~~ THEN REPLY @6307 GOTO bt10_stop
END

IF ~~ THEN BEGIN bt10_delighted
SAY @6308
IF ~Race(Player1,ELF)~ THEN GOTO bt10_delighted_elf
IF ~!Race(Player1,ELF)~ THEN GOTO bt10_delighted_nonelf
END

IF ~~ THEN BEGIN bt10_delighted_elf
SAY @6309
IF ~~ THEN REPLY @6310 GOTO bt10_start
IF ~~ THEN REPLY @6311 GOTO bt10_joyous
IF ~~ THEN REPLY @6312 GOTO bt10_worried
END

IF ~~ THEN BEGIN bt10_delighted_nonelf
SAY @6313
IF ~~ THEN REPLY @6310 GOTO bt10_start
IF ~~ THEN REPLY @6311 GOTO bt10_joyous
IF ~~ THEN REPLY @6312 GOTO bt10_worried
END

IF ~~ THEN BEGIN bt10_or
SAY @6314
=
@6282
=
@6283
IF ~~ THEN REPLY @6284 GOTO bt10_parents
IF ~~ THEN REPLY @6285 GOTO bt10_delighted
IF ~~ THEN REPLY @6286 GOTO bt10_happy
END

IF ~~ THEN BEGIN bt10_nickname
SAY @6315
IF ~~ THEN REPLY @6316 GOTO bt10_bump
IF ~~ THEN REPLY @6317 GOTO bt10_terrible
IF ~~ THEN REPLY @6318 GOTO bt10_positive
END

IF ~~ THEN BEGIN bt10_accept
SAY @6319
IF ~Race(Player1,ELF)~ THEN GOTO bt10_delighted_elf
IF ~!Race(Player1,ELF)~ THEN GOTO bt10_delighted_nonelf
END

IF ~~ THEN BEGIN bt10_wanting
SAY @6320
=
@6283
IF ~~ THEN REPLY @6284 GOTO bt10_parents
IF ~~ THEN REPLY @6321 GOTO bt10_delighted
END

IF ~~ THEN BEGIN bt10_alive
SAY @6322
=
@6283
IF ~~ THEN REPLY @6284 GOTO bt10_parents
IF ~~ THEN REPLY @6321 GOTO bt10_delighted
IF ~~ THEN REPLY @6299 GOTO bt10_accept
END

IF ~~ THEN BEGIN bt10_worried
SAY @6323
=
@6324
IF ~~ THEN REPLY @6325 GOTO bt10_never
IF ~~ THEN REPLY @6326 GOTO bt10_fears
END

IF ~~ THEN BEGIN bt10_cope
SAY @6327
IF ~Race(Player1,ELF)~ THEN GOTO bt10_delighted_elf
IF ~!Race(Player1,ELF)~ THEN GOTO bt10_delighted_nonelf
END

IF ~~ THEN BEGIN bt10_stop
SAY @6328
=
@6329
IF ~Race(Player1,ELF)~ THEN GOTO bt10_delighted_elf
IF ~!Race(Player1,ELF)~ THEN GOTO bt10_delighted_nonelf
END

IF ~~ THEN BEGIN bt10_start
SAY @6330
=
@6331
IF ~~ THEN REPLY @6332 GOTO bt10_new
IF ~~ THEN REPLY @6333 GOTO bt10_you
END

IF ~~ THEN BEGIN bt10_joyous
SAY @6334
=
@6324
IF ~~ THEN REPLY @6325 GOTO bt10_never
IF ~~ THEN REPLY @6326 GOTO bt10_fears
END

IF ~~ THEN BEGIN bt10_bump
SAY @6335
=
@6282
=
@6283
IF ~~ THEN REPLY @6284 GOTO bt10_parents
IF ~~ THEN REPLY @6285 GOTO bt10_delighted
IF ~~ THEN REPLY @6286 GOTO bt10_happy
END

IF ~~ THEN BEGIN bt10_terrible
SAY @6336
=
@6282
=
@6283
IF ~~ THEN REPLY @6284 GOTO bt10_parents
IF ~~ THEN REPLY @6285 GOTO bt10_delighted
IF ~~ THEN REPLY @6286 GOTO bt10_happy
END

IF ~~ THEN BEGIN bt10_positive
SAY @6337
IF ~Race(Player1,ELF)~ THEN GOTO bt10_delighted_elf
IF ~!Race(Player1,ELF)~ THEN GOTO bt10_delighted_nonelf
END

IF ~~ THEN BEGIN bt10_never
SAY @6338
=
@6339
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bt10_fears
SAY @6340
=
@6339
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bt10_new
SAY @6341
IF ~InParty("Imoen2")~ THEN GOTO bt10_new_imoen
IF ~!InParty("Imoen2")~ THEN GOTO bt10_new_noimoen
END

IF ~~ THEN BEGIN bt10_new_imoen
SAY @6342
IF ~~ THEN GOTO bt10_new_noimoen
END

IF ~~ THEN BEGIN bt10_new_noimoen
SAY @6338
=
@6339
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bt10_you
SAY @6343
=
@6344
=
@6339
IF ~~ THEN EXIT
END

//BT12
IF ~Global("E3BABYTALK","GLOBAL",11)~ THEN BEGIN bt12_start
SAY @6345
IF ~~ THEN REPLY @6346 DO ~SetGlobal("E3BABYTALK","GLOBAL",12)~ GOTO bt12_brought
IF ~~ THEN REPLY @6347 DO ~SetGlobal("E3BABYTALK","GLOBAL",12)~ GOTO bt12_fine
IF ~~ THEN REPLY @6348 DO ~SetGlobal("E3BABYTALK","GLOBAL",12)~ GOTO bt12_chirpy
IF ~~ THEN REPLY @6349 DO ~SetGlobal("E3BABYTALK","GLOBAL",12)~ GOTO bt12_dreadful
END

IF ~~ THEN BEGIN bt12_brought
SAY @6350
IF ~~ THEN REPLY @6351 GOTO bt12_chirpy
IF ~~ THEN REPLY @6352 GOTO bt12_want
IF ~~ THEN REPLY @6353 GOTO bt12_else
END

IF ~~ THEN BEGIN bt12_fine
SAY @6354
IF ~~ THEN REPLY @6355 GOTO bt12_what
IF ~~ THEN REPLY @6356 GOTO bt12_surprise
IF ~~ THEN REPLY @6357 GOTO bt12_ask
END

IF ~~ THEN BEGIN bt12_chirpy
SAY @6358
IF ~~ THEN REPLY @6355 GOTO bt12_what
IF ~~ THEN REPLY @6356 GOTO bt12_surprise
IF ~~ THEN REPLY @6357 GOTO bt12_ask
END

IF ~~ THEN BEGIN bt12_dreadful
SAY @6359
IF ~~ THEN REPLY @6360 GOTO bt12_you
IF ~~ THEN REPLY @6361 GOTO bt12_mood
IF ~~ THEN REPLY @6362 GOTO bt12_cheering
END

IF ~~ THEN BEGIN bt12_want
SAY @6363
IF ~~ THEN REPLY @6355 GOTO bt12_what
IF ~~ THEN REPLY @6356 GOTO bt12_surprise
IF ~~ THEN REPLY @6357 GOTO bt12_ask
END

IF ~~ THEN BEGIN bt12_else
SAY @6364
IF ~~ THEN REPLY @6365 GOTO bt12_go
IF ~~ THEN REPLY @6366 GOTO bt12_what
IF ~~ THEN REPLY @6367 GOTO bt12_take
END

IF ~~ THEN BEGIN bt12_what
SAY @6368
=
@6369
IF ~~ THEN REPLY @6370 GOTO bt12_together
IF ~~ THEN REPLY @6371 GOTO bt12_questions
IF ~~ THEN REPLY @6372 GOTO bt12_forced
IF ~~ THEN REPLY @6373 GOTO bt12_courage
END

IF ~~ THEN BEGIN bt12_surprise
SAY @6374
IF ~~ THEN GOTO bt12_what
END

IF ~~ THEN BEGIN bt12_ask
SAY @6375
=
@6369
IF ~~ THEN REPLY @6370 GOTO bt12_together
IF ~~ THEN REPLY @6371 GOTO bt12_questions
IF ~~ THEN REPLY @6372 GOTO bt12_forced
IF ~~ THEN REPLY @6373 GOTO bt12_courage
END

IF ~~ THEN BEGIN bt12_you
SAY @6376
IF ~~ THEN GOTO bt12_what
END

IF ~~ THEN BEGIN bt12_mood
SAY @6377
=
@6369
IF ~~ THEN REPLY @6370 GOTO bt12_together
IF ~~ THEN REPLY @6371 GOTO bt12_questions
IF ~~ THEN REPLY @6372 GOTO bt12_forced
IF ~~ THEN REPLY @6373 GOTO bt12_courage
END

IF ~~ THEN BEGIN bt12_cheering
SAY @6378
IF ~~ THEN GOTO bt12_what
END

IF ~~ THEN BEGIN bt12_go
SAY @6379
IF ~~ THEN REPLY @6380 GOTO bt12_awful
IF ~~ THEN REPLY @6381 GOTO bt12_love
IF ~~ THEN REPLY @6382 GOTO bt12_threat
END

IF ~~ THEN BEGIN bt12_take
SAY @6383
IF ~~ THEN GOTO bt12_what
END

IF ~~ THEN BEGIN bt12_together
SAY @6384
=
@6385
=
@6386
=
@6387
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bt12_questions
SAY @6388
=
@6389
=
@6390
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bt12_forced
SAY @6391
=
@6392
=
@6393
=
@6394
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bt12_courage
SAY @6395
=
@6396
=
@6397
=
@6398
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bt12_awful
SAY @6399
IF ~~ THEN GOTO bt12_what
END

IF ~~ THEN BEGIN bt12_love
SAY @6400
=
@6401
=
@6369
IF ~~ THEN REPLY @6370 GOTO bt12_together
IF ~~ THEN REPLY @6371 GOTO bt12_questions
IF ~~ THEN REPLY @6372 GOTO bt12_forced
IF ~~ THEN REPLY @6373 GOTO bt12_courage
END

IF ~~ THEN BEGIN bt12_threat
SAY @6402
=
@6403
=
@6369
IF ~~ THEN REPLY @6370 GOTO bt12_together
IF ~~ THEN REPLY @6371 GOTO bt12_questions
IF ~~ THEN REPLY @6372 GOTO bt12_forced
IF ~~ THEN REPLY @6373 GOTO bt12_courage
END

CHAIN
IF ~~ THEN BIMOEN25 bt10_felt
@6404
== BE3FAD25 
@6405
== BIMOEN25 
@6406
== BE3FAD25
@6407
END
IF ~~ THEN REPLY @6408 GOTO bt10_hope
IF ~~ THEN REPLY @6409 GOTO bt10_again

CHAIN
IF ~~ THEN BIMOEN25 bt10_hope
@6410
=
@6411
=
@6412
=
@6413
== BE3FAD25
@6414
=
@6282
=
@6283
== BIMOEN25
@6415
END
IF ~~ THEN REPLY @6284 EXTERN BE3FAD25 bt10_parents
IF ~~ THEN REPLY @6285 EXTERN BE3FAD25 bt10_delighted
IF ~~ THEN REPLY @6286 EXTERN BE3FAD25 bt10_happy

CHAIN
IF ~~ THEN BIMOEN25 bt10_again
@6416
== BE3FAD25
@6417
== BIMOEN25
@6418
END
IF ~~ THEN REPLY @6419 EXTERN BE3FAD25 bt10_bully
IF ~~ THEN REPLY @6420 GOTO bt10_hope

CHAIN
IF ~~ THEN BE3FAD25 bt10_bully
@6421
== BIMOEN25
@6422
== BE3FAD25
@6423
== BIMOEN25
@6424
=
@6411
=
@6412
=
@6413
== BE3FAD25
@6414
=
@6282
=
@6283
== BIMOEN25
@6415
END
IF ~~ THEN REPLY @6284 EXTERN BE3FAD25 bt10_parents
IF ~~ THEN REPLY @6285 EXTERN BE3FAD25 bt10_delighted
IF ~~ THEN REPLY @6286 EXTERN BE3FAD25 bt10_happy

///////////////////////////////////////
////////////BANTERS////////////////////
///////////////////////////////////////

////////////AERIE 

 CHAIN IF~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("AERIE",CD_STATE_NOTVALID) Global("E3FadeAerieToB","LOCALS",0)~THEN BAERIE25 FadeAerieToB01
    @6425
    DO ~SetGlobal("E3FadeAerieToB","LOCALS",1)~
    ==BE3FAD25 @6426
    ==BAERIE25 @6427
    ==BAERIE25 @6428
    ==BE3FAD25 @6429
    ==BAERIE25 @6430
    ==BE3FAD25 @6431
    ==BAERIE25 @6432
    ==BAERIE25 @6433
    ==BE3FAD25 @6434
    ==BVICON25 IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @6435
    ==BE3FAD25 IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @6436
    ==BVICON25 IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @6437
    ==BE3FAD25 IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @6438
    ==BVICON25 IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @6439
    ==BVICON25 IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @6440
    ==BAERIE25 IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @6441
    ==BE3FAD25 IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @6442
    ==BVICON25 IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @6443 
  EXIT
  
 CHAIN IF~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("AERIE",CD_STATE_NOTVALID) Global("E3FadeAerieToB","LOCALS",1)~THEN BAERIE25 FadeAerieToB02
    @6444
  DO ~SetGlobal("E3FadeAerieToB","LOCALS",2)~
    ==BE3FAD25 @6445
    ==BAERIE25 @6446
    ==BE3FAD25 @6447  
    ==BAERIE25 @6448
    ==BE3FAD25 @6449
    ==BAERIE25 @6450
    ==BAERIE25 @6451
    ==BE3FAD25 @6452
    ==BE3FAD25 @6453
  EXIT
  
/////////////VICONIA

 CHAIN IF ~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("Viconia",CD_STATE_NOTVALID) Global("E3FadeViconiaToB","LOCALS",0)~ THEN BVICON25 E3FadeVicToB01
    @6454
    DO ~SetGlobal("E3FadeViconiaToB","LOCALS",1)~
    ==BE3Fad25 @6455
    ==BVICON25 @6456
    ==BE3Fad25 @6457
    ==BVICON25 @6458
    ==BE3Fad25 @6459
    ==BVICON25 @6460
 EXIT
 
   CHAIN IF ~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("Viconia",CD_STATE_NOTVALID) Global("E3FadeViconiaControlProb","LOCALS",0) AreaCheck("AR4500")~ THEN BVICON25 E3FadeVicCont
    @6461
    DO ~SetGlobal("E3FadeViconiaControlProb","LOCALS",1)~
    ==BE3Fad25 @6462
    ==BVICON25 @6463
    ==BE3Fad25 @6464
    ==BVICON25 @6465
    ==BE3Fad25 @6466
    ==BVICON25 @6467
    EXIT
    
    
///////////////ANOMEN


CHAIN IF~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("ANOMEN",CD_STATE_NOTVALID) Global("E3FadeAnomenToB","GLOBAL",0)~THEN BANOME25 FadeAnomenToB01
    @6468
    DO ~SetGlobal("E3FadeAnomenToB","GLOBAL",1)~
    ==BE3FAD25 @6469
    ==BANOME25 @6470
    ==BE3FAD25 @6471
    ==BANOME25 @6472
    ==BE3FAD25 @6473
    ==BE3FAD25 @6474
    ==BANOME25 @6475
    ==BE3FAD25 @6476
    ==BANOME25 @6477
    EXIT

CHAIN IF~InParty("ANOMEN") See("ANOMEN") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("ANOMEN",CD_STATE_NOTVALID) Global("E3FadeAnomenToB","GLOBAL",1)~THEN BE3FAD25 FadeAnomenToB02
    @6478
    DO ~SetGlobal("E3FadeAnomenToB","GLOBAL",2)~
    ==BANOME25 @6479
    ==BANOME25 @6480
    ==BE3FAD25 @6481
    ==BANOME25 @6482
    ==BE3FAD25 @6483
    ==BANOME25 @6484
    ==BE3FAD25 @6485
    ==BANOME25 @6486
    ==BE3FAD25 @6487
    ==BE3FAD25 @6488
    EXIT
    
//////////////////CERND

CHAIN IF~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("CERND",CD_STATE_NOTVALID) Global("E3FadeCerndToB","GLOBAL",0)~THEN BCERND25 FadeCerndToB01
    @6489
    DO ~SetGlobal("E3FadeCerndToB","GLOBAL",1)~
    ==BE3FAD25 @6490
    ==BCERND25 @6491
    ==BE3FAD25 @6492
    ==BCERND25 @6493
    ==BCERND25 @6494
    ==BE3FAD25 @6495
    ==BCERND25 @6496
    ==BE3FAD25 @6497
    ==BCERND25 @6498
    ==BE3FAD25 @6499
    EXIT
    
//////////////////EDWIN

CHAIN IF~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("EDWIN",CD_STATE_NOTVALID) Global("E3FadeEdwinToB","GLOBAL",0)~THEN BEDWIN25 FadeEdwinToB01
    @6500
  DO ~SetGlobal("E3FadeEdwinToB","GLOBAL",1)~
    ==BEDWIN25 @6501
    ==BE3FAD25 @6502  
    ==BEDWIN25 @6503
    ==BE3FAD25 @6504
    ==BEDWIN25 @6505
    ==BE3FAD25 @6506
    ==BEDWIN25 @6507
    ==BE3FAD25 @6508
    EXIT
    
/////////////////HAER'DALIS

CHAIN IF~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("HAERDALIS",CD_STATE_NOTVALID) Global("E3FadeHaerToB","GLOBAL",0)~THEN BHAERD25 FadeHaerdToB01
    @6509
    DO ~SetGlobal("E3FadeHaerToB","GLOBAL",1)~
    ==BE3FAD25 @6510
    ==BHAERD25 @6511
    ==BE3FAD25 @6512
    ==BHAERD25 @6513
    ==BE3FAD25 @6514
    ==BHAERD25 @6515
    ==BE3FAD25 @6516
    EXIT
    
CHAIN IF~InParty("HAERDALIS") See("HAERDALIS") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("HAERDALIS",CD_STATE_NOTVALID) Global("E3FadeHaerToB","GLOBAL",1)~THEN BE3FAD25 FadeHaerdToB02
    @6517
    DO ~SetGlobal("E3FadeHaerToB","GLOBAL",2)~
    ==BHAERD25 @6518
    ==BE3FAD25 @6519
    ==BHAERD25 @6520
    ==BE3FAD25 @6521
    ==BHAERD25 @6522
    ==BE3FAD25 @6523
    ==BHAERD25 @6524
    ==BE3FAD25 @6525
    EXIT
    
///////////////////IMOEN

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
Global("E3FADEIMOENTALKToB","LOCALS",0)~ THEN BE3FAD25 fadeimoentob1
@6526
DO ~SetGlobal("E3FADEIMOENTALKToB","LOCALS",1)~
== BIMOEN25 @6527
== BE3FAD25 @6528
== BIMOEN25 @6529
== BE3FAD25 @6530
== BIMOEN25 @6531
== BE3FAD25 @6532
== BIMOEN25 @6533
== BE3FAD25 @6534
== BIMOEN25 @6535
== BE3FAD25 @6503
EXIT

///////////////////JAHEIRA
     
    CHAIN IF ~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("E3FadeJaheiraToB","LOCALS",0)~ THEN BJAHEI25 E3FadeJahToB01
    @6536
    DO ~SetGlobal("E3FadeJaheiraToB","LOCALS",1)~
    ==BE3Fad25 @6537
    ==BJAHEI25 @6538
    ==BE3Fad25 @6539
    ==BJAHEI25 @6540
    ==BE3Fad25 @6541
    ==BJAHEI25 @6542
    ==BE3Fad25 @6543
    ==BJAHEI25 @6544
    ==BE3Fad25 @6545
    ==BJAHEI25 @6546
    EXIT
    
    CHAIN IF ~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("E3FadeJaheiraToB","LOCALS",1)~ THEN BE3Fad25 E3FadeJahToB02
    @6547
    DO ~SetGlobal("E3FadeJaheiraToB","LOCALS",2)~
    ==BE3Fad25 @6548
    ==BJAHEI25 @6549
    ==BE3Fad25 @6550
    ==BJAHEI25 @6551
    ==BE3Fad25 @6552
    ==BJAHEI25 @6553
    EXIT

    CHAIN IF ~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("E3FadeJaheiraToB","LOCALS",2)~ THEN BJAHEI25 E3FadeJahToB03
    @6554
    DO ~SetGlobal("E3FadeJaheiraToB","LOCALS",3)~
    ==BE3Fad25 @6555
    ==BJAHEI25 @6556
    ==BE3Fad25 @6557
    ==BJAHEI25 @6558
   EXIT
   
////////////////////JAN

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
Global("E3FADEJAN25TALK1","LOCALS",0)~ THEN BE3FAD25 fadejantob1
@6559
DO ~SetGlobal("E3FADEJAN25TALK1","LOCALS",1)~
== BJAN25 @6560
== BE3FAD25 @6561
== BJAN25 @6562
== BE3FAD25 @6563
== BJAN25 @6564
== BE3FAD25 @6565
== BJAN25 @6566
== BE3FAD25 @6567
== BJAN25 @6568
== BE3FAD25 @6569
== BJAN25 @6570
== BE3FAD25 @6571  
== BJAN25 @6572
== BE3FAD25 @6573
== BJAN25 @6574
== BE3FAD25 @6575
EXIT

///////////////////KELDORN


CHAIN IF~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("KELDORN",CD_STATE_NOTVALID) Global("E3FadeKeldornToB","LOCALS",0)~THEN BKELDO25 FadeKKeldornToB01
    @6576
    DO ~SetGlobal("E3FadeKeldornToB","LOCALS",1)~
    ==BE3FAD25 @6577
    ==BKELDO25 @6578
    ==BE3FAD25 @6579
    ==BKELDO25 @6580
    ==BE3FAD25 @6581
    ==BKELDO25 @6582
    ==BE3FAD25 @6583
    ==BKELDO25 @6584
    ==BE3FAD25 @6585
    EXIT
    
///////////////////KORGAN

CHAIN IF~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("KORGAN",CD_STATE_NOTVALID) Global("E3FadeKorganToB","LOCALS",0)~THEN BKORGA25 FadeKorganToB01
    @6586
    ==BE3FAD25 @6587
    ==BKORGA25 @6588
    ==BE3FAD25 @6543
    ==BKORGA25 @6589
    ==BE3FAD25 @6590
    ==BKORGA25 @6591
    ==BE3FAD25 @6592
    EXIT

///////////////////MAZZY

CHAIN IF~InParty("MAZZY") See("MAZZY") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("MAZZY",CD_STATE_NOTVALID) Global("E3FadeMazzyToB","LOCALS",0)~THEN BE3FAD25 FadeMazzyToB01
    @6593
    ==BMAZZY25 @6594
    ==BE3FAD25 @6595
    ==BMAZZY25 @6596
    ==BE3FAD25 @6597
    ==BMAZZY25 @6598
    ==BE3FAD25 @6599
    ==BMAZZY25 @6600
    ==BE3FAD25 @6601
    ==BMAZZY25 @6602
    EXIT
    
///////////////////MINSC

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("E3FADEMINSC25TALK1","LOCALS",0)~ THEN BE3FAD25 FadeMinscToB01
@6603
DO ~SetGlobal("E3FADEMINSC25TALK1","LOCALS",1)~
== BMINSC25 @6604
== BE3FAD25 @6605
== BMINSC25 @6606
== BE3FAD25 @6607
== BE3FAD25 @6608
== BMINSC25 @6609
== BE3FAD25 @6610
== BE3FAD25 @6611
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("E3FADEMINSC25TALK1","LOCALS",1)~ THEN BE3FAD25 FadeMinscToB02
@6612
DO ~SetGlobal("E3FADEMINSC25TALK1","LOCALS",2)~
== BMINSC25 @6613
== BE3FAD25 @6614
== BMINSC25 @6615
== BE3FAD25 @6616
== BMINSC25 @6617
== BE3FAD25 @6618
== BMINSC25 @6619
== BE3FAD25 @6620
== BMINSC25 @6621
== BMINSC25 @6622
== BMINSC25 @6623
EXIT

////////////////////NALIA

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
Global("E3FADENALIATALKTOB","GLOBAL",0)~ THEN BNALIA25 fadenaliatob
@6624
DO ~SetGlobal("E3FADENALIATALKTOB","GLOBAL",1)~
== BE3FAD25 @6625
== BNALIA25 @6626
== BE3FAD25 @6627
== BE3FAD25 @6628
== BNALIA25 @6629
== BE3FAD25 @93
== BE3FAD25 @6630
EXIT

///////////////////SAREVOK


CHAIN IF ~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("Sarevok",CD_STATE_NOTVALID) Global ("E3FadeSarevokToB","LOCALS",0)~ THEN BSAREV25 E3FadeSarToB01
    @6631
    DO ~SetGlobal("E3FadeSarevokToB","LOCALS",1)~
    ==BE3Fad25 @6632
    ==BSAREV25 @6633
    ==BE3Fad25 @6634
    ==BSAREV25 @6635
    ==BE3Fad25 @6636
    ==BSAREV25 @6637
    EXIT
    
CHAIN IF ~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("Sarevok",CD_STATE_NOTVALID) Global ("E3FadeSarevokToB","LOCALS",1)~ THEN BSAREV25 E3FadeSarToB02
    @6638
    DO ~SetGlobal("E3FadeSarevokToB","LOCALS",2)~
    ==BE3Fad25 @6639
    ==BSAREV25 @6640
    ==BE3Fad25 @6641
    ==BSAREV25 @6642
    ==BE3Fad25 @6643
    ==BSAREV25 @6644
    ==BE3Fad25 @6645
    ==BSAREV25 @6646
    EXIT

CHAIN IF ~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("Sarevok",CD_STATE_NOTVALID) Global ("E3FadeSarevokToB","LOCALS",2)~ THEN BE3Fad25 E3FadeSarToB03
    @6647
    DO ~SetGlobal("E3FadeSarevokToB","LOCALS",3)~
    ==BSAREV25 @6648
    ==BE3Fad25 @6649
    ==BSAREV25 @6650
    ==BE3Fad25 @6651
    ==BSAREV25 @6543
    ==BE3Fad25 @6652
    ==BSAREV25 @6653
    ==BSAREV25 @6654
    ==BE3Fad25 @6655
    ==BSAREV25 @3118
    EXIT
    
// VALYGAR


CHAIN IF~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("Valygar",CD_STATE_NOTVALID) Global ("E3FadeValygarToB","GLOBAL",0)~THEN BVALYG25 FadeValygarToB01
    @6656
    DO ~SetGlobal ("E3FadeValygarToB","GLOBAL",1)~ 
    ==BE3FAD25 @6657
    ==BVALYG25 @6658
    ==BE3FAD25 @6659
    ==BVALYG25 @6660
    ==BE3FAD25 @6661
    ==BVALYG25 @6662
    ==BE3FAD25 @6663
    ==BVALYG25 @6664
    //If in a romance with <CHARNAME>:
    ==BE3FAD25 IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @6665
    ==BVALYG25 IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @6666
    ==BE3FAD25 IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @6667
    //no romance
    ==BE3FAD25 IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @6668
    ==BVALYG25 IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @6543
    ==BVALYG25 IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @6669
    ==BVALYG25 IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @6670
    ==BE3FAD25 IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @6671
    ==BVALYG25 IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @6672
    ==BE3FAD25 IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @6673
    ==BVALYG25 IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @6674
    EXIT
    
 CHAIN IF~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("Valygar",CD_STATE_NOTVALID) Global ("E3FadeValygarToB","GLOBAL",1)~THEN BE3FAD25 FadeValygarToB02
    @6675
    DO ~SetGlobal ("E3FadeValygarToB","GLOBAL",2)~
    ==BE3FAD25 @6676
    ==BVALYG25 @6677
    ==BE3FAD25 @6678
    ==BVALYG25 @6679
    ==BE3FAD25 @6680
    ==BVALYG25 @6681
    ==BE3FAD25 @6682
    ==BVALYG25 @6683
    ==BVALYG25 @6684
    ==BE3FAD25 @6685
    EXIT
    
CHAIN IF~InParty("E3Fade") See("E3Fade") !StateCheck("E3Fade",CD_STATE_NOTVALID) !StateCheck("Valygar",CD_STATE_NOTVALID) Global ("E3FadeValygarToB","GLOBAL",2)~THEN BE3FAD25 FadeValygarToB03
    @6686
    DO ~SetGlobal ("E3FadeValygarToB","GLOBAL",3)~
    ==BE3FAD25 @6687
    ==BVALYG25 @6688
    ==BE3FAD25 @6689
    ==BE3FAD25 @6690
    ==BVALYG25 @6691
    ==BE3FAD25 @6692
    ==BVALYG25 @6693
    ==BE3FAD25 @6694
    //If Valygar is in a romance with <CHARNAME> (Romantic Encounters mod):
    ==BE3FAD25 IF ~GlobalGT("RE_ValygarToB","GLOBAL",0)~ THEN @6695
    ==BVALYG25 IF ~GlobalGT("RE_ValygarToB","GLOBAL",0)~ THEN @6696
    ==BE3FAD25 IF ~GlobalGT("RE_ValygarToB","GLOBAL",0)~ THEN @6697
    ==BVALYG25 IF ~GlobalGT("RE_ValygarToB","GLOBAL",0)~ THEN @6698
    ==BE3FAD25 IF ~GlobalGT("RE_ValygarToB","GLOBAL",0)~ THEN @6699
    ==BVALYG25 IF ~GlobalGT("RE_ValygarToB","GLOBAL",0)~ THEN @6700
    //If Valygar is NOT in a romance with <CHARNAME> (Romantic Encounters mod):
    ==BE3FAD25 IF ~Global("RE_ValygarToB","GLOBAL",0)~ THEN @6701
    ==BVALYG25 IF ~Global("RE_ValygarToB","GLOBAL",0)~ THEN @6696
    ==BE3FAD25 IF ~Global("RE_ValygarToB","GLOBAL",0)~ THEN @6697
    ==BVALYG25 IF ~Global("RE_ValygarToB","GLOBAL",0)~ THEN @6698
    ==BE3FAD25 IF ~Global("RE_ValygarToB","GLOBAL",0)~ THEN @6699
    ==BVALYG25 IF ~Global("RE_ValygarToB","GLOBAL",0)~ THEN @6700
    EXIT



