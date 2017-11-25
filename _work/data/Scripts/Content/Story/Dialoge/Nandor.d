INSTANCE Info_Mod_Nandor_Hi (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_Hi_Condition;
	information	= Info_Mod_Nandor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Nandor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nandor_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Nandor_Hi_15_00"); //Czyz nie byles jednym z tych ludzi, którzy maja dosc cywilizacji i teraz koncza sie na zewnatrz?
	AI_Output(self, hero, "Info_Mod_Nandor_Hi_02_01"); //Tak, mozna to powiedziec. Skad wiesz?
	AI_Output(hero, self, "Info_Mod_Nandor_Hi_15_02"); //Nie wiedzialem, ze po prostu mi to powiedzialas.
	AI_Output(self, hero, "Info_Mod_Nandor_Hi_02_03"); //Bardzo zabawny.
	AI_Output(hero, self, "Info_Mod_Nandor_Hi_15_04"); //Wtedy jestes Nandor, prawda?
	AI_Output(self, hero, "Info_Mod_Nandor_Hi_02_05"); //Tak, skad to znów wiesz?
	AI_Output(hero, self, "Info_Mod_Nandor_Hi_15_06"); //Wlasnie mi powiedziales, czy nie?
	AI_Output(self, hero, "Info_Mod_Nandor_Hi_02_07"); //Czego chcesz?
};

INSTANCE Info_Mod_Nandor_NoIdea (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_NoIdea_Condition;
	information	= Info_Mod_Nandor_NoIdea_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jeszcze tego nie wiem.";
};

FUNC INT Info_Mod_Nandor_NoIdea_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nandor_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Nandor_Dragomir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nandor_NoIdea_Info()
{
	AI_Output(hero, self, "Info_Mod_Nandor_NoIdea_15_00"); //Jeszcze tego nie wiem.
	AI_Output(self, hero, "Info_Mod_Nandor_NoIdea_02_01"); //Potem wyjdz z tego miejsca.
};

INSTANCE Info_Mod_Nandor_Dragomir (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_Dragomir_Condition;
	information	= Info_Mod_Nandor_Dragomir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dragomir chce wiedziec, co znalazles do tej pory.";
};

FUNC INT Info_Mod_Nandor_Dragomir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nandor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Mitmachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nandor_Dragomir_Info()
{
	AI_Output(hero, self, "Info_Mod_Nandor_Dragomir_15_00"); //Dragomir chce wiedziec, co znalazles do tej pory.
	AI_Output(self, hero, "Info_Mod_Nandor_Dragomir_02_01"); //I teraz powinienem ci to powiedziec?
	AI_Output(hero, self, "Info_Mod_Nandor_Dragomir_15_02"); //Cóz, poniewaz bylem tam juz wczesniej.....
	AI_Output(self, hero, "Info_Mod_Nandor_Dragomir_02_03"); //W porzadku, i tak nie wypuszczisz. Od jakiegos czasu wisi dookola kilka niezwykle agresywnych wilków, co daje mi troche niepokoju.
	AI_Output(self, hero, "Info_Mod_Nandor_Dragomir_02_04"); //Jesli pomozesz mi je zabic, powie Ci co chcesz wiedziec.
	AI_Output(hero, self, "Info_Mod_Nandor_Dragomir_15_05"); //(gasps) Wszystkie prawa.

	AI_StopProcessInfos	(self);

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	Wld_InsertNpc	(Wolf_Seltsam_01,	"FP_ROAM_WOLF_SELTSAM_01");
	Wld_InsertNpc	(Wolf_Seltsam_02,	"FP_ROAM_WOLF_SELTSAM_02");
	Wld_InsertNpc	(Wolf_Seltsam_03,	"FP_ROAM_WOLF_SELTSAM_03");
	Wld_InsertNpc	(Wolf_Seltsam_04,	"FP_ROAM_WOLF_SELTSAM_04");
	Wld_InsertNpc	(Wolf_Seltsam_05,	"FP_ROAM_WOLF_SELTSAM_05");

	B_StartOtherRoutine	(self, "WOELFE");
};

INSTANCE Info_Mod_Nandor_WoelfeTot (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_WoelfeTot_Condition;
	information	= Info_Mod_Nandor_WoelfeTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nandor_WoelfeTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nandor_Dragomir))
	&& (Npc_IsDead(Wolf_Seltsam_01))
	&& (Npc_IsDead(Wolf_Seltsam_02))
	&& (Npc_IsDead(Wolf_Seltsam_03))
	&& (Npc_IsDead(Wolf_Seltsam_04))
	&& (Npc_IsDead(Wolf_Seltsam_05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nandor_WoelfeTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Nandor_WoelfeTot_02_00"); //Czy widziales wyglad w jej oczach?
	AI_Output(hero, self, "Info_Mod_Nandor_WoelfeTot_15_01"); //Cóz......
	AI_Output(self, hero, "Info_Mod_Nandor_WoelfeTot_02_02"); //Byl po prostu..... nieczuly. Sztywny. Jest w tym cos zlego.
	AI_Output(self, hero, "Info_Mod_Nandor_WoelfeTot_02_03"); //Bede tu nadal przebywac i obserwowac las. Mozesz przekazac te wiadomosc Dragomirowi i opowiedziec mu o tych wilkach.

	CreateInvItems	(self, ItWr_NandorToDragomir, 1);
	B_GiveInvItems	(self, hero, ItWr_NandorToDragomir, 1);

	AI_Output(hero, self, "Info_Mod_Nandor_WoelfeTot_15_04"); //Zrobie to. Nie zapomnij o tym.
	AI_Output(self, hero, "Info_Mod_Nandor_WoelfeTot_02_05"); //Co powinienem pamietac?
	AI_Output(hero, self, "Info_Mod_Nandor_WoelfeTot_15_06"); //Wiedza juz panstwo o tym.

	B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Nandor przekazal mi wiadomosc dla Dragomira i kazal opowiedziec Dragomirowi o agresywnych wilkach.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Nandor_Untier (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_Untier_Condition;
	information	= Info_Mod_Nandor_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcialem sie dowiedziec, czy jakies dzikie zwierzeta....";
};

FUNC INT Info_Mod_Nandor_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nandor_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nandor_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Nandor_Untier_15_00"); //Chcialem sie dowiedziec, czy jakies dzikie zwierzeta....
	AI_Output(self, hero, "Info_Mod_Nandor_Untier_02_01"); //To równiez i to. Jesli chcesz porozmawiac o dzikiej faunie, dlaczego nie idziesz na poludniowy wschód w góry, do bestii, która zjada cala moja gre?

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "To jest dosc konkretna wskazówka, która dal mi Nandor. Na poludniowy wschód w góry, widziane od niego.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Nandor_AlterMann (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_AlterMann_Condition;
	information	= Info_Mod_Nandor_AlterMann_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zapytaj o starca w lesie.";
};

FUNC INT Info_Mod_Nandor_AlterMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_AlterWaldMann))
	&& (Mod_BDT_AlterWaldMann < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nandor_AlterMann_Info()
{
	if (Mod_BDT_AlterWaldMann == 0)
	{
		B_Say	(hero, self, "$ALTERWALDMANN01");

		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_00"); //Ach, masz na mysli starego czlowieka z lasu. Tak, wiem o nim cos.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_01"); //Mówi sie, ze ma ona stulecia i ma chronic zwierzeta w lesie wokól Khoraty.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_02"); //Mówi sie, ze jest slepy, ale jednoczesnie ma magiczny talent.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_03"); //To wszystko, o czym moge teraz pomyslec. Moze ktos inny wie wiecej.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Od pierwszego straznika nie dostalem wiele nowych informacji. Stary czlowiek z lasu, chroniac zwierzeta, jest starozytnym, niewidomym i magicznym. Moze inny straznik wie wiecej.");
	}
	else if (Mod_BDT_AlterWaldMann == 1)
	{
		B_Say	(hero, self, "$ALTERWALDMANN02");

		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_04"); //Stary czlowiek z lasu? Tak, slyszalem, ze byl kiedys sluga Adano.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_05"); //Nie wiadomo, czy byl on takim straznikiem jak my, magikiem wody, czy przemieniajacym magiem.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_06"); //Jego magiczne zdolnosci, a takze silne przywiazanie do swiata zwierzat i roslin sa dowodem na to, ze ma wszystko.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "W 2. lesniczy tez nie dowiedzialem sie wiele, co warto wiedziec. Mówi sie, ze stary czlowiek lasu jest zwiazany z Adanosem i kreacja, zwlaszcza zwierzetami i roslinami.");
	}
	else if (Mod_BDT_AlterWaldMann == 2)
	{
		B_Say	(hero, self, "$ALTERWALDMANN03");

		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_07"); //Cóz, nie moge ci wiele powiedziec o nim.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_08"); //Problem polega równiez na tym, ze nie rozmawia z nikim, nawet z nami, nawet jesli dazymy do podobnych celów.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_09"); //Sam z zwierzetami lasu bawi sie sam.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_10"); //No cóz, gdybym byl dzikiem, jestem pewien, ze móglbym powiedziec ci wiecej o nim.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Acha, to mogla byc wazna wskazówka. Stary czlowiek z lasu calkowicie unika ludzi, mówi tylko zwierzetom.");
	}
	else if (Mod_BDT_AlterWaldMann == 3)
	{
		B_Say	(hero, self, "$ALTERWALDMANN04");

		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_11"); //Stary czlowiek z lasu? Cóz, ma byc scisle zwiazany z fauna i flora.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_12"); //Mówi sie, ze prowadzi on spakowywanie zwierzat takich jak knury czy wilki, aby chronic las przed intruzami.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_13"); //Nawet mówi sie, ze czesto wystepuje w ksztalcie zielonego wilka.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Przede wszystkim powinien on równiez poinstruowac wieksze paczki zwierzat, takie jak knury i wilki, aby chronic las przed intruzami.");
	}
	else if (Mod_BDT_AlterWaldMann == 4)
	{
		B_Say	(hero, self, "$ALTERWALDMANN05");

		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_14"); //Interesuja Cie opowiesci o starym czlowieku z lasu?
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_15"); //Cóz, nie wiem wiele o tej mistycznej dziwnej kuli.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_16"); //Podobno zamieszkuje glównie w ciemnym lesie, ale równiez w poblizu zbiorników wodnych, takich jak jeziora.
		AI_Output(self, hero, "Info_Mod_Nandor_AlterMann_02_17"); //Rzadko zdarza sie, ze ktos go widzial.....

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Najprawdopodobniej znajduje sie on w gestym lesie Khoraty w poblizu jeziora.");
	};

	Mod_BDT_AlterWaldMann += 1;
};

INSTANCE Info_Mod_Nandor_VinoBrennerei (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_VinoBrennerei_Condition;
	information	= Info_Mod_Nandor_VinoBrennerei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nandor_VinoBrennerei_Condition()
{
	if (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nandor_VinoBrennerei_Info()
{
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_00"); //Hej, co tu robisz?
	AI_Output(hero, self, "Info_Mod_Nandor_VinoBrennerei_15_01"); //Tak wiec....
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_02"); //Ostrzegam, zebyscie nie isc dalej. Ja równiez nie chce cie tam wyprowadzic.
	AI_Output(hero, self, "Info_Mod_Nandor_VinoBrennerei_15_03"); //Co myslisz?
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_04"); //Mówie o paskudnych pajakach, które wchodza do gorzelni pod drzwiami.
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_05"); //Vino moze mówic o szczesciu, ze uslyszalem go krzyczec, w przeciwnym razie skonczylyby sie jako przekaska w poludnie dla obrzydliwych bestii.
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_06"); //Odkrylam, ze lezal on tutaj nieprzytomny i przywiózl go do mojego obozu.
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_07"); //Wyglada na to, ze ukasil sie troche ugryzc, ale on sie wyzdrowieje.
	AI_Output(self, hero, "Info_Mod_Nandor_VinoBrennerei_02_08"); //No cóz, lepiej sie zastanowic nad tym, jak sie tam wejsc.

	if (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		Log_CreateTopic	(TOPIC_MOD_VINO_WO, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_VINO_WO, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_VINO_WO, "Vino jest w obozie Nandora. Zostal zaatakowany przez male pajaki, ale wkrótce powróci do zdrowia.");
	};
};

INSTANCE Info_Mod_Nandor_Pickpocket (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_Pickpocket_Condition;
	information	= Info_Mod_Nandor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Nandor_Pickpocket_Condition()
{
	C_Beklauen	(89, ItAt_Teeth, 7);
};

FUNC VOID Info_Mod_Nandor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);

	Info_AddChoice	(Info_Mod_Nandor_Pickpocket, DIALOG_BACK, Info_Mod_Nandor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Nandor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Nandor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Nandor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);
};

FUNC VOID Info_Mod_Nandor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);

		Info_AddChoice	(Info_Mod_Nandor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Nandor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Nandor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Nandor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Nandor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Nandor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Nandor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Nandor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Nandor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Nandor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Nandor_EXIT (C_INFO)
{
	npc		= Mod_1937_JGR_Nandor_NW;
	nr		= 1;
	condition	= Info_Mod_Nandor_EXIT_Condition;
	information	= Info_Mod_Nandor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nandor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nandor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
