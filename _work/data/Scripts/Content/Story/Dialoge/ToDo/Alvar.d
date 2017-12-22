INSTANCE Info_Mod_Alvar_Hi (C_INFO)
{
	npc		= Mod_7561_OUT_Alvar_EIS;
	nr		= 1;
	condition	= Info_Mod_Alvar_Hi_Condition;
	information	= Info_Mod_Alvar_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Alvar_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Mod_AlvarKristall < 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Alvar_Hi_01_00"); //Not now, no. I'm busy.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Alvar_Unbekannt (C_INFO)
{
	npc		= Mod_7561_OUT_Alvar_EIS;
	nr		= 1;
	condition	= Info_Mod_Alvar_Unbekannt_Condition;
	information	= Info_Mod_Alvar_Unbekannt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alvar_Unbekannt_Condition()
{
	if (Mod_AlvarKristall == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvar_Unbekannt_Info()
{
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt_01_00"); //That was last minute. Are you all right?
	AI_Output(hero, self, "Info_Mod_Alvar_Unbekannt_15_01"); //No, I don't think so. Just a little dizzy. Who are you?
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt_01_02"); //I don't want that to matter right now. You got the crystal? Then hurry back to the village.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt_01_03"); //The Eris sisters are up to no good... Thys is in danger. Time is pressing.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	Mdl_ApplyOverlayMDSTimed	(hero, "HUMANS_DRUNKEN.MDS", 60000);

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "I have the crystal. Meeting a witch almost cost me my life. I owe my physical well-being to this stranger. Now let's get back to the village. The Eris sisters want Thys on the leather.");

	B_StartOtherRoutine	(Mod_7564_OUT_Knatus_EIS, "ALVAR");
	B_StartOtherRoutine	(Mod_7560_OUT_Malfama_EIS, "ALVAR");
	B_StartOtherRoutine	(Mod_7559_OUT_Serra_EIS, "ALVAR");
	B_StartOtherRoutine	(Mod_1954_EIS_Thys_EIS, "KO");
};

INSTANCE Info_Mod_Alvar_Unbekannt2 (C_INFO)
{
	npc		= Mod_7561_OUT_Alvar_EIS;
	nr		= 1;
	condition	= Info_Mod_Alvar_Unbekannt2_Condition;
	information	= Info_Mod_Alvar_Unbekannt2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alvar_Unbekannt2_Condition()
{
	if (Mod_AlvarKristall == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvar_Unbekannt2_Info()
{
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt2_01_00"); // ...
	AI_Output(hero, self, "Info_Mod_Alvar_Unbekannt2_15_01"); //Du schon wieder? Zum zweiten mal hast du mir das Leben gerettet.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt2_01_02"); //Nun, und du hast durch deinen Einsatz das ganze Dorf gerettet.
	AI_Output(hero, self, "Info_Mod_Alvar_Unbekannt2_15_03"); //Wer bist du? Warum versteckst du dich hinter dem Umhang? Zeig endlich dein Gesicht.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt2_01_04"); //Nun, jetzt da die Schwestern der Täuschung tot sind ...

	AI_UnequipArmor	(self);

	AI_EquipArmor	(self, ITAR_Eisgebiet_02);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7564_OUT_Knatus_EIS, "THYS");

	B_KillNpc	(Mod_7560_OUT_Malfama_EIS);
	B_KillNpc	(Mod_7559_OUT_Serra_EIS);
};

INSTANCE Info_Mod_Alvar_Unbekannt3 (C_INFO)
{
	npc		= Mod_7561_OUT_Alvar_EIS;
	nr		= 1;
	condition	= Info_Mod_Alvar_Unbekannt3_Condition;
	information	= Info_Mod_Alvar_Unbekannt3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alvar_Unbekannt3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Knatus_Traenenkristall2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvar_Unbekannt3_Info()
{
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_00"); //Not quite. It was an iceberg I salvaged from an old cemetery.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_01"); //I dressed her in my armor to fake my death. There was no other way.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_02"); //This was the only way I could act without being disturbed and prevent our village from falling victim to the Eris sisters.
	AI_Output(hero, self, "Info_Mod_Alvar_Unbekannt3_15_03"); //And that was also at the last second.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_04"); //Yes, and without your help, all would have been lost anyway.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_05"); //I had recognized their essence and received confirmation in ancient writings and books.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_06"); //Unfortunately, the two of them had already developed too much power and influence, but I could not find a hearing among the villagers.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_07"); //Instead, the Eris sisters recognized the danger I posed for them and managed to turn the village against me.
	AI_Output(self, hero, "Info_Mod_Alvar_Unbekannt3_01_08"); //I couldn't feel safe in my life either.... but the whole nightmare is finally over.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Alvar_EXIT (C_INFO)
{
	npc		= Mod_7561_OUT_Alvar_EIS;
	nr		= 1;
	condition	= Info_Mod_Alvar_EXIT_Condition;
	information	= Info_Mod_Alvar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alvar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alvar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
