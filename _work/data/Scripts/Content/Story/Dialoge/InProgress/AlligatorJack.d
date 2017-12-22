INSTANCE Info_Mod_AlligatorJack_Hi (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Hi_Condition;
	information	= Info_Mod_AlligatorJack_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "So alone in the hall?";
};

FUNC INT Info_Mod_AlligatorJack_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Henry_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Hi_15_00"); //So alone in the hall?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Hi_03_01"); //Hunters are usually alone. But my buddies aren't far away.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Hi_15_02"); //Back there where I see the palisades?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Hi_03_03"); //Exactly. There's our pirate camp.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Hi_15_04"); //pirate ship interesting. What do you mean, could they join you?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Hi_03_05"); //Possible. You have to ask Captain Greg. By the way, I'm called Alligator Jack.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Hi_15_06"); //Pleased to meet you. I'll have a look.

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_AlligatorJack_Beerdigung (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Beerdigung_Condition;
	information	= Info_Mod_AlligatorJack_Beerdigung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlligatorJack_Beerdigung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_AJAlive))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_Beerdigung_Info()
{
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Beerdigung_03_00"); //What, how, where am I? Finally the bandits and then everything dark.

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_AlligatorJack_Beerdigung_03_01"); //And what happened to you? Stand around here and stare as if you've seen a ghost.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Beerdigung_03_02"); //And trees, flowers, rabbits? What the mermaid happened here?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Beerdigung_03_03"); //As soon as I'm unconscious for an hour, the camp seems to have completely decayed.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_AlligatorJack_Sweetwater (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Sweetwater_Condition;
	information	= Info_Mod_AlligatorJack_Sweetwater_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're the alligator specialist?";
};

FUNC INT Info_Mod_AlligatorJack_Sweetwater_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Sweetwater))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_Sweetwater_Info()
{
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater_15_00"); //You're the alligator specialist?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater_03_01"); //Yeah, that's me. And I'm a hunter. Pirate, above all.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater_15_02"); //And what about the alligators?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater_03_03"); //There are simply too many of them. There must be mother animals.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater_15_04"); //What if I support you?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater_03_05"); //Then we could do it, I guess.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater_15_06"); //Then stay close to me. Don't charge off or something.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater_03_07"); //Tell me about it, mate.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater_15_08"); //Hmm.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ALLIGATOREN");

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	Wld_InsertNpc	(Alligator_AJ_01, "ADW_PIRATECAMP_INSEL_01");
	Wld_InsertNpc	(Alligator_AJ_02, "ADW_PIRATECAMP_INSEL_01");
	Wld_InsertNpc	(Alligator_AJ_03, "ADW_PIRATECAMP_WATERHOLE_06");
	Wld_InsertNpc	(Alligator_AJ_04, "ADW_PIRATECAMP_WATERHOLE_06");
	Wld_InsertNpc	(Alligator_AJ_05, "ADW_PIRATECAMP_WATERHOLE_07");
	Wld_InsertNpc	(Alligator_AJ_06, "ADW_PIRATECAMP_WATERHOLE_07");
	Wld_InsertNpc	(Alligator_AJ_07, "ADW_PIRATECAMP_WATERHOLE_08");
	Wld_InsertNpc	(Alligator_AJ_08, "ADW_PIRATECAMP_WATERHOLE_08");
	Wld_InsertNpc	(Alligator_AJ_09, "ADW_PIRATECAMP_WATERHOLE_07");
	Wld_InsertNpc	(Alligator_AJ_10, "ADW_PIRATECAMP_WATERHOLE_08");

	B_LogEntry	(TOPIC_MOD_JG_SWEETWATER, "Jack is talking about a horde of animals in the valley. Possibly also mother animals.");
};

INSTANCE Info_Mod_AlligatorJack_Sweetwater2 (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Sweetwater2_Condition;
	information	= Info_Mod_AlligatorJack_Sweetwater2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlligatorJack_Sweetwater2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlligatorJack_Sweetwater))
	&& (Npc_IsDead(Alligator_AJ_01))
	&& (Npc_IsDead(Alligator_AJ_02))
	&& (Npc_IsDead(Alligator_AJ_03))
	&& (Npc_IsDead(Alligator_AJ_04))
	&& (Npc_IsDead(Alligator_AJ_05))
	&& (Npc_IsDead(Alligator_AJ_06))
	&& (Npc_IsDead(Alligator_AJ_07))
	&& (Npc_IsDead(Alligator_AJ_08))
	&& (Npc_IsDead(Alligator_AJ_09))
	&& (Npc_IsDead(Alligator_AJ_10))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_Sweetwater2_Info()
{
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater2_03_00"); //Phew, tough bastards.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater2_15_01"); //Mother animals do. You were right, though. And you're a good hunter, too.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater2_03_02"); //Thanks for the praise. You don't hear that often around here.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Sweetwater2_15_03"); //All right, all right. Let Greg know. And he's supposed to make sure the magicians get fresh water. I have to keep going.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Sweetwater2_03_04"); //Will do. And thank you again.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_LogEntry	(TOPIC_MOD_JG_SWEETWATER, "Here we go again. People have fresh water. I wonder what Saturas says....");
};

INSTANCE Info_Mod_AlligatorJack_Todesangst (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Todesangst_Condition;
	information	= Info_Mod_AlligatorJack_Todesangst_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, Jack. How's the hunt?";
};

FUNC INT Info_Mod_AlligatorJack_Todesangst_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Norek_Heimweh))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Henry_Todesangst))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_Todesangst_Info()
{
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Todesangst_15_00"); //Hello, Jack. How's the hunt?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Todesangst_03_01"); //All right, all right. You want to go to the camp?
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Todesangst_15_02"); //Exactly. Why do you ask?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Todesangst_03_03"); //You'll be surprised. The old man's gone crazy.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Todesangst_15_04"); //The captain?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Todesangst_03_05"); //Yeah. Henry probably won't let you in. You'll find out.
};

INSTANCE Info_Mod_AlligatorJack_Todesangst2 (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Todesangst2_Condition;
	information	= Info_Mod_AlligatorJack_Todesangst2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want you to come with me to the camp. Probably looking after him.";
};

FUNC INT Info_Mod_AlligatorJack_Todesangst2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Todesangst))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_Todesangst2_Info()
{
	AI_Output(hero, self, "Info_Mod_AlligatorJack_Todesangst2_15_00"); //I want you to come with me to the camp. Probably looking after him.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_Todesangst2_03_01"); //Didn't I tell you? The boss is crazy. Come on, let's go.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_AlligatorJack_Pickpocket (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_Pickpocket_Condition;
	information	= Info_Mod_AlligatorJack_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_AlligatorJack_Pickpocket_Condition()
{
	C_Beklauen	(88, ItAt_AlligatorClaw, 4);
};

FUNC VOID Info_Mod_AlligatorJack_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);

	Info_AddChoice	(Info_Mod_AlligatorJack_Pickpocket, DIALOG_BACK, Info_Mod_AlligatorJack_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_AlligatorJack_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_AlligatorJack_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_AlligatorJack_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);
};

FUNC VOID Info_Mod_AlligatorJack_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);

		Info_AddChoice	(Info_Mod_AlligatorJack_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_AlligatorJack_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_AlligatorJack_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_AlligatorJack_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_AlligatorJack_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_AlligatorJack_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_AlligatorJack_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_AlligatorJack_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_AlligatorJack_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_AlligatorJack_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_AlligatorJack_EXIT (C_INFO)
{
	npc		= Mod_928_PIR_AlligatorJack_AW;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_EXIT_Condition;
	information	= Info_Mod_AlligatorJack_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_AlligatorJack_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_AlligatorJack_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
