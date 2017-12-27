INSTANCE Info_Mod_Nagur_Hi (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_Hi_Condition;
	information	= Info_Mod_Nagur_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nagur_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_HabTrank))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagur_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Nagur_Hi_37_00"); //(To himself) If I can only get this pathetic pantshit between my fingers...
	AI_Output(hero, self, "Info_Mod_Nagur_Hi_15_01"); //What?!
	AI_Output(self, hero, "Info_Mod_Nagur_Hi_37_02"); //(to the hero) Oh, such a cowardly novice has made a lot of gambling debts and then settled... ran off somewhere towards the lighthouse.
	AI_Output(self, hero, "Info_Mod_Nagur_Hi_37_03"); //But let him pay... one way or another.
	AI_Output(self, hero, "Info_Mod_Nagur_Hi_37_04"); //If something were to happen to him, I would generously reward the person who brings me the contents of his pockets.
	AI_Output(self, hero, "Info_Mod_Nagur_Hi_37_05"); //(to oneself) That would be a warning to the others to settle their debts in time.

	B_LogEntry	(TOPIC_MOD_ASS_AUFNAHME, "Probably Akahasch is up towards the lighthouse. He seems to be in debt. Nagur wishes his death and offers a reward for the contents of his bags.");

	Wld_InsertNpc	(Mod_4016_NOV_Akahasch_NW, "LIGHTHOUSE");
};

INSTANCE Info_Mod_Nagur_AkahaschTot (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_AkahaschTot_Condition;
	information	= Info_Mod_Nagur_AkahaschTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Akahasch had a little' accident'...";
};

FUNC INT Info_Mod_Nagur_AkahaschTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagur_Hi))
	&& (Npc_IsDead(Mod_4016_NOV_Akahasch_NW))
	&& (Npc_HasItems(hero, ItWr_AkahaschNagur) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagur_AkahaschTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Nagur_AkahaschTot_15_00"); //Akahasch hatte einen kleinen "accident" ...
	AI_Output(self, hero, "Info_Mod_Nagur_AkahaschTot_37_01"); //(anticipated) Yes?
	AI_Output(hero, self, "Info_Mod_Nagur_AkahaschTot_15_02"); //Er wird wohl leider nie wieder jemandem "jack" können ...
	AI_Output(self, hero, "Info_Mod_Nagur_AkahaschTot_37_03"); //That sounds promising. What about the stuff he had on him?
	AI_Output(hero, self, "Info_Mod_Nagur_AkahaschTot_15_04"); //On the one hand, he had....
	AI_Output(self, hero, "Info_Mod_Nagur_AkahaschTot_37_05"); //No, not in detail... as proof of his demise.
	AI_Output(hero, self, "Info_Mod_Nagur_AkahaschTot_15_06"); //Here he is, sir.

	B_GiveInvItems	(hero, self, ItWr_AkahaschNagur, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Nagur_AkahaschTot_37_07"); //Yeah, there's no doubt about it. He wouldn't have given it to you voluntarily.

	B_GiveInvItems	(self, hero, ItMi_Gold, 180);

	AI_Output(self, hero, "Info_Mod_Nagur_AkahaschTot_37_08"); //You're a good boy. Here, have some fun on my tab.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Nagur_Geschaeft (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_Geschaeft_Condition;
	information	= Info_Mod_Nagur_Geschaeft_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nagur_Geschaeft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagur_AkahaschTot))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagur_Geschaeft_Info()
{
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_00"); //Good thing you showed up now. I have another job for you.
	AI_Output(hero, self, "Info_Mod_Nagur_Geschaeft_15_01"); //Who am I gonna kill this time?
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_02"); //The traitorous scum who once worked for me.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_03"); //Two of my boys have recently joined forces with the smuggler's pack that has spread in the harbour district.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_04"); //Now they think they can dictate prices to me and try to squeeze me out of the shops bit by bit.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_05"); //But that's not going to happen.... because you're gonna make an example of them.
	AI_Output(hero, self, "Info_Mod_Nagur_Geschaeft_15_06"); //And what's in it for me?
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_07"); //Well, I'll give you 200 gold coins on the one hand, and you can keep everything you find on those bastards.
	AI_Output(hero, self, "Info_Mod_Nagur_Geschaeft_15_08"); //And where can I find her?
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_09"); //The question in this case is how. You will deposit a package in the boxes between the warehouse and the cargo crane and then walk to the tree above the warehouse to see everything from there.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_10"); //One of the bastards was supposed to pick up the package and go to her stash.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft_37_11"); //You're gonna follow him and get rid of the bastards. Any more questions? No? Then you have the package here.

	B_GiveInvItems	(self, hero, ItMi_NagurPaket, 1);

	Log_CreateTopic	(TOPIC_MOD_NAGUR_GESCHAEFT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NAGUR_GESCHAEFT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NAGUR_GESCHAEFT, "Nagur's in trouble with some competitors in the port district. To solve the problem, I have to put a package in boxes between the warehouse and the crane, go to the tree above the warehouse and keep an eye on everything. As soon as one of them picks up the package, I'm supposed to follow him to the stash and take them all down there.");

	var int ptr; ptr = MEM_SearchVobByName("KARDIFINFOTRUHE");

	var zCVob vob; vob = MEM_PtrToInst(ptr);

	vob.trafoObjToWorld[3] = mkf(-289);
	vob.trafoObjToWorld[7] = mkf(-181);
	vob.trafoObjToWorld[11] = mkf(3551);

	VobPositionUpdated(ptr);
};

INSTANCE Info_Mod_Nagur_Geschaeft2 (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_Geschaeft2_Condition;
	information	= Info_Mod_Nagur_Geschaeft2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The traitors and smugglers won't cause any more trouble.";
};

FUNC INT Info_Mod_Nagur_Geschaeft2_Condition()
{
	if (Mod_Nagur_Geschaeft == 4)
	|| (Mod_Nagur_Geschaeft == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagur_Geschaeft2_Info()
{
	AI_Output(hero, self, "Info_Mod_Nagur_Geschaeft2_15_00"); //The traitors and smugglers won't cause any more trouble.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft2_37_01"); //Excellent. This will be a warning to everyone else not to mess with me.
	AI_Output(self, hero, "Info_Mod_Nagur_Geschaeft2_37_02"); //You did your job well again. Here's your gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	if (Mod_Nagur_Geschaeft == 4)
	{
		B_LogEntry	(TOPIC_MOD_NAGUR_GESCHAEFT, "I told Nagur I got rid of the boys. Now all I have to do is stop by the harbour pub in the next few days.");

		B_GivePlayerXP	(150);

		Mod_Nagur_Geschaeft_Tag = Wld_GetDay();
	}
	else
	{
		B_SetTopicStatus	(TOPIC_MOD_NAGUR_GESCHAEFT, LOG_SUCCESS);

		B_GivePlayerXP	(350);

		Mod_Nagur_Geschaeft_Tag = Wld_GetDay();
	};
};

INSTANCE Info_Mod_Nagur_Rache (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_Rache_Condition;
	information	= Info_Mod_Nagur_Rache_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nagur_Rache_Condition()
{
	if (Nagur_KillAkahasch == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagur_Rache_Info()
{
	AI_Output(self, hero, "Info_Mod_Nagur_Rache_37_00"); //Did you find what you were looking for?
	AI_Output(hero, self, "Info_Mod_Nagur_Rache_15_01"); //Nagur?!
	AI_Output(self, hero, "Info_Mod_Nagur_Rache_37_02"); //Surprised to see me?
	AI_Output(self, hero, "Info_Mod_Nagur_Rache_37_03"); //Yes, I've been taken out of circulation for quite a while, I've been stewing in the dungeon for a long time.... and I've had a lot of time to think about how to return the favor with whoever I owe it to.
	AI_Output(self, hero, "Info_Mod_Nagur_Rache_37_04"); //I hope you like the result.... the nice reunion with your colleague.

	AI_TurnToNpc	(self, Mod_7780_SNOV_Novize_NW);

	AI_Output(self, hero, "Info_Mod_Nagur_Rache_37_05"); //The same to him as with Akahasch!

	AI_TurnToNpc	(self, hero);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	Mod_7780_SNOV_Novize_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7780_SNOV_Novize_NW, GIL_STRF);

	Mod_7779_ASS_Assassine_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7779_ASS_Assassine_NW, GIL_STRF);
};

INSTANCE Info_Mod_Nagur_Pickpocket (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_Pickpocket_Condition;
	information	= Info_Mod_Nagur_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Nagur_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Nagur_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);

	Info_AddChoice	(Info_Mod_Nagur_Pickpocket, DIALOG_BACK, Info_Mod_Nagur_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Nagur_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Nagur_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Nagur_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);
};

FUNC VOID Info_Mod_Nagur_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);

		Info_AddChoice	(Info_Mod_Nagur_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Nagur_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Nagur_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Nagur_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Nagur_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Nagur_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Nagur_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Nagur_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Nagur_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Nagur_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Nagur_EXIT (C_INFO)
{
	npc		= Mod_743_NONE_Nagur_NW;
	nr		= 1;
	condition	= Info_Mod_Nagur_EXIT_Condition;
	information	= Info_Mod_Nagur_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nagur_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nagur_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
