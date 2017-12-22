INSTANCE Info_Mod_Cutter_Anbau (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Anbau_Condition;
	information	= Info_Mod_Cutter_Anbau_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co tu uprawia sie?";
};

FUNC INT Info_Mod_Cutter_Anbau_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cutter_Anbau_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Anbau_15_00"); //Co tu uprawia sie?
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_01"); //Uh.... Ziarno.
	AI_Output(hero, self, "Info_Mod_Cutter_Anbau_15_02"); //Czy wiec dobrze sie rozwija?
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_03"); //Nie wiem o tym. Wyglada lepiej niz ostatnie dwa razy.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_04"); //Ian powiedzial, ze nasiona potrzebuja wody. Ale nie rozumiem, drzewa rosna tak.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_05"); //Ian równiez zasugerowal, ze zrzucilismy troche gówno na pola, ale powiedzialem, ze to tuz nad moim martwym cialem.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_06"); //Chcemy jesc ziarno pózniej.
	AI_Output(hero, self, "Info_Mod_Cutter_Anbau_15_07"); //Widze, ze nie wiesz, co robisz.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_08"); //Wstrzymaj sie, wszystko w porzadku! Mielismy nawet ksiazke o tym, jak uprawiac rosliny, ale jakis posladek zrywal ja i uzywal do wywolywania pozarów.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_06_09"); //Wokól moze leciec jeszcze jeden lub dwa. No cóz, to tez nie pomaga.
};

INSTANCE Info_Mod_Cutter_Barriere (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Barriere_Condition;
	information	= Info_Mod_Cutter_Barriere_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak lubisz zycie bez barier?";
};

FUNC INT Info_Mod_Cutter_Barriere_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cutter_Barriere_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Barriere_15_00"); //Jak lubisz zycie bez barier?
	AI_Output(self, hero, "Info_Mod_Cutter_Barriere_06_01"); //Powinienem byl wyjechac z Scorpio. Odkad skonczyly sie kopalnie, zycie w obozie idzie w dól.
};

INSTANCE Info_Mod_Cutter_Dokumente (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Dokumente_Condition;
	information	= Info_Mod_Cutter_Dokumente_Info;
	permanent	= 0;
	important	= 0;
	description	= "Moze ten przewodnik pomoze Ci w sadzeniu roslin.";
};

FUNC INT Info_Mod_Cutter_Dokumente_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lehrling_Cutter))
	&& (Npc_HasItems(hero, ItWr_Lehrling01) == 1)
	&& (Npc_HasItems(hero, ItWr_Lehrling02) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Dokumente_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Dokumente_15_00"); //Moze ten przewodnik pomoze Ci w sadzeniu roslin.

	Npc_RemoveInvItems	(hero, ItWr_Lehrling01, 1);
	Npc_RemoveInvItems	(hero, ItWr_Lehrling02, 1);

	B_ShowGivenThings	("Arkusze przekazywane praktykantowi");

	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_06_01"); //Hej, czlowiek, to z ksiazki, o której Cie opowiedzialem!

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_06_02"); //To z pewnoscia nam pomoze. Jest w nim wiele terminów technicznych, ale rozumiem, o co chodzi.
	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_06_03"); //Pozwole sobie nawet na skok niewielkiej oplaty.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	AI_Output(hero, self, "Info_Mod_Cutter_Dokumente_15_04"); //Zycze powodzenia w ich rozwoju.
	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_06_05"); //Teraz nic nie moze pójsc zle.

	AI_TurnToNpc	(self, Mod_1440_BUD_Buddler_MT);

	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_06_06"); //(skrzydla do Buddystów) Poczekaj minute! Musisz trzymac kose w druga strone!

	B_GivePlayerXP	(150);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cutter_Dieb (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Dieb_Condition;
	information	= Info_Mod_Cutter_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Z domu baronowego skradziono dobra.....";
};

FUNC INT Info_Mod_Cutter_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Cutter_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Dieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Dieb_15_00"); //Towary zostaly skradzione z domu barona i mysle, ze miales z tym cos wspólnego.
	AI_Output(self, hero, "Info_Mod_Cutter_Dieb_06_01"); //Co? Chcesz ode mnie krasc? Próbuje zatrzymac kradziez, ale kiedy sie obudze, ta ragamuffin nie odwazy sie niczego ukrasc.
	AI_Output(self, hero, "Info_Mod_Cutter_Dieb_06_02"); //Wystarczy mi tylko zobaczyc, ze Fisk sprzedaje skradzione towary.

	Mod_PDV_Cutter_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Cutter najwyrazniej próbuje znalezc samego zlodzieja. Mógl mi powiedziec, ze Fisk sprzedawal skradziona wlasnosc.");
};

INSTANCE Info_Mod_Cutter_Frage (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Frage_Condition;
	information	= Info_Mod_Cutter_Frage_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co wiesz o......";
};

FUNC INT Info_Mod_Cutter_Frage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Cutter_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Frage_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Frage_15_00"); //Co wiesz o kradziezy z Domu Archbaronów?
	AI_Output(self, hero, "Info_Mod_Cutter_Frage_06_01"); //Nie wystarczy, ze tenisk sprzedaje skradzione towary.

	Mod_PDV_Cutter_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Cutter najwyrazniej próbuje znalezc samego zlodzieja. Mógl mi powiedziec, ze Fisk sprzedawal skradziona wlasnosc.");
};

INSTANCE Info_Mod_Cutter_Dealer (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Dealer_Condition;
	information	= Info_Mod_Cutter_Dealer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie bym....?";
};

FUNC INT Info_Mod_Cutter_Dealer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Cutter_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Dealer_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Dealer_15_00"); //Wo würde ich am ehesten "wybredny" Ware bekommen?
	AI_Output(self, hero, "Info_Mod_Cutter_Dealer_06_01"); //Co pytasz mnie o skradzione towary? Sprzedaje ja Fisk. Prosze udac sie do niego, zanim zglosie pytanie do Thorusa.

	Mod_PDV_Cutter_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Cutter najwyrazniej próbuje znalezc samego zlodzieja. Mógl mi powiedziec, ze Fisk sprzedawal skradziona wlasnosc.");
};

INSTANCE Info_Mod_Cutter_WhatCrime (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_WhatCrime_Condition;
	information	= Info_Mod_Cutter_WhatCrime_Info;
	permanent	= 0;
	important	= 0;
	description	= "Za jaka zbrodnie zostales wrzucony do kolonii?";
};

FUNC INT Info_Mod_Cutter_WhatCrime_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cutter_WhatCrime_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_WhatCrime_15_00"); //Za jaka zbrodnie zostales wrzucony do kolonii?
	AI_Output(self, hero, "Info_Mod_Cutter_WhatCrime_06_01"); //Kiedys bylem zabójca w Varant. Kazano mi zdjac sedziego króla, ale zlapano mnie.
	AI_Output(self, hero, "Info_Mod_Cutter_WhatCrime_06_02"); //Na szczescie, kazdy wiezien zostal wrzucony do kolonii w tym czasie, w przeciwnym razie na pewno by mnie rozstrzelal.
};

INSTANCE Info_Mod_Cutter_Costa (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Costa_Condition;
	information	= Info_Mod_Cutter_Costa_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co oznaczaja dwa ciala obok Kamienia?";
};

FUNC INT Info_Mod_Cutter_Costa_Condition()
{
	if (Mod_Costa_Guertel == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Costa_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Costa_15_00"); //Co oznaczaja dwa ciala obok Kamienia?
	AI_Output(self, hero, "Info_Mod_Cutter_Costa_06_01"); //Och, oni. Tylko dwóch kopaczy zlapalismy uciekajac.
	AI_Output(self, hero, "Info_Mod_Cutter_Costa_06_02"); //Leza tam juz kilka dni jako srodek odstraszajacy dla innych.
};

INSTANCE Info_Mod_Cutter_Ambient (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Ambient_Condition;
	information	= Info_Mod_Cutter_Ambient_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cutter_Ambient_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (hero.guild == GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Ambient_Info()
{
	AI_Output(self, hero, "Info_Mod_Cutter_Ambient_06_00"); //Jestes jednym z fugujacych najemników. Wyciagnij z tego fuge!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cutter_EXIT (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_EXIT_Condition;
	information	= Info_Mod_Cutter_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cutter_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cutter_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
