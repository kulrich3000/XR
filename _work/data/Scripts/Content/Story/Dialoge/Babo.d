INSTANCE Info_Mod_Babo_Hi (C_INFO)
{
	npc		= Mod_914_NOV_Babo_NW;
	nr		= 1;
	condition	= Info_Mod_Babo_Hi_Condition;
	information	= Info_Mod_Babo_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bad mood?";
};

FUNC INT Info_Mod_Babo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Babo_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Babo_Hi_15_00"); //Bad mood?
	AI_Output(self, hero, "Info_Mod_Babo_Hi_36_01"); //(disgusted) Yes. You can see that.
	AI_Output(hero, self, "Info_Mod_Babo_Hi_15_02"); //What's up?
	AI_Output(self, hero, "Info_Mod_Babo_Hi_36_03"); //Damn, somebody tampered with my trunk and stole an important piece of paper.
	AI_Output(self, hero, "Info_Mod_Babo_Hi_36_04"); //The only thing that has made the novice life here in the monastery bearable.
	AI_Output(self, hero, "Info_Mod_Babo_Hi_36_05"); //But I have no idea who might have done this. They all annoy me, even the magicians.

	Info_ClearChoices	(Info_Mod_Babo_Hi);

	Info_AddChoice	(Info_Mod_Babo_Hi, "(laughing)", Info_Mod_Babo_Hi_B);
	Info_AddChoice	(Info_Mod_Babo_Hi, "What is this object? Shall I keep my eyes open?", Info_Mod_Babo_Hi_A);
};

FUNC VOID Info_Mod_Babo_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Babo_Hi_B_15_00"); //(laughing)
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Babo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Babo_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Babo_Hi_A_15_00"); //What is this object? Shall I keep my eyes open?
	AI_Output(self, hero, "Info_Mod_Babo_Hi_A_36_01"); //(panic) For Innos' sake, no! It's very private.
	AI_Output(self, hero, "Info_Mod_Babo_Hi_A_36_02"); //I shouldn't have told you anything...
	AI_Output(hero, self, "Info_Mod_Babo_Hi_A_15_03"); //Don't you want some fresh air?
	AI_Output(self, hero, "Info_Mod_Babo_Hi_A_36_04"); //I've told the magicians that many times before. But they never pick me for the errands.
	AI_Output(self, hero, "Info_Mod_Babo_Hi_A_36_05"); //I can sweep and stomp the wine until I get sick. And that's it.
	AI_Output(hero, self, "Info_Mod_Babo_Hi_A_15_06"); //I could put a good word in with the magicians for you...
	AI_Output(self, hero, "Info_Mod_Babo_Hi_A_36_07"); //Why are you so helpful? Are you kidding me or what?
	AI_Output(hero, self, "Info_Mod_Babo_Hi_A_15_08"); //I'm just offering.
	AI_Output(self, hero, "Info_Mod_Babo_Hi_A_36_09"); //Do you have any cash? Then I could make the drawing from memory.

	Info_ClearChoices	(Info_Mod_Babo_Hi);

	Info_AddChoice	(Info_Mod_Babo_Hi, "Not right now.", Info_Mod_Babo_Hi_D);

	if (Npc_HasItems(hero, ItMi_Coal) >= 1) {
		Info_AddChoice	(Info_Mod_Babo_Hi, "Sure, here you go.", Info_Mod_Babo_Hi_C);
	};
};

FUNC VOID Info_Mod_Babo_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Babo_Hi_D_15_00"); //Not right now.
	AI_Output(self, hero, "Info_Mod_Babo_Hi_D_36_01"); //Too bad...

	Info_ClearChoices	(Info_Mod_Babo_Hi);
};

FUNC VOID Info_Mod_Babo_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Babo_Hi_C_15_00"); //Sure, here you go.

	B_GiveInvItems	(hero, self, ItMi_Coal, 1);

	AI_Output(self, hero, "Info_Mod_Babo_Hi_C_36_01"); //Thank you, at least something.

	B_GivePlayerXP	(50);

	Info_ClearChoices	(Info_Mod_Babo_Hi);
};

INSTANCE Info_Mod_Babo_Daemonisch (C_INFO)
{
	npc		= Mod_914_NOV_Babo_NW;
	nr		= 1;
	condition	= Info_Mod_Babo_Daemonisch_Condition;
	information	= Info_Mod_Babo_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Babo_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrnolKap4))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Babo_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Babo_Daemonisch_36_00"); //Black smoke from his mouth, black smoke from his body, screams...
	AI_Output(hero, self, "Info_Mod_Babo_Daemonisch_15_01"); //Well, just calm down. What exactly happened?
	AI_Output(self, hero, "Info_Mod_Babo_Daemonisch_36_02"); //Just after he left the church... no, no, no....
	AI_Output(hero, self, "Info_Mod_Babo_Daemonisch_15_03"); //No, that's all I can get out of him.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Babo_Daemonisch_15_04"); //Yeah, he was last in the church. I should ask around.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Babo is actually quite upset, reports of black smoke from the body of the deceased. Dyrian had obviously been in the church before....");

	Mod_BaboVerwirrt_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Babo_Daemonisch2 (C_INFO)
{
	npc		= Mod_914_NOV_Babo_NW;
	nr		= 1;
	condition	= Info_Mod_Babo_Daemonisch2_Condition;
	information	= Info_Mod_Babo_Daemonisch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Babo_Daemonisch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch))
	&& (Wld_GetDay() > Mod_BaboVerwirrt_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Babo_Daemonisch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Babo_Daemonisch2_36_00"); //How's the news?
	AI_Output(hero, self, "Info_Mod_Babo_Daemonisch2_15_01"); //Uh, you're all right? You told me things like that....
	AI_Output(self, hero, "Info_Mod_Babo_Daemonisch2_36_02"); //Oh, forget the nonsense. I was just confused about dyrian's death. But I'm all right now.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Strange... Babo seems to be back together again and does the things he had told me before as a result of the shock of Dyrian's death.");
};

INSTANCE Info_Mod_Babo_Daemonisch3 (C_INFO)
{
	npc		= Mod_914_NOV_Babo_NW;
	nr		= 1;
	condition	= Info_Mod_Babo_Daemonisch3_Condition;
	information	= Info_Mod_Babo_Daemonisch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Babo_Daemonisch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Babo_Daemonisch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Babo_Daemonisch3_36_00"); //The black shadows in the cave near the lake.... I must inform the monastery immediately.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Babo_Pickpocket (C_INFO)
{
	npc		= Mod_914_NOV_Babo_NW;
	nr		= 1;
	condition	= Info_Mod_Babo_Pickpocket_Condition;
	information	= Info_Mod_Babo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Babo_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Babo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Babo_Pickpocket);

	Info_AddChoice	(Info_Mod_Babo_Pickpocket, DIALOG_BACK, Info_Mod_Babo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Babo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Babo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Babo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Babo_Pickpocket);
};

FUNC VOID Info_Mod_Babo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Babo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Babo_Pickpocket);

		Info_AddChoice	(Info_Mod_Babo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Babo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Babo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Babo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Babo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Babo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Babo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Babo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Babo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Babo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Babo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Babo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Babo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Babo_EXIT (C_INFO)
{
	npc		= Mod_914_NOV_Babo_NW;
	nr		= 1;
	condition	= Info_Mod_Babo_EXIT_Condition;
	information	= Info_Mod_Babo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Babo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Babo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
