INSTANCE Info_Mod_Monty_Hi (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_Hi_Condition;
	information	= Info_Mod_Monty_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze, ze chcesz pokonac spiwora.";
};

FUNC INT Info_Mod_Monty_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Monty_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Monty_Hi_15_00"); //Slysze, ze chcesz pokonac spiwora.
	AI_Output(self, hero, "Info_Mod_Monty_Hi_31_01"); //To prawda! Stojac z innymi, po prostu mówie im, jak to zrobilem.
};

INSTANCE Info_Mod_Monty_KeinInteresse (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_KeinInteresse_Condition;
	information	= Info_Mod_Monty_KeinInteresse_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie interesuje mnie ta historia.";
};

FUNC INT Info_Mod_Monty_KeinInteresse_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Monty_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Monty_KeinInteresse_Info()
{
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_15_00"); //Nie interesuje mnie ta historia.
	AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_31_01"); //Nie? Co zatem?
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_15_02"); //To ja wypedzilem sypialera z powrotem do jego wymiaru.
	AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_31_03"); //(smieje sie glosno) Ah, zartownica! Oko, przyjacielu, to jest moje terytorium, to wszystko ma racje?

	Log_CreateTopic	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_MISSION);

	Info_ClearChoices	(Info_Mod_Monty_KeinInteresse);

	Info_AddChoice	(Info_Mod_Monty_KeinInteresse, "Albo znikniesz, albo bedzie to krzywda.", Info_Mod_Monty_KeinInteresse_B);
	Info_AddChoice	(Info_Mod_Monty_KeinInteresse, "Dobrze, rób to, co chcesz.", Info_Mod_Monty_KeinInteresse_A);
};

FUNC VOID Info_Mod_Monty_KeinInteresse_B()
{
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_B_15_00"); //Albo znikniesz, albo bedzie to krzywda.
	AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_B_31_01"); //Pozostan spokojny! Mam troche krótka gotówke, co moge zrobic?

	Info_ClearChoices	(Info_Mod_Monty_KeinInteresse);

	if (Mod_Verhandlungsgeschick > 0)
	{
		Info_AddChoice	(Info_Mod_Monty_KeinInteresse, "Dajesz mi 50 zlota, a my bedziemy to nazywac nawet.", Info_Mod_Monty_KeinInteresse_E);
	};

	Info_AddChoice	(Info_Mod_Monty_KeinInteresse, "Nie chcesz go zobaczyc bez bólu.", Info_Mod_Monty_KeinInteresse_D);
	Info_AddChoice	(Info_Mod_Monty_KeinInteresse, "A zatem wszystko w porzadku. Przejdz do przodu.", Info_Mod_Monty_KeinInteresse_C);
};

FUNC VOID Info_Mod_Monty_KeinInteresse_A()
{
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_A_15_00"); //Dobrze, rób to, co chcesz.
	AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_A_31_01"); //Dziekujemy za wglad. Shit, potrzebuje pieniedzy.

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, "Pozwóle Monty' emu opowiedziec jego historie. Bede z tego rezygnowal.");
	B_SetTopicStatus	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_SUCCESS);

	Mod_MontyFake = 1;

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Monty_KeinInteresse);
};

FUNC VOID Info_Mod_Monty_KeinInteresse_E()
{
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_E_15_00"); //Dajesz mi 50 zlota, a my bedziemy to nazywac nawet.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_E_31_01"); //To dobry kompromis!

		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		B_RaiseHandelsgeschick (2);

		B_GivePlayerXP	(50);

		B_LogEntry	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, "Pozwóle Monty' emu opowiedziec jego historie. Bede z tego rezygnowal.");
		B_SetTopicStatus	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_SUCCESS);

		Mod_MontyFake = 1;

		CurrentNQ += 1;

		Info_ClearChoices	(Info_Mod_Monty_KeinInteresse);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_E_31_02"); //Nie mam tak wiele.
	};
};

FUNC VOID Info_Mod_Monty_KeinInteresse_D()
{
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_D_15_00"); //Nie chcesz go zobaczyc bez bólu.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Monty_KeinInteresse);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	Mod_MontyFake = 2;
};

FUNC VOID Info_Mod_Monty_KeinInteresse_C()
{
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_C_15_00"); //A zatem wszystko w porzadku. Przejdz do przodu.
	AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_C_31_01"); //Dziekujemy za wglad. Shit, potrzebuje pieniedzy.

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, "Pozwóle Monty' emu opowiedziec jego historie. Bede z tego rezygnowal.");
	B_SetTopicStatus	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_SUCCESS);

	Mod_MontyFake = 1;

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Monty_KeinInteresse);
};

INSTANCE Info_Mod_Monty_Pruegel (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_Pruegel_Condition;
	information	= Info_Mod_Monty_Pruegel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Monty_Pruegel_Condition()
{
	if (Mod_MontyFake == 2)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	{
		return 1;
	}
	else if (Mod_MontyFake == 2)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
	{
		B_SetTopicStatus	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_FAILED);
	};
};

FUNC VOID Info_Mod_Monty_Pruegel_Info()
{
	AI_Output(self, hero, "Info_Mod_Monty_Pruegel_31_00"); //Nie mówie nic wiecej!

	Mod_MontyFake = 3;

	CurrentNQ += 1;

	B_LogEntry	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, "Nie moglem pozwolic Monty' emu odejsc bezkarnie. To go nauczy.");
	B_SetTopicStatus	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_SUCCESS);

	// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1049_VLK_Buerger_NW, "START");
	B_StartOtherRoutine	(Mod_1059_VLK_Buerger_NW, "START");
	B_StartOtherRoutine	(Mod_1055_VLK_Buerger_NW, "START");
	B_StartOtherRoutine	(Mod_1065_VLK_Buergerin_NW, "START");
	B_StartOtherRoutine	(Mod_1073_VLK_Buergerin_NW, "START");
	B_StartOtherRoutine	(Mod_1072_VLK_Buergerin_NW, "START");
	B_StartOtherRoutine	(Mod_1044_VLK_Buerger_NW, "START");
};

INSTANCE Info_Mod_Monty_WieGehts (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_WieGehts_Condition;
	information	= Info_Mod_Monty_WieGehts_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to sie dzieje?";
};

FUNC INT Info_Mod_Monty_WieGehts_Condition()
{
	if (Kapitel >= 2)
	&& ((Mod_MontyFake == 1)
	|| (Mod_MontyFake == 3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Monty_WieGehts_Info()
{
	AI_Output(hero, self, "Info_Mod_Monty_WieGehts_15_00"); //Jak to sie dzieje?

	if (Mod_MontyFake == 1)
	{
		AI_Output(self, hero, "Info_Mod_Monty_WieGehts_31_01"); //Ludzie placa za dobra historie. Czasem powinienes spróbowac.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Monty_WieGehts_31_02"); //Zamknac usta. Glad, moge dostac kes.

		Info_ClearChoices	(Info_Mod_Monty_WieGehts);

		Info_AddChoice	(Info_Mod_Monty_WieGehts, "Nie bogacijcie sie wtedy kosztem innych.", Info_Mod_Monty_WieGehts_B);

		if (Npc_HasItems(hero, ItFo_Bread) >= 1)
		{
			Info_AddChoice	(Info_Mod_Monty_WieGehts, "Oto troche chleba.", Info_Mod_Monty_WieGehts_A);
		};
	};
};

FUNC VOID Info_Mod_Monty_WieGehts_B()
{
	AI_Output(hero, self, "Info_Mod_Monty_WieGehts_B_15_00"); //Nie bogacijcie sie wtedy kosztem innych.

	Info_ClearChoices	(Info_Mod_Monty_WieGehts);
};

FUNC VOID Info_Mod_Monty_WieGehts_A()
{
	AI_Output(hero, self, "Info_Mod_Monty_WieGehts_A_15_00"); //Oto troche chleba.

	B_GiveInvItems	(hero, self, ItFo_Bread, 1);

	AI_Output(self, hero, "Info_Mod_Monty_WieGehts_A_31_01"); //Dzieki. To opózni moja smierc o kilka dni.

	B_GivePlayerXP	(30);

	Info_ClearChoices	(Info_Mod_Monty_WieGehts);
};

INSTANCE Info_Mod_Monty_Flugblaetter (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_Flugblaetter_Condition;
	information	= Info_Mod_Monty_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Monty_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Monty_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Monty_Flugblaetter_31_01"); //Dziekuje, dziekuje. Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Monty_Flugblaetter_31_02"); //Ah tak. Moze zatrzymam sie przy Matteo' s.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Monty_Pickpocket (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_Pickpocket_Condition;
	information	= Info_Mod_Monty_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Monty_Pickpocket_Condition()
{
	C_Beklauen	(34, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Monty_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Monty_Pickpocket);

	Info_AddChoice	(Info_Mod_Monty_Pickpocket, DIALOG_BACK, Info_Mod_Monty_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Monty_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Monty_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Monty_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Monty_Pickpocket);
};

FUNC VOID Info_Mod_Monty_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Monty_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Monty_Pickpocket);

		Info_AddChoice	(Info_Mod_Monty_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Monty_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Monty_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Monty_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Monty_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Monty_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Monty_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Monty_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Monty_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Monty_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Monty_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Monty_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Monty_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Monty_EXIT (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_EXIT_Condition;
	information	= Info_Mod_Monty_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Monty_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Monty_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
