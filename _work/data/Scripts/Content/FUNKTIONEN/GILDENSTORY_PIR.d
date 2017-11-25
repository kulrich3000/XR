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
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_00"); //(Szczerze) Zatrzymaj! Pominac!
			};

			if (Mod_SkipGreg_Counter == 6)
			{
				AI_TurnToNpc	(Mod_764_PIR_Greg_AW, Mod_775_PIR_Skip_AW);
				AI_TurnToNpc	(Mod_775_PIR_Skip_AW, Mod_764_PIR_Greg_AW);

				AI_Output(Mod_775_PIR_Skip_AW, NULL, "Info_Mod_SkipGreg_08_01"); //Kapitan?
			};

			if (Mod_SkipGreg_Counter == 11)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_02"); //Miales szukac mojego kompasu. Znalazles go?
			};

			if (Mod_SkipGreg_Counter == 16)
			{
				AI_Output(Mod_775_PIR_Skip_AW, NULL, "Info_Mod_SkipGreg_08_03"); //Przepraszamy, kapitan. Zapomnialem o tym.
			};

			if (Mod_SkipGreg_Counter == 21)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_04"); //Zapomniales? A co jesli zapomne o nim, a my jestesmy na pelnym morzu.
			};

			if (Mod_SkipGreg_Counter == 26)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_05"); //Bede cie ociagal!
			};

			if (Mod_SkipGreg_Counter == 31)
			{
				AI_Output(Mod_775_PIR_Skip_AW, NULL, "Info_Mod_SkipGreg_08_06"); //Kapitan milosierdzia. Mam duzo pracy do zrobienia w magazynie....
			};

			if (Mod_SkipGreg_Counter == 36)
			{
				AI_TurnToNpc	(hero, Mod_775_PIR_Skip_AW);

				AI_Output(hero, NULL, "Info_Mod_SkipGreg_15_07"); //Najbardziej? Nie widze tego tak....
			};

			if (Mod_SkipGreg_Counter == 41)
			{
				AI_TurnToNpc	(Mod_764_PIR_Greg_AW, hero);

				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_08"); //Czyni pan to. Przynajmniej mozna polegac na Tobie.
			};

			if (Mod_SkipGreg_Counter == 46)
			{
				AI_Output(hero, NULL, "Info_Mod_SkipGreg_15_09"); //Uh-huh. Ciesze sie, ze zauwazyliscie. Gdzie powinienem patrzec?
			};

			if (Mod_SkipGreg_Counter == 51)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_10"); //Gdzies na drugiej plazy. Gdzie znalazles sekstanta. Prawdopodobnie w jaskini.
			};

			if (Mod_SkipGreg_Counter == 56)
			{
				AI_Output(hero, NULL, "Info_Mod_SkipGreg_15_11"); //Lubisz cos stracic?
			};

			if (Mod_SkipGreg_Counter == 61)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_12"); //Chec! Bylem tam, poniewaz bylem ciekawy, co sie stalo z jaskiniami.
			};

			if (Mod_SkipGreg_Counter == 66)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_13"); //W mniejszej jest to dziwna czarna figura.
			};

			if (Mod_SkipGreg_Counter == 71)
			{
				AI_Output(hero, NULL, "Info_Mod_SkipGreg_15_14"); //Wiem. Jest to figura Beliara. Zastanawiam sie tylko, jak sie tam dostala....
			};

			if (Mod_SkipGreg_Counter == 76)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_15"); //Tak, a w duzej jaskini za mna zaatakowala mnie grupa szkieletów.
			};

			if (Mod_SkipGreg_Counter == 81)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_16"); //Wszyscy oni mocni, blyskawicznie szybcy faceci. Pozostalo mi tylko uciec. Z pewnoscia musialem stracic kompas.
			};

			if (Mod_SkipGreg_Counter == 86)
			{
				AI_Output(hero, NULL, "Info_Mod_SkipGreg_15_17"); //Widze. Czy szkielety nadal istnieja?
			};

			if (Mod_SkipGreg_Counter == 91)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_18"); //Mysle, ze tak, tak. I prawdopodobnie niektóre jaszczurki monitor. Czerwony rodzaj. Wiec ubrac sie cieple, min chlopiec.
			};

			if (Mod_SkipGreg_Counter == 96)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_SkipGreg_01_19"); //Jeszcze jedna rzecz. Mysle, ze Samuel's dostal troche wiecej lodowisk. Oni moga Ci pomóc.
			};

			if (Mod_SkipGreg_Counter == 101)
			{
				AI_Output(hero, NULL, "Info_Mod_SkipGreg_15_20"); //Zobacze. Do zobaczenia pózniej.
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
				B_LogEntry	(TOPIC_MOD_GREG_KOMPASS, "Greg nadal potrzebuje swojego kompasu, który prawdopodobnie znajduje sie w duzej jaskini na poludniowej plazy.");
			};

			Mod_SkipGreg_Counter += 1;
		};

		if (Npc_GetDistToWp(hero, "ADW_PIRATECAMP_CAVE1_01") < 1000)
		&& (Npc_KnowsInfo(hero, Info_Mod_Henry_Entertrupp))
		&& (Mod_SamuelIstWeg == 0)
		{
			Mod_SamuelIstWeg = 1;

			B_LogEntry	(TOPIC_MOD_HENRY_ENTERTRUPP, "Hm.... wydaje sie, ze Samuel zniknal. Ja powinienem rozejrzec sie po jego jaskini.....");
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
