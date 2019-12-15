INSTANCE Info_Mod_Neoras_Hi (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_Hi_Condition;
	information	= Info_Mod_Neoras_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Neoras_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neoras_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Neoras_Hi_04_01"); //I am Neoras, the master of potions.
};

INSTANCE Info_Mod_Neoras_Aufgabe (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_Aufgabe_Condition;
	information	= Info_Mod_Neoras_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can I help you with something?";
};

FUNC INT Info_Mod_Neoras_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Neoras_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Mitglied))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neoras_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Neoras_Aufgabe_15_00"); //Can I help you with something?
	AI_Output(self, hero, "Info_Mod_Neoras_Aufgabe_04_01"); //I don't need any help. Go to the other magicians, maybe they have something for you to do.
};

INSTANCE Info_Mod_Neoras_HabTrank (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_HabTrank_Condition;
	information	= Info_Mod_Neoras_HabTrank_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a potion for you here.";
};

FUNC INT Info_Mod_Neoras_HabTrank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Neoras_Aufgabe))
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_HabTrank))
	&& (Npc_HasItems(hero, NeorasTrankVonMilten) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neoras_HabTrank_Info()
{
	AI_Output(hero, self, "Info_Mod_Neoras_HabTrank_15_00"); //I have a potion for you.

	B_GiveInvItems	(hero, self, NeorasTrankVonMilten, 1);

	AI_Output(self, hero, "Info_Mod_Neoras_HabTrank_04_01"); //I've been waiting a long time for this potion. Where'd you get it?
	AI_Output(hero, self, "Info_Mod_Neoras_HabTrank_15_02"); //I helped Milten make it.
	AI_Output(self, hero, "Info_Mod_Neoras_HabTrank_04_03"); //You proved to me that you are worthy to become a novice. Take this gold as a reward.

	B_LogEntry_More	(TOPIC_MOD_FEUERMAGIER, TOPIC_MOD_NEORAS_TRANK, "Neoras thinks I'm worthy to be a novice.", "I brought the potion to Neoras.");
	B_SetTopicStatus	(TOPIC_MOd_NEORAS_TRANK, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Neoras_Mitgift (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_Mitgift_Condition;
	information	= Info_Mod_Neoras_Mitgift_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Neoras_Mitgift_Condition()
{
	if (hero.guild == GIL_VLK)
	&& (Mod_Gilde == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neoras_Mitgift_Info()
{
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_00"); //You're the novice who brought me this potion.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_01"); //I might have another assignment for someone with your skills.
	AI_Output(hero, self, "Info_Mod_Neoras_Mitgift_15_02"); //I'm all ears.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_03"); //As you may have noticed, we produce antidotes here in the monastery.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_04"); //This is necessary because there are a lot of poisonous animals and plants out there.
	AI_Output(hero, self, "Info_Mod_Neoras_Mitgift_15_05"); //Yes, I had already made acquaintance with it.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_06"); //Exactly. So you understand its purpose, so far so well.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_07"); //But lately there have been more and more deaths from severe poisoning in Khorini.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_08"); //However, these were not caused by animals or plants, but by weapons created by man... Swords and arrows.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_09"); //There seem to be hired killers who brush their blades and tips with it to bring their victims to merciless death.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_10"); //They seem to use particularly concentrated toxins for this purpose.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_11"); //I would now like to ask you to get me a bottle of animal and plant poison so that I can intensify my research in this field.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_12"); //The best way to do this is to visit alchemists or herbalists. You could find it there if you had any luck.

	Log_CreateTopic	(TOPIC_MOD_NEORAS_MITGIFT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NEORAS_MITGIFT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NEORAS_MITGIFT, "I'm supposed to get Neoras a bottle of animal and plant poison for research purposes. He told me to look around at herbalists and alchemists.");
};

INSTANCE Info_Mod_Neoras_Mitgift2 (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_Mitgift2_Condition;
	information	= Info_Mod_Neoras_Mitgift2_Info;
	permanent	= 0;
	important	= 0;
	description	= "So here's a bottle of plant poison and a bottle of animal poison.";
};

FUNC INT Info_Mod_Neoras_Mitgift2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Neoras_Mitgift))
	&& (Npc_HasItems(hero, ItPo_Tiergift) >= 1)
	&& (Npc_HasItems(hero, ItPo_Pflanzengift) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neoras_Mitgift2_Info()
{
	AI_Output(hero, self, "Info_Mod_Neoras_Mitgift2_15_00"); //So here's a bottle of plant poison and a bottle of animal poison.


	B_ShowGivenThings	("Animal and plant poison given");

	Npc_RemoveInvItems	(hero, ItPo_Tiergift, 1);
	Npc_RemoveInvItems	(hero, ItPo_Pflanzengift, 1);

	if (Npc_KnowsInfo(hero, Info_Mod_Constantino_Mitgift2))
	{
		AI_Output(hero, self, "Info_Mod_Neoras_Mitgift2_15_01"); //With best regards from Constantino.
	};

	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift2_04_02"); //Ahh, excellent. That's enough material for my research. You did your job well again.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift2_04_03"); //Here, take some gold for your expenses and some antidotes.

	CreateInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItPo_Gegengift, 3);

	B_ShowGivenThings	("200 gold and 3 antipoisons preserved");

	B_GivePlayerXP	(350);

	B_SetTopicStatus	(TOPIC_MOD_NEORAS_MITGIFT, LOG_SUCCESS);
};

INSTANCE Info_Mod_Neoras_Lehrer (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_Lehrer_Condition;
	information	= Info_Mod_Neoras_Lehrer_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can I learn from you?";
};

FUNC INT Info_Mod_Neoras_Lehrer_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Neoras_Hi))
	&& ((Mod_Gilde == 6)
	|| (Mod_Gilde == 7)
	|| (Mod_Gilde == 8))
	&& (Mod_IstLehrling == 1)
	{	
		return 1;
	};
};
FUNC VOID Info_Mod_Neoras_Lehrer_Info()
{
	AI_Output (hero, self, "Info_Mod_Neoras_Lehrer_15_00"); //Can I study with you?
	
	if (Mod_Gilde == 6)
	|| (Mod_Gilde == 7)
	|| (Mod_Gilde == 8)
	{
		AI_Output (self, hero, "Info_Mod_Neoras_Lehrer_04_01"); //I'll let you in on the secrets of alchemy.
		
		if (!Npc_KnowsInfo(hero, Info_Mod_Neoras_Lehrer))
		{
			Log_CreateTopic	(TOPIC_MOD_LEHRER_KLOSTER, LOG_NOTE);
			B_LogEntry	(TOPIC_MOD_LEHRER_KLOSTER, "Neoras can teach me about alchemy.");
		};

		Info_ClearChoices 	(Info_Mod_Neoras_Lehrer);
		Info_AddChoice 		(Info_Mod_Neoras_Lehrer,DIALOG_BACK,Info_Mod_Neoras_Lehrer_BACK);
	
		if ( PLAYER_TALENT_ALCHEMY[POTION_Gegengift] == FALSE)
		{
			Info_AddChoice 		(Info_Mod_Neoras_Lehrer,B_BuildLearnString ("antidote", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Gegengift)),Info_Mod_Neoras_Lehrer_Gegengift);
		};
	
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_01] == FALSE)
		&& (Mod_LehrlingBei != 1)
		{
			Info_AddChoice 		(Info_Mod_Neoras_Lehrer,B_BuildLearnString ("Essence of Healing", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_01)),Info_Mod_Neoras_Lehrer_HEALTH_01);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_02] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Extract of Healing", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_02)), Info_Mod_Neoras_Lehrer_Health_02);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_03] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_02] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Elixir of Healing", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_03)), Info_Mod_Neoras_Lehrer_Health_03);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE)
		&& (Mod_LehrlingBei != 1)
		&& (Kapitel >= 4)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Elixir of Life", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_Health)), Info_Mod_Neoras_Lehrer_Perm_Health);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == FALSE)
		&& (Mod_LehrlingBei != 1)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Mana Essence", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_01)), Info_Mod_Neoras_Lehrer_Mana_01);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Mana Extract", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_02)), Info_Mod_Neoras_Lehrer_Mana_02);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Mana Elixir", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_03)), Info_Mod_Neoras_Lehrer_Mana_03);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE)
		&& (Kapitel >= 4)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Elixir of Spirit", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_Mana)), Info_Mod_Neoras_Lehrer_Perm_Mana);
		};                                                                                                                                                                            
		if (PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] == FALSE) 
		&& (Kapitel >= 4)
		{                                                                                                                                                                                     
			Info_AddChoice (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Elixir of Strength", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_STR)), Info_Mod_Neoras_Lehrer_PermSTR);               
		};
		if (PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] == FALSE)
		&& (Kapitel >= 4)
		{
			Info_AddChoice (Info_Mod_Neoras_Lehrer,B_BuildLearnString ("Elixir of Dexterity", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_DEX)), Info_Mod_Neoras_Lehrer_Perm_DEX);
		};
		
	};
};
FUNC VOID Info_Mod_Neoras_Lehrer_BACK()
{
	Info_ClearChoices 	(Info_Mod_Neoras_Lehrer);
};
FUNC VOID Info_Mod_Neoras_Lehrer_Gegengift()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Gegengift);
};
FUNC VOID Info_Mod_Neoras_Lehrer_HEALTH_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_01);
};
FUNC VOID Info_Mod_Neoras_Lehrer_HEALTH_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_02);
};
FUNC VOID Info_Mod_Neoras_Lehrer_Health_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_03);
};
FUNC VOID Info_Mod_Neoras_Lehrer_PermStr()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_STR);
};
FUNC VOID Info_Mod_Neoras_Lehrer_Perm_DEX()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_DEX);
};
FUNC VOID Info_Mod_Neoras_Lehrer_Perm_Health()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_Health);
};
FUNC VOID Info_Mod_Neoras_Lehrer_MANA_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_01);
};
FUNC VOID Info_Mod_Neoras_Lehrer_MANA_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_02);
};
FUNC VOID Info_Mod_Neoras_Lehrer_MANA_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_03);
};
FUNC VOID Info_Mod_Neoras_Lehrer_Perm_Mana()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_Mana);
};

INSTANCE Info_Mod_Neoras_Pickpocket (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_Pickpocket_Condition;
	information	= Info_Mod_Neoras_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Neoras_Pickpocket_Condition()
{
	C_Beklauen	(130, ItPo_Perm_Mana, 1);
};

FUNC VOID Info_Mod_Neoras_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);

	Info_AddChoice	(Info_Mod_Neoras_Pickpocket, DIALOG_BACK, Info_Mod_Neoras_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Neoras_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Neoras_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Neoras_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);
};

FUNC VOID Info_Mod_Neoras_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);

		Info_AddChoice	(Info_Mod_Neoras_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Neoras_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Neoras_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Neoras_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Neoras_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Neoras_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Neoras_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Neoras_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Neoras_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Neoras_EXIT (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_EXIT_Condition;
	information	= Info_Mod_Neoras_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Neoras_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neoras_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
