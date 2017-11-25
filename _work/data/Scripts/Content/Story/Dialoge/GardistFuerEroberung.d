INSTANCE Info_Mod_GardistFuerEroberung_Hi (C_INFO)
{
	npc		= Mod_1156_GRD_Gardist_MT;
	nr		= 1;
	condition	= Info_Mod_GardistFuerEroberung_Hi_Condition;
	information	= Info_Mod_GardistFuerEroberung_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_GardistFuerEroberung_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartholo_Sumpfkraut))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GardistFuerEroberung_Hi_Info()
{
	AI_TurnToNpc	(self, Mod_1106_EBR_Bartholo_MT);

	AI_Output(self, Mod_1106_EBR_Bartholo_MT, "Info_Mod_GardistFuerEroberung_Hi_13_00"); //We're under attack!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_GardistFuerEroberung_Hi_02 (C_INFO)
{
	npc		= Mod_1156_GRD_Gardist_MT;
	nr		= 1;
	condition	= Info_Mod_GardistFuerEroberung_Hi_02_Condition;
	information	= Info_Mod_GardistFuerEroberung_Hi_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_GardistFuerEroberung_Hi_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartholo_Eroberung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GardistFuerEroberung_Hi_02_Info()
{
	AI_TurnToNpc	(self, Mod_1106_EBR_Bartholo_MT);

	AI_Output(self, Mod_1106_EBR_Bartholo_MT, "Info_Mod_GardistFuerEroberung_Hi_02_13_00"); //Apparently, the Healing Magicians gave us away and gave someone the signal to open the gate.

	AI_StopProcessInfos	(self);
};
