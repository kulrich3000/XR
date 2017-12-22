INSTANCE Info_Mod_Engardo_Hi (C_INFO)
{
	npc		= Mod_904_SLD_Engardo_MT;
	nr		= 1;
	condition	= Info_Mod_Engardo_Hi_Condition;
	information	= Info_Mod_Engardo_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Engardo_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_BackAtCamp))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Engardo_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Engardo_Hi_13_00"); //Man, you showed me you're reliable. I have a job for you to do, where you can stretch your legs and earn gold, ore and swampweed.
	AI_Output(hero, self, "Info_Mod_Engardo_Hi_15_01"); //Sounds good to me.
	AI_Output(self, hero, "Info_Mod_Engardo_Hi_13_02"); //You may already know that some of the Water Warriors are former mercenaries. One of them is Vanas.
	AI_Output(self, hero, "Info_Mod_Engardo_Hi_13_03"); //You'd just have to bring something to him and bring what he's giving you to me.

	B_StartOtherRoutine	(self, "START");

	Info_ClearChoices	(Info_Mod_Engardo_Hi);

	Info_AddChoice	(Info_Mod_Engardo_Hi, "Nah, it's a long way to go.", Info_Mod_Engardo_Hi_B);
	Info_AddChoice	(Info_Mod_Engardo_Hi, "Sure, I'll take my left.", Info_Mod_Engardo_Hi_A);
};

FUNC VOID Info_Mod_Engardo_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Hi_B_15_00"); //Nah, it's a long way to go.
	AI_Output(self, hero, "Info_Mod_Engardo_Hi_B_13_01"); //Too bad. Very disappointing. I gotta find someone else to do it.
	
	Info_ClearChoices	(Info_Mod_Engardo_Hi);
};

FUNC VOID Info_Mod_Engardo_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Hi_A_15_00"); //Sure, I'll take my left.
	AI_Output(self, hero, "Info_Mod_Engardo_Hi_A_13_01"); //Very good. Very good. Here you have twelve chunks of hereditary herbs and twelve bogweed stalks for Vanas.

	B_ShowGivenThings	("12 lumps of ore and 12 stems of bog herb preserved");

	CreateInvItems	(hero, ItMi_Nugget, 12);
	CreateInvItems	(hero, ItMi_Joint, 12);

	Mod_SLD_Engardo = 1;

	Log_CreateTopic	(TOPIC_MOD_SLD_ENGARDO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_ENGARDO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_ENGARDO, "I am to bring twelve heirloom and bogweed stalks each to the water warrior Vanas and then transport the payment to Engardo in the Minental.");
	
	Info_ClearChoices	(Info_Mod_Engardo_Hi);
};

INSTANCE Info_Mod_Engardo_Vanas (C_INFO)
{
	npc		= Mod_904_SLD_Engardo_MT;
	nr		= 1;
	condition	= Info_Mod_Engardo_Vanas_Condition;
	information	= Info_Mod_Engardo_Vanas_Info;
	permanent	= 0;
	important	= 0;
	description	= "I was with Vanas. But he didn't have everything.";
};

FUNC INT Info_Mod_Engardo_Vanas_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Engardo_Hi))
	&& (((Mod_SLD_Engardo == 3)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 4)
	&& (Npc_HasItems(hero, ItMi_Joint) >= 4))
	|| (Npc_KnowsInfo(hero, Info_Mod_Everaldo_Hi)))
	&& (Npc_HasItems(hero, ItMi_VanasPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Engardo_Vanas_Info()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_15_00"); //I was with Vanas. But he didn't have everything.

	if (Mod_SLD_Engardo == 3)
	{
		AI_Output(hero, self, "Info_Mod_Engardo_Vanas_15_01"); //He gave me back part of the ore and swampweed.

		B_ShowGivenThings	("Package, 4 ore and 4 stems of bog cabbage given");

		Npc_RemoveInvItems	(hero, ItMi_VanasPaket, 1);
		Npc_RemoveInvItems	(hero, ItMi_Nugget, 4);
		Npc_RemoveInvItems	(hero, ItMi_Joint, 4);

		AI_Output(self, hero, "Info_Mod_Engardo_Vanas_13_02"); //Let me see... Well, okay, at least something. Here you have four swampweed stalks and three ore as a reward.

		B_ShowGivenThings	("3 ore and 4 stems of bogweed preserved");

		CreateInvItems	(hero, ItMi_Nugget, 3);
		CreateInvItems	(hero, ItMi_Joint, 4);

		B_GivePlayerXP	(350);

		Mod_SLD_Engardo = 5;
	}
	else
	{
		B_GiveInvItems	(hero, self, ItMi_VanasPaket, 1);

		AI_Output(self, hero, "Info_Mod_Engardo_Vanas_13_03"); //Let me see... And what do I get in return?

		Info_ClearChoices	(Info_Mod_Engardo_Vanas);

		Info_AddChoice	(Info_Mod_Engardo_Vanas, "Nothing at all.", Info_Mod_Engardo_Vanas_F);

		if (Npc_HasItems(hero, ItFo_Beer) >= 14)
		{
			Info_AddChoice	(Info_Mod_Engardo_Vanas, "Fourteen beers.", Info_Mod_Engardo_Vanas_E);
		};
		if (Npc_HasItems(hero, ItFo_Cheese) >= 14)
		{
			Info_AddChoice	(Info_Mod_Engardo_Vanas, "14 pieces of cheese.", Info_Mod_Engardo_Vanas_D);
		};
		if (Npc_HasItems(hero, ItMi_Gold) >= 250)
		{
			Info_AddChoice	(Info_Mod_Engardo_Vanas, "250 gold coins.", Info_Mod_Engardo_Vanas_C);
		};
		if (Npc_HasItems(hero, ItMi_Joint) >= 12)
		{
			Info_AddChoice	(Info_Mod_Engardo_Vanas, "Twelve stems of bogweed.", Info_Mod_Engardo_Vanas_B);
		};
		if (Npc_HasItems(hero, ItMi_Nugget) >= 6)
		{
			Info_AddChoice	(Info_Mod_Engardo_Vanas, "Six ore.", Info_Mod_Engardo_Vanas_A);
		};
	};

	B_SetTopicStatus	(TOPIC_MOD_SLD_ENGARDO, LOG_SUCCESS);
};

FUNC VOID Info_Mod_Engardo_Vanas_G()
{
	AI_Output(self, hero, "Info_Mod_Engardo_Vanas_G_13_00"); //Well, it's all right. Here you have five bogweed stalks and four ore as a reward.

	B_ShowGivenThings	("4 ore and 5 stems of bogweed preserved");

	CreateInvItems	(hero, ItMi_Nugget, 4);
	CreateInvItems	(hero, ItMi_Joint, 5);

	B_GivePlayerXP	(400);

	Mod_SLD_Engardo = 5;

	Info_ClearChoices	(Info_Mod_Engardo_Vanas);
};

FUNC VOID Info_Mod_Engardo_Vanas_F()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_F_15_00"); //Nothing at all.
	AI_Output(self, hero, "Info_Mod_Engardo_Vanas_F_13_01"); //What?! I made a loss bargain because of you, bumpkins. Get out of my sight!

	B_GivePlayerXP	(200);

	Info_ClearChoices	(Info_Mod_Engardo_Vanas);
};

FUNC VOID Info_Mod_Engardo_Vanas_E()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_E_15_00"); //Fourteen beers.

	B_GiveInvItems	(hero, self, ItFo_Beer, 14);
	
	Info_Mod_Engardo_Vanas_G();
};

FUNC VOID Info_Mod_Engardo_Vanas_D()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_D_15_00"); //14 pieces of cheese.

	B_GiveInvItems	(hero, self, ItFo_Cheese, 14);

	Info_Mod_Engardo_Vanas_G();
};

FUNC VOID Info_Mod_Engardo_Vanas_C()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_C_15_00"); //250 gold coins.

	B_GiveInvItems	(hero, self, ItMi_Gold, 250);

	Info_Mod_Engardo_Vanas_G();
};

FUNC VOID Info_Mod_Engardo_Vanas_B()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_B_15_00"); //Twelve stems of bogweed.

	B_GiveInvItems	(hero, self, ItMi_Joint, 12);

	Info_Mod_Engardo_Vanas_G();
};

FUNC VOID Info_Mod_Engardo_Vanas_A()
{
	AI_Output(hero, self, "Info_Mod_Engardo_Vanas_A_15_00"); //Six ore.

	B_GiveInvItems	(hero, self, ItMi_Nugget, 6);

	Info_Mod_Engardo_Vanas_G();
};

INSTANCE Info_Mod_Engardo_Pickpocket (C_INFO)
{
	npc		= Mod_904_SLD_Engardo_MT;
	nr		= 1;
	condition	= Info_Mod_Engardo_Pickpocket_Condition;
	information	= Info_Mod_Engardo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Engardo_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Engardo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);

	Info_AddChoice	(Info_Mod_Engardo_Pickpocket, DIALOG_BACK, Info_Mod_Engardo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Engardo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Engardo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Engardo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);
};

FUNC VOID Info_Mod_Engardo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);

		Info_AddChoice	(Info_Mod_Engardo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Engardo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Engardo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Engardo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Engardo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Engardo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Engardo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Engardo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Engardo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Engardo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Engardo_EXIT (C_INFO)
{
	npc		= Mod_904_SLD_Engardo_MT;
	nr		= 1;
	condition	= Info_Mod_Engardo_EXIT_Condition;
	information	= Info_Mod_Engardo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Engardo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Engardo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
