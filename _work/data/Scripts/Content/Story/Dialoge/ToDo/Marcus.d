INSTANCE Info_Mod_Marcus_UntoteOrks (C_INFO)
{
	npc		= Mod_7752_OUT_Marcus_EIS;
	nr		= 1;
	condition	= Info_Mod_Marcus_UntoteOrks_Condition;
	information	= Info_Mod_Marcus_UntoteOrks_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want you to take me to Melchior.";
};

FUNC INT Info_Mod_Marcus_UntoteOrks_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Willingham_UntoteOrks))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marcus_UntoteOrks_Info()
{
	AI_Output(hero, self, "Info_Mod_Marcus_UntoteOrks_15_00"); //I want you to take me to Melchior and take over his post.
	AI_Output(self, hero, "Info_Mod_Marcus_UntoteOrks_07_01"); //Willingham sent you, didn't he? I'll take you there, but first I need you to help me with a little something.
	AI_Output(hero, self, "Info_Mod_Marcus_UntoteOrks_15_02"); //What's in it for me?
	AI_Output(self, hero, "Info_Mod_Marcus_UntoteOrks_07_03"); //Let's say 150 gold. Agreed?
	AI_Output(hero, self, "Info_Mod_Marcus_UntoteOrks_15_04"); //All right, I'll help you, but if I think I deserve more, we'll have to renegotiate.
	AI_Output(self, hero, "Info_Mod_Marcus_UntoteOrks_07_05"); //I can live with that.

	Log_CreateTopic	(TOPIC_MOD_EIS_MARCUS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_MARCUS, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_EIS_UNTOTEORKS, TOPIC_MOD_EIS_MARCUS, "Before Marcus leads me to Melchior, I'm supposed to help him with a little something.", "Before Marcus leads me to Melchior, I'm supposed to help him with a little something. He will lead me there.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SENDAK");

	self.aivar[AIV_Partymember] = TRUE;

	Wld_InsertNpc	(Mod_7753_BDT_Sendak_EIS, "EIS_326");
};

INSTANCE Info_Mod_Marcus_UntoteOrks2 (C_INFO)
{
	npc		= Mod_7752_OUT_Marcus_EIS;
	nr		= 1;
	condition	= Info_Mod_Marcus_UntoteOrks2_Condition;
	information	= Info_Mod_Marcus_UntoteOrks2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Marcus_UntoteOrks2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sendak_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marcus_UntoteOrks2_Info()
{
	AI_Output(hero, self, "Info_Mod_Marcus_UntoteOrks2_15_00"); //What kind of little thing was that? Who was that guy?
	AI_Output(self, hero, "Info_Mod_Marcus_UntoteOrks2_07_01"); //I had to bring you here. I had one or two deals with the bandits.
	AI_Output(self, hero, "Info_Mod_Marcus_UntoteOrks2_07_02"); //And when you killed Aslan, the rest of the gang wanted your head.
	AI_Output(self, hero, "Info_Mod_Marcus_UntoteOrks2_07_03"); //But I didn't know he'd send those beasts after us.
	AI_Output(hero, self, "Info_Mod_Marcus_UntoteOrks2_15_04"); //And you didn't know they wanted to kill you, too.
	AI_Output(self, hero, "Info_Mod_Marcus_UntoteOrks2_07_05"); //I'll make it up to you. I hope you won't tell Willingham about this.
	AI_Output(hero, self, "Info_Mod_Marcus_UntoteOrks2_15_06"); //I think it's forgotten, but if you rush me again with bandits or orcs, you'll end up like them.
	AI_Output(hero, self, "Info_Mod_Marcus_UntoteOrks2_15_07"); //Now get me to Melchior.
	AI_Output(self, hero, "Info_Mod_Marcus_UntoteOrks2_07_08"); //Follow me, his post is not far away.

	B_SetTopicStatus	(TOPIC_MOD_EIS_MARCUS, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MELCHIOR");

	CurrentNQ += 1;

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Marcus_Heiltrank (C_INFO)
{
	npc		= Mod_7752_OUT_Marcus_EIS;
	nr		= 1;
	condition	= Info_Mod_Marcus_Heiltrank_Condition;
	information	= Info_Mod_Marcus_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(give healing potion)";
};

FUNC INT Info_Mod_Marcus_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	&& (Mod_IR_Diego == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Marcus_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Marcus_Heiltrank);

	Info_AddChoice	(Info_Mod_Marcus_Heiltrank, DIALOG_BACK, Info_Mod_Marcus_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Marcus_Heiltrank, "Essence of Healing", Info_Mod_Marcus_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Marcus_Heiltrank, "Elixir of Healing", Info_Mod_Marcus_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Marcus_Heiltrank, "Extract of Healing", Info_Mod_Marcus_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Marcus_Heiltrank, "Essence of Healing", Info_Mod_Marcus_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Marcus_Heiltrank, "Drink of light healing", Info_Mod_Marcus_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Marcus_Heiltrank, "Light healing potion", Info_Mod_Marcus_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Marcus_Heiltrank, "Drink of fast healing", Info_Mod_Marcus_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Marcus_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Marcus_Heiltrank);
};

FUNC VOID Info_Mod_Marcus_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Marcus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Marcus_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Marcus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Marcus_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Marcus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Marcus_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Marcus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Marcus_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Marcus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Marcus_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Marcus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Marcus_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Marcus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Marcus_Pickpocket (C_INFO)
{
	npc		= Mod_7752_OUT_Marcus_EIS;
	nr		= 1;
	condition	= Info_Mod_Marcus_Pickpocket_Condition;
	information	= Info_Mod_Marcus_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Marcus_Pickpocket_Condition()
{
	C_Beklauen	(137, ItMi_Gold, 60);
};

FUNC VOID Info_Mod_Marcus_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Marcus_Pickpocket);

	Info_AddChoice	(Info_Mod_Marcus_Pickpocket, DIALOG_BACK, Info_Mod_Marcus_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Marcus_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Marcus_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Marcus_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Marcus_Pickpocket);
};

FUNC VOID Info_Mod_Marcus_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Marcus_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Marcus_Pickpocket);

		Info_AddChoice	(Info_Mod_Marcus_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Marcus_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Marcus_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Marcus_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Marcus_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Marcus_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Marcus_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Marcus_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Marcus_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Marcus_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Marcus_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Marcus_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Marcus_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Marcus_EXIT (C_INFO)
{
	npc		= Mod_7752_OUT_Marcus_EIS;
	nr		= 1;
	condition	= Info_Mod_Marcus_EXIT_Condition;
	information	= Info_Mod_Marcus_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Marcus_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Marcus_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
