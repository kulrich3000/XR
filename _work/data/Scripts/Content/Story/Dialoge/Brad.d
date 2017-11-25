INSTANCE Info_Mod_Brad_Hi (C_INFO)
{
	npc		= Mod_10016_MIN_Brad_MT;
	nr		= 1;
	condition	= Info_Mod_Brad_Hi_Condition;
	information	= Info_Mod_Brad_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brad_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brad_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Brad_Hi_18_00"); //What's a human being doing in my cave?

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	Info_AddChoice	(Info_Mod_Brad_Hi, "Did you happen to find a head lately?", Info_Mod_Brad_Hi_B);
	Info_AddChoice	(Info_Mod_Brad_Hi, "Your cave?", Info_Mod_Brad_Hi_A);
};

FUNC VOID Info_Mod_Brad_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Brad_Hi_C_18_00"); //That reminds me, I found a head recently. But how does that come to mind now?

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	Info_AddChoice	(Info_Mod_Brad_Hi, "Hey, big puke. Down here! Bend your head, you son of a bitch!", Info_Mod_Brad_Hi_E);
	Info_AddChoice	(Info_Mod_Brad_Hi, "Here I am. I'm talking to you.", Info_Mod_Brad_Hi_D);
};

FUNC VOID Info_Mod_Brad_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_H_15_00"); //Can I have that head?
	AI_Output(self, hero, "Info_Mod_Brad_Hi_H_18_01"); //Hmm, should I give this male the head? I wonder what arguments he has for that.
	AI_Output(hero, self, "Info_Mod_Brad_Hi_H_15_02"); //I could give you gold. You want some gold?
	AI_Output(self, hero, "Info_Mod_Brad_Hi_H_18_03"); //(laughs) Do I need gold? No! My treasuries are full of them!
	AI_Output(hero, self, "Info_Mod_Brad_Hi_H_15_04"); //Looking for something special?
	AI_Output(self, hero, "Info_Mod_Brad_Hi_H_18_05"); //Well, that reminds me, it's getting cold in here. The little man could get me wolf skins so I'd be warmer. Ten would be fine.

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	Info_AddChoice	(Info_Mod_Brad_Hi, "Forget about it.", Info_Mod_Brad_Hi_O);
	Info_AddChoice	(Info_Mod_Brad_Hi, "I'll get you the skins.", Info_Mod_Brad_Hi_N);
};

FUNC VOID Info_Mod_Brad_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_B_15_00"); //Did you happen to find a head lately?

	Info_Mod_Brad_Hi_C();
};

FUNC VOID Info_Mod_Brad_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_A_15_00"); //Your cave?
	AI_Output(self, hero, "Info_Mod_Brad_Hi_A_18_01"); //What am I hearing? The little man is questioning my possessions? I should teach him a lesson.

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	Info_AddChoice	(Info_Mod_Brad_Hi, "Don't make me laugh.", Info_Mod_Brad_Hi_J);
	Info_AddChoice	(Info_Mod_Brad_Hi, "Can you talk to the little man, too, or are you just talking to yourself?", Info_Mod_Brad_Hi_I);
};

FUNC VOID Info_Mod_Brad_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_E_15_00"); //Hey, big puke. Down here! Bend your head, you son of a bitch!
	AI_Output(self, hero, "Info_Mod_Brad_Hi_E_18_01"); //This tiny boy makes me angry!

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	Info_AddChoice	(Info_Mod_Brad_Hi, "Sorry, I didn't mean to.", Info_Mod_Brad_Hi_G);
	Info_AddChoice	(Info_Mod_Brad_Hi, "Hey, you lunatic. I'm talking to you!", Info_Mod_Brad_Hi_F);
};

FUNC VOID Info_Mod_Brad_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_D_15_00"); //Here I am. I'm talking to you.
	AI_Output(self, hero, "Info_Mod_Brad_Hi_D_18_01"); //The kid thinks I can't see him. (Laughs quietly)

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Brad_Hi_D_15_02"); //Uh-huh, a maniac.

	AI_TurnToNpc	(hero, self);

	Info_Mod_Brad_Hi_H();
};

FUNC VOID Info_Mod_Brad_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_G_15_00"); //Sorry, I didn't mean to.
	AI_Output(self, hero, "Info_Mod_Brad_Hi_G_18_01"); //I think I should calm down.

	Info_Mod_Brad_Hi_H();
};

FUNC VOID Info_Mod_Brad_Hi_M()
{
	AI_Output(self, hero, "Info_Mod_Brad_Hi_M_18_00"); //I'll rip his head off!

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Brad_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_F_15_00"); //Hey, you lunatic. I'm talking to you!

	Info_Mod_Brad_Hi_M();
};

FUNC VOID Info_Mod_Brad_Hi_J()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_J_15_00"); //Don't make me laugh.
	AI_Output(self, hero, "Info_Mod_Brad_Hi_J_18_01"); //This tiny boy makes me angry! You don't question that. No. Never ever. Maybe I should rip his head off. I'd have two already. (Laughs quietly)

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	Info_AddChoice	(Info_Mod_Brad_Hi, "This is certainly not your cave.", Info_Mod_Brad_Hi_L);
	Info_AddChoice	(Info_Mod_Brad_Hi, "I beg your pardon? A head? You found a head?", Info_Mod_Brad_Hi_K);
};

FUNC VOID Info_Mod_Brad_Hi_I()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_I_15_00"); //Can you talk to the little man, too, or are you just talking to yourself?
	AI_Output(self, hero, "Info_Mod_Brad_Hi_I_18_01"); //I'm not talking to anyone but myself, am I, Brad? Never.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Brad_Hi_D_15_02"); //Uh-huh, a maniac.

	AI_TurnToNpc	(hero, self);

	Info_Mod_Brad_Hi_B();
};

FUNC VOID Info_Mod_Brad_Hi_L()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_L_15_00"); //This is certainly not your cave.

	Info_Mod_Brad_Hi_M();
};

FUNC VOID Info_Mod_Brad_Hi_K()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_K_15_00"); //I beg your pardon? A head? You found a head?

	Info_Mod_Brad_Hi_C();
};

FUNC VOID Info_Mod_Brad_Hi_N()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_N_15_00"); //I'll get you the skins.
	AI_Output(self, hero, "Info_Mod_Brad_Hi_N_18_01"); //I almost feel like I'm getting warmer.

	B_LogEntry	(TOPIC_MOD_ANOR_NICK, "I'm supposed to bring the Minotaur Brad 20 wolf skins so he doesn't get so cold in his cave.");

	Mod_Brad_Quest = 1;

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Brad_Hi_O()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_O_15_00"); //Forget about it.
	AI_Output(self, hero, "Info_Mod_Brad_Hi_O_18_01"); //I think I'll keep my head.
	AI_Output(hero, self, "Info_Mod_Brad_Hi_O_15_02"); //You better give it to me right now, or I'll have to kill you!
	AI_Output(self, hero, "Info_Mod_Brad_Hi_O_18_03"); //(laughs) The man looks funny when he's angry. Let it come here!

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Brad_Wolfsfelle (C_INFO)
{
	npc		= Mod_10016_MIN_Brad_MT;
	nr		= 1;
	condition	= Info_Mod_Brad_Wolfsfelle_Condition;
	information	= Info_Mod_Brad_Wolfsfelle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brad_Wolfsfelle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brad_Hi))
	&& (Mod_Brad_Quest == 1)
	&& (Npc_HasItems(hero, ItAt_WolfFur) + Npc_HasItems(hero, ItAt_WolfFur_Rein) >= 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_Info()
{
	AI_Output(self, hero, "Info_Mod_Brad_Wolfsfelle_18_00"); //Someone else is entering my cave.
	AI_Output(hero, self, "Info_Mod_Brad_Wolfsfelle_15_01"); //I got the skins.
	AI_Output(self, hero, "Info_Mod_Brad_Wolfsfelle_18_02"); //Would the male leave the skins to me if it really has them?

	Info_ClearChoices	(Info_Mod_Brad_Wolfsfelle);

	Info_AddChoice	(Info_Mod_Brad_Wolfsfelle, "Here.", Info_Mod_Brad_Wolfsfelle_B);
	Info_AddChoice	(Info_Mod_Brad_Wolfsfelle, "Head first.", Info_Mod_Brad_Wolfsfelle_A);
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_C()
{
	AI_Output(self, hero, "Info_Mod_Brad_Wolfsfelle_C_18_00"); //Ah, that's nice. I think I'll give him the head for it.

	B_GiveInvItems	(self, hero, ItMi_NicksKopf, 1);

	Mod_Brad_Quest = 2;

	B_LogEntry	(TOPIC_MOD_ANOR_NICK, "I brought the 20 wolf skins to Minotaurs Brad. I should go back to Nick now and give him back his head.");

	Info_ClearChoices	(Info_Mod_Brad_Wolfsfelle);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_B()
{
	AI_Output(hero, self, "Info_Mod_Brad_Wolfsfelle_B_15_00"); //Here.

	var int hlp;
	hlp = Npc_HasItems(hero, ItAt_WolfFur);
	hlp = min(hlp, 10);

	Npc_RemoveInvItems	(hero, ItAt_WolfFur, hlp);
	Npc_RemoveInvItems	(hero, ItAt_WolfFur_Rein, 10 - hlp);

	B_ShowGivenThings	("10 wolf skins given");

	Info_Mod_Brad_Wolfsfelle_C();
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_A()
{
	AI_Output(hero, self, "Info_Mod_Brad_Wolfsfelle_A_15_00"); //Head first.
	AI_Output(self, hero, "Info_Mod_Brad_Wolfsfelle_A_18_01"); //Now it makes demands! I'm getting warmed up!

	Info_ClearChoices	(Info_Mod_Brad_Wolfsfelle);

	Info_AddChoice	(Info_Mod_Brad_Wolfsfelle, "Head first.", Info_Mod_Brad_Wolfsfelle_E);
	Info_AddChoice	(Info_Mod_Brad_Wolfsfelle, "Okay, here's the skins.", Info_Mod_Brad_Wolfsfelle_D);
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_E()
{
	AI_Output(hero, self, "Info_Mod_Brad_Wolfsfelle_E_15_00"); //Head first.
	AI_Output(self, hero, "Info_Mod_Brad_Wolfsfelle_E_18_01"); //If I don't see the skins in front of me, I'll kill that wretch!

	Info_ClearChoices	(Info_Mod_Brad_Wolfsfelle);

	Info_AddChoice	(Info_Mod_Brad_Wolfsfelle, "Okay, here's the skins.", Info_Mod_Brad_Wolfsfelle_D);
	Info_AddChoice	(Info_Mod_Brad_Wolfsfelle, "Then come over here!", Info_Mod_Brad_Wolfsfelle_F);
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_F()
{
	AI_Output(hero, self, "Info_Mod_Brad_Wolfsfelle_F_15_00"); //Then come over here!
	AI_Output(self, hero, "Info_Mod_Brad_Wolfsfelle_F_18_01"); //I'll flatten it!

	Info_ClearChoices	(Info_Mod_Brad_Wolfsfelle);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_D()
{
	AI_Output(hero, self, "Info_Mod_Brad_Wolfsfelle_D_15_00"); //Okay, here's the skins.

	var int hlp;
	hlp = Npc_HasItems(hero, ItAt_WolfFur);
	hlp = min(hlp, 10);

	Npc_RemoveInvItems	(hero, ItAt_WolfFur, hlp);
	Npc_RemoveInvItems	(hero, ItAt_WolfFur_Rein, 10 - hlp);

	B_ShowGivenThings	("10 wolf skins given");

	Info_Mod_Brad_Wolfsfelle_C();
};

INSTANCE Info_Mod_Brad_EXIT (C_INFO)
{
	npc		= Mod_10016_MIN_Brad_MT;
	nr		= 1;
	condition	= Info_Mod_Brad_EXIT_Condition;
	information	= Info_Mod_Brad_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Brad_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brad_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
