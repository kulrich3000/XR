INSTANCE Info_Mod_Grimbald_Hi (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Hi_Condition;
	information	= Info_Mod_Grimbald_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grimbald_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grimbald_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Grimbald_Hi_07_00"); //Goddamn it, don't make that noise! Or do you want the Black Troll to hear us there?
	AI_Output(hero, self, "Info_Mod_Grimbald_Hi_15_01"); //No way! Shall I kill him for you?
	AI_Output(self, hero, "Info_Mod_Grimbald_Hi_07_02"); //For Adano's sake, no! I've been watching this creature for days and it's fascinating.
};

INSTANCE Info_Mod_Grimbald_Faszinierend (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Faszinierend_Condition;
	information	= Info_Mod_Grimbald_Faszinierend_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's so fascinating about this ugly creature?";
};

FUNC INT Info_Mod_Grimbald_Faszinierend_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Faszinierend_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Faszinierend_15_00"); //What's so fascinating about this ugly creature?
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_01"); //Ugly creature? My boy, you have no sense of aesthetics. Look at these graceful movements.
	AI_Output(hero, self, "Info_Mod_Grimbald_Faszinierend_15_02"); //Well...
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_03"); //Or see that pack of snappers over there...
	AI_Output(hero, self, "Info_Mod_Grimbald_Faszinierend_15_04"); //What snapper?
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_05"); //Well, the one the Black Troll just stomped in the ground the day before yesterday...
	AI_Output(hero, self, "Info_Mod_Grimbald_Faszinierend_15_06"); //Aha...
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_07"); //That reminds me, the snappers have been pretty weird.
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_08"); //No normal animal would simply attack a Black Troll, but they just blindly ran to their deaths.
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_09"); //Terribly aggressive. They already looked a bit robbed anyway.
	AI_Output(hero, self, "Info_Mod_Grimbald_Faszinierend_15_10"); //Took you? You mean, they were hurt?
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_11"); //Not really... they just didn't look good.
	AI_Output(hero, self, "Info_Mod_Grimbald_Faszinierend_15_12"); //Can you be more specific?
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_13"); //I didn't see any more, they came in the morning hours, but farted like crazy.
};

INSTANCE Info_Mod_Grimbald_Dragomir (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Dragomir_Condition;
	information	= Info_Mod_Grimbald_Dragomir_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm from Dragomir.";
};

FUNC INT Info_Mod_Grimbald_Dragomir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Faszinierend))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Mitmachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Dragomir_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Dragomir_15_00"); //I'm from Dragomir, he wants to know what you found.
	AI_Output(self, hero, "Info_Mod_Grimbald_Dragomir_07_01"); //Hm, I don't even know you yet. You haven't been around long, have you?
	AI_Output(hero, self, "Info_Mod_Grimbald_Dragomir_15_02"); //You could say that, yes.
	AI_Output(self, hero, "Info_Mod_Grimbald_Dragomir_07_03"); //I'm Grimbald, one of Dragomir's hunters. Except for the Black Troll and the Snappers, not much.
	AI_Output(self, hero, "Info_Mod_Grimbald_Dragomir_07_04"); //Actually a beautiful valley here for hunting, if the Black Troll wouldn't be here and no magicians would bother you.
	AI_Output(hero, self, "Info_Mod_Grimbald_Dragomir_15_05"); //There are magicians running around here?
	AI_Output(self, hero, "Info_Mod_Grimbald_Dragomir_07_06"); //Yes, sometimes the priests have some kind of ceremony here, disappear in the grotto on the other side of the lake, but nothing seems to be too important.
	AI_Output(hero, self, "Info_Mod_Grimbald_Dragomir_15_07"); //Well, then. Is there anything else?
	AI_Output(self, hero, "Info_Mod_Grimbald_Dragomir_07_08"); //No. And oh, if you haven't been to Nandor yet, he accompanied me all the way to Nandor and then walked through the gorge towards the forest.
	AI_Output(hero, self, "Info_Mod_Grimbald_Dragomir_15_09"); //Thanks, I'll keep going.

	B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Grimbald has found a good hunting ground, which is disturbed by the black troll and the magicians who pass by from time to time.");
	
	B_StartOtherRoutine(self, "FOLLOW");
};

INSTANCE Info_Mod_Grimbald_Erzbrocken (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Erzbrocken_Condition;
	information	= Info_Mod_Grimbald_Erzbrocken_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grimbald_Erzbrocken_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Dragomir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Erzbrocken_Info()
{
	AI_Output(self, hero, "Info_Mod_Grimbald_Erzbrocken_07_00"); //Wait a minute, I almost forgot.

	B_Say	(hero, self, "$WASISTDENN");

	AI_Output(self, hero, "Info_Mod_Grimbald_Erzbrocken_07_01"); //Here, I found this strange piece of ore between the bones of the dead snapper, I'm not sure about it.

	B_GiveInvItems	(self, hero, ItMi_Erzbrocken_Seltsam, 1);

	AI_Output(self, hero, "Info_Mod_Grimbald_Erzbrocken_07_02"); //You'd better take him to Dragomir, maybe he can do something with it.

	B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Grimbald gave me another strange piece of ore for Dragomir, which he found in the aggressive snapper.");

	AI_StopProcessInfos	(self);
	
	B_StartOtherRoutine(self, "START");
};

INSTANCE Info_Mod_Grimbald_NandorGrom (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_NandorGrom_Condition;
	information	= Info_Mod_Grimbald_NandorGrom_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, Grimbald! I'm back. Anything new?";
};

FUNC INT Info_Mod_Grimbald_NandorGrom_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Erzbrocken))
	&& (Npc_KnowsInfo(hero, Info_Mod_Grom_Dragomir))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nandor_WoelfeTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_NandorGrom_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_NandorGrom_15_00"); //Hello, Grimbald! I'm back. Anything new?
	AI_Output(self, hero, "Info_Mod_Grimbald_NandorGrom_07_01"); //Actually, I don't.
	AI_Output(hero, self, "Info_Mod_Grimbald_NandorGrom_15_02"); //Nevertheless, Nandor's was an abnormal wolf. Here it was crazy snappers and Grom's aggressive field robbers.
	AI_Output(self, hero, "Info_Mod_Grimbald_NandorGrom_07_03"); //It's strange the whole thing. Well, Dragomir will take care of it.
	AI_Output(hero, self, "Info_Mod_Grimbald_NandorGrom_15_04"); //Certainly, Mr. Grimbald.
	AI_Output(self, hero, "Info_Mod_Grimbald_NandorGrom_07_05"); //Crazy! By the way, I noticed something else...
	AI_Output(hero, self, "Info_Mod_Grimbald_NandorGrom_15_06"); //Um...?
	AI_Output(self, hero, "Info_Mod_Grimbald_NandorGrom_07_07"); //Yeah. There's something going on down in the woods by the lake. Sometimes I hear voices and noises.
	AI_Output(hero, self, "Info_Mod_Grimbald_NandorGrom_15_08"); //Maybe the cave magicians?
	AI_Output(self, hero, "Info_Mod_Grimbald_NandorGrom_07_09"); //I don't think so. They always come the way.
	AI_Output(hero, self, "Info_Mod_Grimbald_NandorGrom_15_10"); //I see. I'll report it to Dragomir. Well, I have to keep--
	AI_Output(self, hero, "Info_Mod_Grimbald_NandorGrom_07_11"); //Take care, now.
};

INSTANCE Info_Mod_Grimbald_Kapitel2 (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Kapitel2_Condition;
	information	= Info_Mod_Grimbald_Kapitel2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Something new again?";
};

FUNC INT Info_Mod_Grimbald_Kapitel2_Condition()
{
	if (Mod_Drago == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Kapitel2_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Kapitel2_15_00"); //Something new again?
	AI_Output(self, hero, "Info_Mod_Grimbald_Kapitel2_07_01"); //Not so bad... Well, well. It's getting colder these days up here.... I suppose you'll go down to the valley soon.
	AI_Output(hero, self, "Info_Mod_Grimbald_Kapitel2_15_02"); //Do that. I have to go to the Minental. See you around.
	AI_Output(self, hero, "Info_Mod_Grimbald_Kapitel2_07_03"); //See you around.
};

INSTANCE Info_Mod_Grimbald_Untier (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Untier_Condition;
	information	= Info_Mod_Grimbald_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have you been dealing with unusual game lately?";
};

FUNC INT Info_Mod_Grimbald_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Untier))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Untier_15_00"); //Have you been dealing with unusual game lately?
	AI_Output(self, hero, "Info_Mod_Grimbald_Untier_07_01"); //So, apart from the fatigued snapper and a black troll... actually
	AI_Output(hero, self, "Info_Mod_Grimbald_Untier_15_02"); //Yes?
	AI_Output(self, hero, "Info_Mod_Grimbald_Untier_07_03"); //After I had captured some boars a few days ago, I was awakened by some noises at night and was just able to see how a big predator - it was too dark to recognize it - disappeared into the darkness with one of the captured animals.
	AI_Output(hero, self, "Info_Mod_Grimbald_Untier_15_04"); //Where did this animal go?
	AI_Output(self, hero, "Info_Mod_Grimbald_Untier_07_05"); //It ran towards the stone circle in the small forest just back there.
	AI_Output(hero, self, "Info_Mod_Grimbald_Untier_15_06"); //Thank you, that's all I wanted to hear.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "Grimbald was stolen at night by a large predator. He made off towards the stone circle.");
};

INSTANCE Info_Mod_Grimbald_Snorre (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Snorre_Condition;
	information	= Info_Mod_Grimbald_Snorre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grimbald_Snorre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Snorre))
	&& (!Npc_KnowsInfo(hero, Info_Mod_KoboldDragon_Stab))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Snorre_Info()
{
	AI_Output(self, hero, "Info_Mod_Grimbald_Snorre_07_00"); //Did you see that little flame creature too?
	AI_Output(hero, self, "Info_Mod_Grimbald_Snorre_15_01"); //Flame creature?
	AI_Output(self, hero, "Info_Mod_Grimbald_Snorre_07_02"); //Yes, he came from the stone circle and flashed past me. And unless I'm not all deceived full loaded with gold.
	AI_Output(self, hero, "Info_Mod_Grimbald_Snorre_07_03"); //Unusual things seem to be booming at the moment.
	AI_Output(hero, self, "Info_Mod_Grimbald_Snorre_15_04"); //And where did the creature go?
	AI_Output(self, hero, "Info_Mod_Grimbald_Snorre_07_05"); //Well, it went over the bridge. And from a distance I saw the flame point in the entrance to Relendel disappear, if not everything is deceiving me.

	B_LogEntry	(TOPIC_MOD_NL_STAB, "The hunter saw Snorre disappear in the entrance to Relendel.");
};

INSTANCE Info_Mod_Grimbald_Moor (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Moor_Condition;
	information	= Info_Mod_Grimbald_Moor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you happen to know where a moor is?";
};

FUNC INT Info_Mod_Grimbald_Moor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Moorhexe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Moorhexe_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Moor_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Moor_15_00"); //Do you happen to know where a moor is?
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_07_01"); //Ein Moor auf Khorinis? Mir ist nur eines bekannt, das "fucking moor". Es befindet sich im Osten von Relendel.

	Info_ClearChoices	(Info_Mod_Grimbald_Moor);

	Info_AddChoice	(Info_Mod_Grimbald_Moor, "Thank you, that's all I wanted to know.", Info_Mod_Grimbald_Moor_B);
	Info_AddChoice	(Info_Mod_Grimbald_Moor, "Can you take me there?", Info_Mod_Grimbald_Moor_A);
};

FUNC VOID Info_Mod_Grimbald_Moor_C()
{
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_C_07_00"); //Many knights of fortune have already tried to recover the treasures of the moor and all have paid with their lives.
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_C_07_01"); //Toxic fumes and bog bodies are said to cause a cruel death for every intruder, so they say... think about what you're getting into.
};

FUNC VOID Info_Mod_Grimbald_Moor_B()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Moor_B_15_00"); //Thank you, that's all I wanted to know.
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_B_07_01"); //If you want to go there, I would seriously advise against it.

	Info_Mod_Grimbald_Moor_C();

	Info_ClearChoices	(Info_Mod_Grimbald_Moor);
};

FUNC VOID Info_Mod_Grimbald_Moor_A()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Moor_A_15_00"); //Can you take me there?
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_A_07_01"); //Into the fucking moor?! Are you out of your mind?!
	AI_Output(hero, self, "Info_Mod_Grimbald_Moor_A_15_02"); //It's important. The fate of Khorinis could depend on it.
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_A_07_03"); //Are you sure you won't untie a troll for me?
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_A_07_04"); //If you want to go there with the hope of filling your pockets with gold, I would strongly advise against it.

	Info_Mod_Grimbald_Moor_C();

	AI_Output(hero, self, "Info_Mod_Grimbald_Moor_A_15_05"); //I swear I'm telling the truth.
	AI_Output(hero, self, "Info_Mod_Grimbald_Moor_A_15_06"); //Corruption is lurking closer than you think (quietly) actually in the magician's dungeon cave around the corner.
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_A_07_07"); //Hmm, yeah, maybe you're telling the truth. I've been hearing about a lot of strange and disturbing events lately...
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_A_07_08"); //All right, I'll take you there. Stay close behind me.

	Mod_NL_Grimbald = 1;

	self.aivar[AIV_Partymember] = TRUE;

	Info_ClearChoices	(Info_Mod_Grimbald_Moor);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RELENDEL");
};

INSTANCE Info_Mod_Grimbald_DragomirErzbrocken (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_DragomirErzbrocken_Condition;
	information	= Info_Mod_Grimbald_DragomirErzbrocken_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grimbald_DragomirErzbrocken_Condition()
{
	if (Mod_JG_GrimbaldTeacher == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_DragomirErzbrocken_Info()
{
	AI_Output(self, hero, "Info_Mod_Grimbald_DragomirErzbrocken_07_00"); //Did you talk to Dragomir about the ore chunk?
	AI_Output(hero, self, "Info_Mod_Grimbald_DragomirErzbrocken_15_01"); //Yeah, he doesn't feel right about him, and that's why he gave it back to me.
	AI_Output(self, hero, "Info_Mod_Grimbald_DragomirErzbrocken_07_02"); //That's what I said. But thank you for taking it from me, I wouldn't have wanted him around.
	AI_Output(self, hero, "Info_Mod_Grimbald_DragomirErzbrocken_07_03"); //If you want, I can teach you a little bit about hunting.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORINIS, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KHORINIS, "The hunter Grimbald can teach me about hunting.");
};

INSTANCE Info_Mod_Grimbald_Lernen (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr          	= 1;
	condition	= Info_Mod_Grimbald_Lernen_Condition;
	information	= Info_Mod_Grimbald_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "What can you teach me?";
};

FUNC INT Info_Mod_Grimbald_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_DragomirErzbrocken))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Lernen_15_00"); //What can you teach me?

	if ((PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ReptileSkin] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_07_01"); //Depends on what you want to know.

		Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

		Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);

		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Grimbald_Lernen, B_BuildLearnString("pull teeth", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Grimbald_Lernen_Teeth);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ReptileSkin] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Grimbald_Lernen, B_BuildLearnString("skin animals", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_ReptileSkin)), Info_Mod_Grimbald_Lernen_ReptileSkin);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Grimbald_Lernen, B_BuildLearnString("chop claws", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Grimbald_Lernen_Claws);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Grimbald_Lernen, B_BuildLearnString("fly spine", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Grimbald_Lernen_BFSting);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Grimbald_Lernen, B_BuildLearnString("fly wing", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFWing)), Info_Mod_Grimbald_Lernen_BFWing);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_07_02"); //I can't teach you any more than you already know. Sorry about that.
	};
};

FUNC void Info_Mod_Grimbald_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Grimbald_Lernen);
};

FUNC void Info_Mod_Grimbald_Lernen_Claws()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Claws))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Claws_07_00"); //Animals don't like to give their claws away. You have to hit the exact spot where you're going with your knife.
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Claws_07_01"); //The posture of your hand should be slightly entangled. With a strong jolt you cut off the claw.
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Claws_07_02"); //Claws are always a sought-after means of payment for a trader.
	};

	Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

	Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);
		
};

FUNC void Info_Mod_Grimbald_Lernen_ReptileSkin()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_ReptileSkin))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_ReptileSkin_07_00"); //And always cut open only on the belly, otherwise you will reduce the quality.
	};

	Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

	Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);
};

FUNC void Info_Mod_Grimbald_Lernen_Teeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Teeth))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Teeth_07_00"); //The easiest thing you can extract from animals is their teeth. You're driving your knife around the dentures in his mouth.
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Teeth_07_01"); //Then you skillfully separate it from the animal's skull with a jerk.
	};

	Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

	Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);
};

FUNC void Info_Mod_Grimbald_Lernen_Fur()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Fur))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Fur_07_00"); //The best way to remove fur is to make a deep cut on the animal's hind legs.
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Fur_07_01"); //Then you can always pull the fur from the front to the back very easily.
	};

	Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

	Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);
};

FUNC void Info_Mod_Grimbald_Lernen_BFSting()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_BFSting))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_BFSting_07_00"); //The fly has a soft spot on the back.
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_BFSting_07_01"); //If you press your hand against it, the sting extends very far and you can cut it with a knife.
	};

	Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

	Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);
};

FUNC void Info_Mod_Grimbald_Lernen_BFWing()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_BFWing))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_BFWing_07_00"); //The best way to remove the wings of a fly is to cut a sharp blade very close to the body of the fly.
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_BFWing_07_01"); //Just make sure you don't damage the fine fabric of the wings. They're worthless unless you do it carefully.
	};

	Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

	Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);
};

INSTANCE Info_Mod_Grimbald_Pickpocket (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Pickpocket_Condition;
	information	= Info_Mod_Grimbald_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Grimbald_Pickpocket_Condition()
{
	C_Beklauen	(80, ItAt_Sting, 4);
};

FUNC VOID Info_Mod_Grimbald_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);

	Info_AddChoice	(Info_Mod_Grimbald_Pickpocket, DIALOG_BACK, Info_Mod_Grimbald_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Grimbald_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Grimbald_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Grimbald_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);
};

FUNC VOID Info_Mod_Grimbald_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);

		Info_AddChoice	(Info_Mod_Grimbald_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Grimbald_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Grimbald_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Grimbald_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Grimbald_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Grimbald_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Grimbald_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Grimbald_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Grimbald_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Grimbald_EXIT (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_EXIT_Condition;
	information	= Info_Mod_Grimbald_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Grimbald_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grimbald_EXIT_Info()
{
	AI_StopProcessInfos	(self);

	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Dragomir))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Grimbald_Erzbrocken))
	{
		AI_Wait	(hero, 1);
	};
};
