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
	description = "END";
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
	description = "What's going on in the mine?";
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
	AI_Output(other,self,"Info_Mod_SMK_OM_13_Mine_15_00"); //What's going on in the mine?
	AI_Output(self,other,"Info_Mod_SMK_OM_13_Mine_13_01"); //Ore is mined here, which we use as a means of payment and pressure agent against the king.
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
	description = "Who's in charge here?";
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
	AI_Output(other,self,"Info_Mod_SMK_OM_13_WichtigePersonen_15_00"); //Who's in charge here?
	AI_Output(self,other,"Info_Mod_SMK_OM_13_WichtigePersonen_13_01"); //Kurgan's our boss. Just leave him alone.
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
	description = "How's it going?";
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
	AI_Output(other,self,"Info_Mod_SMK_OM_13_DieLage_15_00"); //How's it going?
	AI_Output(self,other,"Info_Mod_SMK_OM_13_DieLage_13_01"); //Haven't had a fight in a long time!
	
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
