INSTANCE Info_Mod_Hanna_Hi (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Hi_Condition;
	information	= Info_Mod_Hanna_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie jestem tutaj?";
};

FUNC INT Info_Mod_Hanna_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hanna_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Hanna_Hi_15_00"); //Gdzie jestem tutaj?
	AI_Output(self, hero, "Info_Mod_Hanna_Hi_21_01"); //W moim obszarze uslug. Jesli szukasz miejsca na nocleg, zapraszamy.
};

INSTANCE Info_Mod_Hanna_Preis (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Preis_Condition;
	information	= Info_Mod_Hanna_Preis_Info;
	permanent	= 0;
	important	= 0;
	description	= "W zaleznosci od. Ile chcesz?";
};

FUNC INT Info_Mod_Hanna_Preis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hanna_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hanna_Meldor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_Preis_Info()
{
	AI_Output(hero, self, "Info_Mod_Hanna_Preis_15_00"); //W zaleznosci od. Ile chcesz?
	AI_Output(self, hero, "Info_Mod_Hanna_Preis_21_01"); //Hmm..... Jestes nowym facetem z Minental i prawdopodobnie nie jestes pelen kieszeni.
	AI_Output(self, hero, "Info_Mod_Hanna_Preis_21_02"); //Jesli jestes spokojny i znajdziesz bezplatne lózko, mozesz zostac na noc za darmo.
	AI_Output(hero, self, "Info_Mod_Hanna_Preis_15_03"); //To mile zaskoczenie. Ostatnio nie mialem ich zbyt wiele.
	AI_Output(self, hero, "Info_Mod_Hanna_Preis_21_04"); //Moge byc tak hojny tylko dlatego, ze jestem finansowo niezalezny od reszty domu.
	AI_Output(self, hero, "Info_Mod_Hanna_Preis_21_05"); //(Tlo) Ale potem byc moze innym razem moze wiecej....
};

INSTANCE Info_Mod_Hanna_Gaeste (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Gaeste_Condition;
	information	= Info_Mod_Hanna_Gaeste_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kto jeszcze pozostaje tu dzis wieczorem?";
};

FUNC INT Info_Mod_Hanna_Gaeste_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hanna_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hanna_Meldor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_Gaeste_Info()
{
	AI_Output(hero, self, "Info_Mod_Hanna_Gaeste_15_00"); //Kto jeszcze pozostaje tu dzis wieczorem?
	AI_Output(self, hero, "Info_Mod_Hanna_Gaeste_21_01"); //Wlasciwie kazdy, kto przychodzi z zewnatrz i nie ma ochoty spedzac czasu w czerwonej latarni.
	AI_Output(self, hero, "Info_Mod_Hanna_Gaeste_21_02"); //Niemniej jednak zdarza sie bardzo rzadko, ze nie znam swoich klientów. To zawsze te same twarze, które sa mniej lub bardziej pijane wieczorami.
};

INSTANCE Info_Mod_Hanna_Rasthaus (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Rasthaus_Condition;
	information	= Info_Mod_Hanna_Rasthaus_Info;
	permanent	= 0;
	important	= 0;
	description	= "Twój obszar uslug? Nie masz meza?";
};

FUNC INT Info_Mod_Hanna_Rasthaus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hanna_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hanna_Meldor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_Rasthaus_Info()
{
	AI_Output(hero, self, "Info_Mod_Hanna_Rasthaus_15_00"); //Twój obszar uslug? Nie masz meza?
	AI_Output(self, hero, "Info_Mod_Hanna_Rasthaus_21_01"); //(smiesznie) Przypuszczam, ze jestes z kregoslupa, jesli nie sadzisz, ze zrozpaczeniem jest zadawanie tego rodzaju pytan.
	AI_Output(self, hero, "Info_Mod_Hanna_Rasthaus_21_02"); //Potrafie radzic sobie bardzo dobrze na wlasna reke, a w sytuacji kryzysowej wiem jak zorganizowac pomoc. A w przypadku drobnych problemów to zawsze bicie.
};

INSTANCE Info_Mod_Hanna_ThorbenLehrling (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_ThorbenLehrling_Condition;
	information	= Info_Mod_Hanna_ThorbenLehrling_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hanna_ThorbenLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thorben_LehrlingQuest5))
	&& (Wld_IsTime(10,55,11,25))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_ThorbenLehrling_Info()
{
	AI_Output(self, hero, "Info_Mod_Hanna_ThorbenLehrling_21_00"); //Witaj. Chcialbym zobaczyc Thorben.
	AI_Output(hero, self, "Info_Mod_Hanna_ThorbenLehrling_15_01"); //Reprezentuje go dzisiaj. Chcesz zamówic mebel?
	AI_Output(self, hero, "Info_Mod_Hanna_ThorbenLehrling_21_02"); //Zdaje sie, ze dobrze. Pijany gosc zabral mi pijana komode na nocnego napastnika i mocno uszkodzil mieczem.
	AI_Output(hero, self, "Info_Mod_Hanna_ThorbenLehrling_15_03"); //Zajmiemy sie naprawami.
	AI_Output(self, hero, "Info_Mod_Hanna_ThorbenLehrling_21_04"); //Dobre. Bede czekac na Ciebie w moim domu.
};

INSTANCE Info_Mod_Hanna_Meldor (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Meldor_Condition;
	information	= Info_Mod_Hanna_Meldor_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hanna_Meldor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_PaketSicher))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_Meldor_Info()
{
	AI_Output(self, hero, "Info_Mod_Hanna_Meldor_21_00"); //Co moge dla Ciebie zrobic?
	AI_Output(hero, self, "Info_Mod_Hanna_Meldor_15_01"); //Przyslala mi jastrzab bagienny.
	AI_Output(self, hero, "Info_Mod_Hanna_Meldor_21_02"); //Ach, nowy facet, huh?
	AI_Output(hero, self, "Info_Mod_Hanna_Meldor_15_03"); //Jaki jestes facetem?
	AI_Output(self, hero, "Info_Mod_Hanna_Meldor_21_04"); //Wez ten klucz i przejdz przez drzwi piwnicy.

	B_GiveInvItems	(self, hero, ItKe_ThiefGuildKey_Hotel_MIS, 1);

	AI_Output(self, hero, "Info_Mod_Hanna_Meldor_21_05"); //Tutaj znajdziesz odpowiedz.

	B_LogEntry	(TOPIC_MOD_MELDOR_HANNA, "Hanna dala mi klucz, który otwiera drzwi do piwnicy. Zastanawiam sie, co mnie tam czeka.");
};

INSTANCE Info_Mod_Hanna_Keller (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Keller_Condition;
	information	= Info_Mod_Hanna_Keller_Info;
	permanent	= 0;
	important	= 0;
	description	= "Istnieja problemy.";
};

FUNC INT Info_Mod_Hanna_Keller_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Keller))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_Keller_Info()
{
	AI_Output(hero, self, "Info_Mod_Hanna_Keller_15_00"); //Istnieja problemy.
	AI_Output(self, hero, "Info_Mod_Hanna_Keller_21_01"); //Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_Hanna_Keller_15_02"); //Jeden z kupców zauwazyl noca, ze z piwnicy wyszlo kilka postaci. Lepiej obserwowac swój krok.
	AI_Output(self, hero, "Info_Mod_Hanna_Keller_21_03"); //Dzieki temu zrobimy to.

	B_LogEntry	(TOPIC_MOD_DIEB_ANDRE_HANNA, "Ostrzeglem Hanne. Mam nadzieje, ze to sie nie powtórzy.");
};

INSTANCE Info_Mod_Hanna_Flugblaetter (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Flugblaetter_Condition;
	information	= Info_Mod_Hanna_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Hanna_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Hanna_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hanna_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Hanna_Flugblaetter_21_01"); //Dziekuje, dziekuje. Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Hanna_Flugblaetter_21_02"); //Ah tak. Moze zatrzymam sie przy Matteo' s.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Hanna_Pickpocket (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_Pickpocket_Condition;
	information	= Info_Mod_Hanna_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90_Female;
};

FUNC INT Info_Mod_Hanna_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Hanna_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);

	Info_AddChoice	(Info_Mod_Hanna_Pickpocket, DIALOG_BACK, Info_Mod_Hanna_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hanna_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hanna_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hanna_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);
};

FUNC VOID Info_Mod_Hanna_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);

		Info_AddChoice	(Info_Mod_Hanna_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hanna_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hanna_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hanna_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hanna_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hanna_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hanna_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hanna_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hanna_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hanna_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hanna_EXIT (C_INFO)
{
	npc		= Mod_583_NONE_Hanna_NW;
	nr		= 1;
	condition	= Info_Mod_Hanna_EXIT_Condition;
	information	= Info_Mod_Hanna_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hanna_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hanna_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
