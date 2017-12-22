INSTANCE Info_Mod_Namib_IR_Hi (C_INFO)
{
	npc		= Mod_7457_GUR_BaalNamib_IR;
	nr		= 1;
	condition	= Info_Mod_Namib_IR_Hi_Condition;
	information	= Info_Mod_Namib_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Namib_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_IR_Hi_02_00"); //Ta aura.... Tak, potezny demon na tej wyspie nie rózni sie od sypialni, jak go znalismy.
	AI_Output(self, hero, "Info_Mod_Namib_IR_Hi_02_01"); //Masz tego samego mistrza, nie ma co do tego watpliwosci. Moge to odczuc.
	AI_Output(self, hero, "Info_Mod_Namib_IR_Hi_02_02"); //Z niecierpliwoscia czekam na to, co tu znajdziemy.
};

INSTANCE Info_Mod_Namib_IR_GehtLos (C_INFO)
{
	npc		= Mod_7457_GUR_BaalNamib_IR;
	nr		= 1;
	condition	= Info_Mod_Namib_IR_GehtLos_Condition;
	information	= Info_Mod_Namib_IR_GehtLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Idzmy dalej. Czy odprowadzisz mnie na wyspe?";
};

FUNC INT Info_Mod_Namib_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Namib_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Namib_IR_GehtLos_02_00"); //Ach, mysle, ze juz jestem zbyt stary, by nadazyc za tym. Tutaj utrzymam stanowisko.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Namib_IR_Kram (C_INFO)
{
	npc		= Mod_7457_GUR_BaalNamib_IR;
	nr		= 1;
	condition	= Info_Mod_Namib_IR_Kram_Condition;
	information	= Info_Mod_Namib_IR_Kram_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz dla mnie cos, co moze mi pomóc?";
};

FUNC INT Info_Mod_Namib_IR_Kram_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_IR_Kram))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_IR_Kram_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_IR_Kram_15_00"); //Masz dla mnie cos, co moze mi pomóc?
	AI_Output(self, hero, "Info_Mod_Namib_IR_Kram_02_01"); //Mam przy sobie pewne role zaklecia w mojej wspólnocie braterskiej.
	AI_Output(self, hero, "Info_Mod_Namib_IR_Kram_02_02"); //Poza tym, moge pokazac wam jak zwiekszyc swoja magiczna moc.
};

INSTANCE Info_Mod_Namib_IR_Lernen (C_INFO)
{
	npc		= Mod_7457_GUR_BaalNamib_IR;
	nr		= 1;
	condition	= Info_Mod_Namib_IR_Lernen_Condition;
	information	= Info_Mod_Namib_IR_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce zwiekszyc swoja magiczna moc.";
};

FUNC INT Info_Mod_Namib_IR_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_IR_Kram))
	&& (hero.attribute[ATR_MANA_MAX] <= 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_IR_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_IR_Lernen_15_00"); //Chce zwiekszyc swoja magiczna moc.

	Info_ClearChoices	(Info_Mod_Namib_IR_Lernen);

	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, DIALOG_BACK, Info_Mod_Namib_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Namib_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Namib_IR_Lernen_1);
};

FUNC VOID Info_Mod_Namib_IR_Lernen_BACK()
{
	if (hero.attribute[ATR_MANA_MAX] >= 300)
	{
		AI_Output(self, hero, "Info_Mod_Namib_IR_Lernen_BACK_14_01"); //Twoje magiczne umiejetnosci sa teraz tak dobre, ze nie moge cie niczego nauczyc.
	};
	Info_ClearChoices	(Info_Mod_Namib_IR_Lernen);
};

FUNC VOID Info_Mod_Namib_IR_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Namib_IR_Lernen);

	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, DIALOG_BACK, Info_Mod_Namib_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Namib_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Namib_IR_Lernen_1);
};

FUNC VOID Info_Mod_Namib_IR_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Namib_IR_Lernen);

	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, DIALOG_BACK, Info_Mod_Namib_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Namib_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Namib_IR_Lernen_1);
};

INSTANCE Info_Mod_Namib_IR_Trade (C_INFO)
{
	npc		= Mod_7457_GUR_BaalNamib_IR;
	nr		= 1;
	condition	= Info_Mod_Namib_IR_Trade_Condition;
	information	= Info_Mod_Namib_IR_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Namib_IR_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_IR_Kram))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_IR_Trade_Info()
{
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Namib_IR_EXIT (C_INFO)
{
	npc		= Mod_7457_GUR_BaalNamib_IR;
	nr		= 1;
	condition	= Info_Mod_Namib_IR_EXIT_Condition;
	information	= Info_Mod_Namib_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Namib_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Namib_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
