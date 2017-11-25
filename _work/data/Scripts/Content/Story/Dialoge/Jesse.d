INSTANCE Info_Mod_Jesse_Hi (C_INFO)
{
	npc		= Mod_1506_BUD_Jesse_MT;
	nr		= 1;
	condition	= Info_Mod_Jesse_Hi_Condition;
	information	= Info_Mod_Jesse_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak wyglada praca, poszukiwacz?";
};

FUNC INT Info_Mod_Jesse_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jesse_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesse_Hi_15_00"); //Jak wyglada praca, poszukiwacz?
	AI_Output(self, hero, "Info_Mod_Jesse_Hi_36_01"); //Ach, te sama prace musialem wtedy wykonywac jako Buddler.
	AI_Output(self, hero, "Info_Mod_Jesse_Hi_36_02"); //Ale przeciez po brud, który robil Stary Obóz, wolalem jechac do Nowego Obozu.
	AI_Output(hero, self, "Info_Mod_Jesse_Hi_15_03"); //Masz tu na mysli napad na kopalnie?
	AI_Output(self, hero, "Info_Mod_Jesse_Hi_36_04"); //Tak, miedzy innymi. Dlatego jest kilka miejsc dla poszukiwaczy.
	AI_Output(self, hero, "Info_Mod_Jesse_Hi_36_05"); //Po tym, jak straznicy zamordowali ich wszystkich, Nowy Obóz rozpaczliwie szukal pracowników. To wszystko jest tutaj.
	AI_Output(self, hero, "Info_Mod_Jesse_Hi_36_06"); //A przynajmniej nie ma tu szalenców, którzy poluja z magicznym mieczem na cokolwiek, co dziala i stoi? jak ów szalenca w Starym Obozie.
	AI_Output(self, hero, "Info_Mod_Jesse_Hi_36_07"); //Nie chcialbys myslec z powrotem.
};

INSTANCE Info_Mod_Jesse_Costa (C_INFO)
{
	npc		= Mod_1506_BUD_Jesse_MT;
	nr		= 1;
	condition	= Info_Mod_Jesse_Costa_Condition;
	information	= Info_Mod_Jesse_Costa_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostales cos, co nalezalo do Costy.";
};

FUNC INT Info_Mod_Jesse_Costa_Condition()
{
	if (Mod_Costa_Guertel == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesse_Costa_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesse_Costa_15_00"); //Dostales cos, co nalezalo do Costy.
	AI_Output(self, hero, "Info_Mod_Jesse_Costa_36_01"); //Tak, dostalem kilka jego rzeczy. Wiesz, czym on sie stal? Czy straznicy go zlapali?
	AI_Output(hero, self, "Info_Mod_Jesse_Costa_15_02"); //Nie. Nadazal nad czasem.
	AI_Output(self, hero, "Info_Mod_Jesse_Costa_36_03"); //(upadek, nie! I pomyslelismy, ze cos mu sie stalo! Czy jeszcze utknal w obozie?
	AI_Output(hero, self, "Info_Mod_Jesse_Costa_15_04"); //Tak wlasnie jest.
	AI_Output(self, hero, "Info_Mod_Jesse_Costa_36_05"); //Potem musze go uratowac. Zostawie go dzis wieczorem i wyprowadze.
	AI_Output(hero, self, "Info_Mod_Jesse_Costa_15_06"); //Czyz nie jest to troche pospieszne?
	AI_Output(self, hero, "Info_Mod_Jesse_Costa_36_07"); //Nie, jesli wie i przygotowuje sie do tego. Czy mozesz swobodnie poruszac sie po obozie?

	Info_ClearChoices	(Info_Mod_Jesse_Costa);

	Info_AddChoice	(Info_Mod_Jesse_Costa, "Nie.", Info_Mod_Jesse_Costa_B);
	Info_AddChoice	(Info_Mod_Jesse_Costa, "Tak.", Info_Mod_Jesse_Costa_A);
};

FUNC VOID Info_Mod_Jesse_Costa_B()
{
	AI_Output(hero, self, "Info_Mod_Jesse_Costa_B_15_00"); //Nie.
	AI_Output(self, hero, "Info_Mod_Jesse_Costa_B_36_01"); //Zbyt zle. Wtedy spróbuje.

	Info_ClearChoices	(Info_Mod_Jesse_Costa);

	Mod_Costa_Guertel = 2;
};

FUNC VOID Info_Mod_Jesse_Costa_A()
{
	AI_Output(hero, self, "Info_Mod_Jesse_Costa_A_15_00"); //Tak.
	AI_Output(self, hero, "Info_Mod_Jesse_Costa_A_36_01"); //Musicie ostrzec Coste juz dzis, aby spotkac sie ze mna w naszym ostatnim uzgodnionym miejscu o pólnocy. Absolutnie dzis wiesz, co wiesz?

	Info_ClearChoices	(Info_Mod_Jesse_Costa);

	B_LogEntry	(TOPIC_MOD_COSTA_GUERTEL, "Znalazlem Jesse. Ale zamiast dac mi pas, chce sam uwolnic Coste. W tym celu pilnie konieczne jest poinformowanie Costy przed pólnoca, aby mógl on przygotowac sie do ucieczki.");

	Mod_Costa_Guertel_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Jesse_Pickpocket (C_INFO)
{
	npc		= Mod_1506_BUD_Jesse_MT;
	nr		= 1;
	condition	= Info_Mod_Jesse_Pickpocket_Condition;
	information	= Info_Mod_Jesse_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Jesse_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Nugget, 2);
};

FUNC VOID Info_Mod_Jesse_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);

	Info_AddChoice	(Info_Mod_Jesse_Pickpocket, DIALOG_BACK, Info_Mod_Jesse_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jesse_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jesse_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jesse_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);
};

FUNC VOID Info_Mod_Jesse_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);

		Info_AddChoice	(Info_Mod_Jesse_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jesse_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jesse_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jesse_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jesse_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jesse_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jesse_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jesse_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jesse_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jesse_EXIT (C_INFO)
{
	npc		= Mod_1506_BUD_Jesse_MT;
	nr		= 1;
	condition	= Info_Mod_Jesse_EXIT_Condition;
	information	= Info_Mod_Jesse_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jesse_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jesse_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
