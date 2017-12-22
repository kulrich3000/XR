INSTANCE Info_Mod_Gobshak_Stollen (C_INFO)
{
	npc		= Mod_4021_Orc_Gobshak_MT;
	nr		= 1;
	condition	= Info_Mod_Gobshak_Stollen_Condition;
	information	= Info_Mod_Gobshak_Stollen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gobshak_Stollen_Condition()
{
	if (Mod_Hermy_KnowsQuest == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gobshak_Stollen_Info()
{
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_18_00"); //What are people doing up here?
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_15_01"); //You speak English?
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_18_02"); //I have long been a slave of men. Now I've freed myself. I don't want to go back to slavery again.

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);

	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "That's where her stinking worms belong!", Info_Mod_Gobshak_Stollen_B);
	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "Did you guys happen to find a tunnel here?", Info_Mod_Gobshak_Stollen_A);
};

FUNC VOID Info_Mod_Gobshak_Stollen_B()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_B_15_00"); //That's where her stinking worms belong!
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_B_18_01"); //Why do you want me povo.... prozi.... to piss me off?

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);

	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "Sorry, I didn't mean to say that.", Info_Mod_Gobshak_Stollen_D);
	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "I like annoying orcs.", Info_Mod_Gobshak_Stollen_C);
};

FUNC VOID Info_Mod_Gobshak_Stollen_A()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_A_15_00"); //Did you guys happen to find a tunnel here?
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_A_18_01"); //Yeah, now that you're saying. We really have found stollen here in Alter Bibio.... biblitheic Library. At the back by Grubuz you have to ask.
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_A_15_02"); //Thanks for the information.
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_A_18_03"); //I'm honored to have thanks.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "Gobshak told me that a tunnel was really discovered further back in the rocky fortress. I'm supposed to speak to an orc named Grubuz.");

	Mod_Hermy_KnowsQuest = 2;

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);
};

FUNC VOID Info_Mod_Gobshak_Stollen_D()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_D_15_00"); //Sorry, I didn't mean to say that.
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_D_18_01"); //What do you want then?

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);

	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "Did you guys happen to find a tunnel here?", Info_Mod_Gobshak_Stollen_A);
};

FUNC VOID Info_Mod_Gobshak_Stollen_C()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_C_15_00"); //I like annoying orcs.
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_C_18_01"); //You want to fight with gobshak?

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);

	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "No, no. I wanted something else.", Info_Mod_Gobshak_Stollen_G);
	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "Come over here!", Info_Mod_Gobshak_Stollen_F);
};

FUNC VOID Info_Mod_Gobshak_Stollen_G()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_G_15_00"); //No, no. I wanted something else.
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_G_18_01"); //What do you want?

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);

	Info_AddChoice	(Info_Mod_Gobshak_Stollen, "Did you guys happen to find a tunnel here?", Info_Mod_Gobshak_Stollen_A);
};

FUNC VOID Info_Mod_Gobshak_Stollen_F()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Stollen_F_15_00"); //Come over here!
	AI_Output(self, hero, "Info_Mod_Gobshak_Stollen_F_18_01"); //I don't give in to that sort of thing. Man better disappear.

	Info_ClearChoices	(Info_Mod_Gobshak_Stollen);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Gobshak_Grubuz (C_INFO)
{
	npc		= Mod_4021_Orc_Gobshak_MT;
	nr		= 1;
	condition	= Info_Mod_Gobshak_Grubuz_Condition;
	information	= Info_Mod_Gobshak_Grubuz_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gobshak_Grubuz_Condition()
{
	if (Mod_Hermy_KnowsQuest == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gobshak_Grubuz_Info()
{
	AI_Output(self, hero, "Info_Mod_Gobshak_Grubuz_18_00"); //Anything happen? Man looks upset.
	
	Info_ClearChoices	(Info_Mod_Gobshak_Grubuz);

	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "Denial is useless, you stinking orc!", Info_Mod_Gobshak_Grubuz_B);
	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "Do you know where Grubuz is now?", Info_Mod_Gobshak_Grubuz_A);
};

FUNC VOID Info_Mod_Gobshak_Grubuz_B()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_B_15_00"); //Denial is useless, you stinking orc!
	AI_Output(self, hero, "Info_Mod_Gobshak_Grubuz_B_18_01"); //What did gobshak do to you?

	Info_ClearChoices	(Info_Mod_Gobshak_Grubuz);

	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "I'm sorry, that was a slip-up.", Info_Mod_Gobshak_Grubuz_D);
	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "You stole my spell and killed Emerin. Stupid bunch!", Info_Mod_Gobshak_Grubuz_C);
};

FUNC VOID Info_Mod_Gobshak_Grubuz_A()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_A_15_00"); //Do you know where Grubuz is now?
	AI_Output(self, hero, "Info_Mod_Gobshak_Grubuz_A_18_01"); //Grubuz run away fast earlier. Over the bridge, if Gobshak's not mistaken.
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_A_15_02"); //Was he alone?
	AI_Output(self, hero, "Info_Mod_Gobshak_Grubuz_A_18_03"); //Yeah, gobshak didn't see anyone with him.
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_A_15_04"); //Thank you for that information.
	AI_Output(self, hero, "Info_Mod_Gobshak_Grubuz_A_18_05"); //I'm honored to have thanks.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "Gobshak was apparently not involved in the attack, but it is suspicious that Grubuz has piled over the bridge. He can't be far.");

	Mod_Hermy_KnowsQuest = 8;

	Info_ClearChoices	(Info_Mod_Gobshak_Grubuz);
};

FUNC VOID Info_Mod_Gobshak_Grubuz_D()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_D_15_00"); //I'm sorry, that was a slip-up.

	Info_ClearChoices	(Info_Mod_Gobshak_Grubuz);

	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "Do you know where Grubuz is now?", Info_Mod_Gobshak_Grubuz_A);
};

FUNC VOID Info_Mod_Gobshak_Grubuz_C()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_C_15_00"); //You stole my spell and killed Emerin. Stupid bunch!
	AI_Output(self, hero, "Info_Mod_Gobshak_Grubuz_C_18_01"); //You blame gobshak for something that gobshak didn't do!

	Info_ClearChoices	(Info_Mod_Gobshak_Grubuz);

	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "I'm sorry, that was a slip-up.", Info_Mod_Gobshak_Grubuz_D);
	Info_AddChoice	(Info_Mod_Gobshak_Grubuz, "Of course not! You think I'm crazy? Now you're going to die!", Info_Mod_Gobshak_Grubuz_F);
};

FUNC VOID Info_Mod_Gobshak_Grubuz_F()
{
	AI_Output(hero, self, "Info_Mod_Gobshak_Grubuz_F_15_00"); //Of course not! You think I'm crazy? Now you're going to die!

	Info_ClearChoices	(Info_Mod_Gobshak_Grubuz);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Gobshak_EXIT (C_INFO)
{
	npc		= Mod_4021_Orc_Gobshak_MT;
	nr		= 1;
	condition	= Info_Mod_Gobshak_EXIT_Condition;
	information	= Info_Mod_Gobshak_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gobshak_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gobshak_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
