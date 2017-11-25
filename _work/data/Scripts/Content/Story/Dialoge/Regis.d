INSTANCE Info_Mod_Regis_Hi (C_INFO)
{
	npc		= Mod_530_NONE_Regis_NW;
	nr		= 1;
	condition	= Info_Mod_Regis_Hi_Condition;
	information	= Info_Mod_Regis_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Regis_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Regis_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Regis_Hi_13_01"); //I'm Regis. I know best what's going on in town.
};

INSTANCE Info_Mod_Regis_Paladine (C_INFO)
{
	npc		= Mod_530_NONE_Regis_NW;
	nr		= 1;
	condition	= Info_Mod_Regis_Paladine_Condition;
	information	= Info_Mod_Regis_Paladine_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you know about the Paladins?";
};

FUNC INT Info_Mod_Regis_Paladine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Regis_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Regis_Paladine_Info()
{
	AI_Output(hero, self, "Info_Mod_Regis_Paladine_15_00"); //What do you know about the Paladins?
	AI_Output(self, hero, "Info_Mod_Regis_Paladine_13_01"); //At first they came to Khorinis only occasionally to throw a prisoner into the penal colony or to negotiate with the convicts.
	AI_Output(self, hero, "Info_Mod_Regis_Paladine_13_02"); //But after the barrier collapsed, the king sent a troop here to protect the city.
	AI_Output(self, hero, "Info_Mod_Regis_Paladine_13_03"); //Since then, they've taken control of the city. They fear that the mercenaries from the Minental will take over the city.
	AI_Output(self, hero, "Info_Mod_Regis_Paladine_13_04"); //The leader of the mercenaries is said to have had a problem with the king at that time and is therefore against the paladins and tries to eliminate them with his mercenaries in order to sail with the paladin ship to Myrtana and take revenge on the king.
};

INSTANCE Info_Mod_Regis_MehrPaladine (C_INFO)
{
	npc		= Mod_530_NONE_Regis_NW;
	nr		= 1;
	condition	= Info_Mod_Regis_MehrPaladine_Condition;
	information	= Info_Mod_Regis_MehrPaladine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you tell me more about the Paladins?";
};

FUNC INT Info_Mod_Regis_MehrPaladine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Regis_Paladine))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Regis_MehrPaladine_Info()
{
	AI_Output(hero, self, "Info_Mod_Regis_MehrPaladine_15_00"); //Can you tell me more about the Paladins?
	AI_Output(self, hero, "Info_Mod_Regis_MehrPaladine_13_01"); //I told you everything I know.
	AI_Output(self, hero, "Info_Mod_Regis_MehrPaladine_13_02"); //If you want to know more, you should talk to the paladins in the Upper Quarter.
};

INSTANCE Info_Mod_Regis_Flugblaetter (C_INFO)
{
	npc		= Mod_530_NONE_Regis_NW;
	nr		= 1;
	condition	= Info_Mod_Regis_Flugblaetter_Condition;
	information	= Info_Mod_Regis_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Regis_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 10)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Regis_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Regis_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");
	
	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Regis_Flugblaetter_13_01"); //Thanks for the paper. even though I've been sitting around his store all day anyway.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Regis_Pickpocket (C_INFO)
{
	npc		= Mod_530_NONE_Regis_NW;
	nr		= 1;
	condition	= Info_Mod_Regis_Pickpocket_Condition;
	information	= Info_Mod_Regis_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Regis_Pickpocket_Condition()
{
	C_Beklauen	(56, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Regis_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Regis_Pickpocket);

	Info_AddChoice	(Info_Mod_Regis_Pickpocket, DIALOG_BACK, Info_Mod_Regis_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Regis_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Regis_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Regis_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Regis_Pickpocket);
};

FUNC VOID Info_Mod_Regis_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Regis_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Regis_Pickpocket);

		Info_AddChoice	(Info_Mod_Regis_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Regis_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Regis_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Regis_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Regis_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Regis_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Regis_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Regis_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Regis_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Regis_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Regis_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Regis_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Regis_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Regis_EXIT (C_INFO)
{
	npc		= Mod_530_NONE_Regis_NW;
	nr		= 1;
	condition	= Info_Mod_Regis_EXIT_Condition;
	information	= Info_Mod_Regis_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Regis_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Regis_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
