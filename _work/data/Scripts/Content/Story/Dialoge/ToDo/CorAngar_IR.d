INSTANCE Info_Mod_Angar_IR_Hi (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_Hi_Condition;
	information	= Info_Mod_Angar_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cóz, co Pan mówi?";
};

FUNC INT Info_Mod_Angar_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Angar_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Angar_IR_Hi_15_00"); //Cóz, co Pan mówi?
	AI_Output(self, hero, "Info_Mod_Angar_IR_Hi_34_01"); //Tak, to jest cel naszej podrózy.
	AI_Output(self, hero, "Info_Mod_Angar_IR_Hi_34_02"); //Oto wladam mieczem przeciwko tym, którzy sa winni smierci Mistrza J' berionu.
	AI_Output(self, hero, "Info_Mod_Angar_IR_Hi_34_03"); //Tylko wtedy, gdy jego smierc zostanie odpoczeta 100 razy przez zdruzgotane ciala naszych wrogów, moge znowu odpoczac.
	AI_Output(hero, self, "Info_Mod_Angar_IR_Hi_15_04"); //Oh, to wlasnie taki rodzaj postawy, jakiej potrzebujemy do tej wyprawy.
};

INSTANCE Info_Mod_Angar_IR_Hebel (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_Hebel_Condition;
	information	= Info_Mod_Angar_IR_Hebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz uzyc jednej dzwigni, gdy poruszam druga?";
};

FUNC INT Info_Mod_Angar_IR_Hebel_Condition()
{
	if (Mod_IR_Angar == 1)
	&& (Mod_IR_HebelProb2 >= 2)
	&& (Mod_IR_Hebel == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_Hebel_Info()
{
	B_Say	(hero, self, "$IRDORATHHEBEL");

	AI_Output(self, hero, "Info_Mod_Angar_IR_Hebel_34_00"); //Oczywiscie tak jest. Moze to moze, ze gdzies nas zaprowadzi....

	Mod_IR_Hebel = 1;

	Mod_IR_Hebelmann = Hlp_GetNpc(self);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Angar_IR_GehtLos (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_GehtLos_Condition;
	information	= Info_Mod_Angar_IR_GehtLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Idzmy dalej. Czy odprowadzisz mnie na wyspe?";
};

FUNC INT Info_Mod_Angar_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Angar_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (Mod_IR_Angar == 0)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Angar_IR_GehtLos_34_00"); //Oczywiscie tak jest. Kiedy sytuacja tego wymaga, czlowiek powinien przekonywac nie tylko slowami, ale i czynami.

	Mod_IR_Dabei += 1;

	Mod_IR_Angar = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Angar_IR_GehBack (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_GehBack_Condition;
	information	= Info_Mod_Angar_IR_GehBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wróc do statku.";
};

FUNC INT Info_Mod_Angar_IR_GehBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Angar_IR_Hi))
	&& (Mod_IR_Angar == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_GehBack_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHBACK");

	AI_Output(self, hero, "Info_Mod_Angar_IR_GehBack_34_00"); //Cóz, jesli mnie potrzebujesz, wiesz, gdzie mnie znalezc.

	Mod_IR_Dabei -= 1;

	Mod_IR_Angar = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Angar_IR_Kram (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_Kram_Condition;
	information	= Info_Mod_Angar_IR_Kram_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Angar_IR_Kram_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_IR_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_Kram_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Angar_IR_Kram_34_01"); //Potrafie nauczyc sie trzymac miecz obureczny i pokazac wam, jak skuteczniej wykorzystywac sily waszego ciala.
};

INSTANCE Info_Mod_Angar_IR_Lernen (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_Lernen_Condition;
	information	= Info_Mod_Angar_IR_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce sie uczyc.";
};

FUNC INT Info_Mod_Angar_IR_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_IR_Kram))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Angar_IR_Lernen_15_00"); //Chce sie uczyc.

	Info_ClearChoices	(Info_Mod_Angar_IR_Lernen);

	Info_AddChoice		(Info_Mod_Angar_IR_Lernen, DIALOG_BACK, Info_Mod_Angar_IR_Lernen_Zweihand_BACK);
	Info_AddChoice		(Info_Mod_Angar_IR_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H))		,Info_Mod_Angar_IR_Lernen_Zweihand_5);
	Info_AddChoice		(Info_Mod_Angar_IR_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1))		,Info_Mod_Angar_IR_Lernen_Zweihand_1);
};

FUNC VOID Info_Mod_Angar_IR_Lernen_Zweihand_BACK()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Lernen);
};

FUNC VOID Info_Mod_Angar_IR_Lernen_Zweihand_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Angar_IR_Lernen);

		Info_AddChoice		(Info_Mod_Angar_IR_Lernen, DIALOG_BACK, Info_Mod_Angar_IR_Lernen_Zweihand_BACK);
		Info_AddChoice		(Info_Mod_Angar_IR_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H))		,Info_Mod_Angar_IR_Lernen_Zweihand_5);
		Info_AddChoice		(Info_Mod_Angar_IR_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1))		,Info_Mod_Angar_IR_Lernen_Zweihand_1);
	};
};

FUNC VOID Info_Mod_Angar_IR_Lernen_Zweihand_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Angar_IR_Lernen);

		Info_AddChoice		(Info_Mod_Angar_IR_Lernen, DIALOG_BACK, Info_Mod_Angar_IR_Lernen_Zweihand_BACK);
		Info_AddChoice		(Info_Mod_Angar_IR_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H))		,Info_Mod_Angar_IR_Lernen_Zweihand_5);
		Info_AddChoice		(Info_Mod_Angar_IR_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1))		,Info_Mod_Angar_IR_Lernen_Zweihand_1);
	};
};

INSTANCE Info_Mod_Angar_IR_Staerke (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_Staerke_Condition;
	information	= Info_Mod_Angar_IR_Staerke_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce byc silniejszy.";
};

FUNC INT Info_Mod_Angar_IR_Staerke_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_IR_Kram))
	&& (hero.attribute[ATR_STRENGTH] < 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_Staerke_Info()
{
	AI_Output(hero, self, "Info_Mod_Angar_IR_Staerke_15_00"); //Chce byc silniejszy.

	Info_ClearChoices	(Info_Mod_Angar_IR_Staerke);

	Info_AddChoice 		(Info_Mod_Angar_IR_Staerke, DIALOG_BACK, Info_Mod_Angar_IR_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Angar_IR_Staerke_5);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Angar_IR_Staerke_1);
};

FUNC VOID Info_Mod_Angar_IR_Staerke_BACK()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Staerke);
};

func void Info_Mod_Angar_IR_Staerke_1()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 1, 200);

	Info_ClearChoices	(Info_Mod_Angar_IR_Staerke);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, DIALOG_BACK, Info_Mod_Angar_IR_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Angar_IR_Staerke_5);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Angar_IR_Staerke_1);
};

FUNC VOID Info_Mod_Angar_IR_Staerke_5()
{
	B_TeachAttributePoints_New (self, other, ATR_STRENGTH, 5, 020);
	
	Info_ClearChoices	(Info_Mod_Angar_IR_Staerke);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, DIALOG_BACK, Info_Mod_Angar_IR_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Angar_IR_Staerke_5);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Angar_IR_Staerke_1);
};

INSTANCE Info_Mod_Angar_IR_Heiltrank (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_Heiltrank_Condition;
	information	= Info_Mod_Angar_IR_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(goraczka lecznicza)";
};

FUNC INT Info_Mod_Angar_IR_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	&& (Mod_IR_Angar == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, DIALOG_BACK, Info_Mod_Angar_IR_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Angar_IR_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Eliksir uzdrawiania", Info_Mod_Angar_IR_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_Angar_IR_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Angar_IR_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Napój lekkiego leczenia", Info_Mod_Angar_IR_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_Angar_IR_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Napoje szybko lecznicze", Info_Mod_Angar_IR_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Angar_IR_EXIT (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_EXIT_Condition;
	information	= Info_Mod_Angar_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Angar_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Angar_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
