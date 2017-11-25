INSTANCE Info_Mod_Ranck_FreudenspenderMachtBlind (C_INFO)
{
	npc		= Mod_7351_OUT_Ranck_REL;
	nr		= 1;
	condition	= Info_Mod_Ranck_FreudenspenderMachtBlind_Condition;
	information	= Info_Mod_Ranck_FreudenspenderMachtBlind_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ranck_FreudenspenderMachtBlind_Condition()
{
	if (Mod_SL_PartBlind == 1)
	&& (Mod_SL_PartBlind_Counter >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ranck_FreudenspenderMachtBlind_Info()
{
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderMachtBlind_12_00"); //It's nice of what you're doing here, but you'll never finish it.

	B_Say	(hero, self, "$WASMEINSTDU");

	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderMachtBlind_12_01"); //Exactly what I'm saying. I'll make you an offer.
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderMachtBlind_12_02"); //Give me, say 1,000 gold pieces, and I'll give you a hand.

	Mod_SL_PartBlind = 2;

	B_LogEntry	(TOPIC_MOD_SL_BLIND, "A guy named Ranck offered me his help because of the rumors about pleasure donors. I'm supposed to give him a thousand gold coins for it, though.");
};

INSTANCE Info_Mod_Ranck_FreudenspenderHelper (C_INFO)
{
	npc		= Mod_7351_OUT_Ranck_REL;
	nr		= 1;
	condition	= Info_Mod_Ranck_FreudenspenderHelper_Condition;
	information	= Info_Mod_Ranck_FreudenspenderHelper_Info;
	permanent	= 0;
	important	= 0;
	description	= "All right, here.";
};

FUNC INT Info_Mod_Ranck_FreudenspenderHelper_Condition()
{
	if (Mod_SL_PartBlind == 2)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ranck_FreudenspenderHelper_Info()
{
	AI_Output(hero, self, "Info_Mod_Ranck_FreudenspenderHelper_15_00"); //All right, here.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1000);

	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderHelper_12_01"); //All right, let me just do it.
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderHelper_12_02"); //(loudly) Hello? Hello?! What time is it?
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderHelper_12_03"); //It's all so dark, but I can feel the sun on my skin!
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderHelper_12_04"); //Anybody here?! I don't see anything (more and more panicky) I... l-- I AM BLIND!
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderHelper_12_05"); //Goddamn giver of joy, I wouldn't have let that happen. I was warned it would make you blind.
	AI_Output(self, hero, "Info_Mod_Ranck_FreudenspenderHelper_12_06"); //Ohhh, I poor fool! Farewell cruel world, I can't live like this!

	Mod_SL_PartBlind = 3;

	B_LogEntry	(TOPIC_MOD_SL_BLIND, "Ranck put on quite a show. That should have convinced the people of Khorata.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLEE");
};

INSTANCE Info_Mod_Ranck_Pickpocket (C_INFO)
{
	npc		= Mod_7351_OUT_Ranck_REL;
	nr		= 1;
	condition	= Info_Mod_Ranck_Pickpocket_Condition;
	information	= Info_Mod_Ranck_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ranck_Pickpocket_Condition()
{
	C_Beklauen	(72, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Ranck_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);

	Info_AddChoice	(Info_Mod_Ranck_Pickpocket, DIALOG_BACK, Info_Mod_Ranck_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ranck_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ranck_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ranck_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);
};

FUNC VOID Info_Mod_Ranck_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);

		Info_AddChoice	(Info_Mod_Ranck_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ranck_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ranck_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ranck_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ranck_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ranck_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ranck_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ranck_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ranck_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ranck_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ranck_EXIT (C_INFO)
{
	npc		= Mod_7351_OUT_Ranck_REL;
	nr		= 1;
	condition	= Info_Mod_Ranck_EXIT_Condition;
	information	= Info_Mod_Ranck_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ranck_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ranck_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
