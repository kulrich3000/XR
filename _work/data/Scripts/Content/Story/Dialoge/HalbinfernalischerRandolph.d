INSTANCE Info_Mod_HalbinfernalischerRandolph_Hi (C_INFO)
{
	npc		= Mod_7174_DEM_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_HalbinfernalischerRandolph_Hi_Condition;
	information	= Info_Mod_HalbinfernalischerRandolph_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HalbinfernalischerRandolph_Hi_Condition()
{
	if (Mod_Randolph_Started == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HalbinfernalischerRandolph_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_Hi_06_00"); //Kto tu mamy?
	AI_Output(hero, self, "Info_Mod_HalbinfernalischerRandolph_Hi_15_01"); //Randolph, czy to jest to, ze Ty?
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_Hi_06_02"); //Randolf? Mówisz o tej zalosnej ziemi? Nie, on byl kiedys.
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_Hi_06_03"); //Dzieki potedze mojego nowego pana, z niego wyroslo wiecej.
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_Hi_06_04"); //Potezne narzedzie, które pomoze jego Mistrzowi zajac miejsce, na jakie zasluguje w niezbyt odleglej przyszlosci.
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_Hi_06_05"); //I na dobry poczatek ja i moje demony opanujemy ten odcinek ziemi.
};

INSTANCE Info_Mod_HalbinfernalischerRandolph_Kill (C_INFO)
{
	npc		= Mod_7174_DEM_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_HalbinfernalischerRandolph_Kill_Condition;
	information	= Info_Mod_HalbinfernalischerRandolph_Kill_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie, gdybym mógl mi pomóc, zrodzilbys demona.";
};

FUNC INT Info_Mod_HalbinfernalischerRandolph_Kill_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HalbinfernalischerRandolph_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HalbinfernalischerRandolph_Kill_Info()
{
	AI_Output(hero, self, "Info_Mod_HalbinfernalischerRandolph_Kill_15_00"); //Nie, gdybym mógl mi pomóc, zrodzilbys demona.
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_Kill_06_01"); //Wuahahahahahahahaha, spieszysz sie umrzec. Przyjedz tutaj. Oderwe cie od siebie.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_HalbinfernalischerRandolph_SecondChance (C_INFO)
{
	npc		= Mod_7174_DEM_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_HalbinfernalischerRandolph_SecondChance_Condition;
	information	= Info_Mod_HalbinfernalischerRandolph_SecondChance_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HalbinfernalischerRandolph_SecondChance_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HalbinfernalischerRandolph_Kill))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HalbinfernalischerRandolph_SecondChance_Info()
{
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_SecondChance_06_00"); //Glupisz. Powinien mnie zabic, kiedy miales szanse. Tak zapieczetowales upadek.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_HalbinfernalischerRandolph_GoodOne (C_INFO)
{
	npc		= Mod_7174_DEM_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_HalbinfernalischerRandolph_GoodOne_Condition;
	information	= Info_Mod_HalbinfernalischerRandolph_GoodOne_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes pewien, ze nie jest to czesc dobra (....)? )";
};

FUNC INT Info_Mod_HalbinfernalischerRandolph_GoodOne_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HalbinfernalischerRandolph_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HalbinfernalischerRandolph_GoodOne_Info()
{
	AI_Output(hero, self, "Info_Mod_HalbinfernalischerRandolph_GoodOne_15_00"); //Czy jestes pewien, ze nie ma jeszcze w sobie czesci starego dobrego Randolpha?
	AI_Output(hero, self, "Info_Mod_HalbinfernalischerRandolph_GoodOne_15_01"); //Pamietajcie kim jestescie, piekne dni w sadzie, dziela dobra, które uczyniliscie, a nie to zniszczenie.
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_GoodOne_06_02"); //Badz spokojny, glupi glupi i dostac pieklo z tego miejsca! Tym razem oszczedze.
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_GoodOne_06_03"); //Ale nastepnym razem, kiedy spotkamy sie z nami, ciee cie do strzepów.

	B_LogEntry	(TOPIC_MOD_AKIL_RANDOLPH, "Randolph wydaje sie teraz raz na zawsze zuzywany przez sily demoniczne. Moze rada Xardy.... albo bede musial go zabic.");

	AI_StopProcessInfos	(self);
};
