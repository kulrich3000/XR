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
	AI_Output(self, hero, "Info_Mod_Alchemist01_Hi_16_00"); //Hej, nigdy nie widzialem Cie tutaj, bracie. Czy wlasnie przyjechales z zewnatrz?
	AI_Output(hero, self, "Info_Mod_Alchemist01_Hi_15_01"); //Tak, to ja.
	AI_Output(self, hero, "Info_Mod_Alchemist01_Hi_16_02"); //Czy masz wokól siebie jakies ziola?
	AI_Output(self, hero, "Info_Mod_Alchemist01_Hi_16_03"); //Ze wzgledu na oblezenie brakuje tu wszystkiego i to przede wszystkim eliksiry daja nam sile do opierania sie atakom nieprzyjaciela w tym trudnym czasie.
	AI_Output(self, hero, "Info_Mod_Alchemist01_Hi_16_04"); //Ale dla nich zabraklo nam skladników.
	AI_Output(self, hero, "Info_Mod_Alchemist01_Hi_16_05"); //Wiec gdybyscie mogli mnie dostac garstke róznych ziól - powiedzmy po kilkanascie - bylibysmy przynajmniej wolni od tego zmartwienia przez kilka nastepnych tygodni.

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Monastyczny chemik poprosil mnie, abym przyniósl mu po 1 tuzina ziól.");
};

INSTANCE Info_Mod_Alchemist01_MangelQuest (C_INFO)
{
	npc		= Mod_1739_KDF_Ordenspriester_PAT;
	nr		= 1;
	condition	= Info_Mod_Alchemist01_MangelQuest_Condition;
	information	= Info_Mod_Alchemist01_MangelQuest_Info;
	permanent	= 1;
	important	= 0;
	description	= "Dostalem dla Ciebie troche ziól.";
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

	Info_AddChoice	(Info_Mod_Alchemist01_MangelQuest, "Poprzedni", Info_Mod_Alchemist01_MangelQuest_BACK);

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
	AI_Output(hero, self, "Info_Mod_Alchemist01_MangelQuest_15_00"); //Dostalem dla Ciebie troche ziól.
	
	Info_Mod_Alchemist01_MangelQuest_Choices();
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_BACK()
{
	Info_ClearChoices	(Info_Mod_Alchemist01_MangelQuest);
};

FUNC VOID Info_Mod_Alchemist01_MangelQuest_Fertig()
{
	AI_Output(self, hero, "Info_Mod_Alchemist01_MangelQuest_Fertig_16_00"); //W Innosie musisz spedzic wiele godzin, zbierajac wszystkie ziola. Oznacza to, ze brak skladników nie jest juz konieczny.
	AI_Output(self, hero, "Info_Mod_Alchemist01_MangelQuest_Fertig_16_01"); //Te eliksiry z pewnoscia przydadza sie w przyszlych podrózach.

	B_ShowGivenThings	("Eliksir zycia, 2 leki przeciwzapalne i eliksir regeneracji zachowany");

	AI_Output(self, hero, "Info_Mod_Alchemist01_MangelQuest_Fertig_16_02"); //Innos zapewnia Ci bezpieczenstwo.

	CreateInvItems	(hero, ItPo_Perm_Health, 1);
	CreateInvItems	(hero, ItPo_Gegengift, 2);
	CreateInvItems	(hero, ItPo_Genesung, 1);

	B_GivePlayerXP	(500);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Ziolami zaopatruje sie religijna apteke.");

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
	description	= "Czy byl tu jakis dziwny mag?";
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
	AI_Output(hero, self, "Info_Mod_Alchemist01_Fake_15_00"); //Czy byl tu jakis dziwny mag?
	AI_Output(self, hero, "Info_Mod_Alchemist01_Fake_16_01"); //Wlasnie tutaj byl magik. Powiedzial, ze idzie do gabinetów treningowych.

	B_LogEntry	(TOPIC_MOD_FM_SM, "Wyglada jak uciekl z laboratorium alchemicznego do pokojów wypoczynkowych.");
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
