INSTANCE Info_Mod_Faice_Hi (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Hi_Condition;
	information	= Info_Mod_Faice_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Faice_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Faice_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Faice_Hi_03_01"); //Jestem Faice. Nie martwcie sie, jestem zajety.
};

INSTANCE Info_Mod_Faice_QuestHermy (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_QuestHermy_Condition;
	information	= Info_Mod_Faice_QuestHermy_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Faice_QuestHermy_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Matronen))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_QuestHermy_Info()
{
	AI_Output(self, hero, "Info_Mod_Faice_QuestHermy_03_00"); //Ach, wy.

	Info_ClearChoices	(Info_Mod_Faice_QuestHermy);

	Info_AddChoice	(Info_Mod_Faice_QuestHermy, "Co sie dzieje?", Info_Mod_Faice_QuestHermy_B);
	Info_AddChoice	(Info_Mod_Faice_QuestHermy, "Turendil wyslal mnie.", Info_Mod_Faice_QuestHermy_A);
};

FUNC VOID Info_Mod_Faice_QuestHermy_B()
{
	AI_Output(hero, self, "Info_Mod_Faice_QuestHermy_B_15_00"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Faice_QuestHermy_B_03_01"); //Spotkaj sie z Hermym.
	AI_Output(hero, self, "Info_Mod_Faice_QuestHermy_B_15_02"); //Wszystko jasne.

	Log_CreateTopic	(TOPIC_MOD_FAICE_HARPIE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FAICE_HARPIE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "Faice kazal mi spotkac maga o imieniu Hermy. Prawdopodobnie przekaze mi dalsze instrukcje.");

	Info_ClearChoices	(Info_Mod_Faice_QuestHermy);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Faice_QuestHermy_A()
{
	AI_Output(hero, self, "Info_Mod_Faice_QuestHermy_A_15_00"); //Turendil powiedzial, ze móglbym do ciebie przyjechac, gdybym potrzebowal nowego zadania.
	AI_Output(self, hero, "Info_Mod_Faice_QuestHermy_A_03_01"); //Krótko mówiac, jestem zajety.
	AI_Output(hero, self, "Info_Mod_Faice_QuestHermy_A_15_02"); //Wszystko jasne.

	Info_ClearChoices	(Info_Mod_Faice_QuestHermy);

	Info_AddChoice	(Info_Mod_Faice_QuestHermy, "Co sie dzieje?", Info_Mod_Faice_QuestHermy_B);
	Info_AddChoice	(Info_Mod_Faice_QuestHermy, "Widze. W przyszlosci bede krótszy.", Info_Mod_Faice_QuestHermy_C);
};

FUNC VOID Info_Mod_Faice_QuestHermy_C()
{
	AI_Output(hero, self, "Info_Mod_Faice_QuestHermy_C_15_00"); //Widze. W przyszlosci bede krótszy.
	
	Info_Mod_Faice_QuestHermy_B();
};

INSTANCE Info_Mod_Faice_Aufnahmequest (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Aufnahmequest_Condition;
	information	= Info_Mod_Faice_Aufnahmequest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Faice_Aufnahmequest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hermy_Harpie))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Aufnahmequest_Info()
{
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahmequest_03_00"); //Co sie dzieje?

	Info_ClearChoices	(Info_Mod_Faice_Aufnahmequest);

	Info_AddChoice	(Info_Mod_Faice_Aufnahmequest, "Kiedy sie znajduje?", Info_Mod_Faice_Aufnahmequest_B);
	Info_AddChoice	(Info_Mod_Faice_Aufnahmequest, "Na jak dlugo moge dolaczyc do Ciebie?", Info_Mod_Faice_Aufnahmequest_A);
};

FUNC VOID Info_Mod_Faice_Aufnahmequest_B()
{
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahmequest_B_15_00"); //Kiedy sie znajduje?
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahmequest_B_03_01"); //Jeszcze jedno zamówienie.
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahmequest_B_15_02"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahmequest_B_03_03"); //Ferco wpusci Cie na targi.
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahmequest_B_15_04"); //Dzieki.
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahmequest_B_03_05"); //Teraz zostaw mnie sam na sam.

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "Ostatnie zlecenie..... Mam pojechac do Ferco.");

	Info_ClearChoices	(Info_Mod_Faice_Aufnahmequest);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Faice_Aufnahmequest_A()
{
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahmequest_A_15_00"); //Na jak dlugo moge dolaczyc do Ciebie?
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahmequest_A_03_01"); //Zmarnujesz czas. Jestem zajety.
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahmequest_A_15_02"); //Wszystko jasne.

	Info_ClearChoices	(Info_Mod_Faice_Aufnahmequest);

	Info_AddChoice	(Info_Mod_Faice_Aufnahmequest, "Kiedy sie znajduje?", Info_Mod_Faice_Aufnahmequest_B);
	Info_AddChoice	(Info_Mod_Faice_Aufnahmequest, "Dobrze, bede krótszy w przyszlosci. Obiecuje.", Info_Mod_Faice_Aufnahmequest_C);
};

FUNC VOID Info_Mod_Faice_Aufnahmequest_C()
{
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahmequest_C_15_00"); //Widze. W przyszlosci bede krótszy.
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahmequest_C_03_01"); //...
	
	Info_Mod_Faice_Aufnahmequest_B();
};

INSTANCE Info_Mod_Faice_Mud (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Mud_Condition;
	information	= Info_Mod_Faice_Mud_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Faice_Mud_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Mud))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Mud_Info()
{
	AI_Output(self, hero, "Info_Mod_Faice_Mud_03_00"); //Dobrze wykonane.

	if (!Npc_IsDead(Mod_803_STT_Mud_MT))
	{
		B_StartOtherRoutine	(Mod_803_STT_Mud_MT, "SAFETY");
	};

	Info_ClearChoices	(Info_Mod_Faice_Mud);

	Info_AddChoice	(Info_Mod_Faice_Mud, "Ferco powiedzial, ze zrobisz wszystko, co trzeba. Jaka jest wiec sytuacja?", Info_Mod_Faice_Mud_B);
	Info_AddChoice	(Info_Mod_Faice_Mud, "Czy jestem?", Info_Mod_Faice_Mud_A);
};

FUNC VOID Info_Mod_Faice_Mud_B()
{
	AI_Output(hero, self, "Info_Mod_Faice_Mud_B_15_00"); //Ferco powiedzial, ze zrobisz wszystko, co trzeba. Jaka jest wiec sytuacja?
	AI_Output(self, hero, "Info_Mod_Faice_Mud_B_03_01"); //Mój czas jest cenny. Kiedy nauczysz sie?

	Info_ClearChoices	(Info_Mod_Faice_Mud);

	Info_AddChoice	(Info_Mod_Faice_Mud, "Zapamietam to na przyszlosc. Jak wiec wyglada?", Info_Mod_Faice_Mud_C);
	Info_AddChoice	(Info_Mod_Faice_Mud, "Czy jestem?", Info_Mod_Faice_Mud_A);
};

FUNC VOID Info_Mod_Faice_Mud_A()
{
	AI_Output(hero, self, "Info_Mod_Faice_Mud_A_15_00"); //Czy jestem?

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		AI_Output(self, hero, "Info_Mod_Faice_Mud_A_03_01"); //Daj mi znac, kiedy jestes gotowy do nagrania.
	
		Info_ClearChoices	(Info_Mod_Faice_Mud);

		B_SetTopicStatus	(TOPIC_MOD_FERCO_MUD, LOG_SUCCESS);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Faice_Mud_A_03_02"); //Niestety zrobil pan to wszystko za darmo, poniewaz jest pan juz czlonkiem wielu spolecznosci.
		AI_Output(self, hero, "Info_Mod_Faice_Mud_A_03_03"); //Obawiam sie, ze nie mozemy Cie przyjac.
	
		Info_ClearChoices	(Info_Mod_Faice_Mud);

		AI_StopProcessInfos	(self);

		B_GivePlayerXP	(250);

		B_SetTopicStatus	(TOPIC_MOD_FERCO_MUD, LOG_SUCCESS);
		B_SetTopicStatus	(TOPIC_MOD_VMG_AUFNAHME, LOG_FAILED);
	};
};

FUNC VOID Info_Mod_Faice_Mud_C()
{
	AI_Output(hero, self, "Info_Mod_Faice_Mud_C_15_00"); //Zapamietam to na przyszlosc. Jak wiec wyglada?
	AI_Output(self, hero, "Info_Mod_Faice_Mud_C_03_01"); //...
	
	Info_Mod_Faice_Mud_A();
};

INSTANCE Info_Mod_Faice_Aufnahme (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Aufnahme_Condition;
	information	= Info_Mod_Faice_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem gotowy do nagrywania.";
};

FUNC INT Info_Mod_Faice_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faice_Mud))
	&& (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahme_15_00"); //Jestem gotowy do nagrywania.
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahme_03_01"); //Dokonam niezbednych ustalen. Do klasztoru przyjedzcie pózniej na dziedziniec klasztorny.

	AI_StopProcessInfos	(self);

	Mod_VMG_Dabei = 1;

	Mod_AnzahlNebengilden += 1;

	B_GivePlayerXP	(450);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_67);

	AI_Teleport(self, "VMG_19");
	B_StartOtherRoutine	(self, "RITUAL");
	B_StartOtherRoutine	(Mod_4020_VMG_Hermy_MT, "RITUAL");
	B_StartOtherRoutine	(Mod_1626_VMG_Furt_MT, "RITUAL");
	B_StartOtherRoutine	(Mod_1625_VMG_Neol_MT, "RITUAL");
	B_StartOtherRoutine	(Mod_1628_VMG_Anor_MT, "RITUAL");
	B_StartOtherRoutine	(Mod_1955_VMG_Turendil_MT, "RITUAL");

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "Faice mówi, ze powinienem pózniej przyjsc na podwórze klasztoru, aby zostac przyjetym. Powinienem tam jeszcze raz z nim porozmawiac.");
};

INSTANCE Info_Mod_Faice_Ritual (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Ritual_Condition;
	information	= Info_Mod_Faice_Ritual_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Faice_Ritual_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faice_Mud))
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Mod_VMG_Dabei == 1)
	&& (Npc_GetDistToWP(self, "VMG_22") < 700)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Ritual_Info()
{
	AI_Output(self, hero, "Info_Mod_Faice_Ritual_03_00"); //Czy mozemy zaczac dzialac?

	Info_ClearChoices	(Info_Mod_Faice_Ritual);

	Info_AddChoice	(Info_Mod_Faice_Ritual, "Jest cos, co musze zrobic.", Info_Mod_Faice_Ritual_B);
	Info_AddChoice	(Info_Mod_Faice_Ritual, "Tak.", Info_Mod_Faice_Ritual_A);
};

FUNC VOID Info_Mod_Faice_Ritual_B()
{
	AI_Output(hero, self, "Info_Mod_Faice_Ritual_B_15_00"); //Jest cos, co musze zrobic.
	AI_Output(self, hero, "Info_Mod_Faice_Ritual_B_03_01"); //Chodz, spiesz sie.

	Info_ClearChoices	(Info_Mod_Faice_Ritual);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Faice_Ritual_A()
{
	AI_Output(hero, self, "Info_Mod_Faice_Ritual_A_15_00"); //Tak.
	AI_Output(self, hero, "Info_Mod_Faice_Ritual_A_03_01"); //Nastepnie wprowadz srodek okregu.
	
	Info_ClearChoices	(Info_Mod_Faice_Ritual);

	Mod_VMG_Dabei = 2;

	Log_CreateTopic	(TOPIC_MOD_FAICE_HEILUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FAICE_HEILUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Wchodze do srodka kola magików, aby rozpoczac rytual.");
	B_SetTopicStatus	(TOPIC_MOD_VMG_AUFNAHME, LOG_SUCCESS);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Faice_RitualRunning (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_RitualRunning_Condition;
	information	= Info_Mod_Faice_RitualRunning_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Faice_RitualRunning_Condition()
{
	if (Mod_VMG_Dabei == 2)
	&& (Npc_GetDistToWP(hero, "VMG_22") < 700)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_RitualRunning_Info()
{
	AI_Output(self, hero, "Info_Mod_Faice_RitualRunning_03_00"); //To znów czas czlonków kola magów transformacji.
	AI_Output(self, hero, "Info_Mod_Faice_RitualRunning_03_01"); //Nowy czlonek wchodzi w nasze szeregi i staje sie albo opiekunem magów, albo sam czarodziejem.
	AI_Output(self, hero, "Info_Mod_Faice_RitualRunning_03_02"); //Pamietajcie swoje czyny: uratowal Tugettso, odwiedzil Gelato, zasniezona okolice, znalazl utracone role przeobrazen w bakcyla miesnego i harpy.
	AI_Output(self, hero, "Info_Mod_Faice_RitualRunning_03_03"); //Witamy go z powrotem!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DRAINED");

	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_NEBENGILDEN, "Przeksztalcajacy sie magowie przyjeli mnie jako jednego z nich.");
};

INSTANCE Info_Mod_Faice_PrePruefung (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_PrePruefung_Condition;
	information	= Info_Mod_Faice_PrePruefung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chciales mnie zobaczyc?";
};

FUNC INT Info_Mod_Faice_PrePruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_TradorTot))
	&& (Kapitel < 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_PrePruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Faice_PrePruefung_15_00"); //Chciales mnie zobaczyc?
	AI_Output(self, hero, "Info_Mod_Faice_PrePruefung_03_01"); //Jeszcze nie, bedzie musial czekac.
};

INSTANCE Info_Mod_Faice_Pruefung (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Pruefung_Condition;
	information	= Info_Mod_Faice_Pruefung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chciales mnie zobaczyc?";
};

FUNC INT Info_Mod_Faice_Pruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_TradorTot))
	&& (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Pruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_15_00"); //Chciales mnie zobaczyc?
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_03_01"); //Tak, dobrze od ciebie przyjsc. Móglbym spedzic troche czasu, opowiadajac o nas.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_03_02"); //Chcesz go uslyszec? W przeciwnym razie po prostu dam ci prace.

	Info_ClearChoices	(Info_Mod_Faice_Pruefung);

	Info_AddChoice	(Info_Mod_Faice_Pruefung, "Zadanie jest wystarczajace.", Info_Mod_Faice_Pruefung_B);
	Info_AddChoice	(Info_Mod_Faice_Pruefung, "Uslyszmy to.", Info_Mod_Faice_Pruefung_A);
};

FUNC VOID Info_Mod_Faice_Pruefung_C()
{
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_C_03_00"); //Genn wyjasni Wam pierwszy test w nauce starozytnych technik.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_C_03_01"); //Mozesz bezpiecznie podrózowac do Tugettso juz teraz, Albert zalatwil teleporter.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_C_03_02"); //Daj mu nowy kamien.
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_C_15_03"); //Bede, to zrobie. Zobacze cie dookola.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_C_03_04"); //Chce, aby wasze sciezki byly strzezone.

	Log_CreateTopic	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Pierwszy test na poznanie starych technik magów transformatywnych ma byc mi wyjasniony przez Genna.");

	Info_ClearChoices	(Info_Mod_Faice_Pruefung);
};

FUNC VOID Info_Mod_Faice_Pruefung_B()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_B_15_00"); //Zadanie jest wystarczajace.

	Info_Mod_Faice_Pruefung_C();
};

FUNC VOID Info_Mod_Faice_Pruefung_A()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_A_15_00"); //Uslyszmy to.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_A_03_01"); //Jak panstwo na pewno wiedza, pochodzimy z Tugettso, byles tam kilkakrotnie.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_A_03_02"); //W tym miejscu musisz wiedziec, ze istnieje silna wiez z natura, ale mozesz ja odczuc tylko wtedy, gdy jestes pelnoprawnym czlonkiem.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_A_03_03"); //Nie chce Cie tym ponizac, znam Twoje zaslugi. Wiecej o tym pózniej.

	Info_ClearChoices	(Info_Mod_Faice_Pruefung);

	Info_AddChoice	(Info_Mod_Faice_Pruefung, "[Dalej][dalej].", Info_Mod_Faice_Pruefung_E);
	Info_AddChoice	(Info_Mod_Faice_Pruefung, "Pozostawmy reszte z niej, obchodzi mnie.", Info_Mod_Faice_Pruefung_D);
};

FUNC VOID Info_Mod_Faice_Pruefung_E()
{
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_E_03_00"); //W kazdym razie staramy sie zyc z natura zamiast wykorzystywac ja do wlasnych celów.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_E_03_01"); //Nie zawsze jest to latwe, bo przeciez od czasu do czasu potrzebujemy tez troche miesa, wiekszosc z nas nie jest wegetarianami.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_E_03_02"); //Ale dzieki specjalnej medytacji jestesmy w stanie komunikowac sie ze zwierzetami z Tugettso.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_E_03_03"); //W ten sposób dowiadujemy sie, które zwierzeta natura zaplanowala dla nas i nie sprzeciwiaja sie oni oporowi przed polowaniami.
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_E_15_04"); //Co to ma wspólnego ze mna?
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_E_03_05"); //Teraz jestes gotowy do nauki tych technik. Czy mozemy zaczac dzialac?
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_E_15_06"); //Uslyszmy to.

	Info_Mod_Faice_Pruefung_C();
};

FUNC VOID Info_Mod_Faice_Pruefung_D()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_D_15_00"); //Pozostawmy reszte z niej, obchodzi mnie.

	Info_Mod_Faice_Pruefung_C();
};

INSTANCE Info_Mod_Faice_Pruefung2 (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Pruefung2_Condition;
	information	= Info_Mod_Faice_Pruefung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tu znów jestem.";
};

FUNC INT Info_Mod_Faice_Pruefung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Pruefung3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Pruefung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_15_00"); //Tu znów jestem.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_01"); //Wiem juz o tym. Pozwole sobie krótko podsumowac:

	if ((Mod_VMG_Pruefung_Genn + Mod_VMG_Pruefung_Asko + Mod_VMG_Pruefung_Per) == 4)
	{
		if (Mod_VMG_Pruefung_Genn == 2)
		&& (Mod_VMG_Pruefung_Asko == 1)
		&& (Mod_VMG_Pruefung_Per == 1)
		{
			AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_02"); //Genn nie mógl mi nic dobrego powiedziec, ale slyszalem tylko najlepsze Asko i Per.
		}
		else if (Mod_VMG_Pruefung_Genn == 1)
		&& (Mod_VMG_Pruefung_Asko == 2)
		&& (Mod_VMG_Pruefung_Per == 1)
		{
			AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_03"); //Asko nie moglo mi nic dobrego powiedziec, ale slyszalem tylko to, co najlepsze z Genn i Per.
		}
		else if (Mod_VMG_Pruefung_Genn == 1)
		&& (Mod_VMG_Pruefung_Asko == 1)
		&& (Mod_VMG_Pruefung_Per == 2)
		{
			AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_04"); //Niestety, Per nie mógl mi nic dobrego powiedziec, ale slyszalem tylko to, co najlepsze z Genn i Asko.
		};

		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_05"); //Po tym wszystkim, co sie stalo, nadal bede was odpowiednio nagradzac i nauczac techniki.
		AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_15_06"); //To jest wspanialomyslne. Co dostales za mnie?
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_07"); //Mozesz wybrac, czy chcesz miec zbroje czy szate. Kazda z tych pancerzy ma swoje wady i zalety.

		B_GivePlayerXP	(1000);

		Info_ClearChoices	(Info_Mod_Faice_Pruefung2);

		Info_AddChoice	(Info_Mod_Faice_Pruefung2, "Zabiore szate.", Info_Mod_Faice_Pruefung2_B);
		Info_AddChoice	(Info_Mod_Faice_Pruefung2, "Bede bral pancerz.", Info_Mod_Faice_Pruefung2_A);
	}
	else if ((Mod_VMG_Pruefung_Genn + Mod_VMG_Pruefung_Asko + Mod_VMG_Pruefung_Per) == 5)
	{
		if (Mod_VMG_Pruefung_Genn == 2)
		&& (Mod_VMG_Pruefung_Asko == 2)
		&& (Mod_VMG_Pruefung_Per == 1)
		{
			AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_08"); //Genn i Asko powiedzieli mi, ze nie mozesz wykonywac swojej pracy, ale Per byl z toba zachwycony.
		}
		else if (Mod_VMG_Pruefung_Genn == 2)
		&& (Mod_VMG_Pruefung_Asko == 1)
		&& (Mod_VMG_Pruefung_Per == 2)
		{
			AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_09"); //Genn i Per powiedzieli mi, ze nie mozesz wykonywac swojej pracy, ale Asko bylo z toba zachwycone.
		}
		else if (Mod_VMG_Pruefung_Genn == 1)
		&& (Mod_VMG_Pruefung_Asko == 2)
		&& (Mod_VMG_Pruefung_Per == 2)
		{
			AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_10"); //Asko i Per powiedzieli mi, ze nie mozna wykonac swojej pracy, ale Genn byl pod tym wzgledem zachwycony.
		};

		B_GivePlayerXP	(800);

		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_11"); //Jesli zrezygnujesz z nagrody, naucze cie technik.
		AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_15_12"); //Porzucam moja nagrode. Naucz mnie starych technik.
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_13"); //Wróc do domu, gdy bedziesz gotowy.

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Moge teraz uczyc sie z Faice.");
		B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);
	}
	else if ((Mod_VMG_Pruefung_Genn + Mod_VMG_Pruefung_Asko + Mod_VMG_Pruefung_Per) == 6)
	{
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_14"); //Nie udalo Ci sie zakwalifikowac do starych technik.
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_15"); //Odmówia teraz na zawsze. Przepraszam za to.
		AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_15_16"); //Nie ma nic, co mozesz z tym zrobic...... Oto prawda?
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_17"); //Co masz na mysli?

		B_GivePlayerXP	(500);

		Info_ClearChoices	(Info_Mod_Faice_Pruefung2);

		Info_AddChoice	(Info_Mod_Faice_Pruefung2, "A moze okolo tysiaca sztuk zlota?", Info_Mod_Faice_Pruefung2_D);
		Info_AddChoice	(Info_Mod_Faice_Pruefung2, "Nic. Mysle, ze po prostu nie jestem wystarczajaco dobry. Pozegnanie pozegnania.", Info_Mod_Faice_Pruefung2_C);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_18"); //Wyksztalciles wszystkie zadania i wyszkoliles sie, aby nauczyc sie starych technik. Gratulacje!
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_19"); //Oczywiscie powinienes równiez otrzymac uczciwa nagrode.
		AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_15_20"); //To bardzo hojne. Co dostales za mnie?
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_21"); //Mozesz wybrac, czy chcesz miec zbroje czy szate. Kazda z tych pancerzy ma swoje wady i zalety.
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_22"); //Dodatkowo otrzymasz 1000 sztuk zlota.

		B_GivePlayerXP	(1500);

		Info_ClearChoices	(Info_Mod_Faice_Pruefung2);

		Info_AddChoice	(Info_Mod_Faice_Pruefung2, "Zabiore szate.", Info_Mod_Faice_Pruefung2_F);
		Info_AddChoice	(Info_Mod_Faice_Pruefung2, "Bede bral pancerz.", Info_Mod_Faice_Pruefung2_E);
	};
};

FUNC VOID Info_Mod_Faice_Pruefung2_G()
{
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_G_03_00"); //Chce, zebyscie mieli ja pania.
};

FUNC VOID Info_Mod_Faice_Pruefung2_F()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_F_15_00"); //Zabiore szate.

	Info_Mod_Faice_Pruefung2_G();

	CreateInvItems	(hero, ItAr_Naturmagier2, 1);

	CreateInvItems	(hero, ItMi_Gold, 1000);

	B_ShowGivenThings	("1000 zlote monety i szaty magiczne do przerobu zachowane");

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Otrzymalem moja nagrode i moge teraz uczyc sie od Faice.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Faice_Pruefung2);
};

FUNC VOID Info_Mod_Faice_Pruefung2_E()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_E_15_00"); //Bede bral pancerz.

	Info_Mod_Faice_Pruefung2_G();

	CreateInvItems	(hero, ItAr_Verwandlungskrieger, 1);

	CreateInvItems	(hero, ItMi_Gold, 1000);

	B_ShowGivenThings	("1000 zlotych monet i zbroja zabezpieczonych ochraniaczy");

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Otrzymalem moja nagrode i moge teraz uczyc sie od Faice.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Faice_Pruefung2);
};

FUNC VOID Info_Mod_Faice_Pruefung2_D()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_D_15_00"); //A moze okolo tysiaca sztuk zlota?
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_D_03_01"); //Jak smiesz? Jestesmy nieprzekupni! Z mojego punktu widzenia!

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Nie mam juz szansy nauczyc sie starych technik.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Faice_Pruefung2);
};

FUNC VOID Info_Mod_Faice_Pruefung2_C()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_C_15_00"); //Nic. Mysle, ze po prostu nie jestem wystarczajaco dobry. Pozegnanie pozegnania.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_C_03_01"); //Pozegnanie pozegnania.

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Nie mam juz szansy nauczyc sie starych technik.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Faice_Pruefung2);
};

FUNC VOID Info_Mod_Faice_Pruefung2_B()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_B_15_00"); //Zabiore szate.

	Info_Mod_Faice_Pruefung2_G();

	CreateInvItems	(hero, ItAr_Naturmagier2, 1);

	B_ShowGivenThings	("Czarodziejski szlafrok odbierajacy transformacje");

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Otrzymalem moja nagrode i moge teraz uczyc sie od Faice.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Faice_Pruefung2);
};

FUNC VOID Info_Mod_Faice_Pruefung2_A()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_A_15_00"); //Bede bral pancerz.

	Info_Mod_Faice_Pruefung2_G();

	CreateInvItems	(hero, ItAr_Verwandlungskrieger, 1);

	B_ShowGivenThings	("Zachowanie zbroi opiekunów");

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Otrzymalem moja nagrode i moge teraz uczyc sie od Faice.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Faice_Pruefung2);
};

INSTANCE Info_Mod_Faice_Pruefung3 (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Pruefung3_Condition;
	information	= Info_Mod_Faice_Pruefung3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Umiejetnosc rozmawiania ze zwierzetami (5 punktów nauki)";
};

FUNC INT Info_Mod_Faice_Pruefung3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faice_Pruefung2))
	&& ((Mod_VMG_Pruefung_Genn + Mod_VMG_Pruefung_Asko + Mod_VMG_Pruefung_Per) < 6)
	&& (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_TIER] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Pruefung3_Info()
{
	B_TeachPlayerTalentForeignLanguage (self, hero, LANGUAGE_Tier);
};

INSTANCE Info_Mod_Faice_BACK (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_BACK_Condition;
	information	= Info_Mod_Faice_BACK_Info;
	permanent	= 1;
	important	= 0;
	description	= "(wyjscie z pomieszczenia)";
};

FUNC INT Info_Mod_Faice_BACK_Condition()
{
	if (Npc_GetDistToWP(self, "OW_PATH_TEMPELRUIN07") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_BACK_Info()
{
	AI_StopProcessInfos	(self);

	AI_Teleport	(hero, "LOCATION_28_01");
};

INSTANCE Info_Mod_Faice_Pickpocket (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Pickpocket_Condition;
	information	= Info_Mod_Faice_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Faice_Pickpocket_Condition()
{
	C_Beklauen	(170, ItSc_TrfShadowbeast, 2);
};

FUNC VOID Info_Mod_Faice_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Faice_Pickpocket);

	Info_AddChoice	(Info_Mod_Faice_Pickpocket, DIALOG_BACK, Info_Mod_Faice_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Faice_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Faice_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Faice_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Faice_Pickpocket);
};

FUNC VOID Info_Mod_Faice_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Faice_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Faice_Pickpocket);

		Info_AddChoice	(Info_Mod_Faice_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Faice_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Faice_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Faice_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Faice_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Faice_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Faice_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Faice_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Faice_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Faice_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Faice_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Faice_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Faice_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Faice_EXIT (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_EXIT_Condition;
	information	= Info_Mod_Faice_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Faice_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Faice_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
