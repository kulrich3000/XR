INSTANCE Info_Mod_Vino_Hi (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Hi_Condition;
	information	= Info_Mod_Vino_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Vino_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vino_Hi_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Vino_Hi_05_01"); //Lagodna praca, posciel. Podczas gdy wygodnie sie bawiles w kopule.
	AI_Output(hero, self, "Info_Mod_Vino_Hi_15_02"); //Masz jakies bledne wyobrazenia, boje sie.
	AI_Output(self, hero, "Info_Mod_Vino_Hi_05_03"); //Widzialem wszystkie rzeczy, które wyslali. Ksiaze móglby na tym zyc!

	Info_ClearChoices	(Info_Mod_Vino_Hi);

	Info_AddChoice	(Info_Mod_Vino_Hi, "To bylo wspaniale zycie!", Info_Mod_Vino_Hi_B);
	Info_AddChoice	(Info_Mod_Vino_Hi, "To prawda. Reszta nie widziala niczego.", Info_Mod_Vino_Hi_A);
};

FUNC VOID Info_Mod_Vino_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Vino_Hi_B_15_00"); //To bylo wspaniale zycie!
	AI_Output(self, hero, "Info_Mod_Vino_Hi_B_05_01"); //Wylaczyc fuck up!

	Info_ClearChoices	(Info_Mod_Vino_Hi);

	Info_AddChoice	(Info_Mod_Vino_Hi, "Piwo i kobiety kazdej nocy....", Info_Mod_Vino_Hi_D);
	Info_AddChoice	(Info_Mod_Vino_Hi, "Mysle, ze lepiej jest, gdy idziem powoli.", Info_Mod_Vino_Hi_C);
};

FUNC VOID Info_Mod_Vino_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Vino_Hi_A_15_00"); //To prawda. Reszta nie widziala niczego.
	AI_Output(self, hero, "Info_Mod_Vino_Hi_A_05_01"); //Ty bujasz pilki, czlowiek. Wyciagnij z tego fuge!

	Info_ClearChoices	(Info_Mod_Vino_Hi);
};

FUNC VOID Info_Mod_Vino_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Vino_Hi_D_15_00"); //Piwo i kobiety kazdej nocy....
	AI_Output(self, hero, "Info_Mod_Vino_Hi_D_05_01"); //Pokaze Ci!

	Info_ClearChoices	(Info_Mod_Vino_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Vino_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Vino_Hi_C_15_00"); //Mysle, ze lepiej jest, gdy idziem powoli.
	AI_Output(self, hero, "Info_Mod_Vino_Hi_C_05_01"); //Tak, zgubic sie!

	Info_ClearChoices	(Info_Mod_Vino_Hi);
};

INSTANCE Info_Mod_Vino_Pruegel (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Pruegel_Condition;
	information	= Info_Mod_Vino_Pruegel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vino_Pruegel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Hi))
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
	{
		return 1;
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Vino_Hi))
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	{
		Mod_VinoWillRache = 1;
	};
};

FUNC VOID Info_Mod_Vino_Pruegel_Info()
{
	AI_Output(self, hero, "Info_Mod_Vino_Pruegel_05_00"); //Przez takie chwile pracuje caly dzien.
							
	// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;
};

INSTANCE Info_Mod_Vino_KingImRing (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_KingImRing_Condition;
	information	= Info_Mod_Vino_KingImRing_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vino_KingImRing_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Hi))
	&& (Kapitel > 2)
	&& (Mod_VinoWillRache == 1)
	&& (((!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_01_VinoBrennerei))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_02_VinoBrennerei)))
	|| (Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei3)))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_KingImRing_Info()
{
	AI_Output(self, hero, "Info_Mod_Vino_KingImRing_05_00"); //Hej!
	AI_Output(hero, self, "Info_Mod_Vino_KingImRing_15_01"); //Rozmawiasz do mnie?
	AI_Output(self, hero, "Info_Mod_Vino_KingImRing_05_02"); //Obrazal mnie pan raz bardzo zle.
	AI_Output(hero, self, "Info_Mod_Vino_KingImRing_15_03"); //Mówisz, skonczyles?
	AI_Output(self, hero, "Info_Mod_Vino_KingImRing_05_04"); //Na te chwile dlugo czekalem.
	AI_Output(hero, self, "Info_Mod_Vino_KingImRing_15_05"); //Dlaczego nie jestes rozsadny?
	AI_Output(self, hero, "Info_Mod_Vino_KingImRing_05_06"); //Teraz Twoja kolej!

	AI_StopProcessInfos	(self);

	B_SetAttributesToChapter	(self, 3);

	self.level = 10;

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Vino_Brennerei (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Brennerei_Condition;
	information	= Info_Mod_Vino_Brennerei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tak wiec w tym wlasnie miejscu jestes. Co sie dzieje?";
};

FUNC INT Info_Mod_Vino_Brennerei_Condition()
{
	if (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_Brennerei_Info()
{
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei_15_00"); //Tak wiec w tym wlasnie miejscu jestes. Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_01"); //Co sie dzieje? Prawie sie zlapalem.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_02"); //Tylko dzieki Nandorowi wciaz zyje. Wyciagnal mnie z jaskini, kiedy stracilem zmysly....
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei_15_03"); //Co dokladnie sie stalo?
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_04"); //Te ohydne bestie..... i opuscily beczki, gdzie sie znajdowaly.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_05"); //Ale kiedy uslyszalem te odglosy przy drzwiach, odlozylem je na bok, aby sluchaly z uchem przy drzwiach.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_06"); //A kiedy spojrzalem znowu w dól..... byly te straszne stworzenia wiszace na nogach...... a potem poszla mi czarna.
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei_15_07"); //Tak, nie brzmi tak ladnie. Ale jak Pan teraz postepuje? Brakuje im juz na podwórku....
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_08"); //Wlasciwie czuje sie juz dosc wyleczony..... ale wciaz nie moge wrócic na podwórko.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_09"); //Na podestu ponizej, niezliczona liczba owych obrzydliwych pajakowych bestii ciagle jeszcze raczkuje.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_10"); //Tak dlugo, jak tylko tam beda, nie postawie stopy w jaskini.

	if (!Npc_KnowsInfo(hero, Info_Mod_Nandor_VinoBrennerei))
	{
		B_LogEntry	(TOPIC_MOD_VINO_WO, "Vino jest w obozie Nandora. Zostal zaatakowany przez male pajaki, ale wkrótce powróci do zdrowia.");
	};

	B_LogEntry	(TOPIC_MOD_VINO_WO, "Nie moze jednak wrócic na podwórko, bo pajaki wciaz rozkrecaja sie w jaskini z teleporterka.");

	B_GivePlayerXP	(150);

	// Tür zum Spinnenbau aufschließen

	var int ptr;
	ptr = MEM_SearchVobByName("DOOR_SPINNENBAU_01");

	if (ptr > 0)
	{
		MEM_AssignInst(Platzhalter_Door, ptr);

		Platzhalter_Door._oCMobLockable_bitfield = Platzhalter_Door._oCMobLockable_bitfield & ~ oCMobLockable_bitfield_locked;
	};

	ptr = MEM_SearchVobByName("DOOR_SPINNENBAU_02");

	if (ptr > 0)
	{
		MEM_AssignInst(Platzhalter_Door, ptr);

		Platzhalter_Door._oCMobLockable_bitfield = Platzhalter_Door._oCMobLockable_bitfield & ~ oCMobLockable_bitfield_locked;
	};
};

INSTANCE Info_Mod_Vino_Brennerei2 (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Brennerei2_Condition;
	information	= Info_Mod_Vino_Brennerei2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Podest jest bezpieczny.";
};

FUNC INT Info_Mod_Vino_Brennerei2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	&& (Mod_Vino_Brennerei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_Brennerei2_Info()
{
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei2_15_00"); //Podest jest bezpieczny.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei2_05_01"); //Naprawde? Zadne z tych paskudnych bestii nie zostalo?
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei2_05_02"); //Dobrze, sprawdze, czy jest to naprawde bezpieczne.

	B_GivePlayerXP	(250);

	B_StartOtherRoutine	(self, "TELEPORT");
};

INSTANCE Info_Mod_Vino_Brennerei3 (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Brennerei3_Condition;
	information	= Info_Mod_Vino_Brennerei3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vino_Brennerei3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei2))
	&& (Npc_GetDistToWP(self, "FARM1") < 10000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_Brennerei3_Info()
{
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_00"); //Ach, tam jestescie. Dziekujemy bardzo za pomoc z pajakiem.
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei3_15_01"); //Znów znów znów?
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_02"); //Tak, radze sobie swietnie.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_03"); //(lekko melancholijny) No cóz, tylko w gorzelni prawdopodobnie nie postawie na razie stopy w gorzelni, dopóki pajaki beda kawortowac w jaskiniach i korytarzach.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_04"); //(znów jeszcze bardziej radosny) Zreszta tutaj, troche dziekuje - dziekuje - to troche zlota i niektóre z moich dobrych likierów ziolowych.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_05"); //Dzialaja pobudzajaco i szybko ozywiaja kazdego chorego. Dla zdrowia.

	B_GivePlayerXP	(200);

	B_GiveInvItems	(self, hero, ItMi_Gold, 60);

	B_SetTopicStatus	(TOPIC_MOD_VINO_WO, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Vino_Brennerei4 (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Brennerei4_Condition;
	information	= Info_Mod_Vino_Brennerei4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie ma juz zagrozenia ze strony pajaków.";
};

FUNC INT Info_Mod_Vino_Brennerei4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei3))
	&& (Npc_IsDead(Spider_Queen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_Brennerei4_Info()
{
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei4_15_00"); //Nie ma juz zagrozenia ze strony pajaków. Twoja królowa byla kiedys.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_01"); //Naprawde? To wspaniala wiadomosc. Wkrótce bede mógl ponownie odwiedzic moja gorzelnie.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_02"); //Brakowalo mi juz stolu alchemii.....
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_03"); //Hmm, ale jak moge panu teraz podziekowac? Jestem z Schnappsa.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_04"); //Ale poczekaj.... Wez ten pierscien tutaj.

	B_GiveInvItems	(self, hero, ItRi_Alchemist, 1);

	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_05"); //Znalazlem go z powrotem w jaskini zanim zaczalem palic.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_06"); //Mialem wrazenie, ze pomógl mi szybko uchwycic podstawy alchemii.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_07"); //No cóz, teraz juz tego nie potrzebuje. Moze zrobi ci cos dobrego.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Vino_Pickpocket (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Pickpocket_Condition;
	information	= Info_Mod_Vino_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Vino_Pickpocket_Condition()
{
	C_Beklauen	(34, ItPl_Weed, 4);
};

FUNC VOID Info_Mod_Vino_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Vino_Pickpocket);

	Info_AddChoice	(Info_Mod_Vino_Pickpocket, DIALOG_BACK, Info_Mod_Vino_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Vino_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Vino_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Vino_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Vino_Pickpocket);
};

FUNC VOID Info_Mod_Vino_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Vino_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Vino_Pickpocket);

		Info_AddChoice	(Info_Mod_Vino_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Vino_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Vino_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Vino_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Vino_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Vino_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Vino_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Vino_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Vino_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Vino_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Vino_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Vino_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Vino_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Vino_EXIT (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_EXIT_Condition;
	information	= Info_Mod_Vino_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Vino_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vino_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
