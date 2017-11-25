INSTANCE Info_Mod_HoshPak_OC_Hi (C_INFO)
{
	npc		= Mod_10005_Orc_HoshPak_OC;
	nr		= 1;
	condition	= Info_Mod_HoshPak_OC_Hi_Condition;
	information	= Info_Mod_HoshPak_OC_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HoshPak_OC_Hi_Condition()
{
	if (Mod_TorInStadt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HoshPak_OC_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HoshPak_OC_Hi_18_00"); //What are strangers doing here? There can't be a human being here!
	AI_Output(hero, self, "Info_Mod_HoshPak_OC_Hi_15_01"); //I'm here to get your focus.
	AI_Output(self, hero, "Info_Mod_HoshPak_OC_Hi_18_02"); //You're brave. But I will kill you now. You don't get focus.

	AI_StopProcessInfos	(self);

	Npc_SetTarget		(self, hero);

	AI_StartState	(self, ZS_MM_Attack, 0, "");
};
