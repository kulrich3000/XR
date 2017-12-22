INSTANCE Info_Mod_Jana_BerndTot (C_INFO)
{
	npc		= Mod_1064_VLK_Jana_NW;
	nr		= 1;
	condition	= Info_Mod_Jana_BerndTot_Condition;
	information	= Info_Mod_Jana_BerndTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jana_BerndTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Bernd))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jana_BerndTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_19_00"); //AAAAAAAAAAAAAAAAAAHHHHHHH!!!!
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_01"); //Calm down, it's all right! I'm militia.
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_19_02"); //That's what I thought about him, too!
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_03"); //What are you talking about?
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_19_04"); //The guy who slaughtered Bernd!
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_05"); //That was a militia?
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_19_06"); //Yeah, aren't you actually listening to me for asking again? He was a dark guy wearing a militia uniform!
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_07"); //He just walked in and struck Bernd down?
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_19_08"); //Yeah, you think I stood in his way? I was busy fending off Bernd myself and the guy looked a lot more dangerous.
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_09"); //Geht’s auch etwas genauer als "Dark type with militia uniform"?
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_19_10"); //No, that's all I know. I almost had a heart attack.
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_11"); //All right... I'll let the captain know. Do you remember anything else?
	AI_Output(self, hero, "Info_Mod_Jana_BerndTot_19_12"); //Jetzt wo du’s sagst ... er hat irgendein komisches Zeug gelabert. Irgendwas von wegen "A good militia always protects the weak.", das hat er immer wieder wiederholt.
	AI_Output(hero, self, "Info_Mod_Jana_BerndTot_15_13"); //Hmm... Thanks for the information.

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Bernd was murdered by a dark figure in a militia uniform. Jana could only remember one sentence that the perpetrator constantly repeated:' A good militia always protects the weaker ones. '");
};

INSTANCE Info_Mod_Jana_Shakir (C_INFO)
{
	npc		= Mod_1064_VLK_Jana_NW;
	nr		= 1;
	condition	= Info_Mod_Jana_Shakir_Condition;
	information	= Info_Mod_Jana_Shakir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Good afternoon, beautiful woman. What are you waiting for?";
};

FUNC INT Info_Mod_Jana_Shakir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edda_Shakir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jana_Shakir_Info()
{
	AI_Output(hero, self, "Info_Mod_Jana_Shakir_15_00"); //Good afternoon, beautiful woman. What are you waiting for?
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_19_01"); //Not to you, I'm sure. And what do you care?
	AI_Output(hero, self, "Info_Mod_Jana_Shakir_15_02"); //Well, I'm looking for a lady for.... sort of... for relaxation....
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_19_03"); //Get out of here, you rascal, and do it yourself!
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_19_04"); //I'm an honest woman waiting for her husband.
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_19_05"); //When he comes back, you'll be in trouble!
	AI_Output(hero, self, "Info_Mod_Jana_Shakir_15_06"); //Please excuse me a lot. I was just thinking....
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_19_07"); //It's obviously not your strong point.
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_19_08"); //Try up in the lower town. Thorben's niece, the Gritta, always needs money. Debts everywhere.
	AI_Output(self, hero, "Info_Mod_Jana_Shakir_19_09"); //But don't tell me I said that!
	AI_Output(hero, self, "Info_Mod_Jana_Shakir_15_10"); //Sorry again.

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Jana was pissed off. She was an honest woman. Which cannot be said of Gritta, Thorben's niece. Let's see now.");
};

INSTANCE Info_Mod_Jana_Beutel (C_INFO)
{
	npc		= Mod_1064_VLK_Jana_NW;
	nr		= 1;
	condition	= Info_Mod_Jana_Beutel_Condition;
	information	= Info_Mod_Jana_Beutel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jana_Beutel_Condition()
{
	if (Mod_Jana_Beutel == 1)
	&& (Wld_IsTime(06,00,19,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jana_Beutel_Info()
{
	AI_Output(self, hero, "Info_Mod_Jana_Beutel_19_00"); //Young man, stop for a moment.

	Info_ClearChoices	(Info_Mod_Jana_Beutel);

	Info_AddChoice	(Info_Mod_Jana_Beutel, "No time.", Info_Mod_Jana_Beutel_B);
	Info_AddChoice	(Info_Mod_Jana_Beutel, "What's up?", Info_Mod_Jana_Beutel_A);
};

FUNC VOID Info_Mod_Jana_Beutel_B()
{
	AI_Output(hero, self, "Info_Mod_Jana_Beutel_B_15_00"); //No time.

	Info_ClearChoices	(Info_Mod_Jana_Beutel);
};

FUNC VOID Info_Mod_Jana_Beutel_A()
{
	AI_Output(hero, self, "Info_Mod_Jana_Beutel_A_15_00"); //What's up?
	AI_Output(self, hero, "Info_Mod_Jana_Beutel_A_19_01"); //I was just shopping and now my shopping bag is so heavy that I can't carry it anymore.
	AI_Output(self, hero, "Info_Mod_Jana_Beutel_A_19_02"); //Would you be so kind as to bring him home to me?

	Info_ClearChoices	(Info_Mod_Jana_Beutel);

	Info_AddChoice	(Info_Mod_Jana_Beutel, "I'm not a burro!", Info_Mod_Jana_Beutel_D);
	Info_AddChoice	(Info_Mod_Jana_Beutel, "No problem. Where do you live?", Info_Mod_Jana_Beutel_C);
};

FUNC VOID Info_Mod_Jana_Beutel_D()
{
	AI_Output(hero, self, "Info_Mod_Jana_Beutel_D_15_00"); //I'm not a burro!

	Info_ClearChoices	(Info_Mod_Jana_Beutel);
};

FUNC VOID Info_Mod_Jana_Beutel_C()
{
	AI_Output(hero, self, "Info_Mod_Jana_Beutel_C_15_00"); //No problem. Where do you live?
	AI_Output(self, hero, "Info_Mod_Jana_Beutel_C_19_01"); //In the harbour district, in the house between Fellan and the warehouse.
	AI_Output(self, hero, "Info_Mod_Jana_Beutel_C_19_02"); //Just put the bag down somewhere.

	B_GiveInvItems	(self, hero, ItMi_JanaBeutel, 1);

	Mod_Jana_Beutel = 2;

	Log_CreateTopic	(TOPIC_MOD_JANA_BEUTEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JANA_BEUTEL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JANA_BEUTEL, "Man, this thing is really fucking heavy. I should see that I put it in the hut between Fellan and the warehouse as soon as possible.");

	AI_SetWalkMode	(hero, NPC_WALK);

	Info_ClearChoices	(Info_Mod_Jana_Beutel);

};

INSTANCE Info_Mod_Jana_Beutel2 (C_INFO)
{
	npc		= Mod_1064_VLK_Jana_NW;
	nr		= 1;
	condition	= Info_Mod_Jana_Beutel2_Condition;
	information	= Info_Mod_Jana_Beutel2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The shopping bag is now in your house.";
};

FUNC INT Info_Mod_Jana_Beutel2_Condition()
{
	if (Mod_Jana_Beutel == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jana_Beutel2_Info()
{
	AI_Output(hero, self, "Info_Mod_Jana_Beutel2_15_00"); //The shopping bag is now in your house.
	AI_Output(self, hero, "Info_Mod_Jana_Beutel2_19_01"); //Thank you, young man. Take these coins as a thank you.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_JANA_BEUTEL, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Jana_Pickpocket (C_INFO)
{
	npc		= Mod_1064_VLK_Jana_NW;
	nr		= 1;
	condition	= Info_Mod_Jana_Pickpocket_Condition;
	information	= Info_Mod_Jana_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Jana_Pickpocket_Condition()
{
	C_Beklauen	(53, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Jana_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jana_Pickpocket);

	Info_AddChoice	(Info_Mod_Jana_Pickpocket, DIALOG_BACK, Info_Mod_Jana_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jana_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jana_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jana_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jana_Pickpocket);
};

FUNC VOID Info_Mod_Jana_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jana_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jana_Pickpocket);

		Info_AddChoice	(Info_Mod_Jana_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jana_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jana_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jana_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jana_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jana_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jana_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jana_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jana_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jana_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jana_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jana_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jana_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jana_EXIT (C_INFO)
{
	npc		= Mod_1064_VLK_Jana_NW;
	nr		= 1;
	condition	= Info_Mod_Jana_EXIT_Condition;
	information	= Info_Mod_Jana_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jana_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jana_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
