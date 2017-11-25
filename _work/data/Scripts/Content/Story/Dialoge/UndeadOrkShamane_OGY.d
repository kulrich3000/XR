INSTANCE Info_Mod_UndeadOrkShamane_OGY_Hi (C_INFO)
{
	npc		= Mod_10033_ORC_UndeadShamane_OGY;
	nr		= 1;
	condition	= Info_Mod_UndeadOrkShamane_OGY_Hi_Condition;
	information	= Info_Mod_UndeadOrkShamane_OGY_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UndeadOrkShamane_OGY_Hi_Condition()
{
	if (Mod_NL_UOS == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UndeadOrkShamane_OGY_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_UndeadOrkShamane_OGY_Hi_15_00"); //Milosnik morfologii. Dlugie, omijales mój dostep uciekajac tchórzliwie. Teraz jestem gonna cie raz na zawsze zabic.
	AI_Output(self, hero, "Info_Mod_UndeadOrkShamane_OGY_Hi_18_01"); //Byc moze mnie zaroczylas, ale nie bedziesz mógl przekroczyc mojej bariery.
	AI_Output(self, hero, "Info_Mod_UndeadOrkShamane_OGY_Hi_18_02"); //I prosze wystrzegac sie prób skrzywdzenia mnie lub moich pracowników, poniewaz w przeciwnym razie bedziemy tu mordowac zakladników.

	B_LogEntry	(TOPIC_MOD_SLD_FRIEDHOF, "Och, wielki. Teraz umiescilem w koncu rozkladajacego sie szamana, a teraz jego bariera i zakladnicy uniemozliwiaja mi w koncu ukonczenie go i zdobycie ksiazki. Przy takiej czarnej magii powinienem albo zasiegnac porady eksperta, albo powinienem podjac bezkompromisowe dzialania wszelkimi srodkami, jakimi dysponuje. Nigdy nie znasz......");

	AI_StopProcessInfos	(self);

	Mod_NL_UOS = 6;

	self.flags = 0;
};
