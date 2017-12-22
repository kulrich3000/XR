INSTANCE Info_Mod_Melchior_Hi (C_INFO)
{
	npc		= Mod_7754_OUT_Melchior_EIS;
	nr		= 1;
	condition	= Info_Mod_Melchior_Hi_Condition;
	information	= Info_Mod_Melchior_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Melchior_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Marcus_UntoteOrks2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melchior_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Melchior_Hi_10_00"); //W koncu sa tu wreszcie informacje. Myslalem, ze dowódca mnie zapomnial.
	AI_Output(hero, self, "Info_Mod_Melchior_Hi_15_01"); //Wlasciwie powinienes mnie wzmocnic. Potrzebuje kogos, kto bedzie mógl przesluchiwac orki. Mówisz jej jezyk, czy nie?
	AI_Output(self, hero, "Info_Mod_Melchior_Hi_10_02"); //Tak, ale wszystkie orki wokól nie umarly. Zabiles mojego przyjaciela Jacoby' ego w lesie.
	AI_Output(self, hero, "Info_Mod_Melchior_Hi_10_03"); //Bylo ich tyle, ze musialem uciekac. Mysle, ze nie mozemy ich kwestionowac.
	AI_Output(hero, self, "Info_Mod_Melchior_Hi_15_04"); //Jednak ich przywódcy nadal zyja. Musi byc ktos, kto jest troche oddzielony od mas.
	AI_Output(self, hero, "Info_Mod_Melchior_Hi_10_05"); //Jest jeden. Swoje oddzialy zwiadowcze wysyla z ruiny na lodowisko.
	AI_Output(hero, self, "Info_Mod_Melchior_Hi_15_06"); //Marcus zajmie sie dla Ciebie tutaj, a Ty pokazesz mi te ruine.

	B_StartOtherRoutine	(self, "GUIDETORUINE");
	B_StartOtherRoutine	(Mod_7754_OUT_Melchior_EIS, "ATMELCHIOR");
};

INSTANCE Info_Mod_Melchior_EXIT (C_INFO)
{
	npc		= Mod_7754_OUT_Melchior_EIS;
	nr		= 1;
	condition	= Info_Mod_Melchior_EXIT_Condition;
	information	= Info_Mod_Melchior_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Melchior_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Melchior_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
