INSTANCE Info_Mod_Ulf_Hi (C_INFO)
{
	npc		= Mod_753_NOV_Ulf_NW;
	nr		= 1;
	condition	= Info_Mod_Ulf_Hi_Condition;
	information	= Info_Mod_Ulf_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Ulf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ulf_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Ulf_Hi_28_01"); //Jestem Ulfem, moim zadaniem jest sprzedaz wina klasztornego tutaj w miescie.
};

INSTANCE Info_Mod_Ulf_WieGehts (C_INFO)
{
	npc		= Mod_753_NOV_Ulf_NW;
	nr		= 1;
	condition	= Info_Mod_Ulf_WieGehts_Condition;
	information	= Info_Mod_Ulf_WieGehts_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to robisz?";
};

FUNC INT Info_Mod_Ulf_WieGehts_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ulf_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ulf_WieGehts_Info()
{
	AI_Output(hero, self, "Info_Mod_Ulf_WieGehts_15_00"); //Jak to robisz?
	AI_Output(self, hero, "Info_Mod_Ulf_WieGehts_28_01"); //Martwie sie o acahash.
	AI_Output(hero, self, "Info_Mod_Ulf_WieGehts_15_02"); //Kim jest Akahasch?
	AI_Output(self, hero, "Info_Mod_Ulf_WieGehts_28_03"); //Jest tez nowicjuszem klasztoru, który mial przyniesc mi ladunek wina, ale jeszcze tu nie przybyl.
	AI_Output(self, hero, "Info_Mod_Ulf_WieGehts_28_04"); //Czy mozesz mi powiedziec, kiedy go znajdziesz?
	AI_Output(hero, self, "Info_Mod_Ulf_WieGehts_15_05"); //Okay.
};

INSTANCE Info_Mod_Ulf_AkahaschTot (C_INFO)
{
	npc		= Mod_753_NOV_Ulf_NW;
	nr		= 1;
	condition	= Info_Mod_Ulf_AkahaschTot_Condition;
	information	= Info_Mod_Ulf_AkahaschTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem Akahascha.";
};

FUNC INT Info_Mod_Ulf_AkahaschTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ulf_WieGehts))
	&& ((Npc_IsDead(Mod_4016_NOV_Akahasch_NW))
	|| (Npc_KnowsInfo(hero, Info_Mod_Akahasch_AtKloster)))
	&& (Npc_HasItems(hero, ItMi_Weinlieferung) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ulf_AkahaschTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Ulf_AkahaschTot_15_00"); //Znalazlem Akahascha.
	AI_Output(self, hero, "Info_Mod_Ulf_AkahaschTot_28_01"); //Gdzie jest?

	if (Npc_IsDead(Mod_4016_NOV_Akahasch_NW))
	{
		AI_Output(hero, self, "Info_Mod_Ulf_AkahaschTot_15_02"); //On nie zyje.
		AI_Output(self, hero, "Info_Mod_Ulf_AkahaschTot_28_03"); //Czy z Innosem to prawda? Co sie dzieje?
		AI_Output(hero, self, "Info_Mod_Ulf_AkahaschTot_15_04"); //Potrzasnalem nad jego cialem w poblizu latarni morskiej. Mial to na sobie.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Ulf_AkahaschTot_15_05"); //Wraca do klasztoru. Oto jego wino.
	};

	B_GiveInvItems	(hero, self, ItMi_Weinlieferung, 1);

	AI_Output(self, hero, "Info_Mod_Ulf_AkahaschTot_28_06"); //Przynajmniej wino jest zapisywane. Wezmy to jako podziekowanie za wasze wysilki.

	B_GivePlayerXP	(100);

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);
};

INSTANCE Info_Mod_Ulf_Pickpocket (C_INFO)
{
	npc		= Mod_753_NOV_Ulf_NW;
	nr		= 1;
	condition	= Info_Mod_Ulf_Pickpocket_Condition;
	information	= Info_Mod_Ulf_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Ulf_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Ulf_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);

	Info_AddChoice	(Info_Mod_Ulf_Pickpocket, DIALOG_BACK, Info_Mod_Ulf_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ulf_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ulf_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ulf_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);
};

FUNC VOID Info_Mod_Ulf_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);

		Info_AddChoice	(Info_Mod_Ulf_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ulf_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ulf_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ulf_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ulf_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ulf_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ulf_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ulf_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ulf_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ulf_EXIT (C_INFO)
{
	npc		= Mod_753_NOV_Ulf_NW;
	nr		= 1;
	condition	= Info_Mod_Ulf_EXIT_Condition;
	information	= Info_Mod_Ulf_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ulf_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ulf_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
