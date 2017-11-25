INSTANCE Info_Mod_Argez_AW_Hi (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Hi_Condition;
	information	= Info_Mod_Argez_AW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_AW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_AW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_Hi_37_00"); //Dobrze, abys znów cie zobaczyl. Szukalismy Ciebie.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Hi_15_01"); //Uh, tak, ja po prostu chcialem spojrzec na swiatynie, wiec zjechalem w dól muru.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Hi_15_02"); //To mi troche czasu, zeby to sie otworzylo.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Hi_37_03"); //A potem zemdlales sie od razu.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Hi_15_04"); //Dokladnie musialo tam byc zle powietrze.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Hi_37_05"); //Jak dlugo wszystko przebiegalo dobrze.
};

INSTANCE Info_Mod_Argez_AW_Magiespur (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Magiespur_Condition;
	information	= Info_Mod_Argez_AW_Magiespur_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy wiesz cos o magicznych znakach?";
};

FUNC INT Info_Mod_Argez_AW_Magiespur_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Magiespur_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_00"); //Czy wiesz cos o magicznych znakach?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_01"); //Masz na mysli Signum Magicum?
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_02"); //Zaskakuje mnie pan ciagle.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_03"); //Jest to zaklecie starozytnych ludzi, które mozna zastosowac do kazdej animowanej istoty.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_04"); //Czarnoksieznik moze w kazdej chwili poczuc, gdzie znajduje sie jego cel, dostrzega go.....
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_05"); //Dokladnie. Ale zanim teraz zaimprowizujesz prace doktorska, mozesz mi pomóc.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_06"); //Odkrywanie wiedzy tam, gdzie nigdy jej nie podejrzewales, jest ogromnie satysfakcjonujace.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_07"); //Co dokladnie chcesz wiedziec?
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_08"); //Moze byc tak, ze jestem oznaczony. Wtedy chcialbym pozbyc sie tego markera.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_09"); //Hmm, patrzmy na....

	// ToDo: Toller Zaubereffekt auf den Helden

	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_10"); //Tak, rzeczywiscie.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_11"); //Czy moge usunac oznakowanie?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_12"); //Zazwyczaj kólko rozdzielajace decyduje, kiedy zerwac polaczenie.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_13"); //Istnieja jednak równiez sposoby, by ofiara mogla przelamac ten skutek.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_14"); //Erekcja Pomyslalem sobie, zeby nie poluzowac znacznika, ale przekierowac go.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_15"); //Aby czarodziej nie zauwazyl, ze zostal podstepem.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_16"); //Madra mysl. To równiez powinno byc wykonalne.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_17"); //Wystarczy tylko, ze otrzymam zwierze, które ma byc nowym celem.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_18"); //Jakis rodzaj zwierzecia?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_19"); //Tak. Dla lepszego transportu nalezy go najpierw skurczyc.

	B_GiveInvItems	(self, hero, ItSc_Shrink, 1);

	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_20"); //W porzadku, zobaczcie to pózniej.

	B_LogEntry	(TOPIC_MOD_MAGISCHEMARKIERUNG, "Argez faktycznie znalazl na mnie znacznik. Ale on chce byc w stanie przemiescic je, jesli przyniose mu skurczone zwierze.");

	Mod_Argez_Shrink = 1;
	
	// Tempelvorplatz

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_2_VALLEY_10");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_2_VALLEY_02A");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_2_VALLEY_05");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_2_VALLEY_08");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_2_VALLEY_02B");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_2_VALLEY_11");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_BEHINDAKROPOLIS_04");

	Wld_InsertNpc	(Waran,	"ADW_ENTRANCE_PATH2BANDITS_03");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_PATH2BANDITS_05P");
};

INSTANCE Info_Mod_Argez_AW_Magiespur2 (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Magiespur2_Condition;
	information	= Info_Mod_Argez_AW_Magiespur2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto nowy cel znakowania.";
};

FUNC INT Info_Mod_Argez_AW_Magiespur2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Magiespur))
	&& (Hlp_IsValidNpc(Mod_Argez_ShrinkMonster))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Magiespur2_Info()
{
	AI_Teleport	(Mod_Argez_ShrinkMonster, "PC_HERO");

	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur2_15_00"); //Oto nowy cel znakowania.

	if (Mod_Argez_ShrinkMonster.guild == GIL_TROLL)
	|| (Mod_Argez_ShrinkMonster.guild == GIL_STONEGOLEM)
	{
		AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_01"); //(smiech) Jest uroczy.
	}
	else if (Mod_Argez_ShrinkMonster.guild == GIL_MEATBUG)
	{
		AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_02"); //Gdzie? Och!
	};

	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_03"); //Doskonale, zaczynam od razu.

	// ToDo: Effekt auf Held und Monster rennt weg

	AI_Flee	(Mod_Argez_ShrinkMonster);

	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_04"); //Tak wlasnie powinno byc. Miejmy nadzieje, ze zwierze bylo jeszcze wystarczajaco blisko, aby przenoszenie wirusa moglo dzialac. Pozwole sobie spojrzec.

	// ToDo: Toller Zaubereffekt auf den Helden

	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_05"); //Jestes wolny. marker znikl.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur2_15_06"); //Teraz czuje sie duzo lepiej.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_07"); //To tylko efekt placebo. Ale od tej chwili twój przeciwnik nie powinien byc w stanie Cie odszukac.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur2_15_08"); //To byloby wspaniale. Dziekuje bardzo.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_09"); //Nie wspominajmy o tym.

	B_SetTopicStatus	(TOPIC_MOD_MAGISCHEMARKIERUNG, LOG_SUCCESS);

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Argez_AW_Echsis (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Echsis_Condition;
	information	= Info_Mod_Argez_AW_Echsis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_AW_Echsis_Condition()
{
	if (Mod_ArgezSpawn)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Echsis_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_00"); //Straciles zaproszenie, huh?
	AI_Output(hero, self, "Info_Mod_Argez_AW_Echsis_15_01"); //Ponownie?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_02"); //Moglabym pana zapytac to samo. Gdybym to mialo znaczenie.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Echsis_15_03"); //Co i tak Pan tu robi?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_04"); //Chce isc na bagno, ale jak juz udowodniles, nie jest to latwe.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_05"); //W kazdym razie nie byloby madrze, aby przebic sie przez brame.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_06"); //Rozsadne byloby uzycie slabego punktu na szlabanie, powiedzmy dziure na dnie szlabanu, kilka metrów po prawej stronie strazników, który jest na tyle duzy, ze male stworzenie moze przeszukac...... to byloby madre, tak.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Echsis_15_07"); //Prawdopodobnie.....
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_08"); //Tak. Ale madre decyzje moga byc takze bledne.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_09"); //Wtedy zawsze sa dwa sposoby. Walka i dyplomacja.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_10"); //Zazwyczaj oba te cele prowadza do celu, jeden szybciej, drugi moze bardziej skuteczny.... Ale madry czlowiek bedzie wiedzial, co robic.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Echsis_15_11"); //Prawdopodobnie.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_12"); //Oh, tak, tutaj. Zaproszenie.

	B_GiveInvItems	(self, hero, ItSc_TrfMeatbug, 1);

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "STRAND");
	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Przed bagnem znów spotkalem Argeza. Dal mi zwój zaklecia 'bakcyla transformacyjnego' i kazal mi czolgac sie przez dziure w barykade po prawej stronie strazników. Zrobil równiez smieszne insynuacje:'Ale nawet madre decyzje moga pójsc nie tak. Wtedy zawsze sa dwa sposoby. Walka i dyplomacja. Zazwyczaj oba te cele prowadza do celu, jeden szybciej, drugi moze bardziej skuteczny.... '");
};

INSTANCE Info_Mod_Argez_AW_Rettung (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Rettung_Condition;
	information	= Info_Mod_Argez_AW_Rettung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_AW_Rettung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_XW_Gefangen2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Rettung_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_Rettung_37_00"); //Dzieki. Moge sobie poradzic teraz.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Rettung_15_01"); //Chcesz spokoju?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Rettung_37_02"); //Tak, prosze. Jest cos, o czym musze pomyslec.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Rettung_37_03"); //To nie ty.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Nasza ucieczka z podziemi odniosla sukces! Zobaczylabym, czy Xardas cos sie dowiedzial.");

	B_GivePlayerXP	(1000);
};

INSTANCE Info_Mod_Argez_AW_AtTempel (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_AtTempel_Condition;
	information	= Info_Mod_Argez_AW_AtTempel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_AW_AtTempel_Condition()
{
	if (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_AtTempel_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_00"); //Piekny, czyz nie? Tak stary, a jeszcze taki.... znajomy.
	AI_Output(hero, self, "Info_Mod_Argez_AW_AtTempel_15_01"); //(ostrozny) Argez?
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_02"); //Zaskoczony?
	AI_Output(hero, self, "Info_Mod_Argez_AW_AtTempel_15_03"); //Co najmniej mówiac, tak. Jak sie tu dostales?
	AI_Output(hero, self, "Info_Mod_Argez_AW_AtTempel_15_04"); //A dlaczego przybyles przede mna?
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_05"); //Prawie dogonilem sie z wami, kiedy wszedles do swiatyni.
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_06"); //Kiedy dowiedzialem sie, dokad idziesz, obraz tej swiatyni zastrzelil mnie w glowe i pospieszylem zaraz za toba.
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_07"); //Nie mozemy przegapic sie o wiele minut. Przed wejsciem zapamietalem wiele rzeczy: bezpieczniki przed rabusiami, ciemne freskowce.
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_08"); //Ukryte drzwi boczne, które moga obslugiwac pulapki.
	AI_Output(hero, self, "Info_Mod_Argez_AW_AtTempel_15_09"); //(buzytowany) O, wielki, wielki......
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_10"); //To juz nie zadziala, bo przypadkowo uszkodzilem jego mechanizm. To sie utknelo, a ja uciekalem sie do brutalnej sily.
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_11"); //Ale przynajmniej znalazlem cie. Mam nadzieje, ze w jakis sposób moge Wam sluzyc swoja wiedza.
	AI_Output(hero, self, "Info_Mod_Argez_AW_AtTempel_15_12"); //Pewnie, jesli powiesz mi, gdzie moge znalezc bron boska.
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_13"); //Nie wiem o tym. Wiem tylko, ze nie moze byc daleko.
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_14"); //Jesli masz je, to chcialbym sie blizej przyjrzec.
	AI_Output(hero, self, "Info_Mod_Argez_AW_AtTempel_15_15"); //Bez dodatkowych motywów?
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_16"); //Przynajmniej nikt nie musi sie bac. Jestem glównie ciekawy.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Jak tylko odnajde bron boska w swiatyni Adano, Argez chce sie jej przyjrzec.");
};

INSTANCE Info_Mod_Argez_AW_Stab (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Stab_Condition;
	information	= Info_Mod_Argez_AW_Stab_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zrobilem znalezisko. Jednak najwyrazniej czas juz jednak wykonal swoja prace.";
};

FUNC INT Info_Mod_Argez_AW_Stab_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_AtTempel))
	&& (Npc_HasItems(hero, ItMw_Adanos_Stab_Teil1) == 1)
	&& (Npc_HasItems(hero, ItMw_Adanos_Stab_Teil2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Stab_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab_15_00"); //Zrobilem znalezisko. Jednak najwyrazniej czas juz jednak wykonal swoja prace.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_01"); //Hmm..... Musze sie temu blizej przyjrzec.

	Npc_RemoveInvItems (hero, ItMw_Adanos_Stab_Teil1, 1);
	Npc_RemoveInvItems (hero, ItMw_Adanos_Stab_Teil2, 1);

	B_ShowGivenThings	("Dwa fragmenty");

	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_02"); //Nie wyglada to dobrze, a przez to nie mam na mysli mniej lub bardziej kruchego drewna i oczywistego pekniecia.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_03"); //Miejsce broni, czyli jej czubek, bylo kruche i kruszone po dotknieciu go, a pozostale ostrze równiez wykazuje pekniecia.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_04"); //Utracil wiekszosc swojej starej sily.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab_15_05"); //Nie mozesz nic zrobic z magia?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_06"); //Znam zaklecie uzdrawiajace, które mogloby pomóc w nieozywionej materii. Nie jest to substytut goracego posilku, ale jest to najlepszy, jaki moge zaoferowac.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_07"); //Nie chce obiecywac, ze bron odzyska pierwotna skutecznosc, ale przynajmniej bedzie gotowa do ponownego uzycia.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_08"); //W tym celu jednak poszczególne fragmenty wierzcholka musialyby znajdowac sie we wlasciwym miejscu, co byloby na tyle trudne do osiagniecia.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab_15_09"); //Nie sadze, ze jedyne co moge zrobic to spróbowac na sobie.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_10"); //Oto fragmenty. Mysle, ze znalazlem je wszystkie.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_11"); //Powinienes miec mozliwosc polaczenia ich w taki sposób, aby zachowaly swój pierwotny ksztalt.

	B_GiveInvItems	(self, hero, ItMi_ArgezBruchstuecke, 1);

	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_12"); //Prosze mi powiedziec, kiedy poczyniles postepy.

	Log_CreateTopic	(TOPIC_MOD_ARGEZ_ORT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ARGEZ_ORT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ARGEZ_ORT, "Koncówka ostrza w listwie jest polamana. Musze doprowadzic je do wlasciwego ksztaltu. Powinienem przyjrzec sie blizej fragmentom, które dal mi Argez.");
};

INSTANCE Info_Mod_Argez_AW_Stab2 (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Stab2_Condition;
	information	= Info_Mod_Argez_AW_Stab2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wydaje mi sie, ze znalazlem wlasciwy porzadek....";
};

FUNC INT Info_Mod_Argez_AW_Stab2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Stab))
	&& (Mod_Argez_Puzzle == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Stab2_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab2_15_00"); //Wydaje mi sie, ze znalazlem wlasciwy porzadek.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab2_37_01"); //To bardzo mi pomaga.

	B_GiveInvItems	(hero, self, ItMi_ArgezBruchstuecke, 1);

	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab2_37_02"); //Zanim zloze te fragmenty razem, chcialbym zaproponowac Panstwu zmiane personelu.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab2_37_03"); //Móglbym rzucic zaklecie na te tepa koncówke, zebys dal przeciwnikowi mieszanine dwóch rodzajów obrazen: drewna i magii.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab2_37_04"); //Z drugiej strony brzeszczotu taki zaklecie odbijalo sie.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab2_37_05"); //Która z tych dwóch opcji bedzie dla Ciebie bardziej atrakcyjna?

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Argez zatrudnil personel Adanosa. Jak zawsze.");

	B_GivePlayerXP	(400);

	B_SetTopicStatus	(TOPIC_MOD_ARGEZ_ORT, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Argez_AW_Stab2);

	Info_AddChoice	(Info_Mod_Argez_AW_Stab2, "Wybieram magicznie wzmocniona rózdzke.", Info_Mod_Argez_AW_Stab2_Magie);
	Info_AddChoice	(Info_Mod_Argez_AW_Stab2, "Bede bral personel tak, jak jest.", Info_Mod_Argez_AW_Stab2_Kampf);
};

FUNC VOID Info_Mod_Argez_AW_Stab2_Weiter()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab2_Kampf_37_00"); //I niech tak bedzie. Teraz zrezygnuj.

	Info_ClearChoices	(Info_Mod_Argez_AW_Stab2);

	AI_StopProcessInfos	(self);

};

FUNC VOID Info_Mod_Argez_AW_Stab2_Kampf()
{
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab2_Kampf_15_00"); //Bede bral personel tak, jak jest.

	Mod_Argez_Stab = 0;

	Info_Mod_Argez_AW_Stab2_Weiter();
};

FUNC VOID Info_Mod_Argez_AW_Stab2_Magie()
{
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab2_Magie_15_00"); //Wybieram magicznie wzmocniona rózdzke.

	Mod_Argez_Stab = 1;

	Info_Mod_Argez_AW_Stab2_Weiter();
};

INSTANCE Info_Mod_Argez_AW_Stab3 (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Stab3_Condition;
	information	= Info_Mod_Argez_AW_Stab3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_AW_Stab3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Stab2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Stab3_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab3_37_00"); //Prawie tak dobrze, jak oczekiwalem. Ale jeszcze lepiej niz cokolwiek dzisiaj kutego.

	if (Mod_Argez_Stab == 1) {
		B_GiveInvItems	(self, hero, ItMw_Adanos_Stab_Magieteil, 1);
	} else {
		B_GiveInvItems	(self, hero, ItMw_Adanos_Stab_Kampfteil, 1);
	};

	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab3_15_01"); //Dzieki. Robie to tutaj w swiatyni.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab3_37_02"); //Tak wiec jestem ja. Wykorzystajmy te platforme teleportowa.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab3_37_03"); //Mozna powiedziec, co chcecie od starych ludzi, ale komfort zostal doceniony.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTELEPORT");
};

INSTANCE Info_Mod_Argez_AW_Stab4 (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Stab4_Condition;
	information	= Info_Mod_Argez_AW_Stab4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_AW_Stab4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Stab3))
	&& (Npc_GetDistToWP(hero, "ADW_ADANOSTEMPEL_TELEPORTSTATION") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Stab4_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_00"); //Czuje, ze wkrótce wyjdziecie na ostatnia bitwe.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab4_15_01"); //....
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_02"); //Szanuje panskie powody, dla których nie poprosilem mnie o spotkanie z panem.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab4_15_03"); //argeza....
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_04"); //Naprawde nie musisz przepraszac.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab4_15_05"); //Dzieki. Ale dlaczego jestes dzis w tak dobrym nastroju? Jakis czas temu bylo inaczej.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_06"); //Znalazlem cos starego. Od mnie.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab4_15_07"); //To po prostu...... fantastyczne!
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_08"); //W Xeres, pamietaj? Kiedy ten potworny goblin, który nas uwiezil, w koncu zniknal, znalazlem smierdzacy, przytlaczajacy kod w poblizu taktów taktów, w którym brakowalo wielu stron.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_09"); //Uderzylem go..... i rozpoznalem wlasne pismo odreczne! Prowadzilem swój wlasny pamietnik w reku, napisany dawno temu!
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_10"); //Oczywiscie od razu zaczalem czytac, ale to, czego sie nauczylem, lezalo na glowie jak nagrobek. Po ucieczce, nie moglem sie z trudem zabrac do czytania.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_11"); //Szczesliwie zrobilem. Bo teraz napawa mnie to duma.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_12"); //Chce przedstawic panstwu jedna z jego stron, jedna z ostatnich, strone, która duzo wyjasni, ale nie wszystko. Tlumaczylem je dla Ciebie.

	B_GiveInvItems	(self, hero, ItWr_ArgezTagebuch1, 1);

	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_13"); //I zostawie cie sam na sam z tym, abys mógl bez mnie isc wlasna droga. Ale nie martw sie, nie zapomne o Tobie.

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Argez_AW_Gast (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Gast_Condition;
	information	= Info_Mod_Argez_AW_Gast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego i tak przybyles?";
};

FUNC INT Info_Mod_Argez_AW_Gast_Condition()
{
	if (Mod_Saturas_Gast == 1)
	{
		Info_Mod_Argez_AW_Gast.description = "Czy masz zadnych przewodników po kims, kto ukradl sprzet magów?";
	}
	else
	{
		Info_Mod_Argez_AW_Gast.description = "Czy zauwazyles cos na temat kradziezy sprzetu?";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	&& (Mod_Saturas_Gast_Fortschritt == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Gast_Info()
{
	if (Mod_Saturas_Gast == 1)
	{
		AI_Output(hero, self, "Info_Mod_Argez_AW_Gast_15_00"); //Czy masz zadnych przewodników po kims, kto ukradl sprzet magów?
		AI_Output(self, hero, "Info_Mod_Argez_AW_Gast_37_01"); //Nie, nic nie zauwazylem.
		AI_Output(self, hero, "Info_Mod_Argez_AW_Gast_37_02"); //Jestem po prostu zaskoczony i ulge, ze nikt nigdy nie podejrzewal mnie.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Argez_AW_Gast_15_03"); //Czy zauwazyles cos na temat kradziezy sprzetu?
		AI_Output(self, hero, "Info_Mod_Argez_AW_Gast_37_04"); //Jaka kradziez? Spalem cala noc.
	};
};

INSTANCE Info_Mod_Argez_AW_WarumHier (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_WarumHier_Condition;
	information	= Info_Mod_Argez_AW_WarumHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego i tak przybyles?";
};

FUNC INT Info_Mod_Argez_AW_WarumHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_WarumHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_AW_WarumHier_15_00"); //Dlaczego i tak przybyles? Czy nie chcialabys pójsc na bagno?
	AI_Output(self, hero, "Info_Mod_Argez_AW_WarumHier_37_01"); //Uczucie, które mnie ogarnelo, gdy zobaczylem wnetrze swiatyni w Khorinis, jest jeszcze silniejsze.
	AI_Output(self, hero, "Info_Mod_Argez_AW_WarumHier_37_02"); //Jestem pewien, ze znam ten obszar.
	AI_Output(hero, self, "Info_Mod_Argez_AW_WarumHier_15_03"); //Ale nie wyglada na to, ze wielu innych mogloby tak twierdzic.
	AI_Output(self, hero, "Info_Mod_Argez_AW_WarumHier_37_04"); //Prawo. Ale byc moze sa tu gdzies ludzie.
	AI_Output(self, hero, "Info_Mod_Argez_AW_WarumHier_37_05"); //Po prostu czuje sie jak w domu.
	AI_Output(hero, self, "Info_Mod_Argez_AW_WarumHier_15_06"); //Zycze powodzenia w poszukiwaniu.
	AI_Output(self, hero, "Info_Mod_Argez_AW_WarumHier_37_07"); //Dzieki. Co zamierzasz teraz zrobic?
	AI_Output(hero, self, "Info_Mod_Argez_AW_WarumHier_15_08"); //Przyjrzyjmy sie. Nie moge jeszcze przejsc na emeryture.
	AI_Output(self, hero, "Info_Mod_Argez_AW_WarumHier_37_09"); //Rozumiem. Zobacze cie dookola.
};

INSTANCE Info_Mod_Argez_AW_EXIT (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_EXIT_Condition;
	information	= Info_Mod_Argez_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Argez_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
