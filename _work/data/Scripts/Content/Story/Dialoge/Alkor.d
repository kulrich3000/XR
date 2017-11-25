INSTANCE Info_Mod_Alkor_Hi (C_INFO)
{
	npc		= Mod_7654_OUT_Alkor_REL;
	nr		= 1;
	condition	= Info_Mod_Alkor_Hi_Condition;
	information	= Info_Mod_Alkor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alkor_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alkor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_31_00"); //What do you want, Linnet? The treasures of the moor? Ha, don't make me laugh.
	AI_Output(hero, self, "Info_Mod_Alkor_Hi_15_01"); //What's your problem?
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_31_02"); //Yeah, look at yourself.
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_31_03"); //If you don't survive for ten seconds in the poisonous moor, as pitiful as you look.
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_31_04"); //Ha, you probably don't even survive a real sip of juniper.

	Info_ClearChoices	(Info_Mod_Alkor_Hi);

	Info_AddChoice	(Info_Mod_Alkor_Hi, "I'm sure I can take more than you.", Info_Mod_Alkor_Hi_B);
	Info_AddChoice	(Info_Mod_Alkor_Hi, "Get on someone else's nerves. ", Info_Mod_Alkor_Hi_A);
};

FUNC VOID Info_Mod_Alkor_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Alkor_Hi_B_15_00"); //I'm sure I can take more than you.
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_B_31_01"); //Ha, don't make me laugh... If you ever managed to keep up with me, I'd give all my reserves of antidote.
	AI_Output(hero, self, "Info_Mod_Alkor_Hi_B_15_02"); //I can always use an antidote.
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_B_31_03"); //We'll see about that. For every attempt to drink me under the table, 40 pieces of gold are due for the brew.

	Info_ClearChoices	(Info_Mod_Alkor_Hi);

	Mod_Alkor_Contest = 1;
};

FUNC VOID Info_Mod_Alkor_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Alkor_Hi_A_15_00"); //Fall jemand anderem auf die Nerven. 
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_A_31_01"); //Ja, verzieh dich bloß wieder in die Stadt, du Weichei, geh zu deiner Mami!

	Info_ClearChoices	(Info_Mod_Alkor_Hi);
};

INSTANCE Info_Mod_Alkor_StarteContest (C_INFO)
{
	npc		= Mod_7654_OUT_Alkor_REL;
	nr		= 1;
	condition	= Info_Mod_Alkor_StarteContest_Condition;
	information	= Info_Mod_Alkor_StarteContest_Info;
	permanent	= 1;
	important	= 0;
	description	= "Here's the gold.";
};

FUNC INT Info_Mod_Alkor_StarteContest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alkor_Hi))
	&& (Mod_Alkor_Contest == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 40)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alkor_StarteContest_Info()
{
	AI_Output(hero, self, "Info_Mod_Alkor_StarteContest_15_00"); //Here's the gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 40);

	AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_31_01"); //All right, all right. Then off to the first round.

	AI_UseMob	(self, "CHAIR", -1);

	Info_ClearChoices	(Info_Mod_Alkor_StarteContest);

	Info_AddChoice	(Info_Mod_Alkor_StarteContest, "(Continue)", Info_Mod_Alkor_StarteContest_Weiter_01);
};

FUNC VOID Info_Mod_Alkor_StarteContest_Weiter_01()
{
	CreateInvItems	(hero, ItFo_Beer, 3);
	CreateInvItems	(self, ItFo_Beer, 3);

	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);
	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);
	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_01_31_00"); //You're still standing? Maybe you're not the kind of pantshit I thought you were. Let's go to round two.

	Info_ClearChoices	(Info_Mod_Alkor_StarteContest);

	Info_AddChoice	(Info_Mod_Alkor_StarteContest, "(Continue)", Info_Mod_Alkor_StarteContest_Weiter_02);
};

FUNC VOID Info_Mod_Alkor_StarteContest_Weiter_02()
{
	CreateInvItems	(hero, ItFo_Booze, 3);
	CreateInvItems	(self, ItFo_Booze, 3);

	B_UseItem	(self, ItFo_Booze);
	B_UseItem	(hero, ItFo_Booze);
	B_UseItem	(self, ItFo_Booze);
	B_UseItem	(hero, ItFo_Booze);
	B_UseItem	(self, ItFo_Booze);
	B_UseItem	(hero, ItFo_Booze);

	if (Mod_Betrunken == 1)
	{
		AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_02_31_00"); //Ha, I knew it. At the first sip of something stronger, it won't keep the wretch on his feet.
		AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_02_31_01"); //You've never really been intoxicated before, have you?!
		AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_02_31_02"); //But thanks for the gold, hero.

		Info_ClearChoices	(Info_Mod_Alkor_StarteContest);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_02_31_03"); //(drunk) What?! You're still standing, but.... but not any more, if we go to the third... to round three.

		Info_ClearChoices	(Info_Mod_Alkor_StarteContest);

		Info_AddChoice	(Info_Mod_Alkor_StarteContest, "(Continue)", Info_Mod_Alkor_StarteContest_Weiter_03);
	};
};

FUNC VOID Info_Mod_Alkor_StarteContest_Weiter_03()
{
	CreateInvItems	(self, ItFo_Addon_Grog, 1);

	B_UseItem	(self, ItFo_Addon_Grog);

	AI_Output(hero, self, "Info_Mod_Alkor_StarteContest_Weiter_03_15_00"); //Well, is that it?
	AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_03_31_01"); //What?! Ahh, my fucking head. You son of a bitch!
	AI_Output(hero, self, "Info_Mod_Alkor_StarteContest_Weiter_03_15_02"); //Well, you shouldn't get your mouth so full if you can't take so much. The potions?
	AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_03_31_03"); //Ahh, son of a bitch. Here are the antidotes. And now.... Get the fuck out of here!

	B_GiveInvItems	(self, hero, ItPo_Gegengift, 2);

	B_GivePlayerXP	(300);

	Mod_Alkor_Contest = 2;

	Info_ClearChoices	(Info_Mod_Alkor_StarteContest);
};

INSTANCE Info_Mod_Alkor_Wasserleichen (C_INFO)
{
	npc		= Mod_7654_OUT_Alkor_REL;
	nr		= 1;
	condition	= Info_Mod_Alkor_Wasserleichen_Condition;
	information	= Info_Mod_Alkor_Wasserleichen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alkor_Wasserleichen_Condition()
{
	if (Mod_Botschek_Wasserleichen == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alkor_Wasserleichen_Info()
{
	AI_Output(self, hero, "Info_Mod_Alkor_Wasserleichen_31_00"); //I'll finish what the bodies didn't accomplish!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	B_LogEntry	(TOPIC_MOD_BOTSCHEK_WASSERLEICHEN, "The drowned bodies are finished. But what does Alkor want? Has he lost his mind?");
};

INSTANCE Info_Mod_Alkor_Pickpocket (C_INFO)
{
	npc		= Mod_7654_OUT_Alkor_REL;
	nr		= 1;
	condition	= Info_Mod_Alkor_Pickpocket_Condition;
	information	= Info_Mod_Alkor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Alkor_Pickpocket_Condition()
{
	C_Beklauen	(85, ItMi_GoldPlate, 2);
};

FUNC VOID Info_Mod_Alkor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);

	Info_AddChoice	(Info_Mod_Alkor_Pickpocket, DIALOG_BACK, Info_Mod_Alkor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Alkor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Alkor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Alkor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);
};

FUNC VOID Info_Mod_Alkor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);

		Info_AddChoice	(Info_Mod_Alkor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Alkor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Alkor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Alkor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Alkor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Alkor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Alkor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Alkor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Alkor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Alkor_EXIT (C_INFO)
{
	npc		= Mod_7654_OUT_Alkor_REL;
	nr		= 1;
	condition	= Info_Mod_Alkor_EXIT_Condition;
	information	= Info_Mod_Alkor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alkor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alkor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
