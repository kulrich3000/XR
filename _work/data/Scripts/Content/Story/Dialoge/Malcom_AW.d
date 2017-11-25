INSTANCE Info_Mod_Malcom_AW_Hi (C_INFO)
{
	npc		= Mod_935_PIR_Malcom_AW;
	nr		= 1;
	condition	= Info_Mod_Malcom_AW_Hi_Condition;
	information	= Info_Mod_Malcom_AW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Malcom_AW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malcom_AW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_00"); //Hej, czlowiek. Jak sie tu dostales?
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Hi_15_01"); //Moglabym pana zapytac to samo.

	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_NW_Hi))
	{
		AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_02"); //Szczesliwie mialem szczescie, ze Skip przyjechal na jego handlowa trase, w przeciwnym razie na tej plazy bym sie gniótl.
		AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_03"); //I nie zapomnialem o mojej obietnicy, to jest to, co zawdzieczam Wam za wasza pomoc.

		B_GiveInvItems	(self, hero, ItMi_Gold, 100);

		AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_04"); //Ktos mówi, ze piraci nie maja zaszczytu w mojej ulubionej, jednorecznej dziwce!
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_05"); //Bylem tutaj jako pierwszy. Zobacz kazdego, kto przyjezdza tutaj. Z pewnoscia przychodzisz z niewlasciwego kierunku.
		AI_Output(hero, self, "Info_Mod_Malcom_AW_Hi_15_06"); //Dlaczego? Jestem tam z swiatyni.
		AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_07"); //Nonsens. W bagnie jest tylko pustelnik i te potwory luski.
	};

	AI_Output(hero, self, "Info_Mod_Malcom_AW_Hi_15_08"); //Jesli tak powiesz. Co Pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_09"); //Nie widzisz? Drewno opalowe dla naszego magazynu.
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Hi_15_10"); //Tu jest obóz?
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_11"); //Ale tak, tak, tak. Obóz najbardziej przerazonych piratów morskich.
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Hi_15_12"); //A gdzie moge to znalezc?
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_13"); //Podazaj sciezka i skrec w prawo przed ruinami. Nie mozna tego przegapic. Och, i jeszcze jedna rzecz.
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Hi_15_14"); //Tak?
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_15"); //Jesli Henry wpusci cie do obozu, porozmawiaj z Skipem.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Hi_30_16"); //Powiedz mu, ze jestem glodny, powiedz mu, aby wyslal mi cos do jedzenia.

	Log_CreateTopic	(TOPIC_MOD_PIRATEN_MALCOM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_MALCOM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PIRATEN_MALCOM, "Mam powiedziec Skipowi w obozie, ze Malcom jest glodny i potrzebuje czegos do jedzenia.");
};

INSTANCE Info_Mod_Malcom_AW_Schatzsuche (C_INFO)
{
	npc		= Mod_935_PIR_Malcom_AW;
	nr		= 1;
	condition	= Info_Mod_Malcom_AW_Schatzsuche_Condition;
	information	= Info_Mod_Malcom_AW_Schatzsuche_Info;
	permanent	= 0;
	important	= 0;
	description	= "Greg chce wyjsc. Mamy sie przygotowac.";
};

FUNC INT Info_Mod_Malcom_AW_Schatzsuche_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Karte))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malcom_AW_Schatzsuche_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_00"); //Greg chce wyjsc. Mamy sie przygotowac.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_01"); //To wlasnie lubie slyszec. Czy wiesz, dokad sie udac?
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_02"); //Nie. Zdecydowanie jest to wyspa skarbów.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_03"); //Wolalbym raczej to uslyszec. Hmm..... Musze zrobic cos innego......
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_04"); //Potrzebujesz mnie do tego?
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_05"); //Absolutnie. Posluchaj:
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_06"); //Dawno temu, niedlugo po tym, jak tu wyladowalismy, skakalem z moja impreza pokladowa w kanionie.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_07"); //Byla banda bydla, ale zajmowalismy sie nimi.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_08"); //W pewnym momencie weszlismy do ogromnej jaskini z duza iloscia olbrzymich krabów.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_09"); //Moglibysmy ich wiele zabic, ale to zabilo dwóch moich ludzi.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_10"); //Nie mialem innego wyjscia, jak tylko w pospiechu wycofac sie.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_11"); //Od tego czasu nie bylem na kanionie.
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_12"); //Musialy to byc minecrawlery. Sa one na calej wyspie.
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_13"); //Co ma to z nami wspólnego?
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_14"); //Musze wrócic. W biegu stracilem talizman.
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_15"); //Greg nigdy by bez niego nie opuscil.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_16"); //Czlowiek, oni sa przesadni.

	AI_TurnToNpc	(hero, self);

	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche_15_17"); //A teraz mamy miec dwie....
	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche_30_18"); //Przynosimy Jacka z nami. Jest on czescia mojego pozoru.

	Log_CreateTopic	(TOPIC_MOD_PIR_TALISMAN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PIR_TALISMAN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PIR_TALISMAN, "Malcom stracil talizman druzyny. Mam Ci pomóc w powrocie.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOJACK");
	B_StartOtherRoutine	(self, "MALCOM");
};

INSTANCE Info_Mod_Malcom_AW_Schatzsuche2 (C_INFO)
{
	npc		= Mod_935_PIR_Malcom_AW;
	nr		= 1;
	condition	= Info_Mod_Malcom_AW_Schatzsuche2_Condition;
	information	= Info_Mod_Malcom_AW_Schatzsuche2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Malcom_AW_Schatzsuche2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_AW_Schatzsuche))
	&& (Npc_GetDistToWP(hero, "ADW_PIRATECAMP_WAY_07") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malcom_AW_Schatzsuche2_Info()
{
	var c_npc Malcom; Malcom = Hlp_GetNpc(Mod_935_PIR_Malcom_AW);
	var c_npc Jack; Jack = Hlp_GetNpc(Mod_928_PIR_AlligatorJack_AW);

	TRIA_Invite(Jack);
	TRIA_Start();

	TRIA_Next(Malcom);

	AI_GotoNpc (Malcom, Jack);

	AI_TurnToNpc	(Malcom, Jack);
	AI_TurnToNpc	(Jack, Malcom);

	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche2_30_00"); //Witaj, Jack. Musimy isc do kanionu. Przyjezdzacie ze mna.

	TRIA_Next(Jack);

	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche2_12_01"); //Wyraznie. Zapytaj mnie, dlaczego i tak stoje tu caly czas.

	TRIA_Next(Malcom);

	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche2_30_02"); //Cala kopalnia.

	TRIA_Finish();
};

INSTANCE Info_Mod_Malcom_AW_Schatzsuche3 (C_INFO)
{
	npc		= Mod_935_PIR_Malcom_AW;
	nr		= 1;
	condition	= Info_Mod_Malcom_AW_Schatzsuche3_Condition;
	information	= Info_Mod_Malcom_AW_Schatzsuche3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Malcom_AW_Schatzsuche3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_AW_Schatzsuche2))
	&& (Npc_HasItems(hero, ItMi_Talisman_Piraten) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malcom_AW_Schatzsuche3_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_AW_Schatzsuche3_15_00"); //Ten charakter znalazlem tutaj.

	B_GiveInvItems	(hero, self, ItMi_Talisman_Piraten, 1);

	AI_Output(self, hero, "Info_Mod_Malcom_AW_Schatzsuche3_30_01"); //Znów poszlo dobrze. Teraz wyjdzmy z tego.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_928_PIR_AlligatorJack_AW, "START");

	B_LogEntry_More	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, TOPIC_MOD_PIR_TALISMAN, "Ocalilismy talizman pirata.", "Talizman jest z powrotem w naszym posiadaniu.");
	B_SetTopicStatus	(TOPIC_MOD_PIR_TALISMAN, LOG_SUCCESS);

	Mod_PiratenVorbereitungen += 1;

	B_GivePlayerXP	(150);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Malcom_AW_EXIT (C_INFO)
{
	npc		= Mod_935_PIR_Malcom_AW;
	nr		= 1;
	condition	= Info_Mod_Malcom_AW_EXIT_Condition;
	information	= Info_Mod_Malcom_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Malcom_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malcom_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
