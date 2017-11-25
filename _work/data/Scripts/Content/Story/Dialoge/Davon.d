INSTANCE Info_Mod_Davon_Hi (C_INFO)
{
	npc		= Mod_7518_OUT_Davon_REL;
	nr		= 1;
	condition	= Info_Mod_Davon_Hi_Condition;
	information	= Info_Mod_Davon_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Davon_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Davon_Hi_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Davon_Hi_24_01"); //I'm in training with Friedel. I want to be a good soldier later!
	AI_Output(self, hero, "Info_Mod_Davon_Hi_24_02"); //Ask Friedel if you want to be good at swordplay.
};

INSTANCE Info_Mod_Davon_Wettstreit (C_INFO)
{
	npc		= Mod_7518_OUT_Davon_REL;
	nr		= 1;
	condition	= Info_Mod_Davon_Wettstreit_Condition;
	information	= Info_Mod_Davon_Wettstreit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Davon_Wettstreit_Condition()
{
	if (Mod_REL_Wettstreit == 2)
	&& (Npc_GetDistToWP(self, "REL_CITY_381") < 400)
	&& (Mod_REL_Wettstreit_Hero > Mod_REL_Wettstreit_Tyrus)
	&& (Mod_REL_Wettstreit_Hero > Mod_REL_Wettstreit_Davon)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Davon_Wettstreit_Info()
{
	AI_Output(self, hero, "Info_Mod_Davon_Wettstreit_24_00"); //Hey, you're really good, man. But I have a small request, though.
	AI_Output(hero, self, "Info_Mod_Davon_Wettstreit_15_01"); //What request?
	AI_Output(self, hero, "Info_Mod_Davon_Wettstreit_24_02"); //Leave the prize money to me. I don't get a salary and I really need gold.

	Info_ClearChoices	(Info_Mod_Davon_Wettstreit);

	Info_AddChoice	(Info_Mod_Davon_Wettstreit, "I need the gold myself.", Info_Mod_Davon_Wettstreit_B);
	Info_AddChoice	(Info_Mod_Davon_Wettstreit, "I'll get you the prize money.", Info_Mod_Davon_Wettstreit_A);
};

FUNC VOID Info_Mod_Davon_Wettstreit_B()
{
	AI_Output(hero, self, "Info_Mod_Davon_Wettstreit_B_15_00"); //I need the gold myself.

	Info_ClearChoices	(Info_Mod_Davon_Wettstreit);

	B_LogEntry	(TOPIC_MOD_KHORATA_WETTSTREIT, "That's what asked me for the prize money from Friedel, but I need it myself.");
};

FUNC VOID Info_Mod_Davon_Wettstreit_A()
{
	AI_Output(hero, self, "Info_Mod_Davon_Wettstreit_A_15_00"); //I'll get you the prize money.

	Mod_REL_Wettstreit_Gold = 1;

	Info_ClearChoices	(Info_Mod_Davon_Wettstreit);

	B_LogEntry	(TOPIC_MOD_KHORATA_WETTSTREIT, "I promised them I'd give him Friedel's prize money.");
};

INSTANCE Info_Mod_Davon_Wettstreit2 (C_INFO)
{
	npc		= Mod_7518_OUT_Davon_REL;
	nr		= 1;
	condition	= Info_Mod_Davon_Wettstreit2_Condition;
	information	= Info_Mod_Davon_Wettstreit2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the prize money.";
};

FUNC INT Info_Mod_Davon_Wettstreit2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Davon_Wettstreit))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	&& (Mod_REL_Wettstreit_Gold == 1)
	&& (Mod_REL_Wettstreit > 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Davon_Wettstreit2_Info()
{
	AI_Output(hero, self, "Info_Mod_Davon_Wettstreit2_15_00"); //Here's the prize money.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	AI_Output(self, hero, "Info_Mod_Davon_Wettstreit2_24_01"); //Thank you very much! I will be able to live on that in the near future. You're a good guy.

	B_GivePlayerXP	(100);

	B_G�ttergefallen (1, 1);
};

INSTANCE Info_Mod_Davon_Unruhen (C_INFO)
{
	npc		= Mod_7518_OUT_Davon_REL;
	nr		= 1;
	condition	= Info_Mod_Davon_Unruhen_Condition;
	information	= Info_Mod_Davon_Unruhen_Info;
	permanent	= 0;
	important	= 0;
	description 	= "I need you to fight the insurgents.";
};                       

FUNC INT Info_Mod_Davon_Unruhen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Unruhen4))
	&& (Mod_REL_LukasS == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Davon_Unruhen_Info()
{
	AI_Output(hero, self, "Info_Mod_Davon_Unruhen_15_00"); //I need you to fight the insurgents.
	AI_Output(self, hero, "Info_Mod_Davon_Unruhen_24_01"); //My first test! I'm already very excited....

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOMINE");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Davon_Freudenspender (C_INFO)
{
	npc		= Mod_7518_OUT_Davon_REL;
	nr		= 1;
	condition	= Info_Mod_Davon_Freudenspender_Condition;
	information	= Info_Mod_Davon_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Do you need to relax? I got something....";
};                       

FUNC INT Info_Mod_Davon_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Davon_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Davon_Freudenspender_15_00"); //Do you need to relax? I got something....
	AI_Output(self, hero, "Info_Mod_Davon_Freudenspender_24_01"); //Hey, you got delights? Give it to me before Friedel notices anything.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Davon_Pickpocket (C_INFO)
{
	npc		= Mod_7518_OUT_Davon_REL;
	nr		= 1;
	condition	= Info_Mod_Davon_Pickpocket_Condition;
	information	= Info_Mod_Davon_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Davon_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Davon_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Davon_Pickpocket);

	Info_AddChoice	(Info_Mod_Davon_Pickpocket, DIALOG_BACK, Info_Mod_Davon_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Davon_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Davon_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Davon_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Davon_Pickpocket);
};

FUNC VOID Info_Mod_Davon_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Davon_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Davon_Pickpocket);

		Info_AddChoice	(Info_Mod_Davon_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Davon_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Davon_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Davon_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Davon_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Davon_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Davon_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Davon_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Davon_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Davon_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Davon_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Davon_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Davon_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Davon_EXIT (C_INFO)
{
	npc		= Mod_7518_OUT_Davon_REL;
	nr		= 1;
	condition	= Info_Mod_Davon_EXIT_Condition;
	information	= Info_Mod_Davon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Davon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Davon_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
