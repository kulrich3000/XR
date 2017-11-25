INSTANCE Info_Mod_Rod_AtOGY (C_INFO)
{
	npc		= Mod_795_SLD_Rod_MT;
	nr		= 1;
	condition	= Info_Mod_Rod_AtOGY_Condition;
	information	= Info_Mod_Rod_AtOGY_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rod_AtOGY_Condition()
{
	if (Npc_GetDistToWP(hero, "OW_PATH_198_ORCGRAVEYARD8") < 5000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rod_AtOGY_Info()
{
	if (Mod_Gilde != 19)
	{
		AI_Output(self, hero, "Info_Mod_Rod_AtOGY_06_00"); //Hey, you can't go to the Orc Cemetery until you're yours, an orc hunter. It's just for whole guys.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Rod_AtOGY_06_01"); //Hey, you can't go to the Orc Cemetery until you talk to Lee. You better go straight to him.
	};

	AI_StopProcessInfos	(self);
};
