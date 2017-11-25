INSTANCE Info_Mod_Ivan_Hi (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Hi_Condition;
	information	= Info_Mod_Ivan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "How's it going?";
};

FUNC INT Info_Mod_Ivan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ivan_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hi_15_00"); //How's it going?
	AI_Output(self, hero, "Info_Mod_Ivan_Hi_01_01"); //I don't know about that. What's the weather like?
};

INSTANCE Info_Mod_Ivan_Hasenfuss (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Hasenfuss_Condition;
	information	= Info_Mod_Ivan_Hasenfuss_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're coming with me to the scavenger hunt.";
};

FUNC INT Info_Mod_Ivan_Hasenfuss_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ivan_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dalton_Hi))
	&& (Mod_REL_Hasenfuss == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ivan_Hasenfuss_Info()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss_15_00"); //You're coming with me to the scavenger hunt.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss_01_01"); //Are you out of your mind? Those bloodthirsty creatures would tear us apart.
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss_15_02"); //I didn't say you had a choice.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss_01_03"); //But you can't ask that! I'm gonna tell Dad!
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss_15_04"); //When was the last time you were beaten as soft as a diaper?
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss_01_05"); //You really suck. Don't think I'd like to go with you.

	Mod_REL_Hasenfuss = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Ivan_Hasenfuss2 (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Hasenfuss2_Condition;
	information	= Info_Mod_Ivan_Hasenfuss2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Let's go pick flowers!";
};

FUNC INT Info_Mod_Ivan_Hasenfuss2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ivan_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dalton_Hi))
	&& (Mod_REL_Hasenfuss == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ivan_Hasenfuss2_Info()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss2_15_00"); //Let's go pick flowers!
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss2_01_01"); //Oh, yeah! Do you know a good flower meadow?

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss2);

	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss2, "I'll come back when I find one.", Info_Mod_Ivan_Hasenfuss2_B);
	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss2, "Sure, come with me.", Info_Mod_Ivan_Hasenfuss2_A);
};

FUNC VOID Info_Mod_Ivan_Hasenfuss2_B()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss2_B_15_00"); //I'll come back when I find one.

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss2);
};

FUNC VOID Info_Mod_Ivan_Hasenfuss2_A()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss2_A_15_00"); //Sure, come with me.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss2);

	Mod_REL_Hasenfuss = 3;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Ivan_Hasenfuss3 (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Hasenfuss3_Condition;
	information	= Info_Mod_Ivan_Hasenfuss3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ivan_Hasenfuss3_Condition()
{
	if (Npc_GetDistToWP(hero, "REL_SURFACE_126") < 2500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ivan_Hasenfuss3_Info()
{
	if (Mod_REL_Hasenfuss == 3)
	{
		AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_01_00"); //You want to collect flowers here? It's full of nasty monsters.
		AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_01_01"); //Let's go somewhere else.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_01_02"); //I really don't dare. Can't you go hunting by yourself?
		AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_01_03"); //O-or are you too scared?
	};

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss3);

	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss3, "We'll go hunting together, so it's clear.", Info_Mod_Ivan_Hasenfuss3_B);
	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss3, "Kill the Scavengers. I'm watching.", Info_Mod_Ivan_Hasenfuss3_A);
};

FUNC VOID Info_Mod_Ivan_Hasenfuss3_B()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss3_B_15_00"); //We'll go hunting together, so it's clear.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_B_01_01"); //I don't know anything about hunting.
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss3_B_15_02"); //That's why I'm on your side.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_B_01_03"); //Um... it's enough for me to watch and learn, isn't it?

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss3);

	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss3, "Not a chance.", Info_Mod_Ivan_Hasenfuss3_D);
	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss3, "All right, all right.", Info_Mod_Ivan_Hasenfuss3_C);
};

FUNC VOID Info_Mod_Ivan_Hasenfuss3_A()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss3_A_15_00"); //Kill the Scavengers. I'm watching.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_A_01_01"); //Are you out of your mind?!

	B_LogEntry	(TOPIC_MOD_KHORATA_HASENFUSS, "Ivan is stubborn. I should find a way to encourage him to hunt.");

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss3);

	Mod_REL_Hasenfuss = 6;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");

	self.aivar[AIV_Partymember] = FALSE;
};

FUNC VOID Info_Mod_Ivan_Hasenfuss3_D()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss3_D_15_00"); //Not a chance.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_D_01_01"); //All right, let's try it. Tell me when to go.
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss3_D_15_02"); //Let's do this.

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss3);

	Mod_REL_Hasenfuss = 4;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

FUNC VOID Info_Mod_Ivan_Hasenfuss3_C()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss3_C_15_00"); //All right, all right.

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss3);

	Mod_REL_Hasenfuss = 5;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAIT");
};

INSTANCE Info_Mod_Ivan_Hasenfuss4 (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Hasenfuss4_Condition;
	information	= Info_Mod_Ivan_Hasenfuss4_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ivan_Hasenfuss4_Condition()
{
	if (Mod_REL_Hasenfuss == 6)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ivan_Hasenfuss4_Info()
{
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss4_01_00"); //Get out of here!

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss4);

	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss4, "If you come with me, I'll give you some plants.", Info_Mod_Ivan_Hasenfuss4_B);
	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss4, "It won't please your father.", Info_Mod_Ivan_Hasenfuss4_A);
};

FUNC VOID Info_Mod_Ivan_Hasenfuss4_B()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss4_B_15_00"); //If you come with me, I'll give you some plants.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss4_B_01_01"); //Do you have five medicinal plants?

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss4);

	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss4, "I'll bring it to you later.", Info_Mod_Ivan_Hasenfuss4_D);

	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 5)
	{
		Info_AddChoice	(Info_Mod_Ivan_Hasenfuss4, "Here you have them.", Info_Mod_Ivan_Hasenfuss4_C);
	};
};

FUNC VOID Info_Mod_Ivan_Hasenfuss4_A()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss4_A_15_00"); //It won't please your father.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss4_A_01_01"); //My father is behind this again! I can't hear it anymore!
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss4_A_01_02"); //But that was the last time he ever betrayed me!
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss4_A_01_03"); //After all, there are other places I can live in.

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss4);

	Mod_REL_Hasenfuss = 7;

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_HASENFUSS, LOG_FAILED);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ERHARD");
};

FUNC VOID Info_Mod_Ivan_Hasenfuss4_D()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss4_D_15_00"); //I'll bring it to you later.

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss4);
};

FUNC VOID Info_Mod_Ivan_Hasenfuss4_C()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss4_C_15_00"); //Here you have them.

	B_GiveInvItems	(hero, self, ItPl_Health_Herb_01, 5);

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss4);

	Info_Mod_Ivan_Hasenfuss3_B();
};

INSTANCE Info_Mod_Ivan_Hasenfuss5 (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Hasenfuss5_Condition;
	information	= Info_Mod_Ivan_Hasenfuss5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ivan_Hasenfuss5_Condition()
{
	if (Mod_REL_Hasenfuss == 8)
	|| (Mod_REL_Hasenfuss == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ivan_Hasenfuss5_Info()
{
	if (Mod_REL_Hasenfuss == 8)
	{
		AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss5_01_00"); //Did you see the way I gave it to them? That was fun!
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss5_01_01"); //And what's so great about it now?
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Ivan_Freudenspender (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Freudenspender_Condition;
	information	= Info_Mod_Ivan_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Do you want to give joy or are you still too young?";
};                       

FUNC INT Info_Mod_Ivan_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Ivan_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Freudenspender_15_00"); //Do you want to give joy or are you still too young?
	AI_Output(self, hero, "Info_Mod_Ivan_Freudenspender_01_01"); //No, I'll take the stuff... regularly.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;

	B_StartOtherRoutine	(self, "BEKIFFT");
};

INSTANCE Info_Mod_Ivan_Pickpocket (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Pickpocket_Condition;
	information	= Info_Mod_Ivan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Ivan_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Ivan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);

	Info_AddChoice	(Info_Mod_Ivan_Pickpocket, DIALOG_BACK, Info_Mod_Ivan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ivan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ivan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ivan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);
};

FUNC VOID Info_Mod_Ivan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);

		Info_AddChoice	(Info_Mod_Ivan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ivan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ivan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ivan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ivan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ivan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ivan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ivan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ivan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ivan_EXIT (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_EXIT_Condition;
	information	= Info_Mod_Ivan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ivan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ivan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
