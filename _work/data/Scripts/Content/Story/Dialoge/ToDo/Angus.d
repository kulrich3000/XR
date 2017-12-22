INSTANCE Info_Mod_Angus_Befreiung (C_INFO)
{
	npc		= Mod_941_PIR_Angus_AW;
	nr		= 1;
	condition	= Info_Mod_Angus_Befreiung_Condition;
	information	= Info_Mod_Angus_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tak wiec wy, dwa, okres lenistwa sie skonczyl.";
};

FUNC INT Info_Mod_Angus_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_Befreiung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angus_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Angus_Befreiung_15_00"); //Tak wiec wy, dwa, okres lenistwa sie skonczyl. Franciszek chce, abyscie wr�cili do pilowania.
	AI_Output(self, hero, "Info_Mod_Angus_Befreiung_06_01"); //(smieje sie glosno) Co? I poslal pan nam to powiedziec? Powiedz mu, aby poruszyl sie jego osla.
	AI_Output(hero, self, "Info_Mod_Angus_Befreiung_15_02"); //Wtedy prawdopodobnie bede musial sie postapic gwaltownie.
	AI_Output(self, hero, "Info_Mod_Angus_Befreiung_06_03"); //(kukiny) Ach, tak? Chodz, Hank, skonczmy go!
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Angus_Befreiung2 (C_INFO)
{
	npc		= Mod_941_PIR_Angus_AW;
	nr		= 1;
	condition	= Info_Mod_Angus_Befreiung2_Condition;
	information	= Info_Mod_Angus_Befreiung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co? Nadal nie czuje sie jakos tak?";
};

FUNC INT Info_Mod_Angus_Befreiung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angus_Befreiung))
	&& (Mod_AngusHank_Verbatscht == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angus_Befreiung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Angus_Befreiung2_15_00"); //A co? Nadal nie czuje sie jakos tak?
	AI_Output(self, hero, "Info_Mod_Angus_Befreiung2_06_01"); //Nie, to prawda. Udalo nam sie to zrozumiec.
	AI_Output(self, hero, "Info_Mod_Angus_Befreiung2_06_02"); //Byl prawdziwym bohaterskim czynem!
	AI_Output(hero, self, "Info_Mod_Angus_Befreiung2_15_03"); //W porzadku, chlopaki, wr�ccie do pracy!

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SAW");
	B_StartOtherRoutine	(Mod_942_PIR_Hank_AW, "SAW");
	
	B_LogEntry	(TOPIC_MOD_BEL_PIRFRANCIS, "Angus i Hank wr�cili do Franciszka, aby zobaczyc drewno.");
};

INSTANCE Info_Mod_Angus_Pickpocket (C_INFO)
{
	npc		= Mod_941_PIR_Angus_AW;
	nr		= 1;
	condition	= Info_Mod_Angus_Pickpocket_Condition;
	information	= Info_Mod_Angus_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Angus_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Angus_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Angus_Pickpocket);

	Info_AddChoice	(Info_Mod_Angus_Pickpocket, DIALOG_BACK, Info_Mod_Angus_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Angus_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Angus_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Angus_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Angus_Pickpocket);
};

FUNC VOID Info_Mod_Angus_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Angus_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Angus_Pickpocket);

		Info_AddChoice	(Info_Mod_Angus_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Angus_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Angus_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Angus_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Angus_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Angus_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Angus_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Angus_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Angus_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Angus_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Angus_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Angus_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Angus_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Angus_EXIT (C_INFO)
{
	npc		= Mod_941_PIR_Angus_AW;
	nr		= 1;
	condition	= Info_Mod_Angus_EXIT_Condition;
	information	= Info_Mod_Angus_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Angus_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Angus_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
