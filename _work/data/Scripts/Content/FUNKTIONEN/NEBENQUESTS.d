var int Mod_Mario_WachenWeg;
var int Mod_UnschuldigeTeleport;
var int Mod_MalfamaCast;

FUNC VOID NEBENQUESTS()
{
	var zCListSort liste;
	var int loopStart;
	var C_Npc temp;
	var int npcPtr;
	var int ptr;
	var zCVob vob;

	// Nebenquests

	if (CurrentLevel == NEWWORLD_ZEN)
	{
		// Ein Beutel voller Gold

		if (Mod_HatBeutelWilfried == 0)
		&& (Npc_HasItems(hero, ItSe_WilfriedsBeutel) == 1)
		{
			B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "I found the purse.... but not much of the content is left. I wonder what Wilfried will say.");

			Mod_HatBeutelWilfried = 1;
		};

		if (Npc_GetDistToWp(hero, "NW_CITY_HABOUR_POOR_AREA_HUT_07_01") < 200)
		&& (Mod_WilfriedsQuest == 3)
		{
			Mod_WilfriedsQuest = 4;

			B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "Wilfried has suddenly left his apartment and is untraceable.");
		};

		if (Npc_IsDead(Mod_544_NONE_Wilfried_NW))
		&& (Mod_WilfriedsQuest == 5)
		{
			Mod_WilfriedsQuest = 6;

			B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "I found Wilfried in his cave.... during our conversation, he suddenly went mad and attacked me - all I had left was self-defense. Now the spook is over. Maybe there's another way to compensate the victims of Wilfried's death.");
		};

		if (Npc_HasItems(hero, ItWr_WilfriedsListe) == 1)
		&& (Mod_WilfriedsQuest == 6)
		{
			Mod_WilfriedsQuest = 7;

			B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "The treasure of Wilfried is exalted. I should hand over the money to Lord Andre, who can take care of the fair distribution.");
		};

		// Der Schatz des Johannes Port

		if (Moe_KnowsPort == 4)
		&& (Wld_GetDay() > PortAtBrahim)
		{
			Moe_KnowsPort = 5;

			B_KillNpc	(Mod_4027_NONE_Port_NW);
		};

		if (Npc_GetDistToWP(hero, "WAY_PASS_MILL_07") < 500)
		&& (Moe_KnowsPort == 6)
		{
			Wld_InsertNpc	(Mod_4028_Schlaeger_01_NW, "WAY_PASS_MILL_02");
			Wld_InsertNpc	(Mod_4029_Schlaeger_02_NW, "WAY_PASS_MILL_02");

			Moe_KnowsPort = 7;

			B_InitMonsterAttitudes();

			B_Attack	(Mod_4028_Schlaeger_01_NW, hero, AR_GuildEnemy, 0);
			B_Attack	(Mod_4029_Schlaeger_02_NW, hero, AR_GuildEnemy, 0);
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Canthar_Port))
		&& (Npc_GetDistToNpc(Mod_548_NONE_Canthar_NW, hero) > 4000)
		&& (Mod_CantharAufTot == FALSE)
		{
			Mod_CantharAufTot = TRUE;

			B_StartOtherRoutine	(Mod_548_NONE_Canthar_NW, "TOT");
		};

		// Beschattung der Feuermagier

		if (Npc_KnowsInfo(hero, Info_Mod_Mattheus_Alk))
		&& (!Npc_IsInState(Mod_724_NOV_Mattheus_NW, ZS_Talk))
		&& (!Npc_IsDead(Mod_724_NOV_Mattheus_NW))
		&& (!Npc_GetDistToWP(Mod_724_NOV_Mattheus_NW, "NW_TAVERNE_05") < 500) {
			AI_StandUP	(Mod_724_NOV_Mattheus_NW);
			Npc_ClearAIQueue	(Mod_724_NOV_Mattheus_NW);
			B_KillNpc	(Mod_724_NOV_Mattheus_NW);
		};

		// Canthar Gesch�fte

		if (Npc_KnowsInfo(hero, Info_Mod_Allievo_Hi))
		&& (Hlp_IsValidNpc(Mod_7033_OUT_Allievo_NW))
		{
			if (!Npc_IsInState(Mod_7033_OUT_Allievo_NW, ZS_Talk))
			{
				B_Attack	(Mod_7033_OUT_Allievo_NW, hero, AR_Kill, 0);
			};
		};

		if (Mod_Allievo_Zusatzpower == 1)
		&& (Hlp_IsValidNpc(Mod_7033_OUT_Allievo_NW))
		{
			if (!Npc_IsInState(Mod_7033_OUT_Allievo_NW, ZS_Talk))
			{
				B_Attack	(Mod_7034_OUT_Bruno_NW, hero, AR_Kill, 0);
				B_Attack	(Mod_7035_OUT_Grima_NW, hero, AR_Kill, 0);
			};
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Allievo_Hi))
		&& (Mod_Allievo_Zusatzpower < 2)
		{
			if (Mod_Allievo_Zusatzpower == 0)
			&& (Npc_IsDead(Mod_7033_OUT_Allievo_NW))
			{
				B_LogEntry	(TOPIC_MOD_CANTHAR_GESCHAEFTE, "I took out Allievo, a student of Canthar's. Hopefully I could give him a blow with it.");

				Mod_Allievo_Zusatzpower = 2;
			}
			else if (Mod_Allievo_Zusatzpower == 1)
			&& (Npc_IsDead(Mod_7033_OUT_Allievo_NW))
			&& (Npc_IsDead(Mod_7034_OUT_Bruno_NW))
			&& (Npc_IsDead(Mod_7035_OUT_Grima_NW))
			{
				B_LogEntry	(TOPIC_MOD_CANTHAR_GESCHAEFTE, "I took out Allievo, a student of Canthar's. Hopefully I could give him a blow with it.");

				Mod_Allievo_Zusatzpower = 2;
			};
		};

		// Das Unheil auf Akils Hof

		if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hi))
		&& (Mod_KnowsTonakZombie == FALSE)
		&& (Npc_GetDistToWP(hero, "WP_GAMPLE_TONAK_ZOMBIE") < 1500)
		{
			Mod_KnowsTonakZombie = TRUE;

			B_LogEntry	(TOPIC_MOD_AKILSHOF, "All the undead... and one of them Tonak. Every rescue comes too late.");
		};

		if (Npc_GetDistToWP(Mod_902_BAU_Egill_NW, "WP_EGILL_SELBSTMORD_NEWVERSION") < 500)
		|| (Npc_GetDistToWP(hero, "NW_FARM2_TO_TAVERN_06") < 500)
		&& (Mod_EgillSelbstmord == 1)
		{
			AI_GotoWP	(Mod_902_BAU_Egill_NW, "WP_EGILL_SELBSTMORD_NEWVERSION");
			AI_AlignToWP	(Mod_902_BAU_Egill_NW);
			AI_PlayAni	(Mod_902_BAU_Egill_NW, "T_STAND_2_JUMP");

			Mod_902_BAU_Egill_NW.aivar[AIV_Damage] = 10;

			Mod_902_BAU_Egill_NW.attribute[ATR_HITPOINTS] = 10;
			Mod_902_BAU_Egill_NW.attribute[ATR_HITPOINTS_MAX] = 10;

			Mod_EgillSelbstmord = 2;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hi))
		&& (Wld_GetDay() - 1 > Mod_AkilsHof_WaitingForDeath)
		&& (Mod_AkilsHofAusgestorben == FALSE)
		&& (!Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
		{
			B_RemoveNpc	(Mod_900_BAU_Akil_NW);
			B_RemoveNpc	(Mod_906_BAU_Randolph_NW);
			B_RemoveNpc	(Mod_905_BAU_Kati_NW);

			if (!Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
			&& (!Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
			&& (!Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
			{
				B_RemoveNpc	(Mod_903_BAU_Ehnim_NW);
			};

			Mod_AkilsHofAusgestorben = 1;
		};

		if (!Npc_KnowsInfo(hero, Info_Mod_Telbor_Hi))
		&& (Kapitel > 1)
		&& (!Npc_IsDead(Mod_908_BAU_Telbor_NW))
		{
			B_RemoveNpc	(Mod_900_BAU_Akil_NW);
			B_RemoveNpc	(Mod_906_BAU_Randolph_NW);
			B_RemoveNpc	(Mod_905_BAU_Kati_NW);

			Wld_InsertNpc	(Zombie_Akil, "NW_FARM2_HOUSE_IN_02");
			Wld_InsertNpc	(Zombie_Randolph, "NW_FARM2_OUT_10");
			Wld_InsertNpc	(Zombie_Kati, "NW_FARM2_HOUSE_IN_02");

			if (!Npc_IsDead(Mod_903_BAU_Ehnim_NW))
			{
				B_RemoveNpc	(Mod_903_BAU_Ehnim_NW);

				Wld_InsertNpc	(Zombie_Ehnim, "NW_FARM2_OUT_10");
			};

			CreateInvItems	(Mod_908_BAU_Telbor_NW, ItWr_TelborZettel, 1);

			B_KillNpc	(Mod_908_BAU_Telbor_NW);
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Telbor_AllDead))
		&& (Wld_GetDay() - 1 > Mod_AkilsHof_WaitingForDeath)
		&& (Mod_AkilsHofAusgestorben == 1)
		{
			if (!Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
			{
				Wld_InsertNpc	(Zombie_Akil, "NW_FARM2_HOUSE_IN_02");
				Wld_InsertNpc	(Zombie_Randolph, "NW_FARM2_OUT_10");
				Wld_InsertNpc	(Zombie_Kati, "NW_FARM2_HOUSE_IN_02");

				if (!Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
				&& (!Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
				&& (!Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
				{
					Wld_InsertNpc	(Zombie_Ehnim, "NW_FARM2_OUT_10");
				};

				if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
				|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
				|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
				{
					B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "ABGANG");
				};

				if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
				|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
				{
					B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "ABGANG");
				};
			};

			B_StartOtherRoutine	(Mod_908_BAU_Telbor_NW, "ABGANG");

			Mod_AkilsHofAusgestorben = 2;
		};

		// Hausbesetzer

		if (Npc_KnowsInfo(hero, Info_Mod_Telbor_FarmWorking))
		&& (Wld_GetDay() - 2 >= Mod_Telbor_HofBesetzt)
		&& (Mod_Telbor_GoingToHof == TRUE)
		{
			Mod_Telbor_GoingToHof = 2;

			B_StartOtherRoutine	(Mod_908_BAU_Telbor_NW, "ABGANG");
			B_StartOtherRoutine	(Mod_1409_BAU_Bauer_NW, "ABGANG");
			B_StartOtherRoutine	(Mod_1410_BAU_Bobo_NW, "ABGANG");
			B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "ABGANG");

			if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
			|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
			|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
			{
				B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "ABGANG");
			};

			if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
			|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
			{
				B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "ABGANG");
			};

			Wld_InsertNpc	(Mod_7167_HEX_Uriela_NW, "FARM2");
			Wld_InsertNpc	(Mod_7168_HEX_Hexe_NW, "FARM2");
			Wld_InsertNpc	(Mod_7169_OUT_Mann_NW, "FARM2");
			Wld_InsertNpc	(Mod_7170_OUT_Mann_NW, "FARM2");
			Wld_InsertNpc	(DemonWolf_Zahm, "FP_ROAM_DAEMONICWOLF");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Uriela_GoOutOfHere))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Uriela_Bengar))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Uriela_TeachingFinished))
		&& (Mod_UrielaCo_Weg == FALSE)
		{
			if (C_NpcIsDown(Mod_7167_HEX_Uriela_NW))
			{
				Mod_Uriela_Verbatscht = TRUE;
			};
			if (C_NpcIsDown(Mod_7168_HEX_Hexe_NW))
			{
				Mod_Hexe_Verbatscht = TRUE;
			};
			if (C_NpcIsDown(Mod_7169_OUT_Mann_NW))
			{
				Mod_Sohn_Verbatscht = TRUE;
			};
			if (C_NpcIsDown(Mod_7170_OUT_Mann_NW))
			{
				Mod_Mann_Verbatscht = TRUE;
			};

			if (Mod_Uriela_Verbatscht == TRUE)
			&& (Mod_Hexe_Verbatscht == TRUE)
			&& (Mod_Sohn_Verbatscht == TRUE)
			&& (Mod_Mann_Verbatscht == TRUE)
			{
				Mod_UrielaCo_Weg = TRUE;

				B_StartOtherRoutine	(Mod_7167_HEX_Uriela_NW, "ATTAVERNE");
				B_StartOtherRoutine	(Mod_7168_HEX_Hexe_NW, "ATTAVERNE");
				B_StartOtherRoutine	(Mod_7169_OUT_Mann_NW, "ATTAVERNE");
				B_StartOtherRoutine	(Mod_7170_OUT_Mann_NW, "ATTAVERNE");

				B_LogEntry	(TOPIC_MOD_TELBOR_HAUSBESETZER, "Well, the Belians are heading for their new home. Now all I have to do is let Telbor know that the house is free again.");
			};
		};

		// Randolphs Pein

		if (Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
		&& (Npc_KnowsInfo(hero, Info_Mod_Randolph_Hi))
		&& (Kapitel == 2)
		&& (Mod_Randolph_Started == FALSE)
		{
			B_StartOtherRoutine	(Mod_906_BAU_Randolph_NW, "INCAVE");

			Wld_InsertItem	(ItMi_Rake, "FP_ITEM_RAKE_RANDOLPH");

			Mod_Randolph_Started = TRUE;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Randolph_Hoehle))
		&& (!Npc_IsInState(Mod_906_BAU_Randolph_NW, ZS_Talk))
		&& (Mod_Randolph_Started < 10)
		{
			Mod_Randolph_Started += 1;

			if (Mod_Randolph_Started == 10)
			{
				B_StartOtherRoutine	(Mod_906_BAU_Randolph_NW, "TOT");
				AI_Teleport	(Mod_906_BAU_Randolph_NW, "TOT");
			};
		};

		if (Mod_Randolph_Started == 10)
		&& (Kapitel == 3)
		{
			Mod_Randolph_Started = 11;

			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_01");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_02");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_03");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_04");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_05");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_06");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_07");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_08");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_09");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_10");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_11");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_12");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_13");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_14");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_15");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_16");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_17");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_18");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_19");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_20");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_21");
			Wld_InsertNpc	(Demon, "FP_ROAM_DEMONFROMRANDOLPH_22");
			Wld_InsertNpc	(DemonLord, "FP_ROAM_DEMONLORDFROMRANDOLPH_01");

			B_StartOtherRoutine	(Mod_1414_BAU_Bauer_NW, "DEMONWALKER");
			B_StartOtherRoutine	(Mod_1415_BAU_Bauer_NW, "DEMONWALKER");
			B_StartOtherRoutine	(Mod_545_NONE_Gildo_NW, "DEMONWALKER");
			B_StartOtherRoutine	(Mod_910_BAU_Lobart_NW, "DEMONWALKER");
			B_StartOtherRoutine	(Mod_911_BAU_Maleth_NW, "DEMONWALKER");
			//B_StartOtherRoutine	(Mod_912_BAU_Vino_NW, "DEMONWALKER");

			B_KillNpc	(Mod_1414_BAU_Bauer_NW);

			Wld_InsertNpc	(Mod_7174_DEM_Randolph_NW, "FARM1");
		};

		if (Mod_Randolph_Started == 14)
		{
			Npc_ClearAIQueue (Mod_7174_DEM_Randolph_NW);
			AI_StandUPQuick (Mod_7174_DEM_Randolph_NW);
			B_StartOtherRoutine	(Mod_7174_DEM_Randolph_NW, "DOWN");
			Wld_InsertNpc	(DemonHigh_Randolph, "NW_LITTLESTONEHENDGE_02");

			Mod_Randolph_Started = 15;
		};

		if (Mod_Randolph_Started == 15)
		&& (Hlp_IsValidNpc(DemonHigh_Randolph))
		{
			if (Npc_IsDead(DemonHigh_Randolph))
			{
				Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

				AI_Teleport	(Mod_7174_DEM_Randolph_NW, "TOT");
				B_StartOtherRoutine	(Mod_7174_DEM_Randolph_NW, "TOT");
				AI_Teleport	(Mod_7174_DEM_Randolph_NW, "TOT");

				B_StartOtherRoutine	(Mod_906_BAU_Randolph_NW, "NODEMON");
				AI_Teleport	(Mod_906_BAU_Randolph_NW, "NW_LITTLESTONEHENDGE_02");

				Mod_Randolph_Started = 16;
			};
		};

		// Das gro�e Schweigen

		if (Npc_KnowsInfo(hero, Info_Mod_Moe_ErsterAnschlag))
		&& (Mod_MoeDontTalk == 3)
		{
			if (Npc_HasItems(hero, ItWr_Anschlag_Lobart) == 1)
			{
				Npc_RemoveInvItems	(hero, ItWr_Anschlag_Lobart, 1);
				CreateInvItems	(hero, ItWr_Anschlag, 1);

				Mod_CountAnschlag += 1;
			}
			else if (Npc_HasItems(hero, ItWr_Anschlag_Bengar) == 1)
			{
				Npc_RemoveInvItems	(hero, ItWr_Anschlag_Bengar, 1);
				CreateInvItems	(hero, ItWr_Anschlag, 1);

				Mod_CountAnschlag += 1;
			}
			else if (Npc_HasItems(hero, ItWr_Anschlag_Onar) == 1)
			{
				Npc_RemoveInvItems	(hero, ItWr_Anschlag_Onar, 1);
				CreateInvItems	(hero, ItWr_Anschlag, 1);

				Mod_CountAnschlag += 1;
			}
			else if (Npc_HasItems(hero, ItWr_Anschlag_Kloster) == 1)
			{
				Npc_RemoveInvItems	(hero, ItWr_Anschlag_Kloster, 1);
				CreateInvItems	(hero, ItWr_Anschlag, 1);

				Mod_CountAnschlag += 1;
			}
			else if (Npc_HasItems(hero, ItWr_Anschlag_City) == 1)
			{
				Npc_RemoveInvItems	(hero, ItWr_Anschlag_City, 1);
				CreateInvItems	(hero, ItWr_Anschlag, 1);

				Mod_CountAnschlag += 1;
			};

			if (Mod_CountAnschlag == 7)
			{
				Mod_MoeDontTalk = 5;

				B_LogEntry	(TOPIC_MOD_MOE_TALK, "A rather unpleasant idea of Canthar to send me through all the Khorinis. Maybe I should unload all the unnecessary ballast of scribbled paper at Moe's, my inventory is already full enough....");
			};
		};

		// Unwillkommene �berraschungen

		if (Mod_CantharQuest_Last == 1)
		&& (Npc_GetDistToWP(hero, "NW_CITY_HABOUR_HUT_03_IN_02") < 200)
		{
			Mod_CantharQuest_Last = 2;
		};

		if (Mod_CantharQuest_Last == 3)
		&& (Wld_IsTime(18,00,06,00))
		&& (Npc_GetDistToWP(hero, "NW_CITY_KANAL_09") < 200)
		{
			Mod_CantharQuest_Last = 4;

			AI_GotoWP(hero, "WP_HERO_TALK_TO_SCHLAEGER");

			Wld_SendTrigger	("EVT_KAMERA_SCHLAEGERTALK");

			CutsceneAn = TRUE;
		};

		if (Mod_CantharQuest_Last == 4)
		{
			Mod_CantharSchlaeger_Counter += 1;

			if (Mod_CantharSchlaeger_Counter == 5)
			{
				AI_TurnToNpc	(Mod_7211_NONE_Schlaeger_NW, hero);
				AI_TurnToNpc	(Mod_7212_NONE_Schlaeger_NW, hero);

				AI_Output(Mod_7211_NONE_Schlaeger_NW, NULL, "Info_Mod_CantharSchlaeger_Talk_01_00"); //So you got us into a good trap, huh?
			};

			if (Mod_CantharSchlaeger_Counter == 10)
			{
				AI_Output(Mod_7212_NONE_Schlaeger_NW, NULL, "Info_Mod_CantharSchlaeger_Talk_11_01"); //Altitude!

				B_StartOtherRoutine	(Mod_7213_NONE_Schlaeger_NW, "WEG");
			};

			if (Mod_CantharSchlaeger_Counter == 15)
			{
				AI_Output(Mod_7211_NONE_Schlaeger_NW, NULL, "Info_Mod_CantharSchlaeger_Talk_01_02"); //Like Moe found out anything! Pah! Did you really believe that? (Pause) What do you say to that: I wrote the message! Huh? (pause)
			};

			if (Mod_CantharSchlaeger_Counter == 20)
			{
				AI_Output(Mod_7212_NONE_Schlaeger_NW, NULL, "Info_Mod_CantharSchlaeger_Talk_11_03"); //Hooray.
			};

			if (Mod_CantharSchlaeger_Counter == 25)
			{
				AI_TurnToNpc	(Mod_7211_NONE_Schlaeger_NW, Mod_7212_NONE_Schlaeger_NW);

				AI_Output(Mod_7211_NONE_Schlaeger_NW, NULL, "Info_Mod_CantharSchlaeger_Talk_01_04"); //Shut up! Shut up!
			};

			if (Mod_CantharSchlaeger_Counter == 30)
			{
				AI_TurnToNpc	(Mod_7211_NONE_Schlaeger_NW, hero);

				AI_Output(Mod_7211_NONE_Schlaeger_NW, NULL, "Info_Mod_CantharSchlaeger_Talk_01_05"); //Canthar will make you talk. He has his methods there...
			};

			if (Mod_CantharSchlaeger_Counter == 35)
			{
				AI_Output(hero, NULL, "Info_Mod_CantharSchlaeger_Talk_15_06"); //Why doesn't he come in person and send a carrion like you before?

				B_StartOtherRoutine	(Mod_7213_NONE_Schlaeger_NW, "NAH");
			};

			if (Mod_CantharSchlaeger_Counter == 40)
			{
				AI_TurnToNpc	(Mod_7212_NONE_Schlaeger_NW, Mod_7211_NONE_Schlaeger_NW);

				AI_Output(Mod_7212_NONE_Schlaeger_NW, NULL, "Info_Mod_CantharSchlaeger_Talk_11_07"); //He didn't say we were carrion...
			};

			if (Mod_CantharSchlaeger_Counter == 45)
			{
				AI_TurnToNpc	(Mod_7211_NONE_Schlaeger_NW, Mod_7212_NONE_Schlaeger_NW);

				AI_Output(Mod_7211_NONE_Schlaeger_NW, NULL, "Info_Mod_CantharSchlaeger_Talk_01_08"); //Hey, don't get into a defensive position, Canthar has expressly ordered!
			};

			if (Mod_CantharSchlaeger_Counter == 50)
			{
				AI_Output(hero, NULL, "Info_Mod_CantharSchlaeger_Talk_15_09"); //(mumbles) Amateurs....
			};

			if (Mod_CantharSchlaeger_Counter == 55)
			{
				AI_TurnToNpc	(Mod_7211_NONE_Schlaeger_NW, hero);
				AI_TurnToNpc	(Mod_7212_NONE_Schlaeger_NW, hero);

				AI_Output(Mod_7211_NONE_Schlaeger_NW, NULL, "Info_Mod_CantharSchlaeger_Talk_01_10"); //I don't have to put up with that! Let's go!

				Mod_Schlaeger_SaveHeroHP = hero.attribute[ATR_HITPOINTS];

				B_Attack	(Mod_7213_NONE_Schlaeger_NW, hero, AR_None, 0);
			};

			if (hero.attribute[ATR_HITPOINTS] < Mod_Schlaeger_SaveHeroHP)
			|| (Mod_CantharSchlaeger_Counter == 62)
			{
				Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

				B_TransferInventory_All (hero, PC_Itemholder);

				Mob_CreateItems	("CANTHARSTRUHE", ItSe_HeroPocket, 1);

				Mod_CantharQuest_Last = 5;

				CutsceneAn = FALSE;

				AI_Teleport	(Mod_7211_NONE_Schlaeger_NW, "NW_CANTHARINSEL_21");
				AI_Teleport	(Mod_7212_NONE_Schlaeger_NW, "NW_CANTHARINSEL_21");
				AI_Teleport	(Mod_7213_NONE_Schlaeger_NW, "NW_CANTHARINSEL_21");

				B_StartOtherRoutine	(Mod_7211_NONE_Schlaeger_NW, "TOT");
				B_StartOtherRoutine	(Mod_7212_NONE_Schlaeger_NW, "TOT");
				B_StartOtherRoutine	(Mod_7213_NONE_Schlaeger_NW, "TOT");
				B_StartOtherRoutine	(Mod_548_NONE_Canthar_NW, "TOT");

				AI_Teleport	(Mod_7211_NONE_Schlaeger_NW, "NW_CANTHARINSEL_21");
				AI_Teleport	(Mod_7212_NONE_Schlaeger_NW, "NW_CANTHARINSEL_21");
				AI_Teleport	(Mod_7213_NONE_Schlaeger_NW, "NW_CANTHARINSEL_21");

				AI_Teleport	(hero, "NW_CANTHARINSEL_26");
			};
		};

		if (Mod_CantharQuest_Last == 6)
		&& (!Npc_IsInState(Mod_548_NONE_Canthar_NW, ZS_Talk))
		{
			B_Attack	(Mod_7211_NONE_Schlaeger_NW, hero, AR_GuildEnemy, 0);
			B_Attack	(Mod_7212_NONE_Schlaeger_NW, hero, AR_GuildEnemy, 0);
			B_Attack	(Mod_7213_NONE_Schlaeger_NW, hero, AR_GuildEnemy, 0);

			B_SetAttitude (Mod_7211_NONE_Schlaeger_NW, ATT_HOSTILE);
			B_SetAttitude (Mod_7212_NONE_Schlaeger_NW, ATT_HOSTILE);
			B_SetAttitude (Mod_7213_NONE_Schlaeger_NW, ATT_HOSTILE);

			Mod_7211_NONE_Schlaeger_NW.guild = GIL_STRF;
			Npc_SetTrueGuild	(Mod_7211_NONE_Schlaeger_NW, GIL_STRF);

			Mod_7212_NONE_Schlaeger_NW.guild = GIL_STRF;
			Npc_SetTrueGuild	(Mod_7212_NONE_Schlaeger_NW, GIL_STRF);

			Mod_7213_NONE_Schlaeger_NW.guild = GIL_STRF;
			Npc_SetTrueGuild	(Mod_7213_NONE_Schlaeger_NW, GIL_STRF);

			B_SetAttitude (Mod_548_NONE_Canthar_NW, ATT_FRIENDLY);

			Mod_CantharQuest_Last = 7;
		};

		if (Mod_CantharSelbstmord == 1)
		&& (!Npc_IsInState(Mod_548_NONE_Canthar_NW, ZS_Talk))
		{
			Mod_CantharSelbstmord = 2;
			
			B_KillNpc	(Mod_548_NONE_Canthar_NW);

			AI_PlayAni	(Mod_548_NONE_Canthar_NW, "T_DEADB");
		};

		if (Mod_GarvellDa == 1)
		&& (Npc_IsDead(Mod_577_NONE_Garvell_NW))
		{
			B_LogEntry	(TOPIC_MOD_MOE_DEAD, "Garvell's assassination attempt failed. He must have been the surprise Canthar was talking about. This should bring this chapter to a definitive conclusion.");
			B_SetTopicStatus	(TOPIC_MOD_MOE_DEAD, LOG_SUCCESS);
			B_SetTopicStatus	(TOPIC_MOD_CANTHAR_GESCHAEFTE, LOG_SUCCESS);

			B_GivePlayerXP	(500);

			Mod_GarvellDa = 2;
		};

		// Der Streit

		if (Npc_KnowsInfo(hero, Info_Mod_Till_Bronko04))
		&& (!Npc_IsInState(Mod_541_NONE_Till_NW, ZS_Talk))
		&& (Mod_Till_Streit == 0)
		{
			Mod_Till_Streit = 1;

			B_Attack	(Mod_103_BAU_Bronko_NW, Mod_541_NONE_Till_NW, AR_None, 0);
		};

		// Matteos Flugbl�tter

		if (Mod_Flugblaetter > Mod_FlugblattMeldung)
		&& (B_GetAivar(hero, AIV_INVINCIBLE) == FALSE)
		{
			if (Mod_Flugblaetter == 20)
			{
				Print ("All leaflets distributed!");

				B_LogEntry	(TOPIC_MOD_MATTEOFLUGBLATT, "I handed out all the flyers and should let Matteo know.");
			}
			else
			{
				var string FlugblattMeldung;
				FlugblattMeldung = ConcatStrings("Still ", IntToString(20-Mod_Flugblaetter));
				FlugblattMeldung = ConcatStrings(FlugblattMeldung, " to distribute flyers!");

				Print (FlugblattMeldung);
			};

			Mod_FlugblattMeldung = Mod_Flugblaetter;
		};

		// Topic f�r Kristall schlie�en

		if (Mod_KristallDiego == 0)
		&& (Npc_HasItems(hero, Mod_PaladinKristall) == 1)
		{
			B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "I got the crystal. Either I go to Lothar's now, or I take him to someone else. The other guild leaders would be delighted with this precious crystal.");
			B_SetTopicStatus	(TOPIC_MOD_DIEGO_KRISTALL, LOG_SUCCESS);

			Mod_KristallDiego = 1;

			CurrentNQ += 1;
			
			Spine_UnlockAchievement(SPINE_ACHIEVEMENT_50);
		};

		// Handwerker und Alchemist f�r Jack

		if (Mod_JackDabei == 1)
		&& (Mod_JackHW == 0)
		&& (Mod_BennetDabei >= 1)
		{
			Mod_JackHW = 1;

			B_LogEntry	(TOPIC_MOD_HQ_JACK, "Well, Bennet's a blacksmith, he's also a craftsman. I hope Jack won't let this go.");
		};

		if (Mod_SagittaSS == 0)
		&& (Npc_HasItems(hero, ItPl_SalzwasserSprie�ling) >= 1)
		&& (Npc_KnowsInfo(hero, Info_Mod_Sagitta_Irdorath))
		{
			Mod_SagittaSS = 1;

			B_LogEntry	(TOPIC_MOD_HQ_JACK, "So, I got the salty sprout. Now let's get out of here.");

			B_GivePlayerXP	(100);
		};

		if (Mod_SagittaHK == 0)
		&& (Npc_HasItems(hero, ItPl_Harpienkralle) >= 1)
		&& (Npc_KnowsInfo(hero, Info_Mod_Sagitta_Irdorath))
		{
			Mod_SagittaHK = 1;

			B_LogEntry	(TOPIC_MOD_HQ_JACK, "So, I've got the stinking harpie claw.");

			B_GivePlayerXP	(100);
		};

		// Vorr�te verstecken

		if (Mod_BronkoMehlsack == 1)
		&& (Npc_HasItems(hero, ItMi_Mehlsack_Bronko) == 5)
		&& (Npc_GetDistToWP(hero, "NW_BIGFARM_LAKE_CAVE_03") < 500)
		{
			AI_StandUP	(hero);

			Npc_ClearAIQueue	(hero);

			AI_GotoWP	(hero, "NW_BIGFARM_LAKE_CAVE_03");

			AI_PlayAni	(hero,	"T_PLUNDER");

			Npc_RemoveInvItems	(hero, ItMi_Mehlsack_Bronko, 5);

			B_LogEntry	(TOPIC_MOD_BRONKO_MEHLSACK, "The flour sacks are now in the cave. I should get back to Bronko.");

			Mod_BronkoMehlsack = 2;
		};

		// Vertrauliche Informationen
	
		if (Mod_Cornelius_Overtalk == 2)
		&& (Wld_GetDay()-10 >= Mod_Cornelius_Overtalk_Day)
		{
			Mod_Cornelius_Overtalk = 3;

			B_StartOtherRoutine	(Mod_571_NONE_Cornelius_NW, "KNAST");
		};
	
		if (Mod_Cornelius_Overtalk == 4)
		&& (Wld_GetDay()-15 >= Mod_Cornelius_Overtalk_Day)
		{
			Mod_Cornelius_Overtalk = 5;

			B_StartOtherRoutine	(Mod_571_NONE_Cornelius_NW, "AUFSTAND");
		};
	
		if (Mod_Cornelius_Overtalk == 5)
		&& (!Npc_IsInState(Mod_571_NONE_Cornelius_NW, ZS_Talk))
		{
			Mod_Cornelius_Overtalk = 6;

			B_Attack	(Mod_1236_RIT_Torwache_NW, hero, AR_GuildEnemy, 0);
			B_Attack	(Mod_1237_RIT_Torwache_NW, hero, AR_GuildEnemy, 0);
		};

		// Thorbens Vertretung

		if (Mod_Thorben_Vertretung == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Thorben_LehrlingQuest5))
		{
			if (Wld_GetDay()-1 == Mod_Thorben_Vertretung_Tag)
			&& (Wld_IsTime(12,01,24,00))
			{
				Mod_Thorben_Vertretung = 1;
			};
			if (Wld_GetDay()-1 > Mod_Thorben_Vertretung_Tag)
			{
				Mod_Thorben_Vertretung = 1;
			};

			if (Mod_Thorben_Vertretung == 1)
			{
				B_StartOtherRoutine	(Mod_536_NONE_Thorben_NW, "START");
				B_StartOtherRoutine	(Mod_583_NONE_Hanna_NW, "START");
				B_StartOtherRoutine	(Mod_529_NONE_Matteo_NW, "START");
			};
		};

		// Pr�sent f�r Thorben

		if (Npc_KnowsInfo(hero, Info_Mod_Brahim_ThorbenLehrling4))
		&& (Mod_Thorben_Geschenk == 0)
		{
			if (Npc_HasItems(hero, ItMi_Schmuckkasten) == 1)
			|| (Npc_HasItems(hero, ItMi_Bierkrug) == 1)
			|| (Npc_HasItems(hero, ItMi_Karte) == 1)
			{
				Mod_Thorben_Geschenk = 1;

				B_LogEntry	(TOPIC_MOD_LEHRLING_THORBEN_FOUR, "I made something really nice for Thorben. Let's see if he can be happy about it.");

				B_StartOtherRoutine	(Mod_536_NONE_Thorben_NW, "GROGGY");
			};
		};

		if (Wld_GetDay() > Mod_Thorben_Geschenk_Tag)
		&& (Mod_Thorben_Lehrling_Weg == 1)
		{
			Mod_Thorben_Lehrling_Weg = 2;

			B_StartOtherRoutine	(Mod_536_NONE_Thorben_NW, "START");
		};

		// �pfel sortieren bei Matteo

		if (Npc_HasItems(hero, ItFo_Apple_Matteo) >= 1)
		{
			if (Mod_Matteo_GuteApples == 10)
			{
				CreateInvItems	(hero, ItFo_Apple_Matteo_Schlecht, 1);

				Print	("Lazy apple!");

				Mod_Matteo_SchlechteApples += 1;
			}
			else if (Mod_Matteo_SchlechteApples == 10)
			{
				CreateInvItems	(hero, ItFo_Apple_Matteo_Gut, 1);

				Print	("Crispy apple!");

				Mod_Matteo_GuteApples += 1;
			}
			else if (Hlp_Random(2) == 0)
			{
				CreateInvItems	(hero, ItFo_Apple_Matteo_Schlecht, 1);

				Print	("Lazy apple!");

				Mod_Matteo_SchlechteApples += 1;
			}
			else
			{
				CreateInvItems	(hero, ItFo_Apple_Matteo_Gut, 1);

				Print	("Crispy apple!");

				Mod_Matteo_GuteApples += 1;
			};

			Npc_RemoveInvItems	(hero, ItFo_Apple_Matteo, 1);
		};

		// Der Einkaufsbeutel des Grauens

		if (hero.attribute[ATR_STRENGTH] >= 200)
		&& (Mod_Jana_Beutel == 0)
		{
			Mod_Jana_Beutel = 1;

			B_StartOtherRoutine	(Mod_1064_VLK_Jana_NW,	"EINKAUF");
		};

		if (Npc_GetDistToWP(hero, "NW_CITY_HABOUR_HUT_06_BED_02") < 500)
		&& (Mod_Jana_Beutel == 2)
		&& (Npc_HasItems(hero, ItMi_JanaBeutel) == 1)
		{
			Mod_Jana_Beutel = 3;

			Npc_RemoveInvItems	(hero, ItMi_JanaBeutel, 1);

			AI_GotoWP	(hero, "NW_CITY_HABOUR_HUT_06_BED_02");

			AI_PlayAni	(hero, "T_PLUNDER");

			B_LogEntry	(TOPIC_MOD_JANA_BEUTEL, "Phew, I finally got rid of the load.");
		};

		if (Mod_Jana_Beutel == 2)
		&& (Npc_GetWalkMode(hero) != NPC_WALK)
		{
			AI_SetWalkMode	(hero, NPC_WALK);
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Balthasar_Bereit))
		&& (Mod_BalthasarsWoelfe == 0)
		&& (Npc_GetDistToWP(Mod_101_BAU_Balthasar_NW, "NW_FARM4_BALTHASAR_PEE") < 500)
		{
			Wld_InsertNpc	(Balthi_YWolf1, "NW_FARM4_WOLFSPAWN");
			Wld_InsertNpc	(Balthi_YWolf2, "NW_FARM4_WOLFSPAWN");
			Wld_InsertNpc	(Balthi_YWolf3, "NW_FARM4_WOLFSPAWN");

			Mod_BalthasarsWoelfe = 1;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Diego_Joe))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Diego_HierKristall))
		&& (Mod_DiegoHoltKristall < Wld_GetDay())
		&& (Mod_DiegoHoltKristall_Fertig == FALSE)
		{
			B_StartOtherRoutine	(Mod_538_RDW_Diego_NW, "START");
			
			if (Npc_KnowsInfo(hero, Info_Mod_Joe_Wassersnapper))
			&& (!Npc_KnowsInfo(hero, Info_Mod_Joe_Wassersnapper2)) {
				B_StartOtherRoutine	(Mod_588_WNOV_Joe_NW, "SNAPPER");
			} else {
				B_StartOtherRoutine	(Mod_588_WNOV_Joe_NW, "START");
			};

			Mod_DiegoHoltKristall_Fertig = TRUE;
		};

		// Dem Bauern auf der Weide die Schafe abschlachten

		if (Mod_Edgor_SchafeSchlachten == 1)
		&& (Npc_IsDead(Schaeferhund_Malak))
		&& (Npc_IsDead(Sheep_Bengar_01))
		&& (Npc_IsDead(Sheep_Bengar_02))
		&& (Npc_IsDead(Sheep_Bengar_03))
		&& (Npc_IsDead(Hammel_Bengar_01))
		&& (Npc_GetDistToWP(Mod_946_BDT_Edgor_NW, "NW_FARM3_MALAK") < 500)
		{
			Mod_Edgor_SchafeSchlachten = 2;

			B_StartOtherRoutine	(Mod_946_BDT_Edgor_NW, "PASS");
			B_StartOtherRoutine	(Mod_952_BDT_Franco_NW, "PASS");
		};

		// Rache

		if (Mod_Mario == 3)
		&& (Wld_GetDay() > Mod_Mario_Day)
		&& (((Mod_AnzahlNebengilden == 4 && Assassinen_Dabei == FALSE)
		|| (Npc_KnowsInfo(hero, Info_Mod_Yussuf_Blutkelch6)))
		|| (hero.guild == GIL_PAL))
		{
			Mod_Mario = 4;
			
			Mod_Mario_Day = Wld_GetDay() - 1;

			AI_UnequipArmor	(Mod_595_MIL_Mario_NW);

			Npc_RemoveInvItems	(Mod_595_MIL_Mario_NW, ItAr_Mil_M, 1);

			CreateInvItems	(Mod_595_MIL_Mario_NW, ItAr_PAL_M, 1);

			AI_EquipArmor	(Mod_595_MIL_Mario_NW, ItAr_Pal_M);
			AI_EquipBestArmor	(Mod_595_MIL_Mario_NW);

			B_StartOtherRoutine	(Mod_595_MIL_Mario_NW, "RITTER");
			B_StartOtherRoutine	(Mod_500_PAL_Garond_NW, "MARIO");
		};

		if (Mod_Mario == 4)
		&& (Wld_GetDay()-10 > Mod_Mario_Day)
		{
			Mod_Mario = 5;

			B_StartOtherRoutine	(Mod_595_MIL_Mario_NW, "KAMPF");
			B_StartOtherRoutine	(Mod_500_PAL_Garond_NW, "KAMPF");
			B_StartOtherRoutine	(Mod_502_RIT_Keroloth_NW, "KAMPF");
		};

		if (Mod_Mario == 5)
		&& (Npc_GetDistToWP(hero, "NW_CITY_UPTOWNPARADE") < 1000)
		{
			Mod_Mario = 6;

			Wld_SendTrigger	("EVT_KAMPF_MARIO_GAROND");

			CutsceneAn = TRUE;

			Npc_SetTarget	(Mod_595_MIL_Mario_NW, Mod_500_PAL_Garond_NW);

			Npc_GetTarget	(Mod_595_MIL_Mario_NW);

			AI_StartState	(Mod_595_MIL_Mario_NW, ZS_Attack, 0, "");

			Npc_SetTarget	(Mod_500_PAL_Garond_NW, Mod_595_MIL_Mario_NW);

			Npc_GetTarget	(Mod_500_PAL_Garond_NW);

			AI_StartState	(Mod_500_PAL_Garond_NW, ZS_Attack, 0, "");
		};

		if (Mod_Mario == 6)
		&& (Npc_IsDead(Mod_595_MIL_Mario_NW))
		{
			Mod_Mario = 7;

			CutsceneAn = FALSE;

			Wld_SendUnTrigger	("EVT_KAMPF_MARIO_GAROND");
		};

		if (Mod_Mario == 2)
		&& (Wld_GetDay() > Mod_Mario_Day)
		{
			Mod_Mario = 8;

			B_StartOtherRoutine	(Mod_595_MIL_Mario_NW, "PATROUILLE");
		};

		if (Mod_Mario == 9)
		&& (Npc_KnowsInfo(hero, Info_Mod_Mil_333_Mario))
		&& (!Npc_IsInState(Mil_333_Stadtwache, ZS_Talk))
		&& (!Mod_Mario_WachenWeg)
		{
			Mod_Mario_WachenWeg = TRUE;

			B_StartOtherRoutine	(Mil_332_Stadtwache, "MAUER");
			B_StartOtherRoutine	(Mil_333_Stadtwache, "MAUER");
		};

		if (Mod_Mario == 9)
		&& (Npc_KnowsInfo(hero, Info_Mod_Olav_Mario))
		&& (Npc_KnowsInfo(hero, Info_Mod_Mil_333_Mario))
		&& (B_GetAivar(hero, AIV_INVINCIBLE) == FALSE)
		{
			Mod_Mario = 10;

			B_StartOtherRoutine	(Mod_7648_VLK_Buerger_NW, "FLUCHT");
			B_StartOtherRoutine	(Mod_595_MIL_Mario_NW, "FLUCHT");
		};

		if (Mod_Mario == 10)
		&& (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe9))
		&& (!Npc_IsInState(Mod_595_MIL_Mario_NW, ZS_Talk))
		{
			Mod_Mario = 11;

			B_StartOtherRoutine	(Mod_7648_VLK_Buerger_NW, "TOT");
			B_StartOtherRoutine	(Mod_595_MIL_Mario_NW, "TOT");

			B_StartOtherRoutine	(Mil_332_Stadtwache, "START");
			B_StartOtherRoutine	(Mil_333_Stadtwache, "START");
			B_StartOtherRoutine	(Mod_980_MIL_Olav_NW, "START");
		};

		// Wo ist Vino?

		if (Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
		&& (Mod_Vino_Brennerei == 0)
		{
			if (Npc_IsDead(Spider_Mini_01))
			&& (Npc_IsDead(Spider_Mini_02))
			&& (Npc_IsDead(Spider_Mini_03))
			&& (Npc_IsDead(Spider_Mini_04))
			&& (Npc_IsDead(Spider_Mini_05))
			&& (Npc_IsDead(Spider_Mini_06))
			&& (Npc_IsDead(Spider_Mini_07))
			&& (Npc_IsDead(Spider_Mini_08))
			&& (Npc_IsDead(Spider_Mini_09))
			&& (Npc_IsDead(Spider_Mini_10))
			&& (Npc_IsDead(Spider_Mini_11))
			&& (Npc_IsDead(Spider_Mini_12))
			&& (Npc_IsDead(Spider_Mini_13))
			&& (Npc_IsDead(Spider_Mini_14))
			&& (Npc_IsDead(Spider_Mini_15))
			&& (Npc_IsDead(Spider_Mini_16))
			{
				Mod_Vino_Brennerei = 1;

				B_LogEntry	(TOPIC_MOD_VINO_WO, "So, the small spider-animals at the platform are eliminated.");

				B_StartOtherRoutine	(Mod_1937_JGR_Nandor_NW,	"START");
			};
		};

		// Kraut ist Kraut

		if (Mod_SenyanTom_Kraut == 0)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Senyan_HabSchwert))
			&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Daemonisch3))
			&& (Wld_GetDay()-1 > Mod_SenyanTom_Kraut_Tag)
			&& (!Npc_IsDead(Mod_598_MIL_Mika_NW))
			{
				Mod_SenyanTom_Kraut = 1;

				B_StartOtherRoutine	(Mod_967_BDT_Tom_NW,	"GEFANGEN");
				B_StartOtherRoutine	(Mod_963_BDT_Senyan_NW,	"HOEHLE");
			};
		};

		if (Mod_SenyanTom_Kraut == 1)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Andre_TomKraut2))
			&& (Npc_GetDistToWP(hero, "NW_CITY_HABOUR_KASERN_MAIN_ENTRY") < 300)
			{
				Mod_SenyanTom_Kraut = 2;				

				PrintScreen ("A short time later", -1, YPOS_LevelUp, FONT_Screen, 2);

				Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);
			};
		};

		if (Mod_SenyanTom_Kraut == 3)
		&& (Wld_GetDay() > Mod_SenyanTom_Kraut_Tag)
		{
			Mod_SenyanTom_Kraut = 4;

			B_StartOtherRoutine	(Mod_967_BDT_Tom_NW,	"START");
		};

		// Das Asylanten-Problem

		if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Asylanten3))
		&& (Mod_Hagen_Asylanten == 0)
		&& (!Npc_IsInState(Mod_592_PAL_Hagen_NW, ZS_Talk))
		{
			Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

			AI_Teleport	(hero, "NW_CITY_CITYHALL_01");

			Mod_Hagen_Asylanten = 2;
		};

		// Shakir kommt von Gritta zur�ck, wenn ein Tag vergangen und alle anderen Aufnahmequests erledigt sind

		if (Wld_GetDay() > Mod_ASS_ShakirGritta_Day)
		&& (Mod_ASS_ShakirGritta == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Shakir_Frau2))
		&& (Npc_KnowsInfo(hero, Info_Mod_Yasin_MikaTot))
		&& (Npc_KnowsInfo(hero, Info_Mod_Aabid_HabPakete))
		&& (Npc_KnowsInfo(hero, Info_Mod_Ramsi_JaegerTot))
		&& (Npc_KnowsInfo(hero, Info_Mod_Zeki_Laute))
		{
			Mod_ASS_ShakirGritta = 1;

			B_StartOtherRoutine	(Mod_580_NONE_Gritta_NW, "START");
			B_StartOtherRoutine	(Mod_7104_ASS_Shakir_NW, "START");
		};

		// Fellan zieht um

		if (Wld_GetDay() > Mod_Fellan_Day)
		&& (Mod_Fellan_Umzug == 1)
		{
			Mod_Fellan_Umzug = 2;

			Mod_Fellan_Day = Wld_GetDay();

			B_StartOtherRoutine	(Mod_574_NONE_Fellan_NW, "ATWILFRIED");
		};

		if (Wld_GetDay() > Mod_Fellan_Day)
		&& (Mod_Fellan_Umzug == 2)
		{
			Mod_Fellan_Umzug = 3;

			Mod_Fellan_Day = Wld_GetDay();

			B_StartOtherRoutine	(Mod_574_NONE_Fellan_NW, "ATWILFRIED2");
		};

		// Brian wird Fischer

		if (Mod_Brian_KeinLehrling == 0)
		{
			if (Wld_GetDay() > Mod_Brian_KeinLehrling_Day)
			&& (Npc_KnowsInfo(hero, Info_Mod_Brian_HaradLehrling))
			{
				Mod_Brian_KeinLehrling = 1;

				B_StartOtherRoutine	(Mod_566_NONE_Brian_NW, "FISCHER");
			};
		};

		// Held hat Harads Schwert ausger�stet f�r Kampf gegen Hock???

		if (Npc_KnowsInfo(hero, Info_Mod_Hock_HaradLehrling))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling4))
		&& (Npc_IsInState(Mod_1200_SLD_Soeldner_NW, ZS_Attack))
		{
			var C_ITEM rwp;
			rwp = Npc_GetReadiedWeapon(hero);

			if (Hlp_IsItem(rwp, ItMw_HaradSchwert) == FALSE)
			&& (Npc_IsInFightMode(hero, FMODE_MELEE))
			{
				Mod_HaradLehrling_Kampf = 1;
			};
		};

		// Harad kommt in Kapitel 4 in den Knast

		if (Kapitel >= 4)
		&& (Mod_LehrlingBei == 5)
		&& (Mod_HaradLehrling_Kap4 == 0)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest7))
			{
				Mod_HaradLehrling_Kap4 = 1;

				B_StartOtherRoutine	(Mod_535_NONE_Harad_NW, "KNAST");
				B_StartOtherRoutine	(Mod_980_MIL_Olav_NW, "HARAD2");
			};
		};

		// Harad verreckt im Knast

		if (Mod_HaradLehrling_Kap4 == 2)
		&& (Mod_HaradLehrling_SterbTag < Wld_GetDay())
		{
			Mod_HaradLehrling_Kap4 = 3;

			B_KillNpc	(Mod_535_NONE_Harad_NW);
		};

		// Erol bei Lance

		if (Mod_Erol_Fahrender == 8)
		{
			if (Wld_GetDay() > Mod_Erol_Unterwegs_Day)
			&& (Npc_KnowsInfo(hero, Info_Mod_Erol_Fahrender8))
			{
				Mod_Erol_Fahrender = 9;

				B_StartOtherRoutine (Mod_521_NONE_Erol_NW, "FAHRENDER");
			};
		};

		// Der verschollene Novize

		if (Mod_DaronAkahasch == 1)
		&& (Wld_GetDay()-14 > Mod_DaronAkahasch_Day)
		{
			Mod_DaronAkahasch = 2;

			B_RemoveNpc	(Mod_4016_NOV_Akahasch_NW);
		};

		// Zur�ck zu den Wurzeln

		if (Mod_Lobart_Unkraut == 1)
		&& (Npc_HasItems(hero, ItPl_Unkraut_Lobart) == 13)
		{
			Mod_Lobart_Unkraut = 2;

			B_LogEntry	(TOPIC_MOD_LOBART_UNKRAUT, "So, the fields are cleared of weeds.");
		};

		// Nagur kommt wieder frei

		if (Nagur_KillAkahasch == 2)
		&& (Kapitel >= 3)
		{
			Nagur_KillAkahasch = 3;

			B_StartOtherRoutine	(Mod_743_NONE_Nagur_NW, "TOT");
		};

		if (Nagur_KillAkahasch == 3)
		&& (Npc_HasItems(hero, ItMi_AkahaschKopf) == 1)
		{
			Nagur_KillAkahasch = 4;

			AI_Teleport	(Mod_743_NONE_Nagur_NW, "NW_TAVERN_TO_FOREST_05_02");
			B_StartOtherRoutine	(Mod_743_NONE_Nagur_NW, "RACHE");

			Wld_InsertNpc	(Mod_7779_ASS_Assassine_NW, "NW_TAVERN_TO_FOREST_05_02");
			Wld_InsertNpc	(Mod_7780_SNOV_Novize_NW, "NW_TAVERN_TO_FOREST_05_02");
		};

		if (Mod_Kardif_InfoTruhe == 1)
		{
			if (Mob_HasItems("KARDIFINFOTRUHE", ItMi_Joint) == 0)
			&& (Mob_HasItems("KARDIFINFOTRUHE", ItFo_Booze) == 0)
			&& (Mob_HasItems("KARDIFINFOTRUHE", ItFo_Wine) == 0)
			&& (Mob_HasItems("KARDIFINFOTRUHE", ItFo_Beer) == 0)
			&& (Mob_HasItems("KARDIFINFOTRUHE", ItPo_Tiergift) == 0)
			&& (Mob_HasItems("KARDIFINFOTRUHE", ItPo_Pflanzengift) == 0)
			{
				Mod_Kardif_InfoTruhe = 0;

				ptr = MEM_SearchVobByName("KARDIFINFOTRUHE");

				vob = MEM_PtrToInst(ptr);

				vob.trafoObjToWorld[3] = mkf(55);
				vob.trafoObjToWorld[7] = mkf(650);
				vob.trafoObjToWorld[11] = mkf(-1440);

				VobPositionUpdated(ptr);
			};
		};

		// Es geht nur ums Gesch�ft

		if (Npc_KnowsInfo(hero, Info_Mod_Nagur_Geschaeft))
		&& (Mob_HasItems("KARDIFINFOTRUHE", ItMi_NagurPaket) == 1)
		&& (Mod_Nagur_Geschaeft == 0)
		{
			Mod_Nagur_Geschaeft = 1;

			B_LogEntry	(TOPIC_MOD_NAGUR_GESCHAEFT, "I put the package in the crates.");
		};

		if (Mod_Nagur_Geschaeft == 1)
		&& (Npc_GetDistToWP(hero, "NW_CITY_HABOUR_KASERN_05_01") < 500)
		{
			Mod_Nagur_Geschaeft = 2;

			ptr = MEM_SearchVobByName("KARDIFINFOTRUHE");

			vob = MEM_PtrToInst(ptr);

			vob.trafoObjToWorld[3] = mkf(55);
			vob.trafoObjToWorld[7] = mkf(650);
			vob.trafoObjToWorld[11] = mkf(-1440);

			VobPositionUpdated(ptr);
		};

		if (Mod_Nagur_Geschaeft == 2)
		{
			NagurGeschaefte_Scene();
		};

		if (Mod_Nagur_Geschaeft == 5)
		&& (Npc_IsDead(Mod_7782_ASS_Assassine_NW))
		&& (Npc_IsDead(Mod_7781_SNOV_Novize_NW))
		&& (Npc_IsDead(Mod_7783_OUT_Schmuggler_NW))
		{
			Mod_Nagur_Geschaeft = 6;

			B_LogEntry	(TOPIC_MOD_NAGUR_GESCHAEFT, "I can now report to Nagur that his competitors have been eliminated.");
		};

		if (Mod_Nagur_Geschaeft == 4)
		&& (Npc_KnowsInfo(hero, Info_Mod_Nagur_Geschaeft2))
		&& (Wld_GetDay()-2 >= Mod_Nagur_Geschaeft_Tag)
		{
			Mod_Nagur_Geschaeft = 7;

			B_RemoveNpc	(Mod_7782_ASS_Assassine_NW);
			B_RemoveNpc	(Mod_7781_SNOV_Novize_NW);
			B_RemoveNpc	(Mod_743_NONE_Nagur_NW);

			B_StartOtherRoutine	(Mod_7783_OUT_Schmuggler_NW, "ATNAGUR");
		};

		// Till schlie�t sich je nach Held einer Gilde an

		if (Mod_TillChange == 1)
		&& (Wld_GetDay()-3 > Mod_TillChange_Day)
		{
			Mod_TillChange = 2;

			if (hero.guild == GIL_VLK)
			{
				B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "FM");

				AI_UnequipArmor	(Mod_541_NONE_Till_NW);

				CreateInvItems	(Mod_541_NONE_Till_NW, ItAr_Nov_L, 1);

				AI_EquipArmor	(Mod_541_NONE_Till_NW, ItAr_Nov_L);
			}
			else if (hero.guild == GIL_NOV)
			{
				B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "WM");

				AI_UnequipArmor	(Mod_541_NONE_Till_NW);

				CreateInvItems	(Mod_541_NONE_Till_NW, ITAR_Wassernovize1, 1);

				AI_EquipArmor	(Mod_541_NONE_Till_NW, ITAR_Wassernovize1);
			}
			else if (hero.guild == GIL_MIL)
			{
				B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "SLD");

				AI_UnequipArmor	(Mod_541_NONE_Till_NW);

				CreateInvItems	(Mod_541_NONE_Till_NW, ItAr_Sld_L, 1);

				AI_EquipArmor	(Mod_541_NONE_Till_NW, ItAr_Sld_L);
			};
		};

		// Den/Rangar werden neuer Armbrustlehrer in der Stadt

		if (Kapitel >= 3)
		&& (!Mod_Miliz_Armbrust)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
			{
				if (Mod_Den_Problem == 0)
				|| (Mod_DenVerpfiffen == 1)
				{
					B_StartOtherRoutine	(Mod_747_MIL_Rangar_NW, "ARMBRUST");
				}
				else
				{
					B_StartOtherRoutine	(Mod_969_MIL_Den_NW, "ARMBRUST");
				};

				Mod_Miliz_Armbrust = TRUE;
			};
		};
		
		// Das Treffen
		
		if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Treffen))
		&& (Mod_Treffen_Ende == FALSE)
		&& (!Npc_IsInState(Mod_533_SLD_Gorn_NW, ZS_Talk))
		&& (!Npc_IsInState(Mod_538_RDW_Diego_NW, ZS_Talk))
		&& (!Npc_IsInState(Mod_557_PSINOV_Lester_NW, ZS_Talk))
		&& (!Npc_IsInState(Mod_534_KDF_Milten_NW, ZS_Talk)) {
			Mod_Treffen_Ende = TRUE;

			B_StartOtherRoutine(Mod_533_SLD_Gorn_NW, "START");
			B_StartOtherRoutine(Mod_534_KDF_Milten_NW, "START");
			B_StartOtherRoutine(Mod_538_RDW_Diego_NW, "START");
			
			if (Kapitel == 1 && Mod_LesterInRelendel) {
				B_StartOtherRoutine(Mod_557_PSINOV_Lester_NW, "TOT");
			} else {
				B_StartOtherRoutine(Mod_557_PSINOV_Lester_NW, "START");
			};
		};
		
		// Apprentice Quests
		
		if (Mod_LehrlingsStimmen < 4) {
			if (Npc_KnowsInfo(hero, Info_Mod_Harad_Stimme))
			&& (Npc_KnowsInfo(hero, Info_Mod_Constantino_Stimme))
			&& (Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
			&& (Npc_KnowsInfo(hero, Info_Mod_Thorben_Stimme)) {
				Mod_LehrlingsStimmen = 4;
			};
		};
	};

	if (CurrentLevel == ADDONWORLD_ZEN)
	{
		// Der gestrandete W�stenpirat

		if (Npc_KnowsInfo(hero, Info_Mod_Brody_Hi))
		&& (!Npc_IsInState(Mod_7293_OUT_Brody_AW, ZS_Talk))
		&& (!Npc_IsDead(Mod_7293_OUT_Brody_AW))
		&& (Mod_BrodyQuest == 1)
		{
			B_KillNpc	(Mod_7293_OUT_Brody_AW);

			Mod_BrodyQuest = 2;
		};

		// Einen wei�en Sumpfhai finden

		if (Mod_EchsenQuest_03 == 6)
		&& (Hlp_IsValidNpc(Swampshark_Weiss))
		&& (Npc_GetDistToNpc(hero, Swampshark_Weiss) < 1500)
		{
			Mod_EchsenQuest_03 = 7;

			AI_TurnToNpc	(hero, Swampshark_Weiss);

			AI_Output(hero, NULL, "Info_Mod_Hero_WeisserSumpfhai_15_00"); //There he is!

			B_StartOtherRoutine	(Swampshark_Weiss, "TOT");
			B_StartOtherRoutine	(Mod_12012_DRA_Echse_AW, "TOT");
			B_StartOtherRoutine	(Mod_12013_DRA_Echse_AW, "TOT");
			B_StartOtherRoutine	(Mod_12014_DRA_Echse_AW, "TOT");
			B_StartOtherRoutine	(Mod_12015_DRA_Echse_AW, "TOT");

			B_LogEntry_More	(TOPIC_MOD_ECHSEN_VERTRAUEN, TOPIC_MOD_ECHSEN_SUMPFHAIFINDEN, "I found a white swamp shark.", "We found a white marsh shark and the young lizards are following him. That should do it.");
			B_SetTopicStatus	(TOPIC_MOD_ECHSEN_SUMPFHAIFINDEN, LOG_SUCCESS);

			B_GivePlayerXP	(500);
		};

		if (Mod_EchsenQuest_01 == 4)
		&& (Mod_EchsenQuest_02 == 6)
		&& (Mod_EchsenQuest_03 == 7)
		&& (Mod_EchsenQuest == 0)
		{
			Mod_EchsenQuest = 1;

			B_StartOtherRoutine	(Mod_12003_DRA_Albi_AW, "HUT");
		};

		// Brody, der W�stenpirat

		if (Npc_KnowsInfo(hero, Info_Mod_Brody_AmZiel))
		&& (Mod_Brody_Weg == 0)
		&& (Npc_GetDistToNpc(hero, Mod_7293_OUT_Brody_AW) > 5000)
		{
			Mod_Brody_Weg = 1;

			B_RemoveNpc	(Mod_7293_OUT_Brody_AW);
		};

		// Geheimnis der Echsen

		if (Mod_Echsis_GolemKiller > 15)
		&& (Npc_KnowsInfo(hero, Info_Mod_Albi_Geheimnis2))
		&& (Mod_Echsis_Geheimnis == 0)
		{
			Mod_Echsis_Geheimnis = 1;

			B_LogEntry	(TOPIC_MOD_ECHSIS_EIERSUCHE, "That should do for now. Now I should stop by Albi's.");

			// Spawnen der zwei neuen Echsen

			Wld_InsertNpc	(Mod_12021_DRA_Albino_AW,	"BANDIT");
			Wld_InsertNpc	(Mod_12022_DRA_Albino_AW,	"BANDIT");

			B_StartOtherRoutine	(Mod_12003_DRA_Albi_AW,	"ALBINOS");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Albi_Geheimnis4))
		&& (Npc_GetDistToWP(hero, "WP_ALRAUNENTOR_FALLE") < 500)
		&& (Mod_AlraunenFalle == 0)
		{
			if (!Npc_IsDead(Mod_12021_DRA_Albino_AW))
			{
				AI_GotoWP	(Mod_12021_DRA_Albino_AW, "WP_ALRAUNENTOR_FALLE");

				Mod_AlraunenFalle = 1;
			}
			else if (!Npc_IsDead(Mod_12022_DRA_Albino_AW))
			{
				AI_GotoWP	(Mod_12022_DRA_Albino_AW, "WP_ALRAUNENTOR_FALLE");

				Mod_AlraunenFalle = 1;
			};
		};

		if (Mod_AlraunenFalle == 1)
		&& (Npc_GetDistToWP(hero, "ADW_SENAT_INSIDE_02") < 500)
		{
			B_StartOtherRoutine	(Mod_12021_DRA_Albino_AW, "START");
			B_StartOtherRoutine	(Mod_12022_DRA_Albino_AW, "START");

			Mod_12021_DRA_Albino_AW.aivar[AIV_Partymember] = FALSE;
			Mod_12022_DRA_Albino_AW.aivar[AIV_Partymember] = FALSE;

			Mod_AlraunenFalle = 2;
		};

		// Zum Abschuss freigegeben

		if (Mod_Eremit_Harpien == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Eremit_PreLehrer2))
		{
			if (Npc_IsDead(Harpie_Eremit_03))
			&& (Npc_IsDead(Harpie_Eremit_04))
			&& (Npc_IsDead(Harpie_Eremit_05))
			{
				Mod_Eremit_Harpien = 1;

				B_LogEntry	(TOPIC_MOD_EREMIT_HARPIEN, "I suppose that's what all fluttermen should do.... or flapper women.... any way whatsoever.");
			};
		};

		// Plagegeister

		if (Mod_Riordian_Geister == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Riordian_AW_SteinkreisTafel))
		&& (Wld_GetDay()-2 >= Mod_Riordian_Geister_Tag)
		{
			Mod_Riordian_Geister = 1;

			B_StartOtherRoutine	(Mod_9003_KDW_Riordian_AW, "PLAGEGEISTER");
			B_StartOtherRoutine	(Mod_9004_KDW_Merdarion_AW, "PLAGEGEISTER");
			B_StartOtherRoutine	(Mod_9001_KDW_Cronos_AW, "PLAGEGEISTER");
			B_StartOtherRoutine	(Mod_9002_KDW_Nefarius_AW, "PLAGEGEISTER");

			Wld_InsertNpc	(RuheloseSeele_01, "ADW_ENTRANCE_PLATEAU_11");
			Wld_InsertNpc	(RuheloseSeele_02, "ADW_ENTRANCE_PLATEAU_10A");
			Wld_InsertNpc	(RuheloseSeele_03, "ADW_ENTRANCE_02");
			Wld_InsertNpc	(RuheloseSeele_04, "ADW_ENTRANCE_PLATEAU_07A");
			Wld_InsertNpc	(RuheloseSeele_05, "ADW_ENTRANCE_PLATEAU_14");
			Wld_InsertNpc	(RuheloseSeele_06, "ADW_ENTRANCE_BUILDING1_02");
			Wld_InsertNpc	(RuheloseSeele_07, "ADW_ANCIENTGHOST");
			Wld_InsertNpc	(RuheloseSeele_08, "ADW_ANCIENTGHOST");
			Wld_InsertNpc	(RuheloseSeele_09, "ADW_VALLEY_BIGCAVE_18");
		};
	};

	if (CurrentLevel == RELENDEL_ZEN)
	{
		// Hexenwahn

		if (Mod_AnnaQuest == 6)
		&& (!Npc_IsInState(Mod_7374_OUT_Gerichtswache_01, ZS_Talk))
		&& (Npc_GetDistToWP(hero, "REL_CITY_341") < 500)
		{
			Mod_AnnaQuest = 7;

			B_StartOtherRoutine	(Mod_7371_OUT_Richter_REL, "ANNAPROZESS");
		};

		if (Mod_AnnaQuest == 8)
		{
			if (!Npc_IsDead(Mod_7370_OUT_Ulrich_REL))
			&& (!Npc_IsInState(Mod_7370_OUT_Ulrich_REL, ZS_Attack))
			{
				if (Npc_IsDead(Mod_7373_OUT_Schoeppe_REL))
				{
					if (Npc_IsDead(Mod_7372_OUT_Schoeppe_REL))
					{
						if (Npc_IsDead(Mod_7371_OUT_Richter_REL))
						{
							if (Npc_IsDead(Mod_7374_OUT_Gerichtswache_01))
							|| (Mod_AnnaQuest_WachenWeg == 1)
							{
								if (Npc_IsDead(Mod_7375_OUT_Gerichtswache_02))
								|| (Mod_AnnaQuest_WachenWeg == 1)
								{
								}
								else
								{
									B_Attack	(Mod_7370_OUT_Ulrich_REL, Mod_7375_OUT_Gerichtswache_02, AR_NONE, 0);
								};
							}
							else
							{
								B_Attack	(Mod_7370_OUT_Ulrich_REL, Mod_7374_OUT_Gerichtswache_01, AR_NONE, 0);
							};
						}
						else
						{
							B_Attack	(Mod_7370_OUT_Ulrich_REL, Mod_7371_OUT_Richter_REL, AR_NONE, 0);
						};
					}
					else
					{
						B_Attack	(Mod_7370_OUT_Ulrich_REL, Mod_7372_OUT_Schoeppe_REL, AR_NONE, 0);
					};
				}
				else
				{
					B_Attack	(Mod_7370_OUT_Ulrich_REL, Mod_7373_OUT_Schoeppe_REL, AR_NONE, 0);
				};
			};

			if (!Npc_IsDead(Mod_7373_OUT_Schoeppe_REL))
			&& (!Npc_IsDead(Mod_7370_OUT_Ulrich_REL))
			&& (!Npc_IsInState(Mod_7373_OUT_Schoeppe_REL, ZS_Attack))
			{
				B_Attack	(Mod_7373_OUT_Schoeppe_REL, Mod_7370_OUT_Ulrich_REL, AR_NONE, 0);
			};

			if (!Npc_IsDead(Mod_7372_OUT_Schoeppe_REL))
			&& (!Npc_IsDead(Mod_7370_OUT_Ulrich_REL))
			&& (!Npc_IsInState(Mod_7372_OUT_Schoeppe_REL, ZS_Attack))
			{
				B_Attack	(Mod_7372_OUT_Schoeppe_REL, Mod_7370_OUT_Ulrich_REL, AR_NONE, 0);
			};

			if (!Npc_IsDead(Mod_7371_OUT_Richter_REL))
			&& (!Npc_IsDead(Mod_7370_OUT_Ulrich_REL))
			&& (!Npc_IsInState(Mod_7371_OUT_Richter_REL, ZS_Attack))
			{
				B_StartOtherRoutine	(Mod_7371_OUT_Richter_REL, "START");

				B_Attack	(Mod_7371_OUT_Richter_REL, Mod_7370_OUT_Ulrich_REL, AR_NONE, 0);
			};

			if (!Npc_IsDead(Mod_7375_OUT_Gerichtswache_02))
			&& (!Npc_IsDead(Mod_7370_OUT_Ulrich_REL))
			&& (!Npc_IsInState(Mod_7375_OUT_Gerichtswache_02, ZS_Attack))
			&& (Mod_AnnaQuest_WachenWeg == 0)
			{
				B_Attack	(Mod_7375_OUT_Gerichtswache_02, Mod_7370_OUT_Ulrich_REL, AR_NONE, 0);
			};

			if (!Npc_IsDead(Mod_7374_OUT_Gerichtswache_01))
			&& (!Npc_IsDead(Mod_7370_OUT_Ulrich_REL))
			&& (!Npc_IsInState(Mod_7374_OUT_Gerichtswache_01, ZS_Attack))
			&& (Mod_AnnaQuest_WachenWeg == 0)
			{
				B_Attack	(Mod_7374_OUT_Gerichtswache_01, Mod_7370_OUT_Ulrich_REL, AR_NONE, 0);
			};

			if (Npc_IsDead(Mod_7370_OUT_Ulrich_REL))
			{
				Mod_AnnaQuest = 10;

				B_GivePlayerXP	(100);

				B_LogEntry	(TOPIC_MOD_KHORATA_HEXENWAHN, "I stopped Ulrich.");
				B_SetTopicStatus	(TOPIC_MOD_KHORATA_HEXENWAHN, LOG_SUCCESS);

				B_StartOtherRoutine	(Mod_7371_OUT_Richter_REL, "START");
			};
			if (Npc_IsDead(Mod_7371_OUT_Richter_REL))
			&& (Npc_IsDead(Mod_7372_OUT_Schoeppe_REL))
			&& (Npc_IsDead(Mod_7373_OUT_Schoeppe_REL))
			{
				if (Mod_AnnaQuest_WachenWeg == 1)
				|| ((Npc_IsDead(Mod_7374_OUT_Gerichtswache_01))
				&& (Npc_IsDead(Mod_7375_OUT_Gerichtswache_02)))
				{
					Mod_AnnaQuest = 9;

					B_GivePlayerXP	(100);

					B_LogEntry	(TOPIC_MOD_KHORATA_HEXENWAHN, "I let Ulrich be granted and helped to free Anna.");
					B_SetTopicStatus	(TOPIC_MOD_KHORATA_HEXENWAHN, LOG_SUCCESS);
				};
			};
		};

		// Diese Schweine

		if (Mod_Henrik_Schweine == 1)
		&& (Npc_IsDead(Molerat_Henrik_01))
		&& (Npc_IsDead(Molerat_Henrik_02))
		&& (Npc_IsDead(Molerat_Henrik_03))
		&& (Npc_IsDead(Molerat_Henrik_04))
		&& (Npc_IsDead(Molerat_Henrik_05))
		&& (Npc_IsDead(Molerat_Henrik_06))
		&& (Npc_IsDead(Molerat_Henrik_08))
		&& (Npc_IsDead(Molerat_Henrik_09))
		&& (Npc_IsDead(Molerat_Henrik_10))
		&& (Npc_IsDead(Molerat_Henrik_11))
		&& (Npc_IsDead(Molerat_Henrik_12))
		&& (Npc_IsDead(Molerat_Henrik_07))
		{
			Mod_Henrik_Schweine = 2;

			B_GivePlayerXP	(50);

			B_LogEntry	(TOPIC_MOD_KHORATA_SCHWEINE, "Henrik should be satisfied, the Molerats are now bathing in their own blood.");
		};

		// Henker nur im Faustkampf verwundbar

		if (Mod_REL_HenkerKampf == 2)
		&& (!Npc_IsInFightMode(hero, FMODE_FIST))
		{
			Mod_7391_OUT_Henker_REL.flags = 2;
		}
		else
		{
			Mod_7391_OUT_Henker_REL.flags = 0;
		};

		// Unfrieden stiften

		if (Mob_HasItems("RUPRECHTSTRUHE", ItMi_Gold) == 0)
		&& (Mod_LeonhardRuprecht == 1)
		{
			Mod_LeonhardRuprecht = 2;

			B_LogEntry	(TOPIC_MOD_KHORATA_UNFRIEDEN, "I emptied Ruprecht's chest.");
		};

		// Ein r�tselhaftes Verschwinden

		if (Mod_SaveOther == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres03))
		&& (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres04))
		&& (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres05))
		&& (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres03))
		&& (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres04))
		&& (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres05))
		&& (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres06))
		&& (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres07))
		&& (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres08))
		&& (Mod_EndresIndizien == 0)
		{
			Mod_EndresIndizien = 1;

			B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "I should go to the judge with my findings and explain the case to him.");

			Wld_InsertNpc	(Mod_7492_OUT_Roman_REL, "REL_CITY_294");
		};

		if (Mod_EndresIndizien == 3)
		&& (C_NpcIsDown(Mod_7476_OUT_Arzt_REL))
		{
			Mod_EndresIndizien = 4;

			Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

			AI_Teleport	(hero, "REL_CITY_341");
		};

		if (Mod_EndresIndizien == 5)
		&& (!Npc_IsInState(Mod_7476_OUT_Arzt_REL, ZS_Talk))
		&& (Mod_EndresIndizien_Teleport == FALSE)
		{
			Mod_EndresIndizien_Teleport = TRUE;

			Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

			AI_Teleport	(hero, "REL_CITY_341");
		};

		// Hasenfu�

		if ((Mod_REL_Hasenfuss == 4)
		|| (Mod_REL_Hasenfuss == 5))
		{
			if (Npc_IsDead(Scavenger_Demon_Dalton_01))
			&& (Npc_IsDead(Scavenger_Demon_Dalton_02))
			&& (Npc_IsDead(Scavenger_Demon_Dalton_03))
			&& (Npc_IsDead(Scavenger_Demon_Dalton_04))
			{
				if (Mod_REL_Hasenfuss == 4) // Gemeinsam
				{
					B_LogEntry	(TOPIC_MOD_KHORATA_HASENFUSS, "Ivan and I shot the grasslandscavengers together.");

					Mod_REL_Hasenfuss = 8;
				}
				else if (Mod_REL_Hasenfuss == 5) // Alleine
				{
					B_LogEntry	(TOPIC_MOD_KHORATA_HASENFUSS, "I shot the Graslandscavenger on my own.");

					Mod_REL_Hasenfuss = 9;
				};
			};
		};

		// Schutzbed�rftig

		if (Npc_HasItems(hero, ItAm_Geisteramulett) == 1)
		&& (Mod_Jim_Schutz == 1)
		&& (Mod_EndresGeist == 0)
		&& (Mod_Jim_FakeGeist == 0)
		&& (Npc_GetDistToWP(hero, "REL_SURFACE_246") < 500)
		{
			Mod_Jim_FakeGeist = 1;

			B_LogEntry	(TOPIC_MOD_JIM_SCHUTZ, "There is nothing to be seen of a soul in the cemetery far and wide. I should come back another night when someone died in Khorata.");
		};

		if (Mod_Jim_Schutz == 1)
		&& (Npc_KnowsInfo(hero, Info_Mod_Endres_Hi))
		&& (!Npc_IsInState(Mod_7610_OUT_Endres_REL, ZS_Talk))
		{
			Mod_Jim_Schutz = 2;

			B_LogEntry	(TOPIC_MOD_JIM_SCHUTZ, "The amulet works perfectly.");

			B_RemoveNpc	(Mod_7610_OUT_Endres_REL);
		};

		// Endres als Geist spawnen

		if (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres))
		&& (Mod_EndresGeist == 0)
		{
			B_RemoveNpc	(Mod_7483_OUT_Endres_REL);

			Wld_InsertNpc	(Mod_7610_OUT_Endres_REL, "TOT");

			Mod_EndresGeist = 1;
		};

		// Spender-Freuden

		if ((Mod_Jim_Freudenspender == 1)
		|| (Mod_Jim_Freudenspender == 2))
		&& (Npc_HasItems(hero, ItMi_FreudenspenderPaket) == 1)
		{
			Mod_Jim_Freudenspender = 3;

			B_LogEntry	(TOPIC_MOD_JIM_FREUDENSPENDER, "I stole the package of delights from the warehouse.");
		};

		if (Mod_Jim_Freudenspender == 5)
		&& (!Npc_IsInState(Mod_10040_Orc_Jim_REL, ZS_Talk))
		{
			Mod_Jim_Freudenspender = 6;

			B_KillNpc	(Mod_10040_Orc_Jim_REL);
		};

		// Unruhen in Khorata

		if (Mod_REL_Kandidat == 0)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Unruhen2))
			&& (Npc_KnowsInfo(hero, Info_Mod_Lukas_Unruhen3))
			&& (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen3))
			{
				Mod_REL_Kandidat = 1;

				B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "I can now get a picture of all three candidates and should tell August what decision I made.");
			};
		};

		if (Mod_REL_TheodorusS == 0)
		&& (Npc_GetDistToWP(hero, "REL_CITY_107") < 500)
		&& (Mod_REL_Stadthalter == 1)
		&& (Npc_HasItems(hero, ItWr_TheodorusBotschaft) == 1)
		{
			Mod_REL_TheodorusS = 1;

			AI_GotoWP	(hero, "REL_CITY_107");

			AI_AlignToWP	(hero);

			Wld_SendTrigger	("EVT_CAMERA_THEODORUS");

			CutsceneAn = TRUE;
		};

		if (Mod_REL_TheodorusS == 1)
		{
			if (Mod_REL_TheodorusS_Counter == 1)
			{
				AI_Output(hero, NULL, "Info_Mod_Hero_TheodorusBotschaft_15_00"); //Announcement in the name of Theodorus
			};
			if (Mod_REL_TheodorusS_Counter == 6)
			{
				AI_Output(hero, NULL, "Info_Mod_Hero_TheodorusBotschaft_15_01"); //Citizens of Khoratas, I, the new governor, hereby inform you of any changes in the miners' strike that will take effect immediately.
			};
			if (Mod_REL_TheodorusS_Counter == 11)
			{
				AI_Output(hero, NULL, "Info_Mod_Hero_TheodorusBotschaft_15_02"); //The complaints they have rightly made are subject to detailed examination;
			};
			if (Mod_REL_TheodorusS_Counter == 16)
			{
				AI_Output(hero, NULL, "Info_Mod_Hero_TheodorusBotschaft_15_03"); //only then will I decide whether to resume work in the mine under new conditions.
			};
			if (Mod_REL_TheodorusS_Counter == 21)
			{
				AI_Output(hero, NULL, "Info_Mod_Hero_TheodorusBotschaft_15_04"); //The deaths to date are tragic, but I will find a way to compensate the families affected.
			};
			if (Mod_REL_TheodorusS_Counter == 26)
			{
				AI_Output(hero, NULL, "Info_Mod_Hero_TheodorusBotschaft_15_05"); //I implore you not to let the miners feel your possibly pent-up anger.
			};
			if (Mod_REL_TheodorusS_Counter == 31)
			{
				AI_Output(hero, NULL, "Info_Mod_Hero_TheodorusBotschaft_15_06"); //Respectfully,
			};
			if (Mod_REL_TheodorusS_Counter == 36)
			{
				AI_Output(hero, NULL, "Info_Mod_Hero_TheodorusBotschaft_15_07"); //theodorus
			};
			if (Mod_REL_TheodorusS_Counter == 41)
			{
				Mod_REL_TheodorusS = 2;

				CutsceneAn = FALSE;

				B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "I read the message.");

				B_GivePlayerXP	(100);

				AI_Teleport	(Mod_7516_OUT_Lukas_REL,	"REL_CITY_106");
				B_StartOtherRoutine	(Mod_7516_OUT_Lukas_REL,	"THEODORUS");
				AI_Teleport	(Mod_7516_OUT_Lukas_REL,	"REL_CITY_106");

				// Theodorus' Versammlung vor Stadttor

				B_StartOtherRoutine	(Mod_7620_OUT_Wache_REL, "THEODORUS");
				B_StartOtherRoutine	(Mod_7621_OUT_Wache_REL, "THEODORUS");
				B_StartOtherRoutine	(Mod_7385_OUT_August_REL, "THEODORUS");
				B_StartOtherRoutine	(Mod_7613_OUT_Schuerfer_REL, "THEODORUS");
				B_StartOtherRoutine	(Mod_7492_OUT_Roman_REL, "THEODORUS");
				B_StartOtherRoutine	(Mod_7614_OUT_Schuerfer_REL, "THEODORUS");
				B_StartOtherRoutine	(Mod_7615_OUT_Schuerfer_REL, "THEODORUS");
				B_StartOtherRoutine	(Mod_7617_OUT_Schuerfer_REL, "THEODORUS");
				B_StartOtherRoutine	(Mod_7616_OUT_Schuerfer_REL, "THEODORUS");
				B_StartOtherRoutine	(Mod_7618_OUT_Norman_REL, "THEODORUS");
				B_StartOtherRoutine	(Mod_7619_OUT_Frazer_REL, "THEODORUS");
			};

			Mod_REL_TheodorusS_Counter += 1;
		};

		if (Mod_REL_TheodorusS == 2)
		&& (Npc_GetDistToWP(hero, "REL_CITY_398") < 500)
		{
			Mod_REL_TheodorusS = 3;

			CutsceneAn = TRUE;

			AI_GotoWP	(hero, "REL_CITY_398");

			Wld_SendTrigger	("EVT_CAMERA_THEODORUS_TORFIGHT");

			Mod_REL_TheodorusS_Counter = 0;
		};

		if (Mod_REL_TheodorusS == 3)
		{
			if (Mod_REL_TheodorusS_Counter == 1)
			{
				AI_TurnToNpc	(Mod_7382_OUT_Theodorus_REL, hero);
				AI_TurnToNpc	(Mod_7385_OUT_August_REL, hero);
				AI_TurnToNpc	(Mod_7620_OUT_Wache_REL, hero);
				AI_TurnToNpc	(hero, Mod_7382_OUT_Theodorus_REL);

				AI_Output(Mod_7382_OUT_Theodorus_REL, NULL, "Info_Mod_Hero_TheodorusTor_09_00"); //Do you have one last time? We're here about a little problem.
			};
			if (Mod_REL_TheodorusS_Counter == 6)
			{
				AI_Output(hero, NULL, "Info_Mod_Hero_TheodorusTor_15_01"); //What's this about?
			};
			if (Mod_REL_TheodorusS_Counter == 11)
			{
				AI_Output(Mod_7385_OUT_August_REL, NULL, "Info_Mod_Hero_TheodorusTor_13_02"); //(mumbles) Anselm still seems to live in the brains of certain people...
			};
			if (Mod_REL_TheodorusS_Counter == 16)
			{
				AI_TurnToNpc	(Mod_7620_OUT_Wache_REL, Mod_7385_OUT_August_REL);

				AI_Output(Mod_7620_OUT_Wache_REL, NULL, "Info_Mod_Hero_TheodorusTor_07_03"); //Shut up! Shut up!
			};
			if (Mod_REL_TheodorusS_Counter == 21)
			{
				AI_TurnToNpc	(Mod_7620_OUT_Wache_REL, hero);

				AI_Output(Mod_7620_OUT_Wache_REL, NULL, "Info_Mod_Hero_TheodorusTor_07_04"); //I'm warning you, don't interfere.
			};
			if (Mod_REL_TheodorusS_Counter == 26)
			{
				AI_Output(hero, NULL, "Info_Mod_Hero_TheodorusTor_15_05"); //It almost sounds like an invitation.
			};
			if (Mod_REL_TheodorusS_Counter == 31)
			{
				AI_ReadyMeleeWeapon	(Mod_7620_OUT_Wache_REL);
				AI_TurnToNpc	(Mod_7382_OUT_Theodorus_REL, Mod_7620_OUT_Wache_REL);
				AI_TurnToNpc	(Mod_7385_OUT_August_REL, Mod_7620_OUT_Wache_REL);

				AI_Output(Mod_7620_OUT_Wache_REL, NULL, "Info_Mod_Hero_TheodorusTor_07_06"); //You don't want to understand, do you? Get the fuck out of our town, you wimps, or I'll throw you in the mouth.
			};
			if (Mod_REL_TheodorusS_Counter == 36)
			{
				AI_Output(Mod_7385_OUT_August_REL, NULL, "Info_Mod_Hero_TheodorusTor_13_07"); //You're hopelessly outnumbered.
			};
			if (Mod_REL_TheodorusS_Counter == 41)
			{
				AI_Output(Mod_7620_OUT_Wache_REL, NULL, "Info_Mod_Hero_TheodorusTor_07_08"); //(laughs gloatingly) That's what we want to see. Let's show the traitors who's master of the house!

				B_StartOtherRoutine	(Mod_7375_OUT_Gerichtswache_02, "STADTTOR");
				AI_Teleport	(Mod_7375_OUT_Gerichtswache_02, Mod_7375_OUT_Gerichtswache_02.wp);
				B_StartOtherRoutine	(Mod_7374_OUT_Gerichtswache_01, "STADTTOR");
				AI_Teleport	(Mod_7374_OUT_Gerichtswache_01, Mod_7374_OUT_Gerichtswache_01.wp);
			};
			if (Mod_REL_TheodorusS_Counter == 46)
			{
				Mod_REL_TheodorusS = 4;

				CutsceneAn = FALSE;

				Mod_7620_OUT_Wache_REL.guild = GIL_STRF;
				Mod_7621_OUT_Wache_REL.guild = GIL_STRF;
				Mod_7374_OUT_Gerichtswache_01.guild = GIL_STRF;
				Mod_7375_OUT_Gerichtswache_02.guild = GIL_STRF;

				Npc_SetTrueGuild	(Mod_7620_OUT_Wache_REL, GIL_STRF);
				Npc_SetTrueGuild	(Mod_7621_OUT_Wache_REL, GIL_STRF);
				Npc_SetTrueGuild	(Mod_7374_OUT_Gerichtswache_01, GIL_STRF);
				Npc_SetTrueGuild	(Mod_7375_OUT_Gerichtswache_02, GIL_STRF);
			};

			Mod_REL_TheodorusS_Counter += 1;
		};

		if (Mod_REL_WendelS == 2)
		&& (!Npc_IsInState(Mod_7480_OUT_Wendel_REL, ZS_Talk))
		{
			Mod_REL_WendelS = 3;

			CutsceneAn = TRUE;

			Wld_SendTrigger	("EVT_CAMERA_WENDELROMAN");

			Mod_REL_WendelS_Counter = 0;
		};

		if (Mod_REL_WendelS == 3)
		{
			if (Mod_REL_WendelS_Counter == 1)
			{
				AI_TurnToNpc	(Mod_7480_OUT_Wendel_REL, Mod_7492_OUT_Roman_REL);
				AI_TurnToNpc	(Mod_7492_OUT_Roman_REL, Mod_7480_OUT_Wendel_REL);

				AI_Output(Mod_7492_OUT_Roman_REL, NULL, "Info_Mod_Hero_WendelRoman_08_00"); //Draw your weapon, unworthy man! You had it in your hand for a long time to ease the working conditions for us diggers!
			};
			if (Mod_REL_WendelS_Counter == 6)
			{
				AI_Output(Mod_7480_OUT_Wendel_REL, NULL, "Info_Mod_Hero_WendelRoman_01_01"); //The ore mining was carried out on Anselm's instructions. I didn't know about your terms.
			};
			if (Mod_REL_WendelS_Counter == 11)
			{
				AI_Output(Mod_7492_OUT_Roman_REL, NULL, "Info_Mod_Hero_WendelRoman_08_02"); //Whoa, liar! (coughs) Are you too cowardly to face me in battle?
			};
			if (Mod_REL_WendelS_Counter == 16)
			{
				AI_Output(Mod_7480_OUT_Wendel_REL, NULL, "Info_Mod_Hero_WendelRoman_01_03"); //Calm down, calm down. We're here to change your situation.
			};
			if (Mod_REL_WendelS_Counter == 21)
			{
				Mod_REL_WendelS = 4;

				CutsceneAn = FALSE;

				Wld_SendUntrigger	("EVT_CAMERA_WENDELROMAN");
			};

			Mod_REL_WendelS_Counter += 1;
		};

		if (Mod_REL_WendelS == 5)
		&& (!Npc_IsInState(Mod_7480_OUT_Wendel_REL, ZS_Talk))
		{
			Mod_REL_WendelS = 7;

			CutsceneAn = TRUE;

			Wld_SendTrigger	("EVT_CAMERA_WENDELROMAN");

			Mod_REL_WendelS_Counter = 0;
		};

		if (Mod_REL_WendelS == 7)
		{
			if (Mod_REL_WendelS_Counter == 1)
			{
				AI_TurnToNpc	(Mod_7480_OUT_Wendel_REL, Mod_7492_OUT_Roman_REL);
				AI_TurnToNpc	(Mod_7492_OUT_Roman_REL, Mod_7480_OUT_Wendel_REL);

				AI_Output(Mod_7492_OUT_Roman_REL, NULL, "Info_Mod_Hero_WendelRoman_08_04"); //All right, fine. So what do you suggest?
			};
			if (Mod_REL_WendelS_Counter == 6)
			{
				Mod_REL_WendelS = 9;

				CutsceneAn = FALSE;

				Mod_REL_WendelS_Counter = 0;
			};

			Mod_REL_WendelS_Counter += 1;
		};

		if (Mod_REL_WendelS == 6)
		&& (!Npc_IsInState(Mod_7480_OUT_Wendel_REL, ZS_Talk))
		{
			Mod_REL_WendelS = 8;

			CutsceneAn = TRUE;

			Wld_SendTrigger	("EVT_CAMERA_WENDELROMAN");

			Mod_REL_WendelS_Counter = 0;
		};

		if (Mod_REL_WendelS == 8)
		{
			if (Mod_REL_WendelS_Counter == 1)
			{
				AI_TurnToNpc	(Mod_7480_OUT_Wendel_REL, Mod_7492_OUT_Roman_REL);
				AI_TurnToNpc	(Mod_7492_OUT_Roman_REL, Mod_7480_OUT_Wendel_REL);

				AI_Output(Mod_7480_OUT_Wendel_REL, NULL, "Info_Mod_Hero_WendelRoman_01_05"); //I'm sorry if I did my part. But this is not about finding someone to blame, but about learning from the mistakes.
			};
			if (Mod_REL_WendelS_Counter == 6)
			{
				Mod_REL_WendelS = 9;

				CutsceneAn = FALSE;

				Mod_REL_WendelS_Counter = 0;
			};

			Mod_REL_WendelS_Counter += 1;
		};

		if (Mod_REL_WendelS == 9)
		{
			if (Mod_REL_WendelS_Counter == 1)
			{
				AI_Output(Mod_7480_OUT_Wendel_REL, NULL, "Info_Mod_Hero_WendelRoman_01_06"); //My proposal is that the work of the Buddhists be enshrined in law.
			};
			if (Mod_REL_WendelS_Counter == 6)
			{
				AI_Output(Mod_7480_OUT_Wendel_REL, NULL, "Info_Mod_Hero_WendelRoman_01_07"); //Until now, there has been no written confirmation of salary or fixed working hours. This has to be changed.
			};
			if (Mod_REL_WendelS_Counter == 11)
			{
				AI_Output(Mod_7492_OUT_Roman_REL, NULL, "Info_Mod_Hero_WendelRoman_08_08"); //That's not enough! Many of us are forced to work, we have never had the choice of returning to our old jobs.
			};
			if (Mod_REL_WendelS_Counter == 16)
			{
				AI_Output(Mod_7492_OUT_Roman_REL, NULL, "Info_Mod_Hero_WendelRoman_08_09"); //(coughs) Everyone should be able to decide whether or not to stay in mining.
			};
			if (Mod_REL_WendelS_Counter == 21)
			{
				AI_Output(Mod_7480_OUT_Wendel_REL, NULL, "Info_Mod_Hero_WendelRoman_01_10"); //I'd like to put it into practice, but....
			};
			if (Mod_REL_WendelS_Counter == 26)
			{
				AI_Output(Mod_7492_OUT_Roman_REL, NULL, "Info_Mod_Hero_WendelRoman_08_11"); //No But! That is my first demand!
			};
			if (Mod_REL_WendelS_Counter == 31)
			{
				Mod_REL_WendelS = 10;

				CutsceneAn = FALSE;

				Wld_SendUntrigger	("EVT_CAMERA_WENDELROMAN");
			};

			Mod_REL_WendelS_Counter += 1;
		};

		if (Mod_REL_WendelS == 11)
		&& (!Npc_IsInState(Mod_7480_OUT_Wendel_REL, ZS_Talk))
		{
			Mod_REL_WendelS = 13;

			CutsceneAn = TRUE;

			Wld_SendTrigger	("EVT_CAMERA_WENDELROMAN");

			Mod_REL_WendelS_Counter = 0;
		};

		if (Mod_REL_WendelS == 13)
		{
			if (Mod_REL_WendelS_Counter == 1)
			{
				AI_TurnToNpc	(Mod_7480_OUT_Wendel_REL, Mod_7492_OUT_Roman_REL);
				AI_TurnToNpc	(Mod_7492_OUT_Roman_REL, Mod_7480_OUT_Wendel_REL);

				AI_Output(Mod_7492_OUT_Roman_REL, NULL, "Info_Mod_Hero_WendelRoman_08_12"); //Then we definitely need better pay! I'm not going to keep on working like this!
			};
			if (Mod_REL_WendelS_Counter == 6)
			{
				AI_Output(Mod_7480_OUT_Wendel_REL, NULL, "Info_Mod_Hero_WendelRoman_01_13"); //That's what I imagined. Would you be happy with that?
			};
			if (Mod_REL_WendelS_Counter == 11)
			{
				Mod_REL_WendelS = 15;

				Mod_REL_WendelS_Counter = 0;

				CutsceneAn = FALSE;
			};

			Mod_REL_WendelS_Counter += 1;
		};

		if (Mod_REL_WendelS == 12)
		&& (!Npc_IsInState(Mod_7480_OUT_Wendel_REL, ZS_Talk))
		{
			Mod_REL_WendelS = 14;

			CutsceneAn = TRUE;

			Wld_SendTrigger	("EVT_CAMERA_WENDELROMAN");

			Mod_REL_WendelS_Counter = 0;
		};

		if (Mod_REL_WendelS == 14)
		{
			if (Mod_REL_WendelS_Counter == 1)
			{
				AI_TurnToNpc	(Mod_7480_OUT_Wendel_REL, Mod_7492_OUT_Roman_REL);
				AI_TurnToNpc	(Mod_7492_OUT_Roman_REL, Mod_7480_OUT_Wendel_REL);

				AI_Output(Mod_7480_OUT_Wendel_REL, NULL, "Info_Mod_Hero_WendelRoman_01_14"); //All right, the miners should have a choice. Will you be satisfied?
			};
			if (Mod_REL_WendelS_Counter == 6)
			{
				Mod_REL_WendelS = 15;

				CutsceneAn = FALSE;

				Mod_REL_WendelS_Counter = 0;
			};

			Mod_REL_WendelS_Counter += 1;
		};

		if (Mod_REL_WendelS == 15)
		{
			if (Mod_REL_WendelS_Counter == 1)
			{
				AI_Output(Mod_7492_OUT_Roman_REL, NULL, "Info_Mod_Hero_WendelRoman_08_15"); //Of course, compensation is still due for the injustice suffered. (coughs)
			};
			if (Mod_REL_WendelS_Counter == 6)
			{
				AI_Output(Mod_7480_OUT_Wendel_REL, NULL, "Info_Mod_Hero_WendelRoman_01_16"); //Compensation? I took a look at the city's finances.
			};
			if (Mod_REL_WendelS_Counter == 11)
			{
				AI_Output(Mod_7480_OUT_Wendel_REL, NULL, "Info_Mod_Hero_WendelRoman_01_17"); //We have so many debts that we should not be able to spend a single gold coin.
			};
			if (Mod_REL_WendelS_Counter == 16)
			{
				AI_Output(Mod_7492_OUT_Roman_REL, NULL, "Info_Mod_Hero_WendelRoman_08_18"); //So the money is more important to you than the miners. I see. I don't think there's anything left to say.
			};
			if (Mod_REL_WendelS_Counter == 21)
			{
				Mod_REL_WendelS = 16;

				CutsceneAn = FALSE;

				Wld_SendUntrigger	("EVT_CAMERA_WENDELROMAN");
			};

			Mod_REL_WendelS_Counter += 1;
		};

		// Lukas alle killen

		if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Unruhen4))
		&& (Mod_REL_LukasS == 0)
		&& (Npc_IsDead(Mod_7618_OUT_Norman_REL))
		&& (Npc_IsDead(Mod_7492_OUT_Roman_REL))
		&& (Npc_IsDead(Mod_7613_OUT_Schuerfer_REL))
		&& (Npc_IsDead(Mod_7614_OUT_Schuerfer_REL))
		&& (Npc_IsDead(Mod_7615_OUT_Schuerfer_REL))
		&& (Npc_IsDead(Mod_7616_OUT_Schuerfer_REL))
		&& (Npc_IsDead(Mod_7617_OUT_Schuerfer_REL))
		{
			Mod_REL_LukasS = 1;

			B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "The Buddlers opened fire. Kill them all.");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Fuego_Unruhen))
		&& (Wld_GetDay() > Mod_REL_FuegoDay)
		&& (Mod_REL_FuegoWeg == 0)
		{
			Mod_REL_FuegoWeg = 1;

			B_RemoveNpc	(Mod_7425_KDF_Fuego_REL);
			B_RemoveNpc	(Mod_7499_KDF_Elvira_REL);
		};

		// Verdammnis-Amulett

		if (Mod_Botschek_Info_F == TRUE)
		&& (Mod_Dam_Spawned == 0)
		&& (Npc_GetDistToWP(hero, "REL_MOOR_149") < 1000)
		{
			Mod_Dam_Spawned = 1;

			Wld_InsertNpc	(Mod_7651_OUT_Suchender_REL,	"REL_MOOR_149");
		};

		if (Mod_Dam_Spawned == 1)
		&& (Npc_HasItems(hero, ItAm_Dam) == 1)
		{
			Mod_Dam_Spawned = 2;

			B_LogEntry	(TOPIC_MOD_SANCHO_DAM, "I have the amulet. Dam actually seems to have fallen to damnation.");
		};

		// Unkraut und �pfel

		if (Mod_Botschek_Info_D == TRUE)
		&& (Mod_Botschek_Gaertner == 0)
		{
			if (Npc_IsDead(Alraune_Botschek_01))
			&& (Npc_IsDead(Alraune_Botschek_02))
			&& (Npc_IsDead(Alraune_Botschek_03))
			{
				Mod_Botschek_Gaertner = 1;

				B_LogEntry	(TOPIC_MOD_BOTSCHEK_GAERTNER, "And now the apples. But... Wait a minute, wait a minute!");

				Apfelbaum_Botschek_01.guild = GIL_STONEGUARDIAN;
				Npc_SetTrueGuild (Apfelbaum_Botschek_01, GIL_STONEGUARDIAN);

				Apfelbaum_Botschek_02.guild = GIL_STONEGUARDIAN;
				Npc_SetTrueGuild (Apfelbaum_Botschek_02, GIL_STONEGUARDIAN);

				Apfelbaum_Botschek_03.guild = GIL_STONEGUARDIAN;
				Npc_SetTrueGuild (Apfelbaum_Botschek_03, GIL_STONEGUARDIAN);

				B_SetAttitude (Apfelbaum_Botschek_01, ATT_HOSTILE);
				B_SetAttitude (Apfelbaum_Botschek_02, ATT_HOSTILE);
				B_SetAttitude (Apfelbaum_Botschek_03, ATT_HOSTILE);
			};
		};

		if (Mod_Botschek_Gaertner == 1)
		{
			if (Npc_IsDead(Apfelbaum_Botschek_01))
			&& (Npc_IsDead(Apfelbaum_Botschek_02))
			&& (Npc_IsDead(Apfelbaum_Botschek_03))
			&& (Npc_HasItems(hero, ItFo_Apple) >= 20)
			{
				Mod_Botschek_Gaertner = 2;

				B_LogEntry	(TOPIC_MOD_BOTSCHEK_GAERTNER, "So, it was a massacre.... but I have the apples.");
			};
		};

		// Sumpfbeeren f�r Viran

		if (Npc_KnowsInfo(hero, Info_Mod_Viran_Traenke))
		&& (Mod_Viran_Sumpfbeeren == FALSE)
		&& (Npc_HasItems(hero, ItPl_Sumpfbeeren_XR) >= 5)
		{
			Mod_Viran_Sumpfbeeren = TRUE;

			B_LogEntry	(TOPIC_MOD_VIRAN_SUMPFBEEREN, "I got the mulberries.");
		};

		if (Mod_SumpfbeerenTraum == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Viran_Sumpfbeeren2))
		&& (!Npc_IsInState(Mod_3002_PSINOV_Viran_REL, ZS_Talk))
		{
			Mod_SumpfbeerenTraum = 1;
		};

		if (Mod_SumpfbeerenTraum == 1)
		{
			SumpfbeerenTraum();
		};

		// In kalten Wassern verborgen

		if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Wasserleichen))
		&& (Mod_Botschek_Wasserleichen == 0)
		&& (Wld_IsTime(19,00,05,00))
		&& (Npc_GetDistToWP(hero, "REL_MOOR_179") < 1000)
		{
			Wld_InsertNpc	(Wasserleiche_Botschek_01,	"REL_MOOR_179");
			Wld_InsertNpc	(Wasserleiche_Botschek_02,	"REL_MOOR_179");

			Mod_Botschek_Wasserleichen = 1;
		};

		if (Mod_Botschek_Wasserleichen == 1)
		&& (Npc_IsDead(Wasserleiche_Botschek_01))
		&& (Npc_IsDead(Wasserleiche_Botschek_02))
		{
			AI_Teleport	(Mod_7654_OUT_Alkor_REL,	"REL_MOOR_177");
			B_StartOtherRoutine	(Mod_7654_OUT_Alkor_REL,	"WASSERLEICHEN");

			Mod_Botschek_Wasserleichen = 2;
		};

		if (Mod_Botschek_Wasserleichen == 2)
		&& (Npc_HasItems(hero, ItMw_Ritualdolch_Frost) == 1)
		{
			B_LogEntry	(TOPIC_MOD_BOTSCHEK_WASSERLEICHEN, "Interesting. He has many treasures with him... and that weird dagger.");

			Mod_Botschek_Wasserleichen = 3;
		};

		if (Mod_Botschek_Wasserleichen == 3)
		&& (Npc_HasItems(hero, ItMw_Ritualdolch_Seuche) == 1)
		{
			B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "At a place in the moor with graves and instruments of torture I took another dagger from a demonic figure. I was told to inform Botschek.");

			Mod_Botschek_Wasserleichen = 4;
		};

		if (Mod_Botschek_Wasserleichen == 4)
		&& (Npc_HasItems(hero, ItMw_Ritualdolch_Gift) == 1)
		{
			B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "The poisoner would be history. Off to Botschek.");

			Mod_Botschek_Wasserleichen = 5;
		};

		if (Mod_Botschek_Wasserleichen == 5)
		&& (Npc_HasItems(hero, ItMw_Ritualdolch_Versengen) == 1)
		&& (!Npc_IsInState(Mod_7650_OUT_Botschek_REL, ZS_Talk))
		{
			B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "I have the dagger.");

			Mod_Botschek_Wasserleichen = 6;
		};

		if (Mod_Botschek_Wasserleichen == 6)
		&& (Npc_HasItems(hero, ItMw_Ritualdolch_Blut) == 1)
		{
			B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "The last dagger. Now I should be able to open the entrance.");

			Mod_Botschek_Wasserleichen = 7;
		};

		if (Mod_Botschek_Wasserleichen == 8)
		&& (Npc_GetDistToWP(hero, "REL_MOOR_050") < 1000)
		{
			Wld_InsertNpc	(Mod_7659_OUT_Magier_REL,	"REL_MOOR_051");

			Wld_SendTrigger	("EVT_BARRIERE_DOLCHHOEHLE");

			Wld_InsertNpc	(Blutgolem_Moor,	"REL_MOOR_049");
			Wld_InsertNpc	(Firegolem_Moor,	"REL_MOOR_049");
			Wld_InsertNpc	(Icegolem_Moor,	"REL_MOOR_049");
			Wld_InsertNpc	(Swampgolem_Moor,	"REL_MOOR_049");
			Wld_InsertNpc	(Zombie_Moor,	"REL_MOOR_049");

			Mod_Botschek_Wasserleichen = 9;
		};

		if (Mod_Botschek_Wasserleichen == 9)
		&& (Npc_IsDead(Blutgolem_Moor))
		&& (Npc_IsDead(Firegolem_Moor))
		&& (Npc_IsDead(Icegolem_Moor))
		&& (Npc_IsDead(Swampgolem_Moor))
		&& (Npc_IsDead(Zombie_Moor))
		{
			B_StartOtherRoutine	(Mod_7659_OUT_Magier_REL,	"STAGETWO");

			Wld_SendUnTrigger	("EVT_BARRIERE_DOLCHHOEHLE");

			Mod_Botschek_Wasserleichen = 10;
		};

		if (Mod_Botschek_Wasserleichen == 10)
		&& (Npc_GetDistToWP(hero, "REL_MOOR_053") < 1000)
		{
			Mod_7659_OUT_Magier_REL.guild = GIL_STRF;
			Npc_SetTrueGuild (Mod_7659_OUT_Magier_REL, GIL_STRF);

			Wld_SendTrigger	("EVT_BARRIERE_DOLCHHOEHLE");

			Mod_Botschek_Wasserleichen = 11;
		};

		if (Mod_Botschek_Wasserleichen == 11)
		&& (Npc_IsDead(Podest))
		{
			B_KillNpc	(Mod_7659_OUT_Magier_REL);

			Wld_SendUnTrigger	("EVT_BARRIERE_DOLCHHOEHLE");

			Mod_Botschek_Wasserleichen = 12;
		};

		if (Mod_Botschek_Wasserleichen == 12)
		&& (Npc_HasItems(hero, ItMi_Focus_Moor) == 1)
		{
			B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "I snatched a green focus from the living platform. I wonder if it has anything to do with the former settlement and the power of the swamp. I have to ask Botschek about this.");

			Mod_Botschek_Wasserleichen = 13;
		};

		// Das rebellische Schaf

		if (Mod_Metzger_Schaf == 2)
		{
			if (Npc_GetDistToWP(Monster_11069_Emma_REL, "REL_SURFACE_225") < 5000)
			{
				if (!Npc_IsDead(Hammel_Emma_01))
				|| (!Npc_IsDead(Hammel_Emma_02))
				|| (!Npc_IsDead(Schaf_Emma_01))
				|| (!Npc_IsDead(Schaf_Emma_02))
				|| (!Npc_IsDead(Schaf_Emma_03))
				|| (!Npc_IsDead(Schaf_Emma_04))
				|| (!Npc_IsDead(Schaf_Emma_05))
				{
					Mod_Metzger_Schaf = 3;

					Mod_Metzger_Kapitel = Kapitel;

					B_StartOtherRoutine	(Monster_11069_Emma_REL,	"WILD");
				};
			};
		};

		if (Mod_Metzger_Schaf == 3)
		{
			if (Npc_IsDead(Hammel_Emma_01))
			&& (Npc_IsDead(Hammel_Emma_02))
			&& (Npc_IsDead(Schaf_Emma_01))
			&& (Npc_IsDead(Schaf_Emma_02))
			&& (Npc_IsDead(Schaf_Emma_03))
			&& (Npc_IsDead(Schaf_Emma_04))
			&& (Npc_IsDead(Schaf_Emma_05))
			{
				Mod_Metzger_Schaf = 2;

				B_StartOtherRoutine	(Monster_11069_Emma_REL,	"FOLLOW");
			};
		};

		if (Mod_Metzger_Schaf == 4)
		{
			if (Npc_GetDistToWP(hero, "FLEISCHER_03") > 5000)
			{
				Mod_Metzger_Schaf = 7;

				B_RemoveNpc	(Monster_11069_Emma_REL);
			};
		};

		if (Mod_Metzger_Schaf == 6)
		&& (Kapitel > Mod_Metzger_Kapitel)
		{
			if (!Npc_IsDead(Monster_11069_Emma_REL))
			{
				Mod_Metzger_Schaf = 8;

				Wld_InsertNpc	(Lamm,	"REL_SURFACE_225");
				Wld_InsertNpc	(Lamm,	"REL_SURFACE_225");
				Wld_InsertNpc	(Lamm,	"REL_SURFACE_225");
			};
		};

		// F�r eine Hand voll Gold

		if (Mod_Herek_Zombie == 0)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Herek_REL_Hi))
			&& (!Npc_IsInstate(Mod_7670_STT_Herek_REL, ZS_Talk))
			&& (Npc_IsDead(Zombie_Herek))
			{
				Mod_Herek_Zombie = 1;

				B_LogEntry	(TOPIC_MOD_HEREK_GOLD, "Nothing to see from treasures. Herek can do something!");

				B_StartOtherRoutine	(Mod_7670_STT_Herek_REL, "TOT");
			};
		};

		// Bierhexen

		if (Mod_Bierhexen == 2)
		&& (Npc_GetDistToWP(hero, "REL_SURFACE_041") < 1000)
		{
			Mod_Bierhexen = 0;

			B_StartOtherRoutine	(Mod_7578_OUT_Brauer_REL, "START");

			Npc_ClearAIQueue(Mod_7578_OUT_Brauer_REL);
			Npc_SetTarget	(Mod_7578_OUT_Brauer_REL, Mod_7506_OUT_Erhard_REL);
			AI_StartState	(Mod_7578_OUT_Brauer_REL, ZS_Attack, 0, "");
		};

		// Sicheres Geleit

		if (Mod_FrauRichard_Weg == 1)
		{
			Mod_FrauRichard_Weg = 2;

			Wld_InsertNpc	(Mod_7719_OUT_Frau_REL, "REL_CITY_001");
		};

		// Dicke Luft

		if (Mod_Kneipe_Ditmar == 1)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Irmgard_Kneipe))
			&& (Mod_IstSchaf == 1)
			&& (Npc_GetDistToWp(hero, "ALTEFESTUNG_09") < 500)
			{
				Mod_Kneipe_Ditmar = 2;

				B_StartOtherRoutine	(Mod_7723_OUT_Hedwig_REL, "FOLLOW");
			};
		};

		if (Mod_Kneipe_Ditmar == 2)
		{
			if (Mod_IstSchaf == 0)
			&& (Npc_GetDistToWp(hero, "RATHAUSUNENTBURGERMEISTER") > 1000)
			{
				Mod_Kneipe_Ditmar = 1;

				B_StartOtherRoutine	(Mod_7723_OUT_Hedwig_REL, "START");
			};

			if (Mod_IstSchaf == 1)
			&& (Npc_GetDistToWp(hero, "RATHAUSUNENTBURGERMEISTER") < 1000)
			{
				Mod_Kneipe_Ditmar = 3;

				B_StartOtherRoutine	(Mod_7723_OUT_Hedwig_REL, "ATANSELM");
			};
		};

		if (!Mod_HedwigBeiAnselm)
		&& (Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft2))
		&& (!Npc_IsInState(Mod_7241_OUT_Anselm_REL, ZS_Talk))
		&& (!Npc_IsInState(Mod_7723_OUT_Hedwig_REL, ZS_Talk))
		{
			Mod_HedwigBeiAnselm = TRUE;

			B_StartOtherRoutine	(Mod_7723_OUT_Hedwig_REL, "ZIMMER");
		};
		
		if (Kapitel >= 3 && !Npc_KnowsInfo(hero, Info_Mod_Irmgard_Kneipe2) && Npc_KnowsInfo(hero, Info_Mod_Ditmar_Hi) && Mod_DickeLuft_Running == TRUE) {
			Mod_DickeLuft_Running = FALSE;
			B_SetTopicStatus(TOPIC_MOD_DITMAR_DICKELUFT, LOG_FAILED);
		};

		// Der Siegelring

		if (Mod_Herold_Siegelring == 2)
		&& (Mod_Herold_Siegelring_Verlauf == 1)
		{
			Mod_Herold_Siegelring = 3;

			Wld_InsertNpc	(Mod_7746_OUT_Dubios_REL, "REL_CITY_001");
			Wld_InsertNpc	(Mod_7747_OUT_Dubios_REL, "REL_CITY_001");
		};
	};

	// Nebenquests im Eisgebiet

	if (CurrentLevel == EISGEBIET_ZEN)
	{
		// Den Unschuldigen helfen

		if (Mod_AlvarTagebuch == 0)
		&& (Npc_HasItems(hero, ItWr_AlvarTagebuch) == 1)
		{
			Mod_AlvarTagebuch = 1;

			B_UseItem	(hero, ItWr_AlvarTagebuch);
		};

		if (Mod_AlvarDead == 3)
		&& (Npc_HasItems(hero, ItAr_FakeArmor_Alvar) == 1)
		{
			Mod_AlvarDead = 4;

			B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "I have the armor. Now I have to get back to Thys's in a hurry.");
		};

		if (Mod_AlvarKristall == 0)
		&& (Npc_HasItems(hero, ItMi_AlvarKristall) == 1)
		{
			Mod_AlvarKristall = 1;

			B_Say_Overlay	(hero, NULL, "$ALVARKRISTALL02");

			B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "I got the crystal. Now back to Thys.");

			AI_Teleport	(Mod_7564_OUT_Knatus_EIS, "EIS_76");
			AI_Teleport	(Mod_7563_OUT_Brutus_EIS, "EIS_76");
			AI_Teleport	(Mod_7559_OUT_Serra_EIS, "EIS_76");
			AI_Teleport	(Mod_1954_EIS_Thys_EIS, "EIS_76");
			AI_Teleport	(Mod_7560_OUT_Malfama_EIS, "EIS_76");

			B_StartOtherRoutine	(Mod_7564_OUT_Knatus_EIS, "ALVAR");
			B_StartOtherRoutine	(Mod_7563_OUT_Brutus_EIS, "ALVAR");
			B_StartOtherRoutine	(Mod_7559_OUT_Serra_EIS, "ALVAR");
			B_StartOtherRoutine	(Mod_1954_EIS_Thys_EIS, "ALVAR");
			B_StartOtherRoutine	(Mod_7560_OUT_Malfama_EIS, "ALVAR");

			AI_Teleport	(Mod_7564_OUT_Knatus_EIS, "EIS_76");
			AI_Teleport	(Mod_7563_OUT_Brutus_EIS, "EIS_76");
			AI_Teleport	(Mod_7559_OUT_Serra_EIS, "EIS_76");
			AI_Teleport	(Mod_1954_EIS_Thys_EIS, "EIS_76");
			AI_Teleport	(Mod_7560_OUT_Malfama_EIS, "EIS_76");
		};

		if (Mod_AlvarKristall == 3)
		&& (Npc_KnowsInfo(hero, Info_Mod_Knatus_AlvarKristall))
		&& (Npc_GetDistToWP(hero, "EIS_40") < 500)
		{
			Mod_AlvarKristall = 4;

			B_StartOtherRoutine	(Mod_7564_OUT_Knatus_EIS, "START");
			B_StartOtherRoutine	(Mod_7563_OUT_Brutus_EIS, "START");
			B_StartOtherRoutine	(Mod_7559_OUT_Serra_EIS, "START");
			B_StartOtherRoutine	(Mod_1954_EIS_Thys_EIS, "START");
			B_StartOtherRoutine	(Mod_7560_OUT_Malfama_EIS, "START");

			B_Say_Overlay	(hero, NULL, "$ALVARKRISTALL03");

			B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Although I have proved their guilt, the inhabitants did not pay any attention to it and threw me out. But what's that? An arrow with a message...");

			Wld_SendTrigger	("EVT_MESSAGE_ALVARKRISTALL");
		};
		
		if (Npc_KnowsInfo(hero, Info_Mod_Knatus_AlvarKristall))
		&& (Mod_UnschuldigeTeleport == FALSE)
		&& (!Npc_IsInState(Mod_7564_OUT_Knatus_EIS, ZS_Talk)) {
			Mod_UnschuldigeTeleport = TRUE;

			AI_Teleport	(hero, "EIS_40");
		};

		// Wenn man in der H�hle den Kristall aufnimmt

		if (Mod_AlvarKristall == 6)
		&& (Npc_HasItems(hero, ItMi_Traenenkristall) == 1)
		{
			Wld_SendTrigger	("EVT_TRAENENKRISTALL");

			Mod_AlvarKristall = 7;

			Wld_InsertNpc	(Mod_7565_HEX_Hexe_EIS, "EIS_325");

			AI_UnequipArmor	(Mod_7561_OUT_Alvar_EIS);

			CreateInvItems	(Mod_7561_OUT_Alvar_EIS, ItAr_Tarnung_White, 1);

			AI_EquipArmor	(Mod_7561_OUT_Alvar_EIS, ItAr_Tarnung_White);
		};

		// Cutscene, wenn man Kristall aufgenommen hat

		if (Mod_AlvarKristall == 7)
		{
			if (Mod_Traenenkristall_Sequenz == 1)
			{
				B_StartOtherRoutine	(Mod_7565_HEX_Hexe_EIS, "NAH");
			};

			if (Mod_Traenenkristall_Sequenz == 3)
			{
				AI_TurnToNpc	(Mod_7565_HEX_Hexe_EIS, hero);

				AI_Output(Mod_7565_HEX_Hexe_EIS, NULL, "Info_Mod_Traenenkristall_17_00"); //So, who do we have here? Not someone who wants to thwart my sisters' plans?
			};

			if (Mod_Traenenkristall_Sequenz == 8)
			{
				AI_Output(Mod_7565_HEX_Hexe_EIS, NULL, "Info_Mod_Traenenkristall_17_01"); //Did you really think you could get access to this powerful tool so easily? You fool!
			};

			if (Mod_Traenenkristall_Sequenz == 13)
			{
				AI_Output(Mod_7565_HEX_Hexe_EIS, NULL, "Info_Mod_Traenenkristall_17_02"); //You may have resisted the influence of ice arts, but you won't be able to resist real witch magic.
			};

			if (Mod_Traenenkristall_Sequenz == 18)
			{
				AI_Output(Mod_7565_HEX_Hexe_EIS, NULL, "Info_Mod_Traenenkristall_17_03"); //And now prepare to die.
			};

			if (Mod_Traenenkristall_Sequenz == 23)
			{
				AI_PlayAni	(Mod_7565_HEX_Hexe_EIS, "T_DEADB");

				AI_Teleport	(Mod_7561_OUT_Alvar_EIS, "EIS_323");
				B_StartOtherRoutine	(Mod_7561_OUT_Alvar_EIS, "ATHEXE");
			};

			if (Mod_Traenenkristall_Sequenz == 25)
			{
				B_StartOtherRoutine	(Mod_7561_OUT_Alvar_EIS, "NAH");

				B_KillNpc	(Mod_7565_HEX_Hexe_EIS);

				Mod_AlvarKristall = 8;

				Mod_7561_OUT_Alvar_EIS.name = "stranger";
				
				Wld_SendUnTrigger	("EVT_TRAENENKRISTALL");
			};

			Mod_Traenenkristall_Sequenz += 1;
		};

		// Nach der Erkenntnis von Malfama, wenn die zwei ihren Zauber machen wollen

		if (!Npc_IsInState(Mod_7560_OUT_Malfama_EIS, ZS_Talk))
		&& (Mod_MalfamaCast == FALSE)
		&& (Npc_KnowsInfo(hero, Info_Mod_Malfama_Traenenkristall))
		{
			Mod_MalfamaCast = TRUE;

			B_StartOtherRoutine	(Mod_7560_OUT_Malfama_EIS, "HEXENMAGIE");
			B_StartOtherRoutine	(Mod_7559_OUT_Serra_EIS, "HEXENMAGIE");
		};

		if (Npc_IsInState(Mod_7560_OUT_Malfama_EIS, ZS_Hexenmagie))
		&& (Npc_IsInState(Mod_7559_OUT_Serra_EIS, ZS_Hexenmagie))
		&& (Mod_AlvarKristall == 8)
		{
			Mod_AlvarKristall = 9;

			AI_Teleport	(Mod_7561_OUT_Alvar_EIS, "EIS_75");
			B_StartOtherRoutine	(Mod_7561_OUT_Alvar_EIS, "THYS");

			AI_PlayAni	(Mod_7560_OUT_Malfama_EIS, "T_DEADB");
			AI_PlayAni	(Mod_7559_OUT_Serra_EIS, "T_DEADB");

			AI_TurnToNpc	(hero, Mod_7561_OUT_Alvar_EIS);
			AI_GotoNpc	(hero, Mod_7561_OUT_Alvar_EIS);

			Mod_7561_OUT_Alvar_EIS.name = "stranger";
		};

		// Sicheres Geleit

		if (Npc_GetDistToWP(Mod_7410_OUT_Frau_EIS, "EIS_01") < 500)
		&& (Npc_KnowsInfo(hero, Info_Mod_FrauRichard_AtSteinkreis))
		&& (Mod_FrauRichard_Weg == 0)
		&& (Npc_GetDistToWP(hero, "EIS_01") > 5000) {
			Mod_FrauRichard_Weg = 1;

			B_RemoveNpc	(Mod_7410_OUT_Frau_EIS);

			Wld_InsertNpc	(Mod_7716_OUT_Ausgestossener_EIS, "EIS_02");
			Wld_InsertNpc	(Mod_7717_OUT_Ausgestossener_EIS, "EIS_02");
			Wld_InsertNpc	(Mod_7718_OUT_Ausgestossener_EIS, "EIS_02");
		};

		// Unblutiger Kampf

		if (Mod_Pilar_Gobbos == 0)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Pilar_AtHut3))
			&& (Npc_IsDead(Gobbo_Skeleton_Eis))
			{
				Mod_Pilar_Gobbos = 1;

				B_StartOtherRoutine	(Mod_7567_OUT_Luis_EIS, "FRIEDHOF");
			};
		};

		// Auf der rauen Schneide

		if (Mod_BaroAtWillingham == 0)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Brendan_Hi))
			&& (Npc_GetDistToWP(hero, "EISFESTUNG_18") < 500)
			{
				Mod_BaroAtWillingham = 1;

				B_StartOtherRoutine	(Mod_7730_OUT_Brendan_EIS, "WILLINGHAM");
				B_StartOtherRoutine	(Mod_7728_OUT_Willingham_EIS, "BRENDAN");
			};
		};
	};

	if (CurrentLevel == MINENTAL_ZEN)
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_Diver))
		&& (Npc_HasItems(hero, ItPl_Herkuleskraut) >= 5)
		&& (Mod_NL_Herkuleskraut == 0)
		{
			Mod_NL_Herkuleskraut = 1;

			B_LogEntry	(TOPIC_MOD_SLD_JEREMIAHKRAUT, "I have the plants.");
		};

		// Den Lurkern keine Ruhe lassen ...

		if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_Swimmer))
		&& (Npc_HasItems(hero, ItMi_LurkerEgg) == 5)
		&& (Mod_NL_Herkuleskraut == 1)
		{
			Mod_NL_Herkuleskraut = 2;

			B_LogEntry	(TOPIC_MOD_SLD_JEREMIAHLURKER, "Well, that should have been everybody. Thus the lake is poorer by a kind of...");
		};

		// Morastw�rmer und Sumpfkrabben

		if (Mod_NL_JeremiahHasEier == 4)
		&& (Npc_HasItems(hero, ItMi_LurkerEgg_MIS) == 3)
		{
			Mod_NL_JeremiahHasEier = 5;

			B_LogEntry	(TOPIC_MOD_NL_PLAGE, "I have three eggs. Now only into the new warehouse.");
		};

		if (Mod_NL_JeremiahHasEier == 5)
		&& (Npc_HasItems(hero, ItMi_LurkerEgg_MIS) == 3)
		&& (Npc_GetDistToWP(hero, "WP_MT_IMLURKERNEST") < 500)
		{
			Mod_NL_JeremiahHasEier = 6;
			Mod_NL_JeremiahHasEier_Day = Wld_GetDay();

			Npc_RemoveInvItems	(hero, ItMi_LurkerEgg_MIS, 3);

			AI_StandUP	(hero);

			AI_PlayAni	(hero, "T_PLUNDER");

			B_LogEntry	(TOPIC_MOD_NL_PLAGE, "Okay, that's done. Let's see what happens in the next few days.");
		};

		// Der fl�chtige Bauer

		if (Mod_LeftysBauern == 4)
		&& ((Wld_GetDay() > Mod_Reislord_DayChecker)
		|| ((Kapitel >= 2)
		&& (hero.guild != GIL_MIL)))
		{
			AI_Teleport	(Mod_1082_BAU_Rufus_MT, "OW_PATH_056");
			B_StartOtherRoutine	(Mod_1082_BAU_Rufus_MT, "FLUCHT");
			AI_Teleport	(Mod_1082_BAU_Rufus_MT, "OW_PATH_056");

			Mod_1082_BAU_Rufus_MT.flags = 2;

			Mod_LeftysBauern = 5;
		};

		// �rger im Kessel

		if (Mod_NL_TalkesselProblem == 1)
		{
			Mod_NL_TalkesselProblem = 2;

			B_StartOtherRoutine	(Mod_1289_SLD_Bruce_MT, "UEBERGABE");
		};

		if (Mod_NL_TalkesselProblem == 2)
		{
			if (Wld_IsTime(20,00,24,00))
			&& (Npc_GetDistToWP(hero, "OW_PATH_3001_02") > 1000)
			&& (Npc_GetDistToWP(hero, "OW_PATH_3001_02") < 2000)
			{
				B_StartOtherRoutine	(Mod_784_SLD_Fester_MT, "OW_PATH_3001_03");

				Mod_NL_TalkesselProblem = 3;

				B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "Bruce seems to be meeting with Fester on a regular basis. Looks like it's about dirty swampweed deals.");
				B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "Soso, I should have a chat with Fester.");
			};
		};

		if (Mod_NL_TalkesselProblem == 3)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Fester_KesselProblem))
			&& (Npc_HasItems(hero, ItWr_KesselProblem) == 1)
			{
				Mod_NL_TalkesselProblem = 4;

				B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "That gives a clear picture. Lee should know about this.");

				AI_StandUP	(hero);

				AI_Output(hero, NULL, "Info_Mod_Hero_KesselProblem_15_00"); //That gives a clear picture. Lee should know about this.
			};
		};

		// Die Klinge f�r Sentenza

		if (Mod_NL_BruceTot == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Lee_KesselProblem2))
		&& (Kapitel >= 4)
		{
			Mod_NL_BruceTot = 1;

			B_StartOtherRoutine	(Mod_796_SLD_Sentenza_MT,	"WAITFORPLAYER");
		};

		if (Mod_NL_BruceTot == 1)
		&& (Npc_HasItems(hero, ItMw_SentenzaRost) == 1)
		{
			Mod_NL_BruceTot = 2;

			AI_Teleport	(Mod_779_SLD_Bullco_MT, "WP_SENTENZA_BULLCO_CUTSCENE");
			AI_Teleport	(Mod_796_SLD_Sentenza_MT, "WP_SENTENZA_BULLCO_CUTSCENE");

			B_StartOtherRoutine	(Mod_779_SLD_Bullco_MT, "UEBERFALL");
			B_StartOtherRoutine	(Mod_796_SLD_Sentenza_MT, "UEBERFALL");

			CutsceneAn = TRUE;

			Wld_SendTrigger	("EVT_SENTENZABULLCO");
		};

		if (Mod_NL_BruceTot == 2)
		{
			if (Mod_NL_BruceTot_Counter == 1)
			{
				AI_TurnToNpc	(Mod_779_SLD_Bullco_MT, hero);
				AI_TurnToNpc	(Mod_796_SLD_Sentenza_MT, hero);
			};

			if (Mod_NL_BruceTot_Counter == 3)
			{
				AI_Output(Mod_796_SLD_Sentenza_MT, NULL, "Info_Mod_SentenzaBullco_Ueberfall_09_00"); //Well, I guess I didn't find what you were expecting, did I?
			};

			if (Mod_NL_BruceTot_Counter == 8)
			{
				AI_Output(hero, NULL, "Info_Mod_SentenzaBullco_Ueberfall_15_01"); //What the hell...?
			};

			if (Mod_NL_BruceTot_Counter == 13)
			{
				AI_Output(Mod_796_SLD_Sentenza_MT, NULL, "Info_Mod_SentenzaBullco_Ueberfall_09_02"); //But I'm so kind. You may keep the rusty sword by the prospector for your trouble, buahaha.
			};

			if (Mod_NL_BruceTot_Counter == 18)
			{
				AI_Output(Mod_796_SLD_Sentenza_MT, NULL, "Info_Mod_SentenzaBullco_Ueberfall_09_03"); //You'll be able to join him in no time, you stupid fool.
			};

			if (Mod_NL_BruceTot_Counter == 23)
			{
				AI_Output(Mod_796_SLD_Sentenza_MT, NULL, "Info_Mod_SentenzaBullco_Ueberfall_09_04"); //I'm jerking you off about a family sword, and you idiot's actually running away.
			};

			if (Mod_NL_BruceTot_Counter == 28)
			{
				AI_Output(Mod_796_SLD_Sentenza_MT, NULL, "Info_Mod_SentenzaBullco_Ueberfall_09_05"); //Was actually expecting that there would be enough animals here to tear you apart... the more Bruce had thrown the body down here.
			};

			if (Mod_NL_BruceTot_Counter == 33)
			{
				AI_Output(Mod_779_SLD_Bullco_MT, NULL, "Info_Mod_SentenzaBullco_Ueberfall_06_06"); //Well, there you look, huh? Did you really think Bruce could have done it on her own? Most of it went into our pockets.
			};

			if (Mod_NL_BruceTot_Counter == 38)
			{
				AI_Output(Mod_779_SLD_Bullco_MT, NULL, "Info_Mod_SentenzaBullco_Ueberfall_06_07"); //But because of you, we're on dry land now. And you're going to pay for that.

				B_StartOtherRoutine	(Mod_1290_SLD_Roscoe_MT, "UEBERFALL");
				B_StartOtherRoutine	(Mod_525_SLD_Lee_MT, "UEBERFALL");
				B_StartOtherRoutine	(Mod_1288_SLD_Butch_MT, "UEBERFALL");

				Mod_1290_SLD_Roscoe_MT.aivar[AIV_Partymember] = TRUE;
				Mod_525_SLD_Lee_MT.aivar[AIV_Partymember] = TRUE;
				Mod_1288_SLD_Butch_MT.aivar[AIV_Partymember] = TRUE;
			};

			if (Mod_NL_BruceTot_Counter == 43)
			{
				AI_TurnToNpc	(Mod_525_SLD_Lee_MT, Mod_796_SLD_Sentenza_MT);

				AI_Output(Mod_525_SLD_Lee_MT, NULL, "Info_Mod_SentenzaBullco_Ueberfall_04_08"); //I don't think so. And yes, that's all I wanted to know.
			};

			if (Mod_NL_BruceTot_Counter == 48)
			{
				AI_TurnToNpc	(Mod_796_SLD_Sentenza_MT, Mod_779_SLD_Bullco_MT);

				AI_Output(Mod_796_SLD_Sentenza_MT, NULL, "Info_Mod_SentenzaBullco_Ueberfall_09_09"); //Damn it, fight for your life!
			};

			if (Mod_NL_BruceTot_Counter == 53)
			{
				Mod_796_SLD_Sentenza_MT.guild = GIL_STRF;
				Npc_SetTrueGuild	(Mod_796_SLD_Sentenza_MT, GIL_STRF);

				Mod_779_SLD_Bullco_MT.guild = GIL_STRF;
				Npc_SetTrueGuild	(Mod_779_SLD_Bullco_MT, GIL_STRF);

				Wld_SendUnTrigger	("EVT_SENTENZABULLCO");

				Mod_NL_BruceTot = 3;

				CutsceneAn = FALSE;
			};

			Mod_NL_BruceTot_Counter += 1;
		};

		// Auf den Hund gekommen

		if (Npc_KnowsInfo(hero, Info_Mod_Urs_Hi))
		&& (Mod_Urs_Hund == 0)
		&& (B_GetAivar(hero, AIV_INVINCIBLE) == FALSE)
		{
			if (Npc_HasItems(hero, ItMi_Nugget) >= 20)
			&& (Npc_HasItems(hero, ItMi_Gold) >= 400)
			&& (Npc_HasItems(hero, ItMi_HerbPaket) >= 1)
			&& (Npc_HasItems(hero, ItRu_TrfMolerat) == 1)
			&& (Npc_HasItems(hero, ItAt_WargFur) >= 2)
			&& (Npc_HasItems(hero, ItAt_ShadowFur) >= 2)
			&& (Npc_HasItems(hero, ItAt_TrollFur) >= 1)
			&& (Npc_KnowsInfo(hero, Info_Mod_Thofeistos_Urs))
			{
				Mod_Urs_Hund = 1;

				B_LogEntry	(TOPIC_MOD_URS_HUND, "Well, actually, I've got it all together now.");

				AI_StandUp	(hero);

				AI_Output(hero, NULL, "Info_Mod_Hero_Urs_Hund_15_00"); //Well, actually, I've got it all together now.

				Wld_InsertItem	(ItWr_UrsNotiz,	"FP_ITEM_URS_NOTIZ");

				B_StartOtherRoutine	(Mod_7649_OUT_Urs_MT,	"TOT");
			};
		};

		if (Mod_Urs_Hund == 1 && Mod_UrsNotiz_Gelesen) {
			Mod_Urs_Hund = 2;

			B_StartOtherRoutine	(Mod_7649_OUT_Urs_MT,	"WALD");
		};

		if (Mod_Urs_Hund == 3)
		{
			if (Mod_Urs_Hund_Counter == 0)
			{
				Wld_SendTrigger	("EVT_CAM_URS_RITUAL");

				Wld_InsertItem	(ItAt_WargFur_Urs,	"FP_ITEM_URS_FELL");
				Wld_InsertItem	(ItRu_TrfMolerat,	"FP_ITEM_URS_RUNE");
				Wld_InsertItem	(ItMi_Nugget_Urs,	"FP_ITEM_URS_ERZ");

				CreateInvItem (Mod_7649_OUT_Urs_MT, ItMi_Joint);

				CutsceneAn = TRUE;
			};

			if (Mod_Urs_Hund_Counter == 2)
			{
				AI_UseItemToState 	(Mod_7649_OUT_Urs_MT, ItMi_JOINT, 0);
			};

			if (Mod_Urs_Hund_Counter == 5)
			{
				AI_UseItemToState 	(Mod_7649_OUT_Urs_MT, ItMi_JOINT, -1);
			};

			if (Mod_Urs_Hund_Counter == 7)
			{
				Wld_PlayEffect("FX_EarthQuake", Mod_7649_OUT_Urs_MT, Mod_7649_OUT_Urs_MT, 0, 0, 0, FALSE);
				Wld_PlayEffect("spellFX_INCOVATION_RED", Mod_7649_OUT_Urs_MT, Mod_7649_OUT_Urs_MT, 0, 0, 0, FALSE);
				AI_PlayAni (Mod_7649_OUT_Urs_MT, "T_PRACTICEMAGIC5");
			};

			if (Mod_Urs_Hund_Counter == 12)
			{
				AI_Output (Mod_7649_OUT_Urs_MT, NULL, "Info_Mod_Urs_Ritual_12_00"); //(Exhausted) Phew, that was quite a feat of strength. There, but let's see.
			};

			if (Mod_Urs_Hund_Counter == 18)
			{
				AI_PlayAni (Mod_7649_OUT_Urs_MT, "T_STAND_2_LIGHTNING_VICTIM");
			};

			if (Mod_Urs_Hund_Counter == 22)
			{
				AI_PlayAni (Mod_7649_OUT_Urs_MT, "T_MAGRUN_2_TRFSHOOT");
			};

			if (Mod_Urs_Hund_Counter == 25)
			{
				var string wp;
				B_ResetAll (Mod_7649_OUT_Urs_MT);

				wp = Npc_GetNearestWP (Mod_7649_OUT_Urs_MT);

				AI_StandUP	(Mod_7649_OUT_Urs_MT);
				Npc_ClearAIQueue	(Mod_7649_OUT_Urs_MT);

				AI_Teleport (Mod_7649_OUT_Urs_MT, "TOT");
				Npc_ExchangeRoutine (Mod_7649_OUT_Urs_MT, "TOT");

				Wld_InsertNpc (Warg_Urs, wp);
			};

			if (Mod_Urs_Hund_Counter == 28)
			{
				Warg_Urs.wp = "TOT";

				AI_GotoWP	(Warg_Urs, "TOT");
			};

			if (Mod_Urs_Hund_Counter == 38)
			{
				Wld_SendUnTrigger	("EVT_CAM_URS_RITUAL");

				Mod_Urs_Hund = 4;

				CutsceneAn = FALSE;

				CurrentNQ += 1;

				B_SetTopicStatus	(TOPIC_MOD_URS_HUND, LOG_SUCCESS);
			};

			Mod_Urs_Hund_Counter += 1;
		};

		if (Mod_Urs_Hund == 2)
		&& (Npc_KnowsInfo(hero, Info_Mod_Urs_Hund3))
		&& (!Npc_IsInState(Mod_7649_OUT_Urs_MT, ZS_Talk))
		{
			Mod_Urs_Hund = 3;
		};

		if (Kapitel >= 4)
		&& (Mod_Urs_Hund == 4)
		{
			Mod_Urs_Hund = 5;

			B_StartOtherRoutine	(Mod_7649_OUT_Urs_MT,	"BERGFESTUNG");

			Wld_InsertNpc	(Wally,	"LOCATION_19_03_PATH_RUIN7");
		};

		// Neks Amulett f�r lange Finger

		if (Mod_Fingers_Nek == 0)
		&& (Npc_HasItems(hero, ItAm_Nek) == 1)
		{
			Mod_Fingers_Nek = 1;

			B_LogEntry	(TOPIC_MOD_FINGERS_NEK, "I have the amulet.");
		};

		// Was die Finsternis hervorbringt

		if (Mod_AMQ_Viper == 2)
		&& (Wld_GetDay()-3 >= Mod_AMQ_Viper_Day)
		&& (!Mod_AMQ_Bollok)
		{
			Mod_AMQ_Bollok = TRUE;

			Wld_InsertNpc	(Mod_10044_Orc_Bollok_MT, "WP_MT_AUSTAUSCHSTELLE_04");
		};

		// Ein Etwas f�r die Feuermagier

		if (Mod_Erol_Fahrender == 1)
		{
			Mod_Erol_Fahrender = 2;

			Mob_CreateItems	("TRUHE_MT_143", ItWr_ErolNotiz1, 1);
		};

		if (Mod_Erol_Fahrender == 6)
		{
			if (Npc_HasItems(hero, ItAr_GewandDerMacht) == 1)
			{
				Mod_Erol_Fahrender = 7;

				B_LogEntry	(TOPIC_MOD_EROL_FEUERMAGIER, "Uh-huh. I suppose that's what the firemen want. Right away to Erol....");
			};
		};

		// Der Siegelring

		if (Mod_Herold_Siegelring == 2)
		&& (Mod_Herold_Siegelring_Verlauf == 0)
		{
			Mod_Herold_Siegelring = 3;

			if (Hlp_Random(2) == 0)
			{
				Wld_InsertNpc	(Mod_7750_OUT_Dubios_MT, "OC1");
				Wld_InsertNpc	(Mod_7751_OUT_Dubios_MT, "OC1");
			}
			else
			{
				Wld_InsertNpc	(Mod_7750_OUT_Dubios_MT, "OC1");
			};
		};

		// Der verschollene Novize

		if (Mod_DaronAkahasch == 2)
		{
			Mod_DaronAkahasch = 3;

			Wld_InsertNpc	(Mod_7760_NOV_Akahasch_MT, "OC1");
		};

		// Costas G�rtel

		if (Wld_GetDay() > Mod_Costa_Guertel_Tag)
		&& ((Mod_Costa_Guertel == 2)
		|| ((Mod_Costa_Guertel == 1)
		&& (!Npc_KnowsInfo(hero, Info_Mod_Costa_Jesse))
		&& (Npc_KnowsInfo(hero, Info_Mod_Jesse_Costa))
		&& (!Npc_IsInState(Mod_1506_BUD_Jesse_MT, ZS_Talk))))
		{
			Mod_Costa_Guertel = 3;

			B_SetTopicStatus	(TOPIC_MOD_COSTA_GUERTEL, LOG_FAILED);

			B_StartOtherRoutine	(Mod_1442_BUD_Costa_MT, "ABGEMURKST");
			B_StartOtherRoutine	(Mod_1506_BUD_Jesse_MT, "ABGEMURKST");

			B_KillNpc	(Mod_1442_BUD_Costa_MT);
			B_KillNpc	(Mod_1506_BUD_Jesse_MT);
		};

		// Vorbereitung f�r die Arena

		if (Npc_KnowsInfo(hero, Info_Mod_Sly_Arena2))
		&& (Wld_GetDay() > Mod_Sly_Arena_Tag)
		&& (Mod_Sly_Arena == 0)
		{
			Mod_Sly_Arena = 1;

			B_StartOtherRoutine	(Mod_801_STT_Sly_MT, "TRAINING");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Sly_Arena3))
		&& (Npc_GetDistToWP(Mod_801_STT_Sly_MT, "OCR_GATE_SQUARE") < 500)
		&& (Mod_Sly_Arena == 1)
		{
			Mod_Sly_Arena = 2;

			B_StartOtherRoutine	(Mod_801_STT_Sly_MT, "TRAINING3");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Sly_Arena3))
		&& (Npc_GetDistToWP(Mod_801_STT_Sly_MT, "OCR_ARENABATTLE_OUTSIDE") < 500)
		&& (Mod_Sly_Arena == 2)
		{
			Mod_Sly_Arena = 3;

			B_StartOtherRoutine	(Mod_801_STT_Sly_MT, "TRAINING4");
		};

		if (Mod_Sly_Arena == 3)
		&& (Npc_KnowsInfo(hero, Info_Mod_Scatty_SlyArena))
		&& (Wld_IsTime(17,00,21,00))
		&& (Npc_GetDistToWP(hero, "OCR_ARENABATTLE") < 1000)
		{
			B_StartOtherRoutine	(Mod_801_STT_Sly_MT, "ARENAFIGHT");
			B_StartOtherRoutine	(Mod_1871_TPL_GorKaranto_MT, "ARENAFIGHT");

			Mod_Sly_Arena = 4;
		};

		if (Mod_Sly_Arena == 4)
		&& (Npc_GetDistToWP(Mod_801_STT_Sly_MT, "OCR_ARENABATTLE") < 1000)
		&& (Npc_GetDistToWP(Mod_1871_TPL_GorKaranto_MT, "OCR_ARENABATTLE") < 1000)
		{
			SlyKaranto_KampfScene();
		};

		// Vanille mit einem Hauch Safran

		if (Mod_JackalTabak_01 == FALSE)
		&& (Npc_GetDistToItem(hero, ItMi_JackalTabak_01) < 500)
		{
			Mod_JackalTabak_01 = TRUE;

			B_Say	(hero, NULL, "$SMELLTABAK");
		};

		if (Npc_HasItems(hero, ItMi_JackalTabak_01) == 1)
		{
			Npc_RemoveInvItems	(hero, ItMi_JackalTabak_01, 1);
			CreateInvItems	(hero, ItMi_JackalTabak, 1);
		};

		if (Mod_JackalTabak_02 == FALSE)
		&& (Npc_GetDistToItem(hero, ItMi_JackalTabak_02) < 500)
		{
			Mod_JackalTabak_02 = TRUE;

			B_Say	(hero, NULL, "$SMELLTABAK");
		};

		if (Npc_HasItems(hero, ItMi_JackalTabak_02) == 1)
		{
			Npc_RemoveInvItems	(hero, ItMi_JackalTabak_02, 1);
			CreateInvItems	(hero, ItMi_JackalTabak, 1);
		};

		if (Mod_JackalTabak_03 == FALSE)
		&& (Npc_GetDistToItem(hero, ItMi_JackalTabak_03) < 500)
		{
			Mod_JackalTabak_03 = TRUE;

			B_Say	(hero, NULL, "$SMELLTABAK");
		};

		if (Npc_HasItems(hero, ItMi_JackalTabak_03) == 1)
		{
			Npc_RemoveInvItems	(hero, ItMi_JackalTabak_03, 1);
			CreateInvItems	(hero, ItMi_JackalTabak, 1);
		};

		if (Mod_JackalTabak_04 == FALSE)
		&& (Npc_GetDistToItem(hero, ItMi_JackalTabak_04) < 500)
		{
			Mod_JackalTabak_04 = TRUE;

			B_Say	(hero, NULL, "$SMELLTABAK");
		};

		if (Npc_HasItems(hero, ItMi_JackalTabak_04) == 1)
		{
			Npc_RemoveInvItems	(hero, ItMi_JackalTabak_04, 1);
			CreateInvItems	(hero, ItMi_JackalTabak, 1);
		};

		if (Mod_JackalTabak_05 == FALSE)
		&& (Npc_GetDistToItem(hero, ItMi_JackalTabak_05) < 500)
		{
			Mod_JackalTabak_05 = TRUE;

			B_Say	(hero, NULL, "$SMELLTABAK");
		};

		if (Npc_HasItems(hero, ItMi_JackalTabak_05) == 1)
		{
			Npc_RemoveInvItems	(hero, ItMi_JackalTabak_05, 1);
			CreateInvItems	(hero, ItMi_JackalTabak, 1);
		};

		if (Mod_JackalTabak_06 == FALSE)
		&& (Npc_GetDistToItem(hero, ItMi_JackalTabak_06) < 500)
		{
			Mod_JackalTabak_06 = TRUE;

			B_Say	(hero, NULL, "$SMELLTABAK");
		};

		if (Npc_HasItems(hero, ItMi_JackalTabak_06) == 1)
		{
			Npc_RemoveInvItems	(hero, ItMi_JackalTabak_06, 1);
			CreateInvItems	(hero, ItMi_JackalTabak, 1);
		};

		if (Mod_JackalTabak_07 == FALSE)
		&& (Npc_GetDistToItem(hero, ItMi_JackalTabak_07) < 500)
		{
			Mod_JackalTabak_07 = TRUE;

			B_Say	(hero, NULL, "$SMELLTABAK");
		};

		if (Npc_HasItems(hero, ItMi_JackalTabak_07) == 1)
		{
			Npc_RemoveInvItems	(hero, ItMi_JackalTabak_07, 1);
			CreateInvItems	(hero, ItMi_JackalTabak, 1);
		};

		if (Mod_JackalTabak_08 == FALSE)
		&& (Npc_GetDistToItem(hero, ItMi_JackalTabak_08) < 500)
		{
			Mod_JackalTabak_08 = TRUE;

			B_Say	(hero, NULL, "$SMELLTABAK");
		};

		if (Npc_HasItems(hero, ItMi_JackalTabak_08) == 1)
		{
			Npc_RemoveInvItems	(hero, ItMi_JackalTabak_08, 1);
			CreateInvItems	(hero, ItMi_JackalTabak, 1);
		};

		if (Mod_JackalTabak_09 == FALSE)
		&& (Npc_GetDistToItem(hero, ItMi_JackalTabak_09) < 500)
		{
			Mod_JackalTabak_09 = TRUE;

			B_Say	(hero, NULL, "$SMELLTABAK");
		};

		if (Npc_HasItems(hero, ItMi_JackalTabak_09) == 1)
		{
			Npc_RemoveInvItems	(hero, ItMi_JackalTabak_09, 1);
			CreateInvItems	(hero, ItMi_JackalTabak, 1);
		};

		if (Mod_JackalTabak_10 == FALSE)
		&& (Npc_GetDistToItem(hero, ItMi_JackalTabak_10) < 500)
		{
			Mod_JackalTabak_10 = TRUE;

			B_Say	(hero, NULL, "$SMELLTABAK");
		};

		if (Npc_HasItems(hero, ItMi_JackalTabak_10) == 1)
		{
			Npc_RemoveInvItems	(hero, ItMi_JackalTabak_10, 1);
			CreateInvItems	(hero, ItMi_JackalTabak, 1);
		};

		if (Mod_JackalTabak_11 == FALSE)
		&& (Npc_GetDistToItem(hero, ItMi_JackalTabak_11) < 500)
		{
			Mod_JackalTabak_11 = TRUE;

			B_Say	(hero, NULL, "$SMELLTABAK");
		};

		if (Npc_HasItems(hero, ItMi_JackalTabak_11) == 1)
		{
			Npc_RemoveInvItems	(hero, ItMi_JackalTabak_11, 1);
			CreateInvItems	(hero, ItMi_JackalTabak, 1);
		};

		if (Mod_JackalTabak_12 == FALSE)
		&& (Npc_GetDistToItem(hero, ItMi_JackalTabak_12) < 500)
		{
			Mod_JackalTabak_12 = TRUE;

			B_Say	(hero, NULL, "$SMELLTABAK");
		};

		if (Npc_HasItems(hero, ItMi_JackalTabak_12) == 1)
		{
			Npc_RemoveInvItems	(hero, ItMi_JackalTabak_12, 1);
			CreateInvItems	(hero, ItMi_JackalTabak, 1);
		};

		if (Mod_JackalTabak_13 == FALSE)
		&& (Npc_GetDistToItem(hero, ItMi_JackalTabak_13) < 500)
		{
			Mod_JackalTabak_13 = TRUE;

			B_Say	(hero, NULL, "$SMELLTABAK");
		};

		if (Npc_HasItems(hero, ItMi_JackalTabak_13) == 1)
		{
			Npc_RemoveInvItems	(hero, ItMi_JackalTabak_13, 1);
			CreateInvItems	(hero, ItMi_JackalTabak, 1);
		};

		// Lagermusik

		if (Mod_Gravo_Schatz == 4)
		&& (Wld_GetDay() > Mod_Gravo_Auftritt_Tag)
		&& (Wld_IsTime(19,00,00,00))
		{
			Mod_Gravo_Schatz = 5;

			B_StartOtherRoutine	(Mod_1469_BUD_Graham_MT, "AUFTRITT");
			B_StartOtherRoutine	(Mod_1430_BUD_Gravo_MT, "AUFTRITT");
			B_StartOtherRoutine	(Mod_1427_BUD_Guy_MT, "AUFTRITT");
			B_StartOtherRoutine	(Mod_803_STT_Mud_MT, "AUFTRITT");

			if (Npc_KnowsInfo(hero, Info_Mod_Seraphia_Lagermusik))
			{
				B_StartOtherRoutine	(Mod_1469_BUD_Graham_MT, "AUFTRITT");
			};
		};

		// Fight against Poloch and Tretor

		if (Mod_PolochTretor == 1)
		&& (!Npc_IsInState(Mod_10048_Orc_Poloch_MT, ZS_Talk))
		&& (!Npc_IsInState(Mod_10049_Orc_Tretor_MT, ZS_Talk))
		{
			Mod_PolochTretor = 2;
			
			Mod_10048_Orc_Poloch_MT.flags = 0;
			Mod_10049_Orc_Tretor_MT.flags = 0;
			B_Attack(Mod_10048_Orc_Poloch_MT, hero, AR_NONE, 0);
			B_Attack(Mod_10049_Orc_Tretor_MT, hero, AR_NONE, 0);
		};
		
		if (Mod_PolochTretor == 2) {
			if (!Npc_IsInState(Mod_10048_Orc_Poloch_MT, ZS_Attack))
			&& (!Mod_Poloch_Beat) {
				B_Attack(Mod_10048_Orc_Poloch_MT, hero, AR_NONE, 0);
			};
			if (!Npc_IsInState(Mod_10049_Orc_Tretor_MT, ZS_Attack))
			&& (!Mod_Tretor_Beat) {
				B_Attack(Mod_10049_Orc_Tretor_MT, hero, AR_NONE, 0);
			};
		};

		if (Mod_PolochTretor == 4)
		&& (!Npc_IsInState(Mod_10048_Orc_Poloch_MT, ZS_Talk))
		&& (!Npc_IsInState(Mod_10049_Orc_Tretor_MT, ZS_Talk))
		{
			Mod_PolochTretor = 5;
			
			B_StartOtherRoutine(Mod_10048_Orc_Poloch_MT, "AWAY");
		};
	};

	// Eisgebiet

	if (CurrentLevel == EISGEBIET_ZEN)
	{
		if (Npc_GetDistToWP(hero, "HEXE_ARENA") < 750)
		&& (!Npc_IsDead(Wolf_Griselda_01))
		&& (playerIsTransformed == FALSE)
		{
			Mod_Griselda_Arena = 1;
		};
		if (Npc_GetDistToWP(hero, "HEXE_ARENA") < 750)
		&& ((!Npc_IsDead(Blutfliege_Griselda_01))
		|| (!Npc_IsDead(Blutfliege_Griselda_02))
		|| (!Npc_IsDead(Spinne_Griselda_01))
		|| (!Npc_IsDead(Spinne_Griselda_02))
		|| (!Npc_IsDead(SwampGolem_Griselda_01)))
		&& (playerIsTransformed == FALSE)
		{
			Mod_Griselda_Arena = 1;
		};
		if (Npc_GetDistToWP(hero, "HEXE_ARENA") < 750)
		&& ((!Npc_IsDead(Firegolem_Griselda_01))
		|| (!Npc_IsDead(Icegolem_Griselda_01)))
		&& (playerIsTransformed == FALSE)
		{
			Mod_Griselda_Arena = 1;
		};
		if (Npc_GetDistToWP(hero, "HEXE_ARENA") < 750)
		&& ((!Npc_IsDead(Zombie_Griselda_01))
		|| (!Npc_IsDead(Zombie_Griselda_02))
		|| (!Npc_IsDead(Zombie_Griselda_03)))
		&& (playerIsTransformed == FALSE)
		{
			Mod_Griselda_Arena = 1;
		};

		if (Mod_Griselda_Arena == -1)
		&& (Mod_SaveOther == 0)
		{
			hero.attribute[ATR_HITPOINTS] = 0;

			Mod_Griselda_Arena = -2;
		};

		if (Mod_Halfmar_Pflanzen == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Halfmar_Hi))
		&& (Npc_HasItems(hero, ItPl_Mondschatten) >= 1)
		&& (Npc_HasItems(hero, ItPl_Rabenkraut) >= 1)
		{
			Mod_Halfmar_Pflanzen = 1;

			B_LogEntry	(TOPIC_MOD_ALFANS_HALFMAR, "I have the herbs for Halfmar.");
		};

		if (Npc_GetDistToWP(hero, "SUEDMINE_15") < 1000)
		&& (Npc_IsDead(Skeleton_Halfmar))
		&& (Mod_Geist_EIS_Spawned == 0)
		{
			Mod_Geist_EIS_Spawned = 1;

			Wld_InsertNpc	(Mod_7646_DMR_Geist_EIS, "SUEDMINE_16");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Geist_EIS_Hi))
		&& (Npc_HasItems(hero, ItWr_Strewak_01) == 1)
		&& (Npc_HasItems(hero, ItWr_Strewak_02) == 1)
		&& (Npc_HasItems(hero, ItWr_Strewak_03) == 1)
		&& (Mod_Geist_EIS_Bruder == 1)
		{
			Mod_Geist_EIS_Bruder = 2;

			B_LogEntry	(TOPIC_MOD_GEIST_BRUDER, "Strewak's notes! It seems I've uncovered the secret to his whereabouts. The icy cold of the ice giant became his downfall and prevented his body from ever falling apart and entering the earth. As soon as I have told the restless spirit of his brother about this, he should finally find peace.");
		};

		if (Npc_IsDead(Monster_11068_Eisriese_EIS))
		&& (Mod_Geist_EIS_Bruder == 0)
		{
			Mod_Geist_EIS_Bruder = 1;

			B_StartOtherRoutine	(Mod_7647_OUT_Strewak_EIS, "TOT");

			B_KillNpc	(Mod_7647_OUT_Strewak_EIS);

			Mod_7647_OUT_Strewak_EIS.nofocus = 0;
			
			Spine_UnlockAchievement(SPINE_ACHIEVEMENT_25);
		};

		if (!Npc_IsInState(Mod_7646_DMR_Geist_EIS, ZS_Talk))
		&& (Mod_Geist_EIS_Bruder == 2)
		&& (Npc_KnowsInfo(hero, Info_Mod_Geist_EIS_Strewak))
		{
			Mod_Geist_EIS_Bruder = 3;

			B_RemoveNpc	(Mod_7646_DMR_Geist_EIS);
		};

		if (Mod_Aldaro_Gift == 0)
		&& (Mod_Aldaro_Gift_Tag < Wld_GetDay())
		&& (Npc_KnowsInfo(hero, Info_Mod_Aldaro_Gift))
		{
			Mod_Aldaro_Gift = 1;

			B_StartOtherRoutine	(Mod_7674_OUT_Aldaro_EIS, "START");
		};

		// Hero sagt was, wenn man die Notizen vom Zombie nimmt

		if (Npc_HasItems(hero, ItWr_Schneegeister) == 1)
		&& (Mod_Thys_Schneegeister == 0)
		{
			Mod_Thys_Schneegeister = 1;

			B_Say_Overlay	(hero, NULL, "$READZETTEL");
		};
	};

	if (CurrentLevel == OLDMINE_ZEN)
	{
		if (!Mod_AMQ_Evil)
		&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_AlteMineQuest))
		{
			Mod_AMQ_Evil = TRUE;

			MEM_AssignInst(liste, MEM_World.voblist_npcs);

			loopStart = MEM_StackPos.position;
			/* while */ if (true) {
				npcPtr = liste.data;
				MEM_AssignInst (temp, npcPtr);

				if (Hlp_IsValidNpc(temp)) {
					if (temp.guild < GIL_SEPERATOR_HUM)
					&& (Hlp_GetInstanceID(temp) != Hlp_GetInstanceID(Mod_1031_DMR_Kurgan_OM))
					&& (Hlp_GetInstanceID(temp) != Hlp_GetInstanceID(hero))
					{
						temp.guild = GIL_STRF;
						Npc_SetTrueGuild (temp, GIL_STRF);
					};
				};

				MEM_AssignInst (liste, liste.next);

				if (liste.next != 0)
				{
					MEM_StackPos.position = loopStart;
				};
			}; /*end while*/

			Wld_InsertNpc	(Mod_10043_Orc_Bollok_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_7714_BUD_Viper_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13027_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13028_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13029_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13030_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13031_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13032_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13033_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13034_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13035_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13036_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13037_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13038_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13039_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13040_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13041_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13042_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13043_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13044_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13045_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13046_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13047_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13048_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13049_SP_Seelenpeiniger_OM, "OM_ENTRANCE");
			Wld_InsertNpc	(Mod_13050_SP_Seelenpeiniger_OM, "OM_ENTRANCE");

			Wld_InsertNpc	(ZombieRandom, "OM_084_QUEEN_02");
			Wld_InsertNpc	(ZombieRandom, "OM_071");
			Wld_InsertNpc	(ZombieRandom, "FP_ROAM_CRAWLER22_01");
			Wld_InsertNpc	(ZombieRandom, "FP_ROAM_CRAWLER21_02");
			Wld_InsertNpc	(ZombieRandom, "FP_ROAM_CRAWLER21_01");
			Wld_InsertNpc	(ZombieRandom, "FP_ROAM_CRAWLER21_03");
			Wld_InsertNpc	(ZombieRandom, "FP_ROAM_CRAWLER20_01");
			Wld_InsertNpc	(ZombieRandom, "FP_ROAM_CRAWLER20_02");
			Wld_InsertNpc	(ZombieRandom, "FP_ROAM_CRAWLER19_02");
			Wld_InsertNpc	(ZombieRandom, "FP_ROAM_CRAWLER19_03");
			Wld_InsertNpc	(ZombieRandom, "FP_ROAM_CRAWLER19_01");
			Wld_InsertNpc	(ZombieRandom, "FP_ROAM_CRAWLER19_04");
			Wld_InsertNpc	(ZombieRandom, "FP_ROAM_CRAWLER16_02");
			Wld_InsertNpc	(ZombieRandom, "FP_ROAM_CRAWLER16_03");
			Wld_InsertNpc	(ZombieRandom, "OM_059");
		};

		if (Mod_AMQ_Viper == 1)
		&& (Npc_IsDead(Mod_7714_BUD_Viper_OM))
		{
			Mod_AMQ_Viper = 2;

			MEM_AssignInst(liste, MEM_World.voblist_npcs);

			loopStart = MEM_StackPos.position;
			/* while */ if (true) {
				npcPtr = liste.data;
				MEM_AssignInst (temp, npcPtr);

				if (Hlp_IsValidNpc(temp)) {
					if (C_NpcIsSeelenpeiniger(temp))
					|| (Hlp_GetInstanceID(temp) == Hlp_GetInstanceID(Mod_10043_Orc_Bollok_OM))
					{
						B_RemoveNpc	(temp);
					};
				};

				MEM_AssignInst (liste, liste.next);

				if (liste.next != 0)
				{
					MEM_StackPos.position = loopStart;
				};
			}; /*end while*/

			B_LogEntry	(TOPIC_MOD_XARDAS_ALTEMINE, "The danger in the mine should be averted. I should tell Xardas about it.");

			Mod_AMQ_Viper_Day = Wld_GetDay();
		};
	};
};
