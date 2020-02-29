var int Mod_SaveOther;
var C_Npc Mod_SaveNpc;
var int Mod_LastStatsChapter;

instance platzhaltermover(zCMover);

FUNC VOID DAUERFUNC_01()
{
	var int concatTextInt;
	var string concatText;
	var int XPOS_XPNEEDED;

	if (hero.attribute[ATR_HITPOINTS] == 0 && C_BodyStateContains(hero, BS_FALL)) {
		ExitSession();
	};

	LogState_PosY = 0;

	if (hero.level == 0)
	{
		hero.exp_next = 500;
	};

	if (Mod_SaveOther == 0)
	{
		Npc_GetTarget(hero);

		if (Hlp_IsValidNpc(other))
		{
			if (Npc_IsInState(other, ZS_Talk))
			{
				Mod_SaveOther = 1;

				Mod_SaveNpc = Hlp_GetNpc(other);
			};
		};
	};

	if (Mod_SaveOther == 1)
	{
		if (Hlp_IsValidNpc(Mod_SaveNpc))
		{
			if (!Npc_IsInState(Mod_SaveNpc, ZS_Talk))
			{
				Mod_SaveOther = 0;

				B_SetAivar(hero, AIV_INVINCIBLE, FALSE);
			};
		}
		else
		{
			Mod_SaveOther = 0;

			B_SetAivar(hero, AIV_INVINCIBLE, FALSE);
		};
	};

	if (Mod_StartTimer == 1)
	{
		if (FrameCounter > 10)
		{
			TimeCounter_Fog += 1;
		};
	};

	FrameCounter = 0;

	if (TimeCounter_Real%30 == 0)
	&& (FALSE)
	{
		var string loadText;
		var int loadRnd;

		loadRnd = Hlp_Random(2)+1;

		if (loadRnd < 10)
		{
			loadText = "XR0";
		}
		else
		{
			loadText = "XR";
		};

		loadText = ConcatStrings(loadText, IntToString(loadRnd));

		SetLoadTexNameTo_XXXXing (loadText);
	};

	// Wenn man, was �u�erst fies ist, die ganze Zeit mit Marvin rumfliegt, dann gibt's Muskelkater

	if (MaxF8Time >= 1800)
	{
		if (FirstF8Malus == FALSE)
		{
			FirstF8Malus = TRUE;

			PrintScreen	("You're so full of flies!", -1, -1, FONT_SCREEN, 5);
		};

		hero.attribute[ATR_STRENGTH] = 0;
		hero.attribute[ATR_DEXTERITY] = 0;
		hero.attribute[ATR_MANA] = 0;
		hero.attribute[ATR_MANA_MAX] = 0;
		hero.attribute[ATR_HITPOINTS] = 1;
		hero.attribute[ATR_HITPOINTS_MAX] = 1;
	};

	// Einstellungen aus ini aktualisieren

	if (Mod_Schwierigkeit != 4) // bei Alternativ kann nicht w�hrend des Spiels ge�ndert werden
	{
		if (STR_ToInt(MEM_GetGothOpt("XERES", "difficulty")) != 3)
		|| (Mod_Schwierigkeit == 0)
		{
			Mod_Schwierigkeit = STR_ToInt(MEM_GetGothOpt("XERES", "difficulty")) + 1;

			if (Mod_Schwierigkeit == 4)
			{
				HP_PER_LEVEL = 18;
			}
			else
			{
				HP_PER_LEVEL = 12;
			};
			
			if (Mod_Schwierigkeit < SomeUnimportantRandomValue - 1 || SomeUnimportantRandomValue == 0) {
				SomeUnimportantRandomValue = Mod_Schwierigkeit + 1;
			};
		};
	};

	TimeSwitch = STR_ToInt(MEM_GetGothOpt("XERES", "spielzeit"));

	if (TimeSwitch != TimeAn)
	{
		if (TimeSwitch == 1)
		{
			if (!Hlp_IsValidHandle(View_Time))
			{
				var int length; length = Print_LongestLineLength("00:00:00", FONT_Screen);
				var int height; height = Print_GetFontHeight(FONT_Screen);
				View_Time = View_CreatePxl      (Print_Screen[PS_X] - length - 20, 20, Print_Screen[PS_X] - 10, 30 + height);
			};

			View_Open	(View_Time);
		}
		else
		{
			if (Hlp_IsValidHandle(View_Time))
			{
				View_Close	(View_Time);
				View_Time = 0;
			};
		};

		TimeAn = TimeSwitch;
	};

	Mod_Esssystem = STR_ToInt(MEM_GetGothOpt("XERES", "esssystem"));
	Mod_AutoInventar = STR_ToInt(MEM_GetGothOpt("XERES", "inventar"));
	Mod_EXP_Anzeige = STR_ToInt(MEM_GetGothOpt("XERES", "erfahrung"));
	Mod_Autosave = STR_ToInt(MEM_GetGothOpt("XERES", "autosave"));
	Mod_Balken = STR_ToInt(MEM_GetGothOpt("XERES", "balken"));
	Mod_Maussteuerung = STR_ToInt(MEM_GetGothOpt("XERES", "enableMouse"));
	Mod_Bloodsplats = STR_ToInt(MEM_GetGothOpt("XERES", "bloodsplats"));
	Mod_PrismaKey = MEM_GetGothOpt("KEYS", "keyUsePrisma");
	Mod_ActionKey = MEM_GetGothOpt("KEYS", "keyAction");
	Mod_Respawn = STR_ToInt(MEM_GetGothOpt("XERES", "respawn"));

	if (Mod_Maussteuerung == 0)
	{
		Cursor_NoEngine = 1;
	}
	else
	{
		Cursor_NoEngine = 0;
	};

	// Mord erst nach ein paar Sekunden wieder registrieren f�r Beliar-Gesinnung

	if (Mod_MordCounter > 0)
	{
		Mod_MordCounter -= 1;
	};

	// Gildennamen aktualisieren

	SetGuild();

	// Neue Zauber

	NewMagic();
	
	if (CurrentLevel == NEWWORLD_ZEN)
	{
		if (Npc_GetDistToWP(hero, "WP_CITY_BELIARSTATUE") < 500)
		{
			BeliarSchreibStadtPlus = 1;
		}
		else
		{
			BeliarSchreibStadtPlus = 0;
		};

		if (Hlp_IsValidNpc(Schattenlord_542_Urnol))
		{
			if (Mod_UrnolBS == TRUE)
			&& (Npc_GetDistToWP(Schattenlord_542_Urnol, "TOT") < 1000)
			{
				Mod_UrnolBS = FALSE;

				Wld_StopEffect	("DEMENTOR_FX");
			};
		};

		// Dunkler Pilger - First Meeting

		if (Hlp_IsValidNpc(Mod_7036_NONE_Pilger_NW))
		{
			if ((Npc_GetDistToWP(hero, "NW_XARDAS_TOWER_05") < 500)
			|| (Npc_GetDistToNpc(hero, Mod_7036_NONE_Pilger_NW) < 700))
			&& (Mod_DunklerPilger == 0)
			{
				if (Mod_DunklerPilger_Counter == 0)
				{
					AI_GotoWP	(hero, "NW_XARDAS_TOWER_05");

					Wld_SendTrigger	("EVT_KAMERA_PILGER_01");

					CutsceneAn = TRUE;

					Wld_PlayEffect("DEMENTOR_FX", Mod_7036_NONE_Pilger_NW, Mod_7036_NONE_Pilger_NW, 0, 0, 0, FALSE );
					Wld_PlayEffect("spellFX_Fear",  Mod_7036_NONE_Pilger_NW, Mod_7036_NONE_Pilger_NW, 0, 0, 0, FALSE );

					AI_TurnToNpc	(hero, Mod_7036_NONE_Pilger_NW);
					AI_TurnToNpc	(Mod_7036_NONE_Pilger_NW, hero);
				};

				if (Mod_DunklerPilger_Counter == 5)
				{
					B_StartOtherRoutine	(Mod_7036_NONE_Pilger_NW, "TOCAVALORN");

					Wld_StopEffect	("DEMENTOR_FX");

					Log_CreateTopic	(TOPIC_MOD_DUNKLERPILGER, LOG_MISSION);
					B_SetTopicStatus	(TOPIC_MOD_DUNKLERPILGER, LOG_RUNNING);
					B_LogEntry	(TOPIC_MOD_DUNKLERPILGER, "What's that strange dark figure?");
				};

				if (Mod_DunklerPilger_Counter == 10)
				{
					Wld_StopEffect	("DEMENTOR_FX");

					Mod_DunklerPilger = 1;

					CutsceneAn = FALSE;

					Wld_InsertNpc	(Gobbo_Skeleton_Weg, "NW_XARDAS_GOBBO_02");
					Wld_InsertNpc	(Gobbo_Skeleton_Weg, "NW_XARDAS_GOBBO_02");
					Wld_InsertNpc	(Gobbo_Skeleton_Weg, "NW_XARDAS_GOBBO_02");
				};

				Mod_DunklerPilger_Counter += 1;
			};
		};

		if (Hlp_IsValidNpc(Mod_7036_NONE_Pilger_NW))
		{
			if (Npc_GetDistToWP(Mod_7036_NONE_Pilger_NW, "TOT") > 1000)
			&& (Mod_DunklerPilger == 1)
			&& ((Npc_GetDistToNpc(Mod_7036_NONE_Pilger_NW, hero) > 3500)
			|| (Npc_GetDistToWP(Mod_7036_NONE_Pilger_NW, "NW_XARDAS_GOBBO_01") < 500))
			{
				Npc_ClearAIQueue (Mod_7036_NONE_Pilger_NW);			
				AI_StandUp	(Mod_7036_NONE_Pilger_NW);

				AI_Teleport	(Mod_7036_NONE_Pilger_NW, "TOT");
				B_StartOtherRoutine	(Mod_7036_NONE_Pilger_NW, "TOT");
			
				Mod_DunklerPilger = 2;

				Wld_StopEffect	("DEMENTOR_FX");
			};
		};

		if (Hlp_IsValidNpc(Mod_7036_NONE_Pilger_NW))
		{
			if (Npc_GetDistToWP(Mod_7036_NONE_Pilger_NW, "TOT") > 1000)
			&& (Npc_KnowsInfo(hero, Info_Mod_Urnol_WerBistdu))
			&& (!Npc_IsInState(Mod_7036_NONE_Pilger_NW, ZS_Talk))
			{
				Npc_ClearAIQueue (Mod_7036_NONE_Pilger_NW);			
				AI_StandUp	(Mod_7036_NONE_Pilger_NW);

				AI_Teleport	(Mod_7036_NONE_Pilger_NW, "TOT");
				B_StartOtherRoutine	(Mod_7036_NONE_Pilger_NW, "TOT");
			
				Mod_DunklerPilger = 3;

				Wld_StopEffect	("DEMENTOR_FX");
			};
		};

		if (Hlp_IsValidNpc(Mod_7036_NONE_Pilger_NW))
		{
			if (Npc_GetDistToWP(Mod_7036_NONE_Pilger_NW, "TOT") <= 1000)
			&& (Mod_DunklerPilger == 1)
			{
				Mod_DunklerPilger = 2;

				Wld_StopEffect	("DEMENTOR_FX");
			};
		};

		if (Hlp_IsValidNpc(Mod_1942_Ryan_NW))
		{
			if (!Npc_IsDead(Mod_1942_Ryan_NW))
			&& (Npc_KnowsInfo(hero, Info_Mod_Ryan_Hi))
			{
				if (C_ScHasReadiedDreiGoetterStab())
				{
					Mod_1942_Ryan_NW.flags = 0;
				}
				else
				{
					Mod_1942_Ryan_NW.flags = 2;
				};
			};
		};

		// Untier, der Fleischfresser

		if (Hlp_IsValidNpc(Bloodhound_Untier))
		{
			if (!Npc_IsDead(Bloodhound_Untier))
			{
				Npc_PerceiveAll	(Bloodhound_Untier);

				if (Wld_DetectItem (Bloodhound_Untier, ITEM_KAT_FOOD))
				{
					if (Hlp_IsValidItem(item))
					{
						if (Hlp_IsItem(item, ItFoMuttonZombie) == TRUE)
						{
							if (Mod_untier_Frisst == FALSE)
							{
								Npc_ClearAIQueue 	(Bloodhound_Untier);
								B_ClearPerceptions 	(Bloodhound_Untier);

								AI_GotoItem	(Bloodhound_Untier, item);

								Mod_Untier_Frisst = TRUE;
							};

							if (Npc_GetDistToItem(Bloodhound_Untier, ItFoMuttonZombie) < 300)
							&& (Mod_Untier_Frisst == 1)
							{
								AI_PlayAni (Bloodhound_Untier, "T_STAND_2_EAT");

								Mod_Untier_Frisst = 2;
								Mod_Untier_Frisst_Counter = 0;
							};

							if (Npc_GetDistToItem(Bloodhound_Untier, ItFoMuttonZombie) < 300)
							&& (Mod_Untier_Frisst == 2)
							&& (Mod_Untier_Frisst_Counter >= 5)
							{
								Mod_Untier_Frisst = FALSE;
								Mod_Untier_Frisst_Counter = 0;

								Wld_RemoveItem	(ItFoMuttonZombie);
								AI_PlayAni (Bloodhound_Untier, "T_EAT_2_STAND");

								if ((Bloodhound_Untier.attribute[ATR_HITPOINTS] - (Bloodhound_Untier.attribute[ATR_HITPOINTS_MAX]/3)) > 0)
								{
									Bloodhound_Untier.attribute[ATR_HITPOINTS] -= (Bloodhound_Untier.attribute[ATR_HITPOINTS_MAX]/3)+1;

									Bloodhound_Untier.aivar[AIV_Damage] = Bloodhound_Untier.attribute[ATR_HITPOINTS];
								}
								else
								{
									Bloodhound_Untier.attribute[ATR_HITPOINTS] = 1;

									Bloodhound_Untier.aivar[AIV_Damage] = 1;
								};

								AI_StandUP(Bloodhound_Untier);
								Npc_ClearAIQueue 	(Bloodhound_Untier);
								B_ClearPerceptions 	(Bloodhound_Untier);

								Npc_PerceiveAll	(Bloodhound_Untier);

								AI_StartState	(self, ZS_MM_RTN_Roam, 0, "");
								Perception_Set_Monster_Rtn();

								Npc_PerceiveAll	(Bloodhound_Untier);
							};

							if (Mod_Untier_Frisst == 2)
							{
								Mod_Untier_Frisst_Counter += 1;
							};
						};
					};
				};
			};
		};

		if (Wld_GetDay()-2 > Mod_Wolf_MinecrawlerRuestung_Day)
		&& (Mod_Wolf_MinecrawlerRuestung == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Wolf_MinecrawlerRuestung2))
		{
			Mod_Wolf_MinecrawlerRuestung = 1;

			CreateInvItems	(Mod_798_SLD_Wolf_NW, ITAR_DJG_Crawler, 1);
			AI_UnEquipArmor	(Mod_798_SLD_Wolf_NW);
			AI_EquipArmor	(Mod_798_SLD_Wolf_NW, ITAR_DJG_Crawler);
		};

		// Magier usw. gehen auf die Ritualinsel

		if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Trimedron))
		&& (AUFSUCHENACHSEELENSTEINE == 1)
		&& (Npc_GetDistToWP(hero, "WP_KLOSTER_KELLER_RAT_XARDAS") > 2000)
		&& ((Mod_Gilde == 3)
		|| (Mod_Gilde == 5)
		|| (Mod_Gilde == 8)
		|| (Mod_Gilde == 11)
		|| (Mod_Gilde == 14)
		|| (Mod_Gilde == 16)
		|| (Mod_Gilde == 18))
		&& (Mod_Irdorath == 1)
		{
			if (!Npc_IsInState(Mod_513_DMB_Xardas_NW, ZS_Talk))
			&& (!Npc_IsInState(Mod_592_PAL_Hagen_NW, ZS_Talk))
			&& (!Npc_IsInState(Mod_527_SLD_Torlof_NW, ZS_Talk))
			&& (!Npc_IsInState(Mod_674_SLD_Lee_NW, ZS_Talk))
			&& (!Npc_IsInState(Mod_551_KDF_Pyrokar_NW, ZS_Talk))
			&& (!Npc_IsInState(Mod_774_KDW_Saturas_NW, ZS_Talk))
			&& (!Npc_IsInState(Mod_553_KDF_Ulthar_NW, ZS_Talk))
			&& (!Npc_IsInState(Mod_524_KDW_Vatras_NW, ZS_Talk))
			&& (!Npc_IsInState(Mod_552_KDF_Serpentes_NW, ZS_Talk)) {
				B_StartOtherRoutine	(Mod_513_DMB_Xardas_NW, "TOT");
				B_StartOtherRoutine	(Mod_592_PAL_Hagen_NW, "TOT");
				B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "TOT");
				B_StartOtherRoutine	(Mod_674_SLD_Lee_NW, "TOT");
				B_StartOtherRoutine	(Mod_551_KDF_Pyrokar_NW, "TOT");
				B_StartOtherRoutine	(Mod_774_KDW_Saturas_NW, "TOT");
				B_StartOtherRoutine	(Mod_553_KDF_Ulthar_NW, "TOT");
				B_StartOtherRoutine	(Mod_524_KDW_Vatras_NW, "TOT");
				B_StartOtherRoutine	(Mod_552_KDF_Serpentes_NW, "TOT");

				AUFSUCHENACHSEELENSTEINE = 2;
			};
		};

		if (LoreRelendel == 2)
		{
			LoreRelendel = 3;
		};

		if (LoreKhorinis == 1)
		{
			Mod_LoreCounter += 1;

			if (Mod_LoreCounter == 8)
			{
				Mod_LoreCounter = 0;

				LOREKHOS();
			};
		};

		if (LoreKhorinis == 3)
		{
			Wld_SendTrigger	("EVT_LORENFAHRT");

			LoreKhorinis = 0;
		};

		// Spezielle Cutscenes

		if (Hlp_IsValidNpc(Mod_1076_VLK_Wirt_NW))
		{
			if (Mod_Wirt_Freibier == 2)
			&& (!Npc_IsInState(Mod_1076_VLK_Wirt_NW, ZS_Talk))
			{
				FreibierScene();
			};
		};

		if (Mod_LobartAlwin == 1)
		&& (Npc_GetDistToWP(hero, "WP_ALWIN_SEQUENZ") < 1000)
		{
			LobartAlwinScene();
		};

		// Alwin steht auf, wenn Lobart abhaut

		if (Hlp_IsValidNpc(Mod_910_BAU_Lobart_NW))
		{
			if (Mod_LobartAlwin == 3)
			&& (!Npc_IsInState(Mod_910_BAU_Lobart_NW, ZS_Talk))
			{
				Mod_LobartAlwin = 4;

				B_StartOtherRoutine	(Mod_560_NONE_Alwin_NW, "GROGGY");
			};
		};


		if (Hlp_IsValidNpc(Mod_910_BAU_Lobart_NW))
		{
			if (Mod_LobartAlwin == 5)
			&& (!Npc_IsInState(Mod_910_BAU_Lobart_NW, ZS_Talk))
			{
				Mod_LobartAlwin = 6;

				B_StartOtherRoutine	(Mod_560_NONE_Alwin_NW, "START");
			};
		};

		// Banditen�berfall, wenn noch min einer der Banditen lebt

		if (Kapitel >= 3)
		&& (Mod_Zuris_Ueberfall == 0)
		{
			if (Hlp_IsValidNpc(Mod_7604_STT_Schatten_NW))
			|| (Hlp_IsValidNpc(Mod_7605_STT_Schatten_NW))
			|| (Hlp_IsValidNpc(Mod_7606_STT_Schatten_NW))
			|| (Hlp_IsValidNpc(Mod_7600_GRD_Scorpio_NW))
			|| (Hlp_IsValidNpc(Mod_7601_GRD_Gardist_NW))
			|| (Hlp_IsValidNpc(Mod_7602_GRD_Gardist_NW))
			|| (Hlp_IsValidNpc(Mod_7603_GRD_Gardist_NW))
			|| (Hlp_IsValidNpc(Mod_7607_STT_Schatten_NW))
			|| (Hlp_IsValidNpc(Mod_7608_STT_Schatten_NW))
			|| (Hlp_IsValidNpc(Mod_7609_STT_Schatten_NW))
			{
				B_StartOtherRoutine	(Mod_7604_STT_Schatten_NW,	"ZURIS");
				B_StartOtherRoutine	(Mod_7605_STT_Schatten_NW,	"ZURIS");
				B_StartOtherRoutine	(Mod_7606_STT_Schatten_NW,	"ZURIS");
				B_StartOtherRoutine	(Mod_7607_STT_Schatten_NW,	"ZURIS");
				B_StartOtherRoutine	(Mod_7608_STT_Schatten_NW,	"ZURIS");
				B_StartOtherRoutine	(Mod_7609_STT_Schatten_NW,	"ZURIS");
				B_StartOtherRoutine	(Mod_7600_GRD_Scorpio_NW,	"ZURIS");
				B_StartOtherRoutine	(Mod_7601_GRD_Gardist_NW,	"ZURIS");
				B_StartOtherRoutine	(Mod_7602_GRD_Gardist_NW,	"ZURIS");
				B_StartOtherRoutine	(Mod_7603_GRD_Gardist_NW,	"ZURIS");

				B_StartOtherRoutine	(Mod_757_NONE_Zuris_NW,	"UEBERFALL");
				CreateInvItems(Mod_757_NONE_Zuris_NW, ItPo_Health_Addon_04, 1);
			};

			Mod_Zuris_Ueberfall = 1;
		};

		// Nach Scavengerdung ein paar S�ldner flachlegen

		if (Npc_KnowsInfo(hero, PC_Herd_Scavengerdung))
		&& (Mod_Scavengerdung == 0)
		&& (Mod_Scavengerdung_Tag < Wld_GetDay())
		{
			Mod_Scavengerdung_Tag = Wld_GetDay();

			B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "DUNG");
			B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "DUNG");
			B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "DUNG");

			Mod_Scavengerdung = 1;
		};

		if (Mod_Scavengerdung == 1)
		&& (Mod_Scavengerdung_Tag+1 < Wld_GetDay())
		{
			Mod_Scavengerdung = 2;

			B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "START");
			B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "START");
			B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "START");
		};

		// Ritter-Cutscene

		if (Mod_RitterScene == 1)
		{
			RitterScene();
		};

		if (Npc_GetDistToWP(hero, "WP_RITTERSCENE_HERO") < 600)
		&& (Mod_RitterScene == 0)
		&& (B_GetAivar(hero, AIV_INVINCIBLE) == FALSE)
		{
			Mod_RitterScene = 1;
		};

		// Lord Hagen f�llt in Ohnmacht

		if (Mod_HagenKOScene == 1)
		{
			HagenKOScene();
		};

		if (Mod_HagenKOScene == 0)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
			&& (!Npc_IsInState(Mod_592_PAL_Hagen_NW, ZS_Talk))
			{
				Mod_HagenKOScene = 1;
			};
		};

		if (Mod_Irdorath == 1)
		&& (Mod_Banditen_Irdorath_NW == 0)
		{
			Mod_Banditen_Irdorath_NW = 1;

			Wld_InsertNpc	(Mod_7806_BDT_Dexter_NW, "TAVERNE");

			if (!Hlp_IsValidNpc(Mod_1926_BDT_Esteban_NW))
			{
				Wld_InsertNpc	(Mod_1926_BDT_Esteban_NW, "TAVERNE");
			};

			B_StartOtherRoutine	(Mod_1926_BDT_Esteban_NW, "CASTLEMINE");

			if (!Hlp_IsValidNpc(Mod_1928_BDT_Morgahard_NW))
			{
				Wld_InsertNpc	(Mod_1928_BDT_Morgahard_NW, "TAVERNE");
			};

			B_StartOtherRoutine	(Mod_1928_BDT_Morgahard_NW, "CASTLEMINE");

			// ToDo: Restliche Banditen umziehen lassen
		};

		if (Mod_Banditen_Mine == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Dexter_NW_Minenzugang))
		&& (Npc_GetDistToWP(hero, "CASTLEMINE") > 10000)
		{
			Mod_Banditen_Mine = 1;

			// ToDo: Banditen-Sch�rfer sch�rfen lassen

			MEM_RemoveVob	("EVT_MINENEINGANG_CASTLE");
		};

		if (Mod_Banditen_Mine == 1)
		&& (Npc_GetDistToWP(hero, "CASTLEMINE") > 10000)
		&& (Wld_GetDay()-2 > Mod_Banditen_Mine_Tag)
		{
			Mod_Banditen_Mine = 2;

			AI_UnEquipArmor	(Mod_7806_BDT_Dexter_NW);
			CreateInvItems	(Mod_7806_BDT_Dexter_NW, ItAr_Governor, 1);
			AI_EquipArmor	(Mod_7806_BDT_Dexter_NW, ItAr_Governor);

			AI_UnEquipArmor	(Mod_1926_BDT_Esteban_NW);
			CreateInvItems	(Mod_1926_BDT_Esteban_NW, ItAr_Governor, 1);
			AI_EquipArmor	(Mod_1926_BDT_Esteban_NW, ItAr_Governor);

			AI_UnEquipArmor	(Mod_1928_BDT_Morgahard_NW);
			CreateInvItems	(Mod_1928_BDT_Morgahard_NW, ItAr_Governor, 1);
			AI_EquipArmor	(Mod_1928_BDT_Morgahard_NW, ItAr_Governor);

			B_StartOtherRoutine	(Mod_7115_NONE_Nadja_NW, "DEXTER");
		};
	};

	// Spezielle Zust�nde: Hunger, Betrunken, Erk�ltung, Vergiftung

	Zustaende();

	// Besondere Waffen testen

	Waffencheck();

	// F�r Regenflucht

	Regencheck();

	// Bonus zu bestimmten Zeiten je nach Gesinnung

	Goetterbonus();	

	// Aufnahmequests von Anfang an Durchlaufen lassen

	Aufnahmequests();

	// Altes Lager

	if (Gardist_Dabei == TRUE)
	{
		GILDENSTORY_AL();
	};

	// K�nigliche Garde

	if (KG_Dabei == TRUE)
	{
		GILDENSTORY_KG();
	};

	// Banditenstory

	if (Banditen_Dabei == TRUE)
	{
		GILDENSTORY_BANDIT();
	};

	// Assassinenstory

	if (Assassinen_Dabei == TRUE)
	{
		GILDENSTORY_ASS();
	};

	// Sumpflager

	if (Templer_Dabei == TRUE)
	|| (Guru_Dabei == TRUE)
	{
		GILDENSTORY_SL();
	};

	// Beliarstory

	if (hero.guild == GIL_KDF)
	{
		GILDENSTORY_BELIAR();
	};

	// Piratenstory

	if (Piraten_Dabei == TRUE)
	{
		GILDENSTORY_PIR();
	};

	// NL-story

	if (hero.guild == GIL_MIL)
	{
		GILDENSTORY_NL();
	};

	// WM-Story

	if (hero.guild == GIL_NOV)
	{
		GILDENSTORY_ADANOS();
	};

	// Bonuslevel

	if (CurrentLevel == BERGWELT_ZEN)
	{
		if (Npc_HasItems(hero, ItAr_Sleepermask) == 1)
		&& (Mod_Sleepermask_Ausgang == 0)
		{
			Mod_Sleepermask_Ausgang = 1;

			Wld_SendTrigger	("EVT_BW_AUSGANG");
		};
	};

	// Pala-Story

	if (hero.guild == GIL_PAL)
	{
		GILDENSTORY_PAL();
	};
	
	// FM-Story
	
	if (hero.guild == GIL_VLK)
	{
		GILDENSTORY_FM();
	};

	// J�ger-Story

	if (J�ger_Dabei == 1)
	{
		GILDENSTORY_WALDI();
	};

	// Dieb-Story

	if (Diebe_Dabei == 1)
	{
		GILDENSTORY_DIEBE();
	};

	// Verwandlungsmagier-Story

	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Aufgabe))
	{
		GILDENSTORY_VMG();
	};
	
	// Perks

	PerkSchleife();

	// Anfang im Tempel, 1. Monolog

	if (CurrentLevel == ORCTEMPEL_ZEN)
	{
		if(AnfangsDialog == FALSE)
		{
			if (TimeCounter_Real == 1)
			{
				Wld_SendTrigger	("EVT_STARTKAMERA");

				CutsceneAn = TRUE;
			};

			if (TimeCounter_Real == 5)
			{
				AI_StandUP	(hero);

				AI_Output(hero, NULL, "Info_Mod_Hero_Anfangsdialog_15_00"); //What has happened? The falling rocks are the last thing I remember.
			};

			if (TimeCounter_Real == 15)
			{
				AI_StandUP	(hero);

				AI_Output(hero, NULL, "Info_Mod_Hero_Anfangsdialog_15_01"); //I must have been unconscious for some time. But why does everything feel so numb, no pain at all.
			};

			if (TimeCounter_Real == 25)
			{
				AI_StandUP	(hero);

				AI_Output(hero, NULL, "Info_Mod_Hero_Anfangsdialog_15_02"); //Damn it, my.... my body seems to decay.
			};

			if (TimeCounter_Real == 35)
			{
				AI_StandUP	(hero);

				AI_Output(hero, NULL, "Info_Mod_Hero_Anfangsdialog_15_03"); //l-- I must be undead.
			};

			if (TimeCounter_Real == 45)
			{
				Log_CreateTopic	(TOPIC_MOD_ANFANG, LOG_MISSION);
				B_SetTopicStatus	(TOPIC_MOD_ANFANG, LOG_RUNNING);
				B_LogEntry	(TOPIC_MOD_ANFANG, "Shit, I was apparently killed in the temple of the sleeper by falling debris and am now undead. What next?");

				AnfangsDialog = TRUE;

				CutsceneAn = FALSE;
			};
		};

		// Erzr�stung muss angezogen bleiben

		if (HeroIstKeinZombie == FALSE)
		{
			var C_ITEM arm;

			arm = Npc_GetEquippedArmor(hero);

			if (Hlp_IsItem(arm, Erzr�stung) == FALSE)
			{
				AI_EquipBestArmor	(hero);

				Print	("I can't take off my armor. It sticks to me like a second skin.");
			};
		};
		
		if (Mod_ChangeCollision_Temple > 0) {
			Mod_ChangeCollision_Temple -= 1;
			if (Mod_ChangeCollision_Temple == 1) {
				var int wallPtr; wallPtr = MEM_SearchVobByName ("TEMPELWALLCLIPPINGBUG");
				var zCVob buggyWall; buggyWall = MEM_PtrToInst(wallPtr);
				buggyWall.bitfield[0] = buggyWall.bitfield[0] | zCVob_bitfield0_collDetectionDynamic;
			};
		};
	};

	if (CurrentLevel == MINENTAL_ZEN)
	{
		// Kampf gegen Xeres 1

		if (Hlp_IsValidNpc(Xeres_01))
		{
			if (Mod_Xeres_Kampf01 == 1)
			{
				Mod_Xeres_Kampf01_Counter += 1;

				if (Mod_Xeres_Kampf01_Counter == 4)
				{
					Mod_Xeres_Kampf01 = 2;

					Wld_StopEffect	("DEMENTOR_FX");
					Wld_StopEffect	("spellFX_Fear");

					AI_Teleport	(Mod_680_DMB_Xardas_MT, "LOCATION_19_03_PATH_RUIN7");

					B_StartOtherRoutine	(Mod_680_DMB_Xardas_MT, "START");

					AI_Teleport	(Mod_680_DMB_Xardas_MT, "LOCATION_19_03_PATH_RUIN7");
					AI_Teleport	(hero, "LOCATION_19_03_PATH_RUIN7");
				};
			};

			if (Npc_KnowsInfo(hero, Info_Mod_Xeres_Hi))
			&& (!Npc_IsInState(Xeres_01, ZS_Attack))
			&& (C_NpcIsDown(hero))
			&& (Mod_Xeres_Kampf01 == 0)
			{		
				Wld_PlayEffect("spellFX_Icewave_Fake",  hero, hero, 0, 0, 0, FALSE );

				if (Mod_XR_Xardas_MT == 0)
				{
					Wld_InsertNpc	(Mod_680_DMB_Xardas_MT,	"WP_ORC_XERES_SIT_THRONE");

					Mod_XR_Xardas_MT = 1;
				};

				Wld_StopEffect	("DEMENTOR_FX");
				Wld_StopEffect	("spellFX_Fear");

				Mod_Xeres_Kampf01 = 1;
			};
		};

		if (Mod_Herek_Lebt == 0)
		&& (Kapitel < 3)
		{
			if (Npc_IsDead(Mod_802_STT_Herek_MT))
			{
				Mod_Herek_Lebt = -1;
			};
		};

		if (Mod_Herek_Lebt == 0)
		&& (Kapitel >= 3)
		{
			Mod_Herek_Lebt = 1;

			B_RemoveNpc	(Mod_802_STT_Herek_MT);
		};

		if (Mod_Mud_Lebt == 0)
		{
			if (Npc_IsDead(Mod_803_STT_Mud_MT))
			{
				Mod_Mud_Lebt = 1;
			};
		};

		if (Mod_Irdorath == 1)
		&& (Mod_Banditen_Irdorath_MT == 0)
		{
			Mod_Banditen_Irdorath_MT = 1;

			B_RemoveNpc	(Mod_761_BDT_Dexter_MT);
			B_RemoveNpc	(Mod_955_BDT_Juan_MT);
			B_RemoveNpc	(Mod_957_BDT_Logan_MT);
			B_RemoveNpc	(Mod_961_BDT_Sancho_MT);
			B_RemoveNpc	(Mod_790_BDT_Morgahard_MT);
			B_RemoveNpc	(Mod_958_BDT_Miguel_MT);
			B_RemoveNpc	(Mod_948_BDT_Esteban_MT);
			B_RemoveNpc	(Mod_4072_BDT_Bandit_MT);
			B_RemoveNpc	(Mod_4073_BDT_Bandit_MT);
			B_RemoveNpc	(Mod_7022_BDT_Oschust_MT);
			B_RemoveNpc	(Mod_7023_BDT_Quentin_MT);
			B_RemoveNpc	(Mod_4074_BDT_Bandit_MT);

			Wld_InsertNpc	(Monster_11076_Skelett_MT, "OC1");
			Wld_InsertNpc	(Monster_11077_Skelett_MT, "OC1");
			Wld_InsertNpc	(Monster_11078_Skelett_MT, "OC1");

			Wld_InsertNpc	(Mod_7805_BlutkultKrieger_MT, "OC1");
		};
	};

	// Bugfix: Nach Ritual G�tterwaffen weg

	if (CurrentLevel == GDG_WORLD_ZEN)
	{
		if (Goetterwaffen_Jetzt_Weg == 1)
		{
			AI_RemoveWeapon	(Mod_6002_KDF_Pyrokar_GDG);

			AI_UnequipWeapons	(Mod_6002_KDF_Pyrokar_GDG);

			Npc_RemoveInvItems	(Mod_6002_KDF_Pyrokar_GDG, Holy_Hammer_MIS, 10);

			AI_EquipBestMeleeWeapon	(Mod_6002_KDF_Pyrokar_GDG);

			AI_RemoveWeapon	(Mod_6003_KDW_Saturas_GDG);

			AI_UnequipWeapons	(Mod_6003_KDW_Saturas_GDG);

			Npc_RemoveInvItems	(Mod_6003_KDW_Saturas_GDG, ItMw_Adanos_Stab_Magieteil, 10);

			AI_EquipBestMeleeWeapon	(Mod_6003_KDW_Saturas_GDG);

			AI_RemoveWeapon	(Mod_843_DMB_Xardas_GDG);

			AI_UnequipWeapons	(Mod_843_DMB_Xardas_GDG);

			Npc_RemoveInvItems	(Mod_843_DMB_Xardas_GDG, ItMw_BeliarWeapon_2H_01, 10);

			AI_EquipBestMeleeWeapon	(Mod_843_DMB_Xardas_GDG);

			Goetterwaffen_Jetzt_Weg = 2;
		};
	};

	if (Mod_Zufallsdrink_Intus == TRUE)
	{
		Mod_ZufallsDrink_Counter += 1;

		if (Mod_ZufallsDrink_Counter == 600)
		{
			Mod_Zufallsdrink_Intus = FALSE;

			if (Mod_Zufallsdrink_Att == ATR_DEXTERITY)
			{
				hero.attribute[ATR_DEXTERITY] -= 10;
			}
			else if (Mod_Zufallsdrink_Att == ATR_STRENGTH)
			{
				hero.attribute[ATR_STRENGTH] -= 10;
			}
			else if (Mod_Zufallsdrink_Att == ATR_MANA_MAX)
			{
				hero.attribute[ATR_MANA_MAX] -= 10;
			}
			else if (Mod_Zufallsdrink_Att == ATR_HITPOINTS_MAX)
			{
				hero.attribute[ATR_HITPOINTS_MAX] -= 10;
			};

			Mod_ZufallsDrink_Counter = 0;

			Mod_Zufallsdrink_Att = 0;

			Print ("The effect of the potion of chance is over!");
		};
	};

	if (Fleischwanzen_Zertrampelt == 1)
	&& (Fleischwanzen_Nachricht == 0)
	{
		Fleischwanzen_Nachricht = 1;

		AI_StandUp(hero);

		AI_Output(hero, NULL, "Info_Mod_Hero_Fleischwanze_15_00"); //Yuck!
	};

	if (Fleischwanzen_Zertrampelt == 20)
	&& (Fleischwanzen_Nachricht == 1)
	{
		Fleischwanzen_Nachricht = 2;

		AI_StandUp(hero);

		AI_Output(hero, NULL, "Info_Mod_Hero_Fleischwanze_15_01"); //Can I get that out?
	};

	if (Fleischwanzen_Zertrampelt == 40)
	&& (Fleischwanzen_Nachricht == 2)
	{
		Fleischwanzen_Nachricht = 3;

		AI_StandUp(hero);

		AI_Output(hero, NULL, "Info_Mod_Hero_Fleischwanze_15_02"); //It's full of bug guts!
	};

	// Nebenquests

	NEBENQUESTS();

	// Hauptquests

	HAUPTQUESTS();

	// Spezialgegner mit besonderen F�higkeiten usw.

	SpecialGegner();

	Mod_GiftCounter += 1;
	Mod_BlutCounter += 1;

	TimeShower();

	// Anzeige, wie viele Opfergaben noch fehlen bei Opferaltar im Adanostempel wegen g�ttlichem Boten

	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Opferaltar)
	{
		var string OpferText;

		OpferText = ConcatStrings(IntToString(CurrentOpfer), " of 6 victims.");

		PrintScreen	(OpferText, -1, 4, FONT_ScreenSmall, 2);
	};

	if (CurrentLevel == ADDONWORLD_ZEN)
	{
		if ((Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_01") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_02") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_03") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_04") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_05") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_06") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_07") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_08") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_09") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_10") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_11") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_12") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_13") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_14") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_15") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_16") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_17") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_18") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_19") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_20") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_21") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_22") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_23") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_24") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_25") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_26") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_27") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_28") < 500)
		|| (Npc_GetDistToWP(hero, "ADW_SUMPF_GRENZEGEBIET_29") < 500))
		{
			Mod_ImGrenzgebiet = 1;
		}
		else
		{
			Mod_ImGrenzgebiet = 0;
		};

		if (Mod_BergweltScroll == 0)
		{
			if (Npc_HasItems(hero, ItSc_TeleportBergwelt) == 1)
			{
				Mod_BergweltScroll = 1;

				B_Say_Overlay	(hero, NULL, "$SHOULDUSE");
			};
		};
	};

	// Cooldown f�r Wechsel der Gesinnung runterz�hlen

	if (Mod_GottCooldown > 0)
	{
		Mod_GottCooldown -= 1;
	};

	// Licht an - Counter

	if (Mod_LichtAn_Pal > 0)
	{
		Mod_LichtAn_Pal -= 1;
	};

	if (Mod_LichtAn_Normal > 0)
	{
		Mod_LichtAn_Normal -= 1;
	};

	// Erfolge freischalten

	Erfolge_Func();

	// Fallen im Adanostempel

	Adanostempel();

	// Daniels Eiszauber-Angebot

	if (Npc_HasItems(hero, ItSc_IceBolt_Fake) >= 1)
	{
		CreateInvItems	(hero, ItSc_IceBolt, Npc_HasItems(hero, ItSc_IceBolt_Fake));

		Npc_RemoveInvItems	(hero, ItSc_IceBolt_Fake, Npc_HasItems(hero, ItSc_IceBolt_Fake));
	};

	if (Npc_HasItems(hero, ItSc_IceCube_Fake) >= 1)
	{
		CreateInvItems	(hero, ItSc_IceCube, Npc_HasItems(hero, ItSc_IceCube_Fake));

		Npc_RemoveInvItems	(hero, ItSc_IceCube_Fake, Npc_HasItems(hero, ItSc_IceCube_Fake));
	};

	if (Npc_HasItems(hero, ItSc_IceWave_Fake) >= 1)
	{
		CreateInvItems	(hero, ItSc_IceWave, Npc_HasItems(hero, ItSc_IceWave_Fake));

		Npc_RemoveInvItems	(hero, ItSc_IceWave_Fake, Npc_HasItems(hero, ItSc_IceWave_Fake));
	};

	if (Npc_HasItems(hero, ItSc_IceLance_Fake) >= 1)
	{
		CreateInvItems	(hero, ItSc_IceLance, Npc_HasItems(hero, ItSc_IceLance_Fake));

		Npc_RemoveInvItems	(hero, ItSc_IceLance_Fake, Npc_HasItems(hero, ItSc_IceLance_Fake));
	};

	// Dialoge je nach Level verteilen

	DialogVerteiler();

	if (CurrentLevel == RELENDEL_ZEN)
	{
		// Wenn man Hubert nicht folgt => Pech gehabt

		if (Npc_KnowsInfo(hero, Info_Mod_Hubert_CityGuide01))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Hubert_CityGuide06))
		&& (Mod_Hubert_Fuehrung_Canceled == 0)
		&& (Npc_GetDistToNpc(hero, Mod_7380_OUT_Hubert_REL) > 4500)
		{
			Mod_Hubert_Fuehrung_Canceled = 1;

			B_StartOtherRoutine	(Mod_7380_OUT_Hubert_REL, "GASTHAUS");
		};

		if (LoreRelendel == 1)
		{
			Mod_LoreCounter += 1;

			if (Mod_LoreCounter == 8)
			{
				Mod_LoreCounter = 0;

				LORERELS();
			};
		};

		if (LoreRelendel == 3)
		{
			Wld_SendTrigger	("EVT_LORENFAHRT");

			LoreRelendel = 0;
		};

		if (LoreKhorinis == 2)
		{
			LoreKhorinis = 3;
		};

		// Nicht zum Hofstaat gehen, wenn Quest noch nicht bekommen

		if (Mod_SabineInRelendel < 2)
		&& (Npc_GetDistToWP(hero, "REL_204") < 500)
		{
			AI_GotoWP(hero, "REL_201");

			PrintScreen ("There's nothing there for me yet...", -1, YPOS_LevelUp, FONT_Screen, 2);		
		};

		// Lester in die Stadt

		if (Mod_LesterInRelendel == 1)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
			&& (Npc_GetDistToWP(hero, "REL_006") > 5000)
			{
				Mod_LesterInRelendel = 2;

				B_StartOtherRoutine	(Mod_7612_PSINOV_Lester_REL,	"MARKT");
			};
		};

		// Fake-Geisterr�stung durch richtige ersetzen

		if (Npc_HasItems(hero, ItAr_Maxim_Fake) == 1)
		{
			Npc_RemoveInvItems	(hero, ItAr_Maxim_Fake, 1);
			CreateInvItems	(hero, ItAr_Maxim, 1);
		};

		// Sequenz zwischen Chani und Abenteurer starten

		if (Mod_Chani_Abenteurer == 1)
		{
			ChaniAbenteurerScene();
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Hi))
		&& (!Npc_IsInState(Mod_7650_OUT_Botschek_REL, ZS_Talk))
		&& (Mod_Chani_Abenteurer == 0)
		{
			Mod_Chani_Abenteurer = 1;
		};

		if (Mod_Herek_Lebt == 1)
		{
			Mod_Herek_Lebt = 2;

			Wld_InsertNpc	(Mod_7670_STT_Herek_REL,	"REL_001");
		};

		// Sequenz zwischen Parcival und Hero vor Kneipe

		if (Mod_Parcival_VorKneipe == 1)
		{
			ParcivalVorKneipeScene();
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Ritualdolch11))
		&& (Mod_Parcival_VorKneipe == 0)
		&& (Npc_GetDistToWP(hero, "REL_MOOR_142") < 300)
		{
			Mod_Parcival_VorKneipe = 1;

			AI_GotoWP	(hero, "REL_MOOR_142");
		};

		if (Mod_Parcival_VorKneipe == 2)
		&& (Wld_GetDay()-2 > Mod_Parcival_VorKneipe_Tag)
		{
			Mod_Parcival_VorKneipe = 3;

			B_StartOtherRoutine	(Mod_504_PAL_Parcival_REL,	"SIEDLUNG");
			B_StartOtherRoutine	(Mod_7671_OUT_Lomar_REL,	"SIEDLUNG");
			B_StartOtherRoutine	(Mod_1623_OUT_Chani_REL,	"SIEDLUNG");
			B_StartOtherRoutine	(Mod_7669_MIL_Miliz_REL,	"SIEDLUNG");
			B_StartOtherRoutine	(Mod_7668_MIL_Miliz_REL,	"SIEDLUNG");
		};

		if (Mod_JudithNacht == 1)
		&& (!Npc_IsInState(Mod_7680_OUT_Judith_REL, ZS_Talk))
		{
			Mod_JudithNacht = 2;

			Wld_PlayEffect	("BLACK_SCREEN", hero, hero, 0, 0, 0, FALSE);
		};

		if (Mod_JudithNacht == 2)
		&& (!Npc_IsInState(Mod_7680_OUT_Judith_REL, ZS_Talk))
		{
			JudithRuprechtScene();
		};
	};

	// Wenn dem Hero die Pfeile ausgehen => Pfeile wechseln

	var C_ITEM HeroBow;
	HeroBow = Npc_GetEquippedRangedWeapon(hero);

	if (Hlp_IsValidItem(HeroBow))
	{
		if (Npc_HasItems(hero, HeroBow.munition) == 0)
		{
			if (C_ItmHasFlag(HeroBow, ITEM_BOW))
			{
				if (Npc_HasItems(hero, ItRw_Arrow) > 0)
				{
					HeroBow.munition = ItRw_Arrow; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Normal arrow selected as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_GoldErzArrow) > 0)
				{
					HeroBow.munition = ItRw_GoldErzArrow; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Arrow with gold ore tip selected as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_GoldErzBlutArrow) > 0)
				{
					HeroBow.munition = ItRw_GoldErzBlutArrow; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Arrow with gold ore-blood-tip as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_IceArrow) > 0)
				{
					HeroBow.munition = ItRw_IceArrow; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Ice arrow chosen as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_Addon_FireArrow) > 0)
				{
					HeroBow.munition = ItRw_Addon_FireArrow; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Fire arrow chosen as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_Addon_MagicArrow) > 0)
				{
					HeroBow.munition = ItRw_Addon_MagicArrow; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Magic Arrow selected as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_SchmetterArrow) > 0)
				{
					HeroBow.munition = ItRw_SchmetterArrow; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_BLUNT;

					Print	("Butterfly Arrow selected as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_HolyArrow) > 0)
				{
					HeroBow.munition = ItRw_HolyArrow; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Holy arrow chosen as ammunition!");
				}
				else
				{
					//Print	("Keine Pfeile mehr �brig!");
				};
			}
			else
			{
				if (Npc_HasItems(hero, ItRw_Bolt) > 0)
				{
					HeroBow.munition = ItRw_Bolt; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Normal bolt selected as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_GoldErzBolt) > 0)
				{
					HeroBow.munition = ItRw_GoldErzBolt; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Bolts with gold ore tip selected as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_GoldErzBlutBolt) > 0)
				{
					HeroBow.munition = ItRw_GoldErzBlutBolt; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Bolts with gold, ore and blood points selected as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_IceBolt) > 0)
				{
					HeroBow.munition = ItRw_IceBolt; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Ice bolts chosen as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_Addon_FireBolt) > 0)
				{
					HeroBow.munition = ItRw_Addon_FireBolt; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Firebolts selected as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_Addon_MagicBolt) > 0)
				{
					HeroBow.munition = ItRw_Addon_MagicBolt; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Magic Bolt selected as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_SchmetterBolt) > 0)
				{
					HeroBow.munition = ItRw_SchmetterBolt; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_BLUNT;

					Print	("Butterfly bolt chosen as ammunition!");
				}
				else if (Npc_HasItems(hero, ItRw_HolyBolt) > 0)
				{
					HeroBow.munition = ItRw_HolyBolt; //Neuer Munitionstyp wird festgelegt
					HeroBow.damagetype = DAM_POINT;

					Print	("Holy motherfuckers chosen as ammunition!");
				}
				else
				{
					//Print	("Keine Bolzen mehr �brig!");
				};
			};
		};
	};
	
	var int ptr;

	// Loren zur�cksetzen

	if (CurrentLevel == EISGEBIET_ZEN)
	{
		if (LoreEisgebietMine01 == 1)
		{
			Mod_LoreCounter += 1;

			if (Mod_LoreCounter == 8)
			{
				Mod_LoreCounter = 0;

				LOREEISMINE01();
			};
		};

		if (LoreEisgebietMine01 == 2)
		&& (Npc_GetDistToWP(hero, "LORE_MINE") < 1000)
		{
			AI_PlayAni	(hero, "T_SIT_2_STAND");
			
			RidingLorry = FALSE;

			LoreEisgebietMine01 = 3;
		};

		if (Npc_GetDistToWP(hero, "LORE_START") < Npc_GetDistToWP(hero, "LORE_MINE"))
		&& (LoreEisgebietMine01 == 3)
		{
			LoreEisgebietMine01 = 0;

			ptr = MEM_SearchVobByName("EVT_LORENFAHRT_MINE");

			if (ptr > 0) {
				MEM_AssignInst(platzhaltermover, ptr);
				platzhaltermover.moveSpeed = mkf(100);
				platzhaltermover._zCVob_bitfield[0] = platzhaltermover._zCVob_bitfield[0] & ~zCVob_bitfield0_collDetectionDynamic;
			};
			Wld_SendTrigger	("EVT_LORENFAHRT_MINE");
		};

		if (Npc_GetDistToWP(hero, "LORE_START") > Npc_GetDistToWP(hero, "LORE_MINE"))
		&& (LoreEisgebietMine01 == 0)
		{
			LoreEisgebietMine01 = 3;

			ptr = MEM_SearchVobByName("EVT_LORENFAHRT_MINE");

			if (ptr > 0) {
				MEM_AssignInst(platzhaltermover, ptr);
				platzhaltermover.moveSpeed = mkf(100);
				platzhaltermover._zCVob_bitfield[0] = platzhaltermover._zCVob_bitfield[0] & ~zCVob_bitfield0_collDetectionDynamic;
			};
			Wld_SendTrigger	("EVT_LORENFAHRT_MINE");
		};

		if (LoreEisgebietMine01 == 4)
		&& (CurrentLevel == EISGEBIET_ZEN)
		{
			Mod_LoreCounter += 1;

			if (Mod_LoreCounter == 10)
			{
				Mod_LoreCounter = 0;

				LOREEISMINE02();
			};
		};

		if (LoreEisgebietMine01 == 5)
		&& (Npc_GetDistToWP(hero, "LORE_START") < 2000)
		{
			AI_PlayAni	(hero, "T_SIT_2_STAND");
			
			RidingLorry = FALSE;

			LoreEisgebietMine01 = 0;
		};

		if (LoreEisgebietSW01 == 1)
		&& (CurrentLevel == EISGEBIET_ZEN)
		{
			Mod_LoreCounter += 1;

			if (Mod_LoreCounter == 8)
			{
				Mod_LoreCounter = 0;

				LOREEISSW01();
			};
		};

		if (LoreEisgebietSW01 == 2)
		&& (Npc_GetDistToWP(hero, "LORE_SW") < 1000)
		{
			AI_PlayAni	(hero, "T_SIT_2_STAND");
			
			RidingLorry = FALSE;

			LoreEisgebietSW01 = 3;
		};

		if (Npc_GetDistToWP(hero, "LORE_START") < Npc_GetDistToWP(hero, "LORE_SW"))
		&& (LoreEisgebietSW01 == 3)
		{
			LoreEisgebietSW01 = 0;

			ptr = MEM_SearchVobByName("EVT_LORENFAHRT_SW");

			if (ptr > 0) {
				MEM_AssignInst(platzhaltermover, ptr);
				platzhaltermover.moveSpeed = mkf(100);
				platzhaltermover._zCVob_bitfield[0] = platzhaltermover._zCVob_bitfield[0] & ~zCVob_bitfield0_collDetectionDynamic;
			};

			Wld_SendTrigger	("EVT_LORENFAHRT_SW");
		};

		if (Npc_GetDistToWP(hero, "LORE_START") > Npc_GetDistToWP(hero, "LORE_SW"))
		&& (LoreEisgebietSW01 == 0)
		{
			LoreEisgebietSW01 = 3;

			ptr = MEM_SearchVobByName("EVT_LORENFAHRT_SW");

			if (ptr > 0) {
				MEM_AssignInst(platzhaltermover, ptr);
				platzhaltermover.moveSpeed = mkf(100);
				platzhaltermover._zCVob_bitfield[0] = platzhaltermover._zCVob_bitfield[0] & ~zCVob_bitfield0_collDetectionDynamic;
			};

			Wld_SendTrigger	("EVT_LORENFAHRT_SW");
		};

		if (LoreEisgebietSW01 == 4)
		&& (CurrentLevel == EISGEBIET_ZEN)
		{
			Mod_LoreCounter += 1;

			if (Mod_LoreCounter == 10)
			{
				Mod_LoreCounter = 0;

				LOREEISSW02();
			};
		};

		if (LoreEisgebietSW01 == 5)
		&& (Npc_GetDistToWP(hero, "LORE_START") < 3000)
		{
			AI_PlayAni	(hero, "T_SIT_2_STAND");
			
			RidingLorry = FALSE;

			LoreEisgebietSW01 = 0;
		};
	};

	// Krauttabak

	if (Krauttabak_Bonus == 1)
	{
		Krauttabak_Bonustime -= 1;

		if (Krauttabak_Bonustime == 0)
		{
			Krauttabak_Bonus = 0;
		};
	};

	// Schafe trinken nach 10 Sekunden

	if (DrinkCooldown > 0)
	{
		DrinkCooldown -= 1;
	};

	// Wechsel von Echsenfreund zu Echsenfeind => Quest fehlschlagen lassen

	if (Mod_EchsenFeind == 0)
	&& (Mod_Echsis == 1)
	{
		Mod_EchsenFeind = 1;

		if (Mod_EchsenQuest_01 > 0)
		&& (Mod_EchsenQuest_01 < 4)
		{
			B_SetTopicStatus	(TOPIC_MOD_ECHSEN_WEIBCHENFUETTERUNG, LOG_FAILED);
		};
		if (Mod_EchsenQuest_02 > 0)
		&& (Mod_EchsenQuest_02 < 6)
		{
			B_SetTopicStatus	(TOPIC_MOD_ECHSEN_SIGNALFEUER, LOG_FAILED);
		};
		if (Mod_EchsenQuest_03 > 0)
		&& (Mod_EchsenQuest_03 < 7)
		{
			B_SetTopicStatus	(TOPIC_MOD_ECHSEN_SUMPFHAIFINDEN, LOG_FAILED);
		};
		if (Npc_KnowsInfo(hero, Info_Mod_Albi_Hi))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Albi_KeyGefunden))
		{
			B_SetTopicStatus	(TOPIC_MOD_ECHSEN, LOG_FAILED);
		};
		if (Npc_KnowsInfo(hero, Info_Mod_Albi_FokusEinsetzen))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Albi_VertrauenGewonnen))
		{
			B_SetTopicStatus	(TOPIC_MOD_ECHSEN_VERTRAUEN, LOG_FAILED);
		};
	};

	// Wenn im aktuellen Level kein PC_Itemholder ist, dann spawnen

	if (!Hlp_IsValidNpc(PC_Itemholder))
	{
		Wld_InsertNpc	(PC_Itemholder, "TOT");
	};

	if (Mod_GiftNeutralisierung > 0)
	{
		Mod_GiftNeutralisierung -= 1;
	};

	// Vergiftungen

	Gifte();

	// Held quatsch oder auch nicht

	if (B_GetAivar(hero, AIV_INVINCIBLE) == TRUE)
	|| (CutsceneAn)
	|| (playerIsTransformed)
	|| (Inventory_Open)
	|| (C_BodyStateContains(hero, BS_MOBINTERACT))
	|| (C_BodyStateContains(hero, BS_MOBINTERACT_INTERRUPT))
	{
		Mod_QuatschtNichtCounter = 0;
	}
	else
	{
		Mod_QuatschtNichtCounter += 1;
	};

	// Anschlagtafel-Quests

	if (Mod_Anschlagtafel_Khorinis_Constantino_Cooldown > 0)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Cooldown -= 1;
	};
	if (Mod_Anschlagtafel_Khorinis_Harad_Cooldown > 0)
	{
		Mod_Anschlagtafel_Khorinis_Harad_Cooldown -= 1;
	};
	if (Mod_Anschlagtafel_Khorinis_Ignaz_Cooldown > 0)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Cooldown -= 1;
	};
	if (Mod_Anschlagtafel_Khorinis_Lobart_Cooldown > 0)
	{
		Mod_Anschlagtafel_Khorinis_Lobart_Cooldown -= 1;
	};
	if (Mod_Anschlagtafel_Khorinis_Thorben_Cooldown > 0)
	{
		Mod_Anschlagtafel_Khorinis_Thorben_Cooldown -= 1;
	};

	transformCooldown += 1;

	if (playerIsTransformed)
	&& (hero.guild < GIL_SEPERATOR_HUM)
	&& (transformCooldown > 5)
	{
		playerIsTransformed = FALSE;

		Mod_WM_IsWarg = 0;
		Mod_IstKeiler = 0;
		Mod_IsRabbit = 0;
		Mod_IsFleischwanze = 0;
		Mod_TrfSkeleton2 = 0;
		Mod_IstGolem = 0;
		Mod_IstSchaf = 0;
	};

	// AutoSave

	Autosave_Counter += 1;

	if (Autosave_Blocker > 0)
	{
		Autosave_Blocker -= 1;
	};

	if (Autosave_Counter >= Mod_Autosave*600)
	&& (Mod_Autosave > 0)
	&& (Autosave_Blocker == 0)
	{
		// Nur, wenn alle Bedingungen erf�llt sind, wird gespeichert

		if (Mod_SaveOther == 0)				// Kein Gespr�chspartner
		&& (B_GetAivar(hero, AIV_INVINCIBLE) == FALSE)	// In keinem Gespr�ch
		&& (Mod_QuatschtNichtCounter >= 3)		// Quatscht seit 5 Sekunden nicht (damit es nicht beim Beenden des Gespr�ches schon speichert)
		&& (!Mod_KampfLaeuft)			// Nicht w�hrend K�mpfen
		&& (!CutsceneAn)
		&& (!playerIsTransformed)
		&& (!Inventory_Open)
		&& (!C_BodyStateContains(hero, BS_MOBINTERACT))
		&& (!C_BodyStateContains(hero, BS_MOBINTERACT_INTERRUPT))
		&& (hero.attribute[ATR_HITPOINTS] > 0)
		{
			B_Autosave();
		};
	};

	EnforceSavingPolicy();

	Mod_KampfLaeuft = FALSE;

	// Sek�ndlich zur�cksetzen, ob man in der N�he einer Lampe war

	HeroAtLight = 0;

	// Fix, damit Inventar korrekt geschlossen wird intern und man sich nicht immun machen kann!

	if (Inventory_Open)
	&& ((C_BodyStateContains(hero, BS_RUN))
	|| (C_BodyStateContains(hero, BS_WALK)))
	{
		Inventory_Open = FALSE;
	};
	
	if (MG_WaitingForMatch) {
		if (Spine_IsInMatch()) {
			if (Mod_SaveOther == 0)				// Kein Gespr�chspartner
			&& (B_GetAivar(hero, AIV_INVINCIBLE) == FALSE)	// In keinem Gespr�ch
			&& (Mod_QuatschtNichtCounter >= 3)		// Quatscht seit 5 Sekunden nicht (damit es nicht beim Beenden des Gespr�ches schon speichert)
			&& (!Mod_KampfLaeuft)			// Nicht w�hrend K�mpfen
			&& (!CutsceneAn)
			&& (!playerIsTransformed)
			&& (!Inventory_Open) {
				MG_WaitingForMatch = FALSE;
				
				MG_CurrentOpp = MG_GEGNER_ONLINE;

				FF_Apply(B_MG_GameLoop);
			};
		} else {
			// add check if tavern was left
			if (Npc_GetDistToWP(hero, "NW_CITY_HABOUR_TAVERN01_06") > 1000)
			&& (Npc_GetDistToWP(hero, "NW_CITY_TAVERN_IN_04") > 1000)
			&& (Npc_GetDistToWP(hero, "NW_BIGFARM_KITCHEN_09") > 1000)
			&& (Npc_GetDistToWP(hero, "NC_TAVERN_BAR") > 2000)
			&& (Npc_GetDistToWP(hero, "EIS_136") > 1500) {
				Spine_StopSearchMatch();
				MG_WaitingForMatch = FALSE;
			};
		};
	};
	
	if (Mod_LastStatsChapter != Kapitel && Hlp_IsValidNpc(hero)) {
		Mod_LastStatsChapter = Kapitel;
		
		Spine_UpdateChapterStatistics(hero, Kapitel);
	};
	
	if (Pickaxe_Fix) {
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_NONE)
		&& (!C_BodyStateContains (hero, BS_MOBINTERACT)) {
			Pickaxe_Fix = FALSE;
			
			if (Pickaxe_Count > Npc_HasItems(hero, ItMw_2H_Axe_L_01)) {
				CreateInvItems(hero, ItMw_2H_Axe_L_01, Pickaxe_Count - Npc_HasItems(hero, ItMw_2H_Axe_L_01));
			};
		};
	};
	
	if (questitemliste > 0 && B_GetAivar(hero, AIV_INVINCIBLE) == FALSE) {
		Restore_Questitems();
	};

	Wld_SendTrigger	("DAUERTRIGGER");
};
