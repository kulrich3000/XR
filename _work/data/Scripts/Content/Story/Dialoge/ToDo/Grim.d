INSTANCE Info_Mod_Grim_Hi (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_Hi_Condition;
	information	= Info_Mod_Grim_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wygladasz bardzo zmeczony.";
};

FUNC INT Info_Mod_Grim_Hi_Condition()
{
	if (Wld_IsTime(05,00,22,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grim_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Grim_Hi_15_00"); //Wygladasz bardzo zmeczony.
	AI_Output(self, hero, "Info_Mod_Grim_Hi_06_01"); //Tak, sa takie koszmary.... Któregos razu popedza mnie szalenczo!
};

INSTANCE Info_Mod_Grim_WieGehts (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_WieGehts_Condition;
	information	= Info_Mod_Grim_WieGehts_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak wygladales/as od upadku bariery?";
};

FUNC INT Info_Mod_Grim_WieGehts_Condition()
{
	if (Wld_IsTime(05,00,22,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grim_WieGehts_Info()
{
	AI_Output(hero, self, "Info_Mod_Grim_WieGehts_15_00"); //Jak wygladales/as od upadku bariery?
	AI_Output(self, hero, "Info_Mod_Grim_WieGehts_06_01"); //Od tego czasu wydarzylo sie wiele rzeczy. Na poczatku bylo to zabawne, bez lidera i wszystkiego.
	AI_Output(self, hero, "Info_Mod_Grim_WieGehts_06_02"); //Ale po zajeciu stanowiska przez Thorusa Gomeza nie mozna sobie pozwolic na nic. Zrobilo sie tu cos w rodzaju nudnego.
	AI_Output(self, hero, "Info_Mod_Grim_WieGehts_06_03"); //A potem te koszmary zaczely sie.....
};

INSTANCE Info_Mod_Grim_Alptraeume (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_Alptraeume_Condition;
	information	= Info_Mod_Grim_Alptraeume_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie koszmary?";
};

FUNC INT Info_Mod_Grim_Alptraeume_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Grim_WieGehts))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grim_Alptraeume_Info()
{
	AI_Output(hero, self, "Info_Mod_Grim_Alptraeume_15_00"); //Jakie koszmary?
	AI_Output(self, hero, "Info_Mod_Grim_Alptraeume_06_01"); //Sa jak te rzeczy, które guru mial w bagnie, jak wizje.
	AI_Output(self, hero, "Info_Mod_Grim_Alptraeume_06_02"); //Po przebudzeniu pamietam tylko rozmyte.
	AI_Output(self, hero, "Info_Mod_Grim_Alptraeume_06_03"); //Ma to cos wspólnego z orkami. Jestem pewien, ze mnie zabija!
};

INSTANCE Info_Mod_Grim_Nacht (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_Nacht_Condition;
	information	= Info_Mod_Grim_Nacht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Grim_Nacht_Condition()
{
	if (Wld_IsTime(22,00,05,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grim_Nacht_Info()
{
	AI_Output(hero, self, "Info_Mod_Grim_Nacht_15_00"); //Co Pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Grim_Nacht_06_01"); //Och, l--- Troche rozciagam nogi. Zawsze mam te koszmary. Tak, to prawda.
};

INSTANCE Info_Mod_Grim_Lagermusik (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_Lagermusik_Condition;
	information	= Info_Mod_Grim_Lagermusik_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gravo chce zalozyc zespól muzyczny. Interesuje?";
};

FUNC INT Info_Mod_Grim_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grim_Lagermusik_Info()
{
	AI_Output(hero, self, "Info_Mod_Grim_Lagermusik_15_00"); //Gravo chce zalozyc zespól muzyczny. Interesuje?
	AI_Output(self, hero, "Info_Mod_Grim_Lagermusik_06_01"); //Dlaczego o to pan pyta?

	Info_ClearChoices	(Info_Mod_Grim_Lagermusik);

	Info_AddChoice	(Info_Mod_Grim_Lagermusik, "Moze mozesz go poprzec.", Info_Mod_Grim_Lagermusik_B);
	Info_AddChoice	(Info_Mod_Grim_Lagermusik, "Staram sie cie straszyc.", Info_Mod_Grim_Lagermusik_A);
};

FUNC VOID Info_Mod_Grim_Lagermusik_B()
{
	AI_Output(hero, self, "Info_Mod_Grim_Lagermusik_B_15_00"); //Moze mozesz go poprzec.
	AI_Output(self, hero, "Info_Mod_Grim_Lagermusik_B_06_01"); //Odrzucam) Nie, nie sadze. I tak i tak trzeba sie nad tym zastanowic.

	Info_ClearChoices	(Info_Mod_Grim_Lagermusik);
};

FUNC VOID Info_Mod_Grim_Lagermusik_A()
{
	AI_Output(hero, self, "Info_Mod_Grim_Lagermusik_A_15_00"); //Staram sie cie straszyc.
	AI_Output(self, hero, "Info_Mod_Grim_Lagermusik_A_06_01"); //Th-That nie sprawdza sie dla Ciebie!

	Info_ClearChoices	(Info_Mod_Grim_Lagermusik);
};

INSTANCE Info_Mod_Grim_Pickpocket (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_Pickpocket_Condition;
	information	= Info_Mod_Grim_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Grim_Pickpocket_Condition()
{
	C_Beklauen	(52, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Grim_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Grim_Pickpocket);

	Info_AddChoice	(Info_Mod_Grim_Pickpocket, DIALOG_BACK, Info_Mod_Grim_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Grim_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Grim_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Grim_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Grim_Pickpocket);
};

FUNC VOID Info_Mod_Grim_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Grim_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Grim_Pickpocket);

		Info_AddChoice	(Info_Mod_Grim_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Grim_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Grim_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Grim_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Grim_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Grim_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Grim_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Grim_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Grim_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Grim_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Grim_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Grim_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Grim_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Grim_EXIT (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_EXIT_Condition;
	information	= Info_Mod_Grim_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Grim_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grim_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
