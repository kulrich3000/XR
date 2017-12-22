INSTANCE Info_Mod_Bramrad_Hi (C_INFO)
{
	npc		= Mod_1019_KGD_Bamrad_MT;
	nr		= 1;
	condition	= Info_Mod_Bramrad_Hi_Condition;
	information	= Info_Mod_Bramrad_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Bramrad_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bramrad_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bramrad_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Bramrad_Hi_07_01"); //Hi, what's up?
	AI_Output(hero, self, "Info_Mod_Bramrad_Hi_15_02"); //You're a hunter. Isn't the Minental a dangerous place to hunt?
	AI_Output(self, hero, "Info_Mod_Bramrad_Hi_07_03"); //If you know where to hunt, the Minental is no more dangerous than the rest of Khorinis.
	AI_Output(self, hero, "Info_Mod_Bramrad_Hi_07_04"); //Besides, we're lucky. On the way to the Minental there are enough scavengers, so that we rarely have to go deeper into the valley.
	AI_Output(hero, self, "Info_Mod_Bramrad_Hi_15_05"); //So do you almost all eat cavengers?
	AI_Output(self, hero, "Info_Mod_Bramrad_Hi_07_06"); //They are easy to kill, but now and then we also find a few molerats at the pass, which are even easier to kill because they are so slow so that they are usually dead before they reach you.
	AI_Output(self, hero, "Info_Mod_Bramrad_Hi_07_07"); //Well, if Mother Nature disadvantaged an animal, it's them!
};

INSTANCE Info_Mod_Bramrad_Nahrungsversorgung (C_INFO)
{
	npc		= Mod_1019_KGD_Bamrad_MT;
	nr		= 1;
	condition	= Info_Mod_Bramrad_Nahrungsversorgung_Condition;
	information	= Info_Mod_Bramrad_Nahrungsversorgung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ole told me to help you with your job. ";
};

FUNC INT Info_Mod_Bramrad_Nahrungsversorgung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ole_Vorbereitungen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bramrad_Nahrungsversorgung_Info()
{
	AI_Output(hero, self, "Info_Mod_Bramrad_Nahrungsversorgung_15_00"); //Ole hat mir gesagt, dass ich dir bei deiner Aufgabe helfen soll. 
	AI_Output(self, hero, "Info_Mod_Bramrad_Nahrungsversorgung_07_01"); //Gut, ich soll die Nahrungsversorgen der Mine sichern. Allerdings muss ich noch eine Menge Fleisch auftreiben und eine Koch bräuchten wir auch noch.
	AI_Output(self, hero, "Info_Mod_Bramrad_Nahrungsversorgung_07_02"); //Ich habe gehört im Hafenviertel gibt es einige Leute, die Kochen können.
	AI_Output(self, hero, "Info_Mod_Bramrad_Nahrungsversorgung_07_03"); //Vielleicht kannst du ja dort jemanden von unserem Vorhaben überzeugen.
	AI_Output(self, hero, "Info_Mod_Bramrad_Nahrungsversorgung_07_04"); //Und wegen dem Fleisch: Ich würde sagen 25 Keulen sollten reichen.
	AI_Output(hero, self, "Info_Mod_Bramrad_Nahrungsversorgung_15_05"); //Dann werde ich mal sehen, wo ich deinen Koch und das Fleisch auftreibe.

	Log_CreateTopic	(TOPIC_MOD_KG_NAHRUNGSVERSORGUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KG_NAHRUNGSVERSORGUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KG_NAHRUNGSVERSORGUNG, "Bramrad is assigned for the food supply. He needs another 25 clubs. Besides, I'm supposed to organize a cook for the camp. Bramrad thinks I should have a look at the harbour of Khorinis...");
};

INSTANCE Info_Mod_Bramrad_Nahrungsversorgung2 (C_INFO)
{
	npc		= Mod_1019_KGD_Bamrad_MT;
	nr		= 1;
	condition	= Info_Mod_Bramrad_Nahrungsversorgung2_Condition;
	information	= Info_Mod_Bramrad_Nahrungsversorgung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here, I found the meat I needed.";
};

FUNC INT Info_Mod_Bramrad_Nahrungsversorgung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bramrad_Nahrungsversorgung))
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 25)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bramrad_Nahrungsversorgung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Bramrad_Nahrungsversorgung2_15_00"); //Here, I found the meat I needed.

	B_GiveInvItems	(hero, self, ItFo_MuttonRaw, 25);

	AI_Output(self, hero, "Info_Mod_Bramrad_Nahrungsversorgung2_07_01"); //Thank you, now I have one less worry.
	
	B_LogEntry	(TOPIC_MOD_KG_NAHRUNGSVERSORGUNG, "I gave Bramrad the meat.");

	if (Npc_KnowsInfo(hero, Info_Mod_Bramrad_Nahrungsversorgung3))
	{
		B_SetTopicStatus	(TOPIC_MOD_KG_NAHRUNGSVERSORGUNG, LOG_SUCCESS);

		AI_Output(hero, self, "Info_Mod_Bramrad_Nahrungsversorgung4_15_02"); //I've done everything you wanted.
		AI_Output(self, hero, "Info_Mod_Bramrad_Nahrungsversorgung4_07_03"); //Finally somebody's doing something in the warehouse again. Here, take this as compensation for their efforts.

		CreateInvItems	(hero, ItRw_Bolt, 25);
		CreateInvItems	(hero, ItRw_Arrow, 25);

		B_ShowGivenThings	("25 bolts and arrows preserved");

		B_LogEntry_NS (TOPIC_MOD_KG_VORBEREITUNGEN, "Bramrad is helped and the supply problems are solved.");
	};

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Bramrad_Nahrungsversorgung3 (C_INFO)
{
	npc		= Mod_1019_KGD_Bamrad_MT;
	nr		= 1;
	condition	= Info_Mod_Bramrad_Nahrungsversorgung3_Condition;
	information	= Info_Mod_Bramrad_Nahrungsversorgung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got you a cook.";
};

FUNC INT Info_Mod_Bramrad_Nahrungsversorgung3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bramrad_Nahrungsversorgung))
	&& (Mod_KG_Glenn == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bramrad_Nahrungsversorgung3_Info()
{
	AI_Output(hero, self, "Info_Mod_Bramrad_Nahrungsversorgung3_15_00"); //I got you a cook. He waits in front of the mine for his mission.
	AI_Output(self, hero, "Info_Mod_Bramrad_Nahrungsversorgung3_07_01"); //Very nice, I hope he knows how to cook.
	
	B_LogEntry	(TOPIC_MOD_KG_NAHRUNGSVERSORGUNG, "I informed Bramrad about Glenn.");

	if (Npc_KnowsInfo(hero, Info_Mod_Bramrad_Nahrungsversorgung2))
	{
		B_SetTopicStatus	(TOPIC_MOD_KG_NAHRUNGSVERSORGUNG, LOG_SUCCESS);

		AI_Output(hero, self, "Info_Mod_Bramrad_Nahrungsversorgung4_15_02"); //I've done everything you wanted.
		AI_Output(self, hero, "Info_Mod_Bramrad_Nahrungsversorgung4_07_03"); //Finally somebody's doing something in the warehouse again. Here, take this as compensation for their efforts.

		CreateInvItems	(hero, ItRw_Bolt, 25);
		CreateInvItems	(hero, ItRw_Arrow, 25);

		B_ShowGivenThings	("25 bolts and arrows preserved");

		B_LogEntry_NS (TOPIC_MOD_KG_VORBEREITUNGEN, "Bramrad is helped and the supply problems are solved.");
	};

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Bramrad_Pickpocket (C_INFO)
{
	npc		= Mod_1019_KGD_Bamrad_MT;
	nr		= 1;
	condition	= Info_Mod_Bramrad_Pickpocket_Condition;
	information	= Info_Mod_Bramrad_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Bramrad_Pickpocket_Condition()
{
	C_Beklauen	(71, ItMi_Gold, 23);
};

FUNC VOID Info_Mod_Bramrad_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bramrad_Pickpocket);

	Info_AddChoice	(Info_Mod_Bramrad_Pickpocket, DIALOG_BACK, Info_Mod_Bramrad_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bramrad_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bramrad_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bramrad_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bramrad_Pickpocket);
};

FUNC VOID Info_Mod_Bramrad_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bramrad_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bramrad_Pickpocket);

		Info_AddChoice	(Info_Mod_Bramrad_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bramrad_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bramrad_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bramrad_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bramrad_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bramrad_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bramrad_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bramrad_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bramrad_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bramrad_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bramrad_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bramrad_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bramrad_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bramrad_EXIT (C_INFO)
{
	npc		= Mod_1019_KGD_Bamrad_MT;
	nr		= 1;
	condition	= Info_Mod_Bramrad_EXIT_Condition;
	information	= Info_Mod_Bramrad_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bramrad_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bramrad_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
