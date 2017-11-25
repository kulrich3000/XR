INSTANCE Info_Mod_Bosper_Hi (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Hi_Condition;
	information	= Info_Mod_Bosper_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bosper_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bosper_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bosper_Hi_11_00"); //(nieprzyjazny) Hej! Co Pan tutaj robi?
};

INSTANCE Info_Mod_Bosper_HandelstDu (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_HandelstDu_Condition;
	information	= Info_Mod_Bosper_HandelstDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy handlujesz?";
};

FUNC INT Info_Mod_Bosper_HandelstDu_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bosper_HandelstDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_HandelstDu_15_00"); //Czy handlujesz?
	AI_Output(self, hero, "Info_Mod_Bosper_HandelstDu_11_01"); //Tak, ale nie z wami. Jestes jednym z tych typ�w kolonii. Nie ufam Tobie.
};

INSTANCE Info_Mod_Bosper_WiesoMisstrauen (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_WiesoMisstrauen_Condition;
	information	= Info_Mod_Bosper_WiesoMisstrauen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego mi nie ufasz?";
};

FUNC INT Info_Mod_Bosper_WiesoMisstrauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_HandelstDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_WiesoMisstrauen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_WiesoMisstrauen_15_00"); //Dlaczego mi nie ufasz?
	AI_Output(self, hero, "Info_Mod_Bosper_WiesoMisstrauen_11_01"); //No c�z, nic nie wrzucilbys do zapory.
	AI_Output(self, hero, "Info_Mod_Bosper_WiesoMisstrauen_11_02"); //M�j biznes jest wystarczajaco dobry, wiec nie musze sobie radzic z riffraffem.
};

INSTANCE Info_Mod_Bosper_Lehrling (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Lehrling_Condition;
	information	= Info_Mod_Bosper_Lehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce byc obywatelem miasta.";
};

FUNC INT Info_Mod_Bosper_Lehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Matteo_OberesViertel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Lehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Lehrling_15_00"); //Chce byc obywatelem miasta.
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_01"); //Moge sobie tylko wyobrazic. Ale nie moge sobie wyobrazic, ze warto.
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_02"); //Zeby to zrobic, musze panu zaufac.
	AI_Output(hero, self, "Info_Mod_Bosper_Lehrling_15_03"); //Co moge zrobic, aby Ci zaufac?
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_04"); //Przynies mi osiem sk�r z wilk�w.
	AI_Output(hero, self, "Info_Mod_Bosper_Lehrling_15_05"); //(smiech) Czy ufasz wszystkim ludziom, kt�rzy daja ci osiem sk�r wilk�w?
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_06"); //Nie, to tylko po to, aby przez jakis czas trzymac cie z dala od mnie.
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_07"); //Bede tak dlugo pytal, co inni mistrzowie maja do powiedzenia wam.
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_08"); //Poza tym juz teraz moge uzywac sk�rek.
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_09"); //najemnik Wolf wlasnie kupil cale moje zapasy.
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_10"); //Prawdopodobnie dzien zlodziei na farmie Onar' a potrzebuje zajecia, zanim zaczna wpadac na glupie pomysly......

	Log_CreateTopic	(TOPIC_MOD_BOSPERSFELLE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BOSPERSFELLE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BOSPERSFELLE, "Zeby uzyskac aprobate Bospers, powinienem przywiezc mu osiem wilk�w.");
};

INSTANCE Info_Mod_Bosper_DeinLehrling (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_DeinLehrling_Condition;
	information	= Info_Mod_Bosper_DeinLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy m�glbys mnie przyjac jako praktykanta?";
};

FUNC INT Info_Mod_Bosper_DeinLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Matteo_OberesViertel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_DeinLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_DeinLehrling_15_00"); //Czy m�glbys mnie przyjac jako praktykanta?
	AI_Output(self, hero, "Info_Mod_Bosper_DeinLehrling_11_01"); //Nie. Poza tym musisz byc obywatelem miasta, zanim zostaniesz przyjety na praktykanta.
};

INSTANCE Info_Mod_Bosper_Fell (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Fell_Condition;
	information	= Info_Mod_Bosper_Fell_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kto moze mnie nauczyc jak sk�rowac zwierzeta?";
};

FUNC INT Info_Mod_Bosper_Fell_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Lehrling))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Fell_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Fell_15_00"); //Kto moze mnie nauczyc jak sk�rowac zwierzeta?
	AI_Output(self, hero, "Info_Mod_Bosper_Fell_11_01"); //Moge nauczyc Cie jak sk�rowac zwierzeta.
};

INSTANCE Info_Mod_Bosper_FellLernen (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_FellLernen_Condition;
	information	= Info_Mod_Bosper_FellLernen_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("Zdjac sk�ry", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur));
};

FUNC INT Info_Mod_Bosper_FellLernen_Condition()
{
	Info_Mod_Bosper_FellLernen.description = B_BuildLearnString("Zdjac sk�ry", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur));

	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Fell))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_FellLernen_Info()
{
	AI_Output (hero, self, "Info_Mod_Bosper_FellLernen_15_00"); //Naucz mnie jak do sk�ry zwierzat!

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Fur))
	{
		AI_Output (self, other, "Info_Mod_Bosper_FellLernen_11_01"); //Dobre. Posluchaj. To w zasadzie calkiem proste.
		AI_Output (self, other, "Info_Mod_Bosper_FellLernen_11_02"); //Wyciaga sie ostre ostrze i rozciac brzuch bydla. Kilka mniejszych ciec wewnatrz n�g, a nastepnie mozna je sciagnac.
	};
};

INSTANCE Info_Mod_Bosper_Felle (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Felle_Condition;
	information	= Info_Mod_Bosper_Felle_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem tu osiem sk�r z wilk�w.";
};

FUNC INT Info_Mod_Bosper_Felle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Lehrling))
	&& (Npc_HasItems(hero, ItAt_WolfFur) + Npc_HasItems(hero, ItAt_WolfFur_Rein) >= 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Felle_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Felle_15_00"); //Dostalem tu osiem sk�r z wilk�w.

	var int rein; rein = Npc_HasItems(hero, ItAt_WolfFur_Rein);

	if (rein > 8) {
		rein = 8;
	};

	if (rein > 0) {
		B_GiveInvItems	(hero, self, ItAt_WolfFur_Rein, rein);
	};

	if (rein < 8) {
		rein = 8 - rein;

		B_GiveInvItems	(hero, self, ItAt_WolfFur, rein);
	};

	AI_Output(self, hero, "Info_Mod_Bosper_Felle_11_01"); //No c�z, przynajmniej wydaje sie pan uzdolnionym mysliwym.

	B_GiveInvItems	(self, hero, ItMi_Gold, 80);

	B_LogEntry	(TOPIC_MOD_BOSPERSFELLE, "Dalem Bosper sk�rki.");
	B_SetTopicStatus	(TOPIC_MOD_BOSPERSFELLE, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Bosper_BereitFuerLehrling (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_BereitFuerLehrling_Condition;
	information	= Info_Mod_Bosper_BereitFuerLehrling_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy myslisz, ze jestem godzien byc teraz obywatelem miasta?";
};

FUNC INT Info_Mod_Bosper_BereitFuerLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Felle))
	&& (Mod_LehrlingsStimmen < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_BereitFuerLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_BereitFuerLehrling_15_00"); //Czy myslisz, ze jestem godzien byc teraz obywatelem miasta?

	if (Mod_LehrlingsStimmen == 4)
	{
		AI_Output(self, hero, "Info_Mod_Bosper_BereitFuerLehrling_11_01"); //Inni mistrzowie zapewnili mnie, ze jestes niezawodny.
		AI_Output(self, hero, "Info_Mod_Bosper_BereitFuerLehrling_11_02"); //Wciaz mam pewne obawy, ale..... Dobrze, ze otrzymuje m�j glos.

		Mod_LehrlingsStimmen += 1;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bosper_BereitFuerLehrling_11_03"); //Zaczekam zobaczyc, co inni mistrzowie maja do powiedzenia o tobie, a dopiero wtedy osadze ciebie.
	};
};

INSTANCE Info_Mod_Bosper_DeinLehrling2 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_DeinLehrling2_Condition;
	information	= Info_Mod_Bosper_DeinLehrling2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce byc twoim uczniem.";
};

FUNC INT Info_Mod_Bosper_DeinLehrling2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Felle))
	&& (Mod_LehrlingsStimmen == 5)
	&& (Mod_IstLehrling	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_DeinLehrling2_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_DeinLehrling2_15_00"); //Chce byc twoim uczniem.
	AI_Output(self, hero, "Info_Mod_Bosper_DeinLehrling2_11_01"); //Wlasciwie nie biore praktykant�w.
	AI_Output(self, hero, "Info_Mod_Bosper_DeinLehrling2_11_02"); //Jesli chcesz byc mysliwym, udaj sie do Rangers.
};

INSTANCE Info_Mod_Bosper_Aufnahme (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Aufnahme_Condition;
	information	= Info_Mod_Bosper_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wole uczyc sie z wami.";
};

FUNC INT Info_Mod_Bosper_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_DeinLehrling2))
	&& (Mod_IstLehrling == 0)
	&& (Mod_LehrlingsStimmen == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Aufnahme_15_00"); //Wole uczyc sie z wami.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_11_01"); //Jezus Chrystus.... C�z, spr�bujmy spr�bowac.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_11_02"); //Jesli jednak okaze sie, ze bedziesz leniwy lub kradziez ode mnie, Tw�j trening zostanie natychmiast odwolany. Wszystko w porzadku?

	Info_ClearChoices	(Info_Mod_Bosper_Aufnahme);

	Info_AddChoice	(Info_Mod_Bosper_Aufnahme, "Wole nie.", Info_Mod_Bosper_Aufnahme_B);
	Info_AddChoice	(Info_Mod_Bosper_Aufnahme, "Kiedy zaczynamy?", Info_Mod_Bosper_Aufnahme_A);
};

FUNC VOID Info_Mod_Bosper_Aufnahme_B()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Aufnahme_B_15_00"); //Wole nie.

	Info_ClearChoices	(Info_Mod_Bosper_Aufnahme);
};

FUNC VOID Info_Mod_Bosper_Aufnahme_A()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Aufnahme_A_15_00"); //Kiedy zaczynamy?
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_01"); //W tej wlasnie chwili.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_02"); //Przedstawiajac Ci te ubrania obywatelskie, jestes teraz obywatelem Khorinis.

	CreateInvItems	(hero, ItAr_Vlk_H, 1);
	B_ShowGivenThings	("przyjac odziez cywilna");

	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_03"); //Jako mysliwy powinienes wiedziec, jak najpierw uzyc luku.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_04"); //Miecz bedzie ci malo pomocny, chyba ze bedziesz walczyc z agresywnymi przeciwnikami, kt�rzy nie uciekaja przed toba.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_05"); //Lowca obserwuje okolice z wysokiego fotela lub innej podniesionej pozycji.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_06"); //Gdy zwierze zbliza sie do niego, zaciska luk lub kusze w cichy spos�b i zmierza do najbardziej wrazliwej czesci ciala zwierzecia.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_07"); //W wiekszosci przypadk�w jest to glowa, ale w niekt�rych potworach cialo i konczyny moga byc szczeg�lnie narazone.
	AI_Output(hero, self, "Info_Mod_Bosper_Aufnahme_A_15_08"); //Oczywiscie.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_09"); //Twoje pierwsze zadanie bedzie polegalo na ukrywaniu mnie przez knur�w.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_10"); //Upewnij sie jednak, ze sk�ra pozostaje tak nieuszkodzona, jak to tylko mozliwe, tzn. skierowana na nogi.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_11"); //Uszkodzone sk�ry przynosza mniej zlota i trudno sie ich pozbyc.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_12"); //Oczywiscie mozna r�wniez spr�bowac dostac nieuszkodzona sk�re nad martwa bluznierstwem istot z nieostra bronia.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_13"); //Ale to jest wlasciwie cos dla surowych nietoperzy, kt�rzy polegaja na czystej przemocy, a nie dla zrecznych mysliwych.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_14"); //Ponadto w okolo polowie przypadk�w zdarzy sie tez, ze sk�ra zwierzat, a tym samym ich futro peka lub rozdziera sie w wyniku masywnych uderzen.
	AI_Output(hero, self, "Info_Mod_Bosper_Aufnahme_A_15_15"); //Gdzie moge znalezc Keiler?
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_16"); //W rzeczywistosci mozna je znalezc wszedzie. Rozejrzyjmy sie, ze jest to czesc udanego polowania.
	AI_Output(hero, self, "Info_Mod_Bosper_Aufnahme_A_15_18"); //I ile sk�r potrzebujesz?
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_19"); //Zaprowadz mnie piec nieuszkodzonych sk�rek, a pokaze Ci jak robic lepsze strzaly.

	Mod_IstLehrling	= 1;

	Mod_LehrlingBei = 4;

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_BOSPER_ONE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_ONE, LOG_RUNNING);

	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Auftrag))
	{
		B_LogEntry_NMore	(TOPIC_MOD_B�RGER, TOPIC_MOD_LEHRLING_BOSPER_ONE, TOPIC_MOD_TORLOFSPIONAGE, "Bosper, Bogner, przyjal mnie jako swojego ucznia. To czyni mnie teraz obywatelem miasta.", "Moje pierwsze zadanie dla Bospera polega na zaopatrzeniu go w piec nieuszkodzonych sk�r z knur�w. Dostaje to, strzelajac w nogi kliny.", "Poniewaz Bosper przyjal mnie jako swojego ucznia, moge teraz wejsc do wyzszej kwatery.");
	}
	else
	{
		B_LogEntry_More	(TOPIC_MOD_B�RGER, TOPIC_MOD_LEHRLING_BOSPER_ONE, "Bosper, Bogner, przyjal mnie jako swojego ucznia. To czyni mnie teraz obywatelem miasta.", "Moje pierwsze zadanie dla Bospera polega na zaopatrzeniu go w piec nieuszkodzonych sk�r z knur�w. Dostaje to, strzelajac w nogi kliny.");
	};

	B_SetTopicStatus	(TOPIC_MOD_B�RGER, LOG_SUCCESS);

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Bosper_Aufnahme);
};

INSTANCE Info_Mod_Bosper_GildenZeug (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_GildenZeug_Condition;
	information	= Info_Mod_Bosper_GildenZeug_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bosper_GildenZeug_Condition()
{
	if (Mod_LehrlingBei == 4)
	&& (hero.guild > GIL_NONE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_GildenZeug_Info()
{
	if (hero.guild == GIL_PAL)
	{
		AI_Output(self, hero, "Info_Mod_Bosper_GildenZeug_11_00"); //Nie pomyslalem. Od niegodziwca do lawmana.
	}
	else if (hero.guild == GIL_VLK)
	{
		AI_Output(self, hero, "Info_Mod_Bosper_GildenZeug_11_01"); //Czego chcesz z magami? Nie potrafia ci nic powiedziec o lucznictwie!
	}
	else if (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Bosper_GildenZeug_11_02"); //Czego chcesz z magami? Nie potrafia ci nic powiedziec o lucznictwie!
	}
	else if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Bosper_GildenZeug_11_03"); //Moglabym powiedziec, ze bylbys przyciagniety do najemnik�w. Ale maja dobrych lucznik�w, chlopc�w.
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output(self, hero, "Info_Mod_Bosper_GildenZeug_11_04"); //Nie mysl nawet o oddawaniu holdu swojemu bogu!
	};
};

INSTANCE Info_Mod_Bosper_LehrlingQuest (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Piec sk�r z dzika, nieuszkodzonych.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest_Condition()
{
	if (Mod_LehrlingBei == 4)
	&& (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Rein) >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest_15_00"); //Piec sk�r z dzika, nieuszkodzonych.

	B_GiveInvItems	(hero, self, ItAt_Addon_KeilerFur_Rein, 5);

	Npc_RemoveInvItems	(self, ItAt_Addon_KeilerFur_Rein, 5);

	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_01"); //(kontrola) Tak, nalezy ich uzyc.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_02"); //Oto troche pieniedzy. Ale nie spozywaj go na piwo i lekkie dziewczyny!

	B_GiveInvItems	(self, hero, ItMi_Gold, (5 * Value_KeilerFur_Rein) / 2);

	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_03"); //Teraz, gdy udowodniliscie, ze jestescie racjonalnie sprawni, chcialbym przedstawic wam sztuke strzalek.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_04"); //Noszenie normalnej strzalki nie stanowi zadnego problemu nawet dla poczatkujacych.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_05"); //Istnieja jednak pewne sztuczki, jak uzyskac wyspecjalizowane lub ulepszone strzaly.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_06"); //Zacznijmy od grilla.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_07"); //Wszystko czego potrzebujesz to lekki kawalek gietego zelaza.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_08"); //Mozna ja kupic u niemal kazdego kowala.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_09"); //W przedniej czesci strzalki rysujesz cztery naciecia w tej samej odleglosci, kt�re wypelnij lepka ciecza, a nastepnie wl�z do nich kawalki zelaza.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_10"); //Nalezy zawsze zwracac uwage na wywazenie strzalki.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_11"); //Pod zelazkiem cierpi dokladnosc strzaly, ale przy odrobinie szczescia mozna zadac ciezkie rany krwawiace na przeciwnika, co oslabia go coraz bardziej.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest_15_12"); //Czy moge go r�wniez uzyc do poprawy moich juz gotowych strzalek?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_13"); //Oczywiscie tak jest. Zalecam zrobienie tego na stoisku Thorben.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_14"); //Jako rzemieslnik zmontowal tam caly niezbedny sprzet.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_15"); //Teraz powinienes zapoznac sie z tym, co ci przez jakis czas powiedzialem.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_16"); //Wr�cmy z powrotem, a my p�jdziemy dalej.

	B_GivePlayerXP	(100);

	CurrentNQ += 1;

	Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_PFEILE, "Moge teraz wykonac strzalke kolczasta z wierzcholka strzaly i walu strzalki. Strzalka ta nie uderza tak czesto, ale rozrywa glebsze rany.");

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_ONE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Bosper_LehrlingQuest2 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest2_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kontynuujmy trening.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest2_15_00"); //Kontynuujmy trening.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_01"); //Gdzie i tak sie rozstawiasz? Ledwie jestes w miescie.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest2_15_02"); //Ratuje swiat i rzeczy.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_03"); //Moge sie z soba pieprzyc.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_04"); //Potrzebuje jednak panstwa pomocy.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_05"); //Abuyin zam�wil mi cztery cieniste sk�ry, ale mysliwi sprowadzili tylko jedna.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_06"); //Pozostaje jeszcze trzy do wykonania.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest2_15_07"); //Do czego Abuyin potrzebuje cienia?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_08"); //M�wi, ze Biegnacy Cieniem sa magicznymi istotami i dlatego ich sk�ra wywiera na niego pozytywne wibracje.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_09"); //Moze jednak po prostu za duzo wedzil.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_10"); //W kazdym razie dobrze oplaca sie za nieuszkodzone sk�ry. Pamietasz, na co musisz uwazac?
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest2_15_11"); //Trzymaj sie strzelan do lap.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_12"); //Prowadnice cieniowania sa trudne. Dlatego zadbaj o siebie.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_13"); //Jesli przywiozisz mnie do sk�ry, naucze cie czegos nowego.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest2_15_14"); //Wszystko jasne. Jestem gonna szukac.

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_BOSPER_TWO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_TWO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_BOSPER_TWO, "Bosper chce, abym przywi�zl mu trzy nieuszkodzone sk�ry biegaczy cieni, zanim jeszcze mnie uczy.");

	Wld_InsertNpc	(Shadowbeast,	"FP_ROAM_FARM1_FORREST_SHADOW_02");
	Wld_InsertNpc	(Shadowbeast,	"NW_FARM4_WOOD_MONSTER_06");
	Wld_InsertNpc 	(Shadowbeast,	"FP_ROAM_NW_CITYFOREST_CAVE_06_04");
	Wld_InsertNpc 	(Shadowbeast,	"FP_ROAM_NW_FOREST_PATH_35_06_04");
};

INSTANCE Info_Mod_Bosper_LehrlingQuest3 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest3_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto sk�ra.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest2))
	&& (Npc_HasItems(hero, ItAt_ShadowFur_Rein) >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest3_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest3_15_00"); //Oto sk�ra.

	B_GiveInvItems	(hero, self, ItAt_ShadowFur_Rein, 3);

	Npc_RemoveInvItems	(self, ItAt_ShadowFur_Rein, 3);

	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_01"); //Dobra jakosc. Abuyin bedzie z tego zadowolony.

	B_GiveInvItems	(self, hero, ItMi_Gold, 150);

	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest3_15_02"); //Wtedy mozemy wreszcie zwr�cic sie do mojej nauki.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_03"); //Dobrze, posluchajcie mnie.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_04"); //Przy konwencjonalnych strzalkach czesto nie masz zadnych szans na walke z silnymi przeciwnikami, poniewaz Tw�j zasieg jest zbyt maly.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_05"); //Jedyne co musisz zrobic, to zmienic kilka subtelnosci podczas produkcji i dostaniesz strzalke z prawdziwa precyzja.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_06"); //Pi�ro na koncu strzalki musi pokrywac okolo jednej piatej calej strzalki. Dlatego uzywaj wiecej pi�r niz zwykle.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_07"); //Konc�wka moze byc r�wniez nieco mniejsza, aby zwiekszyc balans strzalki.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_08"); //Alternatywnie mozna umiescic przeciwwage na koncu walu, aby r�wnomiernie rozlozyc ciezar.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_09"); //Chociaz srodki te zapewniaja, ze strzalka traci czesc swojej przenikliwej mocy, rekompensuja to jednak znacznie zwiekszonym zasiegiem i latwiejszym do opanowania.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest3_15_10"); //Dzwieki takie jak strzalka.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_11"); //W przeciwnym razie nie klopotlbym sie tlumaczac to wam.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest3_15_12"); //Dlaczego nie miales przed soba praktykanta? Robisz wszystko dobrze.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_13"); //Kilka lat temu mialem ostatniego praktykanta. Zawsze bede o nim pamietal - ale nie w bardziej pozytywny spos�b.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_14"); //Teraz nadszedl czas, abys poszedl. Wkr�tce wr�c do domu.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_TWO, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_PFEILE, "Teraz moge stworzyc precyzyjna strzalke od strzalki i drazka. Strzalka ta trafia czesciej i na wieksza odleglosc, ale powoduje mniejsze obrazenia.");

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Bosper_LehrlingQuest4 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest4_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaki jest nastepny krok w moim szkoleniu?";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest3))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest4_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest4_15_00"); //Jaki jest nastepny krok w moim szkoleniu?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_01"); //Teraz znasz najwazniejsze modyfikacje strzalek dla mysliwych, z wyjatkiem jednej.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest4_15_02"); //I co to jest?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_03"); //.... Moge nawet nie powiedziec.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest4_15_04"); //Uh-huh.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_05"); //Pewnego razu zostalem oszukany i nie chce, zeby wr�cila po raz drugi.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest4_15_06"); //Kto cie zdradzil?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_07"); //M�j ostatni praktykant.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_08"); //Nauczylem go wszystkiego, co wiedzial, a jako nagrode odpalil trzy wybuchowe strzaly do mojego dawnego domu i podpalil.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_09"); //W owym czasie mieszkalem tylko w poblizu tawerny, w miejscu spoczynku mysliwych.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_10"); //Od tamtej pory nie uczeszczalem na zadnych praktykant�w.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest4_15_11"); //Co sie stalo z praktykantem?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_12"); //(bitter) Nie wiem. Byla to mloda kobieta - bardzo utalentowana, bardzo ambitna.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_13"); //Nigdy wiecej od niej nie slyszalem i nie chce tego robic.
};

INSTANCE Info_Mod_Bosper_LehrlingQuest5 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest5_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ale ja cie nie zdradze.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest5_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest5_15_00"); //Ale ja cie nie zdradze.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_01"); //Do czego tak naprawde wrzuciles/as do zapory?
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest5_15_02"); //I -
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_03"); //Zatrzymaj sie! Nie m�w mi. Nie chce wiedziec.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_04"); //Nie zawiedliscie mnie jeszcze, jestescie pokorni i niezawodni.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_05"); //Jesli moge komus ufac, to ty. Twoja przeszlosc nie ma znaczenia.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_06"); //Dobrze, chce pokazac ci najpotezniejsze pociski: strzalki eksplozji.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_07"); //Moga one r�wniez niszczyc przeciwnik�w, kt�rzy sa w duzej mierze odporni na konwencjonalne strzaly.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest5_15_08"); //Jak wykonac te strzaly?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_09"); //Konc�wka tych strzalek sklada sie z worka z mieszanina wybuchowa.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_10"); //Potrzebujesz kawalk�w wegla, siarki i worka slonowodoru.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_11"); //Przy stole alchemicznym powstaje mieszanka, kt�ra nalezy starannie zapakowac i przymocowac do przedniej czesci strzalki.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest5_15_12"); //Dobrze mi brzmi.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_13"); //Wypr�buj to. Przynies mi dwie sk�ry trollowe, a potem pomysle o egzaminie.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_14"); //Chce jednak zobaczyc slady palenia!

	Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
	Log_CreateTopic	(TOPIC_MOD_LEHRLING_BOSPER_THREE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_THREE, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_LEHRLING_BOSPER_THREE, TOPIC_MOD_PFEILE, "Mam zabic dwie trolly strzalami eksplozji i przyniesc Bosper jej sk�ry.", "Moge teraz wykonac strzalke eksplozyjna od strzaly, material�w wybuchowych i drazka. Strzalka ta trafia czesciej i wyrzadza znacznie wiecej szk�d, ale ma bardzo maly zasieg. Do material�w wybuchowych potrzebny mi wegiel, siarka i saletra, kt�re musze mieszac przy stole alchemicznym.");
};

INSTANCE Info_Mod_Bosper_LehrlingQuest6 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest6_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj masz dwie sk�ry trollowe.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest5))
	&& (Npc_HasItems(hero, ItAt_TrollFur_Feuer) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest6_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest6_15_00"); //Tutaj masz dwie sk�ry trollowe.

	B_GiveInvItems	(hero, self, ItAt_TrollFur_Feuer, 2);

	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest6_11_01"); //Otrzymales za to niewielka wyplate.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest6_11_02"); //Twoje szkolenie ze mna jest juz zakonczone. Powiedzialem wam wszystko, co musicie wiedziec.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest6_11_03"); //Teraz praktyka pokaze, czy bedziesz w stanie zarobic na zycie poprzez polowanie.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest6_11_04"); //Czemu nie upuscisz sie gdzies przy moim miejscu, moze mam dla ciebie cos do zrobienia.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest6_11_05"); //W przeciwnym razie moge jedynie pogratulowac panu jego osiagniec i zyczyc przyjemnego zycia.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest6_15_06"); //Dzieki. Do zobaczenia wkr�tce.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest6_11_07"); //Niech Twoja tesknota pozostanie zawsze napieta!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_THREE, LOG_SUCCESS);

	B_GivePlayerXP	(350);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Bosper_LehrlingQuest7 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest7_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to sie dzieje?";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest6))
	&& (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest7_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest7_15_00"); //Jak to sie dzieje?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest7_11_01"); //Rozmawianie z wami na temat mojego ostatniego ucznia nie pozostawilo mi spokoju.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest7_11_02"); //Udalo mi sie go juz z powodzeniem stlumic, ale poniewaz opowiedzialem ci o nim, mam koszmary i zle spie.
};

INSTANCE Info_Mod_Bosper_LehrlingQuest8 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest8_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest8_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego jestescie tak blisko waszych kl�tni?";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest8_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest7))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest8_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest8_15_00"); //Dlaczego jestescie tak blisko waszych kl�tni?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_01"); //l-- Nie jestem calkowicie niewinny. Nie znalazlem wtedy wlasciwych sl�w.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest8_15_02"); //Co sie stalo?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_03"); //Mialem dla niej jednego.... specjalne polaczenie.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_04"); //Noca, zanim podpalila m�j dom, opowiedzialem jej o tym.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_05"); //Ale nie chciala o tym wiedziec i krzyczala na mnie.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_06"); //Urazilem ja potem. Od razu wiedzialem, ze to jest zle, ale nie moglem sie cofnac.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_07"); //Potem uciekla. W nocy obudzil mnie w koncu trzask ognia i zapach palenia.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_08"); //Chce, zebys ja znalazl.
};

INSTANCE Info_Mod_Bosper_LehrlingQuest9 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest9_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest9_Info;
	permanent	= 0;
	important	= 0;
	description	= "Myslalem, ze nie chcesz jej zn�w zobaczyc?";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest9_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest8))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest9_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest9_15_00"); //Myslalem, ze nie chcesz jej zn�w zobaczyc?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest9_11_01"); //To bylo prawda przez dlugi czas. Pamiec o niej wciaz mnie boli.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest9_11_02"); //Ale jednoczesnie mam tesknote za pogodzeniem sie z nia.
};

INSTANCE Info_Mod_Bosper_LehrlingQuest10 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest10_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest10_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie moze byc?";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest8))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest10_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest10_15_00"); //Gdzie moze byc?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_01"); //Kiedy powiedzialem ci, ze nie wiedzialem, gdzie ona jest, nie do konca m�wilem ci prawde.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_02"); //Z r�znych zr�del dowiedzialem sie, ze nadal mieszka w duzym lesie na p�lnoc od miasta.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_03"); //Nie wydaje sie jednak, aby ktokolwiek do niej nie chcial sie do niej zblizyc.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_04"); //Kilku mysliwych powiedzialo mi, ze jak sie jej przeszkadza, to stala sie zwierzeciem.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_05"); //Nie wiem, gdzie nauczyla sie sztuki transformacji, ale jej ulubione zwierze wydaje sie byc wargiem.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest10_15_06"); //Czy to oznacza, ze powinienem zlapac cala te Warge, kt�ra znajde i poczekac, aby zobaczyc, czy sie cofna?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_07"); //Oczywiscie nie.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_08"); //Pozw�l magikowi, byc moze Vatrasowi, dac nalewke, kt�ra po dotknieciu przeksztalca sie w nalewke.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_09"); //Malujesz strzalki na stole alchemicznym.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_10"); //Nawet pierwszy strzal pokaze, czy jest to Atalante, m�j ostatni praktykant.

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, "Bospaler pragnie pogodzic sie z Atalante, kt�ry kiedys byl jego uczniem. Skoro jednak wydaje mi sie, ze niesmiala ludzi i plakala jako wojna w lesie na p�lnoc od Khorinis, powiedziano mi, ze dostaje nalewke od maga, z kt�rym moge przemienic jej plecy, a nastepnie opowiedziec jej o pragnieniu pojednania w Bosperze. Pierwszym moim pierwszym portem, do kt�rego apeluje o nalewke, sa Vatry.");
};

INSTANCE Info_Mod_Bosper_LehrlingQuest11 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest11_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest11_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co zrobic po ich odwr�ceniu?";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest11_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest9))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest10))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest11_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest11_15_00"); //Co zrobic po ich odwr�ceniu?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest11_11_01"); //Powiedz jej, ze chce jej przebaczyc i ze chce ja poznac.
};

INSTANCE Info_Mod_Bosper_LehrlingQuest12 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest12_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest12_Info;
	permanent	= 0;
	important	= 0;
	description	= "Atalante nie zyje. Przykro mi z tego powodu.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest12_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Atalante_Bosper))
	&& (Npc_IsDead(Warg_Atalante2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest12_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest12_15_00"); //Atalante nie zyje. Przykro mi z tego powodu.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_01"); //Nie! Powiedzmy, ze to nieprawda!
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest12_15_02"); //Zaatakowala mnie, kiedy opowiedzialem jej o Tobie.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_03"); //Moja c�rka! Co mi zrobiles?
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest12_15_04"); //Twoja c�rka? Ale jak.....?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_05"); //Klamasz! Ona nie umarla. Ona po prostu nie chce mnie ponownie zobaczyc, czy ona?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_06"); //Ona chce tylko sztucznie podrobic jej smierc, bo tak bardzo ja upokorzylem!
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_07"); //Atalante, nie moglem ci nic powiedziec!
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_08"); //Kiedy dowiedzialem sie o Tobie, wyslalem Ci wszystko, co moge.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_09"); //Lecz ty nie uwierzysz mi w tym fatalnym dniu.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest12_15_10"); //Zaczynam przegladac to wszystko.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_11"); //Nie, niczego nie widac. Nikt, nikt mnie nie chce zrozumiec!
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_12"); //A teraz - i teraz, od tej pory, polaczyles sily z moja c�rka przeciwko mnie!
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest12_15_13"); //Wszystko jest w porzadku, czlowiek. Zostaniesz nad tym opanowany.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_14"); //Nigdy nigdy!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, LOG_SUCCESS);

	CurrentNQ += 1;

	B_GivePlayerXP	(1000);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_45);
};

INSTANCE Info_Mod_Bosper_LehrlingQuest13 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest13_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest13_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie moglem znalezc Atalante.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest13_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Constantino_BosperLehrling4))
	&& (Npc_IsDead(Warg_Atalante))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Atalante_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest13_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest13_15_00"); //Nie moglem znalezc Atalante.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest13_11_01"); //Wtedy moze nie bedzie przeciez w lesie. Co teraz robie?
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest13_15_02"); //Przykro mi z tego powodu.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, LOG_FAILED);
};

INSTANCE Info_Mod_Bosper_DragomirFelle (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_DragomirFelle_Condition;
	information	= Info_Mod_Bosper_DragomirFelle_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sk�ry sa sk�rami Dragomira. Nie ode mnie.";
};

FUNC INT Info_Mod_Bosper_DragomirFelle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Bosper))
	&& (Npc_HasItems(hero, ItMi_Wolfsfelle) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_DragomirFelle_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_DragomirFelle_15_00"); //Sk�ry sa sk�rami Dragomira. Nie ode mnie.

	B_GiveInvItems	(hero, self, ItMi_Wolfsfelle, 1);

	AI_Output(self, hero, "Info_Mod_Bosper_DragomirFelle_11_01"); //Dobre. Ile chce?
	AI_Output(hero, self, "Info_Mod_Bosper_DragomirFelle_15_02"); //Zbiera sie, gdy przychodzi.
	AI_Output(self, hero, "Info_Mod_Bosper_DragomirFelle_11_03"); //Dobrze r�wniez. Tutaj troche zlota.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_BOSPER_FELLLIEFERUNG, "Dostarczona sk�ra.");
	B_SetTopicStatus	(TOPIC_MOD_BOSPER_FELLLIEFERUNG, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Bosper_Job (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Job_Condition;
	information	= Info_Mod_Bosper_Job_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie sa moje zadania jako twojego praktykanta?";
};

FUNC INT Info_Mod_Bosper_Job_Condition()
{
	if (Mod_LehrlingBei == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Job_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Job_15_00"); //Jakie sa moje zadania jako twojego praktykanta?
	AI_Output(self, hero, "Info_Mod_Bosper_Job_11_01"); //Przynies mi wszystkie zwierzece sk�ry, kt�re mozesz znalezc. Zaplace Ci dobra cene za kazda siersc.
	AI_Output(self, hero, "Info_Mod_Bosper_Job_11_02"); //Potrafie r�wniez nauczyc Cie jak robic strzaly, luki i kusze.

	Mod_PfeileSpitzen	=	0;
	Mod_PfeileSchnitzen	=	0;
};

INSTANCE Info_Mod_Bosper_Schnitzen (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Schnitzen_Condition;
	information	= Info_Mod_Bosper_Schnitzen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przenies strzalki do rzezby (2 LP)";
};

FUNC INT Info_Mod_Bosper_Schnitzen_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Bosper_Schnitzen.description = "Przynies strzalki do rzezbienia (200 zlota)";
	}
	else
	{
		Info_Mod_Bosper_Schnitzen.description = "Przenies strzalki do rzezby (2 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Job))
	&& (((hero.lp >= 2) && (Mod_Schwierigkeit != 4)) || ((Npc_HasItems(hero, ItMi_Gold) >= 200) && (Mod_Schwierigkeit == 4)))
	&& (Mod_PfeileSchnitzen	== 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Schnitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Schnitzen_15_00"); //Naucz mnie strzalek.
	AI_Output(self, hero, "Info_Mod_Bosper_Schnitzen_11_01"); //Okay. Najpierw nalezy kupic kawalek drewna z Thorben. Nastepnie wez to do pily i wyrzez do okolo 10 strzalek.
	AI_Output(self, hero, "Info_Mod_Bosper_Schnitzen_11_02"); //Nastepnie dolaczysz strzalke z grotem na kowadle i Twoja strzalka jest gotowa.

	if (Mod_Schwierigkeit != 4)
	{
		hero.lp -= 2;
	}
	else
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
	};

	Mod_PfeileSchnitzen	=	1;

	Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_PFEILE, "Do wykonania strzalek potrzebuje walk�w strzalek. Moge je wyciac z galezi. Potem musze je polaczyc z grotami strzalek na kowadle. To samo dotyczy srub.");
};

INSTANCE Info_Mod_Bosper_Spitzen (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Spitzen_Condition;
	information	= Info_Mod_Bosper_Spitzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie moge nauczyc sie kucia strzalek?";
};

FUNC INT Info_Mod_Bosper_Spitzen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Job))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Spitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Spitzen_15_00"); //Gdzie moge nauczyc sie kucia strzalek?
	AI_Output(self, hero, "Info_Mod_Bosper_Spitzen_11_01"); //Przejdz do Haradu. Jesli zapyta, dlaczego powinien cie nauczyc, powiedz mu, ze wysylam ci.
};

INSTANCE Info_Mod_Bosper_OtherHunters (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_OtherHunters_Condition;
	information	= Info_Mod_Bosper_OtherHunters_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie moge znalezc innych mysliwych tutaj?";
};

FUNC INT Info_Mod_Bosper_OtherHunters_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_OtherHunters_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_OtherHunters_15_00"); //Gdzie moge znalezc innych mysliwych tutaj?
	AI_Output(self, hero, "Info_Mod_Bosper_OtherHunters_11_01"); //Jesli opuscisz wschodnia brame, przyjdziesz do tawerny Orlana.
	AI_Output(self, hero, "Info_Mod_Bosper_OtherHunters_11_02"); //W poblizu znajduje sie ob�z mysliwski. Nazwa lidera jest Dragomir.
	AI_Output(self, hero, "Info_Mod_Bosper_OtherHunters_11_03"); //Daj mu przyjemne pozdrowienie, zn�w potrzebuje futra. W miare zblizania sie zimy popyt rosnie.
	AI_Output(hero, self, "Info_Mod_Bosper_OtherHunters_15_04"); //Robie to.
	
	Log_CreateTopic	(TOPIC_MOD_BOSPER_FELLLIEFERUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BOSPER_FELLLIEFERUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BOSPER_FELLLIEFERUNG, "Gdybym zatrzymal sie przy obozie mysliwskim niedaleko Orlans Tavern i powiedzial Dragomirowi, ze Bosper m�gl uzyc innej siersci.");
};

INSTANCE Info_Mod_Bosper_Anschlagtafel (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Anschlagtafel_Condition;
	information	= Info_Mod_Bosper_Anschlagtafel_Info;
	permanent	= 1;
	important	= 0;
	description	= "Widzialem tw�j plakat na billboardzie....";
};

FUNC INT Info_Mod_Bosper_Anschlagtafel_Condition()
{
	if (Mod_Anschlagtafel_Khorinis_Bosper == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Anschlagtafel_Info()
{
	B_Say	(hero, self, "$ANSCHLAGTAFEL01");

	if (Npc_HasItems(hero, ItAt_WolfFur) >= Mod_Anschlagtafel_Khorinis_Bosper_Wolffell)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= Mod_Anschlagtafel_Khorinis_Bosper_Zaehne)
	&& (Npc_HasItems(hero, ItAt_Claw) >= Mod_Anschlagtafel_Khorinis_Bosper_Krallen)
	&& (Npc_HasItems(hero, ItAt_WargFur) >= Mod_Anschlagtafel_Khorinis_Bosper_Wargfell)
	&& (Npc_HasItems(hero, ItAt_ShadowFur) >= Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferfell)
	&& (Npc_HasItems(hero, ItAt_LurkerSkin) >= Mod_Anschlagtafel_Khorinis_Bosper_Reptilienhaut)
	&& (Npc_HasItems(hero, ItAt_TrollFur) >= Mod_Anschlagtafel_Khorinis_Bosper_Trollfell)
	&& (Npc_HasItems(hero, ItAt_CrawlerPlate) >= Mod_Anschlagtafel_Khorinis_Bosper_Minecrawlerplatte)
	&& (Npc_HasItems(hero, ItAt_ShadowHorn) >= Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferhorn)
	&& (Npc_HasItems(hero, ItMi_Ast) >= Mod_Anschlagtafel_Khorinis_Bosper_Ast)
	{
		Npc_RemoveInvItems	(hero, ItAt_WolfFur, Mod_Anschlagtafel_Khorinis_Bosper_Wolffell);
		Npc_RemoveInvItems	(hero, ItAt_Teeth, Mod_Anschlagtafel_Khorinis_Bosper_Zaehne);
		Npc_RemoveInvItems	(hero, ItAt_Claw, Mod_Anschlagtafel_Khorinis_Bosper_Krallen);
		Npc_RemoveInvItems	(hero, ItAt_WargFur, Mod_Anschlagtafel_Khorinis_Bosper_Wargfell);
		Npc_RemoveInvItems	(hero, ItAt_ShadowFur, Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferfell);
		Npc_RemoveInvItems	(hero, ItAt_LurkerSkin, Mod_Anschlagtafel_Khorinis_Bosper_Reptilienhaut);
		Npc_RemoveInvItems	(hero, ItAt_TrollFur, Mod_Anschlagtafel_Khorinis_Bosper_Trollfell);
		Npc_RemoveInvItems	(hero, ItAt_CrawlerPlate, Mod_Anschlagtafel_Khorinis_Bosper_Minecrawlerplatte);
		Npc_RemoveInvItems	(hero, ItAt_ShadowHorn, Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferhorn);
		Npc_RemoveInvItems	(hero, ItMi_Ast, Mod_Anschlagtafel_Khorinis_Bosper_Ast);

		AI_Output(self, hero, "Info_Mod_Bosper_Anschlagtafel_11_00"); //Co? Pokaz mi.... W rzeczywistosci to wszystko. Bardzo dobrze wykonane.
		AI_Output(self, hero, "Info_Mod_Bosper_Anschlagtafel_11_01"); //Oto Twoja nagroda.

		B_GiveInvItems	(self, hero, ItMi_Gold, Mod_Anschlagtafel_Khorinis_Bosper_Gold);

		AI_Output(self, hero, "Info_Mod_Bosper_Anschlagtafel_11_02"); //Mile robienie interes�w z Toba.

		if (Mod_Anschlagtafel_Khorinis_Bosper_Gold < 200)
		{
			B_GivePlayerXP	(300);
		}
		else if (Mod_Anschlagtafel_Khorinis_Bosper_Gold < 400)
		{
			B_GivePlayerXP	(400);
		}
		else if (Mod_Anschlagtafel_Khorinis_Bosper_Gold < 600)
		{
			B_GivePlayerXP	(500);
		}
		else
		{
			B_GivePlayerXP	(600);
		};

		Mod_Anschlagtafel_Khorinis_Bosper = 0;
		Mod_Anschlagtafel_Khorinis_Bosper_Cooldown = 3600;

		Npc_RemoveInvItems	(hero, ItWr_Anschlagtafel_Bosper, 1);
	}
	else
	{
		B_Say	(hero, self, "$ANSCHLAGTAFEL02");
	};
};

var int FellCounter;

INSTANCE Info_Mod_Bosper_MehrFelle (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_MehrFelle_Condition;
	information	= Info_Mod_Bosper_MehrFelle_Info;
	permanent	= 1;
	important	= 0;
	description	= "Dostalem dla Ciebie kilka sk�rek.....";
};

FUNC INT Info_Mod_Bosper_MehrFelle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Job))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_MehrFelle_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_MehrFelle_15_00"); //Dostalem dla Ciebie kilka sk�rek.

	CreateInvItems	(self, ItMi_Gold, 1000000);

	if (Npc_HasItems(hero, ItAt_SheepFur) > 0)
	|| (Npc_HasItems(hero, ItAt_SheepFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_SheepFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_ZiegenFur) > 0)
	|| (Npc_HasItems(hero, ItAt_ZiegenFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_ZiegenFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_WolfFur) > 0)
	|| (Npc_HasItems(hero, ItAt_WolfFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_WolfFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_BlackwolfFur) > 0)
	|| (Npc_HasItems(hero, ItAt_BlackwolfFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_BlackwolfFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_WargFur) > 0)
	|| (Npc_HasItems(hero, ItAt_WargFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_WargFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_OrcdogFur) > 0)
	|| (Npc_HasItems(hero, ItAt_OrcdogFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_OrcdogFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_ShadowFur) > 0)
	|| (Npc_HasItems(hero, ItAt_ShadowFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_ShadowFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_TrollFur) > 0)
	|| (Npc_HasItems(hero, ItAt_TrollFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_TrollFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_TrollBlackFur) > 0)
	|| (Npc_HasItems(hero, ItAt_TrollBlackFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_TrollBlackFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur) > 0)
	|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_PumaFur) > 0)
	|| (Npc_HasItems(hero, ItAt_PumaFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_PumaFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_StonePumaFur) > 0)
	|| (Npc_HasItems(hero, ItAt_StonePumaFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_StonePumaFur_Feuer) > 0)
	{
		
		if (Npc_HasItems(hero, ItAt_Addon_KeilerFur) > 0)
		|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Feuer) > 0)
		{
			AI_Output(self, hero, "Info_Mod_Bosper_MehrFelle_11_01"); //Siersc klin�w. To silne bestie.

			FellCounter = Npc_HasItems(hero, ItAt_Addon_KeilerFur);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_KeilerFur) );
			B_GiveInvItems(hero, self, ItAt_Addon_KeilerFur, Npc_HasItems(hero, ItAt_Addon_KeilerFur));

			FellCounter = Npc_HasItems(hero, ItAt_Addon_KeilerFur_Rein);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_KeilerFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_Addon_KeilerFur_Rein, Npc_HasItems(hero, ItAt_Addon_KeilerFur_Rein));

			FellCounter = Npc_HasItems(hero, ItAt_Addon_KeilerFur_Feuer);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_KeilerFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_Addon_KeilerFur_Feuer, Npc_HasItems(hero, ItAt_Addon_KeilerFur_Feuer));
		};

		if (Npc_HasItems(hero, ItAt_SheepFur) > 0)
		|| (Npc_HasItems(hero, ItAt_SheepFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_SheepFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_02"); //Sk�ra owcza? Nie zabijales owiec na polach u jakiegos rolnika, prawda?
			AI_Output (hero, self, "Info_Mod_Bosper_MehrFelle_15_03"); //Nigdy bym o tym nie marzyl.....

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(hero, ItAt_SheepFur) * Value_SheepFur) );
			B_GiveInvItems(hero, self, ItAt_SheepFur, Npc_HasItems(hero, ItAt_SheepFur));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(hero, ItAt_SheepFur_Rein) * Value_SheepFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_SheepFur_Rein, Npc_HasItems(hero, ItAt_SheepFur_Rein));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(hero, ItAt_SheepFur_Feuer) * Value_SheepFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_SheepFur_Feuer, Npc_HasItems(hero, ItAt_SheepFur_Feuer));
		};

		if (Npc_HasItems(hero, ItAt_ZiegenFur) > 0)
		|| (Npc_HasItems(hero, ItAt_ZiegenFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_ZiegenFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_04"); //Sk�ry kozie, dobra jakosc....

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(hero, ItAt_ZiegenFur) * Value_ZiegenFur) );
			B_GiveInvItems(hero, self, ItAt_ZiegenFur, Npc_HasItems(hero, ItAt_ZiegenFur));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(hero, ItAt_ZiegenFur_Rein) * Value_ZiegenFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_ZiegenFur_Rein, Npc_HasItems(hero, ItAt_ZiegenFur_Rein));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(hero, ItAt_ZiegenFur_Feuer) * Value_ZiegenFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_ZiegenFur_Feuer, Npc_HasItems(hero, ItAt_ZiegenFur_Feuer));
		};
		
		if (Npc_HasItems(hero, ItAt_WolfFur) > 0)
		|| (Npc_HasItems(hero, ItAt_WolfFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_WolfFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_05"); //Wilk futro, to dobre....

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_WolfFur) * Value_WolfFur) );
			B_GiveInvItems(hero, self, ItAt_WolfFur, Npc_HasItems(other, ItAt_WolfFur));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_WolfFur_Rein) * Value_WolfFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_WolfFur_Rein, Npc_HasItems(other, ItAt_WolfFur_Rein));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_WolfFur_Feuer) * Value_WolfFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_WolfFur_Feuer, Npc_HasItems(other, ItAt_WolfFur_Feuer));
		};
		
		if (Npc_HasItems(hero, ItAt_BlackwolfFur) > 0)
		|| (Npc_HasItems(hero, ItAt_BlackwolfFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_BlackwolfFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_06"); //Sk�ry wilk�w czarne, bardzo piekne,....

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_BlackwolfFur) * Value_BlackwolfFur) );
			B_GiveInvItems(hero, self, ItAt_BlackwolfFur, Npc_HasItems(other, ItAt_BlackwolfFur));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_BlackwolfFur_Rein) * Value_BlackwolfFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_BlackwolfFur_Rein, Npc_HasItems(other, ItAt_BlackwolfFur_Rein));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_BlackwolfFur_Feuer) * Value_BlackwolfFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_BlackwolfFur_Feuer, Npc_HasItems(other, ItAt_BlackwolfFur_Feuer));
		};
		
		if (Npc_HasItems(hero, ItAt_WargFur) > 0)
		|| (Npc_HasItems(hero, ItAt_WargFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_WargFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_07"); //Siersc Wargena? Ciezkie bestie to te....

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_WargFur) * Value_WargFur) );
			B_GiveInvItems(hero, self, ItAt_WargFur, Npc_HasItems(other, ItAt_WargFur));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_WargFur_Rein) * Value_WargFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_WargFur_Rein, Npc_HasItems(other, ItAt_WargFur_Rein));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_WargFur_Feuer) * Value_WargFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_WargFur_Feuer, Npc_HasItems(other, ItAt_WargFur_Feuer));
		};
		
		if (Npc_HasItems(hero, ItAt_PumaFur) > 0)
		|| (Npc_HasItems(hero, ItAt_PumaFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_PumaFur_Feuer) > 0)
		|| (Npc_HasItems(hero, ItAt_StonePumaFur) > 0)
		|| (Npc_HasItems(hero, ItAt_StonePumaFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_StonePumaFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_08"); //Puma futro? Cudowna rzecz....

			FellCounter = Npc_HasItems(hero, ItAt_PumaFur);
			FellCounter += Npc_HasItems(hero, ItAt_StonePumaFur);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_PumaFur) );
			B_GiveInvItems(hero, self, ItAt_PumaFur, Npc_HasItems(hero, ItAt_PumaFur));
			B_GiveInvItems(hero, self, ItAt_StonePumaFur, Npc_HasItems(hero, ItAt_StonePumaFur));

			FellCounter = Npc_HasItems(hero, ItAt_PumaFur_Rein);
			FellCounter += Npc_HasItems(hero, ItAt_StonePumaFur_Rein);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_PumaFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_PumaFur_Rein, Npc_HasItems(hero, ItAt_PumaFur_Rein));
			B_GiveInvItems(hero, self, ItAt_StonePumaFur_Rein, Npc_HasItems(hero, ItAt_StonePumaFur_Rein));

			FellCounter = Npc_HasItems(hero, ItAt_PumaFur_Feuer);
			FellCounter += Npc_HasItems(hero, ItAt_StonePumaFur_Feuer);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_PumaFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_PumaFur_Feuer, Npc_HasItems(hero, ItAt_PumaFur_Feuer));
			B_GiveInvItems(hero, self, ItAt_StonePumaFur_Feuer, Npc_HasItems(hero, ItAt_StonePumaFur_Feuer));
		};
		
		if (Npc_HasItems(hero, ItAt_OrcdogFur) > 0)
		|| (Npc_HasItems(hero, ItAt_OrcdogFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_OrcdogFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_09"); //Pieklo huragan�w? Ciezkie bestie to te....

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_OrcdogFur) * Value_WargFur) );
			B_GiveInvItems(hero, self, ItAt_OrcdogFur, Npc_HasItems(other, ItAt_OrcdogFur));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_OrcdogFur_Rein) * Value_WargFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_OrcdogFur_Rein, Npc_HasItems(other, ItAt_OrcdogFur_Rein));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_OrcdogFur_Feuer) * Value_WargFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_OrcdogFur_Feuer, Npc_HasItems(other, ItAt_OrcdogFur_Feuer));
		};
		
		if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest3))
		&& ((Npc_HasItems(hero, ItAt_ShadowFur) > 0)
		|| (Npc_HasItems(hero, ItAt_ShadowFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_ShadowFur_Feuer) > 0))
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_10"); //Ah, nawet futro cienia - jest warte duzo.

			FellCounter = Npc_HasItems(hero, ItAt_ShadowFur);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_ShadowFur) );
			B_GiveInvItems(hero, self, ItAt_ShadowFur, Npc_HasItems(other, ItAt_ShadowFur));

			FellCounter = Npc_HasItems(hero, ItAt_ShadowFur_Rein);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_ShadowFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_ShadowFur_Rein, Npc_HasItems(other, ItAt_ShadowFur_Rein));

			FellCounter = Npc_HasItems(hero, ItAt_ShadowFur_Feuer);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_ShadowFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_ShadowFur_Feuer, Npc_HasItems(other, ItAt_ShadowFur_Feuer));
		};
		
		if (Npc_HasItems(hero, ItAt_TrollFur) > 0)
		|| (Npc_HasItems(hero, ItAt_TrollFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_TrollFur_Feuer) > 0)
		|| (Npc_HasItems(hero, ItAt_TrollBlackFur) > 0)
		|| (Npc_HasItems(hero, ItAt_TrollBlackFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_TrollBlackFur_Feuer) > 0)
		{
			if (Mod_TrollfellBosper == FALSE)
			{
				AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_11"); //Co to jest pieklo dla futra?
				AI_Output (hero, self, "Info_Mod_Bosper_MehrFelle_15_12"); //To wlasnie polozylem na trollie.
				AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_13"); //.... warte p�l pomyslnosci......

				Mod_TrollfellBosper == TRUE;
			}
			else //TRUE
			{
				AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_14"); //Ponownie tak ogromne futro trollowe.... Czy polujesz na stworzenia?
				AI_Output (hero, self, "Info_Mod_Bosper_MehrFelle_15_15"); //Jesli kogokolwiek spotkam, skorzystam z okazji....
			};
			
			if (Npc_HasItems(hero, ItAt_TrollFur) > 0)
			|| (Npc_HasItems(hero, ItAt_TrollFur_Rein) > 0)
			|| (Npc_HasItems(hero, ItAt_TrollFur_Feuer) > 0)
			{
				B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_TrollFur) * Value_TrollFur) );
				B_GiveInvItems(hero, self, ItAt_TrollFur, Npc_HasItems(other, ItAt_TrollFur));

				B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_TrollFur_Rein) * Value_TrollFur_Rein) );
				B_GiveInvItems(hero, self, ItAt_TrollFur_Rein, Npc_HasItems(other, ItAt_TrollFur_Rein));

				B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_TrollFur_Feuer) * Value_TrollFur_Feuer) );
				B_GiveInvItems(hero, self, ItAt_TrollFur_Feuer, Npc_HasItems(other, ItAt_TrollFur_Feuer));
			};
			
			if (Npc_HasItems(hero, ItAt_TrollBlackFur) > 0)
			|| (Npc_HasItems(hero, ItAt_TrollBlackFur_Rein) > 0)
			|| (Npc_HasItems(hero, ItAt_TrollBlackFur_Feuer) > 0)
			{
				AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_16"); //Nawet futro czarnego trolla!

				B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_TrollBlackFur) * Value_TrollBlackFur) );
				B_GiveInvItems(hero, self, ItAt_TrollBlackFur, Npc_HasItems(other, ItAt_TrollBlackFur));

				B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_TrollBlackFur_Rein) * Value_TrollBlackFur_Rein) );
				B_GiveInvItems(hero, self, ItAt_TrollBlackFur_Rein, Npc_HasItems(other, ItAt_TrollBlackFur_Rein));

				B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_TrollBlackFur_Feuer) * Value_TrollBlackFur_Feuer) );
				B_GiveInvItems(hero, self, ItAt_TrollBlackFur_Feuer, Npc_HasItems(other, ItAt_TrollBlackFur_Feuer));
			};
		};
		
		AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_17"); //Dobra praca. Jesli masz wiecej, wr�c do mnie....
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_18"); //Wiesz - interesuja mnie tylko sk�ry wilk�w, biegaczy cieni i tym podobnych....
	};
};

INSTANCE Info_Mod_Bosper_HandelstJetzt (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_HandelstJetzt_Condition;
	information	= Info_Mod_Bosper_HandelstJetzt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy handlujesz ze mna teraz?";
};

FUNC INT Info_Mod_Bosper_HandelstJetzt_Condition()
{
	if (Mod_LehrlingsStimmen == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_HandelstJetzt_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_HandelstJetzt_15_00"); //Czy handlujesz ze mna teraz?
	AI_Output(self, hero, "Info_Mod_Bosper_HandelstJetzt_11_01"); //Nie obchodze sie z nim.
	
	Log_CreateTopic	(TOPIC_MOD_HAENDLER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_STADT, "Bosper sprzedaje luki i kusze.");
};

INSTANCE Info_Mod_Bosper_Trade (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Trade_Condition;
	information	= Info_Mod_Bosper_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Bosper_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_HandelstJetzt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Trade_Info()
{
	Backup_Questitems();

	Npc_RemoveInvItems	(self, ItRw_Arrow, 100);
	Npc_RemoveInvItems	(self, ItRw_Bolt, 100);
	
	CreateInvItems	(self, ItRw_Arrow, 100);
	CreateInvItems	(self, ItRw_Bolt, 100);

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Bosper_Pickpocket (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Pickpocket_Condition;
	information	= Info_Mod_Bosper_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Bosper_Pickpocket_Condition()
{
	C_Beklauen	(142, ItRw_Arrow, 50);
};

FUNC VOID Info_Mod_Bosper_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);

	Info_AddChoice	(Info_Mod_Bosper_Pickpocket, DIALOG_BACK, Info_Mod_Bosper_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bosper_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bosper_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bosper_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);
};

FUNC VOID Info_Mod_Bosper_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);

		Info_AddChoice	(Info_Mod_Bosper_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bosper_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bosper_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bosper_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bosper_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bosper_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bosper_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bosper_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bosper_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bosper_EXIT (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_EXIT_Condition;
	information	= Info_Mod_Bosper_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bosper_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bosper_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
