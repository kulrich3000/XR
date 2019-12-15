INSTANCE Info_Mod_Aldaro_Hi (C_INFO)
{
	npc		= Mod_7674_OUT_Aldaro_EIS;
	nr		= 1;
	condition	= Info_Mod_Aldaro_Hi_Condition;
	information	= Info_Mod_Aldaro_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aldaro_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Aldaro_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_00"); //Ahh, nowe oblicze. Powitania. Czy jestes z....? ahhhhhhh.....
	AI_Output(hero, self, "Info_Mod_Aldaro_Hi_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_02"); //Och, przepraszam. Ból jest po prostu nie do zniesienia.
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_03"); //Czy ide, stoje, czy siedze.... z przegubami coraz gorzej.
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_04"); //W ciagu ostatnich kilku dni nie moglem nawet lowic ryb.
	AI_Output(hero, self, "Info_Mod_Aldaro_Hi_15_05"); //Czy nie ma lekarstwa ani ulgi?
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_06"); //Nie, nawet Thys nie mógl mi pomóc.
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_07"); //W niektórych ksiazkach przeczytalem, ze jest cos, co moze pomóc w rozwiazywaniu problemów zapalnych stawów..... Ale nie ma tu chyba nawet tysiaca mil do pokonania.
	AI_Output(hero, self, "Info_Mod_Aldaro_Hi_15_08"); //Co to ma byc?
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_09"); //Trucizna róznych zwierzat, zwlaszcza owadów, wystepujaca w cieplejszych miejscach..... ale niestety tutaj nie ma.
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_10"); //Ach, jak to bedzie sie dzialo.....

	Log_CreateTopic	(TOPIC_MOD_ALDARO_TIERGIFT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ALDARO_TIERGIFT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ALDARO_TIERGIFT, "Aldaro cierpi na powazne problemy wspólne. Uwaza, ze czytamy, ze trucizna zwierzeca moze mu pomóc.");
};

INSTANCE Info_Mod_Aldaro_Gift (C_INFO)
{
	npc		= Mod_7674_OUT_Aldaro_EIS;
	nr		= 1;
	condition	= Info_Mod_Aldaro_Gift_Condition;
	information	= Info_Mod_Aldaro_Gift_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam przy sobie trucizne zwierzeca.";
};

FUNC INT Info_Mod_Aldaro_Gift_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aldaro_Hi))
	&& (Npc_HasItems(hero, ItPo_Tiergift) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aldaro_Gift_Info()
{
	AI_Output(hero, self, "Info_Mod_Aldaro_Gift_15_00"); //Mam przy sobie trucizne zwierzeca.
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift_16_01"); //Co? Musisz mnie oszukiwac.
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift_16_02"); //Jak to mozliwe w tym lodowatym swiecie?
	AI_Output(hero, self, "Info_Mod_Aldaro_Gift_15_03"); //Z pomoca jakiejs magii.
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift_16_04"); //Magia? Ale.... (zanurzone w myslach) byc moze jest to prawda, co slyszalem z poglosek......
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift_16_05"); //... ze przyszedl do nas jeden z magicznych portali z odleglych regionów swiata......
	AI_Output(hero, self, "Info_Mod_Aldaro_Gift_15_06"); //Oto Twoje lekarstwo.

	B_GiveInvItems	(hero, self, ItPo_Tiergift, 1);

	AI_Output(self, hero, "Info_Mod_Aldaro_Gift_16_07"); //(znowu bohatera) Co? Ahh, jad owadów. Dziekuje bardzo.
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift_16_08"); //Natychmiast stosuje ja w odniesieniu do dotknietych obszarów...... Zobacz, jak to robie jutro.

	AI_PlayAni	(self, "T_PLUNDER");

	B_LogEntry	(TOPIC_MOD_ALDARO_TIERGIFT, "Aldaro otarl mu stawy trucizna i poszedl spac.");

	B_GivePlayerXP	(150);

	Mod_Aldaro_Gift_Tag = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ERHOLUNG");
};

INSTANCE Info_Mod_Aldaro_Gift2 (C_INFO)
{
	npc		= Mod_7674_OUT_Aldaro_EIS;
	nr		= 1;
	condition	= Info_Mod_Aldaro_Gift2_Condition;
	information	= Info_Mod_Aldaro_Gift2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aldaro_Gift2_Condition()
{
	if (Mod_Aldaro_Gift == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aldaro_Gift2_Info()
{
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift2_16_00"); //Tak naprawde to pomoglo. Moje stawy sa juz duzo lepsze.
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift2_16_01"); //Jesli tak bedzie, jutro bede mógl lowic ryby.
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift2_16_02"); //Tutaj to niewiele, ale mam nadzieje, ze cos z tym zrobisz.

	CreateInvItems	(hero, ItMi_Gold, 54);
	CreateInvItems	(hero, ItMi_Nugget, 2);
	CreateInvItems	(hero, ItFo_Fish, 12);

	B_ShowGivenThings	("54 zloto, 2 sztuki rudy i 12 ryb zakonserwowanych");

	B_SetTopicStatus	(TOPIC_MOD_ALDARO_TIERGIFT, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	CurrentNQ += 1;

	B_StartOtherRoutine	(self,	"FIT");
};

INSTANCE Info_Mod_Aldaro_Schneegeister (C_INFO)
{
	npc		= Mod_7674_OUT_Aldaro_EIS;
	nr		= 1;
	condition	= Info_Mod_Aldaro_Schneegeister_Condition;
	information	= Info_Mod_Aldaro_Schneegeister_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aldaro_Schneegeister_Condition()
{
	if (Mod_Aldaro_Gift == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Thys_Schneegeister))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aldaro_Schneegeister_Info()
{
	AI_Output(self, hero, "Info_Mod_Aldaro_Schneegeister_16_00"); //Chwyc, aby cie ponownie zobaczyc.
	AI_Output(self, hero, "Info_Mod_Aldaro_Schneegeister_16_01"); //Mój dyskomfort calkowicie znikl, a butelka bedzie trwala przez lata.
	AI_Output(self, hero, "Info_Mod_Aldaro_Schneegeister_16_02"); //Ale o co tak naprawde chodzilo mi.... Zloty pierscien znalazlem w rybie, która zlapalem w jeziorze.
	AI_Output(self, hero, "Info_Mod_Aldaro_Schneegeister_16_03"); //A skoro nie moglem lowic ryb bez Twojej pomocy, to oczywiscie Twoja. Wez to tutaj.

	B_GiveInvItems	(self, hero, ItRi_Seering, 1);

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Aldaro_Pickpocket (C_INFO)
{
	npc		= Mod_7674_OUT_Aldaro_EIS;
	nr		= 1;
	condition	= Info_Mod_Aldaro_Pickpocket_Condition;
	information	= Info_Mod_Aldaro_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Aldaro_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 28);
};

FUNC VOID Info_Mod_Aldaro_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);

	Info_AddChoice	(Info_Mod_Aldaro_Pickpocket, DIALOG_BACK, Info_Mod_Aldaro_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Aldaro_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Aldaro_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Aldaro_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);
};

FUNC VOID Info_Mod_Aldaro_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);

		Info_AddChoice	(Info_Mod_Aldaro_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Aldaro_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Aldaro_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Aldaro_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Aldaro_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Aldaro_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Aldaro_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Aldaro_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Aldaro_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Aldaro_EXIT (C_INFO)
{
	npc		= Mod_7674_OUT_Aldaro_EIS;
	nr		= 1;
	condition	= Info_Mod_Aldaro_EXIT_Condition;
	information	= Info_Mod_Aldaro_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Aldaro_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Aldaro_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
