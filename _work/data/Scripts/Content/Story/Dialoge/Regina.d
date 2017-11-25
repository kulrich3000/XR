INSTANCE Info_Mod_Regina_Hi (C_INFO)
{
	npc		= Mod_7276_OUT_Regina_REL;
	nr		= 1;
	condition	= Info_Mod_Regina_Hi_Condition;
	information	= Info_Mod_Regina_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Regina_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Regina_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Regina_Hi_26_00"); //Regina, zwykla gospodyni domowa.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_26_01"); //Nigdy wczesniej cie nie widzialem.... duzo podrózujesz?

	Info_ClearChoices	(Info_Mod_Regina_Hi);

	Info_AddChoice	(Info_Mod_Regina_Hi, "Nie, po prostu sie wprowadzilem.", Info_Mod_Regina_Hi_B);
	Info_AddChoice	(Info_Mod_Regina_Hi, "Na pewno mozna to powiedziec.", Info_Mod_Regina_Hi_A);
};

FUNC VOID Info_Mod_Regina_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_00"); //Mój chlopiec zawsze chcial wyjsc na swiat, wiec moge ci cos powiedziec, tak.
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_01"); //Innym razem.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_02"); //Powiedzial, Mama, kiedy dorastam, chce rzadzic ludzmi. Ladny, czyz nie?
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_03"); //Moze znasz jego nazwisko?
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_04"); //Co tam jest?
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_05"); //Jego imieniem Gomez. Haven przez dlugi czas nie widzial swojej matki, rak.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_06"); //Chcialbym wiedziec, gdzie byl.
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_07"); //Zapraszamy!
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_08"); //Znasz go? Nie mozesz byc powazny!
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_09"); //Jego marzenie spelnilo sie.... jesli tylko przez krótki czas.
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_10"); //Potem zostal obalony przez nieznajomego.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_11"); //Nie, czyz nie? A ja ciagle jeszcze mówie, chlopak, mówie, niech to bedzie, ta dominacja nie prowadzi do szczesliwego konca.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_12"); //Powiedzialem mu! Ale nie, nie chcial o tym slyszec, zawsze musial byc uparty.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_13"); //I nie pisze nawet listów, chlopiec.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_14"); //Nie sprzatal swojego pokoju, nic, nie wyobraz sobie.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_15"); //Kiedy byl malym chlopcem, razem zjezdzalismy do jeziora i mylismy sie, wiec pomógl.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_16"); //Ale juz nie, nie, zawsze wolno mi bylo robic wszystko w pojedynke.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_17"); //Niemal stal sie jak jego ojciec, chlopiec.
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_18"); //Aha....
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_19"); //W pewnym momencie wzial tych radosnych darczynców i zawsze byl zabawny w Kopp.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_20"); //Mial wizje, ja ci opowiem.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_21"); //Nie wiem skad mial wszystkie pomysly, ale nie sadze, ze mi sie podobaly!
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_22"); //Jego wizerunek kobiety, nie wiedziales!
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_23"); //Musze isc....
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_24"); //... ale wysokosc n. p. m. byla wciaz.... Co?
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_25"); //Czy powtarzalem zbyt wiele rozmów?
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_26"); //Zamierzasz sprawdzic na starszej matce, czy nie?
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_27"); //Zastanowie sie nad tym.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_28"); //Nalezy wiec uwazac. Pozegnanie pozegnania.

	Info_ClearChoices	(Info_Mod_Regina_Hi);
};

FUNC VOID Info_Mod_Regina_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Regina_Hi_B_15_00"); //Nie, po prostu sie wprowadzilem.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_B_26_01"); //Zbyt zle.

	Info_Mod_Regina_Hi_C();
};

FUNC VOID Info_Mod_Regina_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Regina_Hi_A_15_00"); //Na pewno mozna to powiedziec.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_A_26_01"); //Ach, jak bardzo ladny.

	Info_Mod_Regina_Hi_C();
};

INSTANCE Info_Mod_Regina_Freudenspender (C_INFO)
{
	npc		= Mod_7276_OUT_Regina_REL;
	nr		= 1;
	condition	= Info_Mod_Regina_Freudenspender_Condition;
	information	= Info_Mod_Regina_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Chcesz dac przyjemnosc?";
};                       

FUNC INT Info_Mod_Regina_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Regina_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Regina_Freudenspender_15_00"); //Chcesz dac przyjemnosc?
	AI_Output(self, hero, "Info_Mod_Regina_Freudenspender_26_01"); //Oczywiscie nie! To juz zamazalo umysl mojego syna.
};

INSTANCE Info_Mod_Regina_Pickpocket (C_INFO)
{
	npc		= Mod_7276_OUT_Regina_REL;
	nr		= 1;
	condition	= Info_Mod_Regina_Pickpocket_Condition;
	information	= Info_Mod_Regina_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90_Female;
};

FUNC INT Info_Mod_Regina_Pickpocket_Condition()
{
	C_Beklauen	(76, ItMi_Gold, 29);
};

FUNC VOID Info_Mod_Regina_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Regina_Pickpocket);

	Info_AddChoice	(Info_Mod_Regina_Pickpocket, DIALOG_BACK, Info_Mod_Regina_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Regina_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Regina_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Regina_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Regina_Pickpocket);
};

FUNC VOID Info_Mod_Regina_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Regina_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Regina_Pickpocket);

		Info_AddChoice	(Info_Mod_Regina_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Regina_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Regina_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Regina_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Regina_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Regina_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Regina_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Regina_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Regina_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Regina_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Regina_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Regina_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Regina_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Regina_EXIT (C_INFO)
{
	npc		= Mod_7276_OUT_Regina_REL;
	nr		= 1;
	condition	= Info_Mod_Regina_EXIT_Condition;
	information	= Info_Mod_Regina_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Regina_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Regina_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
