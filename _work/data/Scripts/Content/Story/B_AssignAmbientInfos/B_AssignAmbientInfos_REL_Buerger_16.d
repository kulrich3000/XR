// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_REL_Buerger_16_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_REL_Buerger_16_EXIT_Condition;
	information	= DIA_REL_Buerger_16_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_REL_Buerger_16_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_REL_Buerger_16_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_REL_Buerger_16_Rundschreiben (C_INFO) // E1
{
	nr			= 5;
	condition	= Info_REL_Buerger_16_Rundschreiben_Condition;
	information	= Info_REL_Buerger_16_Rundschreiben_Info;
	permanent	= 1;
	description = "I've got a newsletter for you.";
};                       

FUNC INT Info_REL_Buerger_16_Rundschreiben_Condition()
{
	if (Npc_HasItems(hero, ItWr_AnselmRundschreiben) >= 1)
	&& (Npc_HasItems(self, ItWr_AnselmRundschreiben) == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_REL_Buerger_16_Rundschreiben_Info()
{
	AI_Output(hero, self, "Info_Mod_REL_Buerger_43_Rundschreiben_15_00"); //I've got a newsletter for you.

	B_GiveInvItems	(hero, self, ItWr_AnselmRundschreiben, 1);

	if (Npc_HasItems(hero, ItWr_AnselmRundschreiben) == 0)
	{
		B_GivePlayerXP	(100);
	};
};

INSTANCE Info_REL_Buerger_16_FreudenspenderMachtBlind (C_INFO) // E1
{
	nr			= 6;
	condition	= Info_REL_Buerger_16_FreudenspenderMachtBlind_Condition;
	information	= Info_REL_Buerger_16_FreudenspenderMachtBlind_Info;
	permanent	= 1;
	description = "You take joy dispensers?";
};                       

FUNC INT Info_REL_Buerger_16_FreudenspenderMachtBlind_Condition()
{
	if (Mod_SL_PartBlind == 1)
	&& (self.aivar[AIV_FLUGBLATTVERTEILT] < Wld_GetDay())
	&& (Npc_GetDistToWP(self, "REL_CITY_107") < 3500)
	{
		return TRUE;
	};
};

FUNC VOID Info_REL_Buerger_16_FreudenspenderMachtBlind_Info()
{
	AI_Output(hero, self, "Info_Mod_REL_Buerger_43_FreudenspenderMachtBlind_15_00"); //You take joy dispensers?
	AI_Output(self, hero, "Info_Mod_REL_Buerger_43_FreudenspenderMachtBlind_43_01"); //Yes...
	AI_Output(hero, self, "Info_Mod_REL_Buerger_43_FreudenspenderMachtBlind_15_02"); //Aren't you scared?
	AI_Output(self, hero, "Info_Mod_REL_Buerger_43_FreudenspenderMachtBlind_43_03"); //From what?
	AI_Output(hero, self, "Info_Mod_REL_Buerger_43_FreudenspenderMachtBlind_15_04"); //Well, you know.... Pleasure giver makes blind.
	AI_Output(self, hero, "Info_Mod_REL_Buerger_43_FreudenspenderMachtBlind_43_05"); //What??? That shit!

	self.aivar[AIV_FLUGBLATTVERTEILT] = Wld_GetDay();

	Mod_SL_PartBlind_Counter += 1;
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_REL_Buerger_16 (var c_NPC slf)
{
	DIA_REL_Buerger_16_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_REL_Buerger_16_Rundschreiben.npc				= Hlp_GetInstanceID(slf);
	Info_REL_Buerger_16_FreudenspenderMachtBlind.npc				= Hlp_GetInstanceID(slf);
};
