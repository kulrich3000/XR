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
	AI_Output(self, hero, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_03_00"); //A red... That's brave of you. What brings you here?

	Info_ClearChoices	(Info_Mod_Schwarzmagier_PAT_Fokus02_Hi);

	Info_AddChoice	(Info_Mod_Schwarzmagier_PAT_Fokus02_Hi, "I need that focus, and I'm gonna take it now.", Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_B);
	Info_AddChoice	(Info_Mod_Schwarzmagier_PAT_Fokus02_Hi, "On my way through the crystal cave I came across a huge treasure.", Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A);
};

FUNC VOID Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_B_15_00"); //I need that focus, and I'm gonna take it now.
	AI_Output(self, hero, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_B_03_01"); //Over my dead body. Come on, Redskin.

	Info_ClearChoices	(Info_Mod_Schwarzmagier_PAT_Fokus02_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_KILL, 0);

	Npc_SetRefuseTalk	(self, 120);
};

FUNC VOID Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A_15_00"); //On my way through the crystal cave I came across a huge treasure.
	AI_Output(hero, self, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A_15_01"); //It's covered with some black magic. I just can't reach it.
	AI_Output(hero, self, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A_15_02"); //Now I thought you could help me with that and we'll go halves/halves...
	AI_Output(self, hero, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A_03_03"); //Sounds like a good idea for now. Which way is it?
	AI_Output(hero, self, "Info_Mod_Schwarzmagier_PAT_Fokus02_Hi_A_15_04"); //Follow me. Follow me. I'll take you there.
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
	AI_Output(hero, self, "Info_Mod_Schwarzmagier_PAT_Fokus02_AtHoehle_15_00"); //See that hallway over there? There's this spell and the treasure in there.
	AI_Output(self, hero, "Info_Mod_Schwarzmagier_PAT_Fokus02_AtHoehle_03_01"); //I'll have a look.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "HOEHLE");

	B_LogEntry	(TOPIC_MOD_FM_FOKI, "I screwed him up pretty good, cunning the way I am....");

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
