INSTANCE Info_Mod_Senyan_Hi (C_INFO)
{
	npc		= Mod_963_BDT_Senyan_NW;
	nr		= 1;
	condition	= Info_Mod_Senyan_Hi_Condition;
	information	= Info_Mod_Senyan_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Senyan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Senyan_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Senyan_Hi_12_00"); //Hej! Co robisz w moim magazynie?
};

INSTANCE Info_Mod_Senyan_Edgor (C_INFO)
{
	npc		= Mod_963_BDT_Senyan_NW;
	nr		= 1;
	condition	= Info_Mod_Senyan_Edgor_Condition;
	information	= Info_Mod_Senyan_Edgor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Edgor mnie wyslal.";
};

FUNC INT Info_Mod_Senyan_Edgor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Senyan_Hi))
	&& ((Npc_KnowsInfo(hero, Info_Mod_Edgor_Gold))
	|| (Npc_KnowsInfo(hero, Info_Mod_Edgor_Raeuber)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Senyan_Edgor_Info()
{
	AI_Output(hero, self, "Info_Mod_Senyan_Edgor_15_00"); //Edgor mnie wyslal. Podal mi on pierwsza polowe hasla, a ja chce, abys mi teraz powiedziala druga polowe.
	AI_Output(self, hero, "Info_Mod_Senyan_Edgor_12_01"); //Chcesz wiec dolaczyc do nas? Wszystko w porzadku, ale najpierw musisz mi udowodnic, ze jestes bandyta.
	AI_Output(self, hero, "Info_Mod_Senyan_Edgor_12_02"); //W miescie znajduje sie sprzedawca broni sprzedajacy bron Haradowi kowalowi.
	AI_Output(self, hero, "Info_Mod_Senyan_Edgor_12_03"); //Chce, abys go zaatakowal i wzial jego szorstki, dlugi miecz. Przyniesliscie mi te sprawe.

	Log_CreateTopic	(TOPIC_MOD_SENYANSSCHWERT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SENYANSSCHWERT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SENYANSSCHWERT, "Dla Senii mam wykrasc dlugi miecz z Hakona.");

	Mod_HakonUeberfall = 0;
};

INSTANCE Info_Mod_Senyan_HabSchwert (C_INFO)
{
	npc		= Mod_963_BDT_Senyan_NW;
	nr		= 1;
	condition	= Info_Mod_Senyan_HabSchwert_Condition;
	information	= Info_Mod_Senyan_HabSchwert_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam miecz.";
};

FUNC INT Info_Mod_Senyan_HabSchwert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Senyan_Edgor))
	&& (Npc_HasItems(hero, ItMw_HakonSchwert_01) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Senyan_HabSchwert_Info()
{
	AI_Output(hero, self, "Info_Mod_Senyan_HabSchwert_15_00"); //Mam miecz.
	AI_Output(self, hero, "Info_Mod_Senyan_HabSchwert_12_01"); //Pozwole sobie to zobaczyc.
	AI_Output(hero, self, "Info_Mod_Senyan_HabSchwert_15_02"); //Tutaj jest tutaj.

	B_GiveInvItems	(hero, self, ItMw_HakonSchwert_01, 1);

	AI_Output(self, hero, "Info_Mod_Senyan_HabSchwert_12_03"); //Dobrze wykonane. Druga czesc hasla to: Zakaz.
	AI_Output(self, hero, "Info_Mod_Senyan_HabSchwert_12_04"); //Teraz mozecie udac sie do naszego obozu glównego. Znajduje sie w dolinie Minental w poblizu wawozu Troll.
	AI_Output(self, hero, "Info_Mod_Senyan_HabSchwert_12_05"); //Porozmawiaj z Sancho, on cie wpusci. W obozie powinienes porozmawiac z Dexterem.

	B_LogEntry_More	(TOPIC_MOD_AUFNAHME_BANDITEN, TOPIC_MOD_SENYANSSCHWERT, "Druga polowa nazywana jest Ban. To prowadzi mnie do glównego obozu w Minental.", "Przynioslam Senii miecz Hakona.");
	B_SetTopicStatus	(TOPIC_MOD_SENYANSSCHWERT, LOG_SUCCESS);

	B_Göttergefallen(3, 1);

	B_GivePlayerXP	(200);

	B_StartOtherRoutine	(Mod_581_NONE_Hakon_NW, "START");
};

INSTANCE Info_Mod_Senyan_TomKraut (C_INFO)
{
	npc		= Mod_963_BDT_Senyan_NW;
	nr		= 1;
	condition	= Info_Mod_Senyan_TomKraut_Condition;
	information	= Info_Mod_Senyan_TomKraut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Senyan_TomKraut_Condition()
{
	if (Mod_SenyanTom_Kraut == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Senyan_TomKraut_Info()
{
	AI_DrawWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_00"); //(hektyka) Kto to jest? Ach, to tylko ty.

	AI_RemoveWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_01"); //Prawie zabral cie na czuwajacego.
	AI_Output(hero, self, "Info_Mod_Senyan_TomKraut_15_02"); //W zbroi bandyckiej tak blisko miasta? Ja tez bylbym niespokojny. Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_03"); //Problemy z wymiarem sprawiedliwosci, to wlasnie sie dzieje.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_04"); //Spotkalem Tomka i dalem mu kilka roslin ziolowych, aby mógl przerobic je na lodygi w miescie.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_05"); //Kiedy jednak chcial wrócic przez brame miasta, z daleka widzialem, jak Mika - posladek - nagle go zatrzymal.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_06"); //Poniewaz byl jakis rodzaj klopotów z demonami, straznicy wydaja sie byc szczególnie ostrozni.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_07"); //W kazdym razie zaczal go krecic i odnalazl ziolo.....
	AI_Output(hero, self, "Info_Mod_Senyan_TomKraut_15_08"); //... a nastepnie odprowadzic go do wiezienia?
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_09"); //Nie, do ratusza, gdzie zostal mianowany burmistrzem.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_10"); //Do zakladu karnego! Gdzie indziej.... Idiot.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_11"); //A teraz siedze tutaj i nie wiem, jak go wyprowadzic.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_12"); //Nie moglem nawet pokonac strazników.... Jestem tu juz zbyt slawny, jesli wiesz, co mam na mysli.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_13"); //Oh, gówno. Mam tylko nadzieje, ze jego kara nie bedzie zbyt surowa.

	Log_CreateTopic	(TOPIC_MOD_TOM_KRAUT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TOM_KRAUT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TOM_KRAUT, "Senyan powiedzial mi, ze Tomek zostal zlapany na roslinach bagiennych i prawdopodobnie przebywa w wiezieniu.");

	Mob_CreateItems	("ASSERVATENTRUHE", ItPl_SwampHerb, 3);
};

INSTANCE Info_Mod_Senyan_Pickpocket (C_INFO)
{
	npc		= Mod_963_BDT_Senyan_NW;
	nr		= 1;
	condition	= Info_Mod_Senyan_Pickpocket_Condition;
	information	= Info_Mod_Senyan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Senyan_Pickpocket_Condition()
{
	C_Beklauen	(56, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Senyan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);

	Info_AddChoice	(Info_Mod_Senyan_Pickpocket, DIALOG_BACK, Info_Mod_Senyan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Senyan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Senyan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Senyan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);
};

FUNC VOID Info_Mod_Senyan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);

		Info_AddChoice	(Info_Mod_Senyan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Senyan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Senyan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Senyan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Senyan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Senyan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Senyan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Senyan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Senyan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Senyan_EXIT (C_INFO)
{
	npc		= Mod_963_BDT_Senyan_NW;
	nr		= 1;
	condition	= Info_Mod_Senyan_EXIT_Condition;
	information	= Info_Mod_Senyan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Senyan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Senyan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
