INSTANCE Info_Mod_Diego_IR_Hi (C_INFO)
{
	npc		= Mod_7442_RDW_Diego_IR;
	nr		= 1;
	condition	= Info_Mod_Diego_IR_Hi_Condition;
	information	= Info_Mod_Diego_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Diego_IR_Hi_Info()
{
	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Diego_IR_Hi_11_00"); //(Widok w okolice) Teraz ktos patrzy na ów kompleks jaskin.
	AI_Output(self, hero, "Info_Mod_Diego_IR_Hi_11_01"); //Natomiast zywa jaskinia w nowym obozie byla skromna.
	AI_Output(hero, self, "Info_Mod_Diego_IR_Hi_15_02"); //Tak, naprawde imponujace.
	AI_Output(self, hero, "Info_Mod_Diego_IR_Hi_11_03"); //Wyspa ta wydaje sie dosc rozlegla.
	AI_Output(self, hero, "Info_Mod_Diego_IR_Hi_11_04"); //A kto wie, co nas czeka na drodze w pulapkach i wrogów.
	AI_Output(self, hero, "Info_Mod_Diego_IR_Hi_11_05"); //Niewatpliwie bedziemy musieli wykorzystac wszystkie nasze umiejetnosci, aby przejsc przez nie.
};

INSTANCE Info_Mod_Diego_IR_Hebel (C_INFO)
{
	npc		= Mod_7442_RDW_Diego_IR;
	nr		= 1;
	condition	= Info_Mod_Diego_IR_Hebel_Condition;
	information	= Info_Mod_Diego_IR_Hebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz uzyc jednej dzwigni, gdy poruszam druga?";
};

FUNC INT Info_Mod_Diego_IR_Hebel_Condition()
{
	if (Mod_IR_Diego == 1)
	&& (Mod_IR_HebelProb2 >= 2)
	&& (Mod_IR_Hebel == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_IR_Hebel_Info()
{
	B_Say	(hero, self, "$IRDORATHHEBEL");

	AI_Output(self, hero, "Info_Mod_Diego_IR_Hebel_11_00"); //Oczywiscie tak jest. Moze to moze, ze gdzies nas zaprowadzi....

	Mod_IR_Hebel = 1;

	Mod_IR_Hebelmann = Hlp_GetNpc(self);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Diego_IR_Ambient01 (C_INFO)
{
	npc		= Mod_7442_RDW_Diego_IR;
	nr		= 1;
	condition	= Info_Mod_Diego_IR_Ambient01_Condition;
	information	= Info_Mod_Diego_IR_Ambient01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_IR_Ambient01_Condition()
{
	if (Npc_GetDistToWP(hero, "DI_ORKAREA_19") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_IR_Ambient01_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_IR_Ambient01_11_00"); //Byc moze te dzwignie zapewnia nam dalszy dostep do wyspy.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Diego_IR_Ambient02 (C_INFO)
{
	npc		= Mod_7442_RDW_Diego_IR;
	nr		= 1;
	condition	= Info_Mod_Diego_IR_Ambient02_Condition;
	information	= Info_Mod_Diego_IR_Ambient02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Diego_IR_Ambient02_Condition()
{
	if (Npc_GetDistToWP(hero, "DI_DRACONIANAREA_18") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_IR_Ambient02_Info()
{
	AI_Output(self, hero, "Info_Mod_Diego_IR_Ambient02_11_00"); //Nie ma watpliwosci, ze istnieje tu równiez ukryty mechanizm, który otwiera nam droge.
	AI_Output(self, hero, "Info_Mod_Diego_IR_Ambient02_11_01"); //I podejrzewalem, ze luk moze rozwiazac problem.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Diego_IR_GehtLos (C_INFO)
{
	npc		= Mod_7442_RDW_Diego_IR;
	nr		= 1;
	condition	= Info_Mod_Diego_IR_GehtLos_Condition;
	information	= Info_Mod_Diego_IR_GehtLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Idzmy dalej. Czy odprowadzisz mnie na wyspe?";
};

FUNC INT Info_Mod_Diego_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (Mod_IR_Diego == 0)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Diego_IR_GehtLos_11_00"); //Czy zamierzasz zapytac? Bez wzgledu na to, czy chodzi o trolle czy wstretne barony rudy..... tak jak zawsze na pana liczylem, moze pan byc pewien mojego poparcia.
	AI_Output(self, hero, "Info_Mod_Diego_IR_GehtLos_11_01"); //Na wyspie, na której wymagany jest takt, z pewnoscia znajdzie sie jedna lub druga bezwarunkowosc.

	Mod_IR_Dabei += 1;

	Mod_IR_Diego = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Diego_IR_GehBack (C_INFO)
{
	npc		= Mod_7442_RDW_Diego_IR;
	nr		= 1;
	condition	= Info_Mod_Diego_IR_GehBack_Condition;
	information	= Info_Mod_Diego_IR_GehBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wróc do statku.";
};

FUNC INT Info_Mod_Diego_IR_GehBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_IR_Hi))
	&& (Mod_IR_Diego == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_IR_GehBack_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHBACK");

	AI_Output(self, hero, "Info_Mod_Diego_IR_GehBack_11_00"); //Cóz, jesli mnie potrzebujesz, wiesz, gdzie mnie znalezc.

	Mod_IR_Dabei -= 1;

	Mod_IR_Diego = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Diego_IR_Lehrer (C_INFO)
{
	npc		= Mod_7442_RDW_Diego_IR;
	nr		= 1;
	condition	= Info_Mod_Diego_IR_Lehrer_Condition;
	information	= Info_Mod_Diego_IR_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Diego_IR_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_IR_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_IR_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Diego_IR_Lehrer_11_01"); //Tak, moge nauczyc Cie umiejetnosci i pokazac ci jak uzywac luku.
	AI_Output(self, hero, "Info_Mod_Diego_IR_Lehrer_11_02"); //Mam tez przy sobie wystarczajaca ilosc amunicji na wypadek, gdyby wasza brakowalo.
};

INSTANCE Info_Mod_Diego_IR_Lernen_Bogen (C_INFO)
{
	npc		= Mod_7442_RDW_Diego_IR;
	nr		= 1;
	condition	= Info_Mod_Diego_IR_Lernen_Bogen_Condition;
	information	= Info_Mod_Diego_IR_Lernen_Bogen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie lucznictwa.";
};

FUNC INT Info_Mod_Diego_IR_Lernen_Bogen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_IR_Lehrer))
	&& (hero.hitchance[NPC_TALENT_BOW] < 100)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_IR_Lernen_Bogen_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_IR_Lernen_Bogen_15_00"); //Naucz mnie lucznictwa.

	Info_ClearChoices	(Info_Mod_Diego_IR_Lernen_Bogen);
	
	Info_AddChoice	(Info_Mod_Diego_IR_Lernen_Bogen, "Z powrotem.", Info_Mod_Diego_IR_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Diego_IR_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Diego_IR_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Diego_IR_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Diego_IR_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Diego_IR_Lernen_Bogen_BACK()
{
	Info_ClearChoices	(Info_Mod_Diego_IR_Lernen_Bogen);
};

FUNC VOID Info_Mod_Diego_IR_Lernen_Bogen_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_BOW, 5, 100);

	Info_ClearChoices	(Info_Mod_Diego_IR_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Diego_IR_Lernen_Bogen, "Z powrotem.", Info_Mod_Diego_IR_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Diego_IR_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Diego_IR_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Diego_IR_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Diego_IR_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Diego_IR_Lernen_Bogen_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_BOW, 1, 100);

	Info_ClearChoices	(Info_Mod_Diego_IR_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Diego_IR_Lernen_Bogen, "Z powrotem.", Info_Mod_Diego_IR_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Diego_IR_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Diego_IR_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Diego_IR_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Diego_IR_Lernen_Bogen_1);
};

INSTANCE Info_Mod_Diego_IR_Lernen_DEX (C_INFO)
{
	npc		= Mod_7442_RDW_Diego_IR;
	nr		= 1;
	condition	= Info_Mod_Diego_IR_Lernen_DEX_Condition;
	information	= Info_Mod_Diego_IR_Lernen_DEX_Info;
	permanent	= 1;
	important	= 0;
	description	= "Pokaz mi, jak byc bardziej umiejetnym.";
};

FUNC INT Info_Mod_Diego_IR_Lernen_DEX_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_IR_Lehrer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_IR_Lernen_DEX_Info()
{
	AI_Output(hero, self, "Info_Mod_Diego_IR_Lernen_DEX_15_00"); //Pokaz mi, jak byc bardziej umiejetnym.
	AI_Output(self, hero, "Info_Mod_Diego_IR_Lernen_DEX_16_01"); //Czego chcesz sie nauczyc?

	Info_ClearChoices	(Info_Mod_Diego_IR_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Diego_IR_Lernen_DEX, DIALOG_BACK, Info_Mod_Diego_IR_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Diego_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_IR_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Diego_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_IR_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Diego_IR_Lernen_DEX_BACK()
{
	Info_ClearChoices (Info_Mod_Diego_IR_Lernen_DEX);
};

FUNC VOID Info_Mod_Diego_IR_Lernen_DEX_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Diego_IR_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Diego_IR_Lernen_DEX, DIALOG_BACK, Info_Mod_Diego_IR_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Diego_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_IR_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Diego_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_IR_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Diego_IR_Lernen_DEX_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Diego_IR_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Diego_IR_Lernen_DEX, DIALOG_BACK, Info_Mod_Diego_IR_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Diego_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_IR_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Diego_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Diego_IR_Lernen_DEX_Geschick_1);
};

INSTANCE Info_Mod_Diego_IR_Trade (C_INFO)
{
	npc		= Mod_7442_RDW_Diego_IR;
	nr		= 1;
	condition	= Info_Mod_Diego_IR_Trade_Condition;
	information	= Info_Mod_Diego_IR_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Diego_IR_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_IR_Lehrer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_IR_Trade_Info()
{
	Npc_RemoveInvItems	(self, ItRw_Arrow, Npc_HasItems(self, ItRw_Arrow));
	CreateInvItems	(self, ItRw_Arrow, 500);

	Npc_RemoveInvItems	(self, ItRw_SchmetterArrow, Npc_HasItems(self, ItRw_SchmetterArrow));
	CreateInvItems	(self, ItRw_SchmetterArrow, 200);

	Npc_RemoveInvItems	(self, ItRw_Bolt, Npc_HasItems(self, ItRw_Bolt));
	CreateInvItems	(self, ItRw_Bolt, 500);

	Npc_RemoveInvItems	(self, ItRw_SchmetterBolt, Npc_HasItems(self, ItRw_SchmetterBolt));
	CreateInvItems	(self, ItRw_SchmetterBolt, 200);
};

INSTANCE Info_Mod_Diego_IR_Heiltrank (C_INFO)
{
	npc		= Mod_7442_RDW_Diego_IR;
	nr		= 1;
	condition	= Info_Mod_Diego_IR_Heiltrank_Condition;
	information	= Info_Mod_Diego_IR_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(goraczka lecznicza)";
};

FUNC INT Info_Mod_Diego_IR_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	&& (Mod_IR_Diego == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Diego_IR_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Diego_IR_Heiltrank);

	Info_AddChoice	(Info_Mod_Diego_IR_Heiltrank, DIALOG_BACK, Info_Mod_Diego_IR_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Diego_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Diego_IR_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Diego_IR_Heiltrank, "Eliksir uzdrawiania", Info_Mod_Diego_IR_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Diego_IR_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_Diego_IR_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Diego_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Diego_IR_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Diego_IR_Heiltrank, "Napój lekkiego leczenia", Info_Mod_Diego_IR_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Diego_IR_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_Diego_IR_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Diego_IR_Heiltrank, "Napoje szybko lecznicze", Info_Mod_Diego_IR_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Diego_IR_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Diego_IR_Heiltrank);
};

FUNC VOID Info_Mod_Diego_IR_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Diego_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Diego_IR_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Diego_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Diego_IR_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Diego_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Diego_IR_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Diego_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Diego_IR_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Diego_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Diego_IR_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Diego_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Diego_IR_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Diego_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Diego_IR_EXIT (C_INFO)
{
	npc		= Mod_7442_RDW_Diego_IR;
	nr		= 1;
	condition	= Info_Mod_Diego_IR_EXIT_Condition;
	information	= Info_Mod_Diego_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Diego_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Diego_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
