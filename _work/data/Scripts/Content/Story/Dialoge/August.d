INSTANCE Info_Mod_August_Hi (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Hi_Condition;
	information	= Info_Mod_August_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_August_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_August_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_August_Hi_04_00"); //Zatrzymaj sie! Nie znam twarzy.
	AI_Output(self, hero, "Info_Mod_August_Hi_04_01"); //Das bedeutet, ich hab dir die Regeln der Stadt noch nicht vorgelesen - oder du hast dich von 'nem Schattenläufer "tylny" lassen. (lacht merkwürdig)
	AI_Output(self, hero, "Info_Mod_August_Hi_04_02"); //Nadal nie moge zapamietac glupiego tekstu, wiec musze spogladac na papier w srodku, jesli nie przeszkadza mi to.

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_August_Hi_04_03"); //Cztery przykazania dla obcych.
	AI_Output(self, hero, "Info_Mod_August_Hi_04_04"); //Po pierwsze, zabronione jest wykorzystywanie darczynców radosci w obrebie murów miejskich.
	AI_Output(self, hero, "Info_Mod_August_Hi_04_05"); //Haha, przynajmniej dotyczy tylko obcych.

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_August_Hi_04_06"); //Po drugie, trzem udomowionym szczurom straznika miejskiego nalezy sie hold.
	AI_Output(self, hero, "Info_Mod_August_Hi_04_07"); //Tak przy okazji, oni zmarli.

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_August_Hi_04_08"); //Po trzecie, zakazane jest uzycie sily.

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_August_Hi_04_09"); //Po czwarte: Hold Beliara i praktykowanie okrucienstw w jego imieniu moze zostac ukarane przez ogien smiercia.

	if (Mod_Gottstatus == 1)
	|| (Mod_Gottstatus == 2)
	|| (Mod_Gottstatus == 3)
	|| (Mod_Gottstatus == 4)
	{
		AI_Output(self, hero, "Info_Mod_August_Hi_04_10"); //Ach, tak, to moze byc dla ciebie szczególnie interesujace.
	};

	AI_Output(self, hero, "Info_Mod_August_Hi_04_11"); //To wszystko. Jakies pytania?

	AI_PlayAni	(self, "T_HUNGER");

	AI_Output(self, hero, "Info_Mod_August_Hi_04_12"); //(mumbuly) Móglbym uzyc innego ugryzienia....

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_August_Essenholen (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Essenholen_Condition;
	information	= Info_Mod_August_Essenholen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge Ci cos zjesc?";
};

FUNC INT Info_Mod_August_Essenholen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Essenholen_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Essenholen_15_00"); //Czy moge Ci cos zjesc?
	AI_Output(self, hero, "Info_Mod_August_Essenholen_04_01"); //Och, tak! Bylabym naprawde glodna specjalnosci gospody, solonej jagnieciny.
	AI_Output(self, hero, "Info_Mod_August_Essenholen_04_02"); //Dwa racje, a ja oczywiscie oddam ci pieniadze.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_FRISCHFLEISCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_FRISCHFLEISCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_FRISCHFLEISCH, "Wierchowiec Sierpien potrzebuje dwóch porcji solonego jagnieciny z karczmy Khoratas inn.");
};

INSTANCE Info_Mod_August_EssenGeholt (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_EssenGeholt_Condition;
	information	= Info_Mod_August_EssenGeholt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto Twoje jedzenie.";
};

FUNC INT Info_Mod_August_EssenGeholt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Essenholen))
	&& (Npc_HasItems(hero, ItFo_LammPoekelfleisch) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_EssenGeholt_Info()
{
	AI_Output(hero, self, "Info_Mod_August_EssenGeholt_15_00"); //Oto Twoje jedzenie.

	B_GiveInvItems	(hero, self, ItFo_LammPoekelfleisch, 2);

	AI_Output(self, hero, "Info_Mod_August_EssenGeholt_04_01"); //Dziekuje! Wez to pod uwage!

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_FRISCHFLEISCH, "Udalo mi sie to zadanie zakonczyc ku zadowoleniu sierpnia.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_FRISCHFLEISCH, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;

	Info_ClearChoices	(Info_Mod_August_EssenGeholt);

	Info_AddChoice	(Info_Mod_August_EssenGeholt, "Do zobaczenia wkrótce.", Info_Mod_August_EssenGeholt_B);
	Info_AddChoice	(Info_Mod_August_EssenGeholt, "Troche mniej.... wedkarstwo", Info_Mod_August_EssenGeholt_A);
};

FUNC VOID Info_Mod_August_EssenGeholt_B()
{
	AI_Output(hero, self, "Info_Mod_August_EssenGeholt_B_15_00"); //Do zobaczenia wkrótce.

	Info_ClearChoices	(Info_Mod_August_EssenGeholt);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_August_EssenGeholt_A()
{
	AI_Output(hero, self, "Info_Mod_August_EssenGeholt_A_15_00"); //Troche mniej....

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_August_EssenGeholt_A_04_01"); //Masz racje, zaslugujesz na wiecej.

		B_GiveInvItems	(self, hero, ItMi_Gold, 50);
	
		B_GivePlayerXP	(10);

		B_RaiseHandelsgeschick (2);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_August_EssenGeholt_A_04_02"); //Jestes oszukiwany!
	};

	Info_ClearChoices	(Info_Mod_August_EssenGeholt);
};

INSTANCE Info_Mod_August_Plagenquest (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Plagenquest_Condition;
	information	= Info_Mod_August_Plagenquest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_August_Plagenquest_Condition()
{
	if (Mod_WM_UnheilFertig == 2)
	&& (Mod_REL_Stadthalter > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Plagenquest_Info()
{
	if (Mod_REL_Stadthalter == 1)
	{
		AI_Output(self, hero, "Info_Mod_August_Plagenquest_04_00"); //Mam nadzieje, ze damn to Teodorus wkrótce cos dowie sie.

		Log_CreateTopic	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Khorata zdaje sie miec problem z owadami. Mam nadzieje, ze Theodorus bedzie mógl powiedziec wiecej na ten temat.");
	}
	else if (Mod_REL_Stadthalter == 2)
	{
		AI_Output(self, hero, "Info_Mod_August_Plagenquest_04_01"); //Damn to, mam nadzieje, ze Wendel wkrótce sie dowie.

		Log_CreateTopic	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Khorata zdaje sie miec problem z owadami. Miejmy nadzieje, ze Wendel bedzie mógl powiedziec wiecej na ten temat.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_August_Plagenquest_04_02"); //Damn, mam nadzieje, ze lucas wkrótce cos sie dowie.

		Log_CreateTopic	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Khorata zdaje sie miec problem z owadami. Mam nadzieje, ze Lukasz bedzie mógl powiedziec wiecej na ten temat.");
	};

	AI_Output(self, hero, "Info_Mod_August_Plagenquest_04_03"); //Wszystkie pieprzace sie istoty...... Przypomina mi o najgorszej podrózy, jaka kiedykolwiek odbylem.
};

INSTANCE Info_Mod_August_Zurechtfinden (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Zurechtfinden_Condition;
	information	= Info_Mod_August_Zurechtfinden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak moge sie tutaj znalezc?";
};

FUNC INT Info_Mod_August_Zurechtfinden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Zurechtfinden_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Zurechtfinden_15_00"); //Jak moge sie tutaj znalezc?
	AI_Output(self, hero, "Info_Mod_August_Zurechtfinden_04_01"); //Nie jest to takie trudne. Po prostu jedz prosto przed siebie glówna droga i dotrzesz na rynek.
	AI_Output(self, hero, "Info_Mod_August_Zurechtfinden_04_02"); //Po lewej stronie znajduje sie droga prowadzaca prosto do siedziby sadu.
	AI_Output(self, hero, "Info_Mod_August_Zurechtfinden_04_03"); //A potem skrecamy w lewo i trafiamy do gospody. To na razie powinno wystarczyc.
	AI_Output(self, hero, "Info_Mod_August_Zurechtfinden_04_04"); //Jesli chcesz byc prowadzony, zapytaj Huberta, czesto czai sie wokól bramy.
};

INSTANCE Info_Mod_August_KhorataOrganisation (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_KhorataOrganisation_Condition;
	information	= Info_Mod_August_KhorataOrganisation_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak zorganizowana jest Khorata?";
};

FUNC INT Info_Mod_August_KhorataOrganisation_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Hi))
	&& (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_KhorataOrganisation_Info()
{
	AI_Output(hero, self, "Info_Mod_August_KhorataOrganisation_15_00"); //Jak zorganizowana jest Khorata?
	AI_Output(self, hero, "Info_Mod_August_KhorataOrganisation_04_01"); //Nie potrafie dokladnie ci to wytlumaczyc.
	AI_Output(self, hero, "Info_Mod_August_KhorataOrganisation_04_02"); //Nasz gubernator Anselm dba o wszystkie przepisy i nowe prawa, sedzia i jego dwaj synowie prowadza sad, a my pilnujemy, aby wszystko pozostalo spokojne.
	AI_Output(self, hero, "Info_Mod_August_KhorataOrganisation_04_03"); //Khorata dobrze zarabia na handlu przysmakami i tym, co kupuja kupcy!
	AI_Output(self, hero, "Info_Mod_August_KhorataOrganisation_04_04"); //Przeciagnij duzo rzeczy do miasta, widze to tutaj.
};

INSTANCE Info_Mod_August_Buerger (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Buerger_Condition;
	information	= Info_Mod_August_Buerger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wspomniales kiedys o trzech szczurach Anselma...";
};

FUNC INT Info_Mod_August_Buerger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Buerger2))
	&& (Kapitel < 3)
	&& (Mod_REL_Buerger == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Buerger_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Buerger_15_00"); //Wspomniales kiedys o trzech szczurach Anselma...
	AI_Output(self, hero, "Info_Mod_August_Buerger_04_01"); //To prawda. A co z nimi?
	AI_Output(hero, self, "Info_Mod_August_Buerger_15_02"); //Czy znasz ich nazwiska?
	AI_Output(self, hero, "Info_Mod_August_Buerger_04_03"); //Oczywiscie. Kiedy zyli, kazdego dnia musielismy im oddawac hold przez straznika.
	AI_Output(self, hero, "Info_Mod_August_Buerger_04_04"); //Oleg, Pinky i Fievel. Haha, naprawde chore imiona szczurów, huh?
	AI_Output(hero, self, "Info_Mod_August_Buerger_15_05"); //To prawda. Dziekuje za informacje.
	AI_Output(self, hero, "Info_Mod_August_Buerger_04_06"); //Nic do podziekowania.
};

INSTANCE Info_Mod_August_Buerger2 (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Buerger2_Condition;
	information	= Info_Mod_August_Buerger2_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_August_Buerger2_Condition()
{
	if (Mod_REL_Buerger == 1)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_August_Buerger2_Info()
{
	AI_Output(self, hero, "Info_Mod_August_Buerger2_04_00"); //Cóz, dostales obywatelstwo? Gratuluje, jestes dobrym czlowiekiem.
};

INSTANCE Info_Mod_August_Unruhen (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Unruhen_Condition;
	information	= Info_Mod_August_Unruhen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_August_Unruhen_Condition()
{
	if (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Unruhen_Info()
{
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_00"); //Nie jest to dobry czas, boje sie.
	AI_Output(hero, self, "Info_Mod_August_Unruhen_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_02"); //Wszystko to gówno. Zaczelo sie od Buddlera w naszej kopalni, który domagal sie wiekszych plac i lepszych warunków pracy.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_03"); //Ale Anselm nie pozwolil nikomu z nim porozmawiac.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_04"); //W rezultacie górnicy odmówili kontynuowania pracy, a oni opanowali i zwiazali swojego przelozonego Frazera.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_05"); //Anselm wyslal firmy Tyrus i Dalton, aby przywrócily kopaczom do pracy.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_06"); //Wyobraz sobie! Tylko Tyrus i Dalton, dwie glowice.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_07"); //Oczywiscie spór sie nasilil, a potem zaczely grac pickaxy.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_08"); //Jeszcze nie odwazylismy sie zabrac dwóch cial przed kopalnie.
	AI_Output(hero, self, "Info_Mod_August_Unruhen_15_09"); //Brzmi to jak ogromny problem.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_10"); //Jesli tylko to bylo wszystko! Anselm odszedl i nie mamy juz gubernatora!
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_11"); //I bez fuksujacego przywódcy nikt nie chce sie martwic negocjacjami z buddystami.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_12"); //Czy nie bylbys w nastroju do pracy?
	AI_Output(hero, self, "Info_Mod_August_Unruhen_15_13"); //Przykro mi, ale to nie jest mój pomysl na przyszlosc.
	AI_Output(self, hero, "Info_Mod_August_Unruhen_04_14"); //Czy móglbys przynajmniej zajac sie nastepca Anselma?

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_August_Unruhen2 (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Unruhen2_Condition;
	information	= Info_Mod_August_Unruhen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wszystko w porzadku, jestem gonna ide szukac.";
};

FUNC INT Info_Mod_August_Unruhen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Unruhen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Unruhen2_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Unruhen2_15_00"); //Wszystko w porzadku, jestem gonna ide szukac.
	AI_Output(self, hero, "Info_Mod_August_Unruhen2_04_01"); //Moim zdaniem sa trzy odpowiednie kandydatury: Lukasz, Wendel i Theodorus.
	AI_Output(self, hero, "Info_Mod_August_Unruhen2_04_02"); //Porozmawiaj z nimi i spróbuj ich przekonac.
	AI_Output(self, hero, "Info_Mod_August_Unruhen2_04_03"); //Kiedy juz je wszystkie uslyszysz, zastanów sie i zglos sie do mnie.
	AI_Output(self, hero, "Info_Mod_August_Unruhen2_04_04"); //Ufamy Panstwu.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "W Khoracie to szalenstwo: mieszkancy Khoraty próbuja powstania, a mieszczanie stracili glowy i pograzaja sie w chaosie. Sierpien uwaza, ze Lukasz, Wendel i Theodorus sa odpowiedni jako nastepcy gubernatorów. Powinienem porozmawiac z kazdym z nich.");
};

INSTANCE Info_Mod_August_Unruhen3 (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Unruhen3_Condition;
	information	= Info_Mod_August_Unruhen3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Zrobilem sobie sprawe.";
};

FUNC INT Info_Mod_August_Unruhen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Unruhen2))
	&& (Mod_REL_Kandidat == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_August_Unruhen3_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Unruhen3_15_00"); //Zrobilem sobie sprawe.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_04_01"); //Wyrzuc go na zewnatrz.

	Info_ClearChoices	(Info_Mod_August_Unruhen3);

	Info_AddChoice	(Info_Mod_August_Unruhen3, "Potrzebuje troche wiecej czasu....", Info_Mod_August_Unruhen3_BACK);

	Info_AddChoice	(Info_Mod_August_Unruhen3, "Lukasz ma zostac nowym gubernatorem.", Info_Mod_August_Unruhen3_C);
	Info_AddChoice	(Info_Mod_August_Unruhen3, "Wendel ma zostac nowym gubernatorem.", Info_Mod_August_Unruhen3_B);
	Info_AddChoice	(Info_Mod_August_Unruhen3, "Teodór stanie sie nowym gubernatorem.", Info_Mod_August_Unruhen3_A);
};

FUNC VOID Info_Mod_August_Unruhen3_BACK()
{
	AI_Output(hero, self, "Info_Mod_August_Unruhen3_BACK_15_00"); //Potrzebuje troche wiecej czasu....

	Info_ClearChoices	(Info_Mod_August_Unruhen3);
};

FUNC VOID Info_Mod_August_Unruhen3_C()
{
	AI_Output(hero, self, "Info_Mod_August_Unruhen3_C_15_00"); //Lukasz ma zostac nowym gubernatorem.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_C_04_01"); //Tak, dobre lucasy to naprawia.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_C_04_02"); //Idz do niego i powiedz mu dobra wiadomosc, upewnie sie, ze cale miasto wie o tym.

	Mod_REL_Kandidat = 4;

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Moim zadaniem jest poinformowanie lucasa, ze jest on nowym gubernatorem.");

	Info_ClearChoices	(Info_Mod_August_Unruhen3);
};

FUNC VOID Info_Mod_August_Unruhen3_B()
{
	AI_Output(hero, self, "Info_Mod_August_Unruhen3_B_15_00"); //Wendel ma zostac nowym gubernatorem.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_B_04_01"); //Miejmy wiec nadzieje, ze Wendel ma dosc gryzie.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_B_04_02"); //Powiedz mu te wiadomosc, o niej poinformuje w miescie.

	Mod_REL_Kandidat = 3;

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Chce, aby Wendel dowiedzial sie ode mnie, ze jest nowym gubernatorem.");

	Info_ClearChoices	(Info_Mod_August_Unruhen3);
};

FUNC VOID Info_Mod_August_Unruhen3_A()
{
	AI_Output(hero, self, "Info_Mod_August_Unruhen3_A_15_00"); //Teodór stanie sie nowym gubernatorem.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_A_04_01"); //A... niezwykly wybór. Dobrze, wiesz, co mówisz.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_A_04_02"); //Przekaze ja pozostalej czesci spoleczenstwa.
	AI_Output(self, hero, "Info_Mod_August_Unruhen3_A_04_03"); //Powinienes wprowadzic teodora do miasta i pokazac mu swoje nowe mieszkanie.

	Mod_REL_Kandidat = 2;

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Bede prowadzil Theodorus' a do swojego nowego budynku biurowego obok.");

	Info_ClearChoices	(Info_Mod_August_Unruhen3);
};

INSTANCE Info_Mod_August_Freudenspender (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Freudenspender_Condition;
	information	= Info_Mod_August_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Ciesze sie, ze mam cie tutaj....";
};                       

FUNC INT Info_Mod_August_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_August_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Freudenspender_15_00"); //Ciesze sie, ze mam cie tutaj....
	AI_Output(self, hero, "Info_Mod_August_Freudenspender_04_01"); //... nie musisz jesc dokladnie w miescie. Przywiazac do niego.
};

INSTANCE Info_Mod_August_Penner (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Penner_Condition;
	information	= Info_Mod_August_Penner_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_August_Penner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Sweetwater2))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_August_Penner_Info()
{
	AI_Output(self, hero, "Info_Mod_August_Penner_04_00"); //Spójrz, spójrz! Nowa twarz.... Nie. Widzialem cie juz wczesniej.
	AI_Output(hero, self, "Info_Mod_August_Penner_15_01"); //To wystarczy.

	if (Npc_KnowsInfo(hero, Info_Mod_August_EssenGeholt))
	{
		AI_Output(hero, self, "Info_Mod_August_Penner_15_02"); //Przynioslam Ci sniadanie.
		AI_Output(self, hero, "Info_Mod_August_Penner_04_03"); //To prawda! Jagniecina dojrzewajaca. Na duzy apetyt. Czy ty - czy ty
		AI_Output(hero, self, "Info_Mod_August_Penner_15_04"); //Rozumiem. Jeszcze jedna porcja....
		AI_Output(self, hero, "Info_Mod_August_Penner_04_05"); //Dokladnie! I chleb pita z piekarza, jesli sie podoba, i ciemne piwo z browaru.
		AI_Output(self, hero, "Info_Mod_August_Penner_04_06"); //Jagniecina rzeznika jest prawie lepsza od jagnieciny Piotra. To wszystko trzy kluby.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_August_Penner_04_07"); //Czy moglabys mnie laski?
		AI_Output(hero, self, "Info_Mod_August_Penner_15_08"); //Oczywiscie, co sie dzieje?
		AI_Output(self, hero, "Info_Mod_August_Penner_04_09"); //Czy móglbys odebrac mi od Piotra lub rzeznika porcje solonej jagnieciny, plaskodan z piekarza i ciemne piwo z browaru?
	};

	AI_Output(hero, self, "Info_Mod_August_Penner_15_10"); //Alkohol w czasie pracy? Jesli powiem to gubernatorowi....
	AI_Output(self, hero, "Info_Mod_August_Penner_04_11"); //Nie mówisz mi. Bo wtedy dostalibyscie to, co mam dac....
	AI_Output(hero, self, "Info_Mod_August_Penner_15_12"); //Lubie to? Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_August_Penner_04_13"); //Najpierw zgryz.

	Log_CreateTopic	(TOPIC_MOD_JG_AUGUST, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_AUGUST, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_AUGUST, "Mam dostac jedzenie na sierpien. Solona jagniecina pochodzaca od Piotra lub rzeznika, plaskodenny z piekarza i ciemne piwo z browaru.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_August_Penner2 (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Penner2_Condition;
	information	= Info_Mod_August_Penner2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto Twoja uczta.";
};                       

FUNC INT Info_Mod_August_Penner2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Penner))
	&& (Npc_HasItems(hero, ItFo_LammPoekelfleisch) >= 3)
	&& (Npc_HasItems(hero, ItFo_Fladenbrot) >= 1)
	&& (Npc_HasItems(hero, ItFo_Dunkelbier) >= 1)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_August_Penner2_Info()
{
	AI_Output(hero, self, "Info_Mod_August_Penner2_15_00"); //Oto Twoja uczta.

	Npc_RemoveInvItems	(hero, ItFo_LammPoekelfleisch, 3);
	Npc_RemoveInvItems	(hero, ItFo_Fladenbrot, 1);
	Npc_RemoveInvItems	(hero, ItFo_Dunkelbier, 1);

	B_ShowGivenThings	("3 solone jagnieta, plaskie i ciemne piwo serwowane");

	AI_Output(self, hero, "Info_Mod_August_Penner2_04_01"); //Daj mi ja. W miedzyczasie jestem naprawde glodny.
	AI_Output(hero, self, "Info_Mod_August_Penner2_15_02"); //Co mi chciales dac?
	AI_Output(self, hero, "Info_Mod_August_Penner2_04_03"); //No cóz, pewnego dnia bylem na sluzbie na straznicy przy przepustce.
	AI_Output(self, hero, "Info_Mod_August_Penner2_04_04"); //Podbiegnawszy pod góre stoku, natykam sie na to. Gwarantuje, ze czesc jest wartosciowa.
	AI_Output(hero, self, "Info_Mod_August_Penner2_15_05"); //Pozwole sobie to zobaczyc.
	AI_Output(self, hero, "Info_Mod_August_Penner2_04_06"); //Tutaj.

	B_GiveInvItems	(self, hero, ItMi_Brokenrune01, 1);

	AI_Output(hero, self, "Info_Mod_August_Penner2_15_07"); //Uh-huh. Zlamana runa. Masz druga polowe?
	AI_Output(self, hero, "Info_Mod_August_Penner2_04_08"); //Nah. Poszukiwalem od dawna, ale nic nie znalazlem.
	AI_Output(hero, self, "Info_Mod_August_Penner2_15_09"); //Wszystkie sluszne, wszystkie sluszne. Moze nadal mozna ja stosowac.
	AI_Output(hero, self, "Info_Mod_August_Penner2_15_10"); //Duzo mnie pan usmiechnal. Nadal dostaje 50 zlota na kolacje.
	AI_Output(self, hero, "Info_Mod_August_Penner2_04_11"); //Oczywiscie tutaj. I na pewno znajdziecie inny kawalek.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_SetTopicStatus	(TOPIC_MOD_JG_AUGUST, LOG_SUCCESS);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_August_Pickpocket (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_Pickpocket_Condition;
	information	= Info_Mod_August_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_August_Pickpocket_Condition()
{
	C_Beklauen	(62, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_August_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_August_Pickpocket);

	Info_AddChoice	(Info_Mod_August_Pickpocket, DIALOG_BACK, Info_Mod_August_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_August_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_August_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_August_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_August_Pickpocket);
};

FUNC VOID Info_Mod_August_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_August_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_August_Pickpocket);

		Info_AddChoice	(Info_Mod_August_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_August_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_August_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_August_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_August_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_August_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_August_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_August_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_August_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_August_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_August_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_August_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_August_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_August_EXIT (C_INFO)
{
	npc		= Mod_7385_OUT_August_REL;
	nr		= 1;
	condition	= Info_Mod_August_EXIT_Condition;
	information	= Info_Mod_August_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_August_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_August_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
