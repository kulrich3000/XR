INSTANCE Info_Mod_Wuetar_Hi (C_INFO)
{
	npc		= Mod_7769_OUT_Wuetar_EIS;
	nr		= 1;
	condition	= Info_Mod_Wuetar_Hi_Condition;
	information	= Info_Mod_Wuetar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wuetar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wuetar_Hi_Info()
{
	if (Mod_EIS_Amorite == 1)
	{
		AI_Output(self, hero, "Info_Mod_Wuetar_Hi_04_00"); //What in hell names...?! You're going after my wife, you pig?!
		AI_Output(self, hero, "Info_Mod_Wuetar_Hi_04_01"); //I'll help you!

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(self, "START");

		B_Attack	(self, hero, AR_NONE, 0);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Wuetar_Hi_04_02"); //Hey, what's going on? Are you bothering my wife?!

		Info_ClearChoices	(Info_Mod_Wuetar_Hi);

		Info_AddChoice	(Info_Mod_Wuetar_Hi, "Don't blow yourself up like that. It was your wife who tried to get into my laundry.", Info_Mod_Wuetar_Hi_B);
		Info_AddChoice	(Info_Mod_Wuetar_Hi, "It was just a misunderstanding.... I was just leaving.", Info_Mod_Wuetar_Hi_A);
	};
};

FUNC VOID Info_Mod_Wuetar_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Wuetar_Hi_B_15_00"); //Don't blow yourself up like that. It was your wife who tried to get into my laundry.
	AI_Output(self, hero, "Info_Mod_Wuetar_Hi_B_04_01"); //You filthy pig, you dare...?!?! Wait a minute, you rascal!

	Info_ClearChoices	(Info_Mod_Wuetar_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_Attack	(self, hero, AR_NONE, 0);
};

FUNC VOID Info_Mod_Wuetar_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Wuetar_Hi_A_15_00"); //It was just a misunderstanding.... I was just leaving.
	AI_Output(self, hero, "Info_Mod_Wuetar_Hi_A_04_01"); //Then get the hell out of here before I forget myself!

	Info_ClearChoices	(Info_Mod_Wuetar_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Wuetar_Snapperbogen (C_INFO)
{
	npc		= Mod_7769_OUT_Wuetar_EIS;
	nr		= 1;
	condition	= Info_Mod_Wuetar_Snapperbogen_Condition;
	information	= Info_Mod_Wuetar_Snapperbogen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can I get dragon snapper sinews from you?";
};

FUNC INT Info_Mod_Wuetar_Snapperbogen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gestath_Snapperbogen))
	&& (Npc_HasItems(self, ItAt_Drachensnappersehne) == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wuetar_Snapperbogen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wuetar_Snapperbogen_15_00"); //Can I get dragon snapper sinews from you?

	if (Mod_EIS_Amorite == 1)
	{
		AI_Output(self, hero, "Info_Mod_Wuetar_Snapperbogen_04_00"); //Gotten from me? You can get a beating from me, you pig!

		AI_StopProcessInfos	(self);

		B_Attack	(self, hero, AR_NONE, 0);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Wuetar_Snapperbogen_04_01"); //What makes you think you want something of mine?! Would be even more beautiful...

		Info_ClearChoices	(Info_Mod_Wuetar_Snapperbogen);

		Info_AddChoice	(Info_Mod_Wuetar_Snapperbogen, "Because I'm a nice guy...", Info_Mod_Wuetar_Snapperbogen_B);

		if (Npc_HasItems(hero, ItFo_Beer) >= 2)
		{
			Info_AddChoice	(Info_Mod_Wuetar_Snapperbogen, "Come on, it was just a silly misunderstanding. (one output)", Info_Mod_Wuetar_Snapperbogen_A);
		};
	};
};

FUNC VOID Info_Mod_Wuetar_Snapperbogen_B()
{
	AI_Output(hero, self, "Info_Mod_Wuetar_Snapperbogen_B_15_00"); //Because I'm a nice guy... Your wife will prove it to you.
	AI_Output(self, hero, "Info_Mod_Wuetar_Snapperbogen_B_04_01"); //Wait a minute, you rascal!

	Info_ClearChoices	(Info_Mod_Wuetar_Snapperbogen);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

FUNC VOID Info_Mod_Wuetar_Snapperbogen_A()
{
	AI_Output(hero, self, "Info_Mod_Wuetar_Snapperbogen_A_15_00"); //Come on, it was just a silly misunderstanding.

	B_GiveInvItems	(hero, self, ItFo_Beer, 1);

	B_UseItem	(self, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Wuetar_Snapperbogen_A_04_01"); //Misunderstanding? Well, I don't know....
	AI_Output(hero, self, "Info_Mod_Wuetar_Snapperbogen_A_15_02"); //Here, have another drink on my tab.

	B_GiveInvItems	(hero, self, ItFo_Beer, 1);

	B_UseItem	(self, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Wuetar_Snapperbogen_A_04_03"); //All right, I don't want to be vindictive. For 150 gold coins you get two dragon snapper sinews.

	Info_ClearChoices	(Info_Mod_Wuetar_Snapperbogen);

	Mod_EIS_Wuetar = 1;
};

INSTANCE Info_Mod_Wuetar_Snapperbogen2 (C_INFO)
{
	npc		= Mod_7769_OUT_Wuetar_EIS;
	nr		= 1;
	condition	= Info_Mod_Wuetar_Snapperbogen2_Condition;
	information	= Info_Mod_Wuetar_Snapperbogen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "(buy sinews for 150 gold)";
};

FUNC INT Info_Mod_Wuetar_Snapperbogen2_Condition()
{
	if (Mod_EIS_Wuetar == 1)
	&& (Npc_HasItems(self, ItAt_Drachensnappersehne) == 2)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 150)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wuetar_Snapperbogen2_Info()
{
	B_GiveInvItems	(hero, self, ItMi_Gold, 150);

	B_GiveInvItems	(self, hero, ItAt_Drachensnappersehne, 2);
};

INSTANCE Info_Mod_Wuetar_LassMich (C_INFO)
{
	npc		= Mod_7769_OUT_Wuetar_EIS;
	nr		= 1;
	condition	= Info_Mod_Wuetar_LassMich_Condition;
	information	= Info_Mod_Wuetar_LassMich_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Wuetar_LassMich_Condition()
{
	if (Npc_HasItems(self, ItAt_Drachensnappersehne) == 0)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wuetar_LassMich_Info()
{
	AI_Output(self, hero, "Info_Mod_Wuetar_LassMich_04_00"); //Get away from me!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wuetar_Pickpocket (C_INFO)
{
	npc		= Mod_7769_OUT_Wuetar_EIS;
	nr		= 1;
	condition	= Info_Mod_Wuetar_Pickpocket_Condition;
	information	= Info_Mod_Wuetar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Wuetar_Pickpocket_Condition()
{
	if (C_Beklauen(77, ItAt_Drachensnappersehne, 2))
	&& (Npc_HasItems(self, ItAt_Drachensnappersehne) == 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wuetar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wuetar_Pickpocket);

	Info_AddChoice	(Info_Mod_Wuetar_Pickpocket, DIALOG_BACK, Info_Mod_Wuetar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wuetar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wuetar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wuetar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wuetar_Pickpocket);
};

FUNC VOID Info_Mod_Wuetar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wuetar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wuetar_Pickpocket);

		Info_AddChoice	(Info_Mod_Wuetar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wuetar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wuetar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wuetar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wuetar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wuetar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wuetar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wuetar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wuetar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wuetar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wuetar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wuetar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wuetar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wuetar_EXIT (C_INFO)
{
	npc		= Mod_7769_OUT_Wuetar_EIS;
	nr		= 1;
	condition	= Info_Mod_Wuetar_EXIT_Condition;
	information	= Info_Mod_Wuetar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wuetar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wuetar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
