INSTANCE Info_Mod_Serpentes_GDG_EXIT (C_INFO)
{
	npc		= Mod_6011_KDF_Serpentes_GDG;
	nr		= 1;
	condition	= Info_Mod_Serpentes_GDG_EXIT_Condition;
	information	= Info_Mod_Serpentes_GDG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Serpentes_GDG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Serpentes_GDG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
