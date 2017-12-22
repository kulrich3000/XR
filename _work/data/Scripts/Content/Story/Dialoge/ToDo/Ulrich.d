INSTANCE Info_Mod_Ulrich_Hi (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_Hi_Condition;
	information	= Info_Mod_Ulrich_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Ulrich_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ulrich_Hi_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Ulrich_Hi_14_01"); //Co Pan tutaj robi?
	AI_Output(hero, self, "Info_Mod_Ulrich_Hi_15_02"); //Nie mialem zamiaru.....
	AI_Output(self, hero, "Info_Mod_Ulrich_Hi_14_03"); //Wystarczy natknac sie na mój dom, przez przypadek? Upewnij sie, ze wygrasz ziemie!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Ulrich_AnnaKnast (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_AnnaKnast_Condition;
	information	= Info_Mod_Ulrich_AnnaKnast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi. Mam Ci przekazac wiadomosc.";
};

FUNC INT Info_Mod_Ulrich_AnnaKnast_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ulrich_Hi))
	&& (Mod_AnnaQuest == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ulrich_AnnaKnast_Info()
{
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_00"); //Hi. Mam Ci przekazac wiadomosc.
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_01"); //Ach, tak? A to uwalnia cie od przyzwyczajen spolecznych jak pukanie?
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_02"); //Nie.... Nie. Sluchaj, to o Anna.
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_03"); //Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_04"); //Zostala aresztowana przez Schöppena z powodu podejrzenia o czary, przebywa w wiezieniu i najprawdopodobniej jest torturowana.
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_05"); //Prosze mi wybaczyc! Pokaze je!
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_06"); //Masz plan?
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_07"); //Mozesz sie zalozyc! Bede sie dowiedziec daty werdyktu i zabic kazdego z tych brudnych szczurów, jesli chca ja dotknac!
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_08"); //Dzwieki bardzo przemyslane....
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_09"); //Pah, co mam sobie wyobrazic, jesli i tak prawicowi skrzydlowie nie potrafia przewrócic pistoletu? Dwoje z nich nie ma szans!
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_10"); //Dwoje z nas?
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_11"); //Nie czyn mnie slabym chlopakiem, czy jestes po ich stronie?
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_12"); //Uh....
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_13"); //Wiec przychodzisz do mnie rano, potem wiem, kiedy odbedzie sie proces i oboje do niego dolaczymy.

	B_LogEntry	(TOPIC_MOD_KHORATA_HEXENWAHN, "Ulrich chce rozwiazac te sprawe w brutalny sposób. Czy jest to wlasciwa droga? Chce, abym wrócil pózniej, kiedy wie, kiedy odbedzie sie proces Anny.");

	Mod_AnnaQuest = 4;

	Mod_AnnaQuest_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Ulrich_ZuVerhandlung (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_ZuVerhandlung_Condition;
	information	= Info_Mod_Ulrich_ZuVerhandlung_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ulrich_ZuVerhandlung_Condition()
{
	if (Mod_AnnaQuest == 4)
	&& (Wld_GetDay() > Mod_AnnaQuest_Day)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ulrich_ZuVerhandlung_Info()
{
	AI_Output(self, hero, "Info_Mod_Ulrich_ZuVerhandlung_14_00"); //Spózniasz sie na prace. Chodzcie dalej, odejdzmy!
	
	Info_ClearChoices	(Info_Mod_Ulrich_ZuVerhandlung);

	Info_AddChoice	(Info_Mod_Ulrich_ZuVerhandlung, "W jednej chwili prosze.", Info_Mod_Ulrich_ZuVerhandlung_B);
	Info_AddChoice	(Info_Mod_Ulrich_ZuVerhandlung, "Potem odejdzmy.", Info_Mod_Ulrich_ZuVerhandlung_A);
};

FUNC VOID Info_Mod_Ulrich_ZuVerhandlung_B()
{
	AI_Output(hero, self, "Info_Mod_Ulrich_ZuVerhandlung_B_15_00"); //W jednej chwili prosze.
	
	Info_ClearChoices	(Info_Mod_Ulrich_ZuVerhandlung);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Ulrich_ZuVerhandlung_A()
{
	AI_Output(hero, self, "Info_Mod_Ulrich_ZuVerhandlung_A_15_00"); //Potem odejdzmy.
	AI_Output(self, hero, "DEFAULT"); //
	
	Info_ClearChoices	(Info_Mod_Ulrich_ZuVerhandlung);

	Mod_AnnaQuest = 5;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETORICHTER");

	Wld_InsertNpc	(Mod_7376_OUT_Anna_REL,	"REL_CITY_341");
};

INSTANCE Info_Mod_Ulrich_AnnaBefreit (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_AnnaBefreit_Condition;
	information	= Info_Mod_Ulrich_AnnaBefreit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ulrich_AnnaBefreit_Condition()
{
	if (Mod_AnnaQuest == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ulrich_AnnaBefreit_Info()
{
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaBefreit_14_00"); //Pokazalismy im. To bedzie dla nich lekcja.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7365_OUT_Margarethe_REL, "START");
	B_StartOtherRoutine	(Mod_7374_OUT_Gerichtswache_01, "START");
	B_StartOtherRoutine	(Mod_7375_OUT_Gerichtswache_02, "START");
};

INSTANCE Info_Mod_Ulrich_Freudenspender (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_Freudenspender_Condition;
	information	= Info_Mod_Ulrich_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Ciesze sie, ze mam cie tutaj....";
};                       

FUNC INT Info_Mod_Ulrich_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Ulrich_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Ulrich_Freudenspender_15_00"); //Ciesze sie, ze mam cie tutaj....
	AI_Output(self, hero, "Info_Mod_Ulrich_Freudenspender_14_01"); //I mam nadzieje, ze nie chcesz sie z mna pozbyc.
	AI_Output(hero, self, "Info_Mod_Ulrich_Freudenspender_15_02"); //Oczywiscie nie.
	AI_Output(self, hero, "Info_Mod_Ulrich_Freudenspender_14_03"); //Czy uderzales?
	AI_Output(hero, self, "Info_Mod_Ulrich_Freudenspender_15_04"); //Oczywiscie tak jest. Musi byc zbyt cicho.
};

INSTANCE Info_Mod_Ulrich_Pickpocket (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_Pickpocket_Condition;
	information	= Info_Mod_Ulrich_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ulrich_Pickpocket_Condition()
{
	C_Beklauen	(68, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Ulrich_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);

	Info_AddChoice	(Info_Mod_Ulrich_Pickpocket, DIALOG_BACK, Info_Mod_Ulrich_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ulrich_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ulrich_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ulrich_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);
};

FUNC VOID Info_Mod_Ulrich_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);

		Info_AddChoice	(Info_Mod_Ulrich_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ulrich_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ulrich_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ulrich_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ulrich_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ulrich_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ulrich_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ulrich_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ulrich_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ulrich_EXIT (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_EXIT_Condition;
	information	= Info_Mod_Ulrich_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ulrich_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ulrich_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
