INSTANCE Info_Mod_Babo_Hi (C_INFO)
{
	npc		= Mod_914_NOV_Babo_NW;
	nr		= 1;
	condition	= Info_Mod_Babo_Hi_Condition;
	information	= Info_Mod_Babo_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zly nastrój?";
};

FUNC INT Info_Mod_Babo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Babo_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Babo_Hi_15_00"); //Zly nastrój?
	AI_Output(self, hero, "Info_Mod_Babo_Hi_36_01"); //(zrazenie) Tak. Widac to wyraznie.
	AI_Output(hero, self, "Info_Mod_Babo_Hi_15_02"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Babo_Hi_36_03"); //Damn, ktos manipulowal moim tulowiem i ukradl wazny kawalek papieru.
	AI_Output(self, hero, "Info_Mod_Babo_Hi_36_04"); //Jedyna rzecz, która sprawila, ze nowe zycie w klasztorze stalo sie znosne.
	AI_Output(self, hero, "Info_Mod_Babo_Hi_36_05"); //Nie mam jednak pojecia, kto mógl to zrobic. Wszyscy mnie denerwuja, nawet magowie.

	Info_ClearChoices	(Info_Mod_Babo_Hi);

	Info_AddChoice	(Info_Mod_Babo_Hi, "(luskanie", Info_Mod_Babo_Hi_B);
	Info_AddChoice	(Info_Mod_Babo_Hi, "Co to jest ten przedmiot? Czy powinienem miec oczy otwarte?", Info_Mod_Babo_Hi_A);
};

FUNC VOID Info_Mod_Babo_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Babo_Hi_B_15_00"); //(luskanie
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Babo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Babo_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Babo_Hi_A_15_00"); //Co to jest ten przedmiot? Czy powinienem miec oczy otwarte?
	AI_Output(self, hero, "Info_Mod_Babo_Hi_A_36_01"); //(panik) Dla Innosa, nie! To bardzo prywatne.
	AI_Output(self, hero, "Info_Mod_Babo_Hi_A_36_02"); //Nie powinienem byl wam nic powiedziec....
	AI_Output(hero, self, "Info_Mod_Babo_Hi_A_15_03"); //Czy nie chcesz miec swiezego powietrza?
	AI_Output(self, hero, "Info_Mod_Babo_Hi_A_36_04"); //Mówilem magikom, ze wiele razy wczesniej. Ale nigdy mnie nie wybieraja do spraw.
	AI_Output(self, hero, "Info_Mod_Babo_Hi_A_36_05"); //Potrafie zamiatac wino do czasu, az zachoruje. I tak wlasnie jest.
	AI_Output(hero, self, "Info_Mod_Babo_Hi_A_15_06"); //Móglbym powiedziec dobre slowo z magikami dla Was....
	AI_Output(self, hero, "Info_Mod_Babo_Hi_A_36_07"); //Dlaczego jestes tak pomocny? Czy oszukujesz mnie lub co?
	AI_Output(hero, self, "Info_Mod_Babo_Hi_A_15_08"); //Oferuje.
	AI_Output(self, hero, "Info_Mod_Babo_Hi_A_36_09"); //Masz jakakolwiek gotówke? Potem moglem zrobic rysunek z pamieci.

	Info_ClearChoices	(Info_Mod_Babo_Hi);

	Info_AddChoice	(Info_Mod_Babo_Hi, "Nie teraz.", Info_Mod_Babo_Hi_D);

	if (Npc_HasItems(hero, ItMi_Coal) >= 1) {
		Info_AddChoice	(Info_Mod_Babo_Hi, "Jasne, ze tu idziesz.", Info_Mod_Babo_Hi_C);
	};
};

FUNC VOID Info_Mod_Babo_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Babo_Hi_D_15_00"); //Nie teraz.
	AI_Output(self, hero, "Info_Mod_Babo_Hi_D_36_01"); //Zbyt przykry

	Info_ClearChoices	(Info_Mod_Babo_Hi);
};

FUNC VOID Info_Mod_Babo_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Babo_Hi_C_15_00"); //Jasne, ze tu idziesz.

	B_GiveInvItems	(hero, self, ItMi_Coal, 1);

	AI_Output(self, hero, "Info_Mod_Babo_Hi_C_36_01"); //Dziekuje, przynajmniej za cos.

	B_GivePlayerXP	(50);

	Info_ClearChoices	(Info_Mod_Babo_Hi);
};

INSTANCE Info_Mod_Babo_Daemonisch (C_INFO)
{
	npc		= Mod_914_NOV_Babo_NW;
	nr		= 1;
	condition	= Info_Mod_Babo_Daemonisch_Condition;
	information	= Info_Mod_Babo_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Babo_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrnolKap4))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Babo_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Babo_Daemonisch_36_00"); //Czarny dym z ust, czarny dym z ciala, krzyki....
	AI_Output(hero, self, "Info_Mod_Babo_Daemonisch_15_01"); //Cóz, po prostu spokojny. Co dokladnie sie stalo?
	AI_Output(self, hero, "Info_Mod_Babo_Daemonisch_36_02"); //Tuz po opuszczeniu kosciola.... nie, nie, nie, nie, nie.......
	AI_Output(hero, self, "Info_Mod_Babo_Daemonisch_15_03"); //Nie, to wszystko, co moge z niego wydostac.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Babo_Daemonisch_15_04"); //Tak, byl ostatni w kosciele. Powinienem zapytac.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Babo jest zreszta dosyc zdenerwowany, doniesienia o czarnym dymie z ciala zmarlego. Dyrian oczywiscie byl w kosciele przed.....");

	Mod_BaboVerwirrt_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Babo_Daemonisch2 (C_INFO)
{
	npc		= Mod_914_NOV_Babo_NW;
	nr		= 1;
	condition	= Info_Mod_Babo_Daemonisch2_Condition;
	information	= Info_Mod_Babo_Daemonisch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Babo_Daemonisch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch))
	&& (Wld_GetDay() > Mod_BaboVerwirrt_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Babo_Daemonisch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Babo_Daemonisch2_36_00"); //Jak to wyglada?
	AI_Output(hero, self, "Info_Mod_Babo_Daemonisch2_15_01"); //Uh, masz racje? Mówiles mi pan takie rzeczy jak......
	AI_Output(self, hero, "Info_Mod_Babo_Daemonisch2_36_02"); //Och, zapomnij o nonsensie. Bylem po prostu zdezorientowany co do smierci dyryga. Ale teraz jestem juz teraz.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Dziwny.... Babo zdaje sie byc znowu razem i robi to, co powiedzial mi wczesniej w wyniku szoku spowodowanego smiercia Dyriana.");
};

INSTANCE Info_Mod_Babo_Daemonisch3 (C_INFO)
{
	npc		= Mod_914_NOV_Babo_NW;
	nr		= 1;
	condition	= Info_Mod_Babo_Daemonisch3_Condition;
	information	= Info_Mod_Babo_Daemonisch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Babo_Daemonisch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Babo_Daemonisch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Babo_Daemonisch3_36_00"); //Czarne cienie w jaskini w poblizu jeziora..... Musze natychmiast poinformowac o tym klasztor.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Babo_Pickpocket (C_INFO)
{
	npc		= Mod_914_NOV_Babo_NW;
	nr		= 1;
	condition	= Info_Mod_Babo_Pickpocket_Condition;
	information	= Info_Mod_Babo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Babo_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Babo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Babo_Pickpocket);

	Info_AddChoice	(Info_Mod_Babo_Pickpocket, DIALOG_BACK, Info_Mod_Babo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Babo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Babo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Babo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Babo_Pickpocket);
};

FUNC VOID Info_Mod_Babo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Babo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Babo_Pickpocket);

		Info_AddChoice	(Info_Mod_Babo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Babo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Babo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Babo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Babo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Babo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Babo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Babo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Babo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Babo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Babo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Babo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Babo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Babo_EXIT (C_INFO)
{
	npc		= Mod_914_NOV_Babo_NW;
	nr		= 1;
	condition	= Info_Mod_Babo_EXIT_Condition;
	information	= Info_Mod_Babo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Babo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Babo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
