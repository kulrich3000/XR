INSTANCE Info_Mod_Raven_IR_Hi (C_INFO)
{
	npc		= Mod_7446_DMR_Raven_IR;
	nr		= 1;
	condition	= Info_Mod_Raven_IR_Hi_Condition;
	information	= Info_Mod_Raven_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "And, wasn't the voyage an experience for all the senses?";
};

FUNC INT Info_Mod_Raven_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raven_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_IR_Hi_15_00"); //And, wasn't the voyage an experience for all the senses?
	AI_Output(self, hero, "Info_Mod_Raven_IR_Hi_03_01"); //What, are you mocking me?!
	AI_Output(self, hero, "Info_Mod_Raven_IR_Hi_03_02"); //The only experience I had was my stomach, the whole trip.
	AI_Output(self, hero, "Info_Mod_Raven_IR_Hi_03_03"); //Now get out of my sight.
};

INSTANCE Info_Mod_Raven_IR_GehtLos (C_INFO)
{
	npc		= Mod_7446_DMR_Raven_IR;
	nr		= 1;
	condition	= Info_Mod_Raven_IR_GehtLos_Condition;
	information	= Info_Mod_Raven_IR_GehtLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's get going. Will you escort me to the island?";
};

FUNC INT Info_Mod_Raven_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Raven_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Raven_IR_GehtLos_03_00"); //No! Xardas may have instructed me to come along. But there was no talk of fighting.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Raven_IR_EXIT (C_INFO)
{
	npc		= Mod_7446_DMR_Raven_IR;
	nr		= 1;
	condition	= Info_Mod_Raven_IR_EXIT_Condition;
	information	= Info_Mod_Raven_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Raven_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raven_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
