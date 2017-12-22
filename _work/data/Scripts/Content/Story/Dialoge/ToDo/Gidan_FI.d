INSTANCE Info_Mod_Gidan_FI_Hi (C_INFO)
{
	npc		= Mod_1974_MIL_Gidan_FI;
	nr		= 1;
	condition	= Info_Mod_Gidan_FI_Hi_Condition;
	information	= Info_Mod_Gidan_FI_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_FI_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gidan_FI_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gidan_FI_Hi_13_00"); //You got here faster than I expected. I have a very special welcoming committee for you.
	AI_Output(self, hero, "Info_Mod_Gidan_FI_Hi_13_01"); //And as a bonus, the answer to a small question. What does the new brotherhood want with magic ore? SIEH SELBST. (laughs)

	AI_StopProcessInfos	(self);

	B_InitMonsterAttitudes();

	B_StartOtherRoutine	(self, "WATCHFIGHT");
};

INSTANCE Info_Mod_Gidan_FI_FirstWaveDead (C_INFO)
{
	npc		= Mod_1974_MIL_Gidan_FI;
	nr		= 1;
	condition	= Info_Mod_Gidan_FI_FirstWaveDead_Condition;
	information	= Info_Mod_Gidan_FI_FirstWaveDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_FI_FirstWaveDead_Condition()
{
	if (FI_Story == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_FI_FirstWaveDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Gidan_FI_FirstWaveDead_13_00"); //You're good. But once we have your blood, the sleeper will rise again.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WATCHFIGHT");
};

INSTANCE Info_Mod_Gidan_FI_SecondWaveDead (C_INFO)
{
	npc		= Mod_1974_MIL_Gidan_FI;
	nr		= 1;
	condition	= Info_Mod_Gidan_FI_SecondWaveDead_Condition;
	information	= Info_Mod_Gidan_FI_SecondWaveDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_FI_SecondWaveDead_Condition()
{
	if (FI_Story == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_FI_SecondWaveDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Gidan_FI_SecondWaveDead_13_00"); //You've survived too long! Now you're going to die!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WATCHFIGHT");
	B_StartOtherRoutine	(Mod_1981_Kolam_FI, "REDE");
};

INSTANCE Info_Mod_Gidan_FI_EXIT (C_INFO)
{
	npc		= Mod_1974_MIL_Gidan_FI;
	nr		= 1;
	condition	= Info_Mod_Gidan_FI_EXIT_Condition;
	information	= Info_Mod_Gidan_FI_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gidan_FI_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gidan_FI_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
