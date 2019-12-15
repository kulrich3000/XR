INSTANCE Info_Mod_Torlof_Hi (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Hi_Condition;
	information	= Info_Mod_Torlof_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Torlof_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torlof_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Torlof_Hi_01_01"); //Ty nadal zyjesz.
	AI_Output(self, hero, "Info_Mod_Torlof_Hi_01_02"); //Nie sadze, ze znów cie zobaczylabym.
};

INSTANCE Info_Mod_Torlof_Auftrag (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Auftrag_Condition;
	information	= Info_Mod_Torlof_Auftrag_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lares wyslal mnie.";
};

FUNC INT Info_Mod_Torlof_Auftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_WillSoeldner))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torlof_Hi))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Auftrag_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Auftrag_15_00"); //Lares wysyla mnie. Chce, aby dal mi pan prace.
	AI_Output(self, hero, "Info_Mod_Torlof_Auftrag_01_01"); //Okay. Jak wiecie, Paladynowie zdradzili wówczas naszego lidera Lee. Dlatego tez zostal wrzucony do zapory.
	AI_OUtput(self, hero, "Info_Mod_Torlof_Auftrag_01_02"); //Nic wiec dziwnego, ze buntujemy sie przeciwko paladynom.
	AI_Output(self, hero, "Info_Mod_Torlof_Auftrag_01_03"); //Potrzebujemy czegos, co mozemy wykorzystac, aby wywrzec na nich presje. Ale Paladynowie znaja nas, ale tu jestes nowy.
	AI_Output(self, hero, "Info_Mod_Torlof_Auftrag_01_04"); //Wejdz do miasta i dowiedz sie, co mozemy zrobic z paladynami.
	AI_Output(self, hero, "Info_Mod_Torlof_Auftrag_01_05"); //Musisz cos zdobyc lub dowiedziec sie, jak mozemy wycisnac paladynów w miescie.
	AI_Output(hero, self, "Info_Mod_Torlof_Auftrag_15_06"); //A jak mam postepowac?
	AI_Output(self, hero, "Info_Mod_Torlof_Auftrag_01_07"); //Pomysl o czyms. Jesli nie wiesz co robic, zapytaj Gorna, kogo pamietasz z czasów kolonii. Ma kontakty w miescie.

	Log_CreateTopic	(TOPIC_MOD_TORLOFSPIONAGE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TORLOFSPIONAGE, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_SÖLDNER, TOPIC_MOD_TORLOFSPIONAGE, "Dowodem mojej lojalnosci wobec Lee jest fakt, ze jestem tutaj, zeby szpiegowac na Paladynach.", "Torlof chce, abym dowiedzial sie lub nabyl cos, co mozna wykorzystac przeciwko paladynom. Moze Gorn moze da mi kilka wskazówek.");
};

INSTANCE Info_Mod_Torlof_Kristall (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Kristall_Condition;
	information	= Info_Mod_Torlof_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tu krysztal Paladyn.";
};

FUNC INT Info_Mod_Torlof_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Auftrag))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Dieb))
	&& (Npc_HasItems(hero, Mod_PaladinKristall) >= 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Kristall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Kristall_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Kristall_15_00"); //Mam tu krysztal Paladyn.

	B_GiveInvItems	(hero, self, Mod_PaladinKristall, 1);
	
	AI_Output(self, hero, "Info_Mod_Torlof_Kristall_01_01"); //Magiczny krysztal. Najpierw musze to omówic z Laresem. Wróc za kilka godzin.

	B_LogEntry	(TOPIC_MOD_TORLOFSPIONAGE, "Dowiedzialem sie od Gorna, ze Paladin Lothar ma slabosc na alkohol i duze usta w górnej cwiartce.");
	B_SetTopicStatus	(TOPIC_MOD_TORLOFSPIONAGE, LOG_SUCCESS);
	
	B_GivePlayerXP	(400);

	Npc_SetRefuseTalk(self, 120);
};

INSTANCE Info_Mod_Torlof_KristallEnd (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_KristallEnd_Condition;
	information	= Info_Mod_Torlof_KristallEnd_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torlof_KristallEnd_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Kristall))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_KristallEnd_Info()
{
	AI_Output(self, hero, "Info_Mod_Torlof_KristallEnd_01_00"); //Och, tam jestescie. Cóz, naprawde nie mozemy nic zrobic z krysztalem w paladynach.
	AI_Output(self, hero, "Info_Mod_Torlof_KristallEnd_01_01"); //Moglibysmy ja sprzedac za najwyzej kilka monet. Mamy jednak strategicznie lepszy pomysl.
	AI_Output(self, hero, "Info_Mod_Torlof_KristallEnd_01_02"); //Jesli naprawde chcesz dolaczyc do nas, musisz przyniesc krysztal i ten list do magów wodnych w miejscu ich wykopalisk.

	CreateInvItems	(hero, Mod_PaladinKristall, 1);
	CreateInvItems	(hero, ItWr_TorlofForSaturas, 1);

	Npc_RemoveInvItems	(self, Mod_PaladinKristall, 1);

	B_ShowGivenThings	("Krysztal pozaru i odebranych wiadomosci");

	AI_Output(self, hero, "Info_Mod_Torlof_Kristall_01_03"); //Nastepnie wracaja Panstwo do nas z oplata.

	Log_CreateTopic	(TOPIC_MOD_NL_KRISTALL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_KRISTALL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_KRISTALL, "Torlof kazal mi przyniesc krysztal ognia wraz z listem do magów wodnych. Powinienem go wyplacic.");
	
	Wld_InsertNpc	(Mod_7214_OUT_Halunke_NW, "PORTAL");
};

INSTANCE Info_Mod_Torlof_KristallEntgelt (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_KristallEntgelt_Condition;
	information	= Info_Mod_Torlof_KristallEntgelt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przekazalem krysztal.";
};

FUNC INT Info_Mod_Torlof_KristallEntgelt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lance_KristallEntgelt))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	&& (Npc_HasItems(hero, ItMi_MagicPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_KristallEntgelt_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_KristallEntgelt_15_00"); //Przekazalem krysztal i otrzymalem 1000 sztuk zlota i to opakowanie.

	B_ShowGivenThings	("1000 Zloto i dostarczony pakiet");

	Npc_RemoveInvItems	(hero, ItMi_Gold, 1000);
	Npc_RemoveInvItems	(hero, ItMi_MagicPaket, 1);

	AI_Output(self, hero, "Info_Mod_Torlof_KristallEntgelt_01_01"); //Doskonaly. Teraz nic nie stoi na przeszkodzie waszemu nagrywaniu. Dlaczego nie idziesz prosto do Lares.

	B_SetTopicStatus	(TOPIC_MOD_NL_KRISTALL, LOG_SUCCESS);

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_SÖLDNER, "Torlof uwaza, ze teraz moge byc najemnikiem.");

	B_Göttergefallen(2, 3);
};

INSTANCE Info_Mod_Torlof_NeueAufgabe (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_NeueAufgabe_Condition;
	information	= Info_Mod_Torlof_NeueAufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz dla mnie inna prace?";
};

FUNC INT Info_Mod_Torlof_NeueAufgabe_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Andre_Kristall))
	|| (Npc_KnowsInfo(hero, Info_Mod_Vatras_Kristall))
	|| (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Kristall)))
	&& (Mod_Gilde	==	0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Torlof_Auftrag))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_NeueAufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_NeueAufgabe_15_00"); //Masz dla mnie inna prace?
	AI_Output(self, hero, "Info_Mod_Torlof_NeueAufgabe_01_01"); //Zwyciezyles pierwszy test. Ale nie chcemy byc tacy, dostajesz druga szanse.
	AI_Output(hero, self, "Info_Mod_Torlof_NeueAufgabe_15_02"); //Co powinienem zrobic?
	AI_Output(self, hero, "Info_Mod_Torlof_NeueAufgabe_01_03"); //Przynies nam innego najemnika.

	Wld_InsertNpc	(Mod_200_NONE_Alvares_NW,	"NW_CITY_ENTRANCE_01");

	B_SetTopicStatus	(TOPIC_MOD_TORLOFSPIONAGE, LOG_FAILED);
	
	Log_CreateTopic	(TOPIC_MOD_TORLOF_NEUERANWÄRTER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TORLOF_NEUERANWÄRTER, LOG_RUNNING);
	
	B_LogEntry_More	(TOPIC_MOD_SÖLDNER, TOPIC_MOD_TORLOF_NEUERANWÄRTER, "Mam zabrac do Torlof nowego najemnika.", "Torlof kazal mi znalezc najemnika. Moze moze Gorn da mi wskazówke.");
};

INSTANCE Info_Mod_Torlof_Alvares (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Alvares_Condition;
	information	= Info_Mod_Torlof_Alvares_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla pana nowego kandydata.";
};

FUNC INT Info_Mod_Torlof_Alvares_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alvares_Hof))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Alvares_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Alvares_15_00"); //Mam dla pana nowego kandydata.
	AI_Output(self, hero, "Info_Mod_Torlof_Alvares_01_01"); //Kto?
	AI_Output(hero, self, "Info_Mod_Torlof_Alvares_15_02"); //Alvares. Walczyl z milicja i musialem go wyprowadzic z wiezienia.
	AI_Output(self, hero, "Info_Mod_Torlof_Alvares_01_03"); //Bardzo dobry. Zdales test. Teraz mozesz do nas dolaczyc.

	B_LogEntry_More	(TOPIC_MOD_SÖLDNER, TOPIC_MOD_TORLOF_NEUERANWÄRTER, "Zdalem egzamin.", "Moge teraz zostac najemnikiem.");
	B_SetTopicStatus	(TOPIC_MOD_TORLOF_NEUERANWÄRTER, LOG_SUCCESS);

	B_GivePlayerXP	(300);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Torlof_Hexen (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Hexen_Condition;
	information	= Info_Mod_Torlof_Hexen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torlof_Hexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Hi))
	&& (Mod_WM_Beeinflussend == 1)
	&& (Mod_TrfWoman == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Hexen_Info()
{
	AI_Output(self, hero, "Info_Mod_Torlof_Hexen_01_00"); //Wi, kiddo. Chcesz sie bawic? Chcesz wygladac tak jak Ty.
	AI_Output(hero, self, "Info_Mod_Torlof_Hexen_15_01"); //Wyraznie.
	AI_Output(self, hero, "Info_Mod_Torlof_Hexen_01_02"); //Co tak naprawde! Idzmy do pokoju.
	AI_Output(hero, self, "Info_Mod_Torlof_Hexen_15_03"); //Pewne. Jest tylko jeden problem.....
	AI_Output(self, hero, "Info_Mod_Torlof_Hexen_01_04"); //Och, nie badz niesmialy. Jaki problem?

	Mod_WM_Beeinflussend = 0;

	Info_ClearChoices	(Info_Mod_Torlof_Hexen);

	Info_AddChoice	(Info_Mod_Torlof_Hexen, "Ty ploniesz. Szybko.", Info_Mod_Torlof_Hexen_B);
	Info_AddChoice	(Info_Mod_Torlof_Hexen, "Na podwórzu stoi wiele goblinów, które groza mi.", Info_Mod_Torlof_Hexen_A);
};

FUNC VOID Info_Mod_Torlof_Hexen_B()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Hexen_B_15_00"); //Ty ploniesz. Szybko pozbyc sie ubran i biec wokól podwórka, aby ugasic plomienie.
	AI_Output(self, hero, "Info_Mod_Torlof_Hexen_B_01_01"); //Co? Wuahh, faktycznie, ogrzewaja ten ból.

	AI_UnequipArmor	(self);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Tak wiec po tym, jak obróce Torlof w szalenstwo, moge powiedziec Elenie o tym.");

	Info_ClearChoices	(Info_Mod_Torlof_Hexen);

	AI_StopProcessInfos	(self);

	AI_StartState	(self, ZS_Flee, 0, "");
};

FUNC VOID Info_Mod_Torlof_Hexen_A()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Hexen_A_15_00"); //Na podwórzu stoi wiele goblinów, które groza mi. Uczynimy to, a nastepnie dojdziemy do celu.
	AI_Output(self, hero, "Info_Mod_Torlof_Hexen_A_01_01"); //Jakie gobliny? Tak, wlasciwie, teraz widze ja równiez.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Tak wiec po tym, jak obróce Torlof w szalenstwo, moge powiedziec Elenie o tym.");

	Info_ClearChoices	(Info_Mod_Torlof_Hexen);

	AI_StopProcessInfos	(self);

	B_Attack	(self, Mod_798_SLD_Wolf_NW, AR_None, 0);
};

INSTANCE Info_Mod_Torlof_Grog (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Grog_Condition;
	information	= Info_Mod_Torlof_Grog_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem cos dla Ciebie.";
};

FUNC INT Info_Mod_Torlof_Grog_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Skip_Francis))
	&& (Npc_HasItems(hero, Mod_GrogPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Grog_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Grog_15_00"); //Dostalem cos dla Ciebie.
	AI_Output(self, hero, "Info_Mod_Torlof_Grog_01_01"); //Co masz na mysli?
	AI_Output(hero, self, "Info_Mod_Torlof_Grog_15_02"); //Pakiet grog.

	B_GiveInvItems	(hero, self, Mod_GrogPaket, 1);

	AI_Output(self, hero, "Info_Mod_Torlof_Grog_01_03"); //Najwyzszy czas. Wreszcie mamy tu znowu cos do picia.
	AI_Output(self, hero, "Info_Mod_Torlof_Grog_01_04"); //Oto Twoje zloto.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);
};

INSTANCE Info_Mod_Torlof_HaradLehrling (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling_Condition;
	information	= Info_Mod_Torlof_HaradLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Harad przyslal mi oferte.";
};

FUNC INT Info_Mod_Torlof_HaradLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Job))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling_15_00"); //Harad przyslal mi oferte.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling_01_01"); //Harad? Mamy Bennet. Robi wszystko, czego potrzebujemy.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling_01_02"); //Poza tym Harad's ma byc calkiem dziura. Dlaczego powinnismy dbac o jego oferte?
};

INSTANCE Info_Mod_Torlof_HaradLehrling2 (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling2_Condition;
	information	= Info_Mod_Torlof_HaradLehrling2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Spójrz na ten miecz.";
};

FUNC INT Info_Mod_Torlof_HaradLehrling2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling))
	&& (Npc_HasItems(hero, ItMw_HaradSchwert) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling2_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling2_15_00"); //Spójrz na ten miecz.

	B_GiveInvItems	(hero, self, ItMw_HaradSchwert, 1);

	EquipWeapon (self, ItMw_HaradSchwert);

	AI_DrawWeapon	(self);

	AI_PlayAni	(self, "T_1HSINSPECT");

	AI_RemoveWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling2_01_01"); //Naprawde nie jest zle. Nie jestem jednak ekspertem w zakresie mieczy i nie moge ocenic, czy jest to lepsze niz miecze Benneta.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling2_01_02"); //Jak konkurowac z Hockiem?
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling2_01_03"); //Powinien byc o twoim rozmiarze kolnierza, a ja moglem zobaczyc jak bron zachowuje sie w walce.
};

INSTANCE Info_Mod_Torlof_HaradLehrling3 (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling3_Condition;
	information	= Info_Mod_Torlof_HaradLehrling3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oczywiscie tak sie dzieje.";
};

FUNC INT Info_Mod_Torlof_HaradLehrling3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling3_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling3_15_00"); //Oczywiscie tak sie dzieje.

	AI_TurnToNpc	(self, Mod_1200_SLD_Soeldner_NW);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling3_01_01"); //Hock, tu przyjdz!

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling3_01_02"); //Dwie piekne dziewczyny sa gonna maja teraz walke treningowa.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling3_01_03"); //Wez miecz i pokaz mi co dostales.

	B_GiveInvItems	(self, hero, ItMw_HaradSchwert, 1);

	EquipWeapon (hero, ItMw_HaradSchwert);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling3_01_04"); //3,2,2,1, idz!

	AI_StopProcessInfos	(self);

	AI_Teleport	(Mod_1200_SLD_Soeldner_NW, "NW_BIGFARM_PATH_01");
	B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "HARAD");

	Mod_1200_SLD_Soeldner_NW.flags = 0;
};

INSTANCE Info_Mod_Torlof_HaradLehrling4 (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling4_Condition;
	information	= Info_Mod_Torlof_HaradLehrling4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torlof_HaradLehrling4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hock_HaradLehrling))
	&& (!Npc_IsInState(Mod_1200_SLD_Soeldner_NW, ZS_Attack))
	&& (!Npc_IsInState(Mod_1200_SLD_Soeldner_NW, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling4_Info()
{
	if (Mod_HaradLehrling_Kampf == 0)
	{
		AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling4_01_00"); //Wyglada rozsadnie. Lekkie, szybkie i dobrze wywazone.
		AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling4_01_01"); //Powiedz Haradowi, ze chcielibysmy odebrac od niego próbke dostawy.

		B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_ONE, "Przekonalem Torlof do zamówienia przesylki z Haradu. Powinienem jak najszybciej przekazac te wiadomosc.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling4_01_02"); //(smiech ekstensywnie) Czy myslisz, ze nie widzisz kiedy zmieniasz pistolet?
		AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling4_01_03"); //To byl najgorszy prank, jaki kiedykolwiek widzialem!
		AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling4_15_04"); //Czy nadal chcesz kupowac bron od Harada?
		AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling4_01_05"); //Otrzymales duzo nerwów! Wróc do niego!
	};

	B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "START");

	Mod_1200_SLD_Soeldner_NW.flags = 2;
};

INSTANCE Info_Mod_Torlof_HaradLehrling5 (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling5_Condition;
	information	= Info_Mod_Torlof_HaradLehrling5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostawa broni od Harada.";
};

FUNC INT Info_Mod_Torlof_HaradLehrling5_Condition()
{
	if (Npc_HasItems(hero, ItMi_Waffenbuendel) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling5_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling5_15_00"); //Dostawa broni od Harada.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_01"); //Najwyzszy czas. Czekamy na to od kilku dni.
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling5_15_02"); //Paladynowie nie aprobowali Harada pracujacego dla Ciebie.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_03"); //Rozumiem to bardzo dobrze. Ale jednak ta mdla to zrobila.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_04"); //Przyjrzyjmy sie.

	B_GiveInvItems	(hero, self, ItMi_Waffenbuendel, 1);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_05"); //(zliczenia zmiekczajace) 5,10,15,15,17..... Tylko 17 mieczy? Zamówilismy 20.
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling5_15_06"); //Czy jestes pewien tego?
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_07"); //Tak. 20 mieczy i 100 zlotych monet. Jasny rachunek.
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling5_15_08"); //Wtedy dasz mi zloto, a ja powiem Haradowi, ze zrobi jeszcze trzy miecze.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_09"); //Nie tak to dziala. Placimy tylko za to, co otrzymujemy.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1700);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_10"); //Jesli Harad chce wiecej, pozwól mu szybko dostarczyc, inaczej moglibysmy zmienic nasze zdanie.

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_TWO, "Torlof twierdzi, ze nie dostal od Harada wystarczajaco duzo mieczy, wiec nie dal mi tyle zlota, ile chcial Harad.");
};

INSTANCE Info_Mod_Torlof_HaradLehrling6 (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling6_Condition;
	information	= Info_Mod_Torlof_HaradLehrling6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto brakujace miecze.";
};

FUNC INT Info_Mod_Torlof_HaradLehrling6_Condition()
{
	if ((Npc_HasItems(hero, ItMw_1H_Common_01_BonusMeisterschmied) >= 3)
	|| (Npc_HasItems(hero, ItMw_1H_Common_01_Meisterschmied) >= 3)
	|| (Npc_HasItems(hero, ItMw_1H_Common_01_Bonus) >= 3)
	|| (Npc_HasItems(hero, ItMw_1H_Common_01) >= 3))
	&& (Schaerfen_Perk == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling6_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling6_15_00"); //Oto brakujace miecze.

	if (Npc_HasItems(hero, ItMw_1H_Common_01) >= 3) {
		B_GiveInvItems	(hero, self, ItMw_1H_Common_01, 3);
	} else if (Npc_HasItems(hero, ItMw_1H_Common_01_Bonus) >= 3) {
		B_GiveInvItems	(hero, self, ItMw_1H_Common_01_Bonus, 3);
	} else if (Npc_HasItems(hero, ItMw_1H_Common_01_Meisterschmied) >= 3) {
		B_GiveInvItems	(hero, self, ItMw_1H_Common_01_Meisterschmied, 3);
	} else if (Npc_HasItems(hero, ItMw_1H_Common_01_BonusMeisterschmied) >= 3) {
		B_GiveInvItems	(hero, self, ItMw_1H_Common_01_BonusMeisterschmied, 3);
	};

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling6_01_01"); //Wy i wasz mistrz zawsze trwacie dlugo. Nie mozna jednak narzekac na jakosc.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling6_01_02"); //Mam nadzieje, ze spieszysz sie z nastepnym zadaniem.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_SUCCESS);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Torlof_HaradLehrling7 (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling7_Condition;
	information	= Info_Mod_Torlof_HaradLehrling7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge zaoferowac Ci moje uslugi kowala?";
};

FUNC INT Info_Mod_Torlof_HaradLehrling7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest9))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling7_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling7_15_00"); //Czy moge zaoferowac Ci moje uslugi kowala?
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling7_01_01"); //Nie, dziekuje. Po trudnosciach z Haradem, wolimy pozostac z Bennetem. Przepraszam za to.
};

INSTANCE Info_Mod_Torlof_Lehrer (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Lehrer_Condition;
	information	= Info_Mod_Torlof_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Torlof_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Hi))
	&& ((Mod_Gilde == 4)
	|| (Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Torlof_Lehrer_01_01"); //Moge pomóc wam wzmocnic sie.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, "Torlof moze mi pomóc wzmocnic sie.");
};

INSTANCE Info_Mod_Torlof_Lernen (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Lernen_Condition;
	information	= Info_Mod_Torlof_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie czegos.";
};

FUNC INT Info_Mod_Torlof_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Lehrer))
	&& ((Mod_Gilde == 4)
	|| (Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Lernen_15_00"); //Naucz mnie czegos.
	AI_Output(self, hero, "Info_Mod_Torlof_Lernen_01_01"); //Czego chcesz sie nauczyc?

	Info_ClearChoices	(Info_Mod_Torlof_Lernen);

	Info_AddChoice 		(Info_Mod_Torlof_Lernen, DIALOG_BACK, Info_Mod_Torlof_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Torlof_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Torlof_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Torlof_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Torlof_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Torlof_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Torlof_Lernen);
};

FUNC VOID Info_Mod_Torlof_Lernen_Staerke_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_STRENGTH, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Torlof_Lernen);

	Info_AddChoice 		(Info_Mod_Torlof_Lernen, DIALOG_BACK, Info_Mod_Torlof_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Torlof_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Torlof_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Torlof_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Torlof_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Torlof_Lernen_Staerke_1()
{
	B_TeachAttributePoints (self, hero, ATR_STRENGTH, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Torlof_Lernen);

	Info_AddChoice 		(Info_Mod_Torlof_Lernen, DIALOG_BACK, Info_Mod_Torlof_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Torlof_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Torlof_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Torlof_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Torlof_Lernen_Staerke_1);
};

INSTANCE Info_Mod_Torlof_Pickpocket (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Pickpocket_Condition;
	information	= Info_Mod_Torlof_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Torlof_Pickpocket_Condition()
{
	C_Beklauen	(130, ItMi_Gold, 69);
};

FUNC VOID Info_Mod_Torlof_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);

	Info_AddChoice	(Info_Mod_Torlof_Pickpocket, DIALOG_BACK, Info_Mod_Torlof_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Torlof_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Torlof_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Torlof_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);
};

FUNC VOID Info_Mod_Torlof_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);

		Info_AddChoice	(Info_Mod_Torlof_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Torlof_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Torlof_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Torlof_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Torlof_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Torlof_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Torlof_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Torlof_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Torlof_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Torlof_EXIT (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_EXIT_Condition;
	information	= Info_Mod_Torlof_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torlof_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torlof_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
