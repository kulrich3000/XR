INSTANCE Info_Mod_Abdi_Hi (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_Hi_Condition;
	information	= Info_Mod_Abdi_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes bardzo mlody.";
};

FUNC INT Info_Mod_Abdi_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Abdi_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Abdi_Hi_15_00"); //Jestes bardzo mlody.
	AI_Output(self, hero, "Info_Mod_Abdi_Hi_31_01"); //Wiek nie odgrywa zadnej roli dla Beliara. To zalezy od zapalu wiary.
	AI_Output(hero, self, "Info_Mod_Abdi_Hi_15_02"); //Tylko ci, którzy sa indoktrynowani w mlodym wieku maja to, czego potrzeba, aby byc prawdziwym fanatykiem, prawda? Jakie jest Twoje imie?
	AI_Output(self, hero, "Info_Mod_Abdi_Hi_31_03"); //Abdi, a ja nie jestem fanatykiem. Jestem w stanie tylko przezwyciezyc moje emocje i nie pozwolic sie im kierowac, jak to czesto bywa w przypadku slabszego miesa.
	AI_Output(hero, self, "Info_Mod_Abdi_Hi_15_04"); //To wlasnie mówie, fanatyk.
};

INSTANCE Info_Mod_Abdi_WieLang (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_WieLang_Condition;
	information	= Info_Mod_Abdi_WieLang_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak dlugo jestes obecny/a?";
};

FUNC INT Info_Mod_Abdi_WieLang_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Abdi_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Abdi_WieLang_Info()
{
	AI_Output(hero, self, "Info_Mod_Abdi_WieLang_15_00"); //Jak dlugo jestes obecny/a?
	AI_Output(self, hero, "Info_Mod_Abdi_WieLang_31_01"); //Beliar wybral mnie na wielkie rzeczy. Odpowiednio wczesnie przyprowadzil mnie do wspólnoty.
};

INSTANCE Info_Mod_Abdi_Eltern (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_Eltern_Condition;
	information	= Info_Mod_Abdi_Eltern_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co powiedzieli rodzice?";
};

FUNC INT Info_Mod_Abdi_Eltern_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Abdi_WieLang))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Abdi_Eltern_Info()
{
	AI_Output(hero, self, "Info_Mod_Abdi_Eltern_15_00"); //Co powiedzieli rodzice?
	AI_Output(self, hero, "Info_Mod_Abdi_Eltern_31_01"); //Nie pamietam rodziców.
	AI_Output(self, hero, "Info_Mod_Abdi_Eltern_31_02"); //Dorastalem w tej smierdzacej szkole Inno, gdzie mnie nekali i torturowali.
	AI_Output(self, hero, "Info_Mod_Abdi_Eltern_31_03"); //Kiedy wyslali nas do zbiórki roslin, ucieklem.
	AI_Output(self, hero, "Info_Mod_Abdi_Eltern_31_04"); //Eduard mnie znalazl i przywiózl. Tutaj znalazlem swój dom.
};

INSTANCE Info_Mod_Abdi_DontTalk (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_DontTalk_Condition;
	information	= Info_Mod_Abdi_DontTalk_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Abdi_DontTalk_Condition()
{
	if ((hero.guild == GIL_PAL)
	|| (hero.guild == GIL_VLK))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Abdi_DontTalk_Info()
{
	AI_Output(self, hero, "Info_Mod_Abdi_DontTalk_31_00"); //Nie balaganuje sie z toba.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Abdi_Belagerung (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_Belagerung_Condition;
	information	= Info_Mod_Abdi_Belagerung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebujesz pomocy?";
};

FUNC INT Info_Mod_Abdi_Belagerung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Abdi_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Raven_Belagerung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Abdi_Belagerung_Info()
{
	AI_Output(hero, self, "Info_Mod_Abdi_Belagerung_15_00"); //Potrzebujesz pomocy?
	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_01"); //Tak.

	B_Say	(hero, self, "$WASISTZUTUN");

	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_02"); //W ciagu ostatnich dwóch nocy znaleziono zmarlego jednego z naszych nowicjuszy.
	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_03"); //Oboje zostali okrutnie ranni.
	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_04"); //Jednak w poblizu obozu nie widzielismy jednak nikogo, kto móglby byc za to odpowiedzialny.
	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_05"); //Obawiamy sie wiec, ze mamy zdrajce w swoich szeregach.
	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_06"); //Musimy odnalezc zabójce, aby zapobiec gorzej.

	B_Say	(hero, self, "$WIESOLLICHVORGEHEN");

	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_07"); //Zapytaj naszych pracowników o informacje. I jesli go znalezc, zabic zabójce.
	AI_Output(hero, self, "Info_Mod_Abdi_Belagerung_15_08"); //Zrobie wszystko, co w mojej mocy.
	AI_Output(self, hero, "Info_Mod_Abdi_Belagerung_31_09"); //Nie zawiesc!

	Log_CreateTopic	(TOPIC_MOD_BEL_DAEMON, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_DAEMON, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_DAEMON, "W ciagu ostatnich kilku nocy zabito kilku nowicjuszy. Abdi poprosil mnie, abym znalazl zabójce i zabil go. Chce o to zapytac innych.");
};

INSTANCE Info_Mod_Abdi_DaemonTot (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_DaemonTot_Condition;
	information	= Info_Mod_Abdi_DaemonTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "demon nie zyje!";
};

FUNC INT Info_Mod_Abdi_DaemonTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_BesessenerNovize_Hi))
	&& (Npc_IsDead(Demon_Novize))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Abdi_DaemonTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Abdi_DaemonTot_15_00"); //Demon jest martwy.
	AI_Output(self, hero, "Info_Mod_Abdi_DaemonTot_31_01"); //Dziekuje bardzo. Beliar zaplaci za uslugi. Tutaj wez te lecznicza rune.

	B_GiveInvItems	(self, hero, ItRu_LightHeal, 1);

	B_GivePlayerXP	(1000);

	B_LogEntry_More	(TOPIC_MOD_BEL_DAEMON, TOPIC_MOD_BEL_BELAGERUNG, "Demon jest martwy. Jako podziekowanie Abdi dal mi lekkie gojenie ran.", "Problem demoniczny Abdiego zostal rozwiazany.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_DAEMON, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Abdi_Pickpocket (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_Pickpocket_Condition;
	information	= Info_Mod_Abdi_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Abdi_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Abdi_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);

	Info_AddChoice	(Info_Mod_Abdi_Pickpocket, DIALOG_BACK, Info_Mod_Abdi_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Abdi_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Abdi_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Abdi_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);
};

FUNC VOID Info_Mod_Abdi_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);

		Info_AddChoice	(Info_Mod_Abdi_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Abdi_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Abdi_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Abdi_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Abdi_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Abdi_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Abdi_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Abdi_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Abdi_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Abdi_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Abdi_EXIT (C_INFO)
{
	npc		= Mod_1030_SNOV_Abdi_MT;
	nr		= 1;
	condition	= Info_Mod_Abdi_EXIT_Condition;
	information	= Info_Mod_Abdi_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Abdi_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Abdi_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
