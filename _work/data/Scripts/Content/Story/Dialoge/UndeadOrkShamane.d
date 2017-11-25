INSTANCE Info_Mod_UndeadOrkShamane_Hi (C_INFO)
{
	npc		= Mod_10032_ORC_UndeadShamane_MT;
	nr		= 1;
	condition	= Info_Mod_UndeadOrkShamane_Hi_Condition;
	information	= Info_Mod_UndeadOrkShamane_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UndeadOrkShamane_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_UndeadOrkShamane_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_UndeadOrkShamane_Hi_18_00"); //A book of great magical power, I sense. I'm just too curious to know what kind of knowledge this has.
	AI_Output(self, hero, "Info_Mod_UndeadOrkShamane_Hi_18_01"); //What, you who once banished my old master?! I prefer to retreat with the book to a place of dead silence to devote myself to it undisturbed.

	B_LogEntry	(TOPIC_MOD_THERIDDLE, "Damn it. This undead orcchaman just stole the book from me and dropped it off at a' place of dead silence', whatever he meant by that.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");

	Mod_NL_UOS_Day = Wld_GetDay();
};
