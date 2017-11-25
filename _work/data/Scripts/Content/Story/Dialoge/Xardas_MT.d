INSTANCE Info_Mod_Xardas_MT_Felsenfestung (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Felsenfestung_Condition;
	information	= Info_Mod_Xardas_MT_Felsenfestung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_Felsenfestung_Condition()
{
	if (Mod_Xeres_Kampf01 == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Felsenfestung_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_00"); //To bylo blisko. Dzieki Bogu poszedlem za Toba. Wydaje sie, ze nie jestes wystarczajaco silny, aby pokonac Xeres.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_01"); //Dobrze, ze wiemy to juz teraz, przeciez dobrze.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_02"); //Nie docenialem uprawnien Xeres' a. Czyni go jeszcze bardziej niebezpiecznym niz myslalem.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_03"); //Nie znam nikogo, kto móglby z nim konkurowac.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_04"); //Dlaczego nie mozesz ponownie sprawdzic swoich starych folderów? Zawsze mówi cos pozytecznego.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_05"); //Musimy wykorzystac nasze szanse.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_06"); //Czy moge Ci w miedzyczasie pomóc?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_07"); //Upewnilem sie, ze nikt inny nie moze wydostac sie z wiezienia Xeres.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_08"); //Aby Ci pomóc, musialem opuscic swoje stanowisko straznicze.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_09"); //Obawiam sie, ze pieklo do tej pory w Jharkendarzu przestalo istniec.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_10"); //Oznacza to, ze moge sie tam bawic.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_11"); //Nie spocze, dopóki czegos nie dowiem sie. Tak dlugo, jak dlugo trzeba zatrzymac tam wojska Xeresów.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_12"); //Nic nie moze byc latwiejsze.

	B_LogEntry	(TOPIC_MOD_XERES, "Xardas poszukuje sposobu, w jaki moglibysmy konkurowac z Xeres. W miedzyczasie zatrzymam zblizajace sie oddzialy Xeres w Jharkendarzu.");

	B_StartOtherRoutine	(Xeres_01, "START");
};

INSTANCE Info_Mod_Xardas_MT_ArgezSicher (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_ArgezSicher_Condition;
	information	= Info_Mod_Xardas_MT_ArgezSicher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_ArgezSicher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Rettung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_ArgezSicher_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_00"); //Ciesze sie, ze przyszedles. Czy powstrzymywales/as ludzi Xeres' a?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_ArgezSicher_15_01"); //Argez i ja wymazalem maly oddzial.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_02"); //Mam nadzieje, ze teraz bedziemy na razie bezproblemowi. Mam dla Ciebie nowe zlecenie.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_ArgezSicher_15_03"); //Tylko wtedy, gdy Xeres jest w stanie go zatrzymac.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_04"); //Powiedzialem juz, ze Radanos dzielil sie na kilka osobowosci, które rywalizowaly ze soba i dazyly do rozpadu - narodziny Innosa, Adanosa i Beliara.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_05"); //Trzej nowi bogowie byli od poczatku smiertelnymi wrogami i walczyli miedzy soba gdziekolwiek mogli.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_06"); //Jak wykazaly moje badania, uzywali oni równiez broni.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_ArgezSicher_15_07"); //Hmm. Przypuszczam, ze ladna potezna bron?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_08"); //Najbardziej potezna bron, jaka kiedykolwiek widzialem. Z jednym z nich powinno byc mozliwe pobicie Xeres.

	Wld_InsertNpc	(SkeletonMage_Riddler, "OW_FOGDUNGEON_36_MOVEMENT2");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_36");
	Wld_InsertNpc	(Lesser_Skeleton, "FP_FOGTOWER_BOOK");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_30");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_30");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_28");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_31");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_25");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_16");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_17");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_18");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_22");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_10");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_09");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_08");

	Log_CreateTopic	(TOPIC_MOD_ERSTEWAFFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ERSTEWAFFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ERSTEWAFFE, "Mam znalezc magiczna bron. Pochodzi ona od jednego z trzech bogów i byla ukryta nahorynie.");
};

INSTANCE Info_Mod_Xardas_MT_WoWaffe (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_WoWaffe_Condition;
	information	= Info_Mod_Xardas_MT_WoWaffe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie rozpoczac wyszukiwanie?";
};

FUNC INT Info_Mod_Xardas_MT_WoWaffe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_ArgezSicher))
	&& (Npc_HasItems(hero, ItMw_BeliarWeapon_Raven) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_WoWaffe_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_WoWaffe_15_00"); //Gdzie rozpoczac wyszukiwanie?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_01"); //Zwei Schauplätze der Kampfhandlungen müssen sich im Minental befunden haben. Es ist von "mistyczne miejsca" die Rede.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_02"); //Der eine sei bei der "ksiezyc" - ich vermute, damit ist der Steinkreis gemeint, in dem auch ein Fokusstein verborgen war.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_03"); //Drugi to przeklety mur. Opis miejsca znajduje sie dokladnie na wiezy przeciwmgielnej na wybrzezu.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_04"); //Najlepszym miejscem do rozpoczecia wyszukiwania jest jedno z tych dwóch miejsc, gdzie powinienes znalezc to, czego szukasz.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_05"); //Jak tylko ja wezmiesz, wróc.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_06"); //Jesli jednak na razie natkniesz sie tylko na kilka slabych wskazówek, których nie wiesz jak tlumaczyc, udziele ci mojej rady.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_07"); //Niech Beliar pilnuje ciebie w swojej wedrówce i przykrywa oczy swoich wrogów w ciemnosci.

	B_LogEntry	(TOPIC_MOD_ERSTEWAFFE,	"Xardas wspomnial o trudnym zagadce. Prawdopodobnie bede musial go rozwiazac, aby dostac bron. Ale najpierw musze znalezc to miejsce. Xardas mówi, ze powinienem isc do miejsca mistycznego. Dobrym wyborem bedzie Stonehenge lub Nebelturm. Jesli nie rozumiem zadnych wskazówek, Xardas moze mi pomóc.");
};

INSTANCE Info_Mod_Xardas_MT_RiddleHelper (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_RiddleHelper_Condition;
	information	= Info_Mod_Xardas_MT_RiddleHelper_Info;
	permanent	= 1;
	important	= 0;
	description	= "Znalazlem ksiege wskazówek.";
};

FUNC INT Info_Mod_Xardas_MT_RiddleHelper_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_WoWaffe))
	&& (Npc_HasItems(hero, ItMw_BeliarWeapon_Raven) == 0)
	&& (riddle6 == FALSE)
	&& (riddle1 == TRUE)
	{
		return 1;
	};
};

var int riddle1Hint;
var int riddle2Hint;
var int riddle3Hint;
var int riddle4Hint;
var int riddle5Hint;

FUNC VOID Info_Mod_Xardas_MT_RiddleHelper_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_00"); //Znalazlem ksiege wskazówek.

	if (riddle5 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_01"); //W tym tekscie mówi, ze znajde kogos lub cos w miejscu, gdzie wszystko sie zaczelo......
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_02"); //Czy Twój umysl poszedl tak daleko wstecz, ze nie pamietasz nawet miejsca, w którym znalazles pierwsza wskazówke?
		
		if (!riddle5Hint) {
			B_LogEntry(TOPIC_MOD_THERIDDLE, "Wracam do miejsca, gdzie znalazlem pierwsza ksiazke. To bylo we mgielni.");
			
			riddle5Hint = TRUE;
		};
	}
	else if (riddle4 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_03"); //Mówi sie tutaj, ze o czynach tych, którzy byli na pokladzie, dawno juz zapomniano.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_04"); //Oczywiscie mysle, ze mówimy o statku.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_05"); //A z tekstu mozna wyciagnac wniosek, ze zostal bezwzglednie pozbawiony zdolnosci zeglugowej z powodu niekorzystnych okolicznosci.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_06"); //Czy chcialbys, abym wskazal, gdzie mozna go znalezc?
		
		if (!riddle4Hint) {
			B_LogEntry(TOPIC_MOD_THERIDDLE, "Musze znalezc wrak. Mysle, ze znajdziesz ja na wybrzezu Minentala.");
			
			riddle4Hint = TRUE;
		};
	}
	else if (riddle3 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_07"); //Mówi sie, ze powinienem teraz znalezc miejsce, w którym sprytny rybak nie wysunie swojej sieci.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_08"); //No cóz, jesli umysl nakazuje mu lowic w czystych wodach...... rozejrzyj sie dookola na wschód od kolonii......
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_09"); //(dry) Wiecej wskazówek nie powinno byc potrzebne.
		
		if (!riddle3Hint) {
			B_LogEntry(TOPIC_MOD_THERIDDLE, "Xardas powiedzial mi, ze sprytni rybacy lowia w czystych wodach. Jakiego rodzaju woda w Minentalu nie jest jasna?");
			
			riddle3Hint = TRUE;
		};
	}
	else if (riddle2 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_10"); //Tym razem powinienem znalezc miejsce, które jest prawie pelne wody, ale mimo to oferuje wystarczajaca ilosc powietrza do oddychania.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_11"); //Wenn du dich nördlich vom Alten Lager umsiehst, müsstest du den gesuchten Ort finden ... wobei ich mit "wyglad" nicht nur den oberflächlichen Gebrauch deiner Augen meine ...
		
		if (!riddle2Hint) {
			B_LogEntry(TOPIC_MOD_THERIDDLE, "Poszukiwane miejsce powinno znajdowac sie na pólnoc od Starego Obozu. Nie powinienem jednak tylko powierzchownie uzywac swoich oczu.....");
			
			riddle2Hint = TRUE;
		};
	}
	else if (riddle1 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_12"); //Rozpoczne poszukiwania w miejscu, w którym wyszedlem.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_13"); //No cóz, wtedy z pewnoscia nie jestes na miejscu.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_14"); //W najblizszym sasiedztwie poczulem jedynie magiczna aure.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_15"); //Po prostu dobrze sie rozejrzyj, a znajdziesz to, czego szukasz.
		
		if (!riddle1Hint) {
			B_LogEntry(TOPIC_MOD_THERIDDLE, "Xardas uwaza, ze nie myle sie tutaj w twierdzy górskiej i czul magiczna aure w bezposrednim sasiedztwie. Powinienem rozejrzec sie po twierdzy.");
			
			riddle1Hint = TRUE;
		};
	};
};

INSTANCE Info_Mod_Xardas_MT_HabSchwert (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_HabSchwert_Condition;
	information	= Info_Mod_Xardas_MT_HabSchwert_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem miecz.";
};

FUNC INT Info_Mod_Xardas_MT_HabSchwert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riddler_Chromanin))
	&& ((Npc_HasItems(hero, ItMw_BeliarWeapon_Raven) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_01) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_02) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_03) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_04) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_05) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_06) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_07) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_08) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_09) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_10) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_11) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_12) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_13) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_14) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_15) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_16) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_17) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_18) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_19) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_20) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_01) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_02) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_03) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_04) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_05) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_06) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_07) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_08) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_09) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_10) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_11) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_12) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_13) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_14) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_15) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_16) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_17) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_18) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_19) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_20) == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_HabSchwert_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_HabSchwert_15_00"); //Znalazlem miecz.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_01"); //Bardzo dobry. Podejrzewam, ze jest to pazur Beliara. Dzieki ich mocy, powinienes byc w stanie bez problemów pokonac Xeres.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_02"); //Przed uzyciem broni nalezy ja poswiecic sanktuarium beliarskiemu.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_03"); //Wez ten amulet dla bezpieczenstwa.

	B_GiveInvItems	(self, hero, ItAm_Xardas_SchutzVorXeres, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_04"); //Ten amulet powinien chronic Cie przed zniewoleniami Xere.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_05"); //Nalezy jednak byc ostrzezonym. Po waszym ostatnim spotkaniu z nim, jego wplyw na orki w miescie zwiekszyl sie.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_06"); //Nie licz na standardy, które chronia Cie teraz.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_07"); //Bedziesz musial pomyslec o innych sposobach dotarcia do niego, czy to magia, eliksir czy miecz.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_08"); //Teraz wróce do Khorinis. Beliar badzcie z wami.

	B_LogEntry_More	(TOPIC_MOD_XERES, TOPIC_MOD_ERSTEWAFFE, "Mam miecz i Xardas mysli, ze moge go uzyc do zniszczenia Xeres. Aby uchronic mnie przed zniewolonymi zakleciami Xeres, dal mi jeszcze amulet, który zdecydowanie powinienem nosic. Moge teraz udac sie do Xeres w Orku.", "Mam miecz i Xardas mysli, ze moge go uzyc do zniszczenia Xeres.");
	B_SetTopicStatus	(TOPIC_MOD_ERSTEWAFFE, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Xardas_MT_PreBefoerderung (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_PreBefoerderung_Condition;
	information	= Info_Mod_Xardas_MT_PreBefoerderung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce zostac czarnym magikiem.";
};

FUNC INT Info_Mod_Xardas_MT_PreBefoerderung_Condition()
{
	if (Mod_Gilde == 12)
	&& (Kapitel > 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_PreBefoerderung_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_PreBefoerderung_14_00"); //Jest cos, o czym musze z Toba porozmawiac.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_PreBefoerderung_14_01"); //Jestescie z nami od jakiegos czasu i udowodniliscie sie jako zdolna przyczepa Beliaran.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_PreBefoerderung_14_02"); //Mozemy wykorzystac Twoja pomoc, abys mógl podjac kolejny krok i zdecydowac, czy chcesz pójsc droga magikowi czy wojownikowi w przyszlosci.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_PreBefoerderung_14_03"); //Nie musze juz mówic, ze decyzja jest ostateczna. Wybierz, który z dwóch obozów odpowiada twojej istocie.
};

INSTANCE Info_Mod_Xardas_MT_Befoerderung (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Befoerderung_Condition;
	information	= Info_Mod_Xardas_MT_Befoerderung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce zostac czarnym magikiem.";
};

FUNC INT Info_Mod_Xardas_MT_Befoerderung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_PreBefoerderung))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_BefoerderungKrieger))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Befoerderung_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Befoerderung_15_00"); //Chce zostac czarnym magikiem.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Befoerderung_14_01"); //Wybierz wiec droge magii. Madra decyzja.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Befoerderung_14_02"); //Podniose Cie do rangi czarnego maga. Miejmy nadzieje, ze pomoze to w zniszczeniu Xeres.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Befoerderung_14_03"); //Oto Twoja szata.

	CreateInvItems	(self, SCHWARZMAGIERROBE, 1);
	B_GiveInvItems	(self, hero, SCHWARZMAGIERROBE, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, Schwarzmagierrobe);

	B_GivePlayerXP	(400);

	B_Göttergefallen(3, 5);

	Mod_Gilde = 13;

	Snd_Play ("LEVELUP");
};

INSTANCE Info_Mod_Xardas_MT_BefoerderungKrieger (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_BefoerderungKrieger_Condition;
	information	= Info_Mod_Xardas_MT_BefoerderungKrieger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce byc czarnym wojownikiem.";
};

FUNC INT Info_Mod_Xardas_MT_BefoerderungKrieger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_PreBefoerderung))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Befoerderung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_BefoerderungKrieger_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_BefoerderungKrieger_15_00"); //Chce byc czarnym wojownikiem.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_BefoerderungKrieger_14_01"); //Zatem zdecydowaliscie sie panstwo na taka decyzje i uwazam, ze w zaistnialych okolicznosciach jest to sluszne.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_BefoerderungKrieger_14_02"); //Niestety musze panstwu powiedziec, ze jako Czarny Wojownik nie moge Was nauczyc - to zrobi Raven.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_BefoerderungKrieger_14_03"); //Wkrótce pójdz do niego i powiedz mu o swojej decyzji, aby mógl rozpoczac nastepna lekcje.
};

INSTANCE Info_Mod_Xardas_MT_Angebot (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Angebot_Condition;
	information	= Info_Mod_Xardas_MT_Angebot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_Angebot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gomez_Angebot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Angebot_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_00"); //O co w tym wszystkim chodzilo?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Angebot_15_01"); //Skad mialem wiedziec, ze zaklecie pamieci tak szybko sie zmniejsza?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_02"); //Skad mialam wiedziec, ze byles dla niego wyzwaniem?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_03"); //Macie szczescie, ze w tej chwili jestem w obozie, inaczej widzielibysmy sie nawzajem tylko w imperium Beliara.... Wiecej
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Angebot_15_04"); //Chcialem tez porozmawiac z Ravenem, stary obóz chce zlozyc ofiare demonicznym rycerzom.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_05"); //Zlóz mi oferte zanim Raven bedzie mial fiasko jak Gomez. Gomez skontaktuje sie z Ravenem i Scar, ale im pózniej, tym lepiej.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Angebot_15_06"); //Czy nie mozesz powtórzyc zaklecia pamieci?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_07"); //Nie, w tamtym czasie Gomez umarl i doszedlem do porozumienia z Beliarem, ze zostal ozywiony. Po jego smierci bylem w stanie rzucic tak potezny zaklecie pamieci, ale teraz nie jest to juz dla mnie mozliwe....
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_08"); //Jaka jest Twoja oferta?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Angebot_15_09"); //Stary obóz chce ofiarowac demonicznym rycerzom czesc starej kopalni za duzo pieniedzy, w przeciwnym razie musimy podjac ostrzejsze dzialania.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_10"); //Nie sadze, aby bylo to mozliwe po tej rozmowie z Gomezem.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_11"); //Mam jednak dla Was rade: teraz, gdy Gomez wie o Starym Obozie i jego historii, zrobi wszystko, co w jego mocy, aby ponownie zajac swoje stare stanowisko.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_12"); //W tym przypadku równiez nie moge wam pomóc. Teraz powinienes opuscic obóz zanim Gomez odzyska swiadomosc.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_AL_MINE, "Spotkalem Gomeza, który mnie zaatakowal, w obozie rycerskim demonów. Xardas mógl paralizowac go i kazal mi uciec. Lepiej powiedziec Whistlerowi, co sie stalo.");

	AI_Teleport	(self, "TOT");

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Xardas_MT_Gomez (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Gomez_Condition;
	information	= Info_Mod_Xardas_MT_Gomez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_Gomez_Condition()
{
	if (Mod_GomezAngriff == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Gomez_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Gomez_14_00"); //To wystarczy! Wciaz potrzebujemy Gomeza.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xardas_MT_Raven (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Raven_Condition;
	information	= Info_Mod_Xardas_MT_Raven_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_Raven_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_GomezNervt))
	&& (!Npc_IsInState(Mod_520_DMR_Raven_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Raven_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Raven_14_00"); //Polózmy teraz kres temu wzruszajacemu pojednaniu i odejdzmy.... Wiecej

	B_LogEntry	(TOPIC_MOD_AL_LOCKVOGEL, "Niestety, Xardas i Raven zapobiegly zabiciu Gomeza.... Wiecej Jednak Raven nakazuje swoim ludziom opuscic obóz i daje mi stary miecz Gomeza jako rekompensate.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_StartOtherRoutine	(Mod_517_DMR_Gomez_MT, "START");
	B_StartOtherRoutine	(Mod_520_DMR_Raven_MT, "START");
	B_StartOtherRoutine	(Mod_7066_DMR_Daemonenritter_MT, "TOT");

	AI_Teleport	(self, "TOT");
	AI_Teleport	(Mod_517_DMR_Gomez_MT, "TOT");
	AI_Teleport	(Mod_520_DMR_Raven_MT, "TOT");
	AI_Teleport	(Mod_7066_DMR_Daemonenritter_MT, "TOT");
};

INSTANCE Info_Mod_Xardas_MT_Orkfriedhof (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Orkfriedhof_Condition;
	information	= Info_Mod_Xardas_MT_Orkfriedhof_Info;
	permanent	= 0;
	important	= 0;
	description	= "W bagnie pojawil sie nieumarly szaman orków i zrabowal ksiazke chromanowa.";
};

FUNC INT Info_Mod_Xardas_MT_Orkfriedhof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_UndeadOrkShamane_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Orkfriedhof_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Orkfriedhof_15_00"); //W bagnie pojawil sie nieumarly szaman orków i zrabowal ksiazke chromanowa.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Orkfriedhof_15_01"); //Mówil o powrocie do miejsca martwego milczenia.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Orkfriedhof_14_02"); //Mówicie w bagnie? Czyz nie jest to w bezposrednim sasiedztwie orkiestrowego cmentarza, który odwiedziles juz w czasie sypialni?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Orkfriedhof_15_03"); //Byloby to najbardziej oczywiste miejsce do wyszukiwania.... ale na pewno móglbys sam sie z tym spotkac.

	Mod_NL_UOS_Day = Wld_GetDay() - 1;
};

INSTANCE Info_Mod_Xardas_MT_UndeadOrk (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_UndeadOrk_Condition;
	information	= Info_Mod_Xardas_MT_UndeadOrk_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_UndeadOrk_Condition()
{
	if (Mod_NL_UOS == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_UndeadOrk_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_14_00"); //Czy do tej pory byl Pan w stanie otrzymac chromanine?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_15_01"); //Istnieja pewne trudnosci.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_14_02"); //Blad!
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_15_03"); //.... Och, krótko to zrobie.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_15_04"); //Szaman nieumarly szaman zrabowal ksiazke i osiedlil sie na cmentarzu orkowym, gdzie uniemozliwial mi dotarcie do ksiazki przez magiczne zapory i zakladników.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_14_05"); //Czy jest w zasiegu Twojej magii?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_15_06"); //Mysle, ze tak.....
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_14_07"); //Potem uzyj zaklecia aby go zniszczyc. Poniewaz on moze byc twórca bariery, nie ma nic, co mogloby przeszkodzic w dotarciu do ksiazki.

	Info_ClearChoices	(Info_Mod_Xardas_MT_UndeadOrk);

	Info_AddChoice	(Info_Mod_Xardas_MT_UndeadOrk, "Tak, ale zakladnicy to zrobili.", Info_Mod_Xardas_MT_UndeadOrk_B);
	Info_AddChoice	(Info_Mod_Xardas_MT_UndeadOrk, "Okay, skopiuj to.", Info_Mod_Xardas_MT_UndeadOrk_A);
};

FUNC VOID Info_Mod_Xardas_MT_UndeadOrk_B()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_B_15_00"); //Tak, ale zakladnicy to zrobili. Sa wsród nich istoty nieumarle, które nie bylyby bardzo zadowolone z przejscia swego Mistrza....[...].
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_B_14_01"); //Chodzi tu o istnienie swiata, który znamy, a Ty martwisz sie o takie niewazno¶ci...... Prosze pozwolic mi pomyslec o tym, co jest sluszne....
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_B_14_02"); //Hmm, trzeba byloby ponownie polaczyc efekty dwóch róznych ról, aby zniszczyc wszystkie nieumarle stworzenia w jednym upadku chrztu.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_B_14_03"); //Moge to zrobic tylko raz dla panstwa.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_B_14_04"); //Z jakimi rolami musisz sie jednak samemu zdecydowac? i oczywiscie trzeba je równiez zdobyc.

	Mod_NL_Xardas_ScrollCombiner = 1;
	
	Info_ClearChoices	(Info_Mod_Xardas_MT_UndeadOrk);
};

FUNC VOID Info_Mod_Xardas_MT_UndeadOrk_A()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_A_15_00"); //Okay, skopiuj to.
	
	Info_ClearChoices	(Info_Mod_Xardas_MT_UndeadOrk);
};

INSTANCE Info_Mod_Xardas_MT_ScrollCombining (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_ScrollCombining_Condition;
	information	= Info_Mod_Xardas_MT_ScrollCombining_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcialbym polaczyc dwie role.";
};

FUNC INT Info_Mod_Xardas_MT_ScrollCombining_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_UndeadOrk))
	&& (Mod_NL_Xardas_ScrollCombiner == 1)
	{
		return 1;
	};
};

FUNC VOID B_Xardas_MT_WrongScrollCombination ()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WrongScrollCombination_14_00"); //Mam nadzieje, ze te czary spelnia potrzeby.
};

FUNC VOID B_Xardas_MT_RightScrollCombination ()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_RightScrollCombination_14_00"); //W rzeczywistosci panski wybór nie byl najgorszy, wydaje mi sie.
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_ScrollCombining_15_00"); //Chcialbym polaczyc dwie role.

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Zniszczenie nieumarlych", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "pozar", Info_Mod_Xardas_MT_ScrollCombining_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "fala lodowa", Info_Mod_Xardas_MT_ScrollCombining_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "zamarzniecie", Info_Mod_Xardas_MT_ScrollCombining_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Zniszczenie nieumarlych", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "pozar", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "fala lodowa", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "zamarzniecie", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HarmUndead, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_HarmUndead, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_HolyWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Zniszczenie nieumarlych", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "pozar", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "fala lodowa", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "zamarzniecie", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_HarmUndead, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_HolyWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Zniszczenie nieumarlych", Info_Mod_Xardas_MT_ScrollCombining_FireRain_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_FireRain_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "pozar", Info_Mod_Xardas_MT_ScrollCombining_FireRain_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_FireRain_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "fala lodowa", Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "zamarzniecie", Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_FireRain, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_FireRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_FireWave, 1);
	CreateInvItems	(hero, ItSc_IceRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_FireRain, 1);
	CreateInvItems	(hero, ItSc_IceRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_FireBolt, 1);
	CreateInvItems	(hero, ItSc_IceRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Zniszczenie nieumarlych", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "pozar", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "fala lodowa", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "zamarzniecie", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HarmUndead, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_FireRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_FireBolt, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_FireWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_FireRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_FireBolt, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Zniszczenie nieumarlych", Info_Mod_Xardas_MT_ScrollCombining_IceWave_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_IceWave_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "pozar", Info_Mod_Xardas_MT_ScrollCombining_IceWave_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_IceWave_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "fala lodowa", Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "zamarzniecie", Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_HolyWave, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_HolyWave, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_FireWave, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_FireWave, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_IceWave, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_IceWave, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_IceWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Zniszczenie nieumarlych", Info_Mod_Xardas_MT_ScrollCombining_IceRain_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_IceRain_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "pozar", Info_Mod_Xardas_MT_ScrollCombining_IceRain_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_IceRain_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "fala lodowa", Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "zamarzniecie", Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_FireRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_FireRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_IceWave, 1);
	CreateInvItems	(hero, ItSc_IceRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Zniszczenie nieumarlych", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "pozar", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "fala lodowa", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "zamarzniecie", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HarmUndead, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_IceWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

INSTANCE Info_Mod_Xardas_MT_Chromanin3 (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Chromanin3_Condition;
	information	= Info_Mod_Xardas_MT_Chromanin3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tu ze mna ksiazke chromaninowa.....";
};

FUNC INT Info_Mod_Xardas_MT_Chromanin3_Condition()
{
	if (Mod_NL_UOS > 6)
	&& (Npc_HasItems(hero, ItWr_Chromanin3) == 1)
	&& (Mod_NL_Chromanin == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Chromanin3_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_00"); //Mam tu ze mna ksiazke chromaninowa.....
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_01"); //(niezainteresowane) Dobre. To bylo równiez wasze zadanie ratowania ich.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_02"); //Jest jednak problem.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_03"); //Problem? Jesli dobrze znasz sie z czytania, gdzie powinien byc problem?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_04"); //.... jest pusty.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_05"); //Co? Nonsens, zobaczmy jak....

	B_GiveInvItems	(hero, self, ItWr_Chromanin3, 1);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_06"); //Beliar! Ale jak to jest mozliwe? W jakich okolicznosciach dostales te ksiazke?

	B_GiveInvItems	(self, hero, ItWr_Chromanin3, 1);

	AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_07"); //Oderwalem go od zwlok nieumarlego szamana orkowego.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_08"); //Nieumarle orchamany! Zla magia zdaje sie byc tutaj zamieszana.... Tak, czuje to. Magiczna energia tej ksiazki zdaje sie niemal calkowicie wygasla.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_09"); //Ale jak mu sie udalo? Czy mial z nim cos innego?

	if (Mod_NL_Siegelbuch == 0)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_10"); //Nie wiem.....
		AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_11"); //Idzcie i spojrzyjcie!
	};

	B_SetTopicStatus	(TOPIC_MOD_SLD_FRIEDHOF, LOG_SUCCESS);
};

INSTANCE Info_Mod_Xardas_MT_Siegelbuch_01 (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Siegelbuch_01_Condition;
	information	= Info_Mod_Xardas_MT_Siegelbuch_01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tak, ta zapieczetowana ksiazka.";
};

FUNC INT Info_Mod_Xardas_MT_Siegelbuch_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Chromanin3))
	&& (Npc_HasItems(hero, ItWr_Siegelbuch) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Siegelbuch_01_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_01_15_00"); //Tak, ta zapieczetowana ksiazka.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_01"); //Pozwólcie mi widziec....

	B_GiveInvItems	(hero, self, ItWr_Siegelbuch, 1);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_02"); //To..... Wyglada na to, ze tworzy wokól ciebie magiczna próznie.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_03"); //Co wiecej, powoli, ale stabilnie pochlania magiczna energie z otoczenia.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_01_15_04"); //Nadal nie rozumiem. Dlaczego wszystkie te magiczne falbanki?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_01_15_05"); //Ksiazka Chromanina jest po prostu ksiazka referencyjna, w której zapisano kilka zdan.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_06"); //Glupi glupi glupiec! Ale czego oczekujesz od zwyklego najemnika.....
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_07"); //To nie tylko papier, na którym cos napisano tuszem i piórem. Pismo ma charakter magiczny i mozna je usunac tylko za pomoca magicznych srodków.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_08"); //A teraz chce studiowac cicho zapieczetowana ksiazke, która mi przywiezliscie. Jutro najwczesniej moge powiedziec panstwu wiecej na ten temat.

	Mod_NL_XardasSiegelDay = Wld_GetDay();
};

INSTANCE Info_Mod_Xardas_MT_Siegelbuch_02 (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Siegelbuch_02_Condition;
	information	= Info_Mod_Xardas_MT_Siegelbuch_02_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co sie dowiedziales?";
};

FUNC INT Info_Mod_Xardas_MT_Siegelbuch_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Siegelbuch_01))
	&& (Wld_GetDay()-1 == Mod_NL_XardasSiegelDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Siegelbuch_02_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_02_15_00"); //A co sie dowiedziales?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_02_14_01"); //Najpierw powiedzialem to jutro!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xardas_MT_Siegelbuch_03 (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Siegelbuch_03_Condition;
	information	= Info_Mod_Xardas_MT_Siegelbuch_03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy dowiedziales sie czegos jeszcze?";
};

FUNC INT Info_Mod_Xardas_MT_Siegelbuch_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Siegelbuch_01))
	&& (Wld_GetDay()-1 > Mod_NL_XardasSiegelDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Siegelbuch_03_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_03_15_00"); //Czy dowiedziales sie czegos jeszcze?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_01"); //Tak, zrobilem, nawet jesli nie bylo to latwe. Wydaje sie, ze potwierdza to, co juz podejrzewalem.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_02"); //Zapieczetowany tom musial pochlonac magiczna energie buków chromanowych.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_03"); //Przypuszczalnie nieumarly storczyk dostrzegl niebezpieczenstwo, jakie chromanina stanowi dla jego mistrza i wykonal ten krok.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_03_15_04"); //Co mozemy w tym przypadku zrobic, aby przywrócic magie ksiazki?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_05"); //Nun, aus den wenigen Quellen die ich fand konnte ich schließen, dass es sich um das "Ksiega Pondarosa" handeln könnte.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_06"); //Jest starozytna i podobno posiadala te same cechy, co ksiazka, która przyniosla.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_07"); //Aby odzyskac magie ksiazki chromaniny, musielibysmy zlamac trzy pieczecie i otworzyc ksiazke Pondaro.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_03_15_08"); //A jak mamy to zrobic? Nie przypuszczam, ze mozna to zrobic sila, prawda?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_09"); //Richtig. Jedoch gaben die lückenhaften Quellen in dieser Beziehung nur den Satz preis "zlamac plomby w okregu kamieni". Sehr rätselhaft.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_10"); //Spójrz na Khorinis, aby zobaczyc, czy mozna znalezc zjawiska odpowiadajace tej parafrazie.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_11"); //W tych miejscach na pewno znajdziesz pewne mechanizmy, które pomoga Ci w ich uzyciu.

	B_GiveInvItems	(self, hero, ItWr_Siegelbuch, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_12"); //W tym czasie postaram sie dowiedziec wiecej o tej zlowieszczej ksiazce.

	Mod_NL_Siegelbuch = 2;

	B_LogEntry	(TOPIC_MOD_ERSTEWAFFE, "Najwyrazniej 'Ksiega Pondaro' pochlonela magie ksiegi Chromanina. Aby je przywrócic, nalezy polamac plomby. Ale Xardas mógl tylko dac mi sformulowanie 'rozbijajac foki w kregu kamieni'. Hmm, okrag z kamieni.... W kazdym razie powinny istniec mechanizmy, które pomoga mi je wykorzystac?");
};

INSTANCE Info_Mod_Xardas_MT_EXIT (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_EXIT_Condition;
	information	= Info_Mod_Xardas_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Xardas_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Xardas_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
