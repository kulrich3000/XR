var int Mod_Bloodwyn_GuidePlayertoBartholo;

FUNC VOID GILDENSTORY_AL()
{
	if (CurrentLevel == MINENTAL_ZEN)
	{
		// Altes Lager
		if (Npc_IsInState(Mod_1871_TPL_GorKaranto_MT, ZS_Attack))
		&& (Npc_IsInState(Mod_1872_NONE_Unbekannt_MT, ZS_Attack))
		&& (Npc_KnowsInfo(PC_Hero, Info_Mod_Scatty_ArenaFight))
		&& (Mod_GorKarantoSchwach == FALSE)
		{
			if (Mod_1872_NONE_Unbekannt_MT.attribute[ATR_HITPOINTS] <= (Mod_1872_NONE_Unbekannt_MT.attribute[ATR_HITPOINTS_MAX] / 2))
			{
				Mod_1871_TPL_GorKaranto_MT.attribute[ATR_HITPOINTS] = 1;

				Mod_1871_TPL_GorKaranto_MT.aivar[AIV_Damage] = 1;

				Mod_1872_NONE_Unbekannt_MT.flags = 2;

				Mod_GorKarantoSchwach = 1;

				B_StartOtherRoutine	(Mod_7384_OUT_Dragan_MT, "START");
			};
		};

		if (Mod_Unbekannter_Fight == 1)
		&& (Mod_GorKarantoSchwach == 3)
		{
			if (Mod_1872_NONE_Unbekannt_MT.attribute[ATR_HITPOINTS] <= (Mod_1872_NONE_Unbekannt_MT.attribute[ATR_HITPOINTS_MAX] / 2))
			{
				hero.attribute[ATR_HITPOINTS] = 2;

				hero.aivar[AIV_Damage] = 2;

				Mod_1872_NONE_Unbekannt_MT.flags = 2;

				B_LogEntry	(TOPIC_MOD_AL_ARENA, "He also defeated me, but for some inexplicable reasons I quickly fainted. I think I'll report this to Thorus first.");

				Mod_GorKarantoSchwach = 5;

				B_StartOtherRoutine	(self, "START");

				B_StartOtherRoutine	(Mod_7384_OUT_Dragan_MT, "START");

				Mod_Unbekannter_Fight = 0;
			};
			if (C_NpcIsDown(hero))
			{
				Mod_Unbekannter_Fight = 0;
			};
		};

		if (Mod_Unbekannter_Fight == 1)
		&& (Mod_GorKarantoSchwach == 8)
		{
			if (Mod_1872_NONE_Unbekannt_MT.attribute[ATR_HITPOINTS] == 1)
			{
				Mod_GorKarantoSchwach = 9;
			};
			if (C_NpcIsDown(hero))
			{
				Mod_Unbekannter_Fight = 0;
			};
		};

		if (Mod_GorKarantoSchwach == 9)
		&& (!C_NpcIsDown(Mod_1872_NONE_Unbekannt_MT))
		{
			B_StartOtherRoutine	(Mod_1872_NONE_Unbekannt_MT, "FLUCHT");
			B_StartOtherRoutine	(Mod_7384_OUT_Dragan_MT, "FLUCHT");

			B_LogEntry	(TOPIC_MOD_AL_ARENA, "I beat Paran in the arena. He's run away and won't cause any more trouble.");

			Mod_GorKarantoSchwach = 10;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Thorus_OrikDabei))
		&& (Mod_TemplerBeiThorus == 0)
		&& (Wld_GetDay() > Mod_OrikAbgeliefert)
		&& (Kapitel >= 2)
		{
			Mod_TemplerBeiThorus = 1;

			B_StartOtherRoutine	(Mod_966_GRD_Thorus_MT, "TEMPLER");
			B_StartOtherRoutine	(Mod_1873_TPL_GorNaKosh_MT, "TEMPLER");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Thorus_Templer))
		&& (Npc_GetDistToWP(hero, "OCC_CELLAR_BACK_LEFT_CELL") < 750)
		&& (Mod_TemplerBeiThorus == 1)
		{
			Wld_SendTrigger	("EVT_KERKERGATE_01");

			B_LogEntry	(TOPIC_MOD_AL_SCHMUGGLER, "Cutter's dead. I should tell Thorus about it.");

			Mod_TemplerBeiThorus = 2;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Thorus_CutterTot))
		&& (Npc_GetDistToWP(hero, "OCC_BARONS_DOOR") < 200)
		&& (Mod_TemplerBeiThorus == 2)
		{
			Wld_SendTrigger	("EVT_AL_PFEILNACHRICHT");

			Mod_TemplerBeiThorus = 3;
		};

		if (Npc_GetDistToWP(hero, "WP_MT_AL_HEROLERNTFLIEGEN") < 200)
		&& (Mod_TemplerBeiThorus == 4)
		{
			B_StartOtherRoutine	(Mod_1106_EBR_Bartholo_MT, "BURGFRIED");
			Npc_ClearAIQueue	(Mod_1106_EBR_Bartholo_MT);
			AI_Teleport	(Mod_1106_EBR_Bartholo_MT, "WP_MT_AL_BARTHOLO_ATTACK");

			Mod_TemplerBeiThorus = 5;
		};

		if (Mod_TemplerBeiThorus == 6)
		&& (!Npc_IsInState(Mod_1106_EBR_Bartholo_MT, ZS_Talk))
		{
			Mod_HeroFliegtAL += 1;

			if (Mod_HeroFliegtAL == 6)
			{
				Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

				Wld_InsertNpc	(Mod_1874_HMG_Makanius_MT, "OCC_MERCS_RIGHT_ROOM_BACK");
			};

			if (Mod_HeroFliegtAL == 7)
			{
				Mod_TemplerBeiThorus = 7;

				Npc_ClearAIQueue (hero);

				AI_Teleport	(PC_Hero, "OCC_MERCS_RIGHT_ROOM_BACK");

				hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];

				hero.aivar[AIV_Damage] = hero.attribute[ATR_HITPOINTS_MAX];
			};

			if (Mod_HeroFliegtAL > 7)
			&& (Npc_GetDistToWP(hero, "OCC_MERCS_RIGHT_ROOM_BACK") > 300)
			&& (!Npc_KnowsInfo(hero, Info_Mod_Makanius_Hi))
			{
				Npc_ClearAIQueue (hero);

				AI_Teleport	(hero, "OCC_MERCS_RIGHT_ROOM_BACK");
			};
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Plan))
		&& (Mod_LocktGardistZuDexter == 0)
		&& (Npc_IsInState(Mod_1882_GRD_Gardist_MT, ZS_Attack))
		&& (Npc_GetDistToNpc(Mod_1882_GRD_Gardist_MT, Mod_761_BDT_Dexter_MT) < 300)
		{
			Mod_LocktGardistZuDexter = 1;

			B_StartOtherRoutine	(Mod_1882_GRD_Gardist_MT, "DEXTER");
		};

		if (Mod_AufstellungAktiviert == 1)
		{
			if (Mod_GespraechCounter_BB == 0)
			{
				Wld_SendTrigger	("BARTHOLOBLOODWYNPLAUDERN");

				CutsceneAn = TRUE;

				AI_Output(Mod_1876_EBR_Bloodwyn_MT, NULL, "Info_Mod_Bloodwyn_Bartholo_Plan_04_00"); //I have a feeling that Alissandro could be dangerous for us.
			};

			if (Mod_GespraechCounter_BB == 5)
			{
				AI_Output(Mod_1876_EBR_Bloodwyn_MT, NULL, "Info_Mod_Bloodwyn_Bartholo_Plan_04_01"); //We don't know where he's hiding or who's working with him.
			};

			if (Mod_GespraechCounter_BB == 10)
			{
				AI_Output(Mod_1106_EBR_Bartholo_MT, NULL, "Info_Mod_Bloodwyn_Bartholo_Plan_12_02"); //There's nothing to worry about. We're well guarded and they don't know the guards' positions.
			};

			if (Mod_GespraechCounter_BB == 15)
			{
				AI_Output(Mod_1876_EBR_Bloodwyn_MT, NULL, "Info_Mod_Bloodwyn_Bartholo_Plan_04_03"); //They don't know my men either. if we don't take these positions soon, the plan won't help us.
			};

			if (Mod_GespraechCounter_BB == 22)
			{
				AI_Output(Mod_1106_EBR_Bartholo_MT, NULL, "Info_Mod_Bloodwyn_Bartholo_Plan_12_04"); //I can give you the plan, it's really time to prepare us.
			};

			if (Mod_GespraechCounter_BB == 27)
			{
				AI_Output(Mod_1876_EBR_Bloodwyn_MT, NULL, "Info_Mod_Bloodwyn_Bartholo_Plan_04_05"); //All right, I'll make it available to the guards.
			};

			if (Mod_GespraechCounter_BB == 31)
			{
				AI_Output(Mod_1106_EBR_Bartholo_MT, NULL, "Info_Mod_Bloodwyn_Bartholo_Plan_12_06"); //Where are you going to keep it?
			};

			if (Mod_GespraechCounter_BB == 36)
			{
				AI_Output(Mod_1876_EBR_Bloodwyn_MT, NULL, "Info_Mod_Bloodwyn_Bartholo_Plan_04_07"); //I put it in the house of the guards, that should be relatively certain.
			};

			if (Mod_GespraechCounter_BB == 41)
			{
				AI_Output(Mod_1106_EBR_Bartholo_MT, NULL, "Info_Mod_Bloodwyn_Bartholo_Plan_12_08"); //It probably will, but there are no guards there at night to guard him.
			};

			if (Mod_GespraechCounter_BB == 46)
			{
				AI_Output(Mod_1876_EBR_Bloodwyn_MT, NULL, "Info_Mod_Bloodwyn_Bartholo_Plan_04_09"); //(laughs) Who's gonna steal it? Whoever wants to break into the camp would have to be as small as a meat bug.

				B_LogEntry	(TOPIC_MOD_AL_KARTE, "The plan is in the House of Guards. At night it's unguarded, a good opportunity to steal the plan.");

				Wld_InsertItem	(AL_Aufstellung, "FP_ITEM_SPAWN_AUFSTELLUNG");

				Mod_AufstellungAktiviert = 2;

				CutsceneAn = FALSE;
			};

			Mod_GespraechCounter_BB += 1;
		};

		if (Mod_AufstellungAktiviert == 2)
		&& (Npc_HasItems(hero, AL_Aufstellung) == 1)
		{
			Wld_InsertNpc	(Mod_1895_GRD_Gardist_MT, "OCC_MERCS_HALLWAY_FRONT");

			Mod_AufstellungAktiviert = 3;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_WarnungLagerEntdeckt))
		&& (Npc_GetDistToWP(hero, "GOBBO_MASTERCAVE") < 500)
		&& (Mod_AL_EnteredGobboCaveFirstTime == FALSE)
		{
			B_LogEntry	(TOPIC_MOD_AL_KillMission, "I did it, now I should wait.");
			B_SetTopicStatus	(TOPIC_MOD_AL_KillMission, LOG_SUCCESS);

			Wld_InsertItem	(ItWr_AL_Zufluchtsnotiz, "FP_ITEM_ZUFLUCHT_NACHRICHT");

			B_GivePlayerXP	(1000);

			Mod_AL_EnteredGobboCaveFirstTime = TRUE;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Jackal_InOC))
		&& (Npc_GetDistToWP(Mod_1107_GRD_Jackal_MT, "WP_MT_JACKAL_BEFREIUNG") < 500)
		&& (Mod_AL_AlissandroBefreit == FALSE)
		{
			B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "ABHAUEN");
			B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "FLUCHT");

			B_LogEntry	(TOPIC_MOD_AL_WhereAlissandro, "Jackal was able to free Alissandro. We should go to sanctuary now.");

			Mod_AL_AlissandroBefreit = TRUE;
		};
		
		if (Npc_KnowsInfo(hero, Info_Mod_Bloodwyn_EBR_Belauscht))
		&& (Mod_Bloodwyn_GuidePlayertoBartholo == FALSE) {
			if (!Npc_IsInState(Mod_1876_EBR_Bloodwyn_MT, ZS_Talk)) {
				Mod_Bloodwyn_GuidePlayertoBartholo = TRUE;
				
				AI_GotoWP(hero, "OCC_BARONS_GREATHALL_CENTER_FRONT");
			};
		};

		if (AustauschDialog_Demon == 1)
		{
			if (DemonKnight_Talk == 0)
			{
				AI_GotoWP	(hero, "OW_PATH_1_15");
			};

			if (DemonKnight_Talk == 2)
			{
				AI_TurnToNpc	(DemonKnight_01, hero);

				AI_Output(DemonKnight_01, NULL, "Info_Mod_DemonKnight_01_06_00"); //Stop! The boss said if anyone wants to get through here, we should....
			};

			if (DemonKnight_Talk == 9)
			{
				AI_TurnToNpc	(DemonKnight_01, DemonKnight_02);

				AI_Output(DemonKnight_01, NULL, "Info_Mod_DemonKnight_01_06_01"); //... um, what do we do?
			};

			if (DemonKnight_Talk == 12)
			{
				AI_TurnToNpc	(DemonKnight_02, DemonKnight_01);

				AI_Output(DemonKnight_02, NULL, "Info_Mod_DemonKnight_01_08_02"); //Um... I think we should let him through, don't you?
			};

			if (DemonKnight_Talk == 15)
			{
				AI_TurnToNpc	(DemonKnight_01, DemonKnight_02);

				AI_Output(DemonKnight_01, NULL, "Info_Mod_DemonKnight_01_06_03"); //No, that's not it, I don't think...
			};

			if (DemonKnight_Talk == 20)
			{
				AI_TurnToNpc	(DemonKnight_02, DemonKnight_01);

				AI_Output(DemonKnight_02, NULL, "Info_Mod_DemonKnight_01_08_04"); //Damn... I should have known we shouldn't take this stuff when we're on guard duty....
			};

			if (DemonKnight_Talk == 25)
			{
				AI_TurnToNpc	(DemonKnight_01, DemonKnight_02);

				AI_Output(DemonKnight_01, NULL, "Info_Mod_DemonKnight_01_06_05"); //But it's really good... I've seen a girl named Lucy before... In the sky, with diamonds...
			};

			if (DemonKnight_Talk == 35)
			{
				AI_TurnToNpc	(hero, DemonKnight_01);

				AI_Output(hero, NULL, "Info_Mod_DemonKnight_01_15_06"); //Am I allowed through or not?
			};

			if (DemonKnight_Talk == 40)
			{
				AI_TurnToNpc	(DemonKnight_01, hero);

				AI_Output(DemonKnight_01, NULL, "Info_Mod_DemonKnight_01_06_07"); //I don't know, I'm gonna go see the boss and ask him....
			};

			if (DemonKnight_Talk == 44)
			{
				B_StartOtherRoutine	(DemonKnight_01, "ALTESLAGER");

				AI_TurnToNpc	(DemonKnight_02, hero);

				AI_Output(DemonKnight_02, NULL, "Info_Mod_DemonKnight_01_08_08"); //I'm not letting you through here in that time, okay?
			};

			if (DemonKnight_Talk == 46)
			{
				AI_TurnToNpc	(hero, DemonKnight_02);

				AI_Output(hero, NULL, "Info_Mod_DemonKnight_01_15_09"); //No... you'll be lying in the dirt!
			};

			if (DemonKnight_Talk == 51)
			{
				B_Attack	(DemonKnight_02, hero, AR_GuildEnemy, 0);
			};

			DemonKnight_Talk += 1;
		};

		if (Mod_AL_Alissandro_WaitForOric < Wld_GetDay())
		&& (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Hagen))
		&& (Mod_AL_Oric == 0)
		{
			B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "ORICDA");

			Wld_InsertNpc	(Mod_7039_PAL_Oric_MT, "OW_CAVALORN_01");
			Wld_InsertNpc	(Mod_7040_RIT_Ritter_MT, "OW_CAVALORN_01");
			Wld_InsertNpc	(Mod_7041_RIT_Ritter_MT, "OW_CAVALORN_01");
			Wld_InsertNpc	(Mod_7042_RIT_Ritter_MT, "OW_CAVALORN_01");
			Wld_InsertNpc	(Mod_7043_RIT_Ritter_MT, "OW_CAVALORN_01");
			Wld_InsertNpc	(Mod_7044_RIT_Ritter_MT, "OW_CAVALORN_01");
			Wld_InsertNpc	(Mod_7045_RIT_Ritter_MT, "OW_CAVALORN_01");

			Mod_AL_Oric = 1;
		};

		if (Mod_GomezAngriff == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Gomez_AtAL2_B))
		&& (Npc_GetDistToWP(hero, "OC_ROUND_20") < 1000)
		{
			Mod_GomezAngriff = 1;

			B_Attack	(Mod_1874_HMG_Makanius_MT, Mod_517_DMR_Gomez_MT, AR_None, 0);
			B_Attack	(Mod_7039_PAL_Oric_MT, Mod_517_DMR_Gomez_MT, AR_None, 0);
			B_Attack	(Mod_1870_EBR_Alissandro_MT, Mod_517_DMR_Gomez_MT, AR_None, 0);
		};

		if (Mod_GomezAngriff == 1)
		&& (C_NpcIsDown(Mod_517_DMR_Gomez_MT))
		{
			Mod_GomezAngriff = 2;

			B_StartOtherRoutine	(Mod_680_DMB_Xardas_MT, "GOMEZ");
			AI_Teleport	(Mod_680_DMB_Xardas_MT, "OC_ROUND_20");

			B_StartOtherRoutine	(Mod_520_DMR_Raven_MT, "ATAL");
			AI_Teleport	(Mod_520_DMR_Raven_MT, "OC_ROUND_20");
		};

		// Nicht mehr questrelevante NPC's wieder verwundbar machen

		if (Npc_KnowsInfo(hero, Info_Mod_Scatty_WannaFightUB_AK_2))
		&& (!Npc_IsDead(Mod_962_STT_Scatty_MT))
		{
			Mod_962_STT_Scatty_MT.flags = 0;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Arto_BeiThorus))
		&& (!Npc_IsDead(Mod_1105_EBR_Arto_MT))
		{
			Mod_1105_EBR_Arto_MT.flags = 0;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Ende))
		&& (!Npc_IsDead(Mod_1870_EBR_Alissandro_MT))
		{
			Mod_1870_EBR_Alissandro_MT.flags = 0;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Bartholo_Ende))
		&& (!Npc_IsDead(Mod_1106_EBR_Bartholo_MT))
		{
			Mod_1106_EBR_Bartholo_MT.flags = 0;
		};

		// Cutscene Gespräch Bartholo und Bloodwyn, wenn Held festgenommen wurde

		if (Npc_KnowsInfo(hero, Info_Mod_Bartholo_KillBuddler))
		&& (!Npc_IsInState(Mod_1106_EBR_Bartholo_MT, ZS_Talk))
		&& (Mod_AL_BloodwynBartholoGefangen == 0)
		{
			Mod_AL_BloodwynBartholoGefangen = 1;

			Wld_SendTrigger	("EVT_BARTHOLOBLODDWYNGEFANGEN_CAM");

			CutsceneAn = TRUE;

			B_StartOtherRoutine	(Mod_1876_EBR_Bloodwyn_MT, "SMALLTALK");
		};

		if (Mod_AL_BloodwynBartholoGefangen == 1)
		{
			if (Mod_AL_BloodwynBartholoGefangen_Counter == 0)
			{
				AI_TurnToNpc	(Mod_1106_EBR_Bartholo_MT, Mod_1876_EBR_Bloodwyn_MT);
				AI_TurnToNpc	(Mod_1876_EBR_Bloodwyn_MT, Mod_1106_EBR_Bartholo_MT);
			};

			if (Mod_AL_BloodwynBartholoGefangen_Counter == 1)
			{
				AI_Output(Mod_1876_EBR_Bloodwyn_MT, NULL, "Info_Mod_Bloodwyn_EBR_BerichtBeiBartholo_04_00"); //We found the guys responsible for the death of Fletcher, Ian and Cathran.
			};

			if (Mod_AL_BloodwynBartholoGefangen_Counter == 6)
			{
				AI_Output(Mod_1106_EBR_Bartholo_MT, NULL, "Info_Mod_Bartholo_WoQuartier_12_00"); //Well, then these rats have been trapped. I could kill you like the Buddler, I could also throw you to the snapper for food, like the cooks.
			};

			if (Mod_AL_BloodwynBartholoGefangen_Counter == 11)
			{
				AI_Output(Mod_1106_EBR_Bartholo_MT, NULL, "Info_Mod_Bartholo_WoQuartier_12_01"); //But since I've had such a high-ranking visitor, I want to ask you a few questions. Where do the old man and his followers have their quarters?
			};

			if (Mod_AL_BloodwynBartholoGefangen_Counter == 16)
			{
				AI_Output(Mod_1876_EBR_Bloodwyn_MT, NULL, "Info_Mod_Bloodwyn_EBR_WeißVersteck_04_00"); //You're in the old mountain fort, I heard you talking to her.
			};

			if (Mod_AL_BloodwynBartholoGefangen_Counter == 21)
			{
				AI_Output(Mod_1106_EBR_Bartholo_MT, NULL, "Info_Mod_Bartholo_BloodwynGut_12_00"); //Good Bloodwyn, take a guard and our two friends here and go to the mountain fort, I'll send reinforcements later.
			};

			if (Mod_AL_BloodwynBartholoGefangen_Counter == 26)
			{
				AI_Output(Mod_1106_EBR_Bartholo_MT, NULL, "Info_Mod_Bartholo_BloodwynGut_12_01"); //I'm sure the two of them will enjoy seeing their cronies destroyed.
			};

			if (Mod_AL_BloodwynBartholoGefangen_Counter == 31)
			{
				AI_Output(Mod_1876_EBR_Bloodwyn_MT, NULL, "Info_Mod_Bloodwyn_EBR_GotoBergkastell_04_00"); //All right, come with me! (laughs meanly)
			};

			if (Mod_AL_BloodwynBartholoGefangen_Counter == 36)
			{
				B_LogEntry	(TOPIC_MOD_AL_KillMission, "Bartholo sent me to the fort with Jackal and a guardsman, he will send reinforcements.");
	
				B_StartOtherRoutine	(Mod_1106_EBR_Bartholo_MT, "BOSS");
				B_StartOtherRoutine	(Mod_1876_EBR_Bloodwyn_MT, "GOTOBERGKASTELL");
				B_StartOtherRoutine	(Mod_1145_GRD_Gardist_MT, "GOTOBERGKASTELL");
				B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "FOLLOWTOBERGKASTELL");

				Mod_AL_BloodwynBartholoGefangen = 2;

				CutsceneAn = FALSE;
			};

			Mod_AL_BloodwynBartholoGefangen_Counter += 1;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Gomez_Angebot))
		&& (hero.attribute[ATR_HITPOINTS] <= 3)
		{
			B_StartOtherRoutine	(Mod_680_DMB_Xardas_MT, "ANGEBOT");

			B_StartOtherRoutine	(Mod_517_DMR_Gomez_MT, "START");

			AI_StartState	(Mod_517_DMR_Gomez_MT, ZS_MagicFreeze, 0, "");
		};
	};

	if (CurrentLevel == NEWWORLD_ZEN)
	{
		// Cornelius erst nach Gespräch killen

		if (Npc_KnowsInfo(hero, Info_Mod_Cornelius_AtMarkt))
		&& (!Npc_IsInState(Mod_571_NONE_Cornelius_NW, ZS_TALK))
		&& (Mod_AL_CorneliusTot == 0)
		{
			Mod_AL_CorneliusTot = 1;

			Mod_571_NONE_Cornelius_NW.attribute[ATR_HITPOINTS] = 0;
		};
	};

	if (CurrentLevel == OLDMINE_ZEN)
	{
		if (Mod_AL_Oric == 2)
		&& (Npc_IsDead(Mod_1031_DMR_Kurgan_OM))	
		{
			Mod_AL_Oric = 3;

			B_LogEntry	(TOPIC_MOD_AL_ERSTERSCHRITT, "Kurgan's dead. Now I should tell Oric about it.");
		};

		if (Mod_AL_Oric == 5)
		&& (Npc_IsDead(Mod_1903_SMK_SchwarzerKrieger_OM))
		&& (Npc_IsDead(Mod_1904_SMK_SchwarzerKrieger_OM))
		&& (Npc_IsDead(Mod_1905_SMK_SchwarzerKrieger_OM))
		&& (Npc_IsDead(Mod_1906_SMK_SchwarzerKrieger_OM))
		&& (Npc_IsDead(Mod_1907_SMK_SchwarzerKrieger_OM))
		&& (Npc_IsDead(Mod_1908_SMK_SchwarzerKrieger_OM))
		&& (Npc_IsDead(Mod_1909_SMK_SchwarzerKrieger_OM))
		&& (Npc_IsDead(Mod_1910_SMK_SchwarzerKrieger_OM))
		&& (Npc_IsDead(Mod_1911_SMK_SchwarzerKrieger_OM))
		&& (Npc_IsDead(Mod_1912_SMK_SchwarzerKrieger_OM))
		&& (Npc_IsDead(Mod_1913_SMK_SchwarzerKrieger_OM))
		&& (Npc_IsDead(Mod_1914_SMK_SchwarzerKrieger_OM))
		{
			Mod_AL_Oric = 6;

			B_LogEntry	(TOPIC_MOD_AL_ERSTERSCHRITT, "The mine is ours!");
		};
	};

	if (Npc_HasItems(hero, ItMi_DemonArmor) == 1)
	{
		Npc_RemoveInvItems	(hero, ItMi_DemonArmor, 1);
		CreateInvItems	(hero, ItAr_Raven_Addon, 1);
	};
};	
