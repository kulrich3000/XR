INSTANCE Info_Mod_Petunia_Hi (C_INFO)
{
	npc		= Mod_7594_OUT_Petunia_TUG;
	nr		= 1;
	condition	= Info_Mod_Petunia_Hi_Condition;
	information	= Info_Mod_Petunia_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Petunia_Hi_Condition()
{
	if (Mod_VMG_Pruefung_Barriere == 3)
	&& (Mod_IsFleischwanze == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Petunia_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_43_00"); //Co? Jak sie tu dostales?

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	Info_AddChoice	(Info_Mod_Petunia_Hi, "Transformacja zwierzat. Nie zwracales uwagi.", Info_Mod_Petunia_Hi_B);
	Info_AddChoice	(Info_Mod_Petunia_Hi, "Jak sie tu dostales?", Info_Mod_Petunia_Hi_A);
};

FUNC VOID Info_Mod_Petunia_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_B_15_00"); //Transformacja zwierzat. Nie zwracales uwagi.
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_B_43_01"); //Damn, ktos tamta piekla te czesc! Ale dziekuje za napiwek.

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	Info_AddChoice	(Info_Mod_Petunia_Hi, "Co Pan tutaj robi?", Info_Mod_Petunia_Hi_D);
	Info_AddChoice	(Info_Mod_Petunia_Hi, "Kim jestes?", Info_Mod_Petunia_Hi_C);
};

FUNC VOID Info_Mod_Petunia_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_A_15_00"); //Jak sie tu dostales?
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_A_43_01"); //Zadaje tutaj pytania. Nie sadze, zebys mógl stac sie niegrzecznym chlopcem.

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	Info_AddChoice	(Info_Mod_Petunia_Hi, "Co Pan tutaj robi?", Info_Mod_Petunia_Hi_D);
	Info_AddChoice	(Info_Mod_Petunia_Hi, "Kim jestes?", Info_Mod_Petunia_Hi_C);
};

FUNC VOID Info_Mod_Petunia_Hi_E()
{
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_E_43_00"); //Teraz wyjde z drogi, jestem zajety.

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	Info_AddChoice	(Info_Mod_Petunia_Hi, "Nie mozesz, albo zapomniales o barierze?", Info_Mod_Petunia_Hi_G);
	Info_AddChoice	(Info_Mod_Petunia_Hi, "W rzeczywistosci planowalem zatrzymac pana.", Info_Mod_Petunia_Hi_F);
};

FUNC VOID Info_Mod_Petunia_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_D_15_00"); //Co Pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_D_43_01"); //Przeprowadz zgube! I wtedy bede mial herbate. Uwielbiam herbate.

	Mod_VMG_Pruefung_Petunia += 1;

	if (Mod_VMG_Pruefung_Petunia == 1)
	{
		Info_ClearChoices	(Info_Mod_Petunia_Hi);

		Info_AddChoice	(Info_Mod_Petunia_Hi, "Kim jestes?", Info_Mod_Petunia_Hi_C);		
	}
	else
	{
		Info_Mod_Petunia_Hi_E();
	};
};

FUNC VOID Info_Mod_Petunia_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_C_15_00"); //Kim jestes?
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_C_43_01"); //Moje imie nie ma znaczenia, ale mysle, ze moje dzialania mnie wyrózniaja.

	Mod_VMG_Pruefung_Petunia += 1;

	if (Mod_VMG_Pruefung_Petunia == 1)
	{
		Info_ClearChoices	(Info_Mod_Petunia_Hi);

		Info_AddChoice	(Info_Mod_Petunia_Hi, "Co Pan tutaj robi?", Info_Mod_Petunia_Hi_D);		
	}
	else
	{
		Info_Mod_Petunia_Hi_E();
	};
};

FUNC VOID Info_Mod_Petunia_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_G_15_00"); //Nie mozesz, albo zapomniales o barierze?
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_G_43_01"); //Prawie. Ale to nie ma znaczenia, wtedy po prostu wychodzisz z drogi. (igly)

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	Info_AddChoice	(Info_Mod_Petunia_Hi, "Idziemy wiec tutaj.", Info_Mod_Petunia_Hi_I);
	Info_AddChoice	(Info_Mod_Petunia_Hi, "Poczekaj, mozemy o wszystkim porozmawiac.", Info_Mod_Petunia_Hi_H);
};

FUNC VOID Info_Mod_Petunia_Hi_J()
{
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_J_43_00"); //Cala pulapka. Eliksir, kolejna wizja i zdeponowany platek. Po prostu wszystko!
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_J_15_01"); //Dziekuje za informacje, musze isc.
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_J_43_02"); //Nie sadzisz, ze po prostu daje sie zwiedzic? Znasz mój plan, czy nie?
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_J_15_03"); //To wlasnie pomyslalem....
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_J_43_04"); //To zabawne, chlopiec. Mezczyzni, wysadzac mu swiatla. (igly)

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Petunia_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_F_15_00"); //W rzeczywistosci planowalem zatrzymac pana.
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_F_43_01"); //Ach, tak? Nikt nie moze mnie teraz powstrzymac! Wszystko w zestawie!
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_F_15_02"); //Co jest przygotowane?

	Info_Mod_Petunia_Hi_J();
};

FUNC VOID Info_Mod_Petunia_Hi_I()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_I_15_00"); //Idziemy wiec tutaj.
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_I_43_01"); //Zabierz go, wez go!

	Info_ClearChoices	(Info_Mod_Petunia_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Petunia_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_H_15_00"); //Poczekaj, mozemy o wszystkim porozmawiac.
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_H_43_01"); //Nie chce mówic. Poza tym juz nie dziala, jest za pózno.
	AI_Output(hero, self, "Info_Mod_Petunia_Hi_H_15_02"); //Co jest za pózno?
	AI_Output(self, hero, "Info_Mod_Petunia_Hi_H_43_03"); //Wszystko w zestawie!

	Info_Mod_Petunia_Hi_J();
};

INSTANCE Info_Mod_Petunia_Pruefung (C_INFO)
{
	npc		= Mod_7594_OUT_Petunia_TUG;
	nr		= 1;
	condition	= Info_Mod_Petunia_Pruefung_Condition;
	information	= Info_Mod_Petunia_Pruefung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kostki boczne beda gotowe.";
};

FUNC INT Info_Mod_Petunia_Pruefung_Condition()
{
	if (Mod_VMG_Pruefung_Petunia == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Petunia_Pruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_15_00"); //Kostki boczne beda gotowe.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_43_01"); //Nie jestes tak slaby jak wygladasz.
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_15_02"); //Mysle, ze nadszedl czas, abys mi wyjasnil, co sie tu dzieje.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_43_03"); //Znasz plan. Co jeszcze chcesz wiedziec?

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Teraz powiedz mi kim jestes.", Info_Mod_Petunia_Pruefung_B);
	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Dlaczego wszystko to wszystko?", Info_Mod_Petunia_Pruefung_A);
};

FUNC VOID Info_Mod_Petunia_Pruefung_C()
{
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_C_43_00"); //Przemieniajacy sie magowie zniszczyli moje zycie!
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_C_43_01"); //Bylem jednym z nich, ale nigdy nie bylem traktowany jak pelnoprawny czlonek. Prawdopodobnie dlatego, ze jestem kobieta. Pah!
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_C_43_02"); //Predzej czy pózniej zaczalem nad nimi pracowac. To takie proste.
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_C_15_03"); //Co zrobiliscie?
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_C_43_04"); //Z najmniejszymi wykroczeniami, nalozyli mi juz najwyzsze kary. Tak niesprawiedliwy!

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Calkowicie to rozumiem.", Info_Mod_Petunia_Pruefung_E);
	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Male kary?", Info_Mod_Petunia_Pruefung_D);
};

FUNC VOID Info_Mod_Petunia_Pruefung_B()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_B_15_00"); //Teraz powiedz mi kim jestes.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_B_43_01"); //Nazywam sie Petunia.
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_B_15_02"); //Moze troche wiecej?
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_B_43_03"); //Dopasuj sie do siebie. Cala historia.

	Info_Mod_Petunia_Pruefung_C();
};

FUNC VOID Info_Mod_Petunia_Pruefung_A()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_A_15_00"); //Dlaczego wszystko to wszystko?
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_A_43_01"); //Dlaczego? Moge wam to powiedziec!

	Info_Mod_Petunia_Pruefung_C();
};

FUNC VOID Info_Mod_Petunia_Pruefung_E()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_E_15_00"); //Calkowicie to rozumiem.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_E_43_01"); //W koncu ktos, kto mnie rozumie!

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Nie myslisz.", Info_Mod_Petunia_Pruefung_G);
	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Lacznie. Jestem gonna ide porozmawiac z Per.", Info_Mod_Petunia_Pruefung_F);
};

FUNC VOID Info_Mod_Petunia_Pruefung_H()
{
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_H_43_00"); //Co myslisz, ze robisz? Bede wylewal moje serce do ciebie, a ty pozwolisz, aby to sie zmylilo w tej nieszczesnej ziemi!
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_H_43_01"); //Co zrobilem dla Ciebie?

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "", Info_Mod_Petunia_Pruefung_E);
	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "", Info_Mod_Petunia_Pruefung_D);
};

FUNC VOID Info_Mod_Petunia_Pruefung_D()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_D_15_00"); //Male kary?
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_D_43_01"); //Tak. Przypadkowo podczas zimna przypadkowo prazylem stado owiec lub skórowanych wilków. To tam jest!
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_D_15_02"); //Mysle, ze nie masz pojecia, czym sa twoje zbrodnie.
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_D_15_03"); //Nie mozna pozostawic w spolecznosci tak nieprzewidywalnej kobiety.

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Powodowales wiele klopotów magikom zmian, a wiec i mnie.", Info_Mod_Petunia_Pruefung_J);
	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Co zamierzasz teraz zrobic?", Info_Mod_Petunia_Pruefung_I);
};

FUNC VOID Info_Mod_Petunia_Pruefung_G()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_G_15_00"); //Nie myslisz.

	Info_Mod_Petunia_Pruefung_H();
};

FUNC VOID Info_Mod_Petunia_Pruefung_F()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_F_15_00"); //Lacznie. Jestem gonna ide porozmawiac z Per.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_F_43_01"); //Dziekuje bardzo, nigdy nie zapomne!

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Przyrzeklem Petnii, ze porozmawiam z Pera o tym, co teraz robic. Nie bedzie na razie sprawiala zadnych klopotów.");

	Mod_VMG_Pruefung_Petunia = 6;

	Wld_SendTrigger	("EVT_BARRIERE");

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);
};

FUNC VOID Info_Mod_Petunia_Pruefung_J()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_J_15_00"); //Powodowales wiele klopotów magikom zmian, a wiec i mnie.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_J_43_01"); //Ach, przyjdzcie. To wszystko wyprostowales, czyz nie? Naprawde nie mozna mnie za to winic.

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Co zamierzasz teraz zrobic?", Info_Mod_Petunia_Pruefung_I);
};

FUNC VOID Info_Mod_Petunia_Pruefung_I()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_I_15_00"); //Co zamierzasz teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_I_43_01"); //Co powinienem zrobic? Wszystko zrujnowales. Znasz plan.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_I_43_02"); //Idz i rób wszystko, co musisz zrobic teraz.

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);

	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Porozmawiam z Per o tym, jak postepowac.", Info_Mod_Petunia_Pruefung_L);
	Info_AddChoice	(Info_Mod_Petunia_Pruefung, "Porozmawiam z Peronem o twojej karze.", Info_Mod_Petunia_Pruefung_K);
};

FUNC VOID Info_Mod_Petunia_Pruefung_L()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_L_15_00"); //Porozmawiam z Per o tym, jak postepowac.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_L_43_01"); //Zrób to.

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Przyrzeklem Petnii, ze porozmawiam z Pera o tym, co teraz robic. Nie bedzie na razie sprawiala zadnych klopotów.");

	Mod_VMG_Pruefung_Petunia = 6;

	Wld_SendTrigger	("EVT_BARRIERE");

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);
};

FUNC VOID Info_Mod_Petunia_Pruefung_K()
{
	AI_Output(hero, self, "Info_Mod_Petunia_Pruefung_K_15_00"); //Porozmawiam z Peronem o twojej karze.
	AI_Output(self, hero, "Info_Mod_Petunia_Pruefung_K_43_01"); //Jesli uwazasz, ze jest to sluszne.....

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Powiem Peronowi, ze Petunia stoi za tym wszystkim i omówie z nim, jak sie ich pozbyc.");

	Mod_VMG_Pruefung_Petunia = 7;

	Wld_SendTrigger	("EVT_BARRIERE");

	Info_ClearChoices	(Info_Mod_Petunia_Pruefung);
};

INSTANCE Info_Mod_Petunia_EXIT (C_INFO)
{
	npc		= Mod_7594_OUT_Petunia_TUG;
	nr		= 1;
	condition	= Info_Mod_Petunia_EXIT_Condition;
	information	= Info_Mod_Petunia_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Petunia_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Petunia_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
