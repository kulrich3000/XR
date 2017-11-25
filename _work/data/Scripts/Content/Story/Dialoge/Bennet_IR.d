INSTANCE Info_Mod_Bennet_IR_Hi (C_INFO)
{
	npc		= Mod_7453_NONE_Bennet_IR;
	nr		= 1;
	condition	= Info_Mod_Bennet_IR_Hi_Condition;
	information	= Info_Mod_Bennet_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bennet_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bennet_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bennet_IR_Hi_30_00"); //Yuck, nie spodziewalem sie takiego zimnego i wilgotnego wysypiska, kiedy m�wili, ze jedziemy na wyspe.
	AI_Output(self, hero, "Info_Mod_Bennet_IR_Hi_30_01"); //Mam szczescie miec kuznie zawsze w poblizu mnie.
};

INSTANCE Info_Mod_Bennet_IR_GehtLos (C_INFO)
{
	npc		= Mod_7453_NONE_Bennet_IR;
	nr		= 1;
	condition	= Info_Mod_Bennet_IR_GehtLos_Condition;
	information	= Info_Mod_Bennet_IR_GehtLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Idzmy dalej. Czy odprowadzisz mnie na wyspe?";
};

FUNC INT Info_Mod_Bennet_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bennet_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bennet_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Bennet_IR_GehtLos_30_00"); //Czy kochasz mnie? Przyszedlem na poklad jako kowal i bez centymetra odejde od pieca kuzniczego. Byloby jeszcze piekniej....

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bennet_IR_Kram (C_INFO)
{
	npc		= Mod_7453_NONE_Bennet_IR;
	nr		= 1;
	condition	= Info_Mod_Bennet_IR_Kram_Condition;
	information	= Info_Mod_Bennet_IR_Kram_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz dla mnie miecze i narzedzia do kucia?";
};

FUNC INT Info_Mod_Bennet_IR_Kram_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bennet_IR_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bennet_IR_Kram_Info()
{
	AI_Output(hero, self, "Info_Mod_Bennet_IR_Kram_15_00"); //Masz dla mnie miecze i narzedzia do kucia?
	AI_Output(self, hero, "Info_Mod_Bennet_IR_Kram_30_01"); //Pewne. Skoro i tak nie mam zbyt wiele do zrobienia, moge r�wniez pokazac, jak zdobyc mocniejsze ramie.
};

INSTANCE Info_Mod_Bennet_IR_Staerke (C_INFO)
{
	npc		= Mod_7453_NONE_Bennet_IR;
	nr		= 1;
	condition	= Info_Mod_Bennet_IR_Staerke_Condition;
	information	= Info_Mod_Bennet_IR_Staerke_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce byc silniejszy.";
};

FUNC INT Info_Mod_Bennet_IR_Staerke_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bennet_IR_Kram))
	&& (hero.attribute[ATR_STRENGTH] < 200)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bennet_IR_Staerke_Info()
{
	AI_Output(hero, self, "Info_Mod_Bennet_IR_Staerke_15_00"); //Chce byc silniejszy.

	Info_ClearChoices	(Info_Mod_Bennet_IR_Staerke);

	Info_AddChoice 		(Info_Mod_Bennet_IR_Staerke, DIALOG_BACK, Info_Mod_Bennet_IR_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Bennet_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Bennet_IR_Staerke_5);
	Info_AddChoice		(Info_Mod_Bennet_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Bennet_IR_Staerke_1);
};

FUNC VOID Info_Mod_Bennet_IR_Staerke_BACK()
{
	Info_ClearChoices	(Info_Mod_Bennet_IR_Staerke);
};

func void Info_Mod_Bennet_IR_Staerke_1()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 1, 200);

	Info_ClearChoices	(Info_Mod_Bennet_IR_Staerke);
	Info_AddChoice		(Info_Mod_Bennet_IR_Staerke, DIALOG_BACK, Info_Mod_Bennet_IR_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Bennet_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Bennet_IR_Staerke_5);
	Info_AddChoice		(Info_Mod_Bennet_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Bennet_IR_Staerke_1);
};

FUNC VOID Info_Mod_Bennet_IR_Staerke_5()
{
	B_TeachAttributePoints_New (self, other, ATR_STRENGTH, 5, 20);
	
	Info_ClearChoices	(Info_Mod_Bennet_IR_Staerke);
	Info_AddChoice		(Info_Mod_Bennet_IR_Staerke, DIALOG_BACK, Info_Mod_Bennet_IR_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Bennet_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Bennet_IR_Staerke_5);
	Info_AddChoice		(Info_Mod_Bennet_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Bennet_IR_Staerke_1);
};

INSTANCE Info_Mod_Bennet_IR_Trade (C_INFO)
{
	npc		= Mod_7453_NONE_Bennet_IR;
	nr		= 1;
	condition	= Info_Mod_Bennet_IR_Trade_Condition;
	information	= Info_Mod_Bennet_IR_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Bennet_IR_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bennet_IR_Kram))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bennet_IR_Trade_Info()
{
	Backup_Questitems();

	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Bennet_IR_EXIT (C_INFO)
{
	npc		= Mod_7453_NONE_Bennet_IR;
	nr		= 1;
	condition	= Info_Mod_Bennet_IR_EXIT_Condition;
	information	= Info_Mod_Bennet_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bennet_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bennet_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
