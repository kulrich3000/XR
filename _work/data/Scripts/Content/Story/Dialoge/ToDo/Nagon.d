INSTANCE Info_Mod_Nagon_Hi (C_INFO)
{
	npc		= Mod_1773_KDF_Nagon_PAT;
	nr		= 1;
	condition	= Info_Mod_Nagon_Hi_Condition;
	information	= Info_Mod_Nagon_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nagon_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Gizar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagon_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Nagon_Hi_10_00"); //Nie martw sie teraz!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Nagon_Gizar (C_INFO)
{
	npc		= Mod_1773_KDF_Nagon_PAT;
	nr		= 1;
	condition	= Info_Mod_Nagon_Gizar_Condition;
	information	= Info_Mod_Nagon_Gizar_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nagon_Gizar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gizar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagon_Gizar_Info()
{
	AI_Output(self, hero, "Info_Mod_Nagon_Gizar_10_00"); //Dobrze jest widziec cie, bracie.
	AI_Output(hero, self, "Info_Mod_Nagon_Gizar_15_01"); //Jaszczurca wyslal mnie do Ciebie.
	AI_Output(self, hero, "Info_Mod_Nagon_Gizar_10_02"); //Wiem. Pyrokar mysli wiele o Tobie. On ma wielka wiare w ciebie! Dlatego jestes tutaj.
	AI_Output(self, hero, "Info_Mod_Nagon_Gizar_10_03"); //Mam dla Panstwa wazne zadanie. Musisz ukrasc piec Foki' ów, których uzywa sie do podtrzymania bariery, krasc i przywiezc je do nas.
	AI_Output(hero, self, "Info_Mod_Nagon_Gizar_15_04"); //Ale.... Jak mam to zrobic?
	AI_Output(self, hero, "Info_Mod_Nagon_Gizar_10_05"); //Wejdz na szczyt wiezy i zapytaj o wyrocznie. W ten sposób dowiesz sie, jak skupic uwage.

	Log_CreateTopic	(TOPIC_MOD_FM_FOKI, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_FOKI, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_FOKI, "Nagon chce, abym ukradl piec ognisk, które czarni magowie uzywaja do utrzymania bariery wokól Patheriona. W tym celu powinienem poprosic o wyrocznie na wiezy.");
};

INSTANCE Info_Mod_Nagon_HabFoki (C_INFO)
{
	npc		= Mod_1773_KdF_Nagon_PAT;
	nr		= 1;
	condition	= Info_Mod_Nagon_HabFoki_Condition;
	information	= Info_Mod_Nagon_HabFoki_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skupilem sie na tym.";
};

FUNC INT Info_Mod_Nagon_HabFoki_Condition()
{
	if (Npc_HasItems(hero, ItMi_Focus_Pat) == 5)
	&& (Mod_FM_Foki >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagon_HabFoki_Info()
{
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_00"); //Zrobilem to. Mam piec Foki.
	
	B_GiveInvItems	(hero, self, ItMi_Focus_Pat, 5);

	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_01"); //Prawdziwy bracie, zrobiles to! Jestesmy z Ciebie dumni! Zrobiles wspaniala obsluge Innos!
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_02"); //Dlaczego jednak bariera nie zniknela?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_03"); //Cóz, najpierw musimy wykonac rytual. Do tego celu potrzebujemy jednak piatego maga.
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_04"); //Bede ja trzymac bezpiecznie, dopóki nie znajdziemy kogos na tyle mocnego, by z nami zniszczyc bariere.
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_05"); //Czy wiesz, ze stworzylismy Foki?
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_06"); //Czy ona jej?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_07"); //Tak. Oznacza to czterech z nas i Ragona.
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_08"); //Och, zalozyciel tego klasztoru.
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_09"); //Znasz te historie?
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_10"); //Tak, powiedzial mi Pyrokar.
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_11"); //Smutne jest myslec, ze zniknal zalozyciel calego Innoskirche.
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_12"); //Tak, ale mam jeszcze jedno pytanie: czy znasz Aarona?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_13"); //Aaron? Masz na mysli nowego maga. Tak, znam go.
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_14"); //Odrzucil ostatnia przesylke eliksirów, której chcial Tojan. Nie tak dawno temu....
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_15"); //(zdziwiony) Przyniósl eliksiry?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_16"); //Tak, natychmiast sie nim dzielil, tak jak ty.
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_17"); //I czy zdarzylo sie cos niezwyklego?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_18"); //Cos nadzwyczajnego? Co masz na mysli, cos niezwyklego?
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_19"); //Cóz na przyklad, ze w twierdzy byl czarny mag?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_20"); //Co? Czarny mag? Co sprawia, ze myslisz o tym?
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_21"); //Tylko pytanie.
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_22"); //Nie, Tojan by mi tak powiedzial.
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_23"); //Cóz, dziekuje. Czy wiesz, gdzie jest Aaron?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_24"); //W ciagu dnia jest zawsze gdzies indziej, stara sie byc wszedzie uzytecznym, ale w nocy jest zawsze w kosciele modlac sie.

	B_GivePlayerXP	(500);

	B_StartOtherRoutine	(Mod_1771_KDF_Aaron_PAT, "ARBEIT");

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "Aaron jest trudny do znalezienia w ciagu dnia, poniewaz pomaga wszedzie, ale w nocy jest zawsze w kosciele modlac sie. To bylo smieszne, poniewaz Nagon uwaza, ze czarny magik nie moze byc w klasztorze. Prawie sie wydaje, ze Tojan go nie poinformowal.");
	B_SetTopicStatus	(TOPIC_MOD_FM_FOKI, LOG_SUCCESS);
};

INSTANCE Info_Mod_Nagon_MangelQuest (C_INFO)
{
	npc		= Mod_1773_KDF_Nagon_PAT;
	nr		= 1;
	condition	= Info_Mod_Nagon_MangelQuest_Condition;
	information	= Info_Mod_Nagon_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Cie martwi, bracie?";
};

FUNC INT Info_Mod_Nagon_MangelQuest_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nagon_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Nagon_MangelQuest_15_00"); //Co Cie martwi, bracie?
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest_10_01"); //Ah.... Prosze wybaczyc mój glos...... Wystarczy tylko spojrzec tutaj!
	AI_Output(hero, self, "Info_Mod_Nagon_MangelQuest_15_02"); //(oczekuje) Hmm, nie widze niczego....
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest_10_03"); //Dokladnie! Jest to kosciól Patheriona, jeden z najwazniejszych miejsc religijnych naszej wspólnoty.... Wiecej i kto jest tutaj? Niemal nikt!
	AI_Output(hero, self, "Info_Mod_Nagon_MangelQuest_15_04"); //Niestety jednak oblezenie, a kaplani i bojownicy Innosów musza...
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest_10_05"); //Tak, bronic tego miejsca.
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest_10_06"); //Ale jaka wartosc ma to, ze nikt nie mówi do Innosów o modlitwie i kultywuje tradycje religijne, które definiuja nasza wiare jako taka?
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest_10_07"); //Konflikt ten kosztowal nas wiele poswiecen.... Jednak najwieksza cena, jaka placimy jest nasze polaczenie z Innosem.
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest_10_08"); //Jesli nawet nie w tym swietym miejscu ktos kultywuje relacje z Innosem, tak, to przegralismy juz wojne.

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Nagon skarzyl sie, ze juz nikt nie przyszedl sie modlic w kaplicy.");
};

INSTANCE Info_Mod_Nagon_MangelQuest2 (C_INFO)
{
	npc		= Mod_1773_KDF_Nagon_PAT;
	nr		= 1;
	condition	= Info_Mod_Nagon_MangelQuest2_Condition;
	information	= Info_Mod_Nagon_MangelQuest2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nagon_MangelQuest2_Condition()
{
	if (Mod_Pat_Beter >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagon_MangelQuest2_Info()
{
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest2_10_00"); //Powitania, bracia. Jak tylko rozmawialismy, kilku uczniów szybko przyszlo sie modlic.
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest2_10_01"); //To miejsce wiary jest teraz po raz kolejny, tak jak powinno byc? i watpie, ze to zbieg okolicznosci.
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest2_10_02"); //Twoje zaangazowanie w nasza wiare pokazuje, ze jestes prawdziwym sluga naszego Pana.
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest2_10_03"); //Idzcie wiec z blogoslawienstwem Innosa i nadal pomagajcie ksztaltowac swiat zgodnie z jego wola.

	B_BlessAttribute	(hero, ATR_MANA_MAX, 3);

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Nagon byl zadowolony z wiernych w kosciele.");

	B_StopMangel();
};

var int Nagon_LastPetzCounter;
var int Nagon_LastPetzCrime;

INSTANCE Info_Mod_Nagon_PMSchulden (C_INFO)
{
	npc         	= Mod_1773_KDF_Nagon_PAT;
	nr          	= 1;
	condition   	= Info_Mod_Nagon_PMSchulden_Condition;
	information 	= Info_Mod_Nagon_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Nagon_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Nagon_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Nagon_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Nagon_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_00"); //Czy przyszedles/as zaplacic grzywne?

	if (B_GetTotalPetzCounter(self) > Nagon_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_01"); //Zastanawialem sie, czy nawet nie osmieliscie sie tu przyjechac!
		AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_02"); //Najwyrazniej nie sa to ostatnie oskarzenia!

		if (Nagon_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_03"); //Ostrzegam cie! Grzywna, która musisz zaplacic jest teraz wyzsza!
			AI_Output (hero, self, "Info_Mod_Nagon_PMAdd_15_00"); //Ile?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Nagon_LastPetzCounter);
		
			if (diff > 0)
			{
				Nagon_Schulden = Nagon_Schulden + (diff * 50);
			};
		
			if (Nagon_Schulden > 1000)	{	Nagon_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Nagon_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_04"); //Zapusciles mnie tak zle!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Nagon_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_05"); //Pojawily sie nowe rzeczy.
		
		if (Nagon_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_06"); //Nagle nie ma juz nikogo, kto oskarzalby cie o morderstwo.
		};
		
		if (Nagon_LastPetzCrime == CRIME_THEFT)
		|| ( (Nagon_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_07"); //Nikt nie pamieta, ze widzisz sie przy kradziezy.
		};
		
		if (Nagon_LastPetzCrime == CRIME_ATTACK)
		|| ( (Nagon_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_08"); //Nie ma juz zadnych swiadków tego, ze kiedykolwiek walczyles.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_09"); //Widocznie wszystkie zarzuty przeciwko Tobie zniknely.
		};
		
		AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_10"); //Nie wiem, co sie stalo, ale ostrzegam: nie graj ze mna.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_11"); //Zrezygnowalem z waszego zadluzenia.
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_12"); //Upewnij sie, ze nie popadniesz ponownie w klopoty.
	
			Nagon_Schulden			= 0;
			Nagon_LastPetzCounter 	= 0;
			Nagon_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_13"); //Jedno jest pewne: nadal trzeba zaplacic kare w calosci.
			B_Say_Gold (self, hero, Nagon_Schulden);
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_14"); //Co to jest?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Nagon_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Nagon_PETZMASTER);
		Info_AddChoice		(Info_Mod_Nagon_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Nagon_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Nagon_PMSchulden,"Ile to znów bylo?",Info_Mod_Nagon_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Nagon_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Nagon_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Nagon_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Nagon_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Nagon_PMSchulden_HowMuchAgain_15_00"); //Ile to znów bylo?
	B_Say_Gold (self, hero, Nagon_Schulden);

	Info_ClearChoices  	(Info_Mod_Nagon_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Nagon_PETZMASTER);
	Info_AddChoice		(Info_Mod_Nagon_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Nagon_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Nagon_PMSchulden,"Ile to znów bylo?",Info_Mod_Nagon_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Nagon_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Nagon_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Nagon_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Nagon_PETZMASTER   (C_INFO)
{
	npc         	= Mod_1773_KDF_Nagon_PAT;
	nr          	= 1;
	condition   	= Info_Mod_Nagon_PETZMASTER_Condition;
	information 	= Info_Mod_Nagon_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Nagon_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Nagon_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Nagon_PETZMASTER_Info()
{
	Nagon_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...
	
	// ------ SC hat mit Nagon noch nicht gesprochen ------
	if (B_GetAivar(self, AIV_TalkedToPlayer) == FALSE)
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_00"); //Musisz byc nowym facetem, który spowodowal klopoty w klasztorze.
	};	
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_01"); //Ciesze sie, ze przyszedles do mnie, zanim sytuacja sie pogorszyla.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_02"); //Morderstwo jest powaznym wykroczeniem!

		Nagon_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Nagon_Schulden = Nagon_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_03"); //Nie wspominajac o innych rzeczach, które zrobiles.
		};

		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_04"); //Wiekszosc magów i paladynów nie toleruje mordercy w klasztorze!
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_06"); //Nie interesuje mnie to, ze moge panstwa umiescic na szubienicy.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_07"); //Ale nie bedzie latwo sprawic, by ludzie znów byli laskawi.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_08"); //Mozesz okazac swoja pokute placac grzywne - oczywiscie kara musi byc odpowiednia.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_09"); //Dobrze! Jestes oskarzony o kradziez! Sa swiadkowie!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_10"); //Nie chce nawet mówic o innych rzeczach, które slyszalem.
		};

		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_11"); //Nie bede tolerowal takiego zachowania w klasztorze!
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_12"); //Bedziesz musial zaplacic grzywne za swoje przestepstwo!
		
		Nagon_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_13"); //Miesz sie z czarnymi magami, to nie jest nasza dzialalnosc.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_14"); //Ale jesli zaatakujesz czarodziej lub paladyne, bede musial cie pociagnac do odpowiedzialnosci.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_15"); //I nie sadze, aby tak bylo w przypadku owiec.
		};

		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_16"); //Jesli pozwole wam sie z tym uporac, wszyscy beda robic to, co chca.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_17"); //Placi sie wiec odpowiednia grzywne - a cala sprawa zostanie zapomniana.
		
		Nagon_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_18"); //Slyszalem, ze balaganiles sie z naszymi owcami.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_19"); //Zdajesz sobie sprawe, ze nie moge tego przepuscic.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_20"); //Bedziesz musial wyplacic odszkodowanie!
		
		Nagon_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Nagon_PETZMASTER_15_21"); //Ile?
	
	if (Nagon_Schulden > 1000)	{	Nagon_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Nagon_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Nagon_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Nagon_PETZMASTER);
	Info_AddChoice		(Info_Mod_Nagon_PETZMASTER,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Nagon_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Nagon_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Nagon_PETZMASTER,"Chce zaplacic grzywne.",Info_Mod_Nagon_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Nagon_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Nagon_PETZMASTER_PayNow_15_00"); //Chce zaplacic grzywne!
	B_GiveInvItems (hero, self, itmi_gold, Nagon_Schulden);
	AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_PayNow_10_01"); //Dobrze! Doloze wszelkich staran, aby wszyscy w klasztorze sie o tym dowiedzieli - to w pewnym stopniu przywróci Twoja reputacje.

	B_GrantAbsolution (LOC_PATHERION);
	
	Nagon_Schulden			= 0;
	Nagon_LastPetzCounter 	= 0;
	Nagon_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Nagon_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Nagon_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Nagon_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Nagon_PETZMASTER_PayLater_15_00"); //Nie mam wystarczajaco duzo zlota!
	AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_PayLater_10_01"); //Nastepnie zobacz, ze zloto dostaniesz jak najszybciej.
	AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_PayLater_10_02"); //I ostrzegam cie, ze jesli cokolwiek zawdzieczasz sobie, to bedzie ci gorzej.
	
	Nagon_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Nagon_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Nagon_EXIT (C_INFO)
{
	npc		= Mod_1773_KDF_Nagon_PAT;
	nr		= 1;
	condition	= Info_Mod_Nagon_EXIT_Condition;
	information	= Info_Mod_Nagon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nagon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nagon_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
