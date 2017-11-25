INSTANCE Info_Mod_Elsbeth_Hi (C_INFO)
{
	npc		= Mod_7524_JG_Elsbeth_JL;
	nr		= 1;
	condition	= Info_Mod_Elsbeth_Hi_Condition;
	information	= Info_Mod_Elsbeth_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kobieta na tej pustyni! Jak przyjsc?";
};

FUNC INT Info_Mod_Elsbeth_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elsbeth_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Elsbeth_Hi_15_00"); //Kobieta na tej pustyni! Jak przyjsc?
	AI_Output(self, hero, "Info_Mod_Elsbeth_Hi_17_01"); //Jestem z Starego Obozu. Nie chcialem tego tak, jak chcial tego baron.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Hi_15_02"); //I wtedy wyrzucil cie.
	AI_Output(self, hero, "Info_Mod_Elsbeth_Hi_17_03"); //Rodzaj. Wyladowany z uskokami przy bramie.
	AI_Output(self, hero, "Info_Mod_Elsbeth_Hi_17_04"); //W pewnym momencie przyszedl ten Baldur i zabral mnie tutaj.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Hi_15_05"); //Czy jestes z tego zadowolony?
	AI_Output(self, hero, "Info_Mod_Elsbeth_Hi_17_06"); //Zakladasz sie. W tym miejscu powtarzaja Cie jako kobieta, mimo ze sa chropowatymi facetami.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Hi_15_07"); //To dobra wiadomosc. Do zobaczenia dookola.
};

INSTANCE Info_Mod_Elsbeth_Ambi (C_INFO)
{
	npc		= Mod_7524_JG_Elsbeth_JL;
	nr		= 1;
	condition	= Info_Mod_Elsbeth_Ambi_Condition;
	information	= Info_Mod_Elsbeth_Ambi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elsbeth_Ambi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elsbeth_Hi))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elsbeth_Ambi_Info()
{
	AI_Output(self, hero, "Info_Mod_Elsbeth_Ambi_17_00"); //Widze, ze zawsze jestes w ruchu.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Ambi_15_01"); //Jestem tu calkiem nowa i nadal musze sie udowodnic. I przyzwyczailem sie do biegania.
	AI_Output(self, hero, "Info_Mod_Elsbeth_Ambi_17_02"); //A mimo to jestescie zawsze przyjazni, wydaje mi sie.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Ambi_15_03"); //No cóz, dobrze. Moge to zrobic inaczej.
	AI_Output(self, hero, "Info_Mod_Elsbeth_Ambi_17_04"); //W kazdym razie uwazam, ze jestescie wam sympatyczni. Mozesz mnie nazwac Beth.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Ambi_15_05"); //Nic wiec milo Cie spotkac, Beth. Moze moge zrobic laske?
	AI_Output(self, hero, "Info_Mod_Elsbeth_Ambi_17_06"); //Mozesz to zrobic. Zabraklo mi drewna do pieca.
	AI_Output(self, hero, "Info_Mod_Elsbeth_Ambi_17_07"); //Móglbym skorzystac z kilku nowych oddzialów. Tuzin powinien to zrobic.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Ambi_15_08"); //Przyniose Ci troche. Do zobaczenia pózniej.

	Log_CreateTopic	(TOPIC_MOD_ELSBETH_HOLZ, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ELSBETH_HOLZ, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ELSBETH_HOLZ, "Elsbeth potrzebuje galezi do swojego pieca kuchennego. Mam dostac 12 sztuk.");
};

INSTANCE Info_Mod_Elsbeth_Holz (C_INFO)
{
	npc		= Mod_7524_JG_Elsbeth_JL;
	nr		= 1;
	condition	= Info_Mod_Elsbeth_Holz_Condition;
	information	= Info_Mod_Elsbeth_Holz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem tu wasze drewno.";
};

FUNC INT Info_Mod_Elsbeth_Holz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elsbeth_Ambi))
	&& (Npc_HasItems(hero, ItMi_Ast) >= 12)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elsbeth_Holz_Info()
{
	AI_Output(hero, self, "Info_Mod_Elsbeth_Holz_15_00"); //Dostalem tu wasze drewno.

	B_GiveInvItems	(hero, self, ItMi_Ast, 12);

	AI_Output(self, hero, "Info_Mod_Elsbeth_Holz_17_01"); //To slodkie. Dziekuje bardzo.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Holz_15_02"); //Jestes mile widziany, ale musze odejsc teraz.
	AI_Output(self, hero, "Info_Mod_Elsbeth_Holz_17_03"); //Wtedy zycze powodzenia w realizacji zadan.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Holz_15_04"); //Zawsze moge z tego skorzystac. Dzieki.

	B_SetTopicStatus	(TOPIC_MOD_ELSBETH_HOLZ, LOG_SUCCESS);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Elsbeth_Pickpocket (C_INFO)
{
	npc		= Mod_7524_JG_Elsbeth_JL;
	nr		= 1;
	condition	= Info_Mod_Elsbeth_Pickpocket_Condition;
	information	= Info_Mod_Elsbeth_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Elsbeth_Pickpocket_Condition()
{
	C_Beklauen	(56, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Elsbeth_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);

	Info_AddChoice	(Info_Mod_Elsbeth_Pickpocket, DIALOG_BACK, Info_Mod_Elsbeth_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Elsbeth_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Elsbeth_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Elsbeth_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);
};

FUNC VOID Info_Mod_Elsbeth_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);

		Info_AddChoice	(Info_Mod_Elsbeth_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Elsbeth_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Elsbeth_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Elsbeth_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Elsbeth_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Elsbeth_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Elsbeth_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Elsbeth_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Elsbeth_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Elsbeth_EXIT (C_INFO)
{
	npc		= Mod_7524_JG_Elsbeth_JL;
	nr		= 1;
	condition	= Info_Mod_Elsbeth_EXIT_Condition;
	information	= Info_Mod_Elsbeth_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Elsbeth_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elsbeth_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
