FUNC VOID Info_Mod_BauerLobart_VinoBrennerei()
{
	AI_Output(hero, self, "Info_Mod_BauerLobart_VinoBrennerei_15_00"); //I hear Vino's been missing for some time. Do you know anything about this?
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei_04_01"); //(unsure) Uh, well, I don't know... (to himself) but if something has happened to him....
	AI_Output(hero, self, "Info_Mod_BauerLobart_VinoBrennerei_15_02"); //Spit it out already. Maybe I can help.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei_04_03"); //(hesitant) Well... Vino has set up a distillery in the big forest... near a stone circle, I think.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei_04_04"); //He goes there every now and then to earn a few extra coins in the city with the home-baked... or bring us farm workers something for the evening off.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei_04_05"); //So now you know. But please don't tell anyone else.

	B_LogEntry	(TOPIC_MOD_VINO_WO, "As I heard from another farmer, Vino has set up a distillery in the big forest, near a stone circle.");
};

FUNC VOID Info_Mod_BauerLobart_VinoBrennerei2()
{
	AI_Output(hero, self, "Info_Mod_BauerLobart_VinoBrennerei2_15_00"); //And why didn't you tell anyone? He could be in a lot of trouble...
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei2_04_01"); //Yeah, I know. But who would we have told?
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei2_04_02"); //Lobart would make hell out of him if he knew that... and Mika, who keeps an eye on things outside the city, isn't exactly squeamish when it comes to narcotics.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei2_04_03"); //Vino could go straight to jail for that...
};

FUNC VOID Info_Mod_BauerLobart_VinoBrennerei3()
{
	AI_Output(hero, self, "Info_Mod_BauerLobart_VinoBrennerei3_15_00"); //A farmer all alone through the monster-contaminated forest?! This is insanity...
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei3_04_01"); //Oh, right, I haven't mentioned that.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei3_04_02"); //He once reported finding a strange platform behind Jack's lighthouse.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei3_04_03"); //It's supposed to take him right into this secluded cave, past all the monsters.
};

INSTANCE Info_Mod_BauerLobart_01_VinoBrennerei (C_INFO)
{
	npc		= Mod_1414_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_01_VinoBrennerei_Condition;
	information	= Info_Mod_BauerLobart_01_VinoBrennerei_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear Vino's been missing for some time.";
};

FUNC INT Info_Mod_BauerLobart_01_VinoBrennerei_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_02_VinoBrennerei))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_01_VinoBrennerei_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_02_VinoBrennerei (C_INFO)
{
	npc		= Mod_1415_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_02_VinoBrennerei_Condition;
	information	= Info_Mod_BauerLobart_02_VinoBrennerei_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear Vino's been missing for some time.";
};

FUNC INT Info_Mod_BauerLobart_02_VinoBrennerei_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_01_VinoBrennerei))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_02_VinoBrennerei_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_01_VinoBrennerei2 (C_INFO)
{
	npc		= Mod_1414_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_01_VinoBrennerei2_Condition;
	information	= Info_Mod_BauerLobart_01_VinoBrennerei2_Info;
	permanent	= 0;
	important	= 0;
	description	= "And why didn't you tell anyone?";
};

FUNC INT Info_Mod_BauerLobart_01_VinoBrennerei2_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_02_VinoBrennerei2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_01_VinoBrennerei2_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei2();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_02_VinoBrennerei2 (C_INFO)
{
	npc		= Mod_1415_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_02_VinoBrennerei2_Condition;
	information	= Info_Mod_BauerLobart_02_VinoBrennerei2_Info;
	permanent	= 0;
	important	= 0;
	description	= "And why didn't you tell anyone?";
};

FUNC INT Info_Mod_BauerLobart_02_VinoBrennerei2_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_01_VinoBrennerei2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_02_VinoBrennerei2_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei2();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_01_VinoBrennerei3 (C_INFO)
{
	npc		= Mod_1414_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_01_VinoBrennerei3_Condition;
	information	= Info_Mod_BauerLobart_01_VinoBrennerei3_Info;
	permanent	= 0;
	important	= 0;
	description	= "A farmer all alone through the monster-contaminated forest?!";
};

FUNC INT Info_Mod_BauerLobart_01_VinoBrennerei3_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_02_VinoBrennerei3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_01_VinoBrennerei3_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei3();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_02_VinoBrennerei3 (C_INFO)
{
	npc		= Mod_1415_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_02_VinoBrennerei3_Condition;
	information	= Info_Mod_BauerLobart_02_VinoBrennerei3_Info;
	permanent	= 0;
	important	= 0;
	description	= "A farmer all alone through the monster-contaminated forest?!";
};

FUNC INT Info_Mod_BauerLobart_02_VinoBrennerei3_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_01_VinoBrennerei3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_02_VinoBrennerei3_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei3();

	AI_StopProcessInfos	(self);
};
