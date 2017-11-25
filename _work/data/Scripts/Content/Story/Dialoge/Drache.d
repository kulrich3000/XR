INSTANCE Info_Mod_Drache_Hi (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Hi_Condition;
	information	= Info_Mod_Drache_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Drache_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Drache_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_00"); //Inny czlowiek. Co Pan tutaj robi? Wróc do swojego klubu, albo poznasz mnie.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_01"); //Nie naleze do tej partii. Przyszedlem znalezc i zabic Khorgora.
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_02"); //Khorgor tez jest moim wrogiem. Niestety, jestem bezsilny, odkad mnie tutaj zamknal.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_03"); //Czy pomóglbys mi pomóc, gdybym mógl cie uwolnic?
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_04"); //Wyraznie. Ale to nie jest takie proste.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_05"); //Dlaczego?
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_06"); //Jestem smokiem wodnym. Woda jest moim eliksirem zycia, bez którego musialem sie juz od dawna obchodzic.
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_07"); //Tak mdleje tutaj, bezsilny i niezdolny do walki. Stopniowo zakladam strukture tego srodowiska.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_08"); //Widac to wyraznie. Stajesz sie srebrnym smokiem.
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_09"); //(nieco glosniej) To nie jest zabawa! Przynies mi troche wody, jesli chcesz, abym ci pomogla. Przed soba jezioro.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_10"); //Tak jest. W miedzyczasie jest tylko okolo dziesieciu wrogów.
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_11"); //Booby! Odwracasz je w nocy. Albo uczynic siebie niewidzialnym.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_12"); //To cos sie stalo. Ile wody potrzebujesz?
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_13"); //Polowa jeziora, idealnie. Ale cztery lyzki powinny byc przeznaczone dla poczatkujacych.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_14"); //A gdzie teraz mam kubelek?
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_15"); //Przy jeziorze musza byc jakies rzeczy. Z tamtejszych przestepców.

	Log_CreateTopic	(TOPIC_MOD_JG_DRACHENDURST, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_DRACHENDURST, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_DRACHENDURST, "Smok w miazszu! Niebieski. Próbuje mi pomóc zdobyc troche wody. Chce cztery wiadra.");
};

INSTANCE Info_Mod_Drache_Drachendurst01 (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Drachendurst01_Condition;
	information	= Info_Mod_Drache_Drachendurst01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj. Wiadro wody.";
};

FUNC INT Info_Mod_Drache_Drachendurst01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drache_Hi))
	&& (Npc_HasItems(hero, ItMi_EimerW) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Drachendurst01_Info()
{
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst01_15_00"); //Tutaj. Wiadro wody.

	B_GiveInvItems	(hero, self, ItMi_EimerW, 1);

	Mdl_SetVisualBody		(self,	"Dragon_WATER02_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst01_22_01"); //Ahh. Pyszny! Juz czuje sie lepiej. Potrzebuje jednak wiecej.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst01_15_02"); //Jestem na drodze.

	B_GiveInvItems	(self, hero, ItMi_Eimer, 1);
};

INSTANCE Info_Mod_Drache_Drachendurst02 (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Drachendurst02_Condition;
	information	= Info_Mod_Drache_Drachendurst02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj. Drugie obciazenie.";
};

FUNC INT Info_Mod_Drache_Drachendurst02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drache_Drachendurst01))
	&& (Npc_HasItems(hero, ItMi_EimerW) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Drachendurst02_Info()
{
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst02_15_00"); //Tutaj. Drugie obciazenie.

	B_GiveInvItems	(hero, self, ItMi_EimerW, 1);

	Mdl_SetVisualBody		(self,	"Dragon_WATER03_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst02_22_01"); //Dzieki, czlowiek. Ocalasz moje zycie.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst02_15_02"); //I moja kopalnia zagrozen.
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst02_22_03"); //Beze mnie nie ma szans.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst02_15_04"); //Moze jestem w drodze.

	B_GiveInvItems	(self, hero, ItMi_Eimer, 1);
};

INSTANCE Info_Mod_Drache_Drachendurst03 (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Drachendurst03_Condition;
	information	= Info_Mod_Drache_Drachendurst03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tu jest trzecia partia. Jak jestes teraz?";
};

FUNC INT Info_Mod_Drache_Drachendurst03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drache_Drachendurst02))
	&& (Npc_HasItems(hero, ItMi_EimerW) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Drachendurst03_Info()
{
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst03_15_00"); //Tu jest trzecia partia. Jak jestes teraz?

	B_GiveInvItems	(hero, self, ItMi_EimerW, 1);

	Mdl_SetVisualBody		(self,	"Dragon_WATER04_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst03_22_01"); //Poczuj sie lepiej niz od dawna czulem. I wracam do sily.
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst03_22_02"); //Teraz jeszcze jeden wiaderko i tu zburze ruszt.

	B_GiveInvItems	(self, hero, ItMi_Eimer, 1);
};

INSTANCE Info_Mod_Drache_Drachendurst04 (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Drachendurst04_Condition;
	information	= Info_Mod_Drache_Drachendurst04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj. Wszystkie dobre rzeczy sa cztery.";
};

FUNC INT Info_Mod_Drache_Drachendurst04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drache_Drachendurst03))
	&& (Npc_HasItems(hero, ItMi_EimerW) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Drachendurst04_Info()
{
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_00"); //Tutaj. Wszystkie dobre rzeczy sa cztery.

	B_GiveInvItems	(hero, self, ItMi_EimerW, 1);

	Mdl_SetVisualBody		(self,	"Dragon_WATER_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_01"); //Prawda! Przeniesc kubelki.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_02"); //Tam. A co teraz? Siatka?
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_03"); //Nie bylem powazny. Oczywiscie nie moge tego zrobic.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_04"); //No cóz, dobrze. Przynajmniej otrzymujesz niebieski powrót. A co teraz?
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_05"); //Uczciwie? Znów jestem niebieski?
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_06"); //Jak zeglarz, który wypil ostatnia wyplate.
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_07"); //Aah! Tu jestem Smokiem, tu moge byc!
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_08"); //Lindwurm. Jak wyprowadzic Cie z tego miejsca?
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_09"); //Sluchaj wiec, tam w swiatyni wisi taka dziwna czarna figura. Z jarzacymi sie oczami.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_10"); //Szukajacy! W koncu go odszukalem.
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_11"); //Znasz te liczbe?
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_12"); //Uciekl dwa razy wczesniej. Ale tym razem go odbede!
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_13"); //Bardzo dobrze. Ale nie zapomnij o moim creelu, potrzebujesz mnie z paczka w lesie.
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_14"); //Tak dalej: Jakis czas temu bylem w stanie podsluchac rozmowe pomiedzy ciemnoscia i jedna z slugusów.
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_15"); //Wtedy dowiedzialem sie, ze mechanizm otwierania byl w bibliotece. Ukryte, jednak cokolwiek to oznacza.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_16"); //Hm. Moze jedna dzwignia. Lub kabestan. Nie.... Nie mozna ukryc kabestanu. Zobaczmy jak.....

	Log_CreateTopic	(TOPIC_MOD_JG_SUCHENDER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_SUCHENDER, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_JG_DRACHENDURST, TOPIC_MOD_JG_SUCHENDER, "Smok byl zadowolony z czterech wiader wody. Zobaczmy, co sie dzieje dalej.", "Wodny smok opowiada o urzadzeniu, które otwiera brame. Ma ona byc ukryta w bibliotece swiatynnej. Prawdopodobnie i poszukujacy. Musze uwazac na jego ataki lodowe. Czy nadal posiadam magiczna ochrone w torbie? I lepiej walczyc w meczu. Moze ruina jest pomocna.....");
	B_SetTopicStatus	(TOPIC_MOD_JG_DRACHENDURST, LOG_SUCCESS);

	Wld_InsertNpc	(Mod_7543_DMT_Suchender_DT, "DT_039");
};

INSTANCE Info_Mod_Drache_Drachental (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Drachental_Condition;
	information	= Info_Mod_Drache_Drachental_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Drache_Drachental_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Drachental))
	&& (Mod_JG_Gitter == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Drachental_Info()
{
	AI_Output(self, hero, "Info_Mod_Drache_Drachental_22_00"); //Hej! Gdzie jestes pieklo? A co z brama?
	AI_Output(hero, self, "Info_Mod_Drache_Drachental_15_01"); //Cierpliwosc! Mial jeszcze inne rzeczy do zrobienia. Powiedziales, ze czarny pokój?
	AI_Output(self, hero, "Info_Mod_Drache_Drachental_22_02"); //Tak. Gdzies tam powinna byc dzwignia.
	AI_Output(hero, self, "Info_Mod_Drache_Drachental_15_03"); //Zobaczmy teraz.

	Log_CreateTopic	(TOPIC_MOD_JG_VASALLEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_VASALLEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_VASALLEN, "Mialem uwolnic smoka i zabic strazników.");
};

INSTANCE Info_Mod_Drache_Drachental2 (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Drachental2_Condition;
	information	= Info_Mod_Drache_Drachental2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Drache_Drachental2_Condition()
{
	if (Npc_IsDead(Mod_7544_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7545_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7546_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7547_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7548_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7549_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7550_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7551_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7552_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7553_OUT_Wache_DT))
	&& (Mod_JG_Gitter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Drachental2_Info()
{
	AI_Output(self, hero, "Info_Mod_Drache_Drachental2_22_00"); //Duuurst! Pilnie potrzebuje wody! Jestem nad jeziorem.
	AI_Output(hero, self, "Info_Mod_Drache_Drachental2_15_01"); //Rozejrze sie dookola.

	B_LogEntry_More	(TOPIC_MOD_JG_VASALLEN, TOPIC_MOD_JG_DRACHENTAL, "To niesamowite, co ma woda energetyczna. Teraz powinienem miec teraz plecy.", "To niesamowite, co ma woda energetyczna. Teraz powinienem miec teraz plecy. Lepiej wróce do biblioteki. Moze cos dzis przeoczylem wczesniej.....");
	B_SetTopicStatus	(TOPIC_MOD_JG_VASALLEN, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DURST");

	Wld_InsertItem	(ItWr_RaetselWand, "FP_ITEM_RAETSELWANDZETTEL");
};

INSTANCE Info_Mod_Drache_Khorgor (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Khorgor_Condition;
	information	= Info_Mod_Drache_Khorgor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tak wiec moje zadanie tutaj zostalo wykonane.";
};

FUNC INT Info_Mod_Drache_Khorgor_Condition()
{
	if (Mod_JG_Khorgor == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Khorgor_Info()
{
	AI_Output(hero, self, "Info_Mod_Drache_Khorgor_15_00"); //Tak wiec moje zadanie tutaj zostalo wykonane. Musze wrócic do moich ludzi. Zaluje, ze wiem jak.
	AI_Output(self, hero, "Info_Mod_Drache_Khorgor_22_01"); //Tam gdzies musi byc furgonetka. Podnózki sa zawsze na wyciagniecie reki....
	AI_Output(hero, self, "Info_Mod_Drache_Khorgor_15_02"); //Musze spojrzec. A co zamierzasz zrobic?
	AI_Output(self, hero, "Info_Mod_Drache_Khorgor_22_03"); //Pije jezioro puste niepotrzebnie zmusic mnie do szukania braci.
	AI_Output(hero, self, "Info_Mod_Drache_Khorgor_15_04"); //Zycze panu wszelkich sukcesów.
	AI_Output(self, hero, "Info_Mod_Drache_Khorgor_22_05"); //Ty równiez ty. I tu troche podarunku.

	B_GiveInvItems	(self, hero, ItMi_Aquamarine, 10);
};

INSTANCE Info_Mod_Drache_EXIT (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_EXIT_Condition;
	information	= Info_Mod_Drache_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Drache_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Drache_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
