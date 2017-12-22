INSTANCE Info_Mod_Gizar_Hi (C_INFO)
{
	npc		= Mod_1772_KDF_Gizar_PAT;
	nr		= 1;
	condition	= Info_Mod_Gizar_Hi_Condition;
	information	= Info_Mod_Gizar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gizar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gizar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gizar_Hi_10_00"); //Chce, abyscie zobaczyli Nagona, brata. Oczekuje cie w kaplicy.
	AI_Output(hero, self, "Info_Mod_Gizar_Hi_15_01"); //Kim jest czarodziej, który wlasnie tu podbiegl?
	AI_Output(self, hero, "Info_Mod_Gizar_Hi_10_02"); //To byl Aaron. Stacjonuje tu niedawno.

	Npc_ClearAIQueue	(Mod_1771_KDF_Aaron_PAT);
	AI_StandUp	(Mod_1771_KDF_Aaron_PAT);
	B_StartOtherRoutine	(Mod_1771_KDF_Aaron_PAT, "TOT");
	AI_Teleport	(Mod_1771_KDF_Aaron_PAT, "TOT");

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "Czarnoksieznik o imieniu Aaron, który przez krótki czas przebywal w klasztorze, biegal po ataku na wieze. Powinienem dojsc do sedna.");
};

INSTANCE Info_Mod_Gizar_EXIT (C_INFO)
{
	npc		= Mod_1772_KDF_Gizar_PAT;
	nr		= 1;
	condition	= Info_Mod_Gizar_EXIT_Condition;
	information	= Info_Mod_Gizar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gizar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gizar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
