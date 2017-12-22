INSTANCE Info_Mod_Dragon_Hi (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_Hi_Condition;
	information	= Info_Mod_Dragon_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragon_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_KoboldDragon_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_00"); //W ten sposób wreszcie zobacze cie.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_01"); //Jeden z moich pracowników powiedzial mi, ze to Ty otworzyles ksiazke.
	AI_Output(hero, self, "Info_Mod_Dragon_Hi_15_02"); //Jestem jednak ulga.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_03"); //Ciezko jest mi przewazac nad usluga, która zrobiles mi zloto.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_04"); //Twoja nagroda powinno byc dzialanie jako moja prawa reka w khorynach i uczestniczenie w mojej rosnacej potedze.
	AI_Output(hero, self, "Info_Mod_Dragon_Hi_15_05"); //(nieco ironiczny) Zbyt hojny.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_06"); //Cóz, przede wszystkim.....

	AI_TurnToNpc	(self, Kobold_11010_NW);

	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_07"); //Co mówisz, goblin, zlapales winowajce, który nie zrzekl sie porcji lupu z ostatniego nalotu na mnie.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_08"); //Tak wiec niegrzeczny robak ukradl ode mnie 20 zlotych monet. Co teraz prosi o laske i milosierdzie za swoje zlo?
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_09"); //Poparzony i przebity przez 20 ostrzy!
	AI_Output(hero, self, "Info_Mod_Dragon_Hi_15_10"); //(do samego siebie zszokowany) Oh, jego poplecznik?
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_11"); //Cóz, to ma go nauczyc lekcji.....
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_12"); //Dziekuje za mój lagodny werdykt! To wlasnie mu powiedzialem.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_13"); //I biada mu sie, zeby sobie pozwolic na kolejne...... Wtedy chce, aby czul sie zle.

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_14"); //Gdzie wiec byli¶my? Dokladnie, Twoje obowiazki.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_15"); //Na razie nie mam dla pana nic konkretnego do zrobienia. Po prostu zapytaj sie na tej wyspie z ludzmi i potworami, czy mozesz uzyskac dla mnie jakies przydatne informacje.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_16"); //Mój skarb smokowy jest zalosny, nie godny nawet soczewicy i czuje, ze moge go powiekszyc.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Dragon_Hi_15_17"); //W tej chwili smok i jego sludzy wydaja mi sie przytlaczajace. Powinienem sie bawic i sprawdzic, czy moge dowiedziec sie czegos pozytecznego.

	AI_TurnToNpc	(hero, self);

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Cóz, ten smok to potezny smok z przerazajacymi zwolennikami. Na razie nie mam szans i dlatego powinienem grac. I nie byloby zle, gdybym rozejrzal sie i sluchal. Hmm, chce powiekszyc swój skarb latawca....");
};

INSTANCE Info_Mod_Dragon_Kloster (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_Kloster_Condition;
	information	= Info_Mod_Dragon_Kloster_Info;
	permanent	= 0;
	important	= 0;
	description	= "Panowie demonów i bestii (....) )";
};

FUNC INT Info_Mod_Dragon_Kloster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Gormgniez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_Kloster_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragon_Kloster_15_00"); //Wladca demonów i bestii, znam sposób na zwiekszenie twojego skarbu smoka.
	AI_Output(self, hero, "Info_Mod_Dragon_Kloster_22_01"); //Tak, mów ludzki!
	AI_Output(hero, self, "Info_Mod_Dragon_Kloster_15_02"); //Niedaleko na wschód lezy klasztor magów ognia, który posiada wielkie bogactwa. Powinienes je odkopac.
	AI_Output(self, hero, "Info_Mod_Dragon_Kloster_22_03"); //To brzmi naprawde kuszaco. Dobra wskazówka, czlowiek.
	AI_Output(self, hero, "Info_Mod_Dragon_Kloster_22_04"); //Dzis wieczorem wieczorem, w nocy, zajmiemy sie klasztorem.

	Mod_NL_DragonKlosterTag = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_NL_DRAGON, "Nauczalem Smoka o klasztorze i jego bogactwie. Byl zadowolony i chcial rozpoczac grabiez w nocy.");
};

INSTANCE Info_Mod_Dragon_KlosterErfolg (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_KlosterErfolg_Condition;
	information	= Info_Mod_Dragon_KlosterErfolg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragon_KlosterErfolg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Kloster))
	&& (Mod_NL_DragonKloster == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_KlosterErfolg_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_00"); //Wuahahahahahaha, twoja propozycja byla naprawde warta swojej wagi w zlocie, czlowieku.
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_01"); //Z skarbców i magazynów klasztoru zebralismy tak wiele, ze nie moglismy nosic wszystkiego, mieli tak wiele.
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_02"); //Ci magicy strazy pozarnej wydaja sie prowadzic niezwykle lukratywny handel.... Wiecej
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_03"); //Niezaleznie od tego, jak to mozliwe, zdobyles swój udzial.

	B_ShowGivenThings	("2000 Zloto, 16 szynek i 30 uzyskanych win");

	CreateInvItems	(hero, ItMi_Gold, 2000);
	CreateInvItems	(hero, ItFo_Bacon, 16);
	CreateInvItems	(hero, ItFo_Wine, 30);

	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_04"); //Teraz tesknie za: magiczna, niebieskawa, migoczaca ruda.
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_05"); //Gdybym mógl jeszcze wzbogacic nim swój skarb smokowy, kazdy inny smok, król lub cokolwiek innego na tej kuli ziemskiej ma range i skarby musialyby z zazdroscia isc na zielono.
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_06"); //Wez ten pierscien i umiesc go w kopalni, gdzie moi sludzy moga kopac rude dla mnie.

	B_GiveInvItems	(self, hero, ItRi_DragonRing, 1);

	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_07"); //Ale teraz..... (jawny) Musze ponownie przejsc na emeryture.
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_08"); //Udany nalot i owce w zoladku..... (jawyny) wzywaja do wypoczynku, odpoczynku i snu.
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_09"); //(szczyty we snie) Zloty.....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_10"); //(szczyt w czasie snu) Kamienie szlachetne.....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_11"); //(szczyt w czasie snu) owce
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_12"); //(szczyt w czasie snu) Moc i bogactwo....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_13"); //(szczyt w czasie snu) Moc i niesmiertelnosc.....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_14"); //(szczyt w czasie snu) dzielic sie z nieumarlym....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_15"); //(szczyt w czasie snu) z magicznym przymierzem......
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_16"); //(szczyt w czasie snu) w jaskiniach, lochach i komorach tortur.....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_17"); //(szczyt w czasie snu) obiekt, który zawiera zycie.....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_18"); //(szczyt w czasie snu) w kraju......
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_19"); //(szczyt w czasie snu) z ziarna matki......
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_20"); //(szczyt w czasie snu) bagno
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_21"); //(szczyt w czasie snu) i jego okupant....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_22"); //(szczyt w czasie snu) ukryty
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_23"); //(szczyt w czasie snu) dla poteznych....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_24"); //(szczyt w czasie snu) nosi ja na sobie....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_25"); //(szczyt w czasie snu) mhhhh, mieso baranie....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_26"); //(szczyt w czasie snu) szynka
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_27"); //(szczyt w czasie snu) blond dziewice......

	B_LogEntry_NS	(TOPIC_MOD_NL_DRACHEN, "Smok dal mi pierscionek do podniesienia w kopalni, gdzie jego sludzy moga dla niego kopac rude.");
	B_LogEntry	(TOPIC_MOD_NL_DRAGON, "Moc i niesmiertelnosc dzielone z nieumarlymi.... sojusze magiczne, w jaskiniach, lochach i komorach tortur.... Obiekt, który ma zycie w ziemi, ziarno matki, torfowisko i jego mieszkaniec, ukrywa sie przed poteznym, nosi go w sobie.");
	B_LogEntry	(TOPIC_MOD_NL_DRAGON, "Okey, smok zawiazal sojusz z nieumarla, w którym dzielona jest niesmiertelnosc.");

	if (Mod_HSNL_RatProblem == 1)
	{
		Mod_HSNL_RatProblem = 2;

		// ToDo

		//Npc_ExchangeRoutine	(Mod_520_DMR_Raven_NW, "RAT");
		//Npc_ExchangeRoutine	(Mod_517_DMR_Gomez_NW, "RAT");
		Npc_ExchangeRoutine	(Mod_551_KDF_Pyrokar_NW, "RAT");
		Npc_ExchangeRoutine	(Mod_592_PAL_Hagen_NW, "RAT");
		Npc_ExchangeRoutine	(Mod_774_KDW_Saturas_NW, "RAT");
		Npc_ExchangeRoutine	(Mod_527_SLD_Torlof_NW, "RAT");
		Npc_ExchangeRoutine	(Mod_925_KDF_Talamon_NW, "RAT");
	};
};

INSTANCE Info_Mod_Dragon_Mine (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_Mine_Condition;
	information	= Info_Mod_Dragon_Mine_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragon_Mine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_KlosterErfolg))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dschinn_VM_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_Mine_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragon_Mine_22_00"); //Po raz kolejny wypelniles swoje zadanie ku mojemu zadowoleniu i znalazles bogata kopalnie. Oto Twoja nagroda.

	B_GiveInvItems	(self, hero, ItMi_Nugget, 25);

	B_GivePlayerXP	(350);
};

INSTANCE Info_Mod_Dragon_Snorre (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_Snorre_Condition;
	information	= Info_Mod_Dragon_Snorre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragon_Snorre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Moorhexe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_Snorre_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragon_Snorre_22_00"); //Ten zabrudzony maly zlodziej! Spale go do popiolu!
	AI_Output(hero, self, "Info_Mod_Dragon_Snorre_15_01"); //Co sie stalo?
	AI_Output(self, hero, "Info_Mod_Dragon_Snorre_22_02"); //Ten zuchwaly goblin Snorre zabral z kurzu niektóre z moich skarbów. Wsród nich szczególnie cenne sa takze eksponaty z klasztoru. Szczepy imiennos (weglowane)
	AI_Output(self, hero, "Info_Mod_Dragon_Snorre_22_03"); //Moje instynkty smokowe mówia mi, ze uciekl na pólnoc. Zrób mi laske i zabij go.
	AI_Output(self, hero, "Info_Mod_Dragon_Snorre_22_04"); //W ramach specjalnej zachety mozna nawet zachowac skarby.
	AI_Output(self, hero, "Info_Mod_Dragon_Snorre_22_05"); //Trzeba dac przyklad, zanim inni przedstawia glupie pomysly.

	B_LogEntry	(TOPIC_MOD_NL_STAB, "Golebinowy Snorre wysadzil sie w powietrze z czescia uznania smoka. Prawdopodobnie biegal na pólnoc. Czy wsród nich byli równiez pracownicy? Przynajmniej go tutaj nie widze.");

	B_StartOtherRoutine	(Kobold_11010_NW, "FLUCHT");

	Wld_InsertItem	(ItWr_SnorresNotiz, "FP_ROAM_UNTIER_02");
};

INSTANCE Info_Mod_Dragon_SnorreTot (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_SnorreTot_Condition;
	information	= Info_Mod_Dragon_SnorreTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragon_SnorreTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Snorre))
	&& (Npc_IsDead(Kobold_11010_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_SnorreTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragon_SnorreTot_22_00"); //Hmm, nie czuje juz Snorress Aura. Moge zatem przypuszczac, ze wywiazal sie Pan z tego zadania ku mojemu wielkiemu zadowoleniu.
	AI_Output(self, hero, "Info_Mod_Dragon_SnorreTot_22_01"); //Nagrodzony przez skarby jestescie juz wystarczajaco duzo.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Dragon_Kamm (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_Kamm_Condition;
	information	= Info_Mod_Dragon_Kamm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragon_Kamm_Condition()
{
	if (Mod_NL_HasKamm >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_Kamm_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragon_Kamm_22_00"); //(hufle) Grrr, wróg, zniszczyl jednego z moich sojuszników, niszczac potezny magiczny pakt, który byl nieoceniony dla mnie i innych smoków.
	AI_Output(self, hero, "Info_Mod_Dragon_Kamm_22_01"); //W zamian za to inny magik skontaktowal sie ze mna i poinformowal mnie o domniemanym zloczyncy.
	AI_Output(hero, self, "Info_Mod_Dragon_Kamm_15_02"); //(do siebie) Uh-huh....
	AI_Output(self, hero, "Info_Mod_Dragon_Kamm_22_03"); //Mam jego obrazek.... Tutaj wezcie ja i znajdzcie to robactwo, a nastepnie przygotujcie dla niego bolesna smierc.

	B_GiveInvItems	(self, hero, ItWr_Poster_MIS, 1);

	AI_Output(self, hero, "Info_Mod_Dragon_Kamm_22_04"); //Zaladuje cie zlotem i bogactwami, wiecej niz mozesz nosic. Nie moge sobie pomóc, ale wy ludzie wygladacie na mnie tak samo.
	AI_Output(self, hero, "Info_Mod_Dragon_Kamm_22_05"); //Och, i nie biec na moich braci.
	AI_Output(self, hero, "Info_Mod_Dragon_Kamm_22_06"); //Po ostatnich wydarzeniach nie zawahaja sie natychmiast zatrzymac kazdego, kto je zywi.

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Powoli powietrze staje sie dla mnie cienki na górnym smoku. Wydaje sie, ze Xeres nauczyl o mnie smoka. I nie jestem pewna, ze mam teraz szanse, nawet jesli teraz powinien byc smiertelnikiem. Moze powinienem spróbowac sie na slabszym egzemplarzu z jakims wsparciem.");
};

INSTANCE Info_Mod_Dragon_Infos (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_Infos_Condition;
	information	= Info_Mod_Dragon_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Panie smoków i demonów, czy mozesz mi powiedziec wiecej (....)? )";
};

FUNC INT Info_Mod_Dragon_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragon_Infos_15_00"); //Wladca smoków i demonów, czy mozesz mi opowiedziec wiecej o sobie i swoich stworzeniach? Co to jest wielka sprawa.....
	AI_Output(self, hero, "Info_Mod_Dragon_Infos_22_01"); //(przerwanie, nagana) Nie badz tak ciekawym czlowiekiem. Dowiesz sie, co musisz wiedziec.
};

INSTANCE Info_Mod_Dragon_EXIT (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_EXIT_Condition;
	information	= Info_Mod_Dragon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dragon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dragon_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
