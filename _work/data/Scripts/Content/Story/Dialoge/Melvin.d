INSTANCE Info_Mod_Melvin_Hi (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Hi_Condition;
	information	= Info_Mod_Melvin_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Melvin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Melvin_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_29_00"); //Hey, you, you-- What are you doing here?

	Info_ClearChoices	(Info_Mod_Melvin_Hi);

	Info_AddChoice	(Info_Mod_Melvin_Hi, "Smoke out the camp here, what else does it look like?", Info_Mod_Melvin_Hi_B);
	Info_AddChoice	(Info_Mod_Melvin_Hi, "I'm just looking around.", Info_Mod_Melvin_Hi_A);
};

FUNC VOID Info_Mod_Melvin_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_B_15_00"); //Smoke out the camp here, what else does it look like?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_B_29_01"); //That's what I was afraid of. Come on, men, kill him!

	Info_ClearChoices	(Info_Mod_Melvin_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Melvin_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_A_15_00"); //I'm just looking around.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_A_29_01"); //Well, that's bad. We'd rather not be discovered.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_A_29_02"); //That is, because you now know where to find us, you must become our accomplice. Otherwise, you might as well blow the whistle on us.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_A_29_03"); //And that means you have to steal the farmer's grain.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_A_29_04"); //That's what we need. Got that, uh, or are there any questions?

	Info_ClearChoices	(Info_Mod_Melvin_Hi);

	Info_AddChoice	(Info_Mod_Melvin_Hi, "What are you gonna do with it?", Info_Mod_Melvin_Hi_D);
	Info_AddChoice	(Info_Mod_Melvin_Hi, "Where do I get the grain from?", Info_Mod_Melvin_Hi_C);
};

FUNC VOID Info_Mod_Melvin_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_D_15_00"); //What are you gonna do with it?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_D_29_01"); //That's what we need for, well, for the means we want to devise. (pause) We just want to make ourselves a little delights, you know what I mean?
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_D_15_02"); //With grain?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_D_29_03"); //That's right, with grain. We found a recipe like that.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_D_29_04"); //We already have all the other ingredients, scavengerdung, schnapps and three fly agaric mushrooms.
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_D_15_05"); //And you think that's gonna work?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_D_29_06"); //Uh, sure. Hallucinations guaranteed, it's on the prescription.

	Mod_REL_Korndiebe += 1;

	if (Mod_REL_Korndiebe == 1)
	{
		Info_ClearChoices	(Info_Mod_Melvin_Hi);

		Info_AddChoice	(Info_Mod_Melvin_Hi, "Where do I get the grain from?", Info_Mod_Melvin_Hi_C);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Melvin_Hi);
	};
};

FUNC VOID Info_Mod_Melvin_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_C_15_00"); //Where do I get the grain from?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_C_29_01"); //Everything we need is in the house at Erhard's. Three bags should do it.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_KORNDIEBE, "The robber Melvin needs three sacks of grain from the house of the farmer Erhard for an ominous agent, which is said to resemble a giver of joy.");

	Mod_REL_Korndiebe += 1;

	if (Mod_REL_Korndiebe == 1)
	{
		Info_ClearChoices	(Info_Mod_Melvin_Hi);

		Info_AddChoice	(Info_Mod_Melvin_Hi, "What are you gonna do with it?", Info_Mod_Melvin_Hi_D);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Melvin_Hi);
	};
};

INSTANCE Info_Mod_Melvin_Korndiebe (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Korndiebe_Condition;
	information	= Info_Mod_Melvin_Korndiebe_Info;
	permanent	= 0;
	important	= 0;
	description	= "The farmer's out of grain.";
};

FUNC INT Info_Mod_Melvin_Korndiebe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Erhard_Korndiebe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Korndiebe_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Korndiebe_15_00"); //The farmer's out of grain.
	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe_29_01"); //Huh, how is that possible? Do we have to wait until the next harvest now? What are we supposed to do for so long?
	AI_Output(hero, self, "Info_Mod_Melvin_Korndiebe_15_02"); //Just find a new recipe.
	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe_29_03"); //Yeah, that's good. Did you guys hear that? We're looking for another recipe!

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Melvin_Korndiebe2 (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Korndiebe2_Condition;
	information	= Info_Mod_Melvin_Korndiebe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the grain.";
};

FUNC INT Info_Mod_Melvin_Korndiebe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Hi))
	&& (Npc_HasItems(hero, ItMi_Kornballen) == 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Erhard_Korndiebe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Korndiebe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Korndiebe2_15_00"); //I got the grain.

	B_GiveInvItems	(hero, self, ItMi_Kornballen, 3);

	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe2_29_01"); //Very good. Very good. Uh, so now we're gonna brew the potion.
	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe2_29_02"); //If you come back tomorrow, you might as well have a sip.

	B_LogEntry	(TOPIC_MOD_KHORATA_KORNDIEBE, "I have stolen the grain and can collect some of the potion as a reward the next time I pass by.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	B_Göttergefallen(3, 1);

	Mod_REL_MelvinTrank = Wld_GetDay();

	CurrentNQ += 1;

	Mod_REL_Korndiebe = 3;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Melvin_Korndiebe3 (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Korndiebe3_Condition;
	information	= Info_Mod_Melvin_Korndiebe3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Melvin_Korndiebe3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Korndiebe2))
	&& (Wld_GetDay() > Mod_REL_MelvinTrank)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Korndiebe3_Info()
{
	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe3_29_00"); //Here's the good stuff. Has become a bit strong, I think we haven't tried it yet.

	B_GiveInvItems	(self, hero, ItPo_FreudenspenderSuppe, 1);
};

INSTANCE Info_Mod_Melvin_Frauenkleider (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Frauenkleider_Condition;
	information	= Info_Mod_Melvin_Frauenkleider_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you wearing?";
};

FUNC INT Info_Mod_Melvin_Frauenkleider_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Elvira_Frauenkleider))
	&& (Mod_REL_Frauenkleider == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Frauenkleider_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_00"); //What are you wearing?
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider_29_01"); //The thief's new clothes. Pretty, isn't it?
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_02"); //Yes, but the owner would like the clothes back.
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider_29_03"); //(displaced) No! I' ve, uh, worked hard for it! They're mine now!
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_04"); //Don't you think you're making yourself a laughing stock?
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider_29_05"); //Why? Nice dresses, aren't they?
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_06"); //I'll think of something. Make a note of it.
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_07"); //I don't know how I figured that out.
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider_29_08"); //You see? Uh.

	B_LogEntry	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, "Maybe when his comrades are laughing at him, Melvin will let the clothes off.");
};

INSTANCE Info_Mod_Melvin_Frauenkleider2 (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Frauenkleider2_Condition;
	information	= Info_Mod_Melvin_Frauenkleider2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you still need the clothes?";
};

FUNC INT Info_Mod_Melvin_Frauenkleider2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Frauenkleider))
	&& (Mod_REL_Frauenkleider01 == 1)
	&& (Mod_REL_Frauenkleider02 == 1)
	&& (Mod_REL_Frauenkleider03 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Frauenkleider2_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider2_15_00"); //Do you still need the clothes?
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider2_29_01"); //I was wondering if I'd rather, uh, put some pants on again. It's kinda more comfortable.
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider2_29_02"); //Do whatever you want with the clothes.

	AI_UnequipArmor	(self);

	AI_EquipArmor	(self, ItAr_BDT_M_01);

	B_GiveInvItems	(self, hero, ItMi_Kleiderkoffer, 1);

	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider2_15_03"); //I will, I will.

	B_LogEntry	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, "I must now return her clothes to Elvira.");
};

INSTANCE Info_Mod_Melvin_Schutzbeduerftig (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Schutzbeduerftig_Condition;
	information	= Info_Mod_Melvin_Schutzbeduerftig_Info;
	permanent	= 0;
	important	= 0;
	description 	= "You're trembling. Are you cold?";
};                       

FUNC INT Info_Mod_Melvin_Schutzbeduerftig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres))
	&& (Mod_Jim_Schutz < 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Melvin_Schutzbeduerftig_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig_15_00"); //You're trembling. Are you cold?
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig_29_01"); //Cold? Uh, no. You'd be b-b-bibbering, too, if you were to witness the nights here.
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig_15_02"); //What's going on?
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig_29_03"); //From the cemetery comes a moaning and moaning, which is even worse than with my, uh, grandmother.
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig_29_04"); //Probably the zombies all break out of their graves and plan how best to eat us up!
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig_15_05"); //That's what I think.
};

INSTANCE Info_Mod_Melvin_Schutzbeduerftig2 (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Schutzbeduerftig2_Condition;
	information	= Info_Mod_Melvin_Schutzbeduerftig2_Info;
	permanent	= 0;
	important	= 0;
	description 	= "The cemetery's quiet again.";
};                       

FUNC INT Info_Mod_Melvin_Schutzbeduerftig2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Schutzbeduerftig))
	&& (Mod_Jim_Schutz == 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Melvin_Schutzbeduerftig2_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig2_15_00"); //The cemetery's quiet again.
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig2_29_01"); //Ah. Oh. Uh, thanks. Did you defeat the invasion army of zombies all by yourself?
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig2_15_02"); //That goes without saying.
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig2_29_03"); //Respect, man. I could use a guy like, uh, you in my squad.
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig2_15_04"); //Let's cut the crap.

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Melvin_Bierhexen (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Bierhexen_Condition;
	information	= Info_Mod_Melvin_Bierhexen_Info;
	permanent	= 0;
	important	= 0;
	description 	= "I have a short question for you.";
};                       

FUNC INT Info_Mod_Melvin_Bierhexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erhard_Bierhexen2))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Melvin_Bierhexen_Info()
{
	var C_NPC Melvin; Melvin = Hlp_GetNpc(Mod_7505_BDT_Melvin_REL);
	var C_NPC Raeuber01; Raeuber01 = Hlp_GetNpc(Mod_7510_OUT_Raeuber_REL);
	var C_NPC Raeuber02; Raeuber02 = Hlp_GetNpc(Mod_7511_OUT_Raeuber_REL);
	var C_NPC Raeuber03; Raeuber03 = Hlp_GetNpc(Mod_7512_OUT_Raeuber_REL);

	TRIA_Invite(Raeuber01);
	TRIA_Invite(Raeuber02);
	TRIA_Invite(Raeuber03);
	TRIA_Start();
	
	AI_Output(hero, self, "Info_Mod_Melvin_Bierhexen_15_00"); //I have a short question for you.

	TRIA_Next(Melvin);
	
	AI_Output(self, hero, "Info_Mod_Melvin_Bierhexen_29_01"); //Sure, uh, if it's fast.
	AI_Output(hero, self, "Info_Mod_Melvin_Bierhexen_15_02"); //Any of you guys peed on Erhard's barley?
	AI_Output(self, hero, "Info_Mod_Melvin_Bierhexen_29_03"); //Huh? I want to steal this, why would I pee on it?
	AI_Output(hero, self, "Info_Mod_Melvin_Bierhexen_15_04"); //I don't know about that. Someone did it anyway.
	AI_Output(hero, self, "Info_Mod_Melvin_Bierhexen_15_05"); //And the master brewer brewed beer from the grain.
	AI_Output(self, hero, "Info_Mod_Melvin_Bierhexen_29_06"); //It's disgusting! Hey, guys, did one of you piss on the brewmaster's barley?

	TRIA_Next(Raeuber01);
	
	AI_Output(self, hero, "Info_Mod_Raeuber01_Bierhexen_08_07"); //It wasn't me!

	TRIA_Next(Raeuber02);
	
	AI_Output(self, hero, "Info_Mod_Raeuber02_Bierhexen_06_08"); //Are you stupid?

	TRIA_Next(Raeuber03);
	
	AI_Output(self, hero, "Info_Mod_Raeuber03_Bierhexen_06_09"); //That was Leonhard.
	AI_Output(hero, self, "Info_Mod_Raeuber03_Bierhexen_15_10"); //Leonhard?
	AI_Output(self, hero, "Info_Mod_Raeuber03_Bierhexen_06_11"); //Told me proudly anyway. Like it's something special.
	AI_Output(hero, self, "Info_Mod_Raeuber03_Bierhexen_15_12"); //Where can I find Leonhard?
	AI_Output(self, hero, "Info_Mod_Raeuber03_Bierhexen_06_13"); //He's loitering in the alleys of Khorata. Doesn't have a great hideout like us.

	B_LogEntry	(TOPIC_MOD_KHORATA_BIERHEXEN, "According to a friend of Melvin's, Leonhard is the culprit in Khorata.");

	TRIA_Finish();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Melvin_Freudenspender (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Freudenspender_Condition;
	information	= Info_Mod_Melvin_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "I'm happy to have you here...";
};                       

FUNC INT Info_Mod_Melvin_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Melvin_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Freudenspender_15_00"); //I'm happy to have you here...
	AI_Output(self, hero, "Info_Mod_Melvin_Freudenspender_29_01"); //Wow, how awesome! I' d, uh, take something.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Melvin_Pickpocket (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Pickpocket_Condition;
	information	= Info_Mod_Melvin_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Melvin_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Gold, 29);
};

FUNC VOID Info_Mod_Melvin_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);

	Info_AddChoice	(Info_Mod_Melvin_Pickpocket, DIALOG_BACK, Info_Mod_Melvin_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Melvin_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Melvin_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Melvin_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);
};

FUNC VOID Info_Mod_Melvin_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);

		Info_AddChoice	(Info_Mod_Melvin_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Melvin_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Melvin_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Melvin_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Melvin_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Melvin_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Melvin_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Melvin_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Melvin_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Melvin_EXIT (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_EXIT_Condition;
	information	= Info_Mod_Melvin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Melvin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Melvin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
