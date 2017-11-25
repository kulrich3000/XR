INSTANCE Info_Mod_Grubuz_Stollen (C_INFO)
{
	npc		= Mod_4022_Orc_Grubuz_MT;
	nr		= 1;
	condition	= Info_Mod_Grubuz_Stollen_Condition;
	information	= Info_Mod_Grubuz_Stollen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grubuz_Stollen_Condition()
{
	if (Mod_Hermy_KnowsQuest == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grubuz_Stollen_Info()
{
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_18_00"); //What do people want here?
	
	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "I want to exterminate you stinking orcs!", Info_Mod_Grubuz_Stollen_B);
	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "I must go to the tunnel you dug up.", Info_Mod_Grubuz_Stollen_A);
};

FUNC VOID Info_Mod_Grubuz_Stollen_B()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_B_15_00"); //I want to exterminate you stinking orcs!
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_B_18_01"); //Man evil, why gobshak let him come to me?

	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "That's not interesting. More interesting is if you can fight, you weakling!", Info_Mod_Grubuz_Stollen_D);
	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "That was just a slip of the tongue.", Info_Mod_Grubuz_Stollen_C);
};

FUNC VOID Info_Mod_Grubuz_Stollen_A()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_A_15_00"); //I must go to the tunnel you dug up.
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_A_18_01"); //Why?

	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "There must still be some spell rolls lying around somewhere I need.", Info_Mod_Grubuz_Stollen_F);
	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "That's a secret.", Info_Mod_Grubuz_Stollen_E);
};

FUNC VOID Info_Mod_Grubuz_Stollen_D()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_D_15_00"); //That's not interesting. More interesting is if you can fight, you weakling!

	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Grubuz_Stollen_C()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_C_15_00"); //That was just a slip of the tongue.
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_C_18_01"); //I didn't listen. So what do people want?

	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "I must go to the tunnel you dug up.", Info_Mod_Grubuz_Stollen_A);
};

FUNC VOID Info_Mod_Grubuz_Stollen_E()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_E_15_00"); //That's a secret.
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_E_18_01"); //Jeez... you have to tell me a secret or I won't let you in the mine.

	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "There must still be some spell rolls lying around somewhere I need.", Info_Mod_Grubuz_Stollen_F);
	Info_AddChoice	(Info_Mod_Grubuz_Stollen, "I'm not even thinking about it.", Info_Mod_Grubuz_Stollen_G);
};

FUNC VOID Info_Mod_Grubuz_Stollen_F()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_F_15_00"); //There must still be some spell rolls lying around somewhere I need.
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_F_18_01"); //We haven't found any spell rolls. You can go in and search.
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_F_15_02"); //Thanks. I'll see you around.
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_F_18_03"); //I'm honored to have thanks.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "I have permission from Grubuz to enter the tunnel. But he says that the orcs didn't find any spelling roles there. I'll probably have to take a closer look.");

	Mod_Hermy_KnowsQuest = 3;

	Info_ClearChoices	(Info_Mod_Grubuz_Stollen);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Grubuz_Stollen_G()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_G_15_00"); //I'm not even thinking about it.
	AI_Output(self, hero, "Info_Mod_Grubuz_Stollen_G_18_01"); //Then I can't let you in the tunnel.
	AI_Output(hero, self, "Info_Mod_Grubuz_Stollen_G_15_02"); //Okay, I'll tell you.

	Info_Mod_Grubuz_Stollen_F();
};

INSTANCE Info_Mod_Grubuz_Emerin (C_INFO)
{
	npc		= Mod_4022_Orc_Grubuz_MT;
	nr		= 1;
	condition	= Info_Mod_Grubuz_Emerin_Condition;
	information	= Info_Mod_Grubuz_Emerin_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grubuz_Emerin_Condition()
{
	if (Mod_Hermy_KnowsQuest == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grubuz_Emerin_Info()
{
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_18_00"); //What are you doing here?

	self.flags = 0;
	
	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "The question is, what are you doing here?", Info_Mod_Grubuz_Emerin_B);
	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "The scroll, you stinking monster.", Info_Mod_Grubuz_Emerin_A);
};

FUNC VOID Info_Mod_Grubuz_Emerin_K()
{
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_K_18_00"); //Grubuz need some fresh air.

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Then why are you running so far away?", Info_Mod_Grubuz_Emerin_L);
	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Give up the part of speech or I'll kill you.", Info_Mod_Grubuz_Emerin_E);
};

FUNC VOID Info_Mod_Grubuz_Emerin_B()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_B_15_00"); //The question is, what are you doing here?

	Info_Mod_Grubuz_Emerin_K();
};

FUNC VOID Info_Mod_Grubuz_Emerin_A()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_A_15_00"); //The scroll, you stinking monster.
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_A_18_01"); //Grubuz don't have a saying role. Grubuz don't know what people are talking about.

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Then why did you run away?", Info_Mod_Grubuz_Emerin_O);
	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Give up the part of speech or I'll kill you.", Info_Mod_Grubuz_Emerin_E);
};

FUNC VOID Info_Mod_Grubuz_Emerin_O()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_O_15_00"); //Then why did you run away?

	Info_Mod_Grubuz_Emerin_K();
};

FUNC VOID Info_Mod_Grubuz_Emerin_L()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_L_15_00"); //Then why are you running so far away?
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_L_18_01"); //Be the best at forest air.

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Then why didn't you sign off on gobshak?", Info_Mod_Grubuz_Emerin_N);
	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Are you kidding me? Get out of here now!", Info_Mod_Grubuz_Emerin_M);
};

FUNC VOID Info_Mod_Grubuz_Emerin_E()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_E_15_00"); //Give up the part of speech or I'll kill you.
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_E_18_01"); //If you really want to fight, Grubuz will kill you.

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Why don't you just give me the part of speech and we'll call it even?", Info_Mod_Grubuz_Emerin_F);
	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Then come over here!", Info_Mod_Grubuz_Emerin_G);
};

FUNC VOID Info_Mod_Grubuz_Emerin_H()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_H_15_00"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_H_18_01"); //You don't kill me and make me promise you won't follow me any further.

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Anyway, you're dying now.", Info_Mod_Grubuz_Emerin_J);
	Info_AddChoice	(Info_Mod_Grubuz_Emerin, "Okay, I promise.", Info_Mod_Grubuz_Emerin_I);
};

FUNC VOID Info_Mod_Grubuz_Emerin_F()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_F_15_00"); //Why don't you just give me the part of speech and we'll call it even?
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_F_18_01"); //You have to promise me something.

	Info_Mod_Grubuz_Emerin_H();
};

FUNC VOID Info_Mod_Grubuz_Emerin_G()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_G_15_00"); //Then come over here!

	CreateInvItems	(self, ItSc_TrfHarpie, 1);

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Grubuz_Emerin_J()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_J_15_00"); //Anyway, you're dying now.

	CreateInvItems	(self, ItSc_TrfHarpie, 1);

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Grubuz_Emerin_I()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_I_15_00"); //Okay, I promise.
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_I_18_01"); //Here, Grubuz give you Spruro.... disgusting Magic.

	CreateInvItems	(self, ItSc_TrfHarpie, 1);
	B_GiveInvItems	(self, hero, ItSc_TrfHarpie, 1);

	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_I_15_02"); //I keep my word. You can go now.
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_I_18_03"); //I hope we never see each other again.

	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "I've got the spell of 'Transforming Harpie.' Now I should go with it to Hermy.");

	B_StartOtherRoutine	(self, "START");

	Mod_Hermy_KnowsQuest = 9;

	Info_ClearChoices	(Info_Mod_Grubuz_Emerin);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Grubuz_Emerin_N()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_N_15_00"); //Then why didn't you sign off on gobshak?
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_N_18_01"); //Stop torturing Grubuz! I'll give you a roll if you promise me something.

	Info_Mod_Grubuz_Emerin_H();
};

FUNC VOID Info_Mod_Grubuz_Emerin_M()
{
	AI_Output(hero, self, "Info_Mod_Grubuz_Emerin_M_15_00"); //Are you kidding me? Get out of here now!
	AI_Output(self, hero, "Info_Mod_Grubuz_Emerin_M_18_01"); //You wanna fight? Grubuz will kill you.

	Info_Mod_Grubuz_Emerin_G();
};

INSTANCE Info_Mod_Grubuz_EXIT (C_INFO)
{
	npc		= Mod_4022_Orc_Grubuz_MT;
	nr		= 1;
	condition	= Info_Mod_Grubuz_EXIT_Condition;
	information	= Info_Mod_Grubuz_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Grubuz_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grubuz_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
