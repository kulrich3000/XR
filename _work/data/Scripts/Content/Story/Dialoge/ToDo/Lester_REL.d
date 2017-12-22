INSTANCE Info_Mod_Lester_REL_Hi (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_Hi_Condition;
	information	= Info_Mod_Lester_REL_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ty tutaj?";
};

FUNC INT Info_Mod_Lester_REL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lester_REL_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_Hi_15_00"); //Ty tutaj?
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_41_01"); //Czy kiedykolwiek wczesniej byles na tym samochodzie ciezarowym? Mówie ci, to doswiadczenie, którego nie zapomnisz.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_41_02"); //Mysle, ze jestem znowu gonna od razu.
	AI_Output(hero, self, "Info_Mod_Lester_REL_Hi_15_03"); //Dobrze i dobrze, ale dlaczego tu jestescie?
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_41_04"); //Czy slyszales kiedys o Khoracie?
	AI_Output(hero, self, "Info_Mod_Lester_REL_Hi_15_05"); //Nie tak naprawde.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_41_06"); //Z tego wszystkiego co slyszalem, miasto jest blisko raju.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_41_07"); //Kazdy, kto chce, moze prowadzic wygodne zycie.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_41_08"); //Rada miejska sklada sie z jednego czlowieka, który dba tylko o to, by chaos nie wydostal sie z rak.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_41_09"); //W pobliskim gospodarstwie uzyskuje sie cos, co nazywa sie dawca radosci i mówi sie, ze jest znacznie skuteczniejsze niz rdestnica bagienna.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Hi_41_10"); //Trudno mi to sobie wyobrazic, ale próbujac tego nie rani.
};

INSTANCE Info_Mod_Lester_REL_VonWem (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_VonWem_Condition;
	information	= Info_Mod_Lester_REL_VonWem_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kto o tym slyszales?";
};

FUNC INT Info_Mod_Lester_REL_VonWem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_VonWem_Info()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_VonWem_15_00"); //Kto o tym slyszales?
	AI_Output(self, hero, "Info_Mod_Lester_REL_VonWem_41_01"); //Wzialem go na targowisko w Khorinis. Mysle, ze Baltram mi o tym opowiedzial.
	AI_Output(self, hero, "Info_Mod_Lester_REL_VonWem_41_02"); //Poziom swiadomosci Khoraty jest jednak zaskakujaco niski.
	AI_Output(self, hero, "Info_Mod_Lester_REL_VonWem_41_03"); //Nikt nie wydaje sie miec potrzeby chwalic sie korzysciami. To mi sie podoba.
};

INSTANCE Info_Mod_Lester_REL_Zusammen (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_Zusammen_Condition;
	information	= Info_Mod_Lester_REL_Zusammen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Idzmy razem.";
};

FUNC INT Info_Mod_Lester_REL_Zusammen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_001") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_Zusammen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_Zusammen_15_00"); //Idzmy razem.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Zusammen_41_01"); //Innym razem. Naprawde chce zrobic kilka wycieczek ta ciezarówka najpierw....
};

INSTANCE Info_Mod_Lester_REL_Gefallen (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_Gefallen_Condition;
	information	= Info_Mod_Lester_REL_Gefallen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak Ci sie to podoba?";
};

FUNC INT Info_Mod_Lester_REL_Gefallen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_CITY_111") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_Gefallen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_Gefallen_15_00"); //Jak Ci sie to podoba?
	AI_Output(self, hero, "Info_Mod_Lester_REL_Gefallen_41_01"); //Dawca radosci naprawde cie zabija. (smiech) Fucking good stuff. Ale Khorata....
	AI_Output(self, hero, "Info_Mod_Lester_REL_Gefallen_41_02"); //Myslalem, ze znajde wolne miasto, ale Khorata rzadzi sie niechecia i arbitralnoscia.
	AI_Output(self, hero, "Info_Mod_Lester_REL_Gefallen_41_03"); //Najwiekszym problemem w kazdej wspólnocie jest i pozostaje istota ludzka.
};

INSTANCE Info_Mod_Lester_REL_FindeOrt (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_FindeOrt_Condition;
	information	= Info_Mod_Lester_REL_FindeOrt_Info;
	permanent	= 1;
	important	= 0;
	description	= "Trudno mi znalezc sie tutaj.";
};

FUNC INT Info_Mod_Lester_REL_FindeOrt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_CITY_111") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_Info()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_15_00"); //Trudno mi znalezc sie tutaj.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_41_01"); //Co dokladnie nie mozna znalezc?

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, DIALOG_BACK, Info_Mod_Lester_REL_FindeOrt_BACK);

	if (Mod_Wendel_FettNehmer == 1)
	{
		Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Szukam trollu.", Info_Mod_Lester_REL_FindeOrt_D);	
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres))
	{
		Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Szukam kopalni.", Info_Mod_Lester_REL_FindeOrt_C);	
	};
	if (Mod_REL_Frauenkleider >= 1)
	{
		Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Szukam bandytów w Relendel.", Info_Mod_Lester_REL_FindeOrt_B);	
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Landvermessung))
	{
		Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Szukam Vincenta.", Info_Mod_Lester_REL_FindeOrt_A);	
	};
};

FUNC VOID B_Lester_Say_Alleine()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_Alleine_15_00"); //Sam sobie poradze.
};

FUNC VOID B_Lester_Say_Zusammen()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_Zusammen_15_00"); //Pokaz mi droge.
	AI_Output(self, hero, "DEFAULT"); //
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_BACK()
{
	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_D()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_D_15_00"); //Szukam trollu.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_D_41_01"); //(smiech) Zwykle szukasz sposobu na unikniecie go.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_D_41_02"); //Ale slyszalem jednak od sprzedawcy sadu, ze trolla ma sprawic, by paszport tam byl niebezpieczny.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_D_41_03"); //Potrzebujesz mojej pomocy?

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Sam sobie poradze.", Info_Mod_Lester_REL_FindeOrt_D2);
	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Pokaz mi droge.", Info_Mod_Lester_REL_FindeOrt_D1);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_D2()
{
	B_Lester_Say_Alleine();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_D1()
{
	B_Lester_Say_Zusammen();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOTROLL");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_LesterRelGuide = 4;
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_C()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_C_15_00"); //Szukam kopalni.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_C_41_01"); //Nie ma problemu, kopalnia jest oznakowana z miasta. Chcielibym isc z Toba?

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Sam sobie poradze.", Info_Mod_Lester_REL_FindeOrt_C2);
	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Pokaz mi droge.", Info_Mod_Lester_REL_FindeOrt_C1);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_C2()
{
	B_Lester_Say_Alleine();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_C1()
{
	B_Lester_Say_Zusammen();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOMINE");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_LesterRelGuide = 3;
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_B()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_B_15_00"); //Szukam bandytów w Relendel.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_B_41_01"); //Rolnik Erhard czesto skarzyl sie, ze w poblizu jego gospodarstwa sa bandyci.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_B_41_02"); //Nie powinny byc zbyt trudne do znalezienia. Czy bedziemy razem szukac?

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Sam sobie poradze.", Info_Mod_Lester_REL_FindeOrt_B2);
	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Pokaz mi droge.", Info_Mod_Lester_REL_FindeOrt_B1);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_B2()
{
	B_Lester_Say_Alleine();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_B1()
{
	B_Lester_Say_Zusammen();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOMELVIN");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_LesterRelGuide = 2;
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_A()
{
	AI_Output(hero, self, "Info_Mod_Lester_REL_FindeOrt_A_15_00"); //Szukam Vincenta.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_A_41_01"); //Tak, wiele slyszalem o Vincencie.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_A_41_02"); //Mówi sie, ze rozbil swój namiot gdzies na zachód od duzego jeziora w Relendel.
	AI_Output(self, hero, "Info_Mod_Lester_REL_FindeOrt_A_41_03"); //Jesli chcesz, mozemy spojrzec razem.

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Sam sobie poradze.", Info_Mod_Lester_REL_FindeOrt_A2);
	Info_AddChoice	(Info_Mod_Lester_REL_FindeOrt, "Pokaz mi droge.", Info_Mod_Lester_REL_FindeOrt_A1);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_A2()
{
	B_Lester_Say_Alleine();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);
};

FUNC VOID Info_Mod_Lester_REL_FindeOrt_A1()
{
	B_Lester_Say_Zusammen();

	Info_ClearChoices	(Info_Mod_Lester_REL_FindeOrt);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOVINCENT");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_LesterRelGuide = 1;
};

INSTANCE Info_Mod_Lester_REL_AtTroll (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_AtTroll_Condition;
	information	= Info_Mod_Lester_REL_AtTroll_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lester_REL_AtTroll_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "RELWIDNIS_20") < 500)
	&& (Mod_LesterRELGuide == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_AtTroll_Info()
{
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtTroll_41_00"); //No cóz, jesli to nie jest smietnik. Czy jestes pewien, ze chcesz ja porabac?
	AI_Output(hero, self, "Info_Mod_Lester_REL_AtTroll_15_01"); //Po co jeszcze poszlismy ta droga?
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtTroll_41_02"); //A zatem wszystko w porzadku. My go zlapalismy.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Lester_REL_AtTroll2 (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_AtTroll2_Condition;
	information	= Info_Mod_Lester_REL_AtTroll2_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lester_REL_AtTroll2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "RELWIDNIS_21") < 500)
	&& (Mod_LesterRELGuide == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_AtTroll2_Info()
{
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtTroll2_41_00"); //To oklad.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MARKT");

	self.aivar[AIV_Partymember] = FALSE;

	Mod_LesterRelGuide = 0;
};

INSTANCE Info_Mod_Lester_REL_AtMine (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_AtMine_Condition;
	information	= Info_Mod_Lester_REL_AtMine_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lester_REL_AtMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_SURFACE_206") < 500)
	&& (Mod_LesterRELGuide == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_AtMine_Info()
{
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtMine_41_00"); //To jest wlasnie wejscie do kopalni. Baw sie baw tam.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MARKT");

	self.aivar[AIV_Partymember] = FALSE;

	Mod_LesterRelGuide = 0;
};

INSTANCE Info_Mod_Lester_REL_AtMelvin (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_AtMelvin_Condition;
	information	= Info_Mod_Lester_REL_AtMelvin_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lester_REL_AtMelvin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_SURFACE_045") < 500)
	&& (Mod_LesterRELGuide == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_AtMelvin_Info()
{
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtMelvin_41_00"); //Tam widze obóz z kilkoma namiotami. To powinni byc bandyci, których szukasz.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MARKT");

	self.aivar[AIV_Partymember] = FALSE;

	Mod_LesterRelGuide = 0;
};

INSTANCE Info_Mod_Lester_REL_AtVincent (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_AtVincent_Condition;
	information	= Info_Mod_Lester_REL_AtVincent_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lester_REL_AtVincent_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_SURFACE_026") < 500)
	&& (Mod_LesterRELGuide == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_REL_AtVincent_Info()
{
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtVincent_41_00"); //Oto wielkie jezioro, o którym mówilem. Po przeciwnej stronie powinien znalezc sie Vincent.
	AI_Output(self, hero, "Info_Mod_Lester_REL_AtVincent_41_01"); //Wracam teraz do miasta. Dla mnie bieg jest zbyt wiele.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MARKT");

	self.aivar[AIV_Partymember] = FALSE;

	Mod_LesterRelGuide = 0;
};

INSTANCE Info_Mod_Lester_REL_EXIT (C_INFO)
{
	npc		= Mod_7612_PSINOV_Lester_REL;
	nr		= 1;
	condition	= Info_Mod_Lester_REL_EXIT_Condition;
	information	= Info_Mod_Lester_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lester_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lester_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
