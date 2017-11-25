INSTANCE Info_Mod_Bartholo_Hi (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Hi_Condition;
	information	= Info_Mod_Bartholo_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bartholo_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bartholo_Hi_12_00"); //I know you, don't I? What was your name again?
	AI_Output(hero, self, "Info_Mod_Bartholo_Hi_15_01"); //Um... Well...
	AI_Output(self, hero, "Info_Mod_Bartholo_Hi_12_02"); //What's there to push around?
	AI_Output(hero, self, "Info_Mod_Bartholo_Hi_15_03"); //I used to be called, uh, Rü...
	AI_Output(self, hero, "Info_Mod_Bartholo_Hi_12_04"); //Anyway, whatever. What the hell are you doing here?

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Bartholo_Laber (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Laber_Condition;
	information	= Info_Mod_Bartholo_Laber_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_Laber_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartholo_Hi))
	&& (Mod_TemplerBeiThorus < 5)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Laber_Info()
{
	AI_Output(self, hero, "Info_Mod_Bartholo_Laber_12_00"); //Get out of here!
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bartholo_Verrat (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Verrat_Condition;
	information	= Info_Mod_Bartholo_Verrat_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_Verrat_Condition()
{
	if (Mod_TemplerBeiThorus == 5)
	&& (Npc_GetDistToWP(hero, "WP_MT_AL_HEROLERNTFLIEGEN") < 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Verrat_Info()
{
	AI_Output(self, hero, "Info_Mod_Bartholo_Verrat_12_00"); //You should have died a long time ago and now that you are becoming dangerous to us, you have forfeited your right to life.

	B_LogEntry	(TOPIC_MOD_AL_SCHMUGGLER, "It seems Bartholo's the man in the back.");

	AI_StopProcessInfos	(self);

	AI_StartState	(hero, ZS_MagicFreeze, 0, "");

	Mod_TemplerBeiThorus = 6;

	hero.flags = 2;

	B_Attack	(self, hero, AR_NONE, 0);

	//Wld_InsertNpc	(Mod_1874_HMG_Makanius_MT, "OC1");

	B_StartOtherRoutine	(Mod_966_GRD_Thorus_MT, "FALLE");
	B_KillNpc	(Mod_966_GRD_Thorus_MT);
	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "FALLE");
	B_StartOtherRoutine	(Mod_1105_EBR_Arto_MT, "KASTELL");
};

INSTANCE Info_Mod_Bartholo_KillBuddler (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_KillBuddler_Condition;
	information	= Info_Mod_Bartholo_KillBuddler_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_KillBuddler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bloodwyn_EBR_Belauscht))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_KillBuddler_Info()
{
	AI_TurnToNpc	(self, Mod_1440_BUD_Buddler_MT);

	AI_Output(self, hero, "Info_Mod_Bartholo_KillBuddler_12_00"); //You filthy bastard, you mean you could get in touch with Alissandro unnoticed?
	AI_Output(self, hero, "Info_Mod_Bartholo_KillBuddler_12_01"); //But I notice everything, and that's why you get your punishment.

	AI_StopProcessInfos	(self);

	B_RemoveNpc	(Mod_1440_BUD_Buddler_MT);
};

INSTANCE Info_Mod_Bartholo_Sumpfkraut (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Sumpfkraut_Condition;
	information	= Info_Mod_Bartholo_Sumpfkraut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_Sumpfkraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GorNaKar_Torwache_01))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Sumpfkraut_Info()
{
	AI_Output(self, hero, "Info_Mod_Bartholo_Sumpfkraut_12_00"); //I'm sure you'll bring me the swampweed.

	Snd_Play	("THRILLJINGLE_03.WAV");

	AI_TurnToNpc	(self, Mod_1874_HMG_Makanius_MT);

	AI_Output(self, hero, "Info_Mod_Bartholo_Sumpfkraut_12_01"); //What the hell happened now?

	AI_StopProcessInfos	(self);

	AI_Teleport	(Mod_1156_GRD_Gardist_MT, "OCC_BARONS_RIGHT_ROOM_BACK");
	B_StartOtherRoutine	(Mod_1156_GRD_Gardist_MT, "ANGRIFF");
	Mod_1156_GRD_Gardist_MT.flags = 0;

	KillALGardists	();
};

INSTANCE Info_Mod_Bartholo_Eroberung (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Eroberung_Condition;
	information	= Info_Mod_Bartholo_Eroberung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_Eroberung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GardistFuerEroberung_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Eroberung_Info()
{
	AI_TurnToNpc	(self, Mod_1156_GRD_Gardist_MT);

	AI_Output(self, Mod_1156_GRD_Gardist_MT, "Info_Mod_Bartholo_Eroberung_12_00"); //What? How the hell did this happen?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bartholo_Anschluss (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Anschluss_Condition;
	information	= Info_Mod_Bartholo_Anschluss_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to join you.";
};

FUNC INT Info_Mod_Bartholo_Anschluss_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartholo_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Bartholo_Thorus))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Anschluss_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartholo_Anschluss_15_00"); //I want to join you.
	AI_Output(self, hero, "Info_Mod_Bartholo_Anschluss_12_01"); //Aha! The lost son returns, or what?
	AI_Output(self, hero, "Info_Mod_Bartholo_Anschluss_12_02"); //Fine, talk to Thorus. He won't be happy to see you, but he's in trouble right now.
	AI_Output(self, hero, "Info_Mod_Bartholo_Anschluss_12_03"); //That's probably why you don't have to worry about your life.
	AI_Output(hero, self, "Info_Mod_Bartholo_Anschluss_15_04"); //That sounds promising...
	AI_Output(self, hero, "Info_Mod_Bartholo_Anschluss_12_05"); //That's more than you can expect. The fact that you have entrusted yourself to the water magicians has not brought you any sympathy points here.
	AI_Output(self, hero, "Info_Mod_Bartholo_Anschluss_12_06"); //By the way, remember to keep your gun stuck when you go to Thorus. If you make the mistake and pull them out, we'll give you short notice.
};

INSTANCE Info_Mod_Bartholo_Thorus (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Thorus_Condition;
	information	= Info_Mod_Bartholo_Thorus_Info;
	permanent	= 0;
	important	= 0;
	description	= "I just want to talk to Thorus.";
};

FUNC INT Info_Mod_Bartholo_Thorus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartholo_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Bartholo_Anschluss))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Thorus_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartholo_Thorus_15_00"); //I just want to talk to Thorus.
	AI_Output(self, hero, "Info_Mod_Bartholo_Thorus_12_01"); //If he wants to talk to you, that shouldn't be a problem.
	AI_Output(self, hero, "Info_Mod_Bartholo_Thorus_12_02"); //But be warned: If you draw your weapon in his presence, you'll be dead sooner than you can shit your pants.
};

INSTANCE Info_Mod_Bartholo_WarumNochHier (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_WarumNochHier_Condition;
	information	= Info_Mod_Bartholo_WarumNochHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you still doing here?";
};

FUNC INT Info_Mod_Bartholo_WarumNochHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartholo_Anschluss))
	|| (Npc_KnowsInfo(hero, Info_Mod_Bartholo_Thorus))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_WarumNochHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Bartholo_WarumNochHier_15_00"); //What are you still doing here?
	AI_Output(self, hero, "Info_Mod_Bartholo_WarumNochHier_12_01"); //I'm loyal to Thorus. Soon the camp will be going uphill again.
	AI_Output(self, hero, "Info_Mod_Bartholo_WarumNochHier_12_02"); //Besides, I don't want to end up like Stone out there...
};

INSTANCE Info_Mod_Bartholo_Ende (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Ende_Condition;
	information	= Info_Mod_Bartholo_Ende_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bartholo_Ende_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_BartholosFlucht))
	&& (Npc_GetDistToWP(self, "WP_MT_OC_BARTHOLO_KERKER") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bartholo_Ende_Info()
{
	AI_Output(self, hero, "Info_Mod_Bartholo_Ende_12_00"); //You found me, so it's too late now. But I'm not going to give up without a fight.

	AI_StopProcessInfos	(self);

	self.flags = 0;

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Bartholo_Pickpocket (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_Pickpocket_Condition;
	information	= Info_Mod_Bartholo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Bartholo_Pickpocket_Condition()
{
	C_Beklauen	(100, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Bartholo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);

	Info_AddChoice	(Info_Mod_Bartholo_Pickpocket, DIALOG_BACK, Info_Mod_Bartholo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bartholo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bartholo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bartholo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);
};

FUNC VOID Info_Mod_Bartholo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);

		Info_AddChoice	(Info_Mod_Bartholo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bartholo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bartholo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bartholo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bartholo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bartholo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bartholo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bartholo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bartholo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bartholo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bartholo_EXIT (C_INFO)
{
	npc		= Mod_1106_EBR_Bartholo_MT;
	nr		= 1;
	condition	= Info_Mod_Bartholo_EXIT_Condition;
	information	= Info_Mod_Bartholo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bartholo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bartholo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
