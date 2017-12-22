INSTANCE Info_Mod_Torgan_Hi (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Hi_Condition;
	information	= Info_Mod_Torgan_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torgan_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Hi_23_00"); //Trzymaj go, trzymaj w reku i trzymaj. Co Pan tutaj robi?
};

INSTANCE Info_Mod_Torgan_Dragomir (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Dragomir_Condition;
	information	= Info_Mod_Torgan_Dragomir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem z Dragomiru.";
};

FUNC INT Info_Mod_Torgan_Dragomir_Condition()
{
	if (Mod_Drago == 4)
	&& (Npc_KnowsInfo(hero, Info_Mod_Torgan_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Dragomir_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Dragomir_15_00"); //Jestem z Dragomiru.
	AI_Output(self, hero, "Info_Mod_Torgan_Dragomir_23_01"); //Z Dragomiru? Powiedz mi, jaka jest sytuacja w Khorinis?
	AI_Output(hero, self, "Info_Mod_Torgan_Dragomir_15_02"); //On wyglada zle. Jego obóz zostal kilka nocy temu zaatakowany przez czarnych magów i bandytów.
	AI_Output(hero, self, "Info_Mod_Torgan_Dragomir_15_03"); //Teraz zbudowal nowy obóz w poblizu starej kopalni w ciemnym lesie.
	AI_Output(self, hero, "Info_Mod_Torgan_Dragomir_23_04"); //To nie brzmi dobrze. Dziekuje za te wazne informacje. Omówimy ten incydent.
	AI_Output(self, hero, "Info_Mod_Torgan_Dragomir_23_05"); //W miedzyczasie mam dla pana prace. Interesuje Cie?

	Log_CreateTopic	(TOPIC_MOD_JG_EREMITENCAMP, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_EREMITENCAMP, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_JG_LAGER, TOPIC_MOD_JG_EREMITENCAMP, "Opowiedzialem Torganowi o wydarzeniach w Khorinis. Omówia zdarzenie.", "Nie moge pojechac do obozu druidów. Bede musial spróbowac znalezc dostep.");
	B_SetTopicStatus	(TOPIC_MOD_JG_LAGER, LOG_SUCCESS);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Torgan_Zwischenzeit (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Zwischenzeit_Condition;
	information	= Info_Mod_Torgan_Zwischenzeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Uslyszmy to.";
};

FUNC INT Info_Mod_Torgan_Zwischenzeit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Dragomir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Zwischenzeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Zwischenzeit_15_00"); //Uslyszmy to.
	AI_Output(self, hero, "Info_Mod_Torgan_Zwischenzeit_23_01"); //Od dawna nie slyszalem od naszych harcerzy w Minentalu. Sprawdz je i sprawdz, czy maja nowe informacje.

	Info_ClearChoices	(Info_Mod_Torgan_Zwischenzeit);

	Info_AddChoice	(Info_Mod_Torgan_Zwischenzeit, "Wszystkie sluszne, wszystkie sluszne.", Info_Mod_Torgan_Zwischenzeit_B);
	Info_AddChoice	(Info_Mod_Torgan_Zwischenzeit, "Cóz wlasciwie, co mam za to dostac?", Info_Mod_Torgan_Zwischenzeit_A);
};

FUNC VOID Info_Mod_Torgan_Zwischenzeit_B()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Zwischenzeit_B_15_00"); //Wszystkie sluszne, wszystkie sluszne.
	AI_Output(self, hero, "Info_Mod_Torgan_Zwischenzeit_B_23_01"); //Cóz, obóz harcerzy znajduje sie w samym srodku doliny na sciezce prowadzacej z dawnego obozu do nowego obozu.
	AI_Output(self, hero, "Info_Mod_Torgan_Zwischenzeit_B_23_02"); //Mozesz ja teleportowac do mnie z nia.

	B_GiveInvItems	(self, hero, ItSc_TeleportTorgan, 1);

	Log_CreateTopic	(TOPIC_MOD_JG_TORGANSINFOS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_TORGANSINFOS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_TORGANSINFOS, "Torgan chcialby, abym poprosil o nowe informacje harcerzy, którzy maja swój obóz w srodku Doliny Kopalni niedaleko sciezki od starego obozu do nowego obozu.");

	Wld_InsertNpc	(Mod_1966_GRD_Gardist_MT, "OC1");
	B_KillNpc	(Mod_1966_GRD_Gardist_MT);
	B_KillNpc	(Mod_1964_JG_Jaeger_MT);
	B_KillNpc	(Mod_1965_JG_Jaeger_MT);

	Mod_Drago = 5;

	Info_ClearChoices	(Info_Mod_Torgan_Zwischenzeit);
};

FUNC VOID Info_Mod_Torgan_Zwischenzeit_A()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Zwischenzeit_A_15_00"); //Cóz wlasciwie, co mam za to dostac?
	AI_Output(self, hero, "Info_Mod_Torgan_Zwischenzeit_A_23_01"); //Dziekujemy jako Ranger.
	AI_Output(hero, self, "Info_Mod_Torgan_Zwischenzeit_A_15_02"); //Och, wielki.

	Info_ClearChoices	(Info_Mod_Torgan_Zwischenzeit);

	Info_AddChoice	(Info_Mod_Torgan_Zwischenzeit, "Wszystkie sluszne, wszystkie sluszne.", Info_Mod_Torgan_Zwischenzeit_B);
};

INSTANCE Info_Mod_Torgan_SpaeherTot (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_SpaeherTot_Condition;
	information	= Info_Mod_Torgan_SpaeherTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem je.";
};

FUNC INT Info_Mod_Torgan_SpaeherTot_Condition()
{
	if (Mod_Drago == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_SpaeherTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_SpaeherTot_15_00"); //Znalazlem je.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_23_01"); //A co oni mówili?

	Info_ClearChoices	(Info_Mod_Torgan_SpaeherTot);

	Info_AddChoice	(Info_Mod_Torgan_SpaeherTot, "Oni nie zyja. Ale znalazlem cialo straznika (....). )", Info_Mod_Torgan_SpaeherTot_B);
	Info_AddChoice	(Info_Mod_Torgan_SpaeherTot, "Oni byli tak niemy jak trup.", Info_Mod_Torgan_SpaeherTot_A);
};

FUNC VOID Info_Mod_Torgan_SpaeherTot_C()
{
	AI_Output(hero, self, "Info_Mod_Torgan_SpaeherTot_C_15_00"); //Tak.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_C_23_01"); //Nie moge w to uwierzyc. Do tej pory zawsze zylismy w pokoju z straznikami.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_C_23_02"); //Nie rozumiem, dlaczego maja atakowac naszych harcerzy. Musze to natychmiast przekazac.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_C_23_03"); //Nie moze byc przypadkiem, ze wszystko dzieje sie niemal w tym samym czasie. Musi byc jej wiecej.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_C_23_04"); //Tutaj wez to jako nagrode za swoje wysilki.

	CreateInvItems	(self, ItWr_Bauplan_Wolfsring_Leben, 1);
	B_GiveInvItems	(self, hero, ItWr_Bauplan_Wolfsring_Leben, 1);

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_JG_TORGANSINFOS, "Opowiedzialem Torganowi o martwych harcerzach. Wydawal sie bardzo zaniepokojony.");
	B_SetTopicStatus	(TOPIC_MOD_JG_TORGANSINFOS, LOG_SUCCESS);

	B_Göttergefallen(2, 1);
};

FUNC VOID Info_Mod_Torgan_SpaeherTot_B()
{
	AI_Output(hero, self, "Info_Mod_Torgan_SpaeherTot_B_15_00"); //Oni nie zyja. Ale widzialem z nimi cialo straznika.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_B_23_01"); //Co mówisz? Oni umarli? ... gwardierem, mówisz?

	Info_ClearChoices	(Info_Mod_Torgan_SpaeherTot);

	Info_Mod_Torgan_SpaeherTot_C();
};

FUNC VOID Info_Mod_Torgan_SpaeherTot_A()
{
	AI_Output(hero, self, "Info_Mod_Torgan_SpaeherTot_A_15_00"); //Oni byli tak niemy jak trup.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_A_23_01"); //Co powiedziales? Tych, którzy nie sa dobrymi draniemi..... palenie na bagnach przez caly dzien lub przyjmowanie tego nowego leku. Te niewiarygodne i niewiarygodne.....
	AI_Output(hero, self, "Info_Mod_Torgan_SpaeherTot_A_15_02"); //Hej, daj mi przerwe. Oni umarli i nie zamgleni! Obok nich znalazlem cialo straznika.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_A_23_03"); //Dlaczego po prostu nie mówisz cos takiego, niech to damn? Oni umarli? I straznik tez ma byc martwy?

	Info_ClearChoices	(Info_Mod_Torgan_SpaeherTot);

	Info_Mod_Torgan_SpaeherTot_C();
};

INSTANCE Info_Mod_Torgan_GardistenZettel (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_GardistenZettel_Condition;
	information	= Info_Mod_Torgan_GardistenZettel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_GardistenZettel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (Npc_HasItems(hero, ItWr_MagicPaper) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_GardistenZettel_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_00"); //Czy byles jeszcze w innych obozach?
	AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_01"); //Tak.
	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_02"); //Czy znalazles cos nowego?

	if (Npc_KnowsInfo(hero, Info_Mod_Torwache_Sekte_01_GardistenInfos))
	{
		AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_03"); //Na obozie kultowym nie wydarzylo sie nic niezwyklego.
		AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_04"); //To nalezalo sie spodziewac. Zawsze poswiecaja troche czasu, aby sie do tego przyzwyczaic.

		B_GivePlayerXP	(500);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torwache_AL_01_Halt))
	{
		AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_05"); //Na Starym Obozie nie moglem znalezc niczego wiecej.
		AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_06"); //Nic? Hm. Musimy dowiedziec sie, czy naprawde nie maja z tym nic wspólnego, czy po prostu udaja. Chodzi o zaufanie.

		B_GivePlayerXP	(500);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torwache_NL_01_GardistenInfos))
	{
		AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_07"); //Straznik Nowego Obozu zostal zwolniony przez nieznanych.
		AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_08"); //Nowy obóz zostal wlasnie zastrzelony? Czy wiesz o tym wiecej?

		if (Npc_KnowsInfo(hero, Info_Mod_Nodrak_BierInfos))
		{
			AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_09"); //Bandyci i straznicy sa podejrzewani o popelnienie tchórzliwego ataku.
			AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_10"); //Jest to watpliwe. Musimy reagowac szybko i przede wszystkim nie pozwolic, aby ten blad rozrastal sie.

			if (Npc_KnowsInfo(hero, Info_Mod_Hecta_Hi))
			{
				AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_11"); //Mysle, ze wlozylem te dwie strzelanki.
				AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_12"); //To przynajmniej dobra wiadomosc. Ulatwi nam to utrzymanie naszej pozycji.
			};
		}
		else
		{
			AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_13"); //Niestety nie.
		};

		B_GivePlayerXP	(500);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_GardistenInfos))
	{
		AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_14"); //Na obozie bandytów pojawilo sie kilku strazników, ale zostali przez nich zabici.
		AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_15"); //To poteguje moje podejrzenie, ze nie moga byc straznikami. Zaden z nich po prostu nie wedrowal w poblizu bandytów.


		B_GivePlayerXP	(500);
	};

	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_16"); //Pomimo tych wszystkich informacji, to nie wystarczy. Potrzebujemy czegos solidnego, aby uzyskac wskazówki!
	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_17"); //Cala sytuacja jest nadal zbyt nieprzejrzysta, aby mozna bylo przyjac konkretne zalozenia.
	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_18"); //Czy jest jeszcze cos innego, co mogloby dac nam wskazówke, kto to zrobil?

	if (Npc_HasItems(hero, ItWr_MagicPaper) == 1)
	{
		if (Mod_SanchoHatZettel == 2)
		{
			AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_19"); //Tak, tutaj dostalem te notatke od bandytów. Pochodzil od jednego z zabitych strazników.
		}
		else
		{
			AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_20"); //Tak, tutaj znalazlem te uwage. Pochodzi on od strazników, którzy napadli na Nowy Obóz.
		};
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_21"); //Tak, znalazlem te dwie notatki.
		AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_22"); //Jeden pochodzi od strazników, którzy zaatakowali Nowy Obóz, drugi od bandytów. Znalezli go u jednego z zabitych strazników.
	};

	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_23"); //Cudowny, czy moge go zobaczyc?

	B_GiveInvItems	(hero, self, ItWr_MagicPaper, 1);
	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_24"); //Ta nuta ma wyraznie magiczny charakter. Prosze zabrac ja z powrotem i przywiezc do druidu Cyrco.
	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_23_25"); //Zadania, które zostaly Ci powierzone, wykonales z wielkim sukcesem. Od tej pory dostaniecie sie Panstwo do naszego obozu, jak pokazaliscie nam swoja wiare w nas. Prosze wejsc.

	B_GiveInvItems	(self, hero, ItWr_MagicPaper, 1);

	B_LogEntry_More	(TOPIC_MOD_JG_GARDISTEN, TOPIC_MOD_JG_EREMITENCAMP, "Opowiedzialem Torganowi o wydarzeniach. Jest bardzo zadowolony z tych informacji i wreszcie pozwolono mi wejsc do obozu.", "Dzieki moim zaslugom jestem teraz w obozie Druidów.");

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_JG_EREMITENCAMP, LOG_SUCCESS);

	B_Göttergefallen(2, 2);
};

INSTANCE Info_Mod_Torgan_InsLager (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_InsLager_Condition;
	information	= Info_Mod_Torgan_InsLager_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy moge teraz isc do obozu?";
};

FUNC INT Info_Mod_Torgan_InsLager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_SpaeherTot))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_InsLager_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_InsLager_15_00"); //Czy moge teraz isc do obozu?
	AI_Output(self, hero, "Info_Mod_Torgan_InsLager_23_01"); //Nie, jeszcze nie.
};

INSTANCE Info_Mod_Torgan_SomethingInteresting (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_SomethingInteresting_Condition;
	information	= Info_Mod_Torgan_SomethingInteresting_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy cos sie stalo?";
};

FUNC INT Info_Mod_Torgan_SomethingInteresting_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_SpaeherTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_SomethingInteresting_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_SomethingInteresting_15_00"); //Czy cos sie stalo?
	AI_Output(self, hero, "Info_Mod_Torgan_SomethingInteresting_23_01"); //Pierwszy Dragomir i teraz nasi harcerze. Nie przynosisz pozytywnych wiadomosci, to dla mnie wystarczy!
};

INSTANCE Info_Mod_Torgan_NochEinAuftrag (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_NochEinAuftrag_Condition;
	information	= Info_Mod_Torgan_NochEinAuftrag_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jest jeszcze cos, co moge dla Ciebie zrobic?";
};

FUNC INT Info_Mod_Torgan_NochEinAuftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_SomethingInteresting))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_NochEinAuftrag_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_NochEinAuftrag_15_00"); //Czy jest jeszcze cos, co moge dla Ciebie zrobic?
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_23_01"); //Musze przyznac, ze nie jestem do konca wygodny w rozdysponowaniu zadan na osoby z zewnatrz. Ale wydaje mi sie, ze nie mam wyboru.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_23_02"); //Spodziewam sie od Panstwa najwyzszego dyskrecji w odniesieniu do naszych spraw.
	AI_Output(hero, self, "Info_Mod_Torgan_NochEinAuftrag_15_03"); //Oczywiscie tak jest.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_23_04"); //W prawo, uwazajcie. Musimy dowiedziec sie wiecej o tych rzekomych straznikach.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_23_05"); //Nie moge sobie wyobrazic, ze stary obóz powinien nas zaatakowac i zostawic lezace tam cialo swojego przyjaciela z calym jego sprzetem.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_23_06"); //Dowiedz sie, czy ktokolwiek w innych obozach w Dolinie Kopalni wie wiecej o owych "straznikach". Najlepiej zapytac strazników obozu kultowego, starego i nowego.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_23_07"); //Powinniscie byc szczególnie ostrozni w przypadku Starego Obozu, poniewaz slysze tam pewne napiecia.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_23_08"); //Jesli wiesz, gdzie sa bandyci, dlaczego nie idziesz i widzisz bandytów? W ostatnich raportach harcerskich podobno widzieli oni niektóre z nich na poludniu.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_23_09"); //Jak tylko sie dowiesz, wróc do nas od razu.
	AI_Output(hero, self, "Info_Mod_Torgan_NochEinAuftrag_15_10"); //Jestem juz w drodze!
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_23_11"); //I tutaj wez te przepychanki. Mysle, ze bedziesz mógl go uzyc.

	B_GiveInvItems	(self, hero, ItPo_Speed, 4);

	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_23_12"); //I znów mam dla Ciebie zaklecie.

	B_GiveInvItems	(self, hero, ItSc_TeleportTorgan, 1);

	Log_CreateTopic	(TOPIC_MOD_JG_GARDISTEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_GARDISTEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Torgan chce, abym dowiedzial sie wiecej o straznikach. W tym celu powinienem poprosic o informacje strazników róznych obozów w Minental. Powinnismy uwazac na stary obóz.");
};

INSTANCE Info_Mod_Torgan_Scharmuetzel (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Scharmuetzel_Condition;
	information	= Info_Mod_Torgan_Scharmuetzel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Scharmuetzel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orun_Cyrco))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Scharmuetzel_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Scharmuetzel_23_00"); //Kim oni byli? Czego chcieli? Nie mówili ani slowa.
	AI_Output(hero, self, "Info_Mod_Torgan_Scharmuetzel_15_01"); //Moze Cyrco cos wie. Zobaczmy teraz.
};

INSTANCE Info_Mod_Torgan_Turm (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Turm_Condition;
	information	= Info_Mod_Torgan_Turm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Turm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wulfgar_Hi))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Turm_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Turm_23_00"); //Eh. Ciesze sie, ze przyszedles. Wulfgar chce cie zobaczyc.
	AI_Output(hero, self, "Info_Mod_Torgan_Turm_15_01"); //Jestem na drodze.
};

INSTANCE Info_Mod_Torgan_Turm2 (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Turm2_Condition;
	information	= Info_Mod_Torgan_Turm2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Turm2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Suchender_Turm))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Turm2_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Turm2_23_00"); //To znów Ty.
	AI_Output(hero, self, "Info_Mod_Torgan_Turm2_15_01"); //Musze.....
	AI_Output(self, hero, "Info_Mod_Torgan_Turm2_23_02"); //Trzymac wlaczony, trzymac wcisniety. Slyszysz tam tego faceta w wiezy?
	AI_Output(self, hero, "Info_Mod_Torgan_Turm2_23_03"); //On krzyczy z pluc.
	AI_Output(hero, self, "Info_Mod_Torgan_Turm2_15_04"); //Na und? Soll er doch. Musze.....
	AI_Output(self, hero, "Info_Mod_Torgan_Turm2_23_05"); //Dlaczego nie idziesz na góre i pytasz go, czego chce? Masz tez cos dobrego na sobie.

	Info_ClearChoices	(Info_Mod_Torgan_Turm2);

	Info_AddChoice	(Info_Mod_Torgan_Turm2, "Nie moge tego zrobic. Musze zobaczyc Wulfgar.", Info_Mod_Torgan_Turm2_A);
	Info_AddChoice	(Info_Mod_Torgan_Turm2, "Wszystkie sluszne, wszystkie sluszne. Bede cie o tym mówil.", Info_Mod_Torgan_Turm2_B);
};

FUNC VOID Info_Mod_Torgan_Turm2_B()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Turm2_B_15_00"); //Wszystkie sluszne, wszystkie sluszne. Bede cie o tym mówil.

	Mod_JG_TurmwaechterFelle = 1;

	Info_ClearChoices	(Info_Mod_Torgan_Turm2);
};

FUNC VOID Info_Mod_Torgan_Turm2_A()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Turm2_A_15_00"); //Nie moge tego zrobic. Musze zobaczyc Wulfgar.

	Info_ClearChoices	(Info_Mod_Torgan_Turm2);
};

INSTANCE Info_Mod_Torgan_WeicheFelle (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_WeicheFelle_Condition;
	information	= Info_Mod_Torgan_WeicheFelle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_WeicheFelle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_JGTurmwache_Felle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_WeicheFelle_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_WeicheFelle_23_00"); //A co? Czego chce krzyczacy?
	AI_Output(hero, self, "Info_Mod_Torgan_WeicheFelle_15_01"); //Siersc. Ciepla, miekka powloka.
	AI_Output(self, hero, "Info_Mod_Torgan_WeicheFelle_23_02"); //Niech sie porusza. Tam sie rozgrzewa. Lub nie
	AI_Output(self, hero, "Info_Mod_Torgan_WeicheFelle_23_03"); //Slysze, jak alchemik robi cos nowego z skórami. Popros go o to.
	AI_Output(hero, self, "Info_Mod_Torgan_WeicheFelle_15_04"); //Wlasciwie, bede. Do zobaczenia dookola.

	B_LogEntry	(TOPIC_MOD_JG_TURMFELLE, "Wulfgar robi cos z skórami. Dobra znajomosc.");
};

INSTANCE Info_Mod_Torgan_Nahkampf (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Nahkampf_Condition;
	information	= Info_Mod_Torgan_Nahkampf_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Nahkampf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Opferschale))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Nahkampf_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Nahkampf_23_00"); //Na, j. j. Powrót do nowych przygód?
	AI_Output(hero, self, "Info_Mod_Torgan_Nahkampf_15_01"); //Przygoda? Nowy magazyn jest lepszy. Pozyskiwanie nowych ludzi.
	AI_Output(self, hero, "Info_Mod_Torgan_Nahkampf_23_02"); //Mozna tam od razu spojrzec. Wokól panuje gosc. Moze byc najemnikiem.
	AI_Output(hero, self, "Info_Mod_Torgan_Nahkampf_15_03"); //To dobrze.

	Wld_InsertNpc	(Mod_7475_SLD_Falin_MT, "WP_MT_JAEGERLAGER_05");
};

INSTANCE Info_Mod_Torgan_Nahkampf2 (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Nahkampf2_Condition;
	information	= Info_Mod_Torgan_Nahkampf2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Nahkampf2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Falin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Hock_NahkampfJG))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Nahkampf2_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Nahkampf2_23_00"); //Piekny dzien dzisiaj.
	AI_Output(hero, self, "Info_Mod_Torgan_Nahkampf2_15_01"); //Nie wiem o tym. Zdecydowanie jest to znowu uciazliwe.
};

INSTANCE Info_Mod_Torgan_Sweetwater (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Sweetwater_Condition;
	information	= Info_Mod_Torgan_Sweetwater_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Sweetwater_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hock_JG_Sweetwater))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Sweetwater_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Sweetwater_23_00"); //Znów poszedles? Wlasnie tu dotarles.
	AI_Output(hero, self, "Info_Mod_Torgan_Sweetwater_15_01"); //Jak widac. Ktos musi cos zrobic......
	AI_Output(self, hero, "Info_Mod_Torgan_Sweetwater_23_02"); //Hmm.....
};

INSTANCE Info_Mod_Torgan_Drachental (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Drachental_Condition;
	information	= Info_Mod_Torgan_Drachental_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Drachental_Condition()
{
	if (Mod_JG_SuchenderDT == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Drachental_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Drachental_23_00"); //Tym razem przeszedles juz dawno temu. Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_Torgan_Drachental_15_01"); //Stres bez konca. Opowiem ci to przy okazji.
	AI_Output(self, hero, "Info_Mod_Torgan_Drachental_23_02"); //Twoje slowo w uchu Adano!
	AI_Output(hero, self, "Info_Mod_Torgan_Drachental_15_03"); //Do zobaczenia dookola.
};

INSTANCE Info_Mod_Torgan_AlterMann (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_AlterMann_Condition;
	information	= Info_Mod_Torgan_AlterMann_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zapytaj o starca w lesie.";
};

FUNC INT Info_Mod_Torgan_AlterMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_AlterWaldMann))
	&& (Mod_BDT_AlterWaldMann < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_AlterMann_Info()
{
	if (Mod_BDT_AlterWaldMann == 0)
	{
		B_Say	(hero, self, "$ALTERWALDMANN01");

		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_00"); //Ach, masz na mysli starego czlowieka z lasu. Tak, wiem o nim cos.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_01"); //Mówi sie, ze ma ona stulecia i ma chronic zwierzeta w lesie wokól Khoraty.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_02"); //Mówi sie, ze jest slepy, ale jednoczesnie ma magiczny talent.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_03"); //To wszystko, o czym moge teraz pomyslec. Moze ktos inny wie wiecej.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Od pierwszego straznika nie dostalem wiele nowych informacji. Stary czlowiek z lasu, chroniac zwierzeta, jest starozytnym, niewidomym i magicznym. Moze inny straznik wie wiecej.");
	}
	else if (Mod_BDT_AlterWaldMann == 1)
	{
		B_Say	(hero, self, "$ALTERWALDMANN02");

		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_04"); //Stary czlowiek z lasu? Tak, slyszalem, ze byl kiedys sluga Adano.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_05"); //Nie wiadomo, czy byl on takim straznikiem jak my, magikiem wody, czy przemieniajacym magiem.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_06"); //Jego magiczne zdolnosci, a takze silne przywiazanie do swiata zwierzat i roslin sa dowodem na to, ze ma wszystko.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "W 2. lesniczy tez nie dowiedzialem sie wiele, co warto wiedziec. Mówi sie, ze stary czlowiek lasu jest zwiazany z Adanosem i kreacja, zwlaszcza zwierzetami i roslinami.");
	}
	else if (Mod_BDT_AlterWaldMann == 2)
	{
		B_Say	(hero, self, "$ALTERWALDMANN03");

		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_07"); //Cóz, nie moge ci wiele powiedziec o nim.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_08"); //Problem polega równiez na tym, ze nie rozmawia z nikim, nawet z nami, nawet jesli dazymy do podobnych celów.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_09"); //Sam z zwierzetami lasu bawi sie sam.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_10"); //No cóz, gdybym byl dzikiem, jestem pewien, ze móglbym powiedziec ci wiecej o nim.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Acha, to mogla byc wazna wskazówka. Stary czlowiek z lasu calkowicie unika ludzi, mówi tylko zwierzetom.");
	}
	else if (Mod_BDT_AlterWaldMann == 3)
	{
		B_Say	(hero, self, "$ALTERWALDMANN04");

		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_11"); //Stary czlowiek z lasu? Cóz, ma byc scisle zwiazany z fauna i flora.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_12"); //Mówi sie, ze prowadzi on spakowywanie zwierzat takich jak knury czy wilki, aby chronic las przed intruzami.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_13"); //Nawet mówi sie, ze czesto wystepuje w ksztalcie zielonego wilka.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Przede wszystkim powinien on równiez poinstruowac wieksze paczki zwierzat, takie jak knury i wilki, aby chronic las przed intruzami.");
	}
	else if (Mod_BDT_AlterWaldMann == 4)
	{
		B_Say	(hero, self, "$ALTERWALDMANN05");

		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_14"); //Interesuja Cie opowiesci o starym czlowieku z lasu?
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_15"); //Cóz, nie wiem wiele o tej mistycznej dziwnej kuli.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_16"); //Podobno zamieszkuje glównie w ciemnym lesie, ale równiez w poblizu zbiorników wodnych, takich jak jeziora.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_23_17"); //Rzadko zdarza sie, ze ktos go widzial.....

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Najprawdopodobniej znajduje sie on w gestym lesie Khoraty w poblizu jeziora.");
	};

	Mod_BDT_AlterWaldMann += 1;
};

INSTANCE Info_Mod_Torgan_Asylanten (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Asylanten_Condition;
	information	= Info_Mod_Torgan_Asylanten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego polujecie tutaj w Minental?";
};

FUNC INT Info_Mod_Torgan_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Asylanten_15_00"); //Dlaczego polujecie tutaj w Minental?
	AI_Output(self, hero, "Info_Mod_Torgan_Asylanten_23_01"); //Cóz, o naszym zawodzie.
	AI_Output(self, hero, "Info_Mod_Torgan_Asylanten_23_02"); //Minental jest niebezpiecznym miejscem, a obozy wysylaja tylko nielicznych swoich mysliwych, wiec tu jest duzo grabiezy.
	AI_Output(hero, self, "Info_Mod_Torgan_Asylanten_15_03"); //Czy miales kontakt z innymi obozami?
	AI_Output(self, hero, "Info_Mod_Torgan_Asylanten_23_04"); //Niewiele. Nie chcemy z nimi nic wspólnego.

	B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "Swoja droge do Minentala trafil równiez oddzial mysliwych. Jednak poluje sie tam tylko po to, by polowac i nie wchodzi w kontakt z innymi grupami.");
};

INSTANCE Info_Mod_Torgan_WerBistDu (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_WerBistDu_Condition;
	information	= Info_Mod_Torgan_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Torgan_WerBistDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_WerBistDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_WerBistDu_15_00"); //Kim jestes?
	AI_Output(self, hero, "Info_Mod_Torgan_WerBistDu_23_01"); //Nazywam sie Torgan i mam pouczenie, ze nie wolno mi nikomu pozostawiac nieznanego.
};

INSTANCE Info_Mod_Torgan_WasBewachstDu (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_WasBewachstDu_Condition;
	information	= Info_Mod_Torgan_WasBewachstDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co tam chronisz?";
};

FUNC INT Info_Mod_Torgan_WasBewachstDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_WasBewachstDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_WasBewachstDu_15_00"); //Co tam chronisz?
	AI_Output(self, hero, "Info_Mod_Torgan_WasBewachstDu_23_01"); //Jestesmy straznikami i mysliwymi, w chwili obecnej znajduje sie tu jeden z naszych obozów, do którego nie powinni wjezdzac obcy.
};

INSTANCE Info_Mod_Torgan_Wegschauen (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Wegschauen_Condition;
	information	= Info_Mod_Torgan_Wegschauen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie mozna zrobic jednego malego wyjatku (....) )";
};

FUNC INT Info_Mod_Torgan_Wegschauen_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Torgan_WerBistDu))
	|| (Npc_KnowsInfo(hero, Info_Mod_Torgan_WasBewachstDu)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Wegschauen_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Wegschauen_15_00"); //Czy nie mozna zrobic odrobiny wyjatku i spojrzec inaczej?
	AI_Output(self, hero, "Info_Mod_Torgan_Wegschauen_23_01"); //Nie! Nie mozesz sluchac? Byc moze niektóre z naszych oddzialów mysliwskich maja cos do zrobienia, sa po nich.
	AI_Output(self, hero, "Info_Mod_Torgan_Wegschauen_23_02"); //Dragomir w Khorinis zawsze wystarczy dla ciebie.
};

INSTANCE Info_Mod_Torgan_Lernen (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr          	= 1;
	condition	= Info_Mod_Torgan_Lernen_Condition;
	information	= Info_Mod_Torgan_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czego mozesz mnie nauczyc?";
};

FUNC INT Info_Mod_Torgan_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Hi))
	{
		return 1;
	};
};

var int Mod_Torgan_Lehrer;

FUNC VOID Info_Mod_Torgan_Lernen_ShowOptions()
{
	Info_ClearChoices	(Info_Mod_Torgan_Lernen);

	Info_AddChoice	(Info_Mod_Torgan_Lernen, DIALOG_BACK, Info_Mod_Torgan_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("rozdarte zeby",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Torgan_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("pazury",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Torgan_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString("mucha kregoslup", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Torgan_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("skórka",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Torgan_Lernen_Fur);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TrollTeeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("Trollhauer z rabkiem rolowca",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_TrollTeeth)), Info_Mod_Torgan_Lernen_TrollTeeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SwampSharkTeeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("mokradla zeby rekinów ciagniecie",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_SwampSharkTeeth)), Info_Mod_Torgan_Lernen_SwampsharkTeeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ReptileSkin] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("Skinowanie gadów",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_ReptileSkin)), Info_Mod_Torgan_Lernen_ReptileSkin);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Heart] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("wziac serca",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Heart)), Info_Mod_Torgan_Lernen_Heart);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ShadowHorn] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("Wziac klaksony biegaczy cieni",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_ShadowHorn)), Info_Mod_Torgan_Lernen_ShadowHorn);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireTongue] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("pekajace jezyki ognia",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FireTongue)), Info_Mod_Torgan_Lernen_FireTongue);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("Wezmy skrzydlo",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFWing)), Info_Mod_Torgan_Lernen_BFWing);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Mandibles] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("kradziez",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Mandibles)), Info_Mod_Torgan_Lernen_Mandibles);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DrgSnapperHorn] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("wziac pod uwage podbródek smokowy",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_DrgSnapperHorn)), Info_Mod_Torgan_Lernen_DrgSnapperHorn);
	};
};

FUNC VOID Info_Mod_Torgan_Lernen_Info()
{
	if (Mod_Torgan_Lehrer == FALSE) {
		Mod_Torgan_Lehrer = TRUE;
		
		Log_CreateTopic	(TOPIC_MOD_LEHRER_WALDIS, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_WALDIS, "Torgan moze nauczyc mnie brac rózne trofea mysliwskie.");
	};
	AI_Output(hero, self, "Info_Mod_Torgan_Lernen_15_00"); //Czego mozesz mnie nauczyc?

	if ((PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TrollTeeth] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SwampSharkTeeth] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ReptileSkin] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Heart] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ShadowHorn] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireTongue] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Mandibles] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DrgSnapperHorn] == FALSE))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_23_01"); //Zalezy od tego, co chcesz wiedziec.

		Info_Mod_Torgan_Lernen_ShowOptions();
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_23_02"); //Nie moge cie nauczyc wiecej niz juz wiesz. Przepraszam za to.
	};
};

FUNC void Info_Mod_Torgan_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Torgan_Lernen);
};

FUNC void Info_Mod_Torgan_Lernen_Claws()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Claws))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Claws_23_00"); //Zwierzeta nie lubia oddawac pazurów. Musisz trafic dokladnie tam, gdzie idziesz nozem.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Claws_23_01"); //Postawa dloni powinna byc lekko uwiklana. Z mocnym wstrzasem odciales pazur.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Claws_23_02"); //Sprzet jest zawsze pozadanym srodkiem platniczym dla przedsiebiorcy.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
		
};

FUNC void Info_Mod_Torgan_Lernen_Teeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Teeth))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Teeth_23_00"); //Najprostsza rzecza, która mozna wyciagnac ze zwierzat jest ich zeby. Jezdzisz nozem dookola protezy w ustach.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Teeth_23_01"); //Potem umiejetnie oddziela sie go od czaszki zwierzecia szarpnieciem.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_BFSting()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_BFSting))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_BFSting_23_00"); //mucha ma miekkie miejsce na plecach.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_BFSting_23_01"); //Jesli wcisna Panstwo dlon do niej dociskajac, uklucie wysuwa sie bardzo daleko i mozna ja przeciac nozem.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_Fur()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Fur))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Fur_23_00"); //Najlepszym sposobem usuniecia siersci jest wykonanie glebokiego ciecia na tylnych nogach zwierzecia.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Fur_23_01"); //Dzieki temu zawsze mozna latwo sciagnac futro z przodu do tylu.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_TrollTeeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_TrollTeeth))
	{
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_SwampSharkTeeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_SwampSharkTeeth))
	{
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_ReptileSkin()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_ReptileSkin))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_ReptileSkin_23_00"); //Po przecieciu skóry po bokach, skóra sie rozprezy. Od teraz nie powinno sie miec problemu z skórowaniem jaszczurek.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_Heart()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Heart))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Heart_23_00"); //Serce usuwa sie z zwierzecia za pomoca sprytnego naciecia w klatce piersiowej. Jednak czesto oplaca sie to tylko dla wyjatkowych zwierzat lub magicznych istot.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_ShadowHorn()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_ShadowHorn))
	{
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_FireTongue()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_FireTongue))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_FireTongue_23_00"); //Za pomoca noza wycietego z ust podczas trzymania go druga reka uderza sie w jezyk monitora przeciwpozarowego.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_BFWing()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_BFWing))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_BFWing_23_00"); //Najlepszym sposobem na usuniecie skrzydel skrzydla muchy jest przeciecie ostrego ostrza bardzo blisko korpusu muchy.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_BFWing_23_01"); //Upewnij sie tylko, ze nie uszkodzisz cienkiej tkaniny skrzydel. Oni sa bezwartosciowi, chyba ze robisz to ostroznie.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_Mandibles()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Mandibles))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Mandibles_23_00"); //Z pewnoscia, po zabiciu bydla, chwycic go za szczypce i wyrwac. Nastepnie gruczol wydzielania wychodzi bez rozdarcia.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Mandibles_23_01"); //Nawiasem mówiac, slyszalem, ze tak wlasnie dziala z polowymi zlodziejami.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_DrgSnapperHorn()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_DrgSnapperHorn))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_DrgSnapperHorn_23_00"); //Przy podstawie czolo smoka jest najlepszym miejscem do oddzielenia rogu od czaszki stabilnym nozem.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

INSTANCE Info_Mod_Torgan_Pickpocket (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Pickpocket_Condition;
	information	= Info_Mod_Torgan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Torgan_Pickpocket_Condition()
{
	C_Beklauen	(105, ItMi_Gold, 39);
};

FUNC VOID Info_Mod_Torgan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);

	Info_AddChoice	(Info_Mod_Torgan_Pickpocket, DIALOG_BACK, Info_Mod_Torgan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Torgan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Torgan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Torgan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);
};

FUNC VOID Info_Mod_Torgan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);

		Info_AddChoice	(Info_Mod_Torgan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Torgan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Torgan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Torgan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Torgan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Torgan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Torgan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Torgan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Torgan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Torgan_EXIT (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_EXIT_Condition;
	information	= Info_Mod_Torgan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torgan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torgan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
