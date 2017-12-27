INSTANCE Info_Mod_HFFrau_Heiraten_01 (C_INFO)
{
	npc		= Mod_7271_OUT_HFFrau_REL;
	nr		= 1;
	condition	= Info_Mod_HFFrau_Heiraten_01_Condition;
	information	= Info_Mod_HFFrau_Heiraten_01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy poslubisz mnie?";
};

FUNC INT Info_Mod_HFFrau_Heiraten_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatTuersteher_Hi))
	&& (Mod_HS_DarfZuKing == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HFFrau_Heiraten_01_Info()
{
	B_Say (hero, self, "$WANNAMARRY");

	AI_Output(self, hero, "Info_Mod_HFFrau_Heiraten_01_43_01"); //Nie.
};

INSTANCE Info_Mod_HFFrau_Heiraten_02 (C_INFO)
{
	npc		= Mod_7271_OUT_HFFrau_REL;
	nr		= 1;
	condition	= Info_Mod_HFFrau_Heiraten_02_Condition;
	information	= Info_Mod_HFFrau_Heiraten_02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes zona karmy dla ps�w?";
};

FUNC INT Info_Mod_HFFrau_Heiraten_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HFFrau_Heiraten_01))
	&& (Npc_HasItems(hero, ItFo_Trunken) > 0)
	&& (Mod_Sekte_Verheiratet == 0)
	&& (Mod_HSBook == 1)
	&& (Mod_HS_DarfZuKing == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HFFrau_Heiraten_02_Info()
{
	AI_Output(self, hero, "Info_Mod_HFFrau_Heiraten_02_15_00"); //Jestes zona karmy dla ps�w?
	AI_Output(self, hero, "Info_Mod_HFFrau_Heiraten_02_43_01"); //Tak.....
	AI_Output(self, hero, "Info_Mod_HFFrau_Heiraten_02_43_02"); //... to wlasnie ja.
	AI_Output(self, hero, "Info_Mod_HFFrau_Heiraten_02_15_03"); //Przykro mi, ze strasznie zaluje Twojej straty. Chcesz troche radosci pocieszyc.
	AI_Output(self, hero, "Info_Mod_HFFrau_Heiraten_02_43_04"); //Tak..... gerne.

	B_GiveInvItems	(hero, self, ItFo_Trunken, 1);

	B_UseItem	(self, ItFo_Trunken);

	AI_Output(self, hero, "Info_Mod_HFFrau_Heiraten_02_15_05"); //Teraz, gdy jestes samotny, chcialbys mnie poslubic?
	AI_Output(self, hero, "Info_Mod_HFFrau_Heiraten_02_43_06"); //Ozenic sie? Tak..... ale zenie sie tylko za kogos, kto ma wlasny pow�d.... Czy to robisz?
};

INSTANCE Info_Mod_HFFrau_Heiraten_03 (C_INFO)
{
	npc		= Mod_7271_OUT_HFFrau_REL;
	nr		= 1;
	condition	= Info_Mod_HFFrau_Heiraten_03_Condition;
	information	= Info_Mod_HFFrau_Heiraten_03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dom.";
};

FUNC INT Info_Mod_HFFrau_Heiraten_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HFFrau_Heiraten_02))
	&& (Mod_Sekte_Verheiratet == 0)
	&& (Mod_HSBook == 1)
	&& ((Mod_Sekte_WeiberheldHaus == 1)
	|| (Mod_Sekte_TraderHaus01 == 1)
	|| (Mod_Sekte_TraderHaus02 == 1))
	&& (Mod_HS_DarfZuKing == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HFFrau_Heiraten_03_Info()
{
	AI_Output(self, hero, "Info_Mod_HFFrau_Heiraten_03_15_00"); //Mam dom.
	AI_Output(self, hero, "Info_Mod_HFFrau_Heiraten_03_43_01"); //Wspaniale, slubujmy sie!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7270_OUT_Weiberheld_REL, "HFFRAU");

	AI_Teleport	(Mod_7270_OUT_Weiberheld_REL, "REL_230");
};

INSTANCE Info_Mod_HFFrau_Pickpocket (C_INFO)
{
	npc		= Mod_7271_OUT_HFFrau_REL;
	nr		= 1;
	condition	= Info_Mod_HFFrau_Pickpocket_Condition;
	information	= Info_Mod_HFFrau_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_HFFrau_Pickpocket_Condition()
{
	C_Beklauen	(51, ItMi_Freudenspender, 1);
};

FUNC VOID Info_Mod_HFFrau_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HFFrau_Pickpocket);

	Info_AddChoice	(Info_Mod_HFFrau_Pickpocket, DIALOG_BACK, Info_Mod_HFFrau_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HFFrau_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HFFrau_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HFFrau_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HFFrau_Pickpocket);
};

FUNC VOID Info_Mod_HFFrau_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HFFrau_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HFFrau_Pickpocket);

		Info_AddChoice	(Info_Mod_HFFrau_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HFFrau_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HFFrau_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HFFrau_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HFFrau_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HFFrau_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HFFrau_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HFFrau_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HFFrau_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HFFrau_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HFFrau_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HFFrau_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HFFrau_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HFFrau_EXIT (C_INFO)
{
	npc		= Mod_7271_OUT_HFFrau_REL;
	nr		= 1;
	condition	= Info_Mod_HFFrau_EXIT_Condition;
	information	= Info_Mod_HFFrau_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HFFrau_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HFFrau_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
