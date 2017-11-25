INSTANCE Info_Mod_Orik_Hi (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_Hi_Condition;
	information	= Info_Mod_Orik_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Orik_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Orik_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Orik_Hi_08_01"); //I'm Orik. I sell armor to the mercenaries.
};

INSTANCE Info_Mod_Orik_Florentius (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_Florentius_Condition;
	information	= Info_Mod_Orik_Florentius_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Orik_Florentius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orik_Hi))
	&& (Mod_NL_HatFlorentiusGekillt == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Orik_Niedergeschlagen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orik_Florentius_Info()
{
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_00"); //Hey, you're on the road a lot in the Minental. Did you happen to meet a merchant named Florentius?
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_01"); //I expect something from him and he's long overdue.
	AI_Output(hero, self, "Info_Mod_Orik_Florentius_15_02"); //I've met so many people... what was he supposed to get you?
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_03"); //Um, well, he promised me a book.
	AI_Output(hero, self, "Info_Mod_Orik_Florentius_15_04"); //And what kind of book is that?
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_05"); //Well... well, there should be pictures in it.... of women.
	AI_Output(hero, self, "Info_Mod_Orik_Florentius_15_06"); //Well, I know a lot of illustrated books where women are pictured.
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_07"); //Well... okay, pictures of, uh....

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_08"); //(slightly quieter) lightly dressed women.
	AI_Output(hero, self, "Info_Mod_Orik_Florentius_15_09"); //Ahh, du meinst "nudes".
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_10"); //Shh, not so loud. Doesn't have to know everyone.
	AI_Output(hero, self, "Info_Mod_Orik_Florentius_15_11"); //So, okay, I'll see if I can find your book somewhere.
	AI_Output(self, hero, "Info_Mod_Orik_Florentius_08_12"); //Yeah, do that, you won't regret bringing it to me.
};

INSTANCE Info_Mod_Orik_JuanBuch (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_JuanBuch_Condition;
	information	= Info_Mod_Orik_JuanBuch_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the requested book.";
};

FUNC INT Info_Mod_Orik_JuanBuch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orik_Florentius))
	&& (Npc_HasItems(hero, ItWr_JuanBook) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orik_JuanBuch_Info()
{
	AI_Output(hero, self, "Info_Mod_Orik_JuanBuch_15_00"); //I have the requested book.
	AI_Output(self, hero, "Info_Mod_Orik_JuanBuch_08_01"); //What, really, show me.

	B_GiveInvItems	(hero, self, ItWr_JuanBook, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Orik_JuanBuch_08_02"); //Yeah, actually, hehe.
	AI_Output(self, hero, "Info_Mod_Orik_JuanBuch_08_03"); //(again to the hero) Uh, anyway, you did a really good job.
	AI_Output(self, hero, "Info_Mod_Orik_JuanBuch_08_04"); //Here, 20 ore and 100 gold... 30 ore and 200 gold...

	B_ShowGivenThings	("200 gold and 30 ore obtained");

	CreateInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItMi_Nugget, 30);

	AI_Output(self, hero, "Info_Mod_Orik_JuanBuch_08_05"); //But let's keep this between us...
};

INSTANCE Info_Mod_Orik_Niedergeschlagen (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_Niedergeschlagen_Condition;
	information	= Info_Mod_Orik_Niedergeschlagen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Orik_Niedergeschlagen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Arto_OrikDa))
	&& (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orik_Niedergeschlagen_Info()
{
	AI_Output(self, hero, "Info_Mod_Orik_Niedergeschlagen_08_00"); //What the fuck, you son of a bitch, now your last hour has come.
	AI_Output(hero, self, "Info_Mod_Orik_Niedergeschlagen_15_01"); //You're coming with me. You won't be able to do much without a gun.
	AI_Output(self, hero, "Info_Mod_Orik_Niedergeschlagen_08_02"); //Fucking bastards!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOAL");

	CreateInvItems	(self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);

	B_LogEntry	(TOPIC_MOD_AL_ORIK, "We ambushed Orik in front of the cave and knocked him down. Now he's gonna have to come with me.");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Orik_Ruestung (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_Ruestung_Condition;
	information	= Info_Mod_Orik_Ruestung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can I get better armor from you?";
};

FUNC INT Info_Mod_Orik_Ruestung_Condition()
{
	if ((Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Npc_KnowsInfo(hero, Info_Mod_Orik_Hi))
	&& (Mod_ZweiteVerbesserung < 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orik_Ruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Orik_Ruestung_15_00"); //Can I get better armor from you?

	if (Mod_Gilde == 4)
	&& (Mod_HasSLDH == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_08_01"); //I've got some heavy mercenary armor here.
	};

	if (Kapitel > 1)
	&& (Mod_ErsteVerbesserung == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_08_02"); //I've heard that a particularly large Orkhund is said to be at the Minental pass. With its fur I could certainly improve your heavy mercenary armor a little bit.
	
		Mod_ErsteVerbesserung = TRUE;

		Wld_InsertNpc	(Orcdog_Big,	"OW_PATH_1_16_8");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "At the pass in the Minental there should be a large Orkhund, whose coat Orik can use to improve my heavy mercenary armor.");
	};

	if (Kapitel > 3)
	&& (Mod_ZweiteVerbesserung == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_08_03"); //I heard there's a Wyvern at the Stonehenge. With its shed I could certainly improve your Orc hunter armor a little bit.
	
		Mod_ZweiteVerbesserung = TRUE;

		Wld_InsertNpc	(Wyver,	"OW_PATH_276");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "The Stonehenge is said to have a wyvern with a shed that Orik can use to improve my Orkjäger armor.");
	};

	if (Mod_HasSLDH == TRUE)
	&& ((Kapitel == 1)
	|| ((Kapitel <= 3)
	&& (Mod_ErsteVerbesserung == 2))
	|| (Mod_ZweiteVerbesserung == 2))
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_08_04"); //Not at the moment, come back later.
	};

	Info_ClearChoices	(Info_Mod_Orik_Ruestung);
	Info_AddChoice	(Info_Mod_Orik_Ruestung, DIALOG_BACK, Info_Mod_Orik_Ruestung_BACK);

	if (Mod_ErsteVerbesserung == TRUE)
	&& (Mod_Gilde == 4)
	&& (Npc_HasItems(hero, ItAr_SLD_S) == 0)
	{
		Info_AddChoice	(Info_Mod_Orik_Ruestung, "Improve heavy mercenary armor", Info_Mod_Orik_Ruestung_SLD_S);
	};

	if (Mod_ZweiteVerbesserung == TRUE)
	&& (Mod_Gilde == 19)
	&& (Npc_HasItems(hero, ItAr_OJG_S) == 0)
	{
		Info_AddChoice	(Info_Mod_Orik_Ruestung, "Improve Hunting Equipment", Info_Mod_Orik_Ruestung_OJG_S);
	};

	if (Mod_Gilde == 4)
	&& (Mod_HasSLDH == FALSE)
	{
		Info_AddChoice	(Info_Mod_Orik_Ruestung, "Heavy mercenary armament (cost: 2500)", Info_Mod_Orik_Ruestung_SLD_M);
	};
};

FUNC VOID Info_Mod_Orik_Ruestung_BACK ()
{
	Info_ClearChoices	(Info_Mod_Orik_Ruestung);
};

FUNC VOID Info_Mod_Orik_Ruestung_SLD_S ()
{
	AI_Output(hero, self, "Info_Mod_Orik_Ruestung_SLD_S_15_00"); //Improve my heavy mercenary armor.

	if (Npc_HasItems(hero, ItAt_BigOrcDogFur) == 1)
	&& (Npc_HasItems(hero, ItAr_SLD_M) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_SLD_S_08_01"); //All clear.

		Npc_RemoveInvItems	(hero, ItAt_BigOrcDogFur, 1);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_SLD_M, 1);

		CreateInvItems	(self, ItAr_SLD_S, 1);

		B_GiveInvItems	(self, hero, ItAr_SLD_S, 1);

		AI_UnequipArmor	(hero);
		AI_EquipArmor	(hero, ItAr_SLD_S);

		Mod_ErsteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_SLD_M) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_SLD_S_08_02"); //You must have some heavy mercenary armor or I won't be able to fix it for you.
	}
	else if (Npc_HasItems(hero, ItAt_BigOrcDogFur) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_SLD_S_08_03"); //If you don't have the Orkhundfell, I can't improve your armor.
	};

	Info_ClearChoices	(Info_Mod_Orik_Ruestung);
};

FUNC VOID Info_Mod_Orik_Ruestung_OJG_S ()
{
	AI_Output(hero, self, "Info_Mod_Orik_Ruestung_OJG_S_15_00"); //Improve my Orc Slayer armor.

	if (Npc_HasItems(hero, ItAt_Wyverschuppen) == 5)
	&& (Npc_HasItems(hero, ItAr_SLD_H) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_OJG_S_08_01"); //All clear.

		Npc_RemoveInvItems	(hero, ItAt_Wyverschuppen, 5);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_SLD_H, 1);

		CreateInvItems	(self, ItAr_OJG_S, 1);

		B_GiveInvItems	(self, hero, ItAr_OJG_S, 1);

		AI_UnequipArmor	(hero);
		AI_EquipArmor	(hero, ItAr_OJG_S);

		Mod_ZweiteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_SLD_H) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_OJG_S_08_02"); //You must have an orc hunter's armour or I won't be able to fix it for you.
	}
	else if (Npc_HasItems(hero, ItAt_Wyverschuppen) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_OJG_S_08_03"); //If you don't have the Wy Verschuppen, I can't improve your armor.
	};

	Info_ClearChoices	(Info_Mod_Orik_Ruestung);
};

FUNC VOID Info_Mod_Orik_Ruestung_SLD_M ()
{
	AI_Output(hero, self, "Info_Mod_Orik_Ruestung_SLD_M_15_00"); //I'll take the heavy mercenary armor.

	if (Npc_HasItems(hero, ItMi_Gold) >= 2500)
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_SLD_M_08_01"); //All clear.

		B_GiveInvItems	(hero, self, ItMi_Gold, 2500);

		CreateInvItems	(self, ItAr_SLD_M, 1);

		B_GiveInvItems	(self, hero, ItAr_SLD_M, 1);

		AI_UnequipArmor	(hero);
		AI_EquipArmor	(hero, ItAr_SLD_M);

		Mod_HasSLDH = TRUE;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Orik_Ruestung_SLD_M_08_02"); //No gold, no armor.
	};

	Info_ClearChoices	(Info_Mod_Orik_Ruestung);
};

INSTANCE Info_Mod_Orik_Pickpocket (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_Pickpocket_Condition;
	information	= Info_Mod_Orik_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Orik_Pickpocket_Condition()
{
	C_Beklauen	(112, ItMi_Gold, 44);
};

FUNC VOID Info_Mod_Orik_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Orik_Pickpocket);

	Info_AddChoice	(Info_Mod_Orik_Pickpocket, DIALOG_BACK, Info_Mod_Orik_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Orik_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Orik_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Orik_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Orik_Pickpocket);
};

FUNC VOID Info_Mod_Orik_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Orik_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Orik_Pickpocket);

		Info_AddChoice	(Info_Mod_Orik_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Orik_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Orik_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Orik_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Orik_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Orik_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Orik_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Orik_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Orik_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Orik_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Orik_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Orik_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Orik_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Orik_EXIT (C_INFO)
{
	npc		= Mod_1266_SLD_Orik_MT;
	nr		= 1;
	condition	= Info_Mod_Orik_EXIT_Condition;
	information	= Info_Mod_Orik_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Orik_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Orik_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
