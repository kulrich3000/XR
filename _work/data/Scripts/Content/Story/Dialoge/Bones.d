INSTANCE Info_Mod_Bones_Hi (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_Hi_Condition;
	information	= Info_Mod_Bones_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Bones_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bones_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Bones_Hi_04_01"); //I'm Bones. Anything else important?
};

INSTANCE Info_Mod_Bones_Irdorath (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_Irdorath_Condition;
	information	= Info_Mod_Bones_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm planning an excursion on the Paladin's ship.";
};

FUNC INT Info_Mod_Bones_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bones_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bones_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_00"); //I'm planning an excursion on the Paladin's ship.
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_01"); //It goes to an island of the magician Xeres....
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_04_02"); //What's it got to do with me?
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_03"); //You could join my team.
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_04"); //There's bound to be something to get, and Greg won't mind.
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_04_05"); //Oh, is that so... Well, um, why not...
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_04_06"); //I have only one condition...
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_07"); //Well, that was obvious... What do you want?
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_04_08"); //Women!
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_09"); //How?
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_04_10"); //Well, pictures of women on board.
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_04_11"); //The Paladin's ship is anchored in the port city.
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_04_12"); //I'm sure you can get me some for the trip.
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_04_13"); //(lüstern) Wäre doch sonst langweilig ... solange auf See und dann nicht mal Schiffe mit "quarry" zum Entern.
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_04_14"); //You have to have everything you need with you.
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_15"); //Um... I'll see what I can do.
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_04_16"); //I'll go to the harbour town. And woe betide you didn't organize any women until you left.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Ohh man. Now I'm supposed to get Bones some serious women to accompany us on our journey. Hmm, where can I find women who would be tough enough to go on a sea voyage with dangerous adventures, and then with Bones on board....");

	Mod_CrewCount += 1;

	Mod_BonesDabei = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Bones_Befreiung (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_Befreiung_Condition;
	information	= Info_Mod_Bones_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's the news?";
};

FUNC INT Info_Mod_Bones_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bones_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_Befreiung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bones_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung_15_00"); //What's the news?
	AI_Output(self, hero, "Info_Mod_Bones_Befreiung_04_01"); //My axe is gone, that's it!
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung_15_02"); //How did this happen?
	AI_Output(self, hero, "Info_Mod_Bones_Befreiung_04_03"); //The attack was swarming with undead warriors. I was knocked down and this pack took my axe.
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung_15_04"); //Where did these guys go?
	AI_Output(self, hero, "Info_Mod_Bones_Befreiung_04_05"); //I don't know about that. But a few of them went up to Greg's cabin when they realized they were outnumbered. They're up that mountain.
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung_15_06"); //I'll take a look around.
	AI_Output(self, hero, "Info_Mod_Bones_Befreiung_04_07"); //You want to help me?
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung_15_08"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Bones_Befreiung_04_09"); //Thank you man, but please hurry up.

	Log_CreateTopic	(TOPIC_MOD_BEL_PIRBONES, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRBONES, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_PIRBONES, "The pirate Bones lost his axe in battle with the undead. Some of the thieves went up the mountain at Greg's cabin. I should take a look around.");

	Wld_InsertNpc	(Mod_7006_UntoterEliteNovize_AW, "WP_UNDEAD_05");
	Wld_InsertNpc	(Mod_7007_UntoterEliteNovize_AW, "WP_UNDEAD_05");
	Wld_InsertNpc	(Mod_7008_UntoterEliteNovize_AW, "WP_UNDEAD_05");
	Wld_InsertNpc	(Mod_7009_UntoterEliteNovize_AW, "WP_UNDEAD_05");
};

INSTANCE Info_Mod_Bones_Befreiung2 (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_Befreiung2_Condition;
	information	= Info_Mod_Bones_Befreiung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's your ax back.";
};

FUNC INT Info_Mod_Bones_Befreiung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bones_Befreiung))
	&& (Npc_HasItems(hero, ItMw_BonesAxt) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bones_Befreiung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung2_15_00"); //Here's your ax back.

	B_GiveInvItems	(hero, self, ItMw_BonesAxt, 1);

	AI_EquipBestMeleeWeapon	(self);

	AI_ReadyMeleeWeapon	(self);

	AI_PlayAni	(self, "T_1HSINSPECT");

	AI_DrawWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Bones_Befreiung2_04_01"); //(satisfied) Thank you. You can tell Greg that I'm ready to fight again.
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung2_15_02"); //All clear.
	AI_Output(self, hero, "Info_Mod_Bones_Befreiung2_04_03"); //Here, take these two bottles of grog and this quick herring.

	B_ShowGivenThings	("2 Grog and fast herring preserved");

	CreateInvItems	(hero, ItFo_Addon_Grog, 2);
	CreateInvItems	(hero, ItFo_Addon_SchnellerHering, 1);

	Mod_Piratenbefreiung += 1;

	B_GivePlayerXP	(200);

	AI_Output(hero, self, "Info_Mod_Bones_Befreiung2_15_04"); //Thanks for the booze.

	B_LogEntry_More	(TOPIC_MOD_BEL_PIRBONES, TOPIC_MOD_BEL_PIRATENLAGER, "Bones has his axe now back and we are ready to fight again.", "Bones is ready to fight again.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRBONES, LOG_SUCCESS);
};

INSTANCE Info_Mod_Bones_Beerdigung (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_Beerdigung_Condition;
	information	= Info_Mod_Bones_Beerdigung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bones_Beerdigung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_AJAlive2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bones_Beerdigung_Info()
{
	AI_Output(self, hero, "Info_Mod_Bones_Beerdigung_04_00"); //And what is there to eat?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bones_Pickpocket (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_Pickpocket_Condition;
	information	= Info_Mod_Bones_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Bones_Pickpocket_Condition()
{
	C_Beklauen	(116, ItFo_Addon_Grog, 3);
};

FUNC VOID Info_Mod_Bones_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bones_Pickpocket);

	Info_AddChoice	(Info_Mod_Bones_Pickpocket, DIALOG_BACK, Info_Mod_Bones_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bones_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bones_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bones_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bones_Pickpocket);
};

FUNC VOID Info_Mod_Bones_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bones_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bones_Pickpocket);

		Info_AddChoice	(Info_Mod_Bones_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bones_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bones_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bones_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bones_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bones_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bones_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bones_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bones_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bones_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bones_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bones_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bones_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bones_EXIT (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_EXIT_Condition;
	information	= Info_Mod_Bones_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bones_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bones_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
