INSTANCE Info_Mod_Raven_IR_Hi (C_INFO)
{
	npc		= Mod_7446_DMR_Raven_IR;
	nr		= 1;
	condition	= Info_Mod_Raven_IR_Hi_Condition;
	information	= Info_Mod_Raven_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "I czy podróz nie byla doswiadczeniem dla wszystkich zmyslów?";
};

FUNC INT Info_Mod_Raven_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raven_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_IR_Hi_15_00"); //I czy podróz nie byla doswiadczeniem dla wszystkich zmyslów?
	AI_Output(self, hero, "Info_Mod_Raven_IR_Hi_10_01"); //Co mnie szydzisz?
	AI_Output(self, hero, "Info_Mod_Raven_IR_Hi_10_02"); //Jedynym doswiadczeniem, które przezylem byl mój zoladek, cala podróz.
	AI_Output(self, hero, "Info_Mod_Raven_IR_Hi_10_03"); //Teraz wyjdz z oczu.
};

INSTANCE Info_Mod_Raven_IR_GehtLos (C_INFO)
{
	npc		= Mod_7446_DMR_Raven_IR;
	nr		= 1;
	condition	= Info_Mod_Raven_IR_GehtLos_Condition;
	information	= Info_Mod_Raven_IR_GehtLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Idzmy dalej. Czy odprowadzisz mnie na wyspe?";
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

	AI_Output(self, hero, "Info_Mod_Raven_IR_GehtLos_10_00"); //Nie! Byc moze ksardas polecil mi przyjsc. Nie bylo jednak mowy o walkach.

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
