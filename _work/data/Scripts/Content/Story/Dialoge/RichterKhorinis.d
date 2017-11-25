INSTANCE Info_Mod_RichterKhorinis_Blutkelch (C_INFO)
{
	npc		= Mod_1034_VLK_Richter_NW;
	nr		= 1;
	condition	= Info_Mod_RichterKhorinis_Blutkelch_Condition;
	information	= Info_Mod_RichterKhorinis_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobry dzien, panie posle.";
};

FUNC INT Info_Mod_RichterKhorinis_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Yussuf_Blutkelch4))
	&& (Npc_HasItems(hero, ItPo_KamalGift) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_RichterKhorinis_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_RichterKhorinis_Blutkelch_15_00"); //Dobry dzien, panie posle.
	AI_Output(self, hero, "Info_Mod_RichterKhorinis_Blutkelch_10_01"); //Ahh. Czlowiek obyczaj�w. Nie czesto zdarza sie to w dzisiejszych czasach. Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_RichterKhorinis_Blutkelch_15_02"); //Prosba, panie posle, kt�ra mam nadzieje, ze wyda pan sprawiedliwy werdykt....
	AI_Output(self, hero, "Info_Mod_RichterKhorinis_Blutkelch_10_03"); //Moje osady byly wciaz sluszne.
	AI_Output(hero, self, "Info_Mod_RichterKhorinis_Blutkelch_15_04"); //Z pewnoscia, Panie. Sluchaj: Dostalem kilkanascie najlepszych win klasztornych do kupca Baltram na targowisku. Najlepszy wyb�r.
	AI_Output(hero, self, "Info_Mod_RichterKhorinis_Blutkelch_15_05"); //Teraz twierdzi, ze wino jest gorszej jakosci i ma smak plesniowy. Teraz znaja Cie jako smakosza, mozesz na pewno osadzic wino.
	AI_Output(self, hero, "Info_Mod_RichterKhorinis_Blutkelch_10_06"); //Tak wlasnie rozumiem. Masz pr�bke?
	AI_Output(hero, self, "Info_Mod_RichterKhorinis_Blutkelch_15_07"); //Przyniesiono mi z soba butelke, kt�ra zostala odrzucona. Jesli chcesz go spr�bowac.

	B_GiveInvItems	(hero, self, ItPo_KamalGift, 1);

	B_UseItem	(self, ItPo_KamalGift);

	AI_Output(self, hero, "Info_Mod_RichterKhorinis_Blutkelch_10_08"); //Ahh..... Naprawde dobry kropla! Drobno owocowy i smaczny w wykonczeniu. Moze m�glbym miec kilka....

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_RichterKhorinis_Pickpocket (C_INFO)
{
	npc		= Mod_1034_VLK_Richter_NW;
	nr		= 1;
	condition	= Info_Mod_RichterKhorinis_Pickpocket_Condition;
	information	= Info_Mod_RichterKhorinis_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_RichterKhorinis_Pickpocket_Condition()
{
	C_Beklauen	(131, ItMi_Gold, 64);
};

FUNC VOID Info_Mod_RichterKhorinis_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_RichterKhorinis_Pickpocket);

	Info_AddChoice	(Info_Mod_RichterKhorinis_Pickpocket, DIALOG_BACK, Info_Mod_RichterKhorinis_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_RichterKhorinis_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_RichterKhorinis_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_RichterKhorinis_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_RichterKhorinis_Pickpocket);
};

FUNC VOID Info_Mod_RichterKhorinis_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_RichterKhorinis_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_RichterKhorinis_Pickpocket);

		Info_AddChoice	(Info_Mod_RichterKhorinis_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_RichterKhorinis_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_RichterKhorinis_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_RichterKhorinis_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_RichterKhorinis_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_RichterKhorinis_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_RichterKhorinis_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_RichterKhorinis_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_RichterKhorinis_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_RichterKhorinis_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_RichterKhorinis_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_RichterKhorinis_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_RichterKhorinis_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_RichterKhorinis_EXIT (C_INFO)
{
	npc		= Mod_1034_VLK_Richter_NW;
	nr		= 1;
	condition	= Info_Mod_RichterKhorinis_EXIT_Condition;
	information	= Info_Mod_RichterKhorinis_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_RichterKhorinis_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_RichterKhorinis_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
