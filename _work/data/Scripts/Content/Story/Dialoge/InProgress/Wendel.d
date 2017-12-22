INSTANCE Info_Mod_Wendel_Hi (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Hi_Condition;
	information	= Info_Mod_Wendel_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Wendel_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wendel_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Wendel_Hi_23_00"); //Spirala. Odpowiadam za zaopatrzenie w wode tutaj w Khorata.
	AI_Output(self, hero, "Info_Mod_Wendel_Hi_23_01"); //Jak widac, dystrybucja wody nie jest tak prosta, ale z pomoca pomp i zamków, naziemnych i podziemnych.
	AI_Output(self, hero, "Info_Mod_Wendel_Hi_23_02"); //W tym celu mozemy zagwarantowac optymalna podaz ludnosci.
	AI_Output(self, hero, "Info_Mod_Wendel_Hi_23_03"); //Tak skomplikowany system wymaga oczywiscie ciaglego monitorowania i naprawy.
};

INSTANCE Info_Mod_Wendel_Endres (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres_Condition;
	information	= Info_Mod_Wendel_Endres_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wendel_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Juliana_WasLos))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres_Info()
{
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_23_00"); //Och, nie! Mamy powazny problem!
	AI_Output(hero, self, "Info_Mod_Wendel_Endres_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_23_02"); //Chcialbym to równiez wiedziec! Cyrkulacja wody zostaje przerwana.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_23_03"); //Wydaje sie, ze cos zatyka rury.
	AI_Output(hero, self, "Info_Mod_Wendel_Endres_15_04"); //Co mozna z tym zrobic?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_23_05"); //Albo zdejmiemy wszystkie rury i sprawdzimy je.... lub smarujemy go od wewnatrz smarem, majac nadzieje, ze korek sam rozpusci sie.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_23_06"); //Czy bedziecie smarowac?

	Info_ClearChoices	(Info_Mod_Wendel_Endres);

	Info_AddChoice	(Info_Mod_Wendel_Endres, "Mozesz to zrobic bez mnie.", Info_Mod_Wendel_Endres_B);
	Info_AddChoice	(Info_Mod_Wendel_Endres, "Skad pochodzi tluszcz?", Info_Mod_Wendel_Endres_A);
};

FUNC VOID Info_Mod_Wendel_Endres_B()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres_B_15_00"); //Mozesz to zrobic bez mnie.

	Info_ClearChoices	(Info_Mod_Wendel_Endres);
};

FUNC VOID Info_Mod_Wendel_Endres_A()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres_A_15_00"); //Skad pochodzi tluszcz?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_A_23_01"); //To jest kolejne pytanie. Mysle, ze jedyna rzecza, która pomaga tylko troll tluszczu, to jest bardzo tluste. Bardzo rzadkie.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_A_23_02"); //Ale masz szczescie widziec tu trolle w Relendel.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_A_23_03"); //Po prostu umiescic go w dól i wziac tyle jego tluszczu z niego, jak mozesz niesc!
	AI_Output(hero, self, "Info_Mod_Wendel_Endres_A_15_04"); //To wszystko, co masz?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_A_23_05"); //Teraz spiesz sie, zanim natkniemy sie na waskie gardla!

	Mod_Wendel_FettNehmer = 1;

	Wld_InsertNpc	(Troll, "FP_ROAM_TROLL_WENDEL");

	Info_ClearChoices	(Info_Mod_Wendel_Endres);

	Log_CreateTopic	(TOPIC_MOD_KHORATA_WASSERWERK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_WASSERWERK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_WASSERWERK, "Rury w wodociagach Khoraty sa zablokowane. Wendel poinstruowal mnie, abym strzelil trolle w Relendel i usunal z niej smar, abysmy mogli nasmarowac rury.");
};

INSTANCE Info_Mod_Wendel_Endres02 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres02_Condition;
	information	= Info_Mod_Wendel_Endres02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem tluszcz trollowy.";
};

FUNC INT Info_Mod_Wendel_Endres02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres))
	&& (Npc_HasItems(hero, ItMi_Trollfett) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres02_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres02_15_00"); //Dostalem tluszcz trollowy.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres02_23_01"); //Bardzo dobrze! A teraz wlewala sie do aborcji w Domu Strazaka.

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_WASSERWERK, "Jestem, aby przechylic trolle tluszczu do aborcji Fire Magic House' a....");
};

INSTANCE Info_Mod_Wendel_Endres02_Optional (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres02_Optional_Condition;
	information	= Info_Mod_Wendel_Endres02_Optional_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie jest Dom Magii Pozarskiej?";
};

FUNC INT Info_Mod_Wendel_Endres02_Optional_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres02))
	&& (Npc_HasItems(hero, ItMi_Trollfett) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres02_Optional_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres02_Optional_15_00"); //Gdzie jest Dom Magii Pozarskiej?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres02_Optional_23_01"); //Znajduje sie przy tej samej ulicy, co karczma i browar. W porzadku, idzmy!
};

INSTANCE Info_Mod_Wendel_Endres03 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres03_Condition;
	information	= Info_Mod_Wendel_Endres03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wendel_Endres03_Condition()
{
	if (Npc_KnowsInfo(hero, PC_Klo_Trollfett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres03_Info()
{
	AI_Output(self, hero, "Info_Mod_Wendel_Endres03_23_00"); //Jezu Chryste! .... To Endres!
	AI_Output(hero, self, "Info_Mod_Wendel_Endres03_15_01"); //Kto?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres03_23_02"); //Endres, budowniczy! Zaginiony czlowiek Juliany. Zablokowal rury. (chokesy)
	AI_Output(self, hero, "Info_Mod_Wendel_Endres03_23_03"); //(pauza) I.... Ach, przez Adanosa, zostal zamordowany!

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Pojawilo sie zwloki Endresów, ale przyczyna smierci jest niejasna. Moze Juliana moze jeszcze bardziej oswiecic ciemnosc?");
};

INSTANCE Info_Mod_Wendel_Endres04 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres04_Condition;
	information	= Info_Mod_Wendel_Endres04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co wiesz o Endresach?";
};

FUNC INT Info_Mod_Wendel_Endres04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres04_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres04_15_00"); //Co wiesz o Endresach?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_01"); //Byl troche dziwaczny..... Mozna powiedziec, ze wspanialy.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_02"); //Stworzyl w miescie tajemnicze rzezby i pomógl zaplanowac instalacje wodociagowa.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_03"); //Bez niego bylibysmy znacznie bardziej zacofani.
	AI_Output(hero, self, "Info_Mod_Wendel_Endres04_15_04"); //Kto chcialby go zabic?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_05"); //Skad powinienem wiedziec? On musial miec zazdrosc, ale to wszystko, co wiem. Nigdy go nie znalem dobrze.
	AI_Output(hero, self, "Info_Mod_Wendel_Endres04_15_06"); //Wtedy bede pytal dalej.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_07"); //Opowiedz Julianie o incydencie. Nie czuje sie dobrze.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_08"); //Ah.... w odniesieniu do wodociagów: wszystko znowu dziala..... jak praca w zegarku....
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_09"); //Dziekujemy za pomoc.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_KHORATA_WASSERWERK, "Problemy w wodociagach sa rozwiazywane, aby zapewnic miejsce dla innych.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_WASSERWERK, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Wendel_Endres05 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres05_Condition;
	information	= Info_Mod_Wendel_Endres05_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam kilka pytan.";
};

FUNC INT Info_Mod_Wendel_Endres05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leonhard_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres05_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres05_15_00"); //Mam kilka pytan.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres05_23_01"); //Dlaczego tak jest?
	AI_Output(hero, self, "Info_Mod_Wendel_Endres05_15_02"); //Prosze odpowiedziec na pytania.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres05_23_03"); //Wszystkie prawa.
};

INSTANCE Info_Mod_Wendel_Endres06 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres06_Condition;
	information	= Info_Mod_Wendel_Endres06_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co robiles przed cialem Endresa (....) )";
};

FUNC INT Info_Mod_Wendel_Endres06_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres06_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres06_15_00"); //Co zrobiles zanim cialo Endresa trafilo do sieci wodociagowej?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres06_23_01"); //Um.... z moim asystentem, instalatorem.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres06_23_02"); //Jak zawsze od rano rano.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Wendel twierdzi, ze byl z mechanikiem przez caly czas w danym dniu.");
};

INSTANCE Info_Mod_Wendel_Endres07 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres07_Condition;
	information	= Info_Mod_Wendel_Endres07_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sadzisz o uzdrowicielu jako podejrzanym?";
};

FUNC INT Info_Mod_Wendel_Endres07_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres07_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres07_15_00"); //Co sadzisz o uzdrowicielu jako podejrzanym?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres07_23_01"); //Nie potrafie powiedziec, czy nawet lepiej sie znaja. Z pewnoscia nie byli dobrymi przyjaciólmi.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Wendel wierzy, ze uzdrowiciel i Endres nie znali sie lepiej.");
};

INSTANCE Info_Mod_Wendel_Endres08 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres08_Condition;
	information	= Info_Mod_Wendel_Endres08_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sadzisz o Julianie jako podejrzanej?";
};

FUNC INT Info_Mod_Wendel_Endres08_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres08_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres08_15_00"); //Co sadzisz o Julianie jako podejrzanej?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres08_23_01"); //Zwiazek miedzy Juliana i Endresem wydawal sie troche napiety.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres08_23_02"); //Byl geniuszem, co nie zawsze jest latwe dla partnera.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Mówi sie, ze byl to kryzys w stosunkach z Juliana i Endresem.");
};

INSTANCE Info_Mod_Wendel_Nagelnachschub (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Nagelnachschub_Condition;
	information	= Info_Mod_Wendel_Nagelnachschub_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Mam tu do Pana list.";
};                       

FUNC INT Info_Mod_Wendel_Nagelnachschub_Condition()
{
	if (Npc_HasItems(hero, ItWr_ErikaLiebesbrief) == 1)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Nagelnachschub_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Nagelnachschub_15_00"); //Mam tu do Pana list.

	B_GiveInvItems	(hero, self, ItWr_ErikaLiebesbrief, 1);

	B_LogEntry	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, "Przekazalem Wendelowi wiadomosc. Teraz mialem odebrac pakiet paznokci.");

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Wendel_Nagelnachschub_23_01"); //Kto dal ci list?

	Info_ClearChoices	(Info_Mod_Wendel_Nagelnachschub);

	Info_AddChoice	(Info_Mod_Wendel_Nagelnachschub, "Nie wiem, znalazlem go.", Info_Mod_Wendel_Nagelnachschub_B);
	Info_AddChoice	(Info_Mod_Wendel_Nagelnachschub, "Mam list od pani posel Eriki.", Info_Mod_Wendel_Nagelnachschub_A);
};

FUNC VOID Info_Mod_Wendel_Nagelnachschub_B()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Nagelnachschub_B_15_00"); //Nie wiem, znalazlem go.
	AI_Output(self, hero, "Info_Mod_Wendel_Nagelnachschub_B_23_01"); //Zbyt zle. Wtedy nie moge odpowiedziec.

	Info_ClearChoices	(Info_Mod_Wendel_Nagelnachschub);
};

FUNC VOID Info_Mod_Wendel_Nagelnachschub_A()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Nagelnachschub_A_15_00"); //Mam list od pani posel Eriki.
	AI_Output(self, hero, "Info_Mod_Wendel_Nagelnachschub_A_23_01"); //Jestes nosicielem najlepszej nowiny z mojego zycia! Wez to za podziekowania!

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	Info_ClearChoices	(Info_Mod_Wendel_Nagelnachschub);
};

INSTANCE Info_Mod_Wendel_Unruhen (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen_Condition;
	information	= Info_Mod_Wendel_Unruhen_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Proponuje sie, abyscie zastapili Anselmsa.";
};                       

FUNC INT Info_Mod_Wendel_Unruhen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Unruhen2))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen_15_00"); //Proponuje sie, abyscie zastapili Anselmsa.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen_23_01"); //Jestem bardzo zaszczycony. Nie jestem jednak pewny, ze jestem jednym z nich.
};

INSTANCE Info_Mod_Wendel_Unruhen2 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen2_Condition;
	information	= Info_Mod_Wendel_Unruhen2_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Co sadzisz o obecnej sytuacji?";
};                       

FUNC INT Info_Mod_Wendel_Unruhen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen2_15_00"); //Co sadzisz o obecnej sytuacji?
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen2_23_01"); //Jest bardzo niepewna. Nie wolno nam robic niczego wiecej, co mogloby jeszcze bardziej sprowokowac górników, ale powinnismy natychmiast wznowic rozmowy na temat porozumienia.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen2_23_02"); //Nalezy zapobiegac kolejnym zgonom!

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Kiedy Wendel zostaje nowym gubernatorem, chce pracowac na rzecz porozumienia z górnikami.");
};

INSTANCE Info_Mod_Wendel_Unruhen3 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen3_Condition;
	information	= Info_Mod_Wendel_Unruhen3_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Jaka jest Twoja strona wspólczucia?";
};                       

FUNC INT Info_Mod_Wendel_Unruhen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen3_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen3_15_00"); //Jaka jest Twoja strona wspólczucia?
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen3_23_01"); //Nie o to chodzi. Obie strony popelnily bledy.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen3_23_02"); //Naszym celem musi byc zintegrowanie górników z naszym spoleczenstwem w taki sposób, aby wszyscy bylismy zadowoleni.
};

INSTANCE Info_Mod_Wendel_Unruhen4 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen4_Condition;
	information	= Info_Mod_Wendel_Unruhen4_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Jest pan teraz gubernatorem Khoraty.";
};                       

FUNC INT Info_Mod_Wendel_Unruhen4_Condition()
{
	if (Mod_REL_Kandidat == 3)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen4_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen4_15_00"); //Jest pan teraz gubernatorem Khoraty.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_01"); //Nie wiem, czy powinienem byc z tego zadowolony.
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen4_15_02"); //Bedziesz mial racje.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_03"); //Z Twoja pomoca. Zacznijmy od razu. Jest wiele do zrobienia.
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen4_15_04"); //Gdzie zaczniemy?
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_05"); //Oczywiscie z górnikami. Konflikt musi zakonczyc sie bez rozlewu krwi.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_06"); //Wlasciwie byloby to sprawa sadowa. Ale miedzy wami a mna nie mysle zbyt wiele o sedziego i magistratze.
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen4_15_07"); //Zrozumiale.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_08"); //Mysle, ze powinnismy zebrac przedstawicieli mieszczan i jednego z kopaczy;
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_09"); //w dwóch z nich omówiono by mozliwe rozwiazania, nadzorowane przez bezstronnego outsidera - Ciebie.
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen4_15_10"); //Kto powinien reprezentowac mieszczan i kto powinien reprezentowac Buddlerów?
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_11"); //Teraz, gdy jestem glowa Khoraty, przypuszczam, ze zabieram glos w imieniu obywateli.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_12"); //Jesli chodzi o kopaczki, proponuje znalezc wsród nich ochotnika.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_13"); //Spotkam sie z Toba w ratuszu.
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen4_15_14"); //Wszystko jasne.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Wendel poprosil mnie, abym namówil Buddlera do spotkania sie z nim w domu straznika miejskiego.");

	B_StartOtherRoutine	(self, "VERHANDLUNG");
};

INSTANCE Info_Mod_Wendel_Unruhen5 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen5_Condition;
	information	= Info_Mod_Wendel_Unruhen5_Info;
	permanent	= 1;
	important	= 0;
	description 	= "Dwoje z nich dobrze jest pójsc. W razie potrzeby bede interweniowal.";
};                       

FUNC INT Info_Mod_Wendel_Unruhen5_Condition()
{
	if (Mod_REL_WendelS == 1)
	&& (Npc_GetDistToWP(Mod_7492_OUT_Roman_REL, "RATHAUSUNTEN_01") < 500)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen5_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen5_15_00"); //Dwoje z nich dobrze jest pójsc. W razie potrzeby bede interweniowal.
	AI_Output(self, hero, "DEFAULT"); //

	Mod_REL_WendelS = 2;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wendel_Unruhen6 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen6_Condition;
	information	= Info_Mod_Wendel_Unruhen6_Info;
	permanent	= 1;
	important	= 1;
};                       

FUNC INT Info_Mod_Wendel_Unruhen6_Condition()
{
	if (Mod_REL_WendelS == 4)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen6_Info()
{
	Info_ClearChoices	(Info_Mod_Wendel_Unruhen6);

	Info_AddChoice	(Info_Mod_Wendel_Unruhen6, "Widze Pana oczywisty wspóludzial, Wendel.", Info_Mod_Wendel_Unruhen6_B);
	Info_AddChoice	(Info_Mod_Wendel_Unruhen6, "Dokladnie, po rzymsku, prosze staraj sie byc obiektywnym.", Info_Mod_Wendel_Unruhen6_A);
};

FUNC VOID Info_Mod_Wendel_Unruhen6_B()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen6_B_15_00"); //Widze Pana oczywisty wspóludzial, Wendel.
	AI_Output(self, hero, "DEFAULT"); //

	Mod_REL_WendelS = 6;

	Info_ClearChoices	(Info_Mod_Wendel_Unruhen6);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Wendel_Unruhen6_A()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen6_A_15_00"); //Dokladnie, po rzymsku, prosze staraj sie byc obiektywnym.
	AI_Output(self, hero, "DEFAULT"); //

	Mod_REL_WendelS = 5;

	Mod_REL_WendelS_Choice += 1;

	Info_ClearChoices	(Info_Mod_Wendel_Unruhen6);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wendel_Unruhen7 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen7_Condition;
	information	= Info_Mod_Wendel_Unruhen7_Info;
	permanent	= 1;
	important	= 1;
};                       

FUNC INT Info_Mod_Wendel_Unruhen7_Condition()
{
	if (Mod_REL_WendelS == 10)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen7_Info()
{
	Info_ClearChoices	(Info_Mod_Wendel_Unruhen7);

	Info_AddChoice	(Info_Mod_Wendel_Unruhen7, "Wendel, powinienes sie w tej sprawie poddac.", Info_Mod_Wendel_Unruhen7_B);
	Info_AddChoice	(Info_Mod_Wendel_Unruhen7, "Utrzymuj niski profil, Roman.", Info_Mod_Wendel_Unruhen7_A);
};

FUNC VOID Info_Mod_Wendel_Unruhen7_B()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen7_B_15_00"); //Wendel, powinienes sie w tej sprawie poddac.
	AI_Output(self, hero, "DEFAULT"); //

	Mod_REL_WendelS = 12;

	Info_ClearChoices	(Info_Mod_Wendel_Unruhen7);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Wendel_Unruhen7_A()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen7_A_15_00"); //Utrzymuj niski profil, Roman.
	AI_Output(self, hero, "DEFAULT"); //

	Mod_REL_WendelS = 11;

	Mod_REL_WendelS_Choice += 1;

	Info_ClearChoices	(Info_Mod_Wendel_Unruhen7);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wendel_Unruhen8 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen8_Condition;
	information	= Info_Mod_Wendel_Unruhen8_Info;
	permanent	= 1;
	important	= 1;
};                       

FUNC INT Info_Mod_Wendel_Unruhen8_Condition()
{
	if (Mod_REL_WendelS == 16)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen8_Info()
{
	Info_ClearChoices	(Info_Mod_Wendel_Unruhen8);

	Info_AddChoice	(Info_Mod_Wendel_Unruhen8, "Zadanie Romana jest w pelni akceptowalne.", Info_Mod_Wendel_Unruhen8_B);
	Info_AddChoice	(Info_Mod_Wendel_Unruhen8, "Odszkodowanie byloby obecnie zbyt dobre.", Info_Mod_Wendel_Unruhen8_A);
};

FUNC VOID Info_Mod_Wendel_Unruhen8_B()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen8_B_15_00"); //Zadanie Romana jest w pelni akceptowalne.

	if (Mod_REL_WendelS_Choice == 0)
	{
		AI_Output(self, hero, "Info_Mod_Wendel_Unruhen8_B_23_01"); //Przykro mi, ze musze wam to powiedziec, ale pod tym bezstronnym nie wyobrazam sobie tego, co nam tu pokazales.
		AI_Output(self, hero, "Info_Mod_Wendel_Unruhen8_B_23_02"); //Nie jestem zadowolony z wyniku dyskusji i sugeruje, ze spróbuje ponownie spróbowac pózniej.

		Mod_REL_WendelS = 17;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Wendel_Unruhen8_B_23_03"); //Tak, mam tego swiadomosc. Bedziemy cos z tym zrobic.
		AI_Output(self, hero, "Info_Mod_Wendel_Unruhen8_B_23_04"); //Byc moze moglibysmy odlozyc na jakis czas w przyszlosci rekompensate, aby uporzadkowac budzet. Czy to wszystko byloby sluszne?

		Mod_REL_WendelS = 18;
	};

	Info_ClearChoices	(Info_Mod_Wendel_Unruhen8);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Wendel_Unruhen8_A()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen8_A_15_00"); //Odszkodowanie byloby obecnie zbyt dobre.
	AI_Output(self, hero, "DEFAULT"); //

	Mod_REL_WendelS = 20;

	Mod_REL_WendelS_Choice += 1;

	Info_ClearChoices	(Info_Mod_Wendel_Unruhen8);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wendel_Unruhen9 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen9_Condition;
	information	= Info_Mod_Wendel_Unruhen9_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Wendel_Unruhen9_Condition()
{
	if (Mod_REL_WendelS == 19)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen9_Info()
{
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen9_23_00"); //Wydaje sie, ze rozwiazalismy najpowazniejsze problemy. Mam nadzieje, ze teraz wszystko bedzie przebiegalo sprawnie.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen9_23_01"); //Dziekujemy za pomoc.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "W koncu istnieja juz podstawy do dalszych negocjacji. To powinien byc poczatek spokoju w Khoracie.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_SUCCESS);

	B_GivePlayerXP	(800);

	Mod_REL_Stadthalter = 2;

	CurrentNQ += 1;

	B_StartOtherRoutine	(self, "STADTHALTER");
};

INSTANCE Info_Mod_Wendel_Plagenquest (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Plagenquest_Condition;
	information	= Info_Mod_Wendel_Plagenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wydaje mi sie, ze potrzebujesz eksterminatora.";
};

FUNC INT Info_Mod_Wendel_Plagenquest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Plagenquest))
	&& (Mod_REL_Stadthalter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Plagenquest_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST01");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_01"); //Tak, wyslalismy juz przez miasto kilka mlotków mysliwych.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_02"); //Ale nawet mlotkami nie udalo sie powstrzymac szkodników.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_03"); //Bez wzgledu na to, jak czesto ich bijesz, wracaja oni do nas i w towarzystwie wielu swoich rodaków.
	B_Say	(hero, self, "$PLAGENQUEST02");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_05"); //W rzeczywistosci, obecnie badam kroniki miasta i spotkalem sie z czyms.....
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_06"); //Minie jednak troche czasu, zanim przejde do pelnej analizy tekstu.
	B_Say	(hero, self, "$PLAGENQUEST03");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_08"); //Tak, mozesz spróbowac szczescia jako mlotkowiec na dworze, w którym obecnie jest wiele brudnych stworzen.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_09"); //Moze odniesiesz wiekszy sukces.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Wydaje sie, ze Wendel znalazl pewne wskazówki w kronikach miasta. Do czasu, gdy on je do konca zglebi, mam wypróbowac mnie w dworcu do polowania na owady.");

	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
};

INSTANCE Info_Mod_Wendel_Plagenquest_02 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Plagenquest_02_Condition;
	information	= Info_Mod_Wendel_Plagenquest_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wendel_Plagenquest_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Plagenquest))
	&& (Mod_REL_Stadthalter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Plagenquest_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_00"); //Ach, dobrze, zeby cie zobaczyc, odkrylem cos waznego.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_01"); //Choroba, która obecnie dotyka miasto, istniala juz wiele stuleci temu - niedlugo po jego powstaniu.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_02"); //Aby zabezpieczyc blogoslawienstwo bogów dla miasta i jego otoczenia, w holdzie bogom uczyniono wówczas poswiecenia zwierzat.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_03"); //Kazdy mial obowiazek poswiecic pewna liczbe zwierzat.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_04"); //Jednak jeden z ich ojców zalozycieli byl tak skapy, ze zamiast owcy czy molate poswiecil owady.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_05"); //Bogowie byli tak wsciekli, ze przenosili ludzkie pragnienie bogatej populacji zwierzat na owady srodowiska.

	B_Say	(hero, self, "$PLAGENQUEST04");

	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_07"); //No cóz, z klubem chemicznym.

	B_Say	(hero, self, "$PLAGENQUEST05");

	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_09"); //Tak, przez dlugi czas bylo sie zupelnie bezradnym i wydawalo sie, ze trzeba sie bylo porzucic miasto.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_10"); //Ale wtedy sprawiedliwy i szanowany obywatel Chemos zostal wysypany snem.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_11"); //Otrzymal on instrukcje jak zbudowac bron, która moglaby wypedzic zaraze.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_12"); //Dlatego wlasnie nasz zwyczaj z mlotkami miejskimi musi przyjsc do walki z owadami.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_13"); //Mloty i kluby nie róznily sie wówczas zasadniczo.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_14"); //Nasze prawo w tym zakresie siega nieco pózniej, kiedy to mlotki nadano im charakterystyczny ksztalt, a kluby zostaly zastapione z powodów praktycznych.

	B_Say	(hero, self, "$PLAGENQUEST06");

	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_16"); //Nie, juz nie boje sie. A produkcja takiej broni nie jest nieskomplikowana. Znalazlem te instrukcje.....

	B_Say	(hero, self, "$PLAGENQUEST07");

	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_18"); //Oto jej kopia.

	B_GiveInvItems	(self, hero, ItWr_Bauplan_ChemischeKeule, 1);

	B_Say	(hero, self, "$PLAGENQUEST08");

	B_HeroFakeScroll ();

	B_Say	(hero, self, "$PLAGENQUEST09");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_21"); //Czy to prawda? Bedzie pan nam wszystkim przysluzyl sie swietnie.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_22"); //Jak tylko bedziesz miec wszystko razem, wróc tutaj i oddaj materialy do naszego kowala.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_23"); //A gdzies w miescie znajdziemy klub. Dziekuje, dziekuje.

	B_LogEntry_More	(TOPIC_MOD_ADANOS_PLAGE, TOPIC_MOD_ADANOS_DRECKSVIECHER, "Aha, plaga owadów opiera sie wiec na karze dla bogów za popelnione zniewagi.", "W porzadku, teraz moge szukac chemicznego materialu klubowego, który moze wypedzic bydlo. W Khoracie powinni byc w stanie sami znalezc klub w Khoracie....");

	B_GivePlayerXP	(200);

	Mod_WM_Plage_PartInsekt = 1;
};

INSTANCE Info_Mod_Wendel_Plagenquest_03 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Plagenquest_03_Condition;
	information	= Info_Mod_Wendel_Plagenquest_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wendel_Plagenquest_03_Condition()
{
	if (Npc_HasItems(hero, ItMw_Chemo) == 1)
	&& (Mod_REL_Stadthalter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Plagenquest_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_03_23_00"); //Slysze, ze dostales klub. Teraz nadszedl czas, aby wypedzic szkodniki z miasta.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_03_23_01"); //Wiele zwierzat zebralo sie na targowisku. Wez klub chemiczny i zniszcz go.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Teraz nadszedl czas, aby sprawdzic, czy klub chemiczny dziala. Mam do czynienia z wszystkimi lupkami, które zebraly sie na rynku.");

	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
};

INSTANCE Info_Mod_Wendel_Plagenquest_04 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Plagenquest_04_Condition;
	information	= Info_Mod_Wendel_Plagenquest_04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Klub byl w stanie powstrzymac owady. Pokonalem ich wszystkich.";
};

FUNC INT Info_Mod_Wendel_Plagenquest_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Plagenquest_03))
	&& (Npc_IsDead(Insekt_04))
	&& (Npc_IsDead(Insekt_05))
	&& (Npc_IsDead(Insekt_06))
	&& (Mod_REL_Stadthalter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Plagenquest_04_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST10");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_01"); //To wspanialy i pierwszy krok na drodze do ostatecznego wygnania zla.
	B_Say	(hero, self, "$PLAGENQUEST11");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_03"); //Tak, niestety dowiedzielismy sie, ze nowe pasozyty nadal pochodza z okolicznych lasów.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_04"); //Gdzies tam, gdzie musi byc korzen zla...... zlowieszczy olbrzymi blad, o którym mówily zródla.
	B_Say	(hero, self, "$PLAGENQUEST12");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_06"); //Jest cos, a raczej ktos, kto moze Ci w tym pomóc.
	B_Say	(hero, self, "$PLAGENQUEST13");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_08"); //Obywatel naszego miasta. Jego imie jest aksonem i nosi krew chemiczna, jak dowiedzialem sie kilka godzin temu.
	B_Say	(hero, self, "$PLAGENQUEST14");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_10"); //Cóz, z jednej strony rodowody daja jasne wskazówki, a z drugiej..... no cóz.....
	B_Say	(hero, self, "$PLAGENQUEST15");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_12"); //... Znalezlismy z nim klub chemiczny. Caly czas wisiala w salonie jego domu.
	B_Say	(hero, self, "$PLAGENQUEST16");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_14"); //W kazdym razie, powinien byc w stanie pomóc Ci wyczuc chrzaszcze, odkryc i zniszczyc olbrzymi blad. On juz czeka na Ciebie poza miastem.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Grmpff, to jest coraz lepsze i lepsze. Caly czas klub chemiczny wisial wokól Axona, potomka chemoo.... No cóz, teraz pozwolono mi strzelac z nim do wielkiego bakcyla w lesie. Axon czeka na mnie poza miastem.");

	B_StartOtherRoutine	(Mod_7415_OUT_Axon_REL, "VORSTADT");
	AI_Teleport	(Mod_7415_OUT_Axon_REL, "REL_CITY_001");
};

INSTANCE Info_Mod_Wendel_Plagenquest_05 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Plagenquest_05_Condition;
	information	= Info_Mod_Wendel_Plagenquest_05_Info;
	permanent	= 0;
	important	= 0;
	description	= "To sie dzieje. Ogromny luk zostaje pokonany.";
};

FUNC INT Info_Mod_Wendel_Plagenquest_05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Axon_Plagenquest_02))
	&& (Npc_IsDead(Riesenbug))
	&& (Mod_REL_Stadthalter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Plagenquest_05_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST17");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_05_23_01"); //To wspaniale. Uczyniles nasze miasto sluzba o nieocenionej wartosci i rozwiales zlo.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_05_23_02"); //Wez to zloto i mlotek miejski jako podziekowania. Niech wam towarzyszy blogoslawienstwo bogów.

	B_ShowGivenThings	("1000 Otrzymane zloto i mlot miejski");

	CreateInvItems	(hero, ItMw_Stadthammer, 1);
	CreateInvItems	(hero, ItMi_Gold, 1000);

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_SUCCESS);

	B_GivePlayerXP	(800);

	if (!Npc_IsDead(Mod_7415_OUT_Axon_REL))
	{
		B_StartOtherRoutine	(Mod_7415_OUT_Axon_REL, "START");
	};

	B_Göttergefallen (2, 1);
};

INSTANCE Info_Mod_Wendel_Andre (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Andre_Condition;
	information	= Info_Mod_Wendel_Andre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wendel_Andre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Herold))
	&& (Mod_PAL_HeroBot == 17)
	&& (Mod_REL_Stadthalter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Andre_Info()
{
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_00"); //Dobry poranek, zolnierz. Czy tez powinienem wezwac Pana kapitana?
	B_Say	(hero, self, "$HEROBOTQUEST01");
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_02"); //Plan Pana Andre' a zadzialal, ale nie bylo sposobu na wyprowadzenie wyjscia do wielkiego pieca, wiec on nasycil cie, wlozyl kostium i zwabil robota do wielkiego pieca.
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_03"); //Znalezlismy obok Ciebie zapieczetowana koperte. W nim Andre wyjasnil cala sprawe i mianowal cie swoim nastepca.
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_04"); //Ale tutaj.... mozesz sam przeczytac szczególy.

	B_GiveInvItems	(self, hero, ItWr_AndreAbschied, 1);

	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_05"); //A ja powinienem wam dac ten klucz. Prawdopodobnie do pudelka w pokoju kapitana.

	B_GiveInvItems	(self, hero, ItKe_Andre, 1);

	B_Say	(hero, self, "$HEROBOTQUEST02");
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_06"); //Dokladnie. Brakowalo Ci nabozenstwa, spales przez 32 godziny snu. Stary konik wydaje sie byc w bardzo dobrej formie.
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_07"); //Jesli chcesz sie pozegnac, Andre jest teraz na cmentarzu. Przynajmniej jego prochy. Ale odpocznij najpierw, nie ucieknie od ciebie.
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_08"); //O tak, zanim zapomne: operator wielkiego pieca poprosil cie o to, sprawdz go.

	B_Göttergefallen(1, 5);

	B_GivePlayerXP	(1000);

	Log_CreateTopic	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_PAL_BOT, TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Robot jest pokonany, ale Lord Andre musial poswiecic sie, aby to osiagnac. Teraz mianowal mnie swoim nastepca.", "Andre faktycznie poswiecil sie, aby zniszczyc robota. W liscie nazwal mnie swoim nastepca i dal mi klucz, który prawdopodobnie prowadzi mnie do jego klatki piersiowej w koszarach.");
	B_SetTopicStatus	(TOPIC_MOD_PAL_BOT, LOG_SUCCESS);

	B_LogEntry_NS	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Operator wielkiego pieca Robert chce mnie zobaczyc. Powinienem zatrzymac sie tam i zapytac, o co chodzi.");
};

INSTANCE Info_Mod_Wendel_Freudenspender (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Freudenspender_Condition;
	information	= Info_Mod_Wendel_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Chcesz dac przyjemnosc?";
};                       

FUNC INT Info_Mod_Wendel_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Freudenspender_15_00"); //Chcesz dac przyjemnosc?
	AI_Output(self, hero, "Info_Mod_Wendel_Freudenspender_23_01"); //Co to jest?
	AI_Output(hero, self, "Info_Mod_Wendel_Freudenspender_15_02"); //Droga do duchowosci.
	AI_Output(self, hero, "Info_Mod_Wendel_Freudenspender_23_03"); //(smiech) Wypróbuj staruszki.
};

INSTANCE Info_Mod_Wendel_Pickpocket (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Pickpocket_Condition;
	information	= Info_Mod_Wendel_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Wendel_Pickpocket_Condition()
{
	C_Beklauen	(79, ItMi_Gold, 23);
};

FUNC VOID Info_Mod_Wendel_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);

	Info_AddChoice	(Info_Mod_Wendel_Pickpocket, DIALOG_BACK, Info_Mod_Wendel_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wendel_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wendel_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wendel_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);
};

FUNC VOID Info_Mod_Wendel_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);

		Info_AddChoice	(Info_Mod_Wendel_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wendel_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wendel_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wendel_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wendel_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wendel_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wendel_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wendel_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wendel_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wendel_EXIT (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_EXIT_Condition;
	information	= Info_Mod_Wendel_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wendel_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wendel_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
