INSTANCE Info_Mod_Bill_Hi (C_INFO)
{
	npc		= Mod_929_PIR_Bill_AW;
	nr		= 1;
	condition	= Info_Mod_Bill_Hi_Condition;
	information	= Info_Mod_Bill_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Bill_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bill_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Bill_Hi_03_01"); //I'm Bill.
};

INSTANCE Info_Mod_Bill_Rezept (C_INFO)
{
	npc		= Mod_929_PIR_Bill_AW;
	nr		= 1;
	condition	= Info_Mod_Bill_Rezept_Condition;
	information	= Info_Mod_Bill_Rezept_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got something of yours.";
};

FUNC INT Info_Mod_Bill_Rezept_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alvro_Melasse))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bill_Hi))
	&& (Npc_HasItems(hero, Mod_BillsRumRezept) == 1)
	&& (Mod_BillsRezeptGelesen == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bill_Rezept_Info()
{
	AI_Output(hero, self, "Info_Mod_Bill_Rezept_15_00"); //I got something of yours.
	AI_Output(self, hero, "Info_Mod_Bill_Rezept_03_01"); //What do you mean?
	AI_Output(hero, self, "Info_Mod_Bill_Rezept_15_02"); //I found this note at Alvro's. It's a letter from you.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Bill_Rezept_03_03"); //Um, well, it's not what it looks like. I just didn't want to go treasure hunting again.
	AI_Output(self, hero, "Info_Mod_Bill_Rezept_03_04"); //We almost got killed last time.
	AI_Output(hero, self, "Info_Mod_Bill_Rezept_15_05"); //I should report Greg.
	AI_Output(self, hero, "Info_Mod_Bill_Rezept_03_06"); //No, don't do that. I might be able to help you sometime.

	Info_ClearChoices	(Info_Mod_Bill_Rezept);

	Info_AddChoice	(Info_Mod_Bill_Rezept, "All right, I won't tell on you and you'll help me.", Info_Mod_Bill_Rezept_JA);
	Info_AddChoice	(Info_Mod_Bill_Rezept, "No, I'm gonna go see Greg.", Info_Mod_Bill_Rezept_NEIN);
};

FUNC VOID Info_Mod_Bill_Rezept_JA()
{
	AI_Output(hero, self, "Info_Mod_Bill_Rezept_JA_15_00"); //All right, I won't tell on you and you'll help me.
	AI_Output(self, hero, "Info_Mod_Bill_Rezept_JA_03_01"); //Thanks. If you have a problem, come to me right now, I'll help you.

	Info_ClearChoices	(Info_Mod_Bill_Rezept);
};

FUNC VOID Info_Mod_Bill_Rezept_NEIN()
{
	AI_Output(hero, self, "Info_Mod_Bill_Rezept_NEIN_15_00"); //No, I'm gonna go see Greg.
	AI_Output(self, hero, "Info_Mod_Bill_Rezept_NEIN_03_01"); //Whatever you say, but I could have been useful to you.

	Mod_BillsVerbrechenPetzen = 1;
	
	Info_ClearChoices	(Info_Mod_Bill_Rezept);
};

INSTANCE Info_Mod_Bill_Befreiung (C_INFO)
{
	npc		= Mod_929_PIR_Bill_AW;
	nr		= 1;
	condition	= Info_Mod_Bill_Befreiung_Condition;
	information	= Info_Mod_Bill_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "You pull a long snout like that, did something happen?";
};

FUNC INT Info_Mod_Bill_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Befreiung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bill_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung_15_00"); //You pull a long snout like that, did something happen?
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_01"); //I guess you could say that. My friend, Owen, is no longer here.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_02"); //Since we were attacked by the undead and this cult, he has disappeared without a trace.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_03"); //I think he ran away with fear, but I wonder how he did it because the camp was closed.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_04"); //I don't know what to do.
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung_15_05"); //Where did you last see Owen? I mean, he can't just disappear.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_06"); //(thoughtfully) Lastly, before the attack on Guard behind the lake near Greg's house, because there is a path leading into the mountains and from there we are at the mercy of possible attacks of the undead.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_07"); //I think he disappeared there.
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung_15_08"); //Strange is that, I'll try to find your friend.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_09"); //(brightens) Really? I can't thank you enough.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_10"); //What I wanted to say is that Alligator Jack has also left to find Bill.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_11"); //Maybe you can catch up with him.
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung_15_12"); //Well, thanks for the info. I'll be on my way.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_13"); //Good luck to you!
	
	Log_CreateTopic	(TOPIC_MOD_BEL_PIRBILL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRBILL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_PIRBILL, "Bill's friend Owen has disappeared since the undead attack. He was last seen near Greg's hut on his way into the mountains. I should start my search there.");
};

INSTANCE Info_Mod_Bill_Befreiung2 (C_INFO)
{
	npc		= Mod_929_PIR_Bill_AW;
	nr		= 1;
	condition	= Info_Mod_Bill_Befreiung2_Condition;
	information	= Info_Mod_Bill_Befreiung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'll bring Owen back to you.";
};

FUNC INT Info_Mod_Bill_Befreiung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bill_Befreiung))
	&& (Npc_KnowsInfo(hero, Info_Mod_Owen_Befreiung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bill_Befreiung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung2_15_00"); //I'll bring Owen back to you.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung2_03_01"); //Thank you, thank you. I can't thank you enough. You saved Owen. Here, take this!

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(hero, self, "Info_Mod_Bill_Befreiung2_15_02"); //Thanks. But I have some bad news for you.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung2_03_03"); //(surprised) Oh, yeah? What's this about?
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung2_15_04"); //Alligator Jack. I found his body in the mountains. He was killed by the bandits who had also kidnapped Owen.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung2_03_05"); //(stuttering) This can... can't be. Alligator Jack was one of the best.
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung2_15_06"); //I can't understand it either. But I found his body.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung2_03_07"); //He died to help his comrades. We'll drink to his well-being and make him a decent funeral.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung2_03_08"); //Anyway, thank you for your help. Now, if you'll excuse me, I'm going to take care of Owen.
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung2_15_09"); //All clear.

	B_GivePlayerXP	(600);

	Npc_ClearAIQueue	(Mod_939_PIR_Owen_AW);

	B_StartOtherRoutine	(Mod_939_PIR_Owen_AW, "START");

	Mod_Piratenbefreiung += 1;
	
	B_LogEntry_More	(TOPIC_MOD_BEL_PIRBILL, TOPIC_MOD_BEL_PIRATENLAGER, "I brought Owen to Bill and told him about Alligator Jack.", "I found it for Bill Owen. Unfortunately, alligator jack was killed looking for owen.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRBILL, LOG_SUCCESS);
};

INSTANCE Info_Mod_Bill_Pickpocket (C_INFO)
{
	npc		= Mod_929_PIR_Bill_AW;
	nr		= 1;
	condition	= Info_Mod_Bill_Pickpocket_Condition;
	information	= Info_Mod_Bill_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Bill_Pickpocket_Condition()
{
	C_Beklauen	(50, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Bill_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bill_Pickpocket);

	Info_AddChoice	(Info_Mod_Bill_Pickpocket, DIALOG_BACK, Info_Mod_Bill_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bill_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bill_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bill_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bill_Pickpocket);
};

FUNC VOID Info_Mod_Bill_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bill_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bill_Pickpocket);

		Info_AddChoice	(Info_Mod_Bill_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bill_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bill_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bill_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bill_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bill_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bill_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bill_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bill_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bill_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bill_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bill_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bill_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bill_EXIT (C_INFO)
{
	npc		= Mod_929_PIR_Bill_AW;
	nr		= 1;
	condition	= Info_Mod_Bill_EXIT_Condition;
	information	= Info_Mod_Bill_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bill_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bill_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
