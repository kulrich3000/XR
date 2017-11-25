INSTANCE Info_Mod_HofstaatWeiberheld_Hi (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_Hi_Condition;
	information	= Info_Mod_HofstaatWeiberheld_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatWeiberheld_Hi_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Sabine_Heiraten_01))
	|| (Npc_KnowsInfo(hero, Info_Mod_HFFrau_Heiraten_01)))
	&& (Mod_HS_DarfZuKing == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_00"); //Nie bedziesz mial szczescia z kobietami....
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_01"); //Co?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_02"); //Dzielnicowe kobiety nie sa jak kobiety, które znamy.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_03"); //Kim tak czy owak jestes?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_04"); //Jestem kobieciarzem królewskim. I prosze mi wierzyc, kobiety, które znasz, róznia sie od kobiet w tym kraju!
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_05"); //W jaki sposób?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_06"); //.... Kobiety dworskie sa rózne.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_07"); //Tak, slyszalem to duzo, ale jak sie róznia od innych kobiet?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_08"); //Kobiety?
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_09"); //Tak.....
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_10"); //Ach, tak samo.... Napisalem ksiazke.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_11"); //Dobre dla Ciebie....
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_12"); //Zawiera ona wszystkie cechy szczególne dworskich kobiet panstwowych.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_13"); //Czy sprzedasz mi go?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_14"); //Wszystko w porzadku.... ale patrze, jestem pieklem szamana.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_15"); //Ile chcesz?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_16"); //32 miliardy 435 milionów 684 tysiecy 341 sztuk zlota.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_15_17"); //Niewielka zawyzona cena....
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_27_18"); //Wszystko w porzadku.... Dwa kawalki zlota.

	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

	Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Nadal zbyt wiele....", Info_Mod_HofstaatWeiberheld_Hi_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 2)
	{
		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Kupiony.", Info_Mod_HofstaatWeiberheld_Hi_A);
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_D_15_00"); //Nadal zbyt wiele....

	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_C_15_00"); //Kupiony.
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_C_27_01"); //(smiech) Ale wzialem cie za stól.

	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_B()
{
	Info_Mod_HofstaatWeiberheld_Hi_D();

	if (Hlp_Random(100) < Mod_Verhandlungsgeschick)
	{
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_B_27_00"); //Wszystko w porzadku.... Daje Ci 100 zlota i ksiazke.

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Nadal zbyt wiele....", Info_Mod_HofstaatWeiberheld_Hi_F);
		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Kupiony.", Info_Mod_HofstaatWeiberheld_Hi_E);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_B_27_01"); //Nie, nie, nie, musi byc tak wiele.

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Kupiony.", Info_Mod_HofstaatWeiberheld_Hi_E);
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_A()
{
	B_GiveInvItems	(hero, self, ItMi_Gold, 2);

	B_GiveInvItems	(self, hero, ItWr_HSBook, 1);

	Info_Mod_HofstaatWeiberheld_Hi_C();
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_F()
{
	Info_Mod_HofstaatWeiberheld_Hi_D();

	if (Hlp_Random(100) < Mod_Verhandlungsgeschick)
	{
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_F_27_00"); //Wszystko w porzadku.... Uh, dostajesz mój dom, ksiazke i 100 sztuk zlota!

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Nadal zbyt wiele....", Info_Mod_HofstaatWeiberheld_Hi_H);
		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Zakupione....", Info_Mod_HofstaatWeiberheld_Hi_G);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_F_27_01"); //Nie, to wystarczy!

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Zakupione....", Info_Mod_HofstaatWeiberheld_Hi_G);
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_E()
{
	B_ShowGivenThings	("100 Zloto i otrzymana ksiazka");

	CreateInvItems	(hero, ItMi_Gold, 100);
	CreateInvItems	(hero, ItWr_HSBook, 1);

	Info_Mod_HofstaatWeiberheld_Hi_C();
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_H()
{
	Info_Mod_HofstaatWeiberheld_Hi_D();

	if (Hlp_Random(100) < Mod_Verhandlungsgeschick)
	{
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_H_27_00"); //Gaaaaaaaaaahrr! Dobrze, dam ci moja ksiazke, zloto, dom, a poslubie cie!
		AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_H_15_01"); //WAS?!
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_H_27_02"); //Chcesz miec obywatelstwo, czy nie? Mezczyzni moga równiez poslubic w Relendel.

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Wszystkie sluszne, wszystkie sluszne.", Info_Mod_HofstaatWeiberheld_Hi_J);
		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Po prostu daj mi ksiazke!", Info_Mod_HofstaatWeiberheld_Hi_I);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Hi_H_27_03"); //To wystarczy.

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Hi, "Po prostu daj mi ksiazke!", Info_Mod_HofstaatWeiberheld_Hi_I);
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_G()
{
	B_ShowGivenThings	("100 Zloto i otrzymana ksiazka");

	CreateInvItems	(hero, ItMi_Gold, 100);
	CreateInvItems	(hero, ItWr_HSBook, 1);

	Mod_Sekte_WeiberheldHaus = 1;

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Posiadam teraz dom na dziedzincu. To musi byc dobre dla czegos.");

	Info_Mod_HofstaatWeiberheld_Hi_C();
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_J()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_J_15_00"); //Wszystkie sluszne, wszystkie sluszne.

	Mod_Sekte_WeiberheldHaus = 1;
	Mod_Sekte_Verheiratet = 1;

	B_StartOtherRoutine	(Mod_7020_HS_Tuersteher_REL, "DARFREIN");

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Ozenilem sie z kobieciarzem i mam dom. Bouncer powinien pozwolic mi przejsc teraz.");

	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Hi_I()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Hi_I_15_00"); //Po prostu daj mi ksiazke!

	B_GiveInvItems	(self, hero, ItWr_HSBook, 1);

	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Hi);
};

INSTANCE Info_Mod_HofstaatWeiberheld_SabineWillNicht (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_SabineWillNicht_Condition;
	information	= Info_Mod_HofstaatWeiberheld_SabineWillNicht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Malzenstwo nie dziala.";
};

FUNC INT Info_Mod_HofstaatWeiberheld_SabineWillNicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sabine_Heiraten_02))
	&& (Mod_Sekte_Verheiratet == 0)
	&& (Mod_HS_DarfZuKing == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_SabineWillNicht_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_15_00"); //Malzenstwo nie dziala.
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_27_01"); //Jak to sie nie udaje?
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_15_02"); //No cóz, nie wiem, co powiedziec....
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_27_03"); //AHA!
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_15_04"); //Tak?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_27_05"); //Du brauchst mein patentiertes "Wlaczanie i smiech", sozusagen die Fortsetzung meines ersten Buches.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_15_06"); //Ile chcialbys na to przeznaczyc?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_27_07"); //200 sztuk zlota.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_15_08"); //Nie prowadzimy rokowan?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_SabineWillNicht_27_09"); //Nie.... Stracilem dom, próbujac komus sprzedac zebrane prace.
};

INSTANCE Info_Mod_HofstaatWeiberheld_BuyBook2 (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_BuyBook2_Condition;
	information	= Info_Mod_HofstaatWeiberheld_BuyBook2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobrze, kupie ksiazke (200 zlota)";
};

FUNC INT Info_Mod_HofstaatWeiberheld_BuyBook2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatWeiberheld_SabineWillNicht))
	&& (Mod_Sekte_Verheiratet == 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (Mod_HS_DarfZuKing == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_BuyBook2_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_BuyBook2_15_00"); //Dobrze, kupie ksiazke.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_BuyBook2_27_01"); //Tutaj ja masz. Zycze powodzenia.

	B_GiveInvItems	(self, hero, ItWr_HSBook2, 1);
};

INSTANCE Info_Mod_HofstaatWeiberheld_Preacher (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_Preacher_Condition;
	information	= Info_Mod_HofstaatWeiberheld_Preacher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatWeiberheld_Preacher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sabine_Heiraten_03))
	|| (Npc_KnowsInfo(hero, Info_Mod_HFFrau_Heiraten_03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Preacher_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Preacher_27_00"); //Teraz wymawiam na ciebie mezczyzne i zone!

	Mod_Sekte_Verheiratet = 1;

	Mod_HS_DarfZuKing = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7020_HS_Tuersteher_REL, "DARFREIN");

	Mod_7020_HS_Tuersteher_REL.aivar[AIV_Passgate] = TRUE;

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Jestem zonaty teraz. Bouncer powinien pozwolic mi przejsc teraz.");
};

INSTANCE Info_Mod_HofstaatWeiberheld_Geliebte (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_Geliebte_Condition;
	information	= Info_Mod_HofstaatWeiberheld_Geliebte_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatWeiberheld_Geliebte_Condition()
{
	if (Mod_SL_Schwaechen == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Geliebte_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_00"); //Ponownie?
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_01"); //Ponownie potrzebuje panstwa pomocy.
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_02"); //Jak moge Ci pomóc? Chcesz dostac kobiete, chcesz zdobyc mezczyzne, chcesz dostac kobiete i mezczyzne? Nic nie jest niemozliwe!
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_03"); //Chce uwiesc królewska kochanke.
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_04"); //Oczywiscie, nie ma problemu z uwiedzeniem królewskiej kochanki, to jest.... YOU WANT WHAT? UNMÖGLICH!
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_05"); //Du ungläubiger Narr! Glaubst du, sie heißt zum Spaß "królewski kochanek".
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_06"); //Fool! Nikt z wyjatkiem króla nigdy nie zdolal jej ladowac.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_07"); //Jest droga. Jak król to zrobil?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_08"); //Zalozyl imperium i nosi korone! Moze mnie nawet uwiedzie!
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_09"); //Potem potrzebuje korony?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_10"); //Nie ma drogi! Mówi sie, ze królewski pijak zdolal ich uwiesc w czasie ostatniego festiwalu.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_11"); //Wtedy po prostu bede musial ja pic?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_12"); //To nie zadziala. Wierzcie mi w wiare.... nie dziala. Musisz byc...... pijak.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_13"); //Jak to zrobic?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_14"); //Tylko król moze to zrobic. On jest panem!
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_15"); //.... Czylasty?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_16"); //Tak, to jest róg, z którym przywoluje czas celebracji! Trzeba go przed nim ukrasc. Jest w zamku.
	AI_Output(hero, self, "Info_Mod_HofstaatWeiberheld_Geliebte_15_17"); //Co zrobic, jesli ja mam?
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_18"); //Grasz w nia.... ale cicho! Slyszy Cie tylko pijak.
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_19"); //I jak tylko masz to, czego potrzebujesz, musisz dac mu radosc, aby mógl ponownie zasnac.
	AI_Output(self, hero, "Info_Mod_HofstaatWeiberheld_Geliebte_27_20"); //Gdy tylko on otrze oczy z snu i zauwazy, ze nie jestes królem i ze nie jest to czas swietowania, zabije cie!

	B_LogEntry	(TOPIC_MOD_SL_GELIEBTE, "Musze obudzic pijaka, który mial wczesniej uwodzic królewska kochanke. Potrzebuje wladcy króla, który znajde na zamku.");

	Mod_SL_PartGeliebte = 1;

	Wld_InsertItem	(ItMi_Blastherr, "FP_ITEM_KOENIG_DMNACHRICHT");
};

INSTANCE Info_Mod_HofstaatWeiberheld_Pickpocket (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_Pickpocket_Condition;
	information	= Info_Mod_HofstaatWeiberheld_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_HofstaatWeiberheld_Pickpocket_Condition()
{
	C_Beklauen	(49, ItMi_Freudenspender, 1);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatWeiberheld_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatWeiberheld_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatWeiberheld_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatWeiberheld_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatWeiberheld_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatWeiberheld_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatWeiberheld_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatWeiberheld_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatWeiberheld_EXIT (C_INFO)
{
	npc		= Mod_7270_OUT_Weiberheld_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWeiberheld_EXIT_Condition;
	information	= Info_Mod_HofstaatWeiberheld_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatWeiberheld_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatWeiberheld_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
