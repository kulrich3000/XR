INSTANCE Info_Mod_Ramsi_Hi (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_Hi_Condition;
	information	= Info_Mod_Ramsi_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi, czy jestes tu jednym z oszustów?";
};

FUNC INT Info_Mod_Ramsi_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ramsi_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramsi_Hi_15_00"); //Hi, czy jestes tu jednym z oszustów?
	AI_Output(self, hero, "Info_Mod_Ramsi_Hi_08_01"); //Tak, jestem jednym z oszustów. Nazywam sie Ramsi.
	AI_Output(hero, self, "Info_Mod_Ramsi_Hi_15_02"); //Co tu robisz?
	AI_Output(self, hero, "Info_Mod_Ramsi_Hi_08_03"); //Wspólnie z Yussufem i Zekami zajmuje sie polowaniami na zwierzeta, aby zawsze miec tu wystarczajaca ilosc miesa.
	AI_Output(hero, self, "Info_Mod_Ramsi_Hi_15_04"); //Czy nie jest to troche niebezpieczne?
	AI_Output(self, hero, "Info_Mod_Ramsi_Hi_08_05"); //Tak, zawsze bylo to niebezpieczne, ale ostatnio polowanie stalo sie misja samobójcza.
};

INSTANCE Info_Mod_Ramsi_Aufgabe (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_Aufgabe_Condition;
	information	= Info_Mod_Ramsi_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego polowanie jest tak niebezpieczne?";
};

FUNC INT Info_Mod_Ramsi_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramsi_Aufgabe_15_00"); //Dlaczego polowanie jest tak niebezpieczne?
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_01"); //No cóz, jakis czas temu wszystko bylo w porzadku, ale ostatnio jest coraz wiecej takich stworzen jak Warge, które rozmnazaja i zamieszkuja las.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_02"); //Dlatego wszystko stalo sie tak niebezpieczne i nikt nie chce polowac.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_03"); //Ponadto, stowarzyszenie mysliwych powoduje coraz wiecej problemów, poniewaz napadamy na ich tereny lowieckie.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_04"); //Ci mezczyzni zabili juz jednego z nas. Wszystko poszlo szalone.
	AI_Output(hero, self, "Info_Mod_Ramsi_Aufgabe_15_05"); //Chcecie, abym pomógl w polowaniu?
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_06"); //Tak wlasnie bys zrobil? Poczekaj, dlaczego ryzykowalbys swoje zycie chetnie?
	AI_Output(hero, self, "Info_Mod_Ramsi_Aufgabe_15_07"); //Cóz, chcialbym przylaczyc sie do oszustów, ale zeby to zrobic, potrzebuje waszych glosów.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_08"); //Czy tak jest? No cóz, dla mnie.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_09"); //Jezeli zabija panstwo ze mna dziesiec dzików i zobacza, ze nikt nie umiera, oddam panstwu swój glos. Czyli gotowe do zwijania?

	Log_CreateTopic	(TOPIC_MOD_ASS_RAMSI_JAGD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_RAMSI_JAGD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_RAMSI_JAGD, "Hrabia Ramsi i dwaj inni oszustowie dbaja o zaopatrzenie w mieso, co mozna zrobic tylko poprzez polowanie. Poniewaz polowanie staje sie coraz bardziej niebezpieczne z powodu potworów i szalonych mysliwych, musze polowac z Ramsi. Kiedy zabijemy dziesiec dzików i wnieslismy ich cialo do obozu, Ramsi da mi swój glos.");
};

INSTANCE Info_Mod_Ramsi_AufgabeLos (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_AufgabeLos_Condition;
	information	= Info_Mod_Ramsi_AufgabeLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem gotowy.";
};

FUNC INT Info_Mod_Ramsi_AufgabeLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_AufgabeLos_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramsi_AufgabeLos_15_00"); //Jestem gotowy.
	AI_Output(self, hero, "Info_Mod_Ramsi_AufgabeLos_08_01"); //Potem pójdz za mna.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "JAGD");
	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Ramsi_KeilerWarnung (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_KeilerWarnung_Condition;
	information	= Info_Mod_Ramsi_KeilerWarnung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ramsi_KeilerWarnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_Aufgabe))
	&& (Npc_GetDistToWP(self, "NW_FOREST_PATH_36") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_KeilerWarnung_Info()
{
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerWarnung_08_00"); //Badz teraz bardzo ostrozny. Dziki sa zazwyczaj w ruchu z maksymalnie trzema zwierzetami i moga byc naprawde smiertelne.
	AI_Output(hero, self, "Info_Mod_Ramsi_KeilerWarnung_15_01"); //Dziekuje za udzielenie mi informacji.
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerWarnung_08_02"); //Podazaj za mna wiec.

	self.flags = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "JAGDETAPPE");

	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01");

	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01_MONSTER");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01_MONSTER");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01_MONSTER");

	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M5");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M5");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M5");

	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M3");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M3");
};

INSTANCE Info_Mod_Ramsi_KeilerTot (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_KeilerTot_Condition;
	information	= Info_Mod_Ramsi_KeilerTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ramsi_KeilerTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_KeilerWarnung))
	&& (Npc_GetDistToWP(self, "NW_FOREST_PATH_80_1_MOVEMENT8_M3") < 500)
	&& (Npc_IsDead(Keiler_Ramsi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_KeilerTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerTot_08_00"); //(smiech) Byla to niegdys sesja lowiecka. Idzmy.....
	AI_Output(hero, self, "Info_Mod_Ramsi_KeilerTot_15_01"); //Co to jest?
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerTot_08_02"); //Ci synowie suk! Sprawdz to. Mysliwi atakuja!

	B_LogEntry	(TOPIC_MOD_ASS_RAMSI_JAGD, "Po zabiciu i wypatroszeniu wszystkich dzików zostalismy zaatakowani przez mysliwych. Musimy ich powstrzymac, bo w przeciwnym razie ci szalency nas zabija.");

	self.flags = 0;

	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX]/3;
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS]/3 + 1;

	self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Mod_7368_JG_Jaeger_NW,	"WP_RAMSI_ASS_JAEGERSPAWN");
	Wld_InsertNpc	(Mod_7366_JG_Jaeger_NW,	"WP_RAMSI_ASS_JAEGERSPAWN");
	Wld_InsertNpc	(Mod_7367_JG_Jaeger_NW,	"LIGHTHOUSE");
};

INSTANCE Info_Mod_Ramsi_KeilerFleischWeg (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_KeilerFleischWeg_Condition;
	information	= Info_Mod_Ramsi_KeilerFleischWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ramsi_KeilerFleischWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_KeilerTot))
	&& (Npc_IsDead(Mod_7366_JG_Jaeger_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_KeilerFleischWeg_Info()
{
	CreateInvItems	(self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);

	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerFleischWeg_08_00"); //(smiertelne) Ci piekacy sie MISTKERLE! Kradly wszystkie nasze zebrane zapasy, ukradly je!
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerFleischWeg_08_01"); //Czy wiesz, dokad oni poszli?
	AI_Output(hero, self, "Info_Mod_Ramsi_KeilerFleischWeg_15_02"); //Zostal tylko jeden. Mysle, ze uciekl do latarni morskiej.
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerFleischWeg_08_03"); //Brakuje nam zapasów.
	AI_Output(hero, self, "Info_Mod_Ramsi_KeilerFleischWeg_15_04"); //Wszystko jasne. Przejdz juz do obozu. Przyjezdzam po polowaniu na syna suki.
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerFleischWeg_08_05"); //Widze. Zycze panu wszystkiego najlepszego.

	B_LogEntry	(TOPIC_MOD_ASS_RAMSI_JAGD, "Jeden z mysliwych wybil Ramsi i ukradl mieso za zabójców. Biegal do latarni morskiej. Musze zatrzymac tego faceta, zanim bedzie mógl ode mnie uciec. Tymczasem Ramsi wraca do obozu zabójców i spodziewam sie, ze wkrótce wróce.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	self.flags = 2;

	Mod_7368_JG_Jaeger_NW.flags = 0;

	B_StartOtherRoutine	(Mod_7368_JG_Jaeger_NW, "LAGER");
};

INSTANCE Info_Mod_Ramsi_JaegerTot (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_JaegerTot_Condition;
	information	= Info_Mod_Ramsi_JaegerTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zlodzieja zlapalem i na dodatek zlapalem równiez zlodzieja (....). )";
};

FUNC INT Info_Mod_Ramsi_JaegerTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_KeilerFleischWeg))
	&& (Npc_IsDead(Mod_7368_JG_Jaeger_NW))
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_JaegerTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramsi_JaegerTot_15_00"); //Zlodziej zlapalem i udalo mi sie zabic innego mysliwego.
	AI_Output(self, hero, "Info_Mod_Ramsi_JaegerTot_08_01"); //Dobra praca, ale czy masz mieso?
	AI_Output(hero, self, "Info_Mod_Ramsi_JaegerTot_15_02"); //Jasne, ze tak wlasnie jest.

	B_GiveInvItems	(hero, self, ItFo_MuttonRaw, 20);

	AI_Output(self, hero, "Info_Mod_Ramsi_JaegerTot_08_03"); //Dziekuje za to. Oto 100 zlotych monet jako nagroda i oczywiscie otrzymuje mój glos.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(hero, self, "Info_Mod_Ramsi_JaegerTot_15_04"); //Dziekuje bardzo.
	AI_Output(self, hero, "Info_Mod_Ramsi_JaegerTot_08_05"); //Nie wspominajmy o tym. Smaze mieso. Do zobaczenia dookola.

	B_LogEntry	(TOPIC_MOD_ASS_RAMSI_JAGD, "Po tym jak pozbylem sie tych wytlumionych mysliwych i zabezpieczylem mieso, od razu wrócilem do Ramsi. Zaplacil mi 100 zlotych monet, a ja jestem jednym glosem bogatszym. Jesli to nie jest dobre.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_RAMSI_JAGD, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	self.flags = 0;
};

INSTANCE Info_Mod_Ramsi_Pickpocket (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_Pickpocket_Condition;
	information	= Info_Mod_Ramsi_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ramsi_Pickpocket_Condition()
{
	C_Beklauen	(78, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

	Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_BACK, Info_Mod_Ramsi_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ramsi_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

		Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ramsi_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ramsi_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ramsi_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ramsi_EXIT (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_EXIT_Condition;
	information	= Info_Mod_Ramsi_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ramsi_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ramsi_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
