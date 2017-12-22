INSTANCE Info_Mod_Allievo_Hi (C_INFO)
{
	npc		= Mod_7033_OUT_Allievo_NW;
	nr		= 1;
	condition	= Info_Mod_Allievo_Hi_Condition;
	information	= Info_Mod_Allievo_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Allievo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Allievo_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_07_00"); //Czego od mnie oczekujesz?

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	Info_AddChoice	(Info_Mod_Allievo_Hi, "Nieprawidlowe pytanie. Czego od mnie oczekujesz?", Info_Mod_Allievo_Hi_B);
	Info_AddChoice	(Info_Mod_Allievo_Hi, "Czy jestes sam?", Info_Mod_Allievo_Hi_A);
};

FUNC VOID Info_Mod_Allievo_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_B_15_00"); //Nieprawidlowe pytanie. Czego od mnie oczekujesz?
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_B_07_01"); //(ponowne laczenie) Ahhhh..... Mój mistrz obiecal mi, ze moge zrobic to, co chce z wami zrobic.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_B_07_02"); //Niestety, teraz jestem sam....

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	Info_AddChoice	(Info_Mod_Allievo_Hi, "Kto inny jest tu zazwyczaj?", Info_Mod_Allievo_Hi_D);
	Info_AddChoice	(Info_Mod_Allievo_Hi, "Cóz za zbieg okolicznosci, ze jestes sam. Teraz Twoja kolej!", Info_Mod_Allievo_Hi_C);
};

FUNC VOID Info_Mod_Allievo_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_A_15_00"); //Czy jestes sam?
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_A_07_01"); //Byc moze teraz, ale moi przyjaciele wróca w kazdej chwili. Czekacie i zobaczycie!

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	Info_AddChoice	(Info_Mod_Allievo_Hi, "Kto inny jest tu zazwyczaj?", Info_Mod_Allievo_Hi_D);
	Info_AddChoice	(Info_Mod_Allievo_Hi, "Cóz za zbieg okolicznosci, ze jestes sam. Teraz Twoja kolej!", Info_Mod_Allievo_Hi_C);
};

FUNC VOID Info_Mod_Allievo_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_D_15_00"); //Kto inny jest tu zazwyczaj?
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_D_07_01"); //Bruno, nasz zalobny zlodziej i sprytna Grima. Obydwaj znakomici ludzie.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_D_07_02"); //Uh.... Oni sa w drodze, ale to juz dawno przed powrotem.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_D_07_03"); //Do tego czasu powinienem isc i zbierac niektóre rosliny, dobrze, wiesz, lecznicze ziola i rzeczy, które mozna uzyc. (dlugi, zmudny smiech)

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	Info_AddChoice	(Info_Mod_Allievo_Hi, "Jesli lubisz mówic, powiedz mi o Canthar.", Info_Mod_Allievo_Hi_F);
	Info_AddChoice	(Info_Mod_Allievo_Hi, "Wystarczy! Bedziesz cierpiec za dzialania Canthara!", Info_Mod_Allievo_Hi_E);
};

FUNC VOID Info_Mod_Allievo_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_C_15_00"); //Cóz za zbieg okolicznosci, ze jestes sam. Teraz Twoja kolej!
	AI_Output(self, hero, "DEFAULT"); //
	
	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Allievo_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_F_15_00"); //Jesli lubisz mówic, powiedz mi o Canthar.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_F_07_01"); //Gdzie mam zaczac? No cóz, on mówi we snie. Dlatego tez wiem, ze lubi Sonje.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_F_07_02"); //Czasami twierdzi, ze jego celem jest zdobycie dominacji nad swiatem.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_F_07_03"); //Ale nie sadze, co jest tego sensem? To tylko dodatkowy problem.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_F_07_04"); //Uh.... Bruno, Grima, chwycic go!

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);

	Mod_Allievo_Zusatzpower = 1;

	Wld_InsertNpc	(Mod_7034_OUT_Bruno_NW, "WAY_PASS_MILL_04");
	Wld_InsertNpc	(Mod_7035_OUT_Grima_NW, "WAY_PASS_MILL_04");
};

FUNC VOID Info_Mod_Allievo_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_E_15_00"); //Wystarczy! Bedziesz cierpiec za dzialania Canthara!

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	AI_StopProcessInfos	(self);
};
