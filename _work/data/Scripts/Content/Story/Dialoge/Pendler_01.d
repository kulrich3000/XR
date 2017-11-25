INSTANCE Info_Mod_Pendler_01_Hi (C_INFO)
{
	npc		= Mod_7706_OUT_Pendler_REL;
	nr		= 1;
	condition	= Info_Mod_Pendler_01_Hi_Condition;
	information	= Info_Mod_Pendler_01_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakim oddzialem jestes?";
};

FUNC INT Info_Mod_Pendler_01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pendler_01_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Pendler_01_Hi_15_00"); //Jakim oddzialem jestes?
	AI_Output(self, hero, "Info_Mod_Pendler_01_Hi_01_01"); //Jestesmy glupcami, którym Anselm nakazal przetransportowac wplywy naszej kopalni do miasta.
	AI_Output(self, hero, "Info_Mod_Pendler_01_Hi_01_02"); //Ale nadal mamy szczescie.
	AI_Output(self, hero, "Info_Mod_Pendler_01_Hi_01_03"); //Nie chce handlowac z biednymi draniemi, którym teraz wolno pracowac w kopalni.
};

INSTANCE Info_Mod_Pendler_01_WoMine (C_INFO)
{
	npc		= Mod_7706_OUT_Pendler_REL;
	nr		= 1;
	condition	= Info_Mod_Pendler_01_WoMine_Condition;
	information	= Info_Mod_Pendler_01_WoMine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaka droga do kopalni?";
};

FUNC INT Info_Mod_Pendler_01_WoMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pendler_01_Hi))
	&& ((Wld_IsTime(07,00,08,00))
	|| (Wld_IsTime(18,00,19,00)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pendler_01_WoMine_Info()
{
	AI_Output(hero, self, "Info_Mod_Pendler_01_WoMine_15_00"); //Jaka droga do kopalni?

	if (Wld_IsTime(07,00,08,00))
	{
		AI_Output(self, hero, "Info_Mod_Pendler_01_WoMine_01_01"); //Dlaczego nie tylko nie przychodzisz ze mna, ale jestesmy tam wlasnie teraz.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pendler_01_WoMine_01_02"); //Jestesmy w drodze do miasta juz teraz, wiec musisz isc inna droga.
		AI_Output(self, hero, "Info_Mod_Pendler_01_WoMine_01_03"); //Musisz znalezc wystarczajaco duzo drogowskazów, aby zaprowadzic Cie tam.
		AI_Output(self, hero, "Info_Mod_Pendler_01_WoMine_01_04"); //W przeciwnym razie, poczekaj, az tam wrócimy, wtedy mozna przyjsc z nami.
	};
};

INSTANCE Info_Mod_Pendler_01_EXIT (C_INFO)
{
	npc		= Mod_7706_OUT_Pendler_REL;
	nr		= 1;
	condition	= Info_Mod_Pendler_01_EXIT_Condition;
	information	= Info_Mod_Pendler_01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Pendler_01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pendler_01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
