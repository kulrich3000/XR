INSTANCE Info_Mod_Tojan_Hi (C_INFO)
{
	npc		= Mod_1746_KDF_Tojan_PAT;
	nr		= 1;
	condition	= Info_Mod_Tojan_Hi_Condition;
	information	= Info_Mod_Tojan_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tojan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tojan_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Tojan_Hi_15_00"); //Finally. We've waited a long time, brother. But at last you're here.
	AI_Output(hero, self, "Info_Mod_Tojan_Hi_15_01"); //Pyrokar sent me. I've got a package of potions and food here.
	AI_Output(self, hero, "Info_Mod_Tojan_Hi_15_02"); //Very good. Very good. Take the food package to Furgas. You'll find him in the tower.
	AI_Output(hero, self, "Info_Mod_Tojan_Hi_15_03"); //And what am I supposed to do with the potions?
	AI_Output(self, hero, "Info_Mod_Tojan_Hi_15_04"); //Distribute them to the magicians and paladins on the outer wall. The mana potions for the magicians and the healing potions for the paladins.
	AI_Output(self, hero, "Info_Mod_Tojan_Hi_15_05"); //It was supposed to open precisely. Now hurry up, don't keep our brothers and sons waiting any longer.

	Npc_RemoveInvItems	(hero, ItMi_PAT_Trank, 1);

	CreateInvItems	(hero, ItPo_Health_02, 10);
	CreateInvItems	(hero, ItPo_Mana_02, 10);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Tojan_Trank (C_INFO)
{
	npc		= Mod_1746_KDF_Tojan_PAT;
	nr		= 1;
	condition	= Info_Mod_Tojan_Trank_Condition;
	information	= Info_Mod_Tojan_Trank_Info;
	permanent	= 0;
	important	= 0;
	description	= "The potions didn't work.";
};

FUNC INT Info_Mod_Tojan_Trank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_KDF_13_TrankLeer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tojan_Trank_Info()
{
	AI_Output(hero, self, "Info_Mod_Tojan_Trank_15_00"); //The potions didn't work. One was missing.
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_01"); //What? It can't be!
	AI_Output(hero, self, "Info_Mod_Tojan_Trank_15_02"); //It's just the way it is.
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_03"); //How could this... Damn it!
	AI_Output(hero, self, "Info_Mod_Tojan_Trank_15_04"); //Are the potions so expensive or what's so bad?
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_05"); //This is no time for jokes! Don't you see what that means?
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_06"); //Patherion has been infiltrated!
	AI_Output(hero, self, "Info_Mod_Tojan_Trank_15_07"); //A black magician? Here in the monastery?
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_08"); //I can hardly believe it myself. You have to find this guy.
	AI_Output(hero, self, "Info_Mod_Tojan_Trank_15_09"); //Now that you're saying it, one of the magicians has been acting strangely. He wasn't on the wall like the others, but on the pedestal.
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_10"); //That must have been him. Find him, brother. Here, take this scroll.

	CreateInvItems	(self, ItSc_Laehmen, 1);
	B_GiveInvItems	(self, hero, ItSc_Laehmen, 1);

	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_11"); //You can use her to paralyze him as soon as you find him.
	AI_Output(hero, self, "Info_Mod_Tojan_Trank_15_12"); //And where am I supposed to start looking for him?
	AI_Output(self, hero, "Info_Mod_Tojan_Trank_15_13"); //Ask one of the mages on the outer wall. Maybe one of them noticed where he was running.

	Log_CreateTopic	(TOPIC_MOD_FM_SM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_SM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_SM, "I have to find the black magician who is hiding under the fire magician and then paralyze him with the spell that Tojan has given me. I should ask on the wall first if they saw where he fled.");
};

INSTANCE Info_Mod_Tojan_Magier (C_INFO)
{
	npc		= Mod_1915_KDF_Tojan_PAT_UG;
	nr		= 1;
	condition	= Info_Mod_Tojan_Magier_Condition;
	information	= Info_Mod_Tojan_Magier_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tojan_Magier_Condition()
{
	if (Mod_FM_SM_TOT == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tojan_Magier_Info()
{
	AI_Output(self, hero, "Info_Mod_Tojan_Magier_15_00"); //The enemy is often closer than you think? Damn, I think we have a traitor in our ranks. You have to find him!
	AI_Output(hero, self, "Info_Mod_Tojan_Magier_15_01"); //How am I supposed to find him? It could be anyone!
	AI_Output(self, hero, "Info_Mod_Tojan_Magier_15_02"); //I will spread the word that you shall seek him!
	AI_Output(hero, self, "Info_Mod_Tojan_Magier_15_03"); //And then what? He won't show me if he knows I'm supposed to find him.
	AI_Output(self, hero, "Info_Mod_Tojan_Magier_15_04"); //Yes, it is! He'll get careless and try to get you out of the way. He'll go straight into the net! Now go away!
	
	B_SetTopicStatus	(TOPIC_MOD_FM_SM, LOG_SUCCESS);

	B_Göttergefallen(1, 1);

	Log_CreateTopic	(TOPIC_MOD_FM_VERRAT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_VERRAT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "The black magician has indicated that there is another black magician in our ranks. Tojan hired me to find him.");
};

INSTANCE Info_Mod_Tojan_Beschwoerer (C_INFO)
{
	npc		= Mod_1746_KDF_Tojan_PAT;
	nr		= 1;
	condition	= Info_Mod_Tojan_Beschwoerer_Condition;
	information	= Info_Mod_Tojan_Beschwoerer_Info;
	permanent	= 0;
	important	= 0;
	description	= "I think I know who the traitor is.";
};

FUNC INT Info_Mod_Tojan_Beschwoerer_Condition()
{
	if (Mod_FM_Foki == 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Aaron_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tojan_Beschwoerer_Info()
{
	AI_Output(hero, self, "Info_Mod_Tojan_Beschwoerer_15_00"); //I think I know who the traitor is.
	AI_Output(self, hero, "Info_Mod_Tojan_Beschwoerer_15_01"); //Really?
	AI_Output(hero, self, "Info_Mod_Tojan_Beschwoerer_15_02"); //One of the magicians named Aaron.
	AI_Output(self, hero, "Info_Mod_Tojan_Beschwoerer_15_03"); //Aaron? Didn't I know! He seemed suspicious to me.
	AI_Output(self, hero, "Info_Mod_Tojan_Beschwoerer_15_04"); //Here, take this amulet. As soon as you've overpowered Aaron, use it, I'll come to you right away.

	CreateInvItems	(self, ItAm_TojansAmulett, 1);
	B_GiveInvItems	(self, hero, ItAm_TojansAmulett, 1);

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "Tojan agrees with my suspicion that Aaron is the traitor. I am to overwhelm him and then put on the amulet that he has given me.");

	Mod_FM_Foki = 3;
};

INSTANCE Info_Mod_Tojan_Falle (C_INFO)
{
	npc		= Mod_1746_KDF_Tojan_PAT;
	nr		= 1;
	condition	= Info_Mod_Tojan_Falle_Condition;
	information	= Info_Mod_Tojan_Falle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tojan_Falle_Condition()
{
	if (Mod_FM_Foki == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tojan_Falle_Info()
{
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_00"); //(laughs) You fool!
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_01"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_02"); //It's so easy that you just made a huge mistake!
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_03"); //The magician you just killed was not a traitor.
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_04"); //No? Then who is it?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_05"); //It's me!
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_06"); //You? But why?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_07"); //Well, my employer wants you dead.
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_08"); //But why us?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_09"); //Well, you were actually just a means to an end, a scapegoat. You'll be accused of Aaron's death.
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_10"); //Who would suspect me of trying to save him at the last minute?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_11"); //I will tell everyone that I came too late to prevent you from Aaron's death and that you wanted to kill me too, so I had to destroy you.
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_12"); //Besides, no one will ever look for a traitor again. You're already dead. (laughs)
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_13"); //And why Aaron? Why would I kill him?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_14"); //Because sooner or later, Aaron will be a danger.
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_15"); //Why him, of all people?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_16"); //It's the blood that flows in his veins! He's my father.
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_17"); //Your father? But aren't you much older than him?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_18"); //You still don't understand? We are the last descendants of the man who built this monastery with his own hands!
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_19"); //And why does he look so much younger than you?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_20"); //It ages more slowly than I do, because my mother's blood also flows through my veins.
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_21"); //But why was Aron here in the monastery just an ordinary magician?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_22"); //Well, my mother is very powerful. She erased his memory.
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_23"); //We were also surprised that he found his way back to the Innos magicians.
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_24"); //Then who the hell is your mother?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_25"); //(laughs) She is the most powerful of all witches, your queen!
	AI_Output(hero, self, "Info_Mod_Tojan_Falle_15_26"); //The Witch Queen?
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_27"); //Well, I can't let you die stupidly. The witches have long been allies of the black mages.
	AI_Output(self, hero, "Info_Mod_Tojan_Falle_15_28"); //But enough of the words, now you will follow my father in Beliar's kingdom.

	Mod_FM_Foki = 8;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Tojan_EXIT (C_INFO)
{
	npc		= Mod_1746_KDF_Tojan_PAT;
	nr		= 1;
	condition	= Info_Mod_Tojan_EXIT_Condition;
	information	= Info_Mod_Tojan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tojan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tojan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
