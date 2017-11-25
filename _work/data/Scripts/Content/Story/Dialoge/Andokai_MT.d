INSTANCE Info_Mod_Andokai_Hi (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Hi_Condition;
	information	= Info_Mod_Andokai_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andokai_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Andokai_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_12_00"); //Co Pan tutaj robi?

	Info_ClearChoices	(Info_Mod_Andokai_Hi);

	Info_AddChoice	(Info_Mod_Andokai_Hi, "Po prostu rozgladalem sie dookola.", Info_Mod_Andokai_Hi_B);
	Info_AddChoice	(Info_Mod_Andokai_Hi, "Xardas skierowal mnie do pana.", Info_Mod_Andokai_Hi_A);
};

FUNC VOID Info_Mod_Andokai_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_B_15_00"); //Po prostu rozgladalem sie dookola.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_B_12_01"); //Jestes zabawnym facetem. Masz szczescie, ze nie mamy juz nieprzyjemnych gosci.... z drogi.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_B_12_02"); //Jesli nie chcesz sie do nas zglosic, upewnij sie, ze wygrasz jakas ziemie.
};

FUNC VOID Info_Mod_Andokai_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_00"); //Xardas skierowal mnie do pana. Chce do Panstwa dolaczyc.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_01"); //Xardes? Tam tam. A chcesz byc nowicjuszem? Wygladasz slabo.
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_02"); //Kiedys bylem silniejszy.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_03"); //Jak milo dla Ciebie. Jesli Xardas uwaza, ze jestes odpowiedni, musi byc cos z Toba.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_04"); //Nie zabiore Cie jednak do siebie, chyba ze dowiedzisz sie, jak bardzo mozesz byc dla nas uzyteczny.
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_05"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_06"); //Pierwsza rzecza, która musisz zrobic jest przekonanie mnie do swojej postawy.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_07"); //Khorinis ma klasztor magów ognia - jak wiecie, nasi zaciekli wrogowie.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_08"); //Nie moze to zaszkodzic, jesli troche im zaszkodzisz - jako znak zaufania dla mnie.
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_09"); //Jak mam to zrobic?
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_10"); //Czarodzieje bunkruja relikwie w glebi sklepien, pilnujac jej jak jablko ich oczu - swietego Mlotka.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_11"); //Czy teraz okaze sie, ze zniknalby - cóz, byloby to bardzo zabawne.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_12"); //Idzcie wiec do klasztoru i kradniecie ten mlotek.
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_13"); //Wszystko jasne. Czy po prostu moge zostac wpuszczony do klasztoru?
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_14"); //Nie. Tylko wierzacy Innos moga przejsc przez brame wejsciowa. Na prawo od wejscia znajduje sie jednak niski mur, który prowadzi do wnetrza klasztoru.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_15"); //Aby jednak nie przyciagac uwagi, musisz nosic szate nowicjusza. Mamy surowe nasladownictwo, z którym nikt nie bedzie robil wrazenia.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_16"); //Ale stare oczy Goraxa nie zauwaza zadnej róznicy. Przejscie przez brame moze byc mozliwe, ale to ryzykowna próba.

	CreateInvItems	(self, ITAR_FAKE_NOV_L, 1);
	B_GiveInvItems	(self, hero, ITAR_FAKE_NOV_L, 1);

	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_17"); //Jak nabrac mlotka? Czy nie jest chroniony?
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_18"); //Oczywiscie on bedzie. Musisz cos wymyslic.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_19"); //Jesli nie wiesz co robic, zapytaj Bodo w miescie. Niedawno sam musial wykonac podobne zadanie.
	AI_Output(hero, self, "Info_Mod_Andokai_Hi_A_15_20"); //Bede wiec w drodze.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_21"); //Poczekac! Jesli jestes juz w klasztorze, jest jeszcze cos, co mozesz zrobic. Gorax odpowiada tam za produkcje wina.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_22"); //Wino jest dobre, potrzebujemy go nie tylko dla naszych rytualów, ale takze dlatego, ze swietnie smakuje - trzeba zostawic go na czerwonym wezle.
	AI_Output(self, hero, "Info_Mod_Andokai_Hi_A_12_23"); //Zdobadz zaufanie Goraxa. Powiedz mu, aby przeprowadzil polecenie. Nastepnie nalezy wziac wino i wrócic. Doprowadz go do Myxiru.

	Info_ClearChoices	(Info_Mod_Andokai_Hi);

	Log_CreateTopic	(TOPIC_MOD_ANDOKAI_WEIN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ANDOKAI_WEIN, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_DAEMONENBESCHWOERER, TOPIC_MOD_ANDOKAI_WEIN, "Moja pierwsza misja jest kradziez swietego mlotka dla Andokai, który magicy strazy pozarnej ukryli gdzies w sklepieniach swojego klasztoru w Khorinis.", "Mam udac sie do klasztoru magów ognia i przekonac Goraxa, aby przekazal mi przesylke wina, która nastepnie przywioze do Myxiru.");
	B_LogEntry_NS	(TOPIC_MOD_ANDOKAI_WEIN, "Nie przykuwam uwagi w klasztorze, kiedy nosze szate nowicjusza. Poza tym musze wejsc przez sciane po prawej stronie bramy wjazdowej klasztoru, aby dostac sie na wewnetrzny dziedziniec.");
	B_LogEntry_NS	(TOPIC_MOD_DAEMONENBESCHWOERER, "Nie przykuwam uwagi w klasztorze, kiedy nosze szate nowicjusza. Poza tym musze wejsc przez sciane po prawej stronie bramy wjazdowej klasztoru, aby dostac sie na wewnetrzny dziedziniec. Jak wykradlem mlot bez zostania zauwazonym, moze Bodo potrafi mi powiedziec w miescie.");
};

INSTANCE Info_Mod_Andokai_Hammer (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Hammer_Condition;
	information	= Info_Mod_Andokai_Hammer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto kicker.";
};

FUNC INT Info_Mod_Andokai_Hammer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	&& (Npc_HasItems(hero, ITAR_FAKE_NOV_L) == 1)
	&& (Npc_HasItems(hero, Holy_Hammer_MIS) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_Hammer_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Hammer_15_00"); //Oto kicker.

	B_GiveInvItems	(hero, self, Holy_Hammer_MIS, 1);

	AI_Output(self, hero, "Info_Mod_Andokai_Hammer_12_01"); //Wszystkie sluszne, wszystkie sluszne. Wydaje sie, ze nie masz problemu z praca przeciwko magikom strazy pozarnej.
	AI_Output(self, hero, "Info_Mod_Andokai_Hammer_12_02"); //Jest to satysfakcjonujace, choc podstawowy warunek wstepny.
	AI_Output(self, hero, "Info_Mod_Andokai_Hammer_12_03"); //Kolejne zadanie sprawdzi Twoja wytrzymalosc, wytrwalosc, inteligencje i zdolnosc do walki.
	AI_Output(self, hero, "Info_Mod_Andokai_Hammer_12_04"); //Chce, abys znalazl biblioteke tej twierdzy.
	AI_Output(hero, self, "Info_Mod_Andokai_Hammer_15_05"); //Uh....?
	AI_Output(self, hero, "Info_Mod_Andokai_Hammer_12_06"); //Pode mna jest brama. Ta brama prowadzi do labiryntu. A gdzies za labiryntem znajduje sie biblioteka.
	AI_Output(self, hero, "Info_Mod_Andokai_Hammer_12_07"); //Chce wiedziec, jak sie tam dostac. Tak mozna znalezc.

	Npc_RemoveInvItems	(hero, ITAR_FAKE_NOV_L, 1);

	B_GivePlayerXP	(150);

	B_Göttergefallen(3, 1);

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "Za duza brama na placu Twierdzy Beliaran znajduje sie labirynt, który prowadzi do biblioteki. I musze znalezc droge.");
};

INSTANCE Info_Mod_Andokai_WarInBib (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_WarInBib_Condition;
	information	= Info_Mod_Andokai_WarInBib_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem biblioteke.";
};

FUNC INT Info_Mod_Andokai_WarInBib_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	&& (Mod_BibEntdeckt)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_WarInBib_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_WarInBib_15_00"); //Znalazlem biblioteke.
	AI_Output(self, hero, "Info_Mod_Andokai_WarInBib_12_01"); //Czy pamietasz trase?

	if (Mod_BeliarStatue_Bibliothek_Dabei)
	{
		AI_Output(hero, self, "Info_Mod_Andokai_WarInBib_15_02"); //Podlaczylem tam posag Beliar do sieci teleportowej.
		AI_Output(self, hero, "Info_Mod_Andokai_WarInBib_12_03"); //Ktos mysli. Przekonasz mnie coraz wiecej.

		B_GivePlayerXP	(300);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Andokai_WarInBib_15_04"); //Tak. Wszystkie prawe korytarze sa otwarte.
		AI_Output(self, hero, "Info_Mod_Andokai_WarInBib_12_05"); //Oznacza to, ze teraz latwiej bedzie nam znalezc droge przez labirynt.

		B_GivePlayerXP	(200);
	};

	AI_Output(self, hero, "Info_Mod_Andokai_WarInBib_12_06"); //Naucze moich magów, aby dokladnie odkryli biblioteke.
	AI_Output(self, hero, "Info_Mod_Andokai_WarInBib_12_07"); //Chetnie przyjme cie jako nowicjusza. Teraz wszystko, czego potrzebuje, to aprobata Xardasa. Chce patrzec na kazda nowa rekrutacje.
	AI_Output(hero, self, "Info_Mod_Andokai_WarInBib_15_08"); //Czy musimy? Znam Xardas od dawna.
	AI_Output(self, hero, "Info_Mod_Andokai_WarInBib_12_09"); //Wtedy moze latwiej bedzie go przekonac.

	B_Göttergefallen(3, 1);

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "Jesli Xardas wyrazi zgode, Andokai zaakceptuje mnie jako nowicjusza.");

	Wld_InsertNpc	(Mod_7755_KDS_SchwarzerMagier_MT, "LABYRINTH_98");
	Wld_InsertNpc	(Mod_7756_KDS_SchwarzerMagier_MT, "LABYRINTH_98");
	Wld_InsertNpc	(Mod_7757_KDS_SchwarzerMagier_MT, "LABYRINTH_98");
	Wld_InsertNpc	(Mod_7758_KDS_SchwarzerMagier_MT, "LABYRINTH_98");
	Wld_InsertNpc	(Mod_7759_KDS_SchwarzerMagier_MT, "LABYRINTH_98");
};

INSTANCE Info_Mod_Andokai_Skinner (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Skinner_Condition;
	information	= Info_Mod_Andokai_Skinner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tu troche przesiaknietej ziemi.";
};

FUNC INT Info_Mod_Andokai_Skinner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& (Npc_HasItems(hero, ItMi_Traumruf) >= 2)
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_02) >= 12)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_Skinner_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Skinner_15_00"); //Mam tu troche ziól bagiennych, mistrza sferycznej manifestacji.
	AI_Output(self, hero, "Info_Mod_Andokai_Skinner_12_01"); //Doskonaly. To z pewnoscia zwiekszy moja wiedze o beliarskiej i ciemnej magii. Co masz do zaoferowania?
	AI_Output(self, hero, "Info_Mod_Andokai_Skinner_12_02"); //Bede wzialem dwa wymarzone krzyki, plus 12 czarnych medrców.

	Npc_RemoveInvItems	(hero, ItMi_Traumruf, 2);
	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_02, 12);

	B_ShowGivenThings	("Lodygi ziól szarlatowatych podane");

	AI_Output(self, hero, "Info_Mod_Andokai_Skinner_12_03"); //Mysle, ze powinno to pokryc Panstwa wydatki.

	CreateInvItems	(self, ItMi_Gold, 750);
	B_GiveInvItems	(self, hero, ItMi_Gold, 750);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Andokai wynagradzal mnie hojnie za rdestwe bagnista.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Andokai_Moorhexe (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Moorhexe_Condition;
	information	= Info_Mod_Andokai_Moorhexe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slyszalem, ze jest pan w posiadaniu zaklec zwiazanych z metamorfoza.";
};

FUNC INT Info_Mod_Andokai_Moorhexe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Moorhexe))
	&& (Knows_MagicSecretsBand6 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_Moorhexe_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Moorhexe_15_00"); //Slyszalem, ze jest pan w posiadaniu zaklec zwiazanych z metamorfoza. Czy moge kupic niektóre z nich?
	AI_Output(self, hero, "Info_Mod_Andokai_Moorhexe_12_01"); //Ha, to wszystko sie konczy. Chcesz materialów zaprojektowanych do naszych bezcennych badan?
	AI_Output(self, hero, "Info_Mod_Andokai_Moorhexe_12_02"); //Jako zwykly najemnik nie mozesz pracowac nawet z prostym kólkiem strazackim.
	AI_Output(hero, self, "Info_Mod_Andokai_Moorhexe_15_03"); //Cóz, bylem przynajmniej na tyle utalentowany, ze moglem wejsc do twojego klasztoru przez kapliczki i samemu teleportowac sie po Khorinis.
	AI_Output(hero, self, "Info_Mod_Andokai_Moorhexe_15_04"); //Ciesze sie, ze moge udowodnic swoje doswiadczenie z rola runa i zaklecia.
	AI_Output(self, hero, "Info_Mod_Andokai_Moorhexe_12_05"); //Co smiales sie wykpic z kopalni?
	AI_Output(self, hero, "Info_Mod_Andokai_Moorhexe_12_06"); //l-- (oczekuj) Ale poczekaj, pozwólcie mi pomyslec.... Mam male zadanie, które pokaze, czy jestes bardzo utalentowany czy glupiec.
	AI_Output(self, hero, "Info_Mod_Andokai_Moorhexe_12_07"); //Cenny relikt, zloty kij Pyrmana, zostal skradziony z klasztoru Innos podczas nalotu demonicznych stworzen.
	AI_Output(self, hero, "Info_Mod_Andokai_Moorhexe_12_08"); //Jesli mi sie to udalo, przekonales mnie.

	Log_CreateTopic	(TOPIC_MOD_NL_STAB, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_STAB, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_STAB, "Andokai chcial mi opuscic stan ról transformacyjnych tylko wtedy, gdy dostalem go' personelem Pyrmans'. Podczas nalotu zostal skradziony z klasztoru magów ognia.");

	B_StartOtherRoutine	(Kobold_11010_NW, "TOT");
};

INSTANCE Info_Mod_Andokai_PyrmansStab (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_PyrmansStab_Condition;
	information	= Info_Mod_Andokai_PyrmansStab_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andokai_PyrmansStab_Condition()
{
	if (Npc_HasItems(hero, ItMw_PyrmansStab) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_PyrmansStab_Info()
{
	AI_Output(self, hero, "Info_Mod_Andokai_PyrmansStab_12_00"); //Co ty tu robisz? Tak dlugo, jak dlugo nie bedziesz mial personelu, bede potrzebowal mnie....
	AI_Output(hero, self, "Info_Mod_Andokai_PyrmansStab_15_01"); //Mam personel.
	AI_Output(self, hero, "Info_Mod_Andokai_PyrmansStab_12_02"); //Co? Próbujesz mnie oszukac. Musze Cie zapytac.....

	B_GiveInvItems	(hero, self, ItMw_PyrmansStab, 1);

	AI_Output(self, hero, "Info_Mod_Andokai_PyrmansStab_12_03"); //... oh...... Naprawde. Nie wiem, co powiedziec...... To oczywiscie zmienia sytuacje.... Wiecej
	AI_Output(self, hero, "Info_Mod_Andokai_PyrmansStab_12_04"); //Tutaj wez lekko uszkodzone króliczki.

	B_GiveInvItems	(self, hero, ItRu_TrfRabbit, 1);

	AI_Output(self, hero, "Info_Mod_Andokai_PyrmansStab_12_05"); //Moze nie byc kompletny, ale nie wymaga magicznych kregów jako podstawy do jego uzycia.

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_NL_STAB, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Andokai_UngeheuerInBib (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_UngeheuerInBib_Condition;
	information	= Info_Mod_Andokai_UngeheuerInBib_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Andokai_UngeheuerInBib_Condition()
{
	if (Mod_BeliarBibScene == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_UngeheuerInBib_Info()
{
	AI_Output(self, hero, "Info_Mod_Andokai_UngeheuerInBib_12_00"); //Czy pójdziesz z nim? Nie klade wiekszego nacisku na to slabe strony.

	Info_ClearChoices	(Info_Mod_Andokai_UngeheuerInBib);

	Info_AddChoice	(Info_Mod_Andokai_UngeheuerInBib, "Niech idzie sam.", Info_Mod_Andokai_UngeheuerInBib_B);
	Info_AddChoice	(Info_Mod_Andokai_UngeheuerInBib, "Bez problemu.", Info_Mod_Andokai_UngeheuerInBib_A);
};

FUNC VOID Info_Mod_Andokai_UngeheuerInBib_C()
{
	AI_Output(self, hero, "Info_Mod_Andokai_UngeheuerInBib_C_12_00"); //Potem jest rozliczone. Przejde teraz ponownie do waznych spraw.

	Info_ClearChoices	(Info_Mod_Andokai_UngeheuerInBib);
};

FUNC VOID Info_Mod_Andokai_UngeheuerInBib_B()
{
	AI_Output(hero, self, "Info_Mod_Andokai_UngeheuerInBib_B_15_00"); //Niech idzie sam.

	B_StartOtherRoutine	(Mod_7756_KDS_SchwarzerMagier_MT, "START");

	Info_Mod_Andokai_UngeheuerInBib_C();
};

FUNC VOID Info_Mod_Andokai_UngeheuerInBib_A()
{
	AI_Output(hero, self, "Info_Mod_Andokai_UngeheuerInBib_A_15_00"); //Bez problemu.

	Mod_BeliarBibScene = 3;

	Log_CreateTopic	(TOPIC_MOD_BELIAR_UNGEHEUER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BELIAR_UNGEHEUER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BELIAR_UNGEHEUER, "Zgodzilem sie pójsc do biblioteki z magikiem, aby sprawdzic go. Widocznie wydarzylo sie tam cos dziwnego.");

	Info_Mod_Andokai_UngeheuerInBib_C();
};

INSTANCE Info_Mod_Andokai_UngeheuerInBib2 (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_UngeheuerInBib2_Condition;
	information	= Info_Mod_Andokai_UngeheuerInBib2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Biblioteka znów jest czysta.";
};

FUNC INT Info_Mod_Andokai_UngeheuerInBib2_Condition()
{
	if (Mod_BeliarBibScene == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_UngeheuerInBib2_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_UngeheuerInBib2_15_00"); //Biblioteka znów jest czysta.
	AI_Output(self, hero, "Info_Mod_Andokai_UngeheuerInBib2_12_01"); //Dobra praca. Co zrobila nowicjuszka?
	AI_Output(hero, self, "Info_Mod_Andokai_UngeheuerInBib2_15_02"); //Uwolnil kilka bardzo starych stworzen. Ale oni wszyscy sa umarli.
	AI_Output(self, hero, "Info_Mod_Andokai_UngeheuerInBib2_12_03"); //Juz teraz tak bardzo staram sie wybierac nowicjuszy. Dlaczego wciaz jestem karany takimi glupcami?
	AI_Output(hero, self, "Info_Mod_Andokai_UngeheuerInBib2_15_04"); //Tylko Beliar wie.
	AI_Output(self, hero, "Info_Mod_Andokai_UngeheuerInBib2_12_05"); //To prawda. Zamierzam zaostrzyc warunki przyjecia.

	B_GivePlayerXP	(400);

	B_SetTopicStatus	(TOPIC_MOD_BELIAR_UNGEHEUER, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_7755_KDS_SchwarzerMagier_MT, "START");
	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Andokai_Bibliothek1 (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Bibliothek1_Condition;
	information	= Info_Mod_Andokai_Bibliothek1_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skad wiesz o bibliotece?";
};

FUNC INT Info_Mod_Andokai_Bibliothek1_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andokai_WarInBib))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_Bibliothek1_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Bibliothek1_15_00"); //Skad wiesz o bibliotece?
	AI_Output(self, hero, "Info_Mod_Andokai_Bibliothek1_12_01"); //Dwaj mieszkancy twierdzy opowiedzieli nam o tym, kiedy tu przyjechalismy. Ale nawet na torturach nie chcieli nam powiedziec drogi przez labirynt.
	AI_Output(self, hero, "Info_Mod_Andokai_Bibliothek1_12_02"); //Od tego czasu wyslalismy juz kilku nowicjuszy, ale albo w ogóle nie wrócili, albo im sie to nie udalo.
	AI_Output(self, hero, "Info_Mod_Andokai_Bibliothek1_12_03"); //Labirynt wydaje sie zawierac wiecej niz kilka martwych konców.
};

INSTANCE Info_Mod_Andokai_Bibliothek2 (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Bibliothek2_Condition;
	information	= Info_Mod_Andokai_Bibliothek2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co tam robisz?";
};

FUNC INT Info_Mod_Andokai_Bibliothek2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andokai_WarInBib))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_Bibliothek2_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Bibliothek2_15_00"); //Co tam robisz?
	AI_Output(self, hero, "Info_Mod_Andokai_Bibliothek2_12_01"); //Biblioteka ma byc ogromna. Kto wie, jakie sa tam ukryte starozytne skarby i madrosc.
	AI_Output(self, hero, "Info_Mod_Andokai_Bibliothek2_12_02"); //To, co trzeba ukryc, jest warte wytrwalosci.
};

INSTANCE Info_Mod_Andokai_Infos (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Infos_Condition;
	information	= Info_Mod_Andokai_Infos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Mam kilka bardziej ogólnych pytan.....";
};

FUNC INT Info_Mod_Andokai_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Infos_15_00"); //Mam kilka bardziej ogólnych pytan.....
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_12_01"); //Co sie dzieje?

	Info_ClearChoices	(Info_Mod_Andokai_Infos);

	Info_AddChoice	(Info_Mod_Andokai_Infos, DIALOG_BACK, Info_Mod_Andokai_Infos_BACK);

	Info_AddChoice	(Info_Mod_Andokai_Infos, "Opowiedz mi o Beliarze.", Info_Mod_Andokai_Infos_C);
	Info_AddChoice	(Info_Mod_Andokai_Infos, "Powiedz mi o twierdzy.", Info_Mod_Andokai_Infos_B);
	Info_AddChoice	(Info_Mod_Andokai_Infos, "Powiedz mi o czarnych magach.", Info_Mod_Andokai_Infos_A);
};

FUNC VOID Info_Mod_Andokai_Infos_BACK()
{
	Info_ClearChoices	(Info_Mod_Andokai_Infos);
};

FUNC VOID Info_Mod_Andokai_Infos_C()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Infos_C_15_00"); //Opowiedz mi o Beliarze.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_C_12_01"); //Beliar jest bogiem chaosu i w wiecznej wojnie z Innosem, bogiem gontów porzeczkowych.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_C_12_02"); //Beliar pobudza bezgraniczne myslenie i nie wierzy w zwapnione tradycje, które sa lekcewazone bez znaczenia i rozumu.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_C_12_03"); //Jego zwolennikami sa wiec przewaznie wolne duchy i odwazni ludzie, którzy nie podlegaja zadnym prawom.

	Info_ClearChoices	(Info_Mod_Andokai_Infos);
};

FUNC VOID Info_Mod_Andokai_Infos_B()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Infos_B_15_00"); //Powiedz mi o twierdzy.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_B_12_01"); //Twierdza oferowala partyzantom ochrone w walce z orkami.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_B_12_02"); //Po zakonczeniu wojny miejscowy przywódca zostal uszlachetniony i pozwolono mu je zatrzymac.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_B_12_03"); //Kiedy ja znalezlismy, zamieszkiwaly ja tylko dwie starsze osoby, spadajacy potomek przywódcy i jego slugi.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_B_12_04"); //Byly zbyt slabe, by od nas uciec. Wiec weszlismy w posiadanie twierdzy.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_B_12_05"); //Od tego czasu minely lata. Ale ten mur nie ujawnil jeszcze wszystkich tajemnic.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_B_12_06"); //W koncu oferuje wszystko, czego potrzebujemy w nadmiarze.

	Info_ClearChoices	(Info_Mod_Andokai_Infos);
};

FUNC VOID Info_Mod_Andokai_Infos_A()
{
	AI_Output(hero, self, "Info_Mod_Andokai_Infos_A_15_00"); //Powiedz mi o czarnych magach.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_01"); //Jest nas wielu, ale zazwyczaj pozostajemy w ukryciu.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_02"); //Znajdziesz nas w wysokich biurach i jako bezwinnych obywateli, bedziesz mógl przeszukiwac nasze domy i nie zauwazysz zadnych naszych uczuc.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_03"); //Nauczylismy sie zyc niezauwazalnie. Na przyklad zostalem wrzucony do bariery tylko dlatego, ze przylaczylem sie do protestu robotników.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_04"); //To co poczatkowo wydawalo mi sie jak ciezki cios losu okazalo sie najwiekszym szczesciem mojego zycia.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_05"); //Wraz z innymi towarzyszami znalazlem te stara twierdze, w której moglismy po raz pierwszy otwarcie zyc nasza wiara.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_06"); //Z powodu upadku bariery sprawy nie pozostaly tak ciche.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_07"); //Xardas przywiózl z Starego Obozu jakies zagubione dusze, których umysly mozna bylo formowac wedlug naszych wyobrazen, po tym jak pamiec o nich zostala wymazana.
	AI_Output(self, hero, "Info_Mod_Andokai_Infos_A_12_08"); //W rezultacie w miedzyczasie przeksztalcilismy sie w przystojny oddzial.

	Info_ClearChoices	(Info_Mod_Andokai_Infos);
};

INSTANCE Info_Mod_Andokai_WoKloster (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_WoKloster_Condition;
	information	= Info_Mod_Andokai_WoKloster_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie moge znalezc klasztor?";
};

FUNC INT Info_Mod_Andokai_WoKloster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Andokai_WoKloster_Info()
{
	AI_Output(hero, self, "Info_Mod_Andokai_WoKloster_15_00"); //Gdzie moge znalezc klasztor?
	AI_Output(self, hero, "Info_Mod_Andokai_WoKloster_12_01"); //Udaj sie do Khorinis. Z pólnocnej bramy miejskiej kierujemy sie w strone Tavern Zur toten Harpie. Stamtad sciezka prowadzi bezposrednio do klasztoru.
	AI_Output(self, hero, "Info_Mod_Andokai_WoKloster_12_02"); //Byc moze w Khorinis znajdziesz glupca, który cie tam zabierze.
};

instance Info_Mod_Andokai_Runen	(C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Runen_Condition;
	information	= Info_Mod_Andokai_Runen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie (tworzac runy)";
};

func int Info_Mod_Andokai_Runen_Condition ()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14))
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_MAGE) >= 1)
	{
		return 1;
	};
};

func void Info_Mod_Andokai_Runen_Info ()
{
	var int abletolearn;
	abletolearn = 0;
	AI_Output (other, self, "Info_Mod_Andokai_Runen_15_00"); //Naucz mnie.
	
	Info_ClearChoices 	(Info_Mod_Andokai_Runen);
	Info_AddChoice		(Info_Mod_Andokai_Runen, DIALOG_BACK, Info_Mod_Andokai_Runen_BACK);
	
	if (Npc_GetTalentSkill(hero, NPC_TALENT_MAGE) >= 6)
	{
		if (PLAYER_TALENT_RUNES [SPL_Skull] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_Skull, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Skull)), Info_Mod_Andokai_Runen_Skull);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_ArmyOfDarkness] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_ArmyOfDarkness, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_ArmyOfDarkness)) ,Info_Mod_Andokai_Runen_ArmyOfDarkness);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 5)
	{
		if (PLAYER_TALENT_RUNES [SPL_SummonDemon] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonDemon, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonDemon)), Info_Mod_Andokai_Runen_SummonDemon);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_BreathOfDeath] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_BreathOfDeath, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_BreathOfDeath)) ,Info_Mod_Andokai_Runen_BreathOfDeath);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_FullHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_FullHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_FullHeal)), Info_Mod_Andokai_Runen_FullHeal);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 4)
	{
		if (PLAYER_TALENT_RUNES [SPL_SummonZombie] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonZombie, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonZombie)), Info_Mod_Andokai_Runen_SummonZombie);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_SummonGolem] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonGolem, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonGolem)), Info_Mod_Andokai_Runen_SummonGolem);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_DestroyUndead] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_DestroyUndead, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_DestroyUndead)), Info_Mod_Andokai_Runen_DestroyUndead);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 3)
	{
		if (PLAYER_TALENT_RUNES [SPL_SummonSkeleton] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonSkeleton, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonSkeleton)), Info_Mod_Andokai_Runen_SummonSkeleton);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_MediumHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_MediumHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_MediumHeal)), Info_Mod_Andokai_Runen_MediumHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_SummonGuardian] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonGuardian, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonGuardian)), Info_Mod_Andokai_Runen_SummonGuardian);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_EnergyBall] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_BeliarsRage, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_EnergyBall)), Info_Mod_Andokai_Runen_BeliarsRage);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 2)
	{
		if (PLAYER_TALENT_RUNES [SPL_SummonGoblinSkeleton] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonGoblinSkeleton, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonGoblinSkeleton)), Info_Mod_Andokai_Runen_SummonGoblinSkeleton);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 1)
	{
		if (PLAYER_TALENT_RUNES [SPL_Light] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_Light, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Light)), Info_Mod_Andokai_Runen_Light);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_LightHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_LightHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_LightHeal)), Info_Mod_Andokai_Runen_LightHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_SummonWolf] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SummonWolf, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SummonWolf)), Info_Mod_Andokai_Runen_SummonWolf);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_SuckEnergy] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Andokai_Runen, B_BuildLearnString (NAME_SPL_SuckEnergy, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_SuckEnergy)), Info_Mod_Andokai_Runen_SuckEnergy);
			abletolearn = (abletolearn +1);
		};
	};

	if (abletolearn < 1)
	{
		AI_Output (self, other, "Info_Mod_Andokai_Runen_12_01"); //Nic wiecej nie moge cie nauczyc.
	};
};

FUNC VOID Info_Mod_Andokai_Runen_BACK()
{
	Info_ClearChoices 	(Info_Mod_Andokai_Runen);
};

FUNC VOID Info_Mod_Andokai_Runen_Light()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Light);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_Light) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_Light, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_LightHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_LightHeal);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_LightHeal) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_LightHeal, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonWolf()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonWolf);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SumWolf) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SumWolf, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SuckEnergy()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SuckEnergy);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SuckEnergy) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SuckEnergy, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_Zerfleischen()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Zerfleischen);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_Zerfleischen) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_Zerfleischen, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonGoblinSkeleton()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonGoblinSkeleton);
	
	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SumGobSkel) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SumGobSkel, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonGuardian()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonGuardian);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SummonGuardian) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SummonGuardian, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonZombie()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonZombie);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SummonZombie) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SummonZombie, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonGolem()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonGolem);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SumGol) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SumGol, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_DestroyUndead()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_DestroyUndead);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_HarmUndead) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_HarmUndead, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_BeliarsRage()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_EnergyBall);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_BeliarsRage) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_BeliarsRage, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_MediumHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_MediumHeal);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_MediumHeal) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_MediumHeal, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonSkeleton()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonSkeleton);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SumSkel) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SumSkel, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_SummonDemon()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonDemon);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_SumDemon) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_SumDemon, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_BreathOfDeath()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_BreathOfDeath);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_BreathOfDeath) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_BreathOfDeath, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_Skull()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Skull);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_Skull) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_Skull, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_FullHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_FullHeal);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_FullHeal) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_FullHeal, 1);
	};
};

FUNC VOID Info_Mod_Andokai_Runen_ArmyOfDarkness()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_ArmyOfDarkness);

	if (Npc_HasItems(Mod_515_KDS_Myxir_MT, ItSc_ArmyOfDarkness) == 0)
	{
		CreateInvItems	(Mod_515_KDS_Myxir_MT, ItSc_ArmyOfDarkness, 1);
	};
};

INSTANCE Info_Mod_Andokai_Pickpocket (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_Pickpocket_Condition;
	information	= Info_Mod_Andokai_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Andokai_Pickpocket_Condition()
{
	C_Beklauen	(170, ItMi_Gold, 100);
};

FUNC VOID Info_Mod_Andokai_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);

	Info_AddChoice	(Info_Mod_Andokai_Pickpocket, DIALOG_BACK, Info_Mod_Andokai_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Andokai_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Andokai_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Andokai_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);
};

FUNC VOID Info_Mod_Andokai_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);

		Info_AddChoice	(Info_Mod_Andokai_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Andokai_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Andokai_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Andokai_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Andokai_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Andokai_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Andokai_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Andokai_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Andokai_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Andokai_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Andokai_EXIT (C_INFO)
{
	npc		= Mod_473_DMB_Andokai_MT;
	nr		= 1;
	condition	= Info_Mod_Andokai_EXIT_Condition;
	information	= Info_Mod_Andokai_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Andokai_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Andokai_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
