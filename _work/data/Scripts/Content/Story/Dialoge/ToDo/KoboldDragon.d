INSTANCE Info_Mod_KoboldDragon_Hi (C_INFO)
{
	npc		= Kobold_11010_NW;
	nr		= 1;
	condition	= Info_Mod_KoboldDragon_Hi_Condition;
	information	= Info_Mod_KoboldDragon_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_KoboldDragon_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_KoboldDragon_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_KoboldDragon_Hi_20_00"); //Ahh, it's you. My master is already expecting you. He knows of your deeds, and it would be his pleasure to speak to you.

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "The goblin master, probably a dragon, knows what I've done? Just wondering which one...");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DRAGON");
};

INSTANCE Info_Mod_KoboldDragon_Stab (C_INFO)
{
	npc		= Kobold_11010_NW;
	nr		= 1;
	condition	= Info_Mod_KoboldDragon_Stab_Condition;
	information	= Info_Mod_KoboldDragon_Stab_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_KoboldDragon_Stab_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Snorre))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_KoboldDragon_Stab_Info()
{
	AI_Output(self, hero, "Info_Mod_KoboldDragon_Stab_20_00"); //Phew, all the treasures don't weigh so little...
	AI_Output(self, hero, "Info_Mod_KoboldDragon_Stab_20_01"); //What?! You here, man?! What do you want?

	Info_ClearChoices	(Info_Mod_KoboldDragon_Stab);

	Info_AddChoice	(Info_Mod_KoboldDragon_Stab, "A golden stick you probably took with you.", Info_Mod_KoboldDragon_Stab_B);
	Info_AddChoice	(Info_Mod_KoboldDragon_Stab, "Kill you.", Info_Mod_KoboldDragon_Stab_A);
};

FUNC VOID Info_Mod_KoboldDragon_Stab_B()
{
	AI_Output(hero, self, "Info_Mod_KoboldDragon_Stab_B_15_00"); //A golden stick you probably took with you.
	AI_Output(self, hero, "Info_Mod_KoboldDragon_Stab_B_20_01"); //Golden staff? You should have it.

	B_GiveInvItems	(self, hero, ItMw_PyrmansStab, 1);

	AI_Output(self, hero, "Info_Mod_KoboldDragon_Stab_B_20_02"); //So I am less laden and know on my side the supposed servant of my former master.
	AI_Output(self, hero, "Info_Mod_KoboldDragon_Stab_B_20_03"); //Good luck, man.

	B_GivePlayerXP	(200);

	Info_ClearChoices	(Info_Mod_KoboldDragon_Stab);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_KoboldDragon_Stab_A()
{
	AI_Output(hero, self, "Info_Mod_KoboldDragon_Stab_A_15_00"); //Kill you.
	AI_Output(self, hero, "Info_Mod_KoboldDragon_Stab_A_20_01"); //Nasty human being... but as you like. You chose your own ticket.

	CreateInvItems	(self, ItMw_PyrmansStab, 1);
	CreateInvItems	(self, ItMi_Gold, 1436);
	CreateInvItems	(self, ItMi_GoldCup, 3);
	CreateInvItems	(self, ItMi_GoldPlate, 5);
	CreateInvItems	(self, ItMi_SilverCup, 15);

	Info_ClearChoices	(Info_Mod_KoboldDragon_Stab);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_KoboldDragon_EXIT (C_INFO)
{
	npc		= Kobold_11010_NW;
	nr		= 1;
	condition	= Info_Mod_KoboldDragon_EXIT_Condition;
	information	= Info_Mod_KoboldDragon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_KoboldDragon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_KoboldDragon_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
