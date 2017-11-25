INSTANCE Info_Mod_Hagen_Hi (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Hi_Condition;
	information	= Info_Mod_Hagen_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_Hi_Condition()
{
	if (Mod_IstLehrling == 1)
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_00"); //Dziekuje za przybycie. Zrobiles tak samo dobrze jak byly skazany.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_01"); //Bede z panstwem szczery. Znikniecie tej bariery przysporzylo nam powaznych problemów.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_02"); //Wszyscy byli wiezniowie - co z nimi?
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_03"); //Król nakazal im, aby nie wyjezdzali na lad.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_04"); //Nie chce ich wszystkich w miescie, a wielu ludzi juz tego nie chce.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_05"); //Do tej pory dzieki Innosowi wiekszosc z nich pozostala w Minentalu.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_06"); //Ale droga do Khorinis nie jest juz zablokowana.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_07"); //I nawet nie potrafie sie domyslac, co sie wylegaja w obozach.
	AI_Output(hero, self, "Info_Mod_Hagen_Hi_15_08"); //Jaka role odgrywam w historii?
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_09"); //Jestes teraz godnym szacunku obywatelem. Wiedza panstwo o obu stronach.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_10"); //Potrzebuje troche informacji. Czym sa skazani? Gdzie sa wszedzie?
	AI_Output(hero, self, "Info_Mod_Hagen_Hi_15_11"); //Wiec powinienem szpiegowac.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_12"); //Nie zaszkodzi im, przeciwnie!
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_13"); //Próbuja mnie lobbowac, oszukiwac, bym mógl podejmowac lekkomyslne dzialania przeciwko Tobie.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_14"); //Jezeli nie znaleziono rozwiazania, byli skazani uznaja to za mroczne.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_15"); //Lub dla miasta! Nie chce byc odpowiedzialny za masakre.
	AI_Output(hero, self, "Info_Mod_Hagen_Hi_15_16"); //Co wiec powinienem zrobic? A co sie z tego wydostaje?
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_17"); //Spójrzcie na obóz bagienny i najemnik Doliny Kopalni.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_18"); //Slyszalem tez, ze w kotlinie dolinowej na pólnocy osiedlil sie bandyci.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_19"); //Byc moze istnieja inne grupy, które powstaly po zniknieciu bariery.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_20"); //Dowiedz sie, w jakim stopniu nastrój jest przeciwny nam. Liczba obozów niepodleglych.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_21"); //Czy chodzi o walke z przygotowaniami. Albo jesli pozostaje spokojnie. Pózniej zglos sie do mnie.
	AI_Output(hero, self, "Info_Mod_Hagen_Hi_15_22"); //A co z starym obozem?
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_23"); //Nie musisz pytac.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_24"); //Wiem wszystko, co musze wiedziec o Starym Obozie.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_25"); //W zamian dam Ci nieograniczony dostep do Minentala.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_26"); //Bedziesz prawie jedynym, który moze swobodnie poruszac sie zarówno w Khorinis, jak i w Minental.
	AI_Output(hero, self, "Info_Mod_Hagen_Hi_15_27"); //Bede wiec w drodze.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_36_28"); //Dziekuje..... Co.....? Czy to jest? To..... dotkliwy

	Log_CreateTopic	(TOPIC_MOD_HAGEN_ASYLANTEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_HAGEN_ASYLANTEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "Pan Hagen powierzyl mi kompleksowe zadanie: powinienem odwiedzic wszystkie grupy w Minental, stare lub nowe, i dowiedziec sie, jakie sa ich plany na przyszlosc. W tym celu powinienem porozmawiac z odpowiednimi przywódcami. Lord Hagen ma nadzieje, ze rozmowy te rzuca swiatlo na to, jak powinien ksztaltowac swoja polityke wieznia.");

	var int ptr;
	ptr = MEM_SearchVobByName("NW_2_OW_ORETRAIL");

	if (ptr > 0)
	{
		var oCTriggerChangeLevel tcl;
		MEM_AssignInst(tcl, ptr);

		tcl.levelname = "Minental\Minental.ZEN";
		tcl.startvob = "WP_INTRO09";
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "HAGENKO");
};

INSTANCE Info_Mod_Hagen_Asylanten (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Asylanten_Condition;
	information	= Info_Mod_Hagen_Asylanten_Info;
	permanent	= 1;
	important	= 0;
	description	= "Mam wiadomosci o grupach w Minental.";
};

FUNC INT Info_Mod_Hagen_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	&& ((Mod_Hagen_BL == 0)
	|| (Mod_Hagen_VL == 0)
	|| (Mod_Hagen_KG == 0)
	|| (Mod_Hagen_JL == 0)
	|| (Mod_Hagen_SL == 0)
	|| (Mod_Hagen_NL == 0))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_15_00"); //Mam wiadomosci o grupach w Minental.

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W kotlinie dolinowej na pólnocy znajduja sie bandyci.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W ruinie pojawily sie magowie transformacji.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nie ma zadnego zgrupowania na trasie daleko i szeroko.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Król wyslal swoja wlasna wojska, aby odebrac paszport (.... )", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Spolecznosc lowiecka wykonuje swój zawód.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo wzrasta!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo jest spokojne.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Cisza w Nowym Obozie.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nowy obóz planuje wybuch epidemii.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_BACK()
{
	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);
};

FUNC VOID Info_Mod_Hagen_Asylanten_F1()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_F1_15_00"); //W kotlinie dolinowej na pólnocy znajduja sie bandyci.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_F1_36_01"); //Bandyta? To nie wrózy dobrze...... Co móglbys dowiedziec?
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_F1_15_02"); //Nie ma ich zbyt wiele, ale nie moglem sie dowiedziec, jakie kroki zaplanowali kolejne.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_F1_36_03"); //Bede musial ja obserwowac.

	Mod_Hagen_BL = 1;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W kotlinie dolinowej na pólnocy znajduja sie bandyci.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W ruinie pojawily sie magowie transformacji.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nie ma zadnego zgrupowania na trasie daleko i szeroko.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Król wyslal swoje wojska, by strzegl przepustki.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Spolecznosc lowiecka wykonuje swój zawód.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo wzrasta!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo jest spokojne.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Cisza w Nowym Obozie.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nowy obóz planuje wybuch epidemii.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_E1()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_E1_15_00"); //W ruinie pojawily sie magowie transformacji.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_E1_36_01"); //Przeksztalcanie maga? Co to sa te stworzenia?
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_E1_15_02"); //Maja nadzieje na pomoc z zewnatrz, poniewaz ich rodzinny swiat neka goblinowa zaraza. Sa bardzo przyjemne.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_E1_36_03"); //I gdzie szukaja w Minentalu?
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_E1_36_04"); //Tak czy owak nie moge ich poprzec, wszyscy moi mezczyzni sa potrzebni.

	Mod_Hagen_VL = 1;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W kotlinie dolinowej na pólnocy znajduja sie bandyci.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W ruinie pojawily sie magowie transformacji.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nie ma zadnego zgrupowania na trasie daleko i szeroko.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Król wyslal swoje wojska, by strzegl przepustki.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Spolecznosc lowiecka wykonuje swój zawód.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo wzrasta!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo jest spokojne.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Cisza w Nowym Obozie.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nowy obóz planuje wybuch epidemii.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_D2()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_D2_15_00"); //Nie ma zadnego zgrupowania na trasie daleko i szeroko.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_D2_36_01"); //Wtedy sytuacja jest nieco bardziej zrelaksowana, niz myslalem.

	Mod_Hagen_KG = 2;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W kotlinie dolinowej na pólnocy znajduja sie bandyci.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W ruinie pojawily sie magowie transformacji.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nie ma zadnego zgrupowania na trasie daleko i szeroko.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Król wyslal swoje wojska, by strzegl przepustki.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Spolecznosc lowiecka wykonuje swój zawód.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo wzrasta!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo jest spokojne.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Cisza w Nowym Obozie.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nowy obóz planuje wybuch epidemii.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_D1()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_D1_15_00"); //Król wyslal swoje wojska, by strzegl przepustki.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_D1_36_01"); //Damn to! Jaki jest cel?
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_D1_15_02"); //Wyglada na to, ze wypadles mu z laski, a on juz ci nie ufa.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_D1_36_03"); //To znów jest!
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_D1_36_04"); //Gdy tylko znajdziecie sie kilka lat poza zasiegiem króla, jestescie zaintrygowani z kazdej strony i nie jestescie w stanie sie oprzec.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_D1_36_05"); //Bede musial przyjrzec sie blizej tym chlopcom.

	Mod_Hagen_KG = 1;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W kotlinie dolinowej na pólnocy znajduja sie bandyci.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W ruinie pojawily sie magowie transformacji.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nie ma zadnego zgrupowania na trasie daleko i szeroko.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Król wyslal swoje wojska, by strzegl przepustki.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Spolecznosc lowiecka wykonuje swój zawód.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo wzrasta!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo jest spokojne.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Cisza w Nowym Obozie.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nowy obóz planuje wybuch epidemii.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_C1()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_C1_15_00"); //Spolecznosc lowiecka wykonuje swój zawód.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_C1_36_01"); //Musieli oni przejsc przez przepustke, zanim móglbym ja sprawdzic.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_C1_36_02"); //Nie spowoduja one jednak wielu klopotów.

	Mod_Hagen_JL = 1;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W kotlinie dolinowej na pólnocy znajduja sie bandyci.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W ruinie pojawily sie magowie transformacji.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nie ma zadnego zgrupowania na trasie daleko i szeroko.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Król wyslal swoje wojska, by strzegl przepustki.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Spolecznosc lowiecka wykonuje swój zawód.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo wzrasta!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo jest spokojne.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Cisza w Nowym Obozie.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nowy obóz planuje wybuch epidemii.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_B2()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_B2_15_00"); //Bractwo wzrasta!
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_B2_36_01"); //Bractwo? Co planuje?
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_B2_15_02"); //Mysleli, ze sypialnia byla tylko sztuczka od króla, by utrzymac ich w miejscu.
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_B2_15_03"); //Dlatego sa teraz przekonani, ze Innos jest Bogiem klamstwa i zwrócil sie do Beliara.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_B2_36_04"); //Daj Innos to nie jest prawda!

	Mod_Hagen_SL = 2;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W kotlinie dolinowej na pólnocy znajduja sie bandyci.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W ruinie pojawily sie magowie transformacji.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nie ma zadnego zgrupowania na trasie daleko i szeroko.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Król wyslal swoje wojska, by strzegl przepustki.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Spolecznosc lowiecka wykonuje swój zawód.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo wzrasta!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo jest spokojne.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Cisza w Nowym Obozie.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nowy obóz planuje wybuch epidemii.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_B1()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_B1_15_00"); //Bractwo jest spokojne.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_B1_36_01"); //To dobra wiadomosc.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_B1_36_02"); //Nigdy jednak nie wiesz, kiedy jeden z ich fanatyków wezwie exodus.

	Mod_Hagen_SL = 1;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W kotlinie dolinowej na pólnocy znajduja sie bandyci.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W ruinie pojawily sie magowie transformacji.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nie ma zadnego zgrupowania na trasie daleko i szeroko.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Król wyslal swoje wojska, by strzegl przepustki.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Spolecznosc lowiecka wykonuje swój zawód.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo wzrasta!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo jest spokojne.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Cisza w Nowym Obozie.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nowy obóz planuje wybuch epidemii.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_A2()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_A2_15_00"); //W Nowym Obozie wszystko jest spokojne.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_A2_36_01"); //Trudno mi sobie wyobrazic.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_A2_36_02"); //Poniewaz jednak nie wiem nic bardziej szczególowego, prawdopodobnie bede musial podazac za Toba.

	Mod_Hagen_NL = 2;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W kotlinie dolinowej na pólnocy znajduja sie bandyci.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W ruinie pojawily sie magowie transformacji.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nie ma zadnego zgrupowania na trasie daleko i szeroko.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Król wyslal swoje wojska, by strzegl przepustki.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Spolecznosc lowiecka wykonuje swój zawód.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo wzrasta!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo jest spokojne.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Cisza w Nowym Obozie.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nowy obóz planuje wybuch epidemii.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_A1()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_A1_15_00"); //Nowy obóz planuje wybuch epidemii.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_A1_36_01"); //W Innosie! Powiedz mi wiecej!
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_A1_15_02"); //Bandietowie chca poplynac na lad i obalic króla.
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_A1_15_03"); //Jest bardzo prawdopodobne, ze przyjada do Khorinis po drodze.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_A1_36_04"); //Nie! Jesli uda im sie dostac na lad, to zgubie!

	Mod_Hagen_NL = 1;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W kotlinie dolinowej na pólnocy znajduja sie bandyci.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "W ruinie pojawily sie magowie transformacji.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nie ma zadnego zgrupowania na trasie daleko i szeroko.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Król wyslal swoje wojska, by strzegl przepustki.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Spolecznosc lowiecka wykonuje swój zawód.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo wzrasta!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Bractwo jest spokojne.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Cisza w Nowym Obozie.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Nowy obóz planuje wybuch epidemii.", Info_Mod_Hagen_Asylanten_A1);
	};
};

INSTANCE Info_Mod_Hagen_Asylanten2 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Asylanten2_Condition;
	information	= Info_Mod_Hagen_Asylanten2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powinnam byla znalezc wszystkie obozy.";
};

FUNC INT Info_Mod_Hagen_Asylanten2_Condition()
{
	if (Mod_Hagen_BL > 0)
	&& (Mod_Hagen_VL > 0)
	&& (Mod_Hagen_KG > 0)
	&& (Mod_Hagen_JL > 0)
	&& (Mod_Hagen_SL > 0)
	&& (Mod_Hagen_NL > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten2_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten2_15_00"); //Powinnam byla znalezc wszystkie obozy.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten2_36_01"); //Zrobiles mi pan wazna sluzbe. Nie moge Ci wystarczajaco podziekowac.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten2_36_02"); //Teraz latwiej bedzie teraz reagowac na rzeczywista sytuacje w tym kraju.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten2_36_03"); //Zanim pozwole wam pójsc, obawiam sie, ze musze cie na chwile zranic.

	Mod_Talk_Sicherung = TRUE;

	B_SetTopicStatus	(TOPIC_MOD_HAGEN_ASYLANTEN, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	CurrentNQ += 1;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Hagen_Asylanten3 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Asylanten3_Condition;
	information	= Info_Mod_Hagen_Asylanten3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_Asylanten3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Asylanten2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten3_Info()
{
	Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

	B_Say	(hero, self, "$AARGH_1");

	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_00"); //Nie bierzcie tego osobiscie, ale nie moge sobie pozwolic na wiecej bledów.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_01"); //Wydalem wam serum prawdy, aby sprawdzic wasze wypowiedzi na temat grupowan.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_02"); //Nie martw sie, na pewno pozostaniesz przy zyciu.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_03"); //Jesli jednak sie do mnie oklamales, musze cie odebrac.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_04"); //Wiec powiedzmy: Czy powiedziales mi prawde o ugrupowaniach?

	if (Mod_Hagen_NL == 1)
	&& (Mod_Hagen_SL == 1)
	&& (Mod_Hagen_KG == 1)
	{
		AI_Output(hero, self, "Info_Mod_Hagen_Asylanten3_15_05"); //Mówilem prawde tylko wedlug mojej najlepszej wiedzy.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_06"); //Dla mnie to wiele znaczy.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_07"); //Prosze wybaczyc moja surowa droge. Tylko w ten sposób moge byc pewien.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_08"); //Efekt dzialania surowicy zanika w ciagu kilku minut, wtedy jestes juz sam.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_09"); //Otrzymasz równiez niewielka nagrode za niesprawiedliwosc, jakiej doznales.

		B_GiveInvItems	(self, hero, ItMi_Gold, 500);

		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_10"); //Mam nadzieje, ze nie jestes zbytnio zly na mnie?
		AI_Output(hero, self, "Info_Mod_Hagen_Asylanten3_15_11"); //Rozbije twarz, worek gówno.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_12"); //(powaznie) Przykro mi.

		Mod_Hagen_Asylanten = 1;
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Hagen_Asylanten3_15_13"); //(falowanie) Nr.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_14"); //Jaka jest natomiast sytuacja?
		AI_Output(hero, self, "Info_Mod_Hagen_Asylanten3_15_15"); //(lecace) Nowy Obóz planuje wyrwac sie z Minental i dotrzec statkiem do ladu.
		AI_Output(hero, self, "Info_Mod_Hagen_Asylanten3_15_16"); //Bractwo jest calkowicie spokojne.
		AI_Output(hero, self, "Info_Mod_Hagen_Asylanten3_15_17"); //Obóz strazników króla przy przeleczy, zebyscie nie mieli wladzy. Król cie nie ufa.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_18"); //To inaczej niz próbowales mi powiedziec, czyz nie?
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_19"); //A inny facet mówi, ze jestem paranoikiem.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_36_20"); //Albrecht wyprowadzic go stad. I upewnij sie, ze nie zapomni tego dnia tak szybko.

		AI_StopProcessInfos	(self);
	};
};

INSTANCE Info_Mod_Hagen_Alissandro (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Alissandro_Condition;
	information	= Info_Mod_Hagen_Alissandro_Info;
	permanent	= 0;
	important	= 0;
	description	= "Alissandro wyslal mnie, mamy prosbe o Paladyn.";
};

FUNC INT Info_Mod_Hagen_Alissandro_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Knast2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Alissandro_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Alissandro_15_00"); //Alissandro wyslal mnie, mamy prosbe o Paladyn.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_36_01"); //Slucham.
	AI_Output(hero, self, "Info_Mod_Hagen_Alissandro_15_02"); //Stary Obóz jest zagrozony przez demonicznych rycerzy pod przywództwem bylego arcybarona Gomeza i mamy nadzieje, ze Zakon Paladynów udzieli pomocy.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_36_03"); //Cóz, znam Alissandro, on jest madrym i sprawiedliwym czlowiekiem i jestem pewien, ze pod jego reka Stary Obóz bedzie dobrze zarzadzany, wiec chcemy spelnic twoja prosbe.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_36_04"); //Chce wyjasnic plan:
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_36_05"); //Najpierw przejdziemy przez opuszczona kopalnie do doliny Kopalni, gdzie zajmiemy stanowisko w chacie mysliwskiej. Pózniej wszystkie szlaki do i z Minentala zabierzemy.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_36_06"); //Kiedy to zrobimy, zaatakujemy stara kopalnie i wezmiemy ja.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_36_07"); //Jesli nie ma juz wiecej zapasów, oblegamy Gomeza i jego ludnosc, w której duza czesc naszej armii zajmuje miejsce wokól obozu, aby uniemozliwic komus wejscie lub wyjscie.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_36_08"); //Jednakze przenikniemy kogos do obozu, aby zranic go od wewnatrz. Bedziesz jednym z nich. Wiec ostatecznie zmusimy Gomeza do poddania sie.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_36_09"); //Wkrótce przyjedziemy do Minental. Idzcie na czas do Alissandro i powiedzcie mu to.

	B_LogEntry	(TOPIC_MOD_AL_FLUCHT, "Pan Hagen obiecal mi swoja pomoc. Powiem Alissandro o tym.");
};

INSTANCE Info_Mod_Hagen_Cornelius (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Cornelius_Condition;
	information	= Info_Mod_Hagen_Cornelius_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ze wzgledu na moje liczne zaslugi....";
};

FUNC INT Info_Mod_Hagen_Cornelius_Condition()
{
	if (Mod_Cornelius_Overtalk == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Cornelius_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius_15_00"); //Ze wzgledu na moje liczne zaslugi....
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_36_01"); //Zaczynasz tak jak miejskie quacki. Czego chcesz?
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius_15_02"); //Wnioskuje o nowe zlecenie dla Corneliusa.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_36_03"); //(smiech) Ja uczynie go tylko królewskim sprzataczem toalet.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_36_04"); //Dlaczego narzeka? Najwyrazniej jedynym jego zadaniem jest utrudnic mi zycie.
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius_15_05"); //To nie czyni go szczesliwym.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_36_06"); //(ironiczne) Spektakl porusza mnie do lez. Bede go trzymal blisko miejsca, w którym moge sie nim opiekowac.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_36_07"); //W przeciwnym razie musialabym sie nadal obawiac, ze jego skorumpowane gry doprowadza do sukcesu.

	Info_ClearChoices	(Info_Mod_Hagen_Cornelius);

	Info_AddChoice	(Info_Mod_Hagen_Cornelius, "Jest to dla mnie zbyt niebezpieczne.", Info_Mod_Hagen_Cornelius_B);
	Info_AddChoice	(Info_Mod_Hagen_Cornelius, "Skontaktuje sie z nim.", Info_Mod_Hagen_Cornelius_A);
};

FUNC VOID Info_Mod_Hagen_Cornelius_B()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius_B_15_00"); //Jest to dla mnie zbyt niebezpieczne.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_B_36_01"); //Ciesze sie, ze sie Pan z tym zgadza.

	Mod_Cornelius_Overtalk = 2;

	Mod_Cornelius_Overtalk_Day = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_CORNELIUS_HELP, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Hagen_Cornelius);
};

FUNC VOID Info_Mod_Hagen_Cornelius_A()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius_A_15_00"); //Skontaktuje sie z nim.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_A_36_01"); //Wydaje sie pan tak pewny siebie. Gdybym chcial dac Corneliusowi nowe biuro, co by to bylo?
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius_A_15_02"); //Mysle, ze podoba mu sie cos ekonomicznego.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_A_36_03"); //Gleboko sie wiec niech to bedzie. Powiedz mu, ze przy kolejnej okazji wyznacze go na ministra gospodarki.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_A_36_04"); //Pamietaj jednak, ze czuje sie do tego zobowiazany tylko dlatego, ze do tej pory pan nam tak swietnie sluzyl.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_A_36_05"); //Miejmy nadzieje, ze nie naduzywa swojej pozycji.

	B_LogEntry	(TOPIC_MOD_CORNELIUS_HELP, "Powinienem powiedziec panu Corneliusowi, ze przy najblizszej okazji zostanie mianowany przez lorda Hagena ministrem gospodarki.");

	Mod_Cornelius_Overtalk = 4;

	Mod_Cornelius_Overtalk_Day = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Hagen_Cornelius);
};

INSTANCE Info_Mod_Hagen_Cornelius02 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Cornelius02_Condition;
	information	= Info_Mod_Hagen_Cornelius02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie jest Cornelius?";
};

FUNC INT Info_Mod_Hagen_Cornelius02_Condition()
{
	if (Mod_Cornelius_Overtalk == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Cornelius02_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius02_15_00"); //Gdzie jest Cornelius?
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius02_36_01"); //Gdzie on nalezy: za kratami.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius02_36_02"); //Wlasnie dowiedzialem sie, ze mial on na mysli maly zamach stanu.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius02_36_03"); //Nie powinien byl pozwolic na to tak wielu osobom z zewnatrz.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius02_36_04"); //Dobrze sie stalo, ze nie nalegales na zmiane jego stanowiska w tym czasie, w przeciwnym razie sprawy moga wygladac zupelnie inaczej.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius02_36_05"); //Musisz byc ostrozny, z kim sie zaprzyjazniasz.

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Hagen_Cornelius03 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Cornelius03_Condition;
	information	= Info_Mod_Hagen_Cornelius03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_Cornelius03_Condition()
{
	if (Mod_Cornelius_Overtalk == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Cornelius03_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius03_36_00"); //(bitter) Czy to cos jest teraz zjadane? Czy mozemy wrócic do pracy?
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius03_15_01"); //Prosze wybaczyc moja lekkomyslnosc.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius03_36_02"); //Chce nauczyc Was lekcji.
};

INSTANCE Info_Mod_Hagen_StellDichEin (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_StellDichEin_Condition;
	information	= Info_Mod_Hagen_StellDichEin_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_StellDichEin_Condition()
{
	if (Mod_HagenStellDichEin == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_StellDichEin_Info()
{
	AI_EquipBestArmor	(Mod_1056_VLK_Buergerin_NW);

	AI_Output(self, hero, "Info_Mod_Hagen_StellDichEin_36_00"); //Co ty tu robisz?
	AI_Output(hero, self, "Info_Mod_Hagen_StellDichEin_15_01"); //Uh, I--
	AI_Output(self, hero, "Info_Mod_Hagen_StellDichEin_36_02"); //Z cala slusznoscia, zapomnijmy o tym.

	AI_EquipBestArmor	(self);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1056_VLK_Buergerin_NW, "START");
};

INSTANCE Info_Mod_Hagen_Mario (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Mario_Condition;
	information	= Info_Mod_Hagen_Mario_Info;
	permanent	= 0;
	important	= 0;
	description	= "Garond jest morderca!";
};

FUNC INT Info_Mod_Hagen_Mario_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Mario2))
	&& (!Npc_IsDead(Mod_500_PAL_Garond_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Mario_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Mario_15_00"); //Garond jest morderca!
	AI_Output(self, hero, "Info_Mod_Hagen_Mario_36_01"); //Masz na mysli pojedynek z Mario?
	AI_Output(self, hero, "Info_Mod_Hagen_Mario_36_02"); //(sighs) Nie spodziewalabym sie, ze doswiadczony mezczyzna, taki jak Garond, zrobi cos tak niemadrego, ale nie widze nic niezgodnego z prawem w samym pojedynku.
	AI_Output(self, hero, "Info_Mod_Hagen_Mario_36_03"); //Niestety w wielu przypadkach konczy sie to niestety smiertelnie. Powinienes zdawac sobie z tego sprawe zanim rzucisz komus wyzwanie.
	AI_Output(hero, self, "Info_Mod_Hagen_Mario_15_04"); //Oznacza to, ze musze wziac sprawy w swoje rece.
	AI_Output(self, hero, "Info_Mod_Hagen_Mario_36_05"); //Chetnie bym lepiej, gdybys pozwolil jej odpoczac.
	AI_Output(hero, self, "Info_Mod_Hagen_Mario_15_06"); //To do mnie nalezy decyzja.
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Lukas_Andre))
	|| (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Andre))
	|| (Npc_KnowsInfo(hero, Info_Mod_Wendel_Andre)))
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_00"); //Wiec teraz przybyles.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_01"); //Slyszalem o wszystkim, co sie wydarzylo..... a takze pragnienie Andre' a, abys go zastapil.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_02"); //Wiele jednak slyszalem o panskiej przeszlosci.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_03"); //Bedziesz wiec bylym wiezniem kolonii i bedziesz mial kontakty z Laresem i niektórymi skórami Nowego Obozu.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis_15_04"); //l--
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_05"); //Nie musisz temu zaprzeczac.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_06"); //Po ostatnich wydarzeniach zapytalem o Ciebie i otrzymalem potwierdzenie z kilku zródel.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_07"); //Majac to na uwadze, nie moge cie po prostu naklonic do kapitana.... poniewaz musialbym uczynic cie paladyna dla paladyna króla, gdy spiskujesz sie z wrogami jego króla.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_08"); //Z drugiej strony, no cóz...... Nie moge zignorowac waszych dzialan na rzecz miasta, ani woli Andresa na jego wielka ofiare.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis_15_09"); //Co to konkretnie oznacza?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_10"); //Oznacza to, ze jestem gonna dac Ci szanse na udowodnienie siebie.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_11"); //Jesli udowodniliscie, ze jestescie godni takiej poslugi i ze nie bedziecie hanba dla Paladynów, byc moze powtórze to jeszcze raz.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis_15_12"); //Jak moge udowodnic swoja lojalnosc?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_13"); //Cóz, do pierwszego zadania bedziesz musial uzyc relacji, które rzucaja na ciebie tak zle swiatlo...... nawet jesli brzmi to paradoksalnie.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_14"); //Pójdzie pan do wielkiej farmy i przekaze Laresowi wiadomosc, wyrazajac moja wole zawarcia paktu o nieagresji.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_15"); //Sytuacja w dolinie Minentalnej pogarsza sie niepokojaco.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_16"); //Otwarty konflikt miedzy paladynami a najemnikami nie przynosi korzysci zadnej ze stron.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_17"); //Mam nadzieje, ze Lares czuje sie podobnie. Oto wiadomosc.

	B_GiveInvItems	(self, hero, ItWr_HagenLares, 1);

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_36_18"); //Wiec wiesz, co robic.

	Log_CreateTopic	(TOPIC_MOD_MILIZ_FRIEDENSBOTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_FRIEDENSBOTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILIZ_FRIEDENSBOTE, "Lord Hagen ma watpliwosci, czy jestem godzien paladyna i kapitana. Najpierw powinienem wiec wykonac dla niego jakies zadania. Na poczatek musze przekazac Laresowi przeslanie pokoju.");
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis2 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis2_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Friedensbote))
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis2_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_36_00"); //Wracasz? Co nalezy zglosic?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis2_15_01"); //Zlozylem list Larego i zgodzil sie na zawieszenie broni.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_36_02"); //To dobra wiadomosc. W ten sposób wykonales to zadanie zgodnie z oczekiwaniami.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_36_03"); //Poniewaz jednak zlo nigdy nie spoczywa, musze wyslac cie do nastepnego zadania.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis2_15_04"); //Jakie jest zagrozenie dla miasta?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_36_05"); //.... jak moge to ujac.... z bramy wschodniej do miasta wciaga coraz silniejszy zapach rozkladu.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_36_06"); //Z jednej strony bardzo przeszkadza to zyciu publicznemu na tak napietym rynku, a z drugiej strony bramkarze do tej pory nie byli w stanie zidentyfikowac zadnego zródla tego zla, które jest niepokojace.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_36_07"); //Wiec wyslalem kilku strazników poza Brame Wschodnia, aby szukali zródla.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_36_08"); //Pójdziesz do nich i poprowadzisz ich.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_36_09"); //Jesli znajdziesz to, czego szukasz, nie wahaj sie rozwiazac problem, jesli jest on w mocy.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_36_10"); //Wszystko jasne? Dobre. Nie pozwól, aby Twoje wyszukiwanie bylo latwiejsze.

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_FRIEDENSBOTE, LOG_SUCCESS);
	Log_CreateTopic	(TOPIC_MOD_MILIZ_NASE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_NASE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILIZ_NASE, "Od wschodniej bramy do miasta wciaga silny zapach rozkladu. Dlatego wlasnie jade tam, gdzie niektórzy straznicy miejscy pomoga mi znalezc zródlo smrodu. Jesli znajdziemy cokolwiek, powinnismy rozwiazac problem, jesli to mozliwe.");

	B_RemoveNpc	(Mod_7100_ASS_Zahit_NW);
	B_RemoveNpc	(Mod_7101_ASS_Krieger_NW);
	B_RemoveNpc	(Mod_7113_ASS_Yussuf_NW);
	B_RemoveNpc	(Mod_7105_ASS_Aabid_NW);
	B_RemoveNpc	(Mod_7104_ASS_Shakir_NW);
	B_RemoveNpc	(Mod_7103_ASS_Gauner_NW);
	B_RemoveNpc	(Mod_7106_ASS_Ramsi_NW);
	B_RemoveNpc	(Mod_7102_ASS_Zeki_NW);
	B_RemoveNpc	(Mod_7108_ASS_Gauner_NW);
	B_RemoveNpc	(Mod_7107_ASS_Gauner_NW);
	B_RemoveNpc	(Mod_7127_ASS_Krieger_NW);
	B_RemoveNpc	(Mod_7117_ASS_Krieger_NW);
	B_RemoveNpc	(Mod_7118_ASS_Anwaerter_NW);
	B_RemoveNpc	(Mod_7116_ASS_Krieger_NW);
	B_RemoveNpc	(Mod_7124_ASS_Anwaerter_NW);
	B_RemoveNpc	(Mod_7122_ASS_Maysara_NW);
	B_RemoveNpc	(Mod_7123_ASS_Malik_NW);
	B_RemoveNpc	(Mod_7119_ASS_Masut_NW);
	B_RemoveNpc	(Mod_7125_ASS_Karim_NW);
	B_RemoveNpc	(Mod_7126_ASS_Krieger_NW);
	B_RemoveNpc	(Mod_7141_ASS_Elite_NW);
	B_RemoveNpc	(Mod_7134_ASS_Anwaerter_NW);
	B_RemoveNpc	(Mod_7133_ASS_Sinbad_NW);
	B_RemoveNpc	(Mod_7131_ASS_Krieger_NW);
	B_RemoveNpc	(Mod_7142_ASS_Elite_NW);
	B_RemoveNpc	(Mod_7138_ASS_Azhar_NW);
	B_RemoveNpc	(Mod_7140_ASS_Elite_NW);
	B_RemoveNpc	(Mod_7145_ASS_Aadel_NW);
	B_RemoveNpc	(Mod_7149_ASS_Mufid_NW);
	B_RemoveNpc	(Mod_7146_ASS_Mustafa_NW);
	B_RemoveNpc	(Mod_7147_ASS_Naim_NW);
	B_RemoveNpc	(Mod_7150_ASS_Mahamad_NW);
	B_RemoveNpc	(Mod_7152_ASS_Aiman_NW);
	B_RemoveNpc	(Mod_7148_ASS_Norek_NW);
	B_RemoveNpc	(Mod_7154_ASS_Malek_NW);
	B_RemoveNpc	(Mod_7156_ASS_Mirza_NW);
	B_RemoveNpc	(Mod_7166_ASS_Novize_NW);
	B_RemoveNpc	(Mod_7160_ASS_Novize_NW);
	B_RemoveNpc	(Mod_7199_ASS_Amir_NW);
	B_RemoveNpc	(Mod_7159_ASS_Novize_NW);
	B_RemoveNpc	(Mod_7158_ASS_Novize_NW);
	B_RemoveNpc	(Mod_7161_ASS_Novize_NW);
	B_RemoveNpc	(Mod_7157_ASS_Mourad_NW);
	B_RemoveNpc	(Mod_7163_ASS_Kamal_NW);
	B_RemoveNpc	(Mod_7164_ASS_Kais_NW);
	B_RemoveNpc	(Mod_7165_ASS_Adil_NW);

	B_StartOtherRoutine	(Mod_7111_ASS_Yasin_NW, "MILIZ");
	B_KillNpc	(Mod_7111_ASS_Yasin_NW);

	Wld_SendTrigger	("EVT_ASSISTOT");

	CreateInvItems	(Mod_7111_ASS_Yasin_NW, ItWr_YasinErpresser, 1);
	CreateInvItems	(Mod_7111_ASS_Yasin_NW, ItWr_YasinNotiz, 1);

	B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "NASE");
	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "NASE");
	B_StartOtherRoutine	(Mod_968_MIL_Bilgot_NW, "NASE");
	
	Mod_541_NONE_Till_NW.guild = GIL_PAL;

	CreateInvItems	(Mod_541_NONE_Till_NW, ItAr_MIL_M, 1);
	AI_UnequipArmor	(Mod_541_NONE_Till_NW);
	AI_EquipBestArmor(Mod_541_NONE_Till_NW);

	B_GivePlayerXP	(300);

	Wld_InsertNpc	(Mod_7681_ASS_Halbtoter_NW,	"WP_ASSASSINE_08");
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis3 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis3_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_InnosNase2))
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis3_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_36_00"); //Wracasz? Czy oznacza to, ze zródlo zostalo znalezione i wyeliminowane?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis3_15_01"); //Tak, troszczyli sie o to straznicy miasta.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis3_15_02"); //W pobliskiej jaskini znajdowaly sie zwloki jakichs zlowieszczych istot, najwyrazniej zabitych przez robota.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_36_03"); //Co jest tak blisko miasta? I robot wyciagnal je?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_36_04"); //Hmm..... Prawdopodobnie dalsze wyjasnienie faktu, ze przestepczosc z uzyciem przemocy zmniejszyla sie tak bardzo w miescie i okolicach.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_36_05"); //Moze robot mógl byc uzywany nieco dluzej....
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_36_06"); //(znów bohaterowi) Uh, wszelkimi sposobami po raz kolejny dobrze sluzyles miastu.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_36_07"); //Oto mala nagroda.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_36_08"); //Jesli nadal dobrze grasz, to tylko kwestia czasu zanim zostaniesz kapitanem i Paladinem, nawet jesli nie mam na razie zadnych innych obowiazków.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_36_09"); //Wystarczy podazac droga sprawiedliwych, przykladem Innosa.

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_NASE, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "START");
	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "START");
	B_StartOtherRoutine	(Mod_968_MIL_Bilgot_NW, "START");

	B_StartOtherRoutine	(Mod_587_NONE_Jesper_NW, "HEHLER");
	B_StartOtherRoutine	(Mod_598_MIL_Mika_NW, "HEHLER");

	B_GivePlayerXP	(300);

	B_StartOtherRoutine	(Mod_748_NONE_Rengaru_NW, "DIEB");
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis4 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis4_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis4_Condition()
{
	if (Mod_PAL_MikaHehler > 0)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis4_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_36_00"); //Zniknal straznik Mika. Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_36_01"); //Jestes odpowiedzialny za strazników miejskich. Zadam odpowiedzialnosci!
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis4_15_02"); //Zajmowal sie goracymi rzeczami i zapalil sie pod paleczka, kiedy go zlapalem.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_36_03"); //Co.....? ale....... Wiec to on byl fencemanem, który wyprowadzil skradzione dobra poza miasto.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis4_15_04"); //Wiedziales o ogrodzeniu?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_36_05"); //Wiedzielismy, ze musi istniec lacznik miedzy zlodziejami miasta a okolica.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_36_06"); //Tylko w ten sposób kradzione towary mogly opuscic miasto niezauwazalnie.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_36_07"); //Mika wtedy wiec.... tak z perspektywy czasu wszystko to ma sens. Ale.... co sie z nim stalo?

	if (Mod_PAL_MikaHehler == 2)
	{
		AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis4_15_08"); //Uciekl z miasta.
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_36_09"); //Szkoda, ze tak ucieka przed kara. Ale przynajmniej zlodzieje stracili plot.

		B_GivePlayerXP	(250);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis4_15_10"); //Zlapalem go i musialem go zabic w bitwie.
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_36_11"); //Tak wiec zostal osadzony za swoje czyny. Dobre.
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_36_12"); //A zlodzieje stracili plot.

		B_GivePlayerXP	(350);
	};

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_36_13"); //To powinno naprawde utrudnic im handel.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_36_14"); //Po raz kolejny wykonales w miescie cenna usluge.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_36_15"); //Tutaj zarabiales.

	if (Mod_PAL_MikaHehler == 2)
	{
		B_GiveInvItems	(self, hero, ItMi_Gold, 200);
	}
	else
	{
		B_GiveInvItems	(self, hero, ItMi_Gold, 300);
	};
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis5 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis5_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zlodzieje stracili wiecej niz tylko plot.";
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis5_Condition()
{
	if (Mod_PAL_MikaHehler == 1)
	&& (Npc_HasItems(hero, ItKe_Hotel) == 1)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis5_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_00"); //Zlodzieje stracili wiecej niz tylko plot.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_01"); //Ich habe Mikas "handlowcy" gestellt. Er wird keinen Ärger mehr machen.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_02"); //Znajdowalem u niego klucz.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_36_03"); //To swietnie, pokaz mi klucz....
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_04"); //Tutaj.

	B_GiveInvItems	(hero, self, ItKe_Hotel, 1);

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_36_05"); //H. W miescie moze byc duzo ludzi..... wraz ze mna.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_36_06"); //Gdzie móglbys zlapac Mike na jego krzywdzacym biznesie?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_07"); //Gdzie w ciagu dnia glosza zwiastun.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_36_08"); //Aha! To oczywiscie przybliza nas do tego celu.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_36_09"); //Doloze wszelkich staran, aby to zapewnic. Jutro przyjdzcie do mnie jutro.

	if (Mod_PAL_Diebesgilde == 1)
	{
		AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_10"); //Ale....
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_36_11"); //Tak, czy bylo jeszcze cos innego?
		AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_12"); //Wyjelam juz zlodziei. Klucz wyprowadzil ja z hostelu Hanny do kryjówki.
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_36_13"); //Co juz sie tym zajelas?
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_36_14"); //(captures again) Uh, no, no, jesli tak to jest....... dobra praca.
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_36_15"); //Po raz kolejny wykonales w miescie nieoceniona usluge.
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_36_16"); //Tutaj zarobiles wiecej niz to wynagrodzenie.

		B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

		B_GivePlayerXP	(600);

		B_StartOtherRoutine	(Mod_583_NONE_Hanna_NW, "KNAST");
		B_StartOtherRoutine	(Mod_968_MIL_Bilgot_NW, "HOTEL");
	}
	else
	{
		Log_CreateTopic	(TOPIC_MOD_MILIZ_DIEBESGILDE, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_MILIZ_DIEBESGILDE, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_MILIZ_DIEBESGILDE, "Pan Hagen poinstruowal mnie, abym jutro ponownie zglosil sie do niego.");

		Mod_PAL_Diebesgilde_Day = Wld_GetDay();
	};
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis6 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis6_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis5))
	&& (Wld_GetDay() > Mod_PAL_Diebesgilde_Day)
	&& (Mod_PAL_Diebesgilde == 0)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis6_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis6_36_00"); //Ciesze sie, ze przyszedles. Juz wszystko zaaranzowalem.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis6_15_01"); //Co nalezy zrobic?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis6_36_02"); //Udamy sie do schroniska Hanny, skad prowadzi sciezka prowadzaca do systemu kanalizacyjnego.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis6_36_03"); //Tam zwrócisz uwage zlodziei na siebie, aby straznicy miejscy mogli wejsc i ustawic sie niezauwazalnie przez szyb w innym miejscu.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis6_36_04"); //Miejmy nadzieje, ze atakiem zaskoczeniem powinnismy byc w stanie zaskoczyc zlodziei.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis6_36_05"); //Wiec wiesz co robic? Powodzenia.

	B_GiveInvItems	(self, hero, ItKe_Hotel, 1);

	B_LogEntry	(TOPIC_MOD_MILIZ_DIEBESGILDE, "Z hostelu Hanny prowadzi sciezka prowadzaca do kanalizacji, która mam zamiar zabrac.");

	B_StartOtherRoutine	(Mod_968_MIL_Bilgot_NW, "HOTEL");

	B_StartOtherRoutine	(Mod_568_NONE_Cassia_NW, "DIEB");
	B_StartOtherRoutine	(Mod_746_NONE_Ramirez_NW, "DIEB");
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis7 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis7_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis7_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wambo_AndreVermaechtnis))
	&& (Mod_PAL_Diebesgilde == 1)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis7_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis7_36_00"); //Zajmowales sie gangiem zlodziei? Doskonaly.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis7_36_01"); //Po raz kolejny wykonales w miescie nieoceniona usluge.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis7_36_02"); //Tutaj zarobiles wiecej niz to wynagrodzenie.

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_DIEBESGILDE, LOG_SUCCESS);

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_GivePlayerXP	(600);
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis8 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis8_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis8_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis8_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis3))
	&& (Npc_KnowsInfo(hero, Info_Mod_Urnol_Daemonisch))
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis8_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_00"); //Bei Innos, wie konnte ich nur die unsägliche Gefahr übersehen, in der unsere Stadt schwebte.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_01"); //Es hätte nicht viel gefehlt, und die Kreaturen der Nacht hätten uns ihrem Willen unterworfen.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_02"); //Zu viele Stadtwachen und Paladine hatten sie schon kontrolliert ... allein dein Einsatz hat uns vor Schlimmeren bewahrt, wie ich gerade erfahren habe.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_03"); //Wahrlich, du gehörst in die Reihen unserer Streiter.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_04"); //Es jetzt noch zu leugnen, hieße Innos Willen zu verleugnen.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_05"); //Bist du also bereit ein Paladin des Königs und ein Streiter Innos’ zu werden?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis8_15_06"); //Ja, das bin ich.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_07"); //Dann erhebe ich dich hiermit zu einem der unsrigen.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_08"); //Was die Tugenden eines Paladins sein, wie du den Weg der Rechtschaffenheit begehst ... das alles muss ich dir nicht erläutern.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_09"); //Denn du hast durch deine Taten bewiesen, dass du stets im Sinne Innos handelst.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_10"); //Zudem bist du nun auch offiziell Hauptmann der Stadt Khorinis.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_11"); //Für gewöhnlich wäre dein Platz jetzt in der Kaserne.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_12"); //Ich habe aber schon mitbekommen, dass es dich nie lange an einem Ort hält.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_13"); //Ich glaube dennoch, oder gerade deshalb wirst du unserer Stadt und der Insel besonders gut dienen.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_14"); //Dass du ihr Schicksal bislang schon entscheidend zum Guten bestimmt hast, steht außer Frage.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_15"); //Wir werden das schon irgendwie hinbekommen ...
 AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_16"); //	// this dialog is wrong, player got armor and weapon already from Lord AndreWie dem auch sei, hier sind die Rüstung und das Schwert eines Paladins.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_36_17"); //Willkommen in unseren Reihen.
	
	Mod_Gilde = 3;
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis9 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis9_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis9_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis9_Condition()
{
	if (Mod_Gilde == 3)
	&& (Mod_Enter_Minental_04)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis9_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_36_00"); //Ach, dobrze ci przyjsc. Slyszalem o dramatycznych wydarzeniach w Minentalu?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis9_15_01"); //Masz na mysli upadek Starego Obozu?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_36_02"); //Dokladnie. Zlo zyskuje moc z alarmujaca predkoscia.... Z Minentala wydaje sie, ze pojawia sie nowe zlo.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis9_15_03"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_36_04"); //Nie wiemy jeszcze na pewno.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_36_05"); //Doswiadczenia z dreczycielami duszy pokazaly nam, ze na pierwszy rzut oka nie zawsze mozna odróznic nieszkodliwe rzeczy od niebezpiecznych.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_36_06"); //Jedno jest jednak pewne, ze coraz wiecej osób pochodzi z Minentala, a ich grupy mozna spotkac wszedzie na tym obszarze.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_36_07"); //Czy to tylko nieszkodliwi uciekinierzy lub sprytni przestepcy, nawet podstepni szpiedzy wroga...... Nie wiemy.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_36_08"); //Niektórzy z naszych strazników miejskich sa blisko i obserwuja sytuacje.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_36_09"); //Jesli chodzi o znajomosc doliny i jej mieszkanców, chcialbym, abyscie sie z nimi spotkali i dowiedzieli sie, jak to jest z ludzmi.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_36_10"); //Tutaj, na tej mapie wymienilem pozycje grup.

	B_GiveInvItems	(self, hero, ItWr_Map_HagenAL, 1);

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_36_11"); //Wiec wiesz co robic? Innos towarzyszy Ci na drodze!

	Log_CreateTopic	(TOPIC_MOD_MILIZ_FREUNDFEIND, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_FREUNDFEIND, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILIZ_FREUNDFEIND, "Od czasu upadku Starego Obozu z doliny Minentalnej przybywa coraz wiecej osób, które osiedlaja sie w grupach w róznych miejscach Khorinis. Lord Hagen chce, abym dowiedzial sie, czy sa oni tylko niewinnymi uchodzcami lub zlymi.");

	B_StartOtherRoutine	(Mod_109_MIL_Rick_NW, "FISK");
	B_StartOtherRoutine	(Mod_118_MIL_Rumbold_NW, "FISK");

	Wld_InsertNpc	(Mod_7682_STT_Fisk_NW,	"NW_BIGMILL_FARM3_07");
	Wld_InsertNpc	(Mod_7683_BUD_Buddler_NW,	"NW_BIGMILL_FARM3_07");
	Wld_InsertNpc	(Mod_7684_STT_Schatten_NW,	"NW_BIGMILL_FARM3_07");
	Wld_InsertNpc	(Mod_7685_BUD_Buddler_NW,	"NW_BIGMILL_FARM3_07");

	Wld_InsertNpc	(Mod_7686_BUD_Grim_NW,	"NW_TAVERNE_TROLLAREA_15");
	Wld_InsertNpc	(Mod_7687_GRD_Gardist_NW,	"NW_TAVERNE_TROLLAREA_15");
	Wld_InsertNpc	(Mod_7688_STT_Schatten_NW,	"NW_TAVERNE_TROLLAREA_15");
	Wld_InsertNpc	(Mod_7689_BUD_Buddler_NW,	"NW_TAVERNE_TROLLAREA_15");
	Wld_InsertNpc	(Mod_7690_STT_Schatten_NW,	"NW_TAVERNE_TROLLAREA_15");
	Wld_InsertNpc	(Mod_7691_BUD_Buddler_NW,	"NW_TAVERNE_TROLLAREA_15");

	Wld_InsertNpc	(Mod_7692_BUD_Buddler_NW,	"NW_FARM1_PATH_SPAWN_05");
	Wld_InsertNpc	(Mod_7693_BUD_Buddler_NW,	"NW_FARM1_PATH_SPAWN_05");
	Wld_InsertNpc	(Mod_7694_BDT_Bandit_NW,	"NW_FARM1_PATH_SPAWN_05");
	Wld_InsertNpc	(Mod_7695_BDT_Bandit_NW,	"NW_FARM1_PATH_SPAWN_05");
	Wld_InsertNpc	(Mod_7696_BDT_Bandit_NW,	"NW_FARM1_PATH_SPAWN_05");
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis10 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis10_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis10_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bylem z trzema grupami z Minental.";
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fisk_NW_Hi))
	&& (Npc_IsDead(Mod_7686_BUD_Grim_NW))
	&& (Npc_IsDead(Mod_7687_GRD_Gardist_NW))
	&& (Npc_IsDead(Mod_7689_BUD_Buddler_NW))
	&& (Npc_IsDead(Mod_7691_BUD_Buddler_NW))
	&& (Npc_IsDead(Mod_7690_STT_Schatten_NW))
	&& (Npc_IsDead(Mod_7692_BUD_Buddler_NW))
	&& (Npc_IsDead(Mod_7693_BUD_Buddler_NW))
	&& (Npc_IsDead(Mod_7694_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7695_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7696_BDT_Bandit_NW))
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis10_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_00"); //Bylem z trzema grupami z Minental.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_36_01"); //A co trzeba zglosic?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_02"); //W Bengarze byli nieszkodliwymi uchodzcami, w tym handlarzem, którego znalem z kolonii.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_03"); //Teraz sa w miescie.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_36_04"); //Dobrze, to dobrze.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_36_05"); //Moze od nich mozemy dowiedziec sie wiecej o sytuacji w Minentalu.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_06"); //Grupa w Akil's nie byla az tak przyjemna.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_07"); //Byli to.... którego pozostalosci sa teraz przechowywane na trasie.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_36_08"); //Dobra praca. Mniej szyderców i wichrzycieli.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_36_09"); //Po prostu nie wiedziales, co moze zrobic paladynka.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_36_10"); //Jednak.... i ostatnia grupa?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_11"); //Równiez stary znajomy z dawnego obozu.....
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_36_12"); //Mily sluch....
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_13"); //Ale nie bylo tak nie tak nieszkodliwe.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_14"); //Wydaje sie, ze pod wplywem marynarzy otworzyl brame w obozie.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_36_15"); //Co byl odpowiedzialny?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_16"); //Ja. Er und seine "laski" die bei ihm waren, werden hier jedoch kein weiteres Unheil mehr anrichten.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_36_17"); //To ulga. Niech Innos zmiluje sie nad ich torturowanymi duszami.....
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_36_18"); //Tak czy owszem, jak zawsze, wypelniliscie swoja misje bardziej niz zadowalajaco.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_36_19"); //Jestesmy naprawde dumni, ze mamy Cie w rzedach Paladynów.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_GivePlayerXP	(800);

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_FREUNDFEIND, LOG_SUCCESS);

	Mod_Hagen_KG_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis11 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis11_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis11_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis11_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis10))
	&& (Wld_GetDay()-3 > Mod_Hagen_KG_Day)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis11_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_00"); //Ciesze sie, ze jestes tutaj.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_01"); //Ostatnie wydarzenia pokazaly, jak szybko sytuacja moze sie wydostac z naszych rak, kiedy sytuacja w Minentalu jest tak niestabilna.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_02"); //W zwiazku z tym zdecydowanie potrzebujemy kogos, kto bedzie pilnowal tej sprawy na miejscu.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_03"); //Niestety, nie moge oszczedzic ludzi i wyslac ich do Minentala, poniewaz sytuacja wokól Khorinis wymaga naszej pelnej uwagi.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis11_15_04"); //Co zatem nalezy zrobic?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_05"); //Musimy skontaktowac sie z obozem w Minental i poprosic o blizsza wspólprace.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis11_15_06"); //Cóz, chyba nie myslales o bandytach czy najemnikach.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_07"); //Um, oczywiscie nie - oczywiscie wszystko ma swoje ograniczenia.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_08"); //Oczywiscie, wiernymi królowi byli wierni. Moje nadzieje teraz spoczywaja na nich.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_09"); //Sa one testowane bitewnie i maja racje na przeleczy.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis11_15_10"); //Ale?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_11"); //Cóz, nie mielismy z Panstwem nic innego jak tylko stosunki handlowe.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_12"); //I i ten równiez opieral sie tylko na ich dobrym stosunku do Andre' a, którego znali i szanowali w dawnych czasach.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis11_15_13"); //Jaki jest problem?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_14"); //.... Wyslalem ja tam wkrótce po upadku zapory.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_15"); //Uczyniono to na porzadku, ale nie wolno mi juz nic wiecej powiedziec na ten temat.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_16"); //.... Z pewnoscia nie sa dla mnie zbyt dobre.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_17"); //Oni teraz zawsze powoluja sie na fakt, ze przysiege przysiege zloza królowi i sa zwiazani tylko z nim dla lojalnosci i posluszenstwa.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_18"); //Ze wzgledu jednak na sytuacje na ladzie stalym, dosyc trudno jest w tej chwili dojsc do dyrektyw króla, jak mozna sobie wyobrazic.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis11_15_19"); //Co zatem nalezy zrobic?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_20"); //Jestes nie tylko Paladinem i kapitanem miasta, ale wiesz, ze lepiej niz ktokolwiek inny zna swoja droge wokól Minentala.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_21"); //Dlatego pójdziesz do nich i wyslesz ten list do Hymira.

	B_GiveInvItems	(self, hero, ItWr_HagenForHymir, 1);

	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis11_15_22"); //Dobrze, ze jestem w drodze.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_23"); //Poczekac! Jesli on nie odpowie, musisz uzyc tej rolki zaklecia w ich obozie.

	B_GiveInvItems	(self, hero, ItSc_SumHagen, 1);

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_36_24"); //Pamietaj.... Innos chroni Cie.

	Log_CreateTopic	(TOPIC_MOD_MILIZ_TREUE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_TREUE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILIZ_TREUE, "Hagen chcialby, abym przekazal Hymirowi przeslanie, w którym prosi o wspólprace.");
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis12 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis12_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis12_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis12_Condition()
{
	if (Mod_Kap4_KGOrks >= 2)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis12_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis12_36_00"); //Sytuacja na karnecie powinna teraz stac sie bezpieczniejsza.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis12_36_01"); //Wrogowie nie moga juz nie wykrywac Khorinis, co jest w duzej mierze spowodowane Twoja zasluga.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis12_36_02"); //Oto Twoje wynagrodzenie.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis12_36_03"); //Innos chroni przed wszelkimi niebezpieczenstwami.

	B_GivePlayerXP	(400);

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_TREUE, LOG_SUCCESS);

	B_StartOtherRoutine	(self, "RAT");
};

INSTANCE Info_Mod_Hagen_Siegelring (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Siegelring_Condition;
	information	= Info_Mod_Hagen_Siegelring_Info;
	permanent	= 0;
	important	= 0;
	description	= "Te pierscionek dostalem wlasnie tutaj.";
};

FUNC INT Info_Mod_Hagen_Siegelring_Condition()
{
	if (Npc_HasItems(hero, ItRi_Siegelring) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Siegelring_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Siegelring_15_00"); //Te pierscionek dostalem wlasnie tutaj.

	B_GiveInvItems	(hero, self, ItRi_Siegelring, 1);

	AI_Output(self, hero, "Info_Mod_Hagen_Siegelring_36_01"); //Pozwólcie mi widziec.... .... To jest wlasnie kradziony pierscien sygnetowy, który mnie przywiózles.
	AI_Output(self, hero, "Info_Mod_Hagen_Siegelring_36_02"); //Niewiarygodny! Nigdy juz go nie spodziewalem sie wiecej zobaczyc....
	AI_Output(self, hero, "Info_Mod_Hagen_Siegelring_36_03"); //A co z zlym czlowiekiem, który go rabowal?
	AI_Output(hero, self, "Info_Mod_Hagen_Siegelring_15_04"); //Nie bedzie nikogo innego rabowal.
	AI_Output(self, hero, "Info_Mod_Hagen_Siegelring_36_05"); //Tak wiec dostal los, który nadal mu kondycje. Tak czy inaczej, nie nalezy lekcewazyc zaslug dla miasta.
	AI_Output(self, hero, "Info_Mod_Hagen_Siegelring_36_06"); //Oto nagroda za tysiac zlota.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	AI_Output(self, hero, "Info_Mod_Hagen_Siegelring_36_07"); //Twój blyszczacy przyklad powinien byc wzorem dla wszystkich obywateli królestwa. Innos jest z toba.

	B_GivePlayerXP	(2500);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_HEROLD_SIEGELRING, LOG_SUCCESS);
};

INSTANCE Info_Mod_Hagen_Asylanten4 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Asylanten4_Condition;
	information	= Info_Mod_Hagen_Asylanten4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Co zamierzasz teraz zrobic?";
};

FUNC INT Info_Mod_Hagen_Asylanten4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Asylanten3))
	&& (Mod_Hagen_Asylanten == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten4_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten4_15_00"); //Co zamierzasz teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten4_36_01"); //Mysle, ze powinienem wyslac poslanników do Minentala, aby dojsc do polubownego rozwiazania z Nowym Obozem.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten4_36_02"); //Bede równiez musial skontaktowac sie z straznikami, zanim tam zaczna glupote w imieniu króla.
};

INSTANCE Info_Mod_Hagen_Pickpocket (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Pickpocket_Condition;
	information	= Info_Mod_Hagen_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Hagen_Pickpocket_Condition()
{
	C_Beklauen	(178, ItMi_Gold, 102);
};

FUNC VOID Info_Mod_Hagen_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);

	Info_AddChoice	(Info_Mod_Hagen_Pickpocket, DIALOG_BACK, Info_Mod_Hagen_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hagen_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hagen_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hagen_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);
};

FUNC VOID Info_Mod_Hagen_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);

		Info_AddChoice	(Info_Mod_Hagen_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hagen_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hagen_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hagen_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hagen_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hagen_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hagen_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hagen_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hagen_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hagen_EXIT (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_EXIT_Condition;
	information	= Info_Mod_Hagen_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hagen_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hagen_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_EXIT_36_00"); //Za Króla!

	AI_StopProcessInfos	(self);
};
