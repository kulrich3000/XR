INSTANCE Info_Mod_Tarrok_Hi (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Hi_Condition;
	information	= Info_Mod_Tarrok_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Good to see you healthy.";
};

FUNC INT Info_Mod_Tarrok_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tarrok_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Hi_15_00"); //Good to see you healthy.
	AI_Output(self, hero, "Info_Mod_Tarrok_Hi_18_01"); //Tarrok just want to say the same thing.
	AI_Output(hero, self, "Info_Mod_Tarrok_Hi_15_02"); //Ur Shak already told me what happened.
	AI_Output(self, hero, "Info_Mod_Tarrok_Hi_18_03"); //Then Tarrok will not have to repeat. Language of people too many words for taste of Tarrok.
};

INSTANCE Info_Mod_Tarrok_AtStonehenge (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_AtStonehenge_Condition;
	information	= Info_Mod_Tarrok_AtStonehenge_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you know anything about the focus that should be here?";
};

FUNC INT Info_Mod_Tarrok_AtStonehenge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_AtStonehenge_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_AtStonehenge_15_00"); //Do you know anything about the focus that should be here?
	AI_Output(self, hero, "Info_Mod_Tarrok_AtStonehenge_18_01"); //Ur Shak have sent Tarrok sent Tarrok to bring focus and bring in safety from orcs into town.
	AI_Output(self, hero, "Info_Mod_Tarrok_AtStonehenge_18_02"); //But Tarrok came too late to save.
	AI_Output(self, hero, "Info_Mod_Tarrok_AtStonehenge_18_03"); //Hosh Pak before Tarrok came.
	AI_Output(hero, self, "Info_Mod_Tarrok_AtStonehenge_15_04"); //What are you going to do now?
	AI_Output(self, hero, "Info_Mod_Tarrok_AtStonehenge_18_05"); //Will go back to Ur Shak in Fortress in Mountain.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE,	"Tarrok was supposed to pull the focus out of the Stonehenge for Ur Shak, but the city's orcs were faster.");

	B_StartOtherRoutine	(self, "ANFELSENFESTUNG");
};

INSTANCE Info_Mod_Tarrok_Fokussuche (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Fokussuche_Condition;
	information	= Info_Mod_Tarrok_Fokussuche_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need another Ulu-Mulu.";
};

FUNC INT Info_Mod_Tarrok_Fokussuche_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ranad_WasHier))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_Fokussuche_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Fokussuche_15_00"); //I need another Ulu-Mulu.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_18_01"); //Friend need Ulu-Mulu again? But friends look weak, too weak to get things for Ulu-Mulu.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_18_02"); //But there's no other way, you have to look for things. Friend still know what Tarrok need for Ulu-Mulu?

	Info_ClearChoices	(Info_Mod_Tarrok_Fokussuche);

	Info_AddChoice	(Info_Mod_Tarrok_Fokussuche, "No.", Info_Mod_Tarrok_Fokussuche_Nein);
	Info_AddChoice	(Info_Mod_Tarrok_Fokussuche, "Yeah.", Info_Mod_Tarrok_Fokussuche_Ja);
};

FUNC VOID Info_Mod_Tarrok_Fokussuche_Nein()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Fokussuche_Nein_15_00"); //No.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_01"); //Friends need KROTAHK, KHAZ-TAK, DWACHKARR and ORTH-ANTAK.
	AI_Output(hero, self, "Info_Mod_Tarrok_Fokussuche_Nein_15_02"); //What does that mean?
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_03"); //KROTAHK his flame tongue. His tongue of fire lizard.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_04"); //KHAZ-TAK is the horn of shadow runners.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_05"); //DWACHKARR his teeth of swamp shark.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_06"); //ORTH-ANTAK his tusks of great troll.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_07"); //If friends have found things, he bring them to Tarrok.

	Log_CreateTopic	(TOPIC_MOD_ULUMULU, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ULUMULU, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ULUMULU, "I need the following things for the Ulu-Mulu: Flame tongue, Shadow-runner horn, swamp-hair teeth and troll tusks. When I get the things, I'll take them to Tarrok.");

	Info_ClearChoices	(Info_Mod_Tarrok_Fokussuche);

	Wld_InsertNpc	(Troll,	"OW_PATH_WOLF05_SPAWN02");
	Wld_InsertNpc	(Swampshark,	"FP_ROAM_NEW_302");
	Wld_InsertNpc	(Shadowbeast,	"OW_PATH_218");
	Wld_InsertNpc	(Firewaran,	"OW_MOVEMENT_BGOBBO1");
	Wld_InsertNpc	(Firewaran,	"OW_COAST_SHIPWRECK_WARAN_2");
	Wld_InsertNpc	(Firewaran,	"FP_ROAM_OW_WARAN_SHIPWRECK_2");
};

FUNC VOID Info_Mod_Tarrok_Fokussuche_Ja()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Fokussuche_Ja_15_00"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Ja_18_01"); //Well, then boyfriends go get things and bring them to me.

	Log_CreateTopic	(TOPIC_MOD_ULUMULU, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ULUMULU, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ULUMULU, "I'm supposed to get the stuff for the Ulu-Mulu and then take it to Tarrok. If I remember correctly, it was a flaming tongue, a shadow-runner's horn, swamp hair teeth and a troll tusk.");

	Info_ClearChoices	(Info_Mod_Tarrok_Fokussuche);

	Wld_InsertNpc	(Troll,	"OW_PATH_WOLF05_SPAWN02");
	Wld_InsertNpc	(Swampshark,	"FP_ROAM_NEW_302");
	Wld_InsertNpc	(Shadowbeast,	"OW_PATH_218");
	Wld_InsertNpc	(Firewaran,	"OW_MOVEMENT_BGOBBO1");
};

INSTANCE Info_Mod_Tarrok_HabSachen (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_HabSachen_Condition;
	information	= Info_Mod_Tarrok_HabSachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the stuff.";
};

FUNC INT Info_Mod_Tarrok_HabSachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_Fokussuche))
	&& (Npc_HasItems(hero, ItAt_WaranFiretongue) > 0)
	&& (Npc_HasItems(hero, ItAt_ShadowHorn) > 0)
	&& (Npc_HasItems(hero, ItAt_SharkTeeth) > 0)
	&& (Npc_HasItems(hero, ItAt_TrollTooth) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_HabSachen_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_HabSachen_15_00"); //I got the stuff.
	
	Npc_RemoveInvItems	(hero, ItAt_TrollTooth, 1);
	Npc_RemoveInvItems	(hero, ItAt_WaranFiretongue, 1);
	Npc_RemoveInvItems	(hero, ItAt_ShadowHorn, 1);
	Npc_RemoveInvItems	(hero, ItAt_SharkTeeth, 1);

	AI_Output(self, hero, "Info_Mod_Tarrok_HabSachen_18_01"); //Very good. Very good. Tarrok will build Ulu-Mulu. Friend come back when next day be.

	Mod_TarrokbautUluMulu	=	Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_ULUMULU, "Tarrok has all things and is now building me the Ulu-Mulu. They want me to come back tomorrow.");
	B_SetTopicStatus	(TOPIC_MOD_ULUMULU, LOG_SUCCESS);
};

INSTANCE Info_Mod_Tarrok_UluMulu_Fertig (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_UluMulu_Fertig_Condition;
	information	= Info_Mod_Tarrok_UluMulu_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tarrok_UluMulu_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_HabSachen))
	&& (Wld_GetDay() > Mod_TarrokbautUluMulu)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_UluMulu_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Tarrok_UluMulu_Fertig_18_00"); //Tarrok is done. You can now go to Orkstadt with Ulu-Mulu.

	CreateInvItems	(self, UluMulu, 1);
	B_GiveInvItems	(self, hero, UluMulu, 1);

	AI_Output(self, hero, "Info_Mod_Tarrok_UluMulu_Fertig_18_01"); //Friend, however, must pay attention that always have created Ulu-Mulu when going into town.

	B_GivePlayerXP	(2000);

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "I now have the Ulu-Mulu and can go to the Orc City.");

	B_StartOtherRoutine	(Mod_10002_Orc_HoshPak_MT, "TOT");

	AI_Teleport	(Mod_10006_Orc_Ranad_MT, "TOT");
	B_StartOtherRoutine	(Mod_10006_Orc_Ranad_MT, "TOT");
	AI_Teleport	(Mod_10006_Orc_Ranad_MT, "TOT");
};

INSTANCE Info_Mod_Tarrok_WasVor (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_WasVor_Condition;
	information	= Info_Mod_Tarrok_WasVor_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you going to do with your little troop here?";
};

FUNC INT Info_Mod_Tarrok_WasVor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_WasVor_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_WasVor_15_00"); //What are you going to do with your little troop here?
	AI_Output(self, hero, "Info_Mod_Tarrok_WasVor_18_01"); //First aim is to convince remaining orcs that Krushak evil. Not easy, because orcs don't want to talk to outcasts.
	AI_Output(self, hero, "Info_Mod_Tarrok_WasVor_18_02"); //Next, we must prepare the fortress. In old camp Orcs can not stay, too many bad memories of Krushak.
	AI_Output(self, hero, "Info_Mod_Tarrok_WasVor_18_03"); //Therefore, new life must begin here and pray to old gods again.
};

INSTANCE Info_Mod_Tarrok_Hilfe (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Hilfe_Condition;
	information	= Info_Mod_Tarrok_Hilfe_Info;
	permanent	= 0;
	important	= 0;
	description	= "You need some help?";
};

FUNC INT Info_Mod_Tarrok_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_Hilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Hilfe_15_00"); //You need some help?
	AI_Output(self, hero, "Info_Mod_Tarrok_Hilfe_18_01"); //Unfortunately, humans cannot help convince orcs in camps. Orcs wouldn't listen to him.
	AI_Output(self, hero, "Info_Mod_Tarrok_Hilfe_18_02"); //But here in Fortress enough trouble. Tarrok hear that quarrel between newcomers. Maybe people can mediate.
};

INSTANCE Info_Mod_Tarrok_Lehrer (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Lehrer_Condition;
	information	= Info_Mod_Tarrok_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me how to get these things?";
};

FUNC INT Info_Mod_Tarrok_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_Fokussuche))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Lehrer_15_00"); //Can you teach me how to get these things?
	AI_Output(self, hero, "Info_Mod_Tarrok_Lehrer_18_01"); //Yes, friends can show how to take things from dead animals.
};

INSTANCE Info_Mod_Tarrok_Lernen (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Lernen_Condition;
	information	= Info_Mod_Tarrok_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me something.";
};

FUNC INT Info_Mod_Tarrok_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_Lehrer))
	&& ((PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SHADOWHORN] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FIRETONGUE] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SWAMPSHARKTEETH] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TROLLTEETH] == FALSE))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Lernen_15_00"); //Teach me something.
	AI_Output(self, hero, "Info_Mod_Tarrok_Lernen_18_01"); //What do friends want to learn?

	Info_ClearChoices	(Info_Mod_Tarrok_Lernen);

	Info_AddChoice	(Info_Mod_Tarrok_Lernen, DIALOG_BACK, Info_Mod_Tarrok_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_TrollTeeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Tarrok_Lernen, B_BuildLearnString ("Trollhauer", B_GetLearnCostTalent (hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_TROLLTEETH)), Info_Mod_Tarrok_Lernen_TrollTeeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_SwampSharkTeeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Tarrok_Lernen, B_BuildLearnString ("swamp shark teeth", B_GetLearnCostTalent (hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_SWAMPSHARKTEETH)), Info_Mod_Tarrok_Lernen_SwampSharkTeeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_ShadowHorn] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Tarrok_Lernen, B_BuildLearnString ("Horn of the Shadowbeast", B_GetLearnCostTalent (hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_ShadowHorn)), Info_Mod_Tarrok_Lernen_ShadowHorn);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_FireTongue] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Tarrok_Lernen, B_BuildLearnString ("Fire Tongue", B_GetLearnCostTalent (hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FireTongue)), Info_Mod_Tarrok_Lernen_FireTongue);
	};
};

FUNC VOID Info_Mod_Tarrok_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Tarrok_Lernen);
};

FUNC VOID Info_Mod_Tarrok_Lernen_TrollTeeth()
{
	B_TeachPlayerTalentTakeAnimalTrophy	(self, hero, TROPHY_TROLLTEETH);
};

FUNC VOID Info_Mod_Tarrok_Lernen_SwampSharkTeeth()
{
	B_TeachPlayerTalentTakeAnimalTrophy	(self, hero, TROPHY_SWAMPSHARKTEETH);
};

FUNC VOID Info_Mod_Tarrok_Lernen_ShadowHorn()
{
	B_TeachPlayerTalentTakeAnimalTrophy	(self, hero, TROPHY_SHADOWHORN);
};

FUNC VOID Info_Mod_Tarrok_Lernen_FireTongue()
{
	B_TeachPlayerTalentTakeAnimalTrophy	(self, hero, TROPHY_FIRETONGUE);
};

INSTANCE Info_Mod_Tarrok_EXIT (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_EXIT_Condition;
	information	= Info_Mod_Tarrok_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tarrok_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tarrok_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
