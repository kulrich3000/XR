INSTANCE Info_Mod_HSBauer_05_Hi (C_INFO)
{
	npc		= Mod_7019_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_05_Hi_Condition;
	information	= Info_Mod_HSBauer_05_Hi_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czym jest ta okolica?";
};

FUNC INT Info_Mod_HSBauer_05_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HSBauer_05_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_15_00"); //Czym jest ta okolica?
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_05_01"); //Maaan.... Widzisz to wszystko za ciasno, m' kay?
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_15_02"); //...?
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_05_03"); //Wiesz, bylem taki jak kiedys, m kay?
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_05_04"); //Myslalem, ze na tym swiecie jestesmy tylko jednostka.... Ale prawda jest taka, ze wszyscy jestesmy ogromnymi jednostkami, m' kay?
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_05_05"); //Czy zrozumiales/as wiadomosc, która staram sie Ci przekazac?

	Info_ClearChoices	(Info_Mod_HSBauer_05_Hi);

	Info_AddChoice	(Info_Mod_HSBauer_05_Hi, "Ale jesli wszyscy jestesmy ogromna jednostka, co mierzysz ta wielkoscia?", Info_Mod_HSBauer_05_Hi_C);
	Info_AddChoice	(Info_Mod_HSBauer_05_Hi, "Tak..... jest jasne.", Info_Mod_HSBauer_05_Hi_B);
	Info_AddChoice	(Info_Mod_HSBauer_05_Hi, "To juz pózno?", Info_Mod_HSBauer_05_Hi_A);
};

FUNC VOID Info_Mod_HSBauer_05_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_00"); //Ale jesli wszyscy jestesmy ogromna jednostka, co mierzysz ta wielkoscia?
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_01"); //Potrzebujesz miernika, aby nazywac cos wielkiego, a my nie wszyscy mozemy byc duzymi indywidualistami, poniewaz my sami jestesmy miernikiem dla siebie.
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_02"); //Tak wiec "ogromne" musi byc w stosunku do sredniej, co oznacza, ze wiekszosc z nich to przecietne osobniki i jest kilka duzych i kilka malych.
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_C_05_03"); //Ale.... uh..... My wszyscy jestesmy ogromna jednostka, wiesz?
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_04"); //Cóz, nie da sie powiedziec tego, co indywidualne, bo z perspektywy indywidualizmu nie mozemy patrzec na caly nasz swiat.
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_05"); //Oprócz wewnetrznej sklonnosci czlowieka do szukania ochrony i bezpieczenstwa w grupie, w naturze jest równiez formowanie paczek zwierzat.
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_06"); //W koncu Ty tez jestes w takim zestawie, a w "paczce" nie chodzi o jednostke, ale o dobre samopoczucie calosci.
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_C_05_07"); //Musze teraz pomyslec o tym, mój przyjaciel..... Czy moze kay?

	Info_ClearChoices	(Info_Mod_HSBauer_05_Hi);
};

FUNC VOID Info_Mod_HSBauer_05_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_B_15_00"); //Tak..... jest jasne.
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_B_05_01"); //Dobrze, mój przyjaciel. Dostales wiadomosc, m' kay?
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_B_15_02"); //O kay!
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_B_05_03"); //M' kay....

	Info_ClearChoices	(Info_Mod_HSBauer_05_Hi);
};

FUNC VOID Info_Mod_HSBauer_05_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_A_15_00"); //To juz pózno?

	Info_ClearChoices	(Info_Mod_HSBauer_05_Hi);
};

INSTANCE Info_Mod_HSBauer_05_Pickpocket (C_INFO)
{
	npc		= Mod_7019_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_05_Pickpocket_Condition;
	information	= Info_Mod_HSBauer_05_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_HSBauer_05_Pickpocket_Condition()
{
	C_Beklauen	(15, ItMi_Gold, 13);
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);

	Info_AddChoice	(Info_Mod_HSBauer_05_Pickpocket, DIALOG_BACK, Info_Mod_HSBauer_05_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HSBauer_05_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HSBauer_05_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);

		Info_AddChoice	(Info_Mod_HSBauer_05_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HSBauer_05_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HSBauer_05_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HSBauer_05_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HSBauer_05_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HSBauer_05_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HSBauer_05_EXIT (C_INFO)
{
	npc		= Mod_7019_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_05_EXIT_Condition;
	information	= Info_Mod_HSBauer_05_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HSBauer_05_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HSBauer_05_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
