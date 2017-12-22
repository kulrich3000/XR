INSTANCE Info_Mod_HofstaatDrogenminister_Hi (C_INFO)
{
	npc		= Mod_7288_HS_Drogenminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatDrogenminister_Hi_Condition;
	information	= Info_Mod_HofstaatDrogenminister_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatDrogenminister_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatGGMinister_Drogenminister))
	&& ((Npc_HasItems(hero, ItMi_FreudenspenderSporen) == 1)
	|| (Npc_HasItems(hero, ItMi_FakeFreudenspenderSporen) == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Hi_04_00"); //Czego chcesz?
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Hi_15_01"); //Mam tutaj przeniesc te przetrwalniki.

	if (Npc_HasItems(hero, ItMi_FreudenspenderSporen) == 1)
	{
		B_GiveInvItems	(hero, self, ItMi_FreudenspenderSporen, 1);
	}
	else
	{
		B_GiveInvItems	(hero, self, ItMi_FakeFreudenspenderSporen, 1);
	};

	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Hi_04_02"); //Aaaaaahh doskonaly.

	if (Npc_HasItems(self, ItMi_FreudenspenderSporen) == 1)
	{
		AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Hi_15_03"); //Jaki jest obecnie stosunek do tego leku?
		AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Hi_04_04"); //Jak zapewne widziales, uprawiamy ziarno.
		AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Hi_04_05"); //Zarodniki te sa przetrwalnikami grzyba spory. Osiedla sie na ziarnie i tam rosnie.
		AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Hi_04_06"); //Zbieramy go i przetwarzamy w celu uzyskania silnego hallucynogenu, silniejszego i tanszego niz wszystkie inne leki.
		AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Hi_15_07"); //Masz dla mnie cos innego do zrobienia?
		AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Hi_04_08"); //Tak, przynies te banknoty do króla.

		B_GiveInvItems	(self, hero, ItWr_HSAufzeichnung, 1);

		AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Hi_15_09"); //Wlasciwie, bede.

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(Mod_7285_HS_Koenig_REL, "FREIFLUSS");
		B_StartOtherRoutine	(Mod_7284_HS_Raufbold_REL, "FREIFLUSS");

		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Sekretarz narkotyków dal mi notatki dla króla. Prawdopodobnie powinienem je tam jak najszybciej zrzucic.");
	}
	else
	{
		AI_StopProcessInfos	(self);

		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Pakiet zostal dostarczony. Powinienem zatrzymac sie jutro przy twierdzy.... Wiecej");

		Mod_SL_Schwaechen = 6;

		Mod_SL_HofstaatFutsch = Wld_GetDay();
	};
};

INSTANCE Info_Mod_HofstaatDrogenminister_Maler (C_INFO)
{
	npc		= Mod_7288_HS_Drogenminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatDrogenminister_Maler_Condition;
	information	= Info_Mod_HofstaatDrogenminister_Maler_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz - masz Mistrzostwa pomalowane dla króla?";
};

FUNC INT Info_Mod_HofstaatDrogenminister_Maler_Condition()
{
	if (Mod_SL_Meer == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Maler_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Maler_15_00"); //Masz - masz Mistrzostwa pomalowane dla króla?
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Maler_04_01"); //Tak, tak, sztuka jest moja obsesja.
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Maler_15_02"); //Czy móglbys mnie narysowac?
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Maler_04_03"); //Specjalny projekt? Co chcesz, abym malowal?
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Maler_15_04"); //Krajobraz.
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Maler_04_05"); //O czym?
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Maler_15_06"); //Z bagna. Znajdziesz go w bylej kolonii górniczej.
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Maler_04_07"); //Wszystkie sluszne, wszystkie sluszne. Powróc jutro, wróce. Aksamitny obrazek.

	Mod_SL_BildMalTag = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Jutro bede mógl odebrac obraz w ministerstwie Dorgena.");
};

INSTANCE Info_Mod_HofstaatDrogenminister_BildFertig (C_INFO)
{
	npc		= Mod_7288_HS_Drogenminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatDrogenminister_BildFertig_Condition;
	information	= Info_Mod_HofstaatDrogenminister_BildFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatDrogenminister_BildFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatDrogenminister_Maler))
	&& (Wld_GetDay() > Mod_SL_BildMalTag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatDrogenminister_BildFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_BildFertig_04_00"); //Oto Twoje zdjecie.

	B_GiveInvItems	(self, hero, ItMi_StrandBild, 1);

	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_BildFertig_04_01"); //To jest Kuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu!!!!!!!!!!!!!!!!
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_BildFertig_15_02"); //Dziekuje bardzo. To..... ogluszanie.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Mam obraz sekretarza narkotyków. Mam nadzieje, ze król nie jest zbyt wymagajacy.");
};

INSTANCE Info_Mod_HofstaatDrogenminister_Spezialauftrag (C_INFO)
{
	npc		= Mod_7288_HS_Drogenminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatDrogenminister_Spezialauftrag_Condition;
	information	= Info_Mod_HofstaatDrogenminister_Spezialauftrag_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatDrogenminister_Spezialauftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatKoenig_Tuersteher))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Spezialauftrag_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Spezialauftrag_04_00"); //Bardzo dobrze! Czekalem, a ty przyszedles, po prostu bajecznie!
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Spezialauftrag_15_01"); //Co nalezy zrobic?
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Spezialauftrag_04_02"); //Ach, cos tak tajemniczego i niebezpiecznego, ze tylko Ty mozesz to zrobic!
	AI_Output(hero, self, "Info_Mod_HofstaatDrogenminister_Spezialauftrag_15_03"); //Dotychczas bylem juz.....
	AI_Output(self, hero, "Info_Mod_HofstaatDrogenminister_Spezialauftrag_04_04"); //Tutaj zabierz to opakowanie na bagno. Dajcie ja Lesterowi. I uwazac!

	B_GiveInvItems	(self, hero, ItMi_PaketFuerLester, 1);

	B_LogEntry	(TOPIC_MOD_SEKTE_KING, "Specjalne zadanie polega na dostarczeniu paczki do Lester' s. Och, wielki.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatDrogenminister_Pickpocket (C_INFO)
{
	npc		= Mod_7288_HS_Drogenminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatDrogenminister_Pickpocket_Condition;
	information	= Info_Mod_HofstaatDrogenminister_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_HofstaatDrogenminister_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Freudenspender, 1);
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatDrogenminister_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatDrogenminister_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatDrogenminister_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatDrogenminister_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatDrogenminister_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatDrogenminister_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatDrogenminister_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatDrogenminister_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatDrogenminister_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatDrogenminister_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatDrogenminister_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatDrogenminister_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatDrogenminister_EXIT (C_INFO)
{
	npc		= Mod_7288_HS_Drogenminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatDrogenminister_EXIT_Condition;
	information	= Info_Mod_HofstaatDrogenminister_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatDrogenminister_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatDrogenminister_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
