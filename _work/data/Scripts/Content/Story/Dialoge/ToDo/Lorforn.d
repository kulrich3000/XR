INSTANCE Info_Mod_Lorforn_Hi (C_INFO)
{
	npc		= Mod_1962_OUT_Lorforn_TUG;
	nr		= 1;
	condition	= Info_Mod_Lorforn_Hi_Condition;
	information	= Info_Mod_Lorforn_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lorforn_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lorforn_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_06_00"); //What? Who the fuck are you?

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	Info_AddChoice	(Info_Mod_Lorforn_Hi, "What business is it of yours?", Info_Mod_Lorforn_Hi_C);
	Info_AddChoice	(Info_Mod_Lorforn_Hi, "I've come to kill the Goblin cartridges.", Info_Mod_Lorforn_Hi_B);
	Info_AddChoice	(Info_Mod_Lorforn_Hi, "I'm your worst nightmare!", Info_Mod_Lorforn_Hi_A);
};

FUNC VOID Info_Mod_Lorforn_Hi_H()
{
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_H_06_00"); //But this is.... the truth, yes.
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_H_15_01"); //You tell me what you're doing right now, or I'll kill you.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_H_06_02"); //Okay, okay, I'll talk. I was sent here to.... er...
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_H_15_03"); //Do you want me to jog your memory?
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_H_06_04"); //I'm already talking! l-- was sent here to cause an earthquake. It's gonna eat this stupid valley of goblins.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_H_06_05"); //Yeah, and those stupid magicians have a pretty good problem. Um... you're not gonna kill me now, are you?
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_H_15_06"); //I'll think about it.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_H_06_07"); //Please! I told you everything! Let me go, I'll never come back here again. Honestly!

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	Info_AddChoice	(Info_Mod_Lorforn_Hi, "All right, beat it. But don't ever come back here again.", Info_Mod_Lorforn_Hi_N);
	Info_AddChoice	(Info_Mod_Lorforn_Hi, "You're too dangerous. I'm gonna kill you.", Info_Mod_Lorforn_Hi_M);
};

FUNC VOID Info_Mod_Lorforn_Hi_I()
{
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_I_06_00"); //l-- admire the beautiful nature.
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_I_15_01"); //You don't even believe that.

	Info_Mod_Lorforn_Hi_H();
};

FUNC VOID Info_Mod_Lorforn_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_C_15_00"); //What business is it of yours?
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_C_06_01"); //No, no, of course it's none of my business, I'm just curious.
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_C_15_02"); //Too curious for my taste.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_C_06_03"); //What...? are you planning to do now?
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_C_15_04"); //Maybe I'll hit you once and you'll tell me what you're doing here.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_C_06_05"); //You don't have to hit me!

	Info_Mod_Lorforn_Hi_I();
};

FUNC VOID Info_Mod_Lorforn_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_B_15_00"); //I've come to kill the Goblin cartridges.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_B_06_01"); //Um... I'd advise against that, honestly.
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_B_15_02"); //Why?
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_B_06_03"); //Um... they are big... and strong, yes. I wouldn't dare approach her.
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_B_15_04"); //I can handle that.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_B_06_05"); //And they have magical powers, yes!

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	Info_AddChoice	(Info_Mod_Lorforn_Hi, "I can handle that, too.", Info_Mod_Lorforn_Hi_E);
	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Shall we have a look together?", Info_Mod_Lorforn_Hi_D);
};

FUNC VOID Info_Mod_Lorforn_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_E_15_00"); //I can handle that, too.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_E_06_01"); //Did I mention they're huge?
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_E_15_02"); //Are you kidding me?

	Info_Mod_Lorforn_Hi_H();
};

FUNC VOID Info_Mod_Lorforn_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_D_15_00"); //Shall we have a look together?
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_D_06_01"); //How? What? This is far too dangerous for me.
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_D_15_02"); //I'm just kidding. What are you doing here?

	Info_Mod_Lorforn_Hi_I();
};

FUNC VOID Info_Mod_Lorforn_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_A_15_00"); //I'm your worst nightmare!
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_A_06_01"); //Hey! l-- I didn't do anything to you!

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	Info_AddChoice	(Info_Mod_Lorforn_Hi, "What are you doing here?", Info_Mod_Lorforn_Hi_G);
	Info_AddChoice	(Info_Mod_Lorforn_Hi, "I don't have time to talk, I'm gonna knock you out now.", Info_Mod_Lorforn_Hi_F);
};

FUNC VOID Info_Mod_Lorforn_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_G_15_00"); //What are you doing here?

	Info_Mod_Lorforn_Hi_I();
};

FUNC VOID Info_Mod_Lorforn_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_F_15_00"); //I don't have time to talk, I'm gonna knock you out now.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_F_06_01"); //Then you'll be.... er... just die, yeah!

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Just kidding, what are you doing here?", Info_Mod_Lorforn_Hi_L);
	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Come on over here, little fellow!", Info_Mod_Lorforn_Hi_K);
};

FUNC VOID Info_Mod_Lorforn_Hi_L()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_L_15_00"); //Just kidding, what are you doing here?

	Info_Mod_Lorforn_Hi_I();
};

FUNC VOID Info_Mod_Lorforn_Hi_K()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_K_15_00"); //Come on over here, little fellow!
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_K_06_01"); //Die!

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Lorforn_Hi_N()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_N_15_00"); //All right, beat it. But don't ever come back here again.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_N_06_01"); //I'll never forget that.

	B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "I met a guy on my way to the Matrons who's probably responsible for the earthquake. Said he was sent by someone.");

	TUG_Lorforn = TRUE;

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Lorforn_Hi_M()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_M_15_00"); //You're too dangerous. I'm gonna kill you.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_M_06_01"); //You will.... repent!

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Lorforn_EXIT (C_INFO)
{
	npc		= Mod_1962_OUT_Lorforn_TUG;
	nr		= 1;
	condition	= Info_Mod_Lorforn_EXIT_Condition;
	information	= Info_Mod_Lorforn_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lorforn_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lorforn_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
