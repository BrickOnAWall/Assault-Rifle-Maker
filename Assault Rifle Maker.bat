@echo off
echo Tool Made By Average User.#5826
echo No One Else Made This Tool!
pause
cls


Echo Do You Want To Enable Advanced Settings?
echo ENABLE THIS ONLY IF YOU KNOW WHAT YOU ARE DOING!
echo YOU MUST KNOW CUSTOM SOUNDS AND MODELS!
echo.
set /p Advanced=Yes/No: 
cls

Echo Please Enter The Name USE _ FOR SPACES ALL LOWERCASE LETTERS TOO
echo Example, large_machine_gun or ice_fire_gun
echo.
set /p Name=Enter Name: 
cls

Echo Please Enter The  Weapon Print Name
echo.
set /p PrintName=Enter Print Name: 
cls

Echo Please Enter The Weapon Description.
echo.
set /p Desc=Enter Description: 
cls

if "%Advanced%"=="Yes" (goto Yes)
if "%Advanced%"=="No" (goto No)
if "%Advanced%"=="yes" (goto Yes)
if "%Advanced%"=="no" (goto No)
:Yes
Echo Please Enter The Weapon View Model.
echo Example:  "mdl/weapons/mastiff_stgn/ptpov_mastiff.rmdl"
set /p ViewModel=Enter ViewModel:  
cls
:No

if "%Advanced%"=="Yes" (goto Yes5)
if "%Advanced%"=="No" (goto No5)
if "%Advanced%"=="yes" (goto Yes5)
if "%Advanced%"=="no" (goto No5)
:Yes5
Echo Please Say Yes Or No For Custom Sounds For Your Gun!
echo YOU NEED SOUNDS FOR THIS! 
echo.
set /p SoundYesOrNo=Enter Yes/No:  
cls


if "%SoundYesOrNo%"=="Yes" (goto Yep1)
if "%SoundYesOrNo%"=="No" (goto Nope1)
if "%SoundYesOrNo%"=="yes" (goto Yep1)
if "%SoundYesOrNo%"=="no" (goto Nope1)
:Yep1
Echo Please Enter The 1P Fire Sound Or Say Skip.
echo Example: "Weapon_Wingman_Fire_1P" ONlY USE 1P FOR THIS ONE!
echo Remember that every Fire_1P has a second version 
echo such as Fire_3P Means Third Person, while Fire_1P means First Person!
echo.
set /p FireSound1P=Enter 1P Fire Sound :  
cls
:Nope1


if "%SoundYesOrNo%"=="Yes" (goto Yep10)
if "%SoundYesOrNo%"=="No" (goto Nope10)
if "%SoundYesOrNo%"=="yes" (goto Yep10)
if "%SoundYesOrNo%"=="no" (goto Nope10)
:Yep10
Echo Please Enter The 3P Fire Sound Or Say Skip.
echo Example: "Weapon_Wingman_Fire_3P" ONlY USE 3P FOR THIS ONE!
echo Remember that every Fire_3P has a second version 
echo such as Fire_3P Means Third Person, while Fire_1P means First Person!
echo.
set /p FireSound3P=Enter 3P Fire Sound :  
cls
:Nope10


if "%SoundYesOrNo%"=="Yes" (goto Yep2)
if "%SoundYesOrNo%"=="No" (goto Nope2)
if "%SoundYesOrNo%"=="yes" (goto Yep2)
if "%SoundYesOrNo%"=="no" (goto Nope2)
:Yep2
Echo Please Enter The Dry Fire Sound Or Say Skip.
echo Example: "assault_rifle_dryfire"!
echo.
set /p DryFireSound=Enter Dry Fire Sound :  
cls

:Nope2



if "%Advanced%"=="Yes" (goto Yes2)
if "%Advanced%"=="No" (goto No2)
if "%Advanced%"=="yes" (goto Yes2)
if "%Advanced%"=="no" (goto No2
:Yes2
Echo Please Enter The Player Model.
echo Example:  "mdl/weapons/mastiff_stgn/w_mastiff.rmdl"
set /p PlayerModel=Enter PlayerModel:  
cls


:No2

:No5
Echo Please Enter Total Size
echo.
set /p AmmoTotal=Enter Total Ammo: 
cls

Echo Please Enter Stockpile Size
echo.
set /p AmmoStockPile=Enter Stockpile Size: 
cls

Echo Please Enter Minimum To Fire Amount.
echo.
set /p MinFire=Enter Mininum To Fire Amount: 
cls


Echo Please Enter A Number You Want Damage Near To Be.
echo.
set /p DamageNear=Enter Near Damage:  
cls


Echo Please Enter A Number You Want Damage Far To Be.
echo.
set /p DamageFar=Enter Far Damage:   
cls


Echo Please Enter A Number You Want Damage Very Far To Be.
echo.
set /p DamageVeryFar=Enter Very Far Damage: 
cls

Echo Please Enter Fire Rate Amount.
echo.
set /p FireRate=Enter Fire Rate: 
cls

copy  mp_weapon_%Name%.txt 

cls
echo #base "_base_assault_rifle.txt"                                                                                  >> mp_weapon_%Name%.txt
echo #base "_base_mags_light.txt"                                                                                     >> mp_weapon_%Name%.txt
echo #base "_base_barrels_medium.txt"                                                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo WeaponData                                                                                                       >> mp_weapon_%Name%.txt
echo {                                                                                                                >> mp_weapon_%Name%.txt
echo 	// General                                                                                                    >> mp_weapon_%Name%.txt
echo 	"printname"   									"%PrintName%"                                                 >> mp_weapon_%Name%.txt
echo 	"shortprintname"								"%PrintName%"                                                 >> mp_weapon_%Name%.txt
echo 	"description" 									"%Desc%"                                                      >> mp_weapon_%Name%.txt
echo 	"longdesc"										"%Desc%"                                                      >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"weapon_type_flags"								"WPT_PRIMARY"                                                 >> mp_weapon_%Name%.txt
echo 	"ammo_pool_type"								"bullet"                                                      >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo     // UI/HUD                                                                                                    >> mp_weapon_%Name%.txt
echo 	"menu_icon"										"rui/weapon_icons/r5/weapon_r301"                             >> mp_weapon_%Name%.txt
echo 	"hud_icon"										"rui/weapon_icons/r5/weapon_r301"                             >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"weaponClass" 									"human"                                                       >> mp_weapon_%Name%.txt
echo 	"weaponSubClass"								"rifle"                                                       >> mp_weapon_%Name%.txt
echo 	"body_type"										"medium"                                                      >> mp_weapon_%Name%.txt
echo 	"fire_mode"   									"automatic"                                                   >> mp_weapon_%Name%.txt
echo 	"pickup_hold_prompt"  							"Hold [USE] [WEAPONNAME]"                                     >> mp_weapon_%Name%.txt
echo 	"pickup_press_prompt" 							"[USE] [WEAPONNAME]"                                          >> mp_weapon_%Name%.txt
echo 	"minimap_reveal_distance"						"32000"                                                       >> mp_weapon_%Name%.txt
echo 	"leveled_pickup"								"1"                                                           >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo     "projectile_launch_speed"						"29000"                                                       >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	// Menu                                                                                                       >> mp_weapon_%Name%.txt
echo 	"menu_category"                                 "ar"                                                          >> mp_weapon_%Name%.txt
echo 	"menu_anim_class"                               "medium"                                                      >> mp_weapon_%Name%.txt
echo 	"stat_damage" 									"55"                                                          >> mp_weapon_%Name%.txt
echo 	"stat_range"  									"65"                                                          >> mp_weapon_%Name%.txt
echo 	"stat_accuracy"   								"90"                                                          >> mp_weapon_%Name%.txt
echo 	"stat_rof"										"80"                                                          >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	// Models                                                                                                     >> mp_weapon_%Name%.txt
if "%Advanced%"=="Yes" (goto Yes1)                                                                                    
if "%Advanced%"=="No" (goto No1)                                                                                      
if "%Advanced%"=="yes" (goto Yes1)                                                                                    
if "%Advanced%"=="no" (goto No1)                                                                                      
:Yes1                                                                                                                 
echo 	"viewmodel"   									"%ViewModel%"                                                 >> mp_weapon_%Name%.txt
echo 	"playermodel" 									"%PlayerModel%"                                               >> mp_weapon_%Name%.txt
goto After                                                                                                            >> mp_weapon_%Name%.txt
:No1                                                                                                                 
echo 	"viewmodel"   									"mdl/weapons/rspn101/ptpov_rspn101.rmdl"                      >> mp_weapon_%Name%.txt
echo 	"playermodel" 									"mdl/weapons/rspn101/w_rspn101.rmdl"                          >> mp_weapon_%Name%.txt
:After                                                                                                               
echo 	"holster_type"									"rifle"                                                       >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"chroma_color"									"1.8.4"                                                       >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"OnWeaponActivate"                              "OnWeaponActivate_R101"                                       >> mp_weapon_%Name%.txt
echo     "OnWeaponDeactivate"                            "OnWeaponDeactivate_R101"                                    >> mp_weapon_%Name%.txt
echo     "OnWeaponPrimaryAttack"                         "OnWeaponPrimaryAttack_R101"                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"looping_sounds"								"1"                                                           >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"burst_or_looping_fire_sound_start_1p"			"Weapon_R101_FirstShot_1P"                                    >> mp_weapon_%Name%.txt
echo 	"burst_or_looping_fire_sound_middle_1p"			"Weapon_R101_Loop_1P"                                         >> mp_weapon_%Name%.txt
echo 	"burst_or_looping_fire_sound_end_1p"			"Weapon_R101_LoopEnd_1P"                                      >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"burst_or_looping_fire_sound_start_3p"			""                                                            >> mp_weapon_%Name%.txt
echo 	"burst_or_looping_fire_sound_middle_3p"			"Weapon_R101_Loop_3P"                                         >> mp_weapon_%Name%.txt
echo 	"burst_or_looping_fire_sound_end_3p"			"Weapon_R101_LoopEnd_3P"                                      >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"burst_or_looping_fire_sound_start_npc"			""                                                            >> mp_weapon_%Name%.txt
echo 	"burst_or_looping_fire_sound_middle_npc"		"weapon_r101_loop_3p_npc_a"                                   >> mp_weapon_%Name%.txt
echo 	"burst_or_looping_fire_sound_end_npc"			""                                                            >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"low_ammo_sound_name_1"							"R101_LowAmmo_Shot1"                                          >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
if "%SoundYesOrNo%"=="Yes" (goto Yep3)                                                                                
if "%SoundYesOrNo%"=="No" (goto Nope3)                                                                                
if "%SoundYesOrNo%"=="yes" (goto Yep3)                                                                                
if "%SoundYesOrNo%"=="no" (goto Nope3)                                                                                
:Yep3                                                                                                                
echo 	"fire_sound_1_player_1p"						"%FireSound1P%"                                               >> mp_weapon_%Name%.txt
echo 	"fire_sound_1_player_3p"						"%FireSound3P%"                                               >> mp_weapon_%Name%.txt
echo 	"fire_sound_2_player_1p"						"%FireSound1P%"                                               >> mp_weapon_%Name%.txt
echo 	"fire_sound_2_player_3p"						""                                                            >> mp_weapon_%Name%.txt
echo 	"fire_sound_2_npc"								"Weapon_r101_SecondShot_NPC"                                  >> mp_weapon_%Name%.txt
echo 	"sound_dryfire"									"%DryFireSound%"                                              >> mp_weapon_%Name%.txt
echo 	"sound_zoom_in"									"Weapon_r101_ADS_In"                                          >> mp_weapon_%Name%.txt
echo 	"sound_zoom_out"								"Weapon_r101_ADS_Out"                                         >> mp_weapon_%Name%.txt
goto after5                                                                                                           >> mp_weapon_%Name%.txt
:Nope3                                                                                                              
	"fire_sound_1_player_1p"						"Weapon_bulletCasings.Bounce">> mp_weapon_%name%.txt              >> mp_weapon_%Name%.txt
	"fire_sound_1_player_3p"						"Weapon_bulletCasings.Bounce">> mp_weapon_%name%.txt              >> mp_weapon_%Name%.txt
	"fire_sound_2_player_1p"						"Weapon_r101_SecondShot_1P">> mp_weapon_%name%.txt                >> mp_weapon_%Name%.txt
	"fire_sound_2_player_3p"						"">> mp_weapon_%name%.txt                                         >> mp_weapon_%Name%.txt
	"fire_sound_2_npc"								"Weapon_r101_SecondShot_NPC" >> mp_weapon_%name%.txt              >> mp_weapon_%Name%.txt
	"sound_dryfire"									"assault_rifle_dryfire">> mp_weapon_%name%.txt                    >> mp_weapon_%Name%.txt
	"sound_zoom_in"									"Weapon_r101_ADS_In">> mp_weapon_%name%.txt                       >> mp_weapon_%Name%.txt
	"sound_zoom_out"								"Weapon_r101_ADS_Out">> mp_weapon_%name%.txt                      >> mp_weapon_%Name%.txt
																													  >> mp_weapon_%Name%.txt
:After5                                                                                                               
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo     "ammo_clip_size"   								"%AmmoTotal%"                                             >> mp_weapon_%Name%.txt
echo     "ammo_default_total"							"%AmmoTotal%"                                                 >> mp_weapon_%Name%.txt
echo     "ammo_stockpile_max"							"%AmmoStockPile%"                                             >> mp_weapon_%Name%.txt
echo     "ammo_no_remove_from_stockpile"					"1"                                                       >> mp_weapon_%Name%.txt
echo     "ammo_min_to_fire"								"%MinFire%"                                                   >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	// Damage - When Used by Players                                                                              >> mp_weapon_%Name%.txt
echo     "damage_near_value"   							"%DamageNear%"                                                >> mp_weapon_%Name%.txt
echo     "damage_far_value"								"%DamageFar%"                                                 >> mp_weapon_%Name%.txt
echo     "damage_very_far_value"							"%DamageVeryFar%"                                         >> mp_weapon_%Name%.txt
echo     "damage_near_value_titanarmor"					"%DamageNear%"                                                >> mp_weapon_%Name%.txt
echo     "damage_far_value_titanarmor" 					"%DamageFar%"                                                 >> mp_weapon_%Name%.txt
echo     "damage_very_far_value_titanarmor" 				"%DamageVeryFar%"                                         >> mp_weapon_%Name%.txt
echo 	"damage_rodeo" 									"100"                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"damage_leg_scale"                              "0.75"                                                        >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	// Behavior                                                                                                   >> mp_weapon_%Name%.txt
echo 	"deployfirst_time"								"1.1"                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo     // NPC                                                                                                       >> mp_weapon_%Name%.txt
echo 	"proficiency_poor_additional_rest"				"0.2"                                                         >> mp_weapon_%Name%.txt
echo 	"proficiency_average_additional_rest"			"0.2"                                                         >> mp_weapon_%Name%.txt
echo 	"proficiency_good_additional_rest"				"0.2"                                                         >> mp_weapon_%Name%.txt
echo     "proficiency_poor_spreadscale"					"5.0"                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo     "proficiency_average_spreadscale" 				"2.0"                                                         >> mp_weapon_%Name%.txt
echo     "proficiency_good_spreadscale"					"3.0"                                                         >> mp_weapon_%Name%.txt
echo     "proficiency_very_good_spreadscale"   			"2.5"                                                         >> mp_weapon_%Name%.txt
echo     "proficiency_perfect_spreadscale"   			"1.0"                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo     "npc_damage_near_value"   						"10"                                                          >> mp_weapon_%Name%.txt
echo     "npc_damage_far_value"							"8"                                                           >> mp_weapon_%Name%.txt
echo     "npc_damage_near_value_titanarmor"				"0"                                                           >> mp_weapon_%Name%.txt
echo     "npc_damage_far_value_titanarmor" 				"0"                                                           >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo     "npc_min_engage_range"							"0"                                                           >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo     "npc_max_range"   								"2500"                                                        >> mp_weapon_%Name%.txt
echo     "npc_max_engage_range"							"2000"                                                        >> mp_weapon_%Name%.txt
echo     "npc_min_engage_range_heavy_armor"				"500"                                                         >> mp_weapon_%Name%.txt
echo     "npc_max_engage_range_heavy_armor"				"2000"                                                        >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"npc_min_burst"   								"2"                                                           >> mp_weapon_%Name%.txt
echo 	"npc_max_burst"   								"4"                                                           >> mp_weapon_%Name%.txt
echo 	"npc_rest_time_between_bursts_min"				"0.5"                                                         >> mp_weapon_%Name%.txt
echo 	"npc_rest_time_between_bursts_max"				"0.8"                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	// Behavior                                                                                                   >> mp_weapon_%Name%.txt
echo 	"fire_rate"   									"%FireRate%"                                                  >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo     "viewmodel_offset_hip"                          "0 1.1 0.4"                                                  >> mp_weapon_%Name%.txt
echo 	"viewmodel_offset_ads"							"0 0.38 0"                                                    >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"dof_zoom_nearDepthStart"						"-0.5"                                                        >> mp_weapon_%Name%.txt
echo 	"dof_zoom_nearDepthEnd"							"5.05"                                                        >> mp_weapon_%Name%.txt
echo 	"dof_nearDepthStart"							"0.0"                                                         >> mp_weapon_%Name%.txt
echo 	"dof_nearDepthEnd"							    "0.0"                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"reload_time" 									"2.4"                                                         >> mp_weapon_%Name%.txt
echo 	"reload_time_late1"								"1.8"                                                         >> mp_weapon_%Name%.txt
echo 	"reloadempty_time"								"3.2"                                                         >> mp_weapon_%Name%.txt
echo 	"reloadempty_time_late1"						"2.61"                                                        >> mp_weapon_%Name%.txt
echo 	"reloadempty_time_late2"						"1.6"                                                         >> mp_weapon_%Name%.txt
echo 	"vortex_refire_behavior"  						"bullet"                                                      >> mp_weapon_%Name%.txt
echo 	"allow_empty_fire"								"0"                                                           >> mp_weapon_%Name%.txt
echo 	"reload_enabled"  								"1"                                                           >> mp_weapon_%Name%.txt
echo 	"allow_empty_click"   							"1"                                                           >> mp_weapon_%Name%.txt
echo 	"empty_reload_only"   							"0"                                                           >> mp_weapon_%Name%.txt
echo 	"allow_headshots" 								"1"                                                           >> mp_weapon_%Name%.txt
echo 	"primary_fire_does_not_block_sprint"			"0"                                                           >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	// View Kick                                                                                                  >> mp_weapon_%Name%.txt
echo 	"viewkick_pattern"                              "rspn101_2"                                                   >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo     "viewkick_spring"                               "rspn101_vkp"                                                >> mp_weapon_%Name%.txt
echo     "viewkick_spring_hot"                           "rspn101_vkp_hot"                                            >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo     "viewkick_spring_heatpershot"                   "1.0"                                                        >> mp_weapon_%Name%.txt
echo     "viewkick_spring_cooldown_holdtime"             "0.08"                                                       >> mp_weapon_%Name%.txt
echo     "viewkick_spring_cooldown_fadetime"             "0.05"                                                       >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo     "viewmodel_spring_jolt"                          "autofire_viewmodel_jolt"                                   >> mp_weapon_%Name%.txt
echo     "viewmodel_jolt_scale"                           "1.0"                                                       >> mp_weapon_%Name%.txt
echo     "viewmodel_jolt_backwardPerShot"                 "-0.3"                                                      >> mp_weapon_%Name%.txt
echo     "viewmodel_jolt_roll"                            "0 3.5 0.0"                                                 >> mp_weapon_%Name%.txt
echo     "viewmodel_jolt_side"                            "0 0.05 0"                                                  >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"viewkick_pitch_base" 							"1.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_pitch_random"   						"1.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_pitch_softScale"						"2.325"   //2.1                                               >> mp_weapon_%Name%.txt
echo 	"viewkick_pitch_hardScale"						"0.35"                                                        >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"viewkick_yaw_base"   							"1.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_yaw_random" 							"1.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_yaw_random_innerexclude"				"0.05"   //0                                                  >> mp_weapon_%Name%.txt
echo 	"viewkick_yaw_softScale"  						"0.725"  //.65                                                >> mp_weapon_%Name%.txt
echo 	"viewkick_yaw_hardScale"  						"0.35"                                                        >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"viewkick_roll_base"  							"0.8"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_roll_randomMin" 						"-0.2"                                                        >> mp_weapon_%Name%.txt
echo 	"viewkick_roll_randomMax" 						"0.2"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_roll_softScale" 						"0.7"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_roll_hardScale" 						"0.45"                                                        >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"viewkick_hipfire_weaponFraction" 				"0.05"                                                        >> mp_weapon_%Name%.txt
echo 	"viewkick_hipfire_weaponFraction_vmScale" 		"0.95"                                                        >> mp_weapon_%Name%.txt
echo 	"viewkick_ads_weaponFraction" 					"0.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_ads_weaponFraction_vmScale" 			"1.0"                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"viewkick_scale_firstshot_hipfire"			    "1.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_scale_min_hipfire"  					"1.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_scale_max_hipfire"  					"1.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_scale_firstshot_ads"					"1.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_scale_min_ads"  						"1.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_scale_max_ads"  						"1.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_scale_valuePerShot" 					"1"                                                           >> mp_weapon_%Name%.txt
echo 	"viewkick_scale_pitch_valueLerpStart"   		"0"                                                           >> mp_weapon_%Name%.txt
echo 	"viewkick_scale_pitch_valueLerpEnd" 			"6"                                                           >> mp_weapon_%Name%.txt
echo 	"viewkick_scale_yaw_valueLerpStart"   			"0"                                                           >> mp_weapon_%Name%.txt
echo 	"viewkick_scale_yaw_valueLerpEnd" 				"6"                                                           >> mp_weapon_%Name%.txt
echo 	"viewkick_scale_valueDecayDelay"  				"0.09"                                                        >> mp_weapon_%Name%.txt
echo     "viewkick_scale_valueDecayRate"   				"50"                                                          >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"viewkick_perm_pitch_base" 						"0.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_perm_pitch_random"   					"0.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_perm_yaw_base"   						"0.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_perm_yaw_random" 						"0.0"                                                         >> mp_weapon_%Name%.txt
echo 	"viewkick_perm_yaw_random_innerexclude"			"0.0"                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"viewmodel_shake_forward"						"0.2"                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	//setting to "0" so it's tunable in Bakery                                                                    >> mp_weapon_%Name%.txt
echo 	"sprintcycle_time"								"0"                                                           >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	// Bodygroups:                                                                                                >> mp_weapon_%Name%.txt
echo 	"clip_bodygroup"						"r101_magazine"                                                       >> mp_weapon_%Name%.txt
echo 	"clip_bodygroup_index_shown"			"0"                                                                   >> mp_weapon_%Name%.txt
echo 	"clip_bodygroup_index_hidden"			"1"                                                                   >> mp_weapon_%Name%.txt
echo 	"clip_bodygroup_show_for_milestone_0"	"1"                                                                   >> mp_weapon_%Name%.txt
echo 	"clip_bodygroup_show_for_milestone_1"	"0"                                                                   >> mp_weapon_%Name%.txt
echo 	"clip_bodygroup_show_for_milestone_2"	"1"                                                                   >> mp_weapon_%Name%.txt
echo 	"clip_bodygroup_show_for_milestone_3"	"1"                                                                   >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	dof_zoom_focusArea_horizontal					0.061                                                         >> mp_weapon_%Name%.txt
echo 	dof_zoom_focusArea_top							0.064                                                         >> mp_weapon_%Name%.txt
echo 	dof_zoom_focusArea_bottom						-0.016                                                        >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	Mods                                                                                                          >> mp_weapon_%Name%.txt
echo 	{                                                                                                             >> mp_weapon_%Name%.txt
echo 	    gold                                                                                                      >> mp_weapon_%Name%.txt
echo 	    {                                                                                                         >> mp_weapon_%Name%.txt
echo 	    }                                                                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 		"survival_finite_ammo"                                                                                    >> mp_weapon_%Name%.txt
echo         {                                                                                                        >> mp_weapon_%Name%.txt
echo             "ammo_default_total"							"%AmmoTotal%"                                         >> mp_weapon_%Name%.txt
echo             "ammo_stockpile_max"							"%AmmoStockPile%"                                     >> mp_weapon_%Name%.txt
echo             "ammo_no_remove_from_stockpile"					"1"                                               >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "low_ammo_fraction" 							"0.3"                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	   		"uses_ammo_pool"								"0"                                                   >> mp_weapon_%Name%.txt
echo         }                                                                                                        >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo         // single shot                                                                                           >> mp_weapon_%Name%.txt
echo 		altfire                                                                                                   >> mp_weapon_%Name%.txt
echo 		{                                                                                                         >> mp_weapon_%Name%.txt
echo 			"mod_activity_modifier"							"fire_select"                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 			"is_semi_auto"									"1"                                                   >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 			"fire_sound_1_player_1p"						"Weapon_bulletCasings.Bounce"                         >> mp_weapon_%Name%.txt
echo 			"fire_sound_1_player_3p"						"Weapon_bulletCasings.Bounce"                         >> mp_weapon_%Name%.txt
echo 			"fire_sound_2_player_1p"						"Weapon_r101_SingleShot_1P"                           >> mp_weapon_%Name%.txt
echo 			"fire_sound_2_player_3p"						"Weapon_r101_SingleShot_3P"                           >> mp_weapon_%Name%.txt
echo 			"fire_sound_2_npc"								"Weapon_r101_SingleShot_3P"                           >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 			"burst_or_looping_fire_sound_start_1p"			""                                                    >> mp_weapon_%Name%.txt
echo 			"burst_or_looping_fire_sound_middle_1p"			""                                                    >> mp_weapon_%Name%.txt
echo 			"burst_or_looping_fire_sound_end_1p"			""                                                    >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 			"burst_or_looping_fire_sound_start_3p"			""                                                    >> mp_weapon_%Name%.txt
echo 			"burst_or_looping_fire_sound_middle_3p"			""                                                    >> mp_weapon_%Name%.txt
echo 			"burst_or_looping_fire_sound_end_3p"			""                                                    >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 			"burst_or_looping_fire_sound_start_npc"			""                                                    >> mp_weapon_%Name%.txt
echo 			"burst_or_looping_fire_sound_middle_npc"		""                                                    >> mp_weapon_%Name%.txt
echo 			"burst_or_looping_fire_sound_end_npc"			""                                                    >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 			"looping_sounds"								"0"                                                   >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 			"low_ammo_sound_name_1"                         "R101_LowAmmo_Shot1"                                  >> mp_weapon_%Name%.txt
echo 			"low_ammo_sound_name_2"                         "R101_LowAmmo_Shot2"                                  >> mp_weapon_%Name%.txt
echo 			"low_ammo_sound_name_3"                         "R101_LowAmmo_Shot3"                                  >> mp_weapon_%Name%.txt
echo 			"low_ammo_sound_name_4"                         "R101_LowAmmo_Shot4"                                  >> mp_weapon_%Name%.txt
echo 			"low_ammo_sound_name_5"                         "R101_LowAmmo_Shot5"                                  >> mp_weapon_%Name%.txt
echo 			"low_ammo_sound_name_6"                         "R101_LowAmmo_Shot6"                                  >> mp_weapon_%Name%.txt
echo 		}                                                                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo         hopup_highcal_rounds                                                                                     >> mp_weapon_%Name%.txt
echo         {                                                                                                        >> mp_weapon_%Name%.txt
echo         	// This mod is only used to indicate that the hop-up is active                                        >> mp_weapon_%Name%.txt
echo         	// When player changes fire modes, we activate "altfire_empowered"                                    >> mp_weapon_%Name%.txt
echo         }                                                                                                        >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo         // single shot empowered                                                                                 >> mp_weapon_%Name%.txt
echo         altfire_highcal                                                                                          >> mp_weapon_%Name%.txt
echo         {                                                                                                        >> mp_weapon_%Name%.txt
echo             "mod_activity_modifier"							"fire_select"                                     >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "is_semi_auto"									"1"                                                   >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 			"projectile_trail_effect_0"                     "P_tracer_proj_sniper_piercer"                        >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "fire_sound_1_player_1p"						"Weapon_bulletCasings.Bounce"                         >> mp_weapon_%Name%.txt
echo             "fire_sound_1_player_3p"						"Weapon_bulletCasings.Bounce"                         >> mp_weapon_%Name%.txt
echo             "fire_sound_2_player_1p"						"Weapon_r101_SingleShot_1P"                           >> mp_weapon_%Name%.txt
echo             "fire_sound_2_player_3p"						"Weapon_r101_SingleShot_3P"                           >> mp_weapon_%Name%.txt
echo             "fire_sound_2_npc"								"Weapon_r101_SingleShot_3P"                           >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "burst_or_looping_fire_sound_start_1p"			""                                                    >> mp_weapon_%Name%.txt
echo             "burst_or_looping_fire_sound_middle_1p"			""                                                >> mp_weapon_%Name%.txt
echo             "burst_or_looping_fire_sound_end_1p"			""                                                    >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "burst_or_looping_fire_sound_start_3p"			""                                                    >> mp_weapon_%Name%.txt
echo             "burst_or_looping_fire_sound_middle_3p"			""                                                >> mp_weapon_%Name%.txt
echo             "burst_or_looping_fire_sound_end_3p"			""                                                    >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "burst_or_looping_fire_sound_start_npc"			""                                                >> mp_weapon_%Name%.txt
echo             "burst_or_looping_fire_sound_middle_npc"		""                                                    >> mp_weapon_%Name%.txt
echo             "burst_or_looping_fire_sound_end_npc"			""                                                    >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "looping_sounds"								"0"                                                   >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "low_ammo_sound_name_1"                         "R101_LowAmmo_Shot1"                                 >> mp_weapon_%Name%.txt
echo             "low_ammo_sound_name_2"                         "R101_LowAmmo_Shot2"                                 >> mp_weapon_%Name%.txt
echo             "low_ammo_sound_name_3"                         "R101_LowAmmo_Shot3"                                 >> mp_weapon_%Name%.txt
echo             "low_ammo_sound_name_4"                         "R101_LowAmmo_Shot4"                                 >> mp_weapon_%Name%.txt
echo             "low_ammo_sound_name_5"                         "R101_LowAmmo_Shot5"                                 >> mp_weapon_%Name%.txt
echo             "low_ammo_sound_name_6"                         "R101_LowAmmo_Shot6"                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             // behavior                                                                                          >> mp_weapon_%Name%.txt
echo 	        "fire_rate"   					                "3.5"   //"13.5"                                      >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "damage_near_value"   							"35"                                                  >> mp_weapon_%Name%.txt
echo             "damage_far_value"								"35"                                                  >> mp_weapon_%Name%.txt
echo             "damage_very_far_value"							"35"                                              >> mp_weapon_%Name%.txt
echo             "damage_near_value_titanarmor"					"35"                                                  >> mp_weapon_%Name%.txt
echo             "damage_far_value_titanarmor" 					"35"                                                  >> mp_weapon_%Name%.txt
echo             "damage_very_far_value_titanarmor" 				"35"                                              >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "damage_leg_scale"                              "0.9"                                                >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "ammo_per_shot" 				                "2"                                                   >> mp_weapon_%Name%.txt
echo             "ammo_min_to_fire"				                "1"                                                   >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             // viewkick                                                                                          >> mp_weapon_%Name%.txt
echo             "viewkick_pattern"                              "rspn101_highcal"                                    >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "viewkick_spring" 						        "rspn101_highcal_vkp"                                 >> mp_weapon_%Name%.txt
echo             "viewkick_spring_hot"                           "rspn101_highcal_vkp_hot"                            >> mp_weapon_%Name%.txt
echo             "viewkick_spring_cooldown_holdtime"             "0.26"                                               >> mp_weapon_%Name%.txt
echo             "viewkick_spring_cooldown_fadetime"             "0.18"                                               >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "viewkick_scale_valueDecayDelay"                "0.48"                                               >> mp_weapon_%Name%.txt
echo             "viewkick_scale_valueDecayRate"                 "25"                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "viewkick_pitch_base" 							"1.0"                                                 >> mp_weapon_%Name%.txt
echo             "viewkick_pitch_random"   						"1.0"                                                 >> mp_weapon_%Name%.txt
echo             "viewkick_pitch_softScale"						"2.9"                                                 >> mp_weapon_%Name%.txt
echo             "viewkick_pitch_hardScale"						"0.4"                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "viewkick_yaw_base"   							"1.0"                                                 >> mp_weapon_%Name%.txt
echo             "viewkick_yaw_random" 							"1.0"                                                 >> mp_weapon_%Name%.txt
echo             "viewkick_yaw_random_innerexclude"				"0.05"                                                >> mp_weapon_%Name%.txt
echo             "viewkick_yaw_softScale"  						"1.4"                                                 >> mp_weapon_%Name%.txt
echo             "viewkick_yaw_hardScale"  						"0.2"                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "viewkick_roll_base"  	                        "1.85"                                                >> mp_weapon_%Name%.txt
echo             "viewkick_roll_randomMin"                       "-0.2"                                               >> mp_weapon_%Name%.txt
echo             "viewkick_roll_randomMax"                       "0.2"                                                >> mp_weapon_%Name%.txt
echo             "viewkick_roll_softScale"                       "1.1"                                                >> mp_weapon_%Name%.txt
echo             "viewkick_roll_hardScale"                       "0.25"                                               >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "viewkick_hipfire_weaponFraction" 				"0.125"                                               >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "viewmodel_jolt_scale"                          "1.9"           //1.0                                >> mp_weapon_%Name%.txt
echo             "viewmodel_jolt_backwardPerShot"                "-0.65"         //-0.3                               >> mp_weapon_%Name%.txt
echo             "viewmodel_jolt_roll"                           "0 3.9 0.0"     //0 3.5 0                            >> mp_weapon_%Name%.txt
echo             "viewmodel_jolt_side"                           "0 0.065 0"     //0 0.05 0                           >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             // spread                                                                                            >> mp_weapon_%Name%.txt
echo             "spread_stand_hip"								"6.5"   //2.5                                         >> mp_weapon_%Name%.txt
echo             "spread_stand_hip_run"							"8.5"   //5.5                                         >> mp_weapon_%Name%.txt
echo             "spread_stand_hip_sprint"                       "9.5"   //7.0                                        >> mp_weapon_%Name%.txt
echo             "spread_crouch_hip"   							"5.0"   //2.0                                         >> mp_weapon_%Name%.txt
echo             "spread_air_hip"  								"9.5"   //7.0                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "spread_moving_increase_rate" 					"20"    //3                                           >> mp_weapon_%Name%.txt
echo             "spread_moving_decay_rate" 						"25"    //10.5                                    >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "spread_kick_on_fire_stand_hip"   				"0.65"  //0.2                                         >> mp_weapon_%Name%.txt
echo             "spread_kick_on_fire_crouch_hip"  				"0.65"  //0.2                                         >> mp_weapon_%Name%.txt
echo             "spread_kick_on_fire_air_hip" 					"0.65"  //0.2                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "spread_max_kick_stand_hip"   					"9.0"   //2.0                                         >> mp_weapon_%Name%.txt
echo             "spread_max_kick_crouch_hip"  					"6.0"   //1.5                                         >> mp_weapon_%Name%.txt
echo             "spread_max_kick_air_hip" 						"9.0"   //3.0                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo             "spread_decay_delay"  							"0.275" //0.25                                        >> mp_weapon_%Name%.txt
echo             "spread_decay_rate"   							"12"    //10                                          >> mp_weapon_%Name%.txt
echo         }                                                                                                        >> mp_weapon_%Name%.txt
echo // end HAS_HIGHCAL_ROUNDS                                                                                        >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 		barrel_stabilizer_l4_flash_hider                                                                          >> mp_weapon_%Name%.txt
echo 		{                                                                                                         >> mp_weapon_%Name%.txt
echo 			"fx_muzzle_flash_view"		"wpn_muzzleflash_assault_sup_FP"                                          >> mp_weapon_%Name%.txt
echo 			"fx_muzzle_flash_world"		"wpn_muzzleflash_assault_sup"                                             >> mp_weapon_%Name%.txt
echo 		}                                                                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 		bullets_mag_l1                                                                                            >> mp_weapon_%Name%.txt
echo 		{                                                                                                         >> mp_weapon_%Name%.txt
echo 			"ammo_clip_size" 					"20"                                                              >> mp_weapon_%Name%.txt
echo 		}                                                                                                         >> mp_weapon_%Name%.txt
echo 		bullets_mag_l2                                                                                            >> mp_weapon_%Name%.txt
echo 		{                                                                                                         >> mp_weapon_%Name%.txt
echo 			"ammo_clip_size" 					"25"                                                              >> mp_weapon_%Name%.txt
echo 		}                                                                                                         >> mp_weapon_%Name%.txt
echo 		bullets_mag_l3                                                                                            >> mp_weapon_%Name%.txt
echo 		{                                                                                                         >> mp_weapon_%Name%.txt
echo 			"ammo_clip_size" 					"28"                                                              >> mp_weapon_%Name%.txt
echo 		}                                                                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	}                                                                                                             >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"ui1_enable"		"1"                                                                                       >> mp_weapon_%Name%.txt
echo 	"ui1_draw_cloaked"	"1"                                                                                       >> mp_weapon_%Name%.txt
echo 	UiData1                                                                                                       >> mp_weapon_%Name%.txt
echo 	{                                                                                                             >> mp_weapon_%Name%.txt
echo 		"ui"							"ui/r301_reticle"                                                         >> mp_weapon_%Name%.txt
echo 		"mesh"							"models/weapons/attachments/r301_rui_upper"                               >> mp_weapon_%Name%.txt
echo 		Args                                                                                                      >> mp_weapon_%Name%.txt
echo 		{                                                                                                         >> mp_weapon_%Name%.txt
echo 			vis							player_zoomfrac                                                           >> mp_weapon_%Name%.txt
echo 			ammo						weapon_ammo                                                               >> mp_weapon_%Name%.txt
echo 			clipSize					weapon_clipSize                                                           >> mp_weapon_%Name%.txt
echo 		}                                                                                                         >> mp_weapon_%Name%.txt
echo 	}                                                                                                             >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	"ui2_enable"		"1"                                                                                       >> mp_weapon_%Name%.txt
echo 	UiData2                                                                                                       >> mp_weapon_%Name%.txt
echo 	{                                                                                                             >> mp_weapon_%Name%.txt
echo 		"ui"							"ui/r101_ammo_counter"                                                    >> mp_weapon_%Name%.txt
echo 		"mesh"							"models/weapons/attachments/r101_rui_lower"                               >> mp_weapon_%Name%.txt
echo 		Args                                                                                                      >> mp_weapon_%Name%.txt
echo 		{                                                                                                         >> mp_weapon_%Name%.txt
echo 			vis							player_zoomfrac                                                           >> mp_weapon_%Name%.txt
echo 			ammo						weapon_ammo                                                               >> mp_weapon_%Name%.txt
echo 			clipSize					weapon_clipSize                                                           >> mp_weapon_%Name%.txt
echo 		}                                                                                                         >> mp_weapon_%Name%.txt
echo 	}                                                                                                             >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	active_crosshair_count				"1"                                                                       >> mp_weapon_%Name%.txt
echo 	rui_crosshair_index					"0"                                                                       >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 	RUI_CrosshairData                                                                                             >> mp_weapon_%Name%.txt
echo 	{                                                                                                             >> mp_weapon_%Name%.txt
echo 		DefaultArgs                                                                                               >> mp_weapon_%Name%.txt
echo 		{                                                                                                         >> mp_weapon_%Name%.txt
echo 			adjustedSpread				weapon_spread                                                             >> mp_weapon_%Name%.txt
echo 			adsFrac 					player_zoomFrac                                                           >> mp_weapon_%Name%.txt
echo 			isSprinting					player_is_sprinting                                                       >> mp_weapon_%Name%.txt
echo 			isReloading					weapon_is_reloading                                                       >> mp_weapon_%Name%.txt
echo 			teamColor					crosshair_team_color                                                      >> mp_weapon_%Name%.txt
echo 			isAmped						weapon_is_amped                                                           >> mp_weapon_%Name%.txt
echo 			crosshairMovementX          crosshair_movement_x                                                      >> mp_weapon_%Name%.txt
echo 			crosshairMovementY          crosshair_movement_y                                                      >> mp_weapon_%Name%.txt
echo 		}                                                                                                         >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
echo 		Crosshair_1                                                                                               >> mp_weapon_%Name%.txt
echo 		{                                                                                                         >> mp_weapon_%Name%.txt
echo 			"ui"						"ui/crosshair_tri"                                                        >> mp_weapon_%Name%.txt
echo 			"base_spread"				"0.0"                                                                     >> mp_weapon_%Name%.txt
echo 			Args                                                                                                  >> mp_weapon_%Name%.txt
echo 			{                                                                                                     >> mp_weapon_%Name%.txt
echo 				//isFiring				weapon_is_firing                                                          >> mp_weapon_%Name%.txt
echo 			}                                                                                                     >> mp_weapon_%Name%.txt
echo 		}                                                                                                         >> mp_weapon_%Name%.txt
echo 	}                                                                                                             >> mp_weapon_%Name%.txt
echo }                                                                                                                >> mp_weapon_%Name%.txt
echo.                                                                                                                 >> mp_weapon_%Name%.txt
copy mapspawn_and_dev_menu.txt 
cls

echo The Commands For Map Spawn Are	PrecacheWeapon( $"mp_weapon_%Name%" ) >> mapspawn_and_dev_menu.txt
echo The Commands For Dev Menu Are 	SetupDevCommand( "%PrintName%", "give mp_weapon_%Name%" )>> mapspawn_and_dev_menu.txt
echo .>> mapspawn_and_dev_menu.txt
echo The Command For The JANU's Framework is  mp_weapon_%Name% >> mapspawn_and_dev_menu.txt
echo If you use JANU's Framework 2.0 you do not need to map spawn or use the dev menu! >> mapspawn_and_dev_menu.txt
echo. Please wait 10 seconds before proceeding!
PING localhost -n 10 >NUL
move mapspawn_and_dev_menu.txt, mp_weapon_%Name%.txt*.* \Weapons-DevMenu
cls
echo.
echo.
echo Files Created On Your Computer!
echo Please Enjoy Your Scripts!
echo.
echo.
pause

