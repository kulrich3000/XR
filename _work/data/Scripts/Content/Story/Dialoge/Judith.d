INSTANCE Info_Mod_Judith_Hi (C_INFO)
{
	npc		= Mod_7680_OUT_Judith_REL;
	nr		= 1;
	condition	= Info_Mod_Judith_Hi_Condition;
	information	= Info_Mod_Judith_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tell me about yourself.";
};

FUNC INT Info_Mod_Judith_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Judith_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Judith_Hi_15_00"); //Tell me about yourself.
	AI_Output(self, hero, "Info_Mod_Judith_Hi_06_01"); //What am I supposed to say about myself?
	AI_Output(self, hero, "Info_Mod_Judith_Hi_06_02"); //I have planned to take regular long evening walks.
	AI_Output(self, hero, "Info_Mod_Judith_Hi_06_03"); //Standing in the kitchen all day long, keeping the household in good shape - you also need a little change to get your head clear.
	AI_Output(self, hero, "Info_Mod_Judith_Hi_06_04"); //If that's what you wanted to hear...
};

INSTANCE Info_Mod_Judith_Pavillon (C_INFO)
{
	npc		= Mod_7680_OUT_Judith_REL;
	nr		= 1;
	condition	= Info_Mod_Judith_Pavillon_Condition;
	information	= Info_Mod_Judith_Pavillon_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Judith_Pavillon_Condition()
{
	if (Npc_GetDistToWP(self, "PARK_BETEN") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Judith_Pavillon_Info()
{
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_06_00"); //Is that you, darling?

	Info_ClearChoices	(Info_Mod_Judith_Pavillon);

	Info_AddChoice	(Info_Mod_Judith_Pavillon, "Yes, my darling.", Info_Mod_Judith_Pavillon_B);
	Info_AddChoice	(Info_Mod_Judith_Pavillon, "I beg your pardon?", Info_Mod_Judith_Pavillon_A);
};

FUNC VOID Info_Mod_Judith_Pavillon_B()
{
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_B_15_00"); //Yes, my darling.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_B_06_01"); //I really have to tell you what happened earlier.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_B_06_02"); //I think lucas has gotten suspicious.

	Info_ClearChoices	(Info_Mod_Judith_Pavillon);

	Info_AddChoice	(Info_Mod_Judith_Pavillon, "What did he suspect?", Info_Mod_Judith_Pavillon_D);
	Info_AddChoice	(Info_Mod_Judith_Pavillon, "Shall we cut to the chase?", Info_Mod_Judith_Pavillon_C);
};

FUNC VOID Info_Mod_Judith_Pavillon_A()
{
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_A_15_00"); //I beg your pardon?
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_A_06_01"); //Nothing at all. I must be sleepwalking.

	Info_ClearChoices	(Info_Mod_Judith_Pavillon);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

FUNC VOID Info_Mod_Judith_Pavillon_D()
{
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_D_15_00"); //What did he suspect?
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_D_06_01"); //Well, that I'm seeing you.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_D_06_02"); //When I told him that I had to get some fresh air again because I was sick, he replied,"As long as I don't end up with Peter.
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_D_15_03"); //I'm Peter?
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_D_06_04"); //(ironic) Sure, I'd hang out with him at this hour of the day.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_D_06_05"); //Just play games with me!
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_D_15_06"); //You know me, you know me!
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_D_06_07"); //Now that's enough of Luke. I just need to be a little more careful.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_D_06_08"); //Let's make ourselves comfortable!

	Info_ClearChoices	(Info_Mod_Judith_Pavillon);

	AI_StopProcessInfos	(self);

	Mod_JudithNacht = 1;
};

FUNC VOID Info_Mod_Judith_Pavillon_C()
{
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_C_15_00"); //Shall we cut to the chase?
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_C_06_01"); //To what cause?
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_C_15_02"); //Well... whatever else we do.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_C_06_03"); //Always? This is our third meeting! I'm beginning to feel...

	AI_GotoNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_C_06_04"); //Ah! You're not... not the right man!

	Info_ClearChoices	(Info_Mod_Judith_Pavillon);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Judith_Pavillon2 (C_INFO)
{
	npc		= Mod_7680_OUT_Judith_REL;
	nr		= 1;
	condition	= Info_Mod_Judith_Pavillon2_Condition;
	information	= Info_Mod_Judith_Pavillon2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Judith_Pavillon2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Judith_Pavillon))
	&& (Mod_JudithNacht == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Judith_Pavillon2_Info()
{
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon2_06_00"); //When will we meet again?
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon2_15_01"); //Whenever you want.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon2_06_02"); //Same time tomorrow?
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon2_15_03"); //Gladly. But maybe I'm not on time.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon2_06_04"); //That's what you always say. And you're always on time. See you tomorrow!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RUPRECHT");
	
	Spine_OverallSaveSetInt("JudithSex", 1);
	CheckSexAchievement();
};

INSTANCE Info_Mod_Judith_Pickpocket (C_INFO)
{
	npc		= Mod_7680_OUT_Judith_REL;
	nr		= 1;
	condition	= Info_Mod_Judith_Pickpocket_Condition;
	information	= Info_Mod_Judith_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Judith_Pickpocket_Condition()
{
	C_Beklauen	(47, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Judith_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Judith_Pickpocket);

	Info_AddChoice	(Info_Mod_Judith_Pickpocket, DIALOG_BACK, Info_Mod_Judith_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Judith_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Judith_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Judith_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Judith_Pickpocket);
};

FUNC VOID Info_Mod_Judith_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Judith_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Judith_Pickpocket);

		Info_AddChoice	(Info_Mod_Judith_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Judith_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Judith_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Judith_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Judith_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Judith_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Judith_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Judith_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Judith_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Judith_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Judith_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Judith_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Judith_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Judith_EXIT (C_INFO)
{
	npc		= Mod_7680_OUT_Judith_REL;
	nr		= 1;
	condition	= Info_Mod_Judith_EXIT_Condition;
	information	= Info_Mod_Judith_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Judith_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Judith_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
