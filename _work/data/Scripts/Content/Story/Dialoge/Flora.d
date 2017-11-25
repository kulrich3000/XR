INSTANCE Info_Mod_Flora_Hi (C_INFO)
{
	npc		= Mod_4030_VLK_Flora_NW;
	nr		= 1;
	condition	= Info_Mod_Flora_Hi_Condition;
	information	= Info_Mod_Flora_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Flora_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& ((hero.attribute[ATR_DEXTERITY] < 100)
	|| (Npc_KnowsInfo(hero, Info_Mod_Flora_Dachratte)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Flora_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Flora_Hi_16_00"); //Yes?
};

INSTANCE Info_Mod_Flora_Port (C_INFO)
{
	npc		= Mod_4030_VLK_Flora_NW;
	nr		= 1;
	condition	= Info_Mod_Flora_Port_Condition;
	information	= Info_Mod_Flora_Port_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're in danger.";
};

FUNC INT Info_Mod_Flora_Port_Condition()
{
	if (Moe_KnowsPort == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Flora_Port_Info()
{
	AI_Output(hero, self, "Info_Mod_Flora_Port_15_00"); //You're in danger.
	AI_Output(self, hero, "Info_Mod_Flora_Port_16_01"); //What's the point? Did I do something wrong?
	AI_Output(hero, self, "Info_Mod_Flora_Port_15_02"); //You're on a killer's hit list. It has to do with Johannes Port.
	AI_Output(self, hero, "Info_Mod_Flora_Port_16_03"); //Seriously, what happened? Is he all right?
	AI_Output(hero, self, "Info_Mod_Flora_Port_15_04"); //How to take it. He's not in pain anymore.
	AI_Output(self, hero, "Info_Mod_Flora_Port_16_05"); //(languagelessly) Oh.... such as.... what? He's dead? No! ... But why are you coming to me?
	AI_Output(hero, self, "Info_Mod_Flora_Port_15_06"); //To warn you and ask what motive the killer might have had.
	AI_Output(self, hero, "Info_Mod_Flora_Port_16_07"); //Hmm... Surely John had his secrets... but there was one thing he didn't even want to tell me, his cousin.
	AI_Output(self, hero, "Info_Mod_Flora_Port_16_08"); //In his last letter he only hinted at what he had found out, but that it could be life-threatening, I hadn't expected....
	AI_Output(self, hero, "Info_Mod_Flora_Port_16_09"); //Oh, wait! I remember a name, a person Johannes warned me about.
	AI_Output(hero, self, "Info_Mod_Flora_Port_15_10"); //What's the person's name?
	AI_Output(self, hero, "Info_Mod_Flora_Port_16_11"); //Brahim did it. Johannes didn't know him, but he thought he had dark connections.... I wonder what that means.
	AI_Output(hero, self, "Info_Mod_Flora_Port_15_12"); //I'll figure it out.
	AI_Output(self, hero, "Info_Mod_Flora_Port_16_13"); //Good. Thanks for your warning, I'll be careful. Good luck to you!

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_MOE_PORT, "Is Brahim behind the murders?");
};

INSTANCE Info_Mod_Flora_Dachratte (C_INFO)
{
	npc		= Mod_4030_VLK_Flora_NW;
	nr		= 1;
	condition	= Info_Mod_Flora_Dachratte_Condition;
	information	= Info_Mod_Flora_Dachratte_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Flora_Dachratte_Condition()
{
	if (hero.attribute[ATR_DEXTERITY] >= 100)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Flora_Dachratte_Info()
{
	AI_Output(self, hero, "Info_Mod_Flora_Dachratte_16_00"); //Oh, you look like a trained climber.
	AI_Output(self, hero, "Info_Mod_Flora_Dachratte_16_01"); //Please help me get this horrible beast off my roof!

	Info_ClearChoices	(Info_Mod_Flora_Dachratte);

	Info_AddChoice	(Info_Mod_Flora_Dachratte, "Sorry, no time for that.", Info_Mod_Flora_Dachratte_B);
	Info_AddChoice	(Info_Mod_Flora_Dachratte, "Nothing could be easier. What kind of animal is that?", Info_Mod_Flora_Dachratte_A);
};

FUNC VOID Info_Mod_Flora_Dachratte_B()
{
	AI_Output(hero, self, "Info_Mod_Flora_Dachratte_B_15_00"); //Oh, you look like a trained climber.

	Info_ClearChoices	(Info_Mod_Flora_Dachratte);
};

FUNC VOID Info_Mod_Flora_Dachratte_A()
{
	AI_Output(hero, self, "Info_Mod_Flora_Dachratte_A_15_00"); //Nothing could be easier. What kind of animal is that?
	AI_Output(self, hero, "Info_Mod_Flora_Dachratte_A_16_01"); //A rat! Hopefully her whole family hasn't settled in the attic yet!
	AI_Output(hero, self, "Info_Mod_Flora_Dachratte_A_15_02"); //How do I get to the roof?
	AI_Output(self, hero, "Info_Mod_Flora_Dachratte_A_16_03"); //You have to find a way up somewhere. That's why I'm asking you!
	AI_Output(hero, self, "Info_Mod_Flora_Dachratte_A_15_04"); //I'll take care of it.

	Mod_Flora_Dachratte = 1;

	Log_CreateTopic	(TOPIC_MOD_FLORA_RATTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FLORA_RATTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FLORA_RATTE, "Flora from upstairs asked me to kill the rat sitting on her house.");

	Info_ClearChoices	(Info_Mod_Flora_Dachratte);

	Wld_InsertNpc	(Rat_Flora,	"FP_ROAM_FLORA_DACHRATTE");
};

INSTANCE Info_Mod_Flora_Dachratte2 (C_INFO)
{
	npc		= Mod_4030_VLK_Flora_NW;
	nr		= 1;
	condition	= Info_Mod_Flora_Dachratte2_Condition;
	information	= Info_Mod_Flora_Dachratte2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The rat's out of trouble.";
};

FUNC INT Info_Mod_Flora_Dachratte2_Condition()
{
	if (Mod_Flora_Dachratte == 1)
	&& (Npc_IsDead(Rat_Flora))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Flora_Dachratte2_Info()
{
	AI_Output(hero, self, "Info_Mod_Flora_Dachratte2_15_00"); //The rat's out of trouble.
	AI_Output(self, hero, "Info_Mod_Flora_Dachratte2_16_01"); //Oh, there are still helpful people out there. Thank you very much!

	B_GivePlayerXP	(100);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_FLORA_RATTE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Flora_Pickpocket (C_INFO)
{
	npc		= Mod_4030_VLK_Flora_NW;
	nr		= 1;
	condition	= Info_Mod_Flora_Pickpocket_Condition;
	information	= Info_Mod_Flora_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Flora_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Flora_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Flora_Pickpocket);

	Info_AddChoice	(Info_Mod_Flora_Pickpocket, DIALOG_BACK, Info_Mod_Flora_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Flora_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Flora_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Flora_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Flora_Pickpocket);
};

FUNC VOID Info_Mod_Flora_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Flora_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Flora_Pickpocket);

		Info_AddChoice	(Info_Mod_Flora_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Flora_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Flora_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Flora_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Flora_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Flora_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Flora_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Flora_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Flora_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Flora_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Flora_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Flora_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Flora_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Flora_EXIT (C_INFO)
{
	npc		= Mod_4030_VLK_Flora_NW;
	nr		= 1;
	condition	= Info_Mod_Flora_EXIT_Condition;
	information	= Info_Mod_Flora_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Flora_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Flora_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
