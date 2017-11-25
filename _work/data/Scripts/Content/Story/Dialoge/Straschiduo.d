INSTANCE Info_Mod_Straschiduo_Hi (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Hi_Condition;
	information	= Info_Mod_Straschiduo_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Straschiduo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Straschiduo_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_29_00"); //Co? Kto osmiela sie wejsc do swietych sal naszego Bractwa Kultów Krwi?

	if (Mod_WM_Blutkultinfos == 0)
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Aha, wspólnota, która nazywa sie 'kultem krwi', wydaje sie miec palce w piersiach.");
	};

	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_29_01"); //Gdybym nie byl tak zdumiony twoim wygladem, zabilbym cie teraz. Mówie wiec szybko: Kim jestes i co robisz tutaj?

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Chce dolaczyc do waszej poteznej spolecznosci.", Info_Mod_Straschiduo_Hi_C);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Po prostu natknalem sie tutaj przypadkowo. Co sie tu dzieje?", Info_Mod_Straschiduo_Hi_B);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Jestem tutaj, aby pozbyc sie nieszczesliwych stworzen.", Info_Mod_Straschiduo_Hi_A);
};

FUNC VOID Info_Mod_Straschiduo_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_C_15_00"); //Chce dolaczyc do waszej poteznej spolecznosci.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_C_29_01"); //Zaskoczyla mnie pani i zadala kilka pytan. Kim jestes?

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Jestem poszukiwaczem przygód od poludnia.", Info_Mod_Straschiduo_Hi_F);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Jestem oddanym sluga Beliara.", Info_Mod_Straschiduo_Hi_E);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Jestem czcigodnym sluga Adanosa.", Info_Mod_Straschiduo_Hi_D);
};

FUNC VOID Info_Mod_Straschiduo_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_B_15_00"); //Po prostu natknalem sie tutaj przypadkowo. Co sie tu dzieje?
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_B_29_01"); //Próbujesz mojej cierpliwosci. Jestesmy magicznie utalentowana i niezwykle wplywowa wspólnota kultu krwi. To na razie powinno wystarczyc! A teraz mów!

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Chce wejsc do Twojej poteznej spolecznosci.", Info_Mod_Straschiduo_Hi_M);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Wlasnie wychodzilem.", Info_Mod_Straschiduo_Hi_L);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Jestem tutaj, aby pozbyc sie nieszczesliwych stworzen.", Info_Mod_Straschiduo_Hi_A);
};

FUNC VOID Info_Mod_Straschiduo_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_A_15_00"); //Jestem tutaj, aby pozbyc sie nieszczesliwych stworzen.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_A_29_01"); //Hahahaha, nie smieje sie. Chcesz nas zniszczyc? Bedziemy karmic sie Twoja krwia. Chodzcie, bracia, porzuccie go na kawalki!

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_F_15_00"); //Jestem poszukiwaczem przygód od poludnia.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_F_29_01"); //Hmm, tak powiedziec: Do jakiego Boga oddajesz czesc?

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Nie ma Boga w ogóle.", Info_Mod_Straschiduo_Hi_J);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Osoba sypialna.", Info_Mod_Straschiduo_Hi_I);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Jedyny Bóg.", Info_Mod_Straschiduo_Hi_H);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Innos.", Info_Mod_Straschiduo_Hi_G);
};

FUNC VOID Info_Mod_Straschiduo_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_E_15_00"); //Jestem oddanym sluga Beliarów.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_E_29_01"); //Sluga oddany Bogu? Brak kwalifikacji, które przemawiaja za Ciebie.... Chodz, bracia, zabijajcie te bogobojna flunke.

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_D_15_00"); //Jestem czcigodnym sluga Adanosa.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_D_29_01"); //Co? Sluga Adanosa osmiela sie zniszczyc nasze swiete sale? Chodzcie, bracia, wyjmijcie go!

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_K()
{
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_K_29_00"); //Tak, to sa sprzyjajace warunki. A skoro nawet do nas dotarles, dostarczyles juz godnego dowodu swoich umiejetnosci.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_K_29_01"); //Cóz, zanim jednak przyjmiemy pana do naszych szeregów, poddam pana kilku malym testom, które dostarcza ostatecznego dowodu waszej woli sluzenia naszej spolecznosci i korzystania z jej poteznych zasobów.

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);
};

FUNC VOID Info_Mod_Straschiduo_Hi_J()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_J_15_00"); //Nie ma Boga w ogóle.

	Info_Mod_Straschiduo_Hi_K();
};

FUNC VOID Info_Mod_Straschiduo_Hi_I()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_I_15_00"); //Osoba sypialna.

	Info_Mod_Straschiduo_Hi_K();
};

FUNC VOID Info_Mod_Straschiduo_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_H_15_00"); //Jedyny Bóg.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_H_29_01"); //Hmm, ze po tak dlugim czasie sa jeszcze zwolennicy tego spinnertum....? No cóz, nie na dlugo.

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_G_15_00"); //Innos.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_G_29_01"); //Tam tam. Ale najdluzszy czas. wspólbracia.....

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_M()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_M_15_00"); //Chce wejsc do Twojej poteznej spolecznosci.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_M_29_01"); //Czy to prawda? Odpowiedz na kilka pytan! Kim jestes?

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Jestem poszukiwaczem przygód od poludnia.", Info_Mod_Straschiduo_Hi_F);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Jestem oddanym sluga Beliarów.", Info_Mod_Straschiduo_Hi_E);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Jestem czcigodnym sluga Adanosa.", Info_Mod_Straschiduo_Hi_D);
};

FUNC VOID Info_Mod_Straschiduo_Hi_L()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_L_15_00"); //Wlasnie wychodzilem.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_L_29_01"); //Hahahaha, nie smieje sie.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_L_29_02"); //Ci, którzy przechodza nasza droge, nie moga uniknac zlozenia holdu.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_L_29_03"); //Chodzcie, bracia, porabajcie go!

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Straschiduo_WhatToDo (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_WhatToDo_Condition;
	information	= Info_Mod_Straschiduo_WhatToDo_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co powinienem zrobic?";
};

FUNC INT Info_Mod_Straschiduo_WhatToDo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_Hi))
	&& (Mod_WM_BlutkultAttack == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_WhatToDo_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_WhatToDo_15_00"); //Co powinienem zrobic?
	AI_Output(self, hero, "Info_Mod_Straschiduo_WhatToDo_29_01"); //Do naszych rytualów potrzebujemy zawsze swiezej krwi. Przynies mi wiec piec butelek krwi zabitych ludzi.
	AI_Output(self, hero, "Info_Mod_Straschiduo_WhatToDo_29_02"); //Zeby rytualy przyniosly pozadany efekt, musimy najpierw zabrac muchy z grzybów agarycznych. Przynies mi szesc z nich.
	AI_Output(self, hero, "Info_Mod_Straschiduo_WhatToDo_29_03"); //Tak, a potem sa tacy denerwujacy magicy wody swoimi slugusami.... znalezc jednego z twoich magów lub wojowników, zabic go i przyniesc mi swoja bron.
	AI_Output(self, hero, "Info_Mod_Straschiduo_WhatToDo_29_04"); //Kiedy to zrobicie, uzyskacie dostep do naszych innych pokoi i zblizycie sie o wiele blizej do naszego braterstwa.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "A zatem wszystko w porzadku. Mam dostac piec butelek ludzkiej krwi, szesc muchowych grzybów agarycznych i wreszcie bron wodnego wojownika czy maga.");
};

INSTANCE Info_Mod_Straschiduo_AllesDa (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_AllesDa_Condition;
	information	= Info_Mod_Straschiduo_AllesDa_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem rzeczy.";
};

FUNC INT Info_Mod_Straschiduo_AllesDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_WhatToDo))
	&& (Npc_HasItems(hero, ItPo_Blood) >= 5)
	&& (Npc_HasItems(hero, ItPl_Mushroom_03) >= 6)
	&& ((Npc_HasItems(hero, ItMw_AdanosSchwert) >= 1)
	|| (Npc_HasItems(hero, ItMw_AdanosSchwert_Geschaerft) >= 1)
	|| (Npc_HasItems(hero, ItMw_XRSchwert_01) >= 1)
	|| (Npc_HasItems(hero, ItMw_XRSchwert_01_Geschaerft) >= 1)
	|| (Npc_HasItems(hero, ItMw_Kilgorin) >= 1)
	|| (Npc_HasItems(hero, ItMw_Kilgorin_Geschaerft) >= 1)
	|| (Npc_HasItems(hero, ItMw_XRSchwert_02) >= 1)
	|| (Npc_HasItems(hero, ItMw_XRSchwert_02_Geschaerft) >= 1)
	|| (Npc_HasItems(hero, ItMW_Addon_Stab03) >= 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_AllesDa_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_AllesDa_15_00"); //Dostalem rzeczy.

	Npc_RemoveInvItems	(hero, ItPo_Blood, 5);
	Npc_RemoveInvItems	(hero, ItPl_Mushroom_03, 6);

	if (Npc_HasItems(hero, ItMw_AdanosSchwert) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_AdanosSchwert, 1);
	}
	else if (Npc_HasItems(hero, ItMw_AdanosSchwert_Geschaerft) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_AdanosSchwert_Geschaerft, 1);
	}
	else if (Npc_HasItems(hero, ItMw_XRSchwert_01) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_XRSchwert_01, 1);
	}
	else if (Npc_HasItems(hero, ItMw_XRSchwert_01_Geschaerft) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_XRSchwert_01_Geschaerft, 1);
	}
	else if (Npc_HasItems(hero, ItMw_Kilgorin) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_Kilgorin, 1);
	}
	else if (Npc_HasItems(hero, ItMw_Kilgorin_Geschaerft) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_Kilgorin_Geschaerft, 1);
	}
	else if (Npc_HasItems(hero, ItMw_XRSchwert_02) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_XRSchwert_02, 1);
	}
	else if (Npc_HasItems(hero, ItMw_XRSchwert_02_Geschaerft) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_XRSchwert_02_Geschaerft, 1);
	}
	else if (Npc_HasItems(hero, ItMW_Addon_Stab03) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMW_Addon_Stab03, 1);
	};

	AI_Output(self, hero, "Info_Mod_Straschiduo_AllesDa_29_01"); //Bardzo dobrze, zobaczmy. Piec fiolek krwi, toadiole, wszystkie w prawo, a nastepnie - w rzeczywistosci - bron w kolbie wody. Mniej nieszczesliwy sluga Adanosa.
	AI_Output(self, hero, "Info_Mod_Straschiduo_AllesDa_29_02"); //Tak, teraz masz dostep do naszych pozostalych pokoi i mozna rozpoczac koncowe przygotowania do rytualu nagrania.

	self.aivar[AIV_PASSGATE] = TRUE;

	B_GivePlayerXP	(350);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Cóz, teraz moge wejsc do calej jaskini....");
};

INSTANCE Info_Mod_Straschiduo_LetzteVorbereitungen (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_LetzteVorbereitungen_Condition;
	information	= Info_Mod_Straschiduo_LetzteVorbereitungen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przygotowania koncowe?";
};

FUNC INT Info_Mod_Straschiduo_LetzteVorbereitungen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_AllesDa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_LetzteVorbereitungen_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_LetzteVorbereitungen_15_00"); //Przygotowania koncowe?
	AI_Output(self, hero, "Info_Mod_Straschiduo_LetzteVorbereitungen_29_01"); //Tak, wez te zeby archdemonu, zasiewaj je na czerwonym miejscu pola Sekoba i zbieraj to, co rosnie z ziemi.

	B_GiveInvItems	(self, hero, ItAt_ErzdemonTooth, 1);

	Wld_SendTrigger	("EVT_BLUTKULT_SAATMARKIERUNG");

	AI_Output(self, hero, "Info_Mod_Straschiduo_LetzteVorbereitungen_29_02"); //Przynies mi wszystko i stan sie jednym z naszych braci.
	AI_Output(self, hero, "Info_Mod_Straschiduo_LetzteVorbereitungen_29_03"); //Uzyj tego pickaxe, aby ulatwic wysiew nasion.

	B_GiveInvItems	(self, hero, ItMw_2H_AXe_L_01, 1);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Tajemniczy. Zasiewamy zeby na polu Sekobs, gdzie zaznaczono je na czerwono i zbieramy owoce, które wyrastaja z gleby.");
};

INSTANCE Info_Mod_Straschiduo_Gemeinschaft (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Gemeinschaft_Condition;
	information	= Info_Mod_Straschiduo_Gemeinschaft_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz opowiedziec mi troche wiecej o swojej spolecznosci?";
};

FUNC INT Info_Mod_Straschiduo_Gemeinschaft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_LetzteVorbereitungen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Gemeinschaft_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Gemeinschaft_15_00"); //Czy mozesz opowiedziec mi troche wiecej o swojej spolecznosci?
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_01"); //Wszystko w porzadku, choc oczywiscie nie moge Wam powiedziec wszystkiego.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_02"); //Nie jestes jeszcze pelnoprawnym czlonkiem naszej spolecznosci, a poza tym po prostu mamy przed soba wielki projekt, który wymaga naszej pelnej uwagi i nie pozwala na zadne duze dygresje.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_03"); //A zatem wszystko w porzadku. Jestesmy starozytna wspólnota, znacznie starsza niz mozna sobie wyobrazic w tym czasie. Pierwotnie mieszkalismy w innej czesci Khorinis.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_04"); //Ale kultura, która kiedys tam mieszkala, wymarla z zlych powodów, tak, ze nie znalezlismy ofiar dla naszych rytualów - na razie nie nosimy na razie nazwy kult krwi za nic.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_05"); //Cóz, musze przyznac, ze moglismy równiez odegrac nasza role w upadku tej kultury. (smiertelni zle oblakani)
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_06"); //Z tego powodu przespalismy sie przez wieki, az poczulismy zycie i magiczna energie w tej czesci Khorinisa i przyjechalismy tutaj.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_07"); //Musielismy jednak zdac sobie sprawe, ze warunki nie spelnily jeszcze naszych potrzeb i musielismy znów odpoczywac przez wiele lat, az do czasu, gdy wielki magiczny szok wyparl nas z snu.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_08"); //Wibracje tego rodzaju, miejmy nadzieje, ze dojdzie do upadku w strukture swiata, co moze dostarczyc nam krwi i energii wielu istot zyjacych, a tym samym dac nadzieje na dobre warunki.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_09"); //Tak, a potem ktos inny nawiazal kontakt z nami, który jest prawie tak stary jak my.....
	AI_Output(hero, self, "Info_Mod_Straschiduo_Gemeinschaft_15_10"); //O kim mówisz?
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_11"); //Um wyjasnie to przy innej okazji. Teraz odrabiaj swoja prace domowa. Wiesz, co musisz zrobic.
};

INSTANCE Info_Mod_Straschiduo_Ernte (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Ernte_Condition;
	information	= Info_Mod_Straschiduo_Ernte_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj sa pozadane..... er er..... Uprawy.";
};

FUNC INT Info_Mod_Straschiduo_Ernte_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_LetzteVorbereitungen))
	&& (Npc_HasItems(hero, ItFoMuttonZombie) >= 3)
	&& (Npc_HasItems(hero, ItAt_DemonHeart) >= 1)
	&& (Npc_HasItems(hero, ItAt_WaranFireTongue) >= 2)
	&& (Npc_HasItems(hero, ItAt_ErzdemonTooth) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Ernte_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Ernte_15_00"); //Tutaj sa pozadane..... er er..... Uprawy.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_01"); //Wybitny. Jest jeszcze jedna rzecz, która musisz zrobic.
	AI_Output(hero, self, "Info_Mod_Straschiduo_Ernte_15_02"); //(Wyczerpane) Wszystko inne? Kto lub co tym razem zabic, zabic i rabuc?
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_03"); //(smiech) Nie, tym razem nic takiego. Teraz, aby cos zmienic, poznasz przyjemnosci podniebienia.
	AI_Output(hero, self, "Info_Mod_Straschiduo_Ernte_15_04"); //(joyfuluj) Co za smaczny posilek, naprawde moglem teraz skorzystac z przekasek.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_05"); //Widzisz, ze to równiez jest cos, czego nie przegapimy. Oto przepis...... i cztery butelki z krwia plus trzy toadiole, których potrzebujesz.

	CreateInvItems	(hero, ItPo_Blood, 4);
	CreateInvItems	(hero, ItPl_Mushroom_03, 3);
	CreateInvItems	(hero, ItWr_Rezept_Blutkult, 1);

	Wld_SendUnTrigger	("EVT_BLUTKULT_SAATMARKIERUNG");

	AI_Output(hero, self, "Info_Mod_Straschiduo_Ernte_15_06"); //Jak?
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_07"); //Po jego przygotowaniu i spozyciu, musisz wrócic do mnie, abys mógl stac sie pelnoprawnym czlonkiem naszej wspólnoty.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_08"); //I, tak, zanim ja zjedziesz, upewnij sie, ze twoje zapasy energii zyciowej sa dobrze wypelnione. Mogloby to zaszkodzic Twojemu umyslowi.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Ooh, toadstoole, krew.... . To moze byc gratka dla podniebienia. Cóz, gotuj, ugotuj, ulóz - zwróc wczesniej uwage na dostateczna witalnosc - i straschiduo na koncowy rytual.");

	B_GivePlayerXP	(450);
};

INSTANCE Info_Mod_Straschiduo_Halbinfernalischer (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Halbinfernalischer_Condition;
	information	= Info_Mod_Straschiduo_Halbinfernalischer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jadlem posilek.";
};

FUNC INT Info_Mod_Straschiduo_Halbinfernalischer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_Ernte))
	&& (Mod_HeroIstDemon == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Halbinfernalischer_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Halbinfernalischer_15_00"); //Jadlem posilek.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_01"); //Ahh, doskonaly. Poczuj demoniczne sily w Tobie?
	AI_Output(hero, self, "Info_Mod_Straschiduo_Halbinfernalischer_15_02"); //Uh, mysle, ze tak.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_03"); //Potem wejdzmy posród nas.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_04"); //Bracia (dla widzów) nadszedl czas, aby powitac nowych towarzyszy broni w naszej wspólnocie, który naprawde dowiódl swojej wartosci.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_05"); //Tak, Aeony, ostatnio przywitalismy nowego czlonka.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_06"); //A po tym, jak jeden z naszych braci wyjechal do Minental, aby szukac mozliwosci smierci i zniszczenia, kolejny brat jest tym bardziej mile widziany.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_07"); //(About the Hero) No cóz, wiedz, ze jestesmy odpowiedzialni za wyglad stworzen na plaskowyzu, nawet jesli pewnie sam doszedles do tego zalozenia.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_08"); //Stworzylismy te stworzenia pracujac razem z czarownicami, przyjmujac energie Beliarów i Innosów i ksztaltujac z nich te stworzenia.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_09"); //Taki glupiec wodniak nieswiadomie gral w nasze rece, wykonujac rytual oczyszczenia blogoslawionego i przekletego terenu. (smiertelni zle oblakani)
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_10"); //(mocks) Ha, zachowanie równowagi. Nie tak dlugo, jak dlugo jestesmy w poblizu. Cóz, tak czy owak, niestety, kontakt z czarownicami jest jakos zerwany.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_11"); //Twoim pierwszym zadaniem bedzie dowiedziec sie, co sie stalo. A potem, jako poslannik, odwiedzicie tego, pod którego kierownictwem zostalo uformowane nasze przymierze z czarownicami i który umozliwil w pierwszej kolejnosci te chwalebnie ohydna prace.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_12"); //Ale to wszystko dopiero po rytuale. Zacznijmy teraz.

	B_GivePlayerXP	(200);

	Npc_SetRefuseTalk	(self, 5);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7244_BlutkultKrieger_NW, "RITUAL");
	B_StartOtherRoutine	(Mod_7525_BlutkultKrieger_NW, "RITUAL");
	B_StartOtherRoutine	(Mod_7526_BlutkultMagier_NW, "RITUAL");
};

INSTANCE Info_Mod_Straschiduo_RitualDontWork (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_RitualDontWork_Condition;
	information	= Info_Mod_Straschiduo_RitualDontWork_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Straschiduo_RitualDontWork_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_Halbinfernalischer))
	&& (Mod_HeroIstDemon == 1)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_RitualDontWork_Info()
{
	AI_Output(self, hero, "Info_Mod_Straschiduo_RitualDontWork_29_00"); //Damn, cos wydaje sie blokowac rytual. Prosze pozwolic mi pomyslec o tym.

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk	(self, 3);
};

INSTANCE Info_Mod_Straschiduo_Adanos (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Adanos_Condition;
	information	= Info_Mod_Straschiduo_Adanos_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Straschiduo_Adanos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_RitualDontWork))
	&& (Mod_HeroIstDemon == 1)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Adanos_Info()
{
	AI_Output(self, hero, "Info_Mod_Straschiduo_Adanos_29_00"); //Sama obecnosc Adano moglaby powstrzymac rytual. Sluga Adanosa!

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Damn, jestem dmuchany. Teraz nadszedl czas walki lub ucieczki.");

	Mod_WM_BlutkultAttack = 1;
};

INSTANCE Info_Mod_Straschiduo_Blut (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Blut_Condition;
	information	= Info_Mod_Straschiduo_Blut_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie, jak przyciagac ludzka krew! (1 LP)";
};

FUNC INT Info_Mod_Straschiduo_Blut_Condition()
{
	Info_Mod_Straschiduo_Blut.description = B_BuildLearnString("Naucz mnie, jak przyciagac ludzka krew!", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Blood));

	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_WhatToDo))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Blood] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Blut_Info()
{
	AI_Output (hero, self, "Info_Mod_Straschiduo_Blut_15_00"); //Naucz mnie, jak przyciagac ludzka krew!

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Blood))
	{
		AI_Output (self, other, "Info_Mod_Straschiduo_Blut_29_01"); //Dobre. Posluchaj. To w zasadzie calkiem proste.
		AI_Output (self, other, "Info_Mod_Straschiduo_Blut_29_02"); //Podnosisz ostre ostrze i tniesz cialo gdzies, najlepiej na aorty. Nastepnie trzymasz butelke pod spodem i pobierasz krew.
	};
};

INSTANCE Info_Mod_Straschiduo_Zunge (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Zunge_Condition;
	information	= Info_Mod_Straschiduo_Zunge_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie zabierac jezyki! (5 LP)";
};

FUNC INT Info_Mod_Straschiduo_Zunge_Condition()
{
	Info_Mod_Straschiduo_Zunge.description = B_BuildLearnString("Naucz mnie zabierac jezyki!", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FireTongue));

	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_WhatToDo))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireTongue] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Zunge_Info()
{
	AI_Output (hero, self, "Info_Mod_Straschiduo_Zunge_15_00"); //Naucz mnie zabierac jezyki!

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_FireTongue))
	{
		AI_Output (self, other, "Info_Mod_Straschiduo_Zunge_29_01"); //Za pomoca noza wycietego z ust podczas trzymania go druga reka uderza sie w jezyk monitora przeciwpozarowego.
	};
};

INSTANCE Info_Mod_Straschiduo_Herz (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Herz_Condition;
	information	= Info_Mod_Straschiduo_Herz_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wez mnie do serca! (3 LP)";
};

FUNC INT Info_Mod_Straschiduo_Herz_Condition()
{
	Info_Mod_Straschiduo_Herz.description = B_BuildLearnString("Wez mnie do serca!", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Heart));

	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_WhatToDo))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Heart] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Herz_Info()
{
	AI_Output (hero, self, "Info_Mod_Straschiduo_Herz_15_00"); //Wez mnie do serca!

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Heart))
	{
		AI_Output (self, other, "Info_Mod_Straschiduo_Herz_29_01"); //Serce usuwa sie z zwierzecia za pomoca sprytnego naciecia w klatce piersiowej. Jednak czesto oplaca sie to tylko dla wyjatkowych zwierzat lub magicznych istot.
	};
};

const string Straschiduo_Checkpoint	= "WP_BK_03";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_Straschiduo_FirstWarn (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_FirstWarn_Condition;
	information	= Info_Mod_Straschiduo_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Straschiduo_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, Straschiduo_Checkpoint) <= 700) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	
	if ((self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_RefuseTalk(self) == FALSE))
	{
		return TRUE;
	};
};

func void Info_Mod_Straschiduo_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Straschiduo_FirstWarn_29_00"); //HALT! Jeszcze nie mozna sie zatrzymac.

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, Straschiduo_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Straschiduo_SecondWarn (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_SecondWarn_Condition;
	information	= Info_Mod_Straschiduo_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Straschiduo_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, Straschiduo_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_Straschiduo_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Straschiduo_SecondWarn_29_00"); //Opowiem ci to po raz ostatni. Jeszcze jeden krok i umrzesz!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,Straschiduo_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Straschiduo_Attack (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Attack_Condition;
	information	= Info_Mod_Straschiduo_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Straschiduo_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,Straschiduo_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_Straschiduo_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_Straschiduo_Attack_29_00"); //Poprosil pan o to.....

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_Straschiduo_EXIT (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_EXIT_Condition;
	information	= Info_Mod_Straschiduo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Straschiduo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Straschiduo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
