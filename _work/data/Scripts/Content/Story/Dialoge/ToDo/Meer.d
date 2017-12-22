INSTANCE Info_Mod_Meer_Hi (C_INFO)
{
	npc		= Mod_7330_Meer_HAL;
	nr		= 1;
	condition	= Info_Mod_Meer_Hi_Condition;
	information	= Info_Mod_Meer_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Meer_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Meer_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Meer_Hi_18_00"); //You found me.
	AI_Output(hero, self, "Info_Mod_Meer_Hi_15_01"); //What did I find?
	AI_Output(self, hero, "Info_Mod_Meer_Hi_18_02"); //Me! The answer! That which will make the King happy again!
	AI_Output(hero, self, "Info_Mod_Meer_Hi_15_03"); //You're the answer?
	AI_Output(self, hero, "Info_Mod_Meer_Hi_18_04"); //I am the answer! I AM THE ANSWER!

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "I have found the sea and it is the answer. Hm... not very revealing yet.");
};
