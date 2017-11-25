FUNC VOID Info_Mod_PennerVater_Gruss()
{
	AI_Output(hero, self, "Info_Mod_PennerVater_Gruss_15_00"); //Dobre popoludnie, starszy mezczyzna.
	AI_Output(self, hero, "Info_Mod_PennerVater_Gruss_03_01"); //W pokoju, kazdy dzien jest dobrym dniem.
	AI_Output(hero, self, "Info_Mod_PennerVater_Gruss_15_02"); //Jak? Och, widze. Spotkalem Twojego syna.
};

FUNC VOID Info_Mod_PennerVater_Liste()
{
	AI_Output(hero, self, "Info_Mod_PennerVater_Liste_15_00"); //Ma pani racje. Nawiasem mówiac, jak Pan tutaj postepuje?
	AI_Output(self, hero, "Info_Mod_PennerVater_Liste_03_01"); //Glód jest najlepszym kucharzem.
	AI_Output(hero, self, "Info_Mod_PennerVater_Liste_15_02"); //Moze tak. Mam na mysli......
	AI_Output(self, hero, "Info_Mod_PennerVater_Liste_03_03"); //Lepiej wlasny chleb niz pieczone mieso.
	AI_Output(hero, self, "Info_Mod_PennerVater_Liste_15_04"); //Hmm.
	AI_Output(self, hero, "Info_Mod_PennerVater_Liste_03_05"); //Czlowiek nie zyje tylko na chlebie. Wszystko ma swój koniec, tylko kielbasa ma dwie.
	AI_Output(hero, self, "Info_Mod_PennerVater_Liste_15_06"); //Ach, rozumiem. Chcesz cos zjesc.
	AI_Output(self, hero, "Info_Mod_PennerVater_Liste_03_07"); //Gulasz to niedzielny posilek ubogich ludzi i kieliszek wina na zupie, uzdrowiciel pozbawiony jest monety.
	AI_Output(hero, self, "Info_Mod_PennerVater_Liste_15_08"); //To lista. Co jeszcze innego?
	AI_Output(self, hero, "Info_Mod_PennerVater_Liste_03_09"); //Ser smakuje dobrze nawet bez chleba, a jablko nie opada daleko od drzewa.
	AI_Output(hero, self, "Info_Mod_PennerVater_Liste_15_10"); //Widze. Czy to musi byc to samo? Chcialbym uslyszec o medalu i skarbie.
	AI_Output(self, hero, "Info_Mod_PennerVater_Liste_03_11"); //Nie odkladaj do jutra tego, co mozna dzis dostac.
};

FUNC VOID Info_Mod_PennerVater_Abgabe()
{
	AI_Output(hero, self, "Info_Mod_PennerVater_Abgabe_15_00"); //Tutaj. Jedzenie i picie utrzymuje cialo i dusze razem.

	Npc_RemoveInvItems	(hero, ItFo_Bread, 1);
	Npc_RemoveInvItems	(hero, ItFo_Sausage, 1);
	Npc_RemoveInvItems	(hero, ItFo_Stew, 1);
	Npc_RemoveInvItems	(hero, ItFo_Apple, 1);
	Npc_RemoveInvItems	(hero, ItFo_Wine, 1);
	Npc_RemoveInvItems	(hero, ItFo_Cheese, 1);

	B_ShowGivenThings	("zywnosc");

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_PennerVater_Abgabe_15_01"); //(nawet) Ha! Moge to równiez zrobic.

	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_PennerVater_Abgabe_03_02"); //Chleb Wes' a jem z piesni, która spiewam.
	AI_Output(hero, self, "Info_Mod_PennerVater_Abgabe_15_03"); //Slysze.....
};

FUNC VOID Info_Mod_PennerVater_Schlusssatz()
{
	AI_Output(self, hero, "Info_Mod_PennerVater_Schlusssatz_03_00"); //Swiezo zapatrzone to polowa bitwy. Nie zatrzymuj podróznych.
};

INSTANCE Info_Mod_PennerVater_Hi (C_INFO)
{
	npc		= Mod_7541_OUT_PennerVater_REL;
	nr		= 1;
	condition	= Info_Mod_PennerVater_Hi_Condition;
	information	= Info_Mod_PennerVater_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobre popoludnie, starszy mezczyzna.";
};

FUNC INT Info_Mod_PennerVater_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Penner_NochDa))
	&& (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_PennerVater_Hi_Info()
{
	Info_Mod_PennerVater_Gruss();

	AI_Output(hero, self, "Info_Mod_PennerVater_Hi_15_00"); //Jego zona....
	AI_Output(self, hero, "Info_Mod_PennerVater_Hi_03_01"); //Wczesnego ranka za darmo nigdy nie zrobil.
	AI_Output(hero, self, "Info_Mod_PennerVater_Hi_15_02"); //... umiera. Na przejazd potrzebuje troche pieniedzy.
	AI_Output(self, hero, "Info_Mod_PennerVater_Hi_03_03"); //Oszczedzaj swój czas, a bedziesz mial klopoty.
	AI_Output(hero, self, "Info_Mod_PennerVater_Hi_15_04"); //Prawda! Ale moze jednak masz troche zlota....

	B_GiveInvItems	(self, hero, ItMi_Gold, 2);

	AI_Output(self, hero, "Info_Mod_PennerVater_Hi_03_05"); //Wróbel w dloni jest lepszy niz golebica na dachu.
	AI_Output(hero, self, "Info_Mod_PennerVater_Hi_15_06"); //Mówi. Nie wiem.....
	AI_Output(self, hero, "Info_Mod_PennerVater_Hi_03_07"); //Kto nie czczy monety, ten nie jest godzien skarbu.

	Info_Mod_PennerVater_Liste();

	B_LogEntry	(TOPIC_MOD_JG_PENNERSVATER, "To zabawny kolega, stary czlowiek. Chce wiedziec, gdzie dostal te wszystkie wypowiedzi. Zobaczmy, czy mam wszystko, czego chce stary czlowiek: chleb, kielbase, gulasz, wino, ser i jablko. Bede musial wrócic do dealera.");
};

INSTANCE Info_Mod_PennerVater_Aufgabe (C_INFO)
{
	npc		= Mod_7541_OUT_PennerVater_REL;
	nr		= 1;
	condition	= Info_Mod_PennerVater_Aufgabe_Condition;
	information	= Info_Mod_PennerVater_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj. Jedzenie i picie utrzymuje cialo i dusze razem.";
};

FUNC INT Info_Mod_PennerVater_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_PennerVater_Hi))
	&& (Npc_HasItems(hero, ItFo_Bread) >= 1)
	&& (Npc_HasItems(hero, ItFo_Sausage) >= 1)
	&& (Npc_HasItems(hero, ItFo_Stew) >= 1)
	&& (Npc_HasItems(hero, ItFo_Apple) >= 1)
	&& (Npc_HasItems(hero, ItFo_Wine) >= 1)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_PennerVater_Aufgabe_Info()
{
	Info_Mod_PennerVater_Abgabe();

	AI_Output(self, hero, "Info_Mod_PennerVater_Aufgabe_03_00"); //Ciche wody sa glebokie. I glosne opadanie.
	AI_Output(hero, self, "Info_Mod_PennerVater_Aufgabe_15_01"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_PennerVater_Aufgabe_03_02"); //Najlepsze ryby plywaja po dnie.
	AI_Output(hero, self, "Info_Mod_PennerVater_Aufgabe_15_03"); //Aha! Ale ja tego nie rozumiem.
	AI_Output(self, hero, "Info_Mod_PennerVater_Aufgabe_03_04"); //Zaden pan jeszcze nie upadl z nieba.
	AI_Output(hero, self, "Info_Mod_PennerVater_Aufgabe_15_05"); //Ale woda, prawda?

	Info_Mod_PennerVater_Schlusssatz();

	B_LogEntry	(TOPIC_MOD_JG_PENNERSVATER, "Hm.... glebokiej wody.... wypadac glosno..... góra najlepszy na dole.... Spadajaca woda..... Hm....");
	
	Wld_InsertItem(ItMi_Piratenschatz, "FP_ITEM_PIRATENSCHATZ");
};

INSTANCE Info_Mod_PennerVater_Kimon (C_INFO)
{
	npc		= Mod_7541_OUT_PennerVater_REL;
	nr		= 1;
	condition	= Info_Mod_PennerVater_Kimon_Condition;
	information	= Info_Mod_PennerVater_Kimon_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobre popoludnie, starszy mezczyzna.";
};

FUNC INT Info_Mod_PennerVater_Kimon_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Penner_Kimon3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_PennerVater_Kimon_Info()
{
	Info_Mod_PennerVater_Gruss();

	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon_15_00"); //Wyslal mnie tutaj....
	AI_Output(self, hero, "Info_Mod_PennerVater_Kimon_03_01"); //Tutaj jest tak dobrze jak gdziekolwiek indziej.
	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon_15_02"); //... i powiedzial, ze....
	AI_Output(self, hero, "Info_Mod_PennerVater_Kimon_03_03"); //Kies maja krótkie nogi.
	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon_15_04"); //(glosno) powiedzial, ze masz radosne dozowniki.
	AI_Output(self, hero, "Info_Mod_PennerVater_Kimon_03_05"); //Bogate posiadanie czyni dusze biedna.

	AI_TurnAway	(self, hero);

	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon_15_06"); //Nie moge tak dalej isc. Zapytaj inaczej.

	AI_TurnToNpc	(self, hero);

	Info_Mod_PennerVater_Liste();

	B_LogEntry	(TOPIC_MOD_KIMON_FREUDENSPENDER, "To zabawny kolega, stary czlowiek. Chce wiedziec, gdzie dostal te wszystkie wypowiedzi. Zobaczmy, czy mam wszystko, czego chce stary czlowiek: chleb, kielbase, gulasz, wino, ser i jablko. Bede musial wrócic do dealera.");
};

INSTANCE Info_Mod_PennerVater_Kimon2 (C_INFO)
{
	npc		= Mod_7541_OUT_PennerVater_REL;
	nr		= 1;
	condition	= Info_Mod_PennerVater_Kimon2_Condition;
	information	= Info_Mod_PennerVater_Kimon2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj. Jedzenie i picie utrzymuje cialo i dusze razem.";
};

FUNC INT Info_Mod_PennerVater_Kimon2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_PennerVater_Kimon))
	&& (Npc_HasItems(hero, ItFo_Bread) >= 1)
	&& (Npc_HasItems(hero, ItFo_Sausage) >= 1)
	&& (Npc_HasItems(hero, ItFo_Stew) >= 1)
	&& (Npc_HasItems(hero, ItFo_Apple) >= 1)
	&& (Npc_HasItems(hero, ItFo_Wine) >= 1)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_PennerVater_Kimon2_Info()
{
	Info_Mod_PennerVater_Abgabe();

	AI_Output(self, hero, "Info_Mod_PennerVater_Kimon2_03_00"); //Kto daje radosc ma klucz do szczescia.
	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon2_15_01"); //Uh-huh. Masz wiec klucz? Czy moge ja miec?
	AI_Output(self, hero, "Info_Mod_PennerVater_Kimon2_03_02"); //Pien bogaty czlowiek jest przepelniony.
	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon2_15_03"); //Hmm. Dobry czlowiek zasluguje na klucz do królestwa niebieskiego.
	AI_Output(self, hero, "Info_Mod_PennerVater_Kimon2_03_04"); //I tylko madry czlowiek osiaga swój cel.

	B_GiveInvItems	(self, hero, ItKe_PennerVaterFreudenspender, 1);

	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon2_15_05"); //Czy moze mi pan powiedziec wiecej?

	Info_Mod_PennerVater_Schlusssatz();

	B_LogEntry	(TOPIC_MOD_KIMON_FREUDENSPENDER, "Skomplikowany czlowiek. Ale mam nuty kosci. Kimon bedzie zaskoczony.");
};

INSTANCE Info_Mod_PennerVater_EXIT (C_INFO)
{
	npc		= Mod_7541_OUT_PennerVater_REL;
	nr		= 1;
	condition	= Info_Mod_PennerVater_EXIT_Condition;
	information	= Info_Mod_PennerVater_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_PennerVater_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_PennerVater_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
