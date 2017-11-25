INSTANCE Info_Mod_Bandenchef_Hi (C_INFO)
{
	npc		= Mod_1891_NONE_Bandenchef_NW;
	nr		= 1;
	condition	= Info_Mod_Bandenchef_Hi_Condition;
	information	= Info_Mod_Bandenchef_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here you are, then.";
};

FUNC INT Info_Mod_Bandenchef_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bandenchef_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bandenchef_Hi_15_00"); //Here you are, then.
	AI_Output(self, hero, "Info_Mod_Bandenchef_Hi_07_01"); //What do you want? Do you need special items?
	AI_Output(hero, self, "Info_Mod_Bandenchef_Hi_15_02"); //Yes, your ring, please.
	AI_Output(self, hero, "Info_Mod_Bandenchef_Hi_07_03"); //What? Who are you?
	AI_Output(hero, self, "Info_Mod_Bandenchef_Hi_15_04"); //I'm Attila's agent!
	AI_Output(self, hero, "Info_Mod_Bandenchef_Hi_07_05"); //Arrrr, damn it, you son of a bitch. Your turn!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Bandenchef_EXIT (C_INFO)
{
	npc		= Mod_1891_NONE_Bandenchef_NW;
	nr		= 1;
	condition	= Info_Mod_Bandenchef_EXIT_Condition;
	information	= Info_Mod_Bandenchef_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bandenchef_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bandenchef_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
