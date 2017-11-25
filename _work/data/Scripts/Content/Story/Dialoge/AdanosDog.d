INSTANCE Info_Mod_AdanosDog_Hi (C_INFO)
{
	npc		= AdanosDog;
	nr		= 1;
	condition	= Info_Mod_AdanosDog_Hi_Condition;
	information	= Info_Mod_AdanosDog_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Uh, I don't think you're the one I want to talk to.";
};

FUNC INT Info_Mod_AdanosDog_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_AdanosDog_Kristall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AdanosDog_Hi_Info()
{
	B_Say	(hero, self, "$GODLYBOTE01");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");
};

INSTANCE Info_Mod_AdanosDog_Kristall (C_INFO)
{
	npc		= AdanosDog;
	nr		= 1;
	condition	= Info_Mod_AdanosDog_Kristall_Condition;
	information	= Info_Mod_AdanosDog_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "Uh, by any chance are you a divine messenger?";
};

FUNC INT Info_Mod_AdanosDog_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_04))
	&& (Npc_HasItems(hero, ItMi_AbsorbKristall) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AdanosDog_Kristall_Info()
{
	B_Say	(hero, self, "$GODLYBOTE02");

	B_Say_Dog_Wau();

	AI_Output(hero, self, "Info_Mod_AdanosDog_Kristall_15_02"); //Um, could you then by any chance give the crystal of our Lord Adanos new strength?

	B_Say_Dog_Wuff();

	Npc_RemoveInvItems	(hero, ItMi_AbsorbKristall, 1);
	CreateInvItems	(hero, ItMi_AbsorbKristall2, 1);

	AI_Output(hero, self, "Info_Mod_AdanosDog_Kristall_15_03"); //Thank you very much.

	B_GivePlayerXP	(2000);
};

INSTANCE Info_Mod_AdanosDog_Ende (C_INFO)
{
	npc		= AdanosDog;
	nr		= 1;
	condition	= Info_Mod_AdanosDog_Ende_Condition;
	information	= Info_Mod_AdanosDog_Ende_Info;
	permanent	= 0;
	important	= 0;
	description	= "That's all I wanted.";
};

FUNC INT Info_Mod_AdanosDog_Ende_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AdanosDog_Kristall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AdanosDog_Ende_Info()
{
	AI_Output(hero, self, "Info_Mod_AdanosDog_Ende_15_00"); //That's all I wanted.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");
};

INSTANCE Info_Mod_AdanosDog_Futter (C_INFO)
{
	npc		= AdanosDog;
	nr		= 1;
	condition	= Info_Mod_AdanosDog_Futter_Condition;
	information	= Info_Mod_AdanosDog_Futter_Info;
	permanent	= 0;
	important	= 0;
	description	= "You want a piece of meat?";
};

FUNC INT Info_Mod_AdanosDog_Futter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AdanosDog_Kristall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AdanosDog_Futter_Info()
{
	AI_Output(hero, self, "Info_Mod_AdanosDog_Futter_15_00"); //You want a piece of meat?
	
	Info_ClearChoices	(Info_Mod_AdanosDog_Futter);

	if (Npc_HasItems(hero, ItFoMuttonZombie) > 0)
	{
		Info_AddChoice	(Info_Mod_AdanosDog_Futter, "give zombie flesh", Info_Mod_AdanosDog_Futter_MuttonZombie);
	};
	if (Npc_HasItems(hero, ItFo_PfefferBacon) > 0)
	{
		Info_AddChoice	(Info_Mod_AdanosDog_Futter, "spill peppered ham", Info_Mod_AdanosDog_Futter_PfefferBacon);
	};
	if (Npc_HasItems(hero, ItFo_Mutton) > 0)
	{
		Info_AddChoice	(Info_Mod_AdanosDog_Futter, "Giving fried meat", Info_Mod_AdanosDog_Futter_Mutton);
	};
	if (Npc_HasItems(hero, ItFo_Mutton) > 0)
	{
		Info_AddChoice	(Info_Mod_AdanosDog_Futter, "Add raw meat", Info_Mod_AdanosDog_Futter_MuttonRaw);
	};
	if (Npc_HasItems(hero, ItFo_Schafswurst) > 0)
	{
		Info_AddChoice	(Info_Mod_AdanosDog_Futter, "sheep sausage", Info_Mod_AdanosDog_Futter_Schafswurst);
	};
};

FUNC VOID Info_Mod_AdanosDog_Futter_MuttonZombie()
{
	B_GiveInvItems	(hero, self, ItFoMuttonZombie, 1);

	B_KillNpc	(hero);
	
	Info_ClearChoices	(Info_Mod_AdanosDog_Futter);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");
};

FUNC VOID Info_Mod_AdanosDog_Futter_MuttonRaw()
{
	B_GiveInvItems	(hero, self, ItFo_MuttonRaw, 1);

	B_GivePlayerXP	(150);

	hero.attribute[ATR_MANA_MAX] += 2;
	hero.attribute[ATR_MANA] += 2;

	PrintScreen	("Mana + 2", -1, -1, FONT_SCREEN, 2);
	
	Info_ClearChoices	(Info_Mod_AdanosDog_Futter);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");
};

FUNC VOID Info_Mod_AdanosDog_Futter_Mutton()
{
	B_GiveInvItems	(hero, self, ItFo_Mutton, 1);

	B_GivePlayerXP	(150);

	hero.attribute[ATR_MANA_MAX] += 2;
	hero.attribute[ATR_MANA] += 2;

	PrintScreen	("Mana + 2", -1, -1, FONT_SCREEN, 2);
	
	Info_ClearChoices	(Info_Mod_AdanosDog_Futter);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");
};

FUNC VOID Info_Mod_AdanosDog_Futter_Schafswurst()
{
	B_GiveInvItems	(hero, self, ItFo_Schafswurst, 1);

	B_GivePlayerXP	(200);

	hero.attribute[ATR_MANA_MAX] += 3;
	hero.attribute[ATR_MANA] += 3;

	PrintScreen	("Mana + 3", -1, -1, FONT_SCREEN, 2);
	
	Info_ClearChoices	(Info_Mod_AdanosDog_Futter);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");
};

FUNC VOID Info_Mod_AdanosDog_Futter_PfefferBacon()
{
	B_GiveInvItems	(hero, self, ItFo_PfefferBacon, 1);

	B_GivePlayerXP	(150);

	hero.attribute[ATR_MANA_MAX] += 2;
	hero.attribute[ATR_MANA] += 2;

	PrintScreen	("Mana + 2", -1, -1, FONT_SCREEN, 2);
	
	Info_ClearChoices	(Info_Mod_AdanosDog_Futter);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");
};
