///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Pal_212_Schiffswache_EXIT   (C_INFO)
{
	npc         = Pal_212_Schiffswache;
	nr          = 999;
	condition   = DIA_Pal_212_Schiffswache_EXIT_Condition;
	information = DIA_Pal_212_Schiffswache_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Pal_212_Schiffswache_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Pal_212_Schiffswache_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info werseidihr
///////////////////////////////////////////////////////////////////////
instance DIA_Pal_212_Schiffswache_WERSEIDIHR		(C_INFO)
{
	npc		 = 	Pal_212_Schiffswache;
	condition	 = 	DIA_Pal_212_Schiffswache_WERSEIDIHR_Condition;
	information	 = 	DIA_Pal_212_Schiffswache_WERSEIDIHR_Info;

	description	 = 	"Kim jestes ludzmi?";
};

func int DIA_Pal_212_Schiffswache_WERSEIDIHR_Condition ()
{
	if ((hero.guild != GIL_PAL) && (hero.guild != GIL_KDF))
		{
				return TRUE;
		};
};

func void DIA_Pal_212_Schiffswache_WERSEIDIHR_Info ()
{
	AI_Output			(other, self, "DIA_Pal_212_Schiffswache_WERSEIDIHR_15_00"); //Kim jestes ludzmi?
	AI_Output			(self, other, "DIA_Pal_212_Schiffswache_WERSEIDIHR_08_01"); //Jestesmy ambasadorami króla Rhobara, slug Innosa i jestesmy powszechnie znani jako Paladynowie.
};


///////////////////////////////////////////////////////////////////////
//	Info WASMACHSTDU2
///////////////////////////////////////////////////////////////////////
instance DIA_Pal_212_Schiffswache_WASMACHSTDU2		(C_INFO)
{
	npc		 	= 	Pal_212_Schiffswache;
	condition	 = 	DIA_Pal_212_Schiffswache_WASMACHSTDU2_Condition;
	information	 = 	DIA_Pal_212_Schiffswache_WASMACHSTDU2_Info;

	description	 = 	"Co ty tu robisz?";
};

func int DIA_Pal_212_Schiffswache_WASMACHSTDU2_Condition ()
{
	return TRUE;
};

func void DIA_Pal_212_Schiffswache_WASMACHSTDU2_Info ()
{
	AI_Output			(other, self, "DIA_Pal_212_Schiffswache_WASMACHSTDU2_15_00"); //Co ty tu robisz?

	if (MIS_ShipIsFree == FALSE)
	{
		if ((hero.guild != GIL_PAL) && (hero.guild != GIL_KDF))
		{
			AI_Output			(self, other, "DIA_Pal_212_Schiffswache_WASMACHSTDU2_08_01"); //Nie mozesz dostac sie na statek. To wszystko, co musisz wiedziec.
		}
		else
		{
			AI_Output			(self, other, "DIA_Pal_212_Schiffswache_WASMACHSTDU2_08_02"); //Jestesmy tutaj na strazy. Zadna nieupowazniona osoba nie moze wejsc na statek. Nie ty tez, przepraszam.
		};
	}
	else
	{
			AI_Output			(self, other, "DIA_Pal_212_Schiffswache_WASMACHSTDU2_08_03"); //Tutaj trace czas. Bylbym raczej z naszymi bracmi w Minentalu.
	};
	AI_StopProcessInfos (self);
};

