INSTANCE Info_Mod_SchwarzerNovize_Weindieb_Hi (C_INFO)
{
	npc		= Mod_7761_SNOV_Novize_NW;
	nr		= 1;
	condition	= Info_Mod_SchwarzerNovize_Weindieb_Hi_Condition;
	information	= Info_Mod_SchwarzerNovize_Weindieb_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who do we have here?";
};

FUNC INT Info_Mod_SchwarzerNovize_Weindieb_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SchwarzerNovize_Weindieb_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovize_Weindieb_Hi_15_00"); //Who do we have here?
	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_Weindieb_Hi_11_01"); //Oh, damn... what do you want?

	Info_ClearChoices	(Info_Mod_SchwarzerNovize_Weindieb_Hi);

	if (Npc_KnowsInfo(hero, Info_Mod_Gorax_Andokai))
	{
		Info_AddChoice	(Info_Mod_SchwarzerNovize_Weindieb_Hi, "Take it easy, now. I poked the wine for Andokai myself once.", Info_Mod_SchwarzerNovize_Weindieb_Hi_C);
	};

	Info_AddChoice	(Info_Mod_SchwarzerNovize_Weindieb_Hi, "Make it clear to you that you and your kind better never come back here again.", Info_Mod_SchwarzerNovize_Weindieb_Hi_B);
	Info_AddChoice	(Info_Mod_SchwarzerNovize_Weindieb_Hi, "Punish you for your bold theft, filthy demon apprentice.", Info_Mod_SchwarzerNovize_Weindieb_Hi_A);
};

FUNC VOID Info_Mod_SchwarzerNovize_Weindieb_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovize_Weindieb_Hi_C_15_00"); //Take it easy, now. I poked the wine for Andokai myself once.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_Weindieb_Hi_C_11_01"); //Ohh, man, for a moment I really thought you were trying to get me into hell. But yes, now I recognize you.
	AI_Output(hero, self, "Info_Mod_SchwarzerNovize_Weindieb_Hi_C_15_02"); //You and the other boys, you better not come back to the monastery in the future. Serpentes has gotten suspicious.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_Weindieb_Hi_C_11_03"); //Is that so? Thanks for the warning, man. Here, take some stems of bogweed and a few bottles of wine to thank you.

	CreateInvItems	(hero, ItMi_Joint, 8);
	CreateInvItems	(hero, ItFo_KWine, 12);

	B_ShowGivenThings	("8 marsh herb stems and 12 monastery wines preserved");

	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_Weindieb_Hi_C_11_04"); //See you around.

	B_GivePlayerXP	(50);

	Info_ClearChoices	(Info_Mod_SchwarzerNovize_Weindieb_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	
	B_LogEntry	(TOPIC_MOD_SERPENTES_WEINDIEBE, "I let the wine and the thief go. That should do Serpentes.");
};

FUNC VOID Info_Mod_SchwarzerNovize_Weindieb_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovize_Weindieb_Hi_B_15_00"); //Make it clear to you that you and your kind better never come back here again.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_Weindieb_Hi_B_11_01"); //You know about this? Ohh, shit, let's go!

	Info_ClearChoices	(Info_Mod_SchwarzerNovize_Weindieb_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");
	
	B_LogEntry	(TOPIC_MOD_SERPENTES_WEINDIEBE, "The wine thief tries to get out of the dust. I'll kill him!");
};

FUNC VOID Info_Mod_SchwarzerNovize_Weindieb_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovize_Weindieb_Hi_A_15_00"); //Punish you for your bold theft, filthy demon apprentice.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_Weindieb_Hi_A_11_01"); //Ohh, shit...

	Info_ClearChoices	(Info_Mod_SchwarzerNovize_Weindieb_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");
	
	B_LogEntry	(TOPIC_MOD_SERPENTES_WEINDIEBE, "The wine thief tries to get out of the dust. I'll kill him!");
};

INSTANCE Info_Mod_SchwarzerNovize_Weindieb_EXIT (C_INFO)
{
	npc		= Mod_7761_SNOV_Novize_NW;
	nr		= 1;
	condition	= Info_Mod_SchwarzerNovize_Weindieb_EXIT_Condition;
	information	= Info_Mod_SchwarzerNovize_Weindieb_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_SchwarzerNovize_Weindieb_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SchwarzerNovize_Weindieb_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
