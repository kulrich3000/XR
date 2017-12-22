INSTANCE Info_Mod_Hubert_Hi (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_Hi_Condition;
	information	= Info_Mod_Hubert_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Hubert_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hubert_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Hubert_Hi_28_01"); //H - Huh?
};

INSTANCE Info_Mod_Hubert_Landvermessung (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_Landvermessung_Condition;
	information	= Info_Mod_Hubert_Landvermessung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebuje panstwa pomocy.";
};

FUNC INT Info_Mod_Hubert_Landvermessung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Anselm_LandvermessungVincent))
	&& (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_Landvermessung_Info()
{
	AI_Output(hero, self, "Info_Mod_Hubert_Landvermessung_15_00"); //Potrzebuje panstwa pomocy.
	AI_Output(hero, self, "Info_Mod_Hubert_Landvermessung_15_01"); //Jak duza jest Khorata?
	AI_Output(self, hero, "Info_Mod_Hubert_Landvermessung_28_02"); //H... hm. Przynies mi nowe szkodniki. W moim stonowanym stanie, zadne jasne mysli nie moga jeszcze uchwycic.
	AI_Output(hero, self, "Info_Mod_Hubert_Landvermessung_15_03"); //Woher bekomme ich das "buczenie"?
	AI_Output(self, hero, "Info_Mod_Hubert_Landvermessung_28_04"); //Zawsze prosto przed siebie, a nastepnie w prawo. Nie, lepiej pójde do kurczaka, gdzie Fusl, uh, wyprzedal sie. Powinien byc otoczony rynkiem. (rowery)

	B_LogEntry	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, "Na targowisku powinienem kupic gorzelnie u sprzedawcy. Czy jest to nadal moralnie uzasadnione?");
};

INSTANCE Info_Mod_Hubert_LandvermessungAlk (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_LandvermessungAlk_Condition;
	information	= Info_Mod_Hubert_LandvermessungAlk_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam wasz specjalny napój.";
};

FUNC INT Info_Mod_Hubert_LandvermessungAlk_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_Landvermessung))
	&& (Npc_HasItems(hero, ItFo_HubertBooze) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_LandvermessungAlk_Info()
{
	AI_Output(hero, self, "Info_Mod_Hubert_LandvermessungAlk_15_00"); //Mam wasz specjalny napój.

	B_GiveInvItems	(hero, self, ItFo_HubertBooze, 1);
	Npc_RemoveInvItems	(self, ItFo_HubertBooze, 1);

	AI_Output(self, hero, "Info_Mod_Hubert_LandvermessungAlk_28_01"); //Och, dobrze!

	CreateInvItems	(self, ItFo_Booze, 1);

	B_UseItem	(self, ItFo_Booze);

	AI_Output(self, hero, "Info_Mod_Hubert_LandvermessungAlk_28_02"); //Teraz sytuacja jest lepsza. Jezu Chryste! Mam jakies wewnetrzne dipy.... sródmiazszowy zastanawiales sie nad swoim pytaniem.
	AI_Output(hero, self, "Info_Mod_Hubert_LandvermessungAlk_15_03"); //Tak?
	AI_Output(self, hero, "Info_Mod_Hubert_LandvermessungAlk_28_04"); //Jo!
	AI_Output(hero, self, "Info_Mod_Hubert_LandvermessungAlk_15_05"); //A co? Jaki byl wasz wniosek?
	AI_Output(self, hero, "Info_Mod_Hubert_LandvermessungAlk_28_06"); //Siebn Stobbelfelder! Kho-ra-ra-ra-ra-ra-ta jest tak samo duza jak siebn Stobbelfelder obok siebie.
	AI_Output(hero, self, "Info_Mod_Hubert_LandvermessungAlk_15_07"); //Wspanialy....
	AI_Output(self, hero, "Info_Mod_Hubert_LandvermessungAlk_28_08"); //Czyz nie?

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, "Tak wiec Khorata jest tak duza jak siedem pól scierniska.... Bardzo dobrze wiedziec!");
};

INSTANCE Info_Mod_Hubert_CityGuide01 (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_CityGuide01_Condition;
	information	= Info_Mod_Hubert_CityGuide01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mi pokazac miasto?";
};

FUNC INT Info_Mod_Hubert_CityGuide01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_CityGuide01_Info()
{
	AI_Output(hero, self, "Info_Mod_Hubert_CityGuide01_15_00"); //Czy mozesz mi pokazac miasto?
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide01_28_01"); //Kto? A do czasu, az tu nowe?
	AI_Output(hero, self, "Info_Mod_Hubert_CityGuide01_15_02"); //Domyslales sie tego.
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide01_28_03"); //Cóz, nie da sie tego zrobic..... Odczekaj minute, posortuj moje nogi. (grozy)
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide01_28_04"); //Zawsze milo i ladnie z nieznajomym, huh?
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide01_28_05"); //Po prostu biegaj za mna i mów mi, kiedy jestem tak szybki.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RATHAUS");
};

INSTANCE Info_Mod_Hubert_CityGuide02 (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_CityGuide02_Condition;
	information	= Info_Mod_Hubert_CityGuide02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hubert_CityGuide02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_CityGuide01))
	&& (Npc_GetDistToWP(hero, "RATHAUS_01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_CityGuide02_Info()
{
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide02_28_00"); //To jest nasz ratusz. Tam wlasnie mieszka nasz Oberfurzi. No cóz, hello sagn.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MARKT");
};

INSTANCE Info_Mod_Hubert_CityGuide03 (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_CityGuide03_Condition;
	information	= Info_Mod_Hubert_CityGuide03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hubert_CityGuide03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_CityGuide02))
	&& (Npc_GetDistToWP(hero, "REL_CITY_089") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_CityGuide03_Info()
{
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide03_28_00"); //Tutaj mam cos do picia. A jesli chcesz kopnac tylek, mozesz znac Hansa..... n... Umiejetnosc uczenia sie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "NORDOST");
};

INSTANCE Info_Mod_Hubert_CityGuide04 (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_CityGuide04_Condition;
	information	= Info_Mod_Hubert_CityGuide04_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hubert_CityGuide04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_CityGuide03))
	&& (Npc_GetDistToWP(hero, "REL_CITY_095") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_CityGuide04_Info()
{
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide04_28_00"); //Na ulicy wszyscy oni ida olówkiem..... n. Nie ma dokad isc.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MAGIER");
};

INSTANCE Info_Mod_Hubert_CityGuide05 (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_CityGuide05_Condition;
	information	= Info_Mod_Hubert_CityGuide05_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hubert_CityGuide05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_CityGuide04))
	&& (Npc_GetDistToWP(hero, "REL_CITY_260") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_CityGuide05_Info()
{
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide05_28_00"); //Wewnatrz sa bruzdy sukni, jak je nazywam.
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide05_28_01"); //Szynka jest jedynym prawdziwym doniczka w miescie.
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide05_28_02"); //Dobrze, delikatne nasadki.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GERICHT");
};

INSTANCE Info_Mod_Hubert_CityGuide06 (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_CityGuide06_Condition;
	information	= Info_Mod_Hubert_CityGuide06_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hubert_CityGuide06_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_CityGuide05))
	&& (Npc_GetDistToWP(hero, "REL_CITY_293") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hubert_CityGuide06_Info()
{
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide06_28_00"); //Miejmy nadzieje, ze nigdy nie musielismy wejsc, bo jest sedzia. To mnie, facet, to pelza.
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide06_28_01"); //To zakonczy trase. Jestem gonna ide do karczmy, dostaje nowe rzeczy.
	AI_Output(self, hero, "Info_Mod_Hubert_CityGuide06_28_02"); //Mozesz przyjsc do mnie, jesli chcesz.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GASTHAUS");

	B_GivePlayerXP	(100);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_12);
};

INSTANCE Info_Mod_Hubert_Freudenspender (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_Freudenspender_Condition;
	information	= Info_Mod_Hubert_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Potrzebujesz dozowników radosci?";
};                       

FUNC INT Info_Mod_Hubert_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Hubert_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Hubert_Freudenspender_15_00"); //Potrzebujesz dozowników radosci?
	AI_Output(self, hero, "Info_Mod_Hubert_Freudenspender_28_01"); //Nah, nah, nah, nah, nah, mój Zeuchz wystarczy mi....
};

INSTANCE Info_Mod_Hubert_Pickpocket (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_Pickpocket_Condition;
	information	= Info_Mod_Hubert_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Hubert_Pickpocket_Condition()
{
	C_Beklauen	(14, ItFo_Booze, 3);
};

FUNC VOID Info_Mod_Hubert_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);

	Info_AddChoice	(Info_Mod_Hubert_Pickpocket, DIALOG_BACK, Info_Mod_Hubert_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hubert_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hubert_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hubert_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);
};

FUNC VOID Info_Mod_Hubert_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);

		Info_AddChoice	(Info_Mod_Hubert_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hubert_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hubert_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hubert_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hubert_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hubert_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hubert_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hubert_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hubert_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hubert_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hubert_EXIT (C_INFO)
{
	npc		= Mod_7380_OUT_Hubert_REL;
	nr		= 1;
	condition	= Info_Mod_Hubert_EXIT_Condition;
	information	= Info_Mod_Hubert_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hubert_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hubert_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
