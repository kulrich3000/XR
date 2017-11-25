INSTANCE Info_Mod_Schwarzmagier_PAT_Fokus02_Hi (C_INFO)
{
	npc		= Mod_7794_KDS_SchwarzerMagier_PAT;
	nr		= 1;
	condition	= Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_Condition;
	information	= Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	&& (Npc_GetDistToWP(self, "WP_PAT_FOKUS_01_04") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_03_00"); //Czerwony.... To cie odwazne. Co przynosi ci tutaj?

	Info_ClearChoices	(Info_Mod_Schwarzmagier_PAT_Fokus02_Hi);

	Info_AddChoice	(Info_Mod_Schwarzmagier_PAT_Fokus02_Hi, "Potrzebuje takiego skupienia, a teraz jestem gonna.", Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_B);
	Info_AddChoice	(Info_Mod_Schwarzmagier_PAT_Fokus02_Hi, "W drodze przez krysztalowa jaskinie natrafilem na ogromny skarb.", Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A);
};

FUNC VOID Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_B_15_00"); //Potrzebuje takiego skupienia, a teraz jestem gonna.
	AI_Output(self, hero, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_B_03_01"); //Nad martwym cialem. Przyjedzcie, Redskin.

	Info_ClearChoices	(Info_Mod_Schwarzmagier_PAT_Fokus02_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_KILL, 0);

	Npc_SetRefuseTalk	(self, 120);
};

FUNC VOID Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A_15_00"); //W drodze przez krysztalowa jaskinie natrafilem na ogromny skarb.
	AI_Output(hero, self, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A_15_01"); //Jest pokryty czarna magia. Nie moge do niego dotrzec.
	AI_Output(hero, self, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A_15_02"); //Teraz pomyslalem, ze móglbys mi to pomóc, a my pójdziemy polówka/walkami....
	AI_Output(self, hero, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A_03_03"); //Brzmi to jak dobry pomysl na chwile obecna. W jaki sposób?
	AI_Output(hero, self, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A_15_04"); //Podazaj za mna, idz za mna. Zabiore cie tam.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Schwarzmagier_PAT_Fokus02_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	Npc_SetRefuseTalk	(self, 120);
};

INSTANCE Info_Mod_Schwarzmagier_PAT_Fokus02_AtHoehle (C_INFO)
{
	npc		= Mod_7794_KDS_SchwarzerMagier_PAT;
	nr		= 1;
	condition	= Info_Mod_Schwarzmagier_PAT_Fokus02_AtHoehle_Condition;
	information	= Info_Mod_Schwarzmagier_PAT_Fokus02_AtHoehle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Schwarzmagier_PAT_Fokus02_AtHoehle_Condition()
{
	if (Npc_GetDistToWP(self, "WP_PAT_HOEHLE_WALD") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schwarzmagier_PAT_Fokus02_AtHoehle_Info()
{
	AI_Output(hero, self, "Info_Mod_Schwarzmagier_PAT_Fokus02_AtHoehle_15_00"); //Zobaczcie tam ten korytarz? Tam jest ten zaklecie i skarb.
	AI_Output(self, hero, "Info_Mod_Schwarzmagier_PAT_Fokus02_AtHoehle_03_01"); //Zobacze.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "HOEHLE");

	B_LogEntry	(TOPIC_MOD_FM_FOKI, "Wkrecilem go calkiem dobrze, sprytnie tak, jak jestem.....");

	Mod_PAT_Focus_02 = 1;
};

INSTANCE Info_Mod_Schwarzmagier_PAT_Fokus02_EXIT (C_INFO)
{
	npc		= Mod_7794_KDS_SchwarzerMagier_PAT;
	nr		= 1;
	condition	= Info_Mod_Schwarzmagier_PAT_Fokus02_EXIT_Condition;
	information	= Info_Mod_Schwarzmagier_PAT_Fokus02_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Schwarzmagier_PAT_Fokus02_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Schwarzmagier_PAT_Fokus02_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
