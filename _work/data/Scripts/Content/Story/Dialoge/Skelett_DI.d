INSTANCE Info_Mod_Skelett_Hi (C_INFO)
{
	npc		= Mod_1552_SKE_Skelett_DI;
	nr		= 1;
	condition	= Info_Mod_Skelett_Hi_Condition;
	information	= Info_Mod_Skelett_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Skelett_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Skelett_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Skelett_Hi_04_00"); //Co? Obcy? Chcesz naszego skarbu! Wyjsc stad!
	AI_Output(hero, self, "Info_Mod_Skelett_Hi_15_01"); //Tak jak..... Co.....? Dlaczego tak nie jest - nie Ty
	AI_Output(self, hero, "Info_Mod_Skelett_Hi_04_02"); //... martwy? (smiech) Jestem martwy. Tak samo martwy jak Ty!

	AI_StopProcessInfos	(self);

	Npc_SetTarget (self, hero);

	AI_StartState	(self, ZS_MM_Attack, 0, "");

	self.flags = 0;
};
