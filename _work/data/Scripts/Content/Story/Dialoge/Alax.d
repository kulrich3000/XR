INSTANCE Info_Mod_Alax_Hi (C_INFO)
{
	npc		= Mod_7502_KDS_Alax_MT;
	nr		= 1;
	condition	= Info_Mod_Alax_Hi_Condition;
	information	= Info_Mod_Alax_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alax_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alax_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Alax_Hi_14_00"); //Hej, co robisz tutaj? Potrzebuje absolutnej koncentracji podczas picia.
	AI_Output(hero, self, "Info_Mod_Alax_Hi_15_01"); //Lubie, ze tutaj jest tak cicho....
	AI_Output(self, hero, "Info_Mod_Alax_Hi_14_02"); //.... to moze byc prawda. Ale jako byly guru sypialni, to mój nawyk.
	AI_Output(hero, self, "Info_Mod_Alax_Hi_15_03"); //Byles guru w obozie bagnistym?
	AI_Output(self, hero, "Info_Mod_Alax_Hi_14_04"); //Tak wlasnie powiedzialem.
	AI_Output(self, hero, "Info_Mod_Alax_Hi_14_05"); //Ale po pokonaniu sypialni przez Xardasa i zburzeniu bariery bylo dla mnie oczywiste, ze pójde za jego przykladem.
	AI_Output(self, hero, "Info_Mod_Alax_Hi_14_06"); //W koncu uwolnil mnie od tej falszywej doktryny, jak równiez od niewoli w kolonii.
	AI_Output(self, hero, "Info_Mod_Alax_Hi_14_07"); //Zostalem wiec alchemikiem w szeregach demonicznych magów.
};

INSTANCE Info_Mod_Alax_AlchemieLehrer (C_INFO)
{
	npc		= Mod_7502_KDS_Alax_MT;
	nr		= 1;
	condition	= Info_Mod_Alax_AlchemieLehrer_Condition;
	information	= Info_Mod_Alax_AlchemieLehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie nauczyc o alchemii?";
};

FUNC INT Info_Mod_Alax_AlchemieLehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alax_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Alax_AlchemieLehrer_15_00"); //Czy mozesz mnie nauczyc o alchemii?
	AI_Output(self, hero, "Info_Mod_Alax_AlchemieLehrer_14_01"); //Dlaczego powinienem to zrobic z Beliarem?

	Info_ClearChoices	(Info_Mod_Alax_AlchemieLehrer);

	Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer, "Bo jestem milym facetem.", Info_Mod_Alax_AlchemieLehrer_B);
	Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer, "Pomagalem wtedy Xardasowi w wygnaniu sypialni.", Info_Mod_Alax_AlchemieLehrer_A);
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer_C()
{
	AI_Output(hero, self, "Info_Mod_Alax_AlchemieLehrer_C_15_00"); //Który z nich?
	AI_Output(self, hero, "Info_Mod_Alax_AlchemieLehrer_C_14_01"); //Zaskocz mnie.... albo inaczej mówiac, nie krasc mnie wiecej czasu i pozwól mi kontynuowac prace.

	Info_ClearChoices	(Info_Mod_Alax_AlchemieLehrer);

	Log_CreateTopic	(TOPIC_MOD_ALAX_ZUTATEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ALAX_ZUTATEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Zanim Alax uczy mnie czegos o alchemii, powinienem przyniesc mu 6 kawalków 13 eliksirów, roslin lub innych skladników wedlug mojego wyboru.");
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer_B()
{
	AI_Output(hero, self, "Info_Mod_Alax_AlchemieLehrer_B_15_00"); //Bo jestem milym facetem.
	AI_Output(self, hero, "Info_Mod_Alax_AlchemieLehrer_B_14_01"); //Mily facet! Nastepnie udaj sie do zmiekczonych magów ognia i popros ich o laske.
	AI_Output(self, hero, "Info_Mod_Alax_AlchemieLehrer_B_14_02"); //Jesli mam nauczyc cie czegokolwiek, popros mnie o szesc kawalków kazdej z 13 róznych eliksirów, roslin lub innych skladników. Wtedy bedziemy mogli dalej rozmawiac.

	Info_Mod_Alax_AlchemieLehrer_C();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer_A()
{
	AI_Output(hero, self, "Info_Mod_Alax_AlchemieLehrer_A_15_00"); //Pomagalem wtedy Xardasowi w wygnaniu sypialni.
	AI_Output(self, hero, "Info_Mod_Alax_AlchemieLehrer_A_14_01"); //Haha, oczywiscie.... i zbezczescilem swiete dziewice Inno. Ja sie oszukuje.
	AI_Output(self, hero, "Info_Mod_Alax_AlchemieLehrer_A_14_02"); //Jesli naprawde chcesz, abym cos cie nauczyl, popros mnie o szesc kawalków kazdej z 13 róznych eliksirów, roslin lub innych skladników.

	Info_Mod_Alax_AlchemieLehrer_C();
};

INSTANCE Info_Mod_Alax_AlchemieLehrer2 (C_INFO)
{
	npc		= Mod_7502_KDS_Alax_MT;
	nr		= 1;
	condition	= Info_Mod_Alax_AlchemieLehrer2_Condition;
	information	= Info_Mod_Alax_AlchemieLehrer2_Info;
	permanent	= 1;
	important	= 0;
	description	= "(skladniki dajace)";
};

FUNC INT Info_Mod_Alax_AlchemieLehrer2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alax_AlchemieLehrer))
	&& (Mod_Alax_Zutaten < 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Verteiler()
{
	Info_ClearChoices	(Info_Mod_Alax_AlchemieLehrer2);

	Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, DIALOG_BACK, Info_Mod_Alax_AlchemieLehrer2_BACK);

	Spine_UpdateAchievementProgress(SPINE_ACHIEVEMENT_29, Mod_Alax_Zutaten);
	
	if (Mod_Alax_Zutaten < 13)
	{
		if (!Mod_Alax_Zutat_Zwillingsdorn)
		&& (Npc_HasItems(hero, ItPl_Zwillingsdorn) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "Podwójny trzpien 6x", Info_Mod_Alax_AlchemieLehrer2_Zwillingsdorn);
		};
		if (!Mod_Alax_Zutat_Weidenbeere)
		&& (Npc_HasItems(hero, ItPl_Planeberry) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "Jagoda wierzba 6x", Info_Mod_Alax_AlchemieLehrer2_Weidenbeere);
		};
		if (!Mod_Alax_Zutat_Waldbeere)
		&& (Npc_HasItems(hero, ItPl_Forestberry) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x daj daje jagody lesne 6x", Info_Mod_Alax_AlchemieLehrer2_Waldbeere);
		};
		if (!Mod_Alax_Zutat_LeichtesMana)
		&& (Npc_HasItems(hero, ItPo_Mana_06) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x eliksiry lekkiej maniku", Info_Mod_Alax_AlchemieLehrer2_LeichtesMana);
		};
		if (!Mod_Alax_Zutat_SchnelleHeilung)
		&& (Npc_HasItems(hero, ItPo_Health_05) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "Dac 6x eliksiry szybkiego uzdrawiania.", Info_Mod_Alax_AlchemieLehrer2_SchnelleHeilung);
		};
		if (!Mod_Alax_Zutat_Sumpfkraut)
		&& (Npc_HasItems(hero, ItPl_SwampHerb) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x ziólka boga", Info_Mod_Alax_AlchemieLehrer2_Sumpfkraut);
		};
		if (!Mod_Alax_Zutat_Snapperkraut)
		&& (Npc_HasItems(hero, ItPl_Speed_Herb_01) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x Podawac kapuste glowiasta", Info_Mod_Alax_AlchemieLehrer2_Snapperkraut);
		};
		if (!Mod_Alax_Zutat_Schwefel)
		&& (Npc_HasItems(hero, ItMi_Sulfur) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x siarkowanie", Info_Mod_Alax_AlchemieLehrer2_Schwefel);
		};
		if (!Mod_Alax_Zutat_SchwarzePerle)
		&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x Podac czarna perle", Info_Mod_Alax_AlchemieLehrer2_SchwarzePerle);
		};
		if (!Mod_Alax_Zutat_Pech)
		&& (Npc_HasItems(hero, ItMi_Pitch) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x podzialka", Info_Mod_Alax_AlchemieLehrer2_Pech);
		};
		if (!Mod_Alax_Zutat_ManaExtrakt)
		&& (Npc_HasItems(hero, ItPo_Mana_02) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x Podajnik ekstraktu z maniku", Info_Mod_Alax_AlchemieLehrer2_ManaExtrakt);
		};
		if (!Mod_Alax_Zutat_ManaEssenz)
		&& (Npc_HasItems(hero, ItPo_Mana_01) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x esencja manekina daje", Info_Mod_Alax_AlchemieLehrer2_ManaEssenz);
		};
		if (!Mod_Alax_Zutat_ManaElixier)
		&& (Npc_HasItems(hero, ItPo_Mana_03) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x Podajnik Mana Elixer", Info_Mod_Alax_AlchemieLehrer2_ManaElixier);
		};
		if (!Mod_Alax_Zutat_LeichterManatrank)
		&& (Npc_HasItems(hero, ItPo_Mana_05) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x lekki eliksir z woda lekka", Info_Mod_Alax_AlchemieLehrer2_LeichterManatrank);
		};
		if (!Mod_Alax_Zutat_LeichteHeilung)
		&& (Npc_HasItems(hero, ItPo_Health_06) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x Lekki Potencjal Goracy 6x", Info_Mod_Alax_AlchemieLehrer2_LeichteHeilung);
		};
		if (!Mod_Alax_Zutat_Kohle)
		&& (Npc_HasItems(hero, ItMi_Coal) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "dac 6 razy wegiel kamienny", Info_Mod_Alax_AlchemieLehrer2_Kohle);
		};
		if (!Mod_Alax_Zutat_Heilwurzel)
		&& (Npc_HasItems(hero, ItPl_Health_Herb_03) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6 x korzen leczniczy", Info_Mod_Alax_AlchemieLehrer2_Heilwurzel);
		};
		if (!Mod_Alax_Zutat_Heilpflanze)
		&& (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x roslina lecznicza dajaca dawke 6x", Info_Mod_Alax_AlchemieLehrer2_Heilpflanze);
		};
		if (!Mod_Alax_Zutat_Heilkraut)
		&& (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x ziola daja", Info_Mod_Alax_AlchemieLehrer2_Heilkraut);
		};
		if (!Mod_Alax_Zutat_Heilknospe)
		&& (Npc_HasItems(hero, ItPl_Heilknospe) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x paczki do gojenia sie", Info_Mod_Alax_AlchemieLehrer2_Heilknospe);
		};
		if (!Mod_Alax_Zutat_GletscherQuartz)
		&& (Npc_HasItems(hero, ItMi_Quartz) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x dawac lód lodowiec-Quart", Info_Mod_Alax_AlchemieLehrer2_GletscherQuartz);
		};
		if (!Mod_Alax_Zutat_Feuerwurzel)
		&& (Npc_HasItems(hero, ItPl_Mana_Herb_03) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x korzen ognia daje", Info_Mod_Alax_AlchemieLehrer2_Feuerwurzel);
		};
		if (!Mod_Alax_Zutat_Feuernessel)
		&& (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x pokrzywa przeciwpozarowa podaruje", Info_Mod_Alax_AlchemieLehrer2_Feuernessel);
		};
		if (!Mod_Alax_Zutat_ExtraktDerHeilung)
		&& (Npc_HasItems(hero, ItPo_Health_02) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x wyciag z wyciagu z gojenia daje", Info_Mod_Alax_AlchemieLehrer2_ExtraktDerHeilung);
		};
		if (!Mod_Alax_Zutat_EssenzDerHeilung)
		&& (Npc_HasItems(hero, ItPo_Health_01) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x daje esencje uzdrawiania", Info_Mod_Alax_AlchemieLehrer2_EssenzDerHeilung);
		};
		if (!Mod_Alax_Zutat_ElixierDerHeilung)
		&& (Npc_HasItems(hero, ItPo_Health_03) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x Eliksir do leczenia", Info_Mod_Alax_AlchemieLehrer2_ElixierDerHeilung);
		};
		if (!Mod_Alax_Zutat_Fliegenpilz)
		&& (Npc_HasItems(hero, ItPl_Mushroom_03) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x Wydajnosc z podzialka lotna", Info_Mod_Alax_AlchemieLehrer2_Fliegenpilz);
		};
		if (!Mod_Alax_Zutat_Feuerkraut)
		&& (Npc_HasItems(hero, ItPl_Mana_Herb_02) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x Zeba ogniowa daje", Info_Mod_Alax_AlchemieLehrer2_Feuerkraut);
		};
		if (!Mod_Alax_Zutat_Dunkelpilz)
		&& (Npc_HasItems(hero, ItPl_Mushroom_01) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x ciemny grzyb daje", Info_Mod_Alax_AlchemieLehrer2_Dunkelpilz);
		};
		if (!Mod_Alax_Zutat_Buddlerfleisch)
		&& (Npc_HasItems(hero, ItPl_Mushroom_02) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x Podaje sie mieso Buddlera", Info_Mod_Alax_AlchemieLehrer2_Buddlerfleisch);
		};
		if (!Mod_Alax_Zutat_Blauflieder)
		&& (Npc_HasItems(hero, ItPl_Blueplant) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x niebieskie piosenki daja", Info_Mod_Alax_AlchemieLehrer2_Blauflieder);
		};
		if (!Mod_Alax_Zutat_Bergkristall)
		&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "6x krysztal skalny daje", Info_Mod_Alax_AlchemieLehrer2_Bergkristall);
		};
		if (!Mod_Alax_Zutat_Aquamarin)
		&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 6)
		{
			Info_AddChoice	(Info_Mod_Alax_AlchemieLehrer2, "Dac 6x Aquamarine 6x", Info_Mod_Alax_AlchemieLehrer2_Aquamarin);
		};
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Alax_AlchemieLehrer2_Verteiler_15_00"); //To 13 razy szesc.
		AI_Output(self, hero, "Info_Mod_Alax_AlchemieLehrer2_Verteiler_14_01"); //faktyczny Nie byloby to konieczne. Jak juz w miedzyczasie nauczylem sie, byles wlasciwie pomocnikiem mojego mistrza w walce z sypialnym... Wiecej
		AI_Output(hero, self, "Info_Mod_Alax_AlchemieLehrer2_Verteiler_15_02"); //Co?
		AI_Output(self, hero, "Info_Mod_Alax_AlchemieLehrer2_Verteiler_14_03"); //W kazdym razie, czego chcesz, abym cie nauczyl?

		B_GivePlayerXP	(600);

		CurrentNQ += 1;

		B_SetTopicStatus	(TOPIC_MOD_ALAX_ZUTATEN, LOG_SUCCESS);

		Log_CreateTopic	(TOPIC_MOD_LEHRER_BELIARFESTUNG, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_BELIARFESTUNG, "Alax moze mnie nauczyc sztuki alchemii.");
	};
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Info()
{
	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_BACK()
{
	Info_ClearChoices	(Info_Mod_Alax_AlchemieLehrer2);
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Zwillingsdorn()
{
	B_GiveInvItems	(hero, self, ItPl_Zwillingsdorn, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Zwillingsdorn = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem 6x blizniaczy kregoslup Alax 6x.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Weidenbeere()
{
	B_GiveInvItems	(hero, self, ItPl_Planeberry, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Weidenbeere = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem jagode wierzby Alax 6x.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Waldbeere()
{
	B_GiveInvItems	(hero, self, ItPl_Forestberry, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Waldbeere = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6x lesne jagody lesne.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_ManaEssenz()
{
	B_GiveInvItems	(hero, self, ItPo_Mana_01, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_ManaEssenz = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6x Mana Essence.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_EssenzDerHeilung()
{
	B_GiveInvItems	(hero, self, ItPo_Health_01, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_EssenzDerHeilung = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem 6x Alax 6x esencje gojenia.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_ExtraktDerHeilung()
{
	B_GiveInvItems	(hero, self, ItPo_Health_02, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_ExtraktDerHeilung = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem 6x wyciag z Alaxu 6x wyciagu z gojenia.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_ElixierDerHeilung()
{
	B_GiveInvItems	(hero, self, ItPo_Health_03, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_ElixierDerHeilung = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynosilem 6x eliksir Alax 6x Elixir of Healing.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_SchnelleHeilung()
{
	B_GiveInvItems	(hero, self, ItPo_Health_05, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_SchnelleHeilung = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6x eliksiry szybkiego gojenia sie.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_LeichteHeilung()
{
	B_GiveInvItems	(hero, self, ItPo_Health_06, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_LeichteHeilung = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem lekkie mikstury lecznicze Alax 6x.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_ManaExtrakt()
{
	B_GiveInvItems	(hero, self, ItPo_Mana_02, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_ManaExtrakt = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem wyciag z maniku Alax 6x.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_ManaElixier()
{
	B_GiveInvItems	(hero, self, ItPo_Mana_03, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_ManaElixier = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6x Mana Elixier.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_LeichterManatrank()
{
	B_GiveInvItems	(hero, self, ItPo_Mana_05, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_LeichterManatrank = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynioslem 6x lekkie eliksiry z mana Alaxa.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_LeichtesMana()
{
	B_GiveInvItems	(hero, self, ItPo_Mana_06, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_LeichtesMana = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6x eliksiry lekkiej maniku.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Schwefel()
{
	B_GiveInvItems	(hero, self, ItMi_Sulfur, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Schwefel = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynioslem len 6x siarke.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_SchwarzePerle()
{
	B_GiveInvItems	(hero, self, ItMi_DarkPearl, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_SchwarzePerle = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynosilem Alax 6x Black Pearl.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Pech()
{
	B_GiveInvItems	(hero, self, ItMi_Pitch, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Pech = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alaxowi 6x pecha.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Kohle()
{
	B_GiveInvItems	(hero, self, ItMi_Coal, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Kohle = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynioslem 6x wegiel Alax.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Heilwurzel()
{
	B_GiveInvItems	(hero, self, ItPl_Health_Herb_03, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Heilwurzel = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynosilem 6x leczniczy korzen Alax 6x.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Heilpflanze()
{
	B_GiveInvItems	(hero, self, ItPl_Health_Herb_01, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Heilpflanze = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6x rosliny lecznicze.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Heilkraut()
{
	B_GiveInvItems	(hero, self, ItPl_Health_Herb_02, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Heilkraut = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynosilem Alax 6x lecznicze ziololecznicze.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Heilknospe()
{
	B_GiveInvItems	(hero, self, ItPl_Heilknospe, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Heilknospe = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6x leczniczy bud.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_GletscherQuartz()
{
	B_GiveInvItems	(hero, self, ItMi_Quartz, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_GletscherQuartz = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6x Glacier Quartz.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Feuerwurzel()
{
	B_GiveInvItems	(hero, self, ItPl_Mana_Herb_03, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Feuerwurzel = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6x korzen ognia.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Feuernessel()
{
	B_GiveInvItems	(hero, self, ItPl_Mana_Herb_01, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Feuernessel = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynosilem 6x pokrzywe ogniowa Alax 6x.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Feuerkraut()
{
	B_GiveInvItems	(hero, self, ItPl_Mana_Herb_02, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Feuerkraut = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6x Fireweed.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Bergkristall()
{
	B_GiveInvItems	(hero, self, ItMi_Rockcrystal, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Bergkristall = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem 6x Alax 6x krysztal skalny.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Aquamarin()
{
	B_GiveInvItems	(hero, self, ItMi_Aquamarine, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Aquamarin = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6x Aquamarine.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Buddlerfleisch()
{
	B_GiveInvItems	(hero, self, ItPl_Mushroom_02, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Buddlerfleisch = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6x mieso Buddlera.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Dunkelpilz()
{
	B_GiveInvItems	(hero, self, ItPl_Mushroom_01, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Dunkelpilz = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynosilem 6x Alax 6x ciemny grzyb.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Fliegenpilz()
{
	B_GiveInvItems	(hero, self, ItPl_Mushroom_03, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Fliegenpilz = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przywiózlem Alax 6x Fly agaric.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Blauflieder()
{
	B_GiveInvItems	(hero, self, ItPl_Blueplant, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Blauflieder = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6 niebieskich piosenek.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Sumpfkraut()
{
	B_GiveInvItems	(hero, self, ItPl_SwampHerb, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Sumpfkraut = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynosilem Alaxa szesc przelyku.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

FUNC VOID Info_Mod_Alax_AlchemieLehrer2_Snapperkraut()
{
	B_GiveInvItems	(hero, self, ItPl_Speed_Herb_01, 6);

	Mod_Alax_Zutaten += 1;

	Mod_Alax_Zutat_Snapperkraut = TRUE;
	
	B_LogEntry	(TOPIC_MOD_ALAX_ZUTATEN, "Przynióslem Alax 6x Snapperkraut.");

	Info_Mod_Alax_AlchemieLehrer2_Verteiler();
};

INSTANCE Info_Mod_Alax_Lehrer (C_INFO)
{
	npc		= Mod_7502_KDS_Alax_MT;
	nr		= 1;
	condition	= Info_Mod_Alax_Lehrer_Condition;
	information	= Info_Mod_Alax_Lehrer_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie alchemii.";
};

FUNC INT Info_Mod_Alax_Lehrer_Condition()
{	
	if (Mod_Alax_Zutaten == 13)
	&& (Mod_IstLehrling == 1)
	{	
		return 1;
	};
};

FUNC VOID Info_Mod_Alax_Lehrer_Info()
{
	AI_Output (hero, self, "Info_Mod_Alax_Lehrer_15_00"); //Bring mir etwas über die Alchemie bei.	
	AI_Output (self, hero, "Info_Mod_Alax_Lehrer_14_01"); //Was willst du wissen?
		
	Info_ClearChoices 	(Info_Mod_Alax_Lehrer);
	Info_AddChoice 		(Info_Mod_Alax_Lehrer,DIALOG_BACK,Info_Mod_Alax_Lehrer_BACK);

	if (PLAYER_TALENT_ALCHEMY[POTION_Regeneration] == FALSE)
	{
		Info_AddChoice	  (Info_Mod_Alax_Lehrer, B_BuildLearnString ("odbudowa eliksiru", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Regeneration)), Info_Mod_Alax_Lehrer_Regeneration);
	};
		
	if (PLAYER_TALENT_ALCHEMY[POTION_Health_07] == FALSE)
	{
		Info_AddChoice	  (Info_Mod_Alax_Lehrer, B_BuildLearnString ("Napój lekkiego leczenia", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_07)), Info_Mod_Alax_Lehrer_Health_07);
	};
		
	if (PLAYER_TALENT_ALCHEMY[POTION_Health_06] == FALSE)
	{
		Info_AddChoice	  (Info_Mod_Alax_Lehrer, B_BuildLearnString ("Lekki eliksir leczniczy", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_06)), Info_Mod_Alax_Lehrer_Health_06);
	};
		
	if (PLAYER_TALENT_ALCHEMY[POTION_Health_05] == FALSE)
	{
		Info_AddChoice	  (Info_Mod_Alax_Lehrer, B_BuildLearnString ("Napoje szybko lecznicze", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_05)), Info_Mod_Alax_Lehrer_Health_05);
	};
	
	if (PLAYER_TALENT_ALCHEMY[POTION_Health_01] == FALSE)
	&& (Mod_LehrlingBei != 1)
	{
		Info_AddChoice 		(Info_Mod_Alax_Lehrer,B_BuildLearnString ("Istota uzdrawiania", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_01)),Info_Mod_Alax_Lehrer_HEALTH_01);
	};
		
	if (PLAYER_TALENT_ALCHEMY[POTION_Health_02] == FALSE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE)
	{
		Info_AddChoice	  (Info_Mod_Alax_Lehrer, B_BuildLearnString ("Ekstrakt z ekstraktu leczniczego", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_02)), Info_Mod_Alax_Lehrer_Health_02);
	};
		
	if (PLAYER_TALENT_ALCHEMY[POTION_Health_03] == FALSE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Health_02] == TRUE)
	{
		Info_AddChoice	  (Info_Mod_Alax_Lehrer, B_BuildLearnString ("Eliksir uzdrawiania", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_03)), Info_Mod_Alax_Lehrer_Health_03);
	};
		
	if (PLAYER_TALENT_ALCHEMY[POTION_Mana_06] == FALSE)
	{
		Info_AddChoice	  (Info_Mod_Alax_Lehrer, B_BuildLearnString ("Pic lekka mane", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_06)), Info_Mod_Alax_Lehrer_Mana_06);
	};
		
	if (PLAYER_TALENT_ALCHEMY[POTION_Mana_05] == FALSE)
	{
		Info_AddChoice	  (Info_Mod_Alax_Lehrer, B_BuildLearnString ("Eliksir lekki", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_05)), Info_Mod_Alax_Lehrer_Mana_05);
	};
		
	if (PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == FALSE)
	&& (Mod_LehrlingBei != 1)
	{
		Info_AddChoice	  (Info_Mod_Alax_Lehrer, B_BuildLearnString ("Mana Essence", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_01)), Info_Mod_Alax_Lehrer_Mana_01);
	};
		
	if (PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == FALSE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == TRUE)
	{
		Info_AddChoice	  (Info_Mod_Alax_Lehrer, B_BuildLearnString ("ekstrakt z maneny", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_02)), Info_Mod_Alax_Lehrer_Mana_02);
	};
		
	if (PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == FALSE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == TRUE)
	{
		Info_AddChoice	  (Info_Mod_Alax_Lehrer, B_BuildLearnString ("Mana Elixir", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_03)), Info_Mod_Alax_Lehrer_Mana_03);
	};
		
	if (PLAYER_TALENT_ALCHEMY[POTION_Speed] == FALSE)
	{
		Info_AddChoice	  (Info_Mod_Alax_Lehrer, B_BuildLearnString ("Szybkosc", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Speed)), Info_Mod_Alax_Lehrer_Speed);
	};
};
FUNC VOID Info_Mod_Alax_Lehrer_BACK()
{
	Info_ClearChoices 	(Info_Mod_Alax_Lehrer);
};
FUNC VOID Info_Mod_Alax_Lehrer_Regeneration()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Regeneration);
};
FUNC VOID Info_Mod_Alax_Lehrer_HEALTH_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_01);
};
FUNC VOID Info_Mod_Alax_Lehrer_HEALTH_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_02);
};
FUNC VOID Info_Mod_Alax_Lehrer_Health_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_03);
};
FUNC VOID Info_Mod_Alax_Lehrer_Health_05()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_05);
};
FUNC VOID Info_Mod_Alax_Lehrer_Health_06()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_06);
};
FUNC VOID Info_Mod_Alax_Lehrer_Health_07()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_07);
};
FUNC VOID Info_Mod_Alax_Lehrer_MANA_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_01);
};
FUNC VOID Info_Mod_Alax_Lehrer_MANA_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_02);
};
FUNC VOID Info_Mod_Alax_Lehrer_MANA_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_03);
};
FUNC VOID Info_Mod_Alax_Lehrer_MANA_05()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_05);
};
FUNC VOID Info_Mod_Alax_Lehrer_MANA_06()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_06);
};
FUNC VOID Info_Mod_Alax_Lehrer_Speed()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Speed);
};

INSTANCE Info_Mod_Alax_Pickpocket (C_INFO)
{
	npc		= Mod_7502_KDS_Alax_MT;
	nr		= 1;
	condition	= Info_Mod_Alax_Pickpocket_Condition;
	information	= Info_Mod_Alax_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Alax_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Alax_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Alax_Pickpocket);

	Info_AddChoice	(Info_Mod_Alax_Pickpocket, DIALOG_BACK, Info_Mod_Alax_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Alax_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Alax_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Alax_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Alax_Pickpocket);
};

FUNC VOID Info_Mod_Alax_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Alax_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Alax_Pickpocket);

		Info_AddChoice	(Info_Mod_Alax_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Alax_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Alax_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Alax_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Alax_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Alax_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Alax_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Alax_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Alax_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Alax_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Alax_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Alax_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Alax_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Alax_EXIT (C_INFO)
{
	npc		= Mod_7502_KDS_Alax_MT;
	nr		= 1;
	condition	= Info_Mod_Alax_EXIT_Condition;
	information	= Info_Mod_Alax_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alax_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alax_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
