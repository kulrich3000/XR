INSTANCE Info_Mod_WirtEisgebiet_Rattenquest (C_INFO)
{
	npc		= Mod_7407_OUT_Wirt_EIS;
	nr		= 1;
	condition	= Info_Mod_WirtEisgebiet_Rattenquest_Condition;
	information	= Info_Mod_WirtEisgebiet_Rattenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you guys have a rat problem lately, by any chance?";
};

FUNC INT Info_Mod_WirtEisgebiet_Rattenquest_Condition()
{
	if (Mod_RattenQuest == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_WirtEisgebiet_Rattenquest_Info()
{
	AI_Output(hero, self, "Info_Mod_WirtEisgebiet_Rattenquest_15_00"); //Do you guys have a rat problem lately, by any chance?
	AI_Output(self, hero, "Info_Mod_WirtEisgebiet_Rattenquest_14_01"); //We don't have a problem with rats. Once you hit it hard and the creature is dead.
	AI_Output(hero, self, "Info_Mod_WirtEisgebiet_Rattenquest_15_02"); //No, that's not what I meant. I meant, are they gonna show up more often in the last few minutes?
	AI_Output(self, hero, "Info_Mod_WirtEisgebiet_Rattenquest_14_03"); //but one of the hunters, I think Burl was his name, told me about rats.
	AI_Output(hero, self, "Info_Mod_WirtEisgebiet_Rattenquest_15_04"); //And where's that burl?
	AI_Output(self, hero, "Info_Mod_WirtEisgebiet_Rattenquest_14_05"); //I think he's at the hotel. He had a lot of booze last night.
	AI_Output(self, hero, "Info_Mod_WirtEisgebiet_Rattenquest_14_06"); //You can see if he's fit again.
	AI_Output(hero, self, "Info_Mod_WirtEisgebiet_Rattenquest_15_07"); //Thanks. I'll see him right away.

	B_LogEntry	(TOPIC_MOD_RATTENQUEST, "Nothing has happened in this town, but a hunter named Burl has spoken of rats. He's supposed to be staying at the hotel where he's sleeping it off.");

	Mod_RattenQuest = 5;
};

INSTANCE Info_Mod_WirtEisgebiet_EXIT (C_INFO)
{
	npc		= Mod_7407_OUT_Wirt_EIS;
	nr		= 1;
	condition	= Info_Mod_WirtEisgebiet_EXIT_Condition;
	information	= Info_Mod_WirtEisgebiet_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_WirtEisgebiet_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_WirtEisgebiet_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
