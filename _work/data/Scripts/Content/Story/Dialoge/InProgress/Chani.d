INSTANCE Info_Mod_Chani_Hi (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_Hi_Condition;
	information	= Info_Mod_Chani_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Chani_Hi_Condition()
{
	if (Mod_Chani_Abenteurer == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Chani_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Chani_Hi_19_00"); //I miód, jak Ty i ja?
	AI_Output(hero, self, "Info_Mod_Chani_Hi_15_01"); //Uh, innym razem.
};

INSTANCE Info_Mod_Chani_Woher (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_Woher_Condition;
	information	= Info_Mod_Chani_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes z kolonii.";
};

FUNC INT Info_Mod_Chani_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Chani_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Chani_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Chani_Woher_15_00"); //Jestes z kolonii.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_19_01"); //Sluchaj, serdecznie, jesli chcesz mi porozmawiac, przynajmniej musisz zaprosic mnie na drinka.... ale nie troche taniego piwa czy jakiegos piwka marynarza.
};

FUNC VOID Info_Mod_Chani_Woher_Story(var C_Item itm)
{
	B_GiveInvItems	(hero, self, itm, 1);
	CreateInvItems	(self, itm, 2);

	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_00"); //To brzmi jak dobry pomysl.

	B_UseItem	(self, itm);

	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_01"); //(lekko pijany) Bardzo ladny, kiedy ogrzewam sie wokól klatki piersiowej.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_02"); //Ale gdzie sie zatrzymalismy? To prawda, zalosna kolonia. Nie chce o tym myslec.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_03"); //Nieustannie wtapialy sie one w ta obrzydliwa zimna sciane, z owym oszukiwaniem starego glupca. Podloga budzi sie.... takie bzdura.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_04"); //Skorzystalem z okazji kiedy stary czlowiek umarl, a niedlugo potem wyburzylem sie tutaj z Viranem i Harlokiem.
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Story_15_05"); //Cóz, to nie jest ladne miejsce.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_06"); //Tysiac razy lepiej niz tam.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_07"); //Tutaj mam przynajmniej swoja wolnosc, moge sprzedawac swoje cialo jak lubie, bawic sie i przede wszystkim wydawac pieniadze.
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Story_15_08"); //Czy dlatego znalazles sie w kolonii?
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_09"); //Tak, to prawda. Brudny gubernator potepil mnie, kiedy prowadzilem interesy na wyspach poludniowych.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_10"); //Byl jednym z moich najlepszych klientów.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_11"); //Prawdopodobnie dostal bonus na tej swini Rhobar za znalezienie kolejnej dziewczyny dla kolonii.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_12"); //Byc moze tez stalem sie dla niego zbyt niebezpieczny, za jego nienaganna reputacje.... Hipokrytyczny gang.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_13"); //Gdybym mógl, wzialbym brzytwe i dal im ich....
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Story_15_14"); //Tak, rozumiem. To bylo interesujace, aby poznac Twoja historie.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_19_15"); //Tak, wystarczy mówic. Mam jeszcze jeden napój, zeby poczuc nastrój.

	B_UseItem	(self, itm);

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Chani_Woher_Wacholder (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_Woher_Wacholder_Condition;
	information	= Info_Mod_Chani_Woher_Wacholder_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj masz mocny lyk jalowca.";
};

FUNC INT Info_Mod_Chani_Woher_Wacholder_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Chani_Woher))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Chani_Woher_Wein))
	&& (Npc_HasItems(hero, ItFo_Booze) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Chani_Woher_Wacholder_Info()
{
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Wacholder_15_00"); //Tutaj masz mocny lyk jalowca.

	Info_Mod_Chani_Woher_Story(ItFo_Booze);
};

INSTANCE Info_Mod_Chani_Woher_Wein (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_Woher_Wein_Condition;
	information	= Info_Mod_Chani_Woher_Wein_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto dobra butelka wina.";
};

FUNC INT Info_Mod_Chani_Woher_Wein_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Chani_Woher))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Chani_Woher_Wacholder))
	&& (Npc_HasItems(hero, ItFo_Wine) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Chani_Woher_Wein_Info()
{
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Wein_15_00"); //Oto dobra butelka wina.

	Info_Mod_Chani_Woher_Story(ItFo_Wine);
};

INSTANCE Info_Mod_Chani_EXIT (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_EXIT_Condition;
	information	= Info_Mod_Chani_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Chani_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Chani_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
