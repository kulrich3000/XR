INSTANCE Info_Mod_Arto_FrischeLuft (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_FrischeLuft_Condition;
	information	= Info_Mod_Arto_FrischeLuft_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Arto_FrischeLuft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thorus_FrischeLuft))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Arto_FrischeLuft_Info()
{
	AI_Output(self, hero, "Info_Mod_Arto_FrischeLuft_32_00"); //Przyjedz ze mna.

	AI_StopProcessInfos	(self);

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	B_StartOtherRoutine	(self, "WAYTONL");
};

INSTANCE Info_Mod_Arto_Ruestung (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_Ruestung_Condition;
	information	= Info_Mod_Arto_Ruestung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Arto_Ruestung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Arto_FrischeLuft))
	&& (Npc_HasItems(hero, ItAr_BDT_M_01) > 0)
	&& (Npc_GetDistToWP(self, "OW_PATH_063") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Arto_Ruestung_Info()
{
	AI_Output(self, hero, "Info_Mod_Arto_Ruestung_32_00"); //Nalozyc zbroje bandytów.

	AI_UnequipArmor	(self);
	AI_UnequipArmor (hero);

	AI_EquipArmor	(hero, ItAr_BDT_M_01);

	CreateInvItems	(self, ItAr_BDT_M_01, 1);
	AI_EquipArmor	(self, ItAr_BDT_M_01);

	AI_StopProcessInfos	(self);

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	B_StartOtherRoutine	(self, "WAYTOORIK");
	B_StartOtherRoutine	(Mod_1319_SLD_Organisator_MT, "ARTO");
};

INSTANCE Info_Mod_Arto_WaitForOrik (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_WaitForOrik_Condition;
	information	= Info_Mod_Arto_WaitForOrik_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Arto_WaitForOrik_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Arto_Ruestung))
	&& (Npc_GetDistToWP(self, "NC_PATH62") < 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Arto_WaitForOrik_Info()
{
	AI_Output(self, hero, "Info_Mod_Arto_WaitForOrik_32_00"); //Bedziemy czekac az Orik opusci jaskinie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAITFORORIK");
	B_StartOtherRoutine	(Mod_1266_SLD_Orik_MT, "ARTO");
};

INSTANCE Info_Mod_Arto_OrikDa (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_OrikDa_Condition;
	information	= Info_Mod_Arto_OrikDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Arto_OrikDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Arto_WaitForOrik))
	&& (Npc_GetDistToWP(Mod_1266_SLD_Orik_MT, "NC_ENTRANCE_WP01") < 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Arto_OrikDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Arto_OrikDa_32_00"); //Tam jest, zabierzmy go.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATTACKORIK");

	B_Attack	(self, Mod_1266_SLD_Orik_MT, AR_NONE, 0);
};

INSTANCE Info_Mod_Arto_OrikMit (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_OrikMit_Condition;
	information	= Info_Mod_Arto_OrikMit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Arto_OrikMit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orik_Niedergeschlagen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Arto_OrikMit_Info()
{
	AI_Output(self, hero, "Info_Mod_Arto_OrikMit_32_00"); //Wrócmy do obozu.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAYTOAL");
};

INSTANCE Info_Mod_Arto_BeiThorus (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_BeiThorus_Condition;
	information	= Info_Mod_Arto_BeiThorus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Arto_BeiThorus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Arto_OrikMit))
	&& (Npc_GetDistToWP(self, "OCC_BARONS_DANCE2") < 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Arto_BeiThorus_Info()
{
	AI_Output(self, hero, "Info_Mod_Arto_BeiThorus_32_00"); //Wez Orik do Thorusa.

	AI_StopProcessInfos	(self);

	AI_UnequipArmor	(self);

	self.aivar[AIV_PARTYMEMBER] = FALSE;	

	CreateInvItems	(self, EBR_ARMOR_H2, 1);
	AI_EquipArmor	(self, EBR_ARMOR_H2);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Arto_NochErzbaron (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_NochErzbaron_Condition;
	information	= Info_Mod_Arto_NochErzbaron_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nadal jestes baronem rudy.";
};

FUNC INT Info_Mod_Arto_NochErzbaron_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Arto_NochErzbaron_Info()
{
	AI_Output(hero, self, "Info_Mod_Arto_NochErzbaron_15_00"); //Nadal jestes baronem rudy.
	AI_Output(self, hero, "Info_Mod_Arto_NochErzbaron_32_01"); //Kiedy traktujesz to powaznie, ponownie. Zanim Thorus uratowal mnie z rak powstanców, bylem krótko uchodzca.
	AI_Output(hero, self, "Info_Mod_Arto_NochErzbaron_15_02"); //Jak do tego doszlo?
	AI_Output(self, hero, "Info_Mod_Arto_NochErzbaron_32_03"); //Uswiadomienie sobie, jakie konsekwencje mialoby znikniecie Gomeza, zajelo mi troche za dlugo.
	AI_Output(self, hero, "Info_Mod_Arto_NochErzbaron_32_04"); //Kiedy chcialem wyjsc z drogi, wbieglem w kamien.
	AI_Output(self, hero, "Info_Mod_Arto_NochErzbaron_32_05"); //Kastard natychmiast wezwal swoich wspólspiratorów i nakazal mi otoczyc.
	AI_Output(self, hero, "Info_Mod_Arto_NochErzbaron_32_06"); //Zanim mnie powiesza, Thorus wykopal mnie tam.
	AI_Output(self, hero, "Info_Mod_Arto_NochErzbaron_32_07"); //Mozna spojrzec na to, co Stone ma do zaoferowania - nie chcielismy, aby inni tak szybko zapomnieli, jakie beda konsekwencje buntu.
};

INSTANCE Info_Mod_Arto_WarumBarriere (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_WarumBarriere_Condition;
	information	= Info_Mod_Arto_WarumBarriere_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego zostales wrzucony do zapory?";
};

FUNC INT Info_Mod_Arto_WarumBarriere_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Arto_WarumBarriere_Info()
{
	AI_Output(hero, self, "Info_Mod_Arto_WarumBarriere_15_00"); //Dlaczego zostales wrzucony do zapory?
	AI_Output(self, hero, "Info_Mod_Arto_WarumBarriere_32_01"); //(cold) W szczególnosci w przypadku oszustw i falszerstw. Zaangazowalo sie równiez kilku zmarlych, ale ja ich nie zaplanowalem.
};

INSTANCE Info_Mod_Arto_WerRebellion (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_WerRebellion_Condition;
	information	= Info_Mod_Arto_WerRebellion_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kto bral udzial w buncie?";
};

FUNC INT Info_Mod_Arto_WerRebellion_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Arto_NochErzbaron))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Arto_WerRebellion_Info()
{
	AI_Output(hero, self, "Info_Mod_Arto_WerRebellion_15_00"); //Kto bral udzial w buncie?
	AI_Output(self, hero, "Info_Mod_Arto_WerRebellion_32_01"); //Skorpion byl ich przywódca, potem Kamien. Mialy one nadzieje na sukces Gomeza.
	AI_Output(self, hero, "Info_Mod_Arto_WerRebellion_32_02"); //Zlozyl za soba caly szereg cieni i kopaczy.
	AI_Output(self, hero, "Info_Mod_Arto_WerRebellion_32_03"); //Ale nie zrobilo im to nic dobrego.
};

INSTANCE Info_Mod_Arto_WasRebellion (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_WasRebellion_Condition;
	information	= Info_Mod_Arto_WasRebellion_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sie stalo z rebeliantami?";
};

FUNC INT Info_Mod_Arto_WasRebellion_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Arto_NochErzbaron))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Arto_WasRebellion_Info()
{
	AI_Output(hero, self, "Info_Mod_Arto_WasRebellion_15_00"); //Co sie stalo z rebeliantami?
	AI_Output(self, hero, "Info_Mod_Arto_WasRebellion_32_01"); //Polowa z nich uciekla - tylko Beliar wie, dokad sie udac. Druga polowa wpadla w rece Thorusa.
	AI_Output(self, hero, "Info_Mod_Arto_WasRebellion_32_02"); //Kamien jako pierwszy zostal zaimponowany zywcem. Pozostali zmuszeni byli go obserwowac.
	AI_Output(self, hero, "Info_Mod_Arto_WasRebellion_32_03"); //Wiekszosc z nich stracila potem glowe, z wyjatkiem tych bardzo policzkowych, którzy sa troche troche...... bardziej nieprzyjemnej smierci.
};

INSTANCE Info_Mod_Arto_Pickpocket (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_Pickpocket_Condition;
	information	= Info_Mod_Arto_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Arto_Pickpocket_Condition()
{
	C_Beklauen	(134, ItMi_Gold, 1400);
};

FUNC VOID Info_Mod_Arto_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Arto_Pickpocket);

	Info_AddChoice	(Info_Mod_Arto_Pickpocket, DIALOG_BACK, Info_Mod_Arto_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Arto_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Arto_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Arto_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Arto_Pickpocket);
};

FUNC VOID Info_Mod_Arto_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Arto_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Arto_Pickpocket);

		Info_AddChoice	(Info_Mod_Arto_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Arto_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Arto_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Arto_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Arto_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Arto_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Arto_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Arto_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Arto_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Arto_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Arto_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Arto_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Arto_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Arto_EXIT (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_EXIT_Condition;
	information	= Info_Mod_Arto_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Arto_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Arto_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
