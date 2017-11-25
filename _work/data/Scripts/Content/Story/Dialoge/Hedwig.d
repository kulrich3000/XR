INSTANCE Info_Mod_Hedwig_Hi (C_INFO)
{
	npc		= Mod_7723_OUT_Hedwig_REL;
	nr		= 1;
	condition	= Info_Mod_Hedwig_Hi_Condition;
	information	= Info_Mod_Hedwig_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hedwig_Hi_Condition()
{
	if (Mod_Kneipe_Ditmar == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hedwig_Hi_Info()
{
	var c_npc Hedwig; Hedwig = Hlp_GetNpc(Mod_7723_OUT_Hedwig_REL);
	var c_npc Berta; Berta = Hlp_GetNpc(Mod_7724_OUT_Berta_REL);
	var c_npc Irmgard; Irmgard = Hlp_GetNpc(Mod_7725_OUT_Irmgard_REL);
	var c_npc Salmey; Salmey = Hlp_GetNpc(Mod_7726_OUT_Salmey_REL);

	TRIA_Invite(Berta);
	TRIA_Invite(Irmgard);
	TRIA_Invite(Salmey);

	TRIA_Start();

	AI_TurnToNpc	(Hedwig, hero);
	AI_TurnToNpc	(Berta, hero);
	AI_TurnToNpc	(Irmgard, hero);

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_00"); //Podnies kubki! Ach, kapelusze!

	CreateInvItems	(self, ItFo_Beer, 10);

	B_UseItem	(self, ItFo_Beer);

	TRIA_Next(Irmgard);

	CreateInvItems	(self, ItFo_Beer, 10);

	B_UseItem	(self, ItFo_Beer);

	TRIA_Next(Berta);

	CreateInvItems	(self, ItFo_Beer, 10);

	B_UseItem	(self, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_16_01"); //(hicky)

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_02"); //Czy nie sadzisz, ze mamy wystarczajaco duzo do picia?
	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_03"); //Biednej Bercie trudno jest przejsc prosto.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_04"); //Wlasnie o to chodzi! To caly cel!

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_05"); //No cóz, nie wiem.

	TRIA_Next(Berta);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_16_01"); //(hicky)

	TRIA_Next(Hedwig);

	AI_TurnToNpc	(Hedwig, Salmey);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_06"); //Hej, Salmey, przynies kolejna runde!

	TRIA_Next(Salmey);

	AI_GotoNpc	(self, Hedwig);

	AI_GotoWP	(self, self.wp);

	TRIA_Next(Irmgard);

	B_UseItem	(self, ItFo_Beer);

	TRIA_Next(Berta);

	B_UseItem	(self, ItFo_Beer);

	TRIA_Next(Hedwig);

	B_UseItem	(self, ItFo_Beer);

	AI_Output(hero, self, "Info_Mod_Hedwig_Hi_15_07"); //Czy moge zapytac, jakie jest to spotkanie?
	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_08"); //Oczywiscie tak jest. Pijemy sie, dopóki nie jestesmy niemal nieprzytomni, zdesperowani glosno w domu i rzucamy sie przed lózko.

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_09"); //Nie rzucam sie do domu!

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_10"); //Och, tak, wy bedziecie. Nie dajesz w tym momencie cholery.

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_11"); //No cóz, nie wiem.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_12"); //Nie trzeba go wycierac.
	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_13"); //Nie jestes gonna wytrzec go, wszystko w porzadku? I Ty tez, Berta?

	TRIA_Next(Berta);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_16_01"); //(hicky)

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_14"); //Kto jednak?

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_15"); //Tysiac razy o tym mówilismy! Gonna twojego meza tym razem oczysci ten balagan!

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_16"); //No cóz, nie wiem.
	AI_Output(hero, self, "Info_Mod_Hedwig_Hi_15_17"); //Nie mozesz rozwiazac problemów z mezczyznami w inny sposób?

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_18"); //Zdecydowalismy sie na takie rozwiazanie.

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_19"); //Wlasciwie to wlasnie zdecydowales.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_20"); //(trujace) Co wiec? Czy protestowales/as?

	TRIA_Next(Berta);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_16_21"); //Zabawne. Kto ma inny napój?

	TRIA_Finish();

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_DITMAR_DICKELUFT, "Trzy z nich sa naprawde wytrwale. Gdzie..... Hedwigi wydaje sie byc mistrzem i przekonana, ze prowadzi ja droga do sukcesu. Niewiele pozostaje do zrobienia z Berta. Ale wydaje sie, ze Irmgard jest znudzony.");
};

INSTANCE Info_Mod_Hedwig_Kneipe (C_INFO)
{
	npc		= Mod_7723_OUT_Hedwig_REL;
	nr		= 1;
	condition	= Info_Mod_Hedwig_Kneipe_Condition;
	information	= Info_Mod_Hedwig_Kneipe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak dlugo zamierzasz zostac?";
};

FUNC INT Info_Mod_Hedwig_Kneipe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hedwig_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hedwig_Kneipe_Info()
{
	AI_Output(hero, self, "Info_Mod_Hedwig_Kneipe_15_00"); //Jak dlugo zamierzasz zostac?
	AI_Output(self, hero, "Info_Mod_Hedwig_Kneipe_26_01"); //Nicei spróbuj, ale mozna powiedziec Ditmarowi, ze trzymamy fort.
	AI_Output(self, hero, "Info_Mod_Hedwig_Kneipe_26_02"); //Tak dlugo, jak niektórzy mistrzowie stworzenia nie zyskuja wgladu, nasza misja nie jest zakonczona.
};

INSTANCE Info_Mod_Hedwig_Kneipe2 (C_INFO)
{
	npc		= Mod_7723_OUT_Hedwig_REL;
	nr		= 1;
	condition	= Info_Mod_Hedwig_Kneipe2_Condition;
	information	= Info_Mod_Hedwig_Kneipe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jednak jest twój maz?";
};

FUNC INT Info_Mod_Hedwig_Kneipe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hedwig_Kneipe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hedwig_Kneipe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Hedwig_Kneipe2_15_00"); //Kim jednak jest twój maz?
	AI_Output(self, hero, "Info_Mod_Hedwig_Kneipe2_26_01"); //No cóz, jestes dla mnie zartem! Nie znasz zony strazniczki!
	AI_Output(hero, self, "Info_Mod_Hedwig_Kneipe2_15_02"); //Oh. Ale dlaczego Anselm poprosil Cie o.... Dlaczego zapytales Anselm..... (mysle) chociaz....
};

INSTANCE Info_Mod_Hedwig_Kneipe3 (C_INFO)
{
	npc		= Mod_7723_OUT_Hedwig_REL;
	nr		= 1;
	condition	= Info_Mod_Hedwig_Kneipe3_Condition;
	information	= Info_Mod_Hedwig_Kneipe3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego nie rozmawiasz tylko z Anselmem?";
};

FUNC INT Info_Mod_Hedwig_Kneipe3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hedwig_Kneipe2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hedwig_Kneipe3_Info()
{
	AI_Output(hero, self, "Info_Mod_Hedwig_Kneipe3_15_00"); //Dlaczego nie rozmawiasz tylko z Anselmem?
	AI_Output(self, hero, "Info_Mod_Hedwig_Kneipe3_26_01"); //To bezuzyteczne. Chce, zeby czul sie sam, jak to jest, zeby nie czul sie przez caly dzien.
};

INSTANCE Info_Mod_Hedwig_Pickpocket (C_INFO)
{
	npc		= Mod_7723_OUT_Hedwig_REL;
	nr		= 1;
	condition	= Info_Mod_Hedwig_Pickpocket_Condition;
	information	= Info_Mod_Hedwig_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Hedwig_Pickpocket_Condition()
{
	C_Beklauen	(52, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Hedwig_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);

	Info_AddChoice	(Info_Mod_Hedwig_Pickpocket, DIALOG_BACK, Info_Mod_Hedwig_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hedwig_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hedwig_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hedwig_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);
};

FUNC VOID Info_Mod_Hedwig_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);

		Info_AddChoice	(Info_Mod_Hedwig_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hedwig_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hedwig_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hedwig_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hedwig_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hedwig_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hedwig_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hedwig_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hedwig_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hedwig_EXIT (C_INFO)
{
	npc		= Mod_7723_OUT_Hedwig_REL;
	nr		= 1;
	condition	= Info_Mod_Hedwig_EXIT_Condition;
	information	= Info_Mod_Hedwig_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hedwig_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hedwig_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Hedwig_EXIT_26_00"); //Zobacze cie..... miejmy nadzieje.

	AI_StopProcessInfos	(self);
};
