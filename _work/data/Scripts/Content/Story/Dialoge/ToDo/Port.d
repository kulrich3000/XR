INSTANCE Info_Mod_Port_Hi (C_INFO)
{
	npc		= Mod_4027_NONE_Port_NW;
	nr		= 1;
	condition	= Info_Mod_Port_Hi_Condition;
	information	= Info_Mod_Port_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Port_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Port_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Port_Hi_01_01"); //(shaky) I don't know.... Can I trust you?
	AI_Output(hero, self, "Info_Mod_Port_Hi_15_02"); //So you're Johannes Port?
	AI_Output(self, hero, "Info_Mod_Port_Hi_01_03"); //Maybe.... (quietly) perhaps...

	Moe_KnowsPort = 3;

	Info_ClearChoices	(Info_Mod_Port_Hi);

	Info_AddChoice	(Info_Mod_Port_Hi, "I'll kill you!", Info_Mod_Port_Hi_B);
	Info_AddChoice	(Info_Mod_Port_Hi, "I'm looking for you. Everybody's looking for you.", Info_Mod_Port_Hi_A);
};

FUNC VOID Info_Mod_Port_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Port_Hi_B_15_00"); //I'll kill you!
	AI_Output(self, hero, "Info_Mod_Port_Hi_B_01_01"); //(pleading) No, please don't!

	Info_ClearChoices	(Info_Mod_Port_Hi);

	Info_AddChoice	(Info_Mod_Port_Hi, "I'm kidding.", Info_Mod_Port_Hi_D);
	Info_AddChoice	(Info_Mod_Port_Hi, "Yes, it is. You stand in the way of my wealth.", Info_Mod_Port_Hi_C);
};

FUNC VOID Info_Mod_Port_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Port_Hi_D_15_00"); //I'm kidding.

	Info_ClearChoices	(Info_Mod_Port_Hi);

	Info_AddChoice	(Info_Mod_Port_Hi, "I'm looking for you. Everybody's looking for you.", Info_Mod_Port_Hi_A);
};

FUNC VOID Info_Mod_Port_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Port_Hi_C_15_00"); //Yes, it is. You stand in the way of my wealth.

	Info_ClearChoices	(Info_Mod_Port_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Port_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Port_Hi_A_15_00"); //I'm looking for you. Everybody's looking for you.
	AI_Output(self, hero, "Info_Mod_Port_Hi_A_01_01"); //I noticed that! They're trying to kill me!
	AI_Output(hero, self, "Info_Mod_Port_Hi_A_15_02"); //Who? Why?
	AI_Output(self, hero, "Info_Mod_Port_Hi_A_01_03"); //I don't know who. But I know his reasons. His reasons that led him to sink the ship.
	AI_Output(hero, self, "Info_Mod_Port_Hi_A_15_04"); //And what are those reasons?
	AI_Output(self, hero, "Info_Mod_Port_Hi_A_01_05"); //I'm not telling you that. Why should I trust you? But... I'd be grateful for something edible...
	AI_Output(hero, self, "Info_Mod_Port_Hi_A_15_06"); //Come with me, I'll take you to an acquaintance, a merchant. You'll get something to eat there.
	AI_Output(self, hero, "Info_Mod_Port_Hi_A_01_07"); //Am I safe there?
	AI_Output(hero, self, "Info_Mod_Port_Hi_A_15_08"); //Certainly.
	AI_Output(self, hero, "Info_Mod_Port_Hi_A_01_09"); //All right, I'll follow you.

	Info_ClearChoices	(Info_Mod_Port_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOBRAHIM");

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_MOE_PORT, "I found Johannes Port. Now all I have to do is take him to Brahim...");
};

INSTANCE Info_Mod_Port_EXIT (C_INFO)
{
	npc		= Mod_4027_NONE_Port_NW;
	nr		= 1;
	condition	= Info_Mod_Port_EXIT_Condition;
	information	= Info_Mod_Port_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Port_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Port_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
