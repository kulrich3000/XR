INSTANCE Info_Mod_Kimon_Hi (C_INFO)
{
	npc		= Mod_1932_FH_Kimon_NW;
	nr		= 1;
	condition	= Info_Mod_Kimon_Hi_Condition;
	information	= Info_Mod_Kimon_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz problem?";
};

FUNC INT Info_Mod_Kimon_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kimon_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Kimon_Hi_15_00"); //Masz problem?
	AI_Output(self, hero, "Info_Mod_Kimon_Hi_34_01"); //Brak, z którym móglbys mi pomóc.....
	AI_Output(hero, self, "Info_Mod_Kimon_Hi_15_02"); //Po prostu powiedz mi o tym.
	AI_Output(self, hero, "Info_Mod_Kimon_Hi_34_03"); //Wszystkie sluszne, wszystkie sluszne. Sprzedalem magów strazy pozarnej drogie winogrona z Góry Archolos w Myrtanie i mialem odebrac moja nagrode 2000 zlota od magika Serpentesa.
	AI_Output(self, hero, "Info_Mod_Kimon_Hi_34_04"); //Syn suki dal mi tylko 1000 zlota!
	AI_Output(hero, self, "Info_Mod_Kimon_Hi_15_05"); //Dlaczego nie idziesz do Pana Andre?
	AI_Output(self, hero, "Info_Mod_Kimon_Hi_34_06"); //(ironiczne) Z pewnoscia, zglaszam jednego z najwyzszych urzedników Innosa za oszustwo.... To kosztowaloby mnie wiecej zlota niz mnie przyniesie.

	Info_ClearChoices	(Info_Mod_Kimon_Hi);

	Info_AddChoice	(Info_Mod_Kimon_Hi, "Wtedy tez nie moge wam pomóc.", Info_Mod_Kimon_Hi_Nein);
	Info_AddChoice	(Info_Mod_Kimon_Hi, "Zobacze, jak moge sobie z tym poradzic.", Info_Mod_Kimon_Hi_Ja);
};

FUNC VOID Info_Mod_Kimon_Hi_Nein()
{
	AI_Output(hero, self, "Info_Mod_Kimon_Hi_Nein_15_00"); //Wtedy tez nie moge wam pomóc.
	AI_Output(self, hero, "Info_Mod_Kimon_Hi_Nein_34_01"); //Wszystkie sluszne, wszystkie sluszne.

	Info_ClearChoices	(Info_Mod_Kimon_Hi);
};

FUNC VOID Info_Mod_Kimon_Hi_Ja()
{
	AI_Output(hero, self, "Info_Mod_Kimon_Hi_Ja_15_00"); //Zobacze, jak moge sobie z tym poradzic.
	AI_Output(self, hero, "Info_Mod_Kimon_Hi_Ja_34_01"); //Dziekuje, dziekuje, nawet jesli nie sadze, by mialo to wiele sensu.

	Log_CreateTopic	(TOPIC_MOD_KIMONSTRAUBEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KIMONSTRAUBEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "Kupiec Kimon sprzedawal winogrona z Myrtany w klasztorze, ale otrzymal za malo zlota. Zgodzilem sie zalatwic mu sprawy.");

	Mod_Kimons_Traubenquest = TRUE;

	Info_ClearChoices	(Info_Mod_Kimon_Hi);
};

INSTANCE Info_Mod_Kimon_Beleg (C_INFO)
{
	npc		= Mod_1932_FH_Kimon_NW;
	nr		= 1;
	condition	= Info_Mod_Kimon_Beleg_Condition;
	information	= Info_Mod_Kimon_Beleg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy masz dowód na oszustwo Serpentesa?";
};

FUNC INT Info_Mod_Kimon_Beleg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Kimon))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kimon_Beleg_Info()
{
	AI_Output(hero, self, "Info_Mod_Kimon_Beleg_15_00"); //Czy masz dowód na oszustwo Serpentesa?
	AI_Output(self, hero, "Info_Mod_Kimon_Beleg_34_01"); //Oczywiscie tutaj.

	B_GiveInvItems	(self, hero, ItWr_KimonsBeleg, 1);

	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "Kimon dal mi dowód winy Serpentesa. Powinienem teraz zabrac ja do Pyrokaru.");
};

INSTANCE Info_Mod_Kimon_HierIstDeinGold (C_INFO)
{
	npc		= Mod_1932_FH_Kimon_NW;
	nr		= 1;
	condition	= Info_Mod_Kimon_HierIstDeinGold_Condition;
	information	= Info_Mod_Kimon_HierIstDeinGold_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto Twoje zloto.";
};

FUNC INT Info_Mod_Kimon_HierIstDeinGold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Serpentes_Kimon))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	&& (Mod_Kimons_Traubenquest == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kimon_HierIstDeinGold_Info()
{
	AI_Output(hero, self, "Info_Mod_Kimon_HierIstDeinGold_15_00"); //Oto Twoje zloto.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1000);

	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_01"); //Dziekuje bardzo. Teraz moge wznowic swoja runde.
	AI_Output(hero, self, "Info_Mod_Kimon_HierIstDeinGold_15_02"); //Gdzie jestes?
	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_03"); //Zazwyczaj podrózuje miedzy miastem a Relendel.
	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_04"); //Co jakis czas objezdzalem doline rzeki Minental. Stalo sie to jednak dla mnie zbyt niebezpieczne.
	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_05"); //Zbyt duzo bydla i zwaczy na drodze.
	AI_Output(hero, self, "Info_Mod_Kimon_HierIstDeinGold_15_06"); //Uh-huh. Z czym sie zajmujesz?
	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_07"); //Teraz bez niczego. Musze kupowac wiecej. Takie rzadkosci jak te winogrona najlepiej sprzedaja sie. Nie sa one jednak tanie.
	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_08"); //Ale znów mam dosc zlota.
	AI_Output(hero, self, "Info_Mod_Kimon_HierIstDeinGold_15_09"); //Zycze powodzenia. Byc moze kiedys spotkamy sie jeszcze raz.
	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_10"); //Moze. Jeszcze raz panstwu dziekuje.

	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "Dalem Kimonowi jego zloto. Teraz pójdzie do innych.");
	B_SetTopicStatus	(TOPIC_MOD_KIMONSTRAUBEN, LOG_SUCCESS);

	B_StartOtherRoutine	(self, "WEG");

	B_GivePlayerXP	(250);

	B_Göttergefallen (1, 1);

	Mod_Kimons_Traubenquest = 2;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Kimon_Pickpocket (C_INFO)
{
	npc		= Mod_1932_FH_Kimon_NW;
	nr		= 1;
	condition	= Info_Mod_Kimon_Pickpocket_Condition;
	information	= Info_Mod_Kimon_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Kimon_Pickpocket_Condition()
{
	C_Beklauen	(98, ItMi_Gold, 41);
};

FUNC VOID Info_Mod_Kimon_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);

	Info_AddChoice	(Info_Mod_Kimon_Pickpocket, DIALOG_BACK, Info_Mod_Kimon_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Kimon_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Kimon_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Kimon_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);
};

FUNC VOID Info_Mod_Kimon_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);

		Info_AddChoice	(Info_Mod_Kimon_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Kimon_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Kimon_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Kimon_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Kimon_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Kimon_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Kimon_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Kimon_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Kimon_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Kimon_EXIT (C_INFO)
{
	npc		= Mod_1932_FH_Kimon_NW;
	nr		= 1;
	condition	= Info_Mod_Kimon_EXIT_Condition;
	information	= Info_Mod_Kimon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kimon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kimon_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
