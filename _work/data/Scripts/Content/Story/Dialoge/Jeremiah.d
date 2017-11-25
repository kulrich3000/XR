INSTANCE Info_Mod_Jeremiah_Hi (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_Hi_Condition;
	information	= Info_Mod_Jeremiah_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj, za co odpowiadasz?";
};

FUNC INT Info_Mod_Jeremiah_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jeremiah_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Jeremiah_Hi_15_00"); //Witaj, za co odpowiadasz?
	AI_Output(self, hero, "Info_Mod_Jeremiah_Hi_04_01"); //Jestem alchemikiem i gorzelnikiem obozu. Teraz jestem dosc zajety. Byc moze za kilka dni bede mial wiecej czasu na rozmowy.

	Mod_NL_JeremiahDay = Wld_GetDay();
};

INSTANCE Info_Mod_Jeremiah_Diver (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_Diver_Condition;
	information	= Info_Mod_Jeremiah_Diver_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jeremiah_Diver_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_Hi))
	&& (Wld_GetDay()-3 >= Mod_NL_JeremiahDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jeremiah_Diver_Info()
{
	AI_Output(self, hero, "Info_Mod_Jeremiah_Diver_04_00"); //Ach, jestes na czasie.
	AI_Output(hero, self, "Info_Mod_Jeremiah_Diver_15_01"); //Co to jest z czym?
	AI_Output(self, hero, "Info_Mod_Jeremiah_Diver_04_02"); //Nie nalezysz do tych pijanych zlodziei, którzy zazwyczaj siedza w pubie. Jestes skazany na umiejetnosc plywania i nurkowania.
	AI_Output(hero, self, "Info_Mod_Jeremiah_Diver_15_03"); //Tak, przypuszczam, ze tak. Mam juz kilka metrów przeplyniecia....
	AI_Output(self, hero, "Info_Mod_Jeremiah_Diver_04_04"); //Bardzo dobry. Jakis czas temu duzo mnie ziolami z powodu ziól na brzegu jeziora w dól przy wójcie ryzowym. Myslalem, ze pamietam, ze widzialem ja wczesniej w ksiazce.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Diver_04_05"); //W kazdym razie, eksperymentowalem z nim troche i znalazlem dla niego sensowne zastosowanie. W miedzyczasie jednak zebralem wszystko na bankach i zastanawialem sie, czy nie.....
	AI_Output(hero, self, "Info_Mod_Jeremiah_Diver_15_06"); //Jesli pózniej nie moglam zanurkowac w jeziorze.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Diver_04_07"); //Tak, to prawda. Roslina ma dlugie, zwarte liscie, latwe do rozpoznania. Przynies mi piec kopii. To powinno trwac przez chwile.

	Log_CreateTopic	(TOPIC_MOD_SLD_JEREMIAHKRAUT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_JEREMIAHKRAUT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_JEREMIAHKRAUT, "Mam zanurkowac w jeziorze w dól przez wladce ryzu na ziolo z dlugimi, zabkowanymi liscmi i przywiezc do Jeremiasza piec z nich.");
};

INSTANCE Info_Mod_Jeremiah_Kraut (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_Kraut_Condition;
	information	= Info_Mod_Jeremiah_Kraut_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam ziolo..... Mysle.";
};

FUNC INT Info_Mod_Jeremiah_Kraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_Diver))
	&& (Mod_NL_Herkuleskraut == 1)
	&& (Npc_HasItems(hero, ItPl_Herkuleskraut) >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jeremiah_Kraut_Info()
{
	AI_Output(hero, self, "Info_Mod_Jeremiah_Kraut_15_00"); //Mam ziolo..... Mysle.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Kraut_04_01"); //Doskonaly, daj mi.....

	B_GiveInvItems	(hero, self, ItPl_Herkuleskraut, 5);

	AI_Output(self, hero, "Info_Mod_Jeremiah_Kraut_04_02"); //Dziekuje troche - powiem ci, co mozesz zrobic z roslinami.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Kraut_04_03"); //W zadnym wypadku nie mów nikomu o tym w obozie. Nie slyszal o tym gonna Lee.
	AI_Output(hero, self, "Info_Mod_Jeremiah_Kraut_15_04"); //Tak, to prawda.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Kraut_04_05"); //Jesli obrócisz lodyge z tego ziola wymieszana z chwastem bagiennym, doswiadczysz efektu, który wygladzi Twoja skóre z skarpetek.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Kraut_04_06"); //Potega energii, której doswiadczasz jest ogromna... przynajmniej tak dlugo, jak dlugo efekt trwa. Potem trzeba najpierw odpoczac.

	B_SetTopicStatus	(TOPIC_MOD_SLD_JEREMIAHKRAUT, LOG_SUCCESS);

	B_GivePlayerXP	(300);

	Mod_NL_JeremiahDay = Wld_GetDay();

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Jeremiah_Swimmer (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_Swimmer_Condition;
	information	= Info_Mod_Jeremiah_Swimmer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jeremiah_Swimmer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_Kraut))
	&& (Wld_GetDay()-2 >= Mod_NL_JeremiahDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jeremiah_Swimmer_Info()
{
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_00"); //Udowodniles juz, ze mozesz plywac i nurkowac.
	AI_Output(hero, self, "Info_Mod_Jeremiah_Swimmer_15_01"); //Co mam zrobic tym razem?
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_02"); //Cóz, plywanie i nurkowanie.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_03"); //Kiedy najemnicy raz zamordowali przy jeziorze przed obozem kilka czarownic, które rozmnazaly sie tam bardzo zywo, zauwazylem, zbierajac ziola, ze inne zwierzeta byly calkowicie zwariowane w stosunku do okreslonych organów czarownic.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_04"); //Stwierdzilem, ze zawieral on plyn, który mógl zwiekszyc koncentracje i witalnosc.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_05"); //Teraz w poblizu naszego jeziora w obozie byl Dammlurker. Ktos go kiedys zabil.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_06"); //Wczesniej jednak bydlo moglo w jakims miejscu zlozyc jaja. Byl to jedyny cyrker na tym obszarze i slyszalem raz, ze wycofuja sie oni od swoich przedstawicieli, podczas gdy sie rozmnazaja.
	AI_Output(hero, self, "Info_Mod_Jeremiah_Swimmer_15_07"); //I mam nurkowac teraz, aby znalezc dostep do jaskini, gdzie moga byc jaja?
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_08"); //Tak, widze, ze rozumiesz. Jesli znajdziesz jajka, przynies je do mnie. Normalnie istoty wylegaja sie o tej porze roku, wiec powinny byc juz dobrze rozwiniete.......

	Log_CreateTopic	(TOPIC_MOD_SLD_JEREMIAHLURKER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_JEREMIAHLURKER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_JEREMIAHLURKER, "Jeremiasz chce, abym nurkowal w obozowym jeziorze i szukal jaskini czarownicy. Jesli znajde jajeczka, powinienem go przyniesc.");
};

INSTANCE Info_Mod_Jeremiah_Lurker (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_Lurker_Condition;
	information	= Info_Mod_Jeremiah_Lurker_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj wlasciwie znalazlem jakies jajka.";
};

FUNC INT Info_Mod_Jeremiah_Lurker_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_Swimmer))
	&& (Npc_HasItems(hero, ItMi_LurkerEgg) == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jeremiah_Lurker_Info()
{
	AI_Output(hero, self, "Info_Mod_Jeremiah_Lurker_15_00"); //Tutaj wlasciwie znalazlem jakies jajka.

	B_GiveInvItems	(hero, self, ItMi_LurkerEgg, 5);

	AI_Output(self, hero, "Info_Mod_Jeremiah_Lurker_04_01"); //Wykonal pan dobra, doskonala prace. Mam nadzieje, ze bede w stanie wyodrebnic wystarczajaco duzo wydzieliny z takiego swiezego surowca.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Lurker_04_02"); //W kazdym razie raz eksperymentowalem z roslina zwana Kronstöckel. Rzadko, ale duzo podrózujesz.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Lurker_04_03"); //Jesli otrzymasz jeszcze dwie kolejne kopie, zaparze ci eliksir, który trwale zwiekszy twoja koncentracje i witalnosc.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Lurker_04_04"); //W miedzyczasie zaczynam z jajka wybijac "czarownice"... Wiecej

	B_LogEntry	(TOPIC_MOD_SLD_JEREMIAHLURKER, "Teraz Jeremiasz chce zrobic mi eliksir, gdybym dostal go dwie czapki.");

	B_GivePlayerXP	(250);

	Mod_NL_JeremiahHasEier = 1;
	Mod_NL_JeremiahHasEier_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Jeremiah_PermHerb (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_PermHerb_Condition;
	information	= Info_Mod_Jeremiah_PermHerb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam rosliny.";
};

FUNC INT Info_Mod_Jeremiah_PermHerb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_Lurker))
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jeremiah_PermHerb_Info()
{
	AI_Output(hero, self, "Info_Mod_Jeremiah_PermHerb_15_00"); //Mam rosliny.

	B_GiveInvItems	(hero, self, ItPl_Perm_Herb, 2);

	AI_Output(self, hero, "Info_Mod_Jeremiah_PermHerb_04_01"); //Wybitny. To stworzy wspanialy napar, uh, wielki eliksir.
	AI_Output(self, hero, "Info_Mod_Jeremiah_PermHerb_04_02"); //Male stworzenia dawaly tez wieksze i mocniejsze wydzieliny niz sie spodziewalem.....
	AI_Output(self, hero, "Info_Mod_Jeremiah_PermHerb_04_03"); //Wróc jutro. Wtedy powinienem to zrobic.

	B_SetTopicStatus	(TOPIC_MOD_SLD_JEREMIAHLURKER, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	Mod_NL_JeremiahDay = Wld_GetDay();

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Jeremiah_SpecialTrank (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_SpecialTrank_Condition;
	information	= Info_Mod_Jeremiah_SpecialTrank_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jeremiah_SpecialTrank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_PermHerb))
	&& (Wld_GetDay() > Mod_NL_JeremiahDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jeremiah_SpecialTrank_Info()
{
	AI_Output(self, hero, "Info_Mod_Jeremiah_SpecialTrank_04_00"); //Och, tam jestescie. Eliksir dla Ciebie jest gotowy. Tutaj jest, Panie Panu. Glowa!

	B_GiveInvItems	(self, hero, ItPo_Health_01, 1);

	B_UseItem	(hero, ItPo_Health_01);

	hero.attribute[ATR_STRENGTH] += 4;
	hero.attribute[ATR_DEXTERITY] += 4;
	hero.attribute[ATR_HITPOINTS_MAX] += 4;
	hero.attribute[ATR_HITPOINTS] += 4;

	PrintScreen	("Wytrzymalosc + 4, Umiejetnosc + 4, Energia zyciowa + 4", -1, -1, FONT_SCREEN, 2);

	AI_Output(self, hero, "Info_Mod_Jeremiah_SpecialTrank_04_01"); //A co? Jak sie czujesz?
	AI_Output(hero, self, "Info_Mod_Jeremiah_SpecialTrank_15_02"); //Bardzo dobrze, dlaczego pytasz?
	AI_Output(self, hero, "Info_Mod_Jeremiah_SpecialTrank_04_03"); //Ach, uh, tylko z powodu..... z powodu smaku, to prawda.
	AI_Output(hero, self, "Info_Mod_Jeremiah_SpecialTrank_15_04"); //Hmm, dla kogos, kto ma przede wszystkim doswiadczenie destylacji i obserwacji natury, wydaje sie byc dosc utalentowany w alchemii. Mysle, ze tak, czyz nie?
	AI_Output(self, hero, "Info_Mod_Jeremiah_SpecialTrank_04_05"); //Hmm, tak.... Tak, jak widac, rozumiem mój handel. (do samego Puh, potem wszystko poszlo dobrze....

	var oCNpc her;
	her = Hlp_GetNpc (hero);
	var int totaldivingtime;
	totaldivingtime = roundf(her.divetime);
	totaldivingtime = totaldivingtime*2;
	her.divetime = mkf(totaldivingtime);
};

INSTANCE Info_Mod_Jeremiah_Pickpocket (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_Pickpocket_Condition;
	information	= Info_Mod_Jeremiah_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Jeremiah_Pickpocket_Condition()
{
	C_Beklauen	(51, ItMi_Flask, 3);
};

FUNC VOID Info_Mod_Jeremiah_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);

	Info_AddChoice	(Info_Mod_Jeremiah_Pickpocket, DIALOG_BACK, Info_Mod_Jeremiah_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jeremiah_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jeremiah_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jeremiah_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);
};

FUNC VOID Info_Mod_Jeremiah_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);

		Info_AddChoice	(Info_Mod_Jeremiah_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jeremiah_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jeremiah_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jeremiah_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jeremiah_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jeremiah_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jeremiah_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jeremiah_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jeremiah_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jeremiah_EXIT (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_EXIT_Condition;
	information	= Info_Mod_Jeremiah_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jeremiah_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jeremiah_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
