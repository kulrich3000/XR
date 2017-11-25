INSTANCE Info_Mod_Idrico_Hi (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Hi_Condition;
	information	= Info_Mod_Idrico_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Idrico_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Idrico_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Idrico_Hi_08_00"); //Sluga slugi slugi slugi Adano, naszego swietego Pana. Mów, czego chcesz?
};

INSTANCE Info_Mod_Idrico_WasMachstDu (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_WasMachstDu_Condition;
	information	= Info_Mod_Idrico_WasMachstDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co robisz przez caly dzien?";
};

FUNC INT Info_Mod_Idrico_WasMachstDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Idrico_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_WasMachstDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_WasMachstDu_15_00"); //Co robisz przez caly dzien?
	AI_Output(self, hero, "Info_Mod_Idrico_WasMachstDu_08_01"); //Jestem tam dla ludzi, umacniam ich wiare i ich dusze.
	AI_Output(self, hero, "Info_Mod_Idrico_WasMachstDu_08_02"); //W zamian daja mi male dania lub zlote monety.
};

INSTANCE Info_Mod_Idrico_Ungepflegt (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Ungepflegt_Condition;
	information	= Info_Mod_Idrico_Ungepflegt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego chodzisz tak zaniedbany?";
};

FUNC INT Info_Mod_Idrico_Ungepflegt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Idrico_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_Ungepflegt_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Ungepflegt_15_00"); //Dlaczego chodzisz tak zaniedbany?
	AI_Output(self, hero, "Info_Mod_Idrico_Ungepflegt_08_01"); //Adanos nie chce, abym stal sie otyly i leniwy dzieki bogactwu, jak inni mieszkancy miasta.
	AI_Output(self, hero, "Info_Mod_Idrico_Ungepflegt_08_02"); //Jego wola jest, abym zawsze byl otwarty na Jego laske.
};

INSTANCE Info_Mod_Idrico_Dorn (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Dorn_Condition;
	information	= Info_Mod_Idrico_Dorn_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge podac Adanos?";
};

FUNC INT Info_Mod_Idrico_Dorn_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Idrico_Hi))
	&& (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_Dorn_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Dorn_15_00"); //Czy moge podac Adanos?
	AI_Output(self, hero, "Info_Mod_Idrico_Dorn_08_01"); //Och, tak! Jest ktos, kto jest ciernia po stronie Pana.
	AI_Output(self, hero, "Info_Mod_Idrico_Dorn_08_02"); //Elvira nie tylko poswiecila sie nauce hipokryzji Inno, ale takze odwazyla sie wejsc w role maga jako kobieta!
	AI_Output(self, hero, "Info_Mod_Idrico_Dorn_08_03"); //To oburzenie w miescie Adanosa nie moze pozostac bezkarne.
	AI_Output(self, hero, "Info_Mod_Idrico_Dorn_08_04"); //Jesli wierzysz w nauki naszego Stwórcy, pomóz im oddalic sie od tego miejsca.

	Info_ClearChoices	(Info_Mod_Idrico_Dorn);

	Info_AddChoice	(Info_Mod_Idrico_Dorn, "Uzyskaj kogos innego do pracy.", Info_Mod_Idrico_Dorn_B);
	Info_AddChoice	(Info_Mod_Idrico_Dorn, "Zobacze, co moge zrobic.", Info_Mod_Idrico_Dorn_A);
};

FUNC VOID Info_Mod_Idrico_Dorn_B()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Dorn_B_15_00"); //Uzyskaj kogos innego do pracy.

	Info_ClearChoices	(Info_Mod_Idrico_Dorn);
};

FUNC VOID Info_Mod_Idrico_Dorn_A()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Dorn_A_15_00"); //Zobacze, co moge zrobic.

	Info_ClearChoices	(Info_Mod_Idrico_Dorn);

	Log_CreateTopic	(TOPIC_MOD_KHORATA_DORN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_DORN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "Idrico, kaznodzieja kaznodziei Khoratas, chce, aby Elvira, magik ognia, zniknal z miasta. Powinienem z nia porozmawiac o tym.");

	Mod_REL_IdricoDorn = 1;
};

INSTANCE Info_Mod_Idrico_Dorn2 (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Dorn2_Condition;
	information	= Info_Mod_Idrico_Dorn2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Elvira nie musi sie juz dluzej martwic.";
};

FUNC INT Info_Mod_Idrico_Dorn2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn))
	&& (Mod_REL_IdricoDorn == 2)
	&& (Npc_IsDead(Mod_7499_KDF_Elvira_REL))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_Dorn2_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Dorn2_15_00"); //Elvira nie musi sie juz dluzej martwic.
	AI_Output(self, hero, "Info_Mod_Idrico_Dorn2_08_01"); //Jestes obiecujacym studentem. Wez to i naucz sie tego!

	B_GiveInvItems	(self, hero, ItSc_Geyser, 1);

	B_GivePlayerXP	(50);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_DORN, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Idrico_Dorn3 (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Dorn3_Condition;
	information	= Info_Mod_Idrico_Dorn3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Idrico_Dorn3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn4))
	&& (Mod_REL_IdricoDorn == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_Dorn3_Info()
{
	AI_Output(self, hero, "Info_Mod_Idrico_Dorn3_08_00"); //Zejdzcie stad, niechetni. Adanos ukarze cie za twoje przestepstwo!
};

INSTANCE Info_Mod_Idrico_BrokenRune (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_BrokenRune_Condition;
	information	= Info_Mod_Idrico_BrokenRune_Info;
	permanent	= 0;
	important	= 0;
	description	= "Adanos, powitanie.";
};

FUNC INT Info_Mod_Idrico_BrokenRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daniel_BrokenRune))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_BrokenRune_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_00"); //Adanos, powitanie.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_01"); //Równowaga.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_02"); //Co prowadzi do tej szopy?
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_03"); //To dluga historia. Powrót, kiedy zapora upadla......
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_04"); //Byles w Minental?
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_05"); //Oczywiscie.... Gdy zapora upadla i cala ruda stala sie bezuzyteczna, szatan i inni bracia przeniesli sie do Khorinis.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_06"); //Myslalem jednak, ze lepiej byloby pójsc do Relendel i przyniesc nasza doktryne zbawienia temu nowemu regionowi.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_07"); //Odwrócilem sie od Saturnów i przeprowadzilem sie tu samotnie.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_08"); //Ale wasze nauczanie nie jest zbyt udane, widze, ze....
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_09"); //Dobrze! Ludzie tutaj nie maja nic wspólnego z magikami.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_10"); //Potwierdza to mieszkajacy tutaj magik ognia Fuego.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_11"); //Ale powiedz mi, co cie do mnie przyprowadzi?
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_12"); //Mam tu zepsuta rune i chce zapytac, czy mozesz ja zlozyc z powrotem.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_13"); //Otrzymalem wszystkie konsekracje naszego majatku. Gdybym mial stól z runami, nie byloby to dla mnie problemem. Ale tak....
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_14"); //A jeszcze jedna magia?
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_15"); //Hmm. Kiedys mialam postac adano. Byla w niej bardzo silna magia.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_16"); //Ale musialem je sprzedac, zeby zaplacic za posilki.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_17"); //Kto sprzedales? Odbiore ja z powrotem. Gotowa ilosc zlota.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_18"); //Na rynku istnieje handlowiec sprzedajacy wszystkie rodzaje magii. Podalem mu te postac.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune_15_19"); //Bede biegal od razu i przekonam sie, czy jeszcze go ma.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune_08_20"); //Zrób to, bracie. Mezczyzna ma nazwisko Daniel. Zycze panu powodzenia.

	B_LogEntry	(TOPIC_MOD_JG_RUNENZAUBER, "Czarodziej Idrico uwaza, ze figura Adanosa pomoze naprawic rune. Trader Daniel z rynku móglby go posiadac.");
};

INSTANCE Info_Mod_Idrico_BrokenRune2 (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_BrokenRune2_Condition;
	information	= Info_Mod_Idrico_BrokenRune2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tam dostalem postac.";
};

FUNC INT Info_Mod_Idrico_BrokenRune2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daniel_BrokenRune2))
	&& (Npc_HasItems(hero, ItMi_AdanosStatue) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_BrokenRune2_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune2_15_00"); //Tam dostalem postac.

	B_GiveInvItems	(hero, self, ItMi_AdanosStatue, 1);

	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune2_08_01"); //Pokaz mi! Tak, ona jest, moja postac. Miejmy nadzieje, ze nie zostanie ona zraniona podczas procesu.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune2_15_02"); //Co robisz?
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune2_08_03"); //Przede wszystkim uderzylem zlamane partie w mascia lecznicza i zerwalem rune. Nastepnie postawie figure na górze.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune2_08_04"); //Potem moc sylwetki i magia obu kawalków runa powinna sie polaczyc i uleczyc zlamanie.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune2_15_05"); //I jak dlugo to potrwa?
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune2_08_06"); //Nie wiem o tym. Moze jednej nocy, moze dwóch dni. Nie wiem o tym.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune2_08_07"); //Jestem pewien, ze masz jeszcze prace do wykonania. Wróc jutro jutro....

	B_LogEntry	(TOPIC_MOD_JG_RUNENZAUBER, "Tu musimy poczekac ponownie, kiedy i czy runa moze byc naprawiona. Wrócmy jutro do Magika Wody.");

	Mod_JG_Idrico = Wld_GetDay();

	Npc_RemoveInvItems	(hero, ItMi_Brokenrune01, 1);
	Npc_RemoveInvItems	(hero, ItMi_Brokenrune02, 1);
};

INSTANCE Info_Mod_Idrico_BrokenRune3 (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_BrokenRune3_Condition;
	information	= Info_Mod_Idrico_BrokenRune3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Adanos by Cie pozdrowic!";
};

FUNC INT Info_Mod_Idrico_BrokenRune3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Idrico_BrokenRune2))
	&& (Wld_GetDay() > Mod_JG_Idrico)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_BrokenRune3_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune3_15_00"); //Adanos by Cie pozdrowic!
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune3_08_01"); //Równowaga. Dziwne rzeczy sie wydarzyly.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune3_15_02"); //Powiedz mi o tym. Czy runa jest caloscia?
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune3_08_03"); //To chyba tak. Ale przez caly czas nad partiami bylo nieco srebrne lsniace swiatlo.

	B_GiveInvItems	(self, hero, ItRu_BrokenRune, 1);

	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune3_15_04"); //A teraz zdaje sie ona byc srebrna, widze.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune3_08_05"); //Dokladnie. A ja bardzo watpie, czy ma pan teleportacje do Khorinisa.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune3_15_06"); //Hmm..... ale musze sie jakos dowiedziec.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune3_08_07"); //I nikt nie bedzie w stanie zdjac go z rak.
	AI_Output(hero, self, "Info_Mod_Idrico_BrokenRune3_15_08"); //Swiezo zapatrzona, polowa wygrala. Ktos kiedys to powiedzial.
	AI_Output(self, hero, "Info_Mod_Idrico_BrokenRune3_08_09"); //Adanos na wszystkie swoje drogi!

	B_LogEntry	(TOPIC_MOD_JG_RUNENZAUBER, "runa jest nienaruszona, ale stala sie srebrzysta. I nikt nie wie, co w niej jest. Chodzi o nauke. Odlozyc troche na bok.");

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Idrico_Blutkelch (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Blutkelch_Condition;
	information	= Info_Mod_Idrico_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej.";
};

FUNC INT Info_Mod_Idrico_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morpheus_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch_15_00"); //Hej.
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch_08_01"); //Zejdzcie stad, niechetni. Adanos ukarze cie za twoje oburzenie.
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch_15_02"); //Pozostan chlodny, czlowiek. Ledwie w ogóle nie popelniam oburzenia i mam tylko jedno pytanie.
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch_08_03"); //Grzesznicy zostana ukarani. Ogromna fala bedzie....
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch_08_04"); //Co chcesz wiedziec? Za mala darowizne dla slugi Adanosa?

	Info_ClearChoices	(Info_Mod_Idrico_Blutkelch);

	Info_AddChoice	(Info_Mod_Idrico_Blutkelch, "Czy wystarczy 10 zlota?", Info_Mod_Idrico_Blutkelch_B);
	Info_AddChoice	(Info_Mod_Idrico_Blutkelch, "Brak darowizny.", Info_Mod_Idrico_Blutkelch_A);
};

FUNC VOID Info_Mod_Idrico_Blutkelch_B()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch_B_15_00"); //Czy wystarczy 10 zlota?
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch_B_08_01"); //20 byloby lepiej. I kawalek solonego miesa od rzeznika. Bo asceza zaslania pamiec....

	Mod_ASS_IdricoSpende = 1;

	Info_ClearChoices	(Info_Mod_Idrico_Blutkelch);
};

FUNC VOID Info_Mod_Idrico_Blutkelch_A()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch_A_15_00"); //Brak darowizny.
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch_A_08_01"); //Potem wyjdz z tego miejsca!

	Info_ClearChoices	(Info_Mod_Idrico_Blutkelch);
};

INSTANCE Info_Mod_Idrico_Blutkelch2 (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Blutkelch2_Condition;
	information	= Info_Mod_Idrico_Blutkelch2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tu noga jagnieciny.";
};

FUNC INT Info_Mod_Idrico_Blutkelch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Idrico_Blutkelch))
	&& (Mod_ASS_IdricoSpende == 1)
	&& (Npc_HasItems(hero, ItFo_LammPoekelFleisch) >= 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Idrico_Blutkelch2_Info()
{
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch2_15_00"); //Tu noga jagnieciny.

	Npc_RemoveInvItems	(hero, ItFo_LammPoekelFleisch, 1);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 20);

	B_ShowGivenThings	("20 zloty i solony jagniecina z dodatkiem");

	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch2_08_01"); //Dziekujemy Adanosowi i Wam! Co chciales wiedziec ponownie?
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch2_15_02"); //Czy wiesz cos o krwiobiegu?
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch2_08_03"); //Uhhuh, cos swietego. Ale nie. Nic nie wiem. Przepraszam za to.
	AI_Output(hero, self, "Info_Mod_Idrico_Blutkelch2_15_04"); //I ja dookola klubu, ty stare oszustki.
	AI_Output(self, hero, "Info_Mod_Idrico_Blutkelch2_08_05"); //Adanos poblogoslawi cie za to.
};

INSTANCE Info_Mod_Idrico_Pickpocket (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_Pickpocket_Condition;
	information	= Info_Mod_Idrico_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Idrico_Pickpocket_Condition()
{
	C_Beklauen	(97, ItSc_Geyser, 2);
};

FUNC VOID Info_Mod_Idrico_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);

	Info_AddChoice	(Info_Mod_Idrico_Pickpocket, DIALOG_BACK, Info_Mod_Idrico_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Idrico_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Idrico_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Idrico_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);
};

FUNC VOID Info_Mod_Idrico_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);

		Info_AddChoice	(Info_Mod_Idrico_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Idrico_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Idrico_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Idrico_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Idrico_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Idrico_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Idrico_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Idrico_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Idrico_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Idrico_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Idrico_EXIT (C_INFO)
{
	npc		= Mod_7498_WM_Idrico_REL;
	nr		= 1;
	condition	= Info_Mod_Idrico_EXIT_Condition;
	information	= Info_Mod_Idrico_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Idrico_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Idrico_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
