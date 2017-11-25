INSTANCE Info_Mod_Cavalorn_Hi (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Hi_Condition;
	information	= Info_Mod_Cavalorn_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cavalorn_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cavalorn_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cavalorn_Hi_36_00"); //Damn it, I only killed those goblins yesterday. And now her remains rise up to me nothing, nothing new life for you, and attack me.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Hi_36_01"); //As if the bandits weren't enough... but wait a minute. You're still alive?
	AI_Output(hero, self, "Info_Mod_Cavalorn_Hi_15_02"); //"Again" wäre der passende Ausdruck. Was machst du hier?
	AI_Output(self, hero, "Info_Mod_Cavalorn_Hi_36_03"); //This is my observation post. I'm here on behalf of the Water Magicians.
};

INSTANCE Info_Mod_Cavalorn_WhyForWassermagier (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_WhyForWassermagier_Condition;
	information	= Info_Mod_Cavalorn_WhyForWassermagier_Info;
	permanent	= 0;
	important	= 0;
	description	= "What exactly are you observing on behalf of the Water Magicians?";
};

FUNC INT Info_Mod_Cavalorn_WhyForWassermagier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_WhyForWassermagier_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_WhyForWassermagier_15_00"); //What exactly are you observing on behalf of the Water Magicians?
	AI_Output(self, hero, "Info_Mod_Cavalorn_WhyForWassermagier_36_01"); //Uh, I don't have much to tell you about that. Strange things have happened in recent days and weeks.
	AI_Output(hero, self, "Info_Mod_Cavalorn_WhyForWassermagier_15_02"); //No kidding.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WhyForWassermagier_36_03"); //I mean, after the fall of the barrier.
};

INSTANCE Info_Mod_Cavalorn_WasLos (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_WasLos_Condition;
	information	= Info_Mod_Cavalorn_WasLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why don't you just tell me what's going on?";
};

FUNC INT Info_Mod_Cavalorn_WasLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_WhyForWassermagier))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_WasLos_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_WasLos_15_00"); //Why don't you just tell me what's going on?
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_01"); //Well, I'm now a member of the water novices. Don't ask why.
	AI_Output(hero, self, "Info_Mod_Cavalorn_WasLos_15_02"); //Why?
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_03"); //Oh, I came to Khorinis after the fall of the barrier and had nothing to do, of course.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_04"); //That's why I turned myself in to this Vatras preaching all the time in town.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_05"); //And at some point he took me aside and asked me where I was coming from and whether I already knew what I wanted to do now.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_06"); //The end of the song was that he asked me if I didn't want to join his club and because I didn't have anything better to do, I said yes.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_07"); //Well, anyway, that's when the kidnappings started. People from Khorinis just disappeared again and again. Mostly from the docks, and then nobody cared.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_08"); //Occasionally dark figures were seen in the side streets before or after.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_09"); //And because the City Watch didn't do anything, Vatras decided that we should find out what's going on right now.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_10"); //And that's why I'm sitting here trying to find out whether the bandit gang in the valley basin has something to do with it or whether there's something suspicious going on here.
};

INSTANCE Info_Mod_Cavalorn_Banditen (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Banditen_Condition;
	information	= Info_Mod_Cavalorn_Banditen_Info;
	permanent	= 0;
	important	= 0;
	description	= "You mentioned bandits...";
};

FUNC INT Info_Mod_Cavalorn_Banditen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Hi))
	&& (Mod_Cavalorn_Banditen == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Banditen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Banditen_15_00"); //You mentioned bandits...
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen_36_01"); //Yeah, there's a real fat gang down in the valley basin. I always have to make sure she doesn't notice me, otherwise it could turn out ugly.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen_36_02"); //But sometimes I take a look from above. They seem to have just returned from a raid, at least they have some loot and food.
};

INSTANCE Info_Mod_Cavalorn_Banditen2 (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Banditen2_Condition;
	information	= Info_Mod_Cavalorn_Banditen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "You want me to smoke the bandits out?";
};

FUNC INT Info_Mod_Cavalorn_Banditen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Banditen))
	&& (Mod_Cavalorn_Banditen == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Banditen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Banditen2_15_00"); //You want me to smoke the bandits out?
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen2_36_01"); //Honestly? You don't even have the proper armor. They'll eat you for breakfast.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen2_36_02"); //I don't even dare to mess with them, and you know my skills in handling the bow.
};

INSTANCE Info_Mod_Cavalorn_Banditen3 (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Banditen3_Condition;
	information	= Info_Mod_Cavalorn_Banditen3_Info;
	permanent	= 0;
	important	= 0;
	description	= "What if I drove the bandits away after all?";
};

FUNC INT Info_Mod_Cavalorn_Banditen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Banditen2))
	&& (Mod_Cavalorn_Banditen == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Banditen3_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Banditen3_15_00"); //What if I drove the bandits away after all?
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen3_36_01"); //Just let it go. Of course, I'd be happy to see their bodies tomorrow - but that won't happen so quickly.

	Log_CreateTopic	(TOPIC_MOD_CAVALORN_BANDITEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_CAVALORN_BANDITEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_CAVALORN_BANDITEN, "A horde of bandits lurks in the basin near Xardas' tower. Cavalorn strongly advised me not to mess with them, but he would be happy to be rid of them.");
};

INSTANCE Info_Mod_Cavalorn_Banditen4 (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Banditen4_Condition;
	information	= Info_Mod_Cavalorn_Banditen4_Info;
	permanent	= 0;
	important	= 0;
	description	= "You remember the bandits?";
};

FUNC INT Info_Mod_Cavalorn_Banditen4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Banditen3))
	&& (Mod_Cavalorn_Banditen == 0)
	&& (Npc_IsDead(Mod_7772_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7773_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7774_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7775_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7776_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7777_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7778_BDT_Bandit_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Banditen4_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Banditen4_15_00"); //You remember the bandits?
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen4_36_01"); //Sure thing. I could sleep better without her.
	AI_Output(hero, self, "Info_Mod_Cavalorn_Banditen4_15_02"); //Your sleep will no longer be disturbed.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen4_36_03"); //How...? Holy cow... You don't mean....
	AI_Output(hero, self, "Info_Mod_Cavalorn_Banditen4_15_04"); //Yes, it is. But they didn't have any kidnappers from Khorinis with them.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen4_36_05"); //Damn, they were such a good lead. Then not much more will happen here and I can relax for a while.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen4_36_06"); //Wait, take this one.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen4_36_07"); //Good job, really.

	B_SetTopicStatus	(TOPIC_MOD_CAVALORN_BANDITEN, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Cavalorn_DunklerPilger (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_DunklerPilger_Condition;
	information	= Info_Mod_Cavalorn_DunklerPilger_Info;
	permanent	= 0;
	important	= 0;
	description	= "What about this dark wanderer? )";
};

FUNC INT Info_Mod_Cavalorn_DunklerPilger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_DunklerPilger_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_DunklerPilger_15_00"); //What about that dark wanderer who walked past you before?
	AI_Output(self, hero, "Info_Mod_Cavalorn_DunklerPilger_36_01"); //Dark walker? I haven't seen anyone come by here in hours.
	AI_Output(self, hero, "Info_Mod_Cavalorn_DunklerPilger_36_02"); //But maybe I was so busy with the goblins that I missed it. Strange.
	AI_Output(self, hero, "Info_Mod_Cavalorn_DunklerPilger_36_03"); //I'll definitely go back to Vatras soon and report to him. That's enough to tell.

	B_LogEntry	(TOPIC_MOD_DUNKLERPILGER, "Strange. Cavalorn doesn't want to have seen the dark wanderer.");
};

INSTANCE Info_Mod_Cavalorn_XardasTurm (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_XardasTurm_Condition;
	information	= Info_Mod_Cavalorn_XardasTurm_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you say to Xardas' new tower?";
};

FUNC INT Info_Mod_Cavalorn_XardasTurm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_XardasTurm_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_XardasTurm_15_00"); //What do you say to Xardas' new tower?
	AI_Output(self, hero, "Info_Mod_Cavalorn_XardasTurm_36_01"); //Oh, Xardas is in there. I thought it was an old haunted castle or something.
	AI_Output(self, hero, "Info_Mod_Cavalorn_XardasTurm_36_02"); //Wherein... Knowing Xardas nearby doesn't make it any less creepy.
};

INSTANCE Info_Mod_Cavalorn_Zeremoniendolch (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Zeremoniendolch_Condition;
	information	= Info_Mod_Cavalorn_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "You like it down here?";
};

FUNC INT Info_Mod_Cavalorn_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Zeremoniendolch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Zeremoniendolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Zeremoniendolch_15_00"); //You like it down here?
	AI_Output(self, hero, "Info_Mod_Cavalorn_Zeremoniendolch_36_01"); //Not at all, sir. But I have to wait for instructions from Merdarion.
	AI_Output(hero, self, "Info_Mod_Cavalorn_Zeremoniendolch_15_02"); //I have Vatras' orders for you. You're supposed to show up again.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Zeremoniendolch_36_03"); //Thank Adanos! Finally daylight again. You're telling Merdarion?
	AI_Output(hero, self, "Info_Mod_Cavalorn_Zeremoniendolch_15_04"); //Of course it is.

	B_StartOtherRoutine	(self, "ATVATRAS");
};

INSTANCE Info_Mod_Cavalorn_Lehrer (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Lehrer_Condition;
	information	= Info_Mod_Cavalorn_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me how to handle the bow?";
};

FUNC INT Info_Mod_Cavalorn_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Banditen2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Lehrer_15_00"); //Can you teach me how to handle the bow?

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORINIS, LOG_NOTE);

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Cavalorn_Lehrer_36_01"); //You seem to have forgotten something, don't you? Sure, I can show you the basics.

		B_LogEntry	(TOPIC_MOD_LEHRER_KHORINIS, "Cavalorn can teach me archery and sneaking.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Cavalorn_Lehrer_36_02"); //I can teach you to sneak.

		B_LogEntry	(TOPIC_MOD_LEHRER_KHORINIS, "Cavalorn can teach me to sneak.");
	};
};

INSTANCE Info_Mod_Cavalorn_Lernen_Schleichen (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Lernen_Schleichen_Condition;
	information	= Info_Mod_Cavalorn_Lernen_Schleichen_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("Sneak", B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, 1));
};

FUNC INT Info_Mod_Cavalorn_Lernen_Schleichen_Condition()
{
	Info_Mod_Cavalorn_Lernen_Schleichen.description = B_BuildLearnString("Sneak", B_GetLearnCostTalent(hero, NPC_TALENT_SNEAK, 1));

	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Lehrer))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Lernen_Schleichen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Lernen_Schleichen_15_00"); //Teach me to sneak.

	if (B_TeachThiefTalent (self, other, NPC_TALENT_SNEAK))
	{
		AI_Output(self, other, "Info_Mod_Cavalorn_Lernen_Schleichen_36_01"); //Soft soles give you a better chance to approach your opponents without them noticing.
	};
};

INSTANCE Info_Mod_Cavalorn_Lernen_Bogen (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Lernen_Bogen_Condition;
	information	= Info_Mod_Cavalorn_Lernen_Bogen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me archery.";
};

FUNC INT Info_Mod_Cavalorn_Lernen_Bogen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Lehrer))
	&& (hero.hitchance[NPC_TALENT_BOW] < 100)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Lernen_Bogen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Lernen_Bogen_15_00"); //Teach me archery.

	Info_ClearChoices	(Info_Mod_Cavalorn_Lernen_Bogen);
	
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, "Back off.", Info_Mod_Cavalorn_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Cavalorn_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Cavalorn_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Cavalorn_Lernen_Bogen_BACK()
{
	Info_ClearChoices	(Info_Mod_Cavalorn_Lernen_Bogen);
};

FUNC VOID Info_Mod_Cavalorn_Lernen_Bogen_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_BOW, 5, 100);

	Info_ClearChoices	(Info_Mod_Cavalorn_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, "Back off.", Info_Mod_Cavalorn_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Cavalorn_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Cavalorn_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Cavalorn_Lernen_Bogen_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_BOW, 1, 100);

	Info_ClearChoices	(Info_Mod_Cavalorn_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, "Back off.", Info_Mod_Cavalorn_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Cavalorn_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Cavalorn_Lernen_Bogen_1);
};

INSTANCE Info_Mod_Cavalorn_Pickpocket (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Pickpocket_Condition;
	information	= Info_Mod_Cavalorn_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Cavalorn_Pickpocket_Condition()
{
	C_Beklauen	(55, ItRw_Arrow, 23);
};

FUNC VOID Info_Mod_Cavalorn_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);

	Info_AddChoice	(Info_Mod_Cavalorn_Pickpocket, DIALOG_BACK, Info_Mod_Cavalorn_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cavalorn_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cavalorn_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cavalorn_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);
};

FUNC VOID Info_Mod_Cavalorn_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);

		Info_AddChoice	(Info_Mod_Cavalorn_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cavalorn_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cavalorn_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cavalorn_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cavalorn_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cavalorn_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cavalorn_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cavalorn_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cavalorn_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cavalorn_EXIT (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_EXIT_Condition;
	information	= Info_Mod_Cavalorn_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cavalorn_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cavalorn_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
