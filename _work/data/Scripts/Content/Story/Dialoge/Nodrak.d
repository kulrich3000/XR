INSTANCE Info_Mod_Nodrak_Hi (C_INFO)
{
	npc		= Mod_1275_SLD_Nodrak_MT;
	nr		= 1;
	condition	= Info_Mod_Nodrak_Hi_Condition;
	information	= Info_Mod_Nodrak_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nodrak_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nodrak_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Nodrak_Hi_08_00"); //Jestem Nodrakiem, czego chcesz?
};

INSTANCE Info_Mod_Nodrak_Infos (C_INFO)
{
	npc		= Mod_1275_SLD_Nodrak_MT;
	nr		= 1;
	condition	= Info_Mod_Nodrak_Infos_Condition;
	information	= Info_Mod_Nodrak_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcialbym cos o Tobie wiedziec.";
};

FUNC INT Info_Mod_Nodrak_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nodrak_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torwache_NL_01_GardistenInfos))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Nodrak_BierInfos))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nodrak_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Nodrak_Infos_15_00"); //Chcialbym cos o Tobie wiedziec.
	AI_Output(self, hero, "Info_Mod_Nodrak_Infos_08_01"); //Dzis nie jestem w nastroju, wróce jutro.
};

INSTANCE Info_Mod_Nodrak_BierInfos (C_INFO)
{
	npc		= Mod_1275_SLD_Nodrak_MT;
	nr		= 1;
	condition	= Info_Mod_Nodrak_BierInfos_Condition;
	information	= Info_Mod_Nodrak_BierInfos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj chce Ci kupic piwo.";
};

FUNC INT Info_Mod_Nodrak_BierInfos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nodrak_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torwache_NL_01_GardistenInfos))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	&& (Npc_HasItems(hero, ItFo_Beer) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nodrak_BierInfos_Info()
{
	AI_Output(hero, self, "Info_Mod_Nodrak_BierInfos_15_00"); //Tutaj chce Ci kupic piwo.

	B_GiveInvItems	(hero, self, ItFo_Beer, 1);
	B_UseItem	(self, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_01"); //Hej, dziekuje. Jak do tego doszlo?
	AI_Output(hero, self, "Info_Mod_Nodrak_BierInfos_15_02"); //Straznik powiedzial, ze zostales zastrzelony na strazy przed ostatnia noca.
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_03"); //To jest sluszne, pukajace dranie. Prawie sie zlapalem. Gdybym nie natknal sie przypadkiem.....
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_04"); //Zobaczylem tez dokladnie, jak oni znów znikneli w ciemnosci, tchórze! Kiedy nadeszly zbroje, byly juz na wszystkich górach!
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_05"); //Ale strzalka w ramieniu nie moglem nic zrobic!
	AI_Output(hero, self, "Info_Mod_Nodrak_BierInfos_15_06"); //Do czego uciekli?
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_07"); //Do Starej Kopalni. Jak tylko znowu bede mógl wladac mieczem, zaplace im za to, kim byl!
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_08"); //Jesli spotkasz ich przed mna, daj im mojego, tego brudnego tchórza.
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_09"); //Musza to byc bandyci lub straznicy. Kto jeszcze uzywa tych strzal w tej dolinie, huh?
	AI_Output(hero, self, "Info_Mod_Nodrak_BierInfos_15_10"); //Wszystko jasne.
	AI_Output(self, hero, "Info_Mod_Nodrak_BierInfos_08_11"); //Dbaj o siebie.

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Napastnicy, którzy zaatakowali Nodrak uciekli do dawnej kopalni.... Wiecej");

	Wld_InsertNpc	(Mod_1972_GRD_Hecta_MT, "OC1");
	Wld_InsertNpc	(Mod_1973_GRD_Achil_MT, "OC1");
};

INSTANCE Info_Mod_Nodrak_Pickpocket (C_INFO)
{
	npc		= Mod_1275_SLD_Nodrak_MT;
	nr		= 1;
	condition	= Info_Mod_Nodrak_Pickpocket_Condition;
	information	= Info_Mod_Nodrak_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Nodrak_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 30);
};

FUNC VOID Info_Mod_Nodrak_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);

	Info_AddChoice	(Info_Mod_Nodrak_Pickpocket, DIALOG_BACK, Info_Mod_Nodrak_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Nodrak_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Nodrak_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Nodrak_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);
};

FUNC VOID Info_Mod_Nodrak_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);

		Info_AddChoice	(Info_Mod_Nodrak_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Nodrak_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Nodrak_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Nodrak_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Nodrak_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Nodrak_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Nodrak_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Nodrak_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Nodrak_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Nodrak_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Nodrak_EXIT (C_INFO)
{
	npc		= Mod_1275_SLD_Nodrak_MT;
	nr		= 1;
	condition	= Info_Mod_Nodrak_EXIT_Condition;
	information	= Info_Mod_Nodrak_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nodrak_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nodrak_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
