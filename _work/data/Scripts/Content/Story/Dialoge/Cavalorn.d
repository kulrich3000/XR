INSTANCE Info_Mod_Cavalorn_Hi (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Hi_Condition;
	information	= Info_Mod_Cavalorn_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cavalorn_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cavalorn_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cavalorn_Hi_36_00"); //Dam, zabilem tylko tych goblinów wczoraj. A teraz jej szczatki nie podnosza sie do mnie, nic nowego zycia dla ciebie i atakuja mnie.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Hi_36_01"); //Jakby bandyci nie wystarczali.... ale czekac minute. Ty wciaz zyjesz?
	AI_Output(hero, self, "Info_Mod_Cavalorn_Hi_15_02"); //"Ponownie" wäre der passende Ausdruck. Was machst du hier?
	AI_Output(self, hero, "Info_Mod_Cavalorn_Hi_36_03"); //To jest mój punkt obserwacyjny. Jestem tutaj w imieniu Magicystów Wody.
};

INSTANCE Info_Mod_Cavalorn_WhyForWassermagier (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_WhyForWassermagier_Condition;
	information	= Info_Mod_Cavalorn_WhyForWassermagier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co dokladnie obserwujesz w imieniu Magicystów Wody?";
};

FUNC INT Info_Mod_Cavalorn_WhyForWassermagier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_WhyForWassermagier_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_WhyForWassermagier_15_00"); //Co dokladnie obserwujesz w imieniu Magicystów Wody?
	AI_Output(self, hero, "Info_Mod_Cavalorn_WhyForWassermagier_36_01"); //Uh, nie mam o tym wiele do opowiedzenia. Dziwne rzeczy wydarzyly sie w ostatnich dniach i tygodniach.
	AI_Output(hero, self, "Info_Mod_Cavalorn_WhyForWassermagier_15_02"); //Zadne dziecko.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WhyForWassermagier_36_03"); //Mam na mysli, ze po upadku bariery.
};

INSTANCE Info_Mod_Cavalorn_WasLos (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_WasLos_Condition;
	information	= Info_Mod_Cavalorn_WasLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego nie powiesz mi tylko, co sie dzieje?";
};

FUNC INT Info_Mod_Cavalorn_WasLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_WhyForWassermagier))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_WasLos_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_WasLos_15_00"); //Dlaczego nie powiesz mi tylko, co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_01"); //Cóz, jestem teraz czlonkiem nowicjuszy wodnych. Nie pytaj dlaczego.
	AI_Output(hero, self, "Info_Mod_Cavalorn_WasLos_15_02"); //Dlaczego?
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_03"); //Och, przyjechalem do Khorinis po upadku zapory i oczywiscie nie mialem nic do zrobienia.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_04"); //Dlatego tez oddalem sie w te Vatrasy, które caly czas glosza w miescie.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_05"); //W pewnym momencie zabral mnie na bok i zapytal, skad pochodze i czy juz wiedzialem, co chce teraz zrobic.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_06"); //Zakonczeniem piosenki bylo to, ze zapytal mnie, czy nie chce wstapic do jego klubu i poniewaz nie mialem nic lepszego do zrobienia, powiedzialem tak.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_07"); //Cóz, tak czy owak, to wlasnie wtedy zaczely sie porwania. Ludzie z Khorinis po prostu ciagle gineli. Najczesciej z doków, a potem nikt o to nie dbal.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_08"); //Sporadycznie ciemne figury byly widoczne na bocznych ulicach przed lub po.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_09"); //A poniewaz Straz Miejska nie zrobila nic, Vatras zdecydowal, ze powinnismy dowiedziec sie, co sie teraz dzieje.
	AI_Output(self, hero, "Info_Mod_Cavalorn_WasLos_36_10"); //Dlatego wlasnie siedze tutaj, próbujac dowiedziec sie, czy bandycki gang w dolinie ma cos z tym wspólnego, czy tez dzieje sie tu cos podejrzanego.
};

INSTANCE Info_Mod_Cavalorn_Banditen (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Banditen_Condition;
	information	= Info_Mod_Cavalorn_Banditen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wspomnial pan o bandytach....";
};

FUNC INT Info_Mod_Cavalorn_Banditen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Hi))
	&& (Mod_Cavalorn_Banditen == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Banditen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Banditen_15_00"); //Wspomnial pan o bandytach....
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen_36_01"); //Tak, w dolinie doliny znajduje sie naprawde gruba banda. Zawsze musze sie upewnic, ze mnie nie zauwazy, bo inaczej moze sie to okazac brzydkie.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen_36_02"); //Czasem jednak spogladam z góry. Wydaje sie, ze wlasnie wrócili z rajdu, przynajmniej maja troche lupu i jedzenia.
};

INSTANCE Info_Mod_Cavalorn_Banditen2 (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Banditen2_Condition;
	information	= Info_Mod_Cavalorn_Banditen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcesz, abym wypalil bandytów?";
};

FUNC INT Info_Mod_Cavalorn_Banditen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Banditen))
	&& (Mod_Cavalorn_Banditen == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Banditen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Banditen2_15_00"); //Chcesz, abym wypalil bandytów?
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen2_36_01"); //Uczciwie? Nie masz nawet odpowiedniej zbroi. Oni zjadaja Cie na sniadanie.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen2_36_02"); //Nie mam odwagi nawet sie z nimi pomieszac, a Ty znasz moje umiejetnosci radzenia sobie z lukiem.
};

INSTANCE Info_Mod_Cavalorn_Banditen3 (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Banditen3_Condition;
	information	= Info_Mod_Cavalorn_Banditen3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co by bylo, gdybym mimo wszystko odjechal bandytów?";
};

FUNC INT Info_Mod_Cavalorn_Banditen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Banditen2))
	&& (Mod_Cavalorn_Banditen == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Banditen3_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Banditen3_15_00"); //Co by bylo, gdybym mimo wszystko odjechal bandytów?
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen3_36_01"); //Po prostu pozwólcie mu odejsc. Oczywiscie cieszylabym sie, ze jutro zobacze ich ciala - ale to nie nastapi tak szybko.

	Log_CreateTopic	(TOPIC_MOD_CAVALORN_BANDITEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_CAVALORN_BANDITEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_CAVALORN_BANDITEN, "W basenie niedaleko wiezy kardasowej czai sie horda bandytów. Cavalorn radzil mi, abym sie nimi nie balaganil, ale on chetnie by sie ich pozbyl.");
};

INSTANCE Info_Mod_Cavalorn_Banditen4 (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Banditen4_Condition;
	information	= Info_Mod_Cavalorn_Banditen4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pamietasz bandytów?";
};

FUNC INT Info_Mod_Cavalorn_Banditen4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Banditen3))
	&& (Mod_Cavalorn_Banditen == 0)
	&& (Npc_IsDead(Mod_7772_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7773_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7774_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7775_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7776_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7777_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7778_BDT_Bandit_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Banditen4_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Banditen4_15_00"); //Pamietasz bandytów?
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen4_36_01"); //Oczywiscie. Móglbym bez niej spac lepiej.
	AI_Output(hero, self, "Info_Mod_Cavalorn_Banditen4_15_02"); //Twój sen nie bedzie juz zaklócany.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen4_36_03"); //Jak.....? Swieta krowa.... Nie masz na mysli......
	AI_Output(hero, self, "Info_Mod_Cavalorn_Banditen4_15_04"); //Tak, tak. Ale nie mieli przy sobie zadnych porywaczy z Khorinis.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen4_36_05"); //Oni byli tak dobrymi przywódcami. Wtedy niewiele wiecej sie tu wydarzy i moge odpoczac na chwile.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen4_36_06"); //Poczekaj, wez ten jeden.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Cavalorn_Banditen4_36_07"); //Dobra praca naprawde.

	B_SetTopicStatus	(TOPIC_MOD_CAVALORN_BANDITEN, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Cavalorn_DunklerPilger (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_DunklerPilger_Condition;
	information	= Info_Mod_Cavalorn_DunklerPilger_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co z tym ciemnym wedrowcem? )";
};

FUNC INT Info_Mod_Cavalorn_DunklerPilger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_DunklerPilger_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_DunklerPilger_15_00"); //A co z tym ciemnym wedrowcem, który przechadzal sie przed Toba?
	AI_Output(self, hero, "Info_Mod_Cavalorn_DunklerPilger_36_01"); //Mroczny spacer? Nie widzialem nikogo, kto przychodzi tu w ciagu kilku godzin.
	AI_Output(self, hero, "Info_Mod_Cavalorn_DunklerPilger_36_02"); //Ale byc moze bylem tak zajety goblinami, ze tesknilem za nimi. Dziwny.
	AI_Output(self, hero, "Info_Mod_Cavalorn_DunklerPilger_36_03"); //Zdecydowanie wkrótce wróce do Vatras i opowiadam sie przed nim. To wystarczy powiedziec.

	B_LogEntry	(TOPIC_MOD_DUNKLERPILGER, "Dziwny. Cavalorn nie chce widziec ciemnego wedrowcy.");
};

INSTANCE Info_Mod_Cavalorn_XardasTurm (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_XardasTurm_Condition;
	information	= Info_Mod_Cavalorn_XardasTurm_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co powiesz nowej wiezy Xardasa?";
};

FUNC INT Info_Mod_Cavalorn_XardasTurm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_XardasTurm_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_XardasTurm_15_00"); //Co powiesz nowej wiezy Xardasa?
	AI_Output(self, hero, "Info_Mod_Cavalorn_XardasTurm_36_01"); //Ach, Xardas tam jest. Myslalem, ze to byl stary nawiedzony zamek lub cos innego.
	AI_Output(self, hero, "Info_Mod_Cavalorn_XardasTurm_36_02"); //Gdzie..... Wiedza o pobliskich kardanach nie sprawia, ze sa mniej plochliwe.
};

INSTANCE Info_Mod_Cavalorn_Zeremoniendolch (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Zeremoniendolch_Condition;
	information	= Info_Mod_Cavalorn_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lubisz to tutaj?";
};

FUNC INT Info_Mod_Cavalorn_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Zeremoniendolch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Zeremoniendolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Zeremoniendolch_15_00"); //Lubisz to tutaj?
	AI_Output(self, hero, "Info_Mod_Cavalorn_Zeremoniendolch_36_01"); //W ogóle nie, panie posle. Ale musze czekac na instrukcje Merdarion.
	AI_Output(hero, self, "Info_Mod_Cavalorn_Zeremoniendolch_15_02"); //Mam dla Ciebie zamówienia Vatrasa. Powinienes pojawic sie ponownie.
	AI_Output(self, hero, "Info_Mod_Cavalorn_Zeremoniendolch_36_03"); //Dziekujemy Adanosowi! Na koniec znów swiatlo dzienne. Mówisz Merdarion?
	AI_Output(hero, self, "Info_Mod_Cavalorn_Zeremoniendolch_15_04"); //Oczywiscie tak jest.

	B_StartOtherRoutine	(self, "ATVATRAS");
};

INSTANCE Info_Mod_Cavalorn_Lehrer (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Lehrer_Condition;
	information	= Info_Mod_Cavalorn_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie nauczyc, jak radzic sobie z lukiem?";
};

FUNC INT Info_Mod_Cavalorn_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Banditen2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Lehrer_15_00"); //Czy mozesz mnie nauczyc, jak radzic sobie z lukiem?

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORINIS, LOG_NOTE);

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Cavalorn_Lehrer_36_01"); //Wyglada na to, ze cos zapomniales, czy nie? Oczywiscie, potrafie pokazac wam podstawy.

		B_LogEntry	(TOPIC_MOD_LEHRER_KHORINIS, "Kawaler moze nauczyc mnie lucznictwa i wykradania.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Cavalorn_Lehrer_36_02"); //Moge cie nauczyc wymykac sie.

		B_LogEntry	(TOPIC_MOD_LEHRER_KHORINIS, "Kawaler moze mnie nauczyc wymykac sie.");
	};
};

INSTANCE Info_Mod_Cavalorn_Lernen_Schleichen (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Lernen_Schleichen_Condition;
	information	= Info_Mod_Cavalorn_Lernen_Schleichen_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("bijatyka", B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, 1));
};

FUNC INT Info_Mod_Cavalorn_Lernen_Schleichen_Condition()
{
	Info_Mod_Cavalorn_Lernen_Schleichen.description = B_BuildLearnString("bijatyka", B_GetLearnCostTalent(hero, NPC_TALENT_SNEAK, 1));

	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Lehrer))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Lernen_Schleichen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Lernen_Schleichen_15_00"); //Naucz mnie skradac sie.

	if (B_TeachThiefTalent (self, other, NPC_TALENT_SNEAK))
	{
		AI_Output(self, other, "Info_Mod_Cavalorn_Lernen_Schleichen_36_01"); //Miekkie podeszwy daja Ci wieksza szanse na zblizenie sie do przeciwników, bez ich zauwazania.
	};
};

INSTANCE Info_Mod_Cavalorn_Lernen_Bogen (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Lernen_Bogen_Condition;
	information	= Info_Mod_Cavalorn_Lernen_Bogen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie lucznictwa.";
};

FUNC INT Info_Mod_Cavalorn_Lernen_Bogen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cavalorn_Lehrer))
	&& (hero.hitchance[NPC_TALENT_BOW] < 100)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cavalorn_Lernen_Bogen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cavalorn_Lernen_Bogen_15_00"); //Naucz mnie lucznictwa.

	Info_ClearChoices	(Info_Mod_Cavalorn_Lernen_Bogen);
	
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, "Z powrotem.", Info_Mod_Cavalorn_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Cavalorn_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Cavalorn_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Cavalorn_Lernen_Bogen_BACK()
{
	Info_ClearChoices	(Info_Mod_Cavalorn_Lernen_Bogen);
};

FUNC VOID Info_Mod_Cavalorn_Lernen_Bogen_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_BOW, 5, 100);

	Info_ClearChoices	(Info_Mod_Cavalorn_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, "Z powrotem.", Info_Mod_Cavalorn_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Cavalorn_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Cavalorn_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Cavalorn_Lernen_Bogen_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_BOW, 1, 100);

	Info_ClearChoices	(Info_Mod_Cavalorn_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, "Z powrotem.", Info_Mod_Cavalorn_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Cavalorn_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Cavalorn_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Cavalorn_Lernen_Bogen_1);
};

INSTANCE Info_Mod_Cavalorn_Pickpocket (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_Pickpocket_Condition;
	information	= Info_Mod_Cavalorn_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Cavalorn_Pickpocket_Condition()
{
	C_Beklauen	(55, ItRw_Arrow, 23);
};

FUNC VOID Info_Mod_Cavalorn_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);

	Info_AddChoice	(Info_Mod_Cavalorn_Pickpocket, DIALOG_BACK, Info_Mod_Cavalorn_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cavalorn_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cavalorn_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cavalorn_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);
};

FUNC VOID Info_Mod_Cavalorn_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);

		Info_AddChoice	(Info_Mod_Cavalorn_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cavalorn_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cavalorn_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cavalorn_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cavalorn_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cavalorn_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cavalorn_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cavalorn_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cavalorn_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cavalorn_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cavalorn_EXIT (C_INFO)
{
	npc		= Mod_512_RDW_Cavalorn_NW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_EXIT_Condition;
	information	= Info_Mod_Cavalorn_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cavalorn_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cavalorn_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
