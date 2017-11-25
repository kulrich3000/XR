FUNC VOID Info_Mod_XardasThroughSkeletteStart()
{
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_00"); //Czy to Ty, mój przyjaciel?
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_01"); //Jesli nie, zgubic sie!
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_02"); //Jesli tak, to gratulacje!
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_03"); //(z glosem Xardasa) zrezygnowalem juz z poszukiwan, a tylko wierni mi pomocnicy nadal pracuja tu niestrudzenie.
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_04"); //Z glosem Xardasa) mam tylko nadzieje, ze moje szkielety nie ujawnily zbyt wielu rozlanych pajaków sekciarskich w ich poszukiwaniu.
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_05"); //(z glosem Xardasa) Kto wie, co zrobil dla nich za zycia Kor Kalom.
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_06"); //(z glosem kardaskim) Ale jesli jakos przetrwales upadek, nieliczni nieumarli nie powinni byc dla ciebie przeszkoda.
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_07"); //(z glosem Xardasa) zostawilem wam notatke z instrukcjami na posagu sypialnym.
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_08"); //Z glosem Xardasa) Znajdziesz tam wszystko, czego potrzebujesz, aby kontynuowac.
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_09"); //(z glosem Xardasa) Natychmiast wróc do mnie!

	Mod_OT_XardasNachricht = 1;
};

INSTANCE Info_Mod_XardasSkelett_01_Hi (C_INFO)
{
	npc		= Monster_11055_Skelett_OT;
	nr		= 1;
	condition	= Info_Mod_XardasSkelett_01_Hi_Condition;
	information	= Info_Mod_XardasSkelett_01_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_XardasSkelett_01_Hi_Condition()
{
	if (Mod_OT_XardasNachricht == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_XardasSkelett_01_Hi_Info()
{
	Info_Mod_XardasThroughSkeletteStart();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_XardasSkelett_02_Hi (C_INFO)
{
	npc		= Monster_11056_Skelett_OT;
	nr		= 1;
	condition	= Info_Mod_XardasSkelett_02_Hi_Condition;
	information	= Info_Mod_XardasSkelett_02_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_XardasSkelett_02_Hi_Condition()
{
	if (Mod_OT_XardasNachricht == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_XardasSkelett_02_Hi_Info()
{
	Info_Mod_XardasThroughSkeletteStart();

	AI_StopProcessInfos	(self);
};
