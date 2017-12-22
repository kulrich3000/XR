INSTANCE Info_Mod_Orkjaeger_MT_SindSchonDrin (C_INFO)
{
	npc		= Mod_7245_SLD_Orkjaeger_MT;
	nr		= 1;
	condition	= Info_Mod_Orkjaeger_MT_SindSchonDrin_Condition;
	information	= Info_Mod_Orkjaeger_MT_SindSchonDrin_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Orkjaeger_MT_SindSchonDrin_Condition()
{
	if (Mod_NL_UOS == 2)
	&& (Mod_Gilde == 19)
	&& (Npc_GetDistToWP(hero, "OW_PATH_198_ORCGRAVEYARD6") < 5000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orkjaeger_MT_SindSchonDrin_Info()
{
	AI_Output(self, hero, "Info_Mod_Orkjaeger_MT_SindSchonDrin_11_00"); //You're a few minutes late. The boys have already left. We'll make sure no one from the orcs wants to run away.
	AI_Output(self, hero, "Info_Mod_Orkjaeger_MT_SindSchonDrin_11_01"); //Well, all the fun without us.
	AI_Output(hero, self, "Info_Mod_Orkjaeger_MT_SindSchonDrin_15_02"); //Fun?
	AI_Output(self, hero, "Info_Mod_Orkjaeger_MT_SindSchonDrin_11_03"); //Oh, we're all doing the greenskins on the left. Just stupid, stinking orcs...
	AI_Output(hero, self, "Info_Mod_Orkjaeger_MT_SindSchonDrin_15_04"); //Well, if you mean--

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Orkjaeger_MT_GetZombie_Hi (C_INFO)
{
	npc		= Mod_7245_SLD_Orkjaeger_MT;
	nr		= 1;
	condition	= Info_Mod_Orkjaeger_MT_GetZombie_Hi_Condition;
	information	= Info_Mod_Orkjaeger_MT_GetZombie_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey, guys, make sure you get in.";
};

FUNC INT Info_Mod_Orkjaeger_MT_GetZombie_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rod_OGY_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orkjaeger_MT_GetZombie_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Orkjaeger_MT_GetZombie_Hi_15_00"); //Hey, guys, get in there, we could use some backup inside.

	AI_StopProcessInfos	(self);
};
