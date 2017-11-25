INSTANCE Info_Mod_AdanosDog_Hi (C_INFO)
{
	npc		= AdanosDog;
	nr		= 1;
	condition	= Info_Mod_AdanosDog_Hi_Condition;
	information	= Info_Mod_AdanosDog_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Uh, nie sadze, zebys byl tym, z kim chce porozmawiac.";
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
	description	= "Ach, czy przez przypadek jestes boskim poslannikiem?";
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

	AI_Output(hero, self, "Info_Mod_AdanosDog_Kristall_15_02"); //Um, czy móglbys wiec przez przypadek dac krysztalowi Pana Adanosa nowa sile?

	B_Say_Dog_Wuff();

	Npc_RemoveInvItems	(hero, ItMi_AbsorbKristall, 1);
	CreateInvItems	(hero, ItMi_AbsorbKristall2, 1);

	AI_Output(hero, self, "Info_Mod_AdanosDog_Kristall_15_03"); //Dziekuje bardzo.

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
	description	= "To wszystko, czego chcialem.";
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
	AI_Output(hero, self, "Info_Mod_AdanosDog_Ende_15_00"); //To wszystko, czego chcialem.

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
	description	= "Chcesz kawalek miesa?";
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
	AI_Output(hero, self, "Info_Mod_AdanosDog_Futter_15_00"); //Chcesz kawalek miesa?
	
	Info_ClearChoices	(Info_Mod_AdanosDog_Futter);

	if (Npc_HasItems(hero, ItFoMuttonZombie) > 0)
	{
		Info_AddChoice	(Info_Mod_AdanosDog_Futter, "nadac miazsz zombie", Info_Mod_AdanosDog_Futter_MuttonZombie);
	};
	if (Npc_HasItems(hero, ItFo_PfefferBacon) > 0)
	{
		Info_AddChoice	(Info_Mod_AdanosDog_Futter, "wyciek", Info_Mod_AdanosDog_Futter_PfefferBacon);
	};
	if (Npc_HasItems(hero, ItFo_Mutton) > 0)
	{
		Info_AddChoice	(Info_Mod_AdanosDog_Futter, "Podawanie miesa smazonego", Info_Mod_AdanosDog_Futter_Mutton);
	};
	if (Npc_HasItems(hero, ItFo_Mutton) > 0)
	{
		Info_AddChoice	(Info_Mod_AdanosDog_Futter, "Dodac surowe mieso", Info_Mod_AdanosDog_Futter_MuttonRaw);
	};
	if (Npc_HasItems(hero, ItFo_Schafswurst) > 0)
	{
		Info_AddChoice	(Info_Mod_AdanosDog_Futter, "parówki owcze", Info_Mod_AdanosDog_Futter_Schafswurst);
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
