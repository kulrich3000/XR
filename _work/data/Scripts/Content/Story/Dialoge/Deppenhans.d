INSTANCE Info_Mod_Deppenhans_Truhe (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_Truhe_Condition;
	information	= Info_Mod_Deppenhans_Truhe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Deppenhans_Truhe_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Deppenhans_Truhe_Info()
{
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_31_00"); //Hej, czy mozesz dac mi reke? Mam klopoty z klatka piersiowa.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_31_01"); //Nie moge uzyskac oszczednosci zyciowych.
	AI_Output(hero, self, "Info_Mod_Deppenhans_Truhe_15_02"); //Klopot z zamkiem?
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_31_03"); //Nah, potrzebuje kolejnej na pokrywie.
	AI_Output(hero, self, "Info_Mod_Deppenhans_Truhe_15_04"); //Jak?
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_31_05"); //No cóz, ponownie skacze i ugryza jak szalone.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_31_06"); //Tym razem bylo to naprawde wspaniale, wiec nie moge jej karcic na wlasna reke.
	AI_Output(hero, self, "Info_Mod_Deppenhans_Truhe_15_07"); //Jaki to nonsens?
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_31_08"); //Tak, masz racje, to nonsens, co ona robi znowu.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_31_09"); //Nie moze jednak zachowywac sie jak drzewo. Przechodzimy przez pole i przewracamy wszystko do góry nogami.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_31_10"); //W pewnym momencie wzialem siekiere i podjalem ja na klatke piersiowa.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_31_11"); //Ale zachowanie nie jest jeszcze lepsze.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Deppenhans_Truhe_15_12"); //(ja sama) I pomyslalam, ze w tej kolonii byly wtedy najdziwniejsze ptaki.

	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_31_13"); //Tak, to dziwne, dobre.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_31_14"); //Jesli pomozesz mi ja uspokoic, dam ci troche oszczednosci.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe_31_15"); //Jestem gonna wejsc do srodka i sprawdzic ja.

	Log_CreateTopic	(TOPIC_MOD_DEPPENHANS_TRUHE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DEPPENHANS_TRUHE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DEPPENHANS_TRUHE, "W Khoracie spotyka sie kilka ciekawostek. Rolnik Deppenhans poprosil mnie, abym nauczyl jego klatki piersiowej jak ma sie zachowywac kilkoma uderzeniami, bo podobno skacze i ukasza jak dzikie zwierzeta. Co o tym myslec? cóz. Skoro jednak obiecal mi jako nagrode czesc swoich oszczednosci, moze powinienem przyjrzec sie temu, co sie dzieje.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRUHE");

	Wld_InsertNpc	(Truhe_Deppenhans, "FP_ROAM_DEPPENHANS_TRUHE");
};

INSTANCE Info_Mod_Deppenhans_Truhe2 (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_Truhe2_Condition;
	information	= Info_Mod_Deppenhans_Truhe2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Deppenhans_Truhe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Deppenhans_Truhe))
	&& (Npc_GetDistToWP(self, "REL_SURFACE_220") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Deppenhans_Truhe2_Info()
{
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe2_31_00"); //Tam, spojrzec. Od dawna nie byla tak paskudna.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe2_31_01"); //Prosze, tesknic za jednym, nie zapomni o tym tak szybko.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Deppenhans_Truhe3 (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_Truhe3_Condition;
	information	= Info_Mod_Deppenhans_Truhe3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Deppenhans_Truhe3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Deppenhans_Truhe2))
	&& (Npc_IsDead(Truhe_Deppenhans))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Deppenhans_Truhe3_Info()
{
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe3_31_00"); //Wspaniale, to zrobiles.

	AI_GotoNpc	(self, Truhe_Deppenhans);

	AI_TurnToNpc	(self, Truhe_Deppenhans);

	AI_PlayAni	(self, "T_PLUNDER");

	AI_GotoNpc	(self, hero);

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe3_31_01"); //I tutaj, jak obiecalem, czesc moich oszczednosci.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe3_31_02"); //Tu zajmiemy polowe. Wykonales naprawde dobra prace i naprawde zarobiles.

	B_GiveInvItems	(self, hero, ItPl_Beet, 6);

	AI_Output(hero, self, "Info_Mod_Deppenhans_Truhe3_15_03"); //Och, wspaniale, rzepy.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Truhe3_31_04"); //Tak, ciesze sie, ze podoba ci sie.

	B_SetTopicStatus	(TOPIC_MOD_DEPPENHANS_TRUHE, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	B_StartOtherRoutine	(self, "START");

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Deppenhans_Kaninchenplage (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_Kaninchenplage_Condition;
	information	= Info_Mod_Deppenhans_Kaninchenplage_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostales mnóstwo zajaców w polu.";
};

FUNC INT Info_Mod_Deppenhans_Kaninchenplage_Condition()
{
	if (Mod_WM_UnheilFertig == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Deppenhans_Kaninchenplage_Info()
{
	AI_Output(hero, self, "Info_Mod_Deppenhans_Kaninchenplage_15_00"); //Dostales mnóstwo zajaców w polu.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Kaninchenplage_31_01"); //Tak, smieszne, puszyste, puszyste, puszyste króliczki na calym miejscu. To dziwne, ze od tego czasu stopniowo znikaja moje warzywa. Musi byc tu gdzies zlodziejem....
	AI_Output(hero, self, "Info_Mod_Deppenhans_Kaninchenplage_15_02"); //Ach, tak i tak, czy masz jakies wyobrazenie, skad one wszystkie moga pochodzic?
	AI_Output(self, hero, "Info_Mod_Deppenhans_Kaninchenplage_31_03"); //Nah, po prostu tak sie pojawiaja.
	AI_Output(hero, self, "Info_Mod_Deppenhans_Kaninchenplage_15_04"); //Wszystko w prawo, wiec moge przeczesac obszar, aby uzyskac wskazówki.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Kaninchenplage_31_05"); //Skorzystajcie? Hej, dostalem cos dla Ciebie.
	AI_Output(hero, self, "Info_Mod_Deppenhans_Kaninchenplage_15_06"); //Chetni) Tak! Wskazówki?
	AI_Output(self, hero, "Info_Mod_Deppenhans_Kaninchenplage_31_07"); //Nah, mialem swietny pomysl, zeby zrobic za duzy grzebien na drewnianym stylu. O tym wlasnie dowiedzialem sie.

	B_GiveInvItems	(self, hero, ItMi_Rake, 1);

	AI_Output(hero, self, "Info_Mod_Deppenhans_Kaninchenplage_15_08"); //Och, wielki, rake, dziekuje.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Kaninchenplage_31_09"); //Ale mozna równiez zapytac tego czarnego goscia, który zawsze chodzi po nim, robiac zabawne swiatlo reka.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Kaninchenplage_31_10"); //Zwlaszcza, ze pojawia sie wtedy duzo królików...... On równiez musial to widziec.

	B_LogEntry	(TOPIC_MOD_ADANOS_PLAGE, "Hmph..... no cóz, przynajmniej teraz wiem, ze musze szukac maga w czarnych ubraniach.");

	Wld_InsertNpc	(Mod_7412_SNOV_Novize_REL, "REL_SURFACE_110");

	Wld_InsertNpc	(Rabbit, "REL_SURFACE_110");
	Wld_InsertNpc	(Rabbit, "REL_SURFACE_110");
	Wld_InsertNpc	(Rabbit, "REL_SURFACE_110");
	Wld_InsertNpc	(Rabbit, "REL_SURFACE_110");
	Wld_InsertNpc	(Rabbit, "REL_SURFACE_110");
};

INSTANCE Info_Mod_Deppenhans_NovizeWeg (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_NovizeWeg_Condition;
	information	= Info_Mod_Deppenhans_NovizeWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Deppenhans_NovizeWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_SchwarzerNovizeKaninchen_Umgehauen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Deppenhans_NovizeWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Deppenhans_NovizeWeg_31_00"); //Hej, moje warzywa przestaly znikac.
	AI_Output(self, hero, "Info_Mod_Deppenhans_NovizeWeg_31_01"); //Cokolwiek zrobiles, wez te dynie jako podziekowanie.

	B_GiveInvItems	(self, hero, ItFo_Kuerbis, 5);

	AI_Output(hero, self, "Info_Mod_Deppenhans_NovizeWeg_15_02"); //Ach, jak piekny.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Deppenhans_WoherBaum (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_WoherBaum_Condition;
	information	= Info_Mod_Deppenhans_WoherBaum_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie otrzymalibyscie to poruszajace sie drzewo?";
};

FUNC INT Info_Mod_Deppenhans_WoherBaum_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Deppenhans_Truhe3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Deppenhans_WoherBaum_Info()
{
	AI_Output(hero, self, "Info_Mod_Deppenhans_WoherBaum_15_00"); //Gdzie otrzymalibyscie to poruszajace sie drzewo?
	AI_Output(self, hero, "Info_Mod_Deppenhans_WoherBaum_31_01"); //Sadzilem ja obok pola..... z sadzonkami od wilgotnego bagna.
	AI_Output(self, hero, "Info_Mod_Deppenhans_WoherBaum_31_02"); //Ale najwyrazniej byly one zle wychowane, sposób, w jaki sie zachowywal. Widziales go sam.
};

INSTANCE Info_Mod_Deppenhans_Landarbeit (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_Landarbeit_Condition;
	information	= Info_Mod_Deppenhans_Landarbeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co jeszcze robi praca w gospodarstwie?";
};

FUNC INT Info_Mod_Deppenhans_Landarbeit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Deppenhans_Truhe3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Deppenhans_Landarbeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Deppenhans_Landarbeit_15_00"); //Co jeszcze robi praca w gospodarstwie?
	AI_Output(self, hero, "Info_Mod_Deppenhans_Landarbeit_31_01"); //To cudownie piekne. Wiem, jak to dziala.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Landarbeit_31_02"); //Nasiona i bulwy wpadaja do gleby na polu, a nastepnie rosna.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Landarbeit_31_03"); //Mój szef, Erhard, robi to wszystko zle.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Landarbeit_31_04"); //Na scianie domu, posród wszystkich belek siana i beczek zasypal smiesznie zólte i niebieskie lsniace klody.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Landarbeit_31_05"); //Myslalem, ze nic przyzwoitego z nich nie wyrosnie.
	AI_Output(self, hero, "Info_Mod_Deppenhans_Landarbeit_31_06"); //Ale sa tez dziwni ludzie.
};

INSTANCE Info_Mod_Deppenhans_Pickpocket (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_Pickpocket_Condition;
	information	= Info_Mod_Deppenhans_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Deppenhans_Pickpocket_Condition()
{
	C_Beklauen	(76, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Deppenhans_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);

	Info_AddChoice	(Info_Mod_Deppenhans_Pickpocket, DIALOG_BACK, Info_Mod_Deppenhans_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Deppenhans_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Deppenhans_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Deppenhans_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);
};

FUNC VOID Info_Mod_Deppenhans_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);

		Info_AddChoice	(Info_Mod_Deppenhans_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Deppenhans_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Deppenhans_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Deppenhans_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Deppenhans_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Deppenhans_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Deppenhans_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Deppenhans_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Deppenhans_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Deppenhans_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Deppenhans_EXIT (C_INFO)
{
	npc		= Mod_7411_BAU_Deppenhans_REL;
	nr		= 1;
	condition	= Info_Mod_Deppenhans_EXIT_Condition;
	information	= Info_Mod_Deppenhans_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Deppenhans_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Deppenhans_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
