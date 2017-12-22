INSTANCE Info_Mod_Gunnar_Hi (C_INFO)
{
	npc		= Mod_785_BAU_Gunnar_NW;
	nr		= 1;
	condition	= Info_Mod_Gunnar_Hi_Condition;
	information	= Info_Mod_Gunnar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Gunnar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gunnar_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Gunnar_Hi_10_01"); //Jestem Gunnar, rolnik z zawodu.
};

INSTANCE Info_Mod_Gunnar_Unheil (C_INFO)
{
	npc		= Mod_785_BAU_Gunnar_NW;
	nr		= 1;
	condition	= Info_Mod_Gunnar_Unheil_Condition;
	information	= Info_Mod_Gunnar_Unheil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy ostatnio cos sie wydarzylo?";
};

FUNC INT Info_Mod_Gunnar_Unheil_Condition()
{
	if (Mod_WM_Boeden == 14)
	|| (Mod_WM_Boeden == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gunnar_Unheil_Info()
{
	AI_Output(hero, self, "Info_Mod_Gunnar_Unheil_15_00"); //Czy ostatnio cos sie wydarzylo?
	AI_Output(self, hero, "Info_Mod_Gunnar_Unheil_10_01"); //Cóz, poza hordy potworów w okolicy, nic niezwyklego.
	AI_Output(hero, self, "Info_Mod_Gunnar_Unheil_15_02"); //No cóz, to prawda.
	AI_Output(self, hero, "Info_Mod_Gunnar_Unheil_10_03"); //Tylko stale burze gradobicia, które rujnuja nasze zbiory, daja nam kwasne mleko i ciagle choroby na farmie w tym sezonie.
	AI_Output(self, hero, "Info_Mod_Gunnar_Unheil_10_04"); //Zwlaszcza Maryja cierpi od kilku dni z powodu ciezkiej niepelnosprawnosci. Nawet ziolowosc Sagitty nie mogla jej pomóc. Tak, ale wszystko inne jest normalne.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Gunnar poinformowal o prysznicach gradowych, kwasnym mleku owczym i problemach zdrowotnych gospodarstwa w tym sezonie.");

	if (!Npc_KnowsInfo(hero, Info_Mod_Bobo_Unheil))
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Maria jest ciezko chora juz od kilku dni.");
	};

	Mod_HinweiseDerBauernZuHexen += 1;
};

INSTANCE Info_Mod_Gunnar_Dieb (C_INFO)
{
	npc		= Mod_785_BAU_Gunnar_NW;
	nr		= 1;
	condition	= Info_Mod_Gunnar_Dieb_Condition;
	information	= Info_Mod_Gunnar_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gotcha!";
};

FUNC INT Info_Mod_Gunnar_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Onar_Dieb))
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), "NW_BIGFARM_KITCHEN_04"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gunnar_Dieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Gunnar_Dieb_15_00"); //Gotcha!
	AI_Output(self, hero, "Info_Mod_Gunnar_Dieb_10_01"); //Pospiesz sie, wyjdzmy stad!

	B_LogEntry	(TOPIC_MOD_BAUER_DIEB, "Zlowilem Gunnara, który ukradl rzeczy z magazynu.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");

	self.flags = 2;
};

INSTANCE Info_Mod_Gunnar_Flucht (C_INFO)
{
	npc		= Mod_785_BAU_Gunnar_NW;
	nr		= 1;
	condition	= Info_Mod_Gunnar_Flucht_Condition;
	information	= Info_Mod_Gunnar_Flucht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Teraz nie wychodzisz.";
};

FUNC INT Info_Mod_Gunnar_Flucht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gunnar_Dieb))
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), "NW_BIGFARM_FELDREUBER4"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gunnar_Flucht_Info()
{
	AI_Output(hero, self, "Info_Mod_Gunnar_Flucht_15_00"); //Teraz nie wychodzisz.
	AI_Output(self, hero, "Info_Mod_Gunnar_Flucht_10_01"); //Uh.... czego ode mnie oczekujesz? Nic nie zrobilem.
	AI_Output(hero, self, "Info_Mod_Gunnar_Flucht_15_02"); //Masz wrazenie, ze jestem glupi? Widzialam, jak kradniecie rzeczy z magazynu.
	AI_Output(self, hero, "Info_Mod_Gunnar_Flucht_10_03"); //D... Musi byc jakis blad. Nic nie ukradlem.

	self.flags = 0;
	
	Info_ClearChoices	(Info_Mod_Gunnar_Flucht);

	Info_AddChoice	(Info_Mod_Gunnar_Flucht, "Jesli dzielisz sie ze mna butem, nie zdradze cie.", Info_Mod_Gunnar_Flucht_Teilen);
	Info_AddChoice	(Info_Mod_Gunnar_Flucht, "Jesli mi nic nie powiesz, to ja to z toba wybije.", Info_Mod_Gunnar_Flucht_Attacke);
};

FUNC VOID Info_Mod_Gunnar_Flucht_Teilen()
{
	AI_Output(hero, self, "Info_Mod_Gunnar_Flucht_Teilen_15_00"); //Jesli dzielisz sie lupem ze mna, nie zdradze cie.
	AI_Output(self, hero, "Info_Mod_Gunnar_Flucht_Teilen_10_01"); //Dobrze, mysle, ze nie mam wyboru. Oto Twój udzial.

	CreateInvItems	(hero, ItFo_MuttonRaw, 10);
	CreateInvItems	(hero, ItFo_Cheese, 3);
	CreateInvItems	(hero, ItFo_Water, 5);

	B_ShowGivenThings	("10 surowego miesa, 3 sery i 5 uzyskanych wód");

	Mod_Gunnar_Partner = TRUE;

	B_SetTopicStatus	(TOPIC_MOD_BAUER_DIEB, LOG_FAILED);

	AI_StopProcessInfos	(self);

	Info_ClearChoices	(Info_Mod_Gunnar_Flucht);

	B_StartOtherRoutine	(self, "START");
};

FUNC VOID Info_Mod_Gunnar_Flucht_Attacke()
{
	AI_Output(hero, self, "Info_Mod_Gunnar_Flucht_Attacke_15_00"); //Jesli mi nic nie powiesz, to ja to z toba wybije.
	AI_Output(self, hero, "Info_Mod_Gunnar_Flucht_Attacke_10_01"); //Przyjrzyjmy sie najpierw.
	
	CreateInvItems	(self, ItKe_Mod_Gunnar_Dieb, 1);
	
	AI_StopProcessInfos	(self);

	Info_ClearChoices	(Info_Mod_Gunnar_Flucht);

	B_StartOtherRoutine	(self, "START");

	B_Attack	(self, hero, AR_NONE, 0);
};

INSTANCE Info_Mod_Gunnar_Pickpocket (C_INFO)
{
	npc		= Mod_785_BAU_Gunnar_NW;
	nr		= 1;
	condition	= Info_Mod_Gunnar_Pickpocket_Condition;
	information	= Info_Mod_Gunnar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Gunnar_Pickpocket_Condition()
{
	C_Beklauen	(20, ItMi_Gold, 10);
};

FUNC VOID Info_Mod_Gunnar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);

	Info_AddChoice	(Info_Mod_Gunnar_Pickpocket, DIALOG_BACK, Info_Mod_Gunnar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gunnar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gunnar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gunnar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);
};

FUNC VOID Info_Mod_Gunnar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);

		Info_AddChoice	(Info_Mod_Gunnar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gunnar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gunnar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gunnar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gunnar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gunnar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gunnar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gunnar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gunnar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gunnar_EXIT (C_INFO)
{
	npc		= Mod_785_BAU_Gunnar_NW;
	nr		= 1;
	condition	= Info_Mod_Gunnar_EXIT_Condition;
	information	= Info_Mod_Gunnar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gunnar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gunnar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
