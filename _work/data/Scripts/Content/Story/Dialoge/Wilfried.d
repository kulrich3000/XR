INSTANCE Info_Mod_Wilfried_Hi (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Hi_Condition;
	information	= Info_Mod_Wilfried_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilfried_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wilfried_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilfried_Hi_08_00"); //It's desperate! I've been looking all day!
};

INSTANCE Info_Mod_Wilfried_WhatHappened (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_WhatHappened_Condition;
	information	= Info_Mod_Wilfried_WhatHappened_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you looking for?";
};

FUNC INT Info_Mod_Wilfried_WhatHappened_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_WhatHappened_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_WhatHappened_15_00"); //What are you looking for?
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_01"); //My wallet! I'm sure I had him with me yesterday....
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_02"); //Yeah, I finally paid for the beer before I went home from the pub.
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_03"); //But then... I must have lost him, otherwise I can't explain it.
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_04"); //I searched the whole house for it - nothing!
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_05"); //On the way home, yes, on the way home he must have fallen out of my pocket....
};

INSTANCE Info_Mod_Wilfried_Hilfe (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Hilfe_Condition;
	information	= Info_Mod_Wilfried_Hilfe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can I help you find it?";
};

FUNC INT Info_Mod_Wilfried_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_WhatHappened))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Hilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Hilfe_15_00"); //Can I help you find it?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hilfe_08_01"); //A good deed every day, huh? Of course, I'd appreciate it if you could give me a hand. You know.... the bones in old age. (laughs)
	AI_Output(hero, self, "Info_Mod_Wilfried_Hilfe_15_02"); //What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hilfe_08_03"); //Well, I've already turned the house upside down, there's no bag here. I'll bet you anything I have left. (laughs)
	AI_Output(self, hero, "Info_Mod_Wilfried_Hilfe_08_04"); //But I haven't been outside today. You know the pub?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hilfe_08_05"); //The best thing to do is to look for the way on both sides, you never know where he might have landed... I hope no one else has found him yet.
};

INSTANCE Info_Mod_Wilfried_Ok (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Ok_Condition;
	information	= Info_Mod_Wilfried_Ok_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's see what we can find.";
};

FUNC INT Info_Mod_Wilfried_Ok_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_Hilfe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Wilfried_No))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Ok_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Ok_15_00"); //Let's see what we can find.
	AI_Output(self, hero, "Info_Mod_Wilfried_Ok_08_01"); //Nice of you. (Conspiratorial) Oh, before I forget: You don't have to tell everyone about my dilemma, is it enough if we both know about it, right?
	AI_Output(hero, self, "Info_Mod_Wilfried_Ok_15_02"); //What's in it for me as a reward?
	AI_Output(self, hero, "Info_Mod_Wilfried_Ok_08_03"); //As a reward, I could offer you a tenth of the gold you'll find in that bag.
	AI_Output(self, hero, "Info_Mod_Wilfried_Ok_08_04"); //I'm rewarded for honesty, you'll find out.

	Log_CreateTopic	(TOPIC_MOD_WILFRIED_GOLD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_WILFRIED_GOLD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "Old Wilfried asked me to look for his lost purse on the way from his house to the pub. The reward is a tenth of the amount left in the purse. One condition, however, is that I do not tell anyone about the incident.");

	Wld_InsertItem	(ItSe_WilfriedsBeutel, "FP_ITEM_WILFRIED");
};

INSTANCE Info_Mod_Wilfried_No (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_No_Condition;
	information	= Info_Mod_Wilfried_No_Info;
	permanent	= 0;
	important	= 0;
	description	= "You can give the dirty work to others.";
};

FUNC INT Info_Mod_Wilfried_No_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_Hilfe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Wilfried_OK))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_No_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_No_15_00"); //You can give the dirty work to others.
	AI_Output(self, hero, "Info_Mod_Wilfried_No_08_01"); //Hey, I didn't make you do anything. But at least leave me alone with your bad mood!
};

INSTANCE Info_Mod_Wilfried_HabBeutel (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_HabBeutel_Condition;
	information	= Info_Mod_Wilfried_HabBeutel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilfried_HabBeutel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_Ok))
	&& (Npc_HasItems(hero, ItSe_WilfriedsBeutel) == 1)
	&& (Mod_HatBeutelWilfried == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_HabBeutel_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_08_00"); //There you are again! Has your search been successful?
	AI_Output(hero, self, "Info_Mod_Wilfried_HabBeutel_15_01"); //How to take it. I found the purse, but.... see for yourself.

	B_GiveInvItems	(hero, self, ItSe_WilfriedsBeutel, 1);
	Npc_RemoveInvItems(self, ItSe_WilfriedsBeutel, 1);

	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_08_02"); //(displaced) No! You can't be serious.... you stole it!

	Info_ClearChoices	(Info_Mod_Wilfried_HabBeutel);

	Info_AddChoice	(Info_Mod_Wilfried_HabBeutel, "That's right... I took the money to myself (.... )", Info_Mod_Wilfried_HabBeutel_Ja);
	Info_AddChoice	(Info_Mod_Wilfried_HabBeutel, "Then why would I go back to you?", Info_Mod_Wilfried_HabBeutel_Nein);
};

FUNC VOID Info_Mod_Wilfried_HabBeutel_Ja()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_HabBeutel_Ja_15_00"); //That's right... I took the money, and you won't see any of it again!
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Ja_08_01"); //Wait, you son of a bitch!

	Info_ClearChoices	(Info_Mod_Wilfried_HabBeutel);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);

	B_SetTopicStatus	(TOPIC_MOD_WILFRIED_GOLD, LOG_FAILED);

	CurrentNQ += 1;
};

FUNC VOID Info_Mod_Wilfried_HabBeutel_Nein()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_HabBeutel_Nein_15_00"); //Then why would I go back to you?
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_01"); //Yeah, you may be right. There are people I would trust to do so much more.
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_02"); //Thilo, this bloody fellow...
	AI_Output(hero, self, "Info_Mod_Wilfried_HabBeutel_Nein_15_03"); //I could report the incident to the city guards...
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_04"); //No! Uh, I'd prefer if you didn't tell the city guard.
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_05"); //She's busy enough already, you don't have to bother her about such trifles. (laughs insecurely)
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_06"); //Be a good boy and keep it to yourself... than a secret.

	B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "The conversation with Wilfried raised more questions than answered. He seems to be hiding something from me. And who is this possible thief Thilo? Maybe he knows the answers...");

	B_GivePlayerXP	(50);

	Info_ClearChoices	(Info_Mod_Wilfried_HabBeutel);

	Mod_WilfriedsQuest = 1;
};

INSTANCE Info_Mod_Wilfried_Belohnung (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Belohnung_Condition;
	information	= Info_Mod_Wilfried_Belohnung_Info;
	permanent	= 0;
	important	= 0;
	description	= "What about my reward?";
};

FUNC INT Info_Mod_Wilfried_Belohnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_HabBeutel))
	&& (Mod_WilfriedsQuest == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Belohnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Belohnung_15_00"); //What about my reward?
	AI_Output(self, hero, "Info_Mod_Wilfried_Belohnung_08_01"); //I don't think so, my friend. One tenth of the gold from the bag is not gold in this case.
	AI_Output(self, hero, "Info_Mod_Wilfried_Belohnung_08_02"); //I'm sorry about that. If I were a wealthy man, I could offer you more.
	AI_Output(hero, self, "Info_Mod_Wilfried_Belohnung_15_03"); //Give me your gold or I'll beat it out of you!
	AI_Output(self, hero, "Info_Mod_Wilfried_Belohnung_08_04"); //Enough of this bullshit! Don't you have anything better to do?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wilfried_Thilo (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Thilo_Condition;
	information	= Info_Mod_Wilfried_Thilo_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilfried_Thilo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_Wilfried))
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Mod_WilfriedsQuest == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Thilo_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_08_00"); //What more do you want from me?

	Info_ClearChoices	(Info_Mod_Wilfried_Thilo);

	Info_AddChoice	(Info_Mod_Wilfried_Thilo, "Thilo is the thief, he confessed to me!", Info_Mod_Wilfried_Thilo_Dieb);
	Info_AddChoice	(Info_Mod_Wilfried_Thilo, "What's the whole story behind the theft?", Info_Mod_Wilfried_Thilo_Wahrheit);
};

FUNC VOID Info_Mod_Wilfried_Thilo_Dieb()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Thilo_Dieb_15_00"); //Thilo is the thief, he confessed to me!
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Dieb_08_01"); //I told you to keep quiet about the incident!
	AI_Output(hero, self, "Info_Mod_Wilfried_Thilo_Dieb_15_02"); //But...
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Dieb_08_03"); //It doesn't interest you at all. Get out of here!
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Dieb_08_04"); //Get out!

	Info_ClearChoices	(Info_Mod_Wilfried_Thilo);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Wilfried_Thilo_Wahrheit()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Thilo_Wahrheit_15_00"); //What's the whole story behind the theft of your purse?
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Wahrheit_08_01"); //I've told you everything I know!
	AI_Output(hero, self, "Info_Mod_Wilfried_Thilo_Wahrheit_15_02"); //I don't think so.
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Wahrheit_08_03"); //It doesn't interest you at all. Get out of here!
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Wahrheit_08_04"); //Get out!

	Info_ClearChoices	(Info_Mod_Wilfried_Thilo);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wilfried_Hoehle (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Hoehle_Condition;
	information	= Info_Mod_Wilfried_Hoehle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilfried_Hoehle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_WilfriedWeg))
	&& (Mod_WilfriedsQuest == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Hoehle_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_08_00"); //Why are you coming to see me?
	AI_Output(hero, self, "Info_Mod_Wilfried_Hoehle_15_01"); //I have questions.
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_08_02"); //Go ahead, I have nothing to hide.

	Info_ClearChoices	(Info_Mod_Wilfried_Hoehle);

	Info_AddChoice	(Info_Mod_Wilfried_Hoehle, "They're looking for you in town.", Info_Mod_Wilfried_Hoehle_Stadt);
	Info_AddChoice	(Info_Mod_Wilfried_Hoehle, "Why did you run to that cave?", Info_Mod_Wilfried_Hoehle_Weg);
};

FUNC VOID Info_Mod_Wilfried_Hoehle_Stadt()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Hoehle_Stadt_15_00"); //They're looking for you in town. There are some people who still have something to talk to you about.
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_Stadt_08_01"); //Don't you think it's wonderfully quiet here?

	Info_ClearChoices	(Info_Mod_Wilfried_Hoehle);

	Info_AddChoice	(Info_Mod_Wilfried_Hoehle, "Quiet?", Info_Mod_Wilfried_Hoehle_Ruhe);
};

FUNC VOID Info_Mod_Wilfried_Hoehle_Weg()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Hoehle_Weg_15_00"); //Why did you run to that cave?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_Weg_08_01"); //I often visit my cave to recover from the city. Don't you think it's wonderfully quiet here?

	Info_ClearChoices	(Info_Mod_Wilfried_Hoehle);

	Info_AddChoice	(Info_Mod_Wilfried_Hoehle, "Quiet?", Info_Mod_Wilfried_Hoehle_Ruhe);
};

FUNC VOID Info_Mod_Wilfried_Hoehle_Ruhe()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Hoehle_Ruhe_15_00"); //Quiet?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_Ruhe_08_01"); //I don't hear anyone... no one can hear me... (Pause/ hissing suddenly) And no one will hear you when you will be wailing for mercy!
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_Ruhe_08_02"); //You're not gonna take my gold!

	Info_ClearChoices	(Info_Mod_Wilfried_Hoehle);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Wilfried_Pickpocket (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Pickpocket_Condition;
	information	= Info_Mod_Wilfried_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Wilfried_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);

	Info_AddChoice	(Info_Mod_Wilfried_Pickpocket, DIALOG_BACK, Info_Mod_Wilfried_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wilfried_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wilfried_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);

		Info_AddChoice	(Info_Mod_Wilfried_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wilfried_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wilfried_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wilfried_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wilfried_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wilfried_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wilfried_EXIT (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_EXIT_Condition;
	information	= Info_Mod_Wilfried_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wilfried_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wilfried_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
