INSTANCE Info_Mod_Ingmar_Hi (C_INFO)
{
	npc		= Mod_585_RIT_Ingmar_NW;
	nr		= 1;
	condition	= Info_Mod_Ingmar_Hi_Condition;
	information	= Info_Mod_Ingmar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Ingmar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ingmar_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Ingmar_Hi_06_01"); //I'm Ingmar the knight. I'm a protector of this town. Besides, I'll make sure the other knights are strong enough.
};

INSTANCE Info_Mod_Ingmar_Innosklinge (C_INFO)
{
	npc		= Mod_585_RIT_Ingmar_NW;
	nr		= 1;
	condition	= Info_Mod_Ingmar_Innosklinge_Condition;
	information	= Info_Mod_Ingmar_Innosklinge_Info;
	permanent	= 0;
	important	= 0;
	description	= "Greetings. I heard you were enthusiastic about poems (.... )";
};

FUNC INT Info_Mod_Ingmar_Innosklinge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_AndreVermaechtnis5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ingmar_Innosklinge_Info()
{
	AI_Output(hero, self, "Info_Mod_Ingmar_Innosklinge_15_00"); //Greetings. I heard you were enthusiastic about poems and lyrics about the struggle for Inno's just cause.
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_01"); //Yes, that is indeed true.
	AI_Output(hero, self, "Info_Mod_Ingmar_Innosklinge_15_02"); //Does' Dominique Ruf' mean anything to you?
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_03"); //Sure thing. Who doesn't know the legendary Paladin Dominique and the epic writings that testify to his heroic deeds?
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_04"); //Wait a minute, I'll pick it out of my lyrics.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_05"); //Ongar's bone tract... no--

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_06"); //Parzival's blood sacrifice.... neither ahh, yeah, here...

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_07"); //Dominique's Call
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_08"); //We will reap his glory
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_09"); //Innos stands by me and my brothers
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_10"); //I will slaughter them all like sheep on my way
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_11"); //for he is the fire in my heart
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_12"); //My blade is dedicated only to him
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_13"); //that day his name will resound
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_14"); //Anyone who stands in my way
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_15"); //will die by my hand
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_16"); //for I am a warrior Innos
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_17"); //executor of his will
	AI_Output(hero, self, "Info_Mod_Ingmar_Innosklinge_15_18"); //Thanks, I wrote it down.

	CreateInvItems	(hero, ItWr_DominiquesRuf, 1);

	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_19"); //Gladly. I am always pleased when someone appreciates the lyrical writings of Inno's contenders.

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "I have the lyrics. I hope Harad will be able to explain the rest.");
};

INSTANCE Info_Mod_Ingmar_Lehrer (C_INFO)
{
	npc		= Mod_585_RIT_Ingmar_NW;
	nr		= 1;
	condition	= Info_Mod_Ingmar_Lehrer_Condition;
	information	= Info_Mod_Ingmar_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you train me, too?";
};

FUNC INT Info_Mod_Ingmar_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ingmar_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ingmar_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Ingmar_Lehrer_15_00"); //Can you train me too?
	
	if (Mod_Gilde == 1)
	{
		AI_Output(self, hero, "Info_Mod_Ingmar_Lehrer_06_01"); //Once you become a knight, I'll train you, not before.

		B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Ingmar will train me in strength as soon as I become a knight.");
	}
	else if (Mod_Gilde == 2)
	{
		AI_Output(self, hero, "Info_Mod_Ingmar_Lehrer_06_02"); //Since you're a knight, I'll train you.

		B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Ingmar will train me in strength as long as I'm a knight.");
	}
	else if (Mod_Gilde == 3)
	{
		AI_Output(self, hero, "Info_Mod_Ingmar_Lehrer_06_03"); //You're already a paladin. I can't teach you anymore. You need to find a new teacher.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ingmar_Lehrer_06_04"); //I only train knights.
	};
};

INSTANCE Info_Mod_Ingmar_Lernen (C_INFO)
{
	npc		= Mod_585_RIT_Ingmar_NW;
	nr		= 1;
	condition	= Info_Mod_Ingmar_Lernen_Condition;
	information	= Info_Mod_Ingmar_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Show me how I'm getting stronger.";
};

FUNC INT Info_Mod_Ingmar_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ingmar_Lehrer))
	&& (Mod_Gilde == 2)
	&& (hero.attribute[ATR_STRENGTH] < 180)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ingmar_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Ingmar_Lernen_15_00"); //Show me how I'm getting stronger.

	Info_ClearChoices	(Info_Mod_Ingmar_Lernen);

	Info_AddChoice	(Info_Mod_Ingmar_Lernen, DIALOG_BACK, Info_Mod_Ingmar_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Ingmar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ingmar_Lernen_5);
	Info_AddChoice	(Info_Mod_Ingmar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ingmar_Lernen_1);
};

FUNC VOID Info_Mod_Ingmar_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Ingmar_Lernen);
};

FUNC VOID Info_Mod_Ingmar_Lernen_5()
{
	B_TeachAttributePoints_New	(self, hero, ATR_STRENGTH, 5, 180);
	
	Info_ClearChoices	(Info_Mod_Ingmar_Lernen);

	Info_AddChoice	(Info_Mod_Ingmar_Lernen, DIALOG_BACK, Info_Mod_Ingmar_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Ingmar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ingmar_Lernen_5);
	Info_AddChoice	(Info_Mod_Ingmar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ingmar_Lernen_1);
};

FUNC VOID Info_Mod_Ingmar_Lernen_1()
{
	B_TeachAttributePoints	(self, hero, ATR_STRENGTH, 1, 180);

	Info_ClearChoices	(Info_Mod_Ingmar_Lernen);

	Info_AddChoice	(Info_Mod_Ingmar_Lernen, DIALOG_BACK, Info_Mod_Ingmar_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Ingmar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ingmar_Lernen_5);
	Info_AddChoice	(Info_Mod_Ingmar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ingmar_Lernen_1);
};

INSTANCE Info_Mod_Ingmar_Pickpocket (C_INFO)
{
	npc		= Mod_585_RIT_Ingmar_NW;
	nr		= 1;
	condition	= Info_Mod_Ingmar_Pickpocket_Condition;
	information	= Info_Mod_Ingmar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Ingmar_Pickpocket_Condition()
{
	C_Beklauen	(140, ItMi_Gold, 62);
};

FUNC VOID Info_Mod_Ingmar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);

	Info_AddChoice	(Info_Mod_Ingmar_Pickpocket, DIALOG_BACK, Info_Mod_Ingmar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ingmar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ingmar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ingmar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);
};

FUNC VOID Info_Mod_Ingmar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);

		Info_AddChoice	(Info_Mod_Ingmar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ingmar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ingmar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ingmar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ingmar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ingmar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ingmar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ingmar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ingmar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ingmar_EXIT (C_INFO)
{
	npc		= Mod_585_RIT_Ingmar_NW;
	nr		= 1;
	condition	= Info_Mod_Ingmar_EXIT_Condition;
	information	= Info_Mod_Ingmar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ingmar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ingmar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
