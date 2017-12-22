INSTANCE Info_Mod_Makanius_Hi (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Hi_Condition;
	information	= Info_Mod_Makanius_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_Hi_Condition()
{
	if (Mod_TemplerBeiThorus == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_Hi_07_00"); //W koncu sie pan obudzil. Masz szczescie zyc.
	AI_Output(hero, self, "Info_Mod_Makanius_Hi_15_01"); //Kim jestes i co sie stalo?
	AI_Output(self, hero, "Info_Mod_Makanius_Hi_07_02"); //Jestem Makaniusem, magikiem uzdrawiajacym. Miales szczescie. Kiedy spadles z wiezy, wlasnie weszlismy do obozu. Mozemy spowolnic Twój upadek i zaleczyc Twoje rany.
	AI_Output(hero, self, "Info_Mod_Makanius_Hi_15_03"); //Musze pilnie zobaczyc Thorusa. Musze mu powiedziec wazne rzeczy.
	AI_Output(self, hero, "Info_Mod_Makanius_Hi_07_04"); //Obecnie nie jest to mozliwe. Thorus zostal wezwany przez jego meza Bartholo. Widocznie niektórzy buddysci zbuntowali sie.
	AI_Output(hero, self, "Info_Mod_Makanius_Hi_15_05"); //Gdzie sie udali?
	AI_Output(self, hero, "Info_Mod_Makanius_Hi_07_06"); //Udali sie do Molerathöhle kolo mostu. Widocznie zgromadzili sie tam Buddlerzy.
	AI_Output(hero, self, "Info_Mod_Makanius_Hi_15_07"); //Musze to osiagnac juz teraz. Bartholo jest zdrajca.
	AI_Output(self, hero, "Info_Mod_Makanius_Hi_07_08"); //Co? Pójde z Toba. W twoim stanie samotnie, nie bedziesz w stanie stawic czola walce.
	AI_Output(self, hero, "Info_Mod_Makanius_Hi_07_09"); //Podazaj za mna, zabiore cie do jaskini.

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	B_LogEntry	(TOPIC_MOD_AL_SCHMUGGLER, "Uzdrawiajacy magik Makanius uratowal mi zycie. Powiedzial mi równiez, ze Bartholo Thorus zwabil Thorusa do Molerathöhle w poblizu mostu. Musze tam od razu pojechac i ostrzec Thorusa.");

	hero.flags = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOTHORUS");
};

INSTANCE Info_Mod_Makanius_Falle (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Falle_Condition;
	information	= Info_Mod_Makanius_Falle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_Falle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_Hi))
	&& (Npc_GetDistToWP(self, "WP_MT_FALLE_04") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_Falle_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_Falle_07_00"); //Nie wyglada to dobrze.

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_GotoWP	(self, "SPAWN_OW_MOLERAT_CAVE1_OC");
	AI_PlayAni	(self, "T_PLUNDER");
	AI_GotoWP	(self, "WP_MT_FALLE_02");
	AI_PlayAni	(self, "T_PLUNDER");
	AI_GotoWP	(self, "WP_MT_FALLE_04");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Makanius_ThorusTot (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_ThorusTot_Condition;
	information	= Info_Mod_Makanius_ThorusTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_ThorusTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_Falle))
	&& (Npc_GetDistToWP(self, "WP_MT_FALLE_04") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_ThorusTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_ThorusTot_07_00"); //Nie moglem nic zrobic dla Thorusa, ale Alissandro wydaje mi sie byc zywy.

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "THORUSTOT");
};

INSTANCE Info_Mod_Makanius_AL (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_AL_Condition;
	information	= Info_Mod_Makanius_AL_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_AL_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_ThorusTot))
	&& (!Npc_IsInState(Mod_1870_EBR_Alissandro_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_AL_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_AL_07_00"); //Wróce do obozu i udaje, ze dolacze do Bartholo. Inne magowie uzdrawiajacy z pewnoscia beda mnie nasladowac.
	
	AI_StopProcessInfos	(self);

	B_InitMonsterAttitudes ();

	B_StartOtherRoutine	(self, "ALTESLAGER");
};

INSTANCE Info_Mod_Makanius_KillMission (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_KillMission_Condition;
	information	= Info_Mod_Makanius_KillMission_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_KillMission_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_GotoJackal))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_KillMission_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_KillMission_07_00"); //Dobrze jest cie zobaczyc. Niestety, nie mozesz poruszac sie swobodnie w obozie, dlatego jestes bezpieczny tylko w Domu Magika.
	AI_Output(self, hero, "Info_Mod_Makanius_KillMission_07_01"); //Nie mozemy Ci pomóc w wykonaniu zadania. Jesli masz jakies pytania, skontaktuj sie z Jackalem, on czuwa nad nami.
	
	B_StartOtherRoutine	(self, "ALTESLAGER");
};

INSTANCE Info_Mod_Makanius_Eroberung_04 (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Eroberung_04_Condition;
	information	= Info_Mod_Makanius_Eroberung_04_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_Eroberung_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_Eroberung_03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_Eroberung_04_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_Eroberung_04_07_00"); //Jesli znajdziecie sie w wewnetrznej czesci, to zasygnalizuje, ze bramy zostana otwarte przez szpiegów w starym obozie.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Makanius_Eroberung_09 (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Eroberung_09_Condition;
	information	= Info_Mod_Makanius_Eroberung_09_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_Eroberung_09_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Eroberung_08))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_Eroberung_09_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_Eroberung_09_07_00"); //Jedni z nas towarzysza i wspieraja cie, inni pomagaja straznikom królewskim i bandytom.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Makanius_BartholosFlucht (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_BartholosFlucht_Condition;
	information	= Info_Mod_Makanius_BartholosFlucht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_BartholosFlucht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_WacheTotWoBartholo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_BartholosFlucht_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_BartholosFlucht_07_00"); //Bartholo udal sie do lochów. Musimy podazac za nim.
	
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "Makanius mówi, ze Bartholo uciekl do lochów. Musimy go sledzic.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOKERKER");
	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "FOLLOWTOKERKER");
};

INSTANCE Info_Mod_Makanius_Lockvogel (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Lockvogel_Condition;
	information	= Info_Mod_Makanius_Lockvogel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Makanius_Lockvogel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Lockvogel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_Lockvogel_Info()
{
	AI_Output(self, hero, "Info_Mod_Makanius_Lockvogel_07_00"); //Och, tam jestes....
	AI_Output(hero, self, "Info_Mod_Makanius_Lockvogel_15_01"); //Jaki jest ten niepewny ton glosu? Alissandro powiedzial, ze ma pan plan.
	AI_Output(self, hero, "Info_Mod_Makanius_Lockvogel_07_02"); //Tak, rzeczywiscie..... To tylko troche niewygodne.

	Info_ClearChoices	(Info_Mod_Makanius_Lockvogel);

	Info_AddChoice	(Info_Mod_Makanius_Lockvogel, "Co tak sie nazywa?", Info_Mod_Makanius_Lockvogel_B);
	Info_AddChoice	(Info_Mod_Makanius_Lockvogel, "Dla Ciebie lub dla mnie?", Info_Mod_Makanius_Lockvogel_A);
};

FUNC VOID Info_Mod_Makanius_Lockvogel_C()
{
	AI_Output(hero, self, "Info_Mod_Makanius_Lockvogel_C_15_00"); //Wlasciwie, zróbmy to dobrze.
	AI_Output(self, hero, "Info_Mod_Makanius_Lockvogel_C_07_01"); //Wlasnie teraz?
	AI_Output(hero, self, "Info_Mod_Makanius_Lockvogel_C_15_02"); //(nie denerwujace) Kiedy jeszcze? Chodzcie dalej, odejdzmy!
	AI_Output(self, hero, "Info_Mod_Makanius_Lockvogel_C_07_03"); //Musi to byc absolutnie....

	AI_DrawWeapon	(hero);

	Info_ClearChoices	(Info_Mod_Makanius_Lockvogel);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Makanius_Lockvogel_B()
{
	AI_Output(hero, self, "Info_Mod_Makanius_Lockvogel_B_15_00"); //Co tak sie nazywa?
	AI_Output(self, hero, "Info_Mod_Makanius_Lockvogel_B_07_01"); //Atakuj mnie, wiec wabisz jednego z strazników do domu. Hit go i wziac jego zbroje.

	B_LogEntry	(TOPIC_MOD_AL_LOCKVOGEL, "Mam zaatakowac Makariusa, wabic straznika przed domem maga, zabic go i zdjac zbroje.");

	Info_Mod_Makanius_Lockvogel_C();
};

FUNC VOID Info_Mod_Makanius_Lockvogel_A()
{
	AI_Output(hero, self, "Info_Mod_Makanius_Lockvogel_A_15_00"); //Dla Ciebie lub dla mnie?
	AI_Output(self, hero, "Info_Mod_Makanius_Lockvogel_A_07_01"); //Dla mnie. Nie musisz sie tym martwic.

	Info_Mod_Makanius_Lockvogel_B();
};

INSTANCE Info_Mod_Makanius_Armor (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Armor_Condition;
	information	= Info_Mod_Makanius_Armor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wlasnie to otrzymalismy.";
};

FUNC INT Info_Mod_Makanius_Armor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_Lockvogel))
	&& (Npc_HasItems(hero, ItAr_Raven_Addon) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Makanius_Armor_Info()
{
	AI_Output(hero, self, "Info_Mod_Makanius_Armor_15_00"); //Wlasnie to otrzymalismy.
	AI_Output(self, hero, "Info_Mod_Makanius_Armor_07_01"); //Musiales tak ciezko uderzyc?
	AI_Output(hero, self, "Info_Mod_Makanius_Armor_15_02"); //Czy jestes magiem uzdrawiajacym, czy nie?
	AI_Output(self, hero, "Info_Mod_Makanius_Armor_07_03"); //Oczywiscie jestem. Wiec przechodzimy do nastepnej czesci planu. Wejdz do domu Er Barons i zobacz Gomeza.
	AI_Output(self, hero, "Info_Mod_Makanius_Armor_07_04"); //Zabierz go przed obóz..... wtedy nasi ludzie moga go zabrac.
	AI_Output(hero, self, "Info_Mod_Makanius_Armor_15_05"); //Gromada bojowników dla czlowieka? Czy nie jest to zbyt wygórowane?
	AI_Output(self, hero, "Info_Mod_Makanius_Armor_07_06"); //Gomez jest teraz w lidze z Beliarem i nie tylko silnym wojownikiem, ale równiez poteznym magikiem.
	AI_Output(self, hero, "Info_Mod_Makanius_Armor_07_07"); //To nie jest chciwy baron, który go wczesniej pobiles.
	AI_Output(hero, self, "Info_Mod_Makanius_Armor_15_08"); //Widze.

	B_LogEntry	(TOPIC_MOD_AL_LOCKVOGEL, "Mam zbroje. Teraz musze przekonac Gomeza, aby opuscil obóz.... Wiecej Jesli jest tak uparty jak wtedy, moze byc to interesujace.");

	AI_StopProcessInfos	(self);
	
	B_StartOtherRoutine(Mod_9999_HMG_Heilungsmagier_MT, "OC");
};

INSTANCE Info_Mod_Makanius_Pickpocket (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_Pickpocket_Condition;
	information	= Info_Mod_Makanius_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Makanius_Pickpocket_Condition()
{
	C_Beklauen	(130, ItSc_FullHeal, 2);
};

FUNC VOID Info_Mod_Makanius_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);

	Info_AddChoice	(Info_Mod_Makanius_Pickpocket, DIALOG_BACK, Info_Mod_Makanius_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Makanius_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Makanius_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Makanius_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);
};

FUNC VOID Info_Mod_Makanius_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);

		Info_AddChoice	(Info_Mod_Makanius_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Makanius_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Makanius_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Makanius_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Makanius_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Makanius_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Makanius_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Makanius_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Makanius_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Makanius_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Makanius_EXIT (C_INFO)
{
	npc		= Mod_1874_HMG_Makanius_MT;
	nr		= 1;
	condition	= Info_Mod_Makanius_EXIT_Condition;
	information	= Info_Mod_Makanius_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Makanius_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Makanius_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
