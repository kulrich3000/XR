INSTANCE Info_Mod_Robert_Andre (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Andre_Condition;
	information	= Info_Mod_Robert_Andre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Robert_Andre_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Wendel_Andre))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lukas_Andre))
	|| (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Andre)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Andre_Info()
{
	AI_Output(self, hero, "Info_Mod_Robert_Andre_05_00"); //Ah, it's you. Here, let's pick it up.

	B_GiveInvItems	(self, hero, ItBe_Kettenhemd, 1);

	B_Say	(hero, self, "$WASISTDAS");

	AI_Output(self, hero, "Info_Mod_Robert_Andre_05_01"); //A coat of chain mail. It's a masterpiece! Never had such good material in the oven, let alone under the hammer.
	AI_Output(hero, self, "Info_Mod_Robert_Andre_15_02"); //I don't understand.
	AI_Output(self, hero, "Info_Mod_Robert_Andre_05_03"); //Andre got the order for it. Said I should get everything ready for a big load of magic ore and make a chain mail out of it. You'd pick it up then.
};

INSTANCE Info_Mod_Robert_Plagenquest (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Plagenquest_Condition;
	information	= Info_Mod_Robert_Plagenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got all the stuff you need for that chemical club.";
};

FUNC INT Info_Mod_Robert_Plagenquest_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Lukas_Plagenquest_02))
	|| (Npc_KnowsInfo(hero, Info_Mod_Wendel_Plagenquest_02))
	|| (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Plagenquest_02)))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 8)
	&& (Npc_HasItems(hero, ItMi_HolyWater) >= 2)
	&& (Npc_HasItems(hero, ItMi_GoldNugget_Addon) >= 1)
	&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	&& (Npc_HasItems(hero, ItAt_LurkerSkin) >= 1)
	&& (Npc_HasItems(hero, ItMi_StarkerTabak) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Plagenquest_Info()
{
	AI_Output(hero, self, "Info_Mod_Robert_Plagenquest_15_00"); //I got all the stuff you need for that chemical club.

	B_ShowGivenThings	("Various items given");

	AI_Output(self, hero, "Info_Mod_Robert_Plagenquest_05_01"); //Hey, good man, I'll get started. Come back in a few hours.

	Npc_RemoveInvItems	(hero, ItMi_Nugget, 8);
	Npc_RemoveInvItems	(hero, ItMi_HolyWater, 2);
	Npc_RemoveInvItems	(hero, ItMi_GoldNugget_Addon, 1);
	Npc_RemoveInvItems	(hero, ItMi_Sulfur, 1);
	Npc_RemoveInvItems	(hero, ItAt_LurkerSkin, 1);
	Npc_RemoveInvItems	(hero, ItMi_StarkerTabak, 2);

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "I gave the blacksmith everything for the club and I can pick it up in a few hours.");

	B_GivePlayerXP	(150);

	Mod_WM_RobertChemo = Wld_GetDay();
};

INSTANCE Info_Mod_Robert_Plagenquest_02 (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Plagenquest_02_Condition;
	information	= Info_Mod_Robert_Plagenquest_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Robert_Plagenquest_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Robert_Plagenquest))
	&& (Wld_GetDay() > Mod_WM_RobertChemo)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Plagenquest_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Robert_Plagenquest_02_05_00"); //Jo, good man, I finished that nice piece. Now all you have to do is waddle to the shrine of Innos and do the consecration.

	B_GiveInvItems	(self, hero, ItMw_Chemo_Unloaded, 1);

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "I got the club. Now all I have to do is consecrate them at a shrine of Innos.");

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Robert_Nagelnachschub (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Nagelnachschub_Condition;
	information	= Info_Mod_Robert_Nagelnachschub_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you selling nails?";
};

FUNC INT Info_Mod_Robert_Nagelnachschub_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Wettstreit))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Nagelnachschub_Info()
{
	AI_Output(hero, self, "Info_Mod_Robert_Nagelnachschub_15_00"); //Are you selling nails?
	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub_05_01"); //Nope. I'll need it myself.
	AI_Output(hero, self, "Info_Mod_Robert_Nagelnachschub_15_02"); //Can't you make any?
	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub_05_03"); //Can I...? but not without a mission.
	AI_Output(hero, self, "Info_Mod_Robert_Nagelnachschub_15_04"); //Then I'll give you the order to make nails.
	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub_05_05"); //For this I need an iron blank, which I can melt down.... and a bottle of grog as pay.
	AI_Output(hero, self, "Info_Mod_Robert_Nagelnachschub_15_06"); //How many nails can you make?
	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub_05_07"); //I've got a lot of work to do. I'll fill you a packet full, that'll have to do.

	B_LogEntry	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, "Robert makes me a packet of nails when I bring him a blank and a bottle of grog.");
};

INSTANCE Info_Mod_Robert_Nagelnachschub2 (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Nagelnachschub2_Condition;
	information	= Info_Mod_Robert_Nagelnachschub2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's a blank and the grog.";
};

FUNC INT Info_Mod_Robert_Nagelnachschub2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Robert_Nagelnachschub))
	&& (Npc_HasItems(hero, ItFo_Addon_Grog) >= 1)
	&& (Npc_HasItems(hero, ItMiSwordraw) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Nagelnachschub2_Info()
{
	AI_Output(hero, self, "Info_Mod_Robert_Nagelnachschub2_15_00"); //Here's a blank and the grog.

	Npc_RemoveInvItems	(hero, ItMiSwordraw, 1);
	Npc_RemoveInvItems	(hero, ItFo_Addon_Grog, 1);

	B_ShowGivenThings	("grog and crude steel");

	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub2_05_01"); //All right, I'll get to work. Come back tomorrow.

	B_LogEntry	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, "Robert needs a day to make the nails.");

	Mod_REL_Nagelnachschub_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Robert_Nagelnachschub3 (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Nagelnachschub3_Condition;
	information	= Info_Mod_Robert_Nagelnachschub3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you finished?";
};

FUNC INT Info_Mod_Robert_Nagelnachschub3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Robert_Nagelnachschub2))
	&& (Wld_GetDay() > Mod_REL_Nagelnachschub_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Nagelnachschub3_Info()
{
	AI_Output(hero, self, "Info_Mod_Robert_Nagelnachschub3_15_00"); //Are you finished?
	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub3_05_01"); //Would I still have customers if I did not meet my deadlines? Of course I'm done.

	B_GiveInvItems	(self, hero, ItMi_Nagelpaket, 1);

	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub3_05_02"); //Now, don't disturb me any more.

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Robert_Dietriche (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Dietriche_Condition;
	information	= Info_Mod_Robert_Dietriche_Info;
	permanent	= 1;
	important	= 0;
	description	= "I come from Thorben and would like to commission Dietriche.";
};

FUNC INT Info_Mod_Robert_Dietriche_Condition()
{
	if (Mod_Thorben_Dietriche == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Dietriche_Info()
{
	AI_Output(hero, self, "Info_Mod_Robert_Dietriche_15_00"); //I come from Thorben and would like to commission Dietriche.
	AI_Output(self, hero, "Info_Mod_Robert_Dietriche_05_01"); //Do you have the crude steel and 100 gold coins?

	Info_ClearChoices	(Info_Mod_Robert_Dietriche);

	Info_AddChoice	(Info_Mod_Robert_Dietriche, "No.", Info_Mod_Robert_Dietriche_B);

	if (Npc_HasItems(hero, ItMiSwordRaw) >= 5)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Robert_Dietriche, "Yes.", Info_Mod_Robert_Dietriche_A);
	};
};

FUNC VOID Info_Mod_Robert_Dietriche_B()
{
	AI_Output(hero, self, "Info_Mod_Robert_Dietriche_B_15_00"); //No.

	Info_ClearChoices	(Info_Mod_Robert_Dietriche);
};

FUNC VOID Info_Mod_Robert_Dietriche_A()
{
	AI_Output(hero, self, "Info_Mod_Robert_Dietriche_A_15_00"); //Yeah.

	Npc_RemoveInvItems	(hero, ItMiSwordRaw, 5);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 100);

	B_ShowGivenThings	("100 gold and 5 crude steel added");

	AI_Output(self, hero, "Info_Mod_Robert_Dietriche_A_05_01"); //It's gonna take me a while to get it done.
	AI_Output(self, hero, "Info_Mod_Robert_Dietriche_A_05_02"); //I will then hand them over to a dealer from Khorinis and he will deliver them to Thorben.
	AI_Output(self, hero, "Info_Mod_Robert_Dietriche_A_05_03"); //So you don't have to wait for anyone.

	Mod_Thorben_Dietriche = 3;

	Info_ClearChoices	(Info_Mod_Robert_Dietriche);
};

INSTANCE Info_Mod_Robert_Pickpocket (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Pickpocket_Condition;
	information	= Info_Mod_Robert_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Robert_Pickpocket_Condition()
{
	C_Beklauen	(78, ItMiSwordRaw, 7);
};

FUNC VOID Info_Mod_Robert_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Robert_Pickpocket);

	Info_AddChoice	(Info_Mod_Robert_Pickpocket, DIALOG_BACK, Info_Mod_Robert_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Robert_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Robert_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Robert_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Robert_Pickpocket);
};

FUNC VOID Info_Mod_Robert_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Robert_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Robert_Pickpocket);

		Info_AddChoice	(Info_Mod_Robert_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Robert_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Robert_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Robert_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Robert_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Robert_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Robert_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Robert_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Robert_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Robert_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Robert_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Robert_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Robert_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Robert_EXIT (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_EXIT_Condition;
	information	= Info_Mod_Robert_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Robert_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Robert_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
