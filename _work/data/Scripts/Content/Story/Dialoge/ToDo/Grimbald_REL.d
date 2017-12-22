INSTANCE Info_Mod_Grimbald_REL_Hi (C_INFO)
{
	npc		= Mod_7294_OUT_Grimbald_REL;
	nr		= 1;
	condition	= Info_Mod_Grimbald_REL_Hi_Condition;
	information	= Info_Mod_Grimbald_REL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grimbald_REL_Hi_Condition()
{
	if (Mod_NL_Grimbald == 3)
	&& (Npc_GetDistToWP(self, "REL_154") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_REL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Grimbald_REL_Hi_07_00"); //Here we are. That's as far as I go.
	AI_Output(self, hero, "Info_Mod_Grimbald_REL_Hi_07_01"); //Consider what I told you about this area before and then think again if you really want to do this.

	Mod_NL_Grimbald = 4;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
};
