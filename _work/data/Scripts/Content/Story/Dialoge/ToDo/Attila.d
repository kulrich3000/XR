INSTANCE Info_Mod_Attila_Hi (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Hi_Condition;
	information	= Info_Mod_Attila_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "I ciesz sie, ze opusciles loch?";
};

FUNC INT Info_Mod_Attila_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_WelcomeBack))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Attila_Hi_15_00"); //Ciesz sie wiec, ze opusciles loch?
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_01"); //Nie sadze, aby pytanie to wymagalo odpowiedzi, syna sprytnego.
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_02"); //Odegral pan swoja role w moim wyzwoleniu i dziekuje za to.
	AI_Output(hero, self, "Info_Mod_Attila_Hi_15_03"); //Co zamierzasz teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_04"); //No cóz. Cassia bezposrednio mnie przydzielila.
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_05"); //Poniewaz jednak jestem nieco zardzewialy po czasie spedzonym w lochu, powinienem zabrac kogos ze mna na wsparcie.
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_06"); //Slyszalem, jak podczas mojej nieobecnosci usunales kilka gangów?
	AI_Output(hero, self, "Info_Mod_Attila_Hi_15_07"); //Nie mialem wyboru.....
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_08"); //Czy wsparlibyscie mnie swoim doswiadczeniem?
	AI_Output(hero, self, "Info_Mod_Attila_Hi_15_09"); //Wbrew temu co?
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_10"); //Powiedzieli, ze niedoszly niedoszly bedzie mial balagan z Meldorem i nie zaplacil za bagna.
	AI_Output(hero, self, "Info_Mod_Attila_Hi_15_11"); //Wszystko w porzadku, ale tylko raz!
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_12"); //Podazaj za mna, idz za mna.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MOECHTEGERN");

	Wld_InsertNpc	(Mod_7702_OUT_Moechtegern_NW,	"NW_CITY_HABOUR_KASERN_05_01");
};

INSTANCE Info_Mod_Attila_Moechtegern (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Moechtegern_Condition;
	information	= Info_Mod_Attila_Moechtegern_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_Moechtegern_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_Hi))
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_KASERN_05_01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_Moechtegern_Info()
{
	var c_npc Attila; Attila = Hlp_GetNpc(Mod_760_NONE_Attila_NW);
	var c_npc Moechtegern; Moechtegern = Hlp_GetNpc(Mod_7702_OUT_Moechtegern_NW);

	TRIA_Invite(Moechtegern);
	TRIA_Start();

	TRIA_Next(Attila);

	AI_GotoNpc	(Attila, Moechtegern);

	AI_TurnToNpc	(Attila, Moechtegern);
	AI_TurnToNpc	(Moechtegern, Attila);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_09_00"); //Oh, syn zielonego zamglenia.... gdzie dostales to wszystko?
	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_09_01"); //Du scheinst mir eigentlich nicht mit dem nötigen Reichtum gesegnet, es auf "uczciwy" Wege zu erstehen.

	TRIA_Next(Moechtegern);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_04_02"); //O czym mówicie o piekle? Moje ziolo nie jest twoim biznesem.
	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_04_03"); //Upewnij sie wiec, ze wyjdziesz z lózka zanim zatopie mój but tam, gdzie nie ma slonca.

	TRIA_Next(Attila);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_09_04"); //W takim przypadku pozwole wam poinformowac, ze przyszedlem, zeby zabrac bagno i glowe.

	TRIA_Next(Moechtegern);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_04_05"); //Lepiej znowu pelznac pod kamieniem lub nie bedziesz mieszkac do zobaczenia nastepnego dnia z przyjacielem.

	Moechtegern.guild = GIL_STRF;
	Npc_SetTrueGuild	(Moechtegern, GIL_STRF);

	TRIA_Next(Attila);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_09_06"); //Dajcie mi pozdrowienie wiecznej ciemnosci. Beliar oczekuje cie.

	TRIA_Finish();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Attila_Moechtegern2 (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Moechtegern2_Condition;
	information	= Info_Mod_Attila_Moechtegern2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_Moechtegern2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_Moechtegern))
	&& (Npc_IsDead(Mod_7702_OUT_Moechtegern_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_Moechtegern2_Info()
{
	AI_GotoNpc	(self, Mod_7702_OUT_Moechtegern_NW);

	AI_PlayAni	(self, "T_PLUNDER");

	AI_GotoNpc	(self, hero);

	AI_TurnToNpc	(self, hero);
	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern2_09_00"); //Teraz jednak powinnismy wyjsc przed nadejsciem milicji.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOMELDOR");
};

INSTANCE Info_Mod_Attila_Moechtegern3 (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Moechtegern3_Condition;
	information	= Info_Mod_Attila_Moechtegern3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_Moechtegern3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_Moechtegern2))
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_POOR_AREA_PATH_20") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_Moechtegern3_Info()
{
	var c_npc Attila; Attila = Hlp_GetNpc(Mod_760_NONE_Attila_NW);
	var c_npc Meldor; Meldor = Hlp_GetNpc(Mod_597_NONE_Meldor_NW);

	TRIA_Invite(Meldor);
	TRIA_Start();

	TRIA_Next(Attila);

	AI_GotoNpc	(Attila, Meldor);

	AI_TurnToNpc	(Attila, Meldor);
	AI_TurnToNpc	(Meldor, Attila);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern3_09_00"); //Oto znów twoja bagnista chwast, ojca biznesu.

	TRIA_Next(Meldor);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern3_04_01"); //W kazdym razie dziekuje. Mozesz byc liczony.

	TRIA_Next(Attila);

	TRIA_Finish();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOLAGER");
};

INSTANCE Info_Mod_Attila_Moechtegern4 (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Moechtegern4_Condition;
	information	= Info_Mod_Attila_Moechtegern4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_Moechtegern4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_Moechtegern3))
	&& (Npc_GetDistToWP(self, "NW_CITY_KANAL_ROOM_05_03") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_Moechtegern4_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern4_09_00"); //Dziekujemy za wsparcie. Wez ten skromny dar jako znak mojej wdziecznosci.

	CreateInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItPo_Tiergift, 1);

	B_ShowGivenThings	("Otrzymane 200 zloto i trucizna zwierzeca");

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern4_09_01"); //Tak, ostatnio udowodniles, ze Bóg poblogoslawil cie madroscia.

	B_GivePlayerXP	(150);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FREE");
};

INSTANCE Info_Mod_Attila_Umzug (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Umzug_Condition;
	information	= Info_Mod_Attila_Umzug_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sie dzieje? Gdzie wszyscy sie udali?";
};

FUNC INT Info_Mod_Attila_Umzug_Condition()
{
	if (Mod_Diebe_Weg == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_Umzug_Info()
{
	AI_Output(hero, self, "Info_Mod_Attila_Umzug_15_00"); //Co sie dzieje? Gdzie wszyscy sie udali?
	AI_Output(self, hero, "Info_Mod_Attila_Umzug_09_01"); //Nasza piwniczna spolecznosc idzie do Khoraty, syna ignorancji.
	AI_Output(self, hero, "Info_Mod_Attila_Umzug_09_02"); //Od czasu wydarzen demonicznych cieni obywatele i straznicy byli bardziej podejrzliwi i ostrozni niz kiedykolwiek wczesniej.
	AI_Output(self, hero, "Info_Mod_Attila_Umzug_09_03"); //Nie bedzie wiecej mozliwosci w tym miescie niz kilka sztuczek.
	AI_Output(hero, self, "Info_Mod_Attila_Umzug_15_04"); //Tak wiec stalo sie z nami i z Khorinisem.
	AI_Output(self, hero, "Info_Mod_Attila_Umzug_09_05"); //Tylko w ten sposób mozna uniknac uczciwego zawodu....
	AI_Output(self, hero, "Info_Mod_Attila_Umzug_09_06"); //Nawiasem mówiac, Cassia poprosila mnie, abym opowiedziala ci, zebys poszedl do tawerny Khoratas.
	AI_Output(self, hero, "Info_Mod_Attila_Umzug_09_07"); //Chodzi o znalezienie nowego miejsca na pobyt.
	AI_Output(hero, self, "Info_Mod_Attila_Umzug_15_08"); //Wlasciwie, bede. Do zobaczenia wkrótce.

	Log_CreateTopic	(TOPIC_MOD_DIEB_UMZUG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_UMZUG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_UMZUG, "Po historii dreczycieli duszy trudno odniesc sukces w Khorinis, wiec nasza piwnica przenosi sie do Khoraty. Pierwszym krokiem jest znalezienie tam nowego zakwaterowania. W tym celu mam pojechac do tawerny Khoratas.");
};

INSTANCE Info_Mod_Attila_Pickpocket (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Pickpocket_Condition;
	information	= Info_Mod_Attila_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Attila_Pickpocket_Condition()
{
	C_Beklauen	(87, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Attila_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Attila_Pickpocket);

	Info_AddChoice	(Info_Mod_Attila_Pickpocket, DIALOG_BACK, Info_Mod_Attila_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Attila_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Attila_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Attila_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Attila_Pickpocket);
};

FUNC VOID Info_Mod_Attila_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Attila_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Attila_Pickpocket);

		Info_AddChoice	(Info_Mod_Attila_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Attila_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Attila_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Attila_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Attila_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Attila_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Attila_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Attila_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Attila_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Attila_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Attila_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Attila_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Attila_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Attila_EXIT (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_EXIT_Condition;
	information	= Info_Mod_Attila_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Attila_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Attila_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
