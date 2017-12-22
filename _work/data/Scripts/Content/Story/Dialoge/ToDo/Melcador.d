INSTANCE Info_Mod_Melcador_Hi (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Hi_Condition;
	information	= Info_Mod_Melcador_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You kind of look a little irritated.";
};

FUNC INT Info_Mod_Melcador_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Melcador_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Hi_15_00"); //You kind of look a little irritated.
	AI_Output(self, hero, "Info_Mod_Melcador_Hi_06_01"); //You don't say! If you were to be entrusted with as many crappy tasks as I am, then you'd pull a face like that.
	AI_Output(hero, self, "Info_Mod_Melcador_Hi_15_02"); //What's your fucking job?
	AI_Output(self, hero, "Info_Mod_Melcador_Hi_06_03"); //Ole entrusted me with the wonderful task of ensuring that everyone here in the camp fulfils their assigned task.
	AI_Output(self, hero, "Info_Mod_Melcador_Hi_06_04"); //And since you don't see anything going on here except Heidrek and Jerry, it means I haven't done my job.
	AI_Output(self, hero, "Info_Mod_Melcador_Hi_06_05"); //That's the reason why Ole is always in my ears, that I don't do my job and so he is giving me all kinds of shit, which I have to do.
	AI_Output(self, hero, "Info_Mod_Melcador_Hi_06_06"); //I can tell you, I'm going to get stupid here soon.
	AI_Output(hero, self, "Info_Mod_Melcador_Hi_15_07"); //Maybe I can help you with your tasks.
	AI_Output(self, hero, "Info_Mod_Melcador_Hi_06_08"); //I could use a little help, of course, but you should have talked to Ole first, not that it looks like I'm avoiding work.
};

INSTANCE Info_Mod_Melcador_Buddler (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler_Condition;
	information	= Info_Mod_Melcador_Buddler_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm supposed to help you from Ole.";
};

FUNC INT Info_Mod_Melcador_Buddler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ole_Vorbereitungen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler_15_00"); //I'm supposed to help you from Ole. So what are you gonna do?
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler_06_01"); //I'm supposed to take care of new diggers. If you want, you can come with me to the old camp, where we'll find new people.
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler_15_02"); //Then you go ahead and I'll follow you.

	Log_CreateTopic	(TOPIC_MOD_KG_BUDDLER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KG_BUDDLER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "I'm supposed to escort Melcador to the old camp to entice off Buddler.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOOC");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Melcador_Buddler2 (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler2_Condition;
	information	= Info_Mod_Melcador_Buddler2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Melcador_Buddler2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler))
	&& (Npc_GetDistToWP(self, "OCR_OUTSIDE_HUT_2") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler2_Info()
{
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler2_06_00"); //Well, I'm gonna have a chat with Ian, maybe he knows who we could use.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler2_06_01"); //You should ask around the camp in the meantime, you may be lucky and find someone.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "While Melcador is talking to Ian, he wants me to look around the camp. Maybe I'll find a digger for our cause.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TALKWITH");
	B_StartOtherRoutine	(Mod_1902_STT_Ian_MT, "TALKWITH");
};

INSTANCE Info_Mod_Melcador_Buddler3 (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler3_Condition;
	information	= Info_Mod_Melcador_Buddler3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found a digger!";
};

FUNC INT Info_Mod_Melcador_Buddler3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Costa_Buddler))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler3_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler3_15_00"); //I found a digger!
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler3_06_01"); //Very nice, let's go now.
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler3_15_02"); //But he still needs his old Buddler book to familiarize himself with the matter.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler3_06_03"); //It would have been too much fun. And where is it?!
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler3_15_04"); //A skeleton took it from him.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler3_06_05"); //This is getting better and better. Okay, I'll make you a proposition. You go ahead and I'll follow you.
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler3_15_06"); //Well, follow me.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "Melcador will follow me to the camp.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOCOSTA");
	B_StartOtherRoutine	(Mod_1902_STT_Ian_MT, "START");

	Wld_InsertNpc	(Skeleton_Costa, "SPAWN_TALL_PATH_BANDITOS2_03");
};

INSTANCE Info_Mod_Melcador_Buddler4 (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler4_Condition;
	information	= Info_Mod_Melcador_Buddler4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Melcador_Buddler4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler3))
	&& (Npc_HasItems(hero, ItKe_Costa) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler4_Info()
{
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler4_06_00"); //Great, no book there.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler4_06_01"); //Probably this damn skeleton has taken the book to some underground temple where we are allowed to fight through hordes of skeleton warriors.
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler4_15_02"); //Don't make such a fuss. The key is meant for one of the trunks here.
};

INSTANCE Info_Mod_Melcador_Buddler5 (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler5_Condition;
	information	= Info_Mod_Melcador_Buddler5_Info;
	permanent	= 0;
	important	= 0;
	description	= "You see?";
};

FUNC INT Info_Mod_Melcador_Buddler5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler4))
	&& (Npc_HasItems(hero, ItWr_Buddlerbuch) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler5_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler5_15_00"); //You see? The skeleton just put it in a chest and not a goddamn temple.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler5_06_01"); //All right, all right. Take his book to the Buddler now, I'll go back to the camp.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "I'm supposed to bring Costa his book. Melcador's already going back to the camp.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Melcador_Buddler6 (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler6_Condition;
	information	= Info_Mod_Melcador_Buddler6_Info;
	permanent	= 0;
	important	= 0;
	description	= "The digger is now waiting at the mine.";
};

FUNC INT Info_Mod_Melcador_Buddler6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Costa_Buddler2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler6_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler6_15_00"); //The digger is now waiting at the mine.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler6_06_01"); //Good, but we need another one.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler6_06_02"); //I hear there's supposed to be a bigger town in a valley called Relendel on the island.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler6_06_03"); //Maybe you'll find someone else working for us there.
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler6_15_04"); //Okay, I'll take a look around.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "Now I have to go to Relendel and look for a second digger there....");
};

INSTANCE Info_Mod_Melcador_Buddler7 (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler7_Condition;
	information	= Info_Mod_Melcador_Buddler7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Another digger is now waiting outside the mine!";
};

FUNC INT Info_Mod_Melcador_Buddler7_Condition()
{
	if (Mod_KG_Sterling == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler7_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler7_15_00"); //Another digger is now waiting outside the mine!
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler7_06_01"); //Very well, you're really useful. Here's some gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, 150);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_KG_VORBEREITUNGEN, "I helped Melcador get Buddler for the mine.");
	B_SetTopicStatus	(TOPIC_MOD_KG_BUDDLER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Melcador_Trent (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Trent_Condition;
	information	= Info_Mod_Melcador_Trent_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hymir sent me to retire.";
};

FUNC INT Info_Mod_Melcador_Trent_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hymir_Trent))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Trent_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Trent_15_00"); //Hymir sent me to retire.
	AI_Output(self, hero, "Info_Mod_Melcador_Trent_06_01"); //You're so lucky! Here's the stuff I'm supposed to give you.

	CreateInvItems	(hero, ItMw_KGErzwaffe, 1);

	CreateInvItems	(hero, ItFo_Beer, 6);

	B_ShowGivenThings	("Royal ore weapon and 6 beers received");

	AI_Output(self, hero, "Info_Mod_Melcador_Trent_06_02"); //Let's have a drink first.

	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);
};

INSTANCE Info_Mod_Melcador_Lehrer (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Lehrer_Condition;
	information	= Info_Mod_Melcador_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're fighting with a one-handed weapon, aren't you?!";
};

FUNC INT Info_Mod_Melcador_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Hi))
	&& (KG_Dabei == 1)
	&& (hero.Hitchance[NPC_TALENT_1H] < 80)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Lehrer_15_00"); //You're fighting with a one-handed weapon, aren't you?! What's it look like, are you good enough to teach me anything?
	AI_Output(self, hero, "Info_Mod_Melcador_Lehrer_06_01"); //I could teach you something, but I'm not teaching anyone the basics. So don't come to me until you've gained some experience.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KG, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KG, "Melcador can teach me how to fight with one-handed men.");
};

INSTANCE Info_Mod_Melcador_LernenMelcador (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_LernenMelcador_Condition;
	information	= Info_Mod_Melcador_LernenMelcador_Info;
	permanent	= 1;
	important	= 0;
	description	= "Have I gained enough experience?";
};

FUNC INT Info_Mod_Melcador_LernenMelcador_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Lehrer))
	&& (hero.hitchance[NPC_TALENT_1H] >= 50)
	&& (hero.hitchance[NPC_TALENT_1H] < 80)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_LernenMelcador_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_LernenMelcador_15_00"); //Have I gained enough experience?
	AI_Output(self, hero, "Info_Mod_Melcador_LernenMelcador_06_01"); //Yes, but don't forget: If you want to become a master in one-handed combat, you have to invest a lot of experience.

	Info_ClearChoices	(Info_Mod_Melcador_LernenMelcador);
	
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, "Back off.", Info_Mod_Melcador_LernenMelcador_BACK);
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, B_BuildLearnString(PRINT_Learn1H5, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Melcador_LernenMelcador_5);
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, B_BuildLearnString(PRINT_Learn1H1, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Melcador_LernenMelcador_1);
};

FUNC VOID Info_Mod_Melcador_LernenMelcador_BACK()
{
	Info_ClearChoices	(Info_Mod_Melcador_LernenMelcador);
};

FUNC VOID Info_Mod_Melcador_LernenMelcador_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_1H, 5, 80);

	Info_ClearChoices	(Info_Mod_Melcador_LernenMelcador);

	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, "Back off.", Info_Mod_Melcador_LernenMelcador_BACK);
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, B_BuildLearnString(PRINT_Learn1H5, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Melcador_LernenMelcador_5);
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, B_BuildLearnString(PRINT_Learn1H1, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Melcador_LernenMelcador_1);
};

FUNC VOID Info_Mod_Melcador_LernenMelcador_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_1H, 1, 80);

	Info_ClearChoices	(Info_Mod_Melcador_LernenMelcador);

	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, "Back off.", Info_Mod_Melcador_LernenMelcador_BACK);
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, B_BuildLearnString(PRINT_Learn1H5, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Melcador_LernenMelcador_5);
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, B_BuildLearnString(PRINT_Learn1H1, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Melcador_LernenMelcador_1);
};

INSTANCE Info_Mod_Melcador_Pickpocket (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Pickpocket_Condition;
	information	= Info_Mod_Melcador_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Melcador_Pickpocket_Condition()
{
	C_Beklauen	(93, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Melcador_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);

	Info_AddChoice	(Info_Mod_Melcador_Pickpocket, DIALOG_BACK, Info_Mod_Melcador_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Melcador_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Melcador_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Melcador_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);
};

FUNC VOID Info_Mod_Melcador_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);

		Info_AddChoice	(Info_Mod_Melcador_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Melcador_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Melcador_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Melcador_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Melcador_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Melcador_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Melcador_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Melcador_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Melcador_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Melcador_EXIT (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_EXIT_Condition;
	information	= Info_Mod_Melcador_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Melcador_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Melcador_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
