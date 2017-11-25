INSTANCE Info_Mod_Yussuf_Hi (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Hi_Condition;
	information	= Info_Mod_Yussuf_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dzien. Szukam Jusufa.";
};

FUNC INT Info_Mod_Yussuf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Yussuf_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_15_00"); //Dzien. Szukam Jusufa.
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_13_01"); //Stoisz przed nim. Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_15_02"); //Szukam glosów na moje nagranie.
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_13_03"); //To dobrze, bo ja równiez szukam glosów. Pragnie dolaczyc do wojowników. Znudzily mnie te ramy.
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_15_04"); //Ale trzeba zapytac wojowników, a nie mnie.
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_13_05"); //Tak jest. Ale mozesz mi pomóc w trudnym zadaniu.
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_13_06"); //Jesli otrzymam glosowanie za jego przyjeciem, dostajesz moja.

	Info_ClearChoices	(Info_Mod_Yussuf_Hi);

	Info_AddChoice	(Info_Mod_Yussuf_Hi, "To brzmi dla mnie dobrze. Mozemy to zrobic.", Info_Mod_Yussuf_Hi_B);
	Info_AddChoice	(Info_Mod_Yussuf_Hi, "Nie wiem o tym. Ale to nie jest prawda.", Info_Mod_Yussuf_Hi_A);
};

FUNC VOID Info_Mod_Yussuf_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_B_15_00"); //To brzmi dla mnie dobrze. Mozemy to zrobic.
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_B_13_01"); //Zadzwonie do Ciebie, kiedy bede cie potrzebowal.

	Info_ClearChoices	(Info_Mod_Yussuf_Hi);

	Log_CreateTopic	(TOPIC_MOD_ASS_YUSSUF_HILFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_YUSSUF_HILFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_YUSSUF_HILFE, "Otrzymuje glos Yussufa, kiedy pomagam mu w jednym z jego zadan. Chce pózniej porozmawiac o tym pózniej.....");

	Mod_ASS_Yussuf = 2;
};

FUNC VOID Info_Mod_Yussuf_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_A_15_00"); //Nie wiem o tym. Ale to nie jest prawda.
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_A_13_01"); //I po co nam kibice?
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_A_15_02"); //Nie. Wole nie. Gdy to sie wyda, umarlam.
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_A_15_03"); //A moze myslisz, ze po prostu pozwola mi jakos tak znów jechac?
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_A_13_04"); //Nie sadze. Ale wtedy nie ma nic z moim glosem. I to sie skonczylo.
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_A_15_05"); //Pewne.

	Info_ClearChoices	(Info_Mod_Yussuf_Hi);

	Mod_ASS_Yussuf = 1;
};

INSTANCE Info_Mod_Yussuf_Blutkelch (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Blutkelch_Condition;
	information	= Info_Mod_Yussuf_Blutkelch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Karim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Aiman_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Blutkelch_Info()
{
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch_13_00"); //Co Pan tutaj robi? Nie mam jeszcze mojego glosu.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch_15_01"); //Tak dobrze sluzylem Szakirowi, ze oddal on swój glos i wyslal mnie prosto do Masuta.
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch_13_02"); //Stary geek! Ale tym razem moglibysmy pracowac razem.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch_15_03"); //Przypuszczam, ze mozemy. Musze wziac kielich krwi od sedziego w Khorinisie.
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch_13_04"); //To dobrze. Musze isc do centrum miasta.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch_15_05"); //A co trzeba zrobic?
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch_13_06"); //Jestem tutaj, aby zagrabic skrzynie na podwórzu od kupca Matteo. Wysoka Rada podejrzewa tam ubrania, moglibysmy je uzyc.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch_15_07"); //Czy nie ma tam wartownika?
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch_13_08"); //Tak, ale to nie jest dla mnie problemem.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch_15_09"); //Czy masz przebranie?
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch_13_10"); //Oczywiscie tak jest. Idzmy dalej. Najpierw sprawdzimy ubrania.

	B_LogEntry	(TOPIC_MOD_ASS_BLUTKELCH, "Spotkalem sie z Jusufem. Tym razem chcemy wspólpracowac. Z kupieckiej farmy Matteo otrzymuje cywilne ubrania.");

	CreateInvItems	(self, ItAr_Vlk_M, 1);

	AI_UnequipArmor	(self);

	AI_EquipArmor	(self, ItAr_Vlk_M);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Yussuf_Blutkelch2 (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Blutkelch2_Condition;
	information	= Info_Mod_Yussuf_Blutkelch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Blutkelch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Yussuf_Blutkelch))
	&& (Npc_GetDistToWP(hero, "NW_CITY_MERCHANT_TRADE_02_B") < 750)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Blutkelch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch2_13_00"); //Rycerz moze tu cos zauwazyc. Trzeba go rozpraszac. Zrobie reszte.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch2_15_01"); //Bez problemu.

	B_LogEntry	(TOPIC_MOD_ASS_BLUTKELCH, "Musze odwrócic uwage Garonda, aby Yussuf mógl wyciagnac ubrania z obozu.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Yussuf_Blutkelch3 (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Blutkelch3_Condition;
	information	= Info_Mod_Yussuf_Blutkelch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Blutkelch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Blutkelch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch3_13_00"); //To bylo latwe. Wyjdzmy stad, zanim ktos inny zauwazy.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch3_15_01"); //Dlaczego nie idziemy prosto do górnego miasta?
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch3_13_02"); //Wiesz, gdzie jest sedzia?
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch3_15_03"); //Oczywiscie. W domu jest jednak straznik.
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch3_13_04"); //Móglbym ich tym razem rozproszyc.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch3_15_05"); //Dobry pomysl. Chodzcie dalej, odejdzmy!

	B_LogEntry	(TOPIC_MOD_ASS_BLUTKELCH, "Yussufowie dostali ubrania, teraz musimy zobaczyc sedziego.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_500_PAL_Garond_NW,	"PRESTART");
};

INSTANCE Info_Mod_Yussuf_Blutkelch4 (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Blutkelch4_Condition;
	information	= Info_Mod_Yussuf_Blutkelch4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Blutkelch4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richterhauswache_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Blutkelch4_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch4_15_00"); //Kiedy straznik powróci, bedziesz musial go rozproszyc. Wchodze do srodka.
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch4_13_01"); //Rozumiem.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self,	"RICHTER");
	B_StartOtherRoutine	(Mod_1181_MIL_Tuerwache_NW,	"RICHTER");
};

INSTANCE Info_Mod_Yussuf_Blutkelch5 (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Blutkelch5_Condition;
	information	= Info_Mod_Yussuf_Blutkelch5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Blutkelch5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richterhauswache_Blutkelch2))
	&& (Npc_GetDistToWP(hero, "NW_CITY_UPTOWN_PATH_05_B") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Blutkelch5_Info()
{
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch5_13_00"); //Uludzilismy go calkiem dobrze. Jak jest sedzia?
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch5_15_01"); //Zly. Jest teraz przed sedzia.
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch5_13_02"); //Jestes pieklem faceta.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch5_15_03"); //Mozna to przyjac doslownie. (smiertelnicy)
};

INSTANCE Info_Mod_Yussuf_Blutkelch6 (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Blutkelch6_Condition;
	information	= Info_Mod_Yussuf_Blutkelch6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Blutkelch6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Yussuf_Blutkelch5))
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_13") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Blutkelch6_Info()
{
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch6_13_00"); //Jestem gonna upuszczam ubrania.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch6_15_01"); //Ide do Wysokiej Rady. Do zobaczenia nastepnym razem.
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch6_13_02"); //Oto teraz!

	AI_UnEquipArmor	(self);

	AI_EquipArmor	(self, ItAr_Assassine_01);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Yussuf_Assassinengold (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Assassinengold_Condition;
	information	= Info_Mod_Yussuf_Assassinengold_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Assassinengold_Condition()
{
	if (Mod_ASS_Assassinengold == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Assassinengold_Info()
{
	AI_Output(self, hero, "Info_Mod_Yussuf_Assassinengold_13_00"); //Syn dziala! Jestes gwiazda obozu. Jak to zrobic?
	AI_Output(hero, self, "Info_Mod_Yussuf_Assassinengold_15_01"); //Czy slyszales kiedys o motywacji?
	AI_Output(self, hero, "Info_Mod_Yussuf_Assassinengold_13_02"); //Eh. Nie.
	AI_Output(hero, self, "Info_Mod_Yussuf_Assassinengold_15_03"); //Pomyslalem, ze mozesz.
};

INSTANCE Info_Mod_Yussuf_Pickpocket (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Pickpocket_Condition;
	information	= Info_Mod_Yussuf_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Yussuf_Pickpocket_Condition()
{
	C_Beklauen	(82, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Yussuf_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);

	Info_AddChoice	(Info_Mod_Yussuf_Pickpocket, DIALOG_BACK, Info_Mod_Yussuf_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Yussuf_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Yussuf_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Yussuf_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);
};

FUNC VOID Info_Mod_Yussuf_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);

		Info_AddChoice	(Info_Mod_Yussuf_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Yussuf_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Yussuf_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Yussuf_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Yussuf_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Yussuf_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Yussuf_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Yussuf_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Yussuf_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Yussuf_EXIT (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_EXIT_Condition;
	information	= Info_Mod_Yussuf_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Yussuf_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Yussuf_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
