INSTANCE Info_Mod_Kobold_Dieb_Hi (C_INFO)
{
	npc		= Kobold_11000_NW;
	nr		= 1;
	condition	= Info_Mod_Kobold_Dieb_Hi_Condition;
	information	= Info_Mod_Kobold_Dieb_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kobold_Dieb_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Kobold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kobold_Dieb_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Kobold_Dieb_Hi_20_00"); //What?!!! You here, man?!?!? Don't you dare harm me.
	AI_Output(self, hero, "Info_Mod_Kobold_Dieb_Hi_20_01"); //You will not have anything to oppose the combined power of the undead magician and the dragons - whose servants I am -.
	AI_Output(hero, self, "Info_Mod_Kobold_Dieb_Hi_15_02"); //That doesn't stop me from getting my gold back, thieving filth.
	AI_Output(self, hero, "Info_Mod_Kobold_Dieb_Hi_20_03"); //Nasty man, you'll regret this. Someday I'll be repeating my gold.

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "After all, I have my gold back. The goblin, however, told something about the combined power of undead magician and dragon.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");
};
