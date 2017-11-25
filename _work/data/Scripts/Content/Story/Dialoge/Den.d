INSTANCE Info_Mod_Den_Hi (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Hi_Condition;
	information	= Info_Mod_Den_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Den_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Den_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Den_Hi_05_01"); //I'm Den, City Watch of Khorinis.
};

INSTANCE Info_Mod_Den_Stadtwache (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Stadtwache_Condition;
	information	= Info_Mod_Den_Stadtwache_Info;
	permanent	= 0;
	important	= 0;
	description	= "So you're with the city guard?";
};

FUNC INT Info_Mod_Den_Stadtwache_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Stadtwache_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Stadtwache_15_00"); //So you're with the city guard?
	AI_Output(self, hero, "Info_Mod_Den_Stadtwache_05_01"); //Hey, why the reproachful undertone?
	AI_Output(hero, self, "Info_Mod_Den_Stadtwache_15_02"); //What reproachful undertone?
	AI_Output(self, hero, "Info_Mod_Den_Stadtwache_05_03"); //You think I can't hear that? But we are not all so bad with the militia, only very few of us work with the thief guild and I have nothing to do with the thefts three days ago!
	AI_Output(hero, self, "Info_Mod_Den_Stadtwache_15_04"); //Well, then you don't have to be afraid of my questions.
	AI_Output(self, hero, "Info_Mod_Den_Stadtwache_05_05"); //I just don't want to be accused of anything! My methods are absolutely clean and I haven't been guilty of anything during my three years of service!
};

INSTANCE Info_Mod_Den_Raeuber (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Raeuber_Condition;
	information	= Info_Mod_Den_Raeuber_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hilda told me about a band of robbers outside Khorinis.";
};

FUNC INT Info_Mod_Den_Raeuber_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Stadtwache))
	&& (Npc_KnowsInfo(hero, Info_Mod_Hilda_Argez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Raeuber_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Raeuber_15_00"); //Hilda told me about a band of robbers outside Khorinis. What do you know about it?
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_01"); //Hardly anything. Hilda didn't let us dig enough in her delicious meat pies to find any noteworthy clues.
	AI_Output(hero, self, "Info_Mod_Den_Raeuber_15_02"); //What does meat pie have to do with stealing sheep?
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_03"); //You can't know that beforehand.
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_04"); //And without looking into the meat pasties, the house search was not complete, and so I couldn't write a final report, which doesn't help us in our search for the criminals!
	AI_Output(hero, self, "Info_Mod_Den_Raeuber_15_05"); //What do you know about the robbers anyway?
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_06"); //A simple gang of birds who have been roaming the area for a few months and have apparently found their own camp recently.
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_07"); //We don't know exactly how many robberies you're responsible for. Generally speaking, they differ from the other bandits in that they have no code of honour.
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_08"); //I know someone who also knows someone who has had short-term contact with the thieves in this city and who has learned that even the thieves despise these robbers.
	AI_Output(self, hero, "Info_Mod_Den_Raeuber_05_09"); //These scoundrels don't make each other friends, and if they don't find any fraternity mates, it becomes permanently difficult for them, oh yes.
};

INSTANCE Info_Mod_Den_Dienstzeit (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Dienstzeit_Condition;
	information	= Info_Mod_Den_Dienstzeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "In office for three years? What did you do before?";
};

FUNC INT Info_Mod_Den_Dienstzeit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Stadtwache))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Dienstzeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Dienstzeit_15_00"); //In office for three years? What did you do before?
	AI_Output(self, hero, "Info_Mod_Den_Dienstzeit_05_01"); //(defensive) Nothing at all! Nothing serious! The thief guild thing, that was unique!
	AI_Output(hero, self, "Info_Mod_Den_Dienstzeit_15_02"); //You've been in contact with the guild of thieves?
	AI_Output(self, hero, "Info_Mod_Den_Dienstzeit_05_03"); //I'm from the waterfront. You have to see where you're going. No one will admit it, but the thief guild controls large parts of the area.
	AI_Output(self, hero, "Info_Mod_Den_Dienstzeit_05_04"); //Everyone there comes into contact with her sooner or later.
};

INSTANCE Info_Mod_Den_Problem (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Problem_Condition;
	information	= Info_Mod_Den_Problem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Den_Problem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Stadtwache))
	&& (Wld_GetDay() >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Problem_Info()
{
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_00"); //Shh! Listen!
	AI_Output(hero, self, "Info_Mod_Den_Problem_15_01"); //Are you talking to me?
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_02"); //Yeah, that's right. You asked me out like that the other day.
	AI_Output(hero, self, "Info_Mod_Den_Problem_15_03"); //If that's what you want to call it.
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_04"); //I told you everything you wanted to hear. In return, maybe you could do me a favor - nothing big, no fear.
	AI_Output(hero, self, "Info_Mod_Den_Problem_15_05"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_06"); //I'm getting tired of patrolling. Every day I slap my feet flat, that should be something for the young greenhorns.
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_07"); //There's an opening in the barracks, Ruga's gone. Well, I'm not the hottest contender for the job, but Rangar, the lazy scumbag.
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_08"); //Rangar is guaranteed to have dirt on his hands, but strangely, Lord Andre doesn't want to know anything about it. He needs to get his eyes open.
	AI_Output(hero, self, "Info_Mod_Den_Problem_15_09"); //What are you up to?
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_10"); //I want you to cast a bad light on Rangar. Spread rumors about him, smuggle illicit goods into his chest, and then tell Lord Andre about it.
	AI_Output(self, hero, "Info_Mod_Den_Problem_05_11"); //Can you do that?

	Info_ClearChoices	(Info_Mod_Den_Problem);

	Info_AddChoice	(Info_Mod_Den_Problem, "Too dangerous. I don't want anything to do with that.", Info_Mod_Den_Problem_B);
	Info_AddChoice	(Info_Mod_Den_Problem, "Sure. But surely that's worth something to you, too...", Info_Mod_Den_Problem_A);
};

FUNC VOID Info_Mod_Den_Problem_B()
{
	AI_Output(hero, self, "Info_Mod_Den_Problem_B_15_00"); //Too dangerous. I don't want anything to do with that.
	AI_Output(self, hero, "Info_Mod_Den_Problem_B_05_01"); //You're not exactly a good friend.

	Info_ClearChoices	(Info_Mod_Den_Problem);
};

FUNC VOID Info_Mod_Den_Problem_A()
{
	AI_Output(hero, self, "Info_Mod_Den_Problem_A_15_00"); //Sure. But surely that's worth something to you, too...
	AI_Output(self, hero, "Info_Mod_Den_Problem_A_05_01"); //A couple of coins would come out as pay for you.

	Log_CreateTopic	(TOPIC_MOD_DENSPROBLEM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DENSPROBLEM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "The militia soldier Den Den waits in vain for a promotion, because Rangar apparently denigrates him with Lord Andre. Now I shall do the same with Rangar: spread rumours about him, smuggle forbidden goods into his chest and then denounce him with Lord Andre.");

	Info_ClearChoices	(Info_Mod_Den_Problem);

	Mod_Den_Problem = 1;
};

INSTANCE Info_Mod_Den_Verbotenes (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Verbotenes_Condition;
	information	= Info_Mod_Den_Verbotenes_Info;
	permanent	= 0;
	important	= 0;
	description	= "What kind of illegal goods do you mean?";
};

FUNC INT Info_Mod_Den_Verbotenes_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Rangar))
	&& (Mod_DenVerpfiffen == 0)
	&& (Mod_Den_Problem == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Verbotenes_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Verbotenes_15_00"); //What kind of illegal goods do you mean?
	AI_Output(self, hero, "Info_Mod_Den_Verbotenes_05_01"); //A marshy stem would do. Lord Andre told us not to do that stuff.
	AI_Output(self, hero, "Info_Mod_Den_Verbotenes_05_02"); //If he catches someone from the militia with this, it's gonna be trouble.
	AI_Output(self, hero, "Info_Mod_Den_Verbotenes_05_03"); //Even better would be a whole package of bogweed, but you won't get there so easily.

	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "The prohibited goods that Den Den have in mind are bogweed. One stem should be enough, but a whole package would be even better. He just thinks it won't be that easy.");
};

INSTANCE Info_Mod_Den_RangarsTruhe (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_RangarsTruhe_Condition;
	information	= Info_Mod_Den_RangarsTruhe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where can I find Rangar's chest?";
};

FUNC INT Info_Mod_Den_RangarsTruhe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Rangar))
	&& (Mod_DenVerpfiffen == 0)
	&& (Mod_Den_Problem == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_RangarsTruhe_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_RangarsTruhe_15_00"); //Where can I find Rangar's chest?
	AI_Output(self, hero, "Info_Mod_Den_RangarsTruhe_05_01"); //It's near him, by the wall at the beer stand.

	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "I find Rangar's chest near the wall by the free beer stand.");
};

INSTANCE Info_Mod_Den_Rangar (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Rangar_Condition;
	information	= Info_Mod_Den_Rangar_Info;
	permanent	= 0;
	important	= 0;
	description	= "I spoke to Lord Andre.";
};

FUNC INT Info_Mod_Den_Rangar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Rangar))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Rangar_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Rangar_15_00"); //I spoke to Lord Andre.
	AI_Output(self, hero, "Info_Mod_Den_Rangar_05_01"); //And what did he say?
	AI_Output(hero, self, "Info_Mod_Den_Rangar_15_02"); //He'll check the stuff.
	AI_Output(self, hero, "Info_Mod_Den_Rangar_05_03"); //Very well, here's your reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 150);

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_DENSPROBLEM, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Den_Checker (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Checker_Condition;
	information	= Info_Mod_Den_Checker_Info;
	permanent	= 0;
	important	= 0;
	description	= "You know very well...";
};

FUNC INT Info_Mod_Den_Checker_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Dienstzeit))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Checker_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Checker_15_00"); //You know very well...
	AI_Output(self, hero, "Info_Mod_Den_Checker_05_01"); //Hey, I'm doing my job conscientiously! So much knowledge can be acquired without having spent years running errands for the guild of thieves!
};

INSTANCE Info_Mod_Den_Lernen_Armbrust (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Lernen_Armbrust_Condition;
	information	= Info_Mod_Den_Lernen_Armbrust_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me crossbow shooting.";
};

FUNC INT Info_Mod_Den_Lernen_Armbrust_Condition()
{
	if (hero.hitchance[NPC_TALENT_CrossBow] < 50)
	&& (Mod_Schwierigkeit != 4)
	&& (Mod_Miliz_Armbrust)
	&& (Mod_Den_Problem == 1)
	&& (Mod_DenVerpfiffen == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Den_Lernen_Armbrust_Info()
{
	AI_Output(hero, self, "Info_Mod_Den_Lernen_Armbrust_15_00"); //Teach me crossbow shooting.

	Info_ClearChoices	(Info_Mod_Den_Lernen_Armbrust);
	
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, "Back off.", Info_Mod_Den_Lernen_Armbrust_BACK);
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_CrossBow)), Info_Mod_Den_Lernen_Armbrust_5);
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(hero, NPC_TALENT_CrossBow, 1)), Info_Mod_Den_Lernen_Armbrust_1);
};

FUNC VOID Info_Mod_Den_Lernen_Armbrust_BACK()
{
	Info_ClearChoices	(Info_Mod_Den_Lernen_Armbrust);
};

FUNC VOID Info_Mod_Den_Lernen_Armbrust_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_CrossBow, 5, 60);

	Info_ClearChoices	(Info_Mod_Den_Lernen_Armbrust);

	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, "Back off.", Info_Mod_Den_Lernen_Armbrust_BACK);
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_CrossBow)), Info_Mod_Den_Lernen_Armbrust_5);
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(hero, NPC_TALENT_CrossBow, 1)), Info_Mod_Den_Lernen_Armbrust_1);
};

FUNC VOID Info_Mod_Den_Lernen_Armbrust_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_CrossBow, 1, 60);

	Info_ClearChoices	(Info_Mod_Den_Lernen_Armbrust);

	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, "Back off.", Info_Mod_Den_Lernen_Armbrust_BACK);
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_CrossBow)), Info_Mod_Den_Lernen_Armbrust_5);
	Info_AddChoice	(Info_Mod_Den_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(hero, NPC_TALENT_CrossBow, 1)), Info_Mod_Den_Lernen_Armbrust_1);
};

INSTANCE Info_Mod_Den_Pickpocket (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_Pickpocket_Condition;
	information	= Info_Mod_Den_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Den_Pickpocket_Condition()
{
	C_Beklauen	(60, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Den_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Den_Pickpocket);

	Info_AddChoice	(Info_Mod_Den_Pickpocket, DIALOG_BACK, Info_Mod_Den_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Den_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Den_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Den_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Den_Pickpocket);
};

FUNC VOID Info_Mod_Den_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Den_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Den_Pickpocket);

		Info_AddChoice	(Info_Mod_Den_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Den_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Den_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Den_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Den_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Den_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Den_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Den_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Den_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Den_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Den_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Den_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Den_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Den_EXIT (C_INFO)
{
	npc		= Mod_969_MIL_Den_NW;
	nr		= 1;
	condition	= Info_Mod_Den_EXIT_Condition;
	information	= Info_Mod_Den_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Den_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Den_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
