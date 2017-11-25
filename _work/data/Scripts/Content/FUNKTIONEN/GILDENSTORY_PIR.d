var int Mod_AJDabei;

FUNC VOID GILDENSTORY_PIR ()
{
	if (CurrentLevel == ADDONWORLD_ZEN)
	{
		// Teleport zu Schatzinsel

		if (Mod_VorbereitungenFertig == 5)
		&& (!Npc_IsInState(Mod_775_PIR_Skip_AW, ZS_Talk))
		{
			Mod_VorbereitungenFertig = 6;

			AI_Teleport	(hero,	"AW_DIEINSELSTARTPOINT");
		};

		// Zwischensequenz mit Hero, Greg und Skip

		if (Mod_VorbereitungenFertig == 2)
		&& (!Npc_IsInState(Mod_764_PIR_Greg_AW, ZS_Talk))
		{
			Mod_VorbereitungenFertig = 3;

			Wld_SendTrigger	("CAMERASKIPGREG");

			CutsceneAn = TRUE;
		};

		if (Mod_VorbereitungenFertig == 3)
		{
			if (Mod_SkipGreg_Counter == 0)
			{
				AI_TurnToNpc	(Mod_764_PIR_Greg_AW, Mod_775_PIR_Skip_AW);

				AI_GotoWP	(hero, "WP_BLA_PIR_02");

				AI_TurnToNpc	(hero, Mod_764_PIR_Greg_AW);

				B_StartOtherRoutine	(Mod_775_PIR_Skip_AW, "PLAUDERN");
			};

			if (Mod_SkipGreg_Counter == 1)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_00"); //(roars loudly) Stop! Skip!
			};

			if (Mod_SkipGreg_Counter == 6)
			{
				AI_TurnToNpc	(Mod_764_PIR_Greg_AW, Mod_775_PIR_Skip_AW);
				AI_TurnToNpc	(Mod_775_PIR_Skip_AW, Mod_764_PIR_Greg_AW);

				AI_Output(Mod_775_PIR_Skip_AW, NULL, "Info_Mod_SkipGreg_08_01"); //Captain?
			};

			if (Mod_SkipGreg_Counter == 11)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_02"); //You were supposed to be looking for my compass. Did you find him?
			};

			if (Mod_SkipGreg_Counter == 16)
			{
				AI_Output(Mod_775_PIR_Skip_AW, NULL, "Info_Mod_SkipGreg_08_03"); //Sorry, Captain. I kind of forgot.
			};

			if (Mod_SkipGreg_Counter == 21)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_04"); //Forgotten? What if I forget him, too, and we're on the high seas.
			};

			if (Mod_SkipGreg_Counter == 26)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_05"); //I'll have you keelhauled!
			};

			if (Mod_SkipGreg_Counter == 31)
			{
				AI_Output(Mod_775_PIR_Skip_AW, NULL, "Info_Mod_SkipGreg_08_06"); //Mercy captain. I've got a lot of work to do in the warehouse...
			};

			if (Mod_SkipGreg_Counter == 36)
			{
				AI_TurnToNpc	(hero, Mod_775_PIR_Skip_AW);

				AI_Output(hero, NULL, "Info_Mod_SkipGreg_15_07"); //You the most? I don't see it that way...
			};

			if (Mod_SkipGreg_Counter == 41)
			{
				AI_TurnToNpc	(Mod_764_PIR_Greg_AW, hero);

				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_08"); //You do that. At least you can be relied on.
			};

			if (Mod_SkipGreg_Counter == 46)
			{
				AI_Output(hero, NULL, "Info_Mod_SkipGreg_15_09"); //Uh-huh. I'm glad you noticed. Where should I look?
			};

			if (Mod_SkipGreg_Counter == 51)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_10"); //Somewhere over on the other beach. Where you found the sextant. Probably in the cave.
			};

			if (Mod_SkipGreg_Counter == 56)
			{
				AI_Output(hero, NULL, "Info_Mod_SkipGreg_15_11"); //You like to lose things?
			};

			if (Mod_SkipGreg_Counter == 61)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_12"); //Chatter! I was over there because I was curious about what happened to the caves.
			};

			if (Mod_SkipGreg_Counter == 66)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_13"); //In a smaller one is a strange black figure.
			};

			if (Mod_SkipGreg_Counter == 71)
			{
				AI_Output(hero, NULL, "Info_Mod_SkipGreg_15_14"); //I know. It's a Beliar statue. I'm just wondering how she got there...
			};

			if (Mod_SkipGreg_Counter == 76)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_15"); //Yes, and in the big cave behind I was attacked by a group of skeletons.
			};

			if (Mod_SkipGreg_Counter == 81)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_16"); //All of them strong, lightning fast guys. All I had left was to escape. I must have lost the compass.
			};

			if (Mod_SkipGreg_Counter == 86)
			{
				AI_Output(hero, NULL, "Info_Mod_SkipGreg_15_17"); //I see. Are the skeletons still there?
			};

			if (Mod_SkipGreg_Counter == 91)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_18"); //I think so, yes. And probably some monitor lizards. The red kind. So dress warm, min boy.
			};

			if (Mod_SkipGreg_Counter == 96)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_19"); //One more thing. I think Samuel's got some more ice rink rolls lying around. They could help you.
			};

			if (Mod_SkipGreg_Counter == 101)
			{
				AI_Output(hero, NULL, "Info_Mod_SkipGreg_15_20"); //I'll have a look. See you later.
			};

			if (Mod_SkipGreg_Counter == 106)
			{
				Mod_VorbereitungenFertig = 4;

				CutsceneAn = FALSE;

				Wld_InsertItem	(ItMi_Kompass, "FP_ITEM_KOMPASS");

				B_StartOtherRoutine	(Mod_775_PIR_Skip_AW, "START");
				B_StartOtherRoutine	(Mod_764_PIR_Greg_AW, "START");

				Log_CreateTopic	(TOPIC_MOD_GREG_KOMPASS, LOG_MISSION);
				B_SetTopicStatus	(TOPIC_MOD_GREG_KOMPASS, LOG_RUNNING);
				B_LogEntry	(TOPIC_MOD_GREG_KOMPASS, "Greg still needs his compass, which is probably located in the big cave on the south beach.");
			};

			Mod_SkipGreg_Counter += 1;
		};

		if (Npc_GetDistToWp(hero, "ADW_PIRATECAMP_CAVE1_01") < 1000)
		&& (Npc_KnowsInfo(hero, Info_Mod_Henry_Entertrupp))
		&& (Mod_SamuelIstWeg == 0)
		{
			Mod_SamuelIstWeg = 1;

			B_LogEntry	(TOPIC_MOD_HENRY_ENTERTRUPP, "Hm... it seems Samuel has disappeared. I should take a look around his cave....");
		};
		
		// Aberglaube
		
		if (!Mod_AJDabei && Npc_KnowsInfo(hero, Info_Mod_Malcom_AW_Schatzsuche2) && !Npc_IsInState(Mod_935_PIR_Malcom_AW, ZS_Talk)) {
			Mod_AJDabei = TRUE;
			
			Npc_ClearAIQueue(Mod_928_PIR_AlligatorJack_AW);
			AI_StandUp(Mod_928_PIR_AlligatorJack_AW);
			B_StartOtherRoutine	(Mod_928_PIR_AlligatorJack_AW, "TOCANYON");
			B_StartOtherRoutine	(Mod_935_PIR_Malcom_AW, "TOCANYON");

			Wld_InsertItem	(ItMi_Talisman_Piraten, "FP_ITEM_CANYON_10");
		};

		// Piraten aus Lager entfernen, wenn bereit zu Schatzsuche

		if (Mod_Piraten_Aufbruch == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Greg_Kompass))
		&& (Kapitel >= 4)
		&& (Npc_GetDistToWP(hero, "STRAND") > 3000)
		&& ((!Npc_KnowsInfo(hero, Info_Mod_Myxir_Amulett))
		|| (Npc_KnowsInfo(hero, Info_Mod_Greg_AJAlive)))
		{
			B_StartOtherRoutine	(Mod_963_PIR_Malcom_NW,	"TOT");
			B_StartOtherRoutine	(Mod_928_PIR_AlligatorJack_AW,	"TOT");
			B_StartOtherRoutine	(Mod_929_PIR_Bill_AW,	"TOT");
			B_StartOtherRoutine	(Mod_930_PIR_Bones_AW,	"TOT");
			B_StartOtherRoutine	(Mod_931_PIR_Brandon_AW,	"TOT");
			B_StartOtherRoutine	(Mod_932_PIR_Francis_AW,	"TOT");
			B_StartOtherRoutine	(Mod_933_PIR_Garett_AW,	"TOT");
			B_StartOtherRoutine	(Mod_934_PIR_Henry_AW,	"TOT");
			B_StartOtherRoutine	(Mod_935_PIR_Malcom_AW,	"TOT");
			B_StartOtherRoutine	(Mod_936_PIR_Matt_AW,	"TOT");
			B_StartOtherRoutine	(Mod_938_PIR_Morgan_AW,	"TOT");
			B_StartOtherRoutine	(Mod_939_PIR_Owen_AW,	"TOT");
			B_StartOtherRoutine	(Mod_940_PIR_Samuel_AW,	"TOT");
			B_StartOtherRoutine	(Mod_941_PIR_Angus_AW,	"TOT");
			B_StartOtherRoutine	(Mod_942_PIR_Hank_AW,	"TOT");

			Mod_Piraten_Aufbruch = 1;
		};
	};

	if (CurrentLevel == DIEINSEL_ZEN)
	{
		// Teleport von Schatzinsel zur Schiffschlacht

		if (Mod_SchatzinselToSchiffschlacht == 0)
		&& (!Npc_IsInState(Mod_1540_PIR_Skip_DI, ZS_Talk))
		&& (Npc_KnowsInfo(hero, Info_Mod_Skip_DI_ZumSchiff_02))
		{
			Mod_SchatzinselToSchiffschlacht = 1;

			AI_Teleport	(hero,	"WP_DI_LEVELCHANGE");
		};

		// Brunhild darf nicht so weit weg sein vom Held

		if (Hlp_IsValidNpc(Mod_7642_OUT_Brunhild_DI))
		{
			if (Mod_7642_OUT_Brunhild_DI.aivar[AIV_Partymember] == TRUE)
			&& (Npc_GetDistToNpc(Mod_7642_OUT_Brunhild_DI, hero) > 2500)
			{
				AI_Teleport	(Mod_7642_OUT_Brunhild_DI,	"PC_HERO");
			};
		};
	};
};
