INSTANCE Info_Mod_Melchior_Hi (C_INFO)
{
	npc		= Mod_7754_OUT_Melchior_EIS;
	nr		= 1;
	condition	= Info_Mod_Melchior_Hi_Condition;
	information	= Info_Mod_Melchior_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Melchior_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Marcus_UntoteOrks2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melchior_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Melchior_Hi_10_00"); //Reinforcements are finally here. I thought the commander had forgotten me.
	AI_Output(hero, self, "Info_Mod_Melchior_Hi_15_01"); //Actually, you're supposed to strengthen me. I need someone who can interrogate the orcs. You speak her language, don't you?!
	AI_Output(self, hero, "Info_Mod_Melchior_Hi_10_02"); //Yeah, but all the orcs around here are undead. You killed my friend Jacoby in the woods.
	AI_Output(self, hero, "Info_Mod_Melchior_Hi_10_03"); //There were so many of them that I had to flee. I don't think we can question them.
	AI_Output(hero, self, "Info_Mod_Melchior_Hi_15_04"); //But their leaders are still alive. There must be someone who's a little separated from the masses.
	AI_Output(self, hero, "Info_Mod_Melchior_Hi_10_05"); //There is one. He sends his reconnaissance troops from an old ruin to the ice area.
	AI_Output(hero, self, "Info_Mod_Melchior_Hi_15_06"); //Marcus will take over for you here, and you show me this ruin.

	B_StartOtherRoutine	(self, "GUIDETORUINE");
	B_StartOtherRoutine	(Mod_7754_OUT_Melchior_EIS, "ATMELCHIOR");
};

INSTANCE Info_Mod_Melchior_EXIT (C_INFO)
{
	npc		= Mod_7754_OUT_Melchior_EIS;
	nr		= 1;
	condition	= Info_Mod_Melchior_EXIT_Condition;
	information	= Info_Mod_Melchior_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Melchior_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Melchior_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
