INSTANCE Info_Mod_Edda_Hi (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Hi_Condition;
	information	= Info_Mod_Edda_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "I jestes?";
};

FUNC INT Info_Mod_Edda_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Edda_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_Hi_15_00"); //I jestes?
	AI_Output(self, hero, "Info_Mod_Edda_Hi_26_01"); //Nazywam sie Edda. Wiekszosc zup i bulionów gotuje przed wszelkiego rodzaju chorobami.
};

INSTANCE Info_Mod_Edda_SuppeKochenLernen (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_SuppeKochenLernen_Condition;
	information	= Info_Mod_Edda_SuppeKochenLernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy mozesz mi pokazac, jak robic zupy?";
};

FUNC INT Info_Mod_Edda_SuppeKochenLernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edda_Hi))
	&& (!Mod_Edda_Lernen)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_SuppeKochenLernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_SuppeKochenLernen_15_00"); //Czy mozesz mi pokazac, jak robic zupy?
	AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen_26_01"); //Jesli chcesz, chetnie podziele sie moja wiedza.
	AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen_26_02"); //Poniewaz prawie nic nie zarabiam w swojej pracy, bylbym bardzo wdzieczny za mala darowizne.

	Info_ClearChoices	(Info_Mod_Edda_SuppeKochenLernen);

	Info_AddChoice	(Info_Mod_Edda_SuppeKochenLernen, "Moze pózniej.", Info_Mod_Edda_SuppeKochenLernen_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 50)
	{
		Info_AddChoice	(Info_Mod_Edda_SuppeKochenLernen, "Oto troche zlota. (50 Dawanie zlota)", Info_Mod_Edda_SuppeKochenLernen_A);
	};
};

FUNC VOID Info_Mod_Edda_SuppeKochenLernen_B()
{
	AI_Output(hero, self, "Info_Mod_Edda_SuppeKochenLernen_B_15_00"); //Moze pózniej.

	Info_ClearChoices	(Info_Mod_Edda_SuppeKochenLernen);

};

FUNC VOID Info_Mod_Edda_SuppeKochenLernen_A()
{
	AI_Output(hero, self, "Info_Mod_Edda_SuppeKochenLernen_A_15_00"); //Oto troche zlota.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen_A_26_01"); //No cóz, daj mi znac, kiedy bedziemy gotowi.

	Mod_Edda_Lernen = TRUE;

	Info_ClearChoices	(Info_Mod_Edda_SuppeKochenLernen);
};

INSTANCE Info_Mod_Edda_WiesoHier (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_WiesoHier_Condition;
	information	= Info_Mod_Edda_WiesoHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego mieszkasz tak daleko od innych?";
};

FUNC INT Info_Mod_Edda_WiesoHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edda_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_WiesoHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_WiesoHier_15_00"); //Dlaczego mieszkasz tak daleko od innych?
	AI_Output(self, hero, "Info_Mod_Edda_WiesoHier_26_01"); //Kilka lat temu mialem liscie i bylem jednym z niewielu ocalalych.
	AI_Output(self, hero, "Info_Mod_Edda_WiesoHier_26_02"); //Od tego czasu bylem traktowany jak tredowaty i nikt nie przychodzi do mnie dobrowolnie.

	EddasWanzen_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Edda_Problem (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Problem_Condition;
	information	= Info_Mod_Edda_Problem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edda_Problem_Condition()
{
	if (Wld_GetDay() > 6)
	&& (Npc_KnowsInfo(hero, Info_Mod_Edda_Hi))
	&& (Wld_GetDay() > EddasWanzen_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_Problem_Info()
{
	AI_Output(self, hero, "Info_Mod_Edda_Problem_26_00"); //Musisz mi pomóc, prosze!
	AI_Output(hero, self, "Info_Mod_Edda_Problem_15_01"); //Co to jest sprawa?
	AI_Output(self, hero, "Info_Mod_Edda_Problem_26_02"); //Mój dom od wczorajszego dnia jest pelen pluskw miesnych!
	AI_Output(hero, self, "Info_Mod_Edda_Problem_15_03"); //Dlaczego tak histerycznie? Oni nic nie robia.
	AI_Output(self, hero, "Info_Mod_Edda_Problem_26_04"); //Sa oni niebezpiecznymi nosicielami chorób. Mówi sie, ze ospa malenka, która ledwo przezylem, zostala przez nich rozprzestrzeniona.
	AI_Output(self, hero, "Info_Mod_Edda_Problem_26_05"); //Odkad dowiedzialem sie, nie moge juz byc w jej poblizu.

	Edda_Schlafplatz = TRUE;

	Wld_InsertNpc	(Meatbug_Edda_01, "FP_EDDAS_WANZE_01");
	Wld_InsertNpc	(Meatbug_Edda_02, "FP_EDDAS_WANZE_02");
	Wld_InsertNpc	(Meatbug_Edda_03, "FP_EDDAS_WANZE_03");
	Wld_InsertNpc	(Meatbug_Edda_04, "FP_EDDAS_WANZE_04");
	Wld_InsertNpc	(Meatbug_Edda_05, "FP_EDDAS_WANZE_05");

	Info_ClearChoices	(Info_Mod_Edda_Problem);

	Info_AddChoice	(Info_Mod_Edda_Problem, "Bede uwazal, aby nie wchodzic w kontakt z robakami miesnymi (...... )", Info_Mod_Edda_Problem_Nein);
	Info_AddChoice	(Info_Mod_Edda_Problem, "Czyni sie to szybko i bezbolesnie.", Info_Mod_Edda_Problem_Ja);
};

FUNC VOID Info_Mod_Edda_Problem_Nein()
{
	AI_Output(hero, self, "Info_Mod_Edda_Problem_Nein_15_00"); //Bede uwazac, aby nie zetknac sie z robakami miesnymi.
	AI_Output(self, hero, "Info_Mod_Edda_Problem_Nein_26_01"); //Ale co teraz robie? Ktos mi pomoze!

	Info_ClearChoices	(Info_Mod_Edda_Problem);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Edda_Problem_Ja()
{
	AI_Output(hero, self, "Info_Mod_Edda_Problem_Ja_15_00"); //Czyni sie to szybko i bezbolesnie.
	AI_Output(self, hero, "Info_Mod_Edda_Problem_Ja_26_01"); //Dziekuje bardzo juz teraz!

	Info_ClearChoices	(Info_Mod_Edda_Problem);

	AI_StopProcessInfos	(self);

	Eddas_Wanzen = TRUE;

	Log_CreateTopic	(TOPIC_MOD_EDDASWANZEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EDDASWANZEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EDDASWANZEN, "Edda ma maly problem z robakami miesnymi w jej kabinie. Mam je odjechac.");
};

INSTANCE Info_Mod_Edda_Wanzen (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Wanzen_Condition;
	information	= Info_Mod_Edda_Wanzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bledy zniknely.";
};

FUNC INT Info_Mod_Edda_Wanzen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edda_Problem))
	&& (Eddas_Wanzen == TRUE)
	&& (Npc_IsDead(Meatbug_Edda_01))
	&& (Npc_IsDead(Meatbug_Edda_02))
	&& (Npc_IsDead(Meatbug_Edda_03))
	&& (Npc_IsDead(Meatbug_Edda_04))
	&& (Npc_IsDead(Meatbug_Edda_05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_Wanzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_Wanzen_15_00"); //Bledy zniknely.
	AI_Output(self, hero, "Info_Mod_Edda_Wanzen_26_01"); //W koncu moge wrócic do kabiny.
	AI_Output(self, hero, "Info_Mod_Edda_Wanzen_26_02"); //Dziekuje bardzo. Oto mala nagroda

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	B_GivePlayerXP	(50);

	EddasWanzen_Tag = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_EDDASWANZEN, LOG_SUCCESS);

	CurrentNQ += 1;

	B_Göttergefallen (1, 1);
};

INSTANCE Info_Mod_Edda_ProblemBack (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_ProblemBack_Condition;
	information	= Info_Mod_Edda_ProblemBack_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edda_ProblemBack_Condition()
{
	if (Wld_GetDay() > EddasWanzen_Tag)
	&& (Npc_KnowsInfo(hero, Info_Mod_Edda_Wanzen))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_ProblemBack_Info()
{
	AI_Output(self, hero, "Info_Mod_Edda_ProblemBack_26_00"); //Znów sa bledy miesne w mojej chacie! Wedruja po calym miejscu!
	AI_Output(hero, self, "Info_Mod_Edda_ProblemBack_15_01"); //Jak moglo do tego dojsc? Po prostu zabilem ich wszystkich innego dnia.
	AI_Output(self, hero, "Info_Mod_Edda_ProblemBack_26_02"); //Albo to los.... lub ktos w tym pomógl.
	AI_Output(hero, self, "Info_Mod_Edda_ProblemBack_15_03"); //Kto by to zrobil?
	AI_Output(self, hero, "Info_Mod_Edda_ProblemBack_26_04"); //Ktos, kto mnie zna i jak nienawidze robaków miesnych.
	AI_Output(self, hero, "Info_Mod_Edda_ProblemBack_26_05"); //Nie moge sobie pomóc, ale boje sie.
	AI_Output(self, hero, "Info_Mod_Edda_ProblemBack_26_06"); //Czy pomóglby mi Pan raz jeszcze pomóc mi z pluskwami miesnymi?
	AI_Output(hero, self, "Info_Mod_Edda_ProblemBack_15_07"); //Tak dobrze jak dobrze.

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Meatbug_Edda_06, "FP_EDDAS_WANZE_01");
	Wld_InsertNpc	(Meatbug_Edda_07, "FP_EDDAS_WANZE_02");
	Wld_InsertNpc	(Meatbug_Edda_08, "FP_EDDAS_WANZE_03");
	Wld_InsertNpc	(Meatbug_Edda_09, "FP_EDDAS_WANZE_04");
	Wld_InsertNpc	(Meatbug_Edda_10, "FP_EDDAS_WANZE_05");

	Eddas_Wanzen_Back = TRUE;

	Log_CreateTopic	(TOPIC_MOD_EDDASWANZENBACK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EDDASWANZENBACK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EDDASWANZENBACK, "Edda znów dostala bledy w swojej kabinie. Podejrzewa, ze ktos tam zasadzil pluskwy.");
};

INSTANCE Info_Mod_Edda_WanzenBack (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_WanzenBack_Condition;
	information	= Info_Mod_Edda_WanzenBack_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie powinny przetrwac zadne bledy miesne.";
};

FUNC INT Info_Mod_Edda_WanzenBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edda_ProblemBack))
	&& (Eddas_Wanzen_Back == TRUE)
	&& (Npc_IsDead(Meatbug_Edda_06))
	&& (Npc_IsDead(Meatbug_Edda_07))
	&& (Npc_IsDead(Meatbug_Edda_08))
	&& (Npc_IsDead(Meatbug_Edda_09))
	&& (Npc_IsDead(Meatbug_Edda_10))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_WanzenBack_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_WanzenBack_15_00"); //Nie powinny przetrwac zadne bledy miesne.
	AI_Output(self, hero, "Info_Mod_Edda_WanzenBack_26_01"); //Nie moge powiedziec, jak bardzo jestem szczesliwy!
	AI_Output(self, hero, "Info_Mod_Edda_WanzenBack_26_02"); //Potrzebuje jednak, abys zrobil mi troche laski, abym mógl spokojnie znów spac:
	AI_Output(self, hero, "Info_Mod_Edda_WanzenBack_26_03"); //Czy chcialbys czekac nastepnej nocy na zewnatrz za kabina?
	AI_Output(hero, self, "Info_Mod_Edda_WanzenBack_15_04"); //Pewne. Bez problemu.

	B_GivePlayerXP	(50);

	Eddas_Wanzen_Back = 2;

	B_StartOtherRoutine	(Mod_575_NONE_Fenia_NW, "WANZEN");

	B_LogEntry	(TOPIC_MOD_EDDASWANZENBACK, "Bledy sa robione, ale Edda nie moze spac spokojnie, dopóki nie wie, ze nikt nie przemyci jej pluskw do domu w nocy. Dlatego bede czekac za kabina nastepnego wieczoru.");
};

INSTANCE Info_Mod_Edda_Fenia (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Fenia_Condition;
	information	= Info_Mod_Edda_Fenia_Info;
	permanent	= 0;
	important	= 0;
	description	= "Naprawde nie byl to przypadek, ze pluskwy miesne trafily do Ciebie.";
};

FUNC INT Info_Mod_Edda_Fenia_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fenia_Wanzen))
	&& (Eddas_Wanzen_Back == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_Fenia_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_Fenia_15_00"); //Naprawde nie byl to przypadek, ze pluskwy miesne trafily do Ciebie.
	AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_01"); //Kto to zrobil? Powiedz to!
	AI_Output(hero, self, "Info_Mod_Edda_Fenia_15_02"); //Fenia chce, zebys dowiedzial sie, jak radzil sobie z mezem.
	AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_03"); //Masz na mysli nasz spadek sprzedazy?
	AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_04"); //Bo on nie byl tak wrogo nastawiony do mnie, jak wszyscy inni?
	AI_Output(hero, self, "Info_Mod_Edda_Fenia_15_05"); //Tak wyglada. Co teraz robisz?

	if (hero.guild != GIL_PAL)
	{
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_06"); //Co moge zrobic? Milicja nie przejmowalaby sie.
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_07"); //Musze porozmawiac z nia i sprawic, aby ja zrozumiala.
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_08"); //Musze jednak wyrazic panstwu szczere podziekowania. Jestes dobrym czlowiekiem.

		B_GivePlayerXP	(100);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_09"); //Jestes jednym z opiekunów miasta, czy nie?
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_10"); //Czy nie mozesz cos z tym zrobic?
		AI_Output(hero, self, "Info_Mod_Edda_Fenia_15_11"); //Moge pana objac swoja osobista ochrona.
		AI_Output(hero, self, "Info_Mod_Edda_Fenia_15_12"); //Jesli zranisz sie ponownie, wezme Fenie.
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_13"); //Byc moze najbardziej sensowne jest dla mnie, abym jej to powiedziala.... Wiecej Wtedy nie ma juz glupich mysli.
		AI_Output(self, hero, "Info_Mod_Edda_Fenia_26_14"); //Musze za to szczerze podziekowac. Jestes dobrym czlowiekiem.

		B_GivePlayerXP	(150);
	};

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	Eddas_Wanzen_Back = 5;

	B_SetTopicStatus	(TOPIC_MOD_EDDASWANZENBACK, LOG_SUCCESS);

	CurrentNQ += 1;

	B_Göttergefallen (1, 1);
};

INSTANCE Info_Mod_Edda_FeniaNicht (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_FeniaNicht_Condition;
	information	= Info_Mod_Edda_FeniaNicht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Za waszym domem nie bylo nikogo.";
};

FUNC INT Info_Mod_Edda_FeniaNicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fenia_Wanzen))
	&& (Eddas_Wanzen_Back == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_FeniaNicht_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_FeniaNicht_15_00"); //Za waszym domem nie bylo nikogo.
	AI_Output(self, hero, "Info_Mod_Edda_FeniaNicht_26_01"); //Hm.... No cóz, wtedy bledy musialy przypadkowo przyjsc do mojego domu.
	AI_Output(self, hero, "Info_Mod_Edda_FeniaNicht_26_02"); //Dziekuje, oto mala nagroda.

	B_GiveInvItems	(self, hero, ItMi_Gold, 25);

	Eddas_Wanzen_Back = 5;

	B_SetTopicStatus	(TOPIC_MOD_EDDASWANZENBACK, LOG_SUCCESS);
};

INSTANCE Info_Mod_Edda_Shakir (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Shakir_Condition;
	information	= Info_Mod_Edda_Shakir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lubie kilka informacji.";
};

FUNC INT Info_Mod_Edda_Shakir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Moe_Shakir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_Shakir_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_Shakir_15_00"); //Lubie kilka informacji.
	AI_Output(self, hero, "Info_Mod_Edda_Shakir_26_01"); //I co to jest?
	AI_Output(hero, self, "Info_Mod_Edda_Shakir_15_02"); //Szukam a.... No cóz, jak moge to ujac? Smoczek lub cos.
	AI_Output(self, hero, "Info_Mod_Edda_Shakir_26_03"); //Nierzadnica, masz na mysli. Dlaczego tak sie nie stalo? Nie, nie mamy ich w miescie.
	AI_Output(hero, self, "Info_Mod_Edda_Shakir_15_04"); //A gdzie móglbym....?
	AI_Output(self, hero, "Info_Mod_Edda_Shakir_26_05"); //To mi przypomina. Niedawno w stoczniowcu jest kobieta, tak jak ona czekala na cos.
	AI_Output(self, hero, "Info_Mod_Edda_Shakir_26_06"); //Mysle, ze imie Jana. Byc moze...... Mówie to glosno), ale nie mówie tego.
	AI_Output(hero, self, "Info_Mod_Edda_Shakir_15_07"); //Widze. Dzieki.

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Edda uwaza, ze powinienem porozmawiac z Jana. Staje na co dzien przy stoczniach, jak na cos czeka.");
};

INSTANCE Info_Mod_Edda_SuppeKochenLernen2 (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_SuppeKochenLernen2_Condition;
	information	= Info_Mod_Edda_SuppeKochenLernen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak przyrzadzic zupe? (3 LP)";
};

FUNC INT Info_Mod_Edda_SuppeKochenLernen2_Condition()
{
	if (Mod_Schwierigkeit != 4)
	{
		Info_Mod_Edda_SuppeKochenLernen2.description = "Jak przyrzadzic zupe? (3 LP)";
	}
	else
	{
		Info_Mod_Edda_SuppeKochenLernen2.description = "Jak przyrzadzic zupe? (300 zloto)";
	};

	if (Mod_Edda_Lernen == 1) {
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_SuppeKochenLernen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Edda_SuppeKochenLernen2_15_00"); //Jak przyrzadzic zupe?

	if ((Mod_Schwierigkeit != 4)
	&& (hero.lp < 3))
	|| ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) < 300)) {
		B_Say (self, hero, "$NOLEARNNOPOINTS");
	} else {
		if (Mod_Schwierigkeit != 4) {
			hero.lp -= 3;
		} else {
			B_GiveInvItems	(hero, self, ItMi_Gold, 300);
		};

		AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen2_26_01"); //Podstawy sa szybko wyjasnione: Potrzebujesz wypelnionego woda garnka, pod którym zapalisz ogien i przepis.
		AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen2_26_02"); //Skladniki sa pobierane z receptury i wprowadzane do garnka podczas ciaglego mieszania.
		AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen2_26_03"); //Zeby zupa byla jadalna, nie zapomnij o jej przyprawieniu.
		AI_Output(self, hero, "Info_Mod_Edda_SuppeKochenLernen2_26_04"); //Jak tylko wszystko znajdzie sie w garnku, odparuj ogien i pozwól zupie gotowac na wolnym ogniu z zamknieta pokrywka.

		Mod_Edda_Lernen = 2;
	};
};

INSTANCE Info_Mod_Edda_Flugblaetter (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Flugblaetter_Condition;
	information	= Info_Mod_Edda_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Edda_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Edda_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edda_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Edda_Flugblaetter_26_01"); //Dziekuje, dziekuje. Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Edda_Flugblaetter_26_02"); //Ah tak. Moze zatrzymam sie przy Matteo' s.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Edda_Pickpocket (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_Pickpocket_Condition;
	information	= Info_Mod_Edda_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30_Female;
};

FUNC INT Info_Mod_Edda_Pickpocket_Condition()
{
	C_Beklauen	(10, ItFo_FishSoup, 2);
};

FUNC VOID Info_Mod_Edda_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Edda_Pickpocket);

	Info_AddChoice	(Info_Mod_Edda_Pickpocket, DIALOG_BACK, Info_Mod_Edda_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Edda_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Edda_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Edda_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Edda_Pickpocket);
};

FUNC VOID Info_Mod_Edda_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Edda_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Edda_Pickpocket);

		Info_AddChoice	(Info_Mod_Edda_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Edda_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Edda_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Edda_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Edda_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Edda_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Edda_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Edda_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Edda_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Edda_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Edda_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Edda_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Edda_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Edda_EXIT (C_INFO)
{
	npc		= Mod_572_NONE_Edda_NW;
	nr		= 1;
	condition	= Info_Mod_Edda_EXIT_Condition;
	information	= Info_Mod_Edda_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Edda_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Edda_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
