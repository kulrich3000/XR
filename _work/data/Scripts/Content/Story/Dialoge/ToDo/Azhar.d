INSTANCE Info_Mod_Azhar_Hi (C_INFO)
{
	npc		= Mod_7138_ASS_Azhar_NW;
	nr		= 1;
	condition	= Info_Mod_Azhar_Hi_Condition;
	information	= Info_Mod_Azhar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj! No cóz, wyslal mnie. Musisz miec problem.";
};

FUNC INT Info_Mod_Azhar_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Naim_Hi))
	&& (Mod_ASS_Krieger == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Azhar_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Azhar_Hi_15_00"); //Witaj! No cóz, wyslal mnie. Musisz miec problem.
	AI_Output(self, hero, "Info_Mod_Azhar_Hi_04_01"); //Co oni mówia. To nic. Tak czy owak, nie w tej chwili. Moze pózniej.
	AI_Output(hero, self, "Info_Mod_Azhar_Hi_15_02"); //Widze. Do zobaczenia dookola.
};

INSTANCE Info_Mod_Azhar_Later (C_INFO)
{
	npc		= Mod_7138_ASS_Azhar_NW;
	nr		= 1;
	condition	= Info_Mod_Azhar_Later_Condition;
	information	= Info_Mod_Azhar_Later_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Azhar_Later_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Azhar_Hi))
	&& (Mod_ASS_Krieger == 1)
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Azhar_Later_Info()
{
	AI_Output(self, hero, "Info_Mod_Azhar_Later_04_00"); //Beliar! Gdzie sie skradasz?
	AI_Output(hero, self, "Info_Mod_Azhar_Later_15_01"); //Sa jeszcze inne rzeczy, które trzeba zrobic. Gdzie jest ogien?
	AI_Output(self, hero, "Info_Mod_Azhar_Later_04_02"); //Zrobienie czegos innego? Oczekuje, ze pretendent do wojny bedzie w pelni przygotowany.
	AI_Output(self, hero, "Info_Mod_Azhar_Later_04_03"); //Zastanawiam sie, jak pan to zrobil tak daleko.
	AI_Output(hero, self, "Info_Mod_Azhar_Later_15_04"); //Oczywiscie w pelnej gotowosci. Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Azhar_Later_04_05"); //Istnieje plotka, ze na wyspie znajduje sie jeden z legendarnych sztyletów ceremonialnych starozytnosci.
	AI_Output(hero, self, "Info_Mod_Azhar_Later_15_06"); //Sztylet ceremonialny? Nigdy o tym nie slyszalem. Co.....?
	AI_Output(self, hero, "Info_Mod_Azhar_Later_04_07"); //Wylaczyc! Znajdz to i przynies to do mnie, albo twoja kariera z nami wojownicy sie skonczy!
	AI_Output(hero, self, "Info_Mod_Azhar_Later_15_08"); //Nie badz podekscytowany. Przynajmniej musze wiedziec, skad ta plotka pochodzi.
	AI_Output(self, hero, "Info_Mod_Azhar_Later_04_09"); //Amir slyszal cos takiego w miescie. Teraz wyjdz z tego miejsca!

	Log_CreateTopic	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, "Cóz za niewygodny czlowiek, Azhar. Mialem go dostac ceremonialnym sztyletem, bronia starozytnosci, która ma znalezc sie gdzies w Khorinis. Amir przyniósl plotke do obozu, moze szczególy. Powinna znajdowac sie na miejscu swiatyni......");
};

INSTANCE Info_Mod_Azhar_Blutkelch (C_INFO)
{
	npc		= Mod_7138_ASS_Azhar_NW;
	nr		= 1;
	condition	= Info_Mod_Azhar_Blutkelch_Condition;
	information	= Info_Mod_Azhar_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Beliar, brat!";
};

FUNC INT Info_Mod_Azhar_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erol_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Azhar_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Azhar_Blutkelch_15_00"); //Beliar, brat!
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_01"); //Brat? Jestem nadal twoim przelozonym. Czy zdobyles puchar?
	AI_Output(hero, self, "Info_Mod_Azhar_Blutkelch_15_02"); //Nie. Ale czy inny zabójca moze juz cos nabyl?
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_03"); //Nie wiem o tym. Nikt mi jej i tak nie dal.
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_04"); //Byc moze Mustafa ma juz kubek. Wydal rozkaz.
	AI_Output(hero, self, "Info_Mod_Azhar_Blutkelch_15_05"); //która natychmiast mi przekazaliscie.
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_06"); //Nie badz niegrzeczny, chlopak! Powiedzial pan, ze chce pan mojego glosu.
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_07"); //Oczywiscie nie dostaniesz go, gdy kielich jest juz w magazynie.
	AI_Output(hero, self, "Info_Mod_Azhar_Blutkelch_15_08"); //Ale przez cale dni chodzilem po calej wyspie.
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_09"); //Zbyt zle dla Ciebie. Teraz porozmawiaj z szefem.
	AI_Output(hero, self, "Info_Mod_Azhar_Blutkelch_15_10"); //Masz na mysli Rade Mustafe?
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_11"); //Kto jeszcze inny? Chodz, spiesz sie.

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Pytam sie z Mustafa, czy puchar zostal juz do niego przyniesiony.");
};

INSTANCE Info_Mod_Azhar_Pickpocket (C_INFO)
{
	npc		= Mod_7138_ASS_Azhar_NW;
	nr		= 1;
	condition	= Info_Mod_Azhar_Pickpocket_Condition;
	information	= Info_Mod_Azhar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Azhar_Pickpocket_Condition()
{
	C_Beklauen	(178, ItMi_Gold, 109);
};

FUNC VOID Info_Mod_Azhar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);

	Info_AddChoice	(Info_Mod_Azhar_Pickpocket, DIALOG_BACK, Info_Mod_Azhar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Azhar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Azhar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Azhar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);
};

FUNC VOID Info_Mod_Azhar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);

		Info_AddChoice	(Info_Mod_Azhar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Azhar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Azhar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Azhar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Azhar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Azhar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Azhar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Azhar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Azhar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Azhar_EXIT (C_INFO)
{
	npc		= Mod_7138_ASS_Azhar_NW;
	nr		= 1;
	condition	= Info_Mod_Azhar_EXIT_Condition;
	information	= Info_Mod_Azhar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Azhar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Azhar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
