INSTANCE Info_Mod_Keroloth_Mario (C_INFO)
{
	npc		= Mod_502_RIT_Keroloth_NW;
	nr		= 1;
	condition	= Info_Mod_Keroloth_Mario_Condition;
	information	= Info_Mod_Keroloth_Mario_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Keroloth_Mario_Condition()
{
	if (Mod_Mario == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Keroloth_Mario_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_Keroloth_Mario_15_00"); //(screams) No!
	AI_Output(self, hero, "Info_Mod_Keroloth_Mario_07_01"); //He already deserves that, I must say.
	AI_Output(hero, self, "Info_Mod_Keroloth_Mario_15_02"); //Why...?
	AI_Output(self, hero, "Info_Mod_Keroloth_Mario_07_03"); //In general, I mean. And he shouldn't have let Garond provoke him.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_500_PAL_Garond_NW, "FOLLOW");
	//B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Keroloth_Mario2 (C_INFO)
{
	npc		= Mod_502_RIT_Keroloth_NW;
	nr		= 1;
	condition	= Info_Mod_Keroloth_Mario2_Condition;
	information	= Info_Mod_Keroloth_Mario2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Keroloth_Mario2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Mario2))
	&& (Npc_IsDead(Mod_500_PAL_Garond_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Keroloth_Mario2_Info()
{
	AI_Output(self, hero, "Info_Mod_Keroloth_Mario2_07_00"); //Damn it, that's enough of the duels!
	AI_Output(self, hero, "Info_Mod_Keroloth_Mario2_07_01"); //Otherwise, we won't have any men in a few days!
	AI_Output(hero, self, "Info_Mod_Keroloth_Mario2_15_02"); //Don't worry about it.
	AI_Output(self, hero, "Info_Mod_Keroloth_Mario2_07_03"); //Don't worry about it, man. And who...? Now remove the bodies and all the blood?

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_MARIO_RACHE, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Keroloth_EXIT (C_INFO)
{
	npc		= Mod_502_RIT_Keroloth_NW;
	nr		= 1;
	condition	= Info_Mod_Keroloth_EXIT_Condition;
	information	= Info_Mod_Keroloth_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Keroloth_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Keroloth_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
