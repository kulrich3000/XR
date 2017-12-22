INSTANCE Info_Mod_Merdarion_Hi (C_INFO)
{
	npc		= Mod_768_KDW_Merdarion_NW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_Hi_Condition;
	information	= Info_Mod_Merdarion_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Merdarion_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Merdarion_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Merdarion_Hi_06_00"); //Jeszcze raz!
	AI_Output(self, hero, "Info_Mod_Merdarion_Hi_06_01"); //Osmielisz sie tu przyjechac po tym, jak wezmiesz magiczna energie z naszej haldy rudy?
	AI_Output(hero, self, "Info_Mod_Merdarion_Hi_15_02"); //To sie sprawdzilo. W koncu teraz jestesmy wolni.
	AI_Output(self, hero, "Info_Mod_Merdarion_Hi_06_03"); //To jedyny powód, dla którego wciaz zyjesz.
};

INSTANCE Info_Mod_Merdarion_Nefarius (C_INFO)
{
	npc		= Mod_768_KDW_Merdarion_NW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_Nefarius_Condition;
	information	= Info_Mod_Merdarion_Nefarius_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nefarius mnie poslal.";
};

FUNC INT Info_Mod_Merdarion_Nefarius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Saturas))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_Nefarius_Info()
{
	AI_Output(hero, self, "Info_Mod_Merdarion_Nefarius_15_00"); //Nefarius mnie poslal. Zamierzam zatrzymac sie przy Twoim domu, zanim zaczne szukac czterech czesci portalowego pierscienia.
	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_01"); //Ciesze sie, ze przyszedles. W ruinach znajduje sie teleporter. Za pomoca tego przycisku mozna przejsc przez drzwi.

	B_GiveInvItems	(self, hero, ItKe_PORTALTEMPELWALKTHROUGH_ADDON, 1);

	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_02"); //Dann gibt es noch einen weiteren Teleporter in der Nähe der Taverne "Do martwej harfy". Auch dieser Teleporter ist durch eine Tür geschützt.
	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_03"); //Za pomoca tego przycisku mozna otworzyc drzwi.

	B_GiveInvItems	(self, hero, ITKE_ORLAN_TELEPORTSTATION, 1);

	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_04"); //Teraz spieszyc sie.
};

INSTANCE Info_Mod_Merdarion_EXIT (C_INFO)
{
	npc		= Mod_768_KDW_Merdarion_NW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_EXIT_Condition;
	information	= Info_Mod_Merdarion_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Merdarion_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Merdarion_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Merdarion_EXIT_06_00"); //Niech zachowa sie równowaga na zawsze!

	AI_StopProcessInfos	(self);
};
