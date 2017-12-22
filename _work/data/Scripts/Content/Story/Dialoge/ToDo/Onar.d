INSTANCE Info_Mod_Onar_Hi (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Hi_Condition;
	information	= Info_Mod_Onar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Onar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Onar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Onar_Hi_32_00"); //Co ty tu robisz?
};

INSTANCE Info_Mod_Onar_Ahnenkunde (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Ahnenkunde_Condition;
	information	= Info_Mod_Onar_Ahnenkunde_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy wiesz cos o kazdej czesci ozdobnego pierscienia?";
};

FUNC INT Info_Mod_Onar_Ahnenkunde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Ahnenkunde_Info()
{
	AI_Output(hero, self, "Info_Mod_Onar_Ahnenkunde_15_00"); //Czy wiesz cos o kazdej czesci ozdobnego pierscienia?
	AI_Output(self, hero, "Info_Mod_Onar_Ahnenkunde_32_01"); //Dlaczego mam Ci cos powiedziec?
	AI_Output(hero, self, "Info_Mod_Onar_Ahnenkunde_15_02"); //Wiem, ze twój przodek Onar, który prawdopodobnie zalozyl to gospodarstwo tutaj, mial je z nim.
	AI_Output(self, hero, "Info_Mod_Onar_Ahnenkunde_32_03"); //Wiesz o moim przodku? Wszystko w porzadku, dostalem ten kawalek kamienia, ale nie jestem gonna powiedziec, gdzie to jest.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Onar powiedzial, ze ma ornament, ale nie powie mi, gdzie to jest. Mysle, ze bede musial przewrócic jego dom do góry nogami. Mam nadzieje, ze nikt mnie tego nie zlapie.");
};

INSTANCE Info_Mod_Onar_BelohnungMaria (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_BelohnungMaria_Condition;
	information	= Info_Mod_Onar_BelohnungMaria_Info;
	permanent	= 0;
	important	= 0;
	description	= "Maria powiedziala, ze otrzymam nagrode w postaci 400 zlotych monet.";
};

FUNC INT Info_Mod_Onar_BelohnungMaria_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Onar_Hi))
	&& (Mod_WM_MariaGeheilt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_BelohnungMaria_Info()
{
	AI_Output(hero, self, "Info_Mod_Onar_BelohnungMaria_15_00"); //Maryja powiedziala, ze otrzymam od ciebie nagrode w postaci 400 zlotych monet po wyleczeniu jej cierpienia.
	AI_Output(self, hero, "Info_Mod_Onar_BelohnungMaria_32_01"); //Co? 400 zlota! Czy moge isc do psów? Otrzymasz 200 od mnie i wiecej monet.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);
};

INSTANCE Info_Mod_Onar_Wasili_01 (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Wasili_01_Condition;
	information	= Info_Mod_Onar_Wasili_01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce, aby Wasili wrócil na farme.";
};

FUNC INT Info_Mod_Onar_Wasili_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Onar_Hi))
	&& (Mod_WM_WasiliQuest == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Wasili_01_Info()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_01_15_00"); //Chce, aby Wasili wrócil na farme.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_01_32_01"); //Co? Czego i tak chcecie? Prosze podac mi jeden powód, dla którego powinienem wyrazic zgode.

	Info_ClearChoices	(Info_Mod_Onar_Wasili_01);

	if (Npc_KnowsInfo(hero, Info_Mod_Maria_BelohnungWasili))
	{
		Info_AddChoice	(Info_Mod_Onar_Wasili_01, "Bo inaczej powiem Marii o sluzacej.", Info_Mod_Onar_Wasili_01_D);
	};

	Info_AddChoice	(Info_Mod_Onar_Wasili_01, "Poniewaz jestem gonna zlamac zeby.", Info_Mod_Onar_Wasili_01_C);

	if (Npc_HasItems(hero, ItMi_Gold) >= 400)
	{
		Info_AddChoice	(Info_Mod_Onar_Wasili_01, "Bo dam ci 400 zlotych monet.", Info_Mod_Onar_Wasili_01_B);
	};

	Info_AddChoice	(Info_Mod_Onar_Wasili_01, "Tylko z dobroci.", Info_Mod_Onar_Wasili_01_A);
};

FUNC VOID Info_Mod_Onar_Wasili_01_D()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_01_D_15_00"); //Bo inaczej powiem Marii o sluzacej.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_01_D_32_01"); //Co? Synku suk, skad wiesz o tym? Zaplace Ci kiedys.
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_01_D_15_02"); //Co wiec teraz?
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_01_D_32_03"); //Tak, nie pozostawia mi pan innego wyboru. Zwrot na podwórko jest dozwolony.

	B_StartOtherRoutine	(Mod_100_BAU_Wasili_NW, "START");

	Mod_WM_WasiliQuest = 4;

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_WASILI, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Onar_Wasili_01);
};

FUNC VOID Info_Mod_Onar_Wasili_01_C()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_01_C_15_00"); //Poniewaz jestem gonna zlamac zeby.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_01_C_32_01"); //Co? Straznicy!

	Mod_WM_WasiliQuest = 5;

	Info_ClearChoices	(Info_Mod_Onar_Wasili_01);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Onar_Wasili_01_B()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_01_B_15_00"); //Bo dam ci 400 zlotych monet.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_01_B_32_01"); //(nieco spokojniejszy) To jest rzeczywiscie powód. W prawo, racica moze wrócic na podwórko.

	B_GiveInvItems	(hero, self, ItMi_Gold, 400);

	B_StartOtherRoutine	(Mod_100_BAU_Wasili_NW, "START");

	Mod_WM_WasiliQuest = 4;

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_WASILI, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Onar_Wasili_01);
};

FUNC VOID Info_Mod_Onar_Wasili_01_A()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_01_A_15_00"); //Tylko z dobroci.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_01_A_32_01"); //(bardzo rozdraznieni) Przyjazn? Wolne to tylko smierc. Teraz wyjmij z niego pieklo.

	Info_ClearChoices	(Info_Mod_Onar_Wasili_01);
};

INSTANCE Info_Mod_Onar_Umgehauen (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Umgehauen_Condition;
	information	= Info_Mod_Onar_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Onar_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Onar_Wasili_01))
	&& (Mod_WM_WasiliQuest == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Onar_Umgehauen_32_00"); //Jestes synem suki, placisz za to....
			AI_Output(hero, self, "Info_Mod_Onar_Umgehauen_15_01"); //Co wiec teraz?
			AI_Output(self, hero, "Info_Mod_Onar_Umgehauen_32_02"); //(irred) Tak, przepraszam, moze wrócic, ten szum. Teraz wyjdz z tego miejsca!

			B_StartOtherRoutine	(Mod_100_BAU_Wasili_NW, "START");

			Mod_WM_WasiliQuest = 4;

			B_GivePlayerXP	(200);

			B_SetTopicStatus	(TOPIC_MOD_ADANOS_WASILI, LOG_SUCCESS);
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Onar_Umgehauen_32_03"); //No cóz, to bylo nic.
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Onar_Wasili_02 (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Wasili_02_Condition;
	information	= Info_Mod_Onar_Wasili_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Onar_Wasili_02_Condition()
{
	if (Mod_WM_WasiliSchnaps == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Wasili_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_32_00"); //Ach, mój zoladek pieprzowy. Ten ból, ten nacisk i mdlosci.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_32_01"); //Wyjezdzasz bardzo duzo na droge. Musisz mi pomóc i otrzymac lekarstwo, jak stara ziolo czarownica.
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_02_15_02"); //Dlaczego móglbym Ci pomóc?
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_32_03"); //Tak, mów co chcesz.

	Info_ClearChoices	(Info_Mod_Onar_Wasili_02);

	if (Mod_WM_WasiliQuest == 3)
	{
		Info_AddChoice	(Info_Mod_Onar_Wasili_02, "Niech Wasili obejmie stare stanowisko w gospodarstwie.", Info_Mod_Onar_Wasili_02_B);
	};

	Info_AddChoice	(Info_Mod_Onar_Wasili_02, "400 zlota.", Info_Mod_Onar_Wasili_02_A);
};

FUNC VOID Info_Mod_Onar_Wasili_02_B()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_02_B_15_00"); //Niech Wasili obejmie stare stanowisko w gospodarstwie.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_B_32_01"); //Co wrócila do stoczni ragamuffin.....
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_02_C_15_02"); //Tak wiec, wszystko w porzadku, nie ---
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_B_32_03"); //To wszystko jest w porzadku, on moze wrócic. Teraz spieszyc sie.
	
	B_StartOtherRoutine	(Mod_100_BAU_Wasili_NW, "START");

	Mod_WM_WasiliQuest = 4;

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_ADANOS_WASILI, "Po spozyciu przygotowanych schnappów Onar narzeka na ból brzucha. Mialem go leczyc u Sagitty.");

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_WASILI, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Onar_Wasili_02);
};

FUNC VOID Info_Mod_Onar_Wasili_02_A()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_02_A_15_00"); //400 zlota.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_A_32_01"); //Co? Przekrój gardla.....
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_02_C_15_02"); //Tak wiec, wszystko w porzadku, nie ---
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_A_32_03"); //Wszystko jest w porzadku, czlowiek. Oto zloto, a teraz spiesz sie.

	B_GiveInvItems	(self, hero, ItMi_Gold, 400);

	B_LogEntry	(TOPIC_MOD_ADANOS_WASILI, "Po spozyciu przygotowanych schnappów Onar narzeka na ból brzucha. Mialem go leczyc u Sagitty.");

	Info_ClearChoices	(Info_Mod_Onar_Wasili_02);
};

INSTANCE Info_Mod_Onar_Wasili_03 (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Wasili_03_Condition;
	information	= Info_Mod_Onar_Wasili_03_Info;
	permanent	= 0;
	important	= 0;
	description	= "To pomoze Ci w tym.";
};

FUNC INT Info_Mod_Onar_Wasili_03_Condition()
{
	if (Npc_HasItems(hero, ItPo_OnarsTrank) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Wasili_03_Info()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_03_15_00"); //To pomoze Ci w tym.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_03_32_01"); //Ahh, w koncu. Prosze mi to dac.

	B_GiveInvItems	(hero, self, ItPo_OnarsTrank, 1);

	B_UseItem	(self, ItPo_OnarsTrank);

	AI_Output(self, hero, "Info_Mod_Onar_Wasili_03_32_02"); //Ach, teraz jestem duzo lepszy. Po co tam stoicie? Nie masz co robic?

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Onar_Wasili_03_15_03"); //Tak, mozesz powiedziec, ze on sie poprawia.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Onar_Dieb (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Dieb_Condition;
	information	= Info_Mod_Onar_Dieb_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Onar_Dieb_Condition()
{
	if (Kapitel >= 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Onar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Dieb_Info()
{
	AI_Output(self, hero, "Info_Mod_Onar_Dieb_32_00"); //Hej!
	AI_Output(hero, self, "Info_Mod_Onar_Dieb_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Onar_Dieb_32_02"); //Mam dla Ciebie cos do zrobienia.
	AI_Output(self, hero, "Info_Mod_Onar_Dieb_32_03"); //W ostatnim czasie z magazynu brakuje coraz wiecej towarów.
	AI_Output(self, hero, "Info_Mod_Onar_Dieb_32_04"); //Znajdz zlodziej i przynies go z powrotem do mnie.

	Npc_ExchangeRoutine	(Mod_785_BAU_Gunnar_NW, "DIEB");

	Log_CreateTopic	(TOPIC_MOD_BAUER_DIEB, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BAUER_DIEB, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BAUER_DIEB, "Jeden z rolników kradnie towary z magazynu Onar. Mam go zlapac i przyniesc z powrotem.");
};

INSTANCE Info_Mod_Onar_Dieb_Erwischt (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Dieb_Erwischt_Condition;
	information	= Info_Mod_Onar_Dieb_Erwischt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem rzeczy.";
};

FUNC INT Info_Mod_Onar_Dieb_Erwischt_Condition()
{
	if (Mod_Gunnar_Partner == FALSE)
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 20)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 6)
	&& (Npc_HasItems(hero, ItFo_Water) >= 10)
	&& (Npc_KnowsInfo(hero, Info_Mod_Gunnar_Flucht))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Dieb_Erwischt_Info()
{
	AI_Output(hero, self, "Info_Mod_Onar_Dieb_Erwischt_15_00"); //Dostalem rzeczy.
	AI_Output(self, hero, "Info_Mod_Onar_Dieb_Erwischt_32_01"); //Bardzo dobry. Daj mi ja.

	Npc_RemoveInvItems	(hero, ItFo_MuttonRaw, 20);
	Npc_RemoveInvItems	(hero, ItFo_Cheese, 6);
	Npc_RemoveInvItems	(hero, ItFo_Water, 10);

	B_ShowGivenThings	("20 surowego miesa, 6 serów i 10 dodanych wody");

	B_LogEntry	(TOPIC_MOD_BAUER_DIEB, "Przynieslilem te rzeczy do Onar.");

	AI_Output(self, hero, "Info_Mod_Onar_Dieb_Erwischt_32_02"); //Oto Twoja nagroda.

	B_GivePlayerXP	(100);

	B_Göttergefallen(2, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_BAUER_DIEB, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Onar_BauernFuerAkil (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_BauernFuerAkil_Condition;
	information	= Info_Mod_Onar_BauernFuerAkil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rolnik Telbor chce ponownie uruchomic gospodarstwo Akila.";
};

FUNC INT Info_Mod_Onar_BauernFuerAkil_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Onar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Telbor_PilgerTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_BauernFuerAkil_Info()
{
	AI_Output(hero, self, "Info_Mod_Onar_BauernFuerAkil_15_00"); //Rolnik Telbor chce ponownie uruchomic gospodarstwo Akila.
	AI_Output(self, hero, "Info_Mod_Onar_BauernFuerAkil_32_01"); //A co mnie obchodzi?
	AI_Output(hero, self, "Info_Mod_Onar_BauernFuerAkil_15_02"); //Potrzebuje jeszcze dwóch gospodarzy i pokojówki, aby mu pomóc.
	AI_Output(hero, self, "Info_Mod_Onar_BauernFuerAkil_15_03"); //Na pewno mozna kogos oszczedzic na farmie.
	AI_Output(self, hero, "Info_Mod_Onar_BauernFuerAkil_32_04"); //Hmm. Dobrze, ze wyslemy trzech moich mezczyzn do gospodarstwa Akila. Na pewno jest cos do zdobycia.
};

INSTANCE Info_Mod_Onar_Pickpocket (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Pickpocket_Condition;
	information	= Info_Mod_Onar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Onar_Pickpocket_Condition()
{
	C_Beklauen	(100, ItMi_Gold, 43);
};

FUNC VOID Info_Mod_Onar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Onar_Pickpocket);

	Info_AddChoice	(Info_Mod_Onar_Pickpocket, DIALOG_BACK, Info_Mod_Onar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Onar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Onar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Onar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Onar_Pickpocket);
};

FUNC VOID Info_Mod_Onar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Onar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Onar_Pickpocket);

		Info_AddChoice	(Info_Mod_Onar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Onar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Onar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Onar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Onar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Onar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Onar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Onar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Onar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Onar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Onar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Onar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Onar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Onar_EXIT (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_EXIT_Condition;
	information	= Info_Mod_Onar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Onar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Onar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
