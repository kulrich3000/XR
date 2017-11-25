INSTANCE Info_Mod_Schneider_Hi (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_Hi_Condition;
	information	= Info_Mod_Schneider_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Schneider_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Gritta_Shakir))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schneider_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Schneider_Hi_31_00"); //Sorry, I'm extremely busy right now.
	AI_Output(self, hero, "Info_Mod_Schneider_Hi_31_01"); //Should I make the incision at the hip? What does the dictation of fashion mean? Waist cut, right?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Schneider_Gritta (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_Gritta_Condition;
	information	= Info_Mod_Schneider_Gritta_Info;
	permanent	= 0;
	important	= 0;
	description	= "Good day.";
};

FUNC INT Info_Mod_Schneider_Gritta_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gritta_Shakir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schneider_Gritta_Info()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Gritta_15_00"); //Good day. I see the scissors on your shield. You're the tailor?
	AI_Output(self, hero, "Info_Mod_Schneider_Gritta_31_01"); //True enough. My name is Versage. The best tailor in the country.
	AI_Output(hero, self, "Info_Mod_Schneider_Gritta_15_02"); //That's a good thing. I'm looking for a dress for a sophisticated lady.
	AI_Output(self, hero, "Info_Mod_Schneider_Gritta_31_03"); //I see. Something extravagant. Hm. I have a suitable design here.
	AI_Output(self, hero, "Info_Mod_Schneider_Gritta_31_04"); //But the dress isn't finished, because I'm afraid our women here in Khorata don't need it.
	AI_Output(hero, self, "Info_Mod_Schneider_Gritta_15_05"); //And until when...
	AI_Output(self, hero, "Info_Mod_Schneider_Gritta_31_06"); //Come back tomorrow. Then it should be done.

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "The tailor will make a dress for Gritta. Tomorrow it should be ready.");

	B_StartOtherRoutine	(Mod_7281_OUT_Felicita_REL, "SCHNEIDER");

	Mod_ASS_Schneider_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Schneider_Aufgabe (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_Aufgabe_Condition;
	information	= Info_Mod_Schneider_Aufgabe_Info;
	permanent	= 1;
	important	= 0;
	description	= "Is the dress ready?";
};

FUNC INT Info_Mod_Schneider_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Schneider_Gritta))
	&& (Wld_GetDay() > Mod_ASS_Schneider_Day)
	&& (Mod_ASS_Schneider == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schneider_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_15_00"); //Is the dress ready?

	if (Wld_GetDay()-1 == Mod_ASS_Schneider_Day)
	&& (Wld_IsTime(00,00,11,59))
	{
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_01"); //Not quite. Worked half the night on it.
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_02"); //There are still some stitches to be made. And it has to be ironed, too.
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_03"); //Come back at noon.
		AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_15_04"); //Good. See you later.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_05"); //Certainly. A splendid dress. Haute couture is what they call it. It's hard to pay.
		AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_15_06"); //Which means?
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_07"); //Best cloth made of sheep's wool. Double seams. Elegant drapery...
		AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_15_08"); //How much?
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_09"); //Twice dyed. Washable up to 60 degrees Celsius. Embroidered my signum. 500 gold.
		AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_15_10"); //Are you out of your mind? I get a whole flock of sheep for that.
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_11"); //Wouldn't impress your lady very much.

		Info_ClearChoices	(Info_Mod_Schneider_Aufgabe);

		Info_AddChoice	(Info_Mod_Schneider_Aufgabe, DIALOG_BACK, Info_Mod_Schneider_Aufgabe_BACK);

		if (Npc_HasItems(hero, ItMi_Gold) >= 500)
		{
			Info_AddChoice	(Info_Mod_Schneider_Aufgabe, "Maybe so. Here's your 500.", Info_Mod_Schneider_Aufgabe_D);
		};
		if (Npc_HasItems(hero, ItMi_Gold) >= 400)
		{
			Info_AddChoice	(Info_Mod_Schneider_Aufgabe, "I could give you 400 gold.", Info_Mod_Schneider_Aufgabe_C);
		};
		Info_AddChoice	(Info_Mod_Schneider_Aufgabe, "I only have 300 with me.", Info_Mod_Schneider_Aufgabe_B);
		Info_AddChoice	(Info_Mod_Schneider_Aufgabe, "I only have 200 with me.", Info_Mod_Schneider_Aufgabe_A);
	};	
};

FUNC VOID Info_Mod_Schneider_Aufgabe_BACK()
{
	Info_ClearChoices	(Info_Mod_Schneider_Aufgabe);
};

FUNC VOID Info_Mod_Schneider_Aufgabe_D()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_D_15_00"); //Maybe so. Here's your 500.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_D_31_01"); //Thank you very much. You won't regret it.

	B_GiveInvItems	(self, hero, ItAr_GrittasKleid, 1);

	Mod_ASS_Schneider = 1;

	Info_ClearChoices	(Info_Mod_Schneider_Aufgabe);

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "It wasn't easy getting that dress. I hope Shakir appreciates that. Back to Gritta's.");
};

FUNC VOID Info_Mod_Schneider_Aufgabe_C()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_C_15_00"); //I could give you 400 gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 400);

	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_C_31_01"); //Ungern. But you have to recommend me.
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_C_15_02"); //I'm going to do it.

	B_GiveInvItems	(self, hero, ItAr_GrittasKleid, 1);

	Mod_ASS_Schneider = 1;

	Info_ClearChoices	(Info_Mod_Schneider_Aufgabe);

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "It wasn't easy getting that dress. I hope Shakir appreciates that. Back to Gritta's.");
};

FUNC VOID Info_Mod_Schneider_Aufgabe_B()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_B_15_00"); //I only have 300 with me.
	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_B_31_01"); //300 gold for this precious thing? Over my dead body! Unless....
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_B_15_02"); //Yes?
	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_B_31_03"); //You're giving me a little help.
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_B_15_04"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_B_31_05"); //Well, I'm thinking of a cozy evening for two. Just you and me...
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_B_15_06"); //With Adanos! You're gay!
	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_B_31_07"); //So what? All the fashion designers, like me, are gay. Otherwise, we wouldn't be who we are.
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_B_15_08"); //I reject with thanks. I'll figure something else out.

	Info_ClearChoices	(Info_Mod_Schneider_Aufgabe);
};

FUNC VOID Info_Mod_Schneider_Aufgabe_A()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_A_15_00"); //I only have 200 with me.
	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_A_31_01"); //Then we can't do business. Forget about it.
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_A_15_02"); //Too bad. I'll have to think of something else.

	Info_ClearChoices	(Info_Mod_Schneider_Aufgabe);
};

INSTANCE Info_Mod_Schneider_Kissen (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_Kissen_Condition;
	information	= Info_Mod_Schneider_Kissen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Schneider_Kissen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morpheus_Kissen02))
	&& (Npc_HasItems(hero, ItMi_Federbeutel) == 1)
	&& (Npc_HasItems(hero, ItMi_Heu) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schneider_Kissen_Info()
{
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen_31_00"); //Come closer, friend of exclusive clothing. Did my creation please?
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen_15_01"); //And how. I don't think the lady will take off her dress at all.
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen_31_02"); //Was not to be expected otherwise. What'll it be today?
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen_15_03"); //Just a little something. Can you make me a bag of linen?
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen_31_04"); //That's below my level, but for you as a good customer... How big is it supposed to be?
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen_15_05"); //So big that these feathers and this hay fit in.

	Npc_RemoveInvItems	(hero, ItMi_Federbeutel, 1);
	Npc_RemoveInvItems	(hero, ItMi_Heu, 1);

	B_ShowGivenThings	("Venger feathers and hay added");

	AI_Output(self, hero, "Info_Mod_Schneider_Kissen_31_06"); //What do you need this for?
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen_15_07"); //For an old warrior. When he goes to sleep, he wants to put it under his head.
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen_31_08"); //Very innovative, this idea. This could be a big seller. Where did you get those feathers?
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen_15_09"); //From the butcher. He's slaughtering the Scavenger of Erhard's farm.
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen_31_10"); //Interesting. Very well. I've got some stuff. Leave the stuffing and come back in two hours.

	B_LogEntry	(TOPIC_MOD_ASS_KISSEN, "I'm due back at Versage in two hours.");

	Npc_SetRefuseTalk(self, 300);
};

INSTANCE Info_Mod_Schneider_Kissen02 (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_Kissen02_Condition;
	information	= Info_Mod_Schneider_Kissen02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello! Are you finished?";
};

FUNC INT Info_Mod_Schneider_Kissen02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Schneider_Kissen))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schneider_Kissen02_Info()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen02_15_00"); //Hello! Are you finished?
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen02_31_01"); //But yes, yes. Look. In my favorite color.

	B_GiveInvItems	(self, hero, ItMi_Kissen, 1);

	AI_Output(hero, self, "Info_Mod_Schneider_Kissen02_15_02"); //Lila! Well, it won't matter to the warrior.
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen02_31_03"); //Fabulously soft and fragrant. There's no better way to make such a thing.
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen02_15_04"); //I have to get going. How much do you get?
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen02_31_05"); //For you, for free if I get the rights to your idea.
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen02_15_06"); //My left, too. Bye, now!

	B_LogEntry	(TOPIC_MOD_ASS_KISSEN, "I got the pillow. Off to Malik....");
};

INSTANCE Info_Mod_Schneider_Pickpocket (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_Pickpocket_Condition;
	information	= Info_Mod_Schneider_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Schneider_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Seide, 2);
};

FUNC VOID Info_Mod_Schneider_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);

	Info_AddChoice	(Info_Mod_Schneider_Pickpocket, DIALOG_BACK, Info_Mod_Schneider_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Schneider_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Schneider_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Schneider_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);
};

FUNC VOID Info_Mod_Schneider_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);

		Info_AddChoice	(Info_Mod_Schneider_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Schneider_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Schneider_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Schneider_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Schneider_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Schneider_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Schneider_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Schneider_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Schneider_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Schneider_EXIT (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_EXIT_Condition;
	information	= Info_Mod_Schneider_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Schneider_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Schneider_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
