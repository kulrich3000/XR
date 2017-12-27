var int MerkLebenspunkteBartok;
var int MerkLebenspunkteHeldBartok;

INSTANCE Info_Mod_Bartok_Bromor (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Bromor_Condition;
	information	= Info_Mod_Bartok_Bromor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze, ze nie chcesz placic.";
};

FUNC INT Info_Mod_Bartok_Bromor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Bilgot))
	&& (Mod_BilgotBromorBartok == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Bromor_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Bromor_15_00"); //Slysze, ze nie chcesz placic.

	Mod_BartokZufallZahlen = r_max(99);

	if (Mod_BartokZufallZahlen >= 80)
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Bromor_04_01"); //Dlaczego bys to zrobil? Oto pieniadze.

		B_GiveInvItems	(self, hero, ItMi_Gold, 500);

		Mod_BilgotBromorBartok = 1;

		B_Göttergefallen(2, 1);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Bromor_04_02"); //Tak, dlaczego powinienem placic?
		AI_Output(hero, self, "Info_Mod_Bartok_Bromor_15_03"); //Bo jesli tego nie zrobisz, to odrobine twarzy.
		AI_Output(self, hero, "Info_Mod_Bartok_Bromor_04_04"); //Cóz, poczekaj.

		AI_StopProcessInfos	(self);

		B_Attack	(self, hero, AR_NONE, 1);
	};
};

INSTANCE Info_Mod_Bartok_Umgehauen (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Umgehauen_Condition;
	information	= Info_Mod_Bartok_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartok_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartok_Bromor))
	&& (Mod_BilgotBromorBartok == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Bartok_Umgehauen_04_00"); //Jezu Chryste! Dostales na ciebie pieklo ponczu. Oto zloto.

			Mod_BilgotBromorBartok = 1;

			Mod_BartokUeberzeugt = 1;

			B_GiveInvItems	(self, hero, ItMi_Gold, 500);

			B_Göttergefallen(1, 1);
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Bartok_Umgehauen_04_01"); //No cóz, to bylo nic.
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};

	CreateInvItems	(self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

INSTANCE Info_Mod_Bartok_Arbeite (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Arbeite_Condition;
	information	= Info_Mod_Bartok_Arbeite_Info;
	permanent	= 0;
	important	= 0;
	description	= "Scar wyslal mnie.";
};

FUNC INT Info_Mod_Bartok_Arbeite_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Scar_Jagdtrophaeen_SollIch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Arbeite_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_15_00"); //Scar wyslal mnie. Chce, zebyscie ponownie poszli na polowania.
	AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_04_01"); //Dlaczego bym to zrobil?
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_15_02"); //bo

	Info_ClearChoices	(Info_Mod_Bartok_Arbeite);

	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "... albo wbije twarz.", Info_Mod_Bartok_Arbeite_AufsMaul);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "... Daje Ci na to pieniadze.", Info_Mod_Bartok_Arbeite_Geld);
};

FUNC VOID Info_Mod_Bartok_Arbeite_AufsMaul()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_AufsMaul_15_00"); //... albo wbije twarz.
	AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_AufsMaul_04_01"); //Chce to zobaczyc.

	var int MerkLebenspunkteBartok;
	var int MerkLebenspunkteHeldBartok;

	MerkLebenspunkteBartok	=	self.attribute[ATR_HITPOINTS];
	MerkLebenspunkteHeldBartok	=	hero.attribute[ATR_HITPOINTS];

	AI_StopProcessInfos	(self);
	B_Attack	(self, hero, AR_NONE, 1);
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_15_00"); //... Daje Ci na to pieniadze.
	AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_04_01"); //Ile dajesz mi pieniedzy?

	Info_ClearChoices	(Info_Mod_Bartok_Arbeite);

	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "Nic nie ma nic.", Info_Mod_Bartok_Arbeite_Geld_Nichts);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "1.000 zlota.", Info_Mod_Bartok_Arbeite_Geld_1000);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "500 zlota.", Info_Mod_Bartok_Arbeite_Geld_500);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "200 zlota.", Info_Mod_Bartok_Arbeite_Geld_200);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "100 zlota.", Info_Mod_Bartok_Arbeite_Geld_100);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "50 zlota.", Info_Mod_Bartok_Arbeite_Geld_50);
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld_Nichts()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_Nichts_15_00"); //Nic nie ma nic.

	Info_ClearChoices	(Info_Mod_Bartok_Arbeite);

	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "... albo wbije twarz.", Info_Mod_Bartok_Arbeite_AufsMaul);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "... Daje Ci na to pieniadze.", Info_Mod_Bartok_Arbeite_Geld);
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld_1000()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_1000_15_00"); //1.000 zlotych monet.
	
	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_1000_04_01"); //Wszystkie sluszne, wszystkie sluszne. Daj mi zloto.
		AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_1000_15_02"); //Tutaj jest tutaj.

		B_GiveInvItems	(hero, self, ItMi_Gold, 1000);

		Mod_BartokUeberzeugt = 1;

		B_Göttergefallen(2, 1);

		Info_ClearChoices	(Info_Mod_Bartok_Arbeite);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_1000_04_03"); //Zaczeliscie mnie oszukiwac. Nie masz 1000 zlotych monet. Cóz, poczekaj.

		MerkLebenspunkteBartok	=	self.attribute[ATR_HITPOINTS];
		MerkLebenspunkteHeldBartok	=	hero.attribute[ATR_HITPOINTS];

		AI_StopProcessInfos	(self);
		B_Attack	(self, hero, AR_NONE, 1);
	};
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld_500()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_500_15_00"); //500 zlotych monet.
	
	if (Npc_HasItems(hero, ItMi_Gold) >= 500)
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_500_04_01"); //Wszystkie sluszne, wszystkie sluszne. Daj mi zloto.
		AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_500_15_02"); //Tutaj jest tutaj.

		B_GiveInvItems	(hero, self, ItMi_Gold, 500);

		Mod_BartokUeberzeugt = 1;

		B_Göttergefallen(2, 1);

		Info_ClearChoices	(Info_Mod_Bartok_Arbeite);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_500_04_03"); //Zaczeliscie mnie oszukiwac. Nie masz 500 zlotych monet. Cóz, poczekaj.

		AI_StopProcessInfos	(self);
		B_Attack	(self, hero, AR_NONE, 1);
	};
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld_200()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_200_15_00"); //200 zlotych monet.
	
	if (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_200_04_01"); //Wszystkie sluszne, wszystkie sluszne. Ale to równiez jest minimum. Daj mi zloto.
		AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_200_15_02"); //Tutaj jest tutaj.

		B_GiveInvItems	(hero, self, ItMi_Gold, 200);

		Mod_BartokUeberzeugt = 1;

		B_Göttergefallen(2, 1);

		Info_ClearChoices	(Info_Mod_Bartok_Arbeite);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_200_04_03"); //Zaczeliscie mnie oszukiwac. Nie masz 200 zlotych monet. Cóz, poczekaj.

		AI_StopProcessInfos	(self);
		B_Attack	(self, hero, AR_NONE, 1);
	};
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld_100()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_100_15_00"); //100 zlotych monet.

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_100_04_01"); //Daj mi najpierw zloto.
		AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_100_15_02"); //Tutaj jest tutaj.

		B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_100_04_03"); //Zmienilam zdanie. Nie wracam do pracy.
		
		if (Npc_HasItems(hero, ItMi_Gold) >= 1)
		{
			AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_100_04_04"); //Dostane reszte Twojego zlota.

			AI_StopProcessInfos	(self);
			B_Attack	(self, hero, AR_NONE, 1);
		}
		else
		{
			AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_100_15_05"); //Lysy oszukujesz. Poczekaj, pokaze ci.

			AI_StopProcessInfos	(self);
			B_Attack	(self, hero, AR_NONE, 1);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_100_04_06"); //Zaczeliscie mnie oszukiwac. Nie masz 100 zlotych monet. Cóz, poczekaj.

		AI_StopProcessInfos	(self);
		B_Attack	(self, hero, AR_NONE, 1);
	};
};

FUNC VOID Info_Mod_Bartok_Arbeite_Geld_50()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Arbeite_Geld_50_15_00"); //50 zlotych monet.
	AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_Geld_50_04_01"); //Czy kochasz mnie? Nie podnose palców za 50 zlotych monet.

	Info_ClearChoices	(Info_Mod_Bartok_Arbeite);

	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "Nic nie ma nic.", Info_Mod_Bartok_Arbeite_Geld_Nichts);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "1.000 zlota.", Info_Mod_Bartok_Arbeite_Geld_1000);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "500 zlota.", Info_Mod_Bartok_Arbeite_Geld_500);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "200 zlota.", Info_Mod_Bartok_Arbeite_Geld_200);
	Info_AddChoice	(Info_Mod_Bartok_Arbeite, "100 zlota.", Info_Mod_Bartok_Arbeite_Geld_100);
};

INSTANCE Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt_Condition;
	information	= Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartok_Arbeite))
	{	
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt_04_00"); //Jezu Chryste! Dostales na ciebie pieklo ponczu.

			Mod_BartokUeberzeugt = 1;

			B_Göttergefallen(3, 1);
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Bartok_Arbeite_AufsMaul_Gekriegt_04_01"); //No cóz, to bylo nic.

			Mod_KampfGegenBartokVerloren = 1;
		};		
					
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};

	CreateInvItems	(self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

INSTANCE Info_Mod_Bartok_ArbeiteWieder (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_ArbeiteWieder_Condition;
	information	= Info_Mod_Bartok_ArbeiteWieder_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy znów pracujesz?";
};

FUNC INT Info_Mod_Bartok_ArbeiteWieder_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartok_Arbeite))
	&& ((Mod_BartokUeberzeugt == 1)
	|| ((Wld_GetDay() > Mod_SonjaHilftGegenBartok)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sonja_Bartok))))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_ArbeiteWieder_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_ArbeiteWieder_15_00"); //Czy znów pracujesz?
	AI_Output(self, hero, "Info_Mod_Bartok_ArbeiteWieder_04_01"); //Tak. Bede w drodze od razu.

	B_StartOtherRoutine	(self,"ERWISCHT");
	B_StartOtherRoutine	(Mod_7115_NONE_Nadja_NW, "DOWN");

	Mod_BilgotBromorBartok = 1;

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(50);

	if (Npc_KnowsInfo(hero, Info_Mod_Sonja_Bartok))
	{
		B_StartOtherRoutine	(Mod_752_NONE_Sonja_NW, "START");
	};

	self.flags = 2;

	B_LogEntry	(TOPIC_MOD_FAULERJÄGER, "Udalo mi sie przekonac Bartoka do pracy.");
};

INSTANCE Info_Mod_Bartok_Stimme (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Stimme_Condition;
	information	= Info_Mod_Bartok_Stimme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tak wiec po kobietach, piwo teraz.";
};

FUNC INT Info_Mod_Bartok_Stimme_Condition()
{
	if (Mod_BartokUeberzeugt == 1)
	&& (Npc_GetDistToWP(self, "NW_CITY_BEER_04") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Stimme_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Stimme_15_00"); //Tak wiec po kobietach, piwo teraz.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_04_01"); //Dzis ciezko pracowales, wiesz. Bede teraz bijatykiem.
	AI_Output(hero, self, "Info_Mod_Bartok_Stimme_15_02"); //Co wziales/as?
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_04_03"); //Hihi. Co byloby fajne? Garnitur!
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_04_04"); //Nie trzeba dodawac, ze nie pala sie latwo i tak dalej.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_04_05"); //Ale jesli jestes w drodze i nie masz nic do zrobienia, mozesz po prostu skrecic trzonek z rekawa.
	AI_Output(hero, self, "Info_Mod_Bartok_Stimme_15_06"); //Wkrótce z waszej zbroi juz nic nie pozostanie.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_04_07"); //Bede mial nowy. Hihi.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_04_08"); //Jestem powazna, bracie, dostaje zbroje, a ty jestes bogatym czlowiekiem.

	Info_ClearChoices	(Info_Mod_Bartok_Stimme);

	Info_AddChoice	(Info_Mod_Bartok_Stimme, "Moge to zrobic.", Info_Mod_Bartok_Stimme_B);
	Info_AddChoice	(Info_Mod_Bartok_Stimme, "Nie myslisz.", Info_Mod_Bartok_Stimme_A);
};

FUNC VOID Info_Mod_Bartok_Stimme_B()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Stimme_B_15_00"); //Moge to zrobic.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_B_04_01"); //Po prostu powiedz Haradowi, zeby sie tym zajac.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_B_04_02"); //Oto moje oszczednosci. Chce, zeby pomyslal o czyms przyzwoitym.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1000);

	Log_CreateTopic	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, "Bartok obiecal mi bogactwo, kiedy udalem sie do Haradu i wlozylem jego oszczednosci w zbroje bagnista.");

	Info_ClearChoices	(Info_Mod_Bartok_Stimme);

	Mod_Bartok_Ruestung_Day = 1;
};

FUNC VOID Info_Mod_Bartok_Stimme_A()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Stimme_A_15_00"); //Nie myslisz.
	AI_Output(self, hero, "Info_Mod_Bartok_Stimme_A_04_01"); //Nazywam to filozofia. (smiertelnicy)

	Info_ClearChoices	(Info_Mod_Bartok_Stimme);
};

INSTANCE Info_Mod_Bartok_Ruestung (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Ruestung_Condition;
	information	= Info_Mod_Bartok_Ruestung_Info;
	permanent	= 0;
	important	= 0;
	description	= "W najblizszym czasie pancerz bedzie gotowy.";
};

FUNC INT Info_Mod_Bartok_Ruestung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Sumpfkrautruestung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Ruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_Ruestung_15_00"); //W najblizszym czasie pancerz bedzie gotowy.
	AI_Output(self, hero, "Info_Mod_Bartok_Ruestung_04_01"); //Jaki pancerz?
	AI_Output(hero, self, "Info_Mod_Bartok_Ruestung_15_02"); //Nie pamietasz? Zbroja chwastów?
	AI_Output(self, hero, "Info_Mod_Bartok_Ruestung_04_03"); //Paliles lub paliles? Nigdy nie slyszalem o bieliznie ziól bagiennych. I nie chce o tym slyszec.
	AI_Output(self, hero, "Info_Mod_Bartok_Ruestung_04_04"); //Moja pieprzaca glowa jest brzeczy i cale moje zloto zniknelo. Juz na razie to wystarczy.

	Mod_Bartok_Ruestung_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Bartok_ImPuff (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_ImPuff_Condition;
	information	= Info_Mod_Bartok_ImPuff_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cóz, co pan tutaj robi?";
};

FUNC INT Info_Mod_Bartok_ImPuff_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Bartok_ArbeiteWieder))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_ImPuff_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_ImPuff_15_00"); //Cóz, co pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Bartok_ImPuff_04_01"); //Co uwazasz, ze robisz w domu dziecka? Jeszcze jedno pytanie i rozbiore Twoja twarz!
};

INSTANCE Info_Mod_Bartok_Lehrer (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Lehrer_Condition;
	information	= Info_Mod_Bartok_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Bartok_Lehrer_Condition()
{
	if (Mod_BartokUeberzeugt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Bartok_Lehrer_04_01"); //Potrafie pokazac, jak skórowac zwierzeta.
};

INSTANCE Info_Mod_Bartok_HautAbziehen (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_HautAbziehen_Condition;
	information	= Info_Mod_Bartok_HautAbziehen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Na co musze zwrócic uwage przy skórowaniu gadów? (4 LP)";
};

FUNC INT Info_Mod_Bartok_HautAbziehen_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		 Info_Mod_Bartok_HautAbziehen.description = "Na co musze zwrócic uwage przy skórowaniu gadów? (400 zloto)";
	}
	else
	{
		 Info_Mod_Bartok_HautAbziehen.description = "Na co musze zwrócic uwage przy skórowaniu gadów? (4 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Bartok_Lehrer))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ReptileSkin] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartok_HautAbziehen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartok_HautAbziehen_15_00"); //Na co musze zwrócic uwage przy skórowaniu gadów?

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, other, TROPHY_ReptileSkin))
	{
		AI_Output(self, hero, "Info_Mod_Bartok_HautAbziehen_04_01"); //Po przecieciu skóry po bokach, skóra sie rozprezy. Od teraz nie powinno sie miec problemu z skórowaniem jaszczurek.
	};
};

INSTANCE Info_Mod_Bartok_Pickpocket (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_Pickpocket_Condition;
	information	= Info_Mod_Bartok_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Bartok_Pickpocket_Condition()
{
	C_Beklauen	(50, ItAt_Teeth, 3);
};

FUNC VOID Info_Mod_Bartok_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);

	Info_AddChoice	(Info_Mod_Bartok_Pickpocket, DIALOG_BACK, Info_Mod_Bartok_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bartok_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bartok_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bartok_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);
};

FUNC VOID Info_Mod_Bartok_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);

		Info_AddChoice	(Info_Mod_Bartok_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bartok_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bartok_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bartok_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bartok_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bartok_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bartok_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bartok_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bartok_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bartok_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bartok_EXIT (C_INFO)
{
	npc		= Mod_519_SNOV_Bartok_NW;
	nr		= 1;
	condition	= Info_Mod_Bartok_EXIT_Condition;
	information	= Info_Mod_Bartok_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bartok_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bartok_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
