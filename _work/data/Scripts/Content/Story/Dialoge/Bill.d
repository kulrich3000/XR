INSTANCE Info_Mod_Bill_Hi (C_INFO)
{
	npc		= Mod_929_PIR_Bill_AW;
	nr		= 1;
	condition	= Info_Mod_Bill_Hi_Condition;
	information	= Info_Mod_Bill_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Bill_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bill_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Bill_Hi_03_01"); //Jestem Bill.
};

INSTANCE Info_Mod_Bill_Rezept (C_INFO)
{
	npc		= Mod_929_PIR_Bill_AW;
	nr		= 1;
	condition	= Info_Mod_Bill_Rezept_Condition;
	information	= Info_Mod_Bill_Rezept_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem cos z waszego.";
};

FUNC INT Info_Mod_Bill_Rezept_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alvro_Melasse))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bill_Hi))
	&& (Npc_HasItems(hero, Mod_BillsRumRezept) == 1)
	&& (Mod_BillsRezeptGelesen == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bill_Rezept_Info()
{
	AI_Output(hero, self, "Info_Mod_Bill_Rezept_15_00"); //Dostalem cos z waszego.
	AI_Output(self, hero, "Info_Mod_Bill_Rezept_03_01"); //Co masz na mysli?
	AI_Output(hero, self, "Info_Mod_Bill_Rezept_15_02"); //Te notatke znalazlem w Alvro. To Twój list.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Bill_Rezept_03_03"); //Um, no cóz, to nie tak wyglada. Po prostu nie chcialem znów ponownie polowac na skarb.
	AI_Output(self, hero, "Info_Mod_Bill_Rezept_03_04"); //Niemal ostatni raz zginelismy.
	AI_Output(hero, self, "Info_Mod_Bill_Rezept_15_05"); //Powinienem zglosic sie do Greg.
	AI_Output(self, hero, "Info_Mod_Bill_Rezept_03_06"); //Nie, nie rób tego. Moge Ci kiedys pomóc.

	Info_ClearChoices	(Info_Mod_Bill_Rezept);

	Info_AddChoice	(Info_Mod_Bill_Rezept, "Dobrze, nie powiem o Tobie i pomozesz mi.", Info_Mod_Bill_Rezept_JA);
	Info_AddChoice	(Info_Mod_Bill_Rezept, "Nie, jestem gonna ide zobaczyc Greg.", Info_Mod_Bill_Rezept_NEIN);
};

FUNC VOID Info_Mod_Bill_Rezept_JA()
{
	AI_Output(hero, self, "Info_Mod_Bill_Rezept_JA_15_00"); //Dobrze, nie powiem o Tobie i pomozesz mi.
	AI_Output(self, hero, "Info_Mod_Bill_Rezept_JA_03_01"); //Dzieki. Jesli masz problem, przyjdz do mnie juz teraz, pomoze Ci.

	Info_ClearChoices	(Info_Mod_Bill_Rezept);
};

FUNC VOID Info_Mod_Bill_Rezept_NEIN()
{
	AI_Output(hero, self, "Info_Mod_Bill_Rezept_NEIN_15_00"); //Nie, jestem gonna ide zobaczyc Greg.
	AI_Output(self, hero, "Info_Mod_Bill_Rezept_NEIN_03_01"); //Cokolwiek pan powiedzial, ale móglbym byc dla pana uzyteczny.

	Mod_BillsVerbrechenPetzen = 1;
	
	Info_ClearChoices	(Info_Mod_Bill_Rezept);
};

INSTANCE Info_Mod_Bill_Befreiung (C_INFO)
{
	npc		= Mod_929_PIR_Bill_AW;
	nr		= 1;
	condition	= Info_Mod_Bill_Befreiung_Condition;
	information	= Info_Mod_Bill_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wyciagasz tak dlugi ryj, czy cos sie wydarzylo?";
};

FUNC INT Info_Mod_Bill_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Befreiung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bill_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung_15_00"); //Wyciagasz tak dlugi ryj, czy cos sie wydarzylo?
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_01"); //Mysle, ze móglby pan to powiedziec. Mój przyjaciel, Owen, nie ma juz tutaj.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_02"); //Od kiedy zostalismy zaatakowani przez nieumarlych i ten kult, zniknal bez sladu.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_03"); //Mysle, ze uciekl z przerazeniem, ale zastanawiam sie jak to zrobil, bo obóz byl zamkniety.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_04"); //Nie wiem co robic.
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung_15_05"); //Gdzie ostatnio zobaczyles Owen? Nie moze po prostu zniknac.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_06"); //Ostatnio, przed atakiem na strazników za jeziorem w poblizu domu Greg, poniewaz jest droga prowadzaca w góry i stamtad jestesmy na lasce potencjalnych ataków nieumarlych.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_07"); //Mysle, ze on tam zniknal.
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung_15_08"); //Dziwne jest to, ze postaram sie znalezc twojego przyjaciela.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_09"); //Naprawde? Nie moge Ci wystarczajaco podziekowac.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_10"); //Chcialem powiedziec, ze Alligator Jack równiez pozostal do znalezienia Billa.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_11"); //Moze mozna sie z nim dogonic.
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung_15_12"); //Cóz, dziekuje za informacje. Bede na drodze.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung_03_13"); //Powodzenia!
	
	Log_CreateTopic	(TOPIC_MOD_BEL_PIRBILL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRBILL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_PIRBILL, "Przyjaciel Billa Owena zniknal od nieumarlego ataku. Ostatnio spotkal sie z nim w poblizu chaty Greg w drodze na góry. Powinienem rozpoczac wyszukiwanie tam.");
};

INSTANCE Info_Mod_Bill_Befreiung2 (C_INFO)
{
	npc		= Mod_929_PIR_Bill_AW;
	nr		= 1;
	condition	= Info_Mod_Bill_Befreiung2_Condition;
	information	= Info_Mod_Bill_Befreiung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Owen wróce do Ciebie.";
};

FUNC INT Info_Mod_Bill_Befreiung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bill_Befreiung))
	&& (Npc_KnowsInfo(hero, Info_Mod_Owen_Befreiung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bill_Befreiung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung2_15_00"); //Owen wróce do Ciebie.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung2_03_01"); //Dziekuje, dziekuje. Nie moge Ci wystarczajaco podziekowac. Zapisales Owena. Tutaj wez to!

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(hero, self, "Info_Mod_Bill_Befreiung2_15_02"); //Dzieki. Ale mam dla ciebie jakies zle wiesci.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung2_03_03"); //(zdziwiony) Ach, tak? Co o tym chodzi?
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung2_15_04"); //Alligator Jack. Jego cialo znalazlem w górach. Zostal zabity przez bandytów, którzy równiez porwali Owena.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung2_03_05"); //(muttering) To moze.... nie moze byc. Alligator Jack byl jednym z najlepszych.
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung2_15_06"); //Nie rozumiem tego takze. Ale znalazlem jego cialo.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung2_03_07"); //Zmarl, aby pomóc swoim towarzyszom. Bedziemy pic do jego dobrego samopoczucia i uczynic go przyzwoitym pogrzebem.
	AI_Output(self, hero, "Info_Mod_Bill_Befreiung2_03_08"); //W kazdym razie dziekuje za pomoc. Teraz, jesli mnie wybaczycie, to zajme sie Owenem.
	AI_Output(hero, self, "Info_Mod_Bill_Befreiung2_15_09"); //Wszystko jasne.

	B_GivePlayerXP	(600);

	Npc_ClearAIQueue	(Mod_939_PIR_Owen_AW);

	B_StartOtherRoutine	(Mod_939_PIR_Owen_AW, "START");

	Mod_Piratenbefreiung += 1;
	
	B_LogEntry_More	(TOPIC_MOD_BEL_PIRBILL, TOPIC_MOD_BEL_PIRATENLAGER, "Przynioslem Owena do Billa i opowiedzialem mu o Alligatorze Jacka.", "Znalazlem go dla Billa Owena. Niestety, zabito podnosnik aligator w poszukiwaniu owena.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRBILL, LOG_SUCCESS);
};

INSTANCE Info_Mod_Bill_Pickpocket (C_INFO)
{
	npc		= Mod_929_PIR_Bill_AW;
	nr		= 1;
	condition	= Info_Mod_Bill_Pickpocket_Condition;
	information	= Info_Mod_Bill_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Bill_Pickpocket_Condition()
{
	C_Beklauen	(50, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Bill_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bill_Pickpocket);

	Info_AddChoice	(Info_Mod_Bill_Pickpocket, DIALOG_BACK, Info_Mod_Bill_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bill_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bill_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bill_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bill_Pickpocket);
};

FUNC VOID Info_Mod_Bill_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bill_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bill_Pickpocket);

		Info_AddChoice	(Info_Mod_Bill_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bill_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bill_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bill_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bill_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bill_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bill_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bill_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bill_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bill_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bill_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bill_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bill_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bill_EXIT (C_INFO)
{
	npc		= Mod_929_PIR_Bill_AW;
	nr		= 1;
	condition	= Info_Mod_Bill_EXIT_Condition;
	information	= Info_Mod_Bill_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bill_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bill_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
