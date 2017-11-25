FUNC VOID Aufnahmequests ()
{
	// Banditen

	// Hakon's Langschwert

	if (Npc_HasItems(hero, ItMw_HakonSchwert_02) == 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_HakonSchwert_02, 1);
		CreateInvItems	(hero, ItMw_HakonSchwert_01, 1);
	};

	// Sumpflager

	if (CurrentLevel == MINENTAL_ZEN)
	{
		if (Mod_Sekte_SH_Kampf == 1)
		&& (Hlp_IsValidNpc(Mod_1219_TPL_Templer_MT))
		&& (!Npc_IsInState(Mod_1219_TPL_Templer_MT, ZS_Talk))
		{
			if (Mod_Sekte_SH_Counter == 10)
			{
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_01");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_02");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_03");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_04");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_05");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_06");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_07");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_08");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_09");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_10");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_03");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_04");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_05");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_06");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_09");
				Wld_InsertNpc	(Swampshark_Undead, "FP_SPAWN_SWAMPSHARK_UD_10");

				Mod_Sekte_SH_Kampf = 2;
			};

			Mod_Sekte_SH_Counter += 1;
		};

		// Tor der alten Mine wieder schlie�en und schwarzen Krieger entfernen

		if (Npc_GetDistToWP(hero, "OW_OM_ENTRANCE03") > 5000)
		&& (Mod_WM_ElvrichImSumpf == 2)
		{
			Mod_WM_ElvrichImSumpf = 3;

			Wld_SendTrigger	("EVT_AM_LOB_GATE_BIG");

			Mod_MinentalTor = 1;

			B_RemoveNpc	(Mod_7403_SMK_SchwarzerKrieger_MT);
		};

		// Waldl�ufer	

		// Nicht ins Indoor-Lager vor Erlaubnis

		if (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
		&& (Npc_GetDistToWP(hero, "WP_MT_JAEGERLAGER_03") < 750)
		{
			AI_GotoWP	(hero, "WP_MT_JAEGERLAGER_02");
		};

		// Beliaranh�nger

		if (Mod_Beliar_Andokai == 0)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Gomez_Hi))
			&& (!Npc_IsInState(Mod_517_DMR_Gomez_MT, ZS_Talk))
			{
				Mod_Beliar_Andokai = 1;

				AI_Teleport	(hero, "PALTOBURGLINKSOBENTURM_8");
			};
		};

		// Sumpfis

		if (Mod_Sekte_Aufnahme == 1)
		&& (Npc_KnowsInfo(hero, Info_Mod_Karras_Lester))
		&& (!Npc_IsInState(Mod_514_DMB_Karras_MT, ZS_Talk))
		{
			Wld_InsertNpc	(Mod_7268_PSINOV_Lester_MT, "PSI_START");

			AI_Teleport	(Mod_514_DMB_Karras_MT, "PSI_START");
			B_StartOtherRoutine	(Mod_514_DMB_Karras_MT, "ATPSICAMP");

			AI_Teleport	(hero, "PSI_START");

			Mod_Sekte_Aufnahme = 2;
		};
	};

	if (CurrentLevel == NEWWORLD_ZEN)
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Karras_Namib))
		&& (Mod_KarrasNecronicum == 0)
		{
			Mod_KarrasNecronicum = 1;

			Wld_InsertItem	(ItWr_BeliarBook, "FP_NW_ITEM_LIBRARY_IRDORATHBOOK");

			B_StartOtherRoutine	(Mod_523_KDF_Daron_NW, "CITY");
			B_StartOtherRoutine	(Mod_1190_NOV_Katar_NW, "CITY");

			Wld_InsertNpc	(Mod_7267_VLK_Joseppe_NW, "MARKT");
		};

		// Beliar

		// Aufnahmequest

		var C_Item HeroWeaponCheck;
		HeroWeaponCheck = Npc_GetReadiedWeapon(hero);

		if (Hlp_IsValidNpc(Mod_1942_Ryan_NW))
		{
			if (!Npc_IsDead(Mod_1942_Ryan_NW))
			{
				if (Hlp_IsItem(HeroWeaponCheck, DreiGoetterStab) == TRUE)
				{
					Mod_1942_Ryan_NW.flags = 0;
				}
				else
				{
					Mod_1942_Ryan_NW.flags = 2;
				};
			};
		};

		// Adanos

		// Die Vermissten

		if (Npc_KnowsInfo(hero, Info_Mod_Elvrich_Liste))
		&& (Npc_GetDistToWP(hero, "NW_CITY_HABOUR_STOMPER_01") < 1000)
		&& (Hlp_IsValidNpc(Mod_573_NONE_Elvrich_NW))
		&& (Npc_GetDistToWP(Mod_573_NONE_Elvrich_NW, "NW_CITY_HABOUR_STOMPER_01") < 500)
		&& (Wld_IsTime(23,00,01,00))
		&& (Mod_VermisstenQuest == 0)
		{
			Mod_VermisstenQuest = 1;

			CutsceneAn = TRUE;

			Wld_SendTrigger	("ELVRICHSENTFUEHRUNG");
		};

		if (Mod_VermisstenQuest == 1)
		{
			Mod_VermisstenCounter += 1;

			if (Mod_VermisstenCounter == 1)
			{
				AI_PlayAni	(Mod_573_NONE_Elvrich_NW, "T_SEARCH");
			};

			if (Mod_VermisstenCounter == 5)
			{
				AI_Output(Mod_573_NONE_Elvrich_NW, NULL, "Info_Mod_Elvrich_Entfuehrung_24_00"); //Where are you, darling?
			};

			if (Mod_VermisstenCounter == 10)
			{
				Wld_InsertNpc	(Mod_1000_DMR_Kurgan_NW, "NW_CITY_HABOUR_STOMPER_01");
			};

			if (Mod_VermisstenCounter == 12)
			{
				AI_TurnToNpc	(Mod_1000_DMR_Kurgan_NW, Mod_573_NONE_Elvrich_NW);

				AI_Output(Mod_1000_DMR_Kurgan_NW, NULL, "Info_Mod_Elvrich_Entfuehrung_01_01"); //Here I am....
			};

			if (Mod_VermisstenCounter == 17)
			{
				AI_TurnToNpc	(Mod_573_NONE_Elvrich_NW, Mod_1000_DMR_Kurgan_NW);

				AI_Output(Mod_573_NONE_Elvrich_NW, NULL, "Info_Mod_Elvrich_Entfuehrung_24_02"); //But you're not...
			};

			if (Mod_VermisstenCounter == 22)
			{
				AI_TurnToNpc	(Mod_1000_DMR_Kurgan_NW, Mod_573_NONE_Elvrich_NW);

				AI_Output(Mod_1000_DMR_Kurgan_NW, NULL, "Info_Mod_Elvrich_Entfuehrung_01_03"); //... your girlfriend? Quite so.
			};

			if (Mod_VermisstenCounter == 27)
			{
				AI_TurnToNpc	(Mod_573_NONE_Elvrich_NW, Mod_1000_DMR_Kurgan_NW);

				AI_Output(Mod_573_NONE_Elvrich_NW, NULL, "Info_Mod_Elvrich_Entfuehrung_24_04"); //What are you doing here?
			};

			if (Mod_VermisstenCounter == 32)
			{
				AI_TurnToNpc	(Mod_1000_DMR_Kurgan_NW, Mod_573_NONE_Elvrich_NW);

				AI_Output(Mod_1000_DMR_Kurgan_NW, NULL, "Info_Mod_Elvrich_Entfuehrung_01_05"); //I just want you. (laughs)
			};

			if (Mod_VermisstenCounter == 37)
			{
				B_Attack	(Mod_1000_DMR_Kurgan_NW, Mod_573_NONE_Elvrich_NW, AR_None, 0);
			};

			if (Mod_VermisstenCounter == 42)
			{
				AI_TurnToNpc	(Mod_1000_DMR_Kurgan_NW, Mod_573_NONE_Elvrich_NW);

				AI_Output(Mod_1000_DMR_Kurgan_NW, NULL, "Info_Mod_Elvrich_Entfuehrung_01_06"); //And get the hell out of here before those jerk-offs notice anything.
			};

			if (Mod_VermisstenCounter == 42)
			{
				AI_Teleport	(Mod_1000_DMR_Kurgan_NW, "TOT");
				AI_Teleport	(Mod_573_NONE_Elvrich_NW, "TOT");

				B_StartOtherRoutine	(Mod_1000_DMR_Kurgan_NW, "TOT");
				B_StartOtherRoutine	(Mod_573_NONE_Elvrich_NW, "TOT");

				AI_Teleport	(Mod_1000_DMR_Kurgan_NW, "TOT");
				AI_Teleport	(Mod_573_NONE_Elvrich_NW, "TOT");

				B_LogEntry	(TOPIC_MOD_VERMISSTE, "A demon knight kidnapped Elvrich. That'll do Vatras.");

				Mod_VermisstenQuest = 2;

				B_GivePlayerXP	(100);

				CutsceneAn = FALSE;
			};
		};

		// Feuermagier	

		// Kranke Novizen wieder fit nach einem Tag

		if (Mod_FMFieberDay < Wld_GetDay())
		&& (Mod_FMFieber == 1)
		{
			Mod_FMFieber = 2;

			B_StartOtherRoutine	(Mod_915_NOV_Dyrian_NW, "START");
			B_StartOtherRoutine	(Mod_913_NOV_Agon_NW, "START");
			B_StartOtherRoutine	(Mod_919_NOV_Igaraz_NW, "START");
			B_StartOtherRoutine	(Mod_1192_NOV_Novize_NW, "START");
			B_StartOtherRoutine	(Mod_1194_NOV_Novize_NW, "START");
			B_StartOtherRoutine	(Mod_1195_NOV_Novize_NW, "START");
		};
		
		// Meldors Sumpfkrautpaket
		
		if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hilfe))
		&& (Mob_HasItems("CHEST_ANDRE_WAREHOUSE_PACKET", ItMi_HerbPaket) == 1)
		&& (!Mod_Meldor_Save) {
			Mod_Meldor_Save = TRUE;
			
			B_StartOtherRoutine(Mod_597_NONE_Meldor_NW, "START");
			B_StartOtherRoutine(Mod_543_MIL_Picasso_NW, "START");
		};
		
		if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hilfe))
		&& (Npc_HasItems(Mod_597_NONE_Meldor_NW, ItMi_HerbPaket) == 1)
		&& (Npc_GetDistToWP(hero, "WP_CITY_MELDOR") < 3000)
		&& (!Mod_MeldorVerpfiffen) {			
			Mod_MeldorVerpfiffen = 1;

			AI_Teleport	(Mod_597_NONE_Meldor_NW, "NW_CITY_HABOUR_KASERN_HALVOR");

			B_StartOtherRoutine	(Mod_597_NONE_Meldor_NW, "GEFANGEN");
		};
	};

	// Schrein entweihen

	if (ShrineIsObsessed_NW_SHRINE_01 == TRUE)
	&& (Wld_GetDay()-4 > Mod_SchreinEntweiht)
	{
		ShrineIsObsessed_NW_SHRINE_01 = FALSE;
	};

	// Aufnahmequest in der Mine

	if (CurrentLevel == OLDMINE_ZEN)
	{
		if (Mod_WM_KurganAlarm == 1)
		&& (Npc_GetDistToWP(hero, "OM_CAVE1_47") < 1000)
		{
			Mod_WM_KurganAlarm = 2;

			CutsceneAn = TRUE;

			Wld_SendTrigger	("KURGANCAM");
		};

		if (Mod_WM_KurganAlarm == 2)
		&& (Npc_GetDistToWP(hero, "OM_CAVE1_47") < 1000)
		{
			if (Mod_WM_KurganAlarm_Counter == 2)
			{
				AI_TurnToNpc	(Mod_7399_DMR_Daemonenritter_OM, Mod_1031_DMR_Kurgan_OM);
				AI_TurnToNpc	(Mod_1031_DMR_Kurgan_OM, Mod_7399_DMR_Daemonenritter_OM);

				AI_Output(Mod_7399_DMR_Daemonenritter_OM, NULL, "Info_Mod_DMRGateGuard_Flucht_13_00"); //The prisoner has disappeared. Must have rushed through the exit into the Minental.
			};

			if (Mod_WM_KurganAlarm_Counter == 7)
			{
				AI_Output(Mod_1031_DMR_Kurgan_OM, NULL, "Info_Mod_DMRGateGuard_Flucht_01_01"); //Was?! Das hat ja noch gefehlt. Finde diese Nervens�ge und bringt ihn zu den "another" nach unten. Du verstehst, was ich meine.
			};

			if (Mod_WM_KurganAlarm_Counter == 12)
			{
				B_StartOtherRoutine	(Mod_7399_DMR_Daemonenritter_OM, "START");
				B_StartOtherRoutine	(Mod_1031_DMR_Kurgan_OM, "START");

				B_LogEntry	(TOPIC_MOD_VERMISSTE, "Uh-huh. Some of their prisoners ran into the Minental through the exit. The others could be somewhere further down the mine.");

				Mod_WM_KurganAlarm = 3;

				Wld_InsertNpc	(Mod_7400_OUT_Jorgen_OM, "OM_073");
				B_KillNpc	(Mod_7400_OUT_Jorgen_OM);

				Wld_InsertNpc	(Mod_7401_OUT_Draal_OM, "OM_073");
				B_KillNpc	(Mod_7401_OUT_Draal_OM);

				Wld_InsertNpc	(Mod_7402_OUT_Fed_OM, "OM_073");
				B_KillNpc	(Mod_7402_OUT_Fed_OM);

				B_GivePlayerXP	(100);

				CutsceneAn = FALSE;
			};

			Mod_WM_KurganAlarm_Counter += 1;
		};
	};
};
