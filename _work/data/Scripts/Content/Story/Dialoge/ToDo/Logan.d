INSTANCE Info_Mod_Logan_Quest (C_INFO)
{
	npc		= Mod_957_BDT_Logan_MT;
	nr		= 1;
	condition	= Info_Mod_Logan_Quest_Condition;
	information	= Info_Mod_Logan_Quest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Logan_Quest_Condition()
{
	if (Banditen_Dabei == TRUE)
	&& (Mod_OC_Miguel == 0)
	&& (Mod_OC_Morgahard == 0)
	&& (Kapitel < 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Logan_Quest_Info()
{
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_00"); //Hej, jestes nowy w obozie.
	AI_Output(hero, self, "Info_Mod_Logan_Quest_15_01"); //Tak, dostales to prawo.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_02"); //Przeszliscie droge od Khorinis do nas i wciaz zyjecie.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_03"); //Musisz byc na nogach szybko. To juz dobre warunki.
	AI_Output(hero, self, "Info_Mod_Logan_Quest_15_04"); //Dobre warunki dla jakich dzialan?
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_05"); //Dla naszego planu.
	AI_Output(hero, self, "Info_Mod_Logan_Quest_15_06"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_07"); //Cóz, jak to jest jasne moze byc zlokalizowane sa niektóre bogactwa w domu arcybarona. W chwili obecnej w zamku znajduje sie tez zatwardzialy, bogaty kupiec z towarami o znacznej wartosci handlowej.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_08"); //Jedynym problemem jest dotarcie do tego wszystkiego. Wymaga to nieco rozproszenia uwagi. Tam wlasnie przychodzisz.
	AI_Output(hero, self, "Info_Mod_Logan_Quest_15_09"); //Co dokladnie miales na mysli?
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_10"); //Nun, uns ist vor einigen Wochen eine Söldnerrüstung "wpadl w rece". Wie du vielleicht mitbekommen hast, sind das Alte und Neue Lager nicht so gut aufeinander zu sprechen.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_11"); //Gdyby ktos z pancerzem najemnika przemaszerowal do Starego Obozu.... Wiecej
	AI_Output(hero, self, "Info_Mod_Logan_Quest_15_12"); //Co naprawde masz na mysli? Chcesz, abym poszedl do gniazda osy?
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_13"); //Nie jest tak niebezpiecznie, jak brzmi. Zostaniesz równiez wyposazony w potencjometr predkosci.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_14"); //Przebiegacie kilka minut. i zwróc uwage straznika na siebie. Im wiecej dasz nam czasu, tym lepiej.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_15"); //Jednak, zakamuflowani stara pancerzem cieni, czerpiemy z bogactwa wnetrza zamku. Co mówisz?

	Info_ClearChoices	(Info_Mod_Logan_Quest);

	Info_AddChoice	(Info_Mod_Logan_Quest, "Nie jestem samobójczy.", Info_Mod_Logan_Quest_B);
	Info_AddChoice	(Info_Mod_Logan_Quest, "Dobrze, zrobie to.", Info_Mod_Logan_Quest_A);
};

FUNC VOID Info_Mod_Logan_Quest_B()
{
	AI_Output(hero, self, "Info_Mod_Logan_Quest_B_15_00"); //Nie jestem samobójczy.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_B_10_01"); //Zbyt zle. (skarzace) Mam nadzieje, ze wiecie, ze wraz z tym ucieka przyzwoity lup.
	
	Info_ClearChoices	(Info_Mod_Logan_Quest);
};

FUNC VOID Info_Mod_Logan_Quest_A()
{
	AI_Output(hero, self, "Info_Mod_Logan_Quest_A_15_00"); //Dobrze, zrobie to.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_A_10_01"); //Bardzo dobry. Okay, ja, Morgahard i Miguel czekaja przed wejsciem na zamek wewnetrzny.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_A_10_02"); //Jak tylko stworzysz rozproszenie w srodku, ja i Morgahard przejmujemy kupca i Dom Baronów Er, podczas gdy Miguel grzebie w starozytnych pismach Magickich Strazaków dla uzytecznej i zyskownej wiedzy.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_A_10_03"); //Kazdy ma racje? Wszystko w porzadku, idzmy tutaj.

	CreateInvItems	(hero, ItAr_Sld_Logan, 1);
	CreateInvItems	(hero, ItPo_Speed, 1);

	B_ShowGivenThings	("konserwowane lekkie rusztowania najemne i eliksir zakonserwowany");

	Mod_LoganQuest = 1;

	Log_CreateTopic	(TOPIC_MOD_BDT_LOGAN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_LOGAN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_LOGAN, "Z lekkim pancerzem najemników Logana odwróce uwage strazników w zamku wewnetrznym, podczas gdy on, Miguel i Morgahard okradaja tam skarby.");

	Info_ClearChoices	(Info_Mod_Logan_Quest);

	AI_StopProcessInfos	(self);

	CreateInvItems	(self, Stt_Armor_M, 1);
	CreateInvItems	(Mod_790_BDT_Morgahard_MT, Stt_Armor_M, 1);
	CreateInvItems	(Mod_958_BDT_Miguel_MT, Stt_Armor_M, 1);

	AI_EquipArmor	(self, Stt_Armor_M);
	AI_EquipArmor	(Mod_790_BDT_Morgahard_MT, Stt_Armor_M);
	AI_EquipArmor	(Mod_958_BDT_Miguel_MT, Stt_Armor_M);

	B_StartOtherRoutine	(self, "AL");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "AL");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "AL");
};

INSTANCE Info_Mod_Logan_Belohnung (C_INFO)
{
	npc		= Mod_957_BDT_Logan_MT;
	nr		= 1;
	condition	= Info_Mod_Logan_Belohnung_Condition;
	information	= Info_Mod_Logan_Belohnung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Logan_Belohnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Logan_Quest))
	&& (Mod_LoganQuest == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Logan_Belohnung_Info()
{
	if (Mod_LaufZeit <= 60)
	{
		AI_Output(self, hero, "Info_Mod_Logan_Belohnung_10_00"); //Móglbys naprawde wlozyc troche wiecej wysilku. W tym krótkim czasie nie zebralismy sie tak wiele razem.

		B_GiveInvItems	(self, hero, ItMi_Gold, 200);

		B_GivePlayerXP	(200);
	}
	else if (Mod_LaufZeit <= 120)
	{
		AI_Output(self, hero, "Info_Mod_Logan_Belohnung_10_01"); //Cóz, moglibysmy poswiecic nieco wiecej czasu. Oto Twój udzial.

		CreateInvItems	(hero, ItMi_Gold, 300);
		CreateInvItems	(hero, ItMi_Nugget, 4);
		CreateInvItems	(hero, ItAt_LurkerSkin, 4);

		B_ShowGivenThings	("300 zlota, 4 sztuki rudy i 4 skórki gadów zakonserwowane");

		B_GivePlayerXP	(300);
	}
	else if (Mod_LaufZeit < 180)
	{
		AI_Output(self, hero, "Info_Mod_Logan_Belohnung_10_02"); //Wykonales swoja prace dobrze i zarobiles swój udzial, wiec tutaj jest recepta Miguela.

		CreateInvItems	(hero, ItMi_Gold, 350);
		CreateInvItems	(hero, ItMi_Nugget, 5);
		CreateInvItems	(hero, ItAt_LurkerSkin, 4);
		CreateInvItems	(hero, ItAt_TrollTooth, 1);
		CreateInvItems	(hero, ItAt_Shadowhorn, 2);
		CreateInvItems	(hero, ITWr_Addon_MCELIXIER_01, 1);

		B_ShowGivenThings	("350 zlota, 5 kawalków rudy, 4 skórki gadów, Trollhauer, 2 rogi biegacza cieniowanego i receptura zakonserwowana");

		B_GivePlayerXP	(400);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Logan_Belohnung_10_03"); //Muahahahahahahaha, naprawde zrobiles swietna robote prowadzac strazników wokól i dajac nam wystarczajaco duzo czasu, aby obejrzec cenne skarby z dawnego obozu.
		AI_Output(self, hero, "Info_Mod_Logan_Belohnung_10_04"); //Miguel znalazl równiez cos pozytecznego w ksiazkach, z których mozesz skorzystac.

		CreateInvItems	(hero, ItMi_Gold, 500);
		CreateInvItems	(hero, ItMi_Nugget, 7);
		CreateInvItems	(hero, ItAt_LurkerSkin, 5);
		CreateInvItems	(hero, ItAt_TrollTooth, 2);
		CreateInvItems	(hero, ItAt_Shadowhorn, 2);
		CreateInvItems	(hero, ITWr_Addon_MCELIXIER_01, 1);
		CreateInvItems	(hero, ItAt_SharkTeeth, 4);

		if (hero.guild == GIL_NOV)
		{
			CreateInvItems	(hero, ItSc_AuraFrost, 1);
			CreateInvItems	(hero, ItSc_SumIceGol, 1);
		}
		else if (hero.guild == GIL_VLK)
		{
			CreateInvItems	(hero, ItSc_AuraFeuer, 1);
			CreateInvItems	(hero, ItSc_SumFireGol, 1);
		}
		else if (hero.guild == GIL_KDF)
		{
			CreateInvItems	(hero, ItSc_SumFireGol, 1);
			CreateInvItems	(hero, ItSc_SumIceGol, 1);
		}
		else
		{
			CreateInvItems	(hero, ItSc_AuraBerserker, 1);
		};

		B_ShowGivenThings	("500 zlota, 7 kawalków rudy, 5 skór gadów, 2 kly trollowe, 2 cieniowate rogi biegacza, receptura i 4 wlosy bagienne.");

		B_GivePlayerXP	(600);
	};

	AI_UnequipArmor	(hero);
	AI_UnequipArmor	(self);
	AI_UnequipArmor	(Mod_790_BDT_Morgahard_MT);
	AI_UnequipArmor	(Mod_958_BDT_Miguel_MT);

	AI_EquipArmor	(self, ItAr_BDT_M_01);
	AI_EquipArmor	(Mod_790_BDT_Morgahard_MT, ItAr_BDT_M_01);
	AI_EquipArmor	(Mod_958_BDT_Miguel_MT, ItAr_BDT_M_01);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "START");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "START");

	Npc_RemoveInvItems	(hero, ItAr_Sld_Logan, 1);

	AI_EquipArmor	(hero, ItAr_BDT_M_01);

	B_SetTopicStatus	(TOPIC_MOD_BDT_LOGAN, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Logan_Pickpocket (C_INFO)
{
	npc		= Mod_957_BDT_Logan_MT;
	nr		= 1;
	condition	= Info_Mod_Logan_Pickpocket_Condition;
	information	= Info_Mod_Logan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Logan_Pickpocket_Condition()
{
	C_Beklauen	(67, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Logan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Logan_Pickpocket);

	Info_AddChoice	(Info_Mod_Logan_Pickpocket, DIALOG_BACK, Info_Mod_Logan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Logan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Logan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Logan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Logan_Pickpocket);
};

FUNC VOID Info_Mod_Logan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Logan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Logan_Pickpocket);

		Info_AddChoice	(Info_Mod_Logan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Logan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Logan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Logan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Logan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Logan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Logan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Logan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Logan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Logan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Logan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Logan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Logan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Logan_EXIT (C_INFO)
{
	npc		= Mod_957_BDT_Logan_MT;
	nr		= 1;
	condition	= Info_Mod_Logan_EXIT_Condition;
	information	= Info_Mod_Logan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Logan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Logan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
