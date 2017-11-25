INSTANCE Info_Mod_HofstaatGleichgewichtsminister_Hi (C_INFO)
{
	npc		= Mod_7287_HS_Gleichgewichtsminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatGleichgewichtsminister_Hi_Condition;
	information	= Info_Mod_HofstaatGleichgewichtsminister_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Musze zobaczyc sekretarza.";
};

FUNC INT Info_Mod_HofstaatGleichgewichtsminister_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatJaeger_Drogenminister))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Hi_15_00"); //Musze zobaczyc sekretarza.
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Hi_01_01"); //Nie macie sie co do mnie, jestem ministrem równowagi.
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Hi_15_02"); //Wiem, ale mysliwy powiedzial mi, ze mozesz pomóc mi dostac sie do sekretarza narkotyków.
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Hi_01_03"); //Mysle, ze ma racje. Ale tylko wtedy, gdy mozesz mi podac kod.
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Hi_15_04"); //Pozwólcie mi sie zgadnac..... Bananarama?
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Hi_01_05"); //Prawo. Chodzcie dalej, odejdzmy.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DROGENMINISTER");
	B_StartOtherRoutine	(Mod_7289_HS_Jaeger_REL, "START");
};

INSTANCE Info_Mod_HofstaatGleichgewichtsminister_Drogenminister (C_INFO)
{
	npc		= Mod_7287_HS_Gleichgewichtsminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_Condition;
	information	= Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatGleichgewichtsminister_Hi))
	&& (Npc_GetDistToWP(self, "REL_301") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_00"); //Wiec czlowiek, trzeba tylko sie uspokoic.
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_15_01"); //Okay.
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_02"); //Wystarczy poczuc, jak wiatr przeplywa przez ciebie i stac sie jednym z toba.
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_15_03"); //Wszystkie sluszne, wszystkie sluszne.
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_04"); //Musisz byc twardy jak kamien i jednoczesnie elastyczny jak trzcina, wiesz?
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_15_05"); //Wiecej lub mniej.
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_06"); //To dobra wiadomosc. Nastepnie wez cel do oczu i....
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_15_07"); //Przejdz przez line?
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_08"); //NA NIEBO NIEBO NIE CHCE BYKU! Zerwiesz szyje.
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_09"); //Oto klucz do drabiny. Drzwi znajduja sie u podnóza drugiego wzniesienia.

	B_GiveInvItems	(self, hero, ItKe_HSDM, 1);

	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_15_10"); //Co? Wiec dlaczego weszlismy tu ponownie?
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_11"); //Lubie to tutaj.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Minister Equilibrium dal mi klucz do drzwi w przeciwleglej górze, gdzie ma byc drabina prowadzaca do ministra ds. narkotyków.");
};

INSTANCE Info_Mod_HofstaatGleichgewichtsminister_Pickpocket (C_INFO)
{
	npc		= Mod_7287_HS_Gleichgewichtsminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Condition;
	information	= Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Freudenspender, 3);
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatGleichgewichtsminister_EXIT (C_INFO)
{
	npc		= Mod_7287_HS_Gleichgewichtsminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatGleichgewichtsminister_EXIT_Condition;
	information	= Info_Mod_HofstaatGleichgewichtsminister_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatGleichgewichtsminister_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
