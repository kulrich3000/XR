INSTANCE Info_Mod_Thilo_Hi (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_Hi_Condition;
	information	= Info_Mod_Thilo_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Thilo_Hi_Condition()
{
	if (Mod_WilfriedsQuest == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Wilfried_HabBeutel))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Thilo_Wilfried))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thilo_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Thilo_Hi_01_01"); //Leave me alone, there's nothing I want to talk to you about.
};

INSTANCE Info_Mod_Thilo_Wilfried (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_Wilfried_Condition;
	information	= Info_Mod_Thilo_Wilfried_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thilo_Wilfried_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_HabBeutel))
	&& (Mod_WilfriedsQuest == 1)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thilo_Wilfried_Info()
{
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_01_00"); //Leave me alone, there's nothing I want to talk to you about.
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_15_01"); //You are the thief of Wilfried's purse!
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_01_02"); //Who's saying that?

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Wilfried told me.", Info_Mod_Thilo_Wilfried_Wilfried);
	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "The name doesn't matter.", Info_Mod_Thilo_Wilfried_Egal);
};

FUNC VOID Info_Mod_Thilo_Wilfried_Egal()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Egal_15_00"); //The name doesn't matter.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Egal_01_01"); //Like this? I don't know that I've committed a theft. Or do you think you have proof?

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Wilfried told me.", Info_Mod_Thilo_Wilfried_Wilfried);
};

FUNC VOID Info_Mod_Thilo_Wilfried_Wilfried()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Wilfried_15_00"); //Wilfried told me.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Wilfried_01_01"); //That wretched bastard! I won't hide it any longer! You!

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "No!", Info_Mod_Thilo_Wilfried_Nein);
	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Yes?", Info_Mod_Thilo_Wilfried_Ja);
};

FUNC VOID Info_Mod_Thilo_Wilfried_Nein()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Nein_15_00"); //No!
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Nein_01_01"); //You won't listen to me? Just crawl back to Wilfried, you can't prove anything to me!

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "END", Info_Mod_Thilo_Wilfried_EXIT);
	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Tell me about it.", Info_Mod_Thilo_Wilfried_Tell);
};

FUNC VOID Info_Mod_Thilo_Wilfried_EXIT()
{
	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	B_SetTopicStatus	(TOPIC_MOD_WILFRIED_GOLD, LOG_FAILED);
};

FUNC VOID Info_Mod_Thilo_Wilfried_Ja()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Ja_15_00"); //Yes?
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Ja_01_01"); //You will be the first to know the truth! The whole story!

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Tell me about it.", Info_Mod_Thilo_Wilfried_Tell);
};

FUNC VOID Info_Mod_Thilo_Wilfried_Tell()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Tell_15_00"); //Tell me about it.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_01"); //As you know, Wilfried sells rare and precious jewellery. On my birthday I wanted to give my loved one an expensive amulet, and so I went to him and let him advise me.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_02"); //He showed me drawings of amulets which he did not have with him, but which he supposedly knew where he could obtain them, and I chose one of them.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_03"); //I had to pay for the gold on the spot, and I had to pick up the amulet a week later.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_04"); //When I arrived after the appointed time, Wilfried suddenly pretended that I hadn't placed an order at all and sat down in front of the door.
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Tell_15_05"); //Didn't you write down your agreement?
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_06"); //That's the crux of the matter! I hadn't even thought about that, after all, you can trust most people - I thought. So I had nothing against Wilfried, no proof, nothing at all. I couldn't blame him.
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Tell_15_07"); //But you still wanted the gold back...
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_08"); //Yeah, that's right. I know it wasn't completely correct,
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Tell_15_09"); //(ironic) That's a little understated...
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_10"); //... but I saw no other way to get my gold back. I only compensated for an injustice.

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "I'm gonna blow the whistle on you....", Info_Mod_Thilo_Wilfried_Verpfeifen);
	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "So what do we do now?", Info_Mod_Thilo_Wilfried_WasJetzt);
};

FUNC VOID Info_Mod_Thilo_Wilfried_Verpfeifen()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Verpfeifen_15_00"); //I'm gonna blow the whistle on you....
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Verpfeifen_01_01"); //What? What?! Don't you see the injustice?

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "So what do we do now?", Info_Mod_Thilo_Wilfried_WasJetzt);
};

FUNC VOID Info_Mod_Thilo_Wilfried_WasJetzt()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_WasJetzt_15_00"); //So what do we do now?
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_WasJetzt_01_01"); //I'm sure I'm not the only victim of Wilfried. We must put a stop to it, but that can only be done with more support.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_WasJetzt_01_02"); //I would suggest that you ask around if something similar has happened to someone else.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_WasJetzt_01_03"); //Maybe that's how we can gain evidence, or at least our allies.
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_WasJetzt_15_04"); //It's done.

	B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "Thilo is indeed the thief, but he accuses Wilfried of stealing the gold from him by trickery. Now I shall see if there are any more victims of Wilfried in his vicinity, so that an accusation would be worthwhile.");

	Mod_WilfriedsQuest = 2;

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);
};

INSTANCE Info_Mod_Thilo_Partner (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_Partner_Condition;
	information	= Info_Mod_Thilo_Partner_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thilo_Partner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_Wilfried))
	&& ((Mod_WilfriedsQuest == 3)
	|| (Mod_WilfriedsQuest == 4)
	|| (Mod_WilfriedsQuest == 5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thilo_Partner_Info()
{
	AI_Output(self, hero, "Info_Mod_Thilo_Partner_01_00"); //Do you have any news?
	AI_Output(hero, self, "Info_Mod_Thilo_Partner_15_01"); //I have found allies.
	AI_Output(self, hero, "Info_Mod_Thilo_Partner_01_02"); //(pleased) Good! This should help us to find Wilfried. You want to pay him a visit?
	AI_Output(hero, self, "Info_Mod_Thilo_Partner_15_03"); //Fine, fine.
	AI_Output(self, hero, "Info_Mod_Thilo_Partner_01_04"); //When you're done, let me know how it went.
};

INSTANCE Info_Mod_Thilo_WilfriedWeg (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_WilfriedWeg_Condition;
	information	= Info_Mod_Thilo_WilfriedWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wilfried's gone.";
};

FUNC INT Info_Mod_Thilo_WilfriedWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_Partner))
	&& ((Mod_WilfriedsQuest == 4)
	|| (Mod_WilfriedsQuest == 5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thilo_WilfriedWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Thilo_WilfriedWeg_15_00"); //Wilfried's gone.
	AI_Output(self, hero, "Info_Mod_Thilo_WilfriedWeg_01_01"); //(shocked) No! (pause, thought) He must have got wind of our efforts.
	AI_Output(hero, self, "Info_Mod_Thilo_WilfriedWeg_15_02"); //What can we do now?
	AI_Output(self, hero, "Info_Mod_Thilo_WilfriedWeg_01_03"); //Maybe there's a lead on his whereabouts somewhere. Why don't you take a good look around Wilfried's house and I'll ask around.

	Mob_CreateItems	("WILFRIEDSTRUHE", WilfriedsTagebuchseite, 1);
};

INSTANCE Info_Mod_Thilo_Tagebuchseite (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_Tagebuchseite_Condition;
	information	= Info_Mod_Thilo_Tagebuchseite_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thilo_Tagebuchseite_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_WilfriedWeg))
	&& (Mod_WilfriedsQuest == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thilo_Tagebuchseite_Info()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Tagebuchseite_15_00"); //I found an informative diary page.
	AI_Output(self, hero, "Info_Mod_Thilo_Tagebuchseite_01_01"); //What does it say?
	AI_Output(hero, self, "Info_Mod_Thilo_Tagebuchseite_15_02"); //Wilfried discovered a cave outside the city.
	AI_Output(self, hero, "Info_Mod_Thilo_Tagebuchseite_01_03"); //Well, then I'd say you can see if you can find her. I can't leave right now... an important appointment...
	AI_Output(hero, self, "Info_Mod_Thilo_Tagebuchseite_15_04"); //You're scared?
	AI_Output(self, hero, "Info_Mod_Thilo_Tagebuchseite_01_05"); //I wouldn't put it that way, more respect. You'll be all right. See you around.
};

INSTANCE Info_Mod_Thilo_WilfriedTot (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_WilfriedTot_Condition;
	information	= Info_Mod_Thilo_WilfriedTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thilo_WilfriedTot_Condition()
{
	if (Mod_WilfriedsQuest == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thilo_WilfriedTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Thilo_WilfriedTot_01_00"); //I heard you punished Wilfried. A drastic measure, but it's not supposed to be your damage.
	AI_Output(self, hero, "Info_Mod_Thilo_WilfriedTot_01_01"); //Thank you for your help. See you around.

	CreateInvItems	(self, ItMi_Gold, 50);
	B_GiveInvItems	(self, hero, ItMi_Gold, 50);
};

INSTANCE Info_Mod_Thilo_Pickpocket (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_Pickpocket_Condition;
	information	= Info_Mod_Thilo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Thilo_Pickpocket_Condition()
{
	C_Beklauen	(20, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Thilo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);

	Info_AddChoice	(Info_Mod_Thilo_Pickpocket, DIALOG_BACK, Info_Mod_Thilo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Thilo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Thilo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Thilo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);
};

FUNC VOID Info_Mod_Thilo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);

		Info_AddChoice	(Info_Mod_Thilo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Thilo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Thilo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Thilo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Thilo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Thilo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Thilo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Thilo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Thilo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Thilo_EXIT (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_EXIT_Condition;
	information	= Info_Mod_Thilo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Thilo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Thilo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
