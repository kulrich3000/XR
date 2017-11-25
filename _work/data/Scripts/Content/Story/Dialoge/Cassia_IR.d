INSTANCE Info_Mod_Cassia_IR_Hi (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Hi_Condition;
	information	= Info_Mod_Cassia_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cassia_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Hi_16_00"); //Hmm, to sanktuarium poteznych demonów nie wyglada wspaniale.
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Hi_16_01"); //Mam nadzieje, ze podróz ta bedzie warta zachodu..... nieliczne zlote monety na statku nie zastapily jeszcze wysilków.
	AI_Output(hero, self, "Info_Mod_Cassia_IR_Hi_15_02"); //Wszystko w odpowiednim czasie. Jesli pójdziemy dalej w glab wyspy, jeden lub drugi cenny kawalek z pewnoscia spadnie.
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Hi_16_03"); //Zobaczymy jak....
};

INSTANCE Info_Mod_Cassia_IR_Bones (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Bones_Condition;
	information	= Info_Mod_Cassia_IR_Bones_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powiedz mi, czy wiesz, co jest nie tak z kosciami?";
};

FUNC INT Info_Mod_Cassia_IR_Bones_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bones_IR_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Bones_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_IR_Bones_15_00"); //Powiedz mi, czy wiesz, co jest nie tak z kosciami?
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Bones_16_01"); //Kosci? Och, masz na mysli niemyty pirat.
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Bones_16_02"); //No cóz, wlozylem go do kacika z mieczem, kiedy chcial zbytnio popchnac.
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Bones_16_03"); //Hmm, ale jakos mi sie wydaje, ze widzialem go wiele lat temu.... Tak, z ojcem....
	AI_Output(hero, self, "Info_Mod_Cassia_IR_Bones_15_04"); //Twój ojciec?
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Bones_16_05"); //Tak, byl marynarzem. Pozostawilem mnie i moja matke za soba, kiedy znów wyruszyl na zagiel. Gregor byl jego nazwiskiem.....
};

INSTANCE Info_Mod_Cassia_IR_Hebel (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Hebel_Condition;
	information	= Info_Mod_Cassia_IR_Hebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz uzyc jednej dzwigni, gdy poruszam druga?";
};

FUNC INT Info_Mod_Cassia_IR_Hebel_Condition()
{
	if (Mod_IR_Cassia == 1)
	&& (Mod_IR_HebelProb2 >= 2)
	&& (Mod_IR_Hebel == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Hebel_Info()
{
	B_Say	(hero, self, "$IRDORATHHEBEL");

	AI_Output(self, hero, "Info_Mod_Cassia_IR_Hebel_16_00"); //Oczywiscie tak jest. Moze to moze, ze gdzies nas zaprowadzi....

	Mod_IR_Hebel = 1;

	Mod_IR_Hebelmann = Hlp_GetNpc(self);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cassia_IR_Ambient01 (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Ambient01_Condition;
	information	= Info_Mod_Cassia_IR_Ambient01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_IR_Ambient01_Condition()
{
	if (Npc_GetDistToWP(hero, "DI_ORKAREA_10") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Ambient01_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Ambient01_16_00"); //Cóz, do tej pory niewiele zlota, ale rózne antyki.
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Ambient01_16_01"); //Dla niektórych handlowców i plotów powinni tez zrobic calkiem sporo grosza.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cassia_IR_GehtLos (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_GehtLos_Condition;
	information	= Info_Mod_Cassia_IR_GehtLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Idzmy dalej. Czy odprowadzisz mnie na wyspe?";
};

FUNC INT Info_Mod_Cassia_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Cassia_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (Mod_IR_Cassia == 0)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Cassia_IR_GehtLos_16_00"); //Tak, w porzadku. Zobaczmy, jakie skarby kryja sie w tej dziurze.

	Mod_IR_Dabei += 1;

	Mod_IR_Cassia = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Cassia_IR_GehBack (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_GehBack_Condition;
	information	= Info_Mod_Cassia_IR_GehBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wróc do statku.";
};

FUNC INT Info_Mod_Cassia_IR_GehBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Cassia_IR_Hi))
	&& (Mod_IR_Cassia == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_GehBack_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHBACK");

	AI_Output(self, hero, "Info_Mod_Cassia_IR_GehBack_16_00"); //Cóz, jesli mnie potrzebujesz, wiesz, gdzie mnie znalezc.

	Mod_IR_Dabei -= 1;

	Mod_IR_Cassia = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Cassia_IR_Lehrer (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Lehrer_Condition;
	information	= Info_Mod_Cassia_IR_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Cassia_IR_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_IR_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Cassia_IR_Lehrer_16_01"); //Potrafie nauczyc Cie jak uzywac broni jednorecznej i doskonalic swoje umiejetnosci.
};

INSTANCE Info_Mod_Cassia_IR_Lernen_Einhand (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Lernen_Einhand_Condition;
	information	= Info_Mod_Cassia_IR_Lernen_Einhand_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie walki jedna reka.";
};

FUNC INT Info_Mod_Cassia_IR_Lernen_Einhand_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_IR_Lehrer))
	&& (hero.hitchance[NPC_TALENT_1H] < 100)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_Einhand_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_IR_Lernen_Einhand_15_00"); //Naucz mnie walki jedna reka.

	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_Einhand);
	
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, "Z powrotem.", Info_Mod_Cassia_IR_Lernen_Einhand_BACK);
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, B_BuildLearnString(PRINT_Learn1H5, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cassia_IR_Lernen_Einhand_5);
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, B_BuildLearnString(PRINT_Learn1H1, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cassia_IR_Lernen_Einhand_1);
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_Einhand_BACK()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_Einhand);
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_Einhand_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_1H, 5, 100);

	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_Einhand);

	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, "Z powrotem.", Info_Mod_Cassia_IR_Lernen_Einhand_BACK);
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, B_BuildLearnString(PRINT_Learn1H5, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cassia_IR_Lernen_Einhand_5);
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, B_BuildLearnString(PRINT_Learn1H1, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cassia_IR_Lernen_Einhand_1);
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_Einhand_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_1H, 1, 100);

	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_Einhand);

	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, "Z powrotem.", Info_Mod_Cassia_IR_Lernen_Einhand_BACK);
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, B_BuildLearnString(PRINT_Learn1H5, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cassia_IR_Lernen_Einhand_5);
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, B_BuildLearnString(PRINT_Learn1H1, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cassia_IR_Lernen_Einhand_1);
};

INSTANCE Info_Mod_Cassia_IR_Lernen_DEX (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Lernen_DEX_Condition;
	information	= Info_Mod_Cassia_IR_Lernen_DEX_Info;
	permanent	= 1;
	important	= 0;
	description	= "Pokaz mi, jak byc bardziej umiejetnym.";
};

FUNC INT Info_Mod_Cassia_IR_Lernen_DEX_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_IR_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_DEX_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_IR_Lernen_DEX_15_00"); //Pokaz mi, jak byc bardziej umiejetnym.
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Lernen_DEX_16_01"); //Czego chcesz sie nauczyc?

	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_IR_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_IR_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_IR_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_IR_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_DEX_BACK()
{
	Info_ClearChoices (Info_Mod_Cassia_IR_Lernen_DEX);
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_DEX_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_IR_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_IR_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_IR_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_IR_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_DEX_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_IR_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_IR_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_IR_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_IR_Lernen_DEX_Geschick_1);
};

INSTANCE Info_Mod_Cassia_IR_Heiltrank (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Heiltrank_Condition;
	information	= Info_Mod_Cassia_IR_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(goraczka lecznicza)";
};

FUNC INT Info_Mod_Cassia_IR_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	&& (Mod_IR_Cassia == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, DIALOG_BACK, Info_Mod_Cassia_IR_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	&& (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX]-HP_Elixier)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Cassia_IR_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 3)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_Elixier)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Eliksir uzdrawiania", Info_Mod_Cassia_IR_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_Extrakt)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_Cassia_IR_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_Essenz)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Cassia_IR_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_06)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Napój lekkiego leczenia", Info_Mod_Cassia_IR_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_06)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_Cassia_IR_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_05)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Napoje szybko lecznicze", Info_Mod_Cassia_IR_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Cassia_IR_EXIT (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_EXIT_Condition;
	information	= Info_Mod_Cassia_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cassia_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cassia_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
