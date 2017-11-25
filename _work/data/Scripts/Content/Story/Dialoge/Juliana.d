INSTANCE Info_Mod_Juliana_Hi (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Hi_Condition;
	information	= Info_Mod_Juliana_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj.";
};

FUNC INT Info_Mod_Juliana_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Juliana_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Hi_15_00"); //Witaj.
	AI_Output(self, hero, "Info_Mod_Juliana_Hi_35_01"); //Czego chcesz?
};

INSTANCE Info_Mod_Juliana_WasLos (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_WasLos_Condition;
	information	= Info_Mod_Juliana_WasLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego tak wrogosc?";
};

FUNC INT Info_Mod_Juliana_WasLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Hi))
	&& (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_WasLos_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_WasLos_15_00"); //Dlaczego tak wrogosc?
	AI_Output(self, hero, "Info_Mod_Juliana_WasLos_35_01"); //Mam inne rzeczy do zmartwienia, niz pozwalanie mi rozmawiac.
	AI_Output(hero, self, "Info_Mod_Juliana_WasLos_15_02"); //To mnie teraz interesuje.
	AI_Output(self, hero, "Info_Mod_Juliana_WasLos_35_03"); //Nie jestes dobrze poinformowany. plotki graja ja w kazdej alei!
	AI_Output(self, hero, "Info_Mod_Juliana_WasLos_35_04"); //Mój maz zaginal wczoraj rano w drodze do pracy. Nikt nie wie gdzie.
	AI_Output(self, hero, "Info_Mod_Juliana_WasLos_35_05"); //Teraz, jesli mnie wybaczycie.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_ENDRES, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_ENDRES, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Juliana martwi sie, ze jej maz zostaje. Nie polecila mi wyraznie, abym zbadala sprawe, ale bede trzymal oczy i uszy otwarte.");
};

INSTANCE Info_Mod_Juliana_Endres (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres_Condition;
	information	= Info_Mod_Juliana_Endres_Info;
	permanent	= 0;
	important	= 0;
	description	= "Koniec jest martwy.";
};

FUNC INT Info_Mod_Juliana_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_15_00"); //Koniec jest martwy.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_15_01"); //Jego cialo dostalo sie do sieci wodociagowej i stamtad umylo sie do jeziora.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_35_02"); //(wstrzasy) Nie! Jak do tego doszlo?
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_15_03"); //Wyglada to jak morderstwo.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_15_04"); //Zajme sie znalezieniem winowajcy. Musze zadac kilka pytan.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_35_05"); //(apatyczny) Tak..... dzieki mnie.

	Info_ClearChoices	(Info_Mod_Juliana_Endres);

	Info_AddChoice	(Info_Mod_Juliana_Endres, "Kto móglby miec motywacje do zabicia go?", Info_Mod_Juliana_Endres_B);
	Info_AddChoice	(Info_Mod_Juliana_Endres, "Co zrobil Endres w ciagu ostatnich kilku tygodni?", Info_Mod_Juliana_Endres_A);
};

FUNC VOID Info_Mod_Juliana_Endres_C()
{
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_C_35_00"); //Przed rozpoczeciem badania nalezy najpierw udac sie do naszego uzdrowiciela.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_C_35_01"); //Jestem pewien, ze moze ci powiedziec co.... Przyczyna smierci.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Przed jego smiercia Endres byl zaangazowany w projekt, na potrzeby którego wydobywal rude z kopalni. Nie chce, aby poszukiwacze rozmawiali z nim. Zanim jednak pójde do nich, powinienem porozmawiac z uzdrowicielem.");

	B_StartOtherRoutine	(self, "HAUS");

	AI_Teleport	(Mod_7483_OUT_Endres_REL, "REL_CITY_244");
	B_StartOtherRoutine	(Mod_7483_OUT_Endres_REL, "ARZT");

	if (Mod_REL_Stadthalter != 2) {
		B_StartOtherRoutine	(Mod_7480_OUT_Wendel_REL, "START");
	};

	B_StartOtherRoutine	(Mod_7481_OUT_Monteur_REL, "START");

	B_KillNpc	(Mod_7483_OUT_Endres_REL);

	Info_ClearChoices	(Info_Mod_Juliana_Endres);
	
	var int platformPtr; platformPtr = MEM_SearchVobByName ("ENDRESPLATFORM");
	var zCVob platform; platform = MEM_PtrToInst(platformPtr);
	platform.bitfield[0] = platform.bitfield[0] & ~zCVob_bitfield0_collDetectionDynamic;
};

FUNC VOID Info_Mod_Juliana_Endres_B()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_B_15_00"); //Kto móglby miec motywacje do zabicia go?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_B_35_01"); //Górnicy sa niezadowoleni z pracy.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_B_35_02"); //Skarza sie, kiedy moga i obwiniac Endresa za swoja sytuacje.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_B_35_03"); //Jest ich kilka, które ja..... myslec, ze taka straszna rzecz by sie wydarzyla.

	Mod_Juliana_Endres_02 = 1;

	if (Mod_Juliana_Endres_01 == 1)
	{
		Info_Mod_Juliana_Endres_C();
	};
};

FUNC VOID Info_Mod_Juliana_Endres_A()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_A_15_00"); //Co zrobil Endres w ciagu ostatnich kilku tygodni?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_A_35_01"); //Mial swietny pomysl na udoskonalenie rur wodnych.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_A_35_02"); //Odkryl, ze rury wykonane z rudy nie rdzewieja i nie wydzielaja toksycznych substancji do wody, a niewielka kopalnia w poblizu miasta jest wykorzystywana do wydobycia rudy.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_A_35_03"); //W ciagu dnia spedzal tam wiekszosc czasu, a w nocy byl zawsze w domu.

	Mod_Juliana_Endres_01 = 1;

	if (Mod_Juliana_Endres_02 == 1)
	{
		Info_Mod_Juliana_Endres_C();
	};
};

INSTANCE Info_Mod_Juliana_Endres02 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres02_Condition;
	information	= Info_Mod_Juliana_Endres02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze, ze jestes szantazowany.";
};

FUNC INT Info_Mod_Juliana_Endres02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leonhard_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres02_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres02_15_00"); //Slysze, ze jestes szantazowany.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres02_35_01"); //Ah.... Ach, to nic.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres02_15_02"); //Chcialbym zadac panstwu kilka pytan. Jesli jestes niewinny, nie masz nic do zmartwienia.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres02_35_03"); //Jesli to pomaga....
};

INSTANCE Info_Mod_Juliana_Endres03 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres03_Condition;
	information	= Info_Mod_Juliana_Endres03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie zginales, kiedy Endowie?";
};

FUNC INT Info_Mod_Juliana_Endres03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres03_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres03_15_00"); //Gdzie zginales, kiedy Endowie?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres03_35_01"); //Czekam na niego.... w domu.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres03_15_02"); //Czy jest ktos, kto moze o tym zaswiadczyc?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres03_35_03"); //Nie, nie sadze.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Juliana byla wówczas domem samotnym. To oczywiscie nie jest takie dobre.");
};

INSTANCE Info_Mod_Juliana_Endres04 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres04_Condition;
	information	= Info_Mod_Juliana_Endres04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sadzisz o Wendel?";
};

FUNC INT Info_Mod_Juliana_Endres04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres04_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres04_15_00"); //Co sadzisz o Wendel?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres04_35_01"); //Wskazuje za swoja wiedza, ale jest w porzadku. Cichy facet.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Juliana uwaza, ze Wendel jest chwalebna, ale spokojna osoba.");
};

INSTANCE Info_Mod_Juliana_Endres05 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres05_Condition;
	information	= Info_Mod_Juliana_Endres05_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego uzdrowiciel szantazuje Cie?";
};

FUNC INT Info_Mod_Juliana_Endres05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres05_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres05_15_00"); //Dlaczego uzdrowiciel szantazuje Cie?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_35_01"); //Mysle, ze potrzebuje pieniedzy.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres05_15_02"); //Dlaczego mnie szantazujesz?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_35_03"); //Nie moge ci to powiedziec.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres05_15_04"); //Wszystko w porzadku, ale to rzuca zle swiatlo na ciebie.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_35_05"); //Pomiedzy Endresem a mna sprawy nie zawsze przebiegaly tak dobrze.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_35_06"); //Czesto bylem na niego gniewny, poniewaz jego praca byla dla niego tak wazna. Co wazniejsze ode mnie....
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_35_07"); //Ale ja go nigdy bym go nie zabil!

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Juliana twierdzila, ze nie zabila Endresa, mimo ze ostatnio byla na niego bardzo wsciekla.");
};

INSTANCE Info_Mod_Juliana_Endres06 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres06_Condition;
	information	= Info_Mod_Juliana_Endres06_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jest jeszcze cos innego, co chcialbym wiedziec.";
};

FUNC INT Info_Mod_Juliana_Endres06_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres06_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres06_15_00"); //Jest jeszcze cos innego, co chcialbym wiedziec.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres06_15_01"); //W jakim stopniu byles tak naprawde przywiazany do planów uzdrowicieli?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres06_35_02"); //Znalem to. Wiedzialem, ze on go zabije i bylem tak szalony w Endres, ze nie powstrzymalem go.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres06_35_03"); //Kiedy zaluje, ze bylo za pózno. Oczywiscie uzdrowiciel uzyl tego jako karty przetargowej przeciwko mnie.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres06_15_04"); //Po co byl szantazowany?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres06_35_05"); //Moja tajemnica. Kochal mnie, czy wiedziales?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres06_35_06"); //Zniszczyl wszystko, na czym wisialem, abym mógl przyjac go za centrum mojego zycia.
};

INSTANCE Info_Mod_Juliana_Freudenspender (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Freudenspender_Condition;
	information	= Info_Mod_Juliana_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Przyjemnosc - dawca przeciwko smutkowi?";
};                       

FUNC INT Info_Mod_Juliana_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Juliana_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Freudenspender_15_00"); //Przyjemnosc - dawca przeciwko smutkowi?
	AI_Output(self, hero, "Info_Mod_Juliana_Freudenspender_35_01"); //Byc moze...... Dlaczego nie? Dzieki.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Juliana_Pickpocket (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Pickpocket_Condition;
	information	= Info_Mod_Juliana_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Juliana_Pickpocket_Condition()
{
	C_Beklauen	(57, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Juliana_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);

	Info_AddChoice	(Info_Mod_Juliana_Pickpocket, DIALOG_BACK, Info_Mod_Juliana_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Juliana_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Juliana_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Juliana_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);
};

FUNC VOID Info_Mod_Juliana_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);

		Info_AddChoice	(Info_Mod_Juliana_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Juliana_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Juliana_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Juliana_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Juliana_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Juliana_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Juliana_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Juliana_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Juliana_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Juliana_EXIT (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_EXIT_Condition;
	information	= Info_Mod_Juliana_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Juliana_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Juliana_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
