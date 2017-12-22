INSTANCE Info_Mod_Frazer_REL_Hi (C_INFO)
{
	npc		= Mod_7619_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_REL_Hi_Condition;
	information	= Info_Mod_Frazer_REL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Frazer_REL_Hi_Condition()
{
	if (Mod_REL_LukasS == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Frazer_REL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Frazer_REL_Hi_13_00"); //You saved me. Brrr, can't imagine what they wanted to cut me off!
	AI_Output(self, hero, "Info_Mod_Frazer_REL_Hi_13_01"); //You always think you're a good supervisor, and sometimes you look away when they're doing something indecent for two - and that's the thanks!
	AI_Output(self, hero, "Info_Mod_Frazer_REL_Hi_13_02"); //Well, I'm almost sorry about the Norman, he must have been involved. But let the rest of you stay with Beliar, yes!
	AI_Output(self, hero, "Info_Mod_Frazer_REL_Hi_13_03"); //At least now there won't be any more trouble with them.
	AI_Output(self, hero, "Info_Mod_Frazer_REL_Hi_13_04"); //So, what are we standing here for? I really need to crash.

	B_GivePlayerXP	(300);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INCITY2");

	B_StartOtherRoutine	(Mod_7517_OUT_Friedel_REL, "START");
	Mod_7517_OUT_Friedel_REL.aivar[AIV_Partymember] = FALSE;

	B_StartOtherRoutine	(Mod_7518_OUT_Davon_REL, "START");
	Mod_7518_OUT_Davon_REL.aivar[AIV_Partymember] = FALSE;

	B_StartOtherRoutine	(Mod_7391_OUT_Henker_REL, "START");
	Mod_7391_OUT_Henker_REL.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Frazer_REL_EXIT (C_INFO)
{
	npc		= Mod_7619_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_REL_EXIT_Condition;
	information	= Info_Mod_Frazer_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Frazer_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Frazer_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
