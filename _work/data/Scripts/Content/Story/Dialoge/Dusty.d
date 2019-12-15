INSTANCE Info_Mod_Dusty_Hi (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Hi_Condition;
	information	= Info_Mod_Dusty_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dusty_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dusty_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Dusty_Hi_24_00"); //You here? They said you were buried in the temple of sleepers--
	AI_Output(hero, self, "Info_Mod_Dusty_Hi_15_01"); //A long, unpleasant story. But why are you here?
	AI_Output(self, hero, "Info_Mod_Dusty_Hi_24_02"); //I was supposed to go over to the mainland, family and stuff. (laughs tortured)
	AI_Output(self, hero, "Info_Mod_Dusty_Hi_24_03"); //The only problem is that there is currently no ship in the harbor that will be leaving the port in the near future.
	AI_Output(self, hero, "Info_Mod_Dusty_Hi_24_04"); //And because the paladins are causing a lot of stress even in the harbour district, I'm out again and get hunted.
};

INSTANCE Info_Mod_Dusty_Lehrer (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Lehrer_Condition;
	information	= Info_Mod_Dusty_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "As a hunter, do you have any tips for me?";
};

FUNC INT Info_Mod_Dusty_Lehrer_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dusty_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Lehrer_15_00"); //As a hunter, do you have any tips for me?
	AI_Output(self, hero, "Info_Mod_Dusty_Lehrer_24_01"); //I can definitely show you the basics. You helped me in the colony, didn't you?

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORINIS, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KHORINIS, "Dusty can teach me how to get hunting trophies.");
};

INSTANCE Info_Mod_Dusty_Infos (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Infos_Condition;
	information	= Info_Mod_Dusty_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you know anything about the sleeper trailers around here?";
};

FUNC INT Info_Mod_Dusty_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_Fanatiker))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung_Fanatiker))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Infos_15_00"); //Do you know anything about the sleeper trailers around here?
	AI_Output(self, hero, "Info_Mod_Dusty_Infos_24_01"); //Yeah, I saw some. It was two small groups.
	AI_Output(hero, self, "Info_Mod_Dusty_Infos_15_02"); //Where can I find her?
	AI_Output(self, hero, "Info_Mod_Dusty_Infos_24_03"); //You know something? I've been on withdrawal for days. My brain doesn't work that fast, if you know what I mean.
	AI_Output(hero, self, "Info_Mod_Dusty_Infos_15_04"); //You need another dose of swampweed?
	AI_Output(self, hero, "Info_Mod_Dusty_Infos_24_05"); //(wholish) Oh, yes! If you bring me a good stem, I'll get my thoughts straightened out.

	B_LogEntry	(TOPIC_MOD_MILIZ_SEKTENSPINNER, "Before Dusty can tell me where the sleeper trailers are, I have to get him a swampweed stalk.");
};

INSTANCE Info_Mod_Dusty_Kippe (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Kippe_Condition;
	information	= Info_Mod_Dusty_Kippe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's your swampweed.";
};

FUNC INT Info_Mod_Dusty_Kippe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Infos))
	&& (Npc_HasItems(hero, ItMi_Joint) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Kippe_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Kippe_15_00"); //Here's your swampweed.
	
	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Dusty_Kippe_24_01"); //Ah, very nice. My eyes are clear again.
	AI_Output(hero, self, "Info_Mod_Dusty_Kippe_15_02"); //Then tell me where I can find the fanatics.
	AI_Output(self, hero, "Info_Mod_Dusty_Kippe_24_03"); //One group has settled at the lighthouse. That's the bigger group. When you go there, you have to be very careful.
	AI_Output(self, hero, "Info_Mod_Dusty_Kippe_24_04"); //The other group is in a cave in the forest south of town. You should stop by there first.
	AI_Output(self, hero, "Info_Mod_Dusty_Kippe_24_05"); //You better let the lighthouse stay before you find out more.

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_MILIZ_SEKTENSPINNER, "Dusty told me that one group has their camp at the lighthouse, the other one in a cave south of town. I should leave the lighthouse alone until I know more.");
};

INSTANCE Info_Mod_Dusty_Crawlersekret (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Crawlersekret_Condition;
	information	= Info_Mod_Dusty_Crawlersekret_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where could I get strong minecrawler secretion from?";
};

FUNC INT Info_Mod_Dusty_Crawlersekret_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Constantino_Lehrling))
	&& (Mod_MinecrawlerEi >= 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Constantino_Stimme))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Crawlersekret_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Crawlersekret_15_00"); //Where could I get strong minecrawler secretion from?
	AI_Output(self, hero, "Info_Mod_Dusty_Crawlersekret_24_01"); //I've heard from the other hunters that minecrawlers have been spotted in the north.
	AI_Output(self, hero, "Info_Mod_Dusty_Crawlersekret_24_02"); //If you're lucky, there's also a queen there whose eggs you can steal to win the secret from.
};

INSTANCE Info_Mod_Dusty_OtherHunters (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_OtherHunters_Condition;
	information	= Info_Mod_Dusty_OtherHunters_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you tell me where I can find other hunters?";
};

FUNC INT Info_Mod_Dusty_OtherHunters_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_OtherHunters_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_OtherHunters_15_00"); //Can you tell me where I can find other hunters?
	AI_Output(self, hero, "Info_Mod_Dusty_OtherHunters_24_01"); //Bei der Taverne "The Dead Harpy" nordöstlich von hier ist ein großes Lager, an dem ich vorbeigekommen bin. Ob es noch andere Treffpunkte gibt, weiß ich nicht.
	AI_Output(hero, self, "Info_Mod_Dusty_OtherHunters_15_02"); //Thank you. That'll help me a lot.
};

INSTANCE Info_Mod_Dusty_Bruderschaft (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Bruderschaft_Condition;
	information	= Info_Mod_Dusty_Bruderschaft_Info;
	permanent	= 0;
	important	= 0;
	description	= "What happens after the fall of the barrier with the brotherhood (.... )";
};

FUNC INT Info_Mod_Dusty_Bruderschaft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Bruderschaft_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Bruderschaft_15_00"); //What happened to the brotherhood after the barrier fell?
	AI_Output(self, hero, "Info_Mod_Dusty_Bruderschaft_24_01"); //I don't know, there wasn't much of a sense of departure or anything. Most of them have built up a new life in the camp and do not want to leave.
	AI_Output(self, hero, "Info_Mod_Dusty_Bruderschaft_24_02"); //That the sleeper was an arch-demon had to digest some of course, but I don't know if they were looking for a replacement or just smoking swamp herbs.
};

INSTANCE Info_Mod_Dusty_BosperFelle (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_BosperFelle_Condition;
	information	= Info_Mod_Dusty_BosperFelle_Info;
	permanent	= 0;
	important	= 0;
	description	= "You wouldn't happen to have some beautiful wolf skins, would you?";
};

FUNC INT Info_Mod_Dusty_BosperFelle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bosper_Lehrling))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_BosperFelle_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_BosperFelle_15_00"); //You don't happen to have some nice wolf furs you don't need anymore?
	AI_Output(self, hero, "Info_Mod_Dusty_BosperFelle_24_01"); //I've shot a few wolves, even though they're damn dangerous.
	AI_Output(self, hero, "Info_Mod_Dusty_BosperFelle_24_02"); //But I didn't skin them all. Wait a minute.... I'd have two undamaged skins. Interested?
	AI_Output(hero, self, "Info_Mod_Dusty_BosperFelle_15_03"); //Give it to me. How can I thank you?

	B_GiveInvItems	(self, hero, ItAt_WolfFur_Rein, 2);

	AI_Output(self, hero, "Info_Mod_Dusty_BosperFelle_24_04"); //You removed the barrier. That's all you need to do for me.
};

INSTANCE Info_Mod_Dusty_Lernen (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr          	= 1;
	condition	= Info_Mod_Dusty_Lernen_Condition;
	information	= Info_Mod_Dusty_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "What can you teach me?";
};

FUNC INT Info_Mod_Dusty_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Lehrer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Lernen_15_00"); //What can you teach me?

	if ((PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_24_01"); //Depends on what you want to know.

		Info_ClearChoices	(Info_Mod_Dusty_Lernen);

		Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("pull teeth",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("chop claws",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("fly spine", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Skin hide",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_24_02"); //I can't teach you any more than you already know. Sorry about that.
	};
};

FUNC void Info_Mod_Dusty_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Dusty_Lernen);
};

FUNC void Info_Mod_Dusty_Lernen_Claws()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Claws))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Claws_24_00"); //Animals don't like to give up their claws. You have to place your knife very precisely.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Claws_24_01"); //Your hands should be slightly crossed. Then you separate the claw with a powerful tug.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Claws_24_02"); //Merchants are always eager to be paid in claws.
	};

	Info_ClearChoices	(Info_Mod_Dusty_Lernen);

	Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("pull teeth",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("chop claws",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("fly spine", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Skin hide",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
	};
		
};

FUNC void Info_Mod_Dusty_Lernen_Teeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Teeth))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Teeth_24_00"); //The easiest thing you can extract from animals is their teeth. You're driving your knife around the dentures in his mouth.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Teeth_24_01"); //Then you skillfully separate it from the animal's skull with a jerk.
	};

	Info_ClearChoices	(Info_Mod_Dusty_Lernen);

	Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("pull teeth",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("chop claws",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("fly spine", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Skin hide",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
	};
};

FUNC void Info_Mod_Dusty_Lernen_BFSting()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_BFSting))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_BFSting_07_00"); //The fly has a soft spot on the back.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_BFSting_07_01"); //If you press your hand against it, the sting extends very far and you can cut it with a knife.
	};

	Info_ClearChoices	(Info_Mod_Dusty_Lernen);

	Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("pull teeth",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("chop claws",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("fly spine", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Skin hide",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
	};
};

FUNC void Info_Mod_Dusty_Lernen_Fur()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Fur))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Fur_24_00"); //The best way to remove the pelt is by making a deep cut along the hind legs.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Fur_24_01"); //After that, it should be a cinch to pull off the skin from the front to the back.
	};

	Info_ClearChoices	(Info_Mod_Dusty_Lernen);

	Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("pull teeth",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("chop claws",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("fly spine", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Skin hide",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
	};
};

INSTANCE Info_Mod_Dusty_EXIT (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_EXIT_Condition;
	information	= Info_Mod_Dusty_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dusty_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dusty_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
