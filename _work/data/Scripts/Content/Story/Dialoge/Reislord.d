INSTANCE Info_Mod_Reislord_Hi (C_INFO)
{
	npc		= Mod_2002_BAU_Ricelord_MT;
	nr		= 1;
	condition	= Info_Mod_Reislord_Hi_Condition;
	information	= Info_Mod_Reislord_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Reislord_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lefty_BauernVerbatscht))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Reislord_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Reislord_Hi_12_00"); //Ach, slyszalem, jak Pan nam pomagal. Z Sylvio dodam Ci wiele slów. Wtedy zabierzesz go kiedys do Orchuntera.
	AI_Output(self, hero, "Info_Mod_Reislord_Hi_12_01"); //I tutaj wez zloto.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	B_GivePlayerXP	(100);

	Mod_Reislord_DayChecker = Wld_GetDay();

	Mod_LeftysBauern = 4;

	B_SetTopicStatus	(TOPIC_MOD_SLD_LEFTYBAUERN, LOG_SUCCESS);
};

INSTANCE Info_Mod_Reislord_RufusDa (C_INFO)
{
	npc		= Mod_2002_BAU_Ricelord_MT;
	nr		= 1;
	condition	= Info_Mod_Reislord_RufusDa_Condition;
	information	= Info_Mod_Reislord_RufusDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Reislord_RufusDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lefty_RufusDa))
	&& (Mod_SLD_Rufus < 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Reislord_RufusDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Reislord_RufusDa_12_00"); //Hej, to ty byles facetem, który wracal do Rufusa. Chlopi rozwaza teraz ucieczke po raz drugi.
	AI_Output(self, hero, "Info_Mod_Reislord_RufusDa_12_01"); //Tutaj wez to zloto i rude.

	if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Reislord_RufusDa_12_02"); //Sylvio dostanie tylko dobre rzeczy, aby uslyszec o Tobie.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Reislord_RufusDa_12_03"); //Dobra praca.
	};

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItMi_Nugget, 8);

	B_ShowGivenThings	("300 zlota i 8 konserwowanych rudy");

	B_GivePlayerXP	(300);

	Mod_Reislord_DayChecker = Wld_GetDay();

	Mod_LeftysBauern = 6;

	Mod_SLD_Rufus = 7;

	B_SetTopicStatus	(TOPIC_MOD_SLD_RUFUS, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Reislord_RufusTot (C_INFO)
{
	npc		= Mod_2002_BAU_Ricelord_MT;
	nr		= 1;
	condition	= Info_Mod_Reislord_RufusTot_Condition;
	information	= Info_Mod_Reislord_RufusTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcialem zglosic, ze Rufus nie zyje.";
};

FUNC INT Info_Mod_Reislord_RufusTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lefty_RufusTot))
	&& (Mod_SLD_Rufus < 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Reislord_RufusTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Reislord_RufusTot_15_00"); //Chcialem zglosic, ze Rufus nie zyje.
	AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_12_01"); //Naprawde! Jak do tego doszlo?

	if (Mod_SLD_Rufus == 5)
	{
		AI_Output(hero, self, "Info_Mod_Reislord_RufusTot_15_02"); //Zabilem go.
		AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_12_03"); //Cóz, lepiej niz gdyby uciekl.

		if (hero.guild == GIL_MIL)
		{
			AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_12_04"); //Sylvio lubi slyszec o tym.
			AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_12_05"); //I chlopi nie odwaza sie uciekac. Tutaj wez zloto.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_12_06"); //Doskonala praca. Chlopi nie odwaza sie uciekac.
			AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_12_07"); //Tutaj wez zloto.
		};

		CreateInvItems	(hero, ItMi_Gold, 300);
		CreateInvItems	(hero, ItMi_Nugget, 5);

		B_ShowGivenThings	("300 zlota i 5 konserwowanych rud");

		B_GivePlayerXP	(350);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Reislord_RufusTot_15_08"); //Rozrywany byl przez dzikie zwierzeta.
		AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_12_09"); //Dobre. Jego los bedzie ostrzezeniem dla innych chlopów. Tutaj wez zloto jako nagrode.

		B_GiveInvItems	(self, hero, ItMi_Gold, 250);

		if (hero.guild == GIL_MIL)
		{
			AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_12_10"); //Sylvio dostanie tylko dobre rzeczy, aby uslyszec o Tobie.
		};

		B_GivePlayerXP	(300);
	};

	Mod_Reislord_DayChecker = Wld_GetDay();

	Mod_LeftysBauern = 6;

	Mod_SLD_Rufus = 7;

	B_SetTopicStatus	(TOPIC_MOD_SLD_RUFUS, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Reislord_OJGBoss (C_INFO)
{
	npc		= Mod_2002_BAU_Ricelord_MT;
	nr		= 1;
	condition	= Info_Mod_Reislord_OJGBoss_Condition;
	information	= Info_Mod_Reislord_OJGBoss_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Reislord_OJGBoss_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lefty_OJGBoss))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Reislord_OJGBoss_Info()
{
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_12_00"); //Ach, tam jestescie. Ciesze sie, ze uczyniles to tak daleko i jestes liderem Orchunterów.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_12_01"); //Od chwili kiedy cie zobaczylem, wiedzialem, ze to prawdziwy konik wojenny....
	AI_Output(hero, self, "Info_Mod_Reislord_OJGBoss_15_02"); //Przejdz do punktu.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_12_03"); //(podsluzbowy) Tak, natychmiast.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_12_04"); //Cóz, teraz, gdy zajelas miejsce Sylvios, masz prawo do naszego udzialu w zyskach. Zloto, ruda i kilka dobrych rzeczy do jedzenia.

	Info_ClearChoices	(Info_Mod_Reislord_OJGBoss);

	Info_AddChoice	(Info_Mod_Reislord_OJGBoss, "Co to sa dochody?", Info_Mod_Reislord_OJGBoss_B);
	Info_AddChoice	(Info_Mod_Reislord_OJGBoss, "Nie odpowiem na nie.", Info_Mod_Reislord_OJGBoss_A);
};

FUNC VOID Info_Mod_Reislord_OJGBoss_B()
{
	AI_Output(hero, self, "Info_Mod_Reislord_OJGBoss_B_15_00"); //Co to sa dochody?
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_B_12_01"); //.... er er..... Za wykonana tu prace otrzymujemy z zewnatrz rude, zloto i towary.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_B_12_02"); //Ale taki rolnik jest w rzeczywistosci dosc oszczedny i nie potrzebuje zbyt wiele.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_B_12_03"); //I wezmiemy nasza skromna czesc z tego.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_B_12_04"); //I oczywiscie masz prawo do godnej czesci tego miejsca w swojej waznej pozycji w obozie.

	Info_ClearChoices	(Info_Mod_Reislord_OJGBoss);

	Info_AddChoice	(Info_Mod_Reislord_OJGBoss, "Wiedza - co dajesz chlopom to, na co naprawde zasluguja.", Info_Mod_Reislord_OJGBoss_C);
	Info_AddChoice	(Info_Mod_Reislord_OJGBoss, "Nie odpowiem na nie.", Info_Mod_Reislord_OJGBoss_A);
};

FUNC VOID Info_Mod_Reislord_OJGBoss_C()
{
	AI_Output(hero, self, "Info_Mod_Reislord_OJGBoss_C_15_00"); //Wiedza - co dajesz chlopom to, na co naprawde zasluguja.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_C_12_01"); //Uh, co-- takie jak......
	AI_Output(hero, self, "Info_Mod_Reislord_OJGBoss_C_15_02"); //A od ostatniej i nastepnej wysylki podajesz rolnikom kwote pieniedzy, jaka normalnie daliby wam i swoim chlopcom, aby zrekompensowac im straty.
	AI_Output(hero, self, "Info_Mod_Reislord_OJGBoss_C_15_03"); //Czy rozumiemy sie nawzajem?
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_C_12_04"); //(paralizowane) Uh, uh, uh..... tak.

	B_GivePlayerXP	(200);

	Mod_NL_ReislordProBauern = 1;
	Mod_NL_ReislordProBauern_Day = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Reislord_OJGBoss);
};

FUNC VOID Info_Mod_Reislord_OJGBoss_A()
{
	AI_Output(hero, self, "Info_Mod_Reislord_OJGBoss_A_15_00"); //Nie odpowiem na nie. Moje torby czuja sie tak puste, ze cos w nich lsniacego metalu z pewnoscia nie zostanie pominiete.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_A_12_01"); //Oczywiscie, jak panstwo na to zasluguja. Zdaje sobie sprawe, ze z toba wszystko bedzie dalej isc tak, jak powinno, on. Tutaj jestes. Zabawa z tym.

	B_ShowGivenThings	("230 zlota, 17 rudy, 2 wina i szynki zakonserwowane");

	CreateInvItems	(hero, ItMi_Gold, 230);
	CreateInvItems	(hero, ItMi_Nugget, 17);
	CreateInvItems	(hero, ItFo_Wine, 2);
	CreateInvItems	(hero, ItFo_Bacon, 1);

	B_GivePlayerXP	(100);

	Info_ClearChoices	(Info_Mod_Reislord_OJGBoss);
};

INSTANCE Info_Mod_Reislord_Pickpocket (C_INFO)
{
	npc		= Mod_2002_BAU_Ricelord_MT;
	nr		= 1;
	condition	= Info_Mod_Reislord_Pickpocket_Condition;
	information	= Info_Mod_Reislord_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Reislord_Pickpocket_Condition()
{
	C_Beklauen	(115, ItMi_Nugget, 13);
};

FUNC VOID Info_Mod_Reislord_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);

	Info_AddChoice	(Info_Mod_Reislord_Pickpocket, DIALOG_BACK, Info_Mod_Reislord_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Reislord_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Reislord_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Reislord_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);
};

FUNC VOID Info_Mod_Reislord_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);

		Info_AddChoice	(Info_Mod_Reislord_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Reislord_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Reislord_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Reislord_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Reislord_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Reislord_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Reislord_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Reislord_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Reislord_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Reislord_EXIT (C_INFO)
{
	npc		= Mod_2002_BAU_Ricelord_MT;
	nr		= 1;
	condition	= Info_Mod_Reislord_EXIT_Condition;
	information	= Info_Mod_Reislord_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Reislord_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Reislord_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
