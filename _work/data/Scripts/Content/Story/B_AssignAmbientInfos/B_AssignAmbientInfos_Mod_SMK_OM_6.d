// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_Mod_SMK_OM_6_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Grd_6 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_Mod_SMK_OM_6_EXIT_Condition;
	information	= Info_Mod_SMK_OM_6_EXIT_Info;
	permanent	= 1;
	description = "ENDE";
};                       

FUNC INT Info_Mod_SMK_OM_6_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SMK_OM_6_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Mine
// *************************************************************************

INSTANCE Info_Mod_SMK_OM_6_Mine (C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Mod_SMK_OM_6_Mine_Condition;
	information	= Info_Mod_SMK_OM_6_Mine_Info;
	permanent	= 1;
	description = "Co sie dzieje w kopalni?";
};                       

FUNC INT Info_Mod_SMK_OM_6_Mine_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SMK_OM_6_Mine_Info()
{
	AI_Output(other,self,"Info_Mod_SMK_OM_6_Mine_15_00"); //Co sie dzieje w kopalni?
	AI_Output(self,other,"Info_Mod_SMK_OM_6_Mine_06_01"); //Kopaczki kopia rude, a jesli nie kopia rudy, to jest cos w ich ustach!
	
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_Mod_SMK_OM_6_WichtigePersonen(C_INFO)
{
	nr			= 1;
	condition	= Info_Mod_SMK_OM_6_WichtigePersonen_Condition;
	information	= Info_Mod_SMK_OM_6_WichtigePersonen_Info;
	permanent	= 1;
	description = "Kto jest tu odpowiedzialny?";
};                       

FUNC INT Info_Mod_SMK_OM_6_WichtigePersonen_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SMK_OM_6_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Mod_SMK_OM_6_WichtigePersonen_15_00"); //Kto jest tu odpowiedzialny?
	AI_Output(self,other,"Info_Mod_SMK_OM_6_WichtigePersonen_06_01"); //Kurgan jest naszym szefem i zajmuje sie cala organizacja, ruda i kopaczami.
	
};	

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_Mod_SMK_OM_6_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Mod_SMK_OM_6_DieLage_Condition;
	information	= Info_Mod_SMK_OM_6_DieLage_Info;
	permanent	= 1;
	description = "Jak wyglada?";
};                       

FUNC INT Info_Mod_SMK_OM_6_DieLage_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SMK_OM_6_DieLage_Info()
{
	AI_Output(other,self,"Info_Mod_SMK_OM_6_DieLage_15_00"); //Jak to robimy?
 	AI_Output(self,other,"Info_Mod_SMK_OM_6_DieLage_06_01"); //Tak, co myslisz?
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_Mod_SMK_OM_6(var c_NPC slf)
{
	Info_Mod_SMK_OM_6_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_Mod_SMK_OM_6_Mine.npc					= Hlp_GetInstanceID(slf);
	Info_Mod_SMK_OM_6_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_Mod_SMK_OM_6_DieLage.npc					= Hlp_GetInstanceID(slf);
};
