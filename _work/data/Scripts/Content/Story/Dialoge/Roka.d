INSTANCE Info_Mod_Roka_Hi (C_INFO)
{
	npc		= Mod_1536_WKR_Roka_NW;
	nr		= 1;
	condition	= Info_Mod_Roka_Hi_Condition;
	information	= Info_Mod_Roka_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Roka_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Roka_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Roka_Hi_11_01"); //I'm Roka. I sell armor to the Water Warriors.
};

INSTANCE Info_Mod_Roka_Ruestung (C_INFO)
{
	npc		= Mod_1536_WKR_Roka_NW;
	nr		= 1;
	condition	= Info_Mod_Roka_Ruestung_Condition;
	information	= Info_Mod_Roka_Ruestung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can I get better armor from you?";
};

FUNC INT Info_Mod_Roka_Ruestung_Condition()
{
	if (Mod_Gilde == 17)
	&& (Npc_KnowsInfo(hero, Info_Mod_Roka_Hi))
	&& (Mod_ZweiteVerbesserung < 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roka_Ruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Roka_Ruestung_15_00"); //Can I get better armor from you?

	if (Kapitel > 3)
	&& (Mod_ZweiteVerbesserung == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Roka_Ruestung_11_03"); //I hear there's supposed to be a sandpiper on the way to town. With his fur, I could certainly improve your water-warfare armor a little bit.
	
		Mod_ZweiteVerbesserung = TRUE;
	
		Wld_InsertNpc	(Wasserlaeufer,	"FP_MAGICGOLEM");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "On the way to the water magician's excavation site there is a water stranger, whose fur Roka can use to improve my water warrior armor.");
	};

	Info_ClearChoices	(Info_Mod_Roka_Ruestung);
	Info_AddChoice	(Info_Mod_Roka_Ruestung, DIALOG_BACK, Info_Mod_Roka_Ruestung_BACK);

	if (Mod_ZweiteVerbesserung == TRUE)
	&& (Mod_Gilde == 17)
	{
		Info_AddChoice	(Info_Mod_Roka_Ruestung, "Improving water warfare equipment", Info_Mod_Roka_Ruestung_WKR_S);
	};
};

FUNC VOID Info_Mod_Roka_Ruestung_BACK ()
{
	Info_ClearChoices	(Info_Mod_Roka_Ruestung);
};

FUNC VOID Info_Mod_Roka_Ruestung_WKR_S ()
{
	AI_Output(hero, self, "Info_Mod_Roka_Ruestung_WKR_S_15_00"); //Improve my water warfare.

	if (Npc_HasItems(hero, ItAt_WaterShadowFur) == 1)
	&& (Npc_HasItems(hero, ItAr_WKR_H) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Roka_Ruestung_WKR_S_11_01"); //All clear.

		Npc_RemoveInvItems	(hero, ItAt_WaterShadowFur, 1);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_WKR_H, 1);

		CreateInvItems	(self, ItAr_WKR_S, 1);

		B_GiveInvItems	(self, hero, ItAr_WKR_S, 1);

		AI_UnequipArmor	(hero);
		AI_EquipArmor	(hero, ItAr_WKR_S);

		Mod_ZweiteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_WKR_H) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Roka_Ruestung_WKR_S_11_02"); //You must have water warfare equipment, or I won't be able to fix it for you.
	}
	else if (Npc_HasItems(hero, ItAt_WaterShadowFur) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Roka_Ruestung_WKR_S_11_03"); //If you don't have the bouncing coat, I can't improve your armor.
	};

	Info_ClearChoices	(Info_Mod_Roka_Ruestung);
};

INSTANCE Info_Mod_Roka_Pickpocket (C_INFO)
{
	npc		= Mod_1536_WKR_Roka_NW;
	nr		= 1;
	condition	= Info_Mod_Roka_Pickpocket_Condition;
	information	= Info_Mod_Roka_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Roka_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 30);
};

FUNC VOID Info_Mod_Roka_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Roka_Pickpocket);

	Info_AddChoice	(Info_Mod_Roka_Pickpocket, DIALOG_BACK, Info_Mod_Roka_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Roka_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Roka_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Roka_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Roka_Pickpocket);
};

FUNC VOID Info_Mod_Roka_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Roka_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Roka_Pickpocket);

		Info_AddChoice	(Info_Mod_Roka_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Roka_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Roka_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Roka_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Roka_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Roka_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Roka_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Roka_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Roka_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Roka_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Roka_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Roka_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Roka_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Roka_EXIT (C_INFO)
{
	npc		= Mod_1536_WKR_Roka_NW;
	nr		= 1;
	condition	= Info_Mod_Roka_EXIT_Condition;
	information	= Info_Mod_Roka_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Roka_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Roka_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
