INSTANCE Info_Mod_HofstaatRaufbold_HAL_Hi (C_INFO)
{
	npc		= Mod_7329_HS_Raufbold_HAL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_HAL_Hi_Condition;
	information	= Info_Mod_HofstaatRaufbold_HAL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatRaufbold_HAL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatRaufbold_HAL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_HAL_Hi_13_00"); //Huh?
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_HAL_Hi_15_01"); //Raufbold?! What are you doing here? Did you take the oracle drug, too?
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_HAL_Hi_13_02"); //No, I fell into the river.... Oxygen deficiency.
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_HAL_Hi_15_03"); //What's all this about?
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_HAL_Hi_13_04"); //This is a test! This must be an REVELATION! But we still have a test ahead of us.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_HAL_Hi_13_05"); //One last duel between us! The winner will receive the answer! The loser will drown in SCHAAAAAAAAM! Let's go now!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};
