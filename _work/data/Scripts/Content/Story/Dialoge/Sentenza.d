INSTANCE Info_Mod_Sentenza_Hi (C_INFO)
{
	npc		= Mod_796_SLD_Sentenza_MT;
	nr		= 1;
	condition	= Info_Mod_Sentenza_Hi_Condition;
	information	= Info_Mod_Sentenza_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sentenza_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kagan_Isidro))
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_01) >= 6)
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_02) >= 6)
	&& (Npc_HasItems(hero, ItMi_Traumruf) >= 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sentenza_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Sentenza_Hi_09_00"); //Slyszalem, ze z Baala Kagana dostaliscie jakies bagienne lodygi. Pozwole sobie spojrzec.
	AI_Output(self, hero, "Info_Mod_Sentenza_Hi_09_01"); //Aah, 10 lodyg.

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, 5);
	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_02, 4);
	Npc_RemoveInvItems	(hero, ItMi_Traumruf, 1);

	B_ShowGivenThings	("10 lodyg roslin bagiennych podanych");

	AI_Output(self, hero, "Info_Mod_Sentenza_Hi_09_02"); //(do bohatera) Okay, mozesz kontynuowac teraz.
};

INSTANCE Info_Mod_Sentenza_Killer (C_INFO)
{
	npc		= Mod_796_SLD_Sentenza_MT;
	nr		= 1;
	condition	= Info_Mod_Sentenza_Killer_Condition;
	information	= Info_Mod_Sentenza_Killer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sentenza_Killer_Condition()
{
	if (Mod_SLD_Spy == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sentenza_Killer_Info()
{
	AI_Output(self, hero, "Info_Mod_Sentenza_Killer_09_00"); //Nie musisz nic mówic, juz wiem o co chodzi. Wiesz, moze jeszcze mozemy zapobiec atakowi.
	AI_Output(self, hero, "Info_Mod_Sentenza_Killer_09_01"); //Wszystko co musisz zrobic, to wziac ten krwawy miecz i ten list i przemycic je zarówno do klatki piersiowej Cuttera i szerzyc plotki o nim, tak aby jego klatka piersiowa moze byc kontrolowana w kazdym przypadku.
	AI_Output(hero, self, "Info_Mod_Sentenza_Killer_15_02"); //Nie wspomnialem nawet, ze redaktorka swiadka.... popelniles morderstwo.
	AI_Output(self, hero, "Info_Mod_Sentenza_Killer_09_03"); //Co wiec zrobic?
	AI_Output(self, hero, "Info_Mod_Sentenza_Killer_09_04"); //Jesli trzymasz usta zamkniete, Lee nie mówi nic na temat calej sprawy, a jesli dobrze wykonasz swoja prace, nikt nie dozna obrazen i bedziesz mial duzo zabawy. Zatem?

	Info_ClearChoices	(Info_Mod_Sentenza_Killer);

	Info_AddChoice	(Info_Mod_Sentenza_Killer, "Nie, nie daje sie zaangazowac w takie brudne gry.", Info_Mod_Sentenza_Killer_B);
	Info_AddChoice	(Info_Mod_Sentenza_Killer, "Dobrze, zrobie to.", Info_Mod_Sentenza_Killer_A);
};

FUNC VOID Info_Mod_Sentenza_Killer_B()
{
	AI_Output(hero, self, "Info_Mod_Sentenza_Killer_B_15_00"); //Nie, nie daje sie zaangazowac w takie brudne gry.
	AI_Output(self, hero, "Info_Mod_Sentenza_Killer_B_09_01"); //A zatem wszystko w porzadku. Bedziesz jednak tego zalowal.

	Mod_SLD_Spy = 1;
	
	Info_ClearChoices	(Info_Mod_Sentenza_Killer);
};

FUNC VOID Info_Mod_Sentenza_Killer_A()
{
	AI_Output(hero, self, "Info_Mod_Sentenza_Killer_A_15_00"); //Dobrze, zrobie to.
	AI_Output(self, hero, "Info_Mod_Sentenza_Killer_A_09_01"); //Dobre. Wiesz, co musisz zrobic.

	CreateInvItems	(hero, ItMw_BloodySword, 1);
	CreateInvItems	(hero, ItWr_SentenzaForCutter, 1);

	B_ShowGivenThings	("Krwawy miecz i notatka otrzymana");

	Mod_SLD_Spy = 5;

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Otrzymalem krwawy miecz z Sentenzy i list, który mam przemycic do klatki piersiowej Cuttera. Potem musze tylko pogloski, ze Cutter mial cos wspólnego z smiercia Bullita.");
	
	Info_ClearChoices	(Info_Mod_Sentenza_Killer);
};

INSTANCE Info_Mod_Sentenza_Cutter (C_INFO)
{
	npc		= Mod_796_SLD_Sentenza_MT;
	nr		= 1;
	condition	= Info_Mod_Sentenza_Cutter_Condition;
	information	= Info_Mod_Sentenza_Cutter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zrobilem wszystko, co nakazal mi pan zrobic.";
};

FUNC INT Info_Mod_Sentenza_Cutter_Condition()
{
	if (Mod_SLD_Spy == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sentenza_Cutter_Info()
{
	AI_Output(hero, self, "Info_Mod_Sentenza_Cutter_15_00"); //Zrobilem wszystko, co nakazal mi pan zrobic.
	AI_Output(self, hero, "Info_Mod_Sentenza_Cutter_09_01"); //Bardzo dobry. Oszczedzi to troche klopotów. Tutaj wez zloto jako nagrode.

	B_ShowGivenThings	("400 zlota i 12 zlota zakonserwowanych rudy");

	CreateInvItems	(hero, ItMi_Gold, 400);
	CreateInvItems	(hero, ItMi_Nugget, 12);

	Mod_SLD_Spy = 8;

	AI_Output(self, hero, "Info_Mod_Sentenza_Cutter_09_02"); //Wstep do grona mysliwych luczników Orc zblizyl Cie znacznie bardziej. Droga do pójscia.

	B_GivePlayerXP	(600);

	B_SetTopicStatus	(TOPIC_MOD_SLD_SPY, LOG_SUCCESS);
};

INSTANCE Info_Mod_Sentenza_Bruce (C_INFO)
{
	npc		= Mod_796_SLD_Sentenza_MT;
	nr		= 1;
	condition	= Info_Mod_Sentenza_Bruce_Condition;
	information	= Info_Mod_Sentenza_Bruce_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sentenza_Bruce_Condition()
{
	if (Mod_NL_BruceTot == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sentenza_Bruce_Info()
{
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_00"); //Hej, jestes dobrym wspólpracownikiem, czyz nie jestes? Tak, jestes. Duza ilosc spotkan i doswiadczen w walce.
	AI_Output(hero, self, "Info_Mod_Sentenza_Bruce_15_01"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_02"); //No cóz, jakis czas temu bylem przed obozowym goniacym zwierzeta. Widzialem jeden z tych kopców.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_03"); //Natychmiast uderzylem bydlo mieczem i wrzucilem je do jego ciala.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_04"); //Niestety, brudna istota odwrócila sie nagle i uciekla moim mieczem w jego ciele.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_05"); //Wzial sie on przed naszym obozem, prawdopodobnie ukrywajac sie w jaskini.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_06"); //Ale teraz ten miecz byl dziedziczeniem rodzinnym, z nim walczylem dopiero od mlodosci.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_07"); //Chce, zeby to wrócilo tak zle.
	AI_Output(hero, self, "Info_Mod_Sentenza_Bruce_15_08"); //I mam ja dostac dla Ciebie.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_09"); //Tak, to prawda. Puscilabym tez za to duza kawalkiem rudy..... ostrze jest dla mnie warte.
	AI_Output(hero, self, "Info_Mod_Sentenza_Bruce_15_10"); //Dobrze, zobaczmy, co mozemy zrobic.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_11"); //Wspanialy! Licze na Ciebie.

	Log_CreateTopic	(TOPIC_MOD_NL_SENTENZAKLINGE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_SENTENZAKLINGE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_SENTENZAKLINGE, "Sentenza powiedzial mi, ze podczas walki wywiercil swój ukochany miecz we krwi, a bydlo i jego miecz uciekly. Mówi sie, ze przeszedl on przed obozem i prawdopodobnie siedzi tam w jaskini. Obiecal mi wielka nagrode za zwrot broni, bo wydaje mi sie byc bardzo przywiazany do niej.");

	Wld_InsertNpc	(Mod_7641_BUD_Buddler_MT, "OC1");
	B_KillNpc	(Mod_7641_BUD_Buddler_MT);
};

INSTANCE Info_Mod_Sentenza_Pickpocket (C_INFO)
{
	npc		= Mod_796_SLD_Sentenza_MT;
	nr		= 1;
	condition	= Info_Mod_Sentenza_Pickpocket_Condition;
	information	= Info_Mod_Sentenza_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Sentenza_Pickpocket_Condition()
{
	C_Beklauen	(79, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Sentenza_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);

	Info_AddChoice	(Info_Mod_Sentenza_Pickpocket, DIALOG_BACK, Info_Mod_Sentenza_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sentenza_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sentenza_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sentenza_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);
};

FUNC VOID Info_Mod_Sentenza_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);

		Info_AddChoice	(Info_Mod_Sentenza_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sentenza_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sentenza_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sentenza_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sentenza_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sentenza_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sentenza_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sentenza_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sentenza_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sentenza_EXIT (C_INFO)
{
	npc		= Mod_796_SLD_Sentenza_MT;
	nr		= 1;
	condition	= Info_Mod_Sentenza_EXIT_Condition;
	information	= Info_Mod_Sentenza_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sentenza_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sentenza_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
