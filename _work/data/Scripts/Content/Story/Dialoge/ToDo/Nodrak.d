INSTANCE Info_Mod_Nodrak_Hi (C_INFO)
{
	npc		= Mod_1275_SLD_Nodrak_MT;
	nr		= 1;
	condition	= Info_Mod_Nodrak_Hi_Condition;
	information	= Info_Mod_Nodrak_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nodrak_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nodrak_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Nodrak_Hi_08_00"); //I'm Nodrak, what do you want?
};

INSTANCE Info_Mod_Nodrak_Infos (C_INFO)
{
	npc		= Mod_1275_SLD_Nodrak_MT;
	nr		= 1;
	condition	= Info_Mod_Nodrak_Infos_Condition;
	information	= Info_Mod_Nodrak_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'd like to know something about you.";
};

FUNC INT Info_Mod_Nodrak_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nodrak_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torwache_NL_01_GardistenInfos))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Nodrak_BierInfos))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nodrak_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Nodrak_Infos_15_00"); //I'd like to know something about you.
	AI_Output(self, hero, "Info_Mod_Nodrak_Infos_08_01"); //I'm not in the mood today, come back tomorrow.
};

INSTANCE Info_Mod_Nodrak_BierInfos (C_INFO)
{
	npc		= Mod_1275_SLD_Nodrak_MT;
	nr		= 1;
	condition	= Info_Mod_Nodrak_BierInfos_Condition;
	information	= Info_Mod_Nodrak_BierInfos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here, I want to buy you a beer.";
};

FUNC INT Info_Mod_Nodrak_BierInfos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nodrak_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torwache_NL_01_GardistenInfos))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	&& (Npc_HasItems(hero, ItFo_Beer) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nodrak_BierInfos_Info()
{
	AI_Output(hero, self, "Info_Mod_Nodrak_BierInfos_15_00"); //Here, I want to buy you a beer.

	B_GiveInvItems	(hero, self, ItFo_Beer, 1);
	B_UseItem	(self, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_01"); //Hey, thanks. How did this happen?
	AI_Output(hero, self, "Info_Mod_Nodrak_BierInfos_15_02"); //The gatekeeper said you were shot at on guard the night before last.
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_03"); //That's right, fucking bastards. I almost got caught. If I hadn't stumbled by chance....
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_04"); //I also saw exactly how they disappeared in the dark again, those cowards! When the reinforcements arrived, they were already over all the mountains!
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_05"); //But I couldn't do anything with an arrow in my arm!
	AI_Output(hero, self, "Info_Mod_Nodrak_BierInfos_15_06"); //Where did they run off to?
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_07"); //Towards the Old Mine. As soon as I can wield a sword again, I'll make them pay for whoever it was!
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_08"); //If you meet them before I do, give them one of mine, those filthy cowards.
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_09"); //They must be bandits or those rangers. Who else uses those arrows in this valley, huh?
	AI_Output(hero, self, "Info_Mod_Nodrak_BierInfos_15_10"); //All clear.
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_11"); //Take care of yourself.

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "The attackers who attacked Nodrak have fled towards the old mine....");

	Wld_InsertNpc	(Mod_1972_GRD_Hecta_MT, "OC1");
	Wld_InsertNpc	(Mod_1973_GRD_Achil_MT, "OC1");
};

INSTANCE Info_Mod_Nodrak_Pickpocket (C_INFO)
{
	npc		= Mod_1275_SLD_Nodrak_MT;
	nr		= 1;
	condition	= Info_Mod_Nodrak_Pickpocket_Condition;
	information	= Info_Mod_Nodrak_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Nodrak_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 30);
};

FUNC VOID Info_Mod_Nodrak_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);

	Info_AddChoice	(Info_Mod_Nodrak_Pickpocket, DIALOG_BACK, Info_Mod_Nodrak_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Nodrak_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Nodrak_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Nodrak_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);
};

FUNC VOID Info_Mod_Nodrak_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);

		Info_AddChoice	(Info_Mod_Nodrak_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Nodrak_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Nodrak_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Nodrak_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Nodrak_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Nodrak_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Nodrak_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Nodrak_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Nodrak_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Nodrak_EXIT (C_INFO)
{
	npc		= Mod_1275_SLD_Nodrak_MT;
	nr		= 1;
	condition	= Info_Mod_Nodrak_EXIT_Condition;
	information	= Info_Mod_Nodrak_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nodrak_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nodrak_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
