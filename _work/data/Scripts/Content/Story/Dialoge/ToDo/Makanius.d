INSTANCE Info_Mod_Makanius_Hi (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Hi_Condition;
	information	= Info_Mod_Makanius_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_Hi_Condition()
{
	if (Mod_TemplerBeiThorus == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_Hi_07_00"); //You finally woke up. You're lucky to be alive.
	AI_Output(hero, self, "Info_Mod_Makanius_Hi_15_01"); //Who are you and what happened?
	AI_Output(self, hero, "Info_Mod_Makanius_Hi_07_02"); //I am Makanius, a healing magician. You were lucky. When you fell from the tower, we just came into the camp. We could slow down your fall and heal your wounds.
	AI_Output(hero, self, "Info_Mod_Makanius_Hi_15_03"); //I need to see Thorus urgently. I have important things to tell him.
	AI_Output(self, hero, "Info_Mod_Makanius_Hi_07_04"); //That is not possible at the moment. Thorus was summoned by his steward Bartholo. Apparently, some Buddhists have revolted.
	AI_Output(hero, self, "Info_Mod_Makanius_Hi_15_05"); //Where did they go?
	AI_Output(self, hero, "Info_Mod_Makanius_Hi_07_06"); //They went to the Molerathöhle near the bridge. Apparently, the Buddlers have gathered there.
	AI_Output(hero, self, "Info_Mod_Makanius_Hi_15_07"); //I need to get there now. Bartholo is a traitor.
	AI_Output(self, hero, "Info_Mod_Makanius_Hi_07_08"); //What? I'll go with you. In your condition alone, you'll hardly be able to face a fight.
	AI_Output(self, hero, "Info_Mod_Makanius_Hi_07_09"); //Follow me, I'll take you to the cave.

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	B_LogEntry	(TOPIC_MOD_AL_SCHMUGGLER, "The healing magician Makanius saved my life. He also told me that Bartholo Thorus lured Thorus to the Molerathöhle near the bridge. I must go there at once and warn Thorus.");

	hero.flags = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOTHORUS");
};

INSTANCE Info_Mod_Makanius_Falle (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Falle_Condition;
	information	= Info_Mod_Makanius_Falle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_Falle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_Hi))
	&& (Npc_GetDistToWP(self, "WP_MT_FALLE_04") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_Falle_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_Falle_07_00"); //This doesn't look good.

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_GotoWP	(self, "SPAWN_OW_MOLERAT_CAVE1_OC");
	AI_PlayAni	(self, "T_PLUNDER");
	AI_GotoWP	(self, "WP_MT_FALLE_02");
	AI_PlayAni	(self, "T_PLUNDER");
	AI_GotoWP	(self, "WP_MT_FALLE_04");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Makanius_ThorusTot (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_ThorusTot_Condition;
	information	= Info_Mod_Makanius_ThorusTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_ThorusTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_Falle))
	&& (Npc_GetDistToWP(self, "WP_MT_FALLE_04") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_ThorusTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_ThorusTot_07_00"); //There was nothing I could do for Thorus, but Alissandro seems to be alive.

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "THORUSTOT");
};

INSTANCE Info_Mod_Makanius_AL (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_AL_Condition;
	information	= Info_Mod_Makanius_AL_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_AL_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_ThorusTot))
	&& (!Npc_IsInState(Mod_1870_EBR_Alissandro_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_AL_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_AL_07_00"); //I'll go back to the camp and pretend to join Bartholo. The other healing mages will surely follow me.
	
	AI_StopProcessInfos	(self);

	B_InitMonsterAttitudes ();

	B_StartOtherRoutine	(self, "ALTESLAGER");
};

INSTANCE Info_Mod_Makanius_KillMission (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_KillMission_Condition;
	information	= Info_Mod_Makanius_KillMission_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_KillMission_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_GotoJackal))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_KillMission_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_KillMission_07_00"); //It's good to see you. Unfortunately, you can't move freely in the camp, which is why you are only safe in the Magician's House.
	AI_Output(self, hero, "Info_Mod_Makanius_KillMission_07_01"); //We can't help you with your assignment. If you have any questions, please contact Jackal, he's on guard duty with us.
	
	B_StartOtherRoutine	(self, "ALTESLAGER");
};

INSTANCE Info_Mod_Makanius_Eroberung_04 (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Eroberung_04_Condition;
	information	= Info_Mod_Makanius_Eroberung_04_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_Eroberung_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_Eroberung_03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_Eroberung_04_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_Eroberung_04_07_00"); //If you are in the inner part, I will signal that the gates will be opened by the spies in the old camp.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Makanius_Eroberung_09 (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Eroberung_09_Condition;
	information	= Info_Mod_Makanius_Eroberung_09_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_Eroberung_09_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Eroberung_08))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_Eroberung_09_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_Eroberung_09_07_00"); //Some of us accompany and support you, while the others help the royal guard and the bandits.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Makanius_BartholosFlucht (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_BartholosFlucht_Condition;
	information	= Info_Mod_Makanius_BartholosFlucht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_BartholosFlucht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_WacheTotWoBartholo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_BartholosFlucht_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_BartholosFlucht_07_00"); //Bartholo went to the dungeons. We must follow him.
	
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "Makanius says Bartholo fled to the dungeons. We need to track him.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOKERKER");
	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "FOLLOWTOKERKER");
};

INSTANCE Info_Mod_Makanius_Lockvogel (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Lockvogel_Condition;
	information	= Info_Mod_Makanius_Lockvogel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_Lockvogel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Lockvogel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_Lockvogel_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_Lockvogel_07_00"); //Oh, there you are...
	AI_Output(hero, self, "Info_Mod_Makanius_Lockvogel_15_01"); //What's this insecure tone of voice? Alissandro said you had a plan.
	AI_Output(self, hero, "Info_Mod_Makanius_Lockvogel_07_02"); //Yes, indeed... He's just a little uncomfortable.

	Info_ClearChoices	(Info_Mod_Makanius_Lockvogel);

	Info_AddChoice	(Info_Mod_Makanius_Lockvogel, "What's it called?", Info_Mod_Makanius_Lockvogel_B);
	Info_AddChoice	(Info_Mod_Makanius_Lockvogel, "For you or for me?", Info_Mod_Makanius_Lockvogel_A);
};

FUNC VOID Info_Mod_Makanius_Lockvogel_C()
{
	AI_Output(hero, self, "Info_Mod_Makanius_Lockvogel_C_15_00"); //All right, let's do it.
	AI_Output(self, hero, "Info_Mod_Makanius_Lockvogel_C_07_01"); //Right now?
	AI_Output(hero, self, "Info_Mod_Makanius_Lockvogel_C_15_02"); //(annoying) When else? Come on, let's go!
	AI_Output(self, hero, "Info_Mod_Makanius_Lockvogel_C_07_03"); //Must it be absolutely...

	AI_DrawWeapon	(hero);

	Info_ClearChoices	(Info_Mod_Makanius_Lockvogel);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Makanius_Lockvogel_B()
{
	AI_Output(hero, self, "Info_Mod_Makanius_Lockvogel_B_15_00"); //What's it called?
	AI_Output(self, hero, "Info_Mod_Makanius_Lockvogel_B_07_01"); //Attack me, so you lure one of the guards into the house. Hit him and take his armor.

	B_LogEntry	(TOPIC_MOD_AL_LOCKVOGEL, "I am to attack Makarius, lure the guard in front of the magician's house, kill him and remove the armor.");

	Info_Mod_Makanius_Lockvogel_C();
};

FUNC VOID Info_Mod_Makanius_Lockvogel_A()
{
	AI_Output(hero, self, "Info_Mod_Makanius_Lockvogel_A_15_00"); //For you or for me?
	AI_Output(self, hero, "Info_Mod_Makanius_Lockvogel_A_07_01"); //For me. You don't have to worry about that.

	Info_Mod_Makanius_Lockvogel_B();
};

INSTANCE Info_Mod_Makanius_Armor (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Armor_Condition;
	information	= Info_Mod_Makanius_Armor_Info;
	permanent	= 0;
	important	= 0;
	description	= "That's what we got.";
};

FUNC INT Info_Mod_Makanius_Armor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_Lockvogel))
	&& (Npc_HasItems(hero, ItAr_Raven_Addon) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_Armor_Info()
{
	AI_Output(hero, self, "Info_Mod_Makanius_Armor_15_00"); //That's what we got.
	AI_Output(self, hero, "Info_Mod_Makanius_Armor_07_01"); //Did you have to hit that hard?
	AI_Output(hero, self, "Info_Mod_Makanius_Armor_15_02"); //Are you a healing magician or not?
	AI_Output(self, hero, "Info_Mod_Makanius_Armor_07_03"); //Of course I am. So we come to the next part of the plan. Go into the house of the Er Barons and see Gomez.
	AI_Output(self, hero, "Info_Mod_Makanius_Armor_07_04"); //Get him in front of the camp.... then our people can take him down.
	AI_Output(hero, self, "Info_Mod_Makanius_Armor_15_05"); //A bunch of fighters for a man? Isn't that a bit excessive?
	AI_Output(self, hero, "Info_Mod_Makanius_Armor_07_06"); //Gomez is now in league with Beliar and not only a strong fighter but also a powerful magician.
	AI_Output(self, hero, "Info_Mod_Makanius_Armor_07_07"); //He's not the greedy baron you beat him before.
	AI_Output(hero, self, "Info_Mod_Makanius_Armor_15_08"); //I see.

	B_LogEntry	(TOPIC_MOD_AL_LOCKVOGEL, "I have the armor. Now I have to persuade Gomez to leave the camp.... if he's still as stubborn as he was then, it might be interesting.");

	AI_StopProcessInfos	(self);
	
	B_StartOtherRoutine(Mod_9999_HMG_Heilungsmagier_MT, "OC");
};

INSTANCE Info_Mod_Makanius_Pickpocket (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Pickpocket_Condition;
	information	= Info_Mod_Makanius_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Makanius_Pickpocket_Condition()
{
	C_Beklauen	(130, ItSc_FullHeal, 2);
};

FUNC VOID Info_Mod_Makanius_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);

	Info_AddChoice	(Info_Mod_Makanius_Pickpocket, DIALOG_BACK, Info_Mod_Makanius_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Makanius_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Makanius_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Makanius_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);
};

FUNC VOID Info_Mod_Makanius_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);

		Info_AddChoice	(Info_Mod_Makanius_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Makanius_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Makanius_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Makanius_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Makanius_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Makanius_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Makanius_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Makanius_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Makanius_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Makanius_EXIT (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_EXIT_Condition;
	information	= Info_Mod_Makanius_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Makanius_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Makanius_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
