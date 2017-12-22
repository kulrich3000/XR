INSTANCE Info_Mod_Grimbald_Hi (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Hi_Condition;
	information	= Info_Mod_Grimbald_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grimbald_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grimbald_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Grimbald_Hi_07_00"); //Goddamn to, nie czyn tego halasu! A moze chcesz, aby Black Troll nas tam uslyszal?
	AI_Output(hero, self, "Info_Mod_Grimbald_Hi_15_01"); //Nie ma drogi! Czy powinienem go za ciebie zabic?
	AI_Output(self, hero, "Info_Mod_Grimbald_Hi_07_02"); //Dla Adano nie! Obserwuje te istote od wielu dni i to jest fascynujace.
};

INSTANCE Info_Mod_Grimbald_Faszinierend (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Faszinierend_Condition;
	information	= Info_Mod_Grimbald_Faszinierend_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co tak fascynuje to brzydkie stworzenie?";
};

FUNC INT Info_Mod_Grimbald_Faszinierend_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Faszinierend_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Faszinierend_15_00"); //Co tak fascynuje to brzydkie stworzenie?
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_01"); //Gorzkie stworzenie? Mój chlopiec, nie masz poczucia estetyki. Spójrz na te wdziekujace ruchy.
	AI_Output(hero, self, "Info_Mod_Grimbald_Faszinierend_15_02"); //....
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_03"); //Albo zobaczysz tam to opakowanie....
	AI_Output(hero, self, "Info_Mod_Grimbald_Faszinierend_15_04"); //Jaka snapper?
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_05"); //Cóz, ten Czarny spacer, który wczoraj w przeddzien przeszedl przez ziemie....
	AI_Output(hero, self, "Info_Mod_Grimbald_Faszinierend_15_06"); //Aha....
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_07"); //Przypomina mi to o tym, ze dziwili kapcie.
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_08"); //Zadne normalne zwierze po prostu nie zaatakowaloby Black Troll, ale po prostu slepo pobieglo do smierci.
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_09"); //Niezwykle agresywny. Wygladaly one i tak nieco okradzione.
	AI_Output(hero, self, "Info_Mod_Grimbald_Faszinierend_15_10"); //Czy chcesz? Masz na mysli, ze byli ranni?
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_11"); //Nie tak naprawde..... po prostu nie wygladaly dobrze.
	AI_Output(hero, self, "Info_Mod_Grimbald_Faszinierend_15_12"); //Czy mozesz byc bardziej konkretny?
	AI_Output(self, hero, "Info_Mod_Grimbald_Faszinierend_07_13"); //Nie widzialem juz wiecej, przyszli w porannych godzinach, ale zwariowali jak szalency.
};

INSTANCE Info_Mod_Grimbald_Dragomir (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Dragomir_Condition;
	information	= Info_Mod_Grimbald_Dragomir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem z Dragomiru.";
};

FUNC INT Info_Mod_Grimbald_Dragomir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Faszinierend))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Mitmachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Dragomir_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Dragomir_15_00"); //Jestem z Dragomiru, on chce wiedziec, co znalazles.
	AI_Output(self, hero, "Info_Mod_Grimbald_Dragomir_07_01"); //Nie wiem, nawet jeszcze cie nie znam. Nie byles juz za dlugo, czy?
	AI_Output(hero, self, "Info_Mod_Grimbald_Dragomir_15_02"); //Mozna to powiedziec, tak.
	AI_Output(self, hero, "Info_Mod_Grimbald_Dragomir_07_03"); //Jestem Grimbaldem, jednym z mysliwych Dragomira. Z wyjatkiem Black Troll i Snapperów, niewiele.
	AI_Output(self, hero, "Info_Mod_Grimbald_Dragomir_07_04"); //Faktycznie piekna dolina na polowania, gdyby Black Troll nie byl tutaj, a magowie by Ci nie przeszkadzali.
	AI_Output(hero, self, "Info_Mod_Grimbald_Dragomir_15_05"); //Blakaja tu magowie?
	AI_Output(self, hero, "Info_Mod_Grimbald_Dragomir_07_06"); //Tak, niekiedy kaplani maja tu jakies uroczystosci, znikaja w grocie po drugiej stronie jeziora, ale nic nie wydaje sie zbyt wazne.
	AI_Output(hero, self, "Info_Mod_Grimbald_Dragomir_15_07"); //No wiec. Czy jest jeszcze cos innego?
	AI_Output(self, hero, "Info_Mod_Grimbald_Dragomir_07_08"); //Nie. I oh, jesli jeszcze nie byles w Nandorze, towarzyszyl mi az do Nandora, a nastepnie szedl przez wawóz w kierunku lasu.
	AI_Output(hero, self, "Info_Mod_Grimbald_Dragomir_15_09"); //Dziekuje, ze bede dalej.

	B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Grimbald znalazl dobre polowanie, które jest zaklócane przez czarny troll i czarodziejów, którzy od czasu do czasu mijaja.");
	
	B_StartOtherRoutine(self, "FOLLOW");
};

INSTANCE Info_Mod_Grimbald_Erzbrocken (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Erzbrocken_Condition;
	information	= Info_Mod_Grimbald_Erzbrocken_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grimbald_Erzbrocken_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Dragomir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Erzbrocken_Info()
{
	AI_Output(self, hero, "Info_Mod_Grimbald_Erzbrocken_07_00"); //Poczekaj minute, prawie zapomnialem.

	B_Say	(hero, self, "$WASISTDENN");

	AI_Output(self, hero, "Info_Mod_Grimbald_Erzbrocken_07_01"); //Tutaj znalazlem ten dziwny kawalek rudy pomiedzy koscmi martwego luku, nie jestem pewny, co do tego.

	B_GiveInvItems	(self, hero, ItMi_Erzbrocken_Seltsam, 1);

	AI_Output(self, hero, "Info_Mod_Grimbald_Erzbrocken_07_02"); //Lepiej zabrac go do Dragomira, moze on moze cos z tym zrobic.

	B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Grimbald dal mi kolejny dziwny kawalek rudy dla Dragomira, który znalazl w agresywnej snapperze.");

	AI_StopProcessInfos	(self);
	
	B_StartOtherRoutine(self, "START");
};

INSTANCE Info_Mod_Grimbald_NandorGrom (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_NandorGrom_Condition;
	information	= Info_Mod_Grimbald_NandorGrom_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witajcie, Grimbald! Wracam. Cokolwiek nowego?";
};

FUNC INT Info_Mod_Grimbald_NandorGrom_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Erzbrocken))
	&& (Npc_KnowsInfo(hero, Info_Mod_Grom_Dragomir))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nandor_WoelfeTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_NandorGrom_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_NandorGrom_15_00"); //Witajcie, Grimbald! Wracam. Cokolwiek nowego?
	AI_Output(self, hero, "Info_Mod_Grimbald_NandorGrom_07_01"); //Wlasciwie nie.
	AI_Output(hero, self, "Info_Mod_Grimbald_NandorGrom_15_02"); //Nandory byly jednak nienormalnym wilkiem. Tutaj byli to szaleni zaloganci i agresywni grabieze Gromowi.
	AI_Output(self, hero, "Info_Mod_Grimbald_NandorGrom_07_03"); //To dziwne, ze to wszystko jest dziwne. Cóz, Dragomir zajmie sie tym.
	AI_Output(hero, self, "Info_Mod_Grimbald_NandorGrom_15_04"); //Z pewnoscia pan Grimbald.
	AI_Output(self, hero, "Info_Mod_Grimbald_NandorGrom_07_05"); //Szalenstwo! Nawiasem mówiac, zauwazylem cos innego....
	AI_Output(hero, self, "Info_Mod_Grimbald_NandorGrom_15_06"); //Um....?
	AI_Output(self, hero, "Info_Mod_Grimbald_NandorGrom_07_07"); //Tak. W lasach nad jeziorem cos sie dzieje. Czasami slysze glosy i odglosy.
	AI_Output(hero, self, "Info_Mod_Grimbald_NandorGrom_15_08"); //Moze magowie jaskini?
	AI_Output(self, hero, "Info_Mod_Grimbald_NandorGrom_07_09"); //Nie sadze. Oni zawsze przychodza.
	AI_Output(hero, self, "Info_Mod_Grimbald_NandorGrom_15_10"); //Widze. Zglosie to do Dragomira. No cóz, musze to robic - trzeba to robic.
	AI_Output(self, hero, "Info_Mod_Grimbald_NandorGrom_07_11"); //Teraz nalezy zachowac ostroznosc.
};

INSTANCE Info_Mod_Grimbald_Kapitel2 (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Kapitel2_Condition;
	information	= Info_Mod_Grimbald_Kapitel2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cos nowego?";
};

FUNC INT Info_Mod_Grimbald_Kapitel2_Condition()
{
	if (Mod_Drago == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Kapitel2_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Kapitel2_15_00"); //Cos nowego?
	AI_Output(self, hero, "Info_Mod_Grimbald_Kapitel2_07_01"); //Nie tak zle.... No cóz, dobrze. W dzisiejszych czasach jest coraz zimniej..... Przypuszczam, ze niedlugo dojdziesz do doliny.
	AI_Output(hero, self, "Info_Mod_Grimbald_Kapitel2_15_02"); //Zrób to. Musze udac sie do Minental. Do zobaczenia dookola.
	AI_Output(self, hero, "Info_Mod_Grimbald_Kapitel2_07_03"); //Do zobaczenia dookola.
};

INSTANCE Info_Mod_Grimbald_Untier (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Untier_Condition;
	information	= Info_Mod_Grimbald_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy ostatnio miales do czynienia z niezwykla gra?";
};

FUNC INT Info_Mod_Grimbald_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Untier))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Untier_15_00"); //Czy ostatnio miales do czynienia z niezwykla gra?
	AI_Output(self, hero, "Info_Mod_Grimbald_Untier_07_01"); //Tak wiec, oprócz zmeczonej snappera i czarnego troll.... w rzeczywistosci
	AI_Output(hero, self, "Info_Mod_Grimbald_Untier_15_02"); //Tak?
	AI_Output(self, hero, "Info_Mod_Grimbald_Untier_07_03"); //Po tym jak kilka dni temu zlapalem jakis dziki, obudzily mnie odglosy w nocy i moglem po prostu zobaczyc, jak wielki drapieznik - zbyt ciemny, aby go rozpoznac - z jednym ze schwytanych zwierzat zniknal w ciemnosci.
	AI_Output(hero, self, "Info_Mod_Grimbald_Untier_15_04"); //Gdzie poszlo to zwierze?
	AI_Output(self, hero, "Info_Mod_Grimbald_Untier_07_05"); //Wbiegl on tam w kierunku kamiennego kola w lasku.
	AI_Output(hero, self, "Info_Mod_Grimbald_Untier_15_06"); //Dziekuje, to wszystko, co chcialem uslyszec.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "Grimbald zostal skradziony noca przez duzego drapieznika. Uciekl w kierunku kamiennego kola.");
};

INSTANCE Info_Mod_Grimbald_Snorre (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Snorre_Condition;
	information	= Info_Mod_Grimbald_Snorre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grimbald_Snorre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Snorre))
	&& (!Npc_KnowsInfo(hero, Info_Mod_KoboldDragon_Stab))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Snorre_Info()
{
	AI_Output(self, hero, "Info_Mod_Grimbald_Snorre_07_00"); //Czy widziales, ze to male stworzenie plomienia?
	AI_Output(hero, self, "Info_Mod_Grimbald_Snorre_15_01"); //Plomieniowa istota?
	AI_Output(self, hero, "Info_Mod_Grimbald_Snorre_07_02"); //Tak, on przyszedl z kregu kamiennego i blysnal obok mnie. I chyba, ze nie jestem oszukany, ze w pelni naladowany zlotem.
	AI_Output(self, hero, "Info_Mod_Grimbald_Snorre_07_03"); //W tej chwili wydaje sie, ze rzeczy nietypowe rozkwitaja.
	AI_Output(hero, self, "Info_Mod_Grimbald_Snorre_15_04"); //A dokad ono poszlo?
	AI_Output(self, hero, "Info_Mod_Grimbald_Snorre_07_05"); //No cóz, przeszla przez most. I z daleka widzialem punkt plomieniowy w wejsciu do Relendel znika, jesli nie wszystko mnie oszukuje.

	B_LogEntry	(TOPIC_MOD_NL_STAB, "Lowca zauwazyl, ze Snorre znika w wejsciu do Relendel.");
};

INSTANCE Info_Mod_Grimbald_Moor (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Moor_Condition;
	information	= Info_Mod_Grimbald_Moor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy zdarza Ci sie wiedziec, gdzie jest wrzosowisko?";
};

FUNC INT Info_Mod_Grimbald_Moor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Moorhexe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Moorhexe_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Moor_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Moor_15_00"); //Czy zdarza Ci sie wiedziec, gdzie jest wrzosowisko?
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_07_01"); //Ein Moor auf Khorinis? Mir ist nur eines bekannt, das "fuking". Es befindet sich im Osten von Relendel.

	Info_ClearChoices	(Info_Mod_Grimbald_Moor);

	Info_AddChoice	(Info_Mod_Grimbald_Moor, "Dziekuje, to wszystko, co chcialem wiedziec.", Info_Mod_Grimbald_Moor_B);
	Info_AddChoice	(Info_Mod_Grimbald_Moor, "Czy moze mnie pan tam zabrac?", Info_Mod_Grimbald_Moor_A);
};

FUNC VOID Info_Mod_Grimbald_Moor_C()
{
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_C_07_00"); //Wielu rycerzy szczescia próbowalo juz odzyskac skarby torfowiska i wszyscy zaplacili zyciem.
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_C_07_01"); //Mówi sie, ze toksyczne opary i ciala bagienne sa przyczyna okrutnej smierci kazdego intruza, wiec mówia, ze.... Pomysl o tym, do czego docierasz.
};

FUNC VOID Info_Mod_Grimbald_Moor_B()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Moor_B_15_00"); //Dziekuje, to wszystko, co chcialem wiedziec.
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_B_07_01"); //Jezeli chca panstwo tam pojechac, to bardzo bym odradzal.

	Info_Mod_Grimbald_Moor_C();

	Info_ClearChoices	(Info_Mod_Grimbald_Moor);
};

FUNC VOID Info_Mod_Grimbald_Moor_A()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Moor_A_15_00"); //Czy moze mnie pan tam zabrac?
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_A_07_01"); //Do torfowiska? Czy nie myslisz?
	AI_Output(hero, self, "Info_Mod_Grimbald_Moor_A_15_02"); //To wazne. Losy Khorinisa mogly zalezec od niej.
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_A_07_03"); //Czy jestes pewny, ze nie bedziesz dla mnie zwiazywac troll?
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_A_07_04"); //Jesli chcesz tam pojechac z nadzieja na wypelnienie kieszeni zlotem, zdecydowanie odradzam.

	Info_Mod_Grimbald_Moor_C();

	AI_Output(hero, self, "Info_Mod_Grimbald_Moor_A_15_05"); //Przysiegam mówic prawde.
	AI_Output(hero, self, "Info_Mod_Grimbald_Moor_A_15_06"); //Korupcja czai sie blizej niz myslisz (cichutko) w jaskini po lochu magika za rogiem.
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_A_07_07"); //Hmm, tak, moze mówisz prawde. Ostatnio slyszalem o wielu dziwnych i niepokojacych wydarzeniach....
	AI_Output(self, hero, "Info_Mod_Grimbald_Moor_A_07_08"); //Dobrze, zabiore cie tam. Badz blisko za mna.

	Mod_NL_Grimbald = 1;

	self.aivar[AIV_Partymember] = TRUE;

	Info_ClearChoices	(Info_Mod_Grimbald_Moor);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RELENDEL");
};

INSTANCE Info_Mod_Grimbald_DragomirErzbrocken (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_DragomirErzbrocken_Condition;
	information	= Info_Mod_Grimbald_DragomirErzbrocken_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grimbald_DragomirErzbrocken_Condition()
{
	if (Mod_JG_GrimbaldTeacher == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_DragomirErzbrocken_Info()
{
	AI_Output(self, hero, "Info_Mod_Grimbald_DragomirErzbrocken_07_00"); //Czy rozmawiales z Dragomirem o smietniku rudy?
	AI_Output(hero, self, "Info_Mod_Grimbald_DragomirErzbrocken_15_01"); //Tak, on nie czuje sie dobrze i dlatego oddal mi go z powrotem.
	AI_Output(self, hero, "Info_Mod_Grimbald_DragomirErzbrocken_07_02"); //To wlasnie powiedzialem. Ale dziekuje za zabranie go ode mnie, nie chcialem go dookola.
	AI_Output(self, hero, "Info_Mod_Grimbald_DragomirErzbrocken_07_03"); //Jesli chcecie, moge Was troche nauczyc o polowaniach.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORINIS, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KHORINIS, "Lowca Grimbald moze mnie nauczyc o polowaniach.");
};

INSTANCE Info_Mod_Grimbald_Lernen (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr          	= 1;
	condition	= Info_Mod_Grimbald_Lernen_Condition;
	information	= Info_Mod_Grimbald_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czego mozesz mnie nauczyc?";
};

FUNC INT Info_Mod_Grimbald_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_DragomirErzbrocken))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grimbald_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Grimbald_Lernen_15_00"); //Czego mozesz mnie nauczyc?

	if ((PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ReptileSkin] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_07_01"); //Zalezy od tego, co chcesz wiedziec.

		Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

		Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);

		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Grimbald_Lernen, B_BuildLearnString("rozdarte zeby", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Grimbald_Lernen_Teeth);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ReptileSkin] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Grimbald_Lernen, B_BuildLearnString("skóry", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_ReptileSkin)), Info_Mod_Grimbald_Lernen_ReptileSkin);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Grimbald_Lernen, B_BuildLearnString("pazury", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Grimbald_Lernen_Claws);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Grimbald_Lernen, B_BuildLearnString("mucha kregoslup", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Grimbald_Lernen_BFSting);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Grimbald_Lernen, B_BuildLearnString("mucha", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFWing)), Info_Mod_Grimbald_Lernen_BFWing);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_07_02"); //Nie moge cie nauczyc wiecej niz juz wiesz. Przepraszam za to.
	};
};

FUNC void Info_Mod_Grimbald_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Grimbald_Lernen);
};

FUNC void Info_Mod_Grimbald_Lernen_Claws()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Claws))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Claws_07_00"); //Zwierzeta nie lubia oddawac pazurów. Musisz trafic dokladnie tam, gdzie idziesz nozem.
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Claws_07_01"); //Postawa dloni powinna byc lekko uwiklana. Z mocnym wstrzasem odciales pazur.
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Claws_07_02"); //Sprzet jest zawsze pozadanym srodkiem platniczym dla przedsiebiorcy.
	};

	Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

	Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);
		
};

FUNC void Info_Mod_Grimbald_Lernen_ReptileSkin()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_ReptileSkin))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_ReptileSkin_07_00"); //I zawsze wyciac tylko na brzuchu, inaczej obnizysz jakosc.
	};

	Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

	Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);
};

FUNC void Info_Mod_Grimbald_Lernen_Teeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Teeth))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Teeth_07_00"); //Najprostsza rzecza, która mozna wyciagnac ze zwierzat jest ich zeby. Jezdzisz nozem dookola protezy w ustach.
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Teeth_07_01"); //Potem umiejetnie oddziela sie go od czaszki zwierzecia szarpnieciem.
	};

	Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

	Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);
};

FUNC void Info_Mod_Grimbald_Lernen_Fur()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Fur))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Fur_07_00"); //Najlepszym sposobem usuniecia siersci jest wykonanie glebokiego ciecia na tylnych nogach zwierzecia.
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_Fur_07_01"); //Dzieki temu zawsze mozna latwo sciagnac futro z przodu do tylu.
	};

	Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

	Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);
};

FUNC void Info_Mod_Grimbald_Lernen_BFSting()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_BFSting))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_BFSting_07_00"); //mucha ma miekkie miejsce na plecach.
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_BFSting_07_01"); //Jesli wcisna Panstwo dlon do niej dociskajac, uklucie wysuwa sie bardzo daleko i mozna ja przeciac nozem.
	};

	Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

	Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);
};

FUNC void Info_Mod_Grimbald_Lernen_BFWing()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_BFWing))
	{
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_BFWing_07_00"); //Najlepszym sposobem na usuniecie skrzydel skrzydla muchy jest przeciecie ostrego ostrza bardzo blisko korpusu muchy.
		AI_Output(self, hero, "Info_Mod_Grimbald_Lernen_BFWing_07_01"); //Upewnij sie tylko, ze nie uszkodzisz cienkiej tkaniny skrzydel. Oni sa bezwartosciowi, chyba ze robisz to ostroznie.
	};

	Info_ClearChoices	(Info_Mod_Grimbald_Lernen);

	Info_AddChoice	(Info_Mod_Grimbald_Lernen, DIALOG_BACK, Info_Mod_Grimbald_Lernen_BACK);
};

INSTANCE Info_Mod_Grimbald_Pickpocket (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_Pickpocket_Condition;
	information	= Info_Mod_Grimbald_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Grimbald_Pickpocket_Condition()
{
	C_Beklauen	(80, ItAt_Sting, 4);
};

FUNC VOID Info_Mod_Grimbald_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);

	Info_AddChoice	(Info_Mod_Grimbald_Pickpocket, DIALOG_BACK, Info_Mod_Grimbald_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Grimbald_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Grimbald_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Grimbald_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);
};

FUNC VOID Info_Mod_Grimbald_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);

		Info_AddChoice	(Info_Mod_Grimbald_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Grimbald_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Grimbald_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Grimbald_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Grimbald_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Grimbald_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Grimbald_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Grimbald_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Grimbald_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Grimbald_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Grimbald_EXIT (C_INFO)
{
	npc		= Mod_765_NONE_Grimbald_NW;
	nr		= 1;
	condition	= Info_Mod_Grimbald_EXIT_Condition;
	information	= Info_Mod_Grimbald_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Grimbald_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grimbald_EXIT_Info()
{
	AI_StopProcessInfos	(self);

	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Dragomir))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Grimbald_Erzbrocken))
	{
		AI_Wait	(hero, 1);
	};
};
