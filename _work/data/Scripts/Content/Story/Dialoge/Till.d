var int MerkLebenspunkteTill;
var int MerkLebenspunkteHeldTill;

INSTANCE Info_Mod_Till_Hi (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Hi_Condition;
	information	= Info_Mod_Till_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Till_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Till_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Till_Hi_24_01"); //Jestem Till, pochodze z gospodarstwa Sekob.
};

INSTANCE Info_Mod_Till_Bronko (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Bronko_Condition;
	information	= Info_Mod_Till_Bronko_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bronko kazal ci dostac tylek na pole.";
};

FUNC INT Info_Mod_Till_Bronko_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_Bronko_Info()
{
	AI_Output(hero, self, "Info_Mod_Till_Bronko_15_00"); //Bronko kazal ci dostac tylek na pole.
	AI_Output(self, hero, "Info_Mod_Till_Bronko_24_01"); //Jak mówi Bronko, moze to zrobic sam.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "Liczniki frezarskie Do. Mysle, ze bede musial przygotowac sie do biegu.");
};

INSTANCE Info_Mod_Till_Bronko02 (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Bronko02_Condition;
	information	= Info_Mod_Till_Bronko02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bronko mówi, ze najpierw nalezy oczyscic nos.";
};

FUNC INT Info_Mod_Till_Bronko02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Streit02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_Bronko02_Info()
{
	AI_Output(hero, self, "Info_Mod_Till_Bronko02_15_00"); //Bronko mówi, ze najpierw nalezy oczyscic nos.
	AI_Output(self, hero, "Info_Mod_Till_Bronko02_24_01"); //Ten pompatyczny glupiec nie potrafi nawet dodac jednego i drugiego.
	AI_Output(hero, self, "Info_Mod_Till_Bronko02_15_02"); //Czy mozna to zrobic?
	AI_Output(self, hero, "Info_Mod_Till_Bronko02_24_03"); //Nie ma to znaczenia. Lepiej zapytac Bronko.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "Chce zapytac Bronka, co to znaczy....");
};

INSTANCE Info_Mod_Till_Bronko03 (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Bronko03_Condition;
	information	= Info_Mod_Till_Bronko03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bronko zsumowal jeden i jeden (....) )";
};

FUNC INT Info_Mod_Till_Bronko03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Streit03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_Bronko03_Info()
{
	AI_Output(hero, self, "Info_Mod_Till_Bronko03_15_00"); //Bronko polozyl razem jeden i jeden i jedenastu.
	AI_Output(self, hero, "Info_Mod_Till_Bronko03_24_01"); //Syn suki moze wykonac matematyke. Ale on jest synem suki. Powiedz mu to.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "Teraz mam powiedziec Bronku, ze jest synem suki.");
};

INSTANCE Info_Mod_Till_Bronko04 (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Bronko04_Condition;
	information	= Info_Mod_Till_Bronko04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Za minute uslyszysz od Bronka.";
};

FUNC INT Info_Mod_Till_Bronko04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Streit04))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_Bronko04_Info()
{
	AI_Output(hero, self, "Info_Mod_Till_Bronko04_15_00"); //Za minute uslyszysz od Bronka.
	AI_Output(self, hero, "Info_Mod_Till_Bronko04_24_01"); //Powiedz braggart, aby przyjsc tutaj. Powiedz mu to.
	AI_Output(hero, self, "Info_Mod_Till_Bronko04_15_02"); //Dlaczego nie powiesz mu tego samemu?
	AI_Output(self, hero, "Info_Mod_Till_Bronko04_24_03"); //Bede, to zrobie.

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "Rozstrzygnalem ten spór, pozwalajac im na to, by sobie nawzajem poszli. Wreszcie milczenie. Moze przegrany ma na nim zloto.");
	B_SetTopicStatus	(TOPIC_MOD_BRONKO_STREIT, LOG_SUCCESS);

	B_GivePlayerXP	(50);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_Attack	(self, Mod_103_BAU_Bronko_NW, AR_None, 0);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Till_InnosNase (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_InnosNase_Condition;
	information	= Info_Mod_Till_InnosNase_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Till_InnosNase_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_InnosNase_Info()
{
	AI_Output(self, hero, "Info_Mod_Till_InnosNase_24_00"); //Ah, wiec teraz mozemy zaczac.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase_24_01"); //Pokazujesz nam droge, a my podazamy za Toba i rozgladamy sie uwaznie.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase_24_02"); //Im szybciej sie skonczylismy, tym szybciej mozemy wydostac sie z tego smrodu.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ASSIS");
	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "ASSIS");
	B_StartOtherRoutine	(Mod_968_MIL_Bilgot_NW, "ASSIS");
	
	Mod_744_MIL_Pablo_NW.aivar[AIV_IGNORE_Theft] = TRUE;
	Mod_968_MIL_Bilgot_NW.aivar[AIV_IGNORE_Theft] = TRUE;
};

INSTANCE Info_Mod_Till_InnosNase2 (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_InnosNase2_Condition;
	information	= Info_Mod_Till_InnosNase2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Till_InnosNase2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Halbtoter_Hi))
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_08") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_InnosNase2_Info()
{
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_00"); //Cóz, dzwieki jak robota opiekowaly sie tymi mrocznymi postaciami, kimkolwiek oni byli.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_01"); //Musi to byc walka. Jaskinia nawet sie zawalila.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_02"); //No cóz, tak czy inaczej, praca zostala wykonana i mozemy isc, prawda?
	AI_Output(hero, self, "Info_Mod_Till_InnosNase2_15_03"); //Lord Hagen powiedzial, ze nalezy usunac zródlo.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_04"); //Czy to ma oznaczac....? Oh, nope.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_05"); //Czy robot nie bylby przynajmniej w stanie sprzatac po sobie?
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_06"); //Teraz do zrobienia chwytu.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_07"); //A mimo to gospodarstwo bylo tak piekne....

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ASSIS2");
	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "ASSIS2");
	B_StartOtherRoutine	(Mod_968_MIL_Bilgot_NW, "ASSIS2");

	B_LogEntry	(TOPIC_MOD_MILIZ_NASE, "Najwyrazniej robot zabil w pobliskiej jaskini kilka grzmotów, które teraz tona. Straz miejska wyprowadzi problem pod ziemie.");

	B_KillNpc	(Mod_7681_ASS_Halbtoter_NW);
};

INSTANCE Info_Mod_Till_InnosNase3 (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_InnosNase3_Condition;
	information	= Info_Mod_Till_InnosNase3_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Till_InnosNase3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_InnosNase))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Till_InnosNase2))
	&& (Npc_RefuseTalk(self) == FALSE)
	&& (Npc_GetDistToWP(hero, "NW_CITY_CONNECT_FOREST") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_03") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_04") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_06") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_07") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_08") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_09") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_10") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_11") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_05") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_02") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_01") > 1500)
	&& (Npc_GetDistToWP(hero, "NW_CITY_TO_LIGHTHOUSE_04") > 1500)
	&& (Npc_GetDistToWP(hero, "NW_CITY_TO_LIGHTHOUSE_03") > 1500)
	&& (Npc_GetDistToWP(hero, "NW_CITY_TO_LIGHTHOUSE_02") > 1500)
	&& (Npc_GetDistToWP(hero, "NW_CITY_TO_LIGHTHOUSE_01") > 1500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_InnosNase3_Info()
{
	AI_Output(self, hero, "Info_Mod_Till_InnosNase3_24_00"); //Nie pozostalo tu jeszcze odrobina otarc. Musimy wrócic.

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk (self, 30);
};

INSTANCE Info_Mod_Till_NachGildenstories (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_NachGildenstories_Condition;
	information	= Info_Mod_Till_NachGildenstories_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do konca?";
};

FUNC INT Info_Mod_Till_NachGildenstories_Condition()
{
	if (Mod_TillChange == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_NachGildenstories_Info()
{
	AI_Output(hero, self, "Info_Mod_Till_NachGildenstories_15_00"); //Do konca?

	if (hero.guild == GIL_VLK)
	|| (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_01"); //Co, co ty....? Och, przebacz mi, pan!
	};

	if (hero.guild == GIL_VLK)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_02"); //Po strzelaniu magowie uratowali nas wszystkich z tych lodowców, nie bylo watpliwosci, ze chcialem sluzyc klasztorowi.
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_03"); //Aby byc sluga Inno musi byc najwiekszy.
	}
	else if (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_04"); //Po tym jak magicy uratowali nas wszystkich od tych potworów, nie bylo watpliwosci, ze ja równiez chcialbym walczyc o wasza sprawe.
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_05"); //Aby byc sluga Adanosa musi byc najwiekszy.
	};

	if (hero.guild == GIL_VLK)
	|| (hero.guild == GIL_NOV)
	{
		AI_Output(hero, self, "Info_Mod_Till_NachGildenstories_15_06"); //Cóz, nie zawsze nie zawsze nieszkodliwe.
	};

	if (hero.guild == GIL_VLK)
	{
		AI_Output(hero, self, "Info_Mod_Till_NachGildenstories_15_07"); //Niektórzy nowicjusze stracili zycie w epoce lodowcowej.
	}
	else if (hero.guild == GIL_NOV)
	{
		AI_Output(hero, self, "Info_Mod_Till_NachGildenstories_15_08"); //Niektórzy bojownicy stracili zycie na pastwisku.
	};

	if (hero.guild == GIL_VLK)
	|| (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_09"); //Co!

		AI_TurnAway	(self, hero);
	};

	if (hero.guild == GIL_VLK)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_10"); //Dlatego tak szybko zaprowadzili mnie do klasztoru.
	}
	else if (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_11"); //Dlatego tak szybko uczynili mnie nowicjuszem.
	};

	if (hero.guild == GIL_VLK)
	|| (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_12"); //Jesli to pójdzie dobrze......
	};

	if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_13"); //Co, co ty....? Ach, zabójca smoka.
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_14"); //Po tym, jak najemnicy uwolnili nas wszystkich od tych smoków, nie bylo watpliwosci, ze ja równiez chcialbym walczyc u waszego boku.
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_15"); //Bycie najemnikiem musi byc najwiekszym. Mój ojciec nie ma nic do powiedzenia teraz!
	};

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Till_ArenaFighter (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_ArenaFighter_Condition;
	information	= Info_Mod_Till_ArenaFighter_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Till_ArenaFighter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Turnier1))
	&& (Mod_MilizTurnier == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_ArenaFighter_Info()
{
	AI_Output(self, hero, "Info_Mod_Till_ArenaFighter_24_00"); //Hej!
};

INSTANCE Info_Mod_Till_Kampf (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Kampf_Condition;
	information	= Info_Mod_Till_Kampf_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jestes moim pierwszym przeciwnikiem w turnieju.";
};

FUNC INT Info_Mod_Till_Kampf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Turnier1))
	&& (Mod_MilizTurnier	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_Kampf_Info()
{
	AI_Output(hero, self, "Info_Mod_Till_Kampf_15_00"); //Jestes moim pierwszym przeciwnikiem w turnieju.
	AI_Output(self, hero, "Info_Mod_Till_Kampf_24_01"); //Czy jestes jednym z innych kandydatów?
	AI_Output(hero, self, "Info_Mod_Till_Kampf_15_02"); //Ma byc.
	AI_Output(self, hero, "Info_Mod_Till_Kampf_24_03"); //Wszystko dobrze, gotowe?

	self.fight_tactic = FAI_HUMAN_STRONG;

	Info_ClearChoices	(Info_Mod_Till_Kampf);
	
	Info_AddChoice	(Info_Mod_Till_Kampf, "Jeszcze nie......", Info_Mod_Till_Kampf_Nein);
	Info_AddChoice	(Info_Mod_Till_Kampf, "Tak, zacznijmy....", Info_Mod_Till_Kampf_Ja);
};

FUNC VOID Info_Mod_Till_Kampf_Nein()
{
	AI_Output(hero, self, "Info_Mod_Till_Kampf_Nein_15_00"); //Jeszcze nie......
	AI_Output(self, hero, "Info_Mod_Till_Kampf_Nein_24_01"); //Cokolwiek mówisz. Przyjedz jak tylko bedziesz gotowy.

	Info_ClearChoices	(Info_Mod_Till_Kampf);
};

FUNC VOID Info_Mod_Till_Kampf_Ja()
{
	AI_Output(hero, self, "Info_Mod_Till_Kampf_Ja_15_00"); //Tak, zacznijmy....
	AI_Output(self, hero, "Info_Mod_Till_Kampf_Ja_24_01"); //Idziemy tutaj!

	Mod_MilizTurnier	=	1;

	AI_StopProcessInfos	(self);
	B_Attack	(self, hero, AR_NONE, 1);
};

INSTANCE Info_Mod_Till_KampfEnde (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_KampfEnde_Condition;
	information	= Info_Mod_Till_KampfEnde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Till_KampfEnde_Condition()
{
	if (Mod_MilizTurnier == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_KampfEnde_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Till_KampfEnde_24_00"); //Jestes naprawde dobry. Wracam do farmy mojego ojca, moze spotkamy sie gdzies znowu.

			Mod_MilizTurnier = 2;
			
			B_StartOtherRoutine	(Mod_541_NONE_Till_NW,	"PRESTART");
				
			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "Zwyciezylem w walce z Tillem. Powinienem teraz porozmawiac z Panem Andre.");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Till_KampfEnde_24_01"); //No cóz, to bylo nic. Teraz moge zostac czlonkiem milicji.

			Mod_MilizTurnier = 3;

			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "Stracilem walke z Tillem. Powinienem teraz porozmawiac z Panem Andre.");

			B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_FAILED);
		}
		else //FIGHT_CANCEL
		{
			AI_Output (self, other,"Info_Mod_Till_KampfEnde_24_02"); //Uciekles i tak wygralem. To bylo dla Ciebie glupia rzecza.

			Mod_MilizTurnier = 3;

			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "Stracilem walke z Tillem. Powinienem teraz porozmawiac z Panem Andre.");

			B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_FAILED);
		};
		
					
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};

	self.fight_tactic = FAI_HUMAN_COWARD;

	B_StartOtherRoutine	(Mod_1176_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_1177_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_1175_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "START");
};

INSTANCE Info_Mod_Till_Pickpocket (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Pickpocket_Condition;
	information	= Info_Mod_Till_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Till_Pickpocket_Condition()
{
	C_Beklauen	(20, ItMi_Gold, 10);
};

FUNC VOID Info_Mod_Till_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Till_Pickpocket);

	Info_AddChoice	(Info_Mod_Till_Pickpocket, DIALOG_BACK, Info_Mod_Till_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Till_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Till_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Till_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Till_Pickpocket);
};

FUNC VOID Info_Mod_Till_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Till_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Till_Pickpocket);

		Info_AddChoice	(Info_Mod_Till_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Till_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Till_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Till_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Till_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Till_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Till_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Till_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Till_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Till_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Till_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Till_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Till_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Till_EXIT (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_EXIT_Condition;
	information	= Info_Mod_Till_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Till_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Till_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
