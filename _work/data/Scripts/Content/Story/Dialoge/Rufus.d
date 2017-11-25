INSTANCE Info_Mod_Rufus_Hi (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_Hi_Condition;
	information	= Info_Mod_Rufus_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rufus_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lefty_RufusWeg))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rufus_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Rufus_Hi_02_00"); //Co, kim jestes, co tu robisz?
	AI_Output(hero, self, "Info_Mod_Rufus_Hi_15_01"); //Pytanie brzmi: co tu robisz i dokad chcesz sie udac?
	AI_Output(self, hero, "Info_Mod_Rufus_Hi_02_02"); //Um.... Tak, to prawda, ucieklem z pola ryzowego. Chcialem dotrzec do konca Doliny Kopalni, ale jest tak wiele zwierzat.

	self.flags = 0;

	Info_ClearChoices	(Info_Mod_Rufus_Hi);

	Info_AddChoice	(Info_Mod_Rufus_Hi, "Moge Ci pom�c wydostac sie z Minentala.", Info_Mod_Rufus_Hi_B);
	Info_AddChoice	(Info_Mod_Rufus_Hi, "Dlaczego nie wr�cimy do pola ryzowego?", Info_Mod_Rufus_Hi_A);
};

FUNC VOID Info_Mod_Rufus_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Rufus_Hi_B_15_00"); //Moge Ci pom�c wydostac sie z Minentala.
	AI_Output(self, hero, "Info_Mod_Rufus_Hi_B_02_01"); //Uczciwie? Nie wiedzialabym, jak to zrobic. Dobrze, ja p�jde za Toba.

	Info_ClearChoices	(Info_Mod_Rufus_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PASS");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_SLD_Rufus = 1;
};

FUNC VOID Info_Mod_Rufus_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Rufus_Hi_A_15_00"); //Dlaczego nie wr�cimy do pola ryzowego?
	AI_Output(self, hero, "Info_Mod_Rufus_Hi_A_02_01"); //Co? W zadnych okolicznosciach. Nie mozesz mnie tam cofnac.

	Info_ClearChoices	(Info_Mod_Rufus_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	Mod_SLD_Rufus = 2;
};

INSTANCE Info_Mod_Rufus_WrongGuide (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_WrongGuide_Condition;
	information	= Info_Mod_Rufus_WrongGuide_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rufus_WrongGuide_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rufus_Hi))
	&& (Mod_SLD_Rufus == 1)
	&& (Npc_GetDistToWP(hero, "OW_PATH_07_21_GUARD_MIDDLE") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rufus_WrongGuide_Info()
{
	AI_Output(self, hero, "Info_Mod_Rufus_WrongGuide_02_00"); //Hej, czekaj, az do nowego obozu.

	Info_ClearChoices	(Info_Mod_Rufus_WrongGuide);

	Info_AddChoice	(Info_Mod_Rufus_WrongGuide, "Wracamy do pola ryzowego.", Info_Mod_Rufus_WrongGuide_B);
	Info_AddChoice	(Info_Mod_Rufus_WrongGuide, "Prosze mi wybaczyc, na odwr�t.", Info_Mod_Rufus_WrongGuide_A);
};

FUNC VOID Info_Mod_Rufus_WrongGuide_B()
{
	AI_Output(hero, self, "Info_Mod_Rufus_WrongGuide_B_15_00"); //Wracamy do pola ryzowego.
	
	Info_ClearChoices	(Info_Mod_Rufus_WrongGuide);

	AI_StopProcessInfos	(self);

	self.aivar[AIV_Partymember] = FALSE;

	B_Attack	(self, hero, AR_None, 0);

	Mod_SLD_Rufus = 2;
};

FUNC VOID Info_Mod_Rufus_WrongGuide_A()
{
	AI_Output(hero, self, "Info_Mod_Rufus_WrongGuide_A_15_00"); //Prosze mi wybaczyc, na odwr�t.
	
	Info_ClearChoices	(Info_Mod_Rufus_WrongGuide);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Rufus_WrongGuide02 (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_WrongGuide02_Condition;
	information	= Info_Mod_Rufus_WrongGuide02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rufus_WrongGuide02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rufus_WrongGuide))
	&& (Mod_SLD_Rufus == 1)
	&& (Npc_GetDistToWP(hero, "OW_PATH_07_21_GUARD_MIDDLE") < 800)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rufus_WrongGuide02_Info()
{
	AI_Output(self, hero, "Info_Mod_Rufus_WrongGuide02_02_00"); //Zaczeliscie mnie oszukiwac. C�z, poczekaj!

	AI_StopProcessInfos	(self);

	self.aivar[AIV_Partymember] = FALSE;

	B_Attack	(self, hero, AR_None, 0);

	Mod_SLD_Rufus = 2;
};

INSTANCE Info_Mod_Rufus_Umgehauen (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_Umgehauen_Condition;
	information	= Info_Mod_Rufus_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rufus_Umgehauen_Condition()
{
	if (Mod_SLD_Rufus == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rufus_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Rufus_Umgehauen_02_00"); //Damn, moje kosci.....
			AI_Output(hero, self, "Info_Mod_Rufus_Umgehauen_15_01"); //No c�z, co zrobic na polu ryzowym?
			AI_Output(self, hero, "Info_Mod_Rufus_Umgehauen_02_02"); //Pieklo, tak, wracam.

			Mod_SLD_Rufus = 3;

			B_StartOtherRoutine	(self, "START");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Rufus_Umgehauen_02_03"); //No c�z, to bylo nic.

			B_StartOtherRoutine	(self, "FLUCHT");
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Rufus_RightGuide (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_RightGuide_Condition;
	information	= Info_Mod_Rufus_RightGuide_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rufus_RightGuide_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rufus_Hi))
	&& (Mod_SLD_Rufus == 1)
	&& (Npc_GetDistToWP(hero, "OW_PATH_1_16_8") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rufus_RightGuide_Info()
{
	AI_Output(self, hero, "Info_Mod_Rufus_RightGuide_02_00"); //Dziekuje bardzo. Bez Ciebie nie m�glbym tego zrobic. Niewiele moge Ci dac.... ale tutaj.

	B_GiveInvItems	(self, hero, ItRi_WaermeRing, 1);

	AI_Output(self, hero, "Info_Mod_Rufus_RightGuide_02_01"); //Znalezilem ten pierscionek w kolonii w jeziorze przed czasem. To bylo tak, jakby zawsze dawal mi cieplo i pewnosc siebie w zimne dni. Teraz nalezy zachowac ostroznosc.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	self.aivar[AIV_Partymember] = FALSE;

	Mod_SLD_Rufus = 4;

	B_SetTopicStatus	(TOPIC_MOD_SLD_RUFUS, LOG_FAILED);

	B_GivePlayerXP	(400);
};

INSTANCE Info_Mod_Rufus_Heiltrank (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_Heiltrank_Condition;
	information	= Info_Mod_Rufus_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(goraczka lecznicza)";
};

FUNC INT Info_Mod_Rufus_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	Info_AddChoice	(Info_Mod_Rufus_Heiltrank, DIALOG_BACK, Info_Mod_Rufus_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Istota uzdrawiania", Info_Mod_Rufus_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Eliksir uzdrawiania", Info_Mod_Rufus_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_Rufus_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Istota uzdrawiania", Info_Mod_Rufus_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Nap�j lekkiego leczenia", Info_Mod_Rufus_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_Rufus_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Napoje szybko lecznicze", Info_Mod_Rufus_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Rufus_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Rufus_Pickpocket (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_Pickpocket_Condition;
	information	= Info_Mod_Rufus_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Rufus_Pickpocket_Condition()
{
	C_Beklauen	(25, ItPl_Riceplant, 3);
};

FUNC VOID Info_Mod_Rufus_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);

	Info_AddChoice	(Info_Mod_Rufus_Pickpocket, DIALOG_BACK, Info_Mod_Rufus_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Rufus_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Rufus_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Rufus_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);
};

FUNC VOID Info_Mod_Rufus_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);

		Info_AddChoice	(Info_Mod_Rufus_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Rufus_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Rufus_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Rufus_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Rufus_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Rufus_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Rufus_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Rufus_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Rufus_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Rufus_EXIT (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_EXIT_Condition;
	information	= Info_Mod_Rufus_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Rufus_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rufus_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
