INSTANCE Info_Mod_Jack_Irdorath (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Irdorath_Condition;
	information	= Info_Mod_Jack_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze, ze kiedys byles marynarzem, dumnym kapitanem.....";
};

FUNC INT Info_Mod_Jack_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath_15_00"); //Slysze, ze kiedys byles marynarzem, dumnym kapitanem.....
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath_14_01"); //Czy tak jest? Jak dowiedziales sie o tym?
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath_14_02"); //Tak, to prawda, choc trwalo wiele lat. Bylem wówczas kapitanem Kolosów.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath_14_03"); //Tak, przezylem wiele przygód z moja zaloga.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath_14_04"); //Czy to piraci, burze, szkorbut czy potwory morskie, to czy my wszystko przeciwstawilismy?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath_15_05"); //Dobrze, mozemy sie tym bardziej szczególowo zajac w innym czasie.
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath_15_06"); //W kazdym razie wydaje mi sie, ze lubi pan myslec wstecz w czasie.
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath_15_07"); //Co powiedzialbys, gdybys mial ponownie mozliwosc dowodzenia duzym statkiem?
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath_14_08"); //Uwazam to za piekny sen.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath_14_09"); //Kto bowiem chcialby zawierzyc statkowi stary niedzwiedz morski, taki jak ja raz jeszcze?
};

INSTANCE Info_Mod_Jack_Irdorath2 (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Irdorath2_Condition;
	information	= Info_Mod_Jack_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Moglem zaoferowac panu stanowisko kapitana na statku Paladina.";
};

FUNC INT Info_Mod_Jack_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_00"); //Moglem zaoferowac panu stanowisko kapitana na statku Paladina.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_01"); //Ach, co ty robisz? Dlaczego próbujesz oszukac starego zeglarza....?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_02"); //Nie, jestem zupelnie powazny.
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_03"); //Byc moze slyszales o niepokojacych wydarzeniach w miescie i innych miejscach na Khorinis?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_04"); //Jestem na misji magów, aby wygnac autora.
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_05"); //W tym celu musze przeniesc sie wraz ze statkiem, zaloga i oczywiscie kapitanem na wyspe.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_06"); //Co mówisz, ze jestes naprawde powazny....
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_07"); //(bardziej kontemplacyjne) Hmm, tak, prawda, slyszalem plotki o czlowieku i o tym, co sie stalo.... Czy to jest to kim jestes?
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_08"); //I widzialem takze widzialem, jak rozmawiales z poslannikiem magika wody, Diego.... Wiecej
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_09"); //(przerwanie i powrót do bohatera) Uh, tak, wiec mówiles o wyspie....?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_10"); //Tak, kilka dni podrózy droga morska. Musimy umiescic tam istote, która byla zaangazowana w machinacje.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_11"); //Nie jest to wiec niegrozne.....
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_12"); //Ale to wazne. Czy bedzie pan moim kapitanem?
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_13"); //Oczywiscie oczywiscie tak..... Hmm, ale musza byc spelnione pewne warunki.
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_14"); //Tak, co myslisz?
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_15"); //Jesli podróz jest opózniona, nie powinno byc problemów, nie byloby zle, gdyby ktos, kto wie, ze statek jest na pokladzie.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_16"); //Oczywiscie, najlepszy bylby konstruktor lodzi.... lub cokolwiek innego mozna znalezc u ludzi, którzy rozumieja drewno i zelazo.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_17"); //A potem, kiedy mysle o jednej z moich ostatnich podrózy, zyczylbym sobie alchemika znajacego rosliny i eliksiry.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_18"); //Kiedy szkorbut zepsuje sie, taka wartosc zlota.....
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_19"); //Tak, to wszystko, co moge sobie wyobrazic wlasnie teraz.
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_20"); //No cóz, pójde i spojrze....
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_21"); //Zobacze dumny statek.

	Mod_Kapitan = 1;
	Mod_JackDabei = 1;

	Mod_CrewCount += 1;

	Log_CreateTopic	(TOPIC_MOD_HQ_JACK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_HQ_JACK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_HQ_JACK, "Jack podpalil sie, by zostac moim kapitanem. Zanim jednak zacznie, ma jeszcze dwa warunki. Znalazlem kogos, kto jest doswiadczony technicznie - budowniczy lodzi bylby najlepszy, ale co jeszcze robi. I wtedy chce na pokladzie alchemika, który dobrze rozumie botanike.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Jack_Irdorath3 (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Irdorath3_Condition;
	information	= Info_Mod_Jack_Irdorath3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem rzemieslnika.";
};

FUNC INT Info_Mod_Jack_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_Irdorath2))
	&& (Mod_JackHW == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath3_15_00"); //Znalazlem rzemieslnika.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath3_14_01"); //Bardzo dobry, kim jest?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath3_15_02"); //Kowal Bennet.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath3_14_03"); //Kowal....? Hmm, tak jak bym naprawde wolal kogos, kto równiez ma pomysl na drewno....
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath3_15_04"); //....
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath3_14_05"); //Hmm..... (krótka cisza) Ale nie chce, aby nasza podróz zakonczyla sie niepowodzeniem z tego powodu.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath3_14_06"); //Okay, kowal.

	Mod_JackHW = 2;

	B_LogEntry	(TOPIC_MOD_HQ_JACK, "Okay, Jack po prostu pozwolil kowalowi uciec z niej.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Jack_Irdorath4 (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Irdorath4_Condition;
	information	= Info_Mod_Jack_Irdorath4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem kogos, kto doskonale rozumie ziola i eliksiry.";
};

FUNC INT Info_Mod_Jack_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_Irdorath2))
	&& (Mod_JackAL == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath4_15_00"); //Znalazlem kogos, kto doskonale rozumie ziola i eliksiry.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath4_14_01"); //Tak, kim to jest? Alchemistka Constantino?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath4_15_02"); //Uh, nie...... To jest Sagitta, ziol.... Uh, alchemik ziolowy.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath4_14_03"); //Co, ziolo czarownica, która ma sie zwisac wokól wielkiej farmy gdzies w lesie?
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath4_14_04"); //Czy jestes pewien, ze nie popelniasz bledu?
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath4_14_05"); //Moze przyniesie nieszczescie, czy jest to chec oczarowania niewinnych zeglarzy do zmiany?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath4_15_06"); //Ahem, niewinni zeglarze....
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath4_15_07"); //(To jeszcze raz) Nie! Naprawde wierze, ze mamy najlepszego i najbardziej niezawodnego eksperta na pokladzie, jesli chodzi o rosliny i ziola, jak pan prosil.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath4_14_08"); //Cóz, zobaczymy.... Bede trzymal talizman przez caly czas podrózy.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath4_14_09"); //Nie dlatego, ze budze sie pewnego ranka jako bas glebinowy....

	Mod_JackAL = 2;

	B_LogEntry	(TOPIC_MOD_HQ_JACK, "Z odrobina sily udalo mi sie 'przekonac' Jacka z Sagitty.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Jack_Irdorath5 (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Irdorath5_Condition;
	information	= Info_Mod_Jack_Irdorath5_Info;
	permanent	= 1;
	important	= 0;
	description	= "Cóz, teraz poczyniono niezbedne przygotowania.";
};

FUNC INT Info_Mod_Jack_Irdorath5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_Irdorath2))
	&& (Mod_JackHW == 2)
	&& (Mod_JackDabei == 1)
	&& (Mod_JackAL == 2)
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Irdorath5_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath5_15_00"); //Cóz, teraz poczyniono niezbedne przygotowania.

	if (Mod_CrewCount >= 5)
	&& (Mod_CrewCount <= 15)
	&& ((Mod_MyxirDabei > 0)
	|| (Mod_NamibDabei > 0)
	|| (Mod_MiltenDabei > 0)
	|| (Mod_VatrasDabei > 0))
	{
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_01"); //Tak, to prawda. Po prostu daj mi znac. Kiedy zaczac.

		Mod_JackHW = 3;
		Mod_JackAL = 3;

		B_SetTopicStatus	(TOPIC_MOD_HQ_JACK, LOG_SUCCESS);
	}
	else if ((Mod_MyxirDabei == 0)
	&& (Mod_NamibDabei == 0)
	&& (Mod_MiltenDabei == 0)
	&& (Mod_VatrasDabei == 0))
	{
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_02"); //Nie do konca.... Poniewaz jestescie na misji magów, chcialbym, aby przynajmniej jeden z nich byl na pokladzie.
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_03"); //Z pewnoscia nie byloby zle, gdybysmy mieli z wami tego rodzaju doswiadczenie.
	}
	else if (Mod_CrewCount < 5)
	{
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_04"); //No cóz, jestes dla mnie zabawny.... Kiedy mówiles o ekipie, myslalem, ze juz ja zatrudniles.
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_05"); //Bez innych ludzi trudno nam wyplynac na morze.
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_06"); //Oprócz kowala i ziól, chce miec na pokladzie co najmniej trzech innych ludzi.
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_07"); //W przeciwnym razie nie mozemy prowadzic statku.
	}
	else if (Mod_CedricDabei == 1)
	{
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_08"); //Cedryjski, uh, klopoty. Moze powinienes sie z nim najpierw skontaktowac.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_09"); //Tak, powiedz mi, czy chcesz wziac cala firme na Esmeralde?
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_10"); //Statek moze byc duzy, ale nie jest nieskonczony.
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_11"); //Musisz odeslac troche do domu.
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_12"); //Na statku nie ma wystarczajaco duzo miejsca dla ponad 15 osób.
	};
};

INSTANCE Info_Mod_Jack_Irdorath6 (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Irdorath6_Condition;
	information	= Info_Mod_Jack_Irdorath6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Idzmy na wyspe.";
};

FUNC INT Info_Mod_Jack_Irdorath6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_Irdorath2))
	&& (Mod_JackHW == 3)
	&& (Mod_JackAL == 3)
	&& (Mod_JackDabei == 1)
	&& (Mod_CedricDabei == 0)
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Irdorath6_Info()
{
	var int Mod_JackWomanizer;

	AI_Output(hero, self, "Info_Mod_Jack_Irdorath6_15_00"); //Idzmy na wyspe.

	if (Mod_SagittaDabei == 1)
	{
		Mod_JackWomanizer += 1;
	};
	if (Mod_VelayaDabei == 1)
	{
		Mod_JackWomanizer += 1;
	};
	if (Mod_UrielaDabei == 1)
	{
		Mod_JackWomanizer += 1;
	};
	if (Mod_CassiaDabei == 1)
	{
		Mod_JackWomanizer += 1;
	};

	if (Mod_JackWomanizer >= 3)
	{
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath6_14_01"); //Czlowiek, jestem marynarzem od lat, ale tak wiele kobiet na pokladzie na wyprawie bojowej.... Nikt mi nie uwierzy, kiedy ci to powie.

		if (Mod_JackWomanizer == 3)
		{
			B_GivePlayerXP	(1000);
		}
		else
		{
			B_GivePlayerXP	(1500);
		};
	};

	AI_Output(self, hero, "Info_Mod_Jack_Irdorath6_14_02"); //No cóz, wiec.... Wciagnac kotwice, zalozyc zagiel. Zebym mógl na nowo o tym przypomniec....

	Mod_JackHW = 4;

	B_GivePlayerXP	(1000);

	B_SetTopicStatus	(TOPIC_MOD_HQ_CREW, LOG_SUCCESS);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jack_Masut (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Masut_Condition;
	information	= Info_Mod_Jack_Masut_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj. Jedno jest tu zbyt wiele.";
};

FUNC INT Info_Mod_Jack_Masut_Condition()
{
	if (Mod_ASS_Krieger == 1)
	&& (Mod_ASS_Jack == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Masut_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Masut_15_00"); //Witaj. Jedno jest tu zbyt wiele.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_14_01"); //Wróc tam z powrotem. Nie zadzwonilem do Ciebie.
	AI_Output(hero, self, "Info_Mod_Jack_Masut_15_02"); //Rozumiesz nieporozumienie. Jestes zbyt wiele.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_14_03"); //Nie moze tak sie stac. Mieszkalem tutaj na zawsze.
	AI_Output(hero, self, "Info_Mod_Jack_Masut_15_04"); //Ale ta wieza jest potrzebna. Bez ciebie.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_14_05"); //Nad martwym cialem.

	Info_ClearChoices	(Info_Mod_Jack_Masut);

	Info_AddChoice	(Info_Mod_Jack_Masut, "Pozostan spokojny. Jestes naprawde milym, starym facetem. Nie chcialbys cie zabic.", Info_Mod_Jack_Masut_B);
	Info_AddChoice	(Info_Mod_Jack_Masut, "Moze pan to miec. Tak czy owak powinienem cie zabic.", Info_Mod_Jack_Masut_A);
};

FUNC VOID Info_Mod_Jack_Masut_B()
{
	AI_Output(hero, self, "Info_Mod_Jack_Masut_B_15_00"); //Pozostan spokojny. Jestes naprawde milym, starym facetem. Nie chcialbys cie zabic.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_B_14_01"); //Placze. Które wolisz?
	AI_Output(hero, self, "Info_Mod_Jack_Masut_B_15_02"); //Wyczysc pole i zniknij.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_B_14_03"); //Brzmi to dla mnie rozsadnie. Juz nie jestem najmlodszy.....
	AI_Output(hero, self, "Info_Mod_Jack_Masut_B_15_04"); //Wiec znikasz i wchodzisz pod ziemie? Ale prawidlowo. Mamy harcerzy w Khorinisie.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_B_14_05"); //Obiecuje. Jestem poza nim.
	AI_Output(hero, self, "Info_Mod_Jack_Masut_B_15_06"); //Potem daj mi swój miecz. Potrzebuje dowodu Pana smierci.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_B_14_07"); //Tutaj.

	B_GiveInvItems	(self, hero, ItMw_Degen_Jack, 1);

	AI_Output(hero, self, "Info_Mod_Jack_Masut_B_15_08"); //Tak musi byc. I zostaw swoje rzeczy tutaj. Po prostu wez z soba najwazniejsze rzeczy.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_B_14_09"); //Widze.

	B_GivePlayerXP	(1000);

	Mod_ASS_Jack = 1;

	B_LogEntry	(TOPIC_MOD_ASS_JACK, "Jack idzie pod ziemie. Jako dowód smierci dal mi swój miecz. Przejdzmy do Masut.");

	Info_ClearChoices	(Info_Mod_Jack_Masut);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ASSIS");
};

FUNC VOID Info_Mod_Jack_Masut_A()
{
	AI_Output(hero, self, "Info_Mod_Jack_Masut_A_15_00"); //Moze pan to miec. Tak czy owak powinienem cie zabic.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_A_14_01"); //Cóz, przyjdz dalej, duze usta.

	Mod_ASS_Jack = 2;

	Info_ClearChoices	(Info_Mod_Jack_Masut);

	self.flags = 0;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Jack_Fanatiker (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Fanatiker_Condition;
	information	= Info_Mod_Jack_Fanatiker_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Jack_Fanatiker_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Auftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung_Fanatiker))
	{
		return 1;
	};
};

FUnc VOID Info_Mod_Jack_Fanatiker_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Fanatiker_15_00"); //Co Pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Jack_Fanatiker_14_01"); //Ucieklem przed nami. Niedawno w moja latarnie wkroczyli niektórzy dziwni faceci.
	AI_Output(self, hero, "Info_Mod_Jack_Fanatiker_14_02"); //Powiedz mi o sypialni.
	AI_Output(hero, self, "Info_Mod_Jack_Fanatiker_15_03"); //Co jeszcze wiesz?
	AI_Output(self, hero, "Info_Mod_Jack_Fanatiker_14_04"); //Czesc z nich zostala nastepnie wyslana gdzies w lesie poza miasto pod Lobartem.
	AI_Output(self, hero, "Info_Mod_Jack_Fanatiker_14_05"); //Ale wtedy wolalbym sie z tego wycofac.
	AI_Output(self, hero, "Info_Mod_Jack_Fanatiker_14_06"); //Lepiej nie isc do latarni morskiej.

	B_LogEntry	(TOPIC_MOD_MILIZ_SEKTENSPINNER, "Jack powiedzial, ze naczepy sypialne przenosily sie dohorynu. Niektóre z nich znajduja sie w jego latarni morskiej, mniejsza grupa zostala zauwazona w lesie przed Khorinis kolo Lobart. Wolalbym na razie nie dotykac latarni morskiej.");
};

INSTANCE Info_Mod_Jack_Pickpocket (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Pickpocket_Condition;
	information	= Info_Mod_Jack_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Jack_Pickpocket_Condition()
{
	C_Beklauen	(112, ItMi_Sextant, 1);
};

FUNC VOID Info_Mod_Jack_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jack_Pickpocket);

	Info_AddChoice	(Info_Mod_Jack_Pickpocket, DIALOG_BACK, Info_Mod_Jack_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jack_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jack_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jack_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jack_Pickpocket);
};

FUNC VOID Info_Mod_Jack_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jack_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jack_Pickpocket);

		Info_AddChoice	(Info_Mod_Jack_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jack_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jack_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jack_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jack_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jack_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jack_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jack_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jack_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jack_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jack_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jack_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jack_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jack_EXIT (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_EXIT_Condition;
	information	= Info_Mod_Jack_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jack_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jack_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
