INSTANCE Info_Mod_Norek_Hi (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Hi_Condition;
	information	= Info_Mod_Norek_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam kubek.";
};

FUNC INT Info_Mod_Norek_Hi_Condition()
{
	if (Npc_HasItems(hero, ItMi_Bloodcup_Richter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Norek_Hi_15_00"); //Mam kubek.
	AI_Output(self, hero, "Info_Mod_Norek_Hi_13_01"); //Daj ja Na' im.
};

INSTANCE Info_Mod_Norek_Blutkelch (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Blutkelch_Condition;
	information	= Info_Mod_Norek_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kiedy dostaje czesc tej dziwnej wiadomosci, chce spróbowac ja rozszyfrowac.";
};

FUNC INT Info_Mod_Norek_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kais_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch_15_00"); //Kiedy dostaje czesc tej dziwnej wiadomosci, chce spróbowac ja rozszyfrowac.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch_13_01"); //Nikt tego nigdy wczesniej nie robil. Prosze dac mi raport, jesli cos znajdziecie.

	B_GiveInvItems	(self, hero, ItWr_BlutkelchZettel3, 1);

	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch_15_02"); //Robie to. Skad tak naprawde czerpiecie te liscie?
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch_13_03"); //Amir przywiózl go do nas. Prawdopodobnie z miasta.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch_15_04"); //A jak ja dostala Amir?
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch_13_05"); //Tak naprawde nie mógl tego powiedziec. Przybyl ciezko ranny, przekazal mu liscie i wkrótce potem zmarl.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch_15_06"); //Hmm. Moze zatrucie alkoholem. Zawsze krazy wokól placu swiatyni przed tawerna. Mysle, ze to nie ma znaczenia.

	if (Npc_HasItems(hero, ItWr_BlutkelchZettel1) == 1)
	&& (Npc_HasItems(hero, ItWr_BlutkelchZettel2) == 1)
	&& (Npc_HasItems(hero, ItWr_BlutkelchZettel3) == 1)
	{
		Log_CreateTopic	(TOPIC_MOD_ASS_LASTBLUTKELCH, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ASS_LASTBLUTKELCH, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Otrzymal kawalek starozytnego pergaminu z Kais, Mahamad i Norek do rozszyfrowania wiadomosci. Amir zabral ich do obozu. Zobaczmy jak.....");
	};
};

INSTANCE Info_Mod_Norek_Blutkelch2 (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Blutkelch2_Condition;
	information	= Info_Mod_Norek_Blutkelch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Norek_Blutkelch2_Condition()
{
	if (Npc_HasItems(hero, ItMi_Bloodcup_Canyon) == 1)
	&& (Mod_ASS_Blutkelch3 == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Blutkelch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_00"); //Tutaj jestes nareszcie. Czekam na Ciebie.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_01"); //Przepraszam, nie bylo latwo znalezc i zdobyc puchar.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_02"); //Masz juz kubek?
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_03"); //Oczywiscie tak jest. Tutaj. Prosto z zamknietego staszu.

	B_GiveInvItems	(hero, self, ItMi_Bloodcup_Canyon, 1);

	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_04"); //Syna pistoletu! Niektórzy z nas nie znalezli juz kubków. I przynosi nam pan trzecia. (Glosny) Szanse, mag!
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_05"); //Magik?
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_06"); //Oczywiscie. Wybieram Cie jako Assassin Mage' a dla Twojego wystepu i pomagam naszej spolecznosci. Gratulacje.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_07"); //Czuje sie zaszczycony, ale zrobilam tylko to, co zrobila inna osoba.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_08"); //W zadnym wypadku nie! Prawdopodobnie ustalaja panstwo kurs na przyszlosc nas wszystkich.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_09"); //Absolutnie tego teraz nie rozumiem.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_10"); //Sluchajcie wiec: Jestesmy juz na tej wyspie kilku ksiezyców. Znasz nasza przeszlosc?
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_11"); //Tak. Zahit opowiedzial mi o tym.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_12"); //Bardzo dobrze. Coraz wiecej osób w obozie mówi, ze przyjazd na te wyspe nie byl dobrym pomyslem. Jestesmy tu zbyt ciasni, mamy malo miejsca na rozwój.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_13"); //Wielu ludzi teskni za sloncem i ogromem naszej poludniowej ojczyzny. Krótko mówiac; Chca wrócic. Wiekszosc magów i wielu ludzi Mustafy.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_14"); //Nie jest to latwe.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_15"); //Dokladnie. Czarodzieje, które nas tutaj przywiozly pozostaly na kontynencie.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_16"); //Paladynowie maja duzy statek....
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_17"); //Joker! Oni nas zmasakruja, kiedy nas zobacza. Nie, nie, nie, nie, nie.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_18"); //A co z piratami? Posiadaja równiez trzech mistrzów.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_19"); //To by sie bardziej podobalo. Znasz piratów?
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_20"); //Pewne. Rozmawialem juz z ludzmi.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_21"); //Hmm. Porozmawiam o tym z radami. Oh, tak. Nasz truciciel chce od Ciebie czegos.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_22"); //Kamal?
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_23"); //Tak. Wróccie do mnie potem.

	B_GivePlayerXP	(1000);

	B_SetTopicStatus	(TOPIC_MOD_ASS_LASTBLUTKELCH, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_ASS_HEIMWEH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_HEIMWEH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_HEIMWEH, "Norek powiedzial mi, ze duza czesc zabójców jest niezadowolona z zaistnialych okolicznosci i okolicznosci. Chetnie wróciliby do ojczyzny.");
};

INSTANCE Info_Mod_Norek_Heimweh (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Heimweh_Condition;
	information	= Info_Mod_Norek_Heimweh_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rada zasiegnela opinii?";
};

FUNC INT Info_Mod_Norek_Heimweh_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kamal_Heimweh))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Heimweh_Info()
{
	AI_Output(hero, self, "Info_Mod_Norek_Heimweh_15_00"); //Rada zasiegnela opinii?
	AI_Output(self, hero, "Info_Mod_Norek_Heimweh_13_01"); //I okazalo sie, ze przejscie z piratami moze byc tylko rozwiazaniem awaryjnym.
	AI_Output(hero, self, "Info_Mod_Norek_Heimweh_15_02"); //Wiec to ja osiedla?
	AI_Output(self, hero, "Info_Mod_Norek_Heimweh_13_03"); //Nie. Rozmowa z kapitanem nie zaszkodzilaby. We wszystkich przypadkach....
	AI_Output(hero, self, "Info_Mod_Norek_Heimweh_15_04"); //Bede wiec w drodze.
	AI_Output(self, hero, "Info_Mod_Norek_Heimweh_13_05"); //Zrób to. Mozna równiez wspomniec, ze cena przejazdu nie stanowi zadnego problemu.
	AI_Output(hero, self, "Info_Mod_Norek_Heimweh_15_06"); //Kapitan chetnie to uslyszy. Do zobaczenia dookola.
	AI_Output(self, hero, "Info_Mod_Norek_Heimweh_13_07"); //Pozegnanie pozegnania.

	Log_CreateTopic	(TOPIC_MOD_ASS_TODESANGST, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_TODESANGST, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_TODESANGST, "Mam sie dowiedziec od piratów, czy sa gotowi do przejscia na ladzie stalym.");
};

INSTANCE Info_Mod_Norek_Todesangst (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Todesangst_Condition;
	information	= Info_Mod_Norek_Todesangst_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bylem dla piratów i mam jakies zle wiesci.";
};

FUNC INT Info_Mod_Norek_Todesangst_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Todesangst))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Todesangst_Info()
{
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_00"); //Bylem dla piratów i mam jakies zle wiesci.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_01"); //Sprawozdania.
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_02"); //Greg, kapitan piratów, szalal. Nie przecieka za cale zloto na wyspie.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_03"); //Dlaczego tak jest?
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_04"); //Obawia sie o swoje zycie. Charlatan powiedzial mu, ze ma wkrótce umrzec.
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_05"); //Teraz nie ma odwagi opuscic chaty. Na razie tak czy owak.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_06"); //W kazdym razie, niezaleznie od wszystkiego. Bylby on i tak tylko rozwiazaniem awaryjnym. Cos jeszcze: Kamal mówi, ze widzial w woreczku bryle zielonej rudy.
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_07"); //To prawda. Potrzebowalem tej rudy, aby otrzymac kielich. Stoil w komorze na kamiennej trumnie. Wejscie zostalo zamkniete zielona bariera. Przyszedlem z brylkami.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_08"); //Fantastyczne! Zloto zabic. Zielona magia w skoncentrowanej formie. Nasza magia! Czy macie jeszcze taka rude?
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_09"); //Nie. Potrzebowalem drugiego, aby go odblokowac. A glazy zniknely wraz z bariera.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_10"); //Nie jestem zaskoczony. Powiedz, skad wzielas rude?
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_11"); //W Jharkendarzu znajduje sie pustynia z kopalniami. Tam byly zielone zyly rudy.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_12"); //Hmm. Widze rozwiazanie naszego problemu. Gota rozmawia z rada i magikami.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_13"); //Mozesz rozejrzec sie teraz po okolicy, zobaczyc, czy istnieje wiecej takich zielonych zyl.
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_14"); //Robie to. Do zobaczenia pózniej.

	B_GivePlayerXP	(300);

	Log_CreateTopic	(TOPIC_MOD_ASS_ASSASSINENGOLD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_ASSASSINENGOLD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_ASSASSINENGOLD, "Wydaje sie, ze Rada widzi szanse powrotu do domu z zielona ruda. Chca, abym zbadal, gdzie jest wiecej zielonych zyl rudy.");
};

INSTANCE Info_Mod_Norek_Assassinengold (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Assassinengold_Condition;
	information	= Info_Mod_Norek_Assassinengold_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cóz za zamieszanie o mnie. Co sie dzieje?";
};

FUNC INT Info_Mod_Norek_Assassinengold_Condition()
{
	if (Mod_ASS_Assassinengold == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Assassinengold_Info()
{
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold_15_00"); //Cóz za zamieszanie o mnie. Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_01"); //Pózniej. Znalazles jakas magiczna rude?
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold_15_02"); //Tak. Wrócilem na pustynie w Jharkendarzu.
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_03"); //I ile.....?
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold_15_04"); //Trzydziesci trzy glazy znowu moglem pokroic.
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_05"); //33. Czarodziejski numer. To wyglada dobrze.
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold_15_06"); //A co sie tu stalo?
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_07"); //Cóz, rada obraduje, a nastepnie pyta czlonków, którzy chca powrócic do domu.
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_08"); //My magicy chcemy wszystkich, Mustafe i jego wojowników najbardziej pozadanych.
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_09"); //Sposród oszustów z przodu, tylko Shakir chce nam towarzyszyc.
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_10"); //Pozostali oszustowie beda próbowali dolaczyc do zlodziei w miescie.
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold_15_11"); //Jest dobrze zaplanowana. Ale jesli to nie dziala?
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_12"); //Musze skonsultowac sie z Rada. Czekacie tutaj.

	B_GivePlayerXP	(750);

	B_SetTopicStatus	(TOPIC_MOD_ASS_ASSASSINENGOLD, LOG_SUCCESS);

	AI_GotoWP	(self, "WP_ASSASSINE_54");

	AI_GotoWP	(self, self.wp);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Norek_Assassinengold2 (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Assassinengold2_Condition;
	information	= Info_Mod_Norek_Assassinengold2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Norek_Assassinengold2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Norek_Assassinengold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Assassinengold2_Info()
{
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold2_13_00"); //Jestesmy zgodni. Wystarczy ruda.
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold2_13_01"); //Ciagle jednak potrzebujemy mistycznego naczynia, które laczy magie i wzmacnia ja.
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold2_15_02"); //Z kielichem byly tylko dwa kamienne pociski....
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold2_13_03"); //Nie chcemy jednak usuwac zadnych barier, ale raczej odbyc dluga droge. Bylo sie duzo. Czy kiedykolwiek natknales sie na cos takiego?
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold2_15_04"); //Hmm. Kiedys slyszalem, ze magowie ognia ustawiali miski ofiarnicze, gdy jeszcze nie bylo posagów Inno. Byc moze......
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold2_13_05"); //To brzmi dla mnie dobrze. Daj nam taka miske. Cokolwiek trzeba!

	Log_CreateTopic	(TOPIC_MOD_ASS_COMEBACK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_COMEBACK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_COMEBACK, "Mam dostac miske ofiarnicza na rude. W klasztorze magików strazy pozarnej powinienem ja znalezc.....");
};

INSTANCE Info_Mod_Norek_Comeback (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Comeback_Condition;
	information	= Info_Mod_Norek_Comeback_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zrób miske ofiarnicza. Jest przy bramie miejskiej na lace.";
};

FUNC INT Info_Mod_Norek_Comeback_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorax_Comeback))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Comeback_Info()
{
	AI_Output(hero, self, "Info_Mod_Norek_Comeback_15_00"); //Zrób miske ofiarnicza. Jest przy bramie miejskiej na lace.
	AI_Output(hero, self, "Info_Mod_Norek_Comeback_15_01"); //Lepiej byloby ja wydostac z niej w nocy. Ale potrzeba dwóch mezczyzn, aby go niesc.
	AI_Output(self, hero, "Info_Mod_Norek_Comeback_13_02"); //Bez problemu. Nie moge sie doczekac, zeby zobaczyc. Teraz przejdz do Na' im. On chce cie zobaczyc.

	B_SetTopicStatus	(TOPIC_MOD_ASS_HEIMWEH, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_ASS_COMEBACK, LOG_SUCCESS);
};

INSTANCE Info_Mod_Norek_Pickpocket (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Pickpocket_Condition;
	information	= Info_Mod_Norek_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Norek_Pickpocket_Condition()
{
	C_Beklauen	(118, ItMi_Gold, 41);
};

FUNC VOID Info_Mod_Norek_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Norek_Pickpocket);

	Info_AddChoice	(Info_Mod_Norek_Pickpocket, DIALOG_BACK, Info_Mod_Norek_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Norek_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Norek_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Norek_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Norek_Pickpocket);
};

FUNC VOID Info_Mod_Norek_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Norek_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Norek_Pickpocket);

		Info_AddChoice	(Info_Mod_Norek_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Norek_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Norek_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Norek_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Norek_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Norek_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Norek_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Norek_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Norek_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Norek_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Norek_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Norek_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Norek_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Norek_EXIT (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_EXIT_Condition;
	information	= Info_Mod_Norek_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Norek_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Norek_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
