INSTANCE Info_Mod_GeistDesAusgleichs_Hi (C_INFO)
{
	npc		= GeistDesAusgleichs_11070_EIS;
	nr		= 1;
	condition	= Info_Mod_GeistDesAusgleichs_Hi_Condition;
	information	= Info_Mod_GeistDesAusgleichs_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_GeistDesAusgleichs_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Hi_22_00"); //Jestem duchem rekompensaty. Nakladam test na tych, którzy sa dla mnie godni.
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Hi_15_01"); //Czy? Nie tak szybko! O co w tym wszystkim chodzi?
	AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Hi_22_02"); //Chodzi o zrozumienie pewnych cnót. Postawie cie na zagadkach.
	AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Hi_22_03"); //Jesli bedziesz mógl poprawnie odpowiedziec na wszystkie pytania, otrzymasz nagrode.
	AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Hi_22_04"); //Ale wiedz, ze nikt nigdy nie przeszedl.
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Hi_15_05"); //Czy istnieje jakies niebezpieczenstwo, jesli zawiode?
	AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Hi_22_06"); //Tylko te, które musisz na nowo rozpoczac test, jesli chcesz zdac test. Wiec osmielic sie cie?
};

FUNC VOID B_SetRaetsel()
{
	Mod_Raetsel01 = Hlp_Random(10);

	var int ptr; ptr = MEM_StackPos.position;

	if (Mod_Raetsel02 == Mod_Raetsel01)
	{	
		Mod_Raetsel02 = Hlp_Random(10);

		MEM_StackPos.position = ptr;
	};

	ptr = MEM_StackPos.position;

	if (Mod_Raetsel03 == Mod_Raetsel01)
	|| (Mod_Raetsel03 == Mod_Raetsel02)
	{	
		Mod_Raetsel03 = Hlp_Random(10);

		MEM_StackPos.position = ptr;
	};

	ptr = MEM_StackPos.position;

	if (Mod_Raetsel04 == Mod_Raetsel01)
	|| (Mod_Raetsel04 == Mod_Raetsel02)
	|| (Mod_Raetsel04 == Mod_Raetsel03)
	{	
		Mod_Raetsel04 = Hlp_Random(10);

		MEM_StackPos.position = ptr;
	};

	ptr = MEM_StackPos.position;

	if (Mod_Raetsel05 == Mod_Raetsel01)
	|| (Mod_Raetsel05 == Mod_Raetsel02)
	|| (Mod_Raetsel05 == Mod_Raetsel03)
	|| (Mod_Raetsel05 == Mod_Raetsel04)
	{	
		Mod_Raetsel05 = Hlp_Random(10);

		MEM_StackPos.position = ptr;
	};
};

FUNC VOID B_Raetseln(var int raetsel)
{
	Mod_GdG_Frage += 1;

	Info_ClearChoices	(Info_Mod_GeistDesAusgleichs_Raetsel);

	if (raetsel == 0)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_01_22_00"); //Kto padl ofiara poteznego mlotka?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Odwazny.", Info_Mod_GeistDesAusgleichs_Raetsel_01_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Zwierze.", Info_Mod_GeistDesAusgleichs_Raetsel_01_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Demon.", Info_Mod_GeistDesAusgleichs_Raetsel_01_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Nieumarli.", Info_Mod_GeistDesAusgleichs_Raetsel_01_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Straznik.", Info_Mod_GeistDesAusgleichs_Raetsel_01_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Golem.", Info_Mod_GeistDesAusgleichs_Raetsel_01_A);
	}
	else if (raetsel == 1)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_02_22_01"); //Jaki ciezar poniosla ostatnia osoba?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Chciwosc.", Info_Mod_GeistDesAusgleichs_Raetsel_02_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Ciemnosc.", Info_Mod_GeistDesAusgleichs_Raetsel_02_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Trucizna.", Info_Mod_GeistDesAusgleichs_Raetsel_02_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Zgnilizna.", Info_Mod_GeistDesAusgleichs_Raetsel_02_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Krew.", Info_Mod_GeistDesAusgleichs_Raetsel_02_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Plaga.", Info_Mod_GeistDesAusgleichs_Raetsel_02_A);
	}
	else if (raetsel == 2)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_03_22_02"); //Co walczylo z tymi dwoma, którzy byli tak podobni do siebie?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Wokól ziemi.", Info_Mod_GeistDesAusgleichs_Raetsel_03_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Osiedle.", Info_Mod_GeistDesAusgleichs_Raetsel_03_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "O zyciu.", Info_Mod_GeistDesAusgleichs_Raetsel_03_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "O odrodzeniu.", Info_Mod_GeistDesAusgleichs_Raetsel_03_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Sila.", Info_Mod_GeistDesAusgleichs_Raetsel_03_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "O zlocie.", Info_Mod_GeistDesAusgleichs_Raetsel_03_A);
	}
	else if (raetsel == 3)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_04_22_03"); //Najezdzca wierzyl, ze jest otoczony przez Boga, a jednak spadl na jaka moc?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Zwierze.", Info_Mod_GeistDesAusgleichs_Raetsel_04_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Zadza.", Info_Mod_GeistDesAusgleichs_Raetsel_04_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Chciwosc.", Info_Mod_GeistDesAusgleichs_Raetsel_04_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Demoniczny.", Info_Mod_GeistDesAusgleichs_Raetsel_04_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Potepienie.", Info_Mod_GeistDesAusgleichs_Raetsel_04_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Ciemnosc.", Info_Mod_GeistDesAusgleichs_Raetsel_04_A);
	}
	else if (raetsel == 4)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_05_22_04"); //Dwa od dawna juz minely. Jeden z nich wzial na siebie ciezar kamienia. Bo za co?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Tron dla drugiego.", Info_Mod_GeistDesAusgleichs_Raetsel_05_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Jako jego ciezar.", Info_Mod_GeistDesAusgleichs_Raetsel_05_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Jako wiezienie.", Info_Mod_GeistDesAusgleichs_Raetsel_05_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Jako jego sluga.", Info_Mod_GeistDesAusgleichs_Raetsel_05_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Przenoszenie jego mocy.", Info_Mod_GeistDesAusgleichs_Raetsel_05_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Jako swiadectwo jego pochodzenia.", Info_Mod_GeistDesAusgleichs_Raetsel_05_A);
	}
	else if (raetsel == 5)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_06_22_05"); //Przyszedl z zewnatrz i wszedl do sali gminy. Czym byl przesiakniety?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Od Boga.", Info_Mod_GeistDesAusgleichs_Raetsel_06_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Z kamienia.", Info_Mod_GeistDesAusgleichs_Raetsel_06_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Watpliwosci.", Info_Mod_GeistDesAusgleichs_Raetsel_06_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Z wody.", Info_Mod_GeistDesAusgleichs_Raetsel_06_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Od infamii.", Info_Mod_GeistDesAusgleichs_Raetsel_06_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Z ognia.", Info_Mod_GeistDesAusgleichs_Raetsel_06_A);
	}
	else if (raetsel == 6)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_07_22_06"); //Wróg wszedl na brzeg Boga. Co go uderzylo?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Z wartownika.", Info_Mod_GeistDesAusgleichs_Raetsel_07_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Od slugi.", Info_Mod_GeistDesAusgleichs_Raetsel_07_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Z wlasnego obrazu.", Info_Mod_GeistDesAusgleichs_Raetsel_07_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Z blyskawicy.", Info_Mod_GeistDesAusgleichs_Raetsel_07_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Z lancy.", Info_Mod_GeistDesAusgleichs_Raetsel_07_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Od miecza.", Info_Mod_GeistDesAusgleichs_Raetsel_07_A);
	}
	else if (raetsel == 7)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_08_22_07"); //On dal mu schronienie, jedzenie i picie, nieswiadomy, ze nie dosc stworzyc go. Bo czego szukal jego gosc?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Po jego dzieciaku.", Info_Mod_GeistDesAusgleichs_Raetsel_08_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Wedlug jego wiedzy.", Info_Mod_GeistDesAusgleichs_Raetsel_08_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Po zonie.", Info_Mod_GeistDesAusgleichs_Raetsel_08_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Po jego posiadaniu.", Info_Mod_GeistDesAusgleichs_Raetsel_08_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Do jego duszy.", Info_Mod_GeistDesAusgleichs_Raetsel_08_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Po jego zyciu.", Info_Mod_GeistDesAusgleichs_Raetsel_08_A);
	}
	else if (raetsel == 8)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_09_22_08"); //Okazal wielka odwage, godna nieba. Jaki byl instrument jego czynów?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Niewiedza.", Info_Mod_GeistDesAusgleichs_Raetsel_09_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Nieosloniete rece.", Info_Mod_GeistDesAusgleichs_Raetsel_09_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Eliksir.", Info_Mod_GeistDesAusgleichs_Raetsel_09_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Magia.", Info_Mod_GeistDesAusgleichs_Raetsel_09_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Jego wola.", Info_Mod_GeistDesAusgleichs_Raetsel_09_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Miecz.", Info_Mod_GeistDesAusgleichs_Raetsel_09_A);
	}
	else if (raetsel == 9)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_10_22_09"); //Zabral sie z wlasnosci drugiego czlowieka, nie zdajac sobie sprawy, ze jego wlasne przeznaczenie zostalo z nim zapieczetowane. Bo co tam ukryto zlo?

		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Plaga.", Info_Mod_GeistDesAusgleichs_Raetsel_10_F);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Trucizna.", Info_Mod_GeistDesAusgleichs_Raetsel_10_E);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Szalenstwo.", Info_Mod_GeistDesAusgleichs_Raetsel_10_D);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Nieszczescie.", Info_Mod_GeistDesAusgleichs_Raetsel_10_C);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Demon.", Info_Mod_GeistDesAusgleichs_Raetsel_10_B);
		Info_AddChoice	(Info_Mod_GeistDesAusgleichs_Raetsel, "Smierc wskutek pozaru.", Info_Mod_GeistDesAusgleichs_Raetsel_10_A);
	};
};

FUNC VOID B_RaetselAuswertung()
{
	if (Mod_GdG_Richtig == 5)
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_RaetselAuswertung_01_22_00"); //Odpowiedzial pan madrze i slusznie.
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_RaetselAuswertung_01_22_01"); //Rozumiesz znaczenie humoru, a ja zwieksze twoja zdolnosc wplywania na innych ludzi.
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_RaetselAuswertung_01_22_02"); //Moja praca jest z tym zwiazana. Pozegnanie.

		B_GivePlayerXP	(1500);

		B_ShowGivenThings	("Runeza zapomnienia, 3 rzuty czarów leku i 5 rzutów zaklec snu.");

		CreateInvItems	(hero, ItRu_Charm, 1);
		CreateInvItems	(hero, ItSc_Fear, 3);
		CreateInvItems	(hero, ItSc_Sleep, 5);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_RaetselAuswertung_01_22_03"); //Panskie odpowiedzi byly bledne. Brakuje Ci albo wiedzy, albo rozumienia.
		AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_RaetselAuswertung_01_22_04"); //Wróc do domu, gdy bedziesz gotowy.
	};

	Info_ClearChoices	(Info_Mod_GeistDesAusgleichs_Raetsel);
};

FUNC VOID B_Raetseln2()
{
	if (Mod_GdG_Frage == 1)
	{
		B_Raetseln(Mod_Raetsel02);
	}
	else if (Mod_GdG_Frage == 2)
	{
		B_Raetseln(Mod_Raetsel03);
	}
	else if (Mod_GdG_Frage == 3)
	{
		B_Raetseln(Mod_Raetsel04);
	}
	else if (Mod_GdG_Frage == 4)
	{
		B_Raetseln(Mod_Raetsel05);
	}
	else
	{
		B_RaetselAuswertung();
	};
};

INSTANCE Info_Mod_GeistDesAusgleichs_Raetsel (C_INFO)
{
	npc		= GeistDesAusgleichs_11070_EIS;
	nr		= 1;
	condition	= Info_Mod_GeistDesAusgleichs_Raetsel_Condition;
	information	= Info_Mod_GeistDesAusgleichs_Raetsel_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce przeprowadzic panski test.";
};

FUNC INT Info_Mod_GeistDesAusgleichs_Raetsel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GeistDesAusgleichs_Hi))
	&& (Mod_GdG_Richtig != 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_Info()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_15_00"); //Chce przeprowadzic panski test.
	AI_Output(self, hero, "Info_Mod_GeistDesAusgleichs_Raetsel_22_01"); //I niech tak bedzie. Sluchaj i odpowiedz ostroznie.

	Mod_GdG_Frage = 0;

	Mod_GdG_Richtig = 0;

	// Auswürfeln der 5 Fragen

	B_SetRaetsel();

	B_Raetseln(Mod_Raetsel01);
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_01_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_01_F_15_00"); //Odwazny.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_01_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_01_E_15_00"); //Zwierze.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_01_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_01_D_15_00"); //Demon.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_01_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_01_C_15_00"); //Nieumarli.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_01_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_01_B_15_00"); //Straznik.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_01_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_01_A_15_00"); //Golem.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_02_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_02_F_15_00"); //Chciwosc.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_02_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_02_E_15_00"); //Ciemnosc.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_02_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_02_D_15_00"); //Trucizna.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_02_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_02_C_15_00"); //Zgnilizna.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_02_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_02_B_15_00"); //Krew.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_02_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_02_A_15_00"); //Plaga.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_03_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_03_F_15_00"); //Wokól ziemi.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_03_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_03_E_15_00"); //Osiedle.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_03_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_03_D_15_00"); //O zyciu.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_03_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_03_C_15_00"); //O odrodzeniu.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_03_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_03_B_15_00"); //Sila.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_03_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_03_A_15_00"); //O zlocie.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_04_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_04_F_15_00"); //Zwierze.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_04_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_04_E_15_00"); //Zadza.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_04_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_04_D_15_00"); //Chciwosc.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_04_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_04_C_15_00"); //Demoniczny.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_04_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_04_B_15_00"); //Potepienie.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_04_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_04_A_15_00"); //Ciemnosc.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_05_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_05_F_15_00"); //Tron dla drugiego.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_05_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_05_E_15_00"); //Jako jego ciezar.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_05_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_05_D_15_00"); //Jako wiezienie.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_05_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_05_C_15_00"); //Jako jego sluga.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_05_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_05_B_15_00"); //Przenoszenie jego mocy.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_05_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_05_A_15_00"); //Jako swiadectwo jego pochodzenia.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_06_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_06_F_15_00"); //Od Boga.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_06_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_06_E_15_00"); //Z kamienia.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_06_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_06_D_15_00"); //Watpliwosci.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_06_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_06_C_15_00"); //Z wody.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_06_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_06_B_15_00"); //Od infamii.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_06_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_06_A_15_00"); //Z ognia.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_07_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_07_F_15_00"); //Z wartownika.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_07_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_07_E_15_00"); //Od slugi.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_07_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_07_D_15_00"); //Z wlasnego obrazu.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_07_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_07_C_15_00"); //Z blyskawicy.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_07_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_07_B_15_00"); //Z lancy.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_07_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_07_A_15_00"); //Od miecza.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_08_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_08_F_15_00"); //Po jego dzieciaku.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_08_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_08_E_15_00"); //Wedlug jego wiedzy.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_08_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_08_D_15_00"); //Po zonie.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_08_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_08_C_15_00"); //Po jego posiadaniu.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_08_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_08_B_15_00"); //Do jego duszy.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_08_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_08_A_15_00"); //Po jego zyciu.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_09_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_09_F_15_00"); //Niewiedza.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_09_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_09_E_15_00"); //Nieosloniete rece.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_09_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_09_D_15_00"); //Eliksir.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_09_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_09_C_15_00"); //Magia.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_09_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_09_B_15_00"); //Jego wola.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_09_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_09_A_15_00"); //Miecz.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_10_F()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_10_F_15_00"); //Plaga.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_10_E()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_10_E_15_00"); //Trucizna.

	Mod_GdG_Richtig += 1;

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_10_D()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_10_D_15_00"); //Szalenstwo.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_10_C()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_10_C_15_00"); //Nieszczescie.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_10_B()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_10_B_15_00"); //Demon.

	B_Raetseln2();
};

FUNC VOID Info_Mod_GeistDesAusgleichs_Raetsel_10_A()
{
	AI_Output(hero, self, "Info_Mod_GeistDesAusgleichs_Raetsel_10_A_15_00"); //Smierc wskutek pozaru.

	B_Raetseln2();
};

INSTANCE Info_Mod_GeistDesAusgleichs_EXIT (C_INFO)
{
	npc		= GeistDesAusgleichs_11070_EIS;
	nr		= 1;
	condition	= Info_Mod_GeistDesAusgleichs_EXIT_Condition;
	information	= Info_Mod_GeistDesAusgleichs_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_GeistDesAusgleichs_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_GeistDesAusgleichs_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
