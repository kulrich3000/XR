INSTANCE Info_Mod_Henry_Hi (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Hi_Condition;
	information	= Info_Mod_Henry_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Henry_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Henry_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Henry_Hi_04_00"); //Co ty tu robisz?
	AI_Output(hero, self, "Info_Mod_Henry_Hi_15_01"); //Nie wiem dokladnie.... zalezy od tego, co znajdziesz tutaj.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_04_02"); //Co tu masz? Obóz z chlopakami, którzy swedza, kiedy cie widza.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_04_03"); //Nie mam pojecia, skad pochodzisz i kim jestes.... Nie interesuje mnie równiez.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_04_04"); //Ale wsród nas polakierów myjemy myjnia taka jak stepka naszego statku.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_04_05"); //Wiec zrób sobie laske, obróc sie i odetnij.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_04_06"); //Tylko cali chlopcy z sola we krwi cos stracili.

	Info_ClearChoices	(Info_Mod_Henry_Hi);

	Info_AddChoice	(Info_Mod_Henry_Hi, "Jesli straciles troche krwi, mozesz zobaczyc rzeczy inaczej!", Info_Mod_Henry_Hi_B);
	Info_AddChoice	(Info_Mod_Henry_Hi, "Nie jestem zawrotny!", Info_Mod_Henry_Hi_A);
};

FUNC VOID Info_Mod_Henry_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_00"); //Powiem ci co: Zanim pózniej musze oczyscic wielki balagan, zrobisz dla mnie jedna mala rzecz, a potem znów o tym porozmawiamy.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_01"); //Cóz, po lewej stronie jest kanion. Idziesz tam i zabierasz mi kawalek gryzacego miesa. Czy to zrobiles?
	AI_Output(hero, self, "Info_Mod_Henry_Hi_C_15_02"); //Dobrze, powinnam byc w stanie.

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_03"); //(cichutko dla siebie) Hmm, potem wraca i nadal sie denerwuje (....).

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_04"); //(znowu bohatera) Ach, a gdy jestes w kanionie, nie boje sie powiedziec ci.... stamtad butelka mleka....
	AI_Output(hero, self, "Info_Mod_Henry_Hi_C_15_05"); //Co? Ach, zartujesz, zart....
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_06"); //Joker? Slyszysz, jak tylko daje ci spiew ptaków z matowa strona miecza.
	AI_Output(hero, self, "Info_Mod_Henry_Hi_C_15_07"); //Ale co....?
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_08"); //Nic, ale. Stada dzikich kóz przemierzaja kanion. Od jednego z pelnymi wymionami dostajesz mi butelke koziego mleka.
	AI_Output(hero, self, "Info_Mod_Henry_Hi_C_15_09"); //Wiec chcialbys, abym juz teraz dojal dla Ciebie kozy!
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_10"); //Kto cokolwiek powiedzial o doju, ty masz! Chociaz, kiedy patrze na ciebie tak, to wygladasz bardziej jak kuchnia niz facet, huh?
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_11"); //Ale dlaczego nie spróbujesz dojenia jednej z tych kóz, gdy jeszcze zyje, huh?
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_12"); //Z broda kapitana daje wam cale moje zloto i polozylem na nim miecz, hahahaha.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_13"); //Jednak dosyc tego byka. Kiedy uderzysz w koze, po prostu przebijesz jej wymie i wpuszczasz mleko do butelki. Czy to zrobiles?
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_14"); //Teraz wyjdz z tego miejsca i nie wracaj do domu, dopóki nie nosisz wszystkiego.

	Info_ClearChoices	(Info_Mod_Henry_Hi);

	Wld_InsertNpc	(Canyon_Ziege_Euter,	"ADW_CANYON_PATH_TO_BANDITS_36");

	Log_CreateTopic	(TOPIC_MOD_HENRY_BEISSER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_HENRY_BEISSER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_HENRY_BEISSER, "Henry nie pozwoli mi isc do obozu, dopóki nie przyniose mu kawalka miesa. Mialem tez dostawac mleko dzikiej kozy.");
};

FUNC VOID Info_Mod_Henry_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Henry_Hi_B_15_00"); //Jesli straciles troche krwi, mozesz zobaczyc rzeczy inaczej!
	AI_Output(self, hero, "Info_Mod_Henry_Hi_B_04_01"); //Spójrzcie, dostalismy tu bohatera..... dosc glupi bohater.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_B_04_02"); //Myslisz, ze po prostu mozesz sie tu porozbic i wpuszcze cie do srodka?
	AI_Output(self, hero, "Info_Mod_Henry_Hi_B_04_03"); //Jedyna rzecza, która juz niedlugo wejdzie w gre jest moje ostrze w Twoim brzuchu.... i moi koledzy i kolezanki "jesli chca, zebys to zrobil.

	Info_Mod_Henry_Hi_C();
};

FUNC VOID Info_Mod_Henry_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Henry_Hi_A_15_00"); //Nie jestem zawrotny!
	AI_Output(self, hero, "Info_Mod_Henry_Hi_A_04_01"); //Tak, prawda..... co jest dobre dla czegos. Ale co mamy zrobic z brudnym trampem, takim jak Ty w obozie?
	AI_Output(self, hero, "Info_Mod_Henry_Hi_A_04_02"); //Pomaluj wejscie do naszego obozu czerwonym kolorem, jesli kiedykolwiek chcesz nas odwiedzic?

	Info_Mod_Henry_Hi_C();
};

INSTANCE Info_Mod_Henry_Fleisch (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Fleisch_Condition;
	information	= Info_Mod_Henry_Fleisch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem wszystko....";
};

FUNC INT Info_Mod_Henry_Fleisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Hi))
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 1)
	&& (Npc_HasItems(hero, ItFo_Ziegenmilch_Bloody) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Fleisch_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_Fleisch_15_00"); //Dostalem wszystko....
	
	B_GiveInvItems	(hero, self, ItFo_MuttonRaw, 1);

	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_01"); //No cóz, zobaczmy.

	Npc_RemoveInvItems	(hero, ItFo_MuttonRaw, 1);
	Npc_RemoveInvItems	(hero, ItFo_Ziegenmilch_Bloody, 1);

	B_ShowGivenThings	("i krwawego mleka koziego.");

	CreateInvItems	(self, ItFo_Milk, 1);

	B_UseItem	(self, ItFo_Milk);

	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_02"); //Ach, nie ma nic jak dobry lyk krwawego mleka koziego.
	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_03"); //Bez twardych uczuc. Nie wydaje mi sie, ze nie jest to taki rodzaj mieczaka, jaki myslalem, kiedy zajmowales sie tymi rzeczami.
	AI_Output(hero, self, "Info_Mod_Henry_Fleisch_15_04"); //Wiec teraz moge wejsc do srodka?
	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_05"); //Nie chce tak byc. Poczatkowo myslalem, ze byles puny chlopakiem tych magów, którzy po prostu chcieli sie rozkoszowac.
	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_06"); //Moze sie jednak wydawac, ze masz troche talentu.... nie bój sie zabrudzenia palców podczas polowania.
	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_07"); //Dla takiego faceta jak ty, byc moze nadal moglibysmy znalezc jakies zastosowanie w naszym magazynie...... jesli kapitan nie zjedza cie na sniadanie, huh?
	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_08"); //Wszystko w porzadku, zadzwon wiec do Greg. Bedzie mial dla Ciebie cos do zrobienia.

	B_LogEntry	(TOPIC_MOD_HENRY_BEISSER, "Przynioslam Henry' emu mieso i mleko. Teraz powinienem zobaczyc Greg.");
	B_SetTopicStatus	(TOPIC_MOD_HENRY_BEISSER, LOG_SUCCESS);

	B_GivePlayerXP	(600);

	AI_StopProcessInfos	(self);

	B_Göttergefallen(2, 1);

	self.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Henry_Entertrupp (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Entertrupp_Condition;
	information	= Info_Mod_Henry_Entertrupp_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej, jestes jednym z strazników!";
};

FUNC INT Info_Mod_Henry_Entertrupp_Condition()
{
	if (Mod_InEntertrupp == 0)
	&& (Piraten_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Entertrupp_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_Entertrupp_15_00"); //Hej, jestes jednym z strazników!
	AI_Output(self, hero, "Info_Mod_Henry_Entertrupp_04_01"); //Nie naleze do nich, jestem szefem druzyny chlopców!
	AI_Output(self, hero, "Info_Mod_Henry_Entertrupp_04_02"); //Czego chcesz?
	AI_Output(hero, self, "Info_Mod_Henry_Entertrupp_15_03"); //Chce przylaczyc sie do waszej pozycji.
	AI_Output(self, hero, "Info_Mod_Henry_Entertrupp_04_04"); //Kazdy chce dolaczyc do moich oddzialów.
	AI_Output(self, hero, "Info_Mod_Henry_Entertrupp_04_05"); //Jesli jestes powazny, musisz pokazac, co mozesz zrobic!
	AI_Output(hero, self, "Info_Mod_Henry_Entertrupp_15_06"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Henry_Entertrupp_04_07"); //Najpierw dostajesz mi butelke grogu, a potem porozmawiamy.
	AI_Output(hero, self, "Info_Mod_Henry_Entertrupp_15_08"); //A gdzie moge ja dostac?
	AI_Output(self, hero, "Info_Mod_Henry_Entertrupp_04_09"); //Dalej, w jaskini, znajduje sie kuchnia czarownicy Samuela.

	Log_CreateTopic	(TOPIC_MOD_HENRY_ENTERTRUPP, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_HENRY_ENTERTRUPP, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_HENRY_ENTERTRUPP, "Mialem go dostac butelka grogu.");

	AI_Teleport	(Mod_940_PIR_Samuel_AW, "ADW_PIRATECAMP_TOWER_BED");
	B_StartOtherRoutine	(Mod_940_PIR_Samuel_AW, "ENTER");
	AI_Teleport	(Mod_940_PIR_Samuel_AW, "ADW_PIRATECAMP_TOWER_BED");
};

INSTANCE Info_Mod_Henry_SamuelWeg (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_SamuelWeg_Condition;
	information	= Info_Mod_Henry_SamuelWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Samuela tu nie ma.";
};

FUNC INT Info_Mod_Henry_SamuelWeg_Condition()
{
	if (Mod_SamuelIstWeg == 1)
	&& (Mod_InEntertrupp == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_SamuelWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_SamuelWeg_15_00"); //Samuela tu nie ma.
	AI_Output(self, hero, "Info_Mod_Henry_SamuelWeg_04_01"); //Tu wlasnie lezy problem! Bez Samuela, nie ma grog.
	AI_Output(self, hero, "Info_Mod_Henry_SamuelWeg_04_02"); //Upewnij sie, ze dostaje mój grog.
	AI_Output(hero, self, "Info_Mod_Henry_SamuelWeg_15_03"); //A skad czerpie grog?
	AI_Output(self, hero, "Info_Mod_Henry_SamuelWeg_04_04"); //Dlaczego nie rozejrzec sie po jaskini Samuela? Gdzies musi byc recepta.
	AI_Output(hero, self, "Info_Mod_Henry_SamuelWeg_15_05"); //Wlasciwie, bede.
	AI_Output(self, hero, "Info_Mod_Henry_SamuelWeg_04_06"); //Nie osmielisz sie przyniesc mi jakis tani fuzel.

	B_LogEntry	(TOPIC_MOD_HENRY_ENTERTRUPP, "Najwyrazniej powinienem spalic grog Henry' ego.");

	Wld_InsertItem	(Mod_SamuelsGrogRezept, "FP_PIRATESCAMP_INSERT_NOTIZ");
};

INSTANCE Info_Mod_Henry_HierGrog (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_HierGrog_Condition;
	information	= Info_Mod_Henry_HierGrog_Info;
	permanent	= 1;
	important	= 0;
	description	= "Dostalem grog.";
};

FUNC INT Info_Mod_Henry_HierGrog_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_SamuelWeg))
	&& (Mod_QuatschGrog == 0)
	&& (Mod_InEntertrupp == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_HierGrog_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_HierGrog_15_00"); //Dostalem grog.

	Info_ClearChoices	(Info_Mod_Henry_HierGrog);

	Info_AddChoice	(Info_Mod_Henry_HierGrog, "Nie dostalem nic.", Info_Mod_Henry_HierGrog_BACK);

	if (Npc_HasItems(hero, Mod_RealGrog) > 0)
	{
		Info_AddChoice	(Info_Mod_Henry_HierGrog, "Zapieczenie wlasne", Info_Mod_Henry_HierGrog_Own);
	};
	if (Npc_HasItems(hero, ItFo_Addon_Grog) > 0)
	{
		Info_AddChoice	(Info_Mod_Henry_HierGrog, "Normalna Grog", Info_Mod_Henry_HierGrog_Fusel);
	};
};

FUNC VOID Info_Mod_Henry_HierGrog_BACK()
{
	AI_Output(hero, self, "Info_Mod_Henry_HierGrog_BACK_15_00"); //Nie dostalem nic.
	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_BACK_04_01"); //Potem zostaw mnie sam na sam.

	Info_ClearChoices	(Info_Mod_Henry_HierGrog);
};

FUNC VOID Info_Mod_Henry_HierGrog_Own()
{
	B_GiveInvItems	(hero, self, Mod_RealGrog, 1);

	B_UseItem	(self, Mod_RealGrog);

	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_Own_04_00"); //To szamot!
	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_Own_04_01"); //Jesli mozesz warzyc cos takiego, mozesz równiez skorzystac z najsilniejszego Razora.
	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_Own_04_02"); //Masz moja aprobate!

	if (Mod_InEntertrupp == 0)
	{
		B_LogEntry_More	(TOPIC_MOD_PIRATEN_ENTERTRUPP, TOPIC_MOD_HENRY_ENTERTRUPP, "Otrzymalem zgode Henryka na dolaczenie do grupy przedsiebiorstw.", "Henry byl zadowolony z mojego grogu. Mam jego zgode.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_HENRY_ENTERTRUPP, "Henry byl zadowolony z mojego grogu. Mam jego zgode.");
	};

	B_SetTopicStatus	(TOPIC_MOD_HENRY_ENTERTRUPP, LOG_SUCCESS);

	Mod_QuatschGrog = 1;

	B_GivePlayerXP	(200);

	B_Göttergefallen(2, 1);

	Info_ClearChoices	(Info_Mod_Henry_HierGrog);
};

FUNC VOID Info_Mod_Henry_HierGrog_Fusel()
{
	B_GiveInvItems	(hero, self, ItFo_Addon_Grog, 1);

	B_UseItem	(self, ItFo_Addon_Grog);

	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_Fusel_04_00"); //Co robisz dla mnie?
	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_Fusel_04_01"); //Z tym nawet nie szczotkuje zebów!
	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_Fusel_04_02"); //Wejdz z tego miejsca z tym, co robisz.

	Info_ClearChoices	(Info_Mod_Henry_HierGrog);
};

INSTANCE Info_Mod_Henry_InEntertrupp (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_InEntertrupp_Condition;
	information	= Info_Mod_Henry_InEntertrupp_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce przylaczyc sie do waszej pozycji.";
};

FUNC INT Info_Mod_Henry_InEntertrupp_Condition()
{
	if (Mod_QuatschGrog == 1)
	&& (Mod_InEntertrupp == 0)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Francis_Skip))
	|| (Npc_KnowsInfo(hero, Info_Mod_Morgan_HierKrallen)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_InEntertrupp_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_InEntertrupp_15_00"); //Chce przylaczyc sie do waszej pozycji.
	AI_Output(self, hero, "Info_Mod_Henry_InEntertrupp_04_01"); //Sprawdziles sie jako pirat.
	AI_Output(self, hero, "Info_Mod_Henry_InEntertrupp_04_02"); //Od teraz jestes w moim skladzie.

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_PIRATEN_ENTERTRUPP, "Jestem teraz czlonkiem grupy Henry' ego.");
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_ENTERTRUPP, LOG_SUCCESS);

	Mod_InEntertrupp = 1;

	B_Göttergefallen(2, 1);
	
	if (Npc_KnowsInfo(hero, Info_Mod_Morgan_Entertrupp))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Morgan_HierKrallen)) {
		B_SetTopicStatus(TOPIC_MOD_MORGAN_ENTERTRUPP, LOG_FAILED);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_Entertrupp))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Francis_Skip)) {
		B_SetTopicStatus(TOPIC_MOD_FRANCIS_ENTERTRUPP, LOG_FAILED);
	};
};

INSTANCE Info_Mod_Henry_Befreiung (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Befreiung_Condition;
	information	= Info_Mod_Henry_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kazdy ma racje?";
};

FUNC INT Info_Mod_Henry_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Befreiung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung_15_00"); //Kazdy ma racje?
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_01"); //Jak mozemy byc pewni, gdy jestesmy w czasie wojny?
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung_15_02"); //Nie wiem o tym. Jestem z Greg.
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_03"); //I czego chce?
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung_15_04"); //Mam Ci pomóc, zebys mógl sie uderzyc.
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_05"); //Dlaczego tak sie nie stalo?
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung_15_06"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_07"); //Podczas gdy bitwa szaleje, niektórzy z tych nieumarlych chlopaków ruszyli na plaze i ugruntowali sie w jaskini.
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_08"); //Nie sa tak glupi, jak sie wydaje, poniewaz zainstalowali kolczasta pulapke.
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_09"); //Musisz zabic tych nieumarlych i spróbowac zdezaktywowac pulapke.
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung_15_10"); //To tak dobrze, jak dobrze.
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_11"); //Zobaczymy to.

	Wld_SendTrigger	("HENRYMAINMOVER");

	Wld_InsertNpc	(Mod_7001_HoherUntoterMagier_AW,	"ADW_PIRATECAMP_CAVE3_04");
	Wld_InsertNpc	(Mod_7002_HoherUntoterMagier_AW,	"ADW_PIRATECAMP_CAVE3_04");
	Wld_InsertNpc	(Mod_7003_HoherUntoterMagier_AW,	"ADW_PIRATECAMP_CAVE3_04");
	Wld_InsertNpc	(Mod_7004_HoherUntoterMagier_AW,	"ADW_PIRATECAMP_CAVE3_04");
	Wld_InsertNpc	(Mod_7005_HoherUntoterMagier_AW,	"ADW_PIRATECAMP_CAVE3_04");

	Log_CreateTopic	(TOPIC_MOD_BEL_PIRHENRY, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRHENRY, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_PIRHENRY, "Henry chce, abym zabil nieumarlych facetów, którzy ukrywaja sie w jaskini na plazy. Wydaje sie jednak, ze przy wejsciu zainstalowano syfon kolczasty. Musze sie przekonac, czy moge go w jakis sposób wylaczyc.");
};

INSTANCE Info_Mod_Henry_Befreiung2 (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Befreiung2_Condition;
	information	= Info_Mod_Henry_Befreiung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nieumarlych pokonano.";
};

FUNC INT Info_Mod_Henry_Befreiung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Befreiung))
	&& (Npc_IsDead(Mod_7001_HoherUntoterMagier_AW))
	&& (Npc_IsDead(Mod_7002_HoherUntoterMagier_AW))
	&& (Npc_IsDead(Mod_7003_HoherUntoterMagier_AW))
	&& (Npc_IsDead(Mod_7004_HoherUntoterMagier_AW))
	&& (Npc_IsDead(Mod_7005_HoherUntoterMagier_AW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Befreiung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung2_15_00"); //Nieumarlych pokonano.
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung2_04_01"); //(prosze) Bardzo dobra praca. Teraz te nieumarle nie beda nam juz grozic.
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung2_15_02"); //A co z nagroda?
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung2_04_03"); //Tutaj wez to zloto i cztery butelki grogu.

	CreateInvItems	(hero, ItMi_Gold, 250);
	CreateInvItems	(hero, ItFo_Addon_Grog, 4);

	B_ShowGivenThings	("250 Zloto i 4 Gromadzenie otrzymane");

	AI_Output(hero, self, "Info_Mod_Henry_Befreiung2_15_04"); //Dzieki.

	Mod_Piratenbefreiung += 1;

	B_GivePlayerXP	(450);

	B_LogEntry_More	(TOPIC_MOD_BEL_PIRHENRY, TOPIC_MOD_BEL_PIRATENLAGER, "Powiedzialem Henry' emu o moim zwyciestwie nad nieumarla jaskinia.", "Pomagalem Henry' emu w jego problemie z nieumarlym.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRHENRY, LOG_SUCCESS);
};

INSTANCE Info_Mod_Henry_Todesangst (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Todesangst_Condition;
	information	= Info_Mod_Henry_Todesangst_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Henry_Todesangst_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Norek_Heimweh))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Todesangst_Info()
{
	AI_Output(self, hero, "Info_Mod_Henry_Todesangst_04_00"); //Glosno) Zatrzymaj! Nie moge sie zaangazowac.
	AI_Output(hero, self, "Info_Mod_Henry_Todesangst_15_01"); //Co sie dzieje? Znasz mnie, czy nie?
	AI_Output(self, hero, "Info_Mod_Henry_Todesangst_04_02"); //Cokolwiek. Tego wlasnie chce kapitan.
	AI_Output(hero, self, "Info_Mod_Henry_Todesangst_15_03"); //Musze porozmawiac z Gregiem. To wazne.
	AI_Output(self, hero, "Info_Mod_Henry_Todesangst_04_04"); //Hmm. A zatem wszystko w porzadku. Pozwalales Jackowi na eskortowanie Cie do obozu.
	AI_Output(hero, self, "Info_Mod_Henry_Todesangst_15_05"); //Jesli tak powiesz, to....

	self.aivar[AIV_PASSGATE] = FALSE;
};

INSTANCE Info_Mod_Henry_Todesangst2 (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Todesangst2_Condition;
	information	= Info_Mod_Henry_Todesangst2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Henry_Todesangst2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlligatorJack_Todesangst2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Todesangst2_Info()
{
	AI_Output(self, hero, "Info_Mod_Henry_Todesangst2_04_00"); //Przejdz przez nie!

	self.aivar[AIV_PASSGATE] = TRUE;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Henry_Malcom (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Malcom_Condition;
	information	= Info_Mod_Henry_Malcom_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zamawiam tam jedzenie w pominieciu dla Malcoma.";
};

FUNC INT Info_Mod_Henry_Malcom_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_AW_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Henry_Fleisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Malcom_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_Malcom_15_00"); //Zamawiam tam jedzenie w pominieciu dla Malcoma.
	AI_Output(self, hero, "Info_Mod_Henry_Malcom_04_01"); //Najpierw zgryze. Nastepnie mozesz porozmawiac z kimkolwiek zechcesz.
};

INSTANCE Info_Mod_Henry_Lehrer (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Lehrer_Condition;
	information	= Info_Mod_Henry_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Henry_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Hi))
	&& (Piraten_Dabei == TRUE)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Henry_Lehrer_04_00"); //Potrafie nauczyc Cie jak uzywac ludzi dwurecznych.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_PIRATEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_PIRATEN, "Henryk moze mnie nauczyc, jak obchodzic sie z dwoma rekami.");
};

INSTANCE Info_Mod_Henry_Lernen (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Lernen_Condition;
	information	= Info_Mod_Henry_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce sie uczyc.";
};

FUNC INT Info_Mod_Henry_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Lehrer))
	&& (Piraten_Dabei == TRUE)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_Lernen_15_00"); //Chce sie uczyc.

	Info_ClearChoices	(Info_Mod_Henry_Lernen);

	Info_AddChoice	(Info_Mod_Henry_Lernen, DIALOG_BACK, Info_Mod_Henry_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Henry_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Henry_Lernen_2H_5);
	Info_AddChoice	(Info_Mod_Henry_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Henry_Lernen_2H_1);
};

FUNC VOID Info_Mod_Henry_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Henry_Lernen);
};

FUNC VOID Info_Mod_Henry_Lernen_2H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Henry_Lernen);

		Info_AddChoice	(Info_Mod_Henry_Lernen, DIALOG_BACK, Info_Mod_Henry_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Henry_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Henry_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Henry_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Henry_Lernen_2H_1);
	};
};

FUNC VOID Info_Mod_Henry_Lernen_2H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Henry_Lernen);

		Info_AddChoice	(Info_Mod_Henry_Lernen, DIALOG_BACK, Info_Mod_Henry_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Henry_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Henry_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Henry_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Henry_Lernen_2H_1);
	};
};

const string Henry_Checkpoint	= "ADW_PIRATECAMP_WAY_01";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_Henry_FirstWarn (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_FirstWarn_Condition;
	information	= Info_Mod_Henry_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Henry_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, Henry_Checkpoint) <= 700) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	
	if ((self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_RefuseTalk(self) == FALSE))
	{
		return TRUE;
	};
};

func void Info_Mod_Henry_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Henry_FirstWarn_04_00"); //HALT! Powiedzialem, ze nie mozesz sie tu dostac.
	
	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, Henry_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Henry_SecondWarn (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_SecondWarn_Condition;
	information	= Info_Mod_Henry_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Henry_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, Henry_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_Henry_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Henry_SecondWarn_04_00"); //Opowiem ci to po raz ostatni. Jeszcze jeden krok i wejdziesz w swiat bólu!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,Henry_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Henry_Attack (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Attack_Condition;
	information	= Info_Mod_Henry_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Henry_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,Henry_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_Henry_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_Henry_Attack_04_00"); //Poprosil pan o to.....

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_Henry_Pickpocket (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Pickpocket_Condition;
	information	= Info_Mod_Henry_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Henry_Pickpocket_Condition()
{
	C_Beklauen	(91, ItFo_Addon_Grog, 5);
};

FUNC VOID Info_Mod_Henry_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Henry_Pickpocket);

	Info_AddChoice	(Info_Mod_Henry_Pickpocket, DIALOG_BACK, Info_Mod_Henry_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Henry_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Henry_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Henry_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Henry_Pickpocket);
};

FUNC VOID Info_Mod_Henry_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Henry_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Henry_Pickpocket);

		Info_AddChoice	(Info_Mod_Henry_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Henry_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Henry_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Henry_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Henry_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Henry_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Henry_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Henry_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Henry_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Henry_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Henry_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Henry_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Henry_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Henry_EXIT (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_EXIT_Condition;
	information	= Info_Mod_Henry_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Henry_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Henry_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
