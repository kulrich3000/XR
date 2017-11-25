INSTANCE Info_Mod_Garond_Hi (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Hi_Condition;
	information	= Info_Mod_Garond_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garond_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Garond_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_00"); //Skad pochodzisz?
	AI_Output(hero, self, "Info_Mod_Garond_Hi_15_01"); //Poza miastem.
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_02"); //Jestes uchodzca kolonii? Jestes ukrywajacym sie przed kolonia.
	AI_Output(hero, self, "Info_Mod_Garond_Hi_15_03"); //Co by bylo, gdyby?
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_04"); //Nie tolerujemy tu zadnej zbrodni, dobrze?
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_05"); //Panowie laskawie zarzadzili, ze oszukani powinniscie otrzymac druga szanse, ale gdyby to zalezalo od mnie, wszyscy bylibyscie w niebezpieczenstwie na linie jutro.
	AI_Output(hero, self, "Info_Mod_Garond_Hi_15_06"); //Ciesze sie, ze to nie zalezy od Ciebie.
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_07"); //Obserwuj swój krok. Bede Cie pilnowal.
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_08"); //Jesli nie bedziesz sie zachowywal, bedziemy rozmawiac jeszcze raz.
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_09"); //I nie mysl nawet o pedingowaniu bajek, jak bic spiwora.
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_10"); //Mamy dosc takich facetów.
	AI_Output(hero, self, "Info_Mod_Garond_Hi_15_11"); //Kto by to powiedzial?
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_12"); //Monty na brzegu. To ostatni, którego jeszcze nie wyrzucilem z miasta.

	Log_CreateTopic	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, "");
};

INSTANCE Info_Mod_Garond_Argez (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Argez_Condition;
	information	= Info_Mod_Garond_Argez_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego nie wpusciles Argeza do miasta?";
};

FUNC INT Info_Mod_Garond_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Argez_Info()
{
	AI_Output(hero, self, "Info_Mod_Garond_Argez_15_00"); //Dlaczego nie wpusciles Argeza do miasta?
	AI_Output(self, hero, "Info_Mod_Garond_Argez_30_01"); //Masz na mysli tatuaz? Po prostu nie lubilem jego twarzy. Bylby klopotliwy.

	Info_ClearChoices	(Info_Mod_Garond_Argez);

	Info_AddChoice	(Info_Mod_Garond_Argez, "Oto 100 zloto, wpusc go.", Info_Mod_Garond_Argez_B);
	Info_AddChoice	(Info_Mod_Garond_Argez, "Skontaktuje sie z nim.", Info_Mod_Garond_Argez_A);
};

FUNC VOID Info_Mod_Garond_Argez_B()
{
	AI_Output(hero, self, "Info_Mod_Garond_Argez_B_15_00"); //Oto 100 zloto, wpusc go.
	AI_Output(self, hero, "Info_Mod_Garond_Argez_B_30_01"); //Czy myslisz, z takim....? Obrazanie moich wartosci moze zmienic moje zdanie?
	AI_Output(self, hero, "Info_Mod_Garond_Argez_B_30_02"); //Upewnij sie, ze nie ladujesz przed brama na dobre!

	Info_ClearChoices	(Info_Mod_Garond_Argez);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_540_PAL_Andre_NW,	"ATGAROND");
};

FUNC VOID Info_Mod_Garond_Argez_A()
{
	AI_Output(hero, self, "Info_Mod_Garond_Argez_A_15_00"); //Skontaktuje sie z nim.
	AI_Output(self, hero, "Info_Mod_Garond_Argez_A_30_01"); //(smiech) To jest coraz lepsze i lepsze! Twój kolega, huh?
	AI_Output(self, hero, "Info_Mod_Garond_Argez_A_30_02"); //Moje ostatnie slowo na ten temat brzmi: on nie moze wejsc!

	Info_ClearChoices	(Info_Mod_Garond_Argez);

	Info_AddChoice	(Info_Mod_Garond_Argez, "Oto 100 zloto, wpusc go.", Info_Mod_Garond_Argez_B);
};

INSTANCE Info_Mod_Garond_Argez2 (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Argez2_Condition;
	information	= Info_Mod_Garond_Argez2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garond_Argez2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Follow))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Argez_NW_InCity))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Argez2_Info()
{
	AI_Output(self, hero, "Info_Mod_Garond_Argez2_30_00"); //Czy teraz próbujesz zlamac moje zamówienia? Wyjsc stad!

	Npc_SetRefuseTalk	(self, 30);

	Mod_Garond_Rauswurf = 1;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Garond_Zurechtfinden (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Zurechtfinden_Condition;
	information	= Info_Mod_Garond_Zurechtfinden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak moge sie tutaj znalezc?";
};

FUNC INT Info_Mod_Garond_Zurechtfinden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Zurechtfinden_Info()
{
	AI_Output(hero, self, "Info_Mod_Garond_Zurechtfinden_15_00"); //Jak moge sie tutaj znalezc?
	AI_Output(self, hero, "Info_Mod_Garond_Zurechtfinden_30_01"); //Przypuszczam, ze bardzo zle, chyba ze byles tu wczesniej.
	AI_Output(self, hero, "Info_Mod_Garond_Zurechtfinden_30_02"); //Z wyjatkiem tego, ze Paladynowie sa teraz odpowiedzialni za pokój i porzadek, nic sie nie zmienia w tym niesmacznym miescie.
};

INSTANCE Info_Mod_Garond_News (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_News_Condition;
	information	= Info_Mod_Garond_News_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy sa jakies wiadomosci?";
};

FUNC INT Info_Mod_Garond_News_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_News_Info()
{
	AI_Output(hero, self, "Info_Mod_Garond_News_15_00"); //Czy sa jakies wiadomosci?
	AI_Output(self, hero, "Info_Mod_Garond_News_30_01"); //Tak, rzeczywiscie! Odkad stanalem na strazy, jedna po drugiej wydarzyla sie katastrofa.
	AI_Output(self, hero, "Info_Mod_Garond_News_30_02"); //Najpierw banda rozbojów sterroryzuje, a my nie mamy wystarczajaco duzo ludzi, aby wypalic swoje gniazdo, potem przychodzi ich zbrodniarz, a teraz chlopi wyciagaja sie na nas z powodu tak zlowieszczego kaplana, który ma im sie denerwuc.
	AI_Output(self, hero, "Info_Mod_Garond_News_30_03"); //Ale co by tak zrobil samotny chlopiec? (smiertelnicy zabrudzeni
	AI_Output(hero, self, "Info_Mod_Garond_News_15_04"); //Nigdy nie slyszalem o magii?
	AI_Output(self, hero, "Info_Mod_Garond_News_30_05"); //Wylaczyc sie!
};

INSTANCE Info_Mod_Garond_Miesepeter (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Miesepeter_Condition;
	information	= Info_Mod_Garond_Miesepeter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes zawsze w tak zlym nastroju?";
};

FUNC INT Info_Mod_Garond_Miesepeter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Miesepeter_Info()
{
	AI_Output(hero, self, "Info_Mod_Garond_Miesepeter_15_00"); //Czy jestes zawsze w tak zlym nastroju?
	AI_Output(self, hero, "Info_Mod_Garond_Miesepeter_30_01"); //Fakt, ze pozwolono mi wprowadzic tu przed wioska caly riffraff, naprawde zepsul mi nastrój.
	AI_Output(self, hero, "Info_Mod_Garond_Miesepeter_30_02"); //Lord Hagen nie wie, jak powiedziec swoim dobrym ludziom od zlych ludzi.
	AI_Output(hero, self, "Info_Mod_Garond_Miesepeter_15_03"); //Nie myslisz zbyt wiele o Lord Hagen, czy ty?
	AI_Output(self, hero, "Info_Mod_Garond_Miesepeter_30_04"); //Nie osmielisz sie przeciagnac tego zasluzonego nazwiska czlowieka przez bloto!
	AI_Output(self, hero, "Info_Mod_Garond_Miesepeter_30_05"); //Sam fakt, ze w tej chwili jest zbyt niezdecydowany nie oznacza, ze nie jestem w stu procentach za nim!
};

INSTANCE Info_Mod_Garond_Verbrecher (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Verbrecher_Condition;
	information	= Info_Mod_Garond_Verbrecher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garond_Verbrecher_Condition()
{
	if (Mod_GarondCityCrime >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Verbrecher_Info()
{
	AI_Output(self, hero, "Info_Mod_Garond_Verbrecher_30_00"); //Czekaj minute, karasz!
	AI_Output(self, hero, "Info_Mod_Garond_Verbrecher_30_01"); //Jak slyszalem, nie mozesz bawic sie wedlug prostych zasad obowiazujacych w miescie.
	AI_Output(self, hero, "Info_Mod_Garond_Verbrecher_30_02"); //A co z lekcja?

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Garond_Blutkelch (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Blutkelch_Condition;
	information	= Info_Mod_Garond_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Innos salute, wielki wojownik.";
};

FUNC INT Info_Mod_Garond_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Yussuf_Blutkelch2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Garond_Blutkelch_15_00"); //Innos salute, wielki wojownik.
	AI_Output(self, hero, "Info_Mod_Garond_Blutkelch_30_01"); //Co to jest ten gówno?
	AI_Output(hero, self, "Info_Mod_Garond_Blutkelch_15_02"); //Kiedy niedawno dotarlem ta droga do miasta, spotkalem potezne skrzydlowe stworzenie.
	AI_Output(hero, self, "Info_Mod_Garond_Blutkelch_15_03"); //Biegalem na cale zycie i po prostu ucieklem przed nim. Z pewnoscia jest to zagrozenie dla miasta.
	AI_Output(self, hero, "Info_Mod_Garond_Blutkelch_30_04"); //Mówisz to. demon. Chwytam go. Nie sprawi, ze obszar ten przestanie byc niebezpieczny!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ABLENKUNG");
};

INSTANCE Info_Mod_Garond_Mario (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Mario_Condition;
	information	= Info_Mod_Garond_Mario_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garond_Mario_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Mario_Info()
{
	AI_Output(self, hero, "Info_Mod_Garond_Mario_30_00"); //Chce panstwa ponownie ostrzec.
	AI_Output(self, hero, "Info_Mod_Garond_Mario_30_01"); //Widziales sie z Mario i mówi sie, ze pomagasz mu zdac jego egzaminy.
	AI_Output(self, hero, "Info_Mod_Garond_Mario_30_02"); //l-- Tolerujemy.... nie cos takiego. Funkcjonariusz milicji musi miec na sobie ciezar, którym zostal obciazony sam, a wlasciwie?
	AI_Output(self, hero, "Info_Mod_Garond_Mario_30_03"); //Wiec lepiej trzymac sie z dala od niego w przyszlosci. Byloby lepiej dla Was obojga.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Garond_Mario2 (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Mario2_Condition;
	information	= Info_Mod_Garond_Mario2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garond_Mario2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Keroloth_Mario))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Mario2_Info()
{
	AI_Output(self, hero, "Info_Mod_Garond_Mario2_30_00"); //Nie prowokowalem go, tylko postawilem na swoim miejscu tego niezrecznego czlowieka.
	AI_Output(self, hero, "Info_Mod_Garond_Mario2_30_01"); //Jesli wiec zakwestionuje mnie do pojedynku, otrzyma sprawiedliwa kare.
	AI_Output(hero, self, "Info_Mod_Garond_Mario2_15_02"); //Po prostu!
	AI_Output(self, hero, "Info_Mod_Garond_Mario2_30_03"); //Przestanmy teraz pozwalac filozofowi sie zatrzymac.
	AI_Output(self, hero, "Info_Mod_Garond_Mario2_30_04"); //Masz szczescie, ze wczesniej nie ukaralem twojego oszustwa.

	Log_CreateTopic	(TOPIC_MOD_MARIO_RACHE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MARIO_RACHE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MARIO_RACHE, "Garond sprowokowal Mario, az zostal zaatakowany przez Mario. Za to zaplaci!");

	B_StartOtherRoutine	(self, "KAMPF");
};

INSTANCE Info_Mod_Garond_Mario3 (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Mario3_Condition;
	information	= Info_Mod_Garond_Mario3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wystarczy juz teraz!";
};

FUNC INT Info_Mod_Garond_Mario3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Mario2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Mario3_Info()
{
	AI_Output(hero, self, "Info_Mod_Garond_Mario3_15_00"); //Wystarczy juz teraz!

	Info_ClearChoices	(Info_Mod_Garond_Mario3);

	Info_AddChoice	(Info_Mod_Garond_Mario3, "Porozmawiam z Toba pózniej!", Info_Mod_Garond_Mario3_B);
	Info_AddChoice	(Info_Mod_Garond_Mario3, "Ja równiez wzywam cie do pojedynku!", Info_Mod_Garond_Mario3_A);
};

FUNC VOID Info_Mod_Garond_Mario3_B()
{
	AI_Output(hero, self, "Info_Mod_Garond_Mario3_B_15_00"); //Porozmawiam z Toba pózniej!
	AI_Output(self, hero, "Info_Mod_Garond_Mario3_B_30_01"); //Czekam na to z niecierpliwoscia.

	Info_ClearChoices	(Info_Mod_Garond_Mario3);
};

FUNC VOID Info_Mod_Garond_Mario3_A()
{
	AI_Output(hero, self, "Info_Mod_Garond_Mario3_A_15_00"); //Ja równiez wzywam cie do pojedynku!
	AI_Output(self, hero, "Info_Mod_Garond_Mario3_A_30_01"); //Ha, dzis wydaje mi sie, ze to mój szczesliwy dzien. Dwa ptaki z jednym kamieniem, prawda?
	AI_Output(self, hero, "Info_Mod_Garond_Mario3_A_30_02"); //Narysuj karabin i walcz o swoje zycie!

	Info_ClearChoices	(Info_Mod_Garond_Mario3);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);

	self.flags = 0;

	self.guild = GIL_NONE;

	B_LogEntry	(TOPIC_MOD_MARIO_RACHE, "Do sprawiedliwosci postawilem Garonda.");
	B_SetTopicStatus	(TOPIC_MOD_MARIO_RACHE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Garond_Pickpocket (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Pickpocket_Condition;
	information	= Info_Mod_Garond_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Garond_Pickpocket_Condition()
{
	C_Beklauen	(127, ItMi_Gold, 70);
};

FUNC VOID Info_Mod_Garond_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Garond_Pickpocket);

	Info_AddChoice	(Info_Mod_Garond_Pickpocket, DIALOG_BACK, Info_Mod_Garond_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Garond_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Garond_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Garond_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Garond_Pickpocket);
};

FUNC VOID Info_Mod_Garond_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Garond_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Garond_Pickpocket);

		Info_AddChoice	(Info_Mod_Garond_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Garond_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Garond_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Garond_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Garond_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Garond_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Garond_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Garond_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Garond_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Garond_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Garond_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Garond_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Garond_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Garond_EXIT (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_EXIT_Condition;
	information	= Info_Mod_Garond_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Garond_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Garond_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
