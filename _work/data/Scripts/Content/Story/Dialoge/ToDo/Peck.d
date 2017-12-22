INSTANCE Info_Mod_Peck_Hi (C_INFO)
{
	npc		= Mod_745_MIL_Peck_NW;
	nr		= 1;
	condition	= Info_Mod_Peck_Hi_Condition;
	information	= Info_Mod_Peck_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Peck_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Peck_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Peck_Hi_12_01"); //I'm Peck. I sell armor to the militias.
};

INSTANCE Info_Mod_Peck_Ruestung (C_INFO)
{
	npc		= Mod_745_MIL_Peck_NW;
	nr		= 1;
	condition	= Info_Mod_Peck_Ruestung_Condition;
	information	= Info_Mod_Peck_Ruestung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can I get better armor from you?";
};

FUNC INT Info_Mod_Peck_Ruestung_Condition()
{
	if ((Mod_Gilde == 1)
	|| (Mod_Gilde == 2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Peck_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Peck_Ruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Peck_Ruestung_15_00"); //Can I get better armor from you?

	if (Mod_HasMILH == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_12_01"); //I've got some heavy militia armor here.
	};

	if (Kapitel > 1)
	&& (Mod_ErsteVerbesserung == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_12_02"); //I hear there's a fire snapper at the Minental pass. With his skin, I could certainly improve your heavy militia armor a little bit.
	
		Mod_ErsteVerbesserung = TRUE;
	
		Wld_InsertNpc	(Feuersnapper,	"NW_PASS_06");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "At the Minental pass there should be a fire snapper, whose skin Peck can use to improve my heavy militia armor.");
	};

	if (Kapitel > 3)
	&& (Mod_ZweiteVerbesserung == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_12_03"); //I've heard that on the way to the excavation site the water magician is said to be a firefighter. With his coat I could improve your knight's armour a little bit.
	
		Mod_ZweiteVerbesserung = TRUE;
	
		Wld_InsertNpc	(Feuerlaeufer,	"FP_MAGICGOLEM");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "On the way to the water magician's excavation site there is a Firefighter, whose fur Peck can use to improve my knight's armour.");
	};

	Info_ClearChoices	(Info_Mod_Peck_Ruestung);
	Info_AddChoice	(Info_Mod_Peck_Ruestung, DIALOG_BACK, Info_Mod_Peck_Ruestung_BACK);

	if (Mod_ErsteVerbesserung == TRUE)
	&& (Mod_Gilde == 1)
	{
		Info_AddChoice	(Info_Mod_Peck_Ruestung, "Improve heavy militia equipment", Info_Mod_Peck_Ruestung_MIL_S);
	};

	if (Mod_ZweiteVerbesserung == TRUE)
	&& (Mod_Gilde == 2)
	{
		Info_AddChoice	(Info_Mod_Peck_Ruestung, "Improve knight's armour", Info_Mod_Peck_Ruestung_RIT_S);
	};

	if (Mod_Gilde == 1)
	&& (Mod_HasMILH == FALSE)
	{
		Info_AddChoice	(Info_Mod_Peck_Ruestung, "Heavy militia equipment (cost: 2500)", Info_Mod_Peck_Ruestung_MIL_M);
	};
};

FUNC VOID Info_Mod_Peck_Ruestung_BACK ()
{
	Info_ClearChoices	(Info_Mod_Peck_Ruestung);
};

FUNC VOID Info_Mod_Peck_Ruestung_MIL_S ()
{
	AI_Output(hero, self, "Info_Mod_Peck_Ruestung_MIL_S_15_00"); //Improve my heavy militia armor.

	if (Npc_HasItems(hero, ItAt_FeuersnapperHaut) == 1)
	&& (Npc_HasItems(hero, ItAr_MIL_M) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_MIL_S_12_01"); //All clear.

		Npc_RemoveInvItems	(hero, ItAt_FeuersnapperHaut, 1);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_MIL_M, 1);

		CreateInvItems	(self, ItAr_MIL_S2, 1);

		B_GiveInvItems	(self, hero, ItAr_Mil_S2, 1);

		Mod_ErsteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_Mil_M) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_MIL_S_12_02"); //You must have some heavy militia gear or I won't be able to fix it for you.
	}
	else if (Npc_HasItems(hero, ItAt_Feuersnapperhaut) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_MIL_S_12_03"); //If you don't have snapper skin, I can't improve your armor.
	};

	Info_ClearChoices	(Info_Mod_Peck_Ruestung);
};

FUNC VOID Info_Mod_Peck_Ruestung_RIT_S ()
{
	AI_Output(hero, self, "Info_Mod_Peck_Ruestung_RIT_S_15_00"); //Improve my knight's armour.

	if (Npc_HasItems(hero, ItAt_FireShadowFur) == 1)
	&& (Npc_HasItems(hero, ItAr_PAL_M) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_RIT_S_12_01"); //All clear.

		Npc_RemoveInvItems	(hero, ItAt_FireShadowFur, 1);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_PAL_M, 1);

		CreateInvItems	(self, ItAr_RIT_S, 1);

		B_GiveInvItems	(self, hero, ItAr_RIT_S, 1);

		Mod_ZweiteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_PAL_M) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_RIT_S_12_02"); //You must have a knight's armour or I won't be able to fix it for you.
	}
	else if (Npc_HasItems(hero, ItAt_FireShadowFur) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_RIT_S_12_03"); //I can't improve your armor if you don't have the Firefinch skin.
	};

	Info_ClearChoices	(Info_Mod_Peck_Ruestung);
};

FUNC VOID Info_Mod_Peck_Ruestung_MIL_M ()
{
	AI_Output(hero, self, "Info_Mod_Peck_Ruestung_MIL_M_15_00"); //I'll take the heavy militia armor.

	if (Npc_HasItems(hero, ItMi_Gold) >= 2500)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_MIL_M_12_01"); //All clear.

		B_GiveInvItems	(hero, self, ItMi_Gold, 2500);

		CreateInvItems	(self, ItAr_MIL_M, 1);

		B_GiveInvItems	(self, hero, ItAr_Mil_M, 1);

		Mod_HasMILH = TRUE;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_MIL_M_12_02"); //No gold, no armor.
	};

	Info_ClearChoices	(Info_Mod_Peck_Ruestung);
};

INSTANCE Info_Mod_Peck_Pickpocket (C_INFO)
{
	npc		= Mod_745_MIL_Peck_NW;
	nr		= 1;
	condition	= Info_Mod_Peck_Pickpocket_Condition;
	information	= Info_Mod_Peck_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Peck_Pickpocket_Condition()
{
	C_Beklauen	(62, ItMi_Gold, 29);
};

FUNC VOID Info_Mod_Peck_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Peck_Pickpocket);

	Info_AddChoice	(Info_Mod_Peck_Pickpocket, DIALOG_BACK, Info_Mod_Peck_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Peck_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Peck_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Peck_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Peck_Pickpocket);
};

FUNC VOID Info_Mod_Peck_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Peck_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Peck_Pickpocket);

		Info_AddChoice	(Info_Mod_Peck_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Peck_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Peck_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Peck_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Peck_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Peck_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Peck_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Peck_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Peck_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Peck_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Peck_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Peck_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Peck_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Peck_EXIT (C_INFO)
{
	npc		= Mod_745_MIL_Peck_NW;
	nr		= 1;
	condition	= Info_Mod_Peck_EXIT_Condition;
	information	= Info_Mod_Peck_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Peck_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Peck_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
