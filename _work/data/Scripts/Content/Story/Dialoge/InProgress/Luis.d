INSTANCE Info_Mod_Luis_Hi (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_Hi_Condition;
	information	= Info_Mod_Luis_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Twój przyjaciel jest w nastroju.";
};

FUNC INT Info_Mod_Luis_Hi_Condition()
{
	if (Wld_IsTime(07,15,00,15))
	&& (Npc_KnowsInfo(hero, Info_Mod_Pilar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_00"); //Twój przyjaciel jest w nastroju. Wyglada na to, ze nie lubisz tu siedziec caly dzien.
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_01"); //To byloby obciazeniem dla kazdego mysliwego!
	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_02"); //Ale mozesz to zmienic. Dlaczego nie wyjezdzasz z miasta i nie polujesz troche?
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_03"); //Masz na mysli jak kilkunastu innych mysliwych?
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_04"); //Rywalizacja przed miastem jest nie do zniesienia i nie mozna dostac zbyt wiele za zwykla siersc.
	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_05"); //Strefa lodowa jest dosc duza, musi byc cos do zdobycia?
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_06"); //Mój przyjaciel Randi powiedzial przed wyjsciem cos podobnego i od tego czasu nie slyszalem od niego.
	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_07"); //Czego on potrzebowal?
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_08"); //Chcial wykorzystac stara wieze nad jeziorem jako obóz na noc.
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_09"); //Wlasciwie nie jest to zly pomysl, ale kto wie, co sie tam osiedlil po tych latach.
	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_10"); //No cóz, moze tam zarabia zloty nos.
	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_11"); //Mysle, ze zobacze takze wieze.
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_12"); //Jesli równiez tam chcesz umrzec, prosze!
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_13"); //Najpierw jednak powinienes sie zglosic Keithowi. Randi chcial go przekonac do swojego pomyslu.
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_14"); //Byc moze masz szczescie i oni jeszcze nie odeszli.
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_15"); //Tutaj masz mape, z nia nalezy dostac sie do jego domku w lesie, szczescie.

	B_GiveInvItems	(self, hero, ItWr_Map_Eisgebiet_Keith, 1);

	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_16"); //Dzieki. Jesli beda zywe, poinformuje Cie o tym.

	Log_CreateTopic	(TOPIC_MOD_EIS_ALTERTURM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_ALTERTURM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_ALTERTURM, "Przyjaciel Luisa Randi udal sie do starej wiezy w Eissee, aby poszukac nowych terenów lowieckich. Luis nie slyszal o nim od tego czasu. Teraz dal mi mape kabiny Keitha. Jesli mam szczescie, Randi i Keith wciaz tam sa.");

	Wld_InsertNpc	(Mod_7569_OUT_Randi_EIS,	"EIS_338");

	B_KillNpc	(Mod_7569_OUT_Randi_EIS);

	Wld_InsertNpc	(Mod_7570_OUT_Bandit_EIS,	"EIS_338");
	Wld_InsertNpc	(Mod_7571_OUT_Bandit_EIS,	"EIS_338");
};

INSTANCE Info_Mod_Luis_Vigonza (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_Vigonza_Condition;
	information	= Info_Mod_Luis_Vigonza_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla ciebie kilka zlych wiadomosci, twój przyjaciel Randi nie zyje.";
};

FUNC INT Info_Mod_Luis_Vigonza_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Keith_Dalma))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_Vigonza_Info()
{
	AI_Output(hero, self, "Info_Mod_Luis_Vigonza_15_00"); //Mam dla ciebie kilka zlych wiadomosci, twój przyjaciel Randi nie zyje.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_01"); //Obawialem sie tego, ale mialem nadzieje, ze sie myle.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_02"); //Teraz, gdy mam pewnosc jego smierci, jeszcze bardziej martwie sie o Pilara.
	AI_Output(hero, self, "Info_Mod_Luis_Vigonza_15_03"); //Teraz, kiedy to mówisz, gdzie on jest?
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_04"); //Niedawno uciekl, powiedzial, ze nie moze juz go tu zniesc.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_05"); //Chcial zobaczyc swojego brata, mieszka w poblizu cmentarza w Goblinie, niedaleko rozpadajacej sie wiezy strazniczej.
	AI_Output(hero, self, "Info_Mod_Luis_Vigonza_15_06"); //Czym jest pieklo cmentarz goblinowy? Myslalem, ze stworzenia nie maja nawet mózgów, aby je dmuchac. W jaki sposób maja pomysl na budowe cmentarza?
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_07"); //Dotyczy to równiez zwyklych goblinów, ale kilka lat temu byl wsród nich równiez wezwany demon.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_08"); //Najwyrazniej uczyl innych, jak budowac cmentarz.
	AI_Output(hero, self, "Info_Mod_Luis_Vigonza_15_09"); //Nie brzmi to dla mnie bardzo dobrze.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_10"); //Nie panicznie, dawno temu pokonalismy goblinów w bitwie pod jednym z wiezyczek strazniczych.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_11"); //Kiedy goblinowie próbowali go zabrac, prawie zabilismy caly klan. I nieliczni, którzy przezyli, chcieli po prostu pochowac swoich zmarlych.
	AI_Output(hero, self, "Info_Mod_Luis_Vigonza_15_12"); //A i demon czarujacy?
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_13"); //On tez umarl. Ma nawet najwiekszy nagrobek na cmentarzu.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_14"); //Jesli chcesz, pokaze ci cmentarz. Ja i tak ide do Pilara, i to jest w drodze.
	AI_Output(hero, self, "Info_Mod_Luis_Vigonza_15_15"); //Wszystkie sluszne, wszystkie sluszne.

	Log_CreateTopic	(TOPIC_MOD_EIS_FRIEDHOF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_FRIEDHOF, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_FRIEDHOF, "Pilar jest z bratem w poblizu cmentarza goblinów. Luis chce go zobaczyc i zaproponowal mi wskazac droge na cmentarz.");

	self.aivar[AIV_Partymember] = TRUE;

	B_StartOtherRoutine	(self, "FRIEDHOF");
};

INSTANCE Info_Mod_Luis_AtFriedhof (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_AtFriedhof_Condition;
	information	= Info_Mod_Luis_AtFriedhof_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Luis_AtFriedhof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_Vigonza))
	&& (Npc_GetDistToWP(self, "FRIEDHOFF_3") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_AtFriedhof_Info()
{
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof_28_00"); //Cóz, tutaj jestesmy. Dzis dzieje sie tu niewiele.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof_28_01"); //Przyjedzcie ze mna, pokaze wam urocza grób demonów.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FRIEDHOF2");
};

INSTANCE Info_Mod_Luis_AtFriedhof2 (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_AtFriedhof2_Condition;
	information	= Info_Mod_Luis_AtFriedhof2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Luis_AtFriedhof2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_AtFriedhof))
	&& (Npc_GetDistToWP(self, "FRIEDHOFF_6") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_AtFriedhof2_Info()
{
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof2_28_00"); //Tutaj jest tutaj. Dziwne jest, jak sprytny goblin moze przeniesc msze goblinowa na cos w rodzaju budowy tego cmentarza.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof2_28_01"); //Co to bylo....? Slyszales to tez?

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Gobbo_Warrior, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Warrior, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Warrior, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Warrior, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Warrior, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Warrior, "FRIEDHOFF_7");
};

INSTANCE Info_Mod_Luis_AtFriedhof3 (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_AtFriedhof3_Condition;
	information	= Info_Mod_Luis_AtFriedhof3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Luis_AtFriedhof3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_AtFriedhof2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_AtFriedhof3_Info()
{
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof3_28_00"); //Damn, po prostu mnie przerazali. Naprawde ich nie slyszalem.
	AI_Output(hero, self, "Info_Mod_Luis_AtFriedhof3_15_01"); //Moze nie podobalo im sie to tak bardzo, ze bylismy na ich cmentarzu.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof3_28_02"); //Oh, a jesli tak, to i jesli tak. Tutaj i tak sa tylko trupy.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof3_28_03"); //Lepiej dbac o swoje pola rzepy niz przez caly dzien.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof3_28_04"); //Przejdzmy teraz do kabiny brata Pilara.

	B_LogEntry	(TOPIC_MOD_EIS_FRIEDHOF, "Na cmentarzu zaskoczyli nas gobliny. Luis poprowadzi mnie teraz do brata Pilara.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PILARSBRUDER");
};

INSTANCE Info_Mod_Luis_AtFriedhof4 (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_AtFriedhof4_Condition;
	information	= Info_Mod_Luis_AtFriedhof4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Luis_AtFriedhof4_Condition()
{
	if (Mod_Pilar_Gobbos == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_AtFriedhof4_Info()
{
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof4_28_00"); //Pozwólcie mi sie domyslic, ze po prostu spózniamy sie, czyz nie?
	AI_Output(hero, self, "Info_Mod_Luis_AtFriedhof4_15_01"); //Tak wyglada. Nie tesknie jednak za uroczym demonem. Z jego grobu nie wyszedl szkielet.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof4_28_02"); //.... co moze oznaczac, ze mimo wszystko nie umrze.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof4_28_03"); //Powinnismy spojrzec na kruszaca sie wieze. Moze jest moze wskazówka, gdzie mieszka.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof4_28_04"); //Bede mial tutaj strazników, którzy zajma stanowiska, na wypadek gdyby czesc z nich wyszla z ziemi.

	B_LogEntry	(TOPIC_MOD_EIS_FRIEDHOF, "Luis przybyl na cmentarz z dwoma straznikami. Straznicy pozostana tu na jakis czas, a przy wiezy zobaczymy przywolujacego demona.");

	AI_StopProcessInfos	(self);

	self.aivar[AIV_Partymember] = TRUE;

	B_StartOtherRoutine	(self, "ATTURM");
	B_StartOtherRoutine	(Mod_7566_OUT_Pilar_EIS, "START");

	Wld_InsertNpc	(Gobbo_Eis_Beschwoerer,	"NORTDGEBIET_88");
	Wld_InsertNpc	(Gobbo_Skeleton,	"NORTDGEBIET_88");
	Wld_InsertNpc	(Gobbo_Skeleton,	"NORTDGEBIET_88");
	Wld_InsertNpc	(Gobbo_Skeleton,	"NORTDGEBIET_88");
};

INSTANCE Info_Mod_Luis_AtFriedhof5 (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_AtFriedhof5_Condition;
	information	= Info_Mod_Luis_AtFriedhof5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Luis_AtFriedhof5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_AtFriedhof4))
	&& (Npc_IsDead(Gobbo_Eis_Beschwoerer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_AtFriedhof5_Info()
{
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof5_28_00"); //Miejmy nadzieje, ze byl tylko jeden z nich.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof5_28_01"); //Gdyby wszystkie byly tak silne, mielibysmy problem.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof5_28_02"); //Mysle, ze gobliny maja dosc na dzien dzisiejszy. Wracam teraz do tawerny.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof5_28_03"); //Ach, tak, tak, chce, zebys równiez wstapil do niego z Thysem. Mysle, ze chcialby panu podziekowac.

	B_LogEntry	(TOPIC_MOD_EIS_FRIEDHOF, "Demon czarujacy jest historia i Luis wraca do tawerny. Mam sie zameldowac z Thysem.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Luis_Heiltrank (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_Heiltrank_Condition;
	information	= Info_Mod_Luis_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(goraczka lecznicza)";
};

FUNC INT Info_Mod_Luis_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	Info_AddChoice	(Info_Mod_Luis_Heiltrank, DIALOG_BACK, Info_Mod_Luis_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Istota uzdrawiania", Info_Mod_Luis_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Eliksir uzdrawiania", Info_Mod_Luis_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_Luis_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Istota uzdrawiania", Info_Mod_Luis_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Napój lekkiego leczenia", Info_Mod_Luis_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_Luis_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Napoje szybko lecznicze", Info_Mod_Luis_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Luis_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Luis_Pickpocket (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_Pickpocket_Condition;
	information	= Info_Mod_Luis_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Luis_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Luis_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Luis_Pickpocket);

	Info_AddChoice	(Info_Mod_Luis_Pickpocket, DIALOG_BACK, Info_Mod_Luis_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Luis_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Luis_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Luis_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Luis_Pickpocket);
};

FUNC VOID Info_Mod_Luis_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Luis_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Luis_Pickpocket);

		Info_AddChoice	(Info_Mod_Luis_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Luis_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Luis_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Luis_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Luis_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Luis_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Luis_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Luis_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Luis_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Luis_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Luis_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Luis_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Luis_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Luis_EXIT (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_EXIT_Condition;
	information	= Info_Mod_Luis_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Luis_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Luis_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
