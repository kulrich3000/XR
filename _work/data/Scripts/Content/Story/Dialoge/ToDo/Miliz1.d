INSTANCE Info_Mod_Miliz1_Hi (C_INFO)
{
	npc		= Mod_1893_MIL_Miliz_NW;
	nr		= 1;
	condition	= Info_Mod_Miliz1_Hi_Condition;
	information	= Info_Mod_Miliz1_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Miliz1_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Miliz1_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_00"); //Co Pan tutaj robi?
	AI_Output(hero, self, "Info_Mod_Miliz1_Hi_15_01"); //Moge pana zapytac to samo.
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_02"); //W Attyli znalezlismy klucz i poszlismy tylnymi drzwiami.
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_03"); //Wyglada na to, ze znalezlismy kryjówke zlodziei.... ale powiedz mi, jak w pierwszej kolejnosci dotarles tutaj?
	AI_Output(hero, self, "Info_Mod_Miliz1_Hi_15_04"); //Zastanówcie sie co?
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_05"); //Nie mów mi, ze nie jestes zlodziejem.
	AI_Output(hero, self, "Info_Mod_Miliz1_Hi_15_06"); //Co jesli tak jest?
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_07"); //Nie wychodzisz z tego miejsca przy zyciu!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
