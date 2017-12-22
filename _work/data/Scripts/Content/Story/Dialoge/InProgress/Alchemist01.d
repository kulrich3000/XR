INSTANCE Info_Mod_Alchemist01_Hi (C_INFO)
{
	npc		= Mod_1739_KDF_Ordenspriester_PAT;
	nr		= 1;
	condition	= Info_Mod_Alchemist01_Hi_Condition;
	information	= Info_Mod_Alchemist01_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alchemist01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alchemist01_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Alchemist01_Hi_16_00"); //Hey, I've never seen you around here before, brother. Did you just come in from outside?
	AI_Output(hero, self, "Info_Mod_Alchemist01_Hi_15_01"); //Yeah, that's me.
	AI_Output(self, hero, "Info_Mod_Alchemist01_Hi_16_02"); //Do you have any herbs around?
	AI_Output(self, hero, "Info_Mod_Alchemist01_Hi_16_03"); //Because of the siege there is a lack of everything here and it is above all the potions that give us strength to resist the enemy's attacks at this difficult time.
	AI_Output(self, hero, "Info_Mod_Alchemist01_Hi_16_04"); //But we're running out of ingredients for them.
	AI_Output(self, hero, "Info_Mod_Alchemist01_Hi_16_05"); //So if you could get me a handful of different herbs - let's say a dozen of them each - we would at least be free from this worry for the next few weeks.

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "The monastic chemist asked me to bring him 1 dozen each of various herbs.");
};

INSTANCE Info_Mod_Alchemist01_MangelQuest (C_INFO)
{
	npc		= Mod_1739_KDF_Ordenspriester_PAT;
	nr		= 1;
	condition	= Info_Mod_Alchemist01_MangelQuest_Condition;
	information	= Info_Mod_Alchemist01_MangelQuest_Info;
	permanent	= 1;
	important	= 0;
	description	= "I got some herbs for you.";
};

FUNC INT Info_Mod_Alchemist01_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alchemist01_Hi))
	&& (Mod_Pat_PflanzenCount < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_Choices()
{
	Info_ClearChoices	(Info_Mod_Alchemist01_MangelQuest);

	Info_AddChoice	(Info_Mod_Alchemist01_MangelQuest, "Back", Info_Mod_Alchemist01_MangelQuest_BACK);

	if (Mod_Pat_Winterrute == 0)
	&& (Npc_HasItems(hero, ItPl_Winterrute) >= 12)
	{
		Info_AddChoice	(Info_Mod_Alchemist01_MangelQuest, "Winterrute", Info_Mod_Alchemist01_MangelQuest_H);
	};
	if (Mod_Pat_Heilknospe == 0)
	&& (Npc_HasItems(hero, ItPl_Heilknospe) >= 12)
	{
		Info_AddChoice	(Info_Mod_Alchemist01_MangelQuest, "Heilknospe", Info_Mod_Alchemist01_MangelQuest_G);
	};
	if (Mod_Pat_Feuerwurzel == 0)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_03) >= 12)
	{
		Info_AddChoice	(Info_Mod_Alchemist01_MangelQuest, "Feuerwurzel", Info_Mod_Alchemist01_MangelQuest_F);
	};
	if (Mod_Pat_Feuerkraut == 0)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_02) >= 12)
	{
		Info_AddChoice	(Info_Mod_Alchemist01_MangelQuest, "Feuerkraut", Info_Mod_Alchemist01_MangelQuest_E);
	};
	if (Mod_Pat_Feuernessel == 0)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 12)
	{
		Info_AddChoice	(Info_Mod_Alchemist01_MangelQuest, "Feuernessel", Info_Mod_Alchemist01_MangelQuest_D);
	};
	if (Mod_Pat_Heilwurzel == 0)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_03) >= 12)
	{
		Info_AddChoice	(Info_Mod_Alchemist01_MangelQuest, "Heilwurzel", Info_Mod_Alchemist01_MangelQuest_C);
	};
	if (Mod_Pat_Heilkraut == 0)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 12)
	{
		Info_AddChoice	(Info_Mod_Alchemist01_MangelQuest, "Heilkraut", Info_Mod_Alchemist01_MangelQuest_B);
	};
	if (Mod_Pat_Heilpflanze == 0)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 12)
	{
		Info_AddChoice	(Info_Mod_Alchemist01_MangelQuest, "Heilpflanze", Info_Mod_Alchemist01_MangelQuest_A);
	};
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Alchemist01_MangelQuest_15_00"); //I got some herbs for you.
	
	Info_Mod_Alchemist01_MangelQuest_Choices();
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_BACK()
{
	Info_ClearChoices	(Info_Mod_Alchemist01_MangelQuest);
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_Fertig()
{
	AI_Output(self, hero, "Info_Mod_Alchemist01_MangelQuest_Fertig_16_00"); //At Innos, you must have spent hours collecting all the herbs. This means that the lack of ingredients is no longer necessary.
	AI_Output(self, hero, "Info_Mod_Alchemist01_MangelQuest_Fertig_16_01"); //Here, these potions will certainly be useful for your future travels.

	B_ShowGivenThings	("Elixir of life, 2 anti-poisons and potion of recovery preserved");

	AI_Output(self, hero, "Info_Mod_Alchemist01_MangelQuest_Fertig_16_02"); //Innos keep you safe.

	CreateInvItems	(hero, ItPo_Perm_Health, 1);
	CreateInvItems	(hero, ItPo_Gegengift, 2);
	CreateInvItems	(hero, ItPo_Genesung, 1);

	B_GivePlayerXP	(500);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "The religious chemist is supplied with herbs.");

	B_StopMangel();

	Info_ClearChoices	(Info_Mod_Alchemist01_MangelQuest);
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_H()
{
	B_GiveInvItems	(hero, self, ItPl_Winterrute, 12);

	Mod_Pat_PflanzenCount += 1;

	Mod_Pat_Winterrute = 1;

	if (Mod_Pat_PflanzenCount < 5)
	{
		Info_Mod_Alchemist01_MangelQuest_Choices();
	}
	else
	{
		Info_Mod_Alchemist01_MangelQuest_Fertig();
	};
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_G()
{
	B_GiveInvItems	(hero, self, ItPl_Heilknospe, 12);

	Mod_Pat_PflanzenCount += 1;

	Mod_Pat_Heilknospe = 1;

	if (Mod_Pat_PflanzenCount < 5)
	{
		Info_Mod_Alchemist01_MangelQuest_Choices();
	}
	else
	{
		Info_Mod_Alchemist01_MangelQuest_Fertig();
	};
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_F()
{
	B_GiveInvItems	(hero, self, ItPl_Mana_Herb_03, 12);

	Mod_Pat_PflanzenCount += 1;

	Mod_Pat_Feuerwurzel = 1;

	if (Mod_Pat_PflanzenCount < 5)
	{
		Info_Mod_Alchemist01_MangelQuest_Choices();
	}
	else
	{
		Info_Mod_Alchemist01_MangelQuest_Fertig();
	};
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_E()
{
	B_GiveInvItems	(hero, self, ItPl_Mana_Herb_02, 12);

	Mod_Pat_PflanzenCount += 1;

	Mod_Pat_Feuerkraut = 1;

	if (Mod_Pat_PflanzenCount < 5)
	{
		Info_Mod_Alchemist01_MangelQuest_Choices();
	}
	else
	{
		Info_Mod_Alchemist01_MangelQuest_Fertig();
	};
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_D()
{
	B_GiveInvItems	(hero, self, ItPl_Mana_Herb_01, 12);

	Mod_Pat_PflanzenCount += 1;

	Mod_Pat_Feuernessel = 1;

	if (Mod_Pat_PflanzenCount < 5)
	{
		Info_Mod_Alchemist01_MangelQuest_Choices();
	}
	else
	{
		Info_Mod_Alchemist01_MangelQuest_Fertig();
	};
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_C()
{
	B_GiveInvItems	(hero, self, ItPl_Health_Herb_03, 12);

	Mod_Pat_PflanzenCount += 1;

	Mod_Pat_Heilwurzel = 1;

	if (Mod_Pat_PflanzenCount < 5)
	{
		Info_Mod_Alchemist01_MangelQuest_Choices();
	}
	else
	{
		Info_Mod_Alchemist01_MangelQuest_Fertig();
	};
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_B()
{
	B_GiveInvItems	(hero, self, ItPl_Health_Herb_02, 12);

	Mod_Pat_PflanzenCount += 1;

	Mod_Pat_Heilkraut = 1;

	if (Mod_Pat_PflanzenCount < 5)
	{
		Info_Mod_Alchemist01_MangelQuest_Choices();
	}
	else
	{
		Info_Mod_Alchemist01_MangelQuest_Fertig();
	};
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_A()
{
	B_GiveInvItems	(hero, self, ItPl_Health_Herb_01, 12);

	Mod_Pat_PflanzenCount += 1;

	Mod_Pat_Heilpflanze = 1;

	if (Mod_Pat_PflanzenCount < 5)
	{
		Info_Mod_Alchemist01_MangelQuest_Choices();
	}
	else
	{
		Info_Mod_Alchemist01_MangelQuest_Fertig();
	};
};

INSTANCE Info_Mod_Alchemist01_Fake (C_INFO)
{
	npc		= Mod_1739_KDF_Ordenspriester_PAT;
	nr		= 1;
	condition	= Info_Mod_Alchemist01_Fake_Condition;
	information	= Info_Mod_Alchemist01_Fake_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was there a strange magician here?";
};

FUNC INT Info_Mod_Alchemist01_Fake_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_KDF_13_Fake))
	&& (Npc_KnowsInfo(hero, Info_Mod_Alchemist01_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alchemist01_Fake_Info()
{
	AI_Output(hero, self, "Info_Mod_Alchemist01_Fake_15_00"); //Was there a strange magician here?
	AI_Output(self, hero, "Info_Mod_Alchemist01_Fake_16_01"); //A magician was just here. He said he was going to the practice rooms.

	B_LogEntry	(TOPIC_MOD_FM_SM, "Looks like he's escaped from the alchemy lab to the rest rooms.");
};

INSTANCE Info_Mod_Alchemist01_EXIT (C_INFO)
{
	npc		= Mod_1739_KDF_Ordenspriester_PAT;
	nr		= 1;
	condition	= Info_Mod_Alchemist01_EXIT_Condition;
	information	= Info_Mod_Alchemist01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alchemist01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alchemist01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
