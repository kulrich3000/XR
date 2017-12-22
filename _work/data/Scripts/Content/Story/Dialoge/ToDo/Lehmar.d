INSTANCE Info_Mod_Lehmar_Hi (C_INFO)
{
	npc		= Mod_537_NONE_Lehmar_NW;
	nr		= 1;
	condition	= Info_Mod_Lehmar_Hi_Condition;
	information	= Info_Mod_Lehmar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Lehmar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lehmar_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Lehmar_Hi_09_01"); //I'm Lehmar, the money lender.
};

INSTANCE Info_Mod_Lehmar_Kleinod (C_INFO)
{
	npc		= Mod_537_NONE_Lehmar_NW;
	nr		= 1;
	condition	= Info_Mod_Lehmar_Kleinod_Condition;
	information	= Info_Mod_Lehmar_Kleinod_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got a package for you.";
};

FUNC INT Info_Mod_Lehmar_Kleinod_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skip_Francis))
	&& (Npc_HasItems(hero, Mod_KleinodPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lehmar_Kleinod_Info()
{
	AI_Output(hero, self, "Info_Mod_Lehmar_Kleinod_15_00"); //I got a package for you.
	
	B_GiveInvItems	(hero, self, Mod_KleinodPaket, 1);

	AI_Output(self, hero, "Info_Mod_Lehmar_Kleinod_09_01"); //It's about time.
	AI_Output(self, hero, "Info_Mod_Lehmar_Kleinod_09_02"); //Here's your gold.

	CreateInvItems	(self, ItMi_Gold, 500);
	B_GiveInvItems	(self, hero, ItMi_Gold, 500);
};

INSTANCE Info_Mod_Lehmar_Statue (C_INFO)
{
	npc		= Mod_537_NONE_Lehmar_NW;
	nr		= 1;
	condition	= Info_Mod_Lehmar_Statue_Condition;
	information	= Info_Mod_Lehmar_Statue_Info;
	permanent	= 0;
	important	= 0;
	description	= "Thorben said you had his statue of Inno.";
};

FUNC INT Info_Mod_Lehmar_Statue_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thorben_Lehrling))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lehmar_Hi))
	&& (Npc_HasItems(self, ItMi_LostInnosStatue_Daron) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lehmar_Statue_Info()
{
	AI_Output(hero, self, "Info_Mod_Lehmar_Statue_15_00"); //Thorben said you had his statue of Inno.
	AI_Output(self, hero, "Info_Mod_Lehmar_Statue_09_01"); //If you mean the statue that was in the trunk I got from him, then I have it.
};

INSTANCE Info_Mod_Lehmar_Statue2 (C_INFO)
{
	npc		= Mod_537_NONE_Lehmar_NW;
	nr		= 1;
	condition	= Info_Mod_Lehmar_Statue2_Condition;
	information	= Info_Mod_Lehmar_Statue2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Will you give me the statue?";
};

FUNC INT Info_Mod_Lehmar_Statue2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lehmar_Statue))
	&& (Npc_HasItems(self, ItMi_LostInnosStatue_Daron) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lehmar_Statue2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lehmar_Statue2_15_00"); //Will you give me the statue?
	AI_Output(self, hero, "Info_Mod_Lehmar_Statue2_09_01"); //If you bring me the 100 gold coins Thorben still owes me.
};

INSTANCE Info_Mod_Lehmar_Statue3 (C_INFO)
{
	npc		= Mod_537_NONE_Lehmar_NW;
	nr		= 1;
	condition	= Info_Mod_Lehmar_Statue3_Condition;
	information	= Info_Mod_Lehmar_Statue3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the gold.";
};

FUNC INT Info_Mod_Lehmar_Statue3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lehmar_Statue2))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	&& (Npc_HasItems(self, ItMi_LostInnosStatue_Daron) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lehmar_Statue3_Info()
{
	AI_Output(hero, self, "Info_Mod_Lehmar_Statue3_15_00"); //Here's the gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	AI_Output(self, hero, "Info_Mod_Lehmar_Statue3_09_01"); //Here's the statue.

	B_GiveInvItems	(self, hero, ItMi_LostInnosStatue_Daron, 1);

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Lehmar_Leihen (C_INFO)
{
	npc		= Mod_537_NONE_Lehmar_NW;
	nr		= 1;
	condition	= Info_Mod_Lehmar_Leihen_Condition;
	information	= Info_Mod_Lehmar_Leihen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can you lend me some money?";
};

FUNC INT Info_Mod_Lehmar_Leihen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lehmar_Hi))
	&& (Mod_Geliehen == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lehmar_Leihen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lehmar_Leihen_15_00"); //Can you lend me some money?
	AI_Output(self, hero, "Info_Mod_Lehmar_Leihen_09_01"); //How much do you want?

	Info_ClearChoices	(Info_Mod_Lehmar_Leihen);

	Info_AddChoice	(Info_Mod_Lehmar_Leihen, DIALOG_BACK, Info_Mod_Lehmar_Leihen_BACK);
	Info_AddChoice	(Info_Mod_Lehmar_Leihen, "1000 Gold", Info_Mod_Lehmar_Leihen_1000);
	Info_AddChoice	(Info_Mod_Lehmar_Leihen, "500 Gold", Info_Mod_Lehmar_Leihen_500);
	Info_AddChoice	(Info_Mod_Lehmar_Leihen, "200 Gold", Info_Mod_Lehmar_Leihen_200);
	Info_AddChoice	(Info_Mod_Lehmar_Leihen, "100 Gold", Info_Mod_Lehmar_Leihen_100);
};

FUNC VOID Info_Mod_Lehmar_Leihen_BACK()
{
	Info_ClearChoices	(Info_Mod_Lehmar_Leihen);
};

FUNC VOID Info_Mod_Lehmar_Leihen_1000()
{
	if (Mod_HatGoldGeliehen < 3)
	{
		AI_Output(self, hero, "Info_Mod_Lehmar_Leihen_1000_09_00"); //A THOUSAND GOLD COINS!!!!
		AI_Output(self, hero, "Info_Mod_Lehmar_Leihen_1000_09_01"); //I'll give you 200 gold coins, that's all. And don't forget to pay it back.
	
		B_GiveInvItems	(self, hero, ItMi_Gold, 200);

		Mod_LeihBetrag = 220;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lehmar_Leihen_1000_09_02"); //That's a hell of a lot of gold. But you've returned my gold to me so far, so I'll give you the gold.
		AI_Output(self, hero, "Info_Mod_Lehmar_Leihen_1000_09_03"); //Here's a thousand gold coins. And don't forget to pay it back.
	
		B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

		Mod_LeihBetrag = 1100;
	};

	Mod_Geliehen = TRUE;
	Mod_HatGoldGeliehen += 1;

	Info_ClearChoices	(Info_Mod_Lehmar_Leihen);
};

FUNC VOID Info_Mod_Lehmar_Leihen_500()
{
	AI_Output(self, hero, "Info_Mod_Lehmar_Leihen_500_09_00"); //500 gold coins. I don't think you'll ever be able to pay it back, but I'll give you the money.
	AI_Output(self, hero, "Info_Mod_Lehmar_Leihen_500_09_01"); //And don't forget to pay it back.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	Mod_LeihBetrag = 550;
	Mod_Geliehen = TRUE;
	Mod_HatGoldGeliehen += 1;

	Info_ClearChoices	(Info_Mod_Lehmar_Leihen);
};

FUNC VOID Info_Mod_Lehmar_Leihen_200()
{
	AI_Output(self, hero, "Info_Mod_Lehmar_Leihen_200_09_00"); //200 gold coins isn't much. And don't forget to pay it back.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);
	
	Mod_LeihBetrag = 220;
	Mod_Geliehen = TRUE;
	Mod_HatGoldGeliehen += 1;

	Info_ClearChoices	(Info_Mod_Lehmar_Leihen);
};

FUNC VOID Info_Mod_Lehmar_Leihen_100()
{
	AI_Output(self, hero, "Info_Mod_Lehmar_Leihen_100_09_00"); //100 gold coins isn't much. Don't forget to pay it back.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	Mod_LeihBetrag = 110;
	Mod_Geliehen = TRUE;
	Mod_HatGoldGeliehen += 1;

	Info_ClearChoices	(Info_Mod_Lehmar_Leihen);
};

INSTANCE Info_Mod_Lehmar_Zurueckzahlen (C_INFO)
{
	npc		= Mod_537_NONE_Lehmar_NW;
	nr		= 1;
	condition	= Info_Mod_Lehmar_Zurueckzahlen_Condition;
	information	= Info_Mod_Lehmar_Zurueckzahlen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to pay you back your gold.";
};

FUNC INT Info_Mod_Lehmar_Zurueckzahlen_Condition()
{
	if (Mod_Geliehen == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lehmar_Zurueckzahlen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lehmar_Zurueckzahlen_15_00"); //I want to pay you back your gold.
	AI_Output(hero, self, "Info_Mod_Lehmar_Zurueckzahlen_15_01"); //How much do I have to pay you?.

	if (Mod_Leihbetrag == 1100)
	{
		AI_Output(self, hero, "Info_Mod_Lehmar_Zurueckzahlen_09_02"); //1100 gold coins.
	}
	else if (Mod_Leihbetrag == 550)
	{
		AI_Output(self, hero, "Info_Mod_Lehmar_Zurueckzahlen_09_03"); //550 gold coins.
	}
	else if (Mod_Leihbetrag == 220)
	{
		AI_Output(self, hero, "Info_Mod_Lehmar_Zurueckzahlen_09_04"); //220 gold coins.
	}
	else if (Mod_Leihbetrag == 110)
	{
		AI_Output(self, hero, "Info_Mod_Lehmar_Zurueckzahlen_09_05"); //110 gold coins.
	};

	Info_ClearChoices	(Info_Mod_Lehmar_Zurueckzahlen);

	Info_AddChoice	(Info_Mod_Lehmar_Zurueckzahlen, "I don't have enough gold.", Info_Mod_Lehmar_Zurueckzahlen_Nein);

	if (Npc_HasItems(hero, ItMi_Gold) >= Mod_Leihbetrag)
	{
		Info_AddChoice	(Info_Mod_Lehmar_Zurueckzahlen, "Here's your gold.", Info_Mod_Lehmar_Zurueckzahlen_Ja);
	};
};

FUNC VOID Info_Mod_Lehmar_Zurueckzahlen_Nein()
{
	AI_Output(hero, self, "Info_Mod_Lehmar_Zurueckzahlen_Nein_15_00"); //I don't have enough gold.
	AI_Output(self, hero, "Info_Mod_Lehmar_Zurueckzahlen_Nein_09_01"); //Then get it and don't bother me.

	Info_ClearChoices	(Info_Mod_Lehmar_Zurueckzahlen);
};

FUNC VOID Info_Mod_Lehmar_Zurueckzahlen_Ja()
{
	AI_Output(hero, self, "Info_Mod_Lehmar_Zurueckzahlen_Ja_15_00"); //Here's your gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, Mod_Leihbetrag);
	Npc_RemoveInvItems	(self, ItMi_Gold, Mod_Leihbetrag);

	AI_Output(self, hero, "Info_Mod_Lehmar_Zurueckzahlen_Ja_09_01"); //Well, if you need gold again, come to me.

	Mod_Geliehen = FALSE;

	Mod_Leihbetrag = 0;

	Info_ClearChoices	(Info_Mod_Lehmar_Zurueckzahlen);
};

INSTANCE Info_Mod_Lehmar_Pickpocket (C_INFO)
{
	npc		= Mod_537_NONE_Lehmar_NW;
	nr		= 1;
	condition	= Info_Mod_Lehmar_Pickpocket_Condition;
	information	= Info_Mod_Lehmar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_210;
};

FUNC INT Info_Mod_Lehmar_Pickpocket_Condition()
{
	C_Beklauen	(200, ItMi_Gold, 166);
};

FUNC VOID Info_Mod_Lehmar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lehmar_Pickpocket);

	Info_AddChoice	(Info_Mod_Lehmar_Pickpocket, DIALOG_BACK, Info_Mod_Lehmar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lehmar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lehmar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lehmar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lehmar_Pickpocket);
};

FUNC VOID Info_Mod_Lehmar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lehmar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lehmar_Pickpocket);

		Info_AddChoice	(Info_Mod_Lehmar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lehmar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lehmar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lehmar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lehmar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lehmar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lehmar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lehmar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lehmar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lehmar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lehmar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lehmar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lehmar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lehmar_EXIT (C_INFO)
{
	npc		= Mod_537_NONE_Lehmar_NW;
	nr		= 1;
	condition	= Info_Mod_Lehmar_EXIT_Condition;
	information	= Info_Mod_Lehmar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lehmar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lehmar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
