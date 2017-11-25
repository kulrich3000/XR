INSTANCE Info_Mod_Rath_Hi (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_Hi_Condition;
	information	= Info_Mod_Rath_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Rath_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rath_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Rath_Hi_08_01"); //Jestem Rath. Czego chcesz?
};

INSTANCE Info_Mod_Rath_Sumpfkraut (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_Sumpfkraut_Condition;
	information	= Info_Mod_Rath_Sumpfkraut_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem tu ladunek chwastów bagiennych.";
};

FUNC INT Info_Mod_Rath_Sumpfkraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rath_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Namib_Dealer))
	&& (Npc_HasItems(hero, ItMi_HerbPaket) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rath_Sumpfkraut_Info()
{
	AI_Output(hero, self, "Info_Mod_Rath_Sumpfkraut_15_00"); //Dostalem tu ladunek chwastów bagiennych.
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_01"); //Swamport? Czego chce z tym gówno?
	AI_Output(hero, self, "Info_Mod_Rath_Sumpfkraut_15_02"); //Baal Namib kazal mi zrzucic go na miejsce.
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_03"); //Jestes powazny, prawda?
	AI_Output(hero, self, "Info_Mod_Rath_Sumpfkraut_15_04"); //Jesli tak, to czy tak bylo?
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_05"); //To zbyt smieszne (smiech) Nikt dzis nie pali!
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_06"); //To jest kosztowne, a potem przez godzine bedziesz wysoki.
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_07"); //Mówie, ze przyszlosc jest w radosnym dozowniku.
	AI_Output(hero, self, "Info_Mod_Rath_Sumpfkraut_15_08"); //Przyjemnosc dla dawcy? Co to jest znów?
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_09"); //Czy zyjesz za ksiezycem? Przyjemnosc jest nowym narkotykiem. Tanie, mocne i szybkie.
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_10"); //Podmiana nie moze w zaden sposób konkurowac!
	AI_Output(hero, self, "Info_Mod_Rath_Sumpfkraut_15_11"); //Sooso.... skad czerpiesz te radosc?
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_12"); //W Khorata, jestes usciskany. Na targowisku jest czlowiek, który praktycznie go rozdaje.

	B_LogEntry	(TOPIC_MOD_SEKTE_DEALER, "Rath uwaza za bardzo zabawne, ze próbowalem go sprzedac. Mówi, ze ziolo bagienne nie jest juz wedzone, poniewaz jest o wiele za drogie. Nowy lek nosi nazwe Freudenspender, który gosc sprzedaje na rynku Khorata. Mialem o tym opowiedziec Baalowi Namibowi.");
};

INSTANCE Info_Mod_Rath_Training (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_Training_Condition;
	information	= Info_Mod_Rath_Training_Info;
	permanent	= 0;
	important	= 0;
	description	= "Na Ciebie czeka szkolenie Patricka.";
};

FUNC INT Info_Mod_Rath_Training_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Patrick_Training))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rath_Training_Info()
{
	AI_Output(hero, self, "Info_Mod_Rath_Training_15_00"); //Na Ciebie czeka szkolenie Patricka.
	AI_Output(self, hero, "Info_Mod_Rath_Training_08_01"); //Och, czlowiek, nie musisz byc. Pójde jeszcze raz.

	Info_ClearChoices	(Info_Mod_Rath_Training);

	Info_AddChoice	(Info_Mod_Rath_Training, "Wtedy byc moze bede musial ci pomóc kilka razy.", Info_Mod_Rath_Training_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Rath_Training, "Daje ci 100 zlotych monet. Co mówisz?", Info_Mod_Rath_Training_A);
	};
};

FUNC VOID Info_Mod_Rath_Training_B()
{
	AI_Output(hero, self, "Info_Mod_Rath_Training_B_15_00"); //Wtedy byc moze bede musial ci pomóc kilka razy.
	AI_Output(self, hero, "Info_Mod_Rath_Training_B_08_01"); //Chcesz sie ze mna zamieszac? Zapraszamy tutaj!

	Info_ClearChoices	(Info_Mod_Rath_Training);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	Mod_SLD_Rath = 2;
};

FUNC VOID Info_Mod_Rath_Training_A()
{
	AI_Output(hero, self, "Info_Mod_Rath_Training_A_15_00"); //Daje ci 100 zlotych monet. Co mówisz?
	AI_Output(self, hero, "Info_Mod_Rath_Training_A_08_01"); //Sto setek zlotych monet? Co chce z tym zrobic? Nie, jesli dostajesz mnie pieciu nowicjuszy zielonych lub 12 czystych bagnistych lodyg, jestem w srodku.

	Info_ClearChoices	(Info_Mod_Rath_Training);

	Mod_SLD_Rath = 1;
};

INSTANCE Info_Mod_Rath_Joints (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_Joints_Condition;
	information	= Info_Mod_Rath_Joints_Info;
	permanent	= 1;
	important	= 0;
	description	= "Tutaj masz.....";
};

FUNC INT Info_Mod_Rath_Joints_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rath_Training))
	&& (Mod_SLD_Rath == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rath_Joints_Info()
{
	AI_Output(hero, self, "Info_Mod_Rath_Joints_15_00"); //Tutaj masz.....
	
	Info_ClearChoices	(Info_Mod_Rath_Joints);

	Info_AddChoice	(Info_Mod_Rath_Joints, DIALOG_BACK, Info_Mod_Rath_Joints_C);

	if (Npc_HasItems(hero, ItMi_Joint) >= 12)
	{
		Info_AddChoice	(Info_Mod_Rath_Joints, "... 12 lodyg chwastów bagiennych", Info_Mod_Rath_Joints_B);
	};
	if (Npc_HasItems(hero, ItMi_Addon_Joint_01) >= 5)
	{
		Info_AddChoice	(Info_Mod_Rath_Joints, "... 5 zielonych nowicjuszy", Info_Mod_Rath_Joints_A);
	};
};

FUNC VOID Info_Mod_Rath_Joints_C()
{
	Info_ClearChoices	(Info_Mod_Rath_Joints);
};

FUNC VOID Info_Mod_Rath_Joints_D()
{
	AI_Output(self, hero, "Info_Mod_Rath_Joints_D_08_00"); //Doskonaly. Tak naprawde nie wydaje sie, zebys przez dlugi czas byl w obozie. Za te bagnista ambrozje bralem nawet na siebie dwa trolle.

	Info_ClearChoices	(Info_Mod_Rath_Joints);

	AI_StopProcessInfos	(self);

	Mod_SLD_Rath = 3;

	B_LogEntry	(TOPIC_MOD_SLD_PATRICK, "Wiec z odrobina perswazji, Rath jest na jego drodze do praktyki.");

	B_StartOtherRoutine	(self, "TRAINING");
};

FUNC VOID Info_Mod_Rath_Joints_B()
{
	AI_Output(hero, self, "Info_Mod_Rath_Joints_B_15_00"); //... 12 lodyg bagna.

	B_GiveInvItems	(hero, self, ItMi_Joint, 12);

	Info_Mod_Rath_Joints_D();
};

FUNC VOID Info_Mod_Rath_Joints_A()
{
	AI_Output(hero, self, "Info_Mod_Rath_Joints_A_15_00"); //... 5 zielonych nowicjuszy.

	B_GiveInvItems	(hero, self, ItMi_Addon_Joint_01, 5);

	Info_Mod_Rath_Joints_D();
};

INSTANCE Info_Mod_Rath_Umgehauen (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_Umgehauen_Condition;
	information	= Info_Mod_Rath_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rath_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rath_Training))
	&& (Mod_SLD_Rath == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rath_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Rath_Umgehauen_08_00"); //Uderza, kregoslup, plecy....
			AI_Output(hero, self, "Info_Mod_Rath_Umgehauen_15_01"); //No cóz, troche trening zrobi ci dobrze na plecach.
			AI_Output(self, hero, "Info_Mod_Rath_Umgehauen_08_02"); //Tak, tak, tak, ide.

			Mod_SLD_Rath = 3;

			B_LogEntry	(TOPIC_MOD_SLD_PATRICK, "Wiec z odrobina perswazji, Rath jest na jego drodze do praktyki.");

			B_StartOtherRoutine	(self, "TRAINING");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Rath_Umgehauen_08_03"); //Nic z treningiem.

			Mod_SLD_Rath = 1;
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Rath_Pickpocket (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_Pickpocket_Condition;
	information	= Info_Mod_Rath_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Rath_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Rath_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Rath_Pickpocket);

	Info_AddChoice	(Info_Mod_Rath_Pickpocket, DIALOG_BACK, Info_Mod_Rath_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Rath_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Rath_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Rath_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Rath_Pickpocket);
};

FUNC VOID Info_Mod_Rath_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Rath_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Rath_Pickpocket);

		Info_AddChoice	(Info_Mod_Rath_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Rath_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Rath_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Rath_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Rath_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Rath_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Rath_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Rath_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Rath_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Rath_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Rath_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Rath_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Rath_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Rath_EXIT (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_EXIT_Condition;
	information	= Info_Mod_Rath_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Rath_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rath_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
