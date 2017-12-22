INSTANCE Info_Mod_Mario_Hi (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hi_Condition;
	information	= Info_Mod_Mario_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co robicie tutaj wszystko w pojedynke?";
};

FUNC INT Info_Mod_Mario_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mario_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hi_15_00"); //Co robicie tutaj wszystko w pojedynke?
	AI_Output(self, hero, "Info_Mod_Mario_Hi_08_01"); //Spedze piwo na raz. W rzeczywistosci pomaga to w walce z frustracja.
	AI_Output(hero, self, "Info_Mod_Mario_Hi_15_02"); //Jaka frustracja?
	AI_Output(self, hero, "Info_Mod_Mario_Hi_08_03"); //Nazywaja mnie wieczna milicja. Od lat staram sie stac paladyna, ale na szczycie lancucha dowodzenia nie mam przyjaciól, ale raczej wrogów.
	AI_Output(self, hero, "Info_Mod_Mario_Hi_08_04"); //Dlatego wlasnie wysylam od jednego zadania do drugiego.
	AI_Output(self, hero, "Info_Mod_Mario_Hi_08_05"); //Dwadziescia dwa razy robilem to do tej pory. Niektórzy robia to bez egzaminu wstepnego.
	AI_Output(self, hero, "Info_Mod_Mario_Hi_08_06"); //A teraz dali mi zadanie, którego nie potrafie rozwiazac.
};

INSTANCE Info_Mod_Mario_WarumFeinde (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_WarumFeinde_Condition;
	information	= Info_Mod_Mario_WarumFeinde_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego masz wrogów wsród paladynów?";
};

FUNC INT Info_Mod_Mario_WarumFeinde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_WarumFeinde_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_WarumFeinde_15_00"); //Dlaczego masz wrogów wsród paladynów?
	AI_Output(self, hero, "Info_Mod_Mario_WarumFeinde_08_01"); //Nigdy nie ukrywalem, ze jestem gejem.
	AI_Output(self, hero, "Info_Mod_Mario_WarumFeinde_08_02"); //To tutaj konczy sie dobroczynnosc paladynów. Najpiekniejsze po prostu spojrzec na mnie smiesznie.
	AI_Output(self, hero, "Info_Mod_Mario_WarumFeinde_08_03"); //"Paladynka gejowska? Sam Innos musi to zatrzymac!"
};

INSTANCE Info_Mod_Mario_Aufgabe (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Aufgabe_Condition;
	information	= Info_Mod_Mario_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie jest to nierozwiazywalne zadanie?";
};

FUNC INT Info_Mod_Mario_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Aufgabe_15_00"); //Jakie jest to nierozwiazywalne zadanie?
	AI_Output(self, hero, "Info_Mod_Mario_Aufgabe_08_01"); //W duzym lesie poza miastem, poza miastem, w lasach ma byc dwóch kapeluszników.
	AI_Output(self, hero, "Info_Mod_Mario_Aufgabe_08_02"); //Zamiast wysylac druzyne, która zajmie sie krytykami, dostaje to wszystko.
	AI_Output(self, hero, "Info_Mod_Mario_Aufgabe_08_03"); //Prawdopodobnie dobrze pasowalbym do pulkownika, gdyby tam karmiono mnie pulkownikiem.
};

INSTANCE Info_Mod_Mario_Hilfe (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe_Condition;
	information	= Info_Mod_Mario_Hilfe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Móglbym Panstwu pomóc z zalamywakami.";
};

FUNC INT Info_Mod_Mario_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe_15_00"); //Móglbym Panstwu pomóc z zalamywakami.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe_08_01"); //Czy jestes slabym skazanym?
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe_15_02"); //Jednym z moich specjalów sa suwaki.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe_08_03"); //Warto spróbowac. Nawet Twoja firma nie pozwoli mi jeszcze bardziej zanurzyc sie w oczach innych.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe_08_04"); //Czy natychmiast odjezdzamy? Znam droge.

	Log_CreateTopic	(TOPIC_MOD_MARIO_UPGRADE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "Milicjant Mario przechodzi kolejne próby. Teraz stoi przed nim problem: nie moze nic zrobic w sprawie dwóch snapperów. Ofiarowalem mu swoja pomoc.");
};

INSTANCE Info_Mod_Mario_Hilfe2 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe2_Condition;
	information	= Info_Mod_Mario_Hilfe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tak, tu idziemy.";
};

FUNC INT Info_Mod_Mario_Hilfe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe2_15_00"); //Tak, tu idziemy.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe2_08_01"); //Podazaj za mna, idz za mna.

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDE");

	Wld_InsertNpc	(Snapper_Mario_01,	"WP_MARIOTOUR_04");
	Wld_InsertNpc	(Snapper_Mario_02,	"WP_MARIOTOUR_04");
};

INSTANCE Info_Mod_Mario_Hilfe3 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe3_Condition;
	information	= Info_Mod_Mario_Hilfe3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mario_Hilfe3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe2))
	&& (Npc_IsDead(Snapper_Mario_01))
	&& (Npc_IsDead(Snapper_Mario_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe3_Info()
{
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe3_08_00"); //To byl ledwie sukces. W kazdym razie dziekuje za wsparcie.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe3_08_01"); //Poinformuje Garonda, ze zdalem równiez ten egzamin.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe3_08_02"); //A potem nadal widze, co czeka mnie dalej.....
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe3_15_03"); //Daj mi znac, czy ponownie potrzebujesz mojej pomocy.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe3_08_04"); //Jest to malo prawdopodobne. Ale dziekuje za te oferte.

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "Strzelalismy w szponki. Mario ukonczyl wiec kolejne zadanie dla Paladynu.");

	B_GivePlayerXP	(50);

	Mod_Mario_Day = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Mario_Hilfe4 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe4_Condition;
	information	= Info_Mod_Mario_Hilfe4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie zostales jeszcze przyjety do paladynu?";
};

FUNC INT Info_Mod_Mario_Hilfe4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe3))
	&& (Wld_GetDay()-3 >= Mod_Mario_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe4_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_15_00"); //Nie zostales jeszcze przyjety do paladynu?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_08_01"); //Oto umowa. Ponownie dal mi pan nowe wyzwanie i tym razem naprawde trace.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_15_02"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_08_03"); //To prawdziwa horda dobrze wyposazonych goblinów, którzy w ostatnich tygodniach wielokrotnie dostarczali potyczek. Obok ciebie przestepcy.

	Info_ClearChoices	(Info_Mod_Mario_Hilfe4);

	Info_AddChoice	(Info_Mod_Mario_Hilfe4, "Tym razem nie mozesz liczyc na moja pomoc.", Info_Mod_Mario_Hilfe4_B);
	Info_AddChoice	(Info_Mod_Mario_Hilfe4, "Czy mozemy to zrobic razem?", Info_Mod_Mario_Hilfe4_A);
};

FUNC VOID Info_Mod_Mario_Hilfe4_B()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_B_15_00"); //Tym razem nie mozesz liczyc na moja pomoc.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_B_08_01"); //Nie prosilem nawet o to.

	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Mario_Hilfe4);
};

FUNC VOID Info_Mod_Mario_Hilfe4_A()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_A_15_00"); //Czy mozemy to zrobic razem?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_A_08_01"); //Ledwo. Potrzebujemy co najmniej jednego bojownika. Przeszkolony straznik.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_A_15_02"); //Móglbym zapytac Diego. Nie ma teraz nic do zrobienia. I on tez jest dobry.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_A_08_03"); //Diego? Czyz nie jest to takze byly wiezien?
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_A_15_04"); //Tak. Czy jest to problem dla Ciebie?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_A_08_05"); //Nie, ciesze sie, ze ktos jest po mojej stronie. Zapytaj go spokojnie i przynos tutaj.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_A_15_06"); //Do zobaczenia pózniej.

	Mod_Mario = 1;

	Info_ClearChoices	(Info_Mod_Mario_Hilfe4);

	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "Mario ma nowa misje - grupe silnych goblinów, którzy powoduja konflikty. Poniewaz obaj bylibysmy misja samobójcza, chcialbym prosic Diego o wsparcie.");
};

INSTANCE Info_Mod_Mario_Hilfe5 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe5_Condition;
	information	= Info_Mod_Mario_Hilfe5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Diego's in. Pokaz nam gobliny.";
};

FUNC INT Info_Mod_Mario_Hilfe5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Mario))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe5_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe5_15_00"); //Diego's in. Pokaz nam gobliny.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe5_08_01"); //Wszystko jasne. Nie jestes tak daleko.

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOGOBBOS");

	Wld_InsertNpc	(Gobbo_Green_Mario_01,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_02,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_03,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_04,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_05,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_06,	"NW_CITY_TO_FOREST_04_05");

	Wld_InsertNpc	(Gobbo_Black_Mario_01,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Black_Mario_02,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Black_Mario_03,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Black_Mario_04,	"NW_CITY_TO_FOREST_04_05");

	Wld_InsertNpc	(Gobbo_Warrior_Mario_01,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Warrior_Mario_02,	"NW_CITY_TO_FOREST_04_05");
};

INSTANCE Info_Mod_Mario_Hilfe6 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe6_Condition;
	information	= Info_Mod_Mario_Hilfe6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mario_Hilfe6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe5))
	&& (Npc_IsDead(Gobbo_Green_Mario_01))
	&& (Npc_IsDead(Gobbo_Green_Mario_02))
	&& (Npc_IsDead(Gobbo_Green_Mario_03))
	&& (Npc_IsDead(Gobbo_Green_Mario_04))
	&& (Npc_IsDead(Gobbo_Green_Mario_05))
	&& (Npc_IsDead(Gobbo_Green_Mario_06))
	&& (Npc_IsDead(Gobbo_Black_Mario_01))
	&& (Npc_IsDead(Gobbo_Black_Mario_02))
	&& (Npc_IsDead(Gobbo_Black_Mario_03))
	&& (Npc_IsDead(Gobbo_Black_Mario_04))
	&& (Npc_IsDead(Gobbo_Warrior_Mario_01))
	&& (Npc_IsDead(Gobbo_Warrior_Mario_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe6_Info()
{
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_08_00"); //Ciezka praca. Podziel sie swoja nagroda z Diego.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_08_01"); //Jestem bardzo ciekawy, czy Garond moze pomyslec o kolejnym trudniejszym tescie.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_08_02"); //Ale nawet jesli jego wyobraznia nie jest tak dobra, obawiam sie, ze odniesie sukces.

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "Mario ukonczyl swoje dwudzieste czwarte zlecenie. Bylbym zaskoczony, gdyby juz teraz awansowal.");

	B_GivePlayerXP	(200);

	Mod_Mario_Day = Wld_GetDay();

	B_StartOtherRoutine	(self, "START");

	Info_ClearChoices	(Info_Mod_Mario_Hilfe6);

	Info_AddChoice	(Info_Mod_Mario_Hilfe6, "Od teraz jestes sam. Mialem dosc.", Info_Mod_Mario_Hilfe6_B);
	Info_AddChoice	(Info_Mod_Mario_Hilfe6, "Mozesz na mnie liczyc.", Info_Mod_Mario_Hilfe6_A);
};

FUNC VOID Info_Mod_Mario_Hilfe6_B()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe6_B_15_00"); //Od teraz jestes sam. Mialem dosc.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_B_08_01"); //Zbyt zle, ale nie moge Cie zmusic.

	Mod_Mario = 0;

	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Mario_Hilfe6);
};

FUNC VOID Info_Mod_Mario_Hilfe6_A()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe6_A_15_00"); //Mozesz na mnie liczyc.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_A_08_01"); //Dziekuje, dziekuje.

	Info_ClearChoices	(Info_Mod_Mario_Hilfe6);
};

INSTANCE Info_Mod_Mario_Hilfe7 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe7_Condition;
	information	= Info_Mod_Mario_Hilfe7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nadal nie Paladin?";
};

FUNC INT Info_Mod_Mario_Hilfe7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe6))
	&& (Wld_GetDay()-5 >= Mod_Mario_Day)
	&& (Mod_Mario == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe7_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe7_15_00"); //Nadal nie Paladin?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_08_01"); //Teraz moge zostac przyjety.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe7_15_02"); //Gratulacje! Czy wcale nie jestes szczesliwy?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_08_03"); //W ciagu ostatnich kilku dni rozwialy mnie watpliwosci, czy naprawde byloby dobrze, gdybym zostal Paladinem.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_08_04"); //Wiem teraz, ze trudno byloby mi sie wsród nich zaprzyjaznic. Z drugiej strony jest to moje zyczenie, bo bylem malym chlopcem.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_08_05"); //Co myslisz?

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Mario_Hilfe7);

	Info_AddChoice	(Info_Mod_Mario_Hilfe7, "Madrzejsze wydaje sie równiez dalsze nie draznic ich.", Info_Mod_Mario_Hilfe7_B);
	Info_AddChoice	(Info_Mod_Mario_Hilfe7, "Nie mozesz sie teraz poddac!", Info_Mod_Mario_Hilfe7_A);
};

FUNC VOID Info_Mod_Mario_Hilfe7_B()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe7_B_15_00"); //Madrzejsze wydaje sie równiez dalsze nie draznic ich.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_B_08_01"); //Wlasnie o to myslalem.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_B_08_02"); //Kto wie, jakie zasady ten klub wymyslilby, aby nadal przesladowac mnie!
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_B_08_03"); //Zgadzam sie z innymi milicjantami. Nie powinienem brac zadnych szans.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_B_08_04"); //Dziekujemy za porady i pomoc. Bez Was, piwko Coragona byloby prawdopodobnie moim najlepszym przyjacielem....

	B_GivePlayerXP	(50);

	Mod_Mario = 2;

	Mod_Mario_Day = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Mario_Hilfe7);
};

FUNC VOID Info_Mod_Mario_Hilfe7_A()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe7_A_15_00"); //Nie mozesz sie poddac teraz po zwyciestwie nad Paladyniem!
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_A_08_01"); //Mysle, ze masz racje. Wyglada na to, ze w ostatniej chwili trace wszystkie moje wnetrznosci.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_A_08_02"); //W zwiazku z tym pózniej, skontaktuje sie z Garondem.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_A_08_03"); //Dziekuje za aktywne wsparcie. Bez Was, piwko Coragona byloby prawdopodobnie moim najlepszym przyjacielem....

	B_GivePlayerXP	(50);

	Mod_Mario = 3;

	Mod_Mario_Day = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Mario_Hilfe7);
};

INSTANCE Info_Mod_Mario_Hilfe8 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe8_Condition;
	information	= Info_Mod_Mario_Hilfe8_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mario_Hilfe8_Condition()
{
	if (Mod_Mario == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe8_Info()
{
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_08_00"); //Ponownie musicie mi pomóc, prosze!

	Info_ClearChoices	(Info_Mod_Mario_Hilfe8);

	Info_AddChoice	(Info_Mod_Mario_Hilfe8, "Nie mam na to czasu.", Info_Mod_Mario_Hilfe8_B);
	Info_AddChoice	(Info_Mod_Mario_Hilfe8, "Co Pan ma ten czas?", Info_Mod_Mario_Hilfe8_A);
};

FUNC VOID Info_Mod_Mario_Hilfe8_B()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_B_15_00"); //Nie mam na to czasu.

	Info_ClearChoices	(Info_Mod_Mario_Hilfe8);
};

FUNC VOID Info_Mod_Mario_Hilfe8_A()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_A_15_00"); //Co Pan ma ten czas?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_08_01"); //Jakis czas temu pelnilem sluzbe straznicza w wiezieniu.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_08_02"); //Tam wlasnie spotkalem kogos takiego jak ja. Zakochalam sie w nim.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_A_15_03"); //Chcecie uwolnic wieznia.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_08_04"); //Powiedzial mi, ze wyladowal tam z powodu swoich upodoban. Bo sasiedzi starali sie go pozbyc. Nie jest przestepca.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_08_05"); //Zamierzamy opuscic Khorinis. Jest to miejsce ucisku.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_08_06"); //Bedziemy szukac lepszego domu.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_08_07"); //Jednak od wiezienia do bram miejskich sa straznicy milicji, którzy z pewnoscia nie pozwoliliby nam tak latwo pojechac.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_A_15_08"); //I jaka jest moja praca?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_08_09"); //Podczas pobytu w wiezieniu opiekujecie sie Panstwo dwoma bracmi na targowisku. Zabierz ja gdzies.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_08_10"); //Wyslij równiez Olavowi, on jest w drodze z koszar do bramy miejskiej.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_08_11"); //Sama zajme sie bojownikami w wiezieniu.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_A_15_12"); //Wszystko w porzadku, zaczynam.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_08_13"); //Wyjezdzam teraz. Prosze nie zawiesc!

	Mod_Mario = 9;

	Log_CreateTopic	(TOPIC_MOD_MARIO_FLUCHTHILFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MARIO_FLUCHTHILFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MARIO_FLUCHTHILFE, "Zwabic Olowiana i dwóch strazników przy bramie z dala od ich miejsca, tak aby Mario i jego przyjaciel mogli jak najszybciej uciec.");

	Info_ClearChoices	(Info_Mod_Mario_Hilfe8);

	B_StartOtherRoutine	(self, "KNAST");

	Wld_InsertNpc	(Mod_7648_VLK_Buerger_NW, "TOT");
};

INSTANCE Info_Mod_Mario_Hilfe9 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe9_Condition;
	information	= Info_Mod_Mario_Hilfe9_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mario_Hilfe9_Condition()
{
	if (Mod_Mario == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe9_Info()
{
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe9_08_00"); //Jestem w waszym dlugu. Mam jednak dla pana troche rekompensaty.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe9_08_01"); //Uzylibysmy tych eliksirów, gdybys nam nie pomógl.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe9_08_02"); //Teraz nie mamy dla nich nic pozytku.

	B_GiveInvItems	(self, hero, ItPo_Speed, 2);

	AI_Output(self, hero, "Info_Mod_Mario_Hilfe9_08_03"); //Teraz musimy odejsc. Zycze panu wszystkiego najlepszego.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe9_15_04"); //Teraz nalezy zachowac ostroznosc.

	B_SetTopicStatus	(TOPIC_MOD_MARIO_FLUCHTHILFE, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Mario_Pickpocket (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Pickpocket_Condition;
	information	= Info_Mod_Mario_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Mario_Pickpocket_Condition()
{
	C_Beklauen	(68, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Mario_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

	Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_BACK, Info_Mod_Mario_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Mario_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Mario_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Mario_Pickpocket);
};

FUNC VOID Info_Mod_Mario_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

		Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Mario_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Mario_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Mario_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Mario_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Mario_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Mario_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Mario_EXIT (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_EXIT_Condition;
	information	= Info_Mod_Mario_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Mario_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mario_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
