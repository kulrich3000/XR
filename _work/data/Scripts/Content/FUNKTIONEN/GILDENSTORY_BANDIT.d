FUNC VOID GILDENSTORY_BANDIT()
{
	if (CurrentLevel == MINENTAL_ZEN)
	{
		// Irgendwas anderes ^^

		if (Mod_Banditenueberfall_Esteban == 1)
		&& (Mod_UeberfallTag == Wld_GetDay()-1)
		&& (Wld_IsTime(08,00,10,00))
		{
			Mod_Banditenueberfall_Esteban = 2;

			B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "VM");
			B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "VM");
			B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "VM");
			B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "VM");
			B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "VM");
		};

		if (Mod_Banditenueberfall_Esteban == 2)
		&& ((Mod_UeberfallTag == Wld_GetDay()-2)
		|| ((Mod_UeberfallTag == Wld_GetDay()-1)
		&& (Wld_IsTime(10,01,24,00))))
		{
			Mod_EstebanBeleidigt = 1;

			B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "START");
			B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "START");
			B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "START");
			B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "START");
			B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "START");

			B_SetTopicStatus	(TOPIC_MOD_BDT_ESTEBAN, LOG_FAILED);
		};

		if (Mod_Banditenueberfall_Esteban == 4) {
			if (Npc_GetDistToWP(Mod_4076_VLK_Haendler_MT, "OW_PATH_1_15") < 300)
			&& (Npc_GetDistToWP(Mod_4077_VLK_Haendler_MT, "OW_PATH_1_15") < 300)
			{
				B_StartOtherRoutine	(Mod_4076_VLK_Haendler_MT, "END");
				B_StartOtherRoutine	(Mod_4077_VLK_Haendler_MT, "END");
				B_StartOtherRoutine	(Mod_4078_GRD_Gardist_MT, "END");
				B_StartOtherRoutine	(Mod_4079_GRD_Gardist_MT, "END");
				B_StartOtherRoutine	(Mod_4080_GRD_Gardist_MT, "END");
				B_StartOtherRoutine	(Mod_4081_GRD_Gardist_MT, "END");

				Mod_Banditenueberfall_Esteban = 5;
			};
		};

		if (Mod_Banditenueberfall_Esteban == 6)
		&& (Npc_GetDistToWP(hero, "OW_PATH_1_16_7") < 300)
		{
			B_StartOtherRoutine	(Mod_4078_GRD_Gardist_MT, "TOT");
			B_StartOtherRoutine	(Mod_4079_GRD_Gardist_MT, "TOT");
			B_StartOtherRoutine	(Mod_4080_GRD_Gardist_MT, "TOT");
			B_StartOtherRoutine	(Mod_4081_GRD_Gardist_MT, "TOT");

			Mod_Banditenueberfall_Esteban = 7;
		};

		if (Mod_Banditenueberfall_Esteban == 10) {
			if (!Npc_IsInState(Mod_948_BDT_Esteban_MT, ZS_Talk))
			&& (Mod_BDT_Esteban_RacheAngriff == 0)
			{
				Mod_BDT_Esteban_RacheAngriff = 1;

				B_Attack	(Mod_948_BDT_Esteban_MT, hero, AR_None, 0);
				B_Attack	(Mod_4072_BDT_Bandit_MT, hero, AR_None, 0);
				B_Attack	(Mod_4073_BDT_Bandit_MT, hero, AR_None, 0);
				B_Attack	(Mod_4074_BDT_Bandit_MT, hero, AR_None, 0);
				B_Attack	(Mod_4075_BDT_Bandit_MT, hero, AR_None, 0);

				Npc_SetTempAttitude (Mod_948_BDT_Esteban_MT, ATT_HOSTILE);
				Npc_SetTempAttitude (Mod_4072_BDT_Bandit_MT, ATT_HOSTILE);
				Npc_SetTempAttitude (Mod_4073_BDT_Bandit_MT, ATT_HOSTILE);
				Npc_SetTempAttitude (Mod_4074_BDT_Bandit_MT, ATT_HOSTILE);
				Npc_SetTempAttitude (Mod_4075_BDT_Bandit_MT, ATT_HOSTILE);
			};
		};

		if (Mod_Orks_Morgahard == 1)
		&& (Npc_KnowsInfo(hero, Info_Mod_Skinner_Orkjagd2))
		&& (Mod_Banditen_Orkjagd > 2)
		{
			Mod_Orks_Morgahard = 2;

			B_LogEntry	(TOPIC_MOD_BDT_MORGAHARD, "All right, I've got the troop ready. We can start tonight.");
		};

		if (Mod_Orks_Morgahard == 2)
		&& (Npc_GetDistToWP(hero, "OW_PATH_188") < 500)
		&& (Wld_IsTime(22,00,03,00))
		{
			Mod_Orks_Morgahard = 3;

			AI_StandUp	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_BDT_WoSkinner_15_00"); //Where's Skinner?

			B_LogEntry	(TOPIC_MOD_BDT_MORGAHARD, "Where's Skinner? I should stop by his cave again.");
		};

		if (Mod_Orks_Morgahard >= 1)
		{
			if (Hlp_IsValidNpc(OrkScout_BDTPatroullie_01)) {
				if (Npc_HasEquippedWeapon(OrkScout_BDTPatroullie_01))
				&& (Wld_IsTime(22,00,04,00))
				{
					AI_UnequipWeapons	(OrkScout_BDTPatroullie_01);

					Npc_RemoveInvItems	(OrkScout_BDTPatroullie_01, ItMw_2H_OrcAxe_01, Npc_HasItems(OrkScout_BDTPatroullie_01, ItMw_2H_OrcAxe_01));
				}
				else if (!Npc_HasEquippedWeapon(OrkScout_BDTPatroullie_01))
				&& (Wld_IsTime(04,00,22,00))
				{
					CreateInvItems	(OrkScout_BDTPatroullie_01, ItMw_2H_OrcAxe_01, 1);
					AI_EquipBestMeleeWeapon (OrkScout_BDTPatroullie_01);
				};
			};
			if (Hlp_IsValidNpc(OrkScout_BDTPatroullie_02)) {
				if (Npc_HasEquippedWeapon(OrkScout_BDTPatroullie_02))
				&& (Wld_IsTime(22,00,04,00))
				{
					AI_UnequipWeapons	(OrkScout_BDTPatroullie_02);

					Npc_RemoveInvItems	(OrkScout_BDTPatroullie_02, ItMw_2H_OrcAxe_01, Npc_HasItems(OrkScout_BDTPatroullie_02, ItMw_2H_OrcAxe_01));
				}
				else if (!Npc_HasEquippedWeapon(OrkScout_BDTPatroullie_02))
				&& (Wld_IsTime(04,00,22,00))
				{
					CreateInvItems	(OrkScout_BDTPatroullie_02, ItMw_2H_OrcAxe_01, 1);
					AI_EquipBestMeleeWeapon (OrkScout_BDTPatroullie_02);
				};
			};
			if (Hlp_IsValidNpc(OrkScout_BDTPatroullie_03)) {
				if (Npc_HasEquippedWeapon(OrkScout_BDTPatroullie_03))
				&& (Wld_IsTime(22,00,04,00))
				{
					AI_UnequipWeapons	(OrkScout_BDTPatroullie_03);

					Npc_RemoveInvItems	(OrkScout_BDTPatroullie_03, ItMw_2H_OrcAxe_01, Npc_HasItems(OrkScout_BDTPatroullie_03, ItMw_2H_OrcAxe_01));
				}
				else if (!Npc_HasEquippedWeapon(OrkScout_BDTPatroullie_03))
				&& (Wld_IsTime(04,00,22,00))
				{
					CreateInvItems	(OrkScout_BDTPatroullie_03, ItMw_2H_OrcAxe_01, 1);
					AI_EquipBestMeleeWeapon (OrkScout_BDTPatroullie_03);
				};
			};
		};

		if (Mod_Mud_OrksWeg == 1)
		{
			if (Mod_Mud_OrksCounter == 240)
			{
				B_StartOtherRoutine	(Mod_10012_ORC_Scout_MT, "START");
				B_StartOtherRoutine	(Mod_10013_ORC_Scout_MT, "START");
				B_StartOtherRoutine	(Mod_10014_ORC_Elite_MT, "START");
				B_StartOtherRoutine	(Mod_10015_ORC_Elite_MT, "START");

				AI_Teleport	(Mod_10012_ORC_Scout_MT, "SPAWN_OW_MOLERATS_WOOD_OM");
				AI_Teleport	(Mod_10013_ORC_Scout_MT, "SPAWN_OW_MOLERATS_WOOD_OM");
				AI_Teleport	(Mod_10014_ORC_Elite_MT, "SPAWN_OW_MOLERATS_WOOD_OM");
				AI_Teleport	(Mod_10015_ORC_Elite_MT, "SPAWN_OW_MOLERATS_WOOD_OM");

				Mod_Mud_OrksWeg = 2;
			};

			Mod_Mud_OrksCounter += 1;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
		&& (Npc_GetDistToWP(Mod_803_STT_Mud_MT, Mod_803_STT_Mud_MT.wp) < 300)
		{
			B_StartOtherRoutine	(Mod_803_STT_Mud_MT, "ORKALARM");

			AI_StandUp	(Mod_10012_ORC_Scout_MT);
			Npc_ClearAIQueue	(Mod_10012_ORC_Scout_MT);

			AI_StandUp	(Mod_10013_ORC_Scout_MT);
			Npc_ClearAIQueue	(Mod_10013_ORC_Scout_MT);

			AI_StandUp	(Mod_10014_ORC_Elite_MT);
			Npc_ClearAIQueue	(Mod_10014_ORC_Elite_MT);

			AI_StandUp	(Mod_10015_ORC_Elite_MT);
			Npc_ClearAIQueue	(Mod_10015_ORC_Elite_MT);

			B_StartOtherRoutine	(Mod_10012_ORC_Scout_MT, "MUD");
			B_StartOtherRoutine	(Mod_10013_ORC_Scout_MT, "MUD");
			B_StartOtherRoutine	(Mod_10014_ORC_Elite_MT, "MUD");
			B_StartOtherRoutine	(Mod_10015_ORC_Elite_MT, "MUD");

			Mod_Mud_OrksWeg = 1;
			Mod_Mud_OrksCounter = 0;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Dexter_AmulettAbgegeben))
		&& (Mod_Dexter_AmulettParty == 1)
		&& (!Npc_IsInState(Mod_761_BDT_Dexter_MT, ZS_Talk))
		{
			PrintScreen ("A night of drinking later", -1, YPOS_LevelUp, FONT_Screen, 2);

			Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

			AI_Teleport	(hero, "LOCATION_11_12");

			B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "ORKATTACK");

			Mod_Dexter_AmulettParty = 2;

			PC_Sleep (7);
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_You))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Esteban_FluchtHappy))
		{
			if (C_NpcIsDown(Mod_7175_BDT_Oschust_MT)) {
				AI_Teleport	(Mod_7175_BDT_Oschust_MT, "TOT");
			};
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Dexter_AngriffVorbei))
		&& (Mod_AlbertTransforms == 8) {
			if (!Npc_IsInState(Mod_761_BDT_Dexter_MT, ZS_Talk))
			{
				PrintScreen ("A night of drinking later", -1, YPOS_LevelUp, FONT_Screen, 2);

				Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

				AI_Teleport	(hero, "LOCATION_11_12");

				PC_Sleep (7);

				Mod_AlbertTransforms = 10;
			};
		};

		if (Mod_CrazyRabbit == 1)
		{
			Mod_CrazyRabbit_Counter += 1;

			if (Mod_CrazyRabbit_Counter == 10)
			&& (B_GetAivar(hero, AIV_INVINCIBLE) == FALSE)
			{
				Mod_CrazyRabbit = 2;

				B_TransferInventory_All (hero, PC_Itemholder);

				AI_Teleport	(hero, "WP_MT_TO_WW");
			};
		};

		if (Mod_CrazyRabbit == 4)
		{
			Mod_CrazyRabbit = 5;

			B_TransferInventory_All (PC_Itemholder, hero);
		};

		// Spie�rutenlauf im Alten Lager

		var C_Item RuessiCheck;
		RuessiCheck = Npc_GetEquippedArmor(hero);

		if (Mod_LoganQuest == 1)
		&& (Npc_GetDistToWP(hero, "WP_MT_ALISSANDRO_GALGEN") < 3000)
		&& (Hlp_IsItem(RuessiCheck, ItAr_SLD_Logan) == TRUE)
		{
			Mod_LoganQuest = 2;

			Mod_LaufZeit = 0;

			B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "ABLENKUNG");
			B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "ABLENKUNG");
			B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "ABLENKUNG");

			B_LogEntry	(TOPIC_MOD_BDT_LOGAN, "Here we go, just hang in there long enough now....");
		};

		if (Mod_LoganQuest == 2)
		{
			Mod_LaufZeit += 1;

			if (Mod_LaufZeit == 180)
			|| (Hlp_IsItem(RuessiCheck, ItAr_SLD_Logan) == FALSE)
			|| (Npc_GetDistToWP(hero, "WP_MT_ALISSANDRO_GALGEN") >= 3000)
			|| (C_NpcIsDown(hero))
			{
				Mod_LoganQuest = 3;

				B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "RETTUNG");
				B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "RETTUNG");
				B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "RETTUNG");

				B_LogEntry	(TOPIC_MOD_BDT_LOGAN, "Finished, let's get out of here....");
			};
		};

		// Banditenlager ausgel�scht, wenn alle Banditen draufgegangen sind

		if (Mod_AlbertTransforms == 7)
		&& (Mod_Dexter_BanditenParty+2 <= Wld_GetDay())
		&& (Mod_BDT_Aus == 0)
		{
			Mod_BDT_Aus = 1;

			B_KillNpc	(Mod_4075_BDT_Bandit_MT);
			B_KillNpc	(Mod_7023_BDT_Quentin_MT);
			B_KillNpc	(Mod_761_BDT_Dexter_MT);
			B_KillNpc	(Mod_790_BDT_Morgahard_MT);
			B_KillNpc	(Mod_948_BDT_Esteban_MT);
			B_KillNpc	(Mod_955_BDT_Juan_MT);
			B_KillNpc	(Mod_957_BDT_Logan_MT);
			B_KillNpc	(Mod_958_BDT_Miguel_MT);
			B_KillNpc	(Mod_961_BDT_Sancho_MT);
			B_KillNpc	(Mod_964_BDT_Skinner_MT);
			B_KillNpc	(Mod_4072_BDT_Bandit_MT);
			B_KillNpc	(Mod_4073_BDT_Bandit_MT);
			B_KillNpc	(Mod_4074_BDT_Bandit_MT);
		};

		// H�ndler verschwinden nicht korrekt

		if (Hlp_IsValidNpc(Mod_4076_VLK_Haendler_MT)) {
			PrintDebug("First valid");
			if (!Npc_IsDead(Mod_4076_VLK_Haendler_MT))
			&& (Npc_KnowsInfo(hero, Info_Mod_Esteban_AtVM3))
			{
				PrintDebug("First not dead");
				if (Npc_GetDistToWP(Mod_4076_VLK_Haendler_MT, "TOT") > 1000)
				{
					AI_Teleport	(Mod_4076_VLK_Haendler_MT, "TOT");
					B_StartOtherRoutine	(Mod_4076_VLK_Haendler_MT, "TOT");
					B_RemoveNpc(Mod_4076_VLK_Haendler_MT);
					PrintDebug("First TeleportKill");
				}
				else if (Npc_GetDistToWP(Mod_4076_VLK_Haendler_MT, "TOT") <= 1000)
				{
					B_RemoveNpc	(Mod_4076_VLK_Haendler_MT);
					PrintDebug("First Kill");
				};
			};
		};

		if (Hlp_IsValidNpc(Mod_4077_VLK_Haendler_MT)) {
			PrintDebug("Second valid");
			if (!Npc_IsDead(Mod_4077_VLK_Haendler_MT))
			&& (Npc_KnowsInfo(hero, Info_Mod_Esteban_AtVM3))
			{
				PrintDebug("Second not dead");
				if (Npc_GetDistToWP(Mod_4077_VLK_Haendler_MT, "TOT") > 1000)
				{
					AI_Teleport	(Mod_4077_VLK_Haendler_MT, "TOT");
					B_StartOtherRoutine	(Mod_4077_VLK_Haendler_MT, "TOT");
					B_RemoveNpc(Mod_4077_VLK_Haendler_MT);
					PrintDebug("Second TeleportKill");
				}
				else if (Npc_GetDistToWP(Mod_4077_VLK_Haendler_MT, "TOT") <= 1000)
				{
					B_RemoveNpc	(Mod_4077_VLK_Haendler_MT);
					PrintDebug("Second Kill");
				};
			};
		};

		// Oschust Ork-Attack

		if ((Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Trophies))
		|| (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Gnade))
		|| (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Plan)))
		&& (Mod_Oschust_OrkAttack == 0)
		{
			if (!Npc_IsInState(Mod_7175_BDT_Oschust_MT, ZS_Talk)) {
				Mod_Oschust_OrkAttack = 1;

				B_Attack	(Mod_10021_ORC_Elite_MT, hero, AR_Kill, 0);
				B_Attack	(Mod_10022_ORC_Elite_MT, hero, AR_Kill, 0);
				B_Attack	(Mod_10029_Orc_Warrior_MT, hero, AR_Kill, 0);
				B_Attack	(Mod_10030_Orc_Warrior_MT, hero, AR_Kill, 0);
				B_Attack	(Mod_10031_Orc_Warrior_MT, hero, AR_Kill, 0);
			};
		};

		// Nicht bewegen, bevor Esteban nicht sein GO gibt

		if (Npc_KnowsInfo(hero, Info_Mod_Esteban_AtVM2))
		&& (Mod_WarteAufUeberfall == 0)
		{
			if (!Npc_IsInState(Mod_948_BDT_Esteban_MT, ZS_Talk)) {
				Mod_WarteAufUeberfall = 1;

				AI_GotoWP	(hero, "OW_VM_ENTRANCE");

				AI_AlignToWP	(hero);

				AI_Wait	(hero, 5);
			};
		};

		// Blackscreen for Hero during Talk between Oschust and Esteban

		if (Npc_KnowsInfo(hero, Info_Mod_Esteban_SecondOrkWave))
		&& (!Mod_EstebanOschust) {
			if (!Npc_IsInState(Mod_948_BDT_Esteban_MT, ZS_Talk)) {
				Mod_EstebanOschust = 1;
			};
		};
	};

	if (CurrentLevel == ORCCITY_ZEN)
	{
		if (Mod_AlbertTransforms > 2)
		&& (Mod_BDT_OrcCity_Leer == 0)
		{
			if (Npc_IsDead(Mod_7179_BDT_Bandit_OC))
			{
				Mod_OC_Bandit_01 = 1;
			};

			if (Npc_IsDead(Mod_7185_BDT_Bandit_OC))
			{
				Mod_OC_Bandit_02 = 1;
			};

			if (Npc_IsDead(Mod_7186_BDT_Morgahard_OC))
			{
				Mod_OC_Morgahard = 1;
			};

			if (Npc_IsDead(Mod_7184_BDT_Esteban_OC))
			{
				Mod_OC_Esteban = 1;
			};

			if (Npc_IsDead(Mod_7183_BDT_Miguel_OC))
			{
				Mod_OC_Miguel = 1;
			};

			if (Npc_IsDead(Mod_7182_BDT_Juan_OC))
			{
				Mod_OC_Juan = 1;
			};

			if (Npc_IsDead(Mod_7181_BDT_Logan_OC))
			{
				Mod_OC_Logan = 1;
			};

			if (Npc_IsDead(Mod_7180_BDT_Skinner_OC))
			{
				Mod_OC_Skinner = 1;
			};
		};
	};

	if (CurrentLevel == WOLKENWELT_ZEN)
	{
		if (Mod_CrazyRabbit == 3)
		&& (!Npc_IsInState(RosaHase_7187, ZS_Talk))
		{
			Mod_CrazyRabbit = 4;

			AI_Teleport	(hero, "WP_WW_TO_MT");
		};
	};

	// Eduard nur auf fehlendes Gold ansprechen k�nnen bis max. 1h nach Gespr�ch

	if (Mod_EduardZuWenigGoldCounter > 0)
	{
		Mod_EduardZuWenigGoldCounter -= 1;
	};

	if (CurrentLevel == RELENDEL_ZEN)
	{
		// Der alte Mann des Waldes

		if (Mod_BDT_AlterWaldMann == 5)
		{
			Mod_BDT_AlterWaldMann = 6;

			Wld_InsertNpc	(Mod_7529_OUT_AlterMann_REL, "REL_SURFACE_130");
		};

		if (Mod_BDT_AlterWaldMann == 6)
		&& (Npc_GetDistToWP(hero, "REL_SURFACE_130") < 4000)
		&& (Mod_IstKeiler == 0)
		{
			Mod_BDT_AlterWaldMann = 7;

			Mod_BDT_AlterWaldMann_Counter = 0;

			Wld_SendTrigger	("EVT_ALTERMANN");

			CutsceneAn = TRUE;
		};

		if (Mod_BDT_AlterWaldMann == 7)
		{
			if (Mod_BDT_AlterWaldMann_Counter == 0)
			{
				if (Mod_BDT_AlterWaldMann_Text == 0)
				{
					AI_Output(Mod_7529_OUT_AlterMann_REL, NULL, "Info_Mod_AlterWaldMann_Mecker_11_00"); //Who are you? A bandit, a poacher? You'll never achieve your sinister goals, you fool.
				}
				else if (Mod_BDT_AlterWaldMann_Text == 1)
				{
					AI_Output(Mod_7529_OUT_AlterMann_REL, NULL, "Info_Mod_AlterWaldMann_Mecker_11_01"); //Listen, when we get there.... Do you want to harm the animals of the forest, clear the forest?
				}
				else if (Mod_BDT_AlterWaldMann_Text == 2)
				{
					AI_Output(Mod_7529_OUT_AlterMann_REL, NULL, "Info_Mod_AlterWaldMann_Mecker_11_02"); //A troublemaker? Get out of here, you bastard, the forest belongs to the plants and animals.
				}
				else if (Mod_BDT_AlterWaldMann_Text == 3)
				{
					AI_Output(Mod_7529_OUT_AlterMann_REL, NULL, "Info_Mod_AlterWaldMann_Mecker_11_03"); //Another uninvited guest? Whatever you want, you'll never achieve it.
				};
			};
			if (Mod_BDT_AlterWaldMann_Counter == 6)
			{
				if (Mod_BDT_AlterWaldMann_Text == 0)
				{
					AI_Output(Mod_7529_OUT_AlterMann_REL, NULL, "Info_Mod_AlterWaldMann_Mecker_11_04"); //Never, you'll get anywhere near me, hehehe.

					Mod_BDT_AlterWaldMann_Text = 1;
				}
				else if (Mod_BDT_AlterWaldMann_Text == 1)
				{
					AI_Output(Mod_7529_OUT_AlterMann_REL, NULL, "Info_Mod_AlterWaldMann_Mecker_11_05"); //Biting calves will be the only thing you carry off, hehehe.

					Mod_BDT_AlterWaldMann_Text = 2;
				}
				else if (Mod_BDT_AlterWaldMann_Text == 2)
				{
					AI_Output(Mod_7529_OUT_AlterMann_REL, NULL, "Info_Mod_AlterWaldMann_Mecker_11_06"); //Wanting to harm them, I'll chase you out of the woods with my friends, hehe.

					Mod_BDT_AlterWaldMann_Text = 3;
				}
				else if (Mod_BDT_AlterWaldMann_Text == 3)
				{
					AI_Output(Mod_7529_OUT_AlterMann_REL, NULL, "Info_Mod_AlterWaldMann_Mecker_11_07"); //That had to recognize also already Tollpatsche, which tried to seize me, called nene.

					Mod_BDT_AlterWaldMann_Text = 0;
				};
			};
			if (Mod_BDT_AlterWaldMann_Counter == 12)
			{
				AI_Teleport	(Mod_7529_OUT_AlterMann_REL, "TOT");
				B_StartOtherRoutine	(Mod_7529_OUT_AlterMann_REL, "TOT");

				Mod_BDT_AlterWaldMann = 8;

				CutsceneAn = FALSE;
			};

			Mod_BDT_AlterWaldMann_Counter += 1;
		};

		if (Mod_BDT_AlterWaldMann == 8)
		&& (Npc_GetDistToWP(hero, "REL_SURFACE_130") > 4000)
		{
			AI_Teleport	(Mod_7529_OUT_AlterMann_REL, "START");
			B_StartOtherRoutine	(Mod_7529_OUT_AlterMann_REL, "START");

			Mod_BDT_AlterWaldMann = 6;
		};

		if (Mod_BDT_AlterWaldMann == 9) {
			if (Npc_IsDead(Mod_7530_JG_Wilderer_NW))
			&& (Npc_IsDead(Mod_7531_JG_Wilderer_REL))
			&& (Npc_IsDead(Mod_7532_JG_Wilderer_REL))
			{
				AI_Teleport	(Mod_7529_OUT_AlterMann_REL, "START");
				B_StartOtherRoutine	(Mod_7529_OUT_AlterMann_REL, "START");

				Mod_BDT_AlterWaldMann = 6;
			};
		};

		if (Npc_KnowsInfo(hero, Info_Mod_AlterWaldMann_AtMine)) {
			if (Npc_IsInState(Mod_7582_OUT_Buddler_REL, ZS_Attack))
			&& (Npc_IsInState(Mod_7583_OUT_Wache_REL, ZS_Attack))
			&& (Npc_IsInState(Mod_7584_OUT_Wache_REL, ZS_Attack))
			{
				B_KillNpc	(Mod_7582_OUT_Buddler_REL);
				B_KillNpc	(Mod_7583_OUT_Wache_REL);
				B_KillNpc	(Mod_7584_OUT_Wache_REL);
			};
		};

		if (Mod_BDT_AlterWaldMann == 10)
		&& (Npc_GetDistToWP(hero, "REL_SURFACE_188") < 300)
		{
			Mod_BDT_AlterWaldMann = 11;

			B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Herbs and plants? Ohh, now I see, a treasure trove of knowledge and forest. What will Morgahard say?");
		};
	};
};
