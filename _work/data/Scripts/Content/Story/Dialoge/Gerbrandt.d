INSTANCE Info_Mod_Gerbrandt_Hi (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Hi_Condition;
	information	= Info_Mod_Gerbrandt_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Gerbrandt_Hi_Condition()
{
	return 1;
};

FUNC VoID Info_Mod_Gerbrandt_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Hi_10_01"); //Nie martw sie o mnie.
};

INSTANCE Info_Mod_Gerbrandt_Person (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Person_Condition;
	information	= Info_Mod_Gerbrandt_Person_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slyszalem, jak ominales kogos.";
};

FUNC INT Info_Mod_Gerbrandt_Person_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Person))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gerbrandt_Person_Info()
{
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Person_15_00"); //Slyszalem, jak ominales kogos.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Person_10_01"); //To prawda. Mialem przyjaciela okolo dwa tygodnie temu. Wracal do domu dopiero pózno w nocy.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Person_10_02"); //Nastepnego dnia chcialem go zobaczyc, nie byl tam. Natychmiast powiadomilem milicje, ale oni niczego nie znalezli.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Person_10_03"); //Potem przyszedl do mnie Vatras, magik wody i kilku jego zwolenników i zapytal mnie o mojego przyjaciela.
};

INSTANCE Info_Mod_Gerbrandt_Infos (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Infos_Condition;
	information	= Info_Mod_Gerbrandt_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co powiedziales Vatrasie?";
};

FUNC INT Info_Mod_Gerbrandt_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Person))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gerbrandt_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Infos_15_00"); //Co powiedziales Vatrasie?
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Infos_10_01"); //Zadal mi wiele pytan.
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Infos_15_02"); //Jakie pytania?
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Infos_10_03"); //Najpierw zapytal chlopaka, a ja mu podalem jego imie Fred.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Infos_10_04"); //Potem chcial wiedziec, o której godzinie wyjechal. Nie znalem dokladnego czasu, bo juz wypilismy troche wina, ale bylo to okolo godziny 11.00.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Infos_10_05"); //Na koniec zapytal, gdzie mieszkal Fred. Potem poprowadzilem go do domu.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Infos_10_06"); //To wszystko.

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Gerbrandt powiedzial mi, ze nazwisko jego przyjaciela brzmi Fred i opuscil dom Gerbrandta okolo godziny 11.00.");
};

INSTANCE Info_Mod_Gerbrandt_Wo (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Wo_Condition;
	information	= Info_Mod_Gerbrandt_Wo_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie zabrac do domu?";
};

FUNC INT Info_Mod_Gerbrandt_Wo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Infos))
	{
		return 1;
	};
};

FUNC VOId Info_Mod_Gerbrandt_Wo_Info()
{
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Wo_15_00"); //Czy mozesz mnie zabrac do domu?
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Wo_10_01"); //Z pewnoscia, daj mi znac, kiedy jestesmy gotowi na wyjazd.
};

INSTANCE Info_Mod_Gerbrandt_Los (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Los_Condition;
	information	= Info_Mod_Gerbrandt_Los_Info;
	permanent	= 0;
	important	= 0;
	description	= "Idzmy dalej.";
};

FUNC INT Info_Mod_Gerbrandt_Los_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Wo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gerbrandt_Los_Info()
{
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Los_15_00"); //Idzmy dalej.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Los_10_01"); //Dobrze, podazaj za mna.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "GUIDETOFRED");
};

INSTANCE Info_Mod_Gerbrandt_Da (C_INFO)
{
	npc		= Mod_578_NOnE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Da_Condition;
	information	= Info_Mod_Gerbrandt_Da_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gerbrandt_Da_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Los))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_CITY_PATH_HABOUR_13"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gerbrandt_Da_Info()
{
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Da_10_00"); //Oto jestesmy.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Da_10_01"); //Rozejrzyjcie sie, wróce. Jesli potrzebujesz pomocy, wiesz gdzie mnie znalezc.

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Gerbrandt zabral mnie do domu Freda. Zobaczmy, czy moge znalezc tutaj cos, co sugeruje jego znikniecie.");

	Wld_InsertItem	(Mod_Sklavenliste_DMR,	"FP_SPAWN_VERMISSTENLISTE");

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "START");
};

INSTANCE Info_Mod_Gerbrandt_Cornelius (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Cornelius_Condition;
	information	= Info_Mod_Gerbrandt_Cornelius_Info;
	permanent	= 0;
	important	= 0;
	description	= "Musze z panstwem porozmawiac.";
};

FUNC INT Info_Mod_Gerbrandt_Cornelius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cornelius_AtMarkt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gerbrandt_Cornelius_Info()
{
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Cornelius_15_00"); //Jestes jednym z tych mezczyzn, którzy zabili Corneliusa i aresztowali Morgahardta.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Cornelius_10_01"); //Czy moze pan to udowodnic?
	AI_Output(hero, self, "Info_Mod_Gerbrandt_Cornelius_15_02"); //Nie.
	AI_Output(self, hero, "Info_Mod_Gerbrandt_Cornelius_10_03"); //Wtedy nie traccie czasu z waszymi oskarzeniami lub wezme milicje.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Zapytalem o to Gerbrandta, ale nie moglem mu niczego udowodnic. Powinienem jeszcze raz porozmawiac z Estebanem.");
};

INSTANCE Info_Mod_Gerbrandt_SonjaFreier (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_SonjaFreier_Condition;
	information	= Info_Mod_Gerbrandt_SonjaFreier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy byles czestym klientem Sonji?";
};

FUNC INT Info_Mod_Gerbrandt_SonjaFreier_Condition()
{
	if (Mod_Sonja_Freier == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gerbrandt_SonjaFreier_Info()
{
	AI_Output(hero, self, "Info_Mod_Gerbrandt_SonjaFreier_15_00"); //Czy byles czestym klientem Sonji?
	AI_Output(self, hero, "Info_Mod_Gerbrandt_SonjaFreier_10_01"); //Cóz za pytanie! Oczywiscie nie!
};

INSTANCE Info_Mod_Gerbrandt_Pickpocket (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_Pickpocket_Condition;
	information	= Info_Mod_Gerbrandt_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Gerbrandt_Pickpocket_Condition()
{
	C_Beklauen	(48, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Gerbrandt_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);

	Info_AddChoice	(Info_Mod_Gerbrandt_Pickpocket, DIALOG_BACK, Info_Mod_Gerbrandt_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gerbrandt_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gerbrandt_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gerbrandt_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);
};

FUNC VOID Info_Mod_Gerbrandt_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);

		Info_AddChoice	(Info_Mod_Gerbrandt_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gerbrandt_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gerbrandt_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gerbrandt_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gerbrandt_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gerbrandt_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gerbrandt_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gerbrandt_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gerbrandt_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gerbrandt_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gerbrandt_EXIT (C_INFO)
{
	npc		= Mod_578_NONE_Gerbrandt_NW;
	nr		= 1;
	condition	= Info_Mod_Gerbrandt_EXIT_Condition;
	information	= Info_Mod_Gerbrandt_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gerbrandt_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gerbrandt_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
