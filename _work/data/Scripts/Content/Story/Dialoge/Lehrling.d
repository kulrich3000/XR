INSTANCE Info_Mod_Lehrling_Hi (C_INFO)
{
	npc		= Mod_7509_OUT_Lehrling_REL;
	nr		= 1;
	condition	= Info_Mod_Lehrling_Hi_Condition;
	information	= Info_Mod_Lehrling_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lehrling_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lehrling_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_24_00"); //Oko, dziadek!

	Info_ClearChoices	(Info_Mod_Lehrling_Hi);

	Info_AddChoice	(Info_Mod_Lehrling_Hi, "(ignore", Info_Mod_Lehrling_Hi_B);
	Info_AddChoice	(Info_Mod_Lehrling_Hi, "Tak?", Info_Mod_Lehrling_Hi_A);
};

FUNC VOID Info_Mod_Lehrling_Hi_B()
{
	Info_ClearChoices	(Info_Mod_Lehrling_Hi);
};

FUNC VOID Info_Mod_Lehrling_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Hi_A_15_00"); //Tak?
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_A_24_01"); //Masz troche czasu, czy nie? Móglbym zrobic cos dla mnie.

	Info_ClearChoices	(Info_Mod_Lehrling_Hi);

	Info_AddChoice	(Info_Mod_Lehrling_Hi, "Brak zainteresowania.", Info_Mod_Lehrling_Hi_D);
	Info_AddChoice	(Info_Mod_Lehrling_Hi, "Czego chcesz?", Info_Mod_Lehrling_Hi_C);
};

FUNC VOID Info_Mod_Lehrling_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Hi_D_15_00"); //Brak zainteresowania.

	Info_ClearChoices	(Info_Mod_Lehrling_Hi);
};

FUNC VOID Info_Mod_Lehrling_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Hi_C_15_00"); //Czego chcesz?
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_01"); //No cóz, pewnego dnia stracilem mnóstwo dosc waznego papieru.
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_02"); //Wlasnie poszedlem do domu rolnika i polozylem troche dachu nad ich frontowymi drzwiami.
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_03"); //W przerwie obiadowej mam notatki.... w kierunku Kornfeld.
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_04"); //Potem przyszedl rolnik i naprawde mnie przerazal...... i zrzucilem liscie.
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_05"); //To bylo zbyt podekscytowane, wiec zapomnialem jej tam, chyba zrozumialem.
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_06"); //Moze mozesz sprawdzic, czy mozna znalezc strony.
	AI_Output(hero, self, "Info_Mod_Lehrling_Hi_C_15_07"); //A co z odpisem na wydatki?
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_08"); //Jestem pewien, ze warto by bylo kilka kaczek.

	Info_ClearChoices	(Info_Mod_Lehrling_Hi);

	Info_AddChoice	(Info_Mod_Lehrling_Hi, "Brak zainteresowania.", Info_Mod_Lehrling_Hi_D);
	Info_AddChoice	(Info_Mod_Lehrling_Hi, "Rozejrze sie dookola.", Info_Mod_Lehrling_Hi_E);
};

FUNC VOID Info_Mod_Lehrling_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Hi_E_15_00"); //Rozejrze sie dookola.

	Info_ClearChoices	(Info_Mod_Lehrling_Hi);

	Log_CreateTopic	(TOPIC_MOD_KHORATA_DOKUMENTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_DOKUMENTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_DOKUMENTE, "Praktykant rzemieslnika w Khoracie stracil kilka 'waznych' stronic w gospodarstwie Erharda.");

	Mod_REL_Dokumente = 1;
};

INSTANCE Info_Mod_Lehrling_Dokumente (C_INFO)
{
	npc		= Mod_7509_OUT_Lehrling_REL;
	nr		= 1;
	condition	= Info_Mod_Lehrling_Dokumente_Condition;
	information	= Info_Mod_Lehrling_Dokumente_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto Twoje notatki.";
};

FUNC INT Info_Mod_Lehrling_Dokumente_Condition()
{
	if (Mod_REL_Dokumente == 5)
	&& (Npc_HasItems(hero, ItWr_Lehrling01) == 1)
	&& (Npc_HasItems(hero, ItWr_Lehrling02) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lehrling_Dokumente_Info()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Dokumente_15_00"); //Oto Twoje notatki.

	Npc_RemoveInvItems	(hero, ItWr_Lehrling01, 1);
	Npc_RemoveInvItems	(hero, ItWr_Lehrling02, 1);

	B_ShowGivenThings	("Arkusze przekazywane praktykantowi");

	AI_Output(self, hero, "Info_Mod_Lehrling_Dokumente_24_01"); //Dziekujemy! Oto dziesiec monet.

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	AI_Output(hero, self, "Info_Mod_Lehrling_Dokumente_15_02"); //Nieco malo.... Mika poprosil o 200.
	AI_Output(self, hero, "Info_Mod_Lehrling_Dokumente_24_03"); //Co? Nie mam tak wiele!
	AI_Output(hero, self, "Info_Mod_Lehrling_Dokumente_15_04"); //Pomysl o czyms.
	AI_Output(self, hero, "Info_Mod_Lehrling_Dokumente_24_05"); //Czlowiek, próbuje! Dobrze, dostajesz zlote lancuchy, w porzadku?

	B_GiveInvItems	(self, hero, ItMi_GoldNecklace, 2);

	AI_Output(hero, self, "Info_Mod_Lehrling_Dokumente_15_06"); //Nie obchodze sie z nim.

	B_LogEntry	(TOPIC_MOD_KHORATA_DOKUMENTE, "Praktykant ma swój majatek z powrotem.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_DOKUMENTE, LOG_SUCCESS);
	
	B_GivePlayerXP(150);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_27);
};

INSTANCE Info_Mod_Lehrling_Cutter (C_INFO)
{
	npc		= Mod_7509_OUT_Lehrling_REL;
	nr		= 1;
	condition	= Info_Mod_Lehrling_Cutter_Condition;
	information	= Info_Mod_Lehrling_Cutter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moze mi pan przekazac dokumenty?";
};

FUNC INT Info_Mod_Lehrling_Cutter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lehrling_Dokumente))
	&& (Npc_KnowsInfo(hero, Info_Mod_Cutter_Anbau))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lehrling_Cutter_Info()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Cutter_15_00"); //Czy moze mi pan przekazac dokumenty?
	AI_Output(self, hero, "Info_Mod_Lehrling_Cutter_24_01"); //Hu? Przyniesliscie ja do mnie?
	AI_Output(hero, self, "Info_Mod_Lehrling_Cutter_15_02"); //Móglbym ich teraz uzywac osobiscie.
	AI_Output(self, hero, "Info_Mod_Lehrling_Cutter_24_03"); //Mozesz go miec za 50 kaczek.

	Info_ClearChoices	(Info_Mod_Lehrling_Cutter);

	Info_AddChoice	(Info_Mod_Lehrling_Cutter, "Nie jest to dla mnie warte.", Info_Mod_Lehrling_Cutter_C);
	if (Npc_HasItems(hero, ItMi_Gold) >= 50)
	{
		Info_AddChoice	(Info_Mod_Lehrling_Cutter, "Wszystko dobrze, tutaj zloto.", Info_Mod_Lehrling_Cutter_B);
	};
	if (Mod_Verhandlungsgeschick > 0)
	{
		Info_AddChoice	(Info_Mod_Lehrling_Cutter, "Tak bardzo juz wam pomagalem....", Info_Mod_Lehrling_Cutter_A);
	};
};

FUNC VOID Info_Mod_Lehrling_Cutter_C()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Cutter_C_15_00"); //Nie jest to dla mnie warte.

	Info_ClearChoices	(Info_Mod_Lehrling_Cutter);
};

FUNC VOID Info_Mod_Lehrling_Cutter_B()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Cutter_B_15_00"); //Wszystko dobrze, tutaj zloto.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Lehrling_Cutter_B_24_01"); //Wspaniale, dziekuje, czlowiek!

	CreateInvItems	(hero, ItWr_Lehrling01, 1);
	CreateInvItems	(hero, ItWr_Lehrling02, 1);

	B_ShowGivenThings	("Pozyskiwanie arkuszy praktykanta");

	Info_ClearChoices	(Info_Mod_Lehrling_Cutter);
};

FUNC VOID Info_Mod_Lehrling_Cutter_A()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Cutter_A_15_00"); //Tak wiele juz pomoglam.....

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Lehrling_Cutter_A_24_01"); //To prawda. Dobrze, wez to dobrze.

		CreateInvItems	(hero, ItWr_Lehrling01, 1);
		CreateInvItems	(hero, ItWr_Lehrling02, 1);

		B_ShowGivenThings	("Pozyskiwanie arkuszy praktykanta");
	
		B_GivePlayerXP	(10);

		B_RaiseHandelsgeschick (2);

		Info_ClearChoices	(Info_Mod_Lehrling_Cutter);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lehrling_Cutter_A_24_02"); //Yo, dude, ale.... Nie, nie daje im tanszych.

		Info_ClearChoices	(Info_Mod_Lehrling_Cutter);

		Info_AddChoice	(Info_Mod_Lehrling_Cutter, "Nie jest to dla mnie warte.", Info_Mod_Lehrling_Cutter_C);

		if (Npc_HasItems(hero, ItMi_Gold) >= 50)
		{
			Info_AddChoice	(Info_Mod_Lehrling_Cutter, "Wszystko dobrze, tutaj zloto.", Info_Mod_Lehrling_Cutter_B);
		};
	};
};

INSTANCE Info_Mod_Lehrling_Freudenspender (C_INFO)
{
	npc		= Mod_7509_OUT_Lehrling_REL;
	nr		= 1;
	condition	= Info_Mod_Lehrling_Freudenspender_Condition;
	information	= Info_Mod_Lehrling_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Czy uwazasz, ze mozesz tolerowac radosc?";
};                       

FUNC INT Info_Mod_Lehrling_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lehrling_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Freudenspender_15_00"); //Czy uwazasz, ze mozesz tolerowac radosc?
	AI_Output(self, hero, "Info_Mod_Lehrling_Freudenspender_24_01"); //Cóz za pytanie! Dostales cos?
	AI_Output(hero, self, "Info_Mod_Lehrling_Freudenspender_15_02"); //Oczywiscie.
	AI_Output(self, hero, "Info_Mod_Lehrling_Freudenspender_24_03"); //Jestem w waszym dlugu.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Lehrling_Pickpocket (C_INFO)
{
	npc		= Mod_7509_OUT_Lehrling_REL;
	nr		= 1;
	condition	= Info_Mod_Lehrling_Pickpocket_Condition;
	information	= Info_Mod_Lehrling_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Lehrling_Pickpocket_Condition()
{
	C_Beklauen	(51, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Lehrling_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);

	Info_AddChoice	(Info_Mod_Lehrling_Pickpocket, DIALOG_BACK, Info_Mod_Lehrling_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lehrling_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lehrling_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lehrling_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);
};

FUNC VOID Info_Mod_Lehrling_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);

		Info_AddChoice	(Info_Mod_Lehrling_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lehrling_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lehrling_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lehrling_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lehrling_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lehrling_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lehrling_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lehrling_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lehrling_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lehrling_EXIT (C_INFO)
{
	npc		= Mod_7509_OUT_Lehrling_REL;
	nr		= 1;
	condition	= Info_Mod_Lehrling_EXIT_Condition;
	information	= Info_Mod_Lehrling_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lehrling_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lehrling_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
