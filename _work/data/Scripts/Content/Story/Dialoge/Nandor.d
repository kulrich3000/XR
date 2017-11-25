INSTANCE Info_Mod_Nandor_Hi (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_Hi_Condition;
	information	= Info_Mod_Nandor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Nandor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nandor_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Nandor_Hi_15_00"); //Hi, weren't you one of those guys who had enough of civilization and are now making ends meet in the great outdoors?
	AI_Output(self, hero, "Info_Mod_Nandor_Hi_02_01"); //Yeah, you could say that. How do you know?
	AI_Output(hero, self, "Info_Mod_Nandor_Hi_15_02"); //I didn't know you just told me.
	AI_Output(self, hero, "Info_Mod_Nandor_Hi_02_03"); //Very funny.
	AI_Output(hero, self, "Info_Mod_Nandor_Hi_15_04"); //Then you're Nandor, right?
	AI_Output(self, hero, "Info_Mod_Nandor_Hi_02_05"); //Yeah, how do you know that again?
	AI_Output(hero, self, "Info_Mod_Nandor_Hi_15_06"); //You just told me, didn't you?
	AI_Output(self, hero, "Info_Mod_Nandor_Hi_02_07"); //I'm kidding myself. What do you want?
};

INSTANCE Info_Mod_Nandor_NoIdea (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_NoIdea_Condition;
	information	= Info_Mod_Nandor_NoIdea_Info;
	permanent	= 1;
	important	= 0;
	description	= "I don't know that yet.";
};

FUNC INT Info_Mod_Nandor_NoIdea_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nandor_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Nandor_Dragomir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nandor_NoIdea_Info()
{
	AI_Output(hero, self, "Info_Mod_Nandor_NoIdea_15_00"); //I don't know that yet.
	AI_Output(self, hero, "Info_Mod_Nandor_NoIdea_02_01"); //Then get out of here.
};

INSTANCE Info_Mod_Nandor_Dragomir (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_Dragomir_Condition;
	information	= Info_Mod_Nandor_Dragomir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dragomir wants to know what you've found so far.";
};

FUNC INT Info_Mod_Nandor_Dragomir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nandor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Mitmachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nandor_Dragomir_Info()
{
	AI_Output(hero, self, "Info_Mod_Nandor_Dragomir_15_00"); //Dragomir wants to know what you've found so far.
	AI_Output(self, hero, "Info_Mod_Nandor_Dragomir_02_01"); //And I'm supposed to tell you right now?
	AI_Output(hero, self, "Info_Mod_Nandor_Dragomir_15_02"); //Well, since I've been there before....
	AI_Output(self, hero, "Info_Mod_Nandor_Dragomir_02_03"); //All right, you won't let go anyway. For some time now there have been a few extremely aggressive wolves hanging around, which cause me a little concern.
	AI_Output(self, hero, "Info_Mod_Nandor_Dragomir_02_04"); //If you help me kill them, I'll tell you what you want to know.
	AI_Output(hero, self, "Info_Mod_Nandor_Dragomir_15_05"); //(gasps) All right.

	AI_StopProcessInfos	(self);

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	Wld_InsertNpc	(Wolf_Seltsam_01,	"FP_ROAM_WOLF_SELTSAM_01");
	Wld_InsertNpc	(Wolf_Seltsam_02,	"FP_ROAM_WOLF_SELTSAM_02");
	Wld_InsertNpc	(Wolf_Seltsam_03,	"FP_ROAM_WOLF_SELTSAM_03");
	Wld_InsertNpc	(Wolf_Seltsam_04,	"FP_ROAM_WOLF_SELTSAM_04");
	Wld_InsertNpc	(Wolf_Seltsam_05,	"FP_ROAM_WOLF_SELTSAM_05");

	B_StartOtherRoutine	(self, "WOELFE");
};

INSTANCE Info_Mod_Nandor_WoelfeTot (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_WoelfeTot_Condition;
	information	= Info_Mod_Nandor_WoelfeTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nandor_WoelfeTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nandor_Dragomir))
	&& (Npc_IsDead(Wolf_Seltsam_01))
	&& (Npc_IsDead(Wolf_Seltsam_02))
	&& (Npc_IsDead(Wolf_Seltsam_03))
	&& (Npc_IsDead(Wolf_Seltsam_04))
	&& (Npc_IsDead(Wolf_Seltsam_05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nandor_WoelfeTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Nandor_WoelfeTot_02_00"); //Did you see the look in her eyes, too?
	AI_Output(hero, self, "Info_Mod_Nandor_WoelfeTot_15_01"); //Well....
	AI_Output(self, hero, "Info_Mod_Nandor_WoelfeTot_02_02"); //He was just.... unfeeling. Rigid. There's something wrong with these things.
	AI_Output(self, hero, "Info_Mod_Nandor_WoelfeTot_02_03"); //I will continue to stay here and observe the forest. You can deliver this message to Dragomir and tell him about these wolves.

	CreateInvItems	(self, ItWr_NandorToDragomir, 1);
	B_GiveInvItems	(self, hero, ItWr_NandorToDragomir, 1);

	AI_Output(hero, self, "Info_Mod_Nandor_WoelfeTot_15_04"); //I will do it. Don't forget it.
	AI_Output(self, hero, "Info_Mod_Nandor_WoelfeTot_02_05"); //What am I supposed to remember?
	AI_Output(hero, self, "Info_Mod_Nandor_WoelfeTot_15_06"); //You already know that.

	B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Nandor gave me a message for Dragomir and told me to tell Dragomir about the aggressive wolves.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Nandor_Untier (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_Untier_Condition;
	information	= Info_Mod_Nandor_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "I wanted to find out if any wild animals...";
};

FUNC INT Info_Mod_Nandor_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nandor_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nandor_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Nandor_Untier_15_00"); //I wanted to find out if any wild animals...
	AI_Output(self, hero, "Info_Mod_Nandor_Untier_02_01"); //That too. If you want to talk about wildlife, why don't you go southeast to the mountains to the beast that eats all my game?

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "That's a pretty specific clue that Nandor gave me. Southeast into the mountains, seen from him.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Nandor_AlterMann (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_AlterMann_Condition;
	information	= Info_Mod_Nandor_AlterMann_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ask about old man in the woods.";
};

FUNC INT Info_Mod_Nandor_AlterMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_AlterWaldMann))
	&& (Mod_BDT_AlterWaldMann < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nandor_AlterMann_Info()
{
	if (Mod_BDT_AlterWaldMann == 0)
	{
		B_Say	(hero, self, "$ALTERWALDMANN01");

		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_00"); //Ahh, you mean the old man of the woods. Yeah, I know something about him.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_01"); //It is said to be centuries old and to protect the animals of the forest around Khorata.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_02"); //It is said that he is blind, but at the same time he has a magical talent.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_03"); //That's all I can think of right now. Maybe someone else knows more.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "From the first ranger I didn't get much new information. The old man of the forest, protecting the animals, he is ancient, blind and magical. Maybe another ranger knows more.");
	}
	else if (Mod_BDT_AlterWaldMann == 1)
	{
		B_Say	(hero, self, "$ALTERWALDMANN02");

		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_04"); //The old man of the forest? Yes, I heard he was once a servant of Adano.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_05"); //It is unclear whether he was a ranger like us, a magician of water, or a transforming mage.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_06"); //His magical abilities, as well as his strong attachment to the animal and plant world are proof that he has something of everything.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "At the 2nd ranger I also didn't learn much worth knowing. The old man of the forest is said to be connected with Adanos and creation, especially the animals and plants.");
	}
	else if (Mod_BDT_AlterWaldMann == 2)
	{
		B_Say	(hero, self, "$ALTERWALDMANN03");

		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_07"); //Well, I can't tell you much about him.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_08"); //The problem is also that he does not talk to anyone, not even us, even if we are pursuing similar goals.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_09"); //Alone with the animals of the forest he entertains himself.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_10"); //Well, if I were a boar, I'm sure I could tell you more about him.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Acha, this could have been an important clue. The old man of the forest completely avoids humans, only speaks to animals.");
	}
	else if (Mod_BDT_AlterWaldMann == 3)
	{
		B_Say	(hero, self, "$ALTERWALDMANN04");

		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_11"); //The old man of the forest? Well, he's supposed to be closely related to the fauna and flora.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_12"); //It is said that he leads pack animals such as boar or wolves to protect the forest against intruders.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_13"); //Even it is said that it is often found in the shape of a green wolf.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Above all, he should also instruct larger pack animals such as boar and wolves to protect the forest against intruders.");
	}
	else if (Mod_BDT_AlterWaldMann == 4)
	{
		B_Say	(hero, self, "$ALTERWALDMANN05");

		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_14"); //You're interested in stories about the old man of the forest?
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_15"); //Well, I don't know much about this mystical oddball.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_16"); //It is said to reside mostly in the dark forest, but also near water bodies such as lakes.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_17"); //Rarely has someone seen him....

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "It is most likely to be found in Khorata's dense forest near a lake.");
	};

	Mod_BDT_AlterWaldMann += 1;
};

INSTANCE Info_Mod_Nandor_VinoBrennerei (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_VinoBrennerei_Condition;
	information	= Info_Mod_Nandor_VinoBrennerei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nandor_VinoBrennerei_Condition()
{
	if (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nandor_VinoBrennerei_Info()
{
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_00"); //Hey, what are you doing here?
	AI_Output(hero, self, "Info_Mod_Nandor_VinoBrennerei_15_01"); //So...
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_02"); //I'd rather warn you not to go any further in here. I don't feel like getting you out of there, too.
	AI_Output(hero, self, "Info_Mod_Nandor_VinoBrennerei_15_03"); //What do you think?
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_04"); //I refer to the nasty spider beasts that enter the distillery under the doorway.
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_05"); //Vino can speak of luck that I heard him scream, otherwise he would have ended up as a midday snack for the disgusting beasts.
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_06"); //I found him lying here unconscious and brought him to my camp.
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_07"); //Seems to have gotten some bites, but he'll recover.
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_08"); //Well, you better think hard about going in there.

	if (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		Log_CreateTopic	(TOPIC_MOD_VINO_WO, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_VINO_WO, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_VINO_WO, "Vino is in Nandor's camp. He was attacked by small spiders, but will soon recover.");
	};
};

INSTANCE Info_Mod_Nandor_Pickpocket (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_Pickpocket_Condition;
	information	= Info_Mod_Nandor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Nandor_Pickpocket_Condition()
{
	C_Beklauen	(89, ItAt_Teeth, 7);
};

FUNC VOID Info_Mod_Nandor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);

	Info_AddChoice	(Info_Mod_Nandor_Pickpocket, DIALOG_BACK, Info_Mod_Nandor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Nandor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Nandor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Nandor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);
};

FUNC VOID Info_Mod_Nandor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);

		Info_AddChoice	(Info_Mod_Nandor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Nandor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Nandor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Nandor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Nandor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Nandor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Nandor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Nandor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Nandor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Nandor_EXIT (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_EXIT_Condition;
	information	= Info_Mod_Nandor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nandor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nandor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
