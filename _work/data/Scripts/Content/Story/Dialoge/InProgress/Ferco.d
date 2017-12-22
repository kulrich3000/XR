INSTANCE Info_Mod_Ferco_Hi (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Hi_Condition;
	information	= Info_Mod_Ferco_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ferco_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_Hi_03_00"); //Hej! Co Pan tutaj robi?
};

INSTANCE Info_Mod_Ferco_WerBistDu (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_WerBistDu_Condition;
	information	= Info_Mod_Ferco_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Ferco_WerBistDu_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Ferco_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Ferco_Einnehmen)))
	|| (Npc_KnowsInfo(hero, Info_Mod_Ferco_Loser))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_WerBistDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_WerBistDu_15_00"); //Kim jestes?
	AI_Output(self, hero, "Info_Mod_Ferco_WerBistDu_03_01"); //Nazywam sie Ferco. Naleze do grona strazników, jak widac.
};

INSTANCE Info_Mod_Ferco_Guarding (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Guarding_Condition;
	information	= Info_Mod_Ferco_Guarding_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co pilnujesz?";
};

FUNC INT Info_Mod_Ferco_Guarding_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Guarding_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Guarding_15_00"); //Co pilnujesz?
	AI_Output(self, hero, "Info_Mod_Ferco_Guarding_03_01"); //To jest obóz magów transformacji. Nie zblizylbym sie do nich za bardzo.

	AI_PlayAni(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Ferco_Guarding_03_02"); //Mysle, ze jestes troche szalony.
	AI_Output(hero, self, "Info_Mod_Ferco_Guarding_15_03"); //To wydaje sie znane.... (do Ferco) Czy moge wstapic?
	AI_Output(self, hero, "Info_Mod_Ferco_Guarding_03_04"); //Nie, nie jestes na to gotowy. Nawet Cie nie znamy. Jesli jednak chcesz byc uzyteczny, zapraszamy do tego. (smiech) Zawsze mamy prace do wykonania.
};

INSTANCE Info_Mod_Ferco_Aufgabe (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Aufgabe_Condition;
	information	= Info_Mod_Ferco_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co nalezy zrobic?";
};

FUNC INT Info_Mod_Ferco_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Guarding))
	&& (Mod_Gilde > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Aufgabe_15_00"); //Co nalezy zrobic?
	AI_Output(self, hero, "Info_Mod_Ferco_Aufgabe_03_01"); //W dól w jaskini mieszkal kiedys biegacz cienia. Powinny tam byc jakies pozostalosci. Moglibyscie przywiezc je do mnie, bo magicy pracuja nad nowym zakleciem metamorfozy.
	AI_Output(hero, self, "Info_Mod_Ferco_Aufgabe_15_02"); //Wszystko jasne.
	AI_Output(self, hero, "Info_Mod_Ferco_Aufgabe_03_03"); //Wróc po otrzymaniu trofeów.

	Log_CreateTopic	(TOPIC_MOD_FERCO_SCHATTI, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FERCO_SCHATTI, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_VMG_AUFNAHME, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_VMG_AUFNAHME, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_VMG_AUFNAHME, TOPIC_MOD_FERCO_SCHATTI, "Aby stac sie magiem transformujacym, powinienem przede wszystkim dobrze bawic sie z bramkarzem Ferco.", "Ferco, straznik obozu Magów Metamorfoz, kazal mi znalezc resztki biegacza cieni w poblizu ruin dawnego klasztoru.");
};

INSTANCE Info_Mod_Ferco_Einnehmen (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Einnehmen_Condition;
	information	= Info_Mod_Ferco_Einnehmen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przyszedlem okupowac ruiny klasztoru.";
};

FUNC INT Info_Mod_Ferco_Einnehmen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Ferco_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Einnehmen_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Einnehmen_15_00"); //Przyszedlem okupowac ruiny klasztoru.
	AI_Output(self, hero, "Info_Mod_Ferco_Einnehmen_03_01"); //Ach, tak? Chodzcie tutaj, maluch!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Ferco_Umgehauen (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Umgehauen_Condition;
	information	= Info_Mod_Ferco_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Einnehmen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Ferco_Umgehauen_03_00"); //Jezu Chryste! Dostales na ciebie pieklo ponczu.

			Mod_FercoBesiegt	=	1;
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Ferco_Umgehauen_03_01"); //Hej, duze usta.
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Ferco_Loser (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Loser_Condition;
	information	= Info_Mod_Ferco_Loser_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co? Nadal duze usta?";
};

FUNC INT Info_Mod_Ferco_Loser_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Umgehauen))
	&& (Mod_FercoBesiegt == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Loser_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Loser_15_00"); //A co? Nadal duze usta?
	AI_Output(self, hero, "Info_Mod_Ferco_Loser_03_01"); //Co Pan tutaj robi? Jestes silny, ale niezbyt inteligentny, wydaje mi sie.
};

INSTANCE Info_Mod_Ferco_NotSpeaking (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_NotSpeaking_Condition;
	information	= Info_Mod_Ferco_NotSpeaking_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_NotSpeaking_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Aufgabe))
	&& (Npc_IsInState(self, ZS_Talk))
	&& ((Npc_HasItems(hero, ItAt_ShadowFur) == 0)
	|| (Npc_HasItems(hero, ItAt_ShadowHorn) == 0)
	|| (Npc_HasItems(hero, ItAt_Claw) < 2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Ferco_AllesDabei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_NotSpeaking_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_NotSpeaking_03_00"); //Wiesz, co musisz zrobic.
};

INSTANCE Info_Mod_Ferco_AllesDabei (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_AllesDabei_Condition;
	information	= Info_Mod_Ferco_AllesDabei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_AllesDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Aufgabe))
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Npc_HasItems(hero, ItAt_ShadowFur) >= 1)
	&& (Npc_HasItems(hero, ItAt_ShadowHorn) >= 1)
	&& (Npc_HasItems(hero, ItAt_Claw) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_AllesDabei_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_AllesDabei_03_00"); //Czego jeszcze chcesz?
};

INSTANCE Info_Mod_Ferco_HabAlles (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_HabAlles_Condition;
	information	= Info_Mod_Ferco_HabAlles_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem szczatki.";
};

FUNC INT Info_Mod_Ferco_HabAlles_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_AllesDabei))
	&& (Npc_HasItems(hero, ItAt_ShadowFur) >= 1)
	&& (Npc_HasItems(hero, ItAt_ShadowHorn) >= 1)
	&& (Npc_HasItems(hero, ItAt_Claw) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_HabAlles_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_HabAlles_15_00"); //Znalazlem szczatki.
	AI_Output(self, hero, "Info_Mod_Ferco_HabAlles_03_01"); //Cóz, pozwole sobie to zobaczyc.
	AI_Output(hero, self, "Info_Mod_Ferco_HabAlles_15_02"); //Tutaj. To powinno byc mozliwe.

	Npc_RemoveInvItems	(hero, ItAt_ShadowFur, 1);
	Npc_RemoveInvItems	(hero, ItAt_ShadowHorn, 1);
	Npc_RemoveInvItems	(hero, ItAt_Claw, 2);

	B_ShowGivenThings	("przedmioty");

	AI_Output(self, hero, "Info_Mod_Ferco_HabAlles_03_03"); //Dziekuje bardzo. Masz racje, czlowiek. Chcesz podjac inna prace?

	B_SetTopicStatus	(TOPIC_MOD_FERCO_SCHATTI, LOG_SUCCESS);

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "Wykonalem pierwsza prace. Zobacz, czy Ferco ma dla mnie cos wiecej.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Ferco_ZweiteQuest (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_ZweiteQuest_Condition;
	information	= Info_Mod_Ferco_ZweiteQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co nalezy zrobic?";
};

FUNC INT Info_Mod_Ferco_ZweiteQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_HabAlles))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_ZweiteQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_ZweiteQuest_15_00"); //Co nalezy zrobic?
	AI_Output(self, hero, "Info_Mod_Ferco_ZweiteQuest_03_01"); //Pewien idiota wjechal na ruiny klasztoru jako pluskwa miesna przez szczeline w murze.
	AI_Output(hero, self, "Info_Mod_Ferco_ZweiteQuest_15_02"); //Kto wymysla takie pomysly?
	AI_Output(self, hero, "Info_Mod_Ferco_ZweiteQuest_03_03"); //Nie wiem, panie posle. Jednak ostatnie tego typu powiedzenie zostalo zuzyte podczas akcji.
	AI_Output(self, hero, "Info_Mod_Ferco_ZweiteQuest_03_04"); //Byloby milo, gdybys mógl dostac nowa.
};

INSTANCE Info_Mod_Ferco_Crazy (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Crazy_Condition;
	information	= Info_Mod_Ferco_Crazy_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy kochasz mnie?";
};

FUNC INT Info_Mod_Ferco_Crazy_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_ZweiteQuest))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Crazy_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Crazy_15_00"); //Czy kochasz mnie? Gdzie mam ja dostac, kiedy juz jej nie ma?
	AI_Output(self, hero, "Info_Mod_Ferco_Crazy_03_01"); //Powiedzialem ostatnia znana. Czarownicy uwazaja, ze sa jeszcze niektórzy. Przypuszczalnie w chlodniejszych miejscach, bo dobrze tam zachowane.
	AI_Output(hero, self, "Info_Mod_Ferco_Crazy_15_02"); //Czemu wiec nie pójda do tych chlodniejszych klimatów i nie szukaja ich?
	AI_Output(self, hero, "Info_Mod_Ferco_Crazy_03_03"); //Pochodza z kraju zwanego Tugettso. Byc moze slyszales o tym. Temperatury sa tam wyzsze niz tutaj.
	AI_Output(self, hero, "Info_Mod_Ferco_Crazy_03_04"); //Nie sa odporne na takie temperatury i nie moga kontynuowac pracy.

	Info_ClearChoices	(Info_Mod_Ferco_Crazy);

	Info_AddChoice	(Info_Mod_Ferco_Crazy, "Jestem zbyt dobry, aby byc chlopakiem.", Info_Mod_Ferco_Crazy_C);
	Info_AddChoice	(Info_Mod_Ferco_Crazy, "Pochodze równiez z cieplych regionów.", Info_Mod_Ferco_Crazy_B);
	Info_AddChoice	(Info_Mod_Ferco_Crazy, "Dobrze, zrobie to. Masz inne przydatne wskazówki?", Info_Mod_Ferco_Crazy_A);
};

FUNC VOID Info_Mod_Ferco_Crazy_C()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Crazy_C_15_00"); //Jestem zbyt dobry, aby byc chlopakiem.

	VMG_Second = 1;

	Info_ClearChoices	(Info_Mod_Ferco_Crazy);
};

FUNC VOID Info_Mod_Ferco_Crazy_B()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Crazy_B_15_00"); //Pochodze równiez z cieplych regionów.
	AI_Output(self, hero, "Info_Mod_Ferco_Crazy_B_03_01"); //Czy jestes gonna to zrobic, czy nie?

	Info_ClearChoices	(Info_Mod_Ferco_Crazy);

	Info_AddChoice	(Info_Mod_Ferco_Crazy, "Jestem zbyt dobry, aby byc chlopakiem.", Info_Mod_Ferco_Crazy_C);
	Info_AddChoice	(Info_Mod_Ferco_Crazy, "Dobrze, zrobie to. Masz inne przydatne wskazówki?", Info_Mod_Ferco_Crazy_A);
};

FUNC VOID Info_Mod_Ferco_Crazy_A()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Crazy_A_15_00"); //Dobrze, zrobie to. Masz inne przydatne wskazówki?
	AI_Output(self, hero, "Info_Mod_Ferco_Crazy_A_03_01"); //Wiedzialem, ze moge na ciebie liczyc. Slyszalem o miejscu zwanym Gelato.
	AI_Output(self, hero, "Info_Mod_Ferco_Crazy_A_03_02"); //Porozmawiaj z Kenem. Moze cos o tym wiedziec.

	VMG_Second = 2;

	Log_CreateTopic	(TOPIC_MOD_FERCO_WANZE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FERCO_WANZE, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_VMG_AUFNAHME, TOPIC_MOD_FERCO_WANZE, "Hm, powinienem znalezc zakleta role metamorfoz miesnych. Zobaczmy, jak Ken moze mi w tym pomóc.", "Ferco kazal mi porozmawiac z Kenem, aby dowiedziec sie, gdzie jest Gelato, aby uratowac zaklecie metamorfozy Meat Bug.");

	Info_ClearChoices	(Info_Mod_Ferco_Crazy);
};

INSTANCE Info_Mod_Ferco_CrazyTwo (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_CrazyTwo_Condition;
	information	= Info_Mod_Ferco_CrazyTwo_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_CrazyTwo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Crazy))
	&& (VMG_Second == 1)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_CrazyTwo_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_CrazyTwo_03_00"); //Czego jeszcze chcesz?

	Info_ClearChoices	(Info_Mod_Ferco_CrazyTwo);

	Info_AddChoice	(Info_Mod_Ferco_CrazyTwo, "Jestem zbyt dobry, aby byc chlopakiem.", Info_Mod_Ferco_Crazy_C);
	Info_AddChoice	(Info_Mod_Ferco_CrazyTwo, "Dobrze, zrobie to. Masz inne przydatne wskazówki?", Info_Mod_Ferco_Crazy_A);
};

INSTANCE Info_Mod_Ferco_CrazyThree (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_CrazyThree_Condition;
	information	= Info_Mod_Ferco_CrazyThree_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_CrazyThree_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Crazy))
	&& (VMG_Second == 2)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_CrazyThree_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_CrazyThree_03_00"); //Porozmawiaj z Kenem.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Ferco_Thys (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Thys_Condition;
	information	= Info_Mod_Ferco_Thys_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_Thys_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Fisch))
	&& (Npc_HasItems(hero, ItSc_TrfMeatbug) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Thys_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_Thys_03_00"); //Czy masz zaklecie?
	AI_Output(hero, self, "Info_Mod_Ferco_Thys_15_01"); //Tak, go dostalem.

	B_GiveInvItems	(hero, self, ItSc_TrfMeatbug, 1);

	AI_Output(self, hero, "Info_Mod_Ferco_Thys_03_02"); //Dobrze, daje magom znac. Wróc za kilka dni.

	VMG_Second_Time = Wld_GetDay();

	B_GivePlayerXP	(300);

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "Bylem w domu Ferco' a. Mam byc z powrotem za kilka dni.");
	B_SetTopicStatus	(TOPIC_MOD_FERCO_WANZE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Ferco_QuestThree (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_QuestThree_Condition;
	information	= Info_Mod_Ferco_QuestThree_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_QuestThree_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Thys))
	&& (VMG_Second_Time < Wld_GetDay())
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_QuestThree_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_QuestThree_03_00"); //Faice byl bardzo zadowolony z roli czaru. Tutaj dal mi to dla Ciebie.
	AI_Output(hero, self, "Info_Mod_Ferco_QuestThree_15_01"); //Nie powiedzial nic o nowym zadaniu, czy? Móglbym uzyc troche wiecej zlota.
	AI_Output(self, hero, "Info_Mod_Ferco_QuestThree_03_02"); //Tak, zrobil to przez przypadek.
	AI_Output(self, hero, "Info_Mod_Ferco_QuestThree_03_03"); //Wiecie, czarownicy pochodza z idyllicznego miejsca na zachodzie. Nie latwo do niego dotrzec.
	AI_Output(self, hero, "Info_Mod_Ferco_QuestThree_03_04"); //Ale Turendil wyjasni Ci wszystko. Chce, zeby pan go od razu ujrzal.

	Wld_SendTrigger	("EVT_OW_FOKUS_GATE_MOVER_01");
	Wld_SendTrigger	("EVT_FOKUSTOR");

	Log_CreateTopic	(TOPIC_MOD_FERCO_GOBLIN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FERCO_GOBLIN, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_VMG_AUFNAHME, TOPIC_MOD_FERCO_GOBLIN, "I jeszcze jedno zadanie. Czy kiedykolwiek dostane nagranie?", "Mam nowe zlecenie. Najwyrazniej chodzi o rodzinne miasto przemieniajacych sie magów. Powinienem zglosic sie do faceta o nazwisku Turendil.");
};

INSTANCE Info_Mod_Ferco_Aufnahmequest (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Aufnahmequest_Condition;
	information	= Info_Mod_Ferco_Aufnahmequest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_Aufnahmequest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faice_Aufnahmequest))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Aufnahmequest_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_Aufnahmequest_03_00"); //Co moge dla Ciebie zrobic?
	AI_Output(hero, self, "Info_Mod_Ferco_Aufnahmequest_15_01"); //Faice kazal wam wpuscic mnie na moje ostatnie zadanie.
	AI_Output(self, hero, "Info_Mod_Ferco_Aufnahmequest_03_02"); //Ach, wiec zostales poslany. Mówi sie, ze nowy kandydat ze starego obozu wyruszyl. Mozesz dac mu pierwszy test.

	Log_CreateTopic	(TOPIC_MOD_FERCO_MUD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FERCO_MUD, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_VMG_AUFNAHME, TOPIC_MOD_FERCO_MUD, "Ostatnie zadanie przed rozpoczeciem nagrywania.", "Z starego obozu pochodzi nowy aplikant, a ja daje mu pierwsza prace.");

	Info_ClearChoices	(Info_Mod_Ferco_Aufnahmequest);

	Info_AddChoice	(Info_Mod_Ferco_Aufnahmequest, "Nie, dziekuje, mam jeszcze cos do zrobienia.", Info_Mod_Ferco_Aufnahmequest_B);
	Info_AddChoice	(Info_Mod_Ferco_Aufnahmequest, "Dziekuje bardzo. To wlasnie zrobie.", Info_Mod_Ferco_Aufnahmequest_A);
};

FUNC VOID Info_Mod_Ferco_Aufnahmequest_B()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Aufnahmequest_B_15_00"); //Nie, dziekuje, mam jeszcze cos do zrobienia.
	AI_Output(self, hero, "Info_Mod_Ferco_Aufnahmequest_B_03_01"); //Ach, wiec zostales poslany. Mówi sie, ze nowy kandydat ze starego obozu wyruszyl. Mozesz dac mu pierwszy test.

	Info_ClearChoices	(Info_Mod_Ferco_Aufnahmequest);

	B_StartOtherRoutine	(Mod_803_STT_Mud_MT, "ATVMG");
	AI_Teleport	(Mod_803_STT_Mud_MT, "OW_PATH_179");
};

FUNC VOID Info_Mod_Ferco_Aufnahmequest_A()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Aufnahmequest_A_15_00"); //Dziekuje bardzo. To wlasnie zrobie.
	AI_Output(self, hero, "Info_Mod_Ferco_Aufnahmequest_A_03_01"); //Tu przychodzi teraz. Powodzenia.

	Info_ClearChoices	(Info_Mod_Ferco_Aufnahmequest);

	B_StartOtherRoutine	(Mod_803_STT_Mud_MT, "ATVMG");
	AI_Teleport	(Mod_803_STT_Mud_MT, "OW_PATH_179");
};

INSTANCE Info_Mod_Ferco_Mud (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Mud_Condition;
	information	= Info_Mod_Ferco_Mud_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_Mud_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mud_VMG))
	&& (Mod_Mud_Unterwegs > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Mud_Info()
{
	if (Mod_Mud_Unterwegs == 2)
	{	
		AI_Output(self, hero, "Info_Mod_Ferco_Mud_03_00"); //Co z nim zrobiles? Wyslales go do pewnej smierci!

		Info_ClearChoices	(Info_Mod_Ferco_Mud);

		Info_AddChoice	(Info_Mod_Ferco_Mud, "Przykro mi z tego powodu.", Info_Mod_Ferco_Mud_B);
		Info_AddChoice	(Info_Mod_Ferco_Mud, "Na to zasluzyl.", Info_Mod_Ferco_Mud_A);
	}
	else if (Mod_Mud_Unterwegs == 3)
	{
		AI_Output(self, hero, "Info_Mod_Ferco_Mud_03_01"); //Dobrze, nie zobaczymy go juz wkrótce. (smiech) Mozesz isc do Fa. Podejmie niezbedne przygotowania.
		AI_Output(hero, self, "Info_Mod_Ferco_Mud_15_02"); //Dziekuje bardzo.

		B_KillNpc	(Mod_803_STT_Mud_MT);

		B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "Zdalem egzamin i teraz powinienem pójsc do Faice.");
	}
	else if (Mod_Mud_Unterwegs == 4)
	{
		AI_Output(self, hero, "Info_Mod_Ferco_Mud_03_03"); //Czyz nie umieracie, zeby go pozbyc sie?

		Info_ClearChoices	(Info_Mod_Ferco_Mud);

		Info_AddChoice	(Info_Mod_Ferco_Mud, "Czy to jest takie zle?", Info_Mod_Ferco_Mud_D);
		Info_AddChoice	(Info_Mod_Ferco_Mud, "Nie?", Info_Mod_Ferco_Mud_C);
	}
	else if (Mod_Mud_Unterwegs == 5)
	{
		AI_Output(self, hero, "Info_Mod_Ferco_Mud_03_04"); //To bylo szybkie. Uwazam to za mozliwe do przyjecia.
		AI_Output(self, hero, "Info_Mod_Ferco_Mud_03_05"); //Teraz przejdz do Faice. Zrobi on to, co jest niezbedne do Twojego przyjecia.
		AI_Output(hero, self, "Info_Mod_Ferco_Mud_15_02"); //Dziekuje bardzo.

		B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "Zdalem egzamin i teraz powinienem pójsc do Faice.");

		if (Npc_HasItems(hero, ItSc_TrfBloodfly) > 0)
		{
			AI_Output(self, hero, "Info_Mod_Ferco_Mud_03_06"); //Jeszcze jedna rzecz: podoba mi sie czesc powiedzenia.

			Info_ClearChoices	(Info_Mod_Ferco_Mud);

			Info_AddChoice	(Info_Mod_Ferco_Mud, "Dlaczego?", Info_Mod_Ferco_Mud_F);
			Info_AddChoice	(Info_Mod_Ferco_Mud, "Oczywiscie tak jest. Tutaj.", Info_Mod_Ferco_Mud_E);
		};
	};
};

FUNC VOID Info_Mod_Ferco_Mud_F()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_F_15_00"); //Dlaczego?
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_F_03_01"); //Przeciez to bylo czescia Twojej pracy.

	Info_ClearChoices	(Info_Mod_Ferco_Mud);

	Info_AddChoice	(Info_Mod_Ferco_Mud, "Tak, czesc mojej pracy.", Info_Mod_Ferco_Mud_G);
	Info_AddChoice	(Info_Mod_Ferco_Mud, "Oczywiscie tak jest. Tutaj.", Info_Mod_Ferco_Mud_E);
};

FUNC VOID Info_Mod_Ferco_Mud_G()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_G_15_00"); //Tak, czesc mojej pracy.
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_G_03_01"); //No cóz, trzymajcie to wtedy. W porzadku, idzmy.

	Info_ClearChoices	(Info_Mod_Ferco_Mud);
};

FUNC VOID Info_Mod_Ferco_Mud_E()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_E_15_00"); //Oczywiscie tak jest. Tutaj.

	B_GiveInvItems	(hero, self, ItSc_TrfBloodfly, 1);

	AI_Output(self, hero, "Info_Mod_Ferco_Mud_E_03_01"); //Dzieki. Idz dalej, rozpocznij prace.

	Info_ClearChoices	(Info_Mod_Ferco_Mud);
};

FUNC VOID Info_Mod_Ferco_Mud_D()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_D_15_00"); //Czy to jest takie zle?
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_D_03_01"); //Nie, nie, nie. (smiech) Mozesz isc do Fa. Zrobi on to, co jest niezbedne do Twojego przyjecia.
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_D_15_02"); //Dziekuje bardzo.

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "Zdalem egzamin i teraz powinienem pójsc do Faice.");

	Info_ClearChoices	(Info_Mod_Ferco_Mud);

	B_KillNpc	(Mod_803_STT_Mud_MT);
};

FUNC VOID Info_Mod_Ferco_Mud_C()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_C_15_00"); //Nie?
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_C_03_01"); //Tak, tak, tak, tak, tak. (smiech) Mozesz isc do Fa. Zrobi on to, co jest niezbedne do Twojego przyjecia.
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_D_15_02"); //Dziekuje bardzo.

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "Zdalem egzamin i teraz powinienem pójsc do Faice.");

	Info_ClearChoices	(Info_Mod_Ferco_Mud);

	B_KillNpc	(Mod_803_STT_Mud_MT);
};

FUNC VOID Info_Mod_Ferco_Mud_B()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_B_15_00"); //Przykro mi z tego powodu.
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_B_03_01"); //Nie wygladaj tak blyszczaco. My równiez chcielismy go pozbyc sie.
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_B_15_02"); //...
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_B_03_03"); //Chcielismy tylko wiedziec, jak pan na niego reaguje. (smiech) Teraz idz do Fa, zrobi to, co jest konieczne.

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "Zdalem egzamin i teraz powinienem pójsc do Faice.");

	Info_ClearChoices	(Info_Mod_Ferco_Mud);

	B_KillNpc	(Mod_803_STT_Mud_MT);
};

FUNC VOID Info_Mod_Ferco_Mud_A()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_A_15_00"); //Na to zasluzyl.
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_A_03_01"); //Moze on to zrobil, ale to nie jest twoja decyzja.

	Info_ClearChoices	(Info_Mod_Ferco_Mud);

	Info_AddChoice	(Info_Mod_Ferco_Mud, "Przykro mi z tego powodu.", Info_Mod_Ferco_Mud_B);
};

INSTANCE Info_Mod_Ferco_Falin (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Falin_Condition;
	information	= Info_Mod_Ferco_Falin_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto pakiet z nowego magazynu. Zostawmy ja tutaj.";
};

FUNC INT Info_Mod_Ferco_Falin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Falin_Hi))
	&& (Npc_HasItems(hero, ItMi_PaketFalin) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Falin_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Falin_15_00"); //Oto pakiet z nowego magazynu. Zostawmy ja tutaj.

	B_GiveInvItems	(hero, self, ItMi_PaketFalin, 1);

	AI_Output(self, hero, "Info_Mod_Ferco_Falin_03_01"); //Dziekuje, nie wiedziales, ze Ranger pelni funkcje kuriera.
	AI_Output(hero, self, "Info_Mod_Ferco_Falin_15_02"); //To wyjatek.

	B_GivePlayerXP	(50);

	B_StartOtherRoutine	(Mod_7475_SLD_Falin_MT, "TOT");
};

INSTANCE Info_Mod_Ferco_Urs (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Urs_Condition;
	information	= Info_Mod_Ferco_Urs_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przynosze Pierscien Swiatla.";
};

FUNC INT Info_Mod_Ferco_Urs_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urs_Hi))
	&& (Npc_HasItems(hero, ItRi_Licht) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Urs_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Urs_15_00"); //Przynosze Pierscien Swiatla.

	B_GiveInvItems	(hero, self, ItRi_Licht, 1);

	AI_Output(self, hero, "Info_Mod_Ferco_Urs_03_01"); //Ahh, doskonaly. Faice bedzie zadowolony.
	AI_Output(self, hero, "Info_Mod_Ferco_Urs_03_02"); //Oto twój przebieg transformacji. Zabawa z tym.

	B_GivePlayerXP	(200);

	B_GiveInvItems	(self, hero, ItRu_TrfMolerat, 1);

	B_LogEntry	(TOPIC_MOD_URS_HUND, "Mam rune metamorfoze Ferco.");
};

INSTANCE Info_Mod_Ferco_EXIT (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_EXIT_Condition;
	information	= Info_Mod_Ferco_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ferco_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ferco_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
