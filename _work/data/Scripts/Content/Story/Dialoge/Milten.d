INSTANCE Info_Mod_Milten_Hi (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Hi_Condition;
	information	= Info_Mod_Milten_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Milten_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_Hi_03_00"); //(Przypomniales) UZYTKOWNIK! Odczekac minute..... Teraz zawdziecza mi pan kilka odpowiedzi!
	AI_Output(hero, self, "Info_Mod_Milten_Hi_15_01"); //Wiem. Tak, zabilem sypialnia i tak, zginalem ja. Wlasciwie. Ale teraz stoje tutaj.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_03_02"); //Widze fakty przed mna - ale jak to fuck!
	AI_Output(hero, self, "Info_Mod_Milten_Hi_15_03"); //Xardas.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_03_04"); //(smiech) Wszystko w porzadku, potem wiem. Zdecydowanie dobrze jest wiedziec, ze jestes tutaj.
	AI_Output(hero, self, "Info_Mod_Milten_Hi_15_05"); //Zrobiles sie zadziwiajaco szybko. Czy zostales oficjalnie przyjety do Wspólnoty Magii Pozarniczej?
	AI_Output(self, hero, "Info_Mod_Milten_Hi_03_06"); //Tak, ale wymagalo to wielu przekonujacych dzialan. No cóz, nie mialem zwolenników, nie mialem przyzwoitych szkolen. Ale robiac magie, bije ich wszystkich tutaj, szybko to zrozumieli.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_03_07"); //Wiec moglem sie od razu uratowac nowicjuszowi szate.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_03_08"); //I ty? Jakie sa Twoje plany?
	
	Info_ClearChoices(Info_Mod_Milten_Hi);
	
	Info_AddChoice(Info_Mod_Milten_Hi, "Interesuja mnie magicy ognia.", Info_Mod_Milten_Hi_B);
	Info_AddChoice(Info_Mod_Milten_Hi, "Musze sie sam przekonac.", Info_Mod_Milten_Hi_A);
};

FUNC VOID Info_Mod_Milten_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Milten_Hi_B_15_00"); //Interesuja mnie magicy ognia.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_B_03_01"); //Gratuluje, potem przyszedles do klasztoru! Oczywiscie docenilabym to, gdybyscie do nas dolaczyli.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_B_03_02"); //A co z twoimi umiejetnosciami?
	AI_Output(hero, self, "Info_Mod_Milten_Hi_B_15_03"); //Zle. Wszystko musze uczyc sie od zera.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_B_03_04"); //Och, drodzy, nie ma sposobu, abyscie mogli przejsc nowicjat. Ale nie martw sie, to juz minie.
	
	Info_ClearChoices(Info_Mod_Milten_Hi);
};

FUNC VOID Info_Mod_Milten_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Milten_Hi_A_15_00"); //Musze sie sam przekonac.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_A_03_01"); //Nic dziwnego o tym, co przezyles. Poswiec troche czasu.
	AI_Output(self, hero, "Info_Mod_Milten_Hi_A_03_02"); //Moze poczujesz sie nawet jak dolaczyc do klasztoru na koncu. Bylbym szczesliwy.
	
	Info_ClearChoices(Info_Mod_Milten_Hi);
};

INSTANCE Info_Mod_Milten_Daemonisch (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Daemonisch_Condition;
	information	= Info_Mod_Milten_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrnolKap4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_03_00"); //Witam, mam nadzieje, ze nie przeszkadzalo mi ci to.....
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch_15_01"); //Nie, nie, dopiero konczyli.
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_03_02"); //Wyglada na to, ze znów jest duzo tajnosci w grze, tak samo jak wyodrebniles sie od innych..... No cóz, zreszta jestem z Lester.
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch_15_03"); //Wczoraj? Co sie z nim dzieje?
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_03_04"); //Chce, abym ci powiedzial, ze modyfikuje niektóre z glównych ról.
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_03_05"); //Moga pomóc Ci znalezc bron bogów.
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch_15_06"); //Dobrze, dziekuje. Zatrzymam sie na jego miejscu.
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_03_07"); //Tak, zrób to. Bede jednak opiekowal sie tym incydentem wraz z póznym nowicjuszem.
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch_15_08"); //Smierc nowicjusza!
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_03_09"); //Dyrian, dzis rano nagle zmarl. Babo widzial, ze tak sie stalo.
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch_03_10"); //Musial wziac biednego czlowieka dosc duzo z nim, jak on ledwie zyskal slowo z niego od tego czasu.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	AI_Teleport	(self, "ALTAR");

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Milten poinformowal, ze Dyrian nagle zmarl. Eyewitness Babo wydaje sie dosc zdenerwowany.");

	B_StartOtherRoutine	(Mod_793_BAU_Pepe_NW, "DAEMONISCH");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "DAEMONISCH");
	B_StartOtherRoutine	(Mod_566_NONE_Brian_NW, "DAEMONISCH");
	B_StartOtherRoutine	(Mod_981_RIT_Tengron_NW, "DAEMONISCH");
	B_StartOtherRoutine	(Mod_914_NOV_Babo_NW, "DAEMONISCH2");
	B_StartOtherRoutine	(Mod_538_RDW_Diego_NW, "DAEMONISCH");

	B_KillNpc	(Mod_1205_SLD_Soeldner_NW);

	B_RemoveNpc	(Mod_777_NONE_Rukhar_NW);
	B_RemoveNpc	(Mod_915_NOV_Dyrian_NW);

	Wld_InsertNpc	(Zombie_Paladin_01, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Zombie_Paladin_02, "NW_CITY_SMFOREST_03");

	Wld_InsertNpc	(Mod_13000_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13001_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13002_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13003_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13004_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");

	Wld_InsertNpc	(Mod_13005_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13006_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13007_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13008_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");

	Wld_InsertNpc	(Mod_13009_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13010_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13011_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13012_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");

	Wld_InsertNpc	(Mod_13013_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13014_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13015_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc	(Mod_13016_SP_Seelenpeiniger_NW, "NW_CITY_SMFOREST_03");
};

INSTANCE Info_Mod_Milten_Daemonisch2 (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Daemonisch2_Condition;
	information	= Info_Mod_Milten_Daemonisch2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcialbym cos wiedziec.";
};

FUNC INT Info_Mod_Milten_Daemonisch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ulthar_Daemonisch))
	&& (hero.guild != GIL_VLK)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Daemonisch2_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch2_15_00"); //Chcialbym cos wiedziec.
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch2_03_01"); //Tak, o co to chodzi?
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch2_15_02"); //Na czym polega wino klasztorne?
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch2_03_03"); //Hmm, nie wiem, czy powinienem ci to powiedziec. Wiedza ta jest wlasciwie przeznaczona tylko dla strazaków.
	AI_Output(hero, self, "Info_Mod_Milten_Daemonisch2_15_04"); //Moze sie to okazac wazne.
	AI_Output(self, hero, "Info_Mod_Milten_Daemonisch2_03_05"); //Wszystkie sluszne, wszystkie sluszne. Wiec wziac piec butelek zwyklego wina, isc z nim do swiatyni Innos, poswiecic go i rozprowadzic eliksir do uzdrowienia obsesji z nim. To równiez o to chodzi.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Dla klasztornego wina, piec zwyklych butelek wina jest zabieranych, rozdawanych w Innoshrine butelke uzdrawiania obsesji na nia i blogoslawionych.");
};

INSTANCE Info_Mod_Milten_Irdorath (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Irdorath_Condition;
	information	= Info_Mod_Milten_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak zapewne panstwo wiedza, musze udac sie na wyspe.";
};

FUNC INT Info_Mod_Milten_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Irdorath_15_00"); //Jak zapewne panstwo wiedza, musze udac sie na wyspe.
	AI_Output(hero, self, "Info_Mod_Milten_Irdorath_15_01"); //Czy mozesz pomyslec o kimkolwiek, kto móglby pójsc ze mna?
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath_03_02"); //Hmm, posród magów strazy pozarnej klasztoru kazdy ma przypisane mu zadania.
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath_03_03"); //Nie bedzie latwo znalezc kogos, kto nie chce zostac pominiety......
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath_03_04"); //Wsród paladynów, najprawdopodobniej bedziesz mógl liczyc na Tengrona jako swojego towarzysza, który juz wykazal sumiennosc w zagrozeniu dreczyciela duszy i jest przeznaczony do uwolnienia dla misji?

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Milten powiedzial, ze byc moze Paladin Tengron moze uda sie wygrac na wycieczke.");
};

INSTANCE Info_Mod_Milten_Irdorath2 (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Irdorath2_Condition;
	information	= Info_Mod_Milten_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co z Toba?";
};

FUNC INT Info_Mod_Milten_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Irdorath2_15_00"); //A co z Toba?
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath2_03_01"); //Nie jestem zwiazany z klasztorem. Jak pytaja mnie Panstwo, z przyjemnoscia towarzyszyc Panstwu w tej przygodzie.
	AI_Output(hero, self, "Info_Mod_Milten_Irdorath2_15_02"); //Wtedy witam pana na pokladzie. Zobacze cie w porcie.
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath2_03_03"); //Doskonaly. Do zobaczenia pózniej.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Wspanialy, z Miltenem mialbym na pokladzie maga ognia.");

	B_GivePlayerXP	(150);

	Mod_MiltenDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Milten_Irdorath3 (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Irdorath3_Condition;
	information	= Info_Mod_Milten_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze to zbyt wiele.";
};

FUNC INT Info_Mod_Milten_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_MiltenDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	&& ((Mod_VatrasDabei > 0)
	|| (Mod_NamibDabei > 0)
	|| (Mod_MyxirDabei > 0))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze to zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath3_03_01"); //Zbyt zle. Wróce wtedy. Wiesz, gdzie mnie znalezc, jesli kiedykolwiek zostanie jakies miejsce.

	Mod_MiltenDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Milten_Irdorath4 (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Irdorath4_Condition;
	information	= Info_Mod_Milten_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Moge dac ci przejazdzke.";
};

FUNC INT Info_Mod_Milten_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_MiltenDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Irdorath4_15_00"); //Moge dac ci przejazdzke. Na statku znajduje sie pomieszczenie.
	AI_Output(self, hero, "Info_Mod_Milten_Irdorath4_03_01"); //Bardzo dobrze, wróce do portu.

	Mod_MiltenDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Milten_Aufgabe (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Aufgabe_Condition;
	information	= Info_Mod_Milten_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz dla mnie prace?";
};

FUNC INT Info_Mod_Milten_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Mitglied))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Aufgabe_15_00"); //Masz dla mnie prace? Pyrokar mówi, ze musze zrobic cos dla kazdego czarownika, aby dostac sie do srodka.
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_03_01"); //Hmmmmm.....
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_03_02"); //Jest cos, z czym mozesz mi pomóc. Jest to jednak dosc niebezpieczne.

	Info_ClearChoices	(Info_Mod_Milten_Aufgabe);

	Info_AddChoice	(Info_Mod_Milten_Aufgabe, "Jak moge Ci pomóc?", Info_Mod_Milten_Aufgabe_Wie);
};

FUNC VOID Info_Mod_Milten_Aufgabe_Wie()
{
	AI_Output(hero, self, "Info_Mod_Milten_Aufgabe_Wie_15_00"); //Jak moge Ci pomóc?
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Wie_03_01"); //Nauczyciel Neoras poprosil mnie, abym zaparzyl eliksir.
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Wie_03_02"); //Potrzebujesz jednak bardzo rzadkiej rosliny i nie jest latwo ja dostac.

	Info_ClearChoices	(Info_Mod_Milten_Aufgabe);
	
	Info_AddChoice	(Info_Mod_Milten_Aufgabe, "Jaka jest to roslina?", Info_Mod_Milten_Aufgabe_Pflanze);
};

FUNC VOID Info_Mod_Milten_Aufgabe_Pflanze()
{
	AI_Output(hero, self, "Info_Mod_Milten_Aufgabe_Pflanze_15_00"); //Jaka jest to roslina?
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Pflanze_03_01"); //Roslina ta nosi nazwe Sonnenaloe i rosnie tylko w poblizu Black Troll.
	AI_Output(hero, self, "Info_Mod_Milten_Aufgabe_Pflanze_15_02"); //CZARNY TROLL?
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Pflanze_03_03"); //Tak, dlatego jeszcze nie moglem skonczyc eliksiru. Samotnie nie jest mozliwe, aby magik taki jak ja zabil trolle.
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Pflanze_03_04"); //Móglbym Ci pomóc z moja magia, a nastepnie mozesz zlapac rosline.
	AI_Output(hero, self, "Info_Mod_Milten_Aufgabe_Pflanze_15_05"); //A gdzie jest ten troll?
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Pflanze_03_06"); //Mieszka w jaskini na pólnoc od wyspy. Moge uratowac nam troche podróz, teleportujac nas z klasztoru.
	AI_Output(self, hero, "Info_Mod_Milten_Aufgabe_Pflanze_03_07"); //Musimy przejsc reszte drogi. Prosze pozwolic mi wiedziec, kiedy sie zaczyna.

	Info_ClearChoices	(Info_Mod_Milten_Aufgabe);

	Log_CreateTopic	(TOPIC_MOD_MILTEN_TROLL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILTEN_TROLL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILTEN_TROLL, "Milten chce, abym wraz z nim udal sie do czarnej trolli, zeby dostac rosline.");
};

INSTANCE Info_Mod_Milten_Teleport_Hin (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Teleport_Hin_Condition;
	information	= Info_Mod_Milten_Teleport_Hin_Info;
	permanent	= 0;
	important	= 0;
	description	= "Idzmy!";
};

FUNC INT Info_Mod_Milten_Teleport_Hin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Aufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Milten_Fertig))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Milten_Treffen))
	|| (Npc_KnowsInfo(hero, Info_Mod_Gorn_Treffen)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Teleport_Hin_Info()
{
	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "NW_TROLLAREA_PATH_47B");
	AI_Teleport	(hero, "NW_TROLLAREA_PATH_47A");

	Wld_PlayEffect("spellFX_Teleport_RING",  hero  , hero	, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_Teleport_RING",  self  , self	, 0, 0, 0, FALSE );
	
	B_StartOtherRoutine	(self, "GUIDETOTROLLPARTONE");

	AI_Teleport	(self, "NW_TROLLAREA_PATH_47B");
	AI_Teleport	(hero, "NW_TROLLAREA_PATH_47A");
};

INSTANCE Info_Mod_Milten_Teleport_Da (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Teleport_Da_Condition;
	information	= Info_Mod_Milten_Teleport_Da_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_Teleport_Da_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Teleport_Hin))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_TROLLAREA_PATH_47B"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Teleport_Da_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_Teleport_Da_03_00"); //Stamtad musimy isc, podazac za mna.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "GUIDETOTROLLPARTTWO");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Milten_Station (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Station_Condition;
	information	= Info_Mod_Milten_Station_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_Station_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Teleport_Da))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_TROLLAREA_PATH_41"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Station_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_Station_03_00"); //Jesli zejdziesz z tej sciezki, przyjedziesz do miejsca wykopaliska Magika Wody. Ale mozna przyjrzec sie im pózniej.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "GUIDETOTROLLPARTTHREE");
};

INSTANCE Info_Mod_Milten_AnSee (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_AnSee_Condition;
	information	= Info_Mod_Milten_AnSee_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_AnSee_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Station))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_TROLLAREA_PATH_13"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_AnSee_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_AnSee_03_00"); //Prawie tam jestesmy. Po drugiej stronie tego jeziora znajduje sie jaskinia.
	AI_Output(hero, self, "Info_Mod_Milten_AnSee_15_01"); //Poruszajmy sie dalej.
	AI_Output(self, hero, "Info_Mod_Milten_AnSee_03_02"); //Dobrze, podazaj za mna.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "GUIDETOTROLLPARTFOUR");
};

INSTANCE Info_Mod_Milten_BeiTroll (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_BeiTroll_Condition;
	information	= Info_Mod_Milten_BeiTroll_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_BeiTroll_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_AnSee))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_TROLLAREA_PATH_81"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_BeiTroll_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_BeiTroll_03_00"); //Oto jestesmy. Mam dla Ciebie eliksir, który sprawi, ze bedziesz szybszy.
	AI_Output(self, hero, "Info_Mod_Milten_BeiTroll_03_01"); //Jedyne co musisz zrobic, to dostac rosline i przyjsc do mnie. Teleportuje nas z powrotem do klasztoru.
	
	CreateInvItems	(self, ItPo_Speed, 1);

	B_GiveInvItems	(self, hero, ItPo_Speed, 1);

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "STAYATTROLL");
};

INSTANCE Info_Mod_Milten_HabPflanze (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_HabPflanze_Condition;
	information	= Info_Mod_Milten_HabPflanze_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_HabPflanze_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_BeiTroll))
	&& (Npc_HasItems(hero, ItPl_Sagitta_Herb_MIS) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_HabPflanze_Info()
{
	AI_StopProcessInfos	(self);
	
	AI_Teleport	(self, "NW_MONASTERY_ALCHEMY_01");
	AI_Teleport	(hero, "NW_MONASTERY_ALCHEMY_01");

	Wld_PlayEffect("spellFX_Teleport_RING",  hero  , hero	, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_Teleport_RING",  self  , self	, 0, 0, 0, FALSE );
	
	B_StartOtherRoutine	(self, "WAITFORPLAYER");
	
	AI_Teleport	(self, "NW_MONASTERY_ALCHEMY_01");
	AI_Teleport	(hero, "NW_MONASTERY_ALCHEMY_01");

	B_Göttergefallen(1, 1);

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Milten_Fertig (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Fertig_Condition;
	information	= Info_Mod_Milten_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_HabPflanze))
	&& (Npc_HasItems(hero, ItPl_Sagitta_Herb_MIS) == 1)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), "NW_MONASTERY_ALCHEMY_01"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_Fertig_03_00"); //Wrócmy tu wreszcie.
	AI_Output(hero, self, "Info_Mod_Milten_Fertig_15_01"); //Jest to Sonnenaloe.

	B_GiveInvItems	(hero, self, ItPl_Sagitta_Herb_MIS, 1);

	AI_Output(self, hero, "Info_Mod_Milten_Fertig_03_02"); //Dzieki. Teraz moge skonczyc eliksir Mistrza Neorasa.
	AI_Output(self, hero, "Info_Mod_Milten_Fertig_03_03"); //Najlepiej dac mu eliksir, a nastepnie mozna go przekonac. Wróce jutro i bede gotowy.

	MiltenBrautTrank = Wld_GetDay();

	Log_CreateTopic	(TOPIC_MOD_NEORAS_TRANK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NEORAS_TRANK, LOG_RUNNING);
	B_LogEntry_NMore	(TOPIC_MOD_FEUERMAGIER, TOPIC_MOD_NEORAS_TRANK,TOPIC_MOD_MILTEN_TROLL, "Milten zaglosuje za mna.", "Z promieniami slonca przynióslem Miltena, mial warzyc eliksir dla Neorasa. On chce mi ja dac, abym mógl dac ja Neorze.", "Dostalem Milten fabryke.");

	B_SetTopicStatus	(TOPIC_MOD_MILTEN_TROLL, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "START");
};

INSTANCE Info_Mod_Milten_HabTrank (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_HabTrank_Condition;
	information	= Info_Mod_Milten_HabTrank_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy eliksir jest jeszcze gotowy?";
};

FUNC INT Info_Mod_Milten_HabTrank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Fertig))
	&& (Wld_GetDay() > MiltenBrautTrank)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_HabTrank_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_HabTrank_15_00"); //Czy eliksir jest jeszcze gotowy?
	AI_Output(self, hero, "Info_Mod_Milten_HabTrank_03_01"); //Tak, wlasnie skonczylem.
	AI_Output(self, hero, "Info_Mod_Milten_HabTrank_03_02"); //Tutaj jest, Panie Panu.

	B_GiveInvItems	(self, hero, NeorasTrankVonMilten, 1);

	AI_Output(self, hero, "Info_Mod_Milten_HabTrank_03_03"); //Zabierz go do Neorasa, bedzie o Tobie przekonany.
	
	B_LogEntry	(TOPIC_MOD_NEORAS_TRANK, "Milten podarowal mi eliksir.");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Milten_MardukAufgabe (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_MardukAufgabe_Condition;
	information	= Info_Mod_Milten_MardukAufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mistrz Marduk kazal mi dostac taka rune.";
};

FUNC INT Info_Mod_Milten_MardukAufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Marduk_Aufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Marduk_FeuerballRune))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_MONASTERY_ALCHEMY_01"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_MardukAufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_MardukAufgabe_15_00"); //Mistrz Marduk kazal mi dostac taka rune.
	AI_Output(self, hero, "Info_Mod_Milten_MardukAufgabe_03_01"); //Cóz, z pewnoscia zrobil pan na nim mile wrazenie.
	AI_Output(self, hero, "Info_Mod_Milten_MardukAufgabe_03_02"); //Powinien byc tak samo swiadomy, jak ja, ze nigdy nie bedziesz w stanie zrobic tego samemu, bez pomocy maga?
	AI_Output(hero, self, "Info_Mod_Milten_MardukAufgabe_15_03"); //Dlatego prosze Cie.
	AI_Output(self, hero, "Info_Mod_Milten_MardukAufgabe_03_04"); //Dobrze, pomoze ci w tym.... Ale jest to miedzy nami, wszyscy sluszne?
	AI_Output(self, hero, "Info_Mod_Milten_MardukAufgabe_03_05"); //Potrzebuje kamienia z run, pecha i zaklec w kuli ognia.

	B_LogEntry	(TOPIC_MOD_MARDUK_FEUERBALL, "Milten zgodzil sie pomóc mi zbudowac rune. Wymaga nastepujacych skladników: kamien runowy, boisko i zaklecie do ognia.");
};

INSTANCE Info_Mod_Milten_HabZutatenRune (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_HabZutatenRune_Condition;
	information	= Info_Mod_Milten_HabZutatenRune_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem rzeczy.";
};

FUNC INT Info_Mod_Milten_HabZutatenRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_MardukAufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Marduk_FeuerballRune))
	&& (Npc_HasItems(hero, ItMi_RuneBlank) >= 1)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	&& (Npc_HasItems(hero, ItSc_InstantFireball) >= 1)
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_MONASTERY_ALCHEMY_01"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_HabZutatenRune_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_HabZutatenRune_15_00"); //Dostalem rzeczy.
	AI_Output(self, hero, "Info_Mod_Milten_HabZutatenRune_03_01"); //Zobaczmy teraz. Najpierw kamien runowy.
	AI_Output(hero, self, "Info_Mod_Milten_HabZutatenRune_15_02"); //Tutaj jest, Panie Panu.

	B_GiveInvItems	(hero, self, ItMi_RuneBlank, 1);

	AI_Output(self, hero, "Info_Mod_Milten_HabZutatenRune_03_03"); //Nieszczescie, wiec.
	AI_Output(hero, self, "Info_Mod_Milten_HabZutatenRune_15_04"); //Idzcie, prosze.

	B_GiveInvItems	(hero, self, ItMi_Pitch, 1);

	AI_Output(self, hero, "Info_Mod_Milten_HabZutatenRune_03_05"); //A rola strazaka.
	AI_Output(hero, self, "Info_Mod_Milten_HabZutatenRune_15_06"); //Ja równiez to uczynilem.

	B_GiveInvItems	(hero, self, ItSc_InstantFireball, 1);

	AI_Output(self, hero, "Info_Mod_Milten_HabZutatenRune_03_07"); //Dobrze, to wszystko. Wróc jutro i runa powinna byc gotowa.

	MiltenBautRune	=	Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_MARDUK_FEUERBALL, "Przynióslem Milten wszystkie skladniki. Powiedzial, ze jutro wróci.");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Milten_RuneFertig (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_RuneFertig_Condition;
	information	= Info_Mod_Milten_RuneFertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy runa jest gotowa?";
};

FUNC INT Info_Mod_Milten_RuneFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_HabZutatenRune))
	&& (Wld_GetDay() > MiltenBautRune)
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_MONASTERY_ALCHEMY_01"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_RuneFertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_RuneFertig_15_00"); //Czy runa jest gotowa?
	AI_Output(self, hero, "Info_Mod_Milten_RuneFertig_03_01"); //Tutaj jest.

	B_GiveInvItems	(self, hero, ItRu_InstantFireball, 1);

	AI_Output(hero, self, "Info_Mod_Milten_RuneFertig_15_02"); //Dziekuje bardzo.
	AI_Output(self, hero, "Info_Mod_Milten_RuneFertig_03_03"); //Ale jak juz powiedzialem, jest to miedzy nami. Jestem zbyt ciekawy, ze widze twarz Marduka, kiedy przynosisz mu rune.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_MARDUK_FEUERBALL, "Milten dal mi runo. Musze ja zabrac teraz do Marduka.");
};

INSTANCE Info_Mod_Milten_MardukRune (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_MardukRune_Condition;
	information	= Info_Mod_Milten_MardukRune_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_MardukRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Marduk_FeuerballRune))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_MardukRune_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_MardukRune_03_00"); //Reakcja Marduka przekroczyla moje oczekiwania.
	AI_Output(hero, self, "Info_Mod_Milten_MardukRune_15_01"); //Mil?
	AI_Output(self, hero, "Info_Mod_Milten_MardukRune_03_02"); //Powiedzialem ci, ze nie brakuje mi tego. Bylo to troche jak dawne czasy, kiedy Saturas nazywal czerwony, jesli sie rozumie......
	AI_Output(hero, self, "Info_Mod_Milten_MardukRune_15_03"); //Hmm..... gniewny mag Czy zwalowanie rudy?
	AI_Output(self, hero, "Info_Mod_Milten_MardukRune_03_04"); //Dokladnie.
	AI_Output(hero, self, "Info_Mod_Milten_MardukRune_15_05"); //I ciesze sie z waszego powrotu.
	AI_Output(self, hero, "Info_Mod_Milten_MardukRune_03_06"); //Za kazdym razem jeszcze raz. Jestem pewien, ze to nie byla nasza ostatnia sztuczka. Do tego czasu.

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Milten_Treffen (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Treffen_Condition;
	information	= Info_Mod_Milten_Treffen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gorn wyslal mnie.";
};

FUNC INT Info_Mod_Milten_Treffen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_AtCastlemine))
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_Hi))
	&& (Hlp_StrCmp	(Npc_GetNearestWP(self), "NW_MONASTERY_ALCHEMY_01"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Treffen_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Treffen_15_00"); //Gorn wyslal mnie. Chce powiedziec, ze wybierasz sie do tawerny Dead Harpie.
	AI_Output(self, hero, "Info_Mod_Milten_Treffen_03_01"); //Dobrze, od razu bede w drodze.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_TREFFEN, "Na spotkanie od razu rusza Milten.");

	Npc_ExchangeRoutine	(self, "TREFFEN");
	B_StartOtherRoutine	(Mod_533_SLD_Gorn_NW,	"TREFFEN");
};

INSTANCE Info_Mod_Milten_HaveYouCrawlerEggs (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_HaveYouCrawlerEggs_Condition;
	information	= Info_Mod_Milten_HaveYouCrawlerEggs_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wiesz, skad moge dostac jaja miotajace?";
};

FUNC INT Info_Mod_Milten_HaveYouCrawlerEggs_Condition()
{
	if (Mod_MinecrawlerEi >= 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_HaveYouCrawlerEggs_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_HaveYouCrawlerEggs_15_00"); //Wiesz, skad moge dostac jaja miotajace?
	AI_Output(self, hero, "Info_Mod_Milten_HaveYouCrawlerEggs_03_01"); //Gorn przywiózl mnie wtedy z otwartej kopalni. Ladne próbki.
	AI_Output(self, hero, "Info_Mod_Milten_HaveYouCrawlerEggs_03_02"); //Nie wiedzialem, ze w wolnej kopalni jest królowa.
	
	Mod_MinecrawlerEi = 2;
};

INSTANCE Info_Mod_Milten_MinecrawlerEi (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_MinecrawlerEi_Condition;
	information	= Info_Mod_Milten_MinecrawlerEi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy nadal masz jaja Minecrawler Gorn' s?";
};

FUNC INT Info_Mod_Milten_MinecrawlerEi_Condition()
{
	if (Mod_MinecrawlerEi	==	2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_MinecrawlerEi_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_MinecrawlerEi_15_00"); //Czy nadal masz jaja Minecrawler Gorn' s?
	AI_Output(self, hero, "Info_Mod_Milten_MinecrawlerEi_03_01"); //Uzylem jednego, ale mozesz miec drugiego.
	
	CreateInvItems	(self, ItAt_Crawlerqueen, 1);
	B_GiveInvItems	(self, hero, ItAt_Crawlerqueen, 1);

	Mod_MinecrawlerEi	=	3;
};

INSTANCE Info_Mod_Milten_Drachen (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Drachen_Condition;
	information	= Info_Mod_Milten_Drachen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_Drachen_Condition()
{
	if (Mod_NL_DragonKloster == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Drachen_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_Drachen_03_00"); //Hej, moge miec cos dla Ciebie.
	AI_Output(self, hero, "Info_Mod_Milten_Drachen_03_01"); //Po zaatakowaniu tych jaszczurów, badalem je w starozytnych pismach.
	AI_Output(self, hero, "Info_Mod_Milten_Drachen_03_02"); //Ten zlowieszczy przepis natknalem sie na starozytna, mocno zwietrzala ksiazke.
	AI_Output(self, hero, "Info_Mod_Milten_Drachen_03_03"); //Moze mozna cos z tym zrobic.

	B_GiveInvItems	(self, hero, ItWr_DrachensudManaverbrennung, 1);
};

INSTANCE Info_Mod_Milten_Leichengase (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Leichengase_Condition;
	information	= Info_Mod_Milten_Leichengase_Info;
	permanent	= 0;
	important	= 0;
	description	= "Milczenie, potrzebuje twojej pomocy!";
};

FUNC INT Info_Mod_Milten_Leichengase_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Caine_Leichengase4))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lobart_Leichengase2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Leichengase))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_Leichengase_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_Leichengase_15_00"); //Milczenie, potrzebuje twojej pomocy!
	AI_Output(self, hero, "Info_Mod_Milten_Leichengase_03_01"); //Oczywiscie, o co chodzi?
	AI_Output(hero, self, "Info_Mod_Milten_Leichengase_15_02"); //Musze dostac trolle aby tam zjesc ta torbe ziól.
	AI_Output(self, hero, "Info_Mod_Milten_Leichengase_03_03"); //Co? No cóz, masz powody.
	AI_Output(hero, self, "Info_Mod_Milten_Leichengase_15_04"); //Czy mozesz mi pomóc, czy nie?
	AI_Output(self, hero, "Info_Mod_Milten_Leichengase_03_05"); //Mam pomysl.
	AI_Output(self, hero, "Info_Mod_Milten_Leichengase_03_06"); //Udaj sie do Hyglasa, jest on odpowiedzialny za zaklecie, które toczy sie tutaj w klasztorze. Popros go o pomoc.
	
	if (hero.guild != GIL_VLK) {
		AI_Output(self, hero, "Info_Mod_Milten_Leichengase_03_07"); //Oto klucz do biblioteki.
		B_GiveInvItems	(self, hero, ItKe_KlosterBibliothek, 1);
	};

	B_LogEntry	(TOPIC_MOD_SL_LEICHENGASE, "Milten skierowal mnie do Hyglasa.");
};

INSTANCE Info_Mod_Milten_Pickpocket (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_Pickpocket_Condition;
	information	= Info_Mod_Milten_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Milten_Pickpocket_Condition()
{
	C_Beklauen	(120, ItMi_Gold, 36);
};

FUNC VOID Info_Mod_Milten_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Milten_Pickpocket);

	Info_AddChoice	(Info_Mod_Milten_Pickpocket, DIALOG_BACK, Info_Mod_Milten_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Milten_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Milten_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Milten_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Milten_Pickpocket);
};

FUNC VOID Info_Mod_Milten_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Milten_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Milten_Pickpocket);

		Info_AddChoice	(Info_Mod_Milten_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Milten_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Milten_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Milten_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Milten_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Milten_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Milten_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Milten_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Milten_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Milten_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Milten_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Milten_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Milten_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Milten_EXIT (C_INFO)
{
	npc		= Mod_534_KDF_Milten_NW;
	nr		= 1;
	condition	= Info_Mod_Milten_EXIT_Condition;
	information	= Info_Mod_Milten_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Milten_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Milten_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
