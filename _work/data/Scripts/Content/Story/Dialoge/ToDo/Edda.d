INSTANCE Info_Mod_Edda_Hi (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Hi_Condition;
	information	= Info_Mod_Edda_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "And you are?";
};

FUNC INT Info_Mod_Edda_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Edda_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_Hi_15_00"); //And you are?
	AI_Output(self, hero, "Info_Mod_Edda_Hi_26_01"); //My name is Edda. I cook most of the day soups and broths against all sorts of illnesses.
};

INSTANCE Info_Mod_Edda_SuppeKochenLernen (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_SuppeKochenLernen_Condition;
	information	= Info_Mod_Edda_SuppeKochenLernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can you show me how to make soups?";
};

FUNC INT Info_Mod_Edda_SuppeKochenLernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edda_Hi))
	&& (!Mod_Edda_Lernen)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_SuppeKochenLernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_SuppeKochenLernen_15_00"); //Can you show me how to make soups?
	AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen_26_01"); //If you like, I'll gladly share my knowledge.
	AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen_26_02"); //Since I hardly earn anything through my work, I would be very grateful for a small donation.

	Info_ClearChoices	(Info_Mod_Edda_SuppeKochenLernen);

	Info_AddChoice	(Info_Mod_Edda_SuppeKochenLernen, "Maybe later.", Info_Mod_Edda_SuppeKochenLernen_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 50)
	{
		Info_AddChoice	(Info_Mod_Edda_SuppeKochenLernen, "Here's some gold. (50 Gold give)", Info_Mod_Edda_SuppeKochenLernen_A);
	};
};

FUNC VOID Info_Mod_Edda_SuppeKochenLernen_B()
{
	AI_Output(hero, self, "Info_Mod_Edda_SuppeKochenLernen_B_15_00"); //Later, maybe.

	Info_ClearChoices	(Info_Mod_Edda_SuppeKochenLernen);

};

FUNC VOID Info_Mod_Edda_SuppeKochenLernen_A()
{
	AI_Output(hero, self, "Info_Mod_Edda_SuppeKochenLernen_A_15_00"); //Here's some gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen_A_26_01"); //Well, let me know when we're ready.

	Mod_Edda_Lernen = TRUE;

	Info_ClearChoices	(Info_Mod_Edda_SuppeKochenLernen);
};

INSTANCE Info_Mod_Edda_WiesoHier (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_WiesoHier_Condition;
	information	= Info_Mod_Edda_WiesoHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why do you live so far away from the others?";
};

FUNC INT Info_Mod_Edda_WiesoHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edda_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_WiesoHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_WiesoHier_15_00"); //Why do you live so far away from the others?
	AI_Output(self, hero, "Info_Mod_Edda_WiesoHier_26_01"); //I had the leaves a few years ago and was one of the few survivors.
	AI_Output(self, hero, "Info_Mod_Edda_WiesoHier_26_02"); //Since then, I've been treated like a leper and no one comes to me voluntarily.

	EddasWanzen_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Edda_Problem (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Problem_Condition;
	information	= Info_Mod_Edda_Problem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edda_Problem_Condition()
{
	if (Wld_GetDay() > 6)
	&& (Npc_KnowsInfo(hero, Info_Mod_Edda_Hi))
	&& (Wld_GetDay() > EddasWanzen_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_Problem_Info()
{
	AI_Output(self, hero, "Info_Mod_Edda_Problem_26_00"); //You have to help me, please!
	AI_Output(hero, self, "Info_Mod_Edda_Problem_15_01"); //What's the matter?
	AI_Output(self, hero, "Info_Mod_Edda_Problem_26_02"); //My house is full of meat bugs since yesterday!
	AI_Output(hero, self, "Info_Mod_Edda_Problem_15_03"); //Why so hysterical? They're not doing anything.
	AI_Output(self, hero, "Info_Mod_Edda_Problem_26_04"); //They're dangerous disease vectors. The smallpox, which I barely survived, is said to have been spread by them.
	AI_Output(self, hero, "Info_Mod_Edda_Problem_26_05"); //Since I found out, I can't be near her anymore.

	Edda_Schlafplatz = TRUE;

	Wld_InsertNpc	(Meatbug_Edda_01, "FP_EDDAS_WANZE_01");
	Wld_InsertNpc	(Meatbug_Edda_02, "FP_EDDAS_WANZE_02");
	Wld_InsertNpc	(Meatbug_Edda_03, "FP_EDDAS_WANZE_03");
	Wld_InsertNpc	(Meatbug_Edda_04, "FP_EDDAS_WANZE_04");
	Wld_InsertNpc	(Meatbug_Edda_05, "FP_EDDAS_WANZE_05");

	Info_ClearChoices	(Info_Mod_Edda_Problem);

	Info_AddChoice	(Info_Mod_Edda_Problem, "I will be careful not to come into contact with meat bugs (.... )", Info_Mod_Edda_Problem_Nein);
	Info_AddChoice	(Info_Mod_Edda_Problem, "This is done quickly and painlessly.", Info_Mod_Edda_Problem_Ja);
};

FUNC VOID Info_Mod_Edda_Problem_Nein()
{
	AI_Output(hero, self, "Info_Mod_Edda_Problem_Nein_15_00"); //I will be careful not to come into contact with meat bugs.
	AI_Output(self, hero, "Info_Mod_Edda_Problem_Nein_26_01"); //But what do I do now? Somebody help me!

	Info_ClearChoices	(Info_Mod_Edda_Problem);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Edda_Problem_Ja()
{
	AI_Output(hero, self, "Info_Mod_Edda_Problem_Ja_15_00"); //This is done quickly and painlessly.
	AI_Output(self, hero, "Info_Mod_Edda_Problem_Ja_26_01"); //Thank you very much already!

	Info_ClearChoices	(Info_Mod_Edda_Problem);

	AI_StopProcessInfos	(self);

	Eddas_Wanzen = TRUE;

	Log_CreateTopic	(TOPIC_MOD_EDDASWANZEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EDDASWANZEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EDDASWANZEN, "Edda has a little problem with meat bugs in her cabin. I'm supposed to drive them away.");
};

INSTANCE Info_Mod_Edda_Wanzen (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Wanzen_Condition;
	information	= Info_Mod_Edda_Wanzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "The bugs are gone.";
};

FUNC INT Info_Mod_Edda_Wanzen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edda_Problem))
	&& (Eddas_Wanzen == TRUE)
	&& (Npc_IsDead(Meatbug_Edda_01))
	&& (Npc_IsDead(Meatbug_Edda_02))
	&& (Npc_IsDead(Meatbug_Edda_03))
	&& (Npc_IsDead(Meatbug_Edda_04))
	&& (Npc_IsDead(Meatbug_Edda_05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_Wanzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_Wanzen_15_00"); //The bugs are gone.
	AI_Output(self, hero, "Info_Mod_Edda_Wanzen_26_01"); //I can finally get back to my cabin.
	AI_Output(self, hero, "Info_Mod_Edda_Wanzen_26_02"); //Thank you very much. Here's a little reward

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	B_GivePlayerXP	(50);

	EddasWanzen_Tag = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_EDDASWANZEN, LOG_SUCCESS);

	CurrentNQ += 1;

	B_Göttergefallen (1, 1);
};

INSTANCE Info_Mod_Edda_ProblemBack (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_ProblemBack_Condition;
	information	= Info_Mod_Edda_ProblemBack_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edda_ProblemBack_Condition()
{
	if (Wld_GetDay() > EddasWanzen_Tag)
	&& (Npc_KnowsInfo(hero, Info_Mod_Edda_Wanzen))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_ProblemBack_Info()
{
	AI_Output(self, hero, "Info_Mod_Edda_ProblemBack_26_00"); //There are meat bugs in my hut again! They're crawling all over the place!
	AI_Output(hero, self, "Info_Mod_Edda_ProblemBack_15_01"); //How could this have happened? I just killed them all the other day.
	AI_Output(self, hero, "Info_Mod_Edda_ProblemBack_26_02"); //Either it's fate... or someone helped with that.
	AI_Output(hero, self, "Info_Mod_Edda_ProblemBack_15_03"); //Who would do this?
	AI_Output(self, hero, "Info_Mod_Edda_ProblemBack_26_04"); //Someone who knows me and how I hate meat bugs.
	AI_Output(self, hero, "Info_Mod_Edda_ProblemBack_26_05"); //I can't help myself, but I'm scared.
	AI_Output(self, hero, "Info_Mod_Edda_ProblemBack_26_06"); //Would you help me out with the meat bugs one more time?
	AI_Output(hero, self, "Info_Mod_Edda_ProblemBack_15_07"); //As good as done.

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Meatbug_Edda_06, "FP_EDDAS_WANZE_01");
	Wld_InsertNpc	(Meatbug_Edda_07, "FP_EDDAS_WANZE_02");
	Wld_InsertNpc	(Meatbug_Edda_08, "FP_EDDAS_WANZE_03");
	Wld_InsertNpc	(Meatbug_Edda_09, "FP_EDDAS_WANZE_04");
	Wld_InsertNpc	(Meatbug_Edda_10, "FP_EDDAS_WANZE_05");

	Eddas_Wanzen_Back = TRUE;

	Log_CreateTopic	(TOPIC_MOD_EDDASWANZENBACK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EDDASWANZENBACK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EDDASWANZENBACK, "Edda's got bugs in her cabin again. She suspects that someone planted the bugs there.");
};

INSTANCE Info_Mod_Edda_WanzenBack (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_WanzenBack_Condition;
	information	= Info_Mod_Edda_WanzenBack_Info;
	permanent	= 0;
	important	= 0;
	description	= "No meat bug should have survived.";
};

FUNC INT Info_Mod_Edda_WanzenBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edda_ProblemBack))
	&& (Eddas_Wanzen_Back == TRUE)
	&& (Npc_IsDead(Meatbug_Edda_06))
	&& (Npc_IsDead(Meatbug_Edda_07))
	&& (Npc_IsDead(Meatbug_Edda_08))
	&& (Npc_IsDead(Meatbug_Edda_09))
	&& (Npc_IsDead(Meatbug_Edda_10))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_WanzenBack_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_WanzenBack_15_00"); //No meat bug should have survived.
	AI_Output(self, hero, "Info_Mod_Edda_WanzenBack_26_01"); //I can't tell you how happy I am!
	AI_Output(self, hero, "Info_Mod_Edda_WanzenBack_26_02"); //But I need you to do me a little favor, so I can sleep comfortably again:
	AI_Output(self, hero, "Info_Mod_Edda_WanzenBack_26_03"); //Would you please lie in wait outside behind the cabin the next night?
	AI_Output(hero, self, "Info_Mod_Edda_WanzenBack_15_04"); //Sure. No problem.

	B_GivePlayerXP	(50);

	Eddas_Wanzen_Back = 2;

	B_StartOtherRoutine	(Mod_575_NONE_Fenia_NW, "WANZEN");

	B_LogEntry	(TOPIC_MOD_EDDASWANZENBACK, "The bugs are done, but Edda can't sleep soundly again until she knows that no one smuggles her bugs into the house at night. That's why I'm going to lay in wait behind the cabin the next night.");
};

INSTANCE Info_Mod_Edda_Fenia (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Fenia_Condition;
	information	= Info_Mod_Edda_Fenia_Info;
	permanent	= 0;
	important	= 0;
	description	= "It really wasn't a coincidence that the meatbugs ended up with you.";
};

FUNC INT Info_Mod_Edda_Fenia_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fenia_Wanzen))
	&& (Eddas_Wanzen_Back == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_Fenia_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_Fenia_15_00"); //It really wasn't a coincidence that the meatbugs ended up with you.
	AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_01"); //Who did it? Say it!
	AI_Output(hero, self, "Info_Mod_Edda_Fenia_15_02"); //Fenia wants you to see how you dealt with her husband.
	AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_03"); //You mean our sales pitch?
	AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_04"); //Because he wasn't as hostile to me as everyone else?
	AI_Output(hero, self, "Info_Mod_Edda_Fenia_15_05"); //Looks that way. What are you gonna do now?

	if (hero.guild != GIL_PAL)
	{
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_06"); //What can I do? The militia wouldn't care.
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_07"); //I'm gonna have to talk to her and make her understand.
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_08"); //But I must express my sincere thanks to you. You're a good man.

		B_GivePlayerXP	(100);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_09"); //You're one of the city's guardians, aren't you?
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_10"); //Can't you do something about it?
		AI_Output(hero, self, "Info_Mod_Edda_Fenia_15_11"); //I can put you under my personal protection.
		AI_Output(hero, self, "Info_Mod_Edda_Fenia_15_12"); //If you get hurt again, I'll take Fenia.
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_13"); //Maybe it makes the most sense for me to tell her that... Then she doesn't get any more silly thoughts.
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_14"); //I must express my sincere thanks for that. You're a good man.

		B_GivePlayerXP	(150);
	};

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	Eddas_Wanzen_Back = 5;

	B_SetTopicStatus	(TOPIC_MOD_EDDASWANZENBACK, LOG_SUCCESS);

	CurrentNQ += 1;

	B_Göttergefallen (1, 1);
};

INSTANCE Info_Mod_Edda_FeniaNicht (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_FeniaNicht_Condition;
	information	= Info_Mod_Edda_FeniaNicht_Info;
	permanent	= 0;
	important	= 0;
	description	= "There was no one behind your house.";
};

FUNC INT Info_Mod_Edda_FeniaNicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fenia_Wanzen))
	&& (Eddas_Wanzen_Back == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_FeniaNicht_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_FeniaNicht_15_00"); //There was no one behind your house.
	AI_Output(self, hero, "Info_Mod_Edda_FeniaNicht_26_01"); //Hm... well, then the bugs must have come into my house by accident.
	AI_Output(self, hero, "Info_Mod_Edda_FeniaNicht_26_02"); //Thank you. Here's a little reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 25);

	Eddas_Wanzen_Back = 5;

	B_SetTopicStatus	(TOPIC_MOD_EDDASWANZENBACK, LOG_SUCCESS);
};

INSTANCE Info_Mod_Edda_Shakir (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Shakir_Condition;
	information	= Info_Mod_Edda_Shakir_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'd like some information.";
};

FUNC INT Info_Mod_Edda_Shakir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Moe_Shakir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_Shakir_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_Shakir_15_00"); //I'd like some information.
	AI_Output(self, hero, "Info_Mod_Edda_Shakir_26_01"); //And what's that?
	AI_Output(hero, self, "Info_Mod_Edda_Shakir_15_02"); //I'm looking for a.... Well, how can I put it? A streetwalker or something.
	AI_Output(self, hero, "Info_Mod_Edda_Shakir_26_03"); //A harlot, you mean. Why didn't you say so? No, we don't have any in town.
	AI_Output(hero, self, "Info_Mod_Edda_Shakir_15_04"); //And where could I...?
	AI_Output(self, hero, "Info_Mod_Edda_Shakir_26_05"); //That reminds me. There's a woman over at the shipbuilder's lately, like she's been waiting for something.
	AI_Output(self, hero, "Info_Mod_Edda_Shakir_26_06"); //Name's Jana, I think. Maybe.... (loudly) but don't say I said that.
	AI_Output(hero, self, "Info_Mod_Edda_Shakir_15_07"); //I see. Thanks.

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Edda thinks I should talk to Jana. She stands around at the shipbuilder's every day, like she's waiting for something.");
};

INSTANCE Info_Mod_Edda_SuppeKochenLernen2 (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_SuppeKochenLernen2_Condition;
	information	= Info_Mod_Edda_SuppeKochenLernen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do I cook a soup? (3 LP)";
};

FUNC INT Info_Mod_Edda_SuppeKochenLernen2_Condition()
{
	if (Mod_Schwierigkeit != 4)
	{
		Info_Mod_Edda_SuppeKochenLernen2.description = "How do I cook a soup? (3 LP)";
	}
	else
	{
		Info_Mod_Edda_SuppeKochenLernen2.description = "How do I cook a soup? (300 Gold)";
	};

	if (Mod_Edda_Lernen == 1) {
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_SuppeKochenLernen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_SuppeKochenLernen2_15_00"); //How do I cook a soup?

	if ((Mod_Schwierigkeit != 4)
	&& (hero.lp < 3))
	|| ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) < 300)) {
		B_Say (self, hero, "$NOLEARNNOPOINTS");
	} else {
		if (Mod_Schwierigkeit != 4) {
			hero.lp -= 3;
		} else {
			B_GiveInvItems	(hero, self, ItMi_Gold, 300);
		};

		AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen2_26_01"); //The basics are quickly explained: You need a water-filled pot under which you light a fire and a recipe.
		AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen2_26_02"); //The ingredients are taken from the recipe and put into the pot while stirring constantly.
		AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen2_26_03"); //To make the soup edible, don't forget to season it.
		AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen2_26_04"); //As soon as everything is in the pot, steam the fire and let the soup simmer with the lid closed for a while.

		Mod_Edda_Lernen = 2;
	};
};

INSTANCE Info_Mod_Edda_Flugblaetter (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Flugblaetter_Condition;
	information	= Info_Mod_Edda_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Edda_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Edda_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Edda_Flugblaetter_26_01"); //Oh, thank you. Thank you. Let's see....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Edda_Flugblaetter_26_02"); //Ah yes. Maybe I'll stop by Matteo's.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Edda_Pickpocket (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Pickpocket_Condition;
	information	= Info_Mod_Edda_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30_Female;
};

FUNC INT Info_Mod_Edda_Pickpocket_Condition()
{
	C_Beklauen	(10, ItFo_FishSoup, 2);
};

FUNC VOID Info_Mod_Edda_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Edda_Pickpocket);

	Info_AddChoice	(Info_Mod_Edda_Pickpocket, DIALOG_BACK, Info_Mod_Edda_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Edda_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Edda_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Edda_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Edda_Pickpocket);
};

FUNC VOID Info_Mod_Edda_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Edda_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Edda_Pickpocket);

		Info_AddChoice	(Info_Mod_Edda_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Edda_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Edda_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Edda_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Edda_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Edda_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Edda_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Edda_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Edda_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Edda_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Edda_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Edda_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Edda_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Edda_EXIT (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_EXIT_Condition;
	information	= Info_Mod_Edda_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Edda_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Edda_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
