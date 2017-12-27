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
	description = "END";
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
	description = "What's going on in the mine?";
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
	AI_Output(other,self,"Info_Mod_SMK_OM_6_Mine_15_00"); //What's going on in the mine?
	AI_Output(self,other,"Info_Mod_SMK_OM_6_Mine_06_01"); //The diggers dig the ore, and if they don't dig the ore, there's something in their mouths!
	
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
	description = "Who's in charge here?";
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
	AI_Output(other,self,"Info_Mod_SMK_OM_6_WichtigePersonen_15_00"); //Who's in charge here?
	AI_Output(self,other,"Info_Mod_SMK_OM_6_WichtigePersonen_06_01"); //Kurgan is our boss and takes care of the whole organisation, ore and diggers.
	
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
	description = "How's it going?";
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
	AI_Output(other,self,"Info_Mod_SMK_OM_6_DieLage_15_00"); //How are we doing?
 	AI_Output(self,other,"Info_Mod_SMK_OM_6_DieLage_06_01"); //Yeah, what do you think?
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
