INSTANCE Info_Mod_Endres_Hi (C_INFO)
{
	npc		= Mod_7610_OUT_Endres_REL;
	nr		= 1;
	condition	= Info_Mod_Endres_Hi_Condition;
	information	= Info_Mod_Endres_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Spójrz, co cie przynioslem!";
};

FUNC INT Info_Mod_Endres_Hi_Condition()
{
	if (Npc_HasItems(hero, ItAm_Geisteramulett) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Endres_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Endres_Hi_15_00"); //Spójrzcie, co wam przynioslem!
	AI_Output(self, hero, "Info_Mod_Endres_Hi_09_01"); //Zagrozenia
};

INSTANCE Info_Mod_Endres_EXIT (C_INFO)
{
	npc		= Mod_7610_OUT_Endres_REL;
	nr		= 1;
	condition	= Info_Mod_Endres_EXIT_Condition;
	information	= Info_Mod_Endres_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Endres_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Endres_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
