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
	AI_Output(self, hero, "Info_Mod_Arto_FrischeLuft_32_00"); //Come with me.

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
	AI_Output(self, hero, "Info_Mod_Arto_Ruestung_32_00"); //Put on the bandit armor.

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
	AI_Output(self, hero, "Info_Mod_Arto_WaitForOrik_32_00"); //We'll wait until Orik leaves the cave.

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
	AI_Output(self, hero, "Info_Mod_Arto_OrikDa_32_00"); //There he is, let's go get him.

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
	AI_Output(self, hero, "Info_Mod_Arto_OrikMit_32_00"); //Let's go back to camp.

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
	AI_Output(self, hero, "Info_Mod_Arto_BeiThorus_32_00"); //Take Orik to Thorus.

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
	description	= "You're still an ore baron.";
};

FUNC INT Info_Mod_Arto_NochErzbaron_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Arto_NochErzbaron_Info()
{
	AI_Output(hero, self, "Info_Mod_Arto_NochErzbaron_15_00"); //You're still an ore baron.
	AI_Output(self, hero, "Info_Mod_Arto_NochErzbaron_32_01"); //When you take it seriously, again. Before Thorus rescued me from the hands of the insurgents, I was briefly a refugee.
	AI_Output(hero, self, "Info_Mod_Arto_NochErzbaron_15_02"); //How did this happen?
	AI_Output(self, hero, "Info_Mod_Arto_NochErzbaron_32_03"); //It took me a little too long to realize what consequences Gomez's disappearance would have.
	AI_Output(self, hero, "Info_Mod_Arto_NochErzbaron_32_04"); //When I wanted to get out of the way, I ran into Stone.
	AI_Output(self, hero, "Info_Mod_Arto_NochErzbaron_32_05"); //The bastard immediately summoned his co-conspirators and had me surrounded.
	AI_Output(self, hero, "Info_Mod_Arto_NochErzbaron_32_06"); //Before they could hang me, Thorus kicked me out of there.
	AI_Output(self, hero, "Info_Mod_Arto_NochErzbaron_32_07"); //You can take a look outside at what Stone had to offer - we didn't want the others to forget so quickly what the consequences of a rebellion would be.
};

INSTANCE Info_Mod_Arto_WarumBarriere (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_WarumBarriere_Condition;
	information	= Info_Mod_Arto_WarumBarriere_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why did you get thrown into the barrier?";
};

FUNC INT Info_Mod_Arto_WarumBarriere_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Arto_WarumBarriere_Info()
{
	AI_Output(hero, self, "Info_Mod_Arto_WarumBarriere_15_00"); //Why did you get thrown into the barrier?
	AI_Output(self, hero, "Info_Mod_Arto_WarumBarriere_32_01"); //(cold) For fraud and counterfeiting, especially. A couple of dead guys were involved, too, but I hadn't planned them.
};

INSTANCE Info_Mod_Arto_WerRebellion (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_WerRebellion_Condition;
	information	= Info_Mod_Arto_WerRebellion_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who was involved in the rebellion?";
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
	AI_Output(hero, self, "Info_Mod_Arto_WerRebellion_15_00"); //Who was involved in the rebellion?
	AI_Output(self, hero, "Info_Mod_Arto_WerRebellion_32_01"); //Scorpio was their leader, then Stone. The two had hoped to succeed Gomez.
	AI_Output(self, hero, "Info_Mod_Arto_WerRebellion_32_02"); //Had put a whole host of shadows and diggers behind them.
	AI_Output(self, hero, "Info_Mod_Arto_WerRebellion_32_03"); //But it didn't do them any good.
};

INSTANCE Info_Mod_Arto_WasRebellion (C_INFO)
{
	npc		= Mod_1105_EBR_Arto_MT;
	nr		= 1;
	condition	= Info_Mod_Arto_WasRebellion_Condition;
	information	= Info_Mod_Arto_WasRebellion_Info;
	permanent	= 0;
	important	= 0;
	description	= "What happened to the rebels?";
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
	AI_Output(hero, self, "Info_Mod_Arto_WasRebellion_15_00"); //What happened to the rebels?
	AI_Output(self, hero, "Info_Mod_Arto_WasRebellion_32_01"); //Half of them have escaped - only Beliar knows where to go. The other half fell into Thorus' hands.
	AI_Output(self, hero, "Info_Mod_Arto_WasRebellion_32_02"); //Stone was the first to be impaled alive. The others were forced to watch him do it.
	AI_Output(self, hero, "Info_Mod_Arto_WasRebellion_32_03"); //Most of them have lost their heads afterwards, except for the very cheeky ones, who are a little bit.... the more unsavoury death.
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
