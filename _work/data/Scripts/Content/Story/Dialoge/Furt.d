INSTANCE Info_Mod_Furt_Hi (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Hi_Condition;
	information	= Info_Mod_Furt_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's your name?";
};

FUNC INT Info_Mod_Furt_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Furt_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Furt_Hi_15_00"); //What's your name?
	AI_Output(self, hero, "Info_Mod_Furt_Hi_03_01"); //I don't know what that means to you.

	Info_ClearChoices	(Info_Mod_Furt_Hi);

	Info_AddChoice	(Info_Mod_Furt_Hi, "You're right. You're right. I'll be going, then.", Info_Mod_Furt_Hi_B);
	Info_AddChoice	(Info_Mod_Furt_Hi, "What the hell's wrong with you?", Info_Mod_Furt_Hi_A);
};

FUNC VOID Info_Mod_Furt_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Furt_Hi_B_15_00"); //You're right. You're right. I'll be going, then.
	AI_Output(self, hero, "Info_Mod_Furt_Hi_B_03_01"); //It's better for you, too.

	Info_ClearChoices	(Info_Mod_Furt_Hi);
};

FUNC VOID Info_Mod_Furt_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Furt_Hi_A_15_00"); //What the hell's wrong with you?
	AI_Output(self, hero, "Info_Mod_Furt_Hi_A_03_01"); //Keep up the good work...

	Info_ClearChoices	(Info_Mod_Furt_Hi);

	Info_AddChoice	(Info_Mod_Furt_Hi, "You don't have many friends, do you?", Info_Mod_Furt_Hi_D);
	Info_AddChoice	(Info_Mod_Furt_Hi, "Say, is that how you turn every new guy on?", Info_Mod_Furt_Hi_C);
};

FUNC VOID Info_Mod_Furt_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Furt_Hi_D_15_00"); //You don't have many friends, do you?
	AI_Output(self, hero, "Info_Mod_Furt_Hi_D_03_01"); //Probably more than you do. Now get out of here!
	AI_Output(hero, self, "Info_Mod_Furt_Hi_D_15_02"); //I'm not finished yet.
	AI_Output(self, hero, "Info_Mod_Furt_Hi_D_03_03"); //You better get out of here before I hit you in the mouth!

	Info_ClearChoices	(Info_Mod_Furt_Hi);
};

FUNC VOID Info_Mod_Furt_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Furt_Hi_C_15_00"); //Say, is that how you turn every new guy on?
	AI_Output(self, hero, "Info_Mod_Furt_Hi_C_03_01"); //Yeah.
	AI_Output(hero, self, "Info_Mod_Furt_Hi_C_15_02"); //You're not a man of big words, are you?
	AI_Output(self, hero, "Info_Mod_Furt_Hi_C_03_03"); //No.
	AI_Output(hero, self, "Info_Mod_Furt_Hi_C_15_04"); //Anything else you want to tell me?
	AI_Output(self, hero, "Info_Mod_Furt_Hi_C_03_05"); //Yeah. Hau ab!

	Info_ClearChoices	(Info_Mod_Furt_Hi);
};

INSTANCE Info_Mod_Furt_Faice (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Faice_Condition;
	information	= Info_Mod_Furt_Faice_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Furt_Faice_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Mendulus))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_Faice_Info()
{
	AI_Output(self, hero, "Info_Mod_Furt_Faice_03_00"); //What's up?
	AI_Output(hero, self, "Info_Mod_Furt_Faice_15_01"); //I hear you know something about the poisoning of the role of spell.
	AI_Output(self, hero, "Info_Mod_Furt_Faice_03_02"); //What? No! I don't know anything!
};

INSTANCE Info_Mod_Furt_Faice02 (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Faice02_Condition;
	information	= Info_Mod_Furt_Faice02_Info;
	permanent	= 0;
	important	= 0;
	description	= "I know it's you. Denial is futile.";
};

FUNC INT Info_Mod_Furt_Faice02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Mendulus))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Hermy_Faice01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Hermy_Faice03)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_Faice02_Info()
{
	AI_Output(hero, self, "Info_Mod_Furt_Faice02_15_00"); //I know it's you. Denial is futile.
	AI_Output(self, hero, "Info_Mod_Furt_Faice02_03_01"); //How? Who told you that?
	AI_Output(hero, self, "Info_Mod_Furt_Faice02_15_02"); //It doesn't matter. Confess, and there will be no bloodshed.
	AI_Output(self, hero, "Info_Mod_Furt_Faice02_03_03"); //Okay, okay, okay! I confess! I poisoned the role of spell.
	AI_Output(hero, self, "Info_Mod_Furt_Faice02_15_04"); //There you go, there you go. Why did you do that?
	AI_Output(self, hero, "Info_Mod_Furt_Faice02_03_05"); //I won't betray my employer!
	AI_Output(hero, self, "Info_Mod_Furt_Faice02_15_06"); //What am I supposed to do with you?
	AI_Output(self, hero, "Info_Mod_Furt_Faice02_03_07"); //Just let me go. I'll give you 500 gold coins and a role of "Transformation Boar".

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "I found out that Furt poisoned the role of spell.");
};

INSTANCE Info_Mod_Furt_Faice03 (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Faice03_Condition;
	information	= Info_Mod_Furt_Faice03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why are you so upset?";
};

FUNC INT Info_Mod_Furt_Faice03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Mendulus))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_Faice03_Info()
{
	AI_Output(hero, self, "Info_Mod_Furt_Faice03_15_00"); //Why are you so upset?
	AI_Output(self, hero, "Info_Mod_Furt_Faice03_03_01"); //l-- I still can't believe Faice's been poisoned.
	AI_Output(hero, self, "Info_Mod_Furt_Faice03_15_02"); //(ironic) Of course.
	AI_Output(self, hero, "Info_Mod_Furt_Faice03_03_03"); //But... I really don't know anything!
};

INSTANCE Info_Mod_Furt_Faice04 (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Faice04_Condition;
	information	= Info_Mod_Furt_Faice04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Okay, give me the stuff and get out of here.";
};

FUNC INT Info_Mod_Furt_Faice04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	&& ((Mod_VMG_FaiceGifty_Gift == 10)
	|| (Mod_VMG_FaiceGifty_Gift == 11))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_Faice04_Info()
{
	AI_Output(hero, self, "Info_Mod_Furt_Faice04_15_00"); //Okay, give me the stuff and get out of here.
	AI_Output(self, hero, "Info_Mod_Furt_Faice04_03_01"); //Here. Take care now.

	CreateInvItems	(hero, ItMi_Gold, 500);
	CreateInvItems	(hero, ItSc_TrfKeiler, 1);

	B_ShowGivenThings	("500 Gold and a role of' Transformation Boar' received");

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "I ran Furt and got some items from him. He won't show up again.");

	Mod_VMG_FaiceGifty_Gift = 12;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");
};

INSTANCE Info_Mod_Furt_Faice05 (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Faice05_Condition;
	information	= Info_Mod_Furt_Faice05_Info;
	permanent	= 0;
	important	= 0;
	description	= "That's not good enough.";
};

FUNC INT Info_Mod_Furt_Faice05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_Faice05_Info()
{
	AI_Output(hero, self, "Info_Mod_Furt_Faice05_15_00"); //That's not good enough.
	AI_Output(self, hero, "Info_Mod_Furt_Faice05_03_01"); //I'll give you another spell. That's all there is.
	
	Mod_VMG_FaiceGifty_Gift = 11;
};

INSTANCE Info_Mod_Furt_Faice06 (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Faice06_Condition;
	information	= Info_Mod_Furt_Faice06_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm gonna tell Turndil that you poisoned the part of spell.";
};

FUNC INT Info_Mod_Furt_Faice06_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	&& ((Mod_VMG_FaiceGifty_Gift == 10)
	|| (Mod_VMG_FaiceGifty_Gift == 11))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_Faice06_Info()
{
	AI_Output(hero, self, "Info_Mod_Furt_Faice06_15_00"); //I'm gonna tell Turndil that you poisoned the part of spell.
	AI_Output(self, hero, "Info_Mod_Furt_Faice06_03_01"); //Do what you can't let go.
	AI_Output(hero, self, "Info_Mod_Furt_Faice06_15_02"); //Yes, I'll go to Turendil.
	AI_Output(self, hero, "Info_Mod_Furt_Faice06_03_03"); //Then that's the way it is. Farewell. Goodbye.

	Mod_VMG_FaiceGifty_Gift = 13;

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "I'll tell Turendil that Furt poisoned Faice's part of the story.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Furt_Pickpocket (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_Pickpocket_Condition;
	information	= Info_Mod_Furt_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Furt_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Furt_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Furt_Pickpocket);

	Info_AddChoice	(Info_Mod_Furt_Pickpocket, DIALOG_BACK, Info_Mod_Furt_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Furt_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Furt_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Furt_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Furt_Pickpocket);
};

FUNC VOID Info_Mod_Furt_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Furt_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Furt_Pickpocket);

		Info_AddChoice	(Info_Mod_Furt_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Furt_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Furt_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Furt_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Furt_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Furt_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Furt_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Furt_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Furt_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Furt_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Furt_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Furt_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Furt_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Furt_EXIT (C_INFO)
{
	npc		= Mod_1626_VMG_Furt_MT;
	nr		= 1;
	condition	= Info_Mod_Furt_EXIT_Condition;
	information	= Info_Mod_Furt_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Furt_EXIT_Condition()
{
	if (Mod_VMG_FaiceGifty_Gift < 10)
	|| (Mod_VMG_FaiceGifty_Gift > 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furt_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
