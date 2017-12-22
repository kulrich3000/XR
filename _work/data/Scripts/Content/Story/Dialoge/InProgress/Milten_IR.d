INSTANCE Info_Mod_Milten_IR_Hi (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Hi_Condition;
	information	= Info_Mod_Milten_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "A zatem, co sadzicie o tym do tej pory?";
};

FUNC INT Info_Mod_Milten_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Milten_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_IR_Hi_15_00"); //A zatem, co sadzicie o tym do tej pory?
	AI_Output(self, hero, "Info_Mod_Milten_IR_Hi_28_01"); //Cóz, to ciemne miejsce zawdziecza czarownikowi Xeresowi.
	AI_Output(self, hero, "Info_Mod_Milten_IR_Hi_28_02"); //To, czego od dawna brakuje w tym miejscu, to oswietlajacy ogien Inno.
	AI_Output(self, hero, "Info_Mod_Milten_IR_Hi_28_03"); //Miejmy nadzieje, ze jego blogoslawienstwo bedzie nam dobrze sluzylo, gdy przychodzi do wygnania demonicznego wylegu, który tu gniezdzi.
	AI_Output(hero, self, "Info_Mod_Milten_IR_Hi_15_04"); //Oh, bardzo niezwykle dzwieki. Mówisz jak magik ognia wlasnej wolnej woli.
	AI_Output(self, hero, "Info_Mod_Milten_IR_Hi_28_05"); //No cóz, to z pewnoscia chlód i ciemnosc zbliza mnie do Inno.
	AI_Output(self, hero, "Info_Mod_Milten_IR_Hi_28_06"); //Tutaj dostrzegam, co w nim mam.
};

INSTANCE Info_Mod_Milten_IR_Hebel (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Hebel_Condition;
	information	= Info_Mod_Milten_IR_Hebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz uzyc jednej dzwigni, gdy poruszam druga?";
};

FUNC INT Info_Mod_Milten_IR_Hebel_Condition()
{
	if (Mod_IR_Milten == 1)
	&& (Mod_IR_HebelProb2 >= 2)
	&& (Mod_IR_Hebel == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_Hebel_Info()
{
	B_Say	(hero, self, "$IRDORATHHEBEL");

	AI_Output(self, hero, "Info_Mod_Milten_IR_Hebel_28_00"); //Oczywiscie tak jest. Moze to moze, ze gdzies nas zaprowadzi....

	Mod_IR_Hebel = 1;

	Mod_IR_Hebelmann = Hlp_GetNpc(self);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Milten_IR_Ambient01 (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Ambient01_Condition;
	information	= Info_Mod_Milten_IR_Ambient01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_IR_Ambient01_Condition()
{
	if (Npc_GetDistToWP(hero, "DI_SHIP_08") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_Ambient01_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_IR_Ambient01_28_00"); //Popiól do popiolów i pyl do kurzu. Ogien Inno prowadzi kosci tych nieumarlych do ich wlasciwego przeznaczenia.
	AI_Output(hero, self, "Info_Mod_Milten_IR_Ambient01_15_01"); //Tak, ogien Inno doklada wszelkich staran, aby suszone kosci tych pasjonatów zamienic w popioly.

	AI_StopProcessInfos	(hero);
};

INSTANCE Info_Mod_Milten_IR_GehtLos (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_GehtLos_Condition;
	information	= Info_Mod_Milten_IR_GehtLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Idzmy dalej. Czy odprowadzisz mnie na wyspe?";
};

FUNC INT Info_Mod_Milten_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (Mod_IR_Milten == 0)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Milten_IR_GehtLos_28_00"); //Oczywiscie pójde z wami. Niech ogien Inno podpalil pasjonatów.

	Mod_IR_Dabei += 1;

	Mod_IR_Milten = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Milten_IR_GehBack (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_GehBack_Condition;
	information	= Info_Mod_Milten_IR_GehBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wróc do statku.";
};

FUNC INT Info_Mod_Milten_IR_GehBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_IR_Hi))
	&& (Mod_IR_Milten == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_GehBack_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHBACK");

	AI_Output(self, hero, "Info_Mod_Milten_IR_GehBack_28_00"); //Cóz, jesli mnie potrzebujesz, wiesz, gdzie mnie znalezc.

	Mod_IR_Dabei -= 1;

	Mod_IR_Milten = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Milten_IR_Kram (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Kram_Condition;
	information	= Info_Mod_Milten_IR_Kram_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Milten_IR_Kram_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_IR_Kram))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_Kram_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Milten_IR_Kram_28_01"); //Tak, oczywiscie. Moge cie nauczyc, jak zwiekszyc swoja magiczna moc.
	AI_Output(self, hero, "Info_Mod_Milten_IR_Kram_28_02"); //Mam tez kilka zaklec klasztoru, jesli chcesz je obejrzec.
};

INSTANCE Info_Mod_Milten_IR_Lernen (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Lernen_Condition;
	information	= Info_Mod_Milten_IR_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce zwiekszyc swoja magiczna moc.";
};

FUNC INT Info_Mod_Milten_IR_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_IR_Kram))
	&& (hero.attribute[ATR_MANA_MAX] <= 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_IR_Lernen_15_00"); //Chce zwiekszyc swoja magiczna moc.

	Info_ClearChoices	(Info_Mod_Milten_IR_Lernen);

	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, DIALOG_BACK, Info_Mod_Milten_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Milten_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Milten_IR_Lernen_1);
};

FUNC VOID Info_Mod_Milten_IR_Lernen_BACK()
{
	if (hero.attribute[ATR_MANA_MAX] >= 300)
	{
		AI_Output(self, hero, "Info_Mod_Milten_IR_Lernen_BACK_14_01"); //Twoje magiczne umiejetnosci sa teraz tak dobre, ze nie moge cie niczego nauczyc.
	};
	Info_ClearChoices	(Info_Mod_Milten_IR_Lernen);
};

FUNC VOID Info_Mod_Milten_IR_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Milten_IR_Lernen);

	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, DIALOG_BACK, Info_Mod_Milten_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Milten_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Milten_IR_Lernen_1);
};

FUNC VOID Info_Mod_Milten_IR_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Milten_IR_Lernen);

	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, DIALOG_BACK, Info_Mod_Milten_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Milten_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Milten_IR_Lernen_1);
};

INSTANCE Info_Mod_Milten_IR_Trade (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Trade_Condition;
	information	= Info_Mod_Milten_IR_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Milten_IR_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_IR_Kram))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_Trade_Info()
{
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Milten_IR_Heiltrank (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Heiltrank_Condition;
	information	= Info_Mod_Milten_IR_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(goraczka lecznicza)";
};

FUNC INT Info_Mod_Milten_IR_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	&& (Mod_IR_Milten == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, DIALOG_BACK, Info_Mod_Milten_IR_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Milten_IR_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Eliksir uzdrawiania", Info_Mod_Milten_IR_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_Milten_IR_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Milten_IR_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Napój lekkiego leczenia", Info_Mod_Milten_IR_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_Milten_IR_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Napoje szybko lecznicze", Info_Mod_Milten_IR_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Milten_IR_EXIT (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_EXIT_Condition;
	information	= Info_Mod_Milten_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Milten_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Milten_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
