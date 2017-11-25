INSTANCE Info_Mod_Aaron_Hi (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Hi_Condition;
	information	= Info_Mod_Aaron_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cóz, ciezko sie modlic?";
};

FUNC INT Info_Mod_Aaron_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagon_HabFoki))
	&& (Wld_IsTime(22,00,05,00))
	&& (Npc_HasItems(hero, ItWr_PatherionNachricht1) == 1)
	&& (Npc_HasItems(hero, ItWr_PatherionNachricht2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_00"); //Cóz, ciezko sie modlic?
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_01"); //Damn Beliar wisior! Przez dlugi czas próbowalem cie zabic, a teraz przychodzisz do kosciola ze mna?
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_02"); //Nie zbezczeszcze tego swietego miejsca swoja krwia!
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_03"); //Zadzwonisz do mnie Beliar Pendant? Co sprawia, ze myslisz, ze naleze do Beliara?
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_04"); //(zaszyfrowana cisza)
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_05"); //Czy to mozliwe, ze Tojan ci to powiedzial?
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_06"); //Skad to wiesz?
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_07"); //Cóz, powiedzmy tak: ja tez powinienem kogos zabic. W imieniu Tojana.
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_08"); //I to Ty.
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_09"); //(zdziwiony) Co?
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_10"); //Tojan gral z nami w niewlasciwa gre.
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_11"); //Próbujesz po prostu mi sie balaganic, abys mógl przetrzec nóz przez plecy!
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_12"); //Czy naprawde myslisz, ze czarny magik wszedlby do najswietszych miejsc kosciola Innos?
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_13"); //HA! Znalem to. Musisz byc czarnym magikiem. Kazdy z naszych braci wie, ze nie jest to najswietsze miejsce w kosciele Innos. To.....
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_14"); //Kaplica na wzgórzu. Przeszlam przez te kaplice.
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_15"); //Klamasz!
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_16"); //Tutaj. Czy jest to wystarczajacy dowód?

	Npc_RemoveInvItems	(hero, ItWr_PatherionNachricht1, 1);
	Npc_RemoveInvItems	(hero, ItWr_PatherionNachricht2, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_17"); //... mój pamietnik? Tak naprawde pan tam byl. Wtedy nie mozesz byc wisiorkiem Beliara. Wtedy..... Czy klasztor nie byl przesiakniety?
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_18"); //Tak, boje sie tego. Ale kogos nie podejrzewalabym.
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_19"); //Masz na mysli....
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_20"); //... Tojan.
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_21"); //Masz racje, masz racje. Wszystko pasuje.

	B_Say	(hero, self, "$WASMACHENWIRJETZT");

	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_22"); //My go ustawilismy. Przyjdz na targowisko jutro wieczorem.
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_23"); //Przed tym nalezy udac sie do Tojana i skierowac go do mnie.

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "Aaron jest niewinny. Zostal zatrudniony przez Tojana, aby mnie zabic. Wydaje sie, ze Tojan jest prawdziwym zdrajca. Spotkam sie z Aaronem na targowisku jutro wieczorem. Najpierw mam zwrócic na niego uwage Tojana i Aarona.");

	AI_StopProcessInfos	(self);

	Mod_FM_AaronDay = Wld_GetDay();
};

INSTANCe Info_Mod_Aaron_Falle (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Falle_Condition;
	information	= Info_Mod_Aaron_Falle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_Falle_Condition()
{
	if (Wld_IsTime(22,00,05,00))
	&& (Mod_FM_Foki == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Falle_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_Falle_11_00"); //Jestes!

	B_Say	(hero, self, "$WASMACHENWIRJETZT");

	AI_Output(self, hero, "Info_Mod_Aaron_Falle_11_01"); //Dowiemy sie od Tojana, dlaczego jest tu w klasztorze.
	AI_Output(hero, self, "Info_Mod_Aaron_Falle_15_02"); //I jak ty to robisz?
	AI_Output(self, hero, "Info_Mod_Aaron_Falle_11_03"); //Z sztuczka. Zagramy mu, ze mnie zabiles.
	AI_Output(hero, self, "Info_Mod_Aaron_Falle_15_04"); //A potem nazywam go amuletem, który mi dal. Mozliwosc pracy.

	AI_StopProcessInfos	(self);

	Mod_FM_Foki = 5;

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "Musze teraz wlozyc amulet, aby wezwac Tojana.");
};

INSTANCe Info_Mod_Aaron_KillTojan (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_KillTojan_Condition;
	information	= Info_Mod_Aaron_KillTojan_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_KillTojan_Condition()
{
	if (Mod_FM_Foki == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_KillTojan_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_KillTojan_11_00"); //Na bok, zabije go teraz!

	AI_StopProcessInfos	(self);

	Mod_1746_KDF_Tojan_PAT.protection[PROT_FIRE] = 0;
	Mod_1746_KDF_Tojan_PAT.protection[PROT_MAGIC] = 0;
	Mod_1746_KDF_Tojan_PAT.attribute[ATR_HITPOINTS_MAX] = 50;
	Mod_1746_KDF_Tojan_PAT.attribute[ATR_HITPOINTS] = 50;

	B_Attack	(self, Mod_1746_KDF_Tojan_PAT, AR_GuildEnemy, 0);

	Mod_FM_Foki = 10;
};

INSTANCe Info_Mod_Aaron_TojanDead (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_TojanDead_Condition;
	information	= Info_Mod_Aaron_TojanDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_TojanDead_Condition()
{
	if (Mod_FM_Foki == 10)
	&& (Npc_IsDead(Mod_1746_KDF_Tojan_PAT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_TojanDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_TojanDead_11_00"); //To prawda...... Byl moim synem.
	AI_Output(hero, self, "Info_Mod_Aaron_TojanDead_15_01"); //Wtedy jestes synem Ragona?
	AI_Output(self, hero, "Info_Mod_Aaron_TojanDead_11_02"); //Tak..... A moje imie nie jest Aaron, to Garan.
	AI_Output(hero, self, "Info_Mod_Aaron_TojanDead_15_03"); //A królowa czarów?
	AI_Output(self, hero, "Info_Mod_Aaron_TojanDead_11_04"); //Nie do konca ja pamietam..... Cos jeszcze brakuje w mojej pamieci..... Ale to teraz nie ma znaczenia.
	AI_Output(self, hero, "Info_Mod_Aaron_TojanDead_11_05"); //Teraz musze wrócic do swojego miejsca w kosciele Innos. Z czterema bracmi zniszcze te bariere.
	AI_Output(self, hero, "Info_Mod_Aaron_TojanDead_11_06"); //Nie wiem, jak moge Ci podziekowac!

	AI_StopProcessInfos	(self);

	self.name = "gwarancja";

	B_StartOtherRoutine	(self, "BOSS");

	Mod_FM_Foki = 11;

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "garanik W pierwszej kolejnosci przejdzie na emeryture. Powinienem go zobaczyc pózniej.");
};

INSTANCE Info_Mod_Aaron_Barriere (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Barriere_Condition;
	information	= Info_Mod_Aaron_Barriere_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_Barriere_Condition()
{
	if (Wld_IsTime(05,00,22,00))
	&& (Mod_FM_Foki == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Barriere_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_Barriere_11_00"); //Ah, hello, brat. Jak widac, zajelam miejsce ojcu.
	AI_Output(hero, self, "Info_Mod_Aaron_Barriere_15_01"); //Ciesze sie, ze widze to.
	AI_Output(self, hero, "Info_Mod_Aaron_Barriere_11_02"); //Rozwazamy zaklecie, które zniszczy bariere.
	AI_Output(self, hero, "Info_Mod_Aaron_Barriere_11_03"); //Nie powinno to zabrac nas wiecej niz jeden dzien. Wróc tym razem jutro.

	Mod_FM_Barriere = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "Garan i inni magowie zastanawiaja sie teraz, jak zniszczyc bariere. Chca, abym wrócil jutro.");
};

INSTANCE Info_Mod_Aaron_BarriereWeg (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_BarriereWeg_Condition;
	information	= Info_Mod_Aaron_BarriereWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_BarriereWeg_Condition()
{
	if (Mod_FM_Barriere < Wld_GetDay())
	&& (Npc_KnowsInfo(hero, Info_Mod_Aaron_Barriere))
	&& (Wld_IsTime(05,00,22,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_BarriereWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_BarriereWeg_11_00"); //Robi sie to, zapora jest niszczona!
	AI_Output(hero, self, "Info_Mod_Aaron_BarriereWeg_15_01"); //To dobra wiadomosc.
	AI_Output(self, hero, "Info_Mod_Aaron_BarriereWeg_11_02"); //Rzeczywiscie, bracie. Teraz mozesz wrócic do Khorinis. Wez te dwa runy.

	CreateInvItems	(hero, ItRu_Teleport_Pat_01, 1);
	CreateInvItems	(hero, ItRu_Teleport_Pat_02, 1);

	AI_PrintScreen	("2 Zachowane sliwki", -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);

	AI_Output(self, hero, "Info_Mod_Aaron_BarriereWeg_11_03"); //Z nimi mozna teleportowac do kaplicy i tu w kosciele.

	Wld_SendTrigger	("EVT_PAT_BARRIERE");

	B_StartOtherRoutine	(self, "ARBEIT");

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "Jest ukonczone i bariera jest przelamana. Moge teraz wrócic do Khorinis i poinformowac Pyrokar.");
	B_SetTopicStatus	(TOPIC_MOD_FM_VERRAT, LOG_SUCCESS);
};

INSTANCE Info_Mod_Aaron_Back (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Back_Condition;
	information	= Info_Mod_Aaron_Back_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sie tu dzieje?";
};

FUNC INT Info_Mod_Aaron_Back_Condition()
{
	if (Mod_Enter_PAT_Second == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Back_Info()
{
	B_Say	(hero, self, "$WASISTDENNHIERLOS");

	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_00"); //No cóz, jak byc moze wiecie, rada bogów zostala powolana. Oznacza to, ze czarne magi nie moga nas juz oblegac.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_01"); //A dlaczego sa tutaj w klasztorze?
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_02"); //Cóz, niestety, wciaz jestesmy oblezeni, ale nie przez czarne magów.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_03"); //Wtedy kto to zrobil?
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_04"); //Z czarownic.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_05"); //Co? O czarownicach? Masz na mysli matke Tojana?
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_06"); //Wyglada tak, tak, tak, tak.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_07"); //Tak, ale czarne magowie tak naprawde nie obchodza sie z nimi?
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_08"); //Nie do konca. Czarownice od dawna sa sojusznikami czarnych magów.
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_09"); //To znaczy, jesli czarownice zaatakuja nas, to nie byloby inaczej niz gdyby zaatakowali nas czarnoskórzy magowie.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_10"); //I to zmusza ich do udzielenia nam pomocy, ze tak powiem.
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_11"); //Dokladnie. Tak naprawde nie przyjelibysmy tej pomocy, ale czarownice sa w przytlaczajacej liczbie, której sami nie bylibysmy w stanie sobie poradzic.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_12"); //Rozumiem. Wiec co teraz robisz?
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_13"); //Cóz, to dobra rzecz, która wlasnie dostales tutaj. Czarownice przejely w sumie piec obozów czarnych magów.
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_14"); //A tam zaatakujecie czarownice.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_15"); //Co? Czarownice sa tak obfite, ze musicie przyjac pomoc czarnych magów, a ja musze isc przeciwko nim samotnie?
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_16"); //Oczywiscie nie tylko. Na Twoje rozkazy grupa juz czeka na dziedzincu klasztornym!
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_17"); //Teraz spieszyc sie. Im szybciej niszczycie obozy, tym lepiej!

	Mod_FM_Hexencounter += 60;

	Wld_InsertNpc	(Mod_1855_PAL_Paladin_PAT, "WP_PAT_WEG_178");
	Wld_InsertNpc	(Mod_1856_PAL_Paladin_PAT, "WP_PAT_WEG_178");
	Wld_InsertNpc	(Mod_1857_KDF_Magier_PAT, "WP_PAT_WEG_178");
	Wld_InsertNpc	(Mod_7333_KDS_SchwarzerMagier_PAT, "WP_PAT_WEG_178");
	Wld_InsertNpc	(Mod_7332_SMK_SchwarzerKrieger_PAT, "WP_PAT_WEG_178");

	Log_CreateTopic	(TOPIC_MOD_FM_HEXEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_HEXEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_HEXEN, "Garan chce, abym zabil czarownice, którzy osiedlili sie w obozach czarnych magów. Na dziedzincu klasztornym czeka na mnie oddzial wojskowy.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Aaron_Hexen (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Hexen_Condition;
	information	= Info_Mod_Aaron_Hexen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Obozy zostaly zdobyte.";
};

FUNC INT Info_Mod_Aaron_Hexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aaron_Back))
	&& (Mod_FM_Hexencounter == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Hexen_Info()
{
	AI_Output(hero, self, "Info_Mod_Aaron_Hexen_15_00"); //Obozy zostaly zdobyte.
	AI_Output(self, hero, "Info_Mod_Aaron_Hexen_11_01"); //To na razie powinno wystarczyc. Ale teraz musimy dzialac szybko!

	B_Say	(hero, self, "$WASMEINSTDU");

	AI_Output(self, hero, "Info_Mod_Aaron_Hexen_11_03"); //Odetnij glowe weza! Musimy zniszczyc królowa czarów.
	AI_Output(hero, self, "Info_Mod_Aaron_Hexen_15_04"); //Wiec masz na mysli....?
	AI_Output(self, hero, "Info_Mod_Aaron_Hexen_11_05"); //Tak, matka Tojana. Za wszystko zaplaci teraz!
	AI_Output(self, hero, "Info_Mod_Aaron_Hexen_11_06"); //Zamawiam ci te prace, bracie. Badz mocny!
	AI_Output(self, hero, "Info_Mod_Aaron_Hexen_11_07"); //Teraz nalezy zniszczyc królowa czarów. Zamieszkala w starej wiezy. Uwazaj jednak, ze jest pod ciezka opieka.

	B_SetTopicStatus	(TOPIC_MOD_FM_HEXEN, LOG_SUCCESS);

	B_Göttergefallen(1, 2);

	B_StartOtherRoutine	(Mod_1855_PAL_Paladin_PAT, "START");
	B_StartOtherRoutine	(Mod_1856_PAL_Paladin_PAT, "START");
	B_StartOtherRoutine	(Mod_1857_KDF_Magier_PAT, "START");
	
	Log_CreateTopic	(TOPIC_MOD_FM_HEXENQUEEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_HEXENQUEEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_HEXENQUEEN, "Garan zatrudnil mnie do zabicia królowej czarów. Ona jest na starej wiezy.");
};

INSTANCE Info_Mod_Aaron_Door (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Door_Condition;
	information	= Info_Mod_Aaron_Door_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_Door_Condition()
{
	if (CHECKOPENDOORPATHERION_OPENED == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Door_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_Door_11_00"); //Wracasz juz? Czy zniszczyles królowa czarów?
	AI_Output(hero, self, "Info_Mod_Aaron_Door_15_01"); //Nie. Nie moge przejsc przez drzwi.
	AI_Output(self, hero, "Info_Mod_Aaron_Door_11_02"); //Próbowales go zlamac?
	AI_Output(hero, self, "Info_Mod_Aaron_Door_15_03"); //Tak, ale to nie zadzialalo.
	AI_Output(self, hero, "Info_Mod_Aaron_Door_11_04"); //No cóz, wtedy przyjde z wami i otworze drzwi.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DOOR");
};

INSTANCE Info_Mod_Aaron_DoorIn (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_DoorIn_Condition;
	information	= Info_Mod_Aaron_DoorIn_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_DoorIn_Condition()
{
	if (Npc_GetDistToWP(self, "WP_PAT_TURM_03") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_DoorIn_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_DoorIn_11_00"); //Dziwny....
	AI_Output(hero, self, "Info_Mod_Aaron_DoorIn_15_01"); //Nie wygladalo to na trudne teraz.
	AI_Output(self, hero, "Info_Mod_Aaron_DoorIn_11_02"); //To nie bylo. Cokolwiek. Musimy nadal dzialac. AH!

	B_Say	(hero, self, "$WASISTDENN");

	AI_Output(self, hero, "Info_Mod_Aaron_DoorIn_11_03"); //Stracilem ruine. Wciaz musi byc na dole schodów. Pójde i szybko je otrzymam.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TREPPE");

	Wld_InsertNpc	(Mod_1858_KDF_Aaron_PAT, "WP_PAT_TURMWEG_04");
};

INSTANCE Info_Mod_Aaron_Blut (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Blut_Condition;
	information	= Info_Mod_Aaron_Blut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_Blut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hexenqueen_Blut))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Blut_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_Blut_11_00"); //Czy nie potrzebujesz obu naszej krwi, aby obudzic nasza matke?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Aaron_Kill (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Kill_Condition;
	information	= Info_Mod_Aaron_Kill_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_Kill_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hexenqueen_Falsch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Kill_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_Kill_11_00"); //Chodzcie dalej, zabijmy ich!

	AI_StopProcessInfos	(self);

	B_Attack	(self, Mod_1859_HEX_Hexenqueen_PAT, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Aaron_Party (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Party_Condition;
	information	= Info_Mod_Aaron_Party_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_Party_Condition()
{
	if (Mod_FM_AtHexe == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Party_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_Party_11_00"); //Dziekuje, mój przyjaciel. Bez Ciebie nigdy nie dowiedzialbym sie, kim naprawde jestem.
	AI_Output(self, hero, "Info_Mod_Aaron_Party_11_01"); //Chcialbym Cie bogato nagradzac.
	AI_Output(self, hero, "Info_Mod_Aaron_Party_11_02"); //Ale nie moge ci wiele dac, musisz byc zadowolony z tego daru.

	B_ShowGivenThings	("otrzymany");

	CreateInvItems	(hero, ItPo_PotionOfDeath_01_Mis, 1);

	B_Say	(hero, self, "$WASISTDAS");

	AI_Output(self, hero, "Info_Mod_Aaron_Party_11_03"); //To, mój przyjaciel, jest spuscizna mojego ojca. To, czego szukal przez cale zycie. Szósta lza Inno.
	AI_Output(hero, self, "Info_Mod_Aaron_Party_15_04"); //Wlasciwie ja znalazl?
	AI_Output(self, hero, "Info_Mod_Aaron_Party_11_05"); //Tak. zanim zwiazal sie z matka. Bedziesz ja mial.
	AI_Output(self, hero, "Info_Mod_Aaron_Party_11_06"); //Teraz swietujmy!

	B_SetTopicStatus	(TOPIC_MOD_FM_HEXENQUEEN, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_PATHERION, LOG_SUCCESS);

	B_Göttergefallen(1, 2);

	B_GivePlayerXP	(1000);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Aaron_EXIT (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_EXIT_Condition;
	information	= Info_Mod_Aaron_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Aaron_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Aaron_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
