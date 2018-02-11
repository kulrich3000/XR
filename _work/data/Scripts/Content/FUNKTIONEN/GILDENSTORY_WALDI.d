FUNC VOID GILDENSTORY_WALDI()
{
	// Jägerstory

	if (Feldraeubertrank_Used == TRUE)
	{
		Feldraeubertrank_Counter += 1;

		if (Feldraeubertrank_Counter == 60)
		{
			Feldraeubertrank_Used = FALSE;
		};
	};

	if (CurrentLevel == NEWWORLD_ZEN)
	{
		if (Mod_DragomirsLager < Wld_GetDay())
		&& (Kapitel > 1)
		&& (Jäger_Dabei == TRUE)
		&& (Mod_Drago == FALSE)
		{
			Wld_SendTrigger	("DRAGOMIRSLAGER");

			//Wld_InsertItem	(ItWr_DragomirsNotiz, "FP_ROAM_TAVERNE_TROLLAREA_02_01");

			B_StartOtherRoutine	(Mod_759_NONE_Dragomir_NW, "ATNANDOR");
			B_StartOtherRoutine	(Mod_749_MIL_Ruga_NW, "ATNANDOR");
			B_StartOtherRoutine	(Mod_7413_JG_Wild_NW, "ATNANDOR");

			CreateInvItems	(Mod_7414_JG_Bret_NW, ItWr_DragomirsNotiz, 1);

			B_KillNpc	(Mod_7414_JG_Bret_NW);

			Mod_Drago = TRUE;
		};

		if (Mod_JG_RangarDrago == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Cyrco_SuchenderZettel))
		{
			Mod_JG_RangarDrago = 1;

			B_StartOtherRoutine	(Mod_747_MIL_Rangar_NW, "PASS");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_DragoHilfeII))
		&& (Mod_JG_DragoHilfe2 == 0)
		{
			Mod_7413_JG_Wild_NW.attribute[ATR_HITPOINTS] = 5;

			Mod_7413_JG_Wild_NW.aivar[AIV_Damage] = 5;

			Wld_InsertNpc	(Mod_7470_NOV_Novize_NW,	"WP_NANDOR_TENT_01");
			Wld_InsertNpc	(Mod_7471_NOV_Novize_NW,	"WP_NANDOR_TENT_01");
			Wld_InsertNpc	(Mod_7472_BDT_Bandit_NW,	"WP_NANDOR_TENT_01");
			Wld_InsertNpc	(Mod_7473_BDT_Bandit_NW,	"WP_NANDOR_TENT_01");
			Wld_InsertNpc	(Mod_7474_BDT_Bandit_NW,	"WP_NANDOR_TENT_01");

			Mod_JG_DragoHilfe2 = 1;
		};
	};

	if (CurrentLevel == MINENTAL_ZEN)
	{
		if (Mod_Drago == 5) {
			if (Npc_GetDistToWP(hero, "OW_WOODRUIN_WOLF_SPAWN") < 500)
			{
				Mod_Drago = 6;

				B_LogEntry	(TOPIC_MOD_JG_TORGANSINFOS, "Harcerze sa umarli, a wraz z nimi znajduje sie straznik. Powinienem to szybko zglosic Torganowi.");
			};
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Hecta_Hi))
		&& (Mod_AchilFliegt == 0)
		{
			var int Mod_AchilShouldFlee; Mod_AchilShouldFlee = FALSE;
			if (Hlp_IsValidNpc(Mod_1972_GRD_Hecta_MT)) {
				if ((Npc_IsDead(Mod_1972_GRD_Hecta_MT))
				|| (Mod_1973_GRD_Achil_MT.attribute[ATR_HITPOINTS] <= Mod_1973_GRD_Achil_MT.attribute[ATR_HITPOINTS_MAX]/2)) {
					Mod_AchilShouldFlee = TRUE;
				};
			} else {
				Mod_AchilShouldFlee = TRUE;
			};
			if (Mod_AchilShouldFlee) {
				Npc_ClearAIQueue	(Mod_1973_GRD_Achil_MT);

				B_StartOtherRoutine	(Mod_1973_GRD_Achil_MT, "FLUCHT");

				Mod_AchilFliegt = 1;
			};
		};

		// Dem Mörder auf der Spur

		if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_SonorZelar))
		&& (Mod_JG_MinenPart == 0)
		{
			Mod_JG_MinenPart = 1;

			B_StartOtherRoutine	(Mod_7433_JG_Zelar_MT, "MINE");
			B_StartOtherRoutine	(Mod_7432_JG_Sonor_MT, "MINE");

			Mod_7432_JG_Sonor_MT.aivar[AIV_PARTYMEMBER] = TRUE;
			Mod_7433_JG_Zelar_MT.aivar[AIV_PARTYMEMBER] = TRUE;
		};

		if (Mod_JG_MinenPart == 1)
		&& (Npc_GetDistToWP(hero, "WP_OM_HOEHLE_01") < 500)
		&& (Mod_JG_CyrcoAmulett == 1)
		{
			Mod_JG_MinenPart = 2;

			Wld_SendTrigger	("EVT_OMHOEHLE");

			AI_StandUP	(hero);
			Npc_ClearAIQueue	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_JG_MinenHoehle_15_00"); //Chlopaki, nosze tu amulet. Za jego pomoca moge zapewne zidentyfikowac jaskinie, nawet jesli jest ona ukryta lub niewidoczna. Badz blisko za mna.
		};

		if (Mod_JG_MinenPart == 2)
		&& (Npc_GetDistToWP(hero, "WP_OM_HOEHLE_09") < 300)
		{
			Mod_JG_MinenPart = 3;

			AI_StandUP	(hero);
			Npc_ClearAIQueue	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_JG_MinenHoehleTeleport_15_00"); //(do siebie) Hmm..... Wydaje sie, ze to nie dziala. Zapytaj Cyrco. Ludzie, jestesmy tutaj. Bede biegac przed Toba. Mozesz polowac na cos w drodze powrotnej.

			B_StartOtherRoutine	(Mod_7433_JG_Zelar_MT, "START");
			B_StartOtherRoutine	(Mod_7432_JG_Sonor_MT, "START");

			Mod_7432_JG_Sonor_MT.aivar[AIV_PARTYMEMBER] = FALSE;
			Mod_7433_JG_Zelar_MT.aivar[AIV_PARTYMEMBER] = FALSE;

			B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Nie bylo tak zle. Ale ta platforma jest z pewnoscia wazna. Zastanawiam sie, co mówi Cyrco.");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Orun_Cyrco))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Novize_JG_Pass_Hi))
		{
			if (Mod_7435_NOV_Novize_MT.attribute[ATR_HITPOINTS] < Mod_7435_NOV_Novize_MT.attribute[ATR_HITPOINTS_MAX]) {
				AI_StandUPQuick (Mod_7435_NOV_Novize_MT);
				Npc_ClearAIQueue	(Mod_7435_NOV_Novize_MT);

				Npc_SendSinglePerc(hero, Mod_7435_NOV_Novize_MT, PERC_ASSESSTALK);
			};
		};

		// Der Turm an der See

		if (Npc_KnowsInfo(hero, Info_Mod_Wulfgar_Turm))
		&& (Mod_SuchenderAtTurm == 0)
		{
			Mod_SuchenderAtTurm = 1;

			Wld_InsertItem	(ItKe_SuchenderJG, "FP_ITEM_KEY_SUCHENDER");
		};

		if (Mod_SuchenderAtTurm == 1)
		&& (Npc_HasItems(hero, ItKe_SuchenderJG) == 1)
		{
			Mod_SuchenderAtTurm = 2;

			AI_Teleport	(Mod_7434_DMT_Suchender_MT, "OW_FOGTOWER_TOP");
			B_StartOtherRoutine	(Mod_7434_DMT_Suchender_MT, "TURM");
		};

		// Hinweis, dass man nach Suchenden-Gespräch noch etwas finden muss

		if (Npc_KnowsInfo(hero, Info_Mod_Suchender_Hi))
		&& (Mod_SuchenderZettelHinweis == 0)
		{
			if (!Npc_IsInState(Mod_7434_DMT_Suchender_MT, ZS_Talk)) {
				B_Say_Overlay	(hero, NULL, "$LOOKFORSOMETHING");

				Mod_SuchenderZettelHinweis = 1;
			};
		};

		// Hero wieder aufstehen lassen, sobald Suchender weg ist

		if (Mod_HeroSuchenderLiegt == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Suchender_Turm)) {
			if (!Npc_IsInState(Mod_7434_DMT_Suchender_MT, ZS_Talk))
			{
				Mod_HeroSuchenderLiegt = 1;

				AI_PlayAni	(hero, "T_VICTIM_SLE_2_STAND");
			};
		};
	};

	if (CurrentLevel == RELENDEL_ZEN)
	{
		// Rune des Raritätenhändlers

		if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Hi))
		&& (!Npc_IsInState(Mod_7542_OUT_Raritaetenhaendler_REL, ZS_Talk))
		&& (Mod_JG_Finder == 0)
		{
			AI_Output(hero, NULL, "Info_Mod_Hero_Rune02_15_00"); //Oops! Wlasciwie ma w swoim asortymencie pól runy.

			B_LogEntry	(TOPIC_MOD_JG_PENNER, "Musze miec runa. Cokolwiek trzeba!");

			Mod_JG_Finder = 1;
		};
	};

	// Start der Quest "Entscheidung im Drachental"

	if (CurrentLevel == DRACHENTAL_ZEN)
	{
		if (Mod_JG_Drachental == 0)
		{
			AI_StandUp	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_Drachental_15_00"); //Oops! Nowy obszar. Lepiej bylbym ostrozny......

			Mod_JG_Drachental = 1;

			Log_CreateTopic	(TOPIC_MOD_JG_DRACHENTAL, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_JG_DRACHENTAL, LOG_RUNNING);
			B_SetTopicStatus	(TOPIC_MOD_JG_RUNENZAUBER, LOG_SUCCESS);
			B_LogEntry	(TOPIC_MOD_JG_DRACHENTAL, "Nowy obszar.... Zastanawiam sie, gdzie skonczylem?");
		};

		// Wenn Suchender tot, dann beim ersten Mal zu den Waldis teleportieren

		if (Npc_KnowsInfo(hero, Info_Mod_Drache_Drachendurst04))
		&& (CurrentLevel == DRACHENTAL_ZEN)
		&& (Mod_JG_SuchenderDT == 0)
		{
			if (Npc_IsDead(Mod_7543_DMT_Suchender_DT)) {
				Mod_JG_SuchenderDT = 1;

				AI_Teleport	(hero, "GOTOWALDIS");

				B_LogEntry	(TOPIC_MOD_JG_SUCHENDER, "Tam. Ta ciemnosc jest historia. Nikt nigdy wiecej nie bedzie znowu przeciwstawiac sie pokojowym ludziom. Kiedy jestem tutaj, powinienem zglosic sie do Cyrco. I moze nadal ma dla mnie wskazówki.");
				B_SetTopicStatus	(TOPIC_MOD_JG_SUCHENDER, LOG_SUCCESS);
			};
		};

		if (Mod_JG_Drachental == 1)
		&& (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Drachental))
		{
			AI_StandUp	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_Drachental_15_01"); //Oops! Teraz jest znowu zepsuty. Jak powrócic?

			Mod_JG_Drachental = 2;

			Npc_RemoveInvItems	(hero, ItRu_BrokenRune, 1);
		};

		// Monolog für Opferschale

		if (Npc_GetDistToWP(hero, "DT_042") < 500)
		&& (Mod_JG_Opferschale == 0)
		{
			Mod_JG_Opferschale = 1;

			AI_StandUp	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_Opferschale_15_00"); //Hmm. To moze byc miska ofiarnicza, której szukam. Co moglibysmy z tym zrobic?

			B_LogEntry	(TOPIC_MOD_JG_DRACHENTAL, "Teraz brakuje tylko Khorgora.....");
			B_SetTopicStatus	(TOPIC_MOD_JG_OPFERSCHALE, LOG_SUCCESS);
		};

		// Monolog für Khorgor

		if (Npc_HasItems(hero, ItAt_KhorgorKopf) == 1)
		&& (Mod_JG_Khorgor == 0)
		{
			if (Npc_IsDead(Mod_7554_OUT_Khorgor_DT)) {
				Mod_JG_Khorgor = 1;

				AI_StandUp	(hero);

				AI_Output(hero, NULL, "Info_Mod_Hero_Khorgor_15_00"); //Glowa szalenca! Cyrco bedzie zadowolony.

				B_LogEntry	(TOPIC_MOD_JG_DRACHENTAL, "Khorgor jest gotowy. Teraz musze tylko wydostac sie z tej doliny.");
			};
		};
		
		if (Mod_JG_RaetselWand == 1) {
			var int raetselSteinPtr; raetselSteinPtr = MEM_SearchVobByName ("RAETSELSTEIN");
			if (raetselSteinPtr) {
				var oCMob raetselSteinMob;
				MEM_AssignInst (raetselSteinMob, raetselSteinPtr);
				raetselSteinMob.name = IntToString(Mod_JG_Raetselstein_Wert);
			};
		};
		
		if (Mod_JG_Gitter < 2) {
			if (Npc_GetDistToWP(Wasserdrache_11054_DT, Wasserdrache_11054_DT.wp) > 1000) {
				AI_Teleport(Wasserdrache_11054_DT, Wasserdrache_11054_DT.wp);
			};
		};
	};
};
