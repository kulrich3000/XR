INSTANCE Info_Mod_Velaya_IR_Hi (C_INFO)
{
	npc		= Mod_7468_BAU_Velaya_IR;
	nr		= 1;
	condition	= Info_Mod_Velaya_IR_Hi_Condition;
	information	= Info_Mod_Velaya_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Velaya_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Velaya_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Velaya_IR_Hi_17_00"); //Nieszczesliwy) Och, nie tak wyobrazalem sobie wielki swiat.
	AI_Output(self, hero, "Info_Mod_Velaya_IR_Hi_17_01"); //Przypomina mi o zimnych, wilgotnych scianach, w których uwieziono mnie od tak dawna.
	AI_Output(hero, self, "Info_Mod_Velaya_IR_Hi_15_02"); //Cóz, nie chcemy rozbijac tu namiotów zbyt dlugo.
	AI_Output(self, hero, "Info_Mod_Velaya_IR_Hi_17_03"); //Tak, zróbmy to, do czego tu przyjechalismy, a potem przejdzmy pod otwarte niebo tak szybko, jak potrafimy.
};

INSTANCE Info_Mod_Velaya_IR_Hebel (C_INFO)
{
	npc		= Mod_7468_BAU_Velaya_IR;
	nr		= 1;
	condition	= Info_Mod_Velaya_IR_Hebel_Condition;
	information	= Info_Mod_Velaya_IR_Hebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz uzyc jednej dzwigni, gdy poruszam druga?";
};

FUNC INT Info_Mod_Velaya_IR_Hebel_Condition()
{
	if (Mod_IR_Velaya == 1)
	&& (Mod_IR_HebelProb2 >= 2)
	&& (Mod_IR_Hebel == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_IR_Hebel_Info()
{
	B_Say	(hero, self, "$IRDORATHHEBEL");

	AI_Output(self, hero, "Info_Mod_Velaya_IR_Hebel_17_00"); //Oczywiscie tak jest. Moze to moze, ze gdzies nas zaprowadzi....

	Mod_IR_Hebel = 1;

	Mod_IR_Hebelmann = Hlp_GetNpc(self);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Velaya_IR_Ambient01 (C_INFO)
{
	npc		= Mod_7468_BAU_Velaya_IR;
	nr		= 1;
	condition	= Info_Mod_Velaya_IR_Ambient01_Condition;
	information	= Info_Mod_Velaya_IR_Ambient01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Velaya_IR_Ambient01_Condition()
{
	if (Npc_GetDistToWP(hero, "DI_ORKAREA_10") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_IR_Ambient01_Info()
{
	AI_Output(self, hero, "Info_Mod_Velaya_IR_Ambient01_17_00"); //Nie, nie nudzi cie az tyle okropnych rzeczy.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Velaya_IR_GehtLos (C_INFO)
{
	npc		= Mod_7468_BAU_Velaya_IR;
	nr		= 1;
	condition	= Info_Mod_Velaya_IR_GehtLos_Condition;
	information	= Info_Mod_Velaya_IR_GehtLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Idzmy dalej. Czy odprowadzisz mnie na wyspe?";
};

FUNC INT Info_Mod_Velaya_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Velaya_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (Mod_IR_Velaya == 0)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Velaya_IR_GehtLos_17_00"); //Cóz, lepiej niz nudny tutaj na pokladzie.... W przeciwnym razie podróz bylaby bezplatna.

	Mod_IR_Dabei += 1;

	Mod_IR_Velaya = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Velaya_IR_GehBack (C_INFO)
{
	npc		= Mod_7468_BAU_Velaya_IR;
	nr		= 1;
	condition	= Info_Mod_Velaya_IR_GehBack_Condition;
	information	= Info_Mod_Velaya_IR_GehBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wróc do statku.";
};

FUNC INT Info_Mod_Velaya_IR_GehBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Velaya_IR_Hi))
	&& (Mod_IR_Velaya == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_IR_GehBack_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHBACK");

	AI_Output(self, hero, "Info_Mod_Velaya_IR_GehBack_17_00"); //Cóz, jesli mnie potrzebujesz, wiesz, gdzie mnie znalezc.

	Mod_IR_Dabei -= 1;

	Mod_IR_Velaya = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Velaya_IR_Lehrer (C_INFO)
{
	npc		= Mod_7468_BAU_Velaya_IR;
	nr		= 1;
	condition	= Info_Mod_Velaya_IR_Lehrer_Condition;
	information	= Info_Mod_Velaya_IR_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Velaya_IR_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velaya_IR_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_IR_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Velaya_IR_Lehrer_17_01"); //Oczywiscie, nie mam przy sobie luku dla zabawy wokól ramion i perly z boku.
	AI_Output(self, hero, "Info_Mod_Velaya_IR_Lehrer_17_02"); //Potrafie pokazac wam, jak stac sie bardziej umiejetnymi i jak prawidlowo wyciagac luk.
};

INSTANCE Info_Mod_Velaya_IR_Lernen_Bogen (C_INFO)
{
	npc		= Mod_7468_BAU_Velaya_IR;
	nr		= 1;
	condition	= Info_Mod_Velaya_IR_Lernen_Bogen_Condition;
	information	= Info_Mod_Velaya_IR_Lernen_Bogen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie lucznictwa.";
};

FUNC INT Info_Mod_Velaya_IR_Lernen_Bogen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velaya_IR_Lehrer))
	&& (hero.hitchance[NPC_TALENT_BOW] < 100)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_IR_Lernen_Bogen_Info()
{
	AI_Output(hero, self, "Info_Mod_Velaya_IR_Lernen_Bogen_15_00"); //Naucz mnie lucznictwa.

	Info_ClearChoices	(Info_Mod_Velaya_IR_Lernen_Bogen);
	
	Info_AddChoice	(Info_Mod_Velaya_IR_Lernen_Bogen, "Z powrotem.", Info_Mod_Velaya_IR_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Velaya_IR_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Velaya_IR_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Velaya_IR_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Velaya_IR_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Velaya_IR_Lernen_Bogen_BACK()
{
	Info_ClearChoices	(Info_Mod_Velaya_IR_Lernen_Bogen);
};

FUNC VOID Info_Mod_Velaya_IR_Lernen_Bogen_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_BOW, 5, 100);

	Info_ClearChoices	(Info_Mod_Velaya_IR_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Velaya_IR_Lernen_Bogen, "Z powrotem.", Info_Mod_Velaya_IR_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Velaya_IR_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Velaya_IR_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Velaya_IR_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Velaya_IR_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Velaya_IR_Lernen_Bogen_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_BOW, 1, 100);

	Info_ClearChoices	(Info_Mod_Velaya_IR_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Velaya_IR_Lernen_Bogen, "Z powrotem.", Info_Mod_Velaya_IR_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Velaya_IR_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Velaya_IR_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Velaya_IR_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Velaya_IR_Lernen_Bogen_1);
};

INSTANCE Info_Mod_Velaya_IR_Lernen_DEX (C_INFO)
{
	npc		= Mod_7468_BAU_Velaya_IR;
	nr		= 1;
	condition	= Info_Mod_Velaya_IR_Lernen_DEX_Condition;
	information	= Info_Mod_Velaya_IR_Lernen_DEX_Info;
	permanent	= 1;
	important	= 0;
	description	= "Pokaz mi, jak byc bardziej umiejetnym.";
};

FUNC INT Info_Mod_Velaya_IR_Lernen_DEX_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velaya_IR_Lehrer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_IR_Lernen_DEX_Info()
{
	AI_Output(hero, self, "Info_Mod_Velaya_IR_Lernen_DEX_15_00"); //Pokaz mi, jak byc bardziej umiejetnym.
	AI_Output(self, hero, "Info_Mod_Velaya_IR_Lernen_DEX_16_01"); //Czego chcesz sie nauczyc?

	Info_ClearChoices	(Info_Mod_Velaya_IR_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Velaya_IR_Lernen_DEX, DIALOG_BACK, Info_Mod_Velaya_IR_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Velaya_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Velaya_IR_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Velaya_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Velaya_IR_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Velaya_IR_Lernen_DEX_BACK()
{
	Info_ClearChoices (Info_Mod_Velaya_IR_Lernen_DEX);
};

FUNC VOID Info_Mod_Velaya_IR_Lernen_DEX_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Velaya_IR_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Velaya_IR_Lernen_DEX, DIALOG_BACK, Info_Mod_Velaya_IR_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Velaya_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Velaya_IR_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Velaya_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Velaya_IR_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Velaya_IR_Lernen_DEX_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Velaya_IR_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Velaya_IR_Lernen_DEX, DIALOG_BACK, Info_Mod_Velaya_IR_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Velaya_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Velaya_IR_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Velaya_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Velaya_IR_Lernen_DEX_Geschick_1);
};

INSTANCE Info_Mod_Velaya_IR_Heiltrank (C_INFO)
{
	npc		= Mod_7468_BAU_Velaya_IR;
	nr		= 1;
	condition	= Info_Mod_Velaya_IR_Heiltrank_Condition;
	information	= Info_Mod_Velaya_IR_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(goraczka lecznicza)";
};

FUNC INT Info_Mod_Velaya_IR_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	&& (Mod_IR_Velaya == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_IR_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Velaya_IR_Heiltrank);

	Info_AddChoice	(Info_Mod_Velaya_IR_Heiltrank, DIALOG_BACK, Info_Mod_Velaya_IR_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Velaya_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Velaya_IR_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Velaya_IR_Heiltrank, "Eliksir uzdrawiania", Info_Mod_Velaya_IR_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Velaya_IR_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_Velaya_IR_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Velaya_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Velaya_IR_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Velaya_IR_Heiltrank, "Napój lekkiego leczenia", Info_Mod_Velaya_IR_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Velaya_IR_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_Velaya_IR_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Velaya_IR_Heiltrank, "Napoje szybko lecznicze", Info_Mod_Velaya_IR_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Velaya_IR_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Velaya_IR_Heiltrank);
};

FUNC VOID Info_Mod_Velaya_IR_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Velaya_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Velaya_IR_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Velaya_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Velaya_IR_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Velaya_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Velaya_IR_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Velaya_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Velaya_IR_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Velaya_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Velaya_IR_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Velaya_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Velaya_IR_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Velaya_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Velaya_IR_EXIT (C_INFO)
{
	npc		= Mod_7468_BAU_Velaya_IR;
	nr		= 1;
	condition	= Info_Mod_Velaya_IR_EXIT_Condition;
	information	= Info_Mod_Velaya_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Velaya_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Velaya_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
