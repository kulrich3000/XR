INSTANCE Info_Mod_SchwarzerNovize_Weindieb_Hi (C_INFO)
{
	npc		= Mod_7761_SNOV_Novize_NW;
	nr		= 1;
	condition	= Info_Mod_SchwarzerNovize_Weindieb_Hi_Condition;
	information	= Info_Mod_SchwarzerNovize_Weindieb_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kto tu mamy?";
};

FUNC INT Info_Mod_SchwarzerNovize_Weindieb_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SchwarzerNovize_Weindieb_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovize_Weindieb_Hi_15_00"); //Kto tu mamy?
	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_Weindieb_Hi_11_01"); //Ach, cham.... czego chcesz?

	Info_ClearChoices	(Info_Mod_SchwarzerNovize_Weindieb_Hi);

	if (Npc_KnowsInfo(hero, Info_Mod_Gorax_Andokai))
	{
		Info_AddChoice	(Info_Mod_SchwarzerNovize_Weindieb_Hi, "Wez to teraz latwo. Sam raz pozegnalem sie z winem dla Andokai.", Info_Mod_SchwarzerNovize_Weindieb_Hi_C);
	};

	Info_AddChoice	(Info_Mod_SchwarzerNovize_Weindieb_Hi, "Wyjasnijcie wam jasno, ze wy i wasz zyczliwy nigdy wiecej tu nie wrócicie.", Info_Mod_SchwarzerNovize_Weindieb_Hi_B);
	Info_AddChoice	(Info_Mod_SchwarzerNovize_Weindieb_Hi, "Karac cie za smiale kradziez, brudny demon uczen.", Info_Mod_SchwarzerNovize_Weindieb_Hi_A);
};

FUNC VOID Info_Mod_SchwarzerNovize_Weindieb_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovize_Weindieb_Hi_C_15_00"); //Wez to teraz latwo. Sam raz pozegnalem sie z winem dla Andokai.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_Weindieb_Hi_C_11_01"); //Oh, czlowiek, przez chwile myslalem, ze naprawde myslalem, ze próbujecie mnie dostac do piekla. Ale tak, teraz rozpoznaje cie.
	AI_Output(hero, self, "Info_Mod_SchwarzerNovize_Weindieb_Hi_C_15_02"); //Ty i inni chlopcy, lepiej nie wracajcie w przyszlosci do klasztoru. Waz stal sie podejrzliwy.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_Weindieb_Hi_C_11_03"); //Czy tak jest? Dzieki ostrzezeniu czlowiek. Oto kilka lodyg blotnistej rdestnicy i kilka butelek wina, aby podziekowac.

	CreateInvItems	(hero, ItMi_Joint, 8);
	CreateInvItems	(hero, ItFo_KWine, 12);

	B_ShowGivenThings	("8 lodygi ziól bagiennych i 12 zakonserwowanych win klasztornych");

	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_Weindieb_Hi_C_11_04"); //Do zobaczenia dookola.

	B_GivePlayerXP	(50);

	Info_ClearChoices	(Info_Mod_SchwarzerNovize_Weindieb_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

FUNC VOID Info_Mod_SchwarzerNovize_Weindieb_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovize_Weindieb_Hi_B_15_00"); //Wyjasnijcie wam jasno, ze wy i wasz zyczliwy nigdy wiecej tu nie wrócicie.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_Weindieb_Hi_B_11_01"); //Wiesz o tym? Och, gówno, idzmy!

	Info_ClearChoices	(Info_Mod_SchwarzerNovize_Weindieb_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");
};

FUNC VOID Info_Mod_SchwarzerNovize_Weindieb_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovize_Weindieb_Hi_A_15_00"); //Karac cie za smiale kradziez, brudny demon uczen.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_Weindieb_Hi_A_11_01"); //Oh, gówno, gówno....

	Info_ClearChoices	(Info_Mod_SchwarzerNovize_Weindieb_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");
};

INSTANCE Info_Mod_SchwarzerNovize_Weindieb_EXIT (C_INFO)
{
	npc		= Mod_7761_SNOV_Novize_NW;
	nr		= 1;
	condition	= Info_Mod_SchwarzerNovize_Weindieb_EXIT_Condition;
	information	= Info_Mod_SchwarzerNovize_Weindieb_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_SchwarzerNovize_Weindieb_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SchwarzerNovize_Weindieb_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
