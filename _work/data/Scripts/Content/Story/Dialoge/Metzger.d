INSTANCE Info_Mod_Metzger_Metzgerei (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Metzgerei_Condition;
	information	= Info_Mod_Metzger_Metzgerei_Info;
	permanent	= 0;
	important	= 0;
	description	= "To jest sklep rzezniczy, prawda?";
};

FUNC INT Info_Mod_Metzger_Metzgerei_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Metzger_Metzgerei_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Metzgerei_15_00"); //To jest sklep rzezniczy, prawda?
	AI_Output(self, hero, "Info_Mod_Metzger_Metzgerei_08_01"); //Tak, panie posle. Prowadzona przez rodzine przez piec pokolen. Tradycja, która mozesz spróbowac.
	AI_Output(hero, self, "Info_Mod_Metzger_Metzgerei_15_02"); //Wiec twoje mieso smakuje stare i zakurzone?
	AI_Output(self, hero, "Info_Mod_Metzger_Metzgerei_08_03"); //(zaproszony) Prosze mi wybaczyc?
};

INSTANCE Info_Mod_Metzger_Schaf (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Schaf_Condition;
	information	= Info_Mod_Metzger_Schaf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge Ci pomóc?";
};

FUNC INT Info_Mod_Metzger_Schaf_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Metzger_Schaf_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf_15_00"); //Czy moge Ci pomóc?
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf_08_01"); //Najwyzszy czas, zeby ktos odebral kolejna owce od rolnika Erharda. Brakuje nam jagnieciny.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf_08_02"); //Jesli wiesz troche o zwierzetach, moge zostawic ci prace.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf_08_03"); //Nagralbym Cie 30 zlotymi monetami.

	Info_ClearChoices	(Info_Mod_Metzger_Schaf);

	if (Mod_Verhandlungsgeschick > 0)
	{
		Info_AddChoice	(Info_Mod_Metzger_Schaf, "Daj mi 70 zlota i bede w nim.", Info_Mod_Metzger_Schaf_C);
	};
	Info_AddChoice	(Info_Mod_Metzger_Schaf, "Wolalbym raczej nie angazowac sie w ten biznes.", Info_Mod_Metzger_Schaf_B);
	Info_AddChoice	(Info_Mod_Metzger_Schaf, "Zajme sie tym.", Info_Mod_Metzger_Schaf_A);
};

FUNC VOID Info_Mod_Metzger_Schaf_D()
{
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf_D_08_00"); //Gospodarstwo Erharda znajduje sie na wschodzie Relendel, jesli do tej pory nie natkneliscie sie na niego.
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf_D_15_01"); //A co z oplata za Erhard?
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf_D_08_02"); //Wolalbym raczej sam sie tym zajac. Zawsze sie osiedlamy, gdy przyjezdza do miasta.

	Log_CreateTopic	(TOPIC_MOD_METZGER_SCHAF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_METZGER_SCHAF, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_METZGER_SCHAF, "Rzeznik w Khorata potrzebuje swiezego miesa owczego. Rolnik Erhard na wschodzie Relendel zostawi mi jedno ze swoich jagniat.");

	Wld_InsertNpc	(Monster_11069_Emma_REL,	"REL_SURFACE_106");

	Info_ClearChoices	(Info_Mod_Metzger_Schaf);
};

FUNC VOID Info_Mod_Metzger_Schaf_C()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf_C_15_00"); //Daj mi 70 zlota i bede tam.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Metzger_Schaf_C_08_01"); //Trudno mi z tym zyc. Jest to wiec umowa.

		Info_Mod_Metzger_Schaf_D();

		Mod_Metzger_Schaf = 1;
		Mod_Metzger_Schaf_Wert = 70;
	
		B_GivePlayerXP	(10);

		B_RaiseHandelsgeschick (2);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Metzger_Schaf_C_08_02"); //Byloby taniej gdyby wyslalem zawodowego poslanca!
	};
};

FUNC VOID Info_Mod_Metzger_Schaf_B()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf_B_15_00"); //Wolalbym raczej nie angazowac sie w ten biznes.

	Info_ClearChoices	(Info_Mod_Metzger_Schaf);
};

FUNC VOID Info_Mod_Metzger_Schaf_A()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf_A_15_00"); //Zajme sie tym.

	Mod_Metzger_Schaf = 1;
	Mod_Metzger_Schaf_Wert = 30;

	Info_Mod_Metzger_Schaf_D();
};

INSTANCE Info_Mod_Metzger_Schaf2 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Schaf2_Condition;
	information	= Info_Mod_Metzger_Schaf2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto owce.";
};

FUNC INT Info_Mod_Metzger_Schaf2_Condition()
{
	if (Mod_Metzger_Schaf == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Schaf2_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf2_15_00"); //Oto owce.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf2_08_01"); //Wydaje sie, ze moga na Tobie polegac. Oto Twoja platnosc.

	B_GiveInvItems	(self, hero, ItMi_Gold, Mod_Metzger_Schaf_Wert);

	AI_Output(hero, self, "Info_Mod_Metzger_Schaf2_15_02"); //Czy jest jeszcze cos do zrobienia?
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf2_08_03"); //Nie w tej chwili. Przede wszystkim jagniecina jest przetwarzana na kielbase.

	B_SetTopicStatus	(TOPIC_MOD_METZGER_SCHAF, LOG_SUCCESS);

	B_StartOtherRoutine	(Monster_11069_Emma_REL,	"METZGER");

	B_GivePlayerXP	(100);

	Mod_Metzger_Schaf = 4;
};

INSTANCE Info_Mod_Metzger_Schaf3 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Schaf3_Condition;
	information	= Info_Mod_Metzger_Schaf3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Stracilem owce.";
};

FUNC INT Info_Mod_Metzger_Schaf3_Condition()
{
	if (Mod_Metzger_Schaf == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Schaf3_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf3_15_00"); //Stracilem owce.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf3_08_01"); //Powinienem byl udac sie do kogos rozsadnego.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf3_08_02"); //Gdzie mam dostac mieso baranie?

	B_SetTopicStatus	(TOPIC_MOD_METZGER_SCHAF, LOG_FAILED);

	if (Npc_IsDead(Monster_11069_Emma_REL))
	{
		Mod_Metzger_Schaf = 5;
	}
	else
	{
		Mod_Metzger_Schaf = 6;
	};
};

INSTANCE Info_Mod_Metzger_Schaf4 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Schaf4_Condition;
	information	= Info_Mod_Metzger_Schaf4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Juz zabilem owce.";
};

FUNC INT Info_Mod_Metzger_Schaf4_Condition()
{
	if (Mod_Metzger_Schaf == 3)
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Schaf4_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf4_15_00"); //Juz zabilem owce.

	B_GiveInvItems	(hero, self, ItFo_MuttonRaw, 10);

	AI_Output(self, hero, "Info_Mod_Metzger_Schaf4_08_01"); //To nie jest swieze mieso. Gdzie otrzymasz?
	AI_Output(hero, self, "Info_Mod_Metzger_Schaf4_15_02"); //Uh....
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf4_08_03"); //Nie obchodzi mnie tak naprawde. Jest on nadal przydatny dla miesa mielonego.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf4_08_04"); //Co gorsza, próbowales mnie oderwac.
	AI_Output(self, hero, "Info_Mod_Metzger_Schaf4_08_05"); //Poniewaz jednak potrzebuje miesa, nadal chce zaplacic panstwu polowe obiecanego wynagrodzenia.

	B_GiveInvItems	(self, hero, ItMi_Gold, Mod_Metzger_Schaf_Wert/2);

	AI_Output(self, hero, "Info_Mod_Metzger_Schaf4_08_06"); //Po prostu nie próbuj mnie ponownie oszolomic.

	B_GivePlayerXP	(50);

	B_SetTopicStatus	(TOPIC_MOD_METZGER_SCHAF, LOG_SUCCESS);

	if (Npc_IsDead(Monster_11069_Emma_REL))
	{
		Mod_Metzger_Schaf = 5;
	}
	else
	{
		Mod_Metzger_Schaf = 6;
	};
};

INSTANCE Info_Mod_Metzger_August (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_August_Condition;
	information	= Info_Mod_Metzger_August_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebuje peklowanego jagnieciny. Trzy porcje.";
};

FUNC INT Info_Mod_Metzger_August_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Penner))
	&& (!Npc_KnowsInfo(hero, Info_Mod_August_Penner2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_August_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_August_15_00"); //Potrzebuje peklowanego jagnieciny. Trzy porcje.
	AI_Output(self, hero, "Info_Mod_Metzger_August_08_01"); //Wyraznie. Ale mieso jest jeszcze w jeziorze. Dostalem dwie godziny do pracy.
	AI_Output(self, hero, "Info_Mod_Metzger_August_08_02"); //Jesli chcesz wrócic pózniej.....
	AI_Output(hero, self, "Info_Mod_Metzger_August_15_03"); //Bylbym szczesliwy. Do zobaczenia pózniej.

	B_LogEntry	(TOPIC_MOD_JG_AUGUST, "Solony karczoch rzeznika trwa okolo dwóch godzin.");

	Npc_SetRefuseTalk	(self, 3600);
};

INSTANCE Info_Mod_Metzger_August02 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_August02_Condition;
	information	= Info_Mod_Metzger_August02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mieso jest gotowe?";
};

FUNC INT Info_Mod_Metzger_August02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Metzger_August))
	&& (Npc_RefuseTalk(self) == FALSE)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 30)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_August02_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_August02_15_00"); //Czy mieso jest gotowe?
	AI_Output(self, hero, "Info_Mod_Metzger_August02_08_01"); //Zapakowalem juz trzy kluby. Tutaj. To jest 30 zloto.

	if (Mod_Verhandlungsgeschick > 0)
	{
		AI_Output(hero, self, "Info_Mod_Metzger_August02_15_02"); //Powiedz 15 zlota....

		if (self.aivar[AIV_Verhandlung] == TRUE)
		{
			AI_Output(self, hero, "Info_Mod_Metzger_August02_08_03"); //20, to wszystko, co moge wam dac.

			B_RaiseHandelsgeschick (1);

			B_GiveInvItems	(hero, self, ItMi_Gold, 20);
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Metzger_August02_08_04"); //Powiedzialem, ze to wszystko.

			B_GiveInvItems	(hero, self, ItMi_Gold, 30);
		};
	}
	else
	{
		B_GiveInvItems	(hero, self, ItMi_Gold, 30);
	};

	AI_Output(hero, self, "Info_Mod_Metzger_August02_15_05"); //Oto zloto.
	AI_Output(self, hero, "Info_Mod_Metzger_August02_08_06"); //I mieso.

	B_GiveInvItems	(self, hero, ItFo_LammPoekelfleisch, 3);
};

INSTANCE Info_Mod_Metzger_Kissen (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Kissen_Condition;
	information	= Info_Mod_Metzger_Kissen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Szukam torby pelnej piór.";
};

FUNC INT Info_Mod_Metzger_Kissen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morpheus_Kissen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Kissen_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Kissen_15_00"); //Szukam torby pelnej piór.
	AI_Output(self, hero, "Info_Mod_Metzger_Kissen_08_01"); //Masz szczescie. Wczoraj zostalem zabity, poniewaz Peter Venger zamówil.
	AI_Output(hero, self, "Info_Mod_Metzger_Kissen_15_02"); //Móglbym wziac.....
	AI_Output(self, hero, "Info_Mod_Metzger_Kissen_08_03"); //... masz racje. Nie moge nic z tym zrobic.

	B_GiveInvItems	(self, hero, ItMi_Federbeutel, 1);

	B_LogEntry	(TOPIC_MOD_ASS_KISSEN, "Dostalem torbe z piór od rzeznika. Powinienem zatrzymac sie przy Morpheusie, torba wydaje sie byc dosc drapiezna.");
};

INSTANCE Info_Mod_Metzger_Blutkelch (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Blutkelch_Condition;
	information	= Info_Mod_Metzger_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz tluszczu trzonowego?";
};

FUNC INT Info_Mod_Metzger_Blutkelch_Condition()
{
	if (Mod_ASS_Blutkelch3 == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_00"); //Masz tluszczu trzonowego?
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_01"); //Oczywiscie. W moim zawodzie zawsze spada troche tluszczu.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_02"); //Mysle, ze wchodzisz do kielbasy.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_03"); //Co wiec? Kielbasa bez tluszczu? Mozna tam zjesc szorstkie jedzenie.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_04"); //Wszystkie sluszne, wszystkie sluszne. Potrzebuje 50 porcji tluszczu trzonowego.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_05"); //Nie mam tak wiele. Kielbasa....
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_06"); //A jak do tego dojsc?
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_07"); //Lepiej zrobic to samemu.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_08"); //Uh-huh. I jak?
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_09"); //Moge nauczyc Cie jak zdejmowac tluszcz z zwierzat.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_10"); //Uslyszmy to.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_11"); //Z Moleratami oplaca sie to wlasciwie tylko z Moleratami. Z futerkami lub zwierzetami z czolgami mozna dostac tylko odrobine tluszczu.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_12"); //Byc moze olbrzymie szczury. Ale dzieki Adanosowi staly sie rzadkoscia.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_13"); //Dotychczas tak dobrze. A co wiec?
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_14"); //Zabierasz nóz lub cokolwiek innego do wypatroszenia, wykonujesz glebokie ciecie, a nastepnie szable wokól skóry z górna warstwa tluszczu.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_15"); //Jestes gonna uzywac miesa tak czy owak, chyba.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_16"); //Oczywiscie tak jest.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_17"); //Pozwole sobie zakonczyc. Wiec wziac te pokrywe, pokroic ja na paski i wrzucic cala rzecz do czajnika na malym ogniu.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_18"); //Juz od jakiegos czasu gotuje. Kiedy zaczyna pianowac, wyjac czajnik z ognia, wylowic skórke i dodac garsc soli.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_19"); //Potem energicznie wymieszac. Kiedy tluszcz jest juz zestalony, mozna go wysypac. To wszystko.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_20"); //Wspanialy! Nie widzialem soli, poniewaz wyladowalem nahorynie. I to bylo dawno temu.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_21"); //Wniosek. Poscigasz Moleratów, wyjmujesz je i przynosisz mi paski. Zrobie reszte.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch_15_22"); //I ile zwierzat musze zabic?
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch_08_23"); //Chyba o osmiu pieknych paskach. Puszcza za jeziorem roi sie wraz z nimi.

	B_LogEntry	(TOPIC_MOD_ASS_FETT, "Mam przyniesc rzeznikowi osiem pasków moleratów. W ten sposób wydziela tluszcze.");
};

INSTANCE Info_Mod_Metzger_Blutkelch2 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Blutkelch2_Condition;
	information	= Info_Mod_Metzger_Blutkelch2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto paski.";
};

FUNC INT Info_Mod_Metzger_Blutkelch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Metzger_Blutkelch))
	&& (Npc_HasItems(hero, ItMi_Moleratstreifen) >= 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Blutkelch2_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch2_15_00"); //Oto paski.

	B_GiveInvItems	(hero, self, ItMi_Moleratstreifen, 8);

	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch2_08_01"); //To obrzek. Musze zadbac o tluszcz. Powinien byc gotowy i schlodzony w ciagu trzech godzin.

	Npc_SetRefuseTalk (self, 500);
};

INSTANCE Info_Mod_Metzger_Blutkelch3 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Blutkelch3_Condition;
	information	= Info_Mod_Metzger_Blutkelch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Metzger_Blutkelch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Metzger_Blutkelch2))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Blutkelch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch3_08_00"); //Jestes na czasie. Tluszcz gotowy. Tutaj Twoje porcje. Bede odpoczal za swoja prace.

	B_GiveInvItems	(self, hero, ItMi_Moleratlubric_MIS, 50);

	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch3_15_01"); //Cokolwiek mówisz. W kazdym razie dziekuje.

	B_LogEntry	(TOPIC_MOD_ASS_FETT, "W koncu dostal tluszcz dla Bennetu. Stalowy trzpien powinien byc wykonczony.....");
	B_SetTopicStatus	(TOPIC_MOD_ASS_FETT, LOG_SUCCESS);

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Metzger_Blutkelch4 (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Blutkelch4_Condition;
	information	= Info_Mod_Metzger_Blutkelch4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebuje kawalka solonego miesa.";
};

FUNC INT Info_Mod_Metzger_Blutkelch4_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Idrico_Blutkelch2))
	&& (Mod_ASS_IdricoSpende == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Metzger_Blutkelch4_Info()
{
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch4_15_00"); //Potrzebuje kawalka solonego miesa.
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch4_08_01"); //Zawsze do dyspozycji. Czy chcialbys/chcialabys te noge jagnieciny? To troche starsze. Ale solanka trwa dlugo.

	B_GiveInvItems	(self, hero, ItFo_LammPoekelfleisch, 1);

	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch4_15_02"); //Wystarczy wystarczy dla gejzera wodnego. Ile?
	AI_Output(self, hero, "Info_Mod_Metzger_Blutkelch4_08_03"); //Dwa zloto, jesli chcesz.
	AI_Output(hero, self, "Info_Mod_Metzger_Blutkelch4_15_04"); //Wyraznie. Tutaj.

	B_GiveInvItems	(hero, self, ItMi_Gold, 2);
};

INSTANCE Info_Mod_Metzger_Pickpocket (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_Pickpocket_Condition;
	information	= Info_Mod_Metzger_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Metzger_Pickpocket_Condition()
{
	C_Beklauen	(77, ItFo_LammPoekelfleisch, 3);
};

FUNC VOID Info_Mod_Metzger_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);

	Info_AddChoice	(Info_Mod_Metzger_Pickpocket, DIALOG_BACK, Info_Mod_Metzger_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Metzger_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Metzger_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Metzger_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);
};

FUNC VOID Info_Mod_Metzger_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);

		Info_AddChoice	(Info_Mod_Metzger_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Metzger_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Metzger_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Metzger_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Metzger_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Metzger_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Metzger_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Metzger_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Metzger_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Metzger_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Metzger_EXIT (C_INFO)
{
	npc		= Mod_7576_OUT_Metzger_REL;
	nr		= 1;
	condition	= Info_Mod_Metzger_EXIT_Condition;
	information	= Info_Mod_Metzger_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Metzger_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Metzger_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
