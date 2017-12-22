INSTANCE Info_Mod_Wache_Eisgebiet_01_Hi (C_INFO)
{
	npc		= Mod_7727_OUT_Wache_EIS;
	nr		= 1;
	condition	= Info_Mod_Wache_Eisgebiet_01_Hi_Condition;
	information	= Info_Mod_Wache_Eisgebiet_01_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wache_Eisgebiet_01_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gellit_RaueSchneide))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wache_Eisgebiet_01_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wache_Eisgebiet_01_Hi_06_00"); //Zatrzymaj sie! Dlaczego chcesz jechac do baraków?
	AI_Output(hero, self, "Info_Mod_Wache_Eisgebiet_01_Hi_15_01"); //Gelit wyslal mnie. Chce zyskac Twoja reputacje.
	AI_Output(self, hero, "Info_Mod_Wache_Eisgebiet_01_Hi_06_02"); //Wszystko w porzadku, wtedy jestes we wlasciwym miejscu. Poprzez swoja sluzbe wojskowa u nas mozesz pokazac kim jestes.
	AI_Output(self, hero, "Info_Mod_Wache_Eisgebiet_01_Hi_06_03"); //Jesli jednak sadzisz, ze mozesz zaatakowac dowódce, powinienes wiedziec, ze on wie jak bronic sie przed wszystkimi.
};

INSTANCE Info_Mod_Wache_Eisgebiet_01_EXIT (C_INFO)
{
	npc		= Mod_7727_OUT_Wache_EIS;
	nr		= 1;
	condition	= Info_Mod_Wache_Eisgebiet_01_EXIT_Condition;
	information	= Info_Mod_Wache_Eisgebiet_01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wache_Eisgebiet_01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wache_Eisgebiet_01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
