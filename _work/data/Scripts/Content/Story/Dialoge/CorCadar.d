INSTANCE Info_Mod_Cadar_Hi (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Hi_Condition;
	information	= Info_Mod_Cadar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cadar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cadar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cadar_Hi_02_00"); //Ach, nowe oblicze w naszym bagnie. Witamy.
	AI_Output(self, hero, "Info_Mod_Cadar_Hi_02_01"); //Jestem Cor Cadarem, duchowym przywódca naszej wspólnoty.
};

INSTANCE Info_Mod_Cadar_Eroberung_02 (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Eroberung_02_Condition;
	information	= Info_Mod_Cadar_Eroberung_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cadar_Eroberung_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Eroberung_01))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_Eroberung_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Cadar_Eroberung_02_02_00"); //Zaoferuje Ci kilka nowicjuszy spódnic. Udajecie udawac, ze wyruszacie na zablocona bartholo i jedziecie do obozu.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cadar_Asylanten (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Asylanten_Condition;
	information	= Info_Mod_Cadar_Asylanten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie sa plany Bractwa na przyszlosc?";
};

FUNC INT Info_Mod_Cadar_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Cadar_Asylanten_15_00"); //Jakie sa plany Bractwa na przyszlosc?
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_02_01"); //(uzywane) plany? Przyszlosc sama pokaze nam, co jest dla nas dostepne.
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_02_02"); //Tak dlugo, jak dlugo prowadzimy normalne zycie: kultywowanie rdestnicy, palenie tytoniu raz na jakis czas i dzielenie sie naszymi duchowymi doswiadczeniami.
	AI_Output(hero, self, "Info_Mod_Cadar_Asylanten_15_03"); //Nie planujesz wiec opuscic Minental?
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_02_04"); //Nie.
	AI_Output(hero, self, "Info_Mod_Cadar_Asylanten_15_05"); //A jak czujesz sie o innych grupach w Minental?
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_02_06"); //Wszyscy ci, którzy chca handlowac z nami sa goscmi powitanymi.
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_02_07"); //Slyszalem jednak, ze stary obóz stracil wiekszosc swojego dawnego statusu, a stosunki z nowym obozem nigdy nie byly tak silne, jak bysmy sobie tego zyczyli.
	AI_Output(hero, self, "Info_Mod_Cadar_Asylanten_15_08"); //Dziekujemy za informacje.
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_02_09"); //Pozwólcie spac.... Niech gwiazdy beda dla Ciebie dobre.

	B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "Nie ma praktycznie zadnego niebezpieczenstwa ze strony Bractwa. templariusze i nowicjusze Rycerzy sa zadowoleni z obecnego zycia i nie maja zalu wobec innej grupy.");
};

INSTANCE Info_Mod_Cadar_Woher (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Woher_Condition;
	information	= Info_Mod_Cadar_Woher_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jak zostales duchowym przywódca Bractwa?";
};

FUNC INT Info_Mod_Cadar_Woher_Condition()
{
	if (Guru_Dabei == 1)
	|| (Templer_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Cadar_Woher_15_00"); //Jak zostales duchowym przywódca Bractwa?
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_02_01"); //Zanim wrzucono mnie do zapory, bylem magikiem ognia wladcy.
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_02_02"); //Interesowaly mnie jednak równiez inne kierunki magów. Szczególnie lubilem sie orkmagicznym, ale w zamian musialem go poprzec.
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_02_03"); //W koncu okazalo sie, ze podparlem orki i wrzucilem mnie do zapory.
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_02_04"); //Poszedlem wtedy do Bractwa, aby nauczyc sie tego rodzaju magii i wkrótce potem zostalem poslem Cor Kalom.
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_02_05"); //Po jego smierci i smierci Y' Beriona bylem najwyzszym guru w obozie i w zwiazku z tym zostalem duchowym przywódca Bractwa.
};

INSTANCE Info_Mod_Cadar_Lehrer (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Lehrer_Condition;
	information	= Info_Mod_Cadar_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Cadar_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Hi))
	&& ((Templer_Dabei == 1)
	|| (Guru_Dabei == 1))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Cadar_Lehrer_02_01"); //Moge pokazac, jak uczyc sie czegos wiecej na podstawie twoich doswiadczen, z których mozesz skorzystac, aby zdobyc wiecej umiejetnosci.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SUMPF, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SUMPF, "Cor Cadar moze mi pomóc czerpac wiecej wiedzy z mojego doswiadczenia.");
};

INSTANCE Info_Mod_Cadar_SchnellesLernen_Perk (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_SchnellesLernen_Perk_Condition;
	information	= Info_Mod_Cadar_SchnellesLernen_Perk_Info;
	permanent	= 1;
	important	= 0;
	description	= "Perc: Szybkie uczenie sie (5 LP)";
};

FUNC INT Info_Mod_Cadar_SchnellesLernen_Perk_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Lehrer))
	&& (SchnellesLernen_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_SchnellesLernen_Perk_Info()
{
	if (hero.lp > 4)
	{
		AI_Output(self, hero, "Info_Mod_Cadar_SchnellesLernen_Perk_02_00"); //Teraz bedziesz mógl czerpac wiecej wiedzy z wlasnego doswiadczenia. Uzywaj tej wiedzy madrze.

		SchnellesLernen_Perk = TRUE;

		hero.lp -= 5;
	}
	else
	{
		B_Say (self, other, "$NOLEARNNOPOINTS");
	};
};

INSTANCE Info_Mod_Cadar_Pickpocket (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Pickpocket_Condition;
	information	= Info_Mod_Cadar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Cadar_Pickpocket_Condition()
{
	C_Beklauen	(176, ItPo_Mana_Addon_04, 3);
};

FUNC VOID Info_Mod_Cadar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);

	Info_AddChoice	(Info_Mod_Cadar_Pickpocket, DIALOG_BACK, Info_Mod_Cadar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cadar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cadar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cadar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);
};

FUNC VOID Info_Mod_Cadar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);

		Info_AddChoice	(Info_Mod_Cadar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cadar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cadar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cadar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cadar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cadar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cadar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cadar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cadar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cadar_EXIT (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_EXIT_Condition;
	information	= Info_Mod_Cadar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cadar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cadar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
