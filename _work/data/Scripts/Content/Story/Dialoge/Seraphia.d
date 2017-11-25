INSTANCE Info_Mod_Seraphia_Hi (C_INFO)
{
	npc		= Mod_1622_EBR_Seraphia_MT;
	nr		= 1;
	condition	= Info_Mod_Seraphia_Hi_Condition;
	information	= Info_Mod_Seraphia_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey, you want to leave this place? Then put this on and follow me.";
};

FUNC INT Info_Mod_Seraphia_Hi_Condition()
{
	if (Mod_SLD_Nebel == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Seraphia_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Seraphia_Hi_15_00"); //Hey, you want to leave this place? Then put this on and follow me.
	AI_Output(self, hero, "Info_Mod_Seraphia_Hi_16_01"); //What do you want from me? Go away, leave me alone.
};

INSTANCE Info_Mod_Seraphia_Lagermusik (C_INFO)
{
	npc		= Mod_1622_EBR_Seraphia_MT;
	nr		= 1;
	condition	= Info_Mod_Seraphia_Lagermusik_Condition;
	information	= Info_Mod_Seraphia_Lagermusik_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you want to support Gravo's new music group?";
};

FUNC INT Info_Mod_Seraphia_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Seraphia_Lagermusik_Info()
{
	AI_Output(hero, self, "Info_Mod_Seraphia_Lagermusik_15_00"); //Do you want to support Gravo's new music group?
	AI_Output(self, hero, "Info_Mod_Seraphia_Lagermusik_16_01"); //Why not? Thorus is just showing me his cold shoulder, this uptight guy, so I've got nothing to do.
	AI_Output(self, hero, "Info_Mod_Seraphia_Lagermusik_16_02"); //And a little music is a welcome change.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATGRAVO");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Seraphia_EXIT (C_INFO)
{
	npc		= Mod_1622_EBR_Seraphia_MT;
	nr		= 1;
	condition	= Info_Mod_Seraphia_EXIT_Condition;
	information	= Info_Mod_Seraphia_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Seraphia_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Seraphia_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
