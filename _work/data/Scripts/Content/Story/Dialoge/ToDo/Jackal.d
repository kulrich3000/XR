INSTANCE Info_Mod_Jackal_Hi (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Hi_Condition;
	information	= Info_Mod_Jackal_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jackal_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_Hi_07_00"); //Cóz, spójrz, kto jest tutaj. Zrobiles zly dzien, a potem ty tez.
};

INSTANCE Info_Mod_Jackal_WoProblem (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_WoProblem_Condition;
	information	= Info_Mod_Jackal_WoProblem_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaki jest problem?";
};

FUNC INT Info_Mod_Jackal_WoProblem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_WoProblem_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_WoProblem_15_00"); //Jaki jest problem?
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_01"); //Po prostu Ci sie nie podoba.
	AI_Output(hero, self, "Info_Mod_Jackal_WoProblem_15_02"); //Nie, mam na mysli, poza mna.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_03"); //Ach, to sie zasysa. Móglbym ugryzc tylek.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_04"); //Wczoraj wieczorem pilem chlopców na ognisku w zamku, a kiedy rozpakowali lodygi kapusty bagiennej, zaczalem zachwycac sie moimi boksami z zmiennymi tytoniem.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_05"); //Jest to naprawde jedna z najlepszych odmian i oczywiscie kazdy chcial zobaczyc pudelko.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_06"); //Pijany jak bylem, dostalem go i pokazalem i zanim go znalem, oddalem caly tyton, z wyjatkiem ostatniego okruchu.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_07"); //Oczywiscie dzis rano nikt inny nic o tym nie wiedzial i nie wiem, komu wszystko oddalem.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_08"); //Tyton jest teraz bezpiecznie rozprowadzany w calym zamku i na terenie calego obozu.

	Info_ClearChoices	(Info_Mod_Jackal_WoProblem);

	Info_AddChoice	(Info_Mod_Jackal_WoProblem, "Nie sadze, zebys kiedykolwiek widzial ten tyton.", Info_Mod_Jackal_WoProblem_B);
	Info_AddChoice	(Info_Mod_Jackal_WoProblem, "Moglem miec oczy otwarte.", Info_Mod_Jackal_WoProblem_A);
};

FUNC VOID Info_Mod_Jackal_WoProblem_B()
{
	AI_Output(hero, self, "Info_Mod_Jackal_WoProblem_B_15_00"); //Prawdopodobnie tyton nie bedzie juz nigdy wiecej widoczny.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_B_07_01"); //Dlatego wlasnie bylbym we wlasciwym nastroju, aby przeciagnac cie mieczem do drugiej dziury.

	Info_ClearChoices	(Info_Mod_Jackal_WoProblem);
};

FUNC VOID Info_Mod_Jackal_WoProblem_A()
{
	AI_Output(hero, self, "Info_Mod_Jackal_WoProblem_A_15_00"); //Moglem miec oczy otwarte.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_A_07_01"); //Nie uczyni to nic dobrego. Jedynym sposobem na odnalezienie tytoniu jest nos. Ma ostry zapach gorzkiej wanilii z nuta szafranu.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_A_07_02"); //Jesli znajdziesz jakies resztki mojego tytoniu, przynies je natychmiast!

	Info_ClearChoices	(Info_Mod_Jackal_WoProblem);

	Log_CreateTopic	(TOPIC_MOD_JACKAL_TABAK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JACKAL_TABAK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JACKAL_TABAK, "Jackal oddal za wszelka cene caly zapas surowca tytoniowego. Prawdopodobnie jest on do tej pory rozrzucony po calym zamku. Rozpoznaje go po jego charakterystycznym zapachu wanilii i szafranu.");

	Wld_InsertItem	(ItMi_JackalTabak_01, "FP_ITEM_JACKALTABAK_01");
	Wld_InsertItem	(ItMi_JackalTabak_02, "FP_ITEM_JACKALTABAK_02");
	Wld_InsertItem	(ItMi_JackalTabak_03, "FP_ITEM_JACKALTABAK_03");
	Wld_InsertItem	(ItMi_JackalTabak_04, "FP_ITEM_JACKALTABAK_04");
	Wld_InsertItem	(ItMi_JackalTabak_05, "FP_ITEM_JACKALTABAK_05");
	Wld_InsertItem	(ItMi_JackalTabak_06, "FP_ITEM_JACKALTABAK_06");
	Wld_InsertItem	(ItMi_JackalTabak_07, "FP_ITEM_JACKALTABAK_07");
	Wld_InsertItem	(ItMi_JackalTabak_08, "FP_ITEM_JACKALTABAK_08");
	Wld_InsertItem	(ItMi_JackalTabak_09, "FP_ITEM_JACKALTABAK_09");
	Wld_InsertItem	(ItMi_JackalTabak_10, "FP_ITEM_JACKALTABAK_10");
	Wld_InsertItem	(ItMi_JackalTabak_11, "FP_ITEM_JACKALTABAK_11");
	Wld_InsertItem	(ItMi_JackalTabak_12, "FP_ITEM_JACKALTABAK_12");
	Wld_InsertItem	(ItMi_JackalTabak_13, "FP_ITEM_JACKALTABAK_13");
};

var int TabakReceived;

INSTANCE Info_Mod_Jackal_HabTabak (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_HabTabak_Condition;
	information	= Info_Mod_Jackal_HabTabak_Info;
	permanent	= 1;
	important	= 0;
	description	= "Mam tu cos dla Ciebie.....";
};

FUNC INT Info_Mod_Jackal_HabTabak_Condition()
{
	Spine_UpdateAchievementProgress(SPINE_ACHIEVEMENT_8, TabakReceived);
	if (Npc_HasItems(hero, ItMi_JackalTabak) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_HabTabak_Info()
{
	var int goldamount; goldamount = Npc_HasItems(hero, ItMi_JackalTabak);
	var int epamount; epamount = goldamount;

	AI_Output(hero, self, "Info_Mod_Jackal_HabTabak_15_00"); //Mam tu cos dla Ciebie.....

	B_GiveInvItems	(hero, self, ItMi_JackalTabak, goldamount);
	Npc_RemoveInvItems(self, ItMi_JackalTabak, Npc_HasItems(self, ItMi_JackalTabak));
	TabakReceived += goldamount;

	if (TabakReceived == 13)
	{
		AI_Output(self, hero, "Info_Mod_Jackal_HabTabak_07_01"); //Nie wierze! Skrzynka jest ponownie pelna! Przyniósl mi pan caly mój tyton.
		AI_Output(self, hero, "Info_Mod_Jackal_HabTabak_07_02"); //l-- Nie wiem, co powiedziec. Ale jestem za skokiem.

		if (Mod_Jackal_Tabak_1 == FALSE)
		&& (Mod_Jackal_Tabak_7 == FALSE)
		{
			goldamount += 6;

			Mod_Jackal_Tabak_1 = TRUE;
		}
		else if (Mod_Jackal_Tabak_1 == TRUE)
		&& (Mod_Jackal_Tabak_7 == FALSE)
		{
			goldamount += 5;

			Mod_Jackal_Tabak_1 = TRUE;
		}
		else if (Mod_Jackal_Tabak_1 == FALSE)
		&& (Mod_Jackal_Tabak_7 == TRUE)
		{
			goldamount += 1;

			Mod_Jackal_Tabak_1 = TRUE;
		};

		goldamount += 12;

		epamount += 10;

		CurrentNQ += 1;

		B_SetTopicStatus	(TOPIC_MOD_JACKAL_TABAK, LOG_SUCCESS);
	}
	else if (TabakReceived >= 7)
	&& (Mod_Jackal_Tabak_7 == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Jackal_HabTabak_07_03"); //Do tej pory powinna to byc wiecej niz polowa tytoniu. Dobra praca. Jest troche bonusu.

		if (Mod_Jackal_Tabak_1 == FALSE)
		{
			goldamount += 6;

			Mod_Jackal_Tabak_1 = TRUE;
		}
		else
		{
			goldamount += 5;
		};

		Mod_Jackal_Tabak_7 = TRUE;
	}
	else if (TabakReceived >= 1)
	&& (Mod_Jackal_Tabak_1 == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Jackal_HabTabak_07_04"); //W rzeczywistosci znalazles czesc mojego tytoniu. Przynajmniej teraz sie troche cofnalem.
		AI_Output(self, hero, "Info_Mod_Jackal_HabTabak_07_05"); //To cos warte.

		goldamount += 1;

		Mod_Jackal_Tabak_1 = TRUE;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Jackal_HabTabak_07_06"); //Dostales wiecej? Dzieki, czlowiek.
	};

	B_GiveInvItems	(self, hero, ItMi_Gold, goldamount*20);

	B_GivePlayerXP	(epamount*30);
};

INSTANCE Info_Mod_Jackal_Dieb (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Dieb_Condition;
	information	= Info_Mod_Jackal_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slyszalem....";
};

FUNC INT Info_Mod_Jackal_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Jackal_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_Dieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_Dieb_15_00"); //Slysze, ze kradna z luków baronów i jestes na liscie podejrzanych.
	AI_Output(self, hero, "Info_Mod_Jackal_Dieb_07_01"); //Cóz, slyszy sie duzo i nie zawsze jest to wlasciwe.
	AI_Output(hero, self, "Info_Mod_Jackal_Dieb_15_02"); //Mówisz mi, co wiesz, albo zyczysz sobie, zebys sie urodzil martwy.
	AI_Output(self, hero, "Info_Mod_Jackal_Dieb_07_03"); //A potem tutaj!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

INSTANCE Info_Mod_Jackal_Frage (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Frage_Condition;
	information	= Info_Mod_Jackal_Frage_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz pomysl na to, aby....";
};

FUNC INT Info_Mod_Jackal_Frage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Jackal_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_Frage_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_Frage_15_00"); //Czy masz pomysl, kto moze byc odpowiedzialny za kradziez arcybarów?
	AI_Output(self, hero, "Info_Mod_Jackal_Frage_07_01"); //Nie, ale gdybym wiedzial, kto to byl, nie powiedzialbym ci.
	AI_Output(hero, self, "Info_Mod_Jackal_Frage_15_02"); //Mówisz mi, co wiesz, albo zyczysz sobie, zebys sie urodzil martwy.
	AI_Output(self, hero, "Info_Mod_Jackal_Frage_07_03"); //A potem tutaj!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

INSTANCE Info_Mod_Jackal_Dealer (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Dealer_Condition;
	information	= Info_Mod_Jackal_Dealer_Info;
	permanent	= 0;
	important	= 0;
	description	= "lf";
};

FUNC INT Info_Mod_Jackal_Dealer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Jackal_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_Dealer_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_Dealer_15_00"); //Wenn ich "wybredny" Waren kaufen möchte, an wen sollte ich mich da wenden?
	AI_Output(self, hero, "Info_Mod_Jackal_Dealer_07_01"); //Gdybym byl panem, spróbowalbym Fiska.
	AI_Output(hero, self, "Info_Mod_Jackal_Dealer_15_02"); //Widze, moze moze on mi pomoze.

	Mod_PDV_Jackal_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Jackal pozornie cos wie, ale jedyna informacja, która otrzymalem, to ze powinienem spróbowac Fisk.");
};

INSTANCE Info_Mod_Jackal_Umgehauen (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Umgehauen_Condition;
	information	= Info_Mod_Jackal_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_Umgehauen_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Jackal_Dieb))
	|| (Npc_KnowsInfo(hero, Info_Mod_Jackal_Frage)))
	&& (Mod_PDV_Jackal_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Jackal_Umgehauen_07_00"); //Dobrze, dobrze, wygrasz. Ale ja jestem dla tego niewlasciwym czlowiekiem, lepiej idz na Fisk.

			Mod_PDV_Jackal_Infos	=	1;

			Mod_PDV_Genug_Infos += 1;

			B_LogEntry	(TOPIC_MOD_PDV, "Jackal pozornie cos wie, ale jedyna informacja, która otrzymalem, to ze powinienem spróbowac Fisk.");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Jackal_Umgehauen_07_01"); //Zagubie sie, zabije cie nastepnym razem!
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Jackal_Fluchthilfe (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Fluchthilfe_Condition;
	information	= Info_Mod_Jackal_Fluchthilfe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_Fluchthilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gardist1_Hi))
	&& (Npc_IsDead(Mod_1895_GRD_Gardist_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_Fluchthilfe_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_Fluchthilfe_07_00"); //Wez ten czar i wyjdz stad.

	B_GiveInvItems	(self, hero, ItSc_TeleportVorAL, 1);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Jackal_KillMission (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_KillMission_Condition;
	information	= Info_Mod_Jackal_KillMission_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slyszalem, ze mozesz mi pomóc w moim zadaniu.";
};

FUNC INT Info_Mod_Jackal_KillMission_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_KillMission))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_KillMission_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_KillMission_15_00"); //Slyszalem, ze mozesz mi pomóc w moim zadaniu.
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_01"); //Tak, moge. Powinnam byla go wyciagnac, ale Bartholo podejrzewa mnie.
	AI_Output(hero, self, "Info_Mod_Jackal_KillMission_15_02"); //Wiec jak mozesz mi pomóc?
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_03"); //Zebralem inteligencje na cele.
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_04"); //Fletcher zazwyczaj stoi przed pierscieniem wewnetrznym, ale zglasza sie do Bloodwynu o godzinie 22:00 w nocy.
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_05"); //Ian jest zwykle w zewnetrznym pierscieniu w poblizu dawnej chaty Diego, ale on idzie na arene walczy o poludnie i wraca tylko wieczorem, po czym idzie do strzezonej chaty i spi.
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_06"); //Kathran codziennie rano przenosi sie z obozu strazy królewskiej do starego obozu, gdzie zglasza cos nowego do Bloodwynu.
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_07"); //Pózniej jest do wieczora w domu strazników, gdzie pija sie w pubie, a nastepnie wraca do straznika królewskiego, na którym ich szpiegowal.
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_08"); //Nie mozna jednak opuscic obozu.

	B_LogEntry	(TOPIC_MOD_AL_KillMission, "Jackal dal mi informacje o celach: Fletcher idzie przez wewnetrzny pierscien o 10:00, wiec moglem go zlapac.");
	B_LogEntry	(TOPIC_MOD_AL_KillMission, "Ian idzie na stadion do rywalizacji w poludnie i wraca tylko wieczorem. Dobry moment, aby go wyciagnac.");
	B_LogEntry	(TOPIC_MOD_AL_KillMission, "Kathran przychodzi rano do starego obozu i opuszcza go ponownie wieczorem. Wieczorem mysle, ze to dobra okazja, by go zabic.");

	Wld_SendTrigger	("EVT_OC_MAINGATE01_01");
};

INSTANCE Info_Mod_Jackal_AllDead (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_AllDead_Condition;
	information	= Info_Mod_Jackal_AllDead_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wszystkie trzy z nich nie zyja.";
};

FUNC INT Info_Mod_Jackal_AllDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_KillMission))
	&& (Npc_IsDead(Mod_1113_GRD_Fletcher_MT))
	&& (Npc_IsDead(Mod_1902_STT_Ian_MT))
	&& (Npc_IsDead(Mod_1025_KGD_Cathran_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_AllDead_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_AllDead_15_00"); //Wszystkie trzy z nich nie zyja.
	AI_Output(self, hero, "Info_Mod_Jackal_AllDead_07_01"); //W prawo, jechac teleportowane z powrotem do fortu górskiego w Alissandro.

	AI_Teleport	(Mod_1876_EBR_Bloodwyn_MT, "WP_LAUSCH_BLOODWYN");
	B_StartOtherRoutine	(Mod_1876_EBR_Bloodwyn_MT, "BELAUSCHEN");
	AI_Teleport	(Mod_1876_EBR_Bloodwyn_MT, "WP_LAUSCH_BLOODWYN");
};

INSTANCE Info_Mod_Jackal_AngriffBloodwyn (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_AngriffBloodwyn_Condition;
	information	= Info_Mod_Jackal_AngriffBloodwyn_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_AngriffBloodwyn_Condition()
{
	if (Mod_AL_BloodwynBartholoGefangen == 2)
	&& (Npc_GetDistToWP(self, "CASTLE_MOVEMENT_STRAIGHT") < 10000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_AngriffBloodwyn_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_AngriffBloodwyn_07_00"); //Atakuj!

	B_StartOtherRoutine	(Mod_1145_GRD_Gardist_MT, "FLUCHT");

	AI_StopProcessInfos	(self);
	
	Mod_1876_EBR_Bloodwyn_MT.flags = 0;

	B_Attack	(self, Mod_1876_EBR_Bloodwyn_MT, AR_Kill, 0);
};

INSTANCE Info_Mod_Jackal_BloodwynDead (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_BloodwynDead_Condition;
	information	= Info_Mod_Jackal_BloodwynDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_BloodwynDead_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Jackal_AngriffBloodwyn))
	|| (Mod_AL_BloodwynBartholoGefangen == 2))
	&& (Npc_IsDead(Mod_1876_EBR_Bloodwyn_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_BloodwynDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_BloodwynDead_07_00"); //Teraz musimy ostrzec Alissandro.
	
	B_LogEntry	(TOPIC_MOD_AL_KillMission, "Jackal pomógl mi zabic krew poza obozem. Musimy jednak ostrzec Alissandro.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jackal_AtZuflucht (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_AtZuflucht_Condition;
	information	= Info_Mod_Jackal_AtZuflucht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_AtZuflucht_Condition()
{
	if (Mod_AL_EnteredGobboCaveFirstTime == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_AtZuflucht_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_AtZuflucht_07_00"); //Damn, szczesliwy znalazlem cie w czasie.
	AI_Output(hero, self, "Info_Mod_Jackal_AtZuflucht_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Jackal_AtZuflucht_07_02"); //W miare mozliwosci chronilem Alissandro, ale weszlismy w walke z straznikami.
	AI_Output(self, hero, "Info_Mod_Jackal_AtZuflucht_07_03"); //Bylismy w stanie je pokonac, ale Alissandro wyslal mnie pózniej. Powiedzial on, ze kiedy bedziemy razem, bedzie to zbyt wiele uwagi.
	AI_Output(hero, self, "Info_Mod_Jackal_AtZuflucht_15_04"); //I jaki jest problem?
	AI_Output(self, hero, "Info_Mod_Jackal_AtZuflucht_07_05"); //Alissandro powiedzial, ze jesli nie zglosi sie natychmiast, kiedy dotrze do sanktuarium, powinienem go szukac.
	AI_Output(hero, self, "Info_Mod_Jackal_AtZuflucht_15_06"); //Cóz, gdzie powinnismy wygladac?
	AI_Output(self, hero, "Info_Mod_Jackal_AtZuflucht_07_07"); //Zgubilismy sie w zatopionej wiezy.
	AI_Output(hero, self, "Info_Mod_Jackal_AtZuflucht_15_08"); //Cóz, rozejrzyjmy sie dookola.
	AI_Output(self, hero, "DEFAULT"); //

	Log_CreateTopic	(TOPIC_MOD_AL_WhereAlissandro, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_WhereAlissandro, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_WhereAlissandro, "Jackal powiedzial, ze Alissandro moze byc zagrozone. Powinienem isc do zatopionej wiezy Xardasa, gdzie stracil Alissandro.");

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATTURM");
	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "GEFANGEN");	
	B_StartOtherRoutine	(Mod_1141_GRD_Gardist_MT, "ATTURM");
};

INSTANCE Info_Mod_Jackal_AtTurm (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_AtTurm_Condition;
	information	= Info_Mod_Jackal_AtTurm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_AtTurm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gardist2_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_AtTurm_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_AtTurm_07_00"); //Zlas Alissandro?
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jackal_WeHaveToGoToOC (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_WeHaveToGoToOC_Condition;
	information	= Info_Mod_Jackal_WeHaveToGoToOC_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_WeHaveToGoToOC_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gardist2_Jackal))
	&& (Npc_IsDead(Mod_1141_GRD_Gardist_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_WeHaveToGoToOC_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_WeHaveToGoToOC_07_00"); //Powiedzial, ze zlapali Alissandro i próbowali go rozstrzelac, ale nie moga uciec. Musimy udac sie do starego obozu!

	B_LogEntry	(TOPIC_MOD_AL_WhereAlissandro, "Na wieze zaatakowal nas straznik. Powiedzial, ze Alissandro zostal zlapany i ma zostac stracony.");
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOOLDCAMP");
};

INSTANCE Info_Mod_Jackal_AtOC (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_AtOC_Condition;
	information	= Info_Mod_Jackal_AtOC_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_AtOC_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_WeHaveToGoToOC))
	&& (Npc_GetDistToWP(self, "OC_ROUND_1") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_AtOC_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_AtOC_07_00"); //Zrób to przewijanie i otwórz brame.

	B_GiveInvItems	(self, hero, ItSc_TrfRabbit, 1);
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOOLDCAMP");

	B_LogEntry	(TOPIC_MOD_AL_WhereAlissandro, "Mam przeplynac przez brame z zakleciem transformacyjnym do królika i otworzyc brame, aby wpuscic Jackala.");
};

INSTANCE Info_Mod_Jackal_ComeIn (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_ComeIn_Condition;
	information	= Info_Mod_Jackal_ComeIn_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wejdz!";
};

FUNC INT Info_Mod_Jackal_ComeIn_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_AtOC))
	&& (Npc_GetDistToWP(self, "OC_ROUND_1") < 2000)
	&& (Mod_ALTor_01 == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_ComeIn_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_ComeIn_15_00"); //Wejdz!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INOLDCAMP");
};

INSTANCE Info_Mod_Jackal_InOC (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_InOC_Condition;
	information	= Info_Mod_Jackal_InOC_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_InOC_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_ComeIn))
	&& (Npc_GetDistToWP(self, "OCR_MAINGATE_INSIDE") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_InOC_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_InOC_07_00"); //Odwróc uwage strazników, zwolnie Alissandro.

	B_LogEntry	(TOPIC_MOD_AL_WhereAlissandro, "Poszedlem z Jackalem do starego obozu. Chce uwolnic Alissandro, a ja odwracam uwage strazników.");
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BEFREIUNG");
};

INSTANCE Info_Mod_Jackal_AtPC (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_AtPC_Condition;
	information	= Info_Mod_Jackal_AtPC_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_AtPC_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_GotoZufluchten))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_01_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_02_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_03_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_04_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_05_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_06_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_07_Hi))
	&& (Npc_GetDistToWP(self, "PSI_TEMPLE_STAIRS_1") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_AtPC_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_AtPC_07_00"); //Alissandro chce, abys poszedl do swiatyni. Tam liderzy gildii konsultuja sie nawzajem.

	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "Ide do swiatyni do przywódców gildii, Alissandro juz czeka na mnie.");
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jackal_Pickpocket (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Pickpocket_Condition;
	information	= Info_Mod_Jackal_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Jackal_Pickpocket_Condition()
{
	C_Beklauen	(108, ItMi_Gold, 45);
};

FUNC VOID Info_Mod_Jackal_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);

	Info_AddChoice	(Info_Mod_Jackal_Pickpocket, DIALOG_BACK, Info_Mod_Jackal_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jackal_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jackal_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jackal_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);
};

FUNC VOID Info_Mod_Jackal_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);

		Info_AddChoice	(Info_Mod_Jackal_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jackal_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jackal_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jackal_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jackal_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jackal_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jackal_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jackal_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jackal_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jackal_EXIT (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_EXIT_Condition;
	information	= Info_Mod_Jackal_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jackal_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jackal_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
