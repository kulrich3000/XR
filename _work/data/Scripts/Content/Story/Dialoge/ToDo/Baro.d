INSTANCE Info_Mod_Baro_Hi (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_Hi_Condition;
	information	= Info_Mod_Baro_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Baro_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Willingham_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baro_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Baro_Hi_04_00"); //Who's interrupting my work?
	AI_Output(hero, self, "Info_Mod_Baro_Hi_15_01"); //You work very hard, why don't you take a break?
	AI_Output(self, hero, "Info_Mod_Baro_Hi_04_02"); //Because I'll be out here longer.
	AI_Output(self, hero, "Info_Mod_Baro_Hi_04_03"); //I am responsible for supplying the village with wood. This means to cut down trees in winter as well.
	AI_Output(hero, self, "Info_Mod_Baro_Hi_15_04"); //Looks like you're done with your work for this year. The commander wants to see you.
	AI_Output(self, hero, "Info_Mod_Baro_Hi_04_05"); //Finally, I thought I was freezing to death even though I made sure that everyone was warm.
	AI_Output(self, hero, "Info_Mod_Baro_Hi_04_06"); //When you come back to the village, feel free to drop in on me and I'll make the best beer here.

	B_LogEntry	(TOPIC_MOD_EIS_RAUESCHNEIDE, "Baro will now return to the village.");

	B_StartOtherRoutine	(self, "DORF");
};

INSTANCE Info_Mod_Baro_Orkring (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_Orkring_Condition;
	information	= Info_Mod_Baro_Orkring_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Baro_Orkring_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Willingham_RaueSchneide))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baro_Orkring_Info()
{
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_00"); //Ah, excellent. I'm glad to see you. I need to talk to you about the Orcs.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_01"); //In the beginning there were very few. They came from the mountains and belonged to a very old caste of orcs.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_02"); //But it looks like they have ignited an old power in the depths of the surrounding mountains.
	AI_Output(hero, self, "Info_Mod_Baro_Orkring_15_03"); //How do you know so much about these orcs? You seem to be the only one.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_04"); //I have a special friend. My family's known him for a long time.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_05"); //When we were still living in the mountains, we lived next to his orc cave.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_06"); //We grew up together and I learn a lot from him about the orcs.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_07"); //His name is Garunh and he lives in an orc tent on the other side of the mountain. I need to talk to him about the high number of orcs.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_08"); //Then he will certainly answer your questions.
	AI_Output(hero, self, "Info_Mod_Baro_Orkring_15_09"); //If your boyfriend knows that much, we shouldn't keep him waiting.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring_04_10"); //Perfect, I already sent him a message. He'll be expecting us. Follow me. Follow me.

	B_LogEntry	(TOPIC_MOD_EIS_ORKRING, "Baro gets his information about the Orcs from an orc named Garunh. He will lead me to him.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOGARUNH");
};

INSTANCE Info_Mod_Baro_Orkring2 (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_Orkring2_Condition;
	information	= Info_Mod_Baro_Orkring2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Baro_Orkring2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baro_Orkring))
	&& (Npc_GetDistToWP(self, "EIS_443") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baro_Orkring2_Info()
{
	AI_Output(self, hero, "Info_Mod_Baro_Orkring2_04_00"); //Hold on a second. I'll let him know there's someone else.

	AI_GotoNpc	(self, Mod_10045_Orc_Garunh_EIS);

	AI_GotoNpc	(self, hero);

	AI_TurnToNpc	(self, hero);
	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Baro_Orkring2_04_01"); //He's ready to talk to you. Follow me into his tent.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Baro_Orkring3 (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_Orkring3_Condition;
	information	= Info_Mod_Baro_Orkring3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Baro_Orkring3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baro_Orkring3_Info()
{
	AI_Output(self, hero, "Info_Mod_Baro_Orkring3_04_00"); //I'm going back to the village. If you helped Garunh, come to my house. I'll buy you dinner.
	AI_Output(self, hero, "Info_Mod_Baro_Orkring3_04_01"); //In the cold winter months one should not suffer from hunger.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DORF");
};

INSTANCE Info_Mod_Baro_UntoteOrks (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_UntoteOrks_Condition;
	information	= Info_Mod_Baro_UntoteOrks_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Baro_UntoteOrks_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baro_UntoteOrks_Info()
{
	AI_Output(self, hero, "Info_Mod_Baro_UntoteOrks_04_00"); //Ah, you're back. Could you help Garunh and more importantly, what did he tell you about the Orcs at the pass?
	AI_Output(hero, self, "Info_Mod_Baro_UntoteOrks_15_01"); //Looks like we're dealing with dead orcs.
	AI_Output(hero, self, "Info_Mod_Baro_UntoteOrks_15_02"); //Apparently, a shaman named Asek has recruited his people from the cemetery.
	AI_Output(hero, self, "Info_Mod_Baro_UntoteOrks_15_03"); //Garunh didn't know where the temple where Asek is.
	AI_Output(hero, self, "Info_Mod_Baro_UntoteOrks_15_04"); //We need an orc leader we can interrogate, and Garunh said you know someone who speaks orc language.
	AI_Output(self, hero, "Info_Mod_Baro_UntoteOrks_04_05"); //I know someone, but before you go see him, you should go to Willingham.
	AI_Output(self, hero, "Info_Mod_Baro_UntoteOrks_04_06"); //The man you're looking for is named Melchior and reports to the commander. He'll also know where he's stationed.
	AI_Output(self, hero, "Info_Mod_Baro_UntoteOrks_04_07"); //We should postpone dinner. Here, take one of my beers and a piece of ham so you don't fall down on me.

	CreateInvItems	(hero, ItFo_Beer, 1);
	CreateInvItems	(hero, ItFo_Bacon, 1);

	B_ShowGivenThings	("Beer and ham preserved");

	B_LogEntry	(TOPIC_MOD_EIS_UNTOTEORKS, "My sought-after contact person is Melchior and reports to Commander Willingham. So I should talk to this one first.");
};

INSTANCE Info_Mod_Baro_Heiltrank (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_Heiltrank_Condition;
	information	= Info_Mod_Baro_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(give healing potion)";
};

FUNC INT Info_Mod_Baro_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baro_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	Info_AddChoice	(Info_Mod_Baro_Heiltrank, DIALOG_BACK, Info_Mod_Baro_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Essence of Healing", Info_Mod_Baro_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Elixir of Healing", Info_Mod_Baro_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Extract of Healing", Info_Mod_Baro_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Essence of Healing", Info_Mod_Baro_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Drink of light healing", Info_Mod_Baro_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Light healing potion", Info_Mod_Baro_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Baro_Heiltrank, "Drink of fast healing", Info_Mod_Baro_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Baro_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Baro_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Baro_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Baro_Pickpocket (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_Pickpocket_Condition;
	information	= Info_Mod_Baro_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Baro_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Baro_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Baro_Pickpocket);

	Info_AddChoice	(Info_Mod_Baro_Pickpocket, DIALOG_BACK, Info_Mod_Baro_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Baro_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Baro_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Baro_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Baro_Pickpocket);
};

FUNC VOID Info_Mod_Baro_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Baro_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Baro_Pickpocket);

		Info_AddChoice	(Info_Mod_Baro_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Baro_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Baro_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Baro_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Baro_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Baro_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Baro_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Baro_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Baro_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Baro_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Baro_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Baro_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Baro_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Baro_EXIT (C_INFO)
{
	npc		= Mod_7729_OUT_Baro_EIS;
	nr		= 1;
	condition	= Info_Mod_Baro_EXIT_Condition;
	information	= Info_Mod_Baro_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Baro_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Baro_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
