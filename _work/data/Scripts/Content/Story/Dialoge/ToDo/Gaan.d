INSTANCE Info_Mod_Gaan_Hi (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_Hi_Condition;
	information	= Info_Mod_Gaan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Gaan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gaan_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Gaan_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Gaan_Hi_07_01"); //Hi.
};

INSTANCE Info_Mod_Gaan_Dragomir (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_Dragomir_Condition;
	information	= Info_Mod_Gaan_Dragomir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dragomir sent me.";
};

FUNC INT Info_Mod_Gaan_Dragomir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gaan_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Mitmachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gaan_Dragomir_Info()
{
	AI_Output(hero, self, "Info_Mod_Gaan_Dragomir_15_00"); //Dragomir sent me.
	AI_Output(self, hero, "Info_Mod_Gaan_Dragomir_07_01"); //Then I suppose he wants to know what I found out?
	AI_Output(hero, self, "Info_Mod_Gaan_Dragomir_15_02"); //Right.
	AI_Output(self, hero, "Info_Mod_Gaan_Dragomir_07_03"); //So so far, I haven't seen anything flashy. It is also a fine hunting ground and you have a perfect view of the pass from almost every point.
	AI_Output(self, hero, "Info_Mod_Gaan_Dragomir_07_04"); //I just remembered: Last night I saw a pack of snapper coming through it.
	AI_Output(hero, self, "Info_Mod_Gaan_Dragomir_15_05"); //And what's so special about it?
	AI_Output(self, hero, "Info_Mod_Gaan_Dragomir_07_06"); //Nothing.

	B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Gaan says the pass is a good hunting ground.");
};

INSTANCE Info_Mod_Gaan_Untier (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_Untier_Condition;
	information	= Info_Mod_Gaan_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "And, in the last few days, encountered any unusual wildlife?";
};

FUNC INT Info_Mod_Gaan_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gaan_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gaan_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Gaan_Untier_15_00"); //And, in the last few days, encountered any unusual wildlife?
	AI_Output(self, hero, "Info_Mod_Gaan_Untier_07_01"); //No, just some snapper and the usual.
};

INSTANCE Info_Mod_Gaan_Ornament (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_Ornament_Condition;
	information	= Info_Mod_Gaan_Ornament_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gaan_Ornament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gaan_Ornament_Info()
{
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_00"); //Damn it, I'm going to all the trouble and then comes this pack of snappers...
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_01"); //What has happened?
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_02"); //Oh, it's a real mouse milking.
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_03"); //Only recently I shot some scavengers to get their meat, and then the snappers appear....
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_04"); //The pass doesn't seem to be quite harmless when there's so much game around.
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_05"); //Yes, that's right, some carelessness has already cost him his life.
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_06"); //Aha... Well, anyway, I'm looking for a stone ornament.
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_07"); //It could be somewhere near the pass. Did you happen to see one of these?
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_08"); //Well, you're good for me. The pass is full of rocks.
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_09"); //It's also the reason why the Scavengers keep coming back over and over....
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_10"); //Why is that? What do scavengers want with stones?
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_11"); //They're eating.
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_12"); //What?!
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_13"); //For their digestion, because it chews badly with a beak.
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_14"); //The stones in their stomach help them grind the food.
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_15"); //Ah, very interesting...
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_16"); //Someone interested in the fauna, that's nice.
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_17"); //Well, now you know what to look for in the pass.
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_18"); //(thinking) I think so...

	Wld_InsertNpc	(Snapper_Gaan, "NW_PASS_06");
	Wld_InsertNpc	(Snapper_Gaan, "NW_PASS_06");
	Wld_InsertNpc	(Snapper_Gaan, "NW_PASS_06");

	Wld_InsertNpc	(Scavenger_Gaan_01, "NW_PASS_06");
	Wld_InsertNpc	(Scavenger_Gaan_02, "NW_PASS_06");
	Wld_InsertNpc	(Scavenger_Gaan_03, "NW_PASS_06");
	Wld_InsertNpc	(Scavenger_Gaan, "NW_PASS_06");

	B_KillNpc	(Scavenger_Gaan_01);
	B_KillNpc	(Scavenger_Gaan_02);
	B_KillNpc	(Scavenger_Gaan_03);
	B_KillNpc	(Scavenger_Gaan);
};

INSTANCE Info_Mod_Gaan_Ornament_02 (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_Ornament_02_Condition;
	information	= Info_Mod_Gaan_Ornament_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gaan_Ornament_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gaan_Ornament))
	&& (Mod_GaanSnapperOrni == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gaan_Ornament_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_02_07_00"); //Clean performance. I can still get the meat.

	AI_GotoNpc	(self, Scavenger_Gaan);

	AI_PlayAni	(self, "T_PLUNDER");


	if (Npc_HasItems(Scavenger_Gaan, ItMi_Ornament_Heiler) == 1)
	{
		AI_TurnToNpc	(self, hero);

		AI_Output(self, hero, "Info_Mod_Gaan_Ornament_02_07_01"); //Well, what I found in the stomach of this scavenger. A stone ornament!
		AI_Output(hero, self, "Info_Mod_Gaan_Ornament_02_15_02"); //What?! Exactly what I was looking for...
		AI_Output(self, hero, "Info_Mod_Gaan_Ornament_02_07_03"); //Here, take this.

		B_GiveInvItems	(self, hero, ItMi_Ornament_Heiler, 1);
		Npc_RemoveInvItems	(Scavenger_Gaan, ItMi_Ornament_Heiler, 1);

		AI_Output(self, hero, "Info_Mod_Gaan_Ornament_02_07_04"); //You helped me to get to the flesh and it goes without saying that I'm ceding the piece of stone to you. See you around.
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PRESTART");
};

INSTANCE Info_Mod_Gaan_Pickpocket (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_Pickpocket_Condition;
	information	= Info_Mod_Gaan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Gaan_Pickpocket_Condition()
{
	C_Beklauen	(77, ItAt_Teeth, 6);
};

FUNC VOID Info_Mod_Gaan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);

	Info_AddChoice	(Info_Mod_Gaan_Pickpocket, DIALOG_BACK, Info_Mod_Gaan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gaan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gaan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gaan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);
};

FUNC VOID Info_Mod_Gaan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);

		Info_AddChoice	(Info_Mod_Gaan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gaan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gaan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gaan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gaan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gaan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gaan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gaan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gaan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gaan_EXIT (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_EXIT_Condition;
	information	= Info_Mod_Gaan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gaan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gaan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
