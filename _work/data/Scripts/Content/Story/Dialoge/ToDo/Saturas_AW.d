INSTANCE Info_Mod_Saturas_AW_Hi (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Hi_Condition;
	information	= Info_Mod_Saturas_AW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Saturas_AW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_00"); //Czy masz racje? Jak dostales sie do tej swiatyni?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_02"); //Ja równiez bylbym tym zainteresowany.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_03"); //Sledzilismy Cie przez portal i pokazalismy sie przed ta swiatynia.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_04"); //Brak sladu.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_05"); //Szukamy wiec okolic wokól nas, zaczynamy sie wyposazyc, gdy brama swiatyni nagle sie otworzy, rozpadniesz sie i zemdlisz.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_06"); //Potem zwiedzilismy swiatynie i znalezlismy cos ciekawego.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_07"); //Ale teraz to Twoja kolej na powiedzenie.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_08"); //Dla mnie to sen.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_09"); //Zostalem przechwycony przez gnoma, który chcial mnie zabrac do swego mistrza.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_10"); //Który mistrz?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_11"); //Trudno mi o nim nic nie wiem, poza tym, ze celowal do mnie i mial cos wspólnego z sypialnia.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_12"); //Kiedy powiedzialem mu, ze nie jest soba, to on dziwnie dziwny, ze natychmiast uwierzyl w mnie i pozwolil mi odjechac - ale nie bez opuszczenia mnie pozegnania w postaci biegnacej sterty kamieni.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_13"); //Na tym swiecie dzieje sie wiele tajemniczych rzeczy, ale jest to po prostu niewytlumaczalne.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_14"); //Nie wyobrazam sobie, ile energii potrzeba do przerwania lub rozproszenia teleportacji.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_15"); //To po prostu niemozliwe!
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_16"); //Skad ten mistrz wie gdzie jestes?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_17"); //Nie wiem o tym. Niewiele walilem.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_18"); //Czy sadzisz, ze Argez ma z tym cos wspólnego?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_19"); //Mysle, ze lepiej by bylo, gdybyscie juz nie byli blisko niego.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_20"); //Nie powinienes mu powiedziec, co ty tez robisz.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_21"); //Wszystkie sluszne, wszystkie sluszne.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_22"); //Teraz jednak chce pokazac wam nasze odkrycie w swiatyni. Przyjedz ze mna!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOFOKUS");

	B_StartOtherRoutine	(Mod_9002_KDW_Nefarius_AW, "INTEMPEL");
};

INSTANCE Info_Mod_Saturas_AW_Fokusplatz (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Fokusplatz_Condition;
	information	= Info_Mod_Saturas_AW_Fokusplatz_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Fokusplatz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Hi))
	&& (Npc_GetDistToWp(self, "ADW_PORTALTEMPEL_TELEPORTSTATION") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Fokusplatz_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_00"); //Oto jestesmy. Ta kolumna i platforma wygladaja jak miejsca ostrosci w Minental.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_01"); //Powinnismy tutaj sprowadzic Foki' ego. Jest cos mistycznego w tej czesci wyspy.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_02"); //Byc moze poda nam on jakies informacje na temat tego kraju.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_03"); //Gdzie jest Foki? Czy sa jeszcze w Nowym Obozie?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_04"); //Nie, po zejsciu bariery ponownie skierowalismy uwage na jej stare miejsce.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_05"); //Dlaczego to jest pieklo?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_06"); //Byla to najbezpieczniejsza opcja, jaka moglismy zaproponowac, aby zapobiec przedostaniu sie nikogo innego niz nas w posiadanie.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_07"); //Tylko my i wy - którym uwierzylismy, ze umarliscie - znacie odlegle miejsca, w których sie znajduja.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_08"); //A jesli ktos powinien spotkac sie z jednym z nich, nie znajdzie drugiego przypadkiem.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_09"); //Mimo ze Foki nie mial tyle sily, co poczatkowo zakladalismy, ten srodek bezpieczenstwa wydawal nam sie rozsadny.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_10"); //Ach, jest jeszcze cos innego.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_11"); //To nie moze byc dobre.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_12"); //Na wszystkich Foki zaklecie ochronny zaklecie.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_13"); //Nie wiesz, jak ja odebrac.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_14"); //Trzymaj jezyk pod kontrola. Latwo jest ja ponownie odebrac.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_15"); //Jednakze trzech z nas polaczylo sily, aby rzucic czar.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_16"); //Potrzeba wiec trzech magów, aby ja odebrac.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_17"); //Jest wiec problem.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_18"); //Tak, rzeczywiscie. Nie moge oszczedzic nikomu, kto udaje sie tam po drodze.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_19"); //Z wyjatkiem mnie.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_20"); //Trzeba sie tym zajac samodzielnie.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_21"); //Ale jak? Nie znam wielu magów, którzy moga odpoczac po poludniu.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_22"); //Przypadkowo Nefarius natknal sie na cos w tylnej czesci swiatyni, co moze byc dla ciebie pomocne.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_23"); //Wyjasni, o co w tym wszystkim chodzi.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_24"); //Oto mapa ostrosci, jesli nie pamietasz miejsc.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_25"); //Oh tak, Minental Pass jest strzezony przez Paladynów i tylko ci, którzy posiadaja licencje moga przejsc.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_26"); //Nie zostaniesz wpuszczony bez wyraznej zgody.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_27"); //Kto móglby uzyskac taka licencje?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_28"); //Mocno podejrzewam, ze Lord Hagen jest odpowiedzialny za kontrole.

	B_GiveInvItems	(self, hero, ItWrFocimap, 1);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DIEB");

	Mod_TarrokDarfQuatschen = 1;

	Mod_Saturas_KDW_Geblubber = Wld_GetDay();

	Log_CreateTopic	(TOPIC_MOD_FOKUSSUCHE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FOKUSSUCHE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Saturas zatrudnil mnie, abym wyciagnal Foki z Minentala. Wszystkie one sa jednak pokryte zakleciem ochronnym, które tylko trzy magi moga peknac na raz. Nefarius w tylnej czesci swiatyni w Jharkendarzu powinien mi pomóc. Poza tym musze sie upewnic, ze zostane wpuszczony do Minentala. Poniewaz wejscie kontrolowane jest przez paladynów, powinienem spróbowac szczescia z Lordem Hagenem.");
};

INSTANCE Info_Mod_Saturas_AW_UngebeterBesucher (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_UngebeterBesucher_Condition;
	information	= Info_Mod_Saturas_AW_UngebeterBesucher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_UngebeterBesucher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_AW_Fokussuche))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_00"); //(nerupcja) Nie nawet swiadomie i znowu palce nie sa wyciagane!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_01"); //Co?

	if (Wld_IsTime(07,00,22,00))
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_02"); //W rozleglym swietle dziennym, wazne czesci naszego sprzetu sa od nas kradzione.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_03"); //Tego wieczoru ktos w naszym obozie pomógl sobie i ukradl wazne czesci naszego sprzetu.
	};

	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_04"); //Jestem pewien, ze znów jestes za tym.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_05"); //Czego brakuje?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_06"); //Wszystkie rodzaje drobnych rzeczy: laboratoryjne butelki na wode, ziola lecznicze. Chleby.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_07"); //Nawet cos wzieto z naszych torebek na zywnosc.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_08"); //To nie wszystko.

	if (Wld_IsTime(07,00,22,00))
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_09"); //A kto to jest? Nikt niczego nie widzial, a Argez jest caly czas obserwowany.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_10"); //A kto to jest? Magicy wodni i Argez juz od pewnego czasu spia.
	};

	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_11"); //Ktos, kto mógl to wszystko wykorzystac.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_12"); //Nie widze tu nikogo, kto nie dostalby sie do rzeczy bez zapytania.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_13"); //Nie patrzysz, przychodzisz do mnie za minute.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_14"); //To juz wystarczy. Albo znajdziesz zlodzieja, albo wyrzucisz rzeczy.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_15"); //Nie porozmawiam z wami wczesniej.

	if (Wld_IsTime(07,00,22,00))
	{
		Log_CreateTopic	(TOPIC_MOD_SATURAS_TAGGAST, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SATURAS_TAGGAST, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_SATURAS_TAGGAST, "Zlodziej kradnie magów wodnych z ich sprzetu. Szatan nie chce rozmawiac ze mna zanim go zlapiem.");

		Mod_Saturas_Gast = 1;
	}
	else
	{
		Log_CreateTopic	(TOPIC_MOD_SATURAS_NACHTGAST, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SATURAS_NACHTGAST, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_SATURAS_NACHTGAST, "Zlodziej kradnie magów wodnych z ich sprzetu. Szatan nie chce rozmawiac ze mna zanim go zlapiem.");

		Mod_Saturas_Gast = 2;
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PRESTART");
};

INSTANCE Info_Mod_Saturas_AW_UngebeterBesucher2 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_UngebeterBesucher2_Condition;
	information	= Info_Mod_Saturas_AW_UngebeterBesucher2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam wyznanie, które musze zlozyc....";
};

FUNC INT Info_Mod_Saturas_AW_UngebeterBesucher2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher2_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_15_00"); //Mam wyznanie, które musze zlozyc....
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_01"); //Zapobierzcie! Jak moge upasc za Ciebie?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_15_02"); //Chce zadac to panstwu równiez.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_03"); //To minimum, co moge zrobic! Ukryj wszystko, co ukryles w glebokich kieszeniach!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_15_04"); //Uh.... Czego ponownie brakuje?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_05"); //Nie da sie tego dokladnie powiedziec.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_06"); //10 roslin leczniczych, jesli nie wiecej. 5 bochenków chleba. 7 lub wiecej laboratoryjnych butelek na wode.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_07"); //Rekompensata za 100 zlotych monet.

	if (Mod_Saturas_Gast == 1)
	{
		B_LogEntry (TOPIC_MOD_SATURAS_TAGGAST, "Saturas chce 10 roslin leczniczych, 5 bochenków chleba i 7 butelek wody laboratoryjnej ode mnie. On je bedzie mial.");
	}
	else
	{
		B_LogEntry (TOPIC_MOD_SATURAS_NACHTGAST, "Saturas chce 10 roslin leczniczych, 5 bochenków chleba i 7 butelek wody laboratoryjnej ode mnie. On je bedzie mial.");
	};

	Info_ClearChoices	(Info_Mod_Saturas_AW_UngebeterBesucher2);

	if (Mod_Verhandlungsgeschick > 0)
	{
		Info_AddChoice	(Info_Mod_Saturas_AW_UngebeterBesucher2, "Wymienie ubrania.... ale zloto nie jest (.....) )", Info_Mod_Saturas_AW_UngebeterBesucher2_B);
	};

	Info_AddChoice	(Info_Mod_Saturas_AW_UngebeterBesucher2, "Przywróce to wszystko.", Info_Mod_Saturas_AW_UngebeterBesucher2_A);
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher2_B()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_B_15_00"); //Wymienie rzeczy.... Ale zloto nie musi byc.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_B_14_01"); //Dobrze, bede sie cieszyl, gdy dostaniemy z powrotem wszystkie inne rzeczy.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_B_14_02"); //Nie dotykaj naszych rzeczy w przyszlosci!
	};

	Info_ClearChoices	(Info_Mod_Saturas_AW_UngebeterBesucher2);
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher2_A()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_A_15_00"); //Przywróce to wszystko.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_A_14_01"); //Mam nadzieje, ze tak tez jest!

	Info_ClearChoices	(Info_Mod_Saturas_AW_UngebeterBesucher2);
};

INSTANCE Info_Mod_Saturas_AW_UngebeterBesucher3 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_UngebeterBesucher3_Condition;
	information	= Info_Mod_Saturas_AW_UngebeterBesucher3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto skradzione towary.";
};

FUNC INT Info_Mod_Saturas_AW_UngebeterBesucher3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher2))
	&& (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 10)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 5)
	&& (Npc_HasItems(hero, ItMi_Flask) >= 7)
	&& ((Npc_HasItems(hero, ItMi_Gold) >= 100)
	|| (self.aivar[AIV_Verhandlung] == TRUE))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher3_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher3_15_00"); //Oto skradzione towary.

	B_ShowGivenThings	("skradzione towary");

	Npc_RemoveInvItems	(hero, ItPl_Health_Herb_01, 10);
	Npc_RemoveInvItems	(hero, ItFo_Bread, 5);
	Npc_RemoveInvItems	(hero, ItMi_Flask, 7);

	if (self.aivar[AIV_Verhandlung] == FALSE)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 100);
	};

	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher3_14_01"); //Wreszcie. Nie myslcie jednak, ze nie jestem wam wdzieczny.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher3_14_02"); //A co z minentalna podróza, tak czy owak? Czy Nefarius nie moze Ci pomóc?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher3_15_03"); //Tak, wszystko bedzie w porzadku. Zajmie to troche czasu.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher3_14_04"); //Ale nie!

	if (Mod_Saturas_Gast == 1)
	{
		B_SetTopicStatus (TOPIC_MOD_SATURAS_TAGGAST, LOG_SUCCESS);
	}
	else
	{
		B_SetTopicStatus (TOPIC_MOD_SATURAS_NACHTGAST, LOG_SUCCESS);
	};

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Saturas_AW_Magieschranke (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Magieschranke_Condition;
	information	= Info_Mod_Saturas_AW_Magieschranke_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz pomóc mi pozbyc sie markera magicznego?";
};

FUNC INT Info_Mod_Saturas_AW_Magieschranke_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma3))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Magieschranke_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Magieschranke_15_00"); //Czy mozesz pomóc mi pozbyc sie markera magicznego?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Magieschranke_14_01"); //A co?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Magieschranke_15_02"); //To w porzadku. Nie znasz nikogo, kto nic o tym nie wie?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Magieschranke_14_03"); //Szansa, ze inny magik wodniak wie o tym jest bardzo mala, jesli nigdy o tym nie slyszalem.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Saturas_AW_Magieschranke_15_04"); //Kraj ten jest dla magów niemal tak obcy, jak dla mnie. Nie wiedza nic o magicznym markerze. Ale poniewaz mam na mysli tajemnicza magie - co o niej mysli Argez?

	AI_TurnToNpc	(hero, self);

	B_LogEntry	(TOPIC_MOD_MAGISCHEMARKIERUNG, "Satura i prawdopodobnie wszyscy inni magowie nie wiedza, jak pozbyc sie markera magii. Moze powinienem poprosic Argeza o rade....");
};

INSTANCE Info_Mod_Saturas_AW_HabFoki (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_HabFoki_Condition;
	information	= Info_Mod_Saturas_AW_HabFoki_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_HabFoki_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	&& (Mod_Fokus_Alle == 1)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_HabFoki_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_00"); //Czy dostales wszystkie linie ostrosci?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_01"); //Tak, odnalazlem je wszystkie.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_02"); //Twój wielki plan, aby przywrócic ostrosc kamienie z powrotem do ich pierwotnych miejsc, ale prawie poszedl do tylu.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_03"); //Co masz na mysli?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_04"); //Orki przyszly na lejek, aby wskrzesic sypialnie z punktami ostrosci i zebraly juz dwa.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_05"); //Mialem tez drugiego przeciwnika, który znal lokalizacje Foki' ego.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_06"); //Tylko przy odrobinie szczescia moglem je wszystkie przed nim zlapac.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_07"); //Jaki jest to przeciwnik?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_08"); //Mocno podejrzewam, ze to on równiez próbowal mnie zlapac.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_09"); //A co powinien zrobic z kamieniami ostrosciowymi?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_10"); //Nie wiem o tym.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_11"); //Wtedy nigdzie nas to nie zaprowadzi. Tak wiec realizujemy nasz pierwotny plan.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_12"); //Teraz musisz znalezc podstawy kamieni ostrosci i wstawic je.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_13"); //Protestowanie prawdopodobnie nie pomoze, czyz nie?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_14"); //Zapisz, zapisz.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Saturas chce, abym teraz wykorzystal ostrosc. Podesty zostana ponownie zaaranzowane w formie pentagramu. W drodze na wschód do bagna Neku czeka na mnie. On jest w okolicy i moze miec dla mnie jakies informacje.");

	Wld_InsertNpc	(Mod_7369_WNOV_Neku_AW,	"ADW_ENTRANCE_PATH2BANDITS_13A");

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Saturas_AW_Kap3 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Kap3_Condition;
	information	= Info_Mod_Saturas_AW_Kap3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Kap3_Condition()
{
	if (Kapitel == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Kap3_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_00"); //Adanos, pomóz nam! Pieklo nas zepsulo!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_01"); //To tylko jeden sposób, aby to ujac. A wiem juz teraz.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_02"); //Wtedy nie pozwól mi cie prosic!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_03"); //Uzywalem wszystkich kamieni ostrosci, ale nie zrobilem nam zadnej przyslugi.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_04"); //Foki upewnial sie, ze Xeres, starozytny zly magik, moze teraz uciec z wiezienia pod ziemia.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_05"); //On sam juz sie kreci i wyglada na to, ze wyslal juz swoje wojska.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_06"); //Bylo tam kilkadziesiat stworzen, których nigdy wczesniej nie widzialem.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_07"); //Jak przetrwales?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_08"); //To.... To byl Argez. Sprawdzal je z zakleciami, az do momentu, gdy go zacieli.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_09"); //I wtedy go wzieli i wyciagneli.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_10"); //Argez ma....
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_11"); //On nas uratowal. Wydaje mi sie, ze sie myle w jego sprawie.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_12"); //Gdzie go zabrali?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_13"); //Zachód. Merdarion pokrótce podszedl w tym kierunku i opowiedzial nam o wielkiej wawozie, która podobno otworzyla sie w jednej z wawozów.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_14"); //Zobacze to pózniej.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_15"); //Czy nie myslisz?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_16"); //Nie wykluczalabym tego.

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Schronisko Xeresów wydaje sie byc bardzo blisko. Mówi sie, ze w jednym z wawozów na zachód od magów wody otworzyl sie otwór. Kiedy wybieram sie do Xeres, moge faktycznie uwolnic Argeza, który zostal przez niego uprowadzony.");

	Wld_SendTrigger	("EVT_ZUGANG_UNTERWELT");
};

INSTANCE Info_Mod_Saturas_AW_Member_01 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_01_Condition;
	information	= Info_Mod_Saturas_AW_Member_01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Member_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	&& (Mod_Gilde == 9)
	&& ((Wld_GetDay()-2 >= Mod_Saturas_KDW_Geblubber)
	|| ((FokiEingesetzt == 2)
	&& (FokusBlockade == TRUE)))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_01_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_00"); //Od kilku dni jestes czlonkiem naszej spolecznosci, spolecznosci wodnej. Mam nadzieje, ze rozumie pan wielka odpowiedzialnosc, jaka sie z tym wiaze.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_01"); //To my, zgodnie z instrukcja Adano, utrzymujemy w równowadze stosunki wladzy i wplyw dwóch bóstw Innos i Beliar.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_02"); //Jest to bardzo krucha równowaga i tylko wtedy, gdy kazde z dzieci naszej spolecznosci bedzie wykonywalo swoje zadania z wielka sumiennoscia.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_03"); //Jesli jedna z dwóch stron - porzadek lub chaos - zyska dominacje, to cala struktura swiata, jak wiemy, zostanie wyrzucona z tego.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_04"); //Mialoby to niszczycielskie nastepstwa dla wiekszosci istot chodzacych po nim.....
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_01_15_05"); //Czy moge cos zrobic, aby pomóc naszej spolecznosci w jej dazeniu do równowagi?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_06"); //Nie w tej chwili. Byc moze za kilka dni znajdziecie cos dla siebie.
};

INSTANCE Info_Mod_Saturas_AW_Member_02 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_02_Condition;
	information	= Info_Mod_Saturas_AW_Member_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Member_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_01))
	&& (FokiEingesetzt == 2)
	&& (FokusBlockade == TRUE)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_14_00"); //Masz minute? Mam prace dla Ciebie.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_02_15_01"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_14_02"); //Cóz, slyszelismy, ze demoniczni magicy sa w stanie zmienic charakter gleby poprzez nieswiateczne rytualy.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_14_03"); //Moze tez slyszales o tym?

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_02);
	
	Info_AddChoice	(Info_Mod_Saturas_AW_Member_02, "Nie, jeszcze nie.", Info_Mod_Saturas_AW_Member_02_B);

	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Aufnehmen))
	{
		Info_AddChoice	(Info_Mod_Saturas_AW_Member_02, "Tak, o ile slyszalem (....) )", Info_Mod_Saturas_AW_Member_02_A);
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_02_C()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_C_14_00"); //Najbardziej niepokojace jest to, ze ciemna magia rzucona na ziemie pozostaje przywiazana do ziemi.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_C_14_01"); //Mroczne i demoniczne potegi moga latwiej znalezc tam oparcie i stopniowo zatruwac teren potega Beliarów.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_C_14_02"); //Demonisci magicy równiez to dostrzegli i rozszerzyli swoja nieswieta prace na inne, na razie mniejsze obszary w Khorinis.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_C_14_03"); //Chca wzmocnic swoja pozycje wladzy i otworzyc przestrzen, w której ich magia moze miec silniejszy efekt.

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_02);
};

FUNC VOID Info_Mod_Saturas_AW_Member_02_B()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_02_B_15_00"); //Nie, jeszcze nie.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_B_14_01"); //Nie ma to znaczenia, powiem ci teraz najwazniejsze rzeczy.

	Info_Mod_Saturas_AW_Member_02_C();
};

FUNC VOID Info_Mod_Saturas_AW_Member_02_A()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_02_A_15_00"); //Tak, o ile doswiadczylam, to gleba podobno uzyskala inne wlasciwosci poprzez usuwanie i dodawanie jakichkolwiek substancji.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_A_14_01"); //Dokladnie. Ale to nie wszystko, co trzeba o tym wiedziec.

	Info_Mod_Saturas_AW_Member_02_C();
};

INSTANCE Info_Mod_Saturas_AW_Member_03 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_03_Condition;
	information	= Info_Mod_Saturas_AW_Member_03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co mozna zrobic, aby polozyc kres temu zgielkowi?";
};

FUNC INT Info_Mod_Saturas_AW_Member_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_02))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_03_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_03_15_00"); //Co mozna zrobic, aby polozyc kres temu zgielkowi?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_01"); //Aby ponownie wyczyscic podloge, musimy uzyc magii, która dal nam Adanos. Do tego celu uzywamy magicznych perel wodnych.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_02"); //Teraz twoim zadaniem jest rozpraszanie perly zneutralizowania wody w kazdym dotknietym obszarze.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_03"); //Jak tylko tylko dotknie ziemi, wyssie z niego jak trucizna z rany ciemna magie, a nastepnie rozpusci i uwolni wladze do srodowiska.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_03_15_04"); //Uwolnij czarna magie w okolicy! Czy nie jest to zbyt ryzykowne?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_05"); //.... O tym wlasnie mialem po prostu mówic.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_06"); //Podczas gdy czesc magicznych mocy bedzie stopniowo rozprzestrzeniac sie na nieefektywnosc w srodowisku, duza czesc magii demonicznej moze przejawiac sie w formie stalej.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_07"); //Wiec bedziesz musial przygotowac sie na spotkanie z jednym lub drugim stworzeniem.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_08"); //Nie mam jednak watpliwosci, ze staniecie sie Panami, poniewaz poszczególne regiony sa na razie stosunkowo male i maja niewiele czasu na przejecie demonicznych sil.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_09"); //Ponadto, podczas wyszukiwania kolonii w poszukiwaniu ostrosci musisz byc przeciwnikiem znacznie bardziej niesfornych stworzen.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_03_15_10"); //Mam kolejna prosbe. Uzylem innej ostrosci, ale zostalem przeniesiony do zupelnie innego miejsca, gdzie wolalbym nie pojechac......
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_11"); //Hmm, niezwykle niezwykly. Przyczyna moze byc jednak dokladnie takie zanieczyszczenie wyzej wymienionych gleb.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_03_15_12"); //Ma to miec wplyw na tak duza odleglosc?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_13"); //Dostosowanie takich teleporterów i ich magii jest bardzo dokladna i wrazliwa sprawa. Jesli w glebie innego miejsca na wyspie wystepuje magiczna anomalia, moze ona wywolac efekt az do Jharkendara.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_14"); //Przejdz teraz do Merdarion, on da Ci perelki wody. Niech Adanos zapewni Ci bezpieczenstwo.

	Log_CreateTopic	(TOPIC_MOD_ADANOS_BOEDEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ADANOS_BOEDEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ADANOS_BOEDEN, "Satury kazaly mi oczyscic podlogi przeklete przez czarnych magów. Merdarion ma mi zapewnic niezbedne narzedzia.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Saturas_AW_Member_04 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_04_Condition;
	information	= Info_Mod_Saturas_AW_Member_04_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ze wzgledu na czyszczenie powierzchni.....";
};

FUNC INT Info_Mod_Saturas_AW_Member_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Merdarion_AW_Nefarius))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	&& (Mod_WM_Boeden < 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_04_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_04_15_00"); //Ze wzgledu na czyszczenie powierzchni.....
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_01"); //Tak, co musisz zglosic?

	if (Mod_WM_Boeden < 6)
	{
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_04_15_02"); //Nadal jestem w tej sprawie.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_03"); //Wtedy lepiej sie spieszyc i nie poranic.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_04_15_04"); //Zrobilem wszystko, o co poprosil mnie Pan do zrobienia i sprzatania podlóg czarnej magii.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_05"); //To wspaniale. Czarni magowie beda teraz wierzyc, ze ich wysilki zakonczyly sie niepowodzeniem.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_06"); //Ale teraz raport: Czy musiales zmierzyc sie z wieloma demonicznymi slugusami?
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_04_15_07"); //Nie, tylko dwa pierwsze rytualy oczyszczajace doprowadzily do manifestacji jednej istoty.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_08"); //Tylko dwa stworzenia? To bardzo zaskakujace.... No cóz, no cóz, tak czyniles wspaniala przysluge dla naszej spolecznosci.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_09"); //Wez te eliksiry z many jako podziekowanie. Niech daja wam magiczna moc walki o wole naszego Pana Adanosa.

		B_GiveInvItems	(self, hero, ItPo_Mana_01, 10);

		B_GivePlayerXP	(300);

		Mod_WM_Boeden = 7;

		Mod_WM_DaySave = Wld_GetDay();

		FokusBlockade = FALSE;
	};
};

INSTANCE Info_Mod_Saturas_AW_Member_05 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_05_Condition;
	information	= Info_Mod_Saturas_AW_Member_05_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jest jeszcze cos, co moge zrobic?";
};

FUNC INT Info_Mod_Saturas_AW_Member_05_Condition()
{
	if (Mod_WM_Boeden >= 7)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_05_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_05_15_00"); //Czy jest jeszcze cos, co moge zrobic?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_05_14_01"); //Teraz nie mam pracy dla Ciebie, moze za kilka dni.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_05_14_02"); //Hmm, ale Cronos powiedzial, ze moze miec wskazówki co do miejsca starego artefaktu, który byl stracony przez dlugi czas, ale nadal byl raczej niepewny......
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_05_14_03"); //Lepiej pójsc do niego. Moze mozesz mu pomóc w jego badaniach.

	Log_CreateTopic	(TOPIC_MOD_ADANOS_NOVIZE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ADANOS_NOVIZE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "Saturas powiedzial, ze Cronos moze byc na szlaku artefaktu.");
};

INSTANCE Info_Mod_Saturas_AW_Member_06 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_06_Condition;
	information	= Info_Mod_Saturas_AW_Member_06_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Member_06_Condition()
{
	if (Mod_Wm_Boeden == 7)
	&& (FokiEingesetzt == 4)
	&& (FokusBlockade == TRUE)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_06_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_14_00"); //Nie oznacza to, ze to sie nie konczy. Gleby....
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_06_15_01"); //Co, czarne czarne magy znów?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_14_02"); //Nie, koncze. Tym razem to slugom sluzacym Inno zagraza równowaga poprzez ich niedbala prace.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_14_03"); //Slyszeli o dzialaniach czarnych magów i poblogoslawili niektóre obszary w ramach kontrofensywy.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_14_04"); //Przejdz do Merdarion, juz wiesz jak postepowac.

	B_LogEntry_More	(TOPIC_MOD_FOKUSSUCHE, TOPIC_MOD_ADANOS_BOEDEN, "Wtedy najprawdopodobniej przyczyna sa gleby konsekrowane. Tylko wtedy, gdy zostali oni zbezczeszczeni, osmiele sie wykorzystac ostatnia uwage.", "Teraz ta wlasnie. Tym razem pozwolono mi zbezczeszczyc ziemie poblogoslawiona przez Innowierców. Jak zwykle moge odebrac wszystkie niezbedne materialy z Merdarion.");

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_06);

	Info_AddChoice	(Info_Mod_Saturas_AW_Member_06, "Czy jestes powazny? Mam zbezczeszczyc blogoslawiony grunt?", Info_Mod_Saturas_AW_Member_06_B);
	Info_AddChoice	(Info_Mod_Saturas_AW_Member_06, "Bede w drodze od razu.", Info_Mod_Saturas_AW_Member_06_A);
};

FUNC VOID Info_Mod_Saturas_AW_Member_06_B()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_06_B_15_00"); //Czy jestes powazny? Mam zbezczeszczyc blogoslawiony grunt?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_B_14_01"); //Wyglada na to, ze nie do konca zrozumiales, na czym polega nasza praca. Uprawnienia Beliara nie zawsze sa jedyne.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_B_14_02"); //Jezeli slugom Inno wydaje sie, ze musza zaklócac naturalny przebieg wydarzen poprzez blogoslawienstwo calych regionów, to oczywiste jest, ze naszym zadaniem jest równiez zapobieganie takim sytuacjom.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_B_14_03"); //Teraz wykonaj swój obowiazek.

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_06);
};

FUNC VOID Info_Mod_Saturas_AW_Member_06_A()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_06_A_15_00"); //Bede w drodze od razu.

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_06);
};

INSTANCE Info_Mod_Saturas_AW_Member_07 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_07_Condition;
	information	= Info_Mod_Saturas_AW_Member_07_Info;
	permanent	= 1;
	important	= 0;
	description	= "Z powodu czyszczenia podlóg....";
};

FUNC INT Info_Mod_Saturas_AW_Member_07_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_06))
	&& (Mod_WM_Boeden < 9)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_07_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_07_15_00"); //Z powodu czyszczenia podlóg....
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_07_14_01"); //Tak, co musisz zglosic?

	if (Mod_WM_Boeden < 8)
	{
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_07_15_02"); //Nadal jestem w tej sprawie.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_07_14_03"); //Wtedy lepiej sie spieszyc i nie poranic.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_07_15_04"); //Zrobilem wszystko, o co prosiles mnie i tym razem na pietrach.... blogoslawienstwo Innosa.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_07_14_05"); //Bardzo dobry. Mam tylko nadzieje, ze nie spowoduje to tarc z klasztorem.....
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_07_14_06"); //Zreszta tutaj znajdziesz kilka zlotych monet na sprzet.

		B_GiveInvItems	(self, hero, ItMi_Gold, 200);

		B_GivePlayerXP	(300);

		Mod_WM_Boeden = 9;

		Mod_WM_DaySave = Wld_GetDay();

		B_SetTopicStatus	(TOPIC_MOD_ADANOS_BOEDEN, LOG_SUCCESS);

		B_Göttergefallen(2, 1);

		FokusBlockade = FALSE;
	};
};

INSTANCE Info_Mod_Saturas_AW_PortalInnosSchwert (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_PortalInnosSchwert_Condition;
	information	= Info_Mod_Saturas_AW_PortalInnosSchwert_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_PortalInnosSchwert_Condition()
{
	if (Mod_BEL_FirstPortal == 1)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_PortalInnosSchwert_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_00"); //Ahhh, znów jestes. Czy sa jakies wiadomosci?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_PortalInnosSchwert_15_01"); //Tak, mysle, ze znalazlem sposób na zdobycie artefaktu, którego chce straznik.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_PortalInnosSchwert_15_02"); //Jest rytual, na koncu którego musialem wyslac blysk blyskawicy, aby stworzyc portal.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_PortalInnosSchwert_15_03"); //Niestety, portal nie wydaje sie wystarczajaco stabilny i natychmiast znika.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_04"); //Hmm, który brzmi jak portal zasilany jest magiczna energia blyskawicy.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_05"); //Dla nas magów wodnych nie powinno byc trudno stworzyc zaklecie, które wytworzyloby duzo silniejsze piorunowanie.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_06"); //Powinno to stworzyc stabilny portal......
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_07"); //Zakonczenie projektu zajmie nam jednak kilka godzin.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_08"); //W miedzyczasie powinienes sie upewnic, ze poczyniles wszystkie przygotowania, aby stawic czola straznikowi.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_09"); //Niewatpliwie sa one juz teraz bardzo bliskie osiagniecia swojego celu.... Wiecej

	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "Magicy wodni stworza zmodyfikowana srube blyskawiczna, która utrzyma portal w stabilnej formie.");

	if (Mod_BEL_BeliarDoch_Gefunden == FALSE)
	{
		B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "W tym czasie mialem szukac instrukcji budowlanych dla sztyletu Beliars.");
	};

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk (self, 60);
};

INSTANCE Info_Mod_Saturas_AW_PortalZauberFertig (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_PortalZauberFertig_Condition;
	information	= Info_Mod_Saturas_AW_PortalZauberFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_PortalZauberFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_PortalInnosSchwert))
	&& (Npc_RefuseTalk(self) == FALSE)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_PortalZauberFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalZauberFertig_14_00"); //Ach, tu jestescie wreszcie. Zakonczylismy juz czesc powiedzenia.

	B_GiveInvItems	(self, hero, ItSc_ModifiedZap, 1);

	AI_Output(hero, self, "Info_Mod_Saturas_AW_PortalZauberFertig_15_01"); //Dzieki. Bede wiec w drodze.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalZauberFertig_14_02"); //Nie zapominajmy, ze zachowanie równowagi jest teraz w waszych rekach. Adanos zapewnia Ci bezpieczenstwo.

	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "Mam przygotowana zakleta rolke do portalu.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Saturas_AW_Bshydal (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Bshydal_Condition;
	information	= Info_Mod_Saturas_AW_Bshydal_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Bshydal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_AW_Bshydal))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Bshydal_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Bshydal_14_00"); //Czy przez Adanosa mozesz powstrzymac zlo?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Bshydal_15_01"); //Tak, niebezpieczenstwo zostalo wyeliminowane.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Bshydal_14_02"); //Jestem spokojny. Mój magiczny instynkt juz mnie podejrzewal, ale potwierdzenie tego jest balsamem dla ducha.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Bshydal_14_03"); //W kazdym razie zrobiles dla nas i stworzenia wiele.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Bshydal_14_04"); //Tutaj wez te idoli i eliksiry jako podziekowania. Adanos zapewnia Ci bezpieczenstwo.

	B_ShowGivenThings	("Otrzymano 2 zaklecia i 6 poidelek do picia.");

	CreateInvItems	(hero, ItSc_IceRain, 2);
	CreateInVItems	(hero, ItPo_Mana_01, 3);
	CreateInvItems	(hero, ItPo_Mana_02, 2);
	CreateInvItems	(hero, ItPo_Geist, 1);

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Saturas_AW_Fokussteine (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Fokussteine_Condition;
	information	= Info_Mod_Saturas_AW_Fokussteine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sie stanie, jesli kamienie ogniskujace nie zadzialaja?";
};

FUNC INT Info_Mod_Saturas_AW_Fokussteine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Fokussteine_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokussteine_15_00"); //Co sie stanie, jesli kamienie ogniskujace nie zadzialaja?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokussteine_14_01"); //Wtedy bedziemy musieli po prostu spróbowac swoich sil.
};

INSTANCE Info_Mod_Saturas_AW_FokusSockel (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_FokusSockel_Condition;
	information	= Info_Mod_Saturas_AW_FokusSockel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie moge znalezc podstawy?";
};

FUNC INT Info_Mod_Saturas_AW_FokusSockel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_HabFoki))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	&& (Kapitel == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_FokusSockel_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_FokusSockel_15_00"); //Gdzie moge znalezc podstawy?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_01"); //Jedyne co mozemy zrobic, to przyjac zalozenia na ten temat.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_02"); //Ale nie jest malo prawdopodobne, ze podstawy sa ulozone jako pentagram jak w Minental.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_03"); //Po zlokalizowaniu dwóch z nich powinienes miec mozliwosc wypracowania reszty.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_04"); //Skierowalismy juz Neku na wschodnie bagno, które powinno sie tam rozejrzec.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_05"); //Jestem pewien, ze ma juz dla Ciebie informacje. Powinien pan postrzegac go jako sprawe pilna.
};

INSTANCE Info_Mod_Saturas_AW_WofuerGut (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_WofuerGut_Condition;
	information	= Info_Mod_Saturas_AW_WofuerGut_Info;
	permanent	= 0;
	important	= 0;
	description	= "Po co to jest dobre?";
};

FUNC INT Info_Mod_Saturas_AW_WofuerGut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_HabFoki))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	&& (Kapitel == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_WofuerGut_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_WofuerGut_15_00"); //Po co to jest dobre?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WofuerGut_14_01"); //Gdy tylko teleporterzy beda pracowac, mozliwa bedzie bezpieczna podróz przez ten nieznany swiat.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WofuerGut_14_02"); //Nie mozemy zawsze wysylac jednego czy dwóch mezczyzn jak poprzednio, potrzebujemy wiedzy i doswiadczenia calej grupy.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WofuerGut_14_03"); //I nie moge zmusic starych chlopców, by chodzili calymi dniami.
};

INSTANCE Info_Mod_Saturas_AW_WiesoFoki (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_WiesoFoki_Condition;
	information	= Info_Mod_Saturas_AW_WiesoFoki_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego Foki z Minentala równiez ma pracowac tutaj?";
};

FUNC INT Info_Mod_Saturas_AW_WiesoFoki_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_HabFoki))
	&& (Kapitel == 2)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_WiesoFoki_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_WiesoFoki_15_00"); //Dlaczego Foki z Minentala równiez ma pracowac tutaj?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WiesoFoki_14_01"); //Nie jest przypadkiem, ze oba systemy teleportacyjne sa tak podobne.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WiesoFoki_14_02"); //Podejrzewam, ze technika ta trafila stamtad do Khorinis, a stamtad do Minentala, byc moze uciekinierzy wzieli nawet Foki z nimi.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WiesoFoki_14_03"); //Nie ma zatem powodu, dla którego nie powinien on byc tu stosowany.
};

INSTANCE Info_Mod_Saturas_AW_PMSchulden (C_INFO)
{
	npc         	= Mod_9000_KDW_Saturas_AW;
	nr          	= 1;
	condition   	= Info_Mod_Saturas_AW_PMSchulden_Condition;
	information 	= Info_Mod_Saturas_AW_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Saturas_AW_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Saturas_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Saturas_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Saturas_AW_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_00"); //Czy przyszedles/as zaplacic grzywne?

	if (B_GetTotalPetzCounter(self) > Saturas_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_01"); //Zastanawialem sie, czy nawet nie osmieliscie sie tu przyjechac!
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_02"); //Najwyrazniej nie sa to ostatnie oskarzenia!

		if (Saturas_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_03"); //Ostrzegam cie! Grzywna, która musisz zaplacic jest teraz wyzsza!
			AI_Output (hero, self, "Info_Mod_Saturas_AW_PMAdd_15_00"); //Ile?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Saturas_LastPetzCounter);
		
			if (diff > 0)
			{
				Saturas_Schulden = Saturas_Schulden + (diff * 50);
			};
		
			if (Saturas_Schulden > 1000)	{	Saturas_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Saturas_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_04"); //Zapusciles mnie tak zle!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Saturas_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_05"); //Pojawily sie nowe rzeczy.
		
		if (Saturas_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_06"); //Nagle nie ma juz nikogo, kto oskarzalby cie o morderstwo.
		};
		
		if (Saturas_LastPetzCrime == CRIME_THEFT)
		|| ( (Saturas_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_07"); //Nikt nie pamieta, ze widzisz sie przy kradziezy.
		};
		
		if (Saturas_LastPetzCrime == CRIME_ATTACK)
		|| ( (Saturas_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_08"); //Nie ma juz zadnych swiadków tego, ze kiedykolwiek walczyles.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_09"); //Widocznie wszystkie zarzuty przeciwko Tobie zniknely.
		};
		
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_10"); //Nie wiem, co sie stalo, ale ostrzegam: nie graj ze mna.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_11"); //Zrezygnowalem z waszego zadluzenia.
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_12"); //Upewnij sie, ze nie popadniesz ponownie w klopoty.
	
			Saturas_Schulden			= 0;
			Saturas_LastPetzCounter 	= 0;
			Saturas_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_13"); //Jedno jest pewne: nadal trzeba zaplacic kare w calosci.
			B_Say_Gold (self, hero, Saturas_Schulden);
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_14"); //Co to jest?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Saturas_AW_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Saturas_AW_PETZMASTER);
		Info_AddChoice		(Info_Mod_Saturas_AW_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Saturas_AW_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Saturas_AW_PMSchulden,"Ile to znów bylo?",Info_Mod_Saturas_AW_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Saturas_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Saturas_AW_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Saturas_AW_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Saturas_AW_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Saturas_AW_PMSchulden_HowMuchAgain_15_00"); //Ile to znów bylo?
	B_Say_Gold (self, hero, Saturas_Schulden);

	Info_ClearChoices  	(Info_Mod_Saturas_AW_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PETZMASTER);
	Info_AddChoice		(Info_Mod_Saturas_AW_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Saturas_AW_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Saturas_AW_PMSchulden,"Ile to znów bylo?",Info_Mod_Saturas_AW_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Saturas_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Saturas_AW_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Saturas_AW_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Saturas_AW_PETZMASTER   (C_INFO)
{
	npc         	= Mod_9000_KDW_Saturas_AW;
	nr          	= 1;
	condition   	= Info_Mod_Saturas_AW_PETZMASTER_Condition;
	information 	= Info_Mod_Saturas_AW_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Saturas_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Saturas_AW_PETZMASTER_Info()
{
	Saturas_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_01"); //Ciesze sie, ze przyszedles do mnie, zanim sytuacja sie pogorszyla.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_02"); //Morderstwo jest powaznym wykroczeniem!

		Saturas_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Saturas_Schulden = Saturas_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_03"); //Nie wspominajac o innych rzeczach, które zrobiles.
		};

		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_06"); //Nie interesuje mnie to, ze moge panstwa umiescic na szubienicy. Jestesmy na wojnie i potrzebujemy kazdego czlowieka, którego mozemy dostac.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_07"); //Ale nie bedzie latwo sprawic, by ludzie znów byli laskawi.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_08"); //Mozesz okazac swoja pokute placac grzywne - oczywiscie kara musi byc odpowiednia.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_09"); //Dobrze! Jestes oskarzony o kradziez! Sa swiadkowie!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_10"); //Nie chce nawet mówic o innych rzeczach, które slyszalem.
		};

		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_11"); //Nie bede tolerowal takiego zachowania w naszym kraju!
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_12"); //Bedziesz musial zaplacic grzywne za swoje przestepstwo!
		
		Saturas_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_13"); //Jesli walczysz z riffem w porcie, to jest jedna rzecz....
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_14"); //Ale jesli zaatakujesz naszych ludzi, bede musial Cie pociagnac do odpowiedzialnosci.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_15"); //I nie sadze, aby tak bylo w przypadku owiec.
		};

		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_16"); //Jesli pozwole wam sie z tym uporac, wszyscy beda robic to, co chca.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_17"); //Placi sie wiec odpowiednia grzywne - a cala sprawa zostanie zapomniana.
		
		Saturas_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_18"); //Slyszalem, ze balaganiles sie z naszymi owcami.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_19"); //Zdajesz sobie sprawe, ze nie moge tego przepuscic.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_20"); //Bedziesz musial wyplacic odszkodowanie!
		
		Saturas_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Saturas_AW_PETZMASTER_15_21"); //Ile?
	
	if (Saturas_Schulden > 1000)	{	Saturas_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Saturas_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PETZMASTER);
	Info_AddChoice		(Info_Mod_Saturas_AW_PETZMASTER,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Saturas_AW_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Saturas_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Saturas_AW_PETZMASTER,"Chce zaplacic grzywne.",Info_Mod_Saturas_AW_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Saturas_AW_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Saturas_AW_PETZMASTER_PayNow_15_00"); //Chce zaplacic grzywne!
	B_GiveInvItems (hero, self, itmi_gold, Saturas_Schulden);
	AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_PayNow_14_01"); //Dobrze! Doloze wszelkich staran, aby kazdy z nas sie o tym dowiedzial - wiec Twoja reputacja zostanie w rozsadny sposób przywrócona.

	B_GrantAbsolution (LOC_WMCAMP);
	
	Saturas_Schulden			= 0;
	Saturas_LastPetzCounter 	= 0;
	Saturas_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Saturas_AW_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Saturas_AW_PETZMASTER_PayLater_15_00"); //Nie mam wystarczajaco duzo zlota!
	AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_PayLater_14_01"); //Nastepnie zobacz, ze zloto dostaniesz jak najszybciej.
	AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_PayLater_14_02"); //I ostrzegam cie, ze jesli cokolwiek zawdzieczasz sobie, to bedzie ci gorzej.
	
	Saturas_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Saturas_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Saturas_AW_Pickpocket (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Pickpocket_Condition;
	information	= Info_Mod_Saturas_AW_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Saturas_AW_Pickpocket_Condition()
{
	C_Beklauen	(176, ItMi_Gold, 91);
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

	Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_BACK, Info_Mod_Saturas_AW_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Saturas_AW_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

		Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Saturas_AW_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Saturas_AW_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Saturas_AW_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Saturas_AW_EXIT (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_EXIT_Condition;
	information	= Info_Mod_Saturas_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Saturas_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Saturas_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
