INSTANCE Info_Mod_Bollok_Hi (C_INFO)
{
	npc		= Mod_10043_Orc_Bollok_OM;
	nr		= 1;
	condition	= Info_Mod_Bollok_Hi_Condition;
	information	= Info_Mod_Bollok_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy rozumiesz nasz jezyk?";
};

FUNC INT Info_Mod_Bollok_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bollok_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_00"); //Czy rozumiesz nasz jezyk?
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_01"); //(zdziwiony) Czlowiek mówi normalnie...... i zaatakowac sie wzajemnie mieczem.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_02"); //Czy mozesz mi powiedziec, co sie stalo?
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_03"); //W duzej ciemnej jaskini za nia, gdzie w dawnych czasach Gachluk stal nagle w pozycji niewolników, którzy wczesniej nie zyli, teraz juz nie umarli... Wiecej ale nie zyja.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_04"); //Andere sie genannt "zombie", glaube ich.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_05"); //Uhhuh, umarle ciala niewolników obudzily sie do bycia nieumarlym.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_06"); //Co sie potem stalo?
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_07"); //Chef der Mine Kurgan sagen, dass viele Männer in Finsternis gehen, um "zombie" zu schlagen mit Schwert.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_08"); //Zrobily to i walczyly. Ale nie wszyscy jednak przezyli i zmienili sie ci, którzy wyszli.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_09"); //Zmieniony?
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_10"); //Tak, ciemne cienie na twarzy i atakowaly wszystkich innych.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_11"); //Inni, którzy zostali ranni i zabici, równiez doprowadzili do ciemnosci.... a zmarli wyszli jako zombie.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_12"); //Bollok obawial sie tez, ze zaatakuje mnie i zabije..... ale nie zostala wykonana.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_13"); //Dziekujemy za informacje.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_14"); //Potem musze isc tam, aby znalezc korzenie zla.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_15"); //Mezczyzni sa silni i odwazni wojownicy. Zyczenie powodzenia po drodze.....
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_16"); //Poczekaj, zanim zapomna, ci, którzy zmienili sie, przywiezli w ciemnosc równiez wiele magicznej rudy.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_17"); //To wszystko jest bardzo dziwne.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_18"); //Tak, to brzmi naprawde dziwnie.

	AI_TurnToNpc	(hero, self);
};

INSTANCE Info_Mod_Bollok_EXIT (C_INFO)
{
	npc		= Mod_10043_Orc_Bollok_OM;
	nr		= 1;
	condition	= Info_Mod_Bollok_EXIT_Condition;
	information	= Info_Mod_Bollok_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bollok_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bollok_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
