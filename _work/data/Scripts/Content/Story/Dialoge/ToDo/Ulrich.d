INSTANCE Info_Mod_Ulrich_Hi (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_Hi_Condition;
	information	= Info_Mod_Ulrich_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Ulrich_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ulrich_Hi_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Ulrich_Hi_14_01"); //What are you doing here?
	AI_Output(hero, self, "Info_Mod_Ulrich_Hi_15_02"); //I didn't mean to....
	AI_Output(self, hero, "Info_Mod_Ulrich_Hi_14_03"); //Just stumble into my house, by any chance? Make sure you win the land!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Ulrich_AnnaKnast (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_AnnaKnast_Condition;
	information	= Info_Mod_Ulrich_AnnaKnast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi. I'm supposed to give you a message.";
};

FUNC INT Info_Mod_Ulrich_AnnaKnast_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ulrich_Hi))
	&& (Mod_AnnaQuest == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ulrich_AnnaKnast_Info()
{
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_00"); //Hi. I'm supposed to give you a message.
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_01"); //Oh, yeah? And that releases you from social customs like knocking?
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_02"); //No... Listen, it's about Anna.
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_03"); //What's going on?
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_04"); //She was arrested by Schöppen on suspicion of witchcraft, is in prison and is most likely being tortured.
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_05"); //Excuse me?! I'll show them!
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_06"); //You have a plan?
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_07"); //You bet! I am going to find out the date of the verdict and then kill every single one of these filthy rats if they want to touch her!
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_08"); //Sounds very thoughtful...
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_09"); //Pah, what do I have to think of if the right-wingers can't swing a gun anyway? The two of them don't stand a chance!
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_10"); //Two of us?
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_11"); //Don't make me weak, boy, are you on their side?!
	AI_Output(hero, self, "Info_Mod_Ulrich_AnnaKnast_15_12"); //Uh...
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaKnast_14_13"); //So, you come to me in the morning, then I know when the trial will take place, and we'll both join in.

	B_LogEntry	(TOPIC_MOD_KHORATA_HEXENWAHN, "Ulrich wants to solve the matter in a brutal way. Is this the right way to go? He wants me to come back later when he knows when Anna's trial will take place.");

	Mod_AnnaQuest = 4;

	Mod_AnnaQuest_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Ulrich_ZuVerhandlung (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_ZuVerhandlung_Condition;
	information	= Info_Mod_Ulrich_ZuVerhandlung_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ulrich_ZuVerhandlung_Condition()
{
	if (Mod_AnnaQuest == 4)
	&& (Wld_GetDay() > Mod_AnnaQuest_Day)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ulrich_ZuVerhandlung_Info()
{
	AI_Output(self, hero, "Info_Mod_Ulrich_ZuVerhandlung_14_00"); //You're late for work. Come on, let's go!
	
	Info_ClearChoices	(Info_Mod_Ulrich_ZuVerhandlung);

	Info_AddChoice	(Info_Mod_Ulrich_ZuVerhandlung, "One more minute.", Info_Mod_Ulrich_ZuVerhandlung_B);
	Info_AddChoice	(Info_Mod_Ulrich_ZuVerhandlung, "Then let's go.", Info_Mod_Ulrich_ZuVerhandlung_A);
};

FUNC VOID Info_Mod_Ulrich_ZuVerhandlung_B()
{
	AI_Output(hero, self, "Info_Mod_Ulrich_ZuVerhandlung_B_15_00"); //One moment, please.
	
	Info_ClearChoices	(Info_Mod_Ulrich_ZuVerhandlung);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Ulrich_ZuVerhandlung_A()
{
	AI_Output(hero, self, "Info_Mod_Ulrich_ZuVerhandlung_A_15_00"); //Then let's go.
	AI_Output(self, hero, "DEFAULT"); //
	
	Info_ClearChoices	(Info_Mod_Ulrich_ZuVerhandlung);

	Mod_AnnaQuest = 5;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETORICHTER");

	Wld_InsertNpc	(Mod_7376_OUT_Anna_REL,	"REL_CITY_341");
};

INSTANCE Info_Mod_Ulrich_AnnaBefreit (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_AnnaBefreit_Condition;
	information	= Info_Mod_Ulrich_AnnaBefreit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ulrich_AnnaBefreit_Condition()
{
	if (Mod_AnnaQuest == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ulrich_AnnaBefreit_Info()
{
	AI_Output(self, hero, "Info_Mod_Ulrich_AnnaBefreit_14_00"); //(grim) We showed them. That'll teach them a lesson.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7365_OUT_Margarethe_REL, "START");
	B_StartOtherRoutine	(Mod_7374_OUT_Gerichtswache_01, "START");
	B_StartOtherRoutine	(Mod_7375_OUT_Gerichtswache_02, "START");
};

INSTANCE Info_Mod_Ulrich_Freudenspender (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_Freudenspender_Condition;
	information	= Info_Mod_Ulrich_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "I'm happy to have you here...";
};                       

FUNC INT Info_Mod_Ulrich_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Ulrich_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Ulrich_Freudenspender_15_00"); //I'm happy to have you here...
	AI_Output(self, hero, "Info_Mod_Ulrich_Freudenspender_14_01"); //And I hope you don't want to get rid of it with me.
	AI_Output(hero, self, "Info_Mod_Ulrich_Freudenspender_15_02"); //Of course not, of course.
	AI_Output(self, hero, "Info_Mod_Ulrich_Freudenspender_14_03"); //Did you knock?
	AI_Output(hero, self, "Info_Mod_Ulrich_Freudenspender_15_04"); //Of course it is. Must have been too quiet.
};

INSTANCE Info_Mod_Ulrich_Pickpocket (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_Pickpocket_Condition;
	information	= Info_Mod_Ulrich_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ulrich_Pickpocket_Condition()
{
	C_Beklauen	(68, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Ulrich_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);

	Info_AddChoice	(Info_Mod_Ulrich_Pickpocket, DIALOG_BACK, Info_Mod_Ulrich_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ulrich_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ulrich_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ulrich_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);
};

FUNC VOID Info_Mod_Ulrich_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);

		Info_AddChoice	(Info_Mod_Ulrich_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ulrich_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ulrich_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ulrich_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ulrich_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ulrich_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ulrich_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ulrich_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ulrich_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ulrich_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ulrich_EXIT (C_INFO)
{
	npc		= Mod_7370_OUT_Ulrich_REL;
	nr		= 1;
	condition	= Info_Mod_Ulrich_EXIT_Condition;
	information	= Info_Mod_Ulrich_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ulrich_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ulrich_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
