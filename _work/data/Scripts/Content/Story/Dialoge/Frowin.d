INSTANCE Info_Mod_Frowin_Hi (C_INFO)
{
	npc		= GardeBeliars_1994_Frowin;
	nr		= 1;
	condition	= Info_Mod_Frowin_Hi_Condition;
	information	= Info_Mod_Frowin_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Frowin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Frowin_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Frowin_Hi_14_00"); //Nareszcie dotarles!
	AI_Output(hero, self, "Info_Mod_Frowin_Hi_15_01"); //Jestescie ostatnimi z ciemnych wojowników. Zabije cie, a potem zabezpiecze siekiere!
	AI_Output(self, hero, "Info_Mod_Frowin_Hi_14_02"); //Bede wiedzial, jak temu zapobiec. Almanach jest teraz dla mnie bezuzyteczny. I nie wychodzisz tu zywy.
	AI_Output(hero, self, "Info_Mod_Frowin_Hi_15_03"); //Zapraszamy tutaj!
	AI_Output(self, hero, "Info_Mod_Frowin_Hi_14_04"); //(smiech) Jeszcze nie!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KRYPTA");

	AI_Teleport	(self, "BIGFARM");
};

INSTANCE Info_Mod_Frowin_HatAxt (C_INFO)
{
	npc		= GardeBeliars_1994_Frowin;
	nr		= 1;
	condition	= Info_Mod_Frowin_HatAxt_Condition;
	information	= Info_Mod_Frowin_HatAxt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Frowin_HatAxt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Frowin_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Frowin_HatAxt_Info()
{
	AI_Output(self, hero, "Info_Mod_Frowin_HatAxt_14_00"); //(smieje sie glosno) Hahahahaha! Jestes za pózno. Aksamitem zguby jest moja. Przekaze go mojemu panu, a on zanurzy swiat w najglebsza ciemnosc.
	AI_Output(self, hero, "Info_Mod_Frowin_HatAxt_14_01"); //A teraz, czlowiek, umrzesz.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};
