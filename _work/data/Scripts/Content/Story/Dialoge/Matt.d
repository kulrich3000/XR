INSTANCE Info_Mod_Matt_Hi (C_INFO)
{
	npc		= Mod_936_PIR_Matt_AW;
	nr		= 1;
	condition	= Info_Mod_Matt_Hi_Condition;
	information	= Info_Mod_Matt_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Matt_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Matt_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Matt_Hi_10_01"); //Jestem Mattem.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Matt_Befreiung (C_INFO)
{
	npc		= Mod_936_PIR_Matt_AW;
	nr		= 1;
	condition	= Info_Mod_Matt_Befreiung_Condition;
	information	= Info_Mod_Matt_Befreiung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Matt_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matt_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_Befreiung2))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matt_Befreiung_Info()
{
	AI_Output(self, hero, "Info_Mod_Matt_Befreiung_10_00"); //Czego chcesz?
	AI_Output(hero, self, "Info_Mod_Matt_Befreiung_15_01"); //Mialem Ci pomóc, powiedzial Greg.
	AI_Output(self, hero, "Info_Mod_Matt_Befreiung_10_02"); //Wtedy bede mial dla Ciebie cos do zrobienia.
	AI_Output(hero, self, "Info_Mod_Matt_Befreiung_15_03"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Matt_Befreiung_10_04"); //Ostatnio odkrywam tamta wyspe w oceanie. Nagle kilka Lurkerów przyszlo po mnie na lunch.
	AI_Output(self, hero, "Info_Mod_Matt_Befreiung_10_05"); //Potem wskoczylem do wody i zanurkowalem w kierunku plazy i stracilem trzy worki zlota, które leza teraz na dnie morza.
	AI_Output(self, hero, "Info_Mod_Matt_Befreiung_10_06"); //Chce, abys odebral mi ja z powrotem.
	AI_Output(hero, self, "Info_Mod_Matt_Befreiung_15_07"); //Dobrze, bede szedl.
	AI_Output(self, hero, "Info_Mod_Matt_Befreiung_10_08"); //Powodzenia.

	Log_CreateTopic	(TOPIC_MOD_BEL_PIRMATT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRMATT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_PIRMATT, "Pirat Matt stracil trzy zlote worki w morzu. Mam go z powrotem przyniesc.");

	Wld_InsertItem	(ItMi_MattsGoldsack, "FP_ITEM_GOLDSACK_MATT_01");
	Wld_InsertItem	(ItMi_MattsGoldsack, "FP_ITEM_GOLDSACK_MATT_02");
	Wld_InsertItem	(ItMi_MattsGoldsack, "FP_ITEM_GOLDSACK_MATT_03");
};

INSTANCE Info_Mod_Matt_Befreiung2 (C_INFO)
{
	npc		= Mod_936_PIR_Matt_AW;
	nr		= 1;
	condition	= Info_Mod_Matt_Befreiung2_Condition;
	information	= Info_Mod_Matt_Befreiung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zloto znalazlem.";
};

FUNC INT Info_Mod_Matt_Befreiung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matt_Befreiung))
	&& (Npc_HasItems(hero, ItMi_MattsGoldsack) == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matt_Befreiung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Matt_Befreiung2_15_00"); //Zloto znalazlem.

	B_GiveInvItems	(hero, self, ItMi_MattsGoldsack, 3);

	AI_Output(self, hero, "Info_Mod_Matt_Befreiung2_10_01"); //Dziekuje, dziekuje. Tutaj, wez to za nagrode.

	B_GiveInvItems	(self, hero, ItPo_Perm_Health, 1);

	AI_Output(hero, self, "Info_Mod_Matt_Befreiung2_15_02"); //Jestem pewien, ze móglbym uzyc tego eliksiru.
	AI_Output(self, hero, "Info_Mod_Matt_Befreiung2_10_03"); //Cóz, mam taka nadzieje.

	Mod_Piratenbefreiung += 1;

	B_GivePlayerXP	(300);

	B_LogEntry_More	(TOPIC_MOD_BEL_PIRMATT, TOPIC_MOD_BEL_PIRATENLAGER, "Matt's odzyskal zlote torby. Jego nagroda dla mnie byla eliksir zycia.", "Pomagalem Mattowi teraz.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRMATT, LOG_SUCCESS);
};

INSTANCE Info_Mod_Matt_Pickpocket (C_INFO)
{
	npc		= Mod_936_PIR_Matt_AW;
	nr		= 1;
	condition	= Info_Mod_Matt_Pickpocket_Condition;
	information	= Info_Mod_Matt_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Matt_Pickpocket_Condition()
{
	C_Beklauen	(75, ItFo_Addon_Grog, 2);
};

FUNC VOID Info_Mod_Matt_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Matt_Pickpocket);

	Info_AddChoice	(Info_Mod_Matt_Pickpocket, DIALOG_BACK, Info_Mod_Matt_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Matt_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Matt_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Matt_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Matt_Pickpocket);
};

FUNC VOID Info_Mod_Matt_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Matt_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Matt_Pickpocket);

		Info_AddChoice	(Info_Mod_Matt_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Matt_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Matt_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Matt_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Matt_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Matt_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Matt_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Matt_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Matt_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Matt_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Matt_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Matt_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Matt_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Matt_EXIT (C_INFO)
{
	npc		= Mod_936_PIR_Matt_AW;
	nr		= 1;
	condition	= Info_Mod_Matt_EXIT_Condition;
	information	= Info_Mod_Matt_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Matt_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Matt_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
