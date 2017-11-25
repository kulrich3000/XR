INSTANCE Info_Mod_UndeadOrkShamane_OGY_Hi (C_INFO)
{
	npc		= Mod_10033_ORC_UndeadShamane_OGY;
	nr		= 1;
	condition	= Info_Mod_UndeadOrkShamane_OGY_Hi_Condition;
	information	= Info_Mod_UndeadOrkShamane_OGY_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UndeadOrkShamane_OGY_Hi_Condition()
{
	if (Mod_NL_UOS == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UndeadOrkShamane_OGY_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_UndeadOrkShamane_OGY_Hi_15_00"); //Worm-eaten fiend. Long enough, you've evaded my access by fleeing cowardly. Now I'm gonna kill you once and for all.
	AI_Output(self, hero, "Info_Mod_UndeadOrkShamane_OGY_Hi_18_01"); //You may have cornered me, but you won't be able to cross my barrier.
	AI_Output(self, hero, "Info_Mod_UndeadOrkShamane_OGY_Hi_18_02"); //And beware of trying to harm me or my servants, because otherwise I will have the hostages slaughtered here.

	B_LogEntry	(TOPIC_MOD_SLD_FRIEDHOF, "Oh, great. Now I have finally placed the decaying shaman and now his barrier and the hostages prevent me from finally being able to finish him off and get the book. With so much black magic, I should either seek the advice of an expert magician, or I should take uncompromising action with all the means at my disposal. You never know....");

	AI_StopProcessInfos	(self);

	Mod_NL_UOS = 6;

	self.flags = 0;
};
