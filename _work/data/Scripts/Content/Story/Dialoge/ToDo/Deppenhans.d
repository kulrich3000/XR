INSTANCE Info_Mod_Deppenhans_Truhe (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_Truhe_Condition;
	information	= Info_Mod_Deppenhans_Truhe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Deppenhans_Truhe_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Deppenhans_Truhe_Info()
{
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_01_00"); //Hey, can you give me a hand? I'm having trouble with my chest.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_01_01"); //I can't get my life savings.
	AI_Output(hero, self, "Info_Mod_Deppenhans_Truhe_15_02"); //Trouble with the castle?
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_01_03"); //Nah, she needs another one on the lid.
	AI_Output(hero, self, "Info_Mod_Deppenhans_Truhe_15_04"); //How?
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_01_05"); //Well, she jumps and bites like crazy again.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_01_06"); //This time it was really great, so I can't chastise her on my own.
	AI_Output(hero, self, "Info_Mod_Deppenhans_Truhe_15_07"); //What kind of nonsense is that?
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_01_08"); //Yeah, you're right, it's nonsense what she does again.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_01_09"); //Couldn't behave like a tree, though. Ran through the field and turned everything upside down.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_01_10"); //At some point I took my axe and made it the chest.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_01_11"); //But behavior's still no better.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Deppenhans_Truhe_15_12"); //(to himself) And I thought there were the weirdest birds in the colony at that time.

	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_01_13"); //Yeah, it's weird, the good one.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_01_14"); //If you help me calm her down, I'll give you some of my savings.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_01_15"); //I'm gonna go inside and check on her.

	Log_CreateTopic	(TOPIC_MOD_DEPPENHANS_TRUHE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DEPPENHANS_TRUHE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DEPPENHANS_TRUHE, "In Khorata, one encounters some curiosities. The farmer Deppenhans asked me to teach his chest how to behave with a few strokes, as it supposedly jumps and bites like wild animals. What to think of it.... well. But since he promised me some of his savings as a reward, maybe I should take a look at what's going on.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRUHE");

	Wld_InsertNpc	(Truhe_Deppenhans, "FP_ROAM_DEPPENHANS_TRUHE");
};

INSTANCE Info_Mod_Deppenhans_Truhe2 (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_Truhe2_Condition;
	information	= Info_Mod_Deppenhans_Truhe2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Deppenhans_Truhe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Deppenhans_Truhe))
	&& (Npc_GetDistToWP(self, "REL_SURFACE_220") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Deppenhans_Truhe2_Info()
{
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe2_01_00"); //There, look. She hasn't been that nasty in a long time.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe2_01_01"); //Please, miss one thing, she won't forget it so quickly.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Deppenhans_Truhe3 (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_Truhe3_Condition;
	information	= Info_Mod_Deppenhans_Truhe3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Deppenhans_Truhe3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Deppenhans_Truhe2))
	&& (Npc_IsDead(Truhe_Deppenhans))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Deppenhans_Truhe3_Info()
{
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe3_01_00"); //Great, you did it.

	AI_GotoNpc	(self, Truhe_Deppenhans);

	AI_TurnToNpc	(self, Truhe_Deppenhans);

	AI_PlayAni	(self, "T_PLUNDER");

	AI_GotoNpc	(self, hero);

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe3_01_01"); //And here, as promised, part of my savings.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe3_01_02"); //Here, take half. You did a really good job and you really earned it.

	B_GiveInvItems	(self, hero, ItPl_Beet, 6);

	AI_Output(hero, self, "Info_Mod_Deppenhans_Truhe3_15_03"); //Ohh, great, turnips.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe3_01_04"); //Yeah, I'm glad you like them.

	B_SetTopicStatus	(TOPIC_MOD_DEPPENHANS_TRUHE, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	B_StartOtherRoutine	(self, "START");

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Deppenhans_Kaninchenplage (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_Kaninchenplage_Condition;
	information	= Info_Mod_Deppenhans_Kaninchenplage_Info;
	permanent	= 0;
	important	= 0;
	description	= "You got a lot of rabbit plague in your field.";
};

FUNC INT Info_Mod_Deppenhans_Kaninchenplage_Condition()
{
	if (Mod_WM_UnheilFertig == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Deppenhans_Kaninchenplage_Info()
{
	AI_Output(hero, self, "Info_Mod_Deppenhans_Kaninchenplage_15_00"); //You got a lot of rabbit plague in your field.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Kaninchenplage_01_01"); //Yeah, funny, fluffy, fluffy bunnies all over the place. It's strange that my vegetables have been disappearing bit by bit ever since. Must be a thief around here somewhere....
	AI_Output(hero, self, "Info_Mod_Deppenhans_Kaninchenplage_15_02"); //Uh, yeah, anyway, do you have any idea where they all might come from?
	AI_Output(self, hero, "Info_Mod_Deppenhans_Kaninchenplage_01_03"); //Nah, they just show up like that.
	AI_Output(hero, self, "Info_Mod_Deppenhans_Kaninchenplage_15_04"); //All right, so I can comb the area for clues.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Kaninchenplage_01_05"); //Comb?! Hey, I got something for you.
	AI_Output(hero, self, "Info_Mod_Deppenhans_Kaninchenplage_15_06"); //(eagerly) Yes?! Hints?
	AI_Output(self, hero, "Info_Mod_Deppenhans_Kaninchenplage_01_07"); //Nah, I had the great idea to make an oversized comb on a wooden style. That's where I found out.

	B_GiveInvItems	(self, hero, ItMi_Rake, 1);

	AI_Output(hero, self, "Info_Mod_Deppenhans_Kaninchenplage_15_08"); //Oh, great, a rake, thank you.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Kaninchenplage_01_09"); //But you can also ask this black dressed guy who always walks around here making funny lights with his hand.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Kaninchenplage_01_10"); //Especially then a lot of rabbits appear.... He must have seen it too.

	B_LogEntry	(TOPIC_MOD_ADANOS_PLAGE, "Hmph... well, at least now I know I have to look for a magician in black clothes.");

	Wld_InsertNpc	(Mod_7412_SNOV_Novize_REL, "REL_SURFACE_110");

	Wld_InsertNpc	(Rabbit, "REL_SURFACE_110");
	Wld_InsertNpc	(Rabbit, "REL_SURFACE_110");
	Wld_InsertNpc	(Rabbit, "REL_SURFACE_110");
	Wld_InsertNpc	(Rabbit, "REL_SURFACE_110");
	Wld_InsertNpc	(Rabbit, "REL_SURFACE_110");
};

INSTANCE Info_Mod_Deppenhans_NovizeWeg (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_NovizeWeg_Condition;
	information	= Info_Mod_Deppenhans_NovizeWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Deppenhans_NovizeWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_SchwarzerNovizeKaninchen_Umgehauen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Deppenhans_NovizeWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Deppenhans_NovizeWeg_01_00"); //Hey, my vegetables stopped disappearing.
	AI_Output(self, hero, "Info_Mod_Deppenhans_NovizeWeg_01_01"); //Whatever you did, take those pumpkins as a thank you.

	B_GiveInvItems	(self, hero, ItFo_Kuerbis, 5);

	AI_Output(hero, self, "Info_Mod_Deppenhans_NovizeWeg_15_02"); //Ohh, how lovely.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Deppenhans_WoherBaum (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_WoherBaum_Condition;
	information	= Info_Mod_Deppenhans_WoherBaum_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where'd you get that moving tree?";
};

FUNC INT Info_Mod_Deppenhans_WoherBaum_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Deppenhans_Truhe3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Deppenhans_WoherBaum_Info()
{
	AI_Output(hero, self, "Info_Mod_Deppenhans_WoherBaum_15_00"); //Where'd you get that moving tree?
	AI_Output(self, hero, "Info_Mod_Deppenhans_WoherBaum_01_01"); //I planted it next to my field.... with seedlings from the damn moor.
	AI_Output(self, hero, "Info_Mod_Deppenhans_WoherBaum_01_02"); //But apparently they were brought up badly, the way he behaved. You saw it yourself.
};

INSTANCE Info_Mod_Deppenhans_Landarbeit (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_Landarbeit_Condition;
	information	= Info_Mod_Deppenhans_Landarbeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "What else does the farm work do?";
};

FUNC INT Info_Mod_Deppenhans_Landarbeit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Deppenhans_Truhe3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Deppenhans_Landarbeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Deppenhans_Landarbeit_15_00"); //What else does the farm work do?
	AI_Output(self, hero, "Info_Mod_Deppenhans_Landarbeit_01_01"); //It's wonderfully beautiful. I know how it works.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Landarbeit_01_02"); //The seeds and tubers come into the soil on the field and then they grow.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Landarbeit_01_03"); //My boss, the Erhard, he's doing it all wrong.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Landarbeit_01_04"); //He buried funny yellow and blue shiny chunks on the wall of his house, among all the hay bales and barrels.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Landarbeit_01_05"); //I thought that nothing decent would grow out of them.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Landarbeit_01_06"); //But there are strange people.
};

INSTANCE Info_Mod_Deppenhans_Pickpocket (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_Pickpocket_Condition;
	information	= Info_Mod_Deppenhans_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Deppenhans_Pickpocket_Condition()
{
	C_Beklauen	(76, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Deppenhans_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);

	Info_AddChoice	(Info_Mod_Deppenhans_Pickpocket, DIALOG_BACK, Info_Mod_Deppenhans_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Deppenhans_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Deppenhans_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Deppenhans_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);
};

FUNC VOID Info_Mod_Deppenhans_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);

		Info_AddChoice	(Info_Mod_Deppenhans_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Deppenhans_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Deppenhans_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Deppenhans_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Deppenhans_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Deppenhans_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Deppenhans_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Deppenhans_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Deppenhans_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Deppenhans_EXIT (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_EXIT_Condition;
	information	= Info_Mod_Deppenhans_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Deppenhans_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Deppenhans_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
