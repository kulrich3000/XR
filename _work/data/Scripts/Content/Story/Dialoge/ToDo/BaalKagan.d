INSTANCE Info_Mod_Kagan_Hi (C_INFO)
{
	npc		= Mod_1117_PSINOV_BaalKagan_MT;
	nr		= 1;
	condition	= Info_Mod_Kagan_Hi_Condition;
	information	= Info_Mod_Kagan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy wiec nadal gonisz za bagnem w obozie?";
};

FUNC INT Info_Mod_Kagan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kagan_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_15_00"); //Czy wiec nadal gonisz za bagnem w obozie?
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_13_01"); //Oh, czasy dla handlu zielami bagiennymi w Nowym Obozie sa zle, poniewaz Lee zdolal w duzej mierze ograniczyc spozycie ziól bagiennych dzieki nowym zasadom.
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_15_02"); //Co robisz w Nowym Obozie?
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_13_03"); //Dostalem rozkaz powrotu Baala Isidro do obozu bagiennego.
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_15_04"); //Dlaczego nie wykonujesz swojej pracy?
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_13_05"); //I jak? On jest w pubie, czyz nie? A teraz dopuszczeni sa tylko najemnicy i poszukiwacze.
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_15_06"); //On kiedys wychodzi z domu. Najpózniej wtedy, gdy skonczy mu sie zloto i nie dostanie juz booze.
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_13_07"); //Ach, tak? Ktos podarowal mu garsc rudy dla jego bagna tuz przed upadkiem zapory. A po upadku bariery, dzieki otwartemu juz handlowi, wartosc rudy wzrosla 50-krotnie.
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_13_08"); //Moze uplynac kilka miesiecy lub lat, zanim skonczy sie z rudy i musi opuscic pub. Do tego czasu musze zostac i czekac, bo bez Isidro nie moge byc w obozie.

	Info_ClearChoices	(Info_Mod_Kagan_Hi);

	Info_AddChoice	(Info_Mod_Kagan_Hi, "Nie jestem zainteresowany.", Info_Mod_Kagan_Hi_B);
	Info_AddChoice	(Info_Mod_Kagan_Hi, "Moze moge wam pomóc.....", Info_Mod_Kagan_Hi_A);
};

FUNC VOID Info_Mod_Kagan_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_B_15_00"); //Nie jestem zainteresowany.
	
	Info_ClearChoices	(Info_Mod_Kagan_Hi);
};

FUNC VOID Info_Mod_Kagan_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_A_15_00"); //Moze moge wam pomóc.....
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_A_13_01"); //Czy to prawda?

	Mod_SLD_Kagan = 1;
	
	Info_ClearChoices	(Info_Mod_Kagan_Hi);

	Info_AddChoice	(Info_Mod_Kagan_Hi, "Oczywiscie, ale chce czegos w zamian.", Info_Mod_Kagan_Hi_D);
	Info_AddChoice	(Info_Mod_Kagan_Hi, "Oczywiscie, jakos go wyprowadze z baru.", Info_Mod_Kagan_Hi_C);
};

FUNC VOID Info_Mod_Kagan_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_D_15_00"); //Oczywiscie, ale chce czegos w zamian.
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_D_13_01"); //Daje wam wszystko to, co mialem przy sobie, gdy wyjedziecie go z pubu.
	
	Info_ClearChoices	(Info_Mod_Kagan_Hi);
};

FUNC VOID Info_Mod_Kagan_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_C_15_00"); //Oczywiscie, jakos go wyprowadze z baru.
	
	Info_ClearChoices	(Info_Mod_Kagan_Hi);
};

INSTANCE Info_Mod_Kagan_Isidro (C_INFO)
{
	npc		= Mod_1117_PSINOV_BaalKagan_MT;
	nr		= 1;
	condition	= Info_Mod_Kagan_Isidro_Condition;
	information	= Info_Mod_Kagan_Isidro_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kagan_Isidro_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Isidro_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kagan_Isidro_Info()
{
	AI_Output(self, hero, "Info_Mod_Kagan_Isidro_13_00"); //Ahh, tam wreszcie jest. Oto moja chwast bagienny, który dziekuje za to, co zrobiles.

	B_ShowGivenThings	("16 lodyg kapusty bagiennej konserwowanej");

	CreateInvItems	(hero, ItMi_Addon_Joint_01, 7);
	CreateInvItems	(hero, ItMi_Addon_Joint_02, 6);
	CreateInvItems	(hero, ItMi_Traumruf, 3);

	AI_TurnToNpc	(self, Mod_1118_PSINOV_BaalIsidro_MT);

	AI_Output(self, hero, "Info_Mod_Kagan_Isidro_13_01"); //(Bitowac dla Isidro) Tak, a teraz wraca do naszego obozu.

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LAGER");
	B_StartOtherRoutine	(Mod_1118_PSINOV_BaalIsidro_MT, "LAGER");
};

INSTANCE Info_Mod_Kagan_Pickpocket (C_INFO)
{
	npc		= Mod_1117_PSINOV_BaalKagan_MT;
	nr		= 1;
	condition	= Info_Mod_Kagan_Pickpocket_Condition;
	information	= Info_Mod_Kagan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Kagan_Pickpocket_Condition()
{
	C_Beklauen	(116, ItMi_Gold, 44);
};

FUNC VOID Info_Mod_Kagan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);

	Info_AddChoice	(Info_Mod_Kagan_Pickpocket, DIALOG_BACK, Info_Mod_Kagan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Kagan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Kagan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Kagan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);
};

FUNC VOID Info_Mod_Kagan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);

		Info_AddChoice	(Info_Mod_Kagan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Kagan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Kagan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Kagan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Kagan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Kagan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Kagan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Kagan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Kagan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Kagan_EXIT (C_INFO)
{
	npc		= Mod_1117_PSINOV_BaalKagan_MT;
	nr		= 1;
	condition	= Info_Mod_Kagan_EXIT_Condition;
	information	= Info_Mod_Kagan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kagan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kagan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
