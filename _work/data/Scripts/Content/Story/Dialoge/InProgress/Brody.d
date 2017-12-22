INSTANCE Info_Mod_Brody_Hi (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_Hi_Condition;
	information	= Info_Mod_Brody_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Brody_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brody_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Brody_Hi_03_00"); //Hej, woda. Woda, prosze.

	Info_ClearChoices	(Info_Mod_Brody_Hi);

	Info_AddChoice	(Info_Mod_Brody_Hi, "Nie mam ich.", Info_Mod_Brody_Hi_B);

	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Info_AddChoice	(Info_Mod_Brody_Hi, "Tutaj masz kilka.", Info_Mod_Brody_Hi_A);
	};
};

FUNC VOID Info_Mod_Brody_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Brody_Hi_B_15_00"); //Nie mam ich.
	AI_Output(self, hero, "Info_Mod_Brody_Hi_B_03_00"); //To nie dziala. Tak czy owak nie bede to robil dluzej. (smieje sie sucho i wydycha zycie)

	Mod_BrodyQuest = 1;

	Info_ClearChoices	(Info_Mod_Brody_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Brody_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Brody_Hi_A_15_00"); //Tutaj masz kilka.

	B_GiveInvItems	(hero, self, ItFo_Water, 1);

	B_UseItem	(self, ItFo_Water);

	AI_Output(self, hero, "Info_Mod_Brody_Hi_A_03_01"); //Ach! Dzieki, przyjaciel.

	Mod_BrodyQuest = 3;

	Info_ClearChoices	(Info_Mod_Brody_Hi);
};

INSTANCE Info_Mod_Brody_WhoAreYou (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_WhoAreYou_Condition;
	information	= Info_Mod_Brody_WhoAreYou_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Brody_WhoAreYou_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brody_Hi))
	&& (Mod_BrodyQuest == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brody_WhoAreYou_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_03_01"); //Jestem pustynnym piratem.

	AI_DrawWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_03_02"); //Nie, nie, nie, nie, nie krzywdze cie. Jestem na to zbyt slaby.

	AI_RemoveWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_03_03"); //Bylem czlonkiem calej grupy. Nasz obóz byl tam z powrotem, naprzeciwko swiatyni.
	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_03_04"); //Nasza ulubiona rzecza bylo irytujace piratów.
	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_03_05"); //Chwycilismy od nich jedzenie i rzeczy, zniszczone lodzie, spluwamy przed chatka Greg i zaglebilismy sie w jej grog.
	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_03_06"); //Pewnej nocy obudzil mnie krzyk.
	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_03_07"); //Te szczury bagienne piratów odkryly nasz obóz i zamordowaly nas jeden po drugim!
	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_03_08"); //Bylem jedyna osoba, która uciekla bez sprzetu, nie budzac sie. I od tamtej pory smazylem sie tutaj.
	AI_Output(self, hero, "Info_Mod_Brody_WhoAreYou_03_09"); //Nie moge wyjsc z kanionu. Góry sa zbyt wysokie, a wyjscie, o którym wiem, jest stale strzezone.

	Log_CreateTopic	(TOPIC_MOD_BRODY_CANYON, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BRODY_CANYON, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BRODY_CANYON, "Brody, pustynny pirat, siedzi w kanionie i zna tylko jedna droge. Czyz nie ma nikogo innego?");
};

INSTANCE Info_Mod_Brody_AndererWeg (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_AndererWeg_Condition;
	information	= Info_Mod_Brody_AndererWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jest jeszcze inny sposób wyjscia z kanionu.";
};

FUNC INT Info_Mod_Brody_AndererWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brody_WhoAreYou))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brody_AndererWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Brody_AndererWeg_15_00"); //Jest jeszcze inny sposób wyjscia z kanionu.
	AI_Output(self, hero, "Info_Mod_Brody_AndererWeg_03_01"); //Naprawde? Gdzie?
	AI_Output(hero, self, "Info_Mod_Brody_AndererWeg_15_02"); //Jest to platforma teleportowa. Zabiore cie tam.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Brody_AmZiel (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_AmZiel_Condition;
	information	= Info_Mod_Brody_AmZiel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brody_AmZiel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brody_AndererWeg))
	&& (Npc_GetDistToWP(hero, "ADW_CANYON_TELEPORT_PATH_01") < 600)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brody_AmZiel_Info()
{
	AI_Output(self, hero, "Info_Mod_Brody_AmZiel_03_00"); //kolega Nie wiem, jak wam podziekowac.
	AI_Output(self, hero, "Info_Mod_Brody_AmZiel_03_01"); //Ale masz tyle szczescia, ze gdy mnie znalazles, nie bylem wystarczajaco silny.
	AI_Output(self, hero, "Info_Mod_Brody_AmZiel_03_02"); //Wtedy rozmowa przybrala by zupelnie inny obrót, prosze mi wierzyc.
	AI_Output(self, hero, "Info_Mod_Brody_AmZiel_03_03"); //Tak dlugo, i badz szczesliwy, gdy juz nie slyszysz ode mnie!

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BRODY_CANYON, "Pomagalem Brodom. Dziekuje, ze zostawia mnie samemu.");
	B_SetTopicStatus	(TOPIC_MOD_BRODY_CANYON, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SAFE");
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Brody_FalscherWeg (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_FalscherWeg_Condition;
	information	= Info_Mod_Brody_FalscherWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brody_FalscherWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brody_AndererWeg))
	&& (Npc_GetDistToWP(hero, "ADW_PIRATECAMP_2_CANYON_01") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brody_FalscherWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Brody_FalscherWeg_03_00"); //kolega To jest obóz piratów. Zamierzasz zwrócic mnie do nich.
	AI_Output(self, hero, "Info_Mod_Brody_FalscherWeg_03_01"); //Albo pokazesz mi inna droge, albo dostaniesz wiele klopotów.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Brody_PechGehabt (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_PechGehabt_Condition;
	information	= Info_Mod_Brody_PechGehabt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brody_PechGehabt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brody_FalscherWeg))
	&& (Npc_GetDistToWP(hero, "ADW_PIRATECAMP_2_CANYON_01") < 1500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brody_PechGehabt_Info()
{
	AI_Output(self, hero, "Info_Mod_Brody_PechGehabt_03_00"); //Ostrzeglem cie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SAFE");
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Brody_Heiltrank (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_Heiltrank_Condition;
	information	= Info_Mod_Brody_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(goraczka lecznicza)";
};

FUNC INT Info_Mod_Brody_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brody_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	Info_AddChoice	(Info_Mod_Brody_Heiltrank, DIALOG_BACK, Info_Mod_Brody_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	&& (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX]-HP_Elixier)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Istota uzdrawiania", Info_Mod_Brody_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 3)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_Elixier)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Eliksir uzdrawiania", Info_Mod_Brody_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_Extrakt)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_Brody_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_Essenz)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Istota uzdrawiania", Info_Mod_Brody_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_06)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Napój lekkiego leczenia", Info_Mod_Brody_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_06)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_Brody_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_05)
	{
		Info_AddChoice	(Info_Mod_Brody_Heiltrank, "Napoje szybko lecznicze", Info_Mod_Brody_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Brody_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Brody_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Brody_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Brody_EXIT (C_INFO)
{
	npc		= Mod_7293_OUT_Brody_AW;
	nr		= 1;
	condition	= Info_Mod_Brody_EXIT_Condition;
	information	= Info_Mod_Brody_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Brody_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brody_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
