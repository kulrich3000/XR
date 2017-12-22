INSTANCE Info_Mod_HSBauer_04_Hi (C_INFO)
{
	npc		= Mod_7018_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_04_Hi_Condition;
	information	= Info_Mod_HSBauer_04_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_HSBauer_04_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HSBauer_04_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_05_00"); //HEY! Uwazaj!
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_05_02"); //Tutaj nie mozna przejsc, jest plac budowy!
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_15_03"); //Gdzie?
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_05_04"); //DLA BOGA, ABY TAM TO DZIECIAK!

	Info_ClearChoices	(Info_Mod_HSBauer_04_Hi);

	Info_AddChoice	(Info_Mod_HSBauer_04_Hi, "Uwazaj! Za toba rozklada sie rusztowanie!", Info_Mod_HSBauer_04_Hi_C);
	Info_AddChoice	(Info_Mod_HSBauer_04_Hi, "Trzymaj sie tam, gdzie jestes, lub Ja mam prawo.", Info_Mod_HSBauer_04_Hi_B);
	Info_AddChoice	(Info_Mod_HSBauer_04_Hi, "Ach!", Info_Mod_HSBauer_04_Hi_A);
};

FUNC VOID Info_Mod_HSBauer_04_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_C_15_00"); //Uwazaj! Za toba rozklada sie rusztowanie!
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_C_05_01"); //NEEEIN! Nad tym rusztowaniem pracuje od szesciu dni. 6 TAGE!!!

	Info_ClearChoices	(Info_Mod_HSBauer_04_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_HSBauer_04_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_B_15_00"); //Trzymaj sie tam, gdzie jestes, lub Ja mam prawo. Ukasic mu glowe!
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_B_05_01"); //Hej, czlowiek! To nie Twoja wina! Nie rób niczego, czego bedziesz zalowal pózniej! Uwielbiam to dziecko jak moje wlasne!

	Info_ClearChoices	(Info_Mod_HSBauer_04_Hi);

	Info_AddChoice	(Info_Mod_HSBauer_04_Hi, "Wszystko w porzadku.... tu masz ja.", Info_Mod_HSBauer_04_Hi_E);
	Info_AddChoice	(Info_Mod_HSBauer_04_Hi, "Masz jakas musztarde?", Info_Mod_HSBauer_04_Hi_D);
};

FUNC VOID Info_Mod_HSBauer_04_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_A_15_00"); //Ach!
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_A_05_01"); //Nie mów mi, ze nie ostrzegalbym cie, gdyby na glowe lecial kantówka!

	Info_ClearChoices	(Info_Mod_HSBauer_04_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_HSBauer_04_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_E_15_00"); //Wszystko w porzadku.... tu masz ja.
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_E_05_01"); //Dziekuje, szlachetnym szlachetnym siostrom. Jestem wam nieskonczenie dluzna z moja macierzynska miloscia.
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_E_15_02"); //To w porzadku....

	Info_ClearChoices	(Info_Mod_HSBauer_04_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_HSBauer_04_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_D_15_00"); //Masz jakas musztarde?
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_D_05_01"); //Tak, tutaj. Po co? ... Nie, nie idziesz do....
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_D_15_02"); //Posilek. (ulega ukaszeniu)
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_D_05_03"); //NEEEEEEIN! MEIN BABY... Teraz musisz mnie uczynic nowym!
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_D_15_04"); //Nie mozesz byc powazny?
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_D_05_05"); //Nie uwazasz mnie za atrakcyjnego? Czy to jest? Ach, musicie miec romans, miód! Pomysl o naszym synu, eh?
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_D_15_06"); //Ja jadlem to.....
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_D_05_07"); //Oh, tak, tak.... Przykro mi, ze w tym przypadku martwie sie, panie posle.... uh..... kontynuowac.

	Info_ClearChoices	(Info_Mod_HSBauer_04_Hi);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HSBauer_04_Pickpocket (C_INFO)
{
	npc		= Mod_7018_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_04_Pickpocket_Condition;
	information	= Info_Mod_HSBauer_04_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_HSBauer_04_Pickpocket_Condition()
{
	C_Beklauen	(15, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_HSBauer_04_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);

	Info_AddChoice	(Info_Mod_HSBauer_04_Pickpocket, DIALOG_BACK, Info_Mod_HSBauer_04_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HSBauer_04_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HSBauer_04_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HSBauer_04_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);
};

FUNC VOID Info_Mod_HSBauer_04_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);

		Info_AddChoice	(Info_Mod_HSBauer_04_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HSBauer_04_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HSBauer_04_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HSBauer_04_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HSBauer_04_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HSBauer_04_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HSBauer_04_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HSBauer_04_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HSBauer_04_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HSBauer_04_EXIT (C_INFO)
{
	npc		= Mod_7018_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_04_EXIT_Condition;
	information	= Info_Mod_HSBauer_04_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HSBauer_04_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HSBauer_04_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
