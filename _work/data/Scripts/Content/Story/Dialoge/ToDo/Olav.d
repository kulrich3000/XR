INSTANCE Info_Mod_Olav_Hi (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_Hi_Condition;
	information	= Info_Mod_Olav_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co tu robisz?";
};

FUNC INT Info_Mod_Olav_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Olav_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Olav_Hi_15_00"); //Co tu robisz?
	AI_Output(self, hero, "Info_Mod_Olav_Hi_04_01"); //Podnosze sie do g�ry nogami, aby obserwowac targowisko.
	AI_Output(self, hero, "Info_Mod_Olav_Hi_04_02"); //Nigdzie indziej nie ma tak wiele klamstwa i oszukiwania, jak tutaj, przeklety.
	AI_Output(self, hero, "Info_Mod_Olav_Hi_04_03"); //Wisza tu wszystkie cieniste stworzenia.....
};

INSTANCE Info_Mod_Olav_WarumMiliz (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_WarumMiliz_Condition;
	information	= Info_Mod_Olav_WarumMiliz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego udales sie do milicji?";
};

FUNC INT Info_Mod_Olav_WarumMiliz_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Olav_WarumMiliz_Info()
{
	AI_Output(hero, self, "Info_Mod_Olav_WarumMiliz_15_00"); //Dlaczego udales sie do milicji?
	AI_Output(self, hero, "Info_Mod_Olav_WarumMiliz_04_01"); //No c�z, to wlasnie postanowil wtedy m�j ojciec.
	AI_Output(self, hero, "Info_Mod_Olav_WarumMiliz_04_02"); //Nie podobaly mi sie inne dzieci w mojej uliczce i pomyslal, ze nie bede musial sobie z nimi radzic w barakach.
};

INSTANCE Info_Mod_Olav_Mortis (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_Mortis_Condition;
	information	= Info_Mod_Olav_Mortis_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mortis wyslal mnie.";
};

FUNC INT Info_Mod_Olav_Mortis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mortis_Andre))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Olav_Mortis_Info()
{
	AI_Output(hero, self, "Info_Mod_Olav_Mortis_15_00"); //Mortis wyslal mnie. Mam pytac, czy wszystko jest w porzadku.
	AI_Output(self, hero, "Info_Mod_Olav_Mortis_04_01"); //Tak, wszystko jest mi w porzadku.

	B_LogEntry	(TOPIC_MOD_MORTIS_KONTROLLE, "Wszystko jest w porzadku z Olavem.");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Olav_Turm (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_Turm_Condition;
	information	= Info_Mod_Olav_Turm_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co wlasciwie znajduje sie w wiezyczkach strazniczych obok bramy miejskiej?";
};

FUNC INT Info_Mod_Olav_Turm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Olav_Hi))
	&& (Mod_Verhandlungsgeschick >= 40)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Olav_Turm_Info()
{
	AI_Output(hero, self, "Info_Mod_Olav_Turm_15_00"); //Co wlasciwie znajduje sie w wiezyczkach strazniczych obok bramy miejskiej?
	AI_Output(self, hero, "Info_Mod_Olav_Turm_04_01"); //To wlasnie chcesz wiedziec. Wiem, co jest w tym, bo jestem odpowiedzialny.
	AI_Output(hero, self, "Info_Mod_Olav_Turm_15_02"); //Oznacza to, ze masz klucz?
	AI_Output(self, hero, "Info_Mod_Olav_Turm_04_03"); //(nieco zaniepokojony) No c�z, oczywiscie. W przeciwnym razie nie bylbym w stanie wejsc.
};

INSTANCE Info_Mod_Olav_Turm2 (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_Turm2_Condition;
	information	= Info_Mod_Olav_Turm2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dajesz mi klucz, a ja zajme sie Toba.";
};

FUNC INT Info_Mod_Olav_Turm2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Olav_Turm))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Olav_Turm2_Info()
{
	AI_Output(hero, self, "Info_Mod_Olav_Turm2_15_00"); //Dajesz mi klucz, a ja zajme sie Toba.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Olav_Turm2_04_01"); //Wszystko sluszne, to bylo potrzebne przez dlugi czas. M�glby sie tam rozprzestrzenic do tej pory.

		B_GiveInVItems	(self, hero, ItKe_City_Tower_03, 1);

		B_RaiseHandelsgeschick (2);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Olav_Turm2_04_02"); //Bardzo proste: Nie.
	};
};

INSTANCE Info_Mod_Olav_Mario (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_Mario_Condition;
	information	= Info_Mod_Olav_Mario_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hakon sprzedaje skradzione towary!";
};

FUNC INT Info_Mod_Olav_Mario_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe8))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Olav_Mario_Info()
{
	AI_Output(hero, self, "Info_Mod_Olav_Mario_15_00"); //Hakon sprzedaje skradzione towary!
	AI_Output(self, hero, "Info_Mod_Olav_Mario_04_01"); //Co? Damn, musze to sprawdzic.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "HAKON");

	B_LogEntry	(TOPIC_MOD_MARIO_FLUCHTHILFE, "Olav jest na razie rozproszony.");
};

INSTANCE Info_Mod_Olav_HaradLehrling (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_HaradLehrling_Condition;
	information	= Info_Mod_Olav_HaradLehrling_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Olav_HaradLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Olav_HaradLehrling_Info()
{
	var c_npc Olav; Olav = Hlp_GetNpc(Mod_980_MIL_Olav_NW);
	var c_npc Harad; Harad = Hlp_GetNpc(Mod_535_NONE_Harad_NW);

	TRIA_Invite(Harad);
	TRIA_Start();

	TRIA_Next(Olav);

	AI_TurnToNpc	(Olav, Harad);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_04_00"); //Ladny dzialko.

	TRIA_Next(Harad);

	AI_TurnToNpc	(Harad, Olav);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_09_01"); //(ostrozny) Tak. Dlaczego?

	TRIA_Next(Olav);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_04_02"); //Czy moge go miec? Zawsze robi wrazenie to, co mozna osiagnac kuta sztuka.

	TRIA_Next(Harad);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_09_03"); //To byla ciezka praca.

	TRIA_Next(Olav);

	AI_DrawWeapon	(self);

	AI_PlayAni	(self, "T_1HINSPECT");

	AI_RemoveWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_04_04"); //Tak, wierze. (pauza)
	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_04_05"); //Aha. Da haben wir's. "Szczescie i chwala Laresowi, zwyciezcy." Na, wenn das mal nicht verd�chtig klingt.

	TRIA_Next(Harad);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_09_06"); //Nie o to rozumiem!

	TRIA_Next(Olav);

	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_04_07"); //(smiech) M�wisz po prostu. Miecz zostaje skonfiskowany, to wszystko. Wiesz, ze nie powinienes byc w kontakcie z najemnikami.
	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling_04_08"); //Jesli nie bylo to takie trudne, chcialbym to zachowac.

	TRIA_Finish();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Olav_HaradLehrling2 (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_HaradLehrling2_Condition;
	information	= Info_Mod_Olav_HaradLehrling2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Olav_HaradLehrling2_Condition()
{
	if (Mod_HaradLehrling_Kap4 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Olav_HaradLehrling2_Info()
{
	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling2_04_00"); //Kuznia nie moze byc wprowadzana.
	AI_Output(hero, self, "Info_Mod_Olav_HaradLehrling2_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling2_04_02"); //Tengron zdecydowal, ze nadszedl czas, aby Harad nauczyl sie pewnych lekcji przyzwoitosci.
	AI_Output(hero, self, "Info_Mod_Olav_HaradLehrling2_15_03"); //Jest tez takim upartym psem.
	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling2_04_04"); //Nie dotyczy to tej kwestii.
	AI_Output(hero, self, "Info_Mod_Olav_HaradLehrling2_15_05"); //A co z Haradem? Czy przebywa w wiezieniu?
	AI_Output(self, hero, "Info_Mod_Olav_HaradLehrling2_04_06"); //Poprawne. I jesli dobrze zrozumialem Tengrona, nie wyjdzie z niego tak szybko.

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_HARAD_FOUR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_FOUR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "Harad w wiezieniu! Tengron ma go zamkniety dla swoich najemnik�w.");
};

INSTANCE Info_Mod_Olav_Pickpocket (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_Pickpocket_Condition;
	information	= Info_Mod_Olav_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Olav_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Olav_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Olav_Pickpocket);

	Info_AddChoice	(Info_Mod_Olav_Pickpocket, DIALOG_BACK, Info_Mod_Olav_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Olav_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Olav_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Olav_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Olav_Pickpocket);
};

FUNC VOID Info_Mod_Olav_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Olav_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Olav_Pickpocket);

		Info_AddChoice	(Info_Mod_Olav_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Olav_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Olav_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Olav_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Olav_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Olav_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Olav_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Olav_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Olav_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Olav_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Olav_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Olav_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Olav_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Olav_EXIT (C_INFO)
{
	npc		= Mod_980_MIL_Olav_NW;
	nr		= 1;
	condition	= Info_Mod_Olav_EXIT_Condition;
	information	= Info_Mod_Olav_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Olav_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Olav_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
