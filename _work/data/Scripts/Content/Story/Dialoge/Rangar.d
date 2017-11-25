INSTANCE Info_Mod_Rangar_DragoHelp (C_INFO)
{
	npc		= Mod_747_MIL_Rangar_NW;
	nr		= 1;
	condition	= Info_Mod_Rangar_DragoHelp_Condition;
	information	= Info_Mod_Rangar_DragoHelp_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well, Rangar! What brings you here?";
};

FUNC INT Info_Mod_Rangar_DragoHelp_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_SuchenderZettel))
	&& (Npc_HasItems(hero, ItPo_Health_01) >= 10)
	&& (Npc_HasItems(hero, ItPo_Mana_01) >= 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rangar_DragoHelp_Info()
{
	AI_Output(hero, self, "Info_Mod_Rangar_DragoHelp_15_00"); //Well, Rangar! What brings you here?
	AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_01"); //Just stop it! There was some vagabond at Lord Andre's place who made me look so vexed that I was all over the guards.
	AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_02"); //Everybody pushed me around. I just took off.
	AI_Output(hero, self, "Info_Mod_Rangar_DragoHelp_15_03"); //And then what?
	AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_04"); //Then I spoke to Dragomir in the tavern later.
	AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_05"); //He offered to join the hunters. Nature, fresh air and not the dusty city walls...
	AI_Output(hero, self, "Info_Mod_Rangar_DragoHelp_15_06"); //Well, if that's what you think...
	AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_07"); //Yeah. And not a dreary rut.
	AI_Output(hero, self, "Info_Mod_Rangar_DragoHelp_15_08"); //Was well! You know the current situation?
	AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_09"); //Well, I know from Torgan that Dragomir and his group are trapped under the solar circle staircase and attacked.
	AI_Output(hero, self, "Info_Mod_Rangar_DragoHelp_15_10"); //You know Torgan?
	AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_11"); //Jo. I had to drop something off at Torgan's the other day.
	AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_12"); //Then I was told to position myself here and wait for a message.
	AI_Output(hero, self, "Info_Mod_Rangar_DragoHelp_15_13"); //Cyrco wants me to tell you to support Dragomir.
	AI_Output(hero, self, "Info_Mod_Rangar_DragoHelp_15_14"); //He will be attacked and may not survive without your help.
	AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_15"); //I knew something like this would happen. I'll be on my way right away. See you later.
	AI_Output(hero, self, "Info_Mod_Rangar_DragoHelp_15_16"); //Wait. Wait. I have some more Cyrco potions for Dragomir here. Take her with you.
	AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_17"); //Ah, very good. That'll definitely help him. How many do you have?
	AI_Output(hero, self, "Info_Mod_Rangar_DragoHelp_15_18"); //Here you have ten healing drinks and ten mana drinks.

	Npc_RemoveInvItems	(hero, ItPo_Health_01, 10);
	Npc_RemoveInvItems	(hero, ItPo_Mana_01, 10);

	B_ShowGivenThings	("20 potions given");

	AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_19"); //Thanks. That's a hell of a lot.
	AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_20"); //He'll need them. Here's some wolf teeth, maybe you could use them.

	B_GiveInvItems	(self, hero, ItAt_Teeth, 4);

	AI_Output(hero, self, "Info_Mod_Rangar_DragoHelp_15_21"); //So, I have to go back.

	if (!Npc_KnowsInfo(hero, Info_Mod_Novize_JG_Pass_Hi))
	{
		AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_22"); //Then you might want to take care of that figure on the way over here.
		AI_Output(hero, self, "Info_Mod_Rangar_DragoHelp_15_23"); //What kind of figure was that?
		AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_24"); //He looked like a novice, but he looked rather strange. Has gone over the pass into the Minental, he can not have come very far yet.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Rangar_DragoHelp_07_25"); //Good luck, buddy.
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATNANDOR");

	B_SetTopicStatus	(TOPIC_MOD_JG_DRAGOMIRHILFE, LOG_SUCCESS);
	
	B_GivePlayerXP(100);
};

INSTANCE Info_Mod_Rangar_Lernen_Armbrust (C_INFO)
{
	npc		= Mod_747_MIL_Rangar_NW;
	nr		= 1;
	condition	= Info_Mod_Rangar_Lernen_Armbrust_Condition;
	information	= Info_Mod_Rangar_Lernen_Armbrust_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me crossbow shooting.";
};

FUNC INT Info_Mod_Rangar_Lernen_Armbrust_Condition()
{
	if (hero.hitchance[NPC_TALENT_CrossBow] < 50)
	&& (Mod_Schwierigkeit != 4)
	&& (Mod_Miliz_Armbrust)
	&& ((Mod_Den_Problem == 0)
	|| (Mod_DenVerpfiffen == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rangar_Lernen_Armbrust_Info()
{
	AI_Output(hero, self, "Info_Mod_Rangar_Lernen_Armbrust_15_00"); //Teach me crossbow shooting.

	Info_ClearChoices	(Info_Mod_Rangar_Lernen_Armbrust);
	
	Info_AddChoice	(Info_Mod_Rangar_Lernen_Armbrust, "Back off.", Info_Mod_Rangar_Lernen_Armbrust_BACK);
	Info_AddChoice	(Info_Mod_Rangar_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_CrossBow)), Info_Mod_Rangar_Lernen_Armbrust_5);
	Info_AddChoice	(Info_Mod_Rangar_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(hero, NPC_TALENT_CrossBow, 1)), Info_Mod_Rangar_Lernen_Armbrust_1);
};

FUNC VOID Info_Mod_Rangar_Lernen_Armbrust_BACK()
{
	Info_ClearChoices	(Info_Mod_Rangar_Lernen_Armbrust);
};

FUNC VOID Info_Mod_Rangar_Lernen_Armbrust_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_CrossBow, 5, 60);

	Info_ClearChoices	(Info_Mod_Rangar_Lernen_Armbrust);

	Info_AddChoice	(Info_Mod_Rangar_Lernen_Armbrust, "Back off.", Info_Mod_Rangar_Lernen_Armbrust_BACK);
	Info_AddChoice	(Info_Mod_Rangar_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_CrossBow)), Info_Mod_Rangar_Lernen_Armbrust_5);
	Info_AddChoice	(Info_Mod_Rangar_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(hero, NPC_TALENT_CrossBow, 1)), Info_Mod_Rangar_Lernen_Armbrust_1);
};

FUNC VOID Info_Mod_Rangar_Lernen_Armbrust_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_CrossBow, 1, 60);

	Info_ClearChoices	(Info_Mod_Rangar_Lernen_Armbrust);

	Info_AddChoice	(Info_Mod_Rangar_Lernen_Armbrust, "Back off.", Info_Mod_Rangar_Lernen_Armbrust_BACK);
	Info_AddChoice	(Info_Mod_Rangar_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_CrossBow)), Info_Mod_Rangar_Lernen_Armbrust_5);
	Info_AddChoice	(Info_Mod_Rangar_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(hero, NPC_TALENT_CrossBow, 1)), Info_Mod_Rangar_Lernen_Armbrust_1);
};

INSTANCE Info_Mod_Rangar_Pickpocket (C_INFO)
{
	npc		= Mod_747_MIL_Rangar_NW;
	nr		= 1;
	condition	= Info_Mod_Rangar_Pickpocket_Condition;
	information	= Info_Mod_Rangar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Rangar_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 28);
};

FUNC VOID Info_Mod_Rangar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Rangar_Pickpocket);

	Info_AddChoice	(Info_Mod_Rangar_Pickpocket, DIALOG_BACK, Info_Mod_Rangar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Rangar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Rangar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Rangar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Rangar_Pickpocket);
};

FUNC VOID Info_Mod_Rangar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Rangar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Rangar_Pickpocket);

		Info_AddChoice	(Info_Mod_Rangar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Rangar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Rangar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Rangar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Rangar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Rangar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Rangar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Rangar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Rangar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Rangar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Rangar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Rangar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Rangar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Rangar_EXIT (C_INFO)
{
	npc		= Mod_747_MIL_Rangar_NW;
	nr		= 1;
	condition	= Info_Mod_Rangar_EXIT_Condition;
	information	= Info_Mod_Rangar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Rangar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rangar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
