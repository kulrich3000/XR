INSTANCE Info_Mod_Velario_Hi (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_Hi_Condition;
	information	= Info_Mod_Velario_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Velario_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Velario_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Velario_Hi_06_01"); //Jestem Velario.
};

INSTANCE Info_Mod_Velario_MangelQuest (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_MangelQuest_Condition;
	information	= Info_Mod_Velario_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co ty studiujesz, bracie?";
};

FUNC INT Info_Mod_Velario_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest_15_00"); //Co ty studiujesz, bracie?
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_01"); //Hmm, huh? Przepraszam, tylko do pism swietych.
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest_15_02"); //Nad czym pracujesz?
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_03"); //Cóz, szukam nowych sposobów walki magicznej.
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_04"); //Oblezenie to wymaga od nas wszystkiego i musze zrobic wszystko, co w mojej mocy, aby uzyskac przewage w bitwie.
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest_15_05"); //Jak to sie dzieje?
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_06"); //Szczerze mówiac.... nieszczesliwy. Przeczytalem tu kazda z tych ksiazek, ale nie ma nic wartego wzmianki.
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_07"); //Potrzebowalbym po prostu wiecej pism do studiów, bo w przeciwnym razie mam powazne watpliwosci, czy kiedykolwiek poczynie jakiekolwiek postepy.

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Velario rozpaczliwie szuka pism o magicznej walce, aby lepiej oprzec sie oblezeniu.");
};

INSTANCE Info_Mod_Velario_MangelQuest2 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_MangelQuest2_Condition;
	information	= Info_Mod_Velario_MangelQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mysle, ze moze byc pan tym zainteresowany.";
};

FUNC INT Info_Mod_Velario_MangelQuest2_Condition()
{
	B_StopMangel();
	
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_MangelQuest))
	&& (Npc_HasItems(hero, ItWr_ZombieToHuman) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_MangelQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest2_15_00"); //Mysle, ze moze byc pan tym zainteresowany.

	B_GiveInvItems	(hero, self, ItWr_ZombieToHuman, 1);

	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_01"); //Pozwólcie, ze zobacze.

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_02"); //Co.....? W Innosie, gdzie dostales te prace i w jakich okolicznosciach ja otrzymales?
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest2_15_03"); //Pochodzi z starozytnej swiatyni i okolicznosci..... Powiedzmy, ze bylam blizej smierci niz o nia dbalam.
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_04"); //Najpierw musze to dokladnie zbadac. Mysle, ze pomogloby mi to zdobyc kluczowa wiedze.....
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_05"); //Ale poczekaj, przejmij te role jako podziekowania.

	B_ShowGivenThings	("Pozarny deszcz z rolka i 2 buleczki gasnicze odbieraja rolki.");

	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_06"); //Relatywnie skromny prezent, jesli ksiazka na pierwszy rzut oka zachowa to, co wydaje sie obiecywac.

	CreateInvItems	(hero, ItSc_Firerain, 1);
	CreateInvItems	(hero, ItSc_Pyrokinesis, 2);

	B_GivePlayerXP	(500);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Velario byl bardzo zadowolony z ksiazki.");

	Mod_PAT_VelarioDay = Wld_GetDay();
};

INSTANCE Info_Mod_Velario_AurenUndKristalle (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Velario_AurenUndKristalle_Condition()
{
	if (Mod_PAT_Velario == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle_Info()
{
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_00"); //Tak, wreszcie przelom!
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_01"); //Co sie dowiedziales/as?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_02"); //Im Buch waren zahlreiche Ausführungen über so genannte "zaklecie aury" festgehalten.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_03"); //Studiujac razem z jednym z magów demonów, udalo mi sie stworzyc zaklecia, które trzymaja te moc.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_04"); //Jakie sa mozliwosci tych czarów?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_05"); //Jesli wszystko dziala zgodnie z planem, zaleca sie, aby podczas uzywania tego zaklecia zachowac stale obrazenia plomienia dla wszystkich w srodowisku przez dluzszy okres czasu.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_06"); //Moglo to wymazac dziesiatki wrogów za jednym zamachem.....
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_07"); //Brzmi to dla mnie wspaniale. To, czego potrzebujemy.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_08"); //Tak..... tylko..... jest problem.....
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_09"); //Tak, co?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_10"); //Jak juz powiedzialem, wszyscy w tym regionie sa z tego powodu poszkodowani...... wlacznie z magikiem, który sam uzywa roli zaklecia.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_11"); //To oczywiscie mniej dobre....
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_12"); //Ponadto rola ta dotyka jedynie wrogów w bezposrednim sasiedztwie.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_13"); //Innymi slowy, jesli ktos chcialby uzywac powiedzianej roli z jak najwiekszym efektem, musialby sam isc przed brama posród rojów wrogów.
};

INSTANCE Info_Mod_Velario_AurenUndKristalle2 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle2_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wielokrotnie przejezdzalem przez pierscien oblezenia....";
};

FUNC INT Info_Mod_Velario_AurenUndKristalle2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle2_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_00"); //Wielokrotnie przejezdzalem przez pierscien oblezenia....
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_01"); //Czy dobrze rozumiem, ze zgodzilby sie Pan na uzycie roli powiedzenia?
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_02"); //No cóz, to nie bylby pierwszy raz, gdybym kiedykolwiek postawil stope w osa w gniezdzie....
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_03"); //Fantastyczne. Ale jest cos, co niszczy magie i ogien.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_04"); //Tak, czy jest cos, co moze mi pomóc sie temu przeciwstawic?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_05"); //Mozliwe, ze.... Ksiazka dawala równiez wskazówki.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_06"); //Wydaje sie mozliwe magiczne oddzialywanie na krysztalki w taki sposób, ze pochlaniaja one zywioly i magiczne energie.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_07"); //Taki krysztal moze byc w stanie ochronic Cie przed wieloma uszkodzeniami.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_08"); //Wymagaloby to jednak pewnych materialów, których tutaj nie mam.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_09"); //Czego potrzebowalbys do tego?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_10"); //Cóz, przede wszystkim krysztalki. A jesli dobrze pamietam, w poblizu znajduje sie jaskinia, gdzie jest ich zbyt wiele.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_11"); //Gdybys mógl mnie przywiezc moze 20 krysztalów skalnych i 10 krysztalów krysztalu gasienicy, móglbym zaczac nad nimi prace.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_12"); //Aby wydobyc krysztaly z gasienic, nalezy spróbowac je zebrac kutymi szczypcami i zlamac. To powinno dzialac.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_13"); //Dobrze, ze jestem w drodze.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_14"); //Dobre. Innos zapewnia Ci bezpieczenstwo.

	Log_CreateTopic	(TOPIC_MOD_FM_AURENUNDKRISTALLE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_AURENUNDKRISTALLE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_AURENUNDKRISTALLE, "Velario rozwinelo kilka poteznych ról pisowni aury, ale niszcza one równiez uzytkownika. Aby mnie przed tym uchronic, moze to magicznie wplynac na krysztalki pochlaniajace ogien i magiczne obrazenia. W tym celu przywioze mu 20 krysztalów skalnych z jaskini krysztalowej, a takze 10 krysztalów z gasienic, do których potrzebne sa kucie kleszczy.");

	Log_CreateTopic (TOPIC_TalentAnimalTrophy, LOG_NOTE);
	B_LogEntry_NS (TOPIC_TalentAnimalTrophy, "... krysztalki gasienic.");

	B_StartOtherRoutine	(self, "START");
	
	Wld_InsertNpc	(Kristallminecrawler, "FP_ROAM_CRAWLER_07");
	Wld_InsertNpc	(Kristallminecrawler, "FP_ROAM_CRAWLER_06");
	Wld_InsertNpc	(Kristallminecrawler, "FP_ROAM_CRAWLER_04");
	Wld_InsertNpc	(Kristallminecrawler, "FP_ROAM_CRAWLER_02");
	Wld_InsertNpc	(Kristallminecrawler, "FP_ROAM_CRAWLER_09");
};

INSTANCE Info_Mod_Velario_AurenUndKristalle3 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle3_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem krysztaly.";
};

FUNC INT Info_Mod_Velario_AurenUndKristalle3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle2))
	&& (Npc_HasItems(hero, ItAt_CrawlerKristall) >= 10)
	&& (Npc_HasItems(hero, ItMi_RockCrystal) >= 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle3_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle3_15_00"); //Dostalem krysztaly.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle3_06_01"); //Doskonaly. Piekne okazy. Jestem ciekawy, co mozna z tego zrobic.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle3_06_02"); //Najlepiej sprawdzac sie co kilka dni. Kiedy dokonam postepu, natychmiast poinformuje Cie o tym.

	B_LogEntry	(TOPIC_MOD_FM_AURENUNDKRISTALLE, "Velario posiada krysztaly i ma prawo do pracy. Za kilka dni powinienem wrócic na jego miejsce.");

	Mod_PAT_VelarioDay = Wld_GetDay();

	B_StartOtherRoutine	(self, "RUNEMAKER");
};

INSTANCE Info_Mod_Velario_AurenUndKristalle4 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle4_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Velario_AurenUndKristalle4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle3))
	&& (Wld_GetDay()-1 > Mod_PAT_VelarioDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle4_Info()
{
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_00"); //To sie udalo! Bylem w stanie przeksztalcic ten krysztal w magiczne narzedzie.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_01"); //Jesli niesc go razem z toba, powinien on zapewnic Ci wszechstronna ochrone przed magia i ogniem, która dazy do tego samego stopnia.

	B_GiveInvItems	(self, hero, ItMi_KristallPrisma, 1);

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_02"); //Tutaj teraz powinienes byc w stanie uzywac tych powiedzen aury bez wiekszego zagrozenia dla twojego zycia.

	B_GiveInvItems	(self, hero, ItSc_AuraFlammen, 2);

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_03"); //Wez równiez ten eliksir szybkosci i role transformacji.

	CreateInvItems	(hero, ItSc_TrfSnapper, 1);
	CreateInvItems	(hero, ItPo_Speed, 1);

	B_ShowGivenThings	("Picie pic predkosc i mówic role 'przerabiac snapper' dostac uzyskac");

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_04"); //Moga byc dla ciebie uzyteczne w przekazywaniu rangi wrogów.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle4_15_05"); //Imponujace naczynia magii. Doceniam to.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_06"); //A teraz..... Niech plomien Innosa zainspiruje Cie, gdy ogrzewasz te przeklete czarownice!

	B_SetTopicStatus	(TOPIC_MOD_FM_AURENUNDKRISTALLE, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Velario_AurenUndKristalle5 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle5_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Uzywalem przewijania.";
};

FUNC INT Info_Mod_Velario_AurenUndKristalle5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle4))
	&& (Mod_AuraFlammen_Used == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle5_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle5_15_00"); //Uzywalem przewijania.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle5_06_01"); //Jak to sie stalo?
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle5_15_02"); //Spelniles wszystkie oczekiwania.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle5_06_03"); //(propleased) Doskonaly! Zapewni to nowy impuls do badan nad magia.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle5_06_04"); //Tutaj wybierz przepis na bulki z zakleciami i napoje mana.

	CreateInvItems	(hero, ItWr_Scroll_AuraFlammen, 1);
	CreateInvItems	(hero, ItPo_Mana_Addon_04, 3);

	B_ShowGivenThings	("Wzór dla 'Aury plomieni' i 3 Czystaana Mana otrzymana");

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle5_06_05"); //Innos jest z toba.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Velario_AurenUndKristalle6 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle6_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Krysztal sie zmienil.";
};

FUNC INT Info_Mod_Velario_AurenUndKristalle6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle4))
	&& (Npc_HasItems(hero, ItRu_KristallPrisma) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle6_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle6_15_00"); //Krysztal sie zmienil.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_01"); //Co? Pozwólcie, ze zobacze.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_02"); //.... to niemozliwe.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle6_15_03"); //Co sie stalo?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_04"); //Przez wielokrotny kontakt z ogniem i magia swieci efektem... do przejecia. Teraz moze byc uzywany jak runa.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_05"); //Niewiarygodna rzecza jest to, ze nie czerpie swojej mocy z zadnego boga. To jest tak fascynujace.... a takze przerazajace.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle6_15_06"); //Dlaczego?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_07"); //Czy nie rozumiesz? Jak dotad tylko bogowie, czyli boskie istoty, byli w stanie umozliwic ludziom dzialanie magii.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_08"); //Jednakze wyniki tych badan sa obecnie sprzeczne z tym prawem. Moze to oznaczac rewolucje w calym naszym rozumieniu magii.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_09"); //Z drugiej strony jednak....
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle6_15_10"); //Tak?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_11"); //... z drugiej strony, kwestionuje jednoczesnie magiczny monopol trzech kosciolów.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_12"); //(ostatnio) Nie sadze, aby nasze wyniki badan zostaly szczególnie docenione przez wysokich magów rad.... zwlaszcza w obecnym konflikcie z Xeresem.

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_13"); //Dlatego lepiej byloby, gdybysmy na razie trzymali nasze ustalenia pod kontrola i kluczem.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_14"); //Kosciól nie jest jeszcze tak daleki od siebie i z nienawiscia obserwuje, ze nasze odkrycia sa ofiara.... Dobrze, mysle, ze rozumie pan sytuacje.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_15"); //(nieco smutny) To.... jest to najbardziej sensowne.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_16"); //A teraz..... Niech plomien Innosa zainspiruje Cie, gdy ogrzewasz te przeklete czarownice!

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Velario_Fake (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_Fake_Condition;
	information	= Info_Mod_Velario_Fake_Info;
	permanent	= 0;
	important	= 0;
	description	= "Widziales cos podejrzanego?";
};

FUNC INT Info_Mod_Velario_Fake_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faros_Fake))
	&& (Npc_KnowsInfo(hero, Info_Mod_Velario_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_Fake_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_Fake_15_00"); //Widziales cos podejrzanego?
	AI_Output(self, hero, "Info_Mod_Velario_Fake_06_01"); //Nie, nie sadze, ze tak nie jest.
	AI_Output(hero, self, "Info_Mod_Velario_Fake_15_02"); //Czy jestes pewien tego? Czyz magik nie przyjechal po czarodzieja, który sie spieszyl?
	AI_Output(self, hero, "Info_Mod_Velario_Fake_06_03"); //Tam ktos tam byl. Mysle, ze udawal sie do kopalni.

	B_LogEntry	(TOPIC_MOD_FM_SM, "Velario uwaza, ze mag uciekl do kopalni.");
};

INSTANCE Info_Mod_Velario_EXIT (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_EXIT_Condition;
	information	= Info_Mod_Velario_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Velario_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Velario_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
