INSTANCE Info_Mod_Quentin_Hi (C_INFO)
{
	npc		= Mod_7023_BDT_Quentin_MT;
	nr		= 1;
	condition	= Info_Mod_Quentin_Hi_Condition;
	information	= Info_Mod_Quentin_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Quentin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Quentin_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Quentin_Hi_07_01"); //I'm Quentin.
};

INSTANCE Info_Mod_Quentin_AmulettWeg (C_INFO)
{
	npc		= Mod_7023_BDT_Quentin_MT;
	nr		= 1;
	condition	= Info_Mod_Quentin_AmulettWeg_Condition;
	information	= Info_Mod_Quentin_AmulettWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm supposed to try to get the amulet back in the old camp.";
};

FUNC INT Info_Mod_Quentin_AmulettWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Quentin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dexter_TimeOver))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dexter_AmulettBack))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Quentin_AmulettWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Quentin_AmulettWeg_15_00"); //I'm supposed to try to get the amulet back in the old camp.

	if (Kapitel < 4)
	{
		AI_Output(hero, self, "Info_Mod_Quentin_AmulettWeg_15_01"); //Can you tell me anything about Sabitsch that might help me?
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_02"); //I know I fucked up, which I can hardly make up for.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_03"); //But I will at least try to give you as much information as possible about Sabitsch, even though you probably already know most of it from Dexter.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_04"); //So, this Sabitsch is an incredibly fast and powerful fighter like I have never seen before. He swings his axe as it is a sword.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_05"); //Don't take it personally if I doubt you have a chance against him in the fight.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_06"); //But I am a good fighter and could not stand against him for more than a few seconds.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_07"); //Well, that reminds me, he seems to have a penchant for rings and amulets.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_08"); //He wears some of them on his body and has already greedily looked for my amulet before he could even know about the magical qualities.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_09"); //That's all I can think of. But I can still give you those spell rolls I took from a trader in the marketplace in Khorinis.

		CreateInvItems	(hero, ItSc_IceCube, 1);
		CreateInvItems	(hero, ItSc_Charm, 1);

		B_ShowGivenThings	("2 Receiving the role of saying");

		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_10"); //I hope I could at least help you with that.

		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "I learned from Quentin that he has a penchant for jewellery in addition to his fighting skills. Would that help me?");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_11"); //I know I fucked up, which I can hardly make up for.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_12"); //But at least I'll try. Here, I can give you those spell rolls I took from a merchant at the marketplace in Khorinis.

		B_ShowGivenThings	("2 Receiving the role of saying");

		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_13"); //They could be of decisive help. Good luck to you.
		AI_Output(hero, self, "Info_Mod_Quentin_AmulettWeg_15_14"); //Yeah, I can use it.

		CreateInvItems	(hero, ItSc_TrfRabbit, 2);

		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Quentin gave me a role in the transformation.");
	};
};

INSTANCE Info_Mod_Quentin_Pickpocket (C_INFO)
{
	npc		= Mod_7023_BDT_Quentin_MT;
	nr		= 1;
	condition	= Info_Mod_Quentin_Pickpocket_Condition;
	information	= Info_Mod_Quentin_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Quentin_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Quentin_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);

	Info_AddChoice	(Info_Mod_Quentin_Pickpocket, DIALOG_BACK, Info_Mod_Quentin_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Quentin_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Quentin_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Quentin_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);
};

FUNC VOID Info_Mod_Quentin_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);

		Info_AddChoice	(Info_Mod_Quentin_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Quentin_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Quentin_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Quentin_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Quentin_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Quentin_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Quentin_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Quentin_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Quentin_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Quentin_EXIT (C_INFO)
{
	npc		= Mod_7023_BDT_Quentin_MT;
	nr		= 1;
	condition	= Info_Mod_Quentin_EXIT_Condition;
	information	= Info_Mod_Quentin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Quentin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Quentin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
