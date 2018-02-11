INSTANCE Info_Mod_Knatus_AlvarKristall (C_INFO)
{
	npc		= Mod_7564_OUT_Knatus_EIS;
	nr		= 1;
	condition	= Info_Mod_Knatus_AlvarKristall_Condition;
	information	= Info_Mod_Knatus_AlvarKristall_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Knatus_AlvarKristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brutus_AlvarKristall3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Knatus_AlvarKristall_Info()
{
	AI_Output(self, hero, "Info_Mod_Knatus_AlvarKristall_03_00"); //Tak, wyciagnij tego faceta z niego, wyprowadz go stad.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Knatus_Traenenkristall (C_INFO)
{
	npc		= Mod_7564_OUT_Knatus_EIS;
	nr		= 1;
	condition	= Info_Mod_Knatus_Traenenkristall_Condition;
	information	= Info_Mod_Knatus_Traenenkristall_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Knatus_Traenenkristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Serra_Traenenkristall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Knatus_Traenenkristall_Info()
{
	AI_Output(self, hero, "Info_Mod_Knatus_Traenenkristall_03_00"); //Co, co, to niemozliwe. Tak, teraz nagle spada z moich oczu jak luski.
	AI_Output(self, hero, "Info_Mod_Knatus_Traenenkristall_03_01"); //Wy placzliwe, zwodnicze kobiety.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Knatus_Traenenkristall2 (C_INFO)
{
	npc		= Mod_7564_OUT_Knatus_EIS;
	nr		= 1;
	condition	= Info_Mod_Knatus_Traenenkristall2_Condition;
	information	= Info_Mod_Knatus_Traenenkristall2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Knatus_Traenenkristall2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alvar_Unbekannt2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Knatus_Traenenkristall2_Info()
{
	AI_Output(self, hero, "Info_Mod_Knatus_Traenenkristall2_03_00"); //Alvar? Nie moze tak sie stac. Widzielismy, jak lezales martwy na zboczu wzg�rza....

	AI_StopProcessInfos	(self);

	Mod_7561_OUT_Alvar_EIS.name	=	"Alvar";
};

INSTANCE Info_Mod_Knatus_Traenenkristall3 (C_INFO)
{
	npc		= Mod_7564_OUT_Knatus_EIS;
	nr		= 1;
	condition	= Info_Mod_Knatus_Traenenkristall3_Condition;
	information	= Info_Mod_Knatus_Traenenkristall3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Knatus_Traenenkristall3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alvar_Unbekannt3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Knatus_Traenenkristall3_Info()
{
	AI_Output(self, hero, "Info_Mod_Knatus_Traenenkristall3_03_00"); //Wydaje sie, ze ona odzyskuje swiadomosc.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_1954_EIS_Thys_EIS, "ALVAR");
};

INSTANCE Info_Mod_Knatus_Pickpocket (C_INFO)
{
	npc		= Mod_7564_OUT_Knatus_EIS;
	nr		= 1;
	condition	= Info_Mod_Knatus_Pickpocket_Condition;
	information	= Info_Mod_Knatus_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Knatus_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 30);
};

FUNC VOID Info_Mod_Knatus_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Knatus_Pickpocket);

	Info_AddChoice	(Info_Mod_Knatus_Pickpocket, DIALOG_BACK, Info_Mod_Knatus_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Knatus_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Knatus_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Knatus_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Knatus_Pickpocket);
};

FUNC VOID Info_Mod_Knatus_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Knatus_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Knatus_Pickpocket);

		Info_AddChoice	(Info_Mod_Knatus_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Knatus_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Knatus_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Knatus_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Knatus_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Knatus_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Knatus_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Knatus_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Knatus_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Knatus_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Knatus_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Knatus_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Knatus_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Knatus_EXIT (C_INFO)
{
	npc		= Mod_7564_OUT_Knatus_EIS;
	nr		= 1;
	condition	= Info_Mod_Knatus_EXIT_Condition;
	information	= Info_Mod_Knatus_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Knatus_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Knatus_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
