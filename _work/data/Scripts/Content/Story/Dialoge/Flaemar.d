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
	AI_Output(self, hero, "Info_Mod_Flaemar_Hi_02_00"); //Hey, I've never seen you around here before. Are you from outside?
	AI_Output(hero, self, "Info_Mod_Flaemar_Hi_15_01"); //Yeah, why?
	AI_Output(self, hero, "Info_Mod_Flaemar_Hi_02_02"); //(hearing) Have you brought some stems of cabbage or a good sip of beer and Waholder?
	AI_Output(self, hero, "Info_Mod_Flaemar_Hi_02_03"); //(discontent) Mine, here in the monastery is really everything for the ass since the siege really everything - no traders there, or something else going on - and the only thing that they have here, in order to beat the time somehow dead, is this monastery wine.... and they are becoming more and more stingy....

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Flämar and his explorer colleagues are desperately looking for some herbs and alcohol to distract themselves.");
};

FUNC VOID Info_Mod_Flaemar_MangelQuest_Fertig()
{
	AI_Output(self, hero, "Info_Mod_Flaemar_MangelQuest_Fertig_02_00"); //Anyway, now we have everything you could possibly want.
	AI_Output(self, hero, "Info_Mod_Flaemar_MangelQuest_Fertig_02_01"); //Here, man, take our gold and the ore.

	B_ShowGivenThings	("752 gold and 2 pieces of ore preserved");

	AI_Output(self, hero, "Info_Mod_Flaemar_MangelQuest_Fertig_02_02"); //There's nothing we can do with it right now anyway.

	B_GivePlayerXP	(300);

	CreateInvItems	(hero, ItMi_Gold, 752);
	CreateInvItems	(hero, ItMi_Nugget, 2);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Flämar and the prospectors are provided with everything.");

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
	description	= "(weed give)";
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
		Info_AddChoice	(Info_Mod_Flaemar_MangelQuest, "dream call", Info_Mod_Flaemar_MangelQuest_D);
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
		Info_AddChoice	(Info_Mod_Flaemar_MangelQuest, "marsh herb stems", Info_Mod_Flaemar_MangelQuest_A);
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
	AI_Output(self, hero, "Info_Mod_Flaemar_MangelQuest_E_02_00"); //I don't believe it... so much herb. That's enough for a while.

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

	if (Mod_PAT_FlaemarKraut < 15)
	{
		Info_Mod_Flaemar_MangelQuest_E();
	}
	else
	{
		Info_Mod_Flaemar_MangelQuest_F();
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest_C()
{
	B_GiveInvItems	(hero, self, ItMi_Addon_Joint_02, 1);

	Mod_PAT_FlaemarKraut += 2;

	if (Mod_PAT_FlaemarKraut < 15)
	{
		Info_Mod_Flaemar_MangelQuest_E();
	}
	else
	{
		Info_Mod_Flaemar_MangelQuest_F();
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest_B()
{
	B_GiveInvItems	(hero, self, ItMi_Addon_Joint_01, 1);

	Mod_PAT_FlaemarKraut += 1;

	if (Mod_PAT_FlaemarKraut < 15)
	{
		Info_Mod_Flaemar_MangelQuest_E();
	}
	else
	{
		Info_Mod_Flaemar_MangelQuest_F();
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest_A()
{
	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	Mod_PAT_FlaemarKraut += 1;

	if (Mod_PAT_FlaemarKraut < 15)
	{
		Info_Mod_Flaemar_MangelQuest_E();
	}
	else
	{
		Info_Mod_Flaemar_MangelQuest_F();
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
	description	= "(Give alcohol)";
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
	AI_Output(self, hero, "Info_Mod_Flaemar_MangelQuest2_E_02_00"); //Hey, man, thanks. So we can let it go for the next few days really well.

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

	if (Mod_PAT_FlaemarAlkohol < 15)
	{
		Info_Mod_Flaemar_MangelQuest2_E();
	}
	else
	{
		Info_Mod_Flaemar_MangelQuest2_F();
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest2_C()
{
	B_GiveInvItems	(hero, self, ItFo_Addon_Grog, 1);

	Mod_PAT_FlaemarAlkohol += 2;

	if (Mod_PAT_FlaemarAlkohol < 15)
	{
		Info_Mod_Flaemar_MangelQuest2_E();
	}
	else
	{
		Info_Mod_Flaemar_MangelQuest2_F();
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest2_B()
{
	B_GiveInvItems	(hero, self, ItFo_Booze, 1);

	Mod_PAT_FlaemarAlkohol += 1;

	if (Mod_PAT_FlaemarAlkohol < 15)
	{
		Info_Mod_Flaemar_MangelQuest2_E();
	}
	else
	{
		Info_Mod_Flaemar_MangelQuest2_F();
	};
};

FUNC VOID Info_Mod_Flaemar_MangelQuest2_A()
{
	B_GiveInvItems	(hero, self, ItFo_Beer, 1);

	Mod_PAT_FlaemarAlkohol += 1;

	if (Mod_PAT_FlaemarAlkohol < 15)
	{
		Info_Mod_Flaemar_MangelQuest2_E();
	}
	else
	{
		Info_Mod_Flaemar_MangelQuest2_F();
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
