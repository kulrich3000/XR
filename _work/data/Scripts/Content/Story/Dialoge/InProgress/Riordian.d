INSTANCE Info_Mod_Riordian_Hi (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_Hi_Condition;
	information	= Info_Mod_Riordian_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Riordian_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Riordian_Hi_23_00"); //Dostales duzo wnetrznosci.
	AI_Output(self, hero, "Info_Mod_Riordian_Hi_23_01"); //Nie sadzilem, ze znów cie zobacze.
};

INSTANCE Info_Mod_Riordian_IrrlichtBekommen (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_IrrlichtBekommen_Condition;
	information	= Info_Mod_Riordian_IrrlichtBekommen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_IrrlichtBekommen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_IrrlichtBekommen_Info()
{
	AI_Output(self, hero, "Info_Mod_Riordian_IrrlichtBekommen_23_00"); //Znalazlem to w swiatyni.

	B_GiveInvItems	(self, hero, ItAm_Addon_WispDetector, 1);

	AI_Output(self, hero, "Info_Mod_Riordian_IrrlichtBekommen_23_01"); //Wyglada na to, ze mozna zadzwonic do will-o' -tych-wispów, którzy szukaja produktu.
	AI_Output(self, hero, "Info_Mod_Riordian_IrrlichtBekommen_23_02"); //Jestem pewien, ze jest to dla Ciebie bardziej przydatne niz dla mnie.
	AI_Output(self, hero, "Info_Mod_Riordian_IrrlichtBekommen_23_03"); //
};

INSTANCE Info_Mod_Riordian_PortalOeffnen (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_PortalOeffnen_Condition;
	information	= Info_Mod_Riordian_PortalOeffnen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nefarius uwaza, ze masz cos dla mnie?";
};

FUNC INT Info_Mod_Riordian_PortalOeffnen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Komplett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_PortalOeffnen_Info()
{
	AI_Output(hero, self, "Info_Mod_Riordian_PortalOeffnen_15_00"); //Nefarius uwaza, ze masz cos dla mnie?
	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_23_01"); //Tak. Nauczylem sie jezyka budowniczych poprzez pisma i znaki na scianach.
	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_23_02"); //Jako ze jako pierwszy przejdziesz przez portal zaraz po jego otwarciu, powinienes przynajmniej posiadac podstawowa znajomosc tego jezyka.
	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_23_03"); //Sluchaj wiec uwaznie.

	hero.lp += 5;

	B_TeachPlayerTalentForeignLanguage (self, hero, LANGUAGE_1);

	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_23_04"); //Cóz, to bardzo proste. G jest O, T jest H jest H jest I jest C.
	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_23_05"); //Kiedy juz zorientowales sie, ze tak sie stanie, reszta jest w rzeczywistosci logiczna....

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Riordian_TempelDicht (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_TempelDicht_Condition;
	information	= Info_Mod_Riordian_TempelDicht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_TempelDicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Argibast))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_TempelDicht_Info()
{
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht_23_00"); //Dziekujemy Adanosowi. Gdybys nie przyszedl, wszyscy bysmy zgubili sie.

	B_LogEntry	(TOPIC_MOD_BEL_ADANOS, "Nieumarli zostaja pokonani, a wojownicy wodni sa na razie bezpieczni.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_ADANOS, LOG_SUCCESS);

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Riordian_TempelDicht2 (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_TempelDicht2_Condition;
	information	= Info_Mod_Riordian_TempelDicht2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sie dzieje?";
};

FUNC INT Info_Mod_Riordian_TempelDicht2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_TempelDicht))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_TempelDicht2_Info()
{
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_00"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_01"); //To byl dzien jak kazdy inny. Wszyscy sledzilismy nasze dzielo az do momentu naglego pojawienia sie odglosów walk z zewnatrz.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_02"); //Chcielismy zobaczyc co sie dzieje, ale potem pieciu niezwykle poteznych strazników teleporowalo sie w przestrzen portalowa i zmiecilo wszystko w dól i zlapalo pozostalych magów wodnych.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_03"); //W ostatniej chwili ucieklam na zewnatrz, a potem wejscie zostalo zapieczetowane. Potem przyszedles do nas i pomógles nam pokonac naszych wrogów.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_04"); //Czy jest jak otworzyc wejscie? Jest to bardzo pilne. Stawka jest egzystencja Khoriniego.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_05"); //Wejscie jest magicznie zamkniete. nie da sie go latwo otworzyc.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_06"); //Co musze zrobic, aby dostac sie do swiatyni?
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_07"); //No cóz, jesli dobrze pamietam, jest jakis magiczny klucz do otwarcia drzwi. Nie mam jednak pojecia, gdzie to jest.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_08"); //Nie wiesz, gdzie jest klucz?
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_09"); //Hmmmm. Lokalizacje znaja tylko Vatras i Saturas. Idz do vatras w miescie i popros go o rade.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_10"); //Ale spieszyc sie, czas jest krótki!
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_11"); //Natychmiast odejde.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_23_12"); //Powodzenia!

	Log_CreateTopic	(TOPIC_MOD_BEL_TEMPEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_TEMPEL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_TEMPEL, "Aby dostac sie do swiatyni portalu, musze znalezc magiczny klucz. Jednak lokalizacje znaja tylko Vatras i Saturas. Po informacje powinienem zobaczyc Vatry w miescie.");
};

INSTANCE Info_Mod_Riordian_TempelDicht3 (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_TempelDicht3_Condition;
	information	= Info_Mod_Riordian_TempelDicht3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam kluczowe znaczenie.";
};

FUNC INT Info_Mod_Riordian_TempelDicht3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_TempelDicht))
	&& (Npc_HasItems(hero, ItKe_MagicTempelKey) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_TempelDicht3_Info()
{
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht3_15_00"); //Mam kluczowe znaczenie. Mozemy otworzyc wejscie.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht3_23_01"); //(prosze) Bardzo dobry. Podaj mi klucz, abym mógl otworzyc wejscie.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht3_15_02"); //Tutaj ja masz.

	B_GiveInvItems	(hero, self, ItKe_MagicTempelKey, 1);

	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht3_23_03"); //Teraz ustapie na bok, abym mógl otworzyc wejscie.
	
	B_SetTopicStatus	(TOPIC_MOD_BEL_TEMPEL, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATTEMPEL");
};

INSTANCE Info_Mod_Riordian_TempelDicht4 (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_TempelDicht4_Condition;
	information	= Info_Mod_Riordian_TempelDicht4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_TempelDicht4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_TempelDicht3))
	&& (Npc_GetDistToWP(self, "NW_TROLLAREA_PORTALTEMPEL_03") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_TempelDicht4_Info()
{
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht4_23_00"); //Brama otwiera sie. Musimy uratowac innych.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht4_15_01"); //Pójde dalej. Upewnij sie, ze nikt nie zaskakuje nas z tylu.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht4_23_02"); //Wszystko w porzadku, idzcie naprzód.
	
	Wld_SendTrigger	("EVT_PORTAL_EINGANG_TOR_01");

	Wld_InsertNpc	(GardeInnos_4098_Danae,	"PORTAL");
};

INSTANCE Info_Mod_Riordian_EXIT (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_EXIT_Condition;
	information	= Info_Mod_Riordian_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Riordian_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Riordian_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
