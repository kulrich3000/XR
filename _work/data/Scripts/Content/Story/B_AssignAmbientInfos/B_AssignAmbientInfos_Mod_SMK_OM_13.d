// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_Mod_SMK_OM_13_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_grd_13 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_Mod_SMK_OM_13_EXIT_Condition;
	information	= Info_Mod_SMK_OM_13_EXIT_Info;
	permanent	= 1;
	description = "ENDE";
};                       

FUNC INT Info_Mod_SMK_OM_13_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SMK_OM_13_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Mine
// *************************************************************************

INSTANCE Info_Mod_SMK_OM_13_Mine (C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Mod_SMK_OM_13_Mine_Condition;
	information	= Info_Mod_SMK_OM_13_Mine_Info;
	permanent	= 1;
	description = "Co sie dzieje w kopalni?";
};                       

FUNC INT Info_Mod_SMK_OM_13_Mine_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SMK_OM_13_Mine_Info()
{
	AI_Output(other,self,"Info_Mod_SMK_OM_13_Mine_15_00"); //Co sie dzieje w kopalni?
	AI_Output(self,other,"Info_Mod_SMK_OM_13_Mine_13_01"); //Wydobywa sie tu rude, która wykorzystujemy jako srodek platniczy i cisnieniowy przeciwko królowi.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_Mod_SMK_OM_13_WichtigePersonen(C_INFO)
{
	nr			= 1;
	condition	= Info_Mod_SMK_OM_13_WichtigePersonen_Condition;
	information	= Info_Mod_SMK_OM_13_WichtigePersonen_Info;
	permanent	= 1;
	description = "Kto jest tu odpowiedzialny?";
};                       

FUNC INT Info_Mod_SMK_OM_13_WichtigePersonen_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SMK_OM_13_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Mod_SMK_OM_13_WichtigePersonen_15_00"); //Kto jest tu odpowiedzialny?
	AI_Output(self,other,"Info_Mod_SMK_OM_13_WichtigePersonen_13_01"); //Kurgan jest naszym szefem. Pozostaw go samemu sobie.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_Mod_SMK_OM_13_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Mod_SMK_OM_13_DieLage_Condition;
	information	= Info_Mod_SMK_OM_13_DieLage_Info;
	permanent	= 1;
	description = "Jak to sie dzieje?";
};                       

FUNC INT Info_Mod_SMK_OM_13_DieLage_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SMK_OM_13_DieLage_Info()
{
	AI_Output(other,self,"Info_Mod_SMK_OM_13_DieLage_15_00"); //Jak to sie dzieje?
	AI_Output(self,other,"Info_Mod_SMK_OM_13_DieLage_13_01"); //Haven nie walczyl przez dlugi czas!
	
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_Mod_SMK_OM_13(var c_NPC slf)
{
	
	
	Info_Mod_SMK_OM_13_EXIT.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_SMK_OM_13_Mine.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SMK_OM_13_WichtigePersonen.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SMK_OM_13_DieLage.npc				= Hlp_GetInstanceID(slf);
};
