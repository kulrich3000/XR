INSTANCE Info_Mod_SchwarzerNovize_MT_01_Hi (C_INFO)
{
	npc		= Mod_7784_SNOV_Novize_MT;
	nr		= 1;
	condition	= Info_Mod_SchwarzerNovize_MT_01_Hi_Condition;
	information	= Info_Mod_SchwarzerNovize_MT_01_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_SchwarzerNovize_MT_01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SchwarzerNovize_MT_01_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_MT_01_Hi_11_00"); //Hej, co tu robisz?
	AI_Output(hero, self, "Info_Mod_SchwarzerNovize_MT_01_Hi_15_01"); //Jestem z Xardas.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovize_MT_01_Hi_11_02"); //Wtedy jest w porzadku. Nie chcemy, zeby tu bylo nie wszystko.
};
