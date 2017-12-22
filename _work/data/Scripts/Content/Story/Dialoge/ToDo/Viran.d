INSTANCE Info_Mod_Viran_Hi (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Hi_Condition;
	information	= Info_Mod_Viran_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ciezko pracujacy przy produkcji rdestnicy borowinowej?";
};

FUNC INT Info_Mod_Viran_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Viran_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Viran_Hi_15_00"); //Ciezko pracujacy przy produkcji rdestnicy borowinowej?
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_01"); //Tak, ale wygodniej niz gdy bylem w kolonii.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_02"); //Stalem tam od rana do nocy w bagnie i codziennie codziennie zginalem garb za guru.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_03"); //Teraz nawet ich osly moga przesunac sie na pole, aby zebrac ziolo.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_04"); //I tu moge nawet eksperymentowac przy stole alchemicznym.
	AI_Output(hero, self, "Info_Mod_Viran_Hi_15_05"); //Kiedys byles alchemikiem?
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_06"); //Uh, ne.... freelance. Tu sprzedawano troche srodków odurzajacych, tam troche skradziono.....
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_07"); //Po upadku bariery uzylem dezorientacji, aby ulatwic posiadanie Kor Kalomów na rzecz pozytecznych rzeczy.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_08"); //Cóz, nie bylo zbyt wiele zlota i rudy, ale byly jakies przepisy....
	AI_Output(hero, self, "Info_Mod_Viran_Hi_15_09"); //Jak sie tu dostales?
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_10"); //Chani uslyszal kilka guru, który powierzyl nowicjuszom z Lesteru rosnaca brudna ziemia na glebach, na które wplyw mialy magiczne wplywy.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_11"); //Powinno to znacznie zwiekszyc plony.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_12"); //Slyszalem o tym przekletym wrzosowisku w moim przed zapora, wiec wyjechalem tu z nia i Harlokiem.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_13"); //I nie zaluje, ze..... nawet jesli Harlok siada na tylku przez najdluzszy okres dnia i prawie nie pomaga.
};

INSTANCE Info_Mod_Viran_Traenke (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Traenke_Condition;
	information	= Info_Mod_Viran_Traenke_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co wiec robia eliksiry?";
};

FUNC INT Info_Mod_Viran_Traenke_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Viran_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Viran_Traenke_Info()
{
	AI_Output(hero, self, "Info_Mod_Viran_Traenke_15_00"); //Co wiec robia eliksiry?
	AI_Output(self, hero, "Info_Mod_Viran_Traenke_02_01"); //Klientowi to sie podoba. Wracam tez do nowego eliksiru.... ale brakuje mi niektórych skladników.
	AI_Output(hero, self, "Info_Mod_Viran_Traenke_15_02"); //Czego potrzebujesz?
	AI_Output(self, hero, "Info_Mod_Viran_Traenke_02_03"); //Najczesciej dzikie jagody. Tak, potrzebowalbym co najmniej pieciu z nich.
	AI_Output(self, hero, "Info_Mod_Viran_Traenke_02_04"); //Tylko one sa rzadkie.... chyba ze nie boisz sie roslin potworów.

	Log_CreateTopic	(TOPIC_MOD_VIRAN_SUMPFBEEREN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_VIRAN_SUMPFBEEREN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_VIRAN_SUMPFBEEREN, "Wiran potrzebowalby co najmniej 5 jagód do wykonania eliksiru. Powiedzial, ze sa rzadkie.... cytowal rosliny potworów jako mozliwe zródlo.");
};

INSTANCE Info_Mod_Viran_Sumpfbeeren (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Sumpfbeeren_Condition;
	information	= Info_Mod_Viran_Sumpfbeeren_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jest piec borówek bagiennych.";
};

FUNC INT Info_Mod_Viran_Sumpfbeeren_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Viran_Traenke))
	&& (Npc_HasItems(hero, ItPl_Sumpfbeeren_XR) >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Viran_Sumpfbeeren_Info()
{
	AI_Output(hero, self, "Info_Mod_Viran_Sumpfbeeren_15_00"); //Jest piec borówek bagiennych.

	B_GiveInvItems	(hero, self, ItPl_Sumpfbeeren_XR, 5);

	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren_02_01"); //Co mnie oszukujesz? Wlasciwie. Jak to sie udalo?
	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren_02_02"); //To i tak warte 500 zlotych monet. Tutaj.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren_02_03"); //Eliksir powinien byc gotowy do jutra. Masz miec go lyk.

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_VIRAN_SUMPFBEEREN, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_Viran_Sumpfbeeren_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Viran_Sumpfbeeren2 (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Sumpfbeeren2_Condition;
	information	= Info_Mod_Viran_Sumpfbeeren2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Viran_Sumpfbeeren2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Viran_Sumpfbeeren))
	&& (Wld_GetDay() > Mod_Viran_Sumpfbeeren_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Viran_Sumpfbeeren2_Info()
{
	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren2_02_00"); //Hej, eliksir jest gotowy. Wydaje mi sie, ze okazalo sie to sluszne. Spróbuj to tutaj.

	B_GiveInvItems	(self, hero, ItFo_Bruehe, 1);

	AI_Output(hero, self, "Info_Mod_Viran_Sumpfbeeren2_15_01"); //No cóz, wiec....

	B_UseItem	(hero, ItFo_Bruehe);

	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren2_02_02"); //A co?
	AI_Output(hero, self, "Info_Mod_Viran_Sumpfbeeren2_15_03"); //l--
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Viran_Sumpfbeeren3 (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Sumpfbeeren3_Condition;
	information	= Info_Mod_Viran_Sumpfbeeren3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Viran_Sumpfbeeren3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Viran_Sumpfbeeren2))
	&& (Mod_SumpfbeerenTraum == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Viran_Sumpfbeeren3_Info()
{
	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren3_02_00"); //Czy jestes w porzadku?
	AI_Output(hero, self, "Info_Mod_Viran_Sumpfbeeren3_15_01"); //Olsniewajacy metal przynosi smierc.... Zbawienie przez to, co zostalo wyrwane z piersia torfowiska.... Wiecej
	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren3_02_02"); //Och, czlowiek, to bylo troche zbyt intensywne.
	AI_Output(hero, self, "Info_Mod_Viran_Sumpfbeeren3_15_03"); //(znów) Co? Uh, nie, jestem juz teraz. Mialem po prostu dziwne marzenie.
	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren3_02_04"); //Po takim piciu, bylbym zaskoczony, gdyby marzenia nie spelnily sie, huh? Bez twardych uczuc.
	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren3_02_05"); //Umiesc eliksir na mojej liscie.
};

INSTANCE Info_Mod_Viran_Wasserleichen (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Wasserleichen_Condition;
	information	= Info_Mod_Viran_Wasserleichen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Viran_Wasserleichen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Wasserleichen2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Viran_Wasserleichen_Info()
{
	AI_Output(self, hero, "Info_Mod_Viran_Wasserleichen_02_00"); //Hej, nie ma juz nieumarlych w 100 krokach.... to wlasnie nazywam czysta praca.
	AI_Output(self, hero, "Info_Mod_Viran_Wasserleichen_02_01"); //Bez utopionego trupu mamy o jeden problem z pielegnacja chwastów bagiennych.
	AI_Output(self, hero, "Info_Mod_Viran_Wasserleichen_02_02"); //Tutaj wezcie ten przepis jako male podziekowania.

	B_GiveInvItems	(self, hero, ItWr_Rezept_Purpurmond, 1);

	AI_Output(self, hero, "Info_Mod_Viran_Wasserleichen_02_03"); //Ale nie badz zbyt chciwy...... Czy wystarczy jedna fiolka do pieknych marzen, huh?

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Viran_Pickpocket (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Pickpocket_Condition;
	information	= Info_Mod_Viran_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Viran_Pickpocket_Condition()
{
	C_Beklauen	(20, ItPl_SwampHerb, 13);
};

FUNC VOID Info_Mod_Viran_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Viran_Pickpocket);

	Info_AddChoice	(Info_Mod_Viran_Pickpocket, DIALOG_BACK, Info_Mod_Viran_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Viran_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Viran_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Viran_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Viran_Pickpocket);
};

FUNC VOID Info_Mod_Viran_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Viran_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Viran_Pickpocket);

		Info_AddChoice	(Info_Mod_Viran_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Viran_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Viran_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Viran_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Viran_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Viran_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Viran_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Viran_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Viran_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Viran_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Viran_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Viran_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Viran_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Viran_EXIT (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_EXIT_Condition;
	information	= Info_Mod_Viran_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Viran_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Viran_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
