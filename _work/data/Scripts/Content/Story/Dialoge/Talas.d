INSTANCE Info_Mod_Talas_Hi (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Hi_Condition;
	information	= Info_Mod_Talas_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Talas_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_Hi_27_00"); //You're still alive? If you need a guide again, you know where to find me.
};

INSTANCE Info_Mod_Talas_GurusZuTempel (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_GurusZuTempel_Condition;
	information	= Info_Mod_Talas_GurusZuTempel_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm to send the gurus to the temple forecourt.";
};

FUNC INT Info_Mod_Talas_GurusZuTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Namib_KarrasDa))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Caine_GotoTempel))
	|| (!Npc_KnowsInfo(hero, Info_Mod_Joru_GotoTempel))
	|| (!Npc_KnowsInfo(hero, Info_Mod_Orun_GotoTempel))
	|| (!Npc_KnowsInfo(hero, Info_Mod_Tondral_GotoTempel))
	|| (!Npc_KnowsInfo(hero, Info_Mod_Tyon_GotoTempel)))
	&& (Mod_SL_TalasGuide == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Talas_GurusZuTempel_15_00"); //I'm to send the gurus to the temple forecourt.
	AI_Output(self, hero, "Info_Mod_Talas_GurusZuTempel_27_01"); //Who are you looking for?

	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	Info_AddChoice	(Info_Mod_Talas_GurusZuTempel, DIALOG_BACK, Info_Mod_Talas_GurusZuTempel_BACK);

	if (!Npc_KnowsInfo(hero, Info_Mod_Tyon_GotoTempel))
	{
		Info_AddChoice	(Info_Mod_Talas_GurusZuTempel, "Baal Tyon", Info_Mod_Talas_GurusZuTempel_Tyon);
	};
	if (!Npc_KnowsInfo(hero, Info_Mod_Tondral_GotoTempel))
	{
		Info_AddChoice	(Info_Mod_Talas_GurusZuTempel, "Baal Tondral", Info_Mod_Talas_GurusZuTempel_Tondral);
	};
	if (!Npc_KnowsInfo(hero, Info_Mod_Orun_GotoTempel))
	{
		Info_AddChoice	(Info_Mod_Talas_GurusZuTempel, "Baal Orun", Info_Mod_Talas_GurusZuTempel_Orun);
	};
	if (!Npc_KnowsInfo(hero, Info_Mod_Joru_GotoTempel))
	{
		Info_AddChoice	(Info_Mod_Talas_GurusZuTempel, "Baal Joru", Info_Mod_Talas_GurusZuTempel_Joru);
	};
	if (!Npc_KnowsInfo(hero, Info_Mod_Caine_GotoTempel))
	{
		Info_AddChoice	(Info_Mod_Talas_GurusZuTempel, "Baal Caine", Info_Mod_Talas_GurusZuTempel_Caine);
	};
};

FUNC VOID B_Say_Talas_Follow ()
{
	AI_Output(self, hero, "Info_Mod_Talas_Follow_27_00"); //Folge mir!
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_BACK()
{
	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	Mod_SL_TalasGuide = 0;
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_Tyon()
{
	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	B_Say_Talas_Follow();

	AI_StopProcessInfos	(self);

	Mod_SL_TalasGuide = 5;

	B_StartOtherRoutine	(self, "TYON");
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_Tondral()
{
	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	B_Say_Talas_Follow();

	AI_StopProcessInfos	(self);

	Mod_SL_TalasGuide = 4;

	B_StartOtherRoutine	(self, "TONDRAL");
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_Orun()
{
	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	B_Say_Talas_Follow();

	AI_StopProcessInfos	(self);

	Mod_SL_TalasGuide = 3;

	B_StartOtherRoutine	(self, "ORUN");
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_Joru()
{
	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	B_Say_Talas_Follow();

	AI_StopProcessInfos	(self);

	Mod_SL_TalasGuide = 2;

	B_StartOtherRoutine	(self, "JORU");
};

FUNC VOID Info_Mod_Talas_GurusZuTempel_Caine()
{
	Info_ClearChoices	(Info_Mod_Talas_GurusZuTempel);

	B_Say_Talas_Follow();

	AI_StopProcessInfos	(self);

	Mod_SL_TalasGuide = 1;

	B_StartOtherRoutine	(self, "CAINE");
};

FUNC VOID Info_Mod_Talas_GoBack()
{
	AI_Output(self, hero, "Info_Mod_Talas_GoBack_27_00"); //I'm going back. If you need me again, you know where to find me.
};

INSTANCE Info_Mod_Talas_AtBaalTyon (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_AtBaalTyon_Condition;
	information	= Info_Mod_Talas_AtBaalTyon_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_AtBaalTyon_Condition()
{
	if (Mod_SL_TalasGuide == 5)
	&& (Npc_GetDistToWP(hero, "PSI_TEACH_TRAIN") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_AtBaalTyon_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_AtBaalTyon_27_00"); //There's Baal Tyon.

	Info_Mod_Talas_GoBack();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Mod_SL_TalasGuide = 0;
};

INSTANCE Info_Mod_Talas_AtBaalTondral (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_AtBaalTondral_Condition;
	information	= Info_Mod_Talas_AtBaalTondral_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_AtBaalTondral_Condition()
{
	if (Mod_SL_TalasGuide == 4)
	&& (Npc_GetDistToWP(hero, "PSI_PLATFORM_LISTEN_2") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_AtBaalTondral_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_AtBaalTondral_27_00"); //There's Baal Tondral.

	Info_Mod_Talas_GoBack();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Mod_SL_TalasGuide = 0;
};

INSTANCE Info_Mod_Talas_AtBaalOrun (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_AtBaalOrun_Condition;
	information	= Info_Mod_Talas_AtBaalOrun_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_AtBaalOrun_Condition()
{
	if (Mod_SL_TalasGuide == 3)
	&& (Npc_GetDistToWP(hero, "PSI_PLACE") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_AtBaalOrun_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_AtBaalOrun_27_00"); //There's Baal Orun.

	Info_Mod_Talas_GoBack();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Mod_SL_TalasGuide = 0;
};

INSTANCE Info_Mod_Talas_AtBaalJoru (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_AtBaalJoru_Condition;
	information	= Info_Mod_Talas_AtBaalJoru_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_AtBaalJoru_Condition()
{
	if (Mod_SL_TalasGuide == 2)
	&& (Npc_GetDistToWP(hero, "PSI_12_HUT_EX_TEACH2") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_AtBaalJoru_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_AtBaalJoru_27_00"); //There's Baal Joru.

	Info_Mod_Talas_GoBack();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Mod_SL_TalasGuide = 0;
};

INSTANCE Info_Mod_Talas_AtBaalCaine (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_AtBaalCaine_Condition;
	information	= Info_Mod_Talas_AtBaalCaine_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_AtBaalCaine_Condition()
{
	if (Mod_SL_TalasGuide == 1)
	&& (Npc_GetDistToWP(hero, "PSI_STEG2") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_AtBaalCaine_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_AtBaalCaine_27_00"); //There's Baal Caine.

	Info_Mod_Talas_GoBack();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Mod_SL_TalasGuide = 0;
};

INSTANCE Info_Mod_Talas_Ken (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Ken_Condition;
	information	= Info_Mod_Talas_Ken_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_Ken_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ken_Eisgebiet))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_Ken_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_Ken_27_00"); //Hurry, you have to come with me right now.

	Info_ClearChoices	(Info_Mod_Talas_Ken);

	Info_AddChoice	(Info_Mod_Talas_Ken, "I don't have time to deal with this.", Info_Mod_Talas_Ken_B);
	Info_AddChoice	(Info_Mod_Talas_Ken, "Just take a breath for now. What's happening?", Info_Mod_Talas_Ken_A);
};

FUNC VOID Info_Mod_Talas_Ken_B()
{
	AI_Output(hero, self, "Info_Mod_Talas_Ken_B_15_00"); //I don't have time to deal with this.
	AI_Output(self, hero, "Info_Mod_Talas_Ken_B_27_01"); //But it's urgent! You're our only chance!

	Info_ClearChoices	(Info_Mod_Talas_Ken);

	Info_AddChoice	(Info_Mod_Talas_Ken, "Just take a breath for now. What's happening?", Info_Mod_Talas_Ken_A);
};

FUNC VOID Info_Mod_Talas_Ken_A()
{
	AI_Output(hero, self, "Info_Mod_Talas_Ken_A_15_00"); //Just take a breath for now. What's happening?
	AI_Output(self, hero, "Info_Mod_Talas_Ken_A_27_01"); //Baal Tondral has made an incredible discovery. A spell here in the swamp!
	AI_Output(self, hero, "Info_Mod_Talas_Ken_A_27_02"); //He wanted to call you because he needs your help. After all, you've helped us before.
	AI_Output(self, hero, "Info_Mod_Talas_Ken_A_27_03"); //And I should be the messenger again.
	AI_Output(hero, self, "Info_Mod_Talas_Ken_A_15_04"); //You didn't get very far.
	AI_Output(self, hero, "Info_Mod_Talas_Ken_A_27_05"); //You think I'd go out alone to look for you? Follow me. Follow me.

	Info_ClearChoices	(Info_Mod_Talas_Ken);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOTONDRAL");
};

INSTANCE Info_Mod_Talas_AtTondral (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_AtTondral_Condition;
	information	= Info_Mod_Talas_AtTondral_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_AtTondral_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Ken))
	&& (Npc_GetDistToWP(self, "PSI_PLATFORM_LISTEN_2") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_AtTondral_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_AtTondral_27_00"); //I will go back to the temple forecourt. I hope you find out something.
	AI_Output(self, hero, "Info_Mod_Talas_AtTondral_27_01"); //And don't put any monsters on our backs.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Talas_Thys (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Thys_Condition;
	information	= Info_Mod_Talas_Thys_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_Thys_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Fisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_Thys_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_Thys_27_00"); //There you are again. Baal Tondral told me to wait for your return and send you to him when you get back.
	AI_Output(self, hero, "Info_Mod_Talas_Thys_27_01"); //You know the way.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "I'm to go to Baal Tondral immediately.");

	Info_ClearChoices	(Info_Mod_Talas_Thys);

	Info_AddChoice	(Info_Mod_Talas_Thys, "No, show me the way.", Info_Mod_Talas_Thys_B);
	Info_AddChoice	(Info_Mod_Talas_Thys, "Yeah. I'll go straight to him.", Info_Mod_Talas_Thys_A);
};

FUNC VOID Info_Mod_Talas_Thys_B()
{
	AI_Output(hero, self, "Info_Mod_Talas_Thys_B_15_00"); //No, show me the way.
	AI_Output(self, hero, "Info_Mod_Talas_Thys_B_27_01"); //Okay. Follow me. Follow me.

	Info_ClearChoices	(Info_Mod_Talas_Thys);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOTONDRAL");
};

FUNC VOID Info_Mod_Talas_Thys_A()
{
	AI_Output(hero, self, "Info_Mod_Talas_Thys_A_15_00"); //Yeah. I'll go straight to him.
	AI_Output(self, hero, "Info_Mod_Talas_Thys_A_27_01"); //Okay.

	Info_ClearChoices	(Info_Mod_Talas_Thys);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Talas_Cyrco (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Cyrco_Condition;
	information	= Info_Mod_Talas_Cyrco_Info;
	permanent	= 0;
	important	= 0;
	description	= "Quickly. A robe. And then I have to talk to Baal Orun.";
};

FUNC INT Info_Mod_Talas_Cyrco_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torwache_Sekte_01_ZuGuru))
	&& (Guru_Dabei == FALSE)
	&& (Templer_Dabei == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_Cyrco_Info()
{
	AI_Output(hero, self, "Info_Mod_Talas_Cyrco_15_00"); //Quickly. A robe. And then I have to talk to Baal Orun.
	AI_Output(self, hero, "Info_Mod_Talas_Cyrco_27_01"); //Right away. How about some stems? Only five apples for it.
	AI_Output(hero, self, "Info_Mod_Talas_Cyrco_15_02"); //I don't need any stalks, and I don't have any apples. Hurry up, lad!
	AI_Output(self, hero, "Info_Mod_Talas_Cyrco_27_03"); //Right away.

	CreateInvItems	(hero, Nov_Armor_L, 1);

	AI_EquipArmor	(hero, Nov_Armor_L);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ORUN");
};

INSTANCE Info_Mod_Talas_Cyrco2 (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Cyrco2_Condition;
	information	= Info_Mod_Talas_Cyrco2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Talas_Cyrco2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Cyrco))
	&& (Npc_GetDistToWP(hero, "PSI_PLACE") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_Cyrco2_Info()
{
	AI_Output(self, hero, "Info_Mod_Talas_Cyrco2_27_00"); //There's Baal Orun.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Talas_Woher (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Woher_Condition;
	information	= Info_Mod_Talas_Woher_Info;
	permanent	= 1;
	important	= 0;
	description	= "Why did they throw you in the colony?";
};

FUNC INT Info_Mod_Talas_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Talas_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Talas_Woher_15_00"); //Why did they throw you in the colony?
	AI_Output(self, hero, "Info_Mod_Talas_Woher_27_01"); //I used to be a water novice and ran important errands for the water magicians.
	AI_Output(self, hero, "Info_Mod_Talas_Woher_27_02"); //Over time, however, I lost interest in it and hid in a cave in front of the city and occasionally stole some food from me.
	AI_Output(self, hero, "Info_Mod_Talas_Woher_27_03"); //Of course, they caught me one day and threw me into the colony.
	AI_Output(self, hero, "Info_Mod_Talas_Woher_27_04"); //I went to Old Camp first, but the guards had something against me.
	AI_Output(self, hero, "Info_Mod_Talas_Woher_27_05"); //In the swamp camp they took me in, and here I'm running errands again, as you know.
};

INSTANCE Info_Mod_Talas_Pickpocket (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_Pickpocket_Condition;
	information	= Info_Mod_Talas_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Talas_Pickpocket_Condition()
{
	C_Beklauen	(30, ItMi_Gold, 14);
};

FUNC VOID Info_Mod_Talas_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Talas_Pickpocket);

	Info_AddChoice	(Info_Mod_Talas_Pickpocket, DIALOG_BACK, Info_Mod_Talas_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Talas_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Talas_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Talas_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Talas_Pickpocket);
};

FUNC VOID Info_Mod_Talas_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Talas_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Talas_Pickpocket);

		Info_AddChoice	(Info_Mod_Talas_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Talas_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Talas_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Talas_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Talas_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Talas_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Talas_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Talas_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Talas_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Talas_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Talas_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Talas_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Talas_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Talas_EXIT (C_INFO)
{
	npc		= Mod_2012_PSINOV_Talas_MT;
	nr		= 1;
	condition	= Info_Mod_Talas_EXIT_Condition;
	information	= Info_Mod_Talas_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Talas_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Talas_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
