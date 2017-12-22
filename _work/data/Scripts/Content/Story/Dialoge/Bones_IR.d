INSTANCE Info_Mod_Bones_IR_Hi (C_INFO)
{
	npc		= Mod_7464_PIR_Bones_IR;
	nr		= 1;
	condition	= Info_Mod_Bones_IR_Hi_Condition;
	information	= Info_Mod_Bones_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, Bones.";
};

FUNC INT Info_Mod_Bones_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bones_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bones_IR_Hi_15_00"); //Hello, Bones.

	if (Mod_VelayaDabei > 0)
	|| (Mod_CassiaDabei > 0)
	{
		AI_Output(hero, self, "Info_Mod_Bones_IR_Hi_15_01"); //Why are you looking so contrite?
		AI_Output(self, hero, "Info_Mod_Bones_IR_Hi_04_02"); //Um, oh, no, not so important...
		AI_Output(hero, self, "Info_Mod_Bones_IR_Hi_15_03"); //You had the beautiful woman you wanted on board.
		AI_Output(self, hero, "Info_Mod_Bones_IR_Hi_04_04"); //(evasive) Uh.... she wasn't my type.... exactly.
	}
	else if (Mod_SagittaDabei > 0)
	|| (Mod_UrielaDabei > 0)
	{
		AI_Output(hero, self, "Info_Mod_Bones_IR_Hi_15_05"); //Ohh, you don't look so good...
		AI_Output(self, hero, "Info_Mod_Bones_IR_Hi_04_06"); //Oh, just shut up.
		AI_Output(self, hero, "Info_Mod_Bones_IR_Hi_04_07"); //First the only woman on board is an old herbal aunt and then I can't even get to show her what a guy I am because my digestion is suddenly going crazy.
		AI_Output(self, hero, "Info_Mod_Bones_IR_Hi_04_08"); //Only now I'm beginning to feel better....
	};
};

INSTANCE Info_Mod_Bones_IR_GehtLos (C_INFO)
{
	npc		= Mod_7464_PIR_Bones_IR;
	nr		= 1;
	condition	= Info_Mod_Bones_IR_GehtLos_Condition;
	information	= Info_Mod_Bones_IR_GehtLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's get going. Will you escort me to the island?";
};

FUNC INT Info_Mod_Bones_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bones_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bones_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Bones_IR_GehtLos_04_00"); //What?! After this evil voyage?! Forget it! I'm not setting foot on the island....

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bones_IR_EXIT (C_INFO)
{
	npc		= Mod_7464_PIR_Bones_IR;
	nr		= 1;
	condition	= Info_Mod_Bones_IR_EXIT_Condition;
	information	= Info_Mod_Bones_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bones_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bones_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
