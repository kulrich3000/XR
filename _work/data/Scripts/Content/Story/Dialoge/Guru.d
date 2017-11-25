INSTANCE Info_Mod_Guru_Gelaber (C_INFO)
{
	npc		= Mod_7236_GUR_Guru_NW;
	nr		= 1;
	condition	= Info_Mod_Guru_Gelaber_Condition;
	information	= Info_Mod_Guru_Gelaber_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej.";
};

FUNC INT Info_Mod_Guru_Gelaber_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Jana))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Guru_Gelaber_Info()
{
	AI_Output(hero, self, "Info_Mod_Guru_Gelaber_15_00"); //Hej.
	AI_Output(self, hero, "Info_Mod_Guru_Gelaber_11_01"); //AAAAHHH! Nowa para uszu dla mojego BOOOOTSCHAFT. Sluchaj:
	AI_Output(self, hero, "Info_Mod_Guru_Gelaber_11_02"); //Nie musisz sie juz bac sypialni. On spi. Ale powinienes poczuc strach i przerazenie przed ta jedyna, GUARDA! On jest na strazy! BUDZI WIECEJ OBUDZENIA!
	AI_Output(hero, self, "Info_Mod_Guru_Gelaber_15_03"); //Wezcie to latwo, przyjdzcie ze mna.
	AI_Output(self, hero, "Info_Mod_Guru_Gelaber_11_04"); //Nie osmielisz sie mnie dotknac, senny!
	AI_Output(hero, self, "Info_Mod_Guru_Gelaber_15_05"); //Czy musze cie pokonac poza miastem?
	AI_Output(self, hero, "Info_Mod_Guru_Gelaber_11_06"); //Nie dotykaj mnie!

	B_ReadySpell	(self, SPL_FireRain, SPL_Cost_Firerain);

	AI_Output(self, hero, "Info_Mod_Guru_Gelaber_11_07"); //Niahahahahahahahahaha! Wszyscy umrzesz w deszczu ognia! Ale nie martwcie sie, wskrzesze was i obudzimy sie razem!

	Wld_InsertNpc	(HeroBot_NW, "NW_CITY_MERCHANT_PATH_29");

	AI_StopProcessInfos	(self);
};
