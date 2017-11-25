INSTANCE Info_Mod_Lawrence_Hi (C_INFO)
{
	npc		= Mod_1730_MIL_Lawrence_NW;
	nr		= 1;
	condition	= Info_Mod_Lawrence_Hi_Condition;
	information	= Info_Mod_Lawrence_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lawrence_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lawrence_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_00"); //Looking for someone?
	AI_Output(hero, self, "Info_Mod_Lawrence_Hi_15_01"); //Yeah, but I can't remember his name. It starts with L.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_02"); //There are only three in the upper town. One is Larius, the governor. Then there's Lutero, a dealer. He's supposed to be standing around here somewhere.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_03"); //And me, of course. My name is Lawrence.

	Mod_1730_MIL_Lawrence_NW.name = "lawrence";

	AI_Output(hero, self, "Info_Mod_Lawrence_Hi_15_04"); //Well, thanks for the information.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_05"); //No problem. What do you need?
	AI_Output(hero, self, "Info_Mod_Lawrence_Hi_15_06"); //I'm looking for the inventor.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_07"); //The inventor?
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_08"); //Uh, th-that's.... a-on vacation, right, on vacation! He said he was going to visit a friend... in Myrtana!
	AI_Output(hero, self, "Info_Mod_Lawrence_Hi_15_09"); //Okay! Thanks again for the information.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_10"); //No problem. Uh, I have to go now!

	B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "A militia named Lawrence told me about three people in the upper town with the initial letter 'L'. Larius, the governor, Lutero, the merchant, and he himself. After he found out I was looking for the inventor, he got pretty nervous. I should probably go after him sometime.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LARIUS");
	B_StartOtherRoutine	(Mod_591_NONE_Larius_NW, "LARIUS");

	Mod_MitLawrenceGesprochen = 1;
};

INSTANCE Info_Mod_Lawrence_EXIT (C_INFO)
{
	npc		= Mod_1730_MIL_Lawrence_NW;
	nr		= 1;
	condition	= Info_Mod_Lawrence_EXIT_Condition;
	information	= Info_Mod_Lawrence_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lawrence_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lawrence_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
