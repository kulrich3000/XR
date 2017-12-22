INSTANCE Info_Mod_Drax_Hi (C_INFO)
{
	npc		= Mod_1121_BDT_Drax_MT;
	nr		= 1;
	condition	= Info_Mod_Drax_Hi_Condition;
	information	= Info_Mod_Drax_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me about hunting?";
};

FUNC INT Info_Mod_Drax_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Drax_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Drax_Hi_15_00"); //Can you teach me about hunting?

	if (Banditen_Dabei == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Drax_Hi_28_01"); //I could, but you're not one of us.
	}
	else
	{
		if (Mod_Schwierigkeit != 4)
		{
			AI_Output(self, hero, "Info_Mod_Drax_Hi_28_02"); //Hmm, since you're one of us, I'm gonna teach you about hunting and archery.

			Log_CreateTopic	(TOPIC_MOD_LEHRER_BANDITEN, LOG_NOTE);
			B_LogEntry	(TOPIC_MOD_LEHRER_BANDITEN, "From Drax I can learn various hunting talents as well as archery.");
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Drax_Hi_28_03"); //Hmm, since you're one of us, I'm gonna teach you about hunting.

			Log_CreateTopic	(TOPIC_MOD_LEHRER_BANDITEN, LOG_NOTE);
			B_LogEntry	(TOPIC_MOD_LEHRER_BANDITEN, "From Drax I can learn various hunting talents.");
		};
	};
};

INSTANCE Info_Mod_Drax_Fokus (C_INFO)
{
	npc		= Mod_1121_BDT_Drax_MT;
	nr		= 1;
	condition	= Info_Mod_Drax_Fokus_Condition;
	information	= Info_Mod_Drax_Fokus_Info;
	permanent	= 0;
	important	= 0;
	description	= "How are you feeling?";
};

FUNC INT Info_Mod_Drax_Fokus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ratford_Fokus))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drax_Fokus_Info()
{
	AI_Output(hero, self, "Info_Mod_Drax_Fokus_15_00"); //How are you feeling?
	AI_Output(self, hero, "Info_Mod_Drax_Fokus_28_01"); //(fighting for breath) I don't know. At first the creatures scared the shit out of me, but I had fun with the following hunt like never before.
	AI_Output(hero, self, "Info_Mod_Drax_Fokus_15_02"); //Is this all the rest of Warge?
	AI_Output(self, hero, "Info_Mod_Drax_Fokus_28_03"); //I didn't see any escape. But why do you want to know?
	AI_Output(hero, self, "Info_Mod_Drax_Fokus_15_04"); //One of them has something I'm looking for.
	AI_Output(self, hero, "Info_Mod_Drax_Fokus_28_05"); //The blue sparkling thing? Must be worth a lot, huh?
	AI_Output(hero, self, "Info_Mod_Drax_Fokus_15_06"); //Not in gold.
	AI_Output(self, hero, "Info_Mod_Drax_Fokus_28_07"); //(disappointed) Well, then.... Look around, one of them will still have it with him.

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1120_BDT_Ratford_MT, "START");
};

INSTANCE Info_Mod_Drax_Lernen_Bogen (C_INFO)
{
	npc		= Mod_1121_BDT_Drax_MT;
	nr		= 1;
	condition	= Info_Mod_Drax_Lernen_Bogen_Condition;
	information	= Info_Mod_Drax_Lernen_Bogen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me archery.";
};

FUNC INT Info_Mod_Drax_Lernen_Bogen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drax_Hi))
	&& (hero.hitchance[NPC_TALENT_BOW] < 60)
	&& (Banditen_Dabei == TRUE)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drax_Lernen_Bogen_Info()
{
	AI_Output(hero, self, "Info_Mod_Drax_Lernen_Bogen_15_00"); //Teach me archery.

	Info_ClearChoices	(Info_Mod_Drax_Lernen_Bogen);
	
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, "Back off.", Info_Mod_Drax_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Drax_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Drax_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Drax_Lernen_Bogen_BACK()
{
	Info_ClearChoices	(Info_Mod_Drax_Lernen_Bogen);
};

FUNC VOID Info_Mod_Drax_Lernen_Bogen_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_BOW, 5, 60);

	Info_ClearChoices	(Info_Mod_Drax_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, "Back off.", Info_Mod_Drax_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Drax_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Drax_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Drax_Lernen_Bogen_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_BOW, 1, 60);

	Info_ClearChoices	(Info_Mod_Drax_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, "Back off.", Info_Mod_Drax_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Drax_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Drax_Lernen_Bogen_1);
};

INSTANCE Info_Mod_Drax_Jagdtalente (C_INFO)
{
	npc		= Mod_1121_BDT_Drax_MT;
	nr		= 1;
	condition	= Info_Mod_Drax_Jagdtalente_Condition;
	information	= Info_Mod_Drax_Jagdtalente_Info;
	permanent	= 1;
	important	= 0;
	description	= "What can you teach me?";
};

FUNC INT Info_Mod_Drax_Jagdtalente_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drax_Hi))
	&& (Banditen_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drax_Jagdtalente_Info()
{
	AI_Output(hero, self, "Info_Mod_Drax_Jagdtalente_15_00"); //What can you teach me?

	if ((PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Claws] == FALSE)
	||(PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Fur] == FALSE)
	||(PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_ReptileSkin] == FALSE)
	||(PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Teeth] == FALSE))
	{
		AI_Output(self, hero, "Info_Mod_Drax_Jagdtalente_28_01"); //Depends on what you want to know.

		Info_AddChoice		(Info_Mod_Drax_Jagdtalente, DIALOG_BACK, Info_Mod_Drax_Jagdtalente_BACK);
		
		if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Teeth] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Drax_Jagdtalente, B_BuildLearnString ("pull teeth",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)),  Info_Mod_Drax_Jagdtalente_Teeth);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Claws] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Drax_Jagdtalente, B_BuildLearnString ("chop claws",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)),  Info_Mod_Drax_Jagdtalente_Claws);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Fur] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Drax_Jagdtalente, B_BuildLearnString ("Skin hide",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)),  Info_Mod_Drax_Jagdtalente_Fur);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_ReptileSkin] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Drax_Jagdtalente, B_BuildLearnString ("Skinning of reptiles",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_ReptileSkin)),  Info_Mod_Drax_Jagdtalente_ReptileSkin);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Drax_Jagdtalente_28_02"); //I can't teach you any more than you already know. Sorry about that.
	};
};

FUNC VOID Info_Mod_Drax_Jagdtalente_BACK()
{
	Info_ClearChoices	(Info_Mod_Drax_Jagdtalente);
};

FUNC VOID Info_Mod_Drax_Jagdtalente_Claws()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Claws))
	{
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Claws_28_00"); //Animals don't like to give their claws away. You have to hit the exact spot where you're going with your knife.
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Claws_28_01"); //The posture of your hand should be slightly entangled. With a strong jolt you cut off the claw.
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Claws_28_02"); //Claws are always a sought-after means of payment for a trader.
	};

	Info_ClearChoices	(Info_Mod_Drax_Jagdtalente);
		
};

FUNC VOID Info_Mod_Drax_Jagdtalente_Teeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Teeth))
	{
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Teeth_28_00"); //The simplest thing you can take from animals is their teeth. You're driving your knife around the dentures in his mouth.
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Teeth_28_01"); //Then you skillfully cut it off from the animal's skull.
	};

	Info_ClearChoices	(Info_Mod_Drax_Jagdtalente);
};

FUNC VOID Info_Mod_Drax_Jagdtalente_Fur()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Fur))
	{
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Fur_28_00"); //The best way to remove fur is to make a deep cut on the animal's hind legs.
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Fur_28_01"); //Then you can always pull the fur from the front to the back very easily.
	};

	Info_ClearChoices	(Info_Mod_Drax_Jagdtalente);
};

FUNC VOID Info_Mod_Drax_Jagdtalente_ReptileSkin()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_ReptileSkin))
	{
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_BFSting_28_00"); //When you cut the skin on the sides, it will detach itself. You shouldn't have a problem skinning lizards from now on.
	};

	Info_ClearChoices	(Info_Mod_Drax_Jagdtalente);
};

INSTANCE Info_Mod_Drax_Pickpocket (C_INFO)
{
	npc		= Mod_1121_BDT_Drax_MT;
	nr		= 1;
	condition	= Info_Mod_Drax_Pickpocket_Condition;
	information	= Info_Mod_Drax_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Drax_Pickpocket_Condition()
{
	C_Beklauen	(65, ItAt_WolfFur, 3);
};

FUNC VOID Info_Mod_Drax_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Drax_Pickpocket);

	Info_AddChoice	(Info_Mod_Drax_Pickpocket, DIALOG_BACK, Info_Mod_Drax_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Drax_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Drax_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Drax_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Drax_Pickpocket);
};

FUNC VOID Info_Mod_Drax_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Drax_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Drax_Pickpocket);

		Info_AddChoice	(Info_Mod_Drax_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Drax_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Drax_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Drax_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Drax_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Drax_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Drax_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Drax_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Drax_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Drax_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Drax_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Drax_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Drax_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Drax_EXIT (C_INFO)
{
	npc		= Mod_1121_BDT_Drax_MT;
	nr		= 1;
	condition	= Info_Mod_Drax_EXIT_Condition;
	information	= Info_Mod_Drax_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Drax_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Drax_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
