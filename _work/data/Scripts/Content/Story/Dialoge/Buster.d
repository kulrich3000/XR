INSTANCE Info_Mod_Buster_Hi (C_INFO)
{
	npc		= Mod_780_SLD_Buster_MT;
	nr		= 1;
	condition	= Info_Mod_Buster_Hi_Condition;
	information	= Info_Mod_Buster_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Buster_Hi_Condition()
{
	if (Npc_GetTalentSkill (hero, NPC_TALENT_ACROBAT) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Buster_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Buster_Hi_13_00"); //Hej, znowu wygladasz dosc sztywnie, tak jak nie rozciagales konczyn od dluzszego czasu.
	AI_Output(hero, self, "Info_Mod_Buster_Hi_15_01"); //Tak, kilka tygodni pod kamieniami....
	AI_Output(self, hero, "Info_Mod_Buster_Hi_13_02"); //Móglbym Ci pomóc w przywróceniu Twojej zwinnosci.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER, "Buster moze mnie nauczyc, jak sie lepiej poruszac.");
};

INSTANCE Info_Mod_Buster_Lernen (C_INFO)
{
	npc		= Mod_780_SLD_Buster_MT;
	nr		= 1;
	condition	= Info_Mod_Buster_Lernen_Condition;
	information	= Info_Mod_Buster_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Akrobatyka uczenia sie (5 LP)";
};

FUNC INT Info_Mod_Buster_Lernen_Condition()
{
	Info_Mod_Buster_Lernen.description = B_BuildLearnString("Akrobatyka uczenia sie", B_GetLearnCostTalent(hero, NPC_TALENT_ACROBAT, 1));

	if (Npc_KnowsInfo(hero, Info_Mod_Buster_Hi))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_ACROBAT) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Buster_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Buster_Lernen_15_00"); //Naucz mnie akrobatyki.

	if (B_TeachThiefTalent (self, hero, NPC_TALENT_ACROBAT))
	{
		AI_Output(self, hero, "Info_Mod_Buster_Lernen_13_01"); //Jesli kontrolujesz swoje cialo, bedziesz mógl przeskoczyc znacznie dalej.
		AI_Output(self, hero, "Info_Mod_Buster_Lernen_13_02"); //Nauczysz sie sam sie nawijac i ladujesz prawidlowo od jesieni. Pamietaj jednak, ze nie jestes niesmiertelny!
		AI_Output(self, hero, "Info_Mod_Buster_Lernen_13_03"); //Równiez w walce z akrobatyka jest bardzo pomocne. Mozesz szybko zmienic dystans do przeciwnika. Powodzenia!
	};
};

INSTANCE Info_Mod_Buster_Pickpocket (C_INFO)
{
	npc		= Mod_780_SLD_Buster_MT;
	nr		= 1;
	condition	= Info_Mod_Buster_Pickpocket_Condition;
	information	= Info_Mod_Buster_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Buster_Pickpocket_Condition()
{
	C_Beklauen	(64, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Buster_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Buster_Pickpocket);

	Info_AddChoice	(Info_Mod_Buster_Pickpocket, DIALOG_BACK, Info_Mod_Buster_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Buster_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Buster_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Buster_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Buster_Pickpocket);
};

FUNC VOID Info_Mod_Buster_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Buster_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Buster_Pickpocket);

		Info_AddChoice	(Info_Mod_Buster_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Buster_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Buster_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Buster_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Buster_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Buster_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Buster_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Buster_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Buster_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Buster_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Buster_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Buster_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Buster_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Buster_EXIT (C_INFO)
{
	npc		= Mod_780_SLD_Buster_MT;
	nr		= 1;
	condition	= Info_Mod_Buster_EXIT_Condition;
	information	= Info_Mod_Buster_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Buster_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Buster_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
