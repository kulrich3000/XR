INSTANCE Info_Mod_Aerwak_Hi (C_INFO)
{
	npc		= Mod_7807_OUT_Aerwak_EIS;
	nr		= 1;
	condition	= Info_Mod_Aerwak_Hi_Condition;
	information	= Info_Mod_Aerwak_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to robisz?";
};

FUNC INT Info_Mod_Aerwak_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Aerwak_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_15_00"); //Jak to robisz?
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_01_01"); //O nie, nie inny raz jeszcze tak.
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_15_02"); //Co myslisz?
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_01_03"); //Jeden z Was obcy. To tylko problem dla rówiesnika w wiosce. Nie powinno sie nawet pozwolic, zebyscie sie tu zapakowali.

	Info_ClearChoices	(Info_Mod_Aerwak_Hi);

	Info_AddChoice	(Info_Mod_Aerwak_Hi, "Zaryzykujesz sobie dosc duza warge, mój przyjaciel.", Info_Mod_Aerwak_Hi_B);
	Info_AddChoice	(Info_Mod_Aerwak_Hi, "Jaki jest twój problem?", Info_Mod_Aerwak_Hi_A);
};

FUNC VOID Info_Mod_Aerwak_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_B_15_00"); //Zaryzykujesz sobie dosc duza warge, mój przyjaciel.
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_B_01_01"); //Czy masz wiecej wargi? Jestes prawie tam!

	Info_ClearChoices	(Info_Mod_Aerwak_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);

	Mod_Aerwak = 1;
};

FUNC VOID Info_Mod_Aerwak_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_A_15_00"); //Jaki jest twój problem?
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_01"); //Wy obcy jestescie moim problemem. I nie jestem jedynym, który tak to widzi.
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_02"); //Gdy tylko tu jestes, wszedzie trzymasz nos, wchodzisz do zagranicznych domów, jak gdyby byly twoja wlasnoscia.... oraz..... i... (badania rozwazane) oraz......
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_A_15_03"); //Tak?
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_04"); //Um.... tak, dokladnie..... do kupienia pozostaly tylko zle ryby.
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_A_15_05"); //Co moge zrobic dla ryb?
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_06"); //Nie jestes bezposredni, ale jestes jak Gestath.
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_07"); //Od kiedy otworzyl tu swój zaklad lowiecki i pozwolil wszystkim polowac dla siebie, tylko Anglar pozostal jako rybak.... wiec moze sobie pozwolic na sprzedanie nam starej ryby.
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_08"); //Eivar zamknal swoje stoisko z rybami, aby zarobic jak wiele innych pieniedzy na Gestath, lub zdobyc od niego bezuzyteczne knick-knack. Co to jest idiota.
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_09"); //A Aldaro nie moze lowic ryb, poniewaz jest chory.
	AI_Output(hero, self, "Info_Mod_Aerwak_Hi_A_15_10"); //I to prawdopodobnie równiez moja wina....
	AI_Output(self, hero, "Info_Mod_Aerwak_Hi_A_01_11"); //Och, wyrzuc z niego pieklo.

	Info_ClearChoices	(Info_Mod_Aerwak_Hi);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Aerwak_Aldaro (C_INFO)
{
	npc		= Mod_7807_OUT_Aerwak_EIS;
	nr		= 1;
	condition	= Info_Mod_Aerwak_Aldaro_Condition;
	information	= Info_Mod_Aerwak_Aldaro_Info;
	permanent	= 0;
	important	= 0;
	description	= "Aldaro znów jest dobrze.";
};

FUNC INT Info_Mod_Aerwak_Aldaro_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aerwak_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Aldaro_Gift2))
	&& (Mod_Aerwak == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aerwak_Aldaro_Info()
{
	AI_Output(hero, self, "Info_Mod_Aerwak_Aldaro_15_00"); //Aldaro znów jest dobrze.
	AI_Output(self, hero, "Info_Mod_Aerwak_Aldaro_01_01"); //Dobre dla niego.... Czy dlatego musisz rozmawiac ze mna z boku, obcy?
	AI_Output(hero, self, "Info_Mod_Aerwak_Aldaro_15_02"); //Narzekaliscie na rybe Anglara....
	AI_Output(self, hero, "Info_Mod_Aerwak_Aldaro_01_03"); //Huh, tak, i?
	AI_Output(hero, self, "Info_Mod_Aerwak_Aldaro_15_04"); //Jaszczurka znów bedzie lowil ryby.
	AI_Output(self, hero, "Info_Mod_Aerwak_Aldaro_01_05"); //uh-huh. Oh, tak...... to wspaniale.... Czy to wszystko? Wtedy mozesz wrócic.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Aerwak_Eivar (C_INFO)
{
	npc		= Mod_7807_OUT_Aerwak_EIS;
	nr		= 1;
	condition	= Info_Mod_Aerwak_Eivar_Condition;
	information	= Info_Mod_Aerwak_Eivar_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem Eivara. Zostal on ofiara drapieznika.";
};

FUNC INT Info_Mod_Aerwak_Eivar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aerwak_Hi))
	&& (Mod_Aerwak == 0)
	&& (Mod_Eivar == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aerwak_Eivar_Info()
{
	AI_Output(hero, self, "Info_Mod_Aerwak_Eivar_15_00"); //Znalazlem Eivara. Zostal on ofiara drapieznika.
	AI_Output(self, hero, "Info_Mod_Aerwak_Eivar_01_01"); //Co? Wtedy..... (zwiedzajacy) wtedy obce osoby musza odpowiedziec na jego smierc...... (irate zalosna) smierc...... mego najblizszego brata naszej spolecznosci wiejskiej!
	AI_Output(hero, self, "Info_Mod_Aerwak_Eivar_15_02"); //Hej, po prostu zadzwoniles do niego idiota!
	AI_Output(self, hero, "Info_Mod_Aerwak_Eivar_01_03"); //(rozmycie) Um..... bez Nigdy nie powiedzialem tego.... (agresywna odbudowa) W kazdym razie od samego poczatku wiedzialem, ze nigdy nie powinni byli wpuscic waszego do wioski.
	AI_Output(self, hero, "Info_Mod_Aerwak_Eivar_01_04"); //Naucze Cie brudnych obcych lekcji, na która zaslugujesz!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);

	Mod_Aerwak = 1;

	B_GivePlayerXP	(400);
};

INSTANCE Info_Mod_Aerwak_Pickpocket (C_INFO)
{
	npc		= Mod_7807_OUT_Aerwak_EIS;
	nr		= 1;
	condition	= Info_Mod_Aerwak_Pickpocket_Condition;
	information	= Info_Mod_Aerwak_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Aerwak_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 22);
};

FUNC VOID Info_Mod_Aerwak_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);

	Info_AddChoice	(Info_Mod_Aerwak_Pickpocket, DIALOG_BACK, Info_Mod_Aerwak_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Aerwak_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Aerwak_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Aerwak_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);
};

FUNC VOID Info_Mod_Aerwak_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);

		Info_AddChoice	(Info_Mod_Aerwak_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Aerwak_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Aerwak_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Aerwak_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Aerwak_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Aerwak_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Aerwak_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Aerwak_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Aerwak_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Aerwak_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Aerwak_EXIT (C_INFO)
{
	npc		= Mod_7807_OUT_Aerwak_EIS;
	nr		= 1;
	condition	= Info_Mod_Aerwak_EXIT_Condition;
	information	= Info_Mod_Aerwak_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Aerwak_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Aerwak_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
