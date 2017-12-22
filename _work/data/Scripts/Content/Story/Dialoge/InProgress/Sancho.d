INSTANCE Info_Mod_Sancho_Alissandro (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Alissandro_Condition;
	information	= Info_Mod_Sancho_Alissandro_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pochodze z Alissandro i mam dla Panstwa wiadomosc.";
};

FUNC INT Info_Mod_Sancho_Alissandro_Condition()
{
	if (Npc_HasItems(hero, ItWr_AliBotschaft) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Alissandro_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Alissandro_15_00"); //Pochodze z Alissandro i mam dla Panstwa wiadomosc.
	AI_Output(self, hero, "Info_Mod_Sancho_Alissandro_03_01"); //(nudne) Bledne haslo.

	B_StartOtherRoutine	(Mod_761_BDT_Dexter_MT, "EINGANG");
	AI_Teleport	(Mod_761_BDT_Dexter_MT, "LOCATION_03_04");

	self.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Sancho_GardistenInfos (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_GardistenInfos_Condition;
	information	= Info_Mod_Sancho_GardistenInfos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Sancho_GardistenInfos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_03_01"); //Hi, czego chcesz?
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_15_02"); //Szukam informacji.
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_03_03"); //To kosztowne gonna.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_15_04"); //Ile?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_03_05"); //50 zlota.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "To za duzo!", Info_Mod_Sancho_GardistenInfos_C);
	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "50 zlota? Czyz nie 20?", Info_Mod_Sancho_GardistenInfos_B);

	if (Npc_HasItems(hero, ItMi_Gold) > 49)
	{
		Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Tutaj.", Info_Mod_Sancho_GardistenInfos_A);
	};
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_C()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_C_15_00"); //To za duzo!
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_C_03_01"); //Potem wyjdz z tego miejsca!

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_B()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_B_15_00"); //50 zlota? Czyz nie 20?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_B_03_01"); //No cóz, bo to Ty jestes, teraz jest ich 80.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Cutroat!", Info_Mod_Sancho_GardistenInfos_E);

	if (Npc_HasItems(hero, ItMi_Gold) > 79)
	{
		Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Cutroat. (80 Dawanie zlota)", Info_Mod_Sancho_GardistenInfos_D);
	};
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_E()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_E_15_00"); //Cutroat!
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_E_03_01"); //Potem wyjdz z tego miejsca!

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_D()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_D_15_00"); //Cutroat.

	B_GiveInvItems	(hero, self, ItMi_Gold, 80);

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_D_03_01"); //Ach, wciaz brakuje 20 zlota. Przykro mi, przyjaciel, ale trzeba sie pomylic.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "To bylo dokladnie 80 zlota. Teraz powiedz mi co chce wiedziec od Ciebie!", Info_Mod_Sancho_GardistenInfos_G);

	if (Npc_HasItems(hero, ItMi_Gold) > 19)
	{
		Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Tutaj wez to i powiedz mi, co chce wiedziec.", Info_Mod_Sancho_GardistenInfos_F);
	};
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_G()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_G_15_00"); //To bylo dokladnie 80 zlota. Teraz powiedz mi co chce wiedziec od Ciebie!
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_G_03_01"); //Zapomnij, przyjaciel. Zbudujcie sie z tego fuck, zanim rozbije wasza nierozsadna czaszke!

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Bedziesz tego zalowal, syn suki!", Info_Mod_Sancho_GardistenInfos_I);
	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Zobacze cie jeszcze raz.", Info_Mod_Sancho_GardistenInfos_H);
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_I()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_I_15_00"); //Bedziesz tego zalowal, syn suki!

	AI_DrawWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_I_03_01"); //Co?

	CreateInvItems	(self, ItWr_MagicPaper, 1);

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Mod_SanchoKampfWegenZettel = 1;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_A()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_00"); //Tutaj.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_03_01"); //Co chcesz wiedziec teraz?
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_02"); //Czy w ostatnim czasie byli tu ostatnio niektórzy straznicy?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_03_03"); //Przypadkowo, tak.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_04"); //Gdzie sie udali?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_03_05"); //Nigdzie indziej.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_06"); //Wiec wciaz sa?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_03_07"); //Zasadniczo tak.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_08"); //Czy moge z Toba porozmawiac?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_03_09"); //Nie.
	
	B_Say	(hero, self, "$WIESONICHT");

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_03_11"); //Powodem tego jest to, ze musicie zaczac od paczki po prostu szukac ich czesci.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_12"); //Zostales zabity przez snapperów?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_03_13"); //Nie.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_14"); //Jak teraz? Wlasnie powiedzial pan.....
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_03_15"); //... Oni byli przez nie zjedzeni! Zabilismy ich. (smiertelnicy zabrudzeni
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_16"); //Ah. Czy zauwazyles/as cos o nich, czy tez oni mieli cokolwiek na tobie?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_03_17"); //Nikt z nas jej nie widzial w Minentalu, ale nie jest to takie niezwykle. Mieli przy sobie notatke.
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_A_15_18"); //Czy moge zobaczyc notatke?
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_A_03_19"); //Oczywiscie tak jest. Kosztowaloby to kolejne 50 zlota.


	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Kolejne 50 zlota? Zmeczam sie tym!", Info_Mod_Sancho_GardistenInfos_K);

	if (Npc_HasItems(hero, ItMi_Gold) > 49)
	{
		Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Wszystko w porzadku, tutaj jest pieprzace zloto. (50 Dawanie zlota)", Info_Mod_Sancho_GardistenInfos_J);
	};
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_H()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_H_15_00"); //Zobacze cie jeszcze raz.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_F()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_F_15_00"); //Tutaj wez to i powiedz mi, co chce wiedziec.

	B_GiveInvItems	(hero, self, ItMi_Gold, 20);

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_Mod_Sancho_GardistenInfos_A();
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_K()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_K_15_00"); //Kolejne 50 zlota? Zmeczam sie tym!
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_K_03_01"); //50 zlota lub zostawic. Chcecie te notatke i mam ja, nie obchodzi mnie.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Istnieje równiez trzecia mozliwosc....", Info_Mod_Sancho_GardistenInfos_M);
	Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Nie daje juz nic wiecej.", Info_Mod_Sancho_GardistenInfos_L);

	if (Npc_HasItems(hero, ItMi_Gold) > 49)
	{
		Info_AddChoice	(Info_Mod_Sancho_GardistenInfos, "Cutroat. (80 Dawanie zlota)", Info_Mod_Sancho_GardistenInfos_J);
	};
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_M()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_M_15_00"); //Istnieje równiez trzecia mozliwosc....

	CreateInvItems	(self, ItWr_MagicPaper, 1);

	Mod_SanchoKampfWegenZettel = 1;

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_L()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_L_15_00"); //Nie daje juz nic wiecej. Informacje, których potrzebuje, mozna znalezc gdzie indziej.
	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_L_03_01"); //Wszystko w porzadku, tutaj zwróccie uwage. Tak czy inaczej nie potrafie go odczytac.

	B_GiveInvItems	(self, hero, ItWr_MagicPaper, 1);

	Mod_SanchoHatZettel = 2;

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_L_03_02"); //Teraz juz nie rozpraszaj mnie.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Sancho dal mi notatke, która straznicy mieli przy sobie.");
};

FUNC VOID Info_Mod_Sancho_GardistenInfos_J()
{
	AI_Output(hero, self, "Info_Mod_Sancho_GardistenInfos_J_15_00"); //Wszystko w porzadku, tutaj jest pieprzace zloto.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_J_03_01"); //Wszystko w porzadku, tutaj zwróccie uwage. Tak czy inaczej nie potrafie go odczytac.

	B_GiveInvItems	(self, hero, ItWr_MagicPaper, 1);

	Mod_SanchoHatZettel = 2;

	AI_Output(self, hero, "Info_Mod_Sancho_GardistenInfos_J_03_02"); //Teraz juz nie rozpraszaj mnie.

	Info_ClearChoices	(Info_Mod_Sancho_GardistenInfos);

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Sancho dal mi notatke, która straznicy mieli przy sobie.");
};

INSTANCE Info_Mod_Sancho_Umgehauen (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Umgehauen_Condition;
	information	= Info_Mod_Sancho_Umgehauen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skad ta wzmianka?";
};

FUNC INT Info_Mod_Sancho_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_GardistenInfos))
	&& (Mod_SanchoHatZettel	==	1)
	&& (Mod_SanchoKampfWegenZettel == 1)
	&& (self.aivar[AIV_LastPlayerAR] == AR_NONE)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Umgehauen_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Umgehauen_15_00"); //Skad ta wzmianka?
	AI_Output(self, hero, "Info_Mod_Sancho_Umgehauen_03_01"); //Dzieki temu masz calkiem dobry poncz. Przybywa od kilku strazników, którzy przyjechali tu pewnego dnia.
	AI_Output(self, hero, "Info_Mod_Sancho_Umgehauen_03_02"); //Trzymaj go, i tak nie moge go uzywac. Teraz zostaw mnie sam na sam.

	Mod_SanchoHatZettel = 2;

	// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;
};

INSTANCE Info_Mod_Sancho_WasFuerLosung (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_WasFuerLosung_Condition;
	information	= Info_Mod_Sancho_WasFuerLosung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie haslo?";
};

FUNC INT Info_Mod_Sancho_WasFuerLosung_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sancho_WasFuerLosung_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_WasFuerLosung_15_00"); //Jakie haslo?
	AI_Output(self, hero, "Info_Mod_Sancho_WasFuerLosung_03_01"); //Haslo, które pozwala ci wejsc do obozu bez wlamywania sie do kawalków przeze mnie i chlopców w srodku, nagle.
};

INSTANCE Info_Mod_Sancho_WasFuerLosung2 (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_WasFuerLosung2_Condition;
	information	= Info_Mod_Sancho_WasFuerLosung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie i jak mam otrzymac haslo?";
};

FUNC INT Info_Mod_Sancho_WasFuerLosung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_WasFuerLosung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_WasFuerLosung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_WasFuerLosung2_15_00"); //Gdzie i jak mam otrzymac haslo?
	AI_Output(self, hero, "Info_Mod_Sancho_WasFuerLosung2_03_01"); //Hej, mezczyscie, zaczynasz szarpac moje nerwy.
	AI_Output(self, hero, "Info_Mod_Sancho_WasFuerLosung2_03_02"); //Jesli chcesz, aby to cholerne haslo, musisz pomóc naszym chlopcom w Khorinis.
	AI_Output(self, hero, "Info_Mod_Sancho_WasFuerLosung2_03_03"); //Ale nie mysl, ze mozesz tylko isc i dostac.
	AI_Output(self, hero, "Info_Mod_Sancho_WasFuerLosung2_03_04"); //Jesli w jakims momencie naprawde potrzebuja twojej pomocy, porozmawiaja z toba.
	AI_Output(self, hero, "Info_Mod_Sancho_WasFuerLosung2_03_05"); //Teraz juz nie martwcie sie.
};

INSTANCE Info_Mod_Sancho_Nek (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Nek_Condition;
	information	= Info_Mod_Sancho_Nek_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sancho_Nek_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fingers_Nek3))
	&& (Npc_HasItems(hero, ItAm_Nek) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Nek_Info()
{
	AI_Output(self, hero, "Info_Mod_Sancho_Nek_03_00"); //Co Pan tutaj robi?
	AI_Output(hero, self, "Info_Mod_Sancho_Nek_15_01"); //Mam Nek's amulet. Spójrz.

	B_GiveInvItems	(hero, self, ItAm_Nek, 1);

	AI_Output(self, hero, "Info_Mod_Sancho_Nek_03_02"); //Fakt. Oto Twoje zloto.

	B_GiveInvItems	(self, hero, ItMi_Gold, 350);

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_FINGERS_NEK, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Sancho_Dam (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Dam_Condition;
	information	= Info_Mod_Sancho_Dam_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przynioslem wam amulet.";
};

FUNC INT Info_Mod_Sancho_Dam_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Nek))
	&& (Npc_KnowsInfo(hero, Info_Mod_Sancho_WasFuerLosung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Dam_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_00"); //Przynioslem wam amulet. Warto przyjsc do obozu.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_01"); //Po prostu sie nie rozluzniasz, czy to ty?
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_02"); //Dobrze, mam dla Ciebie propozycje.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_03"); //Jesli bedziecie mogli to zrobic, inni nie beda mieli nic przeciwko temu, ze wpuszczono Was do naszego obozu, nawet jesli nie jestescie jeszcze jednym z nas.
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_04"); //Slysze.....
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_05"); //Dobrze, przyniósl mi pan amulet. Wiesz, o co w tym wszystkim chodzi?
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_06"); //Cóz, kiedys nalezal do straznika imieniem Nek, który blogoslawil doczesnego.... Wiecej
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_07"); //Ha, i naprawde w to wierzysz.
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_08"); //Wlasciwie.... tak.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_09"); //Cóz, sluchajcie, dzieciak.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_10"); //Nie zaznaczyl on amuletu swoim nazwiskiem.... ale amulet z nazwiskiem.
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_11"); //Co?
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_12"); //Amulet nie jest zwyklym amuletem ochronnym.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_13"); //Nalezy do gatunku artefaktów o niefortunnych cechach.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_14"); //Z kolei nek amulet przejmuje z czasem posiadanie uzytkownika.... i przyniesc mu smierc predzej czy pózniej.
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_15"); //Co....? Ale przynajmniej to by wiele wyjasnilo....
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_16"); //W kazdym razie, te elementy maja wysoka wartosc kolekcjonerska z czarnymi magami i okultystami.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_17"); //Pochodza one z zakletego torfowiska w Relendel.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_18"); //I musi byc takze druga czesc amuletu, który reprezentuje grzbiet nek amulet...... przynajmniej tak.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_19"); //Nek byl lowca skarbów na torfowisku przed kolonia.... a kiedys opowiadal o innym amulecie....
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_20"); //Ale poniewaz go nie niósl, to jeszcze moglo tam byc.
	AI_Output(hero, self, "Info_Mod_Sancho_Dam_15_21"); //I mam to teraz znalezc.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam_03_22"); //Dokladnie. Co mówisz?
};

INSTANCE Info_Mod_Sancho_Dam2 (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Dam2_Condition;
	information	= Info_Mod_Sancho_Dam2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostane amulet.";
};

FUNC INT Info_Mod_Sancho_Dam2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Dam))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Dam2_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Dam2_15_00"); //Dostane amulet.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam2_03_01"); //Dobre. Druga czesc to Dam amulet. Przynosi to potepienie okaziciela.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam2_03_02"); //Ten zestaw - smierc i potepienie - powinien miec znacznie wyzsza wartosc niz pojedyncze kawalki.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam2_03_03"); //Jesli dostaniesz go za mnie, jestem pewien, ze nikt w obozie nie bedzie mial zadnych zastrzezen do tego, ze przyjedziecie Panstwo na obóz i handlujecie z naszymi chlopcami...... jednakze.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam2_03_04"); //W naszym magazynie daje wystarczajaco duzo wartosci i korzysci.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam2_03_05"); //Zloty gnój plynny nalezy sprawdzic w karczmie w poblizu torfowiska.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam2_03_06"); //Kazdy ma racje? Okay. Nastepnie ruszaj w droge.

	Log_CreateTopic	(TOPIC_MOD_SANCHO_DAM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SANCHO_DAM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SANCHO_DAM, "Gdy przyprowadze Sancho amulet zapory, dostaje sie do obozu bandytów. Powiedzial mi, ze najlepszym miejscem do zapytania jest tawerna dla zlotego gnojowicy plynnej, która znajduje sie w przekletym bagnie w Relendel.");
};

INSTANCE Info_Mod_Sancho_Dam3 (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Dam3_Condition;
	information	= Info_Mod_Sancho_Dam3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam amulet zapory.";
};

FUNC INT Info_Mod_Sancho_Dam3_Condition()
{
	if (Npc_HasItems(hero, ItAm_Dam) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Dam3_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Dam3_15_00"); //Mam amulet zapory.
	AI_Output(self, hero, "Info_Mod_Sancho_Dam3_03_01"); //Co? Nie moze byc. Pokaz mi!

	B_GiveInvItems	(hero, self, ItAm_Dam, 1);

	AI_Output(self, hero, "Info_Mod_Sancho_Dam3_03_02"); //Wlasciwie. To wlasnie nazywam czysta praca. Nie sadzilem, zebys przezyl wrzosowisko.

	if (self.aivar[AIV_PASSGATE] == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Sancho_Dam3_03_03"); //Jestes wiecej niz zasluzyles na wejscie do naszego obozu.... nawet jesli jeszcze nie jestes bandyta.
		AI_Output(self, hero, "Info_Mod_Sancho_Dam3_03_04"); //Moge jednak udzielic ci wskazówek. Jeden z naszych chlopców umiescil sie w portowym miescie.
		AI_Output(self, hero, "Info_Mod_Sancho_Dam3_03_05"); //Szuka zdolnych i doswiadczonych mezczyzn, którzy naleza juz do wielkiej gildii.
		AI_Output(self, hero, "Info_Mod_Sancho_Dam3_03_06"); //Ale nie powinien to byc straz miejska....

		self.aivar[AIV_PASSGATE] = TRUE;
	};

	B_GivePlayerXP	(600);

	B_SetTopicStatus	(TOPIC_MOD_SANCHO_DAM, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Sancho_Parole (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Parole_Condition;
	information	= Info_Mod_Sancho_Parole_Info;
	permanent	= 0;
	important	= 0;
	description	= "(slowo rozpuszczajace)";
};

FUNC INT Info_Mod_Sancho_Parole_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Senyan_HabSchwert))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Parole_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Parole_15_00"); //Dex-Ban.
	AI_Output(self, hero, "Info_Mod_Sancho_Parole_03_01"); //Cóz, mozesz przejsc.

	self.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Sancho_Asylanten (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Asylanten_Condition;
	information	= Info_Mod_Sancho_Asylanten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co planujesz dalej?";
};

FUNC INT Info_Mod_Sancho_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sancho_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Sancho_Asylanten_15_00"); //Co planujesz dalej?
	AI_Output(self, hero, "Info_Mod_Sancho_Asylanten_03_01"); //(smiech) Nie wiesz jeszcze o tym?
	AI_Output(self, hero, "Info_Mod_Sancho_Asylanten_03_02"); //(poufne) W nocy chodzmy sie do Starego Obozu, podkradzamy strazników i burzemy zamek.
	AI_Output(hero, self, "Info_Mod_Sancho_Asylanten_15_03"); //Czy tak jest?
	AI_Output(self, hero, "Info_Mod_Sancho_Asylanten_03_04"); //Jak glupim myslisz, ze mam zawalic nasze plany?
	AI_Output(self, hero, "Info_Mod_Sancho_Asylanten_03_05"); //Chcesz, abym dobrowolnie poszedl do wiezienia?
	AI_Output(hero, self, "Info_Mod_Sancho_Asylanten_15_06"); //Ale nie planujesz przejsc do nastepnego Khorinis?
	AI_Output(self, hero, "Info_Mod_Sancho_Asylanten_03_07"); //Nie martw sie o to. (smiech) Ale daje ci znac kiedy przyjdzie czas, dzieciak.
	AI_Output(self, hero, "Info_Mod_Sancho_Asylanten_03_08"); //Weirdo.

	B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "Sancho nie powie mi, na czym polegaja bandyci.");
};

const string Sancho_Checkpoint	= "SANCHO_DIST_CHECKPOINT";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_Sancho_FirstWarn (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_FirstWarn_Condition;
	information	= Info_Mod_Sancho_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Sancho_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, Sancho_Checkpoint) <= 500) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	
	if ((self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_RefuseTalk(self) == FALSE))
	{
		return TRUE;
	};
};

func void Info_Mod_Sancho_FirstWarn_Info()
{
	if (Npc_HasItems(hero, ItWr_AliBotschaft) == 0)
	{
		AI_Output (self, hero,"Info_Mod_Sancho_FirstWarn_03_00"); //HALT! Nikt nie moze wejsc do obozu bez hasla.
	}
	else
	{
		AI_Output (self, hero,"Info_Mod_Sancho_FirstWarn_03_01"); //(bolesne) Haslo?
	};

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, Sancho_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Sancho_SecondWarn (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_SecondWarn_Condition;
	information	= Info_Mod_Sancho_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Sancho_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, Sancho_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_Sancho_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Sancho_SecondWarn_03_00"); //Opowiem ci to po raz ostatni. Jeszcze jeden krok i wejdziesz w swiat bólu!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,Sancho_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Sancho_Attack (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Attack_Condition;
	information	= Info_Mod_Sancho_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Sancho_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,Sancho_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_Sancho_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_Sancho_Attack_03_00"); //Poprosil pan o to.....

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_Sancho_Pickpocket (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_Pickpocket_Condition;
	information	= Info_Mod_Sancho_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Sancho_Pickpocket_Condition()
{
	C_Beklauen	(57, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Sancho_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);

	Info_AddChoice	(Info_Mod_Sancho_Pickpocket, DIALOG_BACK, Info_Mod_Sancho_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sancho_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sancho_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sancho_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);
};

FUNC VOID Info_Mod_Sancho_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);

		Info_AddChoice	(Info_Mod_Sancho_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sancho_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sancho_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sancho_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sancho_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sancho_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sancho_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sancho_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sancho_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sancho_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sancho_EXIT (C_INFO)
{
	npc		= Mod_961_BDT_Sancho_MT;
	nr		= 1;
	condition	= Info_Mod_Sancho_EXIT_Condition;
	information	= Info_Mod_Sancho_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sancho_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sancho_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
