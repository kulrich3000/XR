INSTANCE Info_Mod_Dexter_Hi (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Hi_Condition;
	information	= Info_Mod_Dexter_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Parole))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_00"); //Co ty tu robisz?
	AI_Output(hero, self, "Info_Mod_Dexter_Hi_15_01"); //Przyszedlem do Ciebie dolaczyc.

	if (Gardist_Dabei == TRUE)
	|| (Mod_AnzahlNebengilden >= MaxNebengilden)
	{
		AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_02"); //Dobrze, masz nasze haslo.

		if (Gardist_Dabei == TRUE)
		{
			AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_03"); //Slyszalem jednak, ze jestescie juz czescia Starego Obozu.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_04"); //Slyszalem jednak, ze jestescie juz czescia wielu innych obozów.
		};

		AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_05"); //Nie mozna juz stac sie prawdziwym bandytem. Niebezpieczenstwo przekazywania informacji od nas jest dla mnie zbyt duze.
		AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_06"); //Mozesz swobodnie wejsc do naszego obozu i zajac sie chlopcami.
		AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_07"); //Nie sprawiaj zadnych klopotów, dobrze?

		B_SetTopicStatus	(TOPIC_MOD_AUFNAHME_BANDITEN, LOG_FAILED);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_08"); //Wyglada na to, ze przekonales juz kilku z nas, bo inaczej nie przyszedlbys tu zywy.
		AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_09"); //Tak wiec, jesli chcecie, mozecie stac sie jednym z nas teraz.

		B_LogEntry	(TOPIC_MOD_AUFNAHME_BANDITEN, "Gonna Dextera zabierz mnie teraz, jesli chce.");
	};

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Dexter_Aufnahme (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Aufnahme_Condition;
	information	= Info_Mod_Dexter_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce byc bandyta.";
};

FUNC INT Info_Mod_Dexter_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Hi))
	&& (Gardist_Dabei == FALSE)
	&& (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_Aufnahme_15_00"); //Chce byc bandyta.
	AI_Output(self, hero, "Info_Mod_Dexter_Aufnahme_28_01"); //Oto Twoja zbroja. Mozesz teraz wykorzystac sie w obozie.

	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_LogEntry_More	(TOPIC_MOD_NEBENGILDEN, TOPIC_MOD_AUFNAHME_BANDITEN, "Dexter zabral mnie z bandytami.", "Wzial mnie do srodka i dal mi pancerz.");
	B_SetTopicStatus	(TOPIC_MOD_AUFNAHME_BANDITEN, LOG_SUCCESS);

	B_GivePlayerXP	(400);

	CreateInvItems	(self, ITAR_BDT_M_01, 1);
	B_GiveInvItems	(self, hero, ITAR_BDT_M_01, 1);

	Banditen_Dabei = TRUE;

	B_Göttergefallen(3, 2);

	Mod_AnzahlNebengilden += 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_64);
};

INSTANCE Info_Mod_Dexter_WhatToDo (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_WhatToDo_Condition;
	information	= Info_Mod_Dexter_WhatToDo_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie sa moje obowiazki jako bandyta?";
};

FUNC INT Info_Mod_Dexter_WhatToDo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Hi))
	&& (Banditen_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_WhatToDo_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_WhatToDo_15_00"); //Jakie sa moje obowiazki jako bandyta?
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_01"); //Sa one bardzo zróznicowane i zróznicowane.
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_02"); //Oczywiscie planujemy i przeprowadzamy rozboje przede wszystkim i patrzymy gdzie indziej, gdzie jest cos do zdobycia z odrobina umiejetnosci.
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_03"); //Zaledwie kilka dni temu stloczylismy mala grupe wrogich orków w drodze do Orc City na poludniowym zachodzie.
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_04"); //Dosc cenny artefakt wpadl w nasze rece. Ale zajme sie tym innym razem.
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_05"); //W kazdym razie bez kupujacych i odbiorców, którym moglibysmy odsprzedac przechwycone towary, nie mielibysmy centralnego zródla dochodu.
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_06"); //Mamy kontakty i klientów w calym Khorinis. Dlatego dzialamy równiez jako handlowcy, poslancy, a czasami nawet przyjmujemy zamówienia, które sa zbyt gorace dla innych.
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_07"); //Po sprawdzeniu sie w obozie, bedziecie mieli dla Was dobre ryby. Bedziesz cieszyc sie zyciem jako bandyta.
};

INSTANCE Info_Mod_Dexter_Job (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Job_Condition;
	information	= Info_Mod_Dexter_Job_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz dla mnie cos do zrobienia?";
};

FUNC INT Info_Mod_Dexter_Job_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_WhatToDo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Job_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_Job_15_00"); //Masz dla mnie cos do zrobienia?
	AI_Output(self, hero, "Info_Mod_Dexter_Job_28_01"); //Nie na razie. Moze wrócic za kilka dni.

	Mod_DextersJob = Wld_GetDay();

	Log_CreateTopic	(TOPIC_MOD_BDT_ORKS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_ORKS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Na razie Dexter nie ma dla mnie nic do zrobienia. Powinienem zatrzymac sie przy jego miejscu za kilka dni.");
};

INSTANCE Info_Mod_Dexter_TimeOver (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_TimeOver_Condition;
	information	= Info_Mod_Dexter_TimeOver_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_TimeOver_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Job))
	&& ((Mod_DextersJob + 2) <= Wld_GetDay())
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_TimeOver_Info()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche2))
	|| (Mod_Banditenueberfall_Esteban == 11)
	|| (Mod_Orks_Morgahard == 4)
	{
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_00"); //Juz dobrze sluzyles naszemu obozowi i pokazales sie jako umiejetny i godny bandyta.
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_01"); //Mam wiec dla pana bardzo wazne zadanie.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_02"); //Do tej pory nie zrobiles nic wielkiego dla naszego obozu.
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_03"); //Ale poniewaz znacie Panstwo stary obóz dawnych czasów i nikt nie wie o waszym zwiazku z nami, mozecie wreszcie zrobic cos waznego dla nas.
	};

	AI_Output(hero, self, "Info_Mod_Dexter_TimeOver_15_04"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_05"); //Kilka dni temu powiedzialem w naszej rozmowie, ze udalo nam sie uchwycic wazny artefakt z orków.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_06"); //Cóz, punkt ten byl magicznym amuletem.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_07"); //Z ksiazki o utraconych skarbach z dawnych czasów dowiedzielismy sie, ze ten kawalek bizuterii nalezal do serii poteznych przedmiotów, które kiedys mialy byc stworzone przez boska instrukcje w piecach hutniczych Nordmarów, na dlugo przed zalozeniem klanów.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_08"); //Rozpoczelismy negocjacje z magikami transformujacymi, którzy wykazali duze zainteresowanie amuletem.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_09"); //Oni nawet dali nam kilka cennych zaklec na miejscu, aby przypieczetowac umowe.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_10"); //Teraz Quentin mial wczoraj przywiezc im amulet, po tym jak Oschust dal mu swiezy polysk. Jest zdolnym czlowiekiem i jednym z naszych najlepszych bojowników.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_11"); //Po drodze zatrzymal sie w starym obozie, aby obejrzec kilka walk na arenach. Wypil jeden lub drugi lyka i wszedl w spór z zagranicznym wojownikiem.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_12"); //Cóz, aby dotrzec do punktu, oni przescigneli sie w swoich zakladach, aby móc wyslac druga osobe na parkiecie areny, a ta idiotyczna Quentin zaoferowala nareszcie amulet.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_13"); //Walka nie trwala dlugo, Quentin zatopil sie w prochu po kilku uderzeniach przeciwnika i amulet byl luzny.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_14"); //To jest ciezki cios dla calego naszego obozu, poniewaz niektóre z podawanych nam przez magów rzutów zaklec zostaly zuzyte podczas misji zwiadowczej.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_15"); //Nie jest to latwy sposób na odwrócenie interesów, a w gre wchodzi reputacja naszej niezawodnosci.

	if (Kapitel >= 4)
	{
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_16"); //A to, ze stary obóz jest teraz w rekach orków nie ulatwia tego.
	};

	AI_Output(hero, self, "Info_Mod_Dexter_TimeOver_15_17"); //I mam odzyskac amulet?
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_18"); //To prawda, dostajesz punkt wyjscia.

	B_Say	(hero, self, "$WIESOLLICHVORGEHEN");

	if (Kapitel >= 4)
	{
		AI_Output(hero, self, "Info_Mod_Dexter_TimeOver_15_19"); //Knock ladnie i zapytac, czy ktos widzial amulet przez przypadek?
	};

	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_20"); //Dowiedzielismy sie, ze wojownik nazywa sie Sabitsch i jest starym przyjacielem Thorusa z dni poprzedzajacych kolonie.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_21"); //Byl on na drodze wiele razy i podobno wygral zwyciestwa na wielu arenach na calym swiecie.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_22"); //Po tym, jak uslyszal o upadku zapory i panowaniu nad obozem dawnego przyjaciela Thorusa, musial przyjechac tu jako rycerz fortuny, aby wziac niektóre skarby tej doliny.

	if (Kapitel < 4)
	{
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_23"); //Wiec duzo zrecznosci jest potrzebne do twojego zadania, poniewaz jest nie tylko slawnym bojownikiem, ale równiez dobrym przyjacielem Thorusa i nie chcemy go pomieszac z starym obozem.
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_24"); //Spróbuj dowiedziec sie o nim jak najwiecej, porozmawiaj z ludzmi, którzy czesto maja z nim do czynienia - oczywiscie nie z Thorusem.
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_25"); //A potem zrobic wszystko, co w twojej mocy, aby wrócic do posiadania amuletu.... pozostawic jak najmniej sladu, jesli ma to nastapic w sposób, który móglby prowadzic do konfliktów ze Starym Obozem.

		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter powierzyl mi zadanie odzyskania amuletu, który stracil Quentin na rzecz Sabitscha. Musze postepowac bardzo umiejetnie, poniewaz Sabitsch, którego znajde w starym obozie, jest wspanialym wojownikiem i dobrym przyjacielem Thorusa.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_26"); //No cóz, nie poszedl za niego tak dobrze, jak oczekiwal.
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_27"); //Choc byl doskonalym bojownikiem, prawdopodobnie nie mial szans na to, by zmierzyc sie z siedzacymi tam 200 orkami.
		AI_Output(hero, self, "Info_Mod_Dexter_TimeOver_15_28"); //Acha, co mam zrobic?
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_29"); //Wejdz, znajdz arene, wykup ciala, sciagnij amulet i przynies go do nas.
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_30"); //Byc moze jednak w mniej widocznej formie.

		B_Say	(hero, self, "$WASMEINSTDU");

		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_31"); //Porozmawiaj z Quentinem. On ma cos dla Ciebie.

		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter powierzyl mi zadanie odzyskania amuletu, który stracil Quentin na rzecz Sabitscha. Mozna to znalezc jeszcze w obozie orkowym na arenie niedaleko jego ciala. Dexter powiedzial, ze Quentin ma cos na sobie, wiec nie wyróznie sie w obozie.");
	};

	Wld_InsertNpc	(Mod_7024_OUT_Sabitsch_MT,	"OC1");

	if (Kapitel >= 4)
	{
		B_KillNpc	(Mod_7024_OUT_Sabitsch_MT);
	};
};

INSTANCE Info_Mod_Dexter_AmulettBack (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_AmulettBack_Condition;
	information	= Info_Mod_Dexter_AmulettBack_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam amulet.";
};

FUNC INT Info_Mod_Dexter_AmulettBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_TimeOver))
	&& (Npc_HasItems(hero, ItAm_MegaAmulett) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_AmulettBack_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_AmulettBack_15_00"); //Mam amulet.

	B_GiveInvItems	(hero, self, ItAm_MegaAmulett, 1);

	if (Kapitel < 4)
	{
		if (Mod_SabitschArenaLooser < 2)
		{
			AI_Output(self, hero, "Info_Mod_Dexter_AmulettBack_28_01"); //Bardzo dobry. Zrobiles wspaniala przysluge dla naszego obozu.
			AI_Output(self, hero, "Info_Mod_Dexter_AmulettBack_28_02"); //Wykorzystaj to jako nagrode.

			CreateInvItems	(hero, ItMi_Gold, 500);
			CreateInvItems	(hero, ItMi_Nugget, 20);

			B_ShowGivenThings	("500 zlota i 20 sztuk konserwowanej rudy");

			B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter byl bardzo zadowolony z mojego sukcesu i hojnie mnie nagrodzil.");

			B_GivePlayerXP	(600);
		}
		else if (Mod_SabitschAmulettGeklaut == 2)
		{
			AI_Output(self, hero, "Info_Mod_Dexter_AmulettBack_28_03"); //No cóz, zlapano cie na kradziezy amuletu, ale to jest samobójcze i najwazniejsza rzecza jest to, ze mamy amulet.
			AI_Output(self, hero, "Info_Mod_Dexter_AmulettBack_28_04"); //Zarobiles sobie nagrode.

			CreateInvItems	(hero, ItMi_Gold, 300);
			CreateInvItems	(hero, ItMi_Nugget, 14);

			B_ShowGivenThings	("300 zlota i 14 sztuk konserwowanej rudy");

			B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter byl z mnie zadowolony, mimo odkrytej kradziezy, i odpowiednio mnie wynagrodzil.");

			B_GivePlayerXP	(200);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Dexter_AmulettBack_28_05"); //Erstaunlich! Dir ist es wirklich gelungen. Damit hast du unserem Lager einen großen Dienst erwiesen. Wykorzystaj to jako nagrode.

		CreateInvItems	(hero, ItMi_Gold, 500);
		CreateInvItems	(hero, ItMi_Nugget, 20);
		CreateInvItems	(hero, ItSc_TrfRabbit, 2);

		B_GivePlayerXP	(400);

		B_ShowGivenThings	("500 zlota, 20 kawalków rudy i 2 zachowanych wladców");
	};

	AI_Output(self, hero, "Info_Mod_Dexter_AmulettBack_28_06"); //W kazdym razie, jestem gonna dac drugiej szansy kwentinie. Przywiezie amulet do magów i zakonczy handel.

	Mod_DextersJob = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter zwrócil amulet Quentin, aby dostarczyc go magikom. Miejmy nadzieje, ze tym razem wszystko bedzie przebiegalo plynnie.");
};

INSTANCE Info_Mod_Dexter_QuentinsBack (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_QuentinsBack_Condition;
	information	= Info_Mod_Dexter_QuentinsBack_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_QuentinsBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_AmulettBack))
	&& (Wld_GetDay() > Mod_DextersJob)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_QuentinsBack_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_00"); //Pieklo piekielne.
	AI_Output(hero, self, "Info_Mod_Dexter_QuentinsBack_15_01"); //Co sie stalo?
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_02"); //Kiedy Quentin przekazal amulet magikowi Albertowi, przez kilka minut badal ten utwór.
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_03"); //Potem nagle rzucil Quentin na nogi, byl zdenerwowany, mówil o oszustwie i oszustwie.
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_04"); //Ciagle czul jeszcze reszte magicznej aury prawdziwego amuletu, ale jest to oczywiscie falszerstwo.
	AI_Output(hero, self, "Info_Mod_Dexter_QuentinsBack_15_05"); //Jak to jest mozliwe?
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_06"); //No cóz, nie jestem tez zupelnie glupi. Poszedlem na wszystko znowu i doszedlem do jedynego wniosku, ze ten brudny Oschust musi byc za nim.
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_07"); //Kiedy dalismy mu amulet do wypolerowania, musial on wykonac w tej samej nocy dokladna kopie, która potem przekazal nam nastepnego dnia.
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_08"); //Gdzies ukrywal oryginal. Nie moge do niego pójsc teraz i pociac go na kawalki. Wciaz go potrzebujemy.
	AI_Output(hero, self, "Info_Mod_Dexter_QuentinsBack_15_09"); //Co jeszcze pozostaje do zrobienia?
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_10"); //Das überlasse ich dir. Kümmere du dich um Oschust. Bringe ihn mit etwas "dyplomacja" dazu, dir Auskunft über den Standort des Amulettes zu geben.
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_11"); //Powinien on jednak byc w stanie pózniej kontynuowac swój handel podrabianiem towarów. Rozumiesz?
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_12"); //Dobre. Zglos sie pózniej do mnie.

	Wld_InsertNpc	(Mod_10012_ORC_Scout_MT,	"OC1");
	Wld_InsertNpc	(Mod_10013_ORC_Scout_MT,	"OC1");
	Wld_InsertNpc	(Mod_10014_ORC_Elite_MT,	"OC1");
	Wld_InsertNpc	(Mod_10015_ORC_Elite_MT,	"OC1");
	Wld_InsertNpc	(Orcdog,	"WP_ORKBEIAMULETT");

	Wld_SendTrigger	("EVT_MT_ORKHOEHLEAMULETT");
};

INSTANCE Info_Mod_Dexter_FakeAmulett (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_FakeAmulett_Condition;
	information	= Info_Mod_Dexter_FakeAmulett_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie jest teraz falszywy amulet?";
};

FUNC INT Info_Mod_Dexter_FakeAmulett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_QuentinsBack))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_FakeAmulett_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_FakeAmulett_15_00"); //Gdzie jest teraz falszywy amulet?
	AI_Output(self, hero, "Info_Mod_Dexter_FakeAmulett_28_01"); //Nosze go przy sobie. Tutaj mozna go miec, bo zabrales go ze starego obozu.

	B_GiveInvItems	(self, hero, ItAm_MegaAmulett, 1);

	AI_Output(self, hero, "Info_Mod_Dexter_FakeAmulett_28_02"); //Nie ma juz dla nas zadnej wartosci.
};

INSTANCE Info_Mod_Dexter_OschustAmulett (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_OschustAmulett_Condition;
	information	= Info_Mod_Dexter_OschustAmulett_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nauczylem sie od Oschusta, gdzie znajduje sie amulet.";
};

FUNC INT Info_Mod_Dexter_OschustAmulett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_Umgehauen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_OschustAmulett_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_OschustAmulett_15_00"); //Nauczylem sie od Oschusta, gdzie znajduje sie amulet. Niedaleko stad w jaskini.
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_01"); //Bardzo dobry. Jaka byla wspólpraca z Oschustem?
	AI_Output(hero, self, "Info_Mod_Dexter_OschustAmulett_15_02"); //Cóz, musialem polozyc nacisk na moje stanowisko. Jest jeszcze inny problem.
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_03"); //Tak?
	AI_Output(hero, self, "Info_Mod_Dexter_OschustAmulett_15_04"); //Jaskinia jest pelna orków i wojen.
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_05"); //Co jeszcze orki? Tak blisko magazynu.... to nie jest dobre.
	AI_Output(hero, self, "Info_Mod_Dexter_OschustAmulett_15_06"); //A co robimy z amuletem?
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_07"); //Nie mamy wystarczajaco duzo sily przebicia, aby dokonac czolowego ataku.... i nocny rabunek z powodu pilnych psów.
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_08"); //Potrzebuje tu równiez moich mezczyzn, aby chronic obóz, tak czesto jak orki, które w tej chwili sie rozchodza......
	AI_Output(hero, self, "Info_Mod_Dexter_OschustAmulett_15_09"); //Czy to oznacza, ze znów jestem sam?
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_10"); //No cóz.... nie koniecznie. Mozesz spróbowac wynajac Orchunterów w Nowym Obozie.
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_11"); //Nie przychodzi tanio. Oto troche zlota.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_12"); //Byc moze znajdziemy równiez szalenca, który gra wabikiem i wyciaga orki z jaskini.
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_13"); //Cóz, jestem pewien, ze znajdziecie sposób. Powodzenia!

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter nie moze oszczedzic zadnych ludzi w obozie, aby odzyskac amulet i ostatecznie poradzil mi zatrudnic orkiestry do przymusowego przechwytywania bizuterii. Powiedzial tez, ze moge znalezc alternatywnie lekkomyslnego, który zwabi orkiestry z jaskini. Zastanawiam sie, czy moge o kimkolwiek pomyslec.");

	B_StartOtherRoutine	(Mod_7022_BDT_Oschust_MT, "TOT");
	AI_Teleport	(Mod_7022_BDT_Oschust_MT, "TOT");
};

INSTANCE Info_Mod_Dexter_OschustTot (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_OschustTot_Condition;
	information	= Info_Mod_Dexter_OschustTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Uh, próbowalem zadac pytanie oschusty. Niestety, odszedl i....";
};

FUNC INT Info_Mod_Dexter_OschustTot_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Oschust_Amulett_A))
	|| (Npc_KnowsInfo(hero, Info_Mod_Oschust_Amulett_B)))
	&& (Npc_IsDead(Mod_7022_BDT_Oschust_MT))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustAmulett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_OschustTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_OschustTot_15_00"); //Uh, próbowalem zadac pytanie oschusty. Niestety, odszedl i....
	AI_Output(self, hero, "Info_Mod_Dexter_OschustTot_28_01"); //Co....? Wykonal pan wspaniala prace. .... od kiedy byles tak madry: dobrze szukaj!

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter byl niezadowolony z upadku Oschusta. Znalezienie amuletu teraz bedzie trudnym przedsiewzieciem. Zapewne bede musial szukac siebie samotnie......");

	B_StartOtherRoutine	(Mod_7022_BDT_Oschust_MT, "TOT");
	AI_Teleport	(Mod_7022_BDT_Oschust_MT, "TOT");
};

INSTANCE Info_Mod_Dexter_Amulett2Gefunden (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Amulett2Gefunden_Condition;
	information	= Info_Mod_Dexter_Amulett2Gefunden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ocalilem amulet.";
};

FUNC INT Info_Mod_Dexter_Amulett2Gefunden_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustAmulett))
	|| (Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustTot)))
	&& (Npc_HasItems(hero, ItAm_MegaAmulett2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Amulett2Gefunden_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_Amulett2Gefunden_15_00"); //Ocalilem amulet.
	AI_Output(self, hero, "Info_Mod_Dexter_Amulett2Gefunden_28_01"); //Doskonaly. Teraz przejdz bezposrednio do maga transformacji Alberta i daj mu go.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Mam wniesc amulet przedluzacza do przemieniajacego sie magika Alberta.");
};

INSTANCE Info_Mod_Dexter_AmulettAbgegeben (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_AmulettAbgegeben_Condition;
	information	= Info_Mod_Dexter_AmulettAbgegeben_Info;
	permanent	= 0;
	important	= 0;
	description	= "Albert otrzymal amulet.";
};

FUNC INT Info_Mod_Dexter_AmulettAbgegeben_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Amulett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_AmulettAbgegeben_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_AmulettAbgegeben_15_00"); //Albert otrzymal amulet.
	AI_Output(self, hero, "Info_Mod_Dexter_AmulettAbgegeben_28_01"); //Bardzo dobry. Czy dal ci reszte uzgodnionej ceny?

	Info_ClearChoices	(Info_Mod_Dexter_AmulettAbgegeben);

	Info_AddChoice	(Info_Mod_Dexter_AmulettAbgegeben, "Nie, jeszcze sie zloscil na sztuczna bizuterie.", Info_Mod_Dexter_AmulettAbgegeben_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 300)
	&& (Npc_HasItems(hero, ItSc_TrfSheep) >= 1)
	&& (Npc_HasItems(hero, ItSc_TrfKeiler) >= 1)
	{
		Info_AddChoice	(Info_Mod_Dexter_AmulettAbgegeben, "Tak, dostales tu wszystko.", Info_Mod_Dexter_AmulettAbgegeben_A);
	};
};

FUNC VOID Info_Mod_Dexter_AmulettAbgegeben_C()
{
	AI_Output(self, hero, "Info_Mod_Dexter_AmulettAbgegeben_C_28_00"); //Tak czy inaczej, mimo wszystkich klopotów w ciagu ostatnich kilku dni, musimy nadrobic to wszystko. Tutaj napój sie.

	CreateInvItems	(hero, ItFo_Addon_Grog, 1);

	B_UseItem	(hero, ItFo_Addon_Grog);

	AI_Output(self, hero, "Info_Mod_Dexter_AmulettAbgegeben_C_28_01"); //Prawdziwy dobry grog zeglarski, który nasi chlopcy przyjeli od kupca na Khorinis.
	AI_Output(self, hero, "Info_Mod_Dexter_AmulettAbgegeben_C_28_02"); //Ponadto sa tam równiez wykwintne szynki i chrupiace pieczone mieso. Dzis wieczorem nie bedzie zadnego usprawiedliwienia. (smiertelnicy)

	CreateInvItems	(self, ItFo_Addon_Grog, 1);

	B_UseItem	(self, ItFo_Addon_Grog);

	Info_ClearChoices	(Info_Mod_Dexter_AmulettAbgegeben);

	AI_StopProcessInfos	(self);

	Mod_Dexter_AmulettParty = 1;
};

FUNC VOID Info_Mod_Dexter_AmulettAbgegeben_B()
{
	AI_Output(hero, self, "Info_Mod_Dexter_AmulettAbgegeben_B_15_00"); //Nie, jeszcze sie zloscil na sztuczna bizuterie.
	AI_Output(self, hero, "Info_Mod_Dexter_AmulettAbgegeben_B_28_01"); //Damn, prawie sie tego obawialem. Cóz, dziekuje za panskie wysilki i tak.

	Info_Mod_Dexter_AmulettAbgegeben_C();
};

FUNC VOID Info_Mod_Dexter_AmulettAbgegeben_A()
{
	AI_Output(hero, self, "Info_Mod_Dexter_AmulettAbgegeben_A_15_00"); //Tak, dostales tu wszystko.

	B_ShowGivenThings	("300 szt. zlota i 2 szt.");

	AI_Output(self, hero, "Info_Mod_Dexter_AmulettAbgegeben_A_28_01"); //Doskonaly. Nagroda za uslugi swiadczone w obozie jest zachowanie zaklecia knurów i 200 zlota.

	B_ShowGivenThings	("Zachowane 200 rolek zlota i 1 zaklecie");

	Npc_RemoveInvItems	(hero, ItMi_Gold, 100);
	Npc_RemoveInvItems	(hero, ItSc_TrfSheep, 1);

	B_GivePlayerXP	(300);

	Info_Mod_Dexter_AmulettAbgegeben_C();
};

INSTANCE Info_Mod_Dexter_BanditenKidnapped (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_BanditenKidnapped_Condition;
	information	= Info_Mod_Dexter_BanditenKidnapped_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_BanditenKidnapped_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_You))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_BanditenKidnapped_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_BanditenKidnapped_28_00"); //Co sie stalo, gdzie sa inni bandyci?
	AI_Output(hero, self, "Info_Mod_Dexter_BanditenKidnapped_15_01"); //To bylo wszystko zasadzka. Oschust zdradzil nas do orków.

	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustTot))
	{
		AI_Output(self, hero, "Info_Mod_Dexter_BanditenKidnapped_28_02"); //Jak to jest mozliwe? Myslalem, ze nie zyje....
		AI_Output(hero, self, "Info_Mod_Dexter_BanditenKidnapped_15_03"); //Nie, orki wyposazyly go w magiczne artefakty, które uratowaly go od zejscia w koncu do królestwa Beliara.
	};

	AI_Output(hero, self, "Info_Mod_Dexter_BanditenKidnapped_15_04"); //Inni bandyci zostali zlapani, ledwie moglem oprzec sie mojej skórze.
	AI_Output(self, hero, "Info_Mod_Dexter_BanditenKidnapped_28_05"); //Damn, to jest katastrofa. Musze pomyslec...... Nie ma wiec czasu do stracenia, poniewaz nasz oslabiony obóz moze zostac zaatakowany w dowolnym momencie.
	AI_Output(self, hero, "Info_Mod_Dexter_BanditenKidnapped_28_06"); //Pospiesz sie do starej twierdzy górskiej. Znajdziesz tam orki, z którymi mamy do czynienia.
	AI_Output(self, hero, "Info_Mod_Dexter_BanditenKidnapped_28_07"); //Przejdz na Ur Shak. Moze mozemy sie od niego nauczyc wiecej.

	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Gnade))
	|| (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Plan))
	{
		AI_Output(hero, self, "Info_Mod_Dexter_BanditenKidnapped_15_08"); //Wiele juz dowiedzialem sie o Oschust. On rzeczywiscie planowal wkrótce zaatakowac nasz obóz i chce odzyskac amulet od magów.
		AI_Output(hero, self, "Info_Mod_Dexter_BanditenKidnapped_15_09"); //A pochwyceni bandyci beda zle cierpiec.... Wiecej
		AI_Output(self, hero, "Info_Mod_Dexter_BanditenKidnapped_28_10"); //Hmm, w tym przypadku mozna równiez od razu zwrócic sie do magów transformacyjnych. Porozmawiaj z Albertem, ale spiesz sie.

		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Powinienem zwrócic sie do przemieniajacego sie magika Alberta, aby opowiedzial mu o niebezpieczenstwach zagrazajacych jego obozowi. Moze tak wlasnie moge uzyskac wsparcie....");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter poradzil mi skontaktowac sie z Ur Shak w starej twierdzy górskiej, aby dowiedziec sie wiecej o planach na przyszlosc.");
	};
};

INSTANCE Info_Mod_Dexter_AngriffVorbei (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_AngriffVorbei_Condition;
	information	= Info_Mod_Dexter_AngriffVorbei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_AngriffVorbei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_FluchtHappy))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_AngriffVorbei_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_00"); //Bylo to w ostatniej chwili, ale pan to zrobil.
	
	var int Mod_Survivors;
	Mod_Survivors = 8 - Mod_OC_Esteban - Mod_OC_Miguel - Mod_OC_Logan - Mod_OC_Juan - Mod_OC_Skinner - Mod_OC_Morgahard - Mod_OC_Bandit_01 - Mod_OC_Bandit_02;

	if (Mod_Survivors >= 6)
	{
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_01"); //Doskonale, widze, ze wiekszosc z nich udalo sie wam uratowac.
		AI_Output(hero, self, "Info_Mod_Dexter_AngriffVorbei_15_02"); //Tak, nie bylo to latwe, ale przy duzej ilosci umiejetnosci i wsparciu magów transformacji udalo sie to osiagnac.
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_03"); //Wielkie osiagniecie. Oto 500 zlotych monet.

		B_GiveInvItems	(self, hero, ItMi_Gold, 500);

		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_04"); //Nalezy to swietowac. Ale nie dzisiaj.
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_05"); //Bitwa taka, jak dzisiejsza, nawet wyciera najsilniejszy bandyta.

		Mod_AlbertTransforms = 8;

		Mod_Dexter_BanditenParty = Wld_GetDay();
	}
	else if (Mod_Survivors >= 1)
	{
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_06"); //Och, widze, ze niektórzy z nich tego nie zrobili.
		AI_Output(hero, self, "Info_Mod_Dexter_AngriffVorbei_15_07"); //Orki zrodzily na nas wielki ciezar, a niektórzy umarli.
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_08"); //Bardzo niefortunny, wielu dobrych mezczyzn. Ale w walce z hordy orków nalezy sie spodziewac strat.

		Mod_AlbertTransforms = 9;

		Mod_Dexter_BanditenParty = Wld_GetDay();
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_09"); //Ale gdzie sa inni bandyci? Nie da sie ich uratowac?
		AI_Output(hero, self, "Info_Mod_Dexter_AngriffVorbei_15_10"); //Zbyt wiele orków nas atakowalo.
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_11"); //To jest katastrofa! Fucking orki! Jak mozemy isc z naszym magazynem.....

		Mod_AlbertTransforms = 7;

		Mod_Dexter_BanditenParty = Wld_GetDay();
	};

	CreateInvItems	(hero, ItAr_BDT_H_01, 1);

	B_ShowGivenThings	("Otrzymanie ciezkiej zbroi bandytów");

	if (Mod_OC_Miguel == 0)
	{
		B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "START");
		Mod_958_BDT_Miguel_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Juan == 0)
	{
		B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "START");
		Mod_955_BDT_Juan_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Logan == 0)
	{
		B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "START");
		Mod_957_BDT_Logan_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Skinner == 0)
	{
		B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "START");
		Mod_964_BDT_Skinner_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Morgahard == 0)
	{
		B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "START");
		Mod_790_BDT_Morgahard_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Bandit_01 == 0)
	{
		B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "START");
		Mod_4074_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Bandit_02 == 0)
	{
		B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "START");
		Mod_4075_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Esteban == 0)
	{
		B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "START");
		Mod_948_BDT_Esteban_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};

	B_StartOtherRoutine	(Mod_1120_BDT_Ratford_MT, "START");
	Mod_1120_BDT_Ratford_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_StartOtherRoutine	(Mod_961_BDT_Sancho_MT, "START");
	Mod_961_BDT_Sancho_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_StartOtherRoutine	(Mod_1121_BDT_Drax_MT, "START");
	Mod_1121_BDT_Drax_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "START");
	Mod_4072_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "START");
	Mod_4073_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_GivePlayerXP(100+(300*Mod_Survivors));

	B_SetTopicStatus	(TOPIC_MOD_BDT_ORKS, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

FUNC VOID B_Dexter_SayNewArmor()
{
	AI_Output(self, hero, "B_Dexter_SayNewArmor_28_00"); //Ten stary pancerz bandyta moze nie robi najlepszego wrazenia na zewnatrz, ale jest idealny na dluzsze naloty nawet w trudnym terenie..... i duzo podrózujesz.
	AI_Output(self, hero, "B_Dexter_SayNewArmor_28_01"); //Wykonany jest z odpornego materialu i gesto tkany, dzieki czemu w równym stopniu wytrzymuje wszelkie wplywy zewnetrzne.
	AI_Output(self, hero, "B_Dexter_SayNewArmor_28_02"); //Baw sie z tym dobrze!

	B_GiveInvItems	(self, hero, ItAr_BDT_XL, 1);
};

INSTANCE Info_Mod_Dexter_PartyNachRettung (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_PartyNachRettung_Condition;
	information	= Info_Mod_Dexter_PartyNachRettung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_PartyNachRettung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_AngriffVorbei))
	&& (Mod_AlbertTransforms == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_PartyNachRettung_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_PartyNachRettung_28_00"); //(nieco ironiczny) Ahhh, nasz Zbawiciel. Przyjedz tutaj i napój.

	if (Mod_Import_Dexter == LOG_SUCCESS)
	|| (Mod_Import_Dexter == -1)
	{
		AI_Output(self, hero, "Info_Mod_Dexter_PartyNachRettung_28_01"); //Nawiasem mówiac, zajelo mi to troche czasu, ale ja cie poznalem.
		AI_Output(hero, self, "Info_Mod_Dexter_PartyNachRettung_15_02"); //Wtedy wiesz, ze znasz to z powrotem,
		AI_Output(self, hero, "Info_Mod_Dexter_PartyNachRettung_28_03"); //Tak, tak jak wtedy dostalem przepis na ten eliksir z Crazy Kalom. Dostalem cos tutaj. Miec lyk....

		B_GiveInvItems	(self, hero, ItPo_KalomsTrank, 1);

		B_UseItem	(hero, ItPo_KalomsTrank);
	}
	else
	{
		B_GiveInvItems	(self, hero, ItFo_Booze, 1);

		B_UseItem	(hero, ItFo_Booze);

		AI_Output(self, hero, "Info_Mod_Dexter_PartyNachRettung_28_04"); //Znalazlem dla Ciebie cos milego.

		B_Dexter_SayNewArmor();
	};

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Dexter_Wolkenwelt (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Wolkenwelt_Condition;
	information	= Info_Mod_Dexter_Wolkenwelt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Wolkenwelt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_PartyNachRettung))
	&& (Mod_CrazyRabbit >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Wolkenwelt_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Wolkenwelt_28_00"); //Tam znów pan jest. Kiedy byles na drodze w krainie marzen, wydobywalem cos milego dla Ciebie.

	B_Dexter_SayNewArmor();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Dexter_Alissandro (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Alissandro_Condition;
	information	= Info_Mod_Dexter_Alissandro_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Alissandro_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Alissandro))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Alissandro_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Alissandro_28_00"); //Co sie tu dzieje?
	AI_Output(hero, self, "Info_Mod_Dexter_Alissandro_15_01"); //Straznik nie wpusci mnie bez hasla.
	AI_Output(self, hero, "Info_Mod_Dexter_Alissandro_28_02"); //Wiem, ze mozesz wejsc. Idzmy do obozu, gdzie mozemy lepiej porozmawiac.

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Dexter_Botschaft (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Botschaft_Condition;
	information	= Info_Mod_Dexter_Botschaft_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam wiadomosc od Alissandro.";
};

FUNC INT Info_Mod_Dexter_Botschaft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Alissandro))
	&& (Npc_HasItems(hero, ItWr_AliBotschaft) == 1)
	&& (Npc_GetDistToWP(self, "LOCATION_11_12_09") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Botschaft_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_Botschaft_15_00"); //Mam wiadomosc od Alissandro.

	B_GiveInvItems	(hero, self, ItWr_AliBotschaft, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Dexter_Botschaft_28_01"); //Cóz, co sie stalo z obecnym ambasadorem?
	AI_Output(hero, self, "Info_Mod_Dexter_Botschaft_15_02"); //Przed obozem lezal martwy. Dlatego jestem tutaj. Czy zauwazyles cos?
	AI_Output(self, hero, "Info_Mod_Dexter_Botschaft_28_03"); //Bartolosowie chcieli nas zabrac po swojej stronie i byli tu kilka dni temu.

	B_RemoveNpc	(Mod_943_GRD_Bloodwyn_MT);

	Wld_InsertNpc	(Mod_1876_EBR_Bloodwyn_MT, "LOCATION_11_05");
	Wld_InsertNpc	(Mod_1877_GRD_Gardist_MT, "LOCATION_11_05");
	Wld_InsertNpc	(Mod_1878_GRD_Gardist_MT, "LOCATION_11_05");
};

INSTANCE Info_Mod_Dexter_Plan (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Plan_Condition;
	information	= Info_Mod_Dexter_Plan_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz plan?";
};

FUNC INT Info_Mod_Dexter_Plan_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bloodwyn_EBR_Belagerung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Plan_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_Plan_15_00"); //Masz plan?
	AI_Output(self, hero, "Info_Mod_Dexter_Plan_28_01"); //W pewnych okolicznosciach jest jednak dosc ryzykowne.
	AI_Output(hero, self, "Info_Mod_Dexter_Plan_15_02"); //I co to jest?
	AI_Output(self, hero, "Info_Mod_Dexter_Plan_28_03"); //Nie mamy szans na to, aby wszyscy razem straznicy mieli szanse, musimy ich wszystkich zabic na raz.
	AI_Output(hero, self, "Info_Mod_Dexter_Plan_15_04"); //A jak mamy to zrobic?
	AI_Output(self, hero, "Info_Mod_Dexter_Plan_28_05"); //Mach einfach das, was ich sage. Als erstes lockst du einen Gardisten zu mir. Ich belege ihn mit einer "ukosnik" Spruchrolle.
	AI_Output(hero, self, "Info_Mod_Dexter_Plan_15_06"); //Jak go zwabic?
	AI_Output(self, hero, "Info_Mod_Dexter_Plan_28_07"); //Wszyscy pilnuja wejscia, wiec trudno Cie odciagnac. Jest sie jednak czyms w obozie i szuka wlasciwej rzeczy. Atakuj go i zwabij do mnie.

	B_LogEntry	(TOPIC_MOD_AL_BOTSCHAFTER, "Dexter's dostal plan: Mam zaatakowac straznika, który pelni dyzur i zwabic straznika do Dextera.");
};

INSTANCE Info_Mod_Dexter_Gardist (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Gardist_Condition;
	information	= Info_Mod_Dexter_Gardist_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Gardist_Condition()
{
	if (Mod_LocktGardistZuDexter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Gardist_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Gardist_28_00"); //So, nun müssen wir warten, bis seine Kollegen nachschauen, was mit ihm passiert ist. In der Zeit brauchen wir eine "pozar" Spruchrolle. Ich habe für Notfälle eine in meiner Truhe.
	AI_Output(self, hero, "Info_Mod_Dexter_Gardist_28_01"); //Moja klatka piersiowa jest w jaskini. Zostane tu na czas i czekam na strazników. Kiedy daje sygnal, zapala pan czesc wypowiedzi.

	Mob_CreateItems	("DEXTERSTRUHE", ItSc_FireRain, 1);

	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "HOEHLE");
	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "HOEHLE");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "HOEHLE");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "HOEHLE");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "HOEHLE");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "HOEHLE");
	B_StartOtherRoutine	(Mod_7023_BDT_Quentin_MT, "HOEHLE");

	B_StartOtherRoutine	(Mod_1877_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1878_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1879_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1880_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1881_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1882_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1883_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1884_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1885_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1886_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1887_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1888_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1889_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1890_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1108_GRD_Bullit_MT, "FEUERREGEN");
};

INSTANCE Info_Mod_Dexter_Jetzt (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Jetzt_Condition;
	information	= Info_Mod_Dexter_Jetzt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Jetzt_Condition()
{
	if (Mob_HasItems("DEXTERSTRUHE", ItSc_FireRain) == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Dexter_Gardist))
	&& (Npc_GetDistToWP(Mod_1108_GRD_Bullit_MT, "LOCATION_11_08") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Jetzt_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Jetzt_28_00"); //Teraz tak dlugo ukrywam sie w jaskini.
	
	B_StartOtherRoutine	(self, "HOEHLE");
};

INSTANCE Info_Mod_Dexter_Feuerregen (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Feuerregen_Condition;
	information	= Info_Mod_Dexter_Feuerregen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Feuerregen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Jetzt))
	&& (Npc_IsDead(Mod_1108_GRD_Bullit_MT))
	&& (Npc_IsDead(Mod_1877_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1878_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1879_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1880_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1881_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1882_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1883_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1884_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1885_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1886_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1887_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1888_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1889_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1890_GRD_Gardist_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Feuerregen_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Feuerregen_28_00"); //Zwyciezylismy! Dolaczymy do Alissandro. Idz do niego i opowiedz mu o tym.
	
	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "START");
	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "START");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "START");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "START");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "START");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "START");
	B_StartOtherRoutine	(Mod_7023_BDT_Quentin_MT, "START");

	B_LogEntry	(TOPIC_MOD_AL_BOTSCHAFTER, "Wyruszam z deszczu ognia, wszyscy straznicy nie zyja. Dexter i jego faceci dolaczaja do nas. Opowiem o Alissandro.");
};

INSTANCE Info_Mod_Dexter_Eroberung_05 (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Eroberung_05_Condition;
	information	= Info_Mod_Dexter_Eroberung_05_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Eroberung_05_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_Eroberung_04))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Eroberung_05_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Eroberung_05_28_00"); //Potem przenikamy przez....

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Dexter_Eroberung_07 (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Eroberung_07_Condition;
	information	= Info_Mod_Dexter_Eroberung_07_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Eroberung_07_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Hymir_Eroberung_06))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Eroberung_07_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Eroberung_07_28_00"); //... i kopanie Bartholo i jego ludzi w osla.
};

var int Dexter_LastPetzCounter;
var int Dexter_LastPetzCrime;

INSTANCE Info_Mod_Dexter_PMSchulden (C_INFO)
{
	npc         	= Mod_761_BDT_Dexter_MT;
	nr          	= 1;
	condition   	= Info_Mod_Dexter_PMSchulden_Condition;
	information 	= Info_Mod_Dexter_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Dexter_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Dexter_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Dexter_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Dexter_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_00"); //Czy przyszedles/as zaplacic grzywne?

	if (B_GetTotalPetzCounter(self) > Dexter_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_01"); //Zastanawialem sie, czy nawet nie osmieliscie sie tu przyjechac!
		AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_02"); //Najwyrazniej nie sa to ostatnie oskarzenia!

		if (Dexter_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_03"); //Ostrzegam cie! Grzywna, która musisz zaplacic jest teraz wyzsza!
			AI_Output (hero, self, "Info_Mod_Dexter_PMAdd_15_00"); //Ile?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Dexter_LastPetzCounter);
		
			if (diff > 0)
			{
				Dexter_Schulden = Dexter_Schulden + (diff * 50);
			};
		
			if (Dexter_Schulden > 1000)	{	Dexter_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Dexter_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_04"); //Zapusciles mnie tak zle!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Dexter_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_05"); //Pojawily sie nowe rzeczy.
		
		if (Dexter_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_06"); //Nagle nie ma juz nikogo, kto oskarzalby cie o morderstwo.
		};
		
		if (Dexter_LastPetzCrime == CRIME_THEFT)
		|| ( (Dexter_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_07"); //Nikt nie pamieta, ze widzisz sie przy kradziezy.
		};
		
		if (Dexter_LastPetzCrime == CRIME_ATTACK)
		|| ( (Dexter_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_08"); //Nie ma juz zadnych swiadków tego, ze kiedykolwiek walczyles.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_09"); //Widocznie wszystkie zarzuty przeciwko Tobie zniknely.
		};
		
		AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_10"); //Nie wiem, co sie stalo, ale ostrzegam: nie graj ze mna.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_11"); //Zrezygnowalem z waszego zadluzenia.
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_12"); //Upewnij sie, ze nie popadniesz ponownie w klopoty.
	
			Dexter_Schulden			= 0;
			Dexter_LastPetzCounter 	= 0;
			Dexter_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_13"); //Jedno jest pewne: nadal trzeba zaplacic kare w calosci.
			B_Say_Gold (self, hero, Dexter_Schulden);
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_14"); //Co to jest?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Dexter_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Dexter_PETZMASTER);
		Info_AddChoice		(Info_Mod_Dexter_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Dexter_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Dexter_PMSchulden,"Ile to znów bylo?",Info_Mod_Dexter_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Dexter_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Dexter_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Dexter_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Dexter_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Dexter_PMSchulden_HowMuchAgain_15_00"); //Ile to znów bylo?
	B_Say_Gold (self, hero, Dexter_Schulden);

	Info_ClearChoices  	(Info_Mod_Dexter_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Dexter_PETZMASTER);
	Info_AddChoice		(Info_Mod_Dexter_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Dexter_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Dexter_PMSchulden,"Ile to znów bylo?",Info_Mod_Dexter_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Dexter_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Dexter_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Dexter_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Dexter_PETZMASTER   (C_INFO)
{
	npc         	= Mod_761_BDT_Dexter_MT;
	nr          	= 1;
	condition   	= Info_Mod_Dexter_PETZMASTER_Condition;
	information 	= Info_Mod_Dexter_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Dexter_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Dexter_PETZMASTER_Info()
{
	Dexter_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...	
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_01"); //Ciesze sie, ze przyszedles do mnie, zanim sytuacja sie pogorszyla.
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_02"); //Morderstwo jest powaznym wykroczeniem!

		Dexter_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Dexter_Schulden = Dexter_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_03"); //Nie wspominajac o innych rzeczach, które zrobiles.
		};

		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_06"); //Nie interesuje mnie to, ze moge panstwa umiescic na szubienicy.
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_07"); //Ale nie bedzie latwo sprawic, by ludzie znów byli laskawi.
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_08"); //Mozesz okazac swoja pokute placac grzywne - oczywiscie kara musi byc odpowiednia.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_09"); //Dobrze! Jestes oskarzony o kradziez! Sa swiadkowie!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_10"); //Nie chce nawet mówic o innych rzeczach, które slyszalem.
		};

		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_11"); //Nie bede tolerowal takich zachowan tutaj!
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_12"); //Bedziesz musial zaplacic grzywne za swoje przestepstwo!
		
		Dexter_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_13"); //Jesli walczysz z milicja lub cokolwiek innego, to jedno....
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_14"); //Ale jesli zaatakujesz naszych ludzi, bede musial Cie pociagnac do odpowiedzialnosci.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_15"); //I nie sadze, aby tak bylo w przypadku owiec.
		};

		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_16"); //Jesli pozwole wam sie z tym uporac, wszyscy beda robic to, co chca.
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_17"); //Placi sie wiec odpowiednia grzywne - a cala sprawa zostanie zapomniana.
		
		Dexter_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_18"); //Slyszalem, ze balaganiles sie z naszymi owcami.
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_19"); //Zdajesz sobie sprawe, ze nie moge tego przepuscic.
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_20"); //Bedziesz musial wyplacic odszkodowanie!
		
		Dexter_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Dexter_PETZMASTER_15_21"); //Ile?
	
	if (Dexter_Schulden > 1000)	{	Dexter_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Dexter_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Dexter_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Dexter_PETZMASTER);
	Info_AddChoice		(Info_Mod_Dexter_PETZMASTER,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Dexter_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Dexter_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Dexter_PETZMASTER,"Chce zaplacic grzywne.",Info_Mod_Dexter_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Dexter_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Dexter_PETZMASTER_PayNow_15_00"); //Chce zaplacic grzywne!
	B_GiveInvItems (hero, self, itmi_gold, Dexter_Schulden);
	AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_PayNow_28_01"); //Dobrze! Doloze wszelkich staran, aby kazdy z nas sie o tym dowiedzial - wiec Twoja reputacja zostanie w rozsadny sposób przywrócona.

	B_GrantAbsolution (LOC_BANDIT);
	
	Dexter_Schulden			= 0;
	Dexter_LastPetzCounter 	= 0;
	Dexter_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Dexter_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Dexter_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Dexter_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Dexter_PETZMASTER_PayLater_15_00"); //Nie mam wystarczajaco duzo zlota!
	AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_PayLater_28_01"); //Nastepnie zobacz, ze zloto dostaniesz jak najszybciej.
	AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_PayLater_28_02"); //I ostrzegam cie, ze jesli cokolwiek zawdzieczasz sobie, to bedzie ci gorzej.
	
	Dexter_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Dexter_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Dexter_Pickpocket (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Pickpocket_Condition;
	information	= Info_Mod_Dexter_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Dexter_Pickpocket_Condition()
{
	C_Beklauen	(125, ItMi_Gold, 70);
};

FUNC VOID Info_Mod_Dexter_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);

	Info_AddChoice	(Info_Mod_Dexter_Pickpocket, DIALOG_BACK, Info_Mod_Dexter_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Dexter_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Dexter_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Dexter_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);
};

FUNC VOID Info_Mod_Dexter_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);

		Info_AddChoice	(Info_Mod_Dexter_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Dexter_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Dexter_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Dexter_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Dexter_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Dexter_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Dexter_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Dexter_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Dexter_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Dexter_EXIT (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_EXIT_Condition;
	information	= Info_Mod_Dexter_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dexter_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dexter_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
