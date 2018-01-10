INSTANCE Info_Mod_Flaemar_Hi (C_INFO)
{
	npc		= Mod_7791_SFB_Flaemar_PAT;
	nr		= 1;
	condition	= Info_Mod_Flaemar_Hi_Condition;
	information	= Info_Mod_Flaemar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Flaemar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Flaemar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Flaemar_Hi_02_00"); //Hej, nigdy nie widzialem Cie tutaj. Czy jestes z zewnatrz?
	AI_Output(hero, self, "Info_Mod_Flaemar_Hi_15_01"); //Tak, dlaczego?
	AI_Output(self, hero, "Info_Mod_Flaemar_Hi_02_02"); //Masz jakies lodygi lub dobry lyk piwa i haftu?
	AI_Output(self, hero, "Info_Mod_Flaemar_Hi_02_03"); //(discontent) Kopalnia, tutaj w klasztorze jest naprawde wszystko dla tylka, poniewaz oblezenie naprawde wszystko - nie ma tam handlarzy, czy cos innego dzieje sie dalej - i jedyne, co maja tutaj, aby pokonac czas jakos martwy, to klasztorne wino...... i staja sie coraz bardziej skape.....

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Flämar i jego odkrywcy rozpaczliwie szukaja ziól i alkoholu, aby sie rozproszyc.");
};

FUNC VOID Info_Mod_Flaemar_MangelQuest_Fertig()
{
	AI_Output(self, hero, "Info_Mod_Flaemar_MangelQuest_Fertig_02_00"); //Tak czy owak, teraz mamy wszystko, czego mozna sobie zyczyc.
	AI_Output(self, hero, "Info_Mod_Flaemar_MangelQuest_Fertig_02_01"); //Tu, czlowiek, wez zloto i rude.

	B_ShowGivenThings	("752 zloto i 2 sztuki konserwowanej rudy");

	AI_Output(self, hero, "Info_Mod_Flaemar_MangelQuest_Fertig_02_02"); //Nie ma nic, co moglibysmy z tym zrobic w tej chwili.

	B_GivePlayerXP	(300);

	CreateInvItems	(hero, ItMi_Gold, 752);
	CreateInvItems	(hero, ItMi_Nugget, 2);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Flämar i poszukiwacze maja wszystko pod reka.");

	B_StopMangel();
};

INSTANCE Info_Mod_Flaemar_MangelQuest (C_INFO)
{
	npc		= Mod_7791_SFB_Flaemar_PAT;
	nr		= 1;
	condition	= Info_Mod_Flaemar_MangelQuest_Condition;
	information	= Info_Mod_Flaemar_MangelQuest_Info;
	permanent	= 1;
	important	= 0;
	description	= "(podac chwast)";
};

FUNC INT Info_Mod_Flaemar_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Flaemar_Hi))
	&& (Mod_PAT_FlaemarKraut < 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest_F()
{
	Info_ClearChoices	(Info_Mod_Flaemar_MangelQuest);

	Info_AddChoice	(Info_Mod_Flaemar_MangelQuest, DIALOG_BACK, Info_Mod_Flaemar_MangelQuest_BACK);

	if (Npc_HasItems(hero, ItMi_Traumruf) >= 1)
	{
		Info_AddChoice	(Info_Mod_Flaemar_MangelQuest, "marzenie", Info_Mod_Flaemar_MangelQuest_D);
	};
	if (Npc_HasItems(hero, ItMi_Addon_Joint_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Flaemar_MangelQuest, "Schwarzer Weiser", Info_Mod_Flaemar_MangelQuest_C);
	};
	if (Npc_HasItems(hero, ItMi_Addon_Joint_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Flaemar_MangelQuest, "Grüner Novize", Info_Mod_Flaemar_MangelQuest_B);
	};
	if (Npc_HasItems(hero, ItMi_Joint) >= 1)
	{
		Info_AddChoice	(Info_Mod_Flaemar_MangelQuest, "lodygi roslin bagiennych", Info_Mod_Flaemar_MangelQuest_A);
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest_Info()
{
	Info_Mod_Flaemar_MangelQuest_F();
};

FUNC VOID Info_Mod_Flaemar_MangelQuest_BACK()
{
	Info_ClearChoices	(Info_Mod_Flaemar_MangelQuest);
};

FUNC VOID Info_Mod_Flaemar_MangelQuest_E()
{
	AI_Output(self, hero, "Info_Mod_Flaemar_MangelQuest_E_02_00"); //Nie wierze w to.... tyle ziól. To wystarczy na chwile.

	if (Mod_PAT_FlaemarAlkohol >= 15)
	{
		Info_Mod_Flaemar_MangelQuest_Fertig();
	};

	Info_ClearChoices	(Info_Mod_Flaemar_MangelQuest);
};

FUNC VOID Info_Mod_Flaemar_MangelQuest_D()
{
	B_GiveInvItems	(hero, self, ItMi_Traumruf, 1);

	Mod_PAT_FlaemarKraut += 3;

	if (Mod_PAT_FlaemarKraut < 15) {
		Info_Mod_Flaemar_MangelQuest_F();
	} else {
		Info_Mod_Flaemar_MangelQuest_E();
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest_C()
{
	B_GiveInvItems	(hero, self, ItMi_Addon_Joint_02, 1);

	Mod_PAT_FlaemarKraut += 2;

	if (Mod_PAT_FlaemarKraut < 15) {
		Info_Mod_Flaemar_MangelQuest_F();
	} else {
		Info_Mod_Flaemar_MangelQuest_E();
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest_B()
{
	B_GiveInvItems	(hero, self, ItMi_Addon_Joint_01, 1);

	Mod_PAT_FlaemarKraut += 1;

	if (Mod_PAT_FlaemarKraut < 15) {
		Info_Mod_Flaemar_MangelQuest_F();
	} else {
		Info_Mod_Flaemar_MangelQuest_E();
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest_A()
{
	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	Mod_PAT_FlaemarKraut += 1;

	if (Mod_PAT_FlaemarKraut < 15) {
		Info_Mod_Flaemar_MangelQuest_F();
	} else {
		Info_Mod_Flaemar_MangelQuest_E();
	};
};

INSTANCE Info_Mod_Flaemar_MangelQuest2 (C_INFO)
{
	npc		= Mod_7791_SFB_Flaemar_PAT;
	nr		= 1;
	condition	= Info_Mod_Flaemar_MangelQuest2_Condition;
	information	= Info_Mod_Flaemar_MangelQuest2_Info;
	permanent	= 1;
	important	= 0;
	description	= "(Zalozyc alkohol)";
};

FUNC INT Info_Mod_Flaemar_MangelQuest2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Flaemar_Hi))
	&& (Mod_PAT_FlaemarAlkohol < 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest2_F()
{
	Info_ClearChoices	(Info_Mod_Flaemar_MangelQuest2);

	Info_AddChoice	(Info_Mod_Flaemar_MangelQuest2, DIALOG_BACK, Info_Mod_Flaemar_MangelQuest2_BACK);

	if (Npc_HasItems(hero, ItFo_Addon_Rum) >= 1)
	{
		Info_AddChoice	(Info_Mod_Flaemar_MangelQuest2, "Rum", Info_Mod_Flaemar_MangelQuest2_D);
	};
	if (Npc_HasItems(hero, ItFo_Addon_Grog) >= 1)
	{
		Info_AddChoice	(Info_Mod_Flaemar_MangelQuest2, "Grog", Info_Mod_Flaemar_MangelQuest2_C);
	};
	if (Npc_HasItems(hero, ItFo_Booze) >= 1)
	{
		Info_AddChoice	(Info_Mod_Flaemar_MangelQuest2, "Wacholder", Info_Mod_Flaemar_MangelQuest2_B);
	};
	if (Npc_HasItems(hero, ItFo_Beer) >= 1)
	{
		Info_AddChoice	(Info_Mod_Flaemar_MangelQuest2, "Bier", Info_Mod_Flaemar_MangelQuest2_A);
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest2_Info()
{
	Info_Mod_Flaemar_MangelQuest2_F();
};

FUNC VOID Info_Mod_Flaemar_MangelQuest2_BACK()
{
	Info_ClearChoices	(Info_Mod_Flaemar_MangelQuest2);
};

FUNC VOID Info_Mod_Flaemar_MangelQuest2_E()
{
	AI_Output(self, hero, "Info_Mod_Flaemar_MangelQuest2_E_02_00"); //Hej, czlowiek, dziekuje.

	if (Mod_PAT_FlaemarKraut >= 15)
	{
		Info_Mod_Flaemar_MangelQuest_Fertig();
	};

	Info_ClearChoices	(Info_Mod_Flaemar_MangelQuest2);
};

FUNC VOID Info_Mod_Flaemar_MangelQuest2_D()
{
	B_GiveInvItems	(hero, self, ItFo_Addon_Rum, 1);

	Mod_PAT_FlaemarAlkohol += 2;

	if (Mod_PAT_FlaemarAlkohol < 15) {
		Info_Mod_Flaemar_MangelQuest2_F();
	} else {
		Info_Mod_Flaemar_MangelQuest2_E();
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest2_C()
{
	B_GiveInvItems	(hero, self, ItFo_Addon_Grog, 1);

	Mod_PAT_FlaemarAlkohol += 2;

	if (Mod_PAT_FlaemarAlkohol < 15) {
		Info_Mod_Flaemar_MangelQuest2_F();
	} else {
		Info_Mod_Flaemar_MangelQuest2_E();
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest2_B()
{
	B_GiveInvItems	(hero, self, ItFo_Booze, 1);

	Mod_PAT_FlaemarAlkohol += 1;

	if (Mod_PAT_FlaemarAlkohol < 15) {
		Info_Mod_Flaemar_MangelQuest2_F();
	} else {
		Info_Mod_Flaemar_MangelQuest2_E();
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest2_A()
{
	B_GiveInvItems	(hero, self, ItFo_Beer, 1);

	Mod_PAT_FlaemarAlkohol += 1;

	if (Mod_PAT_FlaemarAlkohol < 15) {
		Info_Mod_Flaemar_MangelQuest2_F();
	} else {
		Info_Mod_Flaemar_MangelQuest2_E();
	};
};

INSTANCE Info_Mod_Flaemar_EXIT (C_INFO)
{
	npc		= Mod_7791_SFB_Flaemar_PAT;
	nr		= 1;
	condition	= Info_Mod_Flaemar_EXIT_Condition;
	information	= Info_Mod_Flaemar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Flaemar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Flaemar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
