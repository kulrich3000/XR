INSTANCE Info_Mod_Telbor_Hi (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Hi_Condition;
	information	= Info_Mod_Telbor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_Hi_Condition()
{
	if (Kapitel == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_00"); //Hej, nieznajomy. Co przywoluje pana tutaj w tym trudnym czasie?
	AI_Output(hero, self, "Info_Mod_Telbor_Hi_15_01"); //Wydaje sie pan dosc smutny. Co sie stalo?
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_02"); //Nie wiem nawet, od czego zaczac. Wszystko zaczelo sie od tej mrocznej pielgrzymki....
	AI_Output(hero, self, "Info_Mod_Telbor_Hi_15_03"); //Mroczny pielgrzym?
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_04"); //Tak, przyszedl tu wczoraj wieczorem po schodach i zniknal w lesie.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_05"); //Kilka godzin pózniej wrócil i poprosil Akila o nocleg. Akil jest czlowiekiem wiary i nie chcial naruszac prawa do goscinnosci, nawet jesli pielgrzym nie byl calkiem potworem w ciemnej szacie.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_06"); //W kazdym razie pozostal przez cala noc, w tym czasie nie mówil ani slowa i nastepnego ranka zniknal w kierunku tawerny Orlana.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_07"); //I od tego czasu kleska przybrala swój bieg.
	AI_Output(hero, self, "Info_Mod_Telbor_Hi_15_08"); //Co sie potem stalo?
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_09"); //Na poczatku wszystko zaczelo sie niezauwazalnie. Od tego czasu na cmentarzu w lesie dochodza dziwne odglosy, jeki i jeki.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_10"); //Mój przyjaciel Tonak poszedl zobaczyc, co sie dzieje i nie wrócil. Cos strasznego musialo mu sie przydarzyc.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_11"); //Ale to dopiero poczatek. Ehnim i Egill mieli kilka mniejszych walk, ale tego dnia byli jak dzikie wilki.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_12"); //Zaczelo sie od niewielkiej wymiany slów, która szybko przerodzila sie w gwaltowny spór.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_13"); //Obydwaj byli tak zdenerwowani, ze Egill uderzyl brata tak nieszczesliwego sierpa na szyi, ze zostal ciezko ranny.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_14"); //Przerazony jego wlasnymi dzialaniami Egill uciekl w kierunku Orlanu i od tego czasu równiez zniknal.

	Log_CreateTopic	(TOPIC_MOD_AKILSHOF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AKILSHOF, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_DUNKLERPILGER, TOPIC_MOD_AKILSHOF, "Staje sie coraz bardziej tajemniczy. Od czasu, gdy do farmy Akila przybyl mroczny pielgrzym, wydarzyly sie tam niszczycielskie wydarzenia. Potem zniknal w kierunku tawerny.", "Od czasu wizyty pielgrzymów na farmie zdarzyly sie niepokojace wydarzenia. Z cmentarza w lesie wydarzyly sie dziwne dzwieki. Tonak nie wrócil po tym, jak próbowal tam patrzec. Egill i Ehnim poszli sobie nawzajem jak szalony. Ehnim byl ciezko ranny i Egill uciekl do tawerny.");

	B_GivePlayerXP	(200);

	Wld_InsertNpc	(Zombie_Tonak, "WP_GAMPLE_TONAK_ZOMBIE");

	Mod_AkilsHof_WaitingForDeath = Wld_GetDay();
};

INSTANCE Info_Mod_Telbor_WhatHappenedNext (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WhatHappenedNext_Condition;
	information	= Info_Mod_Telbor_WhatHappenedNext_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co z innymi na podwórku?";
};

FUNC INT Info_Mod_Telbor_WhatHappenedNext_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WhatHappenedNext_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_WhatHappenedNext_15_00"); //A co z innymi na podwórku? Dlaczego nie wszyscy razem szukali?
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext_12_01"); //Gdyby tylko inni mogli to zrobic. Od tamtej nocy wszyscy sa powaznie chorzy i wycofali sie do domu.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext_12_02"); //Lepiej jest, jesli nie zblizysz sie do nich zbyt blisko, mozesz równiez zachorowac.

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "Wszyscy pozostali sa powaznie chorzy i przeszli na emeryture.");
};

INSTANCE Info_Mod_Telbor_WhatHappenedNext2 (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WhatHappenedNext2_Condition;
	information	= Info_Mod_Telbor_WhatHappenedNext2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co jest z Toba? Czy masz racje?";
};

FUNC INT Info_Mod_Telbor_WhatHappenedNext2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_WhatHappenedNext))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WhatHappenedNext2_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_WhatHappenedNext2_15_00"); //Co jest z Toba? Czy masz racje?
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext2_12_01"); //To prawda, nie wspomnialem nawet o tym.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext2_12_02"); //Bylem tamtej nocy w miescie, aby dostarczyc towar i zrobic inne rzeczy, a kiedy bylo juz zbyt ciemno na droge powrotna, zostalem w hostelu na noc.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext2_12_03"); //Wrócilem wczesnie rano nastepnego ranka i wlasnie zobaczylem, jak pielgrzym wyjezdza do Orlanu.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext2_12_04"); //Ten przeklety pasjonat, ten tarlo zla. Musi byc za to odpowiedzialny.
};

INSTANCE Info_Mod_Telbor_WhatHappenedNext3 (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WhatHappenedNext3_Condition;
	information	= Info_Mod_Telbor_WhatHappenedNext3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co zamierzasz teraz zrobic?";
};

FUNC INT Info_Mod_Telbor_WhatHappenedNext3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_WhatHappenedNext2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WhatHappenedNext3_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_WhatHappenedNext3_15_00"); //Co zamierzasz teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_01"); //Nie wiem, panie posle. Nie moge tu i tak wyjechac.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_02"); //Musze zostac tam, aby ostrzec przejezdzajacych spacerowiczów przed zblizaniem sie do domu.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_03"); //Ponadto dzikie zwierzeta z lasu moga padac na rannego Ehnima i chorych.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_04"); //Ale z drugiej strony bezwzglednie potrzebuja lekarstw i uzdrowienia Ehnim, w przeciwnym razie moga nie przezyc nastepnych dni.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_05"); //Jesli znajda Panstwo czas i srodki na to, chcialbym prosic Panstwa, aby spróbowali Panstwo gdzies znalezc pomoc dla nas.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_06"); //Moze w klasztorze lub w miescie, gdzie jest leczniczy magik wodny..... lub ziól w poblizu wielkiej farmy.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_07"); //Ale prosze spieszyc sie, bo w zlym stanie.

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "Telbor poprosil mnie, abym zapewnil Ehnimowi uzdrowienie i lekarstwa dla chorych, abym zatrzymal ich kalectwo. Powiedzial, ze byc moze uda mi sie znalezc wsparcie w klasztorze, w miescie z magikiem wody lub ziolami w poblizu wielkiego gospodarstwa.");
};

INSTANCE Info_Mod_Telbor_TonakZombie (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_TonakZombie_Condition;
	information	= Info_Mod_Telbor_TonakZombie_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem twojego przyjaciela Tonaka.";
};

FUNC INT Info_Mod_Telbor_TonakZombie_Condition()
{
	if (Mod_KnowsTonakZombie == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_TonakZombie_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_TonakZombie_15_00"); //Znalazlem twojego przyjaciela Tonaka.
	AI_Output(self, hero, "Info_Mod_Telbor_TonakZombie_12_01"); //Gdzie on jest?
	AI_Output(hero, self, "Info_Mod_Telbor_TonakZombie_15_02"); //Um.....
	AI_Output(self, hero, "Info_Mod_Telbor_TonakZombie_12_03"); //Dlaczego nie przyjechal z Toba? Cos mu sie nie przytrafilo, czy to? Krótko trzyma sie) On nie.... martwy?

	if (Npc_IsDead(Zombie_Tonak))
	{
		AI_Output(hero, self, "Info_Mod_Telbor_TonakZombie_15_04"); //No cóz, wiec.... cóz, cokolwiek. Wedruje na cmentarzu z zombie i innymi nieumarlymi draniemi.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Telbor_TonakZombie_15_05"); //No cóz, wiec.... cóz, cokolwiek. Spaceruje po cmentarzu z zombie i innymi nieumarlymi draniemi.
	};

	AI_Output(self, hero, "Info_Mod_Telbor_TonakZombie_12_06"); //Najpierw bede musial to najpierw strawic.
	
	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Telbor_Gerettet (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Gerettet_Condition;
	information	= Info_Mod_Telbor_Gerettet_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_Gerettet_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_Gerettet_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_Gerettet_12_00"); //Tak naprawde to pan zrobil. Badzcie pewni, ze moje wieczne podziekowania. Bez Was wszyscy bylibysmy zagubieni.
	
	B_GivePlayerXP	(150);

	B_StartOtherRoutine	(Mod_900_BAU_Akil_NW, "START");
	B_StartOtherRoutine	(Mod_906_BAU_Randolph_NW, "FOLLOWPLAYER");
	B_StartOtherRoutine	(Mod_905_BAU_Kati_NW, "START");
	B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "START");

	B_SetTopicStatus	(TOPIC_MOD_AKILSHOF, LOG_SUCCESS);

	CurrentNQ += 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_39);
};

INSTANCE Info_Mod_Telbor_AllDead (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_AllDead_Condition;
	information	= Info_Mod_Telbor_AllDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_AllDead_Condition()
{
	if (Mod_AkilsHofAusgestorben == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_AllDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_AllDead_12_00"); //Zbyt pózno. W domu sa rózne. Wkrótce bede ja pochowac.
	
	B_GivePlayerXP	(50);

	Mod_AkilsHof_WaitingForDeath = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "Musialem poswiecic zbyt wiele czasu. Chorzy nie sa juz wsród nas.");
	B_SetTopicStatus	(TOPIC_MOD_AKILSHOF, LOG_SUCCESS);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_40);
};

INSTANCE Info_Mod_Telbor_AllZombies (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_AllZombies_Condition;
	information	= Info_Mod_Telbor_AllZombies_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_AllZombies_Condition()
{
	if (Mod_AkilsHofAusgestorben == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_AllZombies_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_00"); //Czy Innos nie ma zadnego milosierdzia? Jak moze pozwolic mu na taka okropna sytuacje?
	AI_Output(hero, self, "Info_Mod_Telbor_AllZombies_15_01"); //Tak, musi byc twarda, ale smierc jest czescia zycia.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_02"); //Zycie? Smierc! Gdyby to bylo tylko to - gdyby to bylo Kiedy wczoraj chcialem pogrzebac biednych, nagle zaczeli sie ruszac.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_03"); //Stalem nieruchomo, zdumiony i nieruchomy, patrzac jak wznosza sie. Byla noc i ciemno w domu, wiec nie moglem zobaczyc ich twarzy.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_04"); //Kiedy stali przed mna, wierzylem w cud.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_05"); //Kiedy jednak zblizylem sie do nich, nagle zaczeli bic mnie za mna i wydawac straszne, torturowane dzwieki.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_06"); //Odwrócilem sie do tylu i zobaczylem teraz twarz Akila jako swiatlo ksiezyca. Byl okrutnie wypaczony martwymi, bezekspresyjnymi oczami.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_07"); //Wszyscy oni stali sie obrzydliwymi zombiemi. W ostatniej chwili moglem jeszcze wypadnac z domu, w przeciwnym razie skonczylbym jako posilek tych nieumarlych.
	AI_Output(hero, self, "Info_Mod_Telbor_AllZombies_15_08"); //Hmm, tak, to oczywiscie zle.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_09"); //Z pewnoscia nie chce spedzac chwili w tym przekletym miejscu.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_10"); //Idziemy do miasta i mamy nadzieje, ze czeka nas tam lepszy los. Jest tylko nieszczescie, smierc.... a jeszcze gorzej....

	B_GivePlayerXP	(100);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "CITY");

	if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "CITY");
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "CITY");
	};
};

INSTANCE Info_Mod_Telbor_WantingToHof (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WantingToHof_Condition;
	information	= Info_Mod_Telbor_WantingToHof_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_WantingToHof_Condition()
{
	if (Kapitel >= 3)
	&& (Mod_Telbor_GoingToHof == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Telbor_AllZombies))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WantingToHof_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_WantingToHof_12_00"); //Witaj, czy sa jakies wiadomosci z zewnatrz?
	AI_Output(hero, self, "Info_Mod_Telbor_WantingToHof_15_01"); //Cóz, w tej chwili jest duzo pecha miedzy bogami, demonami i magikami. Trudne czasy sa trudne.
	AI_Output(hero, self, "Info_Mod_Telbor_WantingToHof_15_02"); //A co musisz zglosic? Jak wyglada zycie w miescie?
	AI_Output(self, hero, "Info_Mod_Telbor_WantingToHof_12_03"); //Ach, to egzystencja niegodna. Jakos trzeba byc robotnikiem lub prowadzic owce na lake.
	AI_Output(self, hero, "Info_Mod_Telbor_WantingToHof_12_04"); //W owym czasie na farmie Akila nie zawsze bylo to latwe, ale to byla prawdziwa praca, za która zostaliscie równiez nagrodzeni dobrymi zbiorami i uznaniem.
	AI_Output(self, hero, "Info_Mod_Telbor_WantingToHof_12_05"); //Oto nie jestem niczym innym jak zlodziejem i mama.
};

INSTANCE Info_Mod_Telbor_WhyNotHof (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WhyNotHof_Condition;
	information	= Info_Mod_Telbor_WhyNotHof_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego nie rozpoczynasz dzialalnosci i nie uruchomisz gospodarstwa Akila?";
};

FUNC INT Info_Mod_Telbor_WhyNotHof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_WantingToHof))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WhyNotHof_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_WhyNotHof_15_00"); //Dlaczego nie rozpoczynasz dzialalnosci i nie uruchomisz gospodarstwa Akila?
	AI_Output(self, hero, "Info_Mod_Telbor_WhyNotHof_12_01"); //Piekne marzenie, ale dopóki zyja tam jeszcze nieumarli, z pewnoscia nie postawie tam stopy.
	AI_Output(self, hero, "Info_Mod_Telbor_WhyNotHof_12_02"); //Cóz, o czym powinienem dalej mówic? Owce musza byc dojone. Dziekujemy za wywiad.

	Log_CreateTopic	(TOPIC_MOD_TELBOR_WEHMUT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TELBOR_WEHMUT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TELBOR_WEHMUT, "Telbor narzekal na zycie w miescie. Chcialby ponownie prowadzic gospodarstwo Akila, ale obawia sie nieumarlych w domu.");
};

INSTANCE Info_Mod_Telbor_ZombiesWeg (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_ZombiesWeg_Condition;
	information	= Info_Mod_Telbor_ZombiesWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nieumarli w domu zniknely.";
};

FUNC INT Info_Mod_Telbor_ZombiesWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_WhyNotHof))
	&& (Npc_IsDead(Zombie_Akil))
	&& (Npc_IsDead(Zombie_Randolph))
	&& (Npc_IsDead(Zombie_Kati))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_ZombiesWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_ZombiesWeg_15_00"); //Nieumarli w domu zniknely.
	AI_Output(self, hero, "Info_Mod_Telbor_ZombiesWeg_12_01"); //Co tak naprawde? Dziekujemy za usrednianie. Tak, wlasciwie, moglem wrócic teraz, tylko....
	AI_Output(hero, self, "Info_Mod_Telbor_ZombiesWeg_15_02"); //Tak, co jeszcze?
	AI_Output(self, hero, "Info_Mod_Telbor_ZombiesWeg_12_03"); //Wolalbym poczekac i zobaczyc, czy mroczny pielgrzym nie wróci do swojej zlosliwosci.
	AI_Output(self, hero, "Info_Mod_Telbor_ZombiesWeg_12_04"); //Ach, jesli tylko ja móglbym byc pewien, ze juz nigdy wiecej nie zaszkodzi.....

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_TELBOR_WEHMUT, "Cóz, mroczny pielgrzym lub, w zaleznosci od przypadku, Urnol nadal daje mu powód do niepokoju. Zanim Telbor nie moze byc pewny, ze pozostanie przez niego nieskrepowany, chce czekac na powrót do gospodarstwa.");
};

INSTANCE Info_Mod_Telbor_PilgerTot (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_PilgerTot_Condition;
	information	= Info_Mod_Telbor_PilgerTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ohydny pielgrzym nigdy wiecej juz nikomu nie zaszkodzi.";
};

FUNC INT Info_Mod_Telbor_PilgerTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_ZombiesWeg))
	&& (Mod_IstUrnolTot == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_PilgerTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_PilgerTot_15_00"); //Ohydny pielgrzym nigdy wiecej juz nikomu nie zaszkodzi.
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_01"); //Co naprawde jestes pewien?
	AI_Output(hero, self, "Info_Mod_Telbor_PilgerTot_15_02"); //Tak, zobaczylem, jak on schodzil.
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_03"); //Co za mila wiadomosc. Czy ten obrzydliwy pasjonat nadal jest karany?
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_04"); //Niech plonie z Beliarem przez cala wiecznosc.
	AI_Output(hero, self, "Info_Mod_Telbor_PilgerTot_15_05"); //Wiec teraz wracasz do pracy na farmie?
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_06"); //Tak, teraz wydaje sie, ze nic nie stoi na przeszkodzie. To po prostu......
	AI_Output(hero, self, "Info_Mod_Telbor_PilgerTot_15_07"); //Co jeszcze teraz?
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_08"); //No cóz, bez dodatkowych pracowników trudno bedzie prowadzic gospodarstwo.
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_09"); //Do tej pory powinny tam byc jeszcze dwie kolejne farmhands i pokojówka. Ale teraz, ze mam je szybko znalezc.....

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_TELBOR_WEHMUT, "Tym razem brakuje dwóch pracowników i sluzacej, aby mozna bylo wznowic prace w gospodarstwie.");
};

INSTANCE Info_Mod_Telbor_FarmWorking (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_FarmWorking_Condition;
	information	= Info_Mod_Telbor_FarmWorking_Info;
	permanent	= 0;
	important	= 0;
	description	= "Teraz mozesz wrócic na podwórko.";
};

FUNC INT Info_Mod_Telbor_FarmWorking_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_PilgerTot))
	&& (Npc_KnowsInfo(hero, Info_Mod_Onar_BauernFuerAkil))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_FarmWorking_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_FarmWorking_15_00"); //Teraz mozesz wrócic na podwórko.
	AI_Output(hero, self, "Info_Mod_Telbor_FarmWorking_15_01"); //W rzeczywistosci znalezli sie dwaj robotnicy rolni i sluzaca, którzy pomoga odbudowac gospodarstwo.
	AI_Output(self, hero, "Info_Mod_Telbor_FarmWorking_12_02"); //Czy to prawda? Wtedy Innos moze nie zapomnial o nas, gdy wysyla nam bezinteresownego pomocnika, takiego jak ty.
	AI_Output(self, hero, "Info_Mod_Telbor_FarmWorking_12_03"); //Nie wiem, jak wam podziekowac. Niech blogoslawienstwo bedzie z wami na zawsze.
	
	B_SetTopicStatus	(TOPIC_MOD_TELBOR_WEHMUT, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1409_BAU_Bauer_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1410_BAU_Bobo_NW, "ATAKIL");

	if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "START");
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "START");
	};

	Mod_Telbor_HofBesetzt = Wld_GetDay();

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Telbor_Hausbesetzer (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Hausbesetzer_Condition;
	information	= Info_Mod_Telbor_Hausbesetzer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_Hausbesetzer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_FarmWorking))
	&& (Mod_Telbor_GoingToHof == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_Hausbesetzer_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_Hausbesetzer_12_00"); //Czy nie konczy sie wcale?
	AI_Output(hero, self, "Info_Mod_Telbor_Hausbesetzer_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Telbor_Hausbesetzer_12_02"); //Niektóre nieznane postaci zajely nasz dom.
	AI_Output(self, hero, "Info_Mod_Telbor_Hausbesetzer_12_03"); //Z pewnoscia nie postawimy tam kolejnej stopy, dopóki oni nie odejda.

	Log_CreateTopic	(TOPIC_MOD_TELBOR_HAUSBESETZER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TELBOR_HAUSBESETZER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TELBOR_HAUSBESETZER, "Telbor narzeka, ze nie jest juz w stanie wejsc do domu, poniewaz osiedlily sie tam zlowieszcze stworzenia.");
};

INSTANCE Info_Mod_Telbor_Uriela (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Uriela_Condition;
	information	= Info_Mod_Telbor_Uriela_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_Uriela_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_LiveTogether))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_Uriela_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_Uriela_12_00"); //Czy wreszcie wypedzilas ja z domu?
	AI_Output(hero, self, "Info_Mod_Telbor_Uriela_15_01"); //Nie. Sa oni uchodzcami, którzy, podobnie jak wy, cierpieli pod panem mrocznego pielgrzyma.
	AI_Output(hero, self, "Info_Mod_Telbor_Uriela_15_02"); //Czy nie mozna sobie wyobrazic zamieszkiwania z nimi przez jakis czas?
	AI_Output(self, hero, "Info_Mod_Telbor_Uriela_12_03"); //Co? Beliars z tym brudem? Nigdy nigdy!
};

INSTANCE Info_Mod_Telbor_TalkAgain (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_TalkAgain_Condition;
	information	= Info_Mod_Telbor_TalkAgain_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobrze, potem porozmawiam z nimi jeszcze raz.";
};

FUNC INT Info_Mod_Telbor_TalkAgain_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Uriela))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Telbor_GoBackToCity))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_TalkAgain_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_TalkAgain_15_00"); //Dobrze, potem porozmawiam z nimi jeszcze raz.

	B_LogEntry	(TOPIC_MOD_TELBOR_HAUSBESETZER, "Pod zadnym pozorem Telbor nie moze sobie wyobrazic zycia z Belianami. Wtedy bede musial spróbowac przekonac Uriele, aby udala sie gdzie indziej.");
};

INSTANCE Info_Mod_Telbor_GoBackToCity (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_GoBackToCity_Condition;
	information	= Info_Mod_Telbor_GoBackToCity_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wszystkie sluszne, wszystkie sluszne. Jesli nie lubisz, mozesz wrócic do miasta.";
};

FUNC INT Info_Mod_Telbor_GoBackToCity_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Uriela))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Telbor_TalkAgain))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_GoBackToCity_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_GoBackToCity_15_00"); //Wszystkie sluszne, wszystkie sluszne. Jesli nie lubisz, mozesz wrócic do miasta.
	AI_Output(self, hero, "Info_Mod_Telbor_GoBackToCity_12_01"); //Wlasnie to robie. Inni moga robic, co chca.
	AI_Output(self, hero, "Info_Mod_Telbor_GoBackToCity_12_02"); //I chcialbym powiedziec, ze jestem w Tobie bardzo rozczarowany.
	AI_Output(self, hero, "Info_Mod_Telbor_GoBackToCity_12_03"); //Bardzo sie mylilem.
	
	B_SetTopicStatus	(TOPIC_MOD_TELBOR_HAUSBESETZER, LOG_FAILED);

	Wld_InsertNpc	(FeldarbeiterSkelett_Akil, "FARM2");

	B_GivePlayerXP	(150);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "CITY");
	B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1409_BAU_Bauer_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1410_BAU_Bobo_NW, "ATAKIL");

	if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "START");
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "START");
	};
};

INSTANCE Info_Mod_Telbor_SindWeg (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_SindWeg_Condition;
	information	= Info_Mod_Telbor_SindWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_SindWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_TeachingFinished))
	|| (Npc_KnowsInfo(hero, Info_Mod_Uriela_Bengar))
	|| (Mod_UrielaCo_Weg == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_SindWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_SindWeg_12_00"); //Czy dom jest wreszcie pusty?
	AI_Output(hero, self, "Info_Mod_Telbor_SindWeg_15_01"); //Tak, mozna bylo wrócic do srodka.
	AI_Output(self, hero, "Info_Mod_Telbor_SindWeg_12_02"); //Ponownie zawdzieczam panstwu dlug wdziecznosci. Mam nadzieje, ze moze to przynajmniej zrekompensowac panu cos.

	B_GivePlayerXP	(300);

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_TELBOR_HAUSBESETZER, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1409_BAU_Bauer_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1410_BAU_Bobo_NW, "ATAKIL");

	if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "START");
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "START");
	};

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Telbor_Pickpocket (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Pickpocket_Condition;
	information	= Info_Mod_Telbor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Telbor_Pickpocket_Condition()
{
	C_Beklauen	(40, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Telbor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

	Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_BACK, Info_Mod_Telbor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Telbor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Telbor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);
};

FUNC VOID Info_Mod_Telbor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

		Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Telbor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Telbor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Telbor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Telbor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Telbor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Telbor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Telbor_EXIT (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_EXIT_Condition;
	information	= Info_Mod_Telbor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Telbor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Telbor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
