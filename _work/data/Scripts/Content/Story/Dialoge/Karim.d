INSTANCE Info_Mod_Karim_Hi (C_INFO)
{
	npc		= Mod_7125_ASS_Karim_NW;
	nr		= 1;
	condition	= Info_Mod_Karim_Hi_Condition;
	information	= Info_Mod_Karim_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karim_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Training4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karim_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Karim_Hi_13_00"); //Oh, there you are.
	AI_Output(hero, self, "Info_Mod_Karim_Hi_15_01"); //I was out with Sinbad. What's happening?
	AI_Output(self, hero, "Info_Mod_Karim_Hi_13_02"); //Have you ever heard of the blood cups?
	AI_Output(hero, self, "Info_Mod_Karim_Hi_15_03"); //I've gotten one for Amir before. From the money lender in Khorinis. He's dead.
	AI_Output(self, hero, "Info_Mod_Karim_Hi_13_04"); //Of course, otherwise the goblet wouldn't have any value. The owner must die for the goblets to take effect.
	AI_Output(hero, self, "Info_Mod_Karim_Hi_15_05"); //How many goblets are there?
	AI_Output(self, hero, "Info_Mod_Karim_Hi_13_06"); //It's three. According to our information, one of them is owned by the judges in Khorinis. This is exactly what the great Council wants.
	AI_Output(hero, self, "Info_Mod_Karim_Hi_15_07"); //Then I shall assassinate the judge and teach the cup.
	AI_Output(self, hero, "Info_Mod_Karim_Hi_13_08"); //Smart guy. If you succeed, you'll have a place with the candidates,
	AI_Output(hero, self, "Info_Mod_Karim_Hi_15_09"); //Then I want to have a look...

	Log_CreateTopic	(TOPIC_MOD_ASS_BLUTKELCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_BLUTKELCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_BLUTKELCH, "I'm supposed to take second place in the council. Get me a blood cup. Judge in Khorinis probably has him. He must die. Shouldn't cause a stir. Poison would be the right remedy for an assassin. There was an alchemist here somewhere....");
};

INSTANCE Info_Mod_Karim_Lehrer (C_INFO)
{
	npc		= Mod_7125_ASS_Karim_NW;
	nr		= 1;
	condition	= Info_Mod_Karim_Lehrer_Condition;
	information	= Info_Mod_Karim_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's your name?";
};

FUNC INT Info_Mod_Karim_Lehrer_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Karim_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Karim_Lehrer_15_00"); //What's your name?
	AI_Output(self, hero, "Info_Mod_Karim_Lehrer_13_01"); //They call me Karim. You want something from me?
	AI_Output(hero, self, "Info_Mod_Karim_Lehrer_15_02"); //You got anything?
	AI_Output(self, hero, "Info_Mod_Karim_Lehrer_13_03"); //Well, I could teach you something.
	AI_Output(hero, self, "Info_Mod_Karim_Lehrer_15_04"); //Uh-huh. What do you got?
	AI_Output(self, hero, "Info_Mod_Karim_Lehrer_13_05"); //I can teach you how to sneak or assassinate someone inconspicuously from behind.
};

INSTANCE Info_Mod_Karim_Lernen_Schleichen (C_INFO)
{
	npc		= Mod_7125_ASS_Karim_NW;
	nr		= 1;
	condition	= Info_Mod_Karim_Lernen_Schleichen_Condition;
	information	= Info_Mod_Karim_Lernen_Schleichen_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("Sneak", B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, 1));
};

FUNC INT Info_Mod_Karim_Lernen_Schleichen_Condition()
{
	Info_Mod_Cavalorn_Lernen_Schleichen.description = B_BuildLearnString("Sneak", B_GetLearnCostTalent(hero, NPC_TALENT_SNEAK, 1));

	if (Npc_KnowsInfo(hero, Info_Mod_Karim_Lehrer))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karim_Lernen_Schleichen_Info()
{
	AI_Output(hero, self, "Info_Mod_Karim_Lernen_Schleichen_15_00"); //Teach me to sneak.

	if (B_TeachThiefTalent (self, hero, NPC_TALENT_SNEAK))
	{
		AI_Output(self, hero, "Info_Mod_Karim_Lernen_Schleichen_13_01"); //Soft soles give you a better chance to approach your opponents without them noticing.
	};
};

INSTANCE Info_Mod_Karim_Lernen_Meucheln (C_INFO)
{
	npc		= Mod_7125_ASS_Karim_NW;
	nr		= 1;
	condition	= Info_Mod_Karim_Lernen_Meucheln_Condition;
	information	= Info_Mod_Karim_Lernen_Meucheln_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("assassinations", B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, 1));
};

FUNC INT Info_Mod_Karim_Lernen_Meucheln_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Karim_Lernen_Meucheln.description = "Assassinate. Cost: 1000 Gold";
	}
	else
	{
		Info_Mod_Karim_Lernen_Meucheln.description = "Assassinate. Cost: 10 LP";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Karim_Lehrer))
	&& (Delirium_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karim_Lernen_Meucheln_Info()
{
	AI_Output(hero, self, "Info_Mod_Karim_Lernen_Meucheln_15_00"); //Teach me how to assassinate.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 10))
	{
		AI_Output(self, hero, "Info_Mod_Karim_Lernen_Meucheln_08_01"); //It's really good. You can get rid of a person like that without anyone noticing.
		AI_Output(self, hero, "Info_Mod_Karim_Lernen_Meucheln_08_02"); //However, you should use your dagger for this. A long sword might be noticed by someone nearby.
		AI_Output(self, hero, "Info_Mod_Karim_Lernen_Meucheln_08_03"); //Once you have equipped a dagger, you go behind your victim and act as if you wanted to address it.
		AI_Output(self, hero, "Info_Mod_Karim_Lernen_Meucheln_08_04"); //The rest of them will go off on their own.

		Delirium_Perk = TRUE;

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 1000);
		}
		else
		{
			hero.lp -= 10;
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Karim_Lernen_Meucheln_08_05"); //Come back when you're ready.
	};
};

INSTANCE Info_Mod_Karim_Pickpocket (C_INFO)
{
	npc		= Mod_7125_ASS_Karim_NW;
	nr		= 1;
	condition	= Info_Mod_Karim_Pickpocket_Condition;
	information	= Info_Mod_Karim_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Karim_Pickpocket_Condition()
{
	C_Beklauen	(85, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Karim_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Karim_Pickpocket);

	Info_AddChoice	(Info_Mod_Karim_Pickpocket, DIALOG_BACK, Info_Mod_Karim_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Karim_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Karim_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Karim_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Karim_Pickpocket);
};

FUNC VOID Info_Mod_Karim_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Karim_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Karim_Pickpocket);

		Info_AddChoice	(Info_Mod_Karim_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Karim_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Karim_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Karim_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Karim_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Karim_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Karim_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Karim_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Karim_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Karim_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Karim_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Karim_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Karim_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Karim_EXIT (C_INFO)
{
	npc		= Mod_7125_ASS_Karim_NW;
	nr		= 1;
	condition	= Info_Mod_Karim_EXIT_Condition;
	information	= Info_Mod_Karim_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Karim_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Karim_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
