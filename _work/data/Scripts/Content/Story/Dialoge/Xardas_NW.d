INSTANCE Info_Mod_Xardas_NW_Hallo (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Hallo_Condition;
	information	= Info_Mod_Xardas_NW_Hallo_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Hallo_Condition()
{
	if (HeroIstKeinZombie == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Hallo_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_00"); //Co? Beliar! Ty tutaj! Jak to jest mozliwe? Mijaja trzy tygodnie od czasu, kiedy wypedziles sypialnia.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_01"); //Bylem pewien, ze umarles....
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Hallo_15_02"); //Tak bylo.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_03"); //Co m�wisz? Potrzebuje, aby wytlumaczyc....
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Hallo_15_04"); //Po tym, jak wasze slugusy usunely gruz, obudzilem sie do nowej swiadomosci.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Hallo_15_05"); //Udalo mi sie sterowac moim cialem, ale szybko zorientowalem sie, ze ma sie ono wkr�tce rozkladac.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_06"); //Jest to niezwykle niezwykle. Gdzie..... Pamietam starozytna tradycje, zgodnie z kt�ra nosiciel magicznej zbroi kontynuowal walke w bitwie nawet wtedy,......
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_07"); //... gdy jego cialo zostalo przebite przez niezliczona ilosc broni i spalone plomieniami.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_08"); //Jego duch zostal najwyrazniej zatrzymany przez magiczna zbroje w martwym ciele, jak klatka. To samo musialo ci sie przydarzyc.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_09"); //Jego role odegrala r�wniez magiczna eksplozja po upadku bariery.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_10"); //Hmm..... Ale jak to mozliwe, ze stoisz przed mna znowu zywy? Co sie stalo?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Hallo_15_11"); //W gruzach znalazlem ksiazke, kt�ra ujawnila formule laczenia zbroi z leczniczymi runami.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Hallo_15_12"); //Dzieki magicznej energii pancerza mozliwe jest calkowite uzdrowienie uzytkownika.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_13"); //Masz szczescie miec taka ksiazke w rekach. Ksiazki zawierajace taka starozytna wiedze sa niezwykle rzadkie.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_14"); //Tak czy inaczej, teraz zn�w stoisz przed mna zywy.

	B_GivePlayerXP	(100);

	Mod_RealStrength	=	10;
	Mod_RealDexterity	=	10;
	Mod_RealMana		=	10;
	Mod_KenntBodo	=	0;
	FokiEingesetzt	=	0;
	Monster_Max = 2307;
	Erzhackchance = 10;

	Mod_Gottstatus = 8;

	Mod_Verhandlungsgeschick = 10;

	Npc_RemoveInvItems	(hero, ItWr_XardasLetterForHeroOT, 1);

	Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 8);

	B_LogEntry	(TOPIC_MOD_ANFANG, "Znalazlem Xardasa i opowiedzialem mu swoja historie. Teraz mam nadzieje, ze teraz dowiemy sie, co stanie sie p�zniej.");
	B_SetTopicStatus	(TOPIC_MOD_ANFANG, LOG_SUCCESS);

	if (Mod_OT_Geheimkammer == 1) {
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_FAILED);
	};

	Mod_BeliarStatue_Krieger_Dabei = 1;
};

INSTANCE Info_Mod_Xardas_NW_WasJetzt (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WasJetzt_Condition;
	information	= Info_Mod_Xardas_NW_WasJetzt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co mam teraz zrobic?";
};

FUNC INT Info_Mod_Xardas_NW_WasJetzt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Hallo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WasJetzt_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WasJetzt_15_00"); //Co mam teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasJetzt_14_01"); //Wyrzuciles sypialnie i zniszczyles zapore. Nieoczekiwany obserwator moze teraz myslec, ze wszystko jest pokojowe.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasJetzt_14_02"); //Ale pok�j jest zwodniczy.
};

INSTANCE Info_Mod_Xardas_NW_Vorahnung (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Vorahnung_Condition;
	information	= Info_Mod_Xardas_NW_Vorahnung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skad to wiesz?";
};

FUNC INT Info_Mod_Xardas_NW_Vorahnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasJetzt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Vorahnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Vorahnung_15_00"); //Skad to wiesz?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Vorahnung_14_01"); //W ciagu ostatnich kilku dni dreczyly mnie wizje. Ciemna figura szumiaca nadhoryna i rozprzestrzeniajaca katastrofe.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Vorahnung_15_02"); //To nie brzmi dobrze. Nie wiesz nic bardziej szczeg�lowego?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Vorahnung_14_03"); //Nie, jak dotad mam tylko te wizje. Jednak badam informacje zawarte w moich ksiazkach.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Vorahnung_15_04"); //Czy moge w tym pom�c?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Vorahnung_14_05"); //W waszym oslabionym stanie nie mozecie mi pom�c. Najpierw powinienes odzyskac sile.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Vorahnung_14_06"); //Z pewnoscia dobrym pomyslem byloby dolaczenie tutaj do jednego z cech�w. Maja najlepszych nauczycieli.

	Log_CreateTopic	(TOPIC_MOD_DIEBEDROHUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEBEDROHUNG, LOG_RUNNING);
	
	Log_CreateTopic	(TOPIC_MOD_GILDENAUFNAHME, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_DIEBEDROHUNG, "Xardas kazal mi najpierw zdobyc sile i dolaczyc do gildii.", "Ostatnio Xardas mial kilka wizji. Ciemna figura rozposciera sie nad khorynami. Xardas wciaz poszukuje informacji w swoich ksiazkach. Dop�ki on nie dowie sie czegos nowego, musze dolaczyc do gildii.");
};

INSTANCE Info_Mod_Xardas_NW_WasFuerGilden (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WasFuerGilden_Condition;
	information	= Info_Mod_Xardas_NW_WasFuerGilden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie sa tam gildie?";
};

FUNC INT Info_Mod_Xardas_NW_WasFuerGilden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Vorahnung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WasFuerGilden_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WasFuerGilden_15_00"); //Jakie sa tam gildie?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasFuerGilden_14_01"); //W miescie sa milicje, kt�re potrafia walczyc.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasFuerGilden_14_02"); //Slysze, ze na farmie jest kilku najemnik�w. Mysle, ze ja znasz.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasFuerGilden_14_03"); //Magicy ognia zyja w klasztorze. Mozesz r�wniez do nich dolaczyc.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasFuerGilden_14_04"); //Sa tez magowie wody, kt�rzy obecnie manipuluja starymi ruinami. Jeden z nich m�wi sie, ze jest w miescie.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasFuerGilden_14_05"); //Lub wybierz sciezke Beliara.

	Mod_Gilde	=	0;

	B_LogEntry	(TOPIC_MOD_GILDENAUFNAHME, "Moge zostac czlonkiem milicji, najemnikiem, nowicjuszem ognia, nowicjuszem wody lub czarnym nowicjuszem.");

	Mil_310_schonmalreingelassen = TRUE;

	Log_CreateTopic	(TOPIC_MOD_MILIZ, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_S�LDNER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_S�LDNER, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_FEUERMAGIER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_WASSERMAGIER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_RUNNING);

	B_LogEntry_NS	(TOPIC_MOD_MILIZ, "Moge dolaczyc do milicji w miescie.");
	B_LogEntry_NS	(TOPIC_MOD_S�LDNER, "Znalazlem najemnik�w na farmie. Xardas oznacza, ze ja znam.");
	B_LogEntry_NS	(TOPIC_MOD_DAEMONENBESCHWOERER, "Z Xardasem moge dolaczyc do czarnych nowicjuszy.");
	B_LogEntry_NS	(TOPIC_MOD_FEUERMAGIER, "W klasztorze na wyspie zyja magowie ognia, do kt�rych moge dolaczyc.");
	B_LogEntry_NS	(TOPIC_MOD_WASSERMAGIER, "Magicy wody znajduja sie w starozytnej ruinie na p�lnocy wyspy. M�wi sie jednak, ze jest jeden w miescie Khorini.");

	B_Kapitelwechsel (1, NEWWORLD_ZEN);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine (self, "START");
};

INSTANCE Info_Mod_Xardas_NW_Urnol (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Urnol_Condition;
	information	= Info_Mod_Xardas_NW_Urnol_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Urnol_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Urnol_WerBistDu))
	&& (Mod_Gilde > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Urnol_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol_14_00"); //Ahh. Och, tam jestescie. Czy dolaczyles do gildii?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Urnol_15_01"); //Tak. Ale nie bylo to latwe.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol_14_02"); //Bardzo ladne. I czy rozmawiales tez z mrocznym pielgrzymem?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Urnol_15_03"); //Jeszcze nie, jak dotad. Zawsze wyprzedza mnie o krok.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol_14_04"); //Fiddlesticki! Musimy wiedziec, co go prowadzi. Czuje sie okropny.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol_14_05"); //Idz znalezc tego pielgrzyma. Nastepnie zglos sie do mnie.

	B_LogEntry	(TOPIC_MOD_DIEBEDROHUNG, "Wydaje sie, ze pielgrzym jest wazny. Xardas chce, abym za wszelka cene pojechal do niego.");
};

INSTANCE Info_Mod_Xardas_NW_Urnol1 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Urnol1_Condition;
	information	= Info_Mod_Xardas_NW_Urnol1_Info;
	permanent	= 0;
	important	= 0;
	description	= "Spotkalem pana cienia.";
};

FUNC INT Info_Mod_Xardas_NW_Urnol1_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urnol_WerBistDu))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasFuerGilden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Urnol1_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Urnol1_15_00"); //Spotkalem pana cienia.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_01"); //Wtedy zagrozenie wydaje sie byc blizsze niz sie spodziewalem. Co wam powiedzial?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Urnol1_15_02"); //Powiedzial, ze jego pan wr�ci, aby mnie zabic, poniewaz zabilem jednego z jego slug.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_03"); //A sluga byl chyba sypialnia.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Urnol1_15_04"); //Tak, to wlasnie powiedzial pan cieni. Ale sypialnia byla bogiem ork�w i zostala przez nich stworzona?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_05"); //Myslalem tez tak, ale najwyrazniej nie bylem dobrze poinformowany. Postaram sie dowiedziec wiecej na ten temat.

	if (Mod_Gilde == 0)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_06"); //Dolacz najpierw do gildii.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_07"); //Wr�c jutro, a ja mam dla ciebie wiesci.

		Mod_HS_UrnolXardas_NextDay = Wld_GetDay();
	};

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_08"); //Tak na marginesie, to ciemne stworzenie nie jest jedyna rzecza, kt�ra mnie niepokoi.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_09"); //Podczas spaceru przez Khorinis spotkalem innego wedrowca.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_10"); //Nazywal sie Argezem, ale nie potrafil mi powiedziec skad pochodzil.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_11"); //Rozmowa nie przyciagnelaby mojej uwagi, gdybym nie czul sie nudny slyszac wczesniej nazwisko. Dawno temu.....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_12"); //Moze byc tak, ze jest on wazna postacia w mglistej grze, kt�ra jest obecnie grana z nami.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_13"); //Moze go spotkasz; jadl do Khorinisa.

	B_GivePlayerXP	(250);

	if (!Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Hi))
	{
		Log_CreateTopic	(TOPIC_MOD_ARGEZ, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ARGEZ, LOG_RUNNING);
	};

	B_LogEntry_More	(TOPIC_MOD_DIEBEDROHUNG, TOPIC_MOD_ARGEZ, "Po tym, jak opowiedzialem Xardasowi o spotkaniu z Urnolem, byl bardzo zaskoczony, ale jego podejrzliwosc zdawala sie byc potwierdzona. Byl on szczeg�lnie zaskoczony faktem spiacego.", "Xardas m�wil o ewentualnej kluczowej postaci w swoim przedmowie, zwanej Argezem. Gdy Xardas spotkal go, byl w drodze do Khorinis.");
};

INSTANCE Info_Mod_Xardas_NW_InGilde (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_InGilde_Condition;
	information	= Info_Mod_Xardas_NW_InGilde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_InGilde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Urnol1))
	&& (Mod_Gilde > 0)
	&& (Mod_HS_UrnolXardas_NextDay < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_InGilde_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_00"); //Ach, dobrze od ciebie przyjsc. Odkrylem kilka rzeczy.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_InGilde_15_01"); //Na to wlasnie mialem nadzieje.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_02"); //C�z, obawiam sie, ze zagrozenie jest wieksze niz oczekiwano.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_InGilde_15_03"); //Czy jest cos bardziej konkretnego?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_04"); //Na razie nie. Byc moze znalazlem szlak, ale nie chce Cie obciazac rzeczami, kt�rych nawet nie jestem pewien.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_05"); //Ale mozesz mi zrobic wielka przysluge i pom�c magikom wody w miejscu ich wykopalisk.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_06"); //Jesli mam racje, odkryty portal odpowie na kilka waznych pytan.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_InGilde_15_07"); //Ale nie chcesz odpowiadac na moje wazne pytania.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_08"); //W zamian pozwole Ci podzielic sie historycznym momentem. Nie kazdy moze przejsc przez portal, kt�ry liczy sobie tysiace lat.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_InGilde_15_09"); //Do tej pory nie byl to jeden z moich cel�w zyciowych.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_10"); //(wytrzymalosc) Ale teraz!

	B_LogEntry	(TOPIC_MOD_DIEBEDROHUNG, "Xardas polecil mi chodzic z magami wody przez portal, kt�ry odkryli.");
};

INSTANCE Info_Mod_Xardas_NW_Saturas (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Saturas_Condition;
	information	= Info_Mod_Xardas_NW_Saturas_Info;
	permanent	= 0;
	important	= 0;
	description	= "Magicy wodni nie chca mnie z nimi zabrac.";
};

FUNC INT Info_Mod_Xardas_NW_Saturas_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_InGilde))
	&& ((Mod_Gilde == 1)
	|| (Mod_Gilde == 6)
	|| (Mod_Gilde == 12))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Saturas_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Saturas_15_00"); //Magicy wodni nie chca mnie z nimi zabrac.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Saturas_14_01"); //Nastepnie dajcie mi poselstwo szatana.

	B_GiveInvItems	(self, hero, XardasLetterForSaturas, 1);
};

INSTANCE Info_Mod_Xardas_NW_XeresLebt (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_XeresLebt_Condition;
	information	= Info_Mod_Xardas_NW_XeresLebt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_XeresLebt_Condition()
{
	if (Kapitel == 4)
	&& (Npc_KnowsInfo(hero, Info_Mod_Xeres_Beliar))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_XeresLebt_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_00"); //Czy niszczyles Xeres?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_XeresLebt_15_01"); //Nie, zn�w mnie pobil. Nadal zyje dzieki waszemu amuletowi.

	Log_CreateTopic	(TOPIC_MOD_MAGIERRAT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MAGIERRAT, LOG_RUNNING);

	if (hero.guild == GIL_VLK)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Aaron_BarriereWeg))
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_02"); //Musze przypomniec sobie rade. Jednak moi podwladni, kt�rzy obecnie przebywaja w Patherionie, nie zgodza sie.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_03"); //Zanim bede m�gl zadzwonic do Rady, musi pan zapewnic rozwiazanie tego problemu.

		B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Xardas chce ponownie zwolac Rade, ale najpierw musze rozwiazac problemy w Patherionie.");
	}
	else if (hero.guild == GIL_KDF)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_AW_Bshydal))
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_04"); //Musze przypomniec sobie rade. Obecnie jest jednak cos pilniejszego.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_05"); //Ale najpierw trzeba cos zrobic dla Myxiru. Wr�c, kiedy to zrobisz.

		B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Xardas chce odwolac rade, ale wczesniej musze cos zrobic dla Myxiru.");

		B_StartOtherRoutine	(self, "BUMMEL");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_06"); //Przypominam sobie rade magika. Bede w drodze od razu.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_07"); //Odbedzie sie ona w piwnicy klasztornej. Spotkam cie tam. Wez ten pierscionek, to cie tam zaprowadzi.

		B_GiveInvItems	(self, hero, Mod_XardasBeamRing, 1);

		B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Xardas postanowil zwolac Rade mag�w. Odbywa sie to w piwnicy klasztornej. Dal mi pierscionek, kt�ry mnie tam zaprowadzi.");

		if (Mod_Gilde != 2)
		&& (Mod_Gilde != 19)
		&& (Mod_Gilde != 7)
		&& (Mod_Gilde != 10)
		&& (Mod_Gilde != 13)
		&& (Mod_Gilde != 15)
		&& (Mod_Gilde != 17)
		{
			AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_08"); //Najpierw jednak powinienes siegnac do nastepnego stopnia swojej gildii.
		};

		Mod_HS_XardasRat = 1;

		AI_StopProcessInfos	(self);

		AI_Teleport	(self, "WP_KLOSTER_KELLER_RAT_VERTEILER");

		B_StartOtherRoutine	(self, "RAT");

		if (hero.guild == GIL_MIL)
		&& (!Npc_KnowsInfo(hero, Info_Mod_Dragon_KlosterErfolg))
		&& (!Npc_IsDead(Dragon_11009_NW))
		{
			Mod_HSNL_RatProblem = 1;
		}
		else if (hero.guild == GIL_NOV)
		&& (!Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_26))
		{
			Mod_HSWM_RatProblem = 1;

			// ToDo

			Wld_InsertNpc(Mod_510_DMR_Raven_NW, "BIGFARM");
			//B_StartOtherRoutine	(Mod_517_DMR_Gomez_NW, "RAT");
			B_StartOtherRoutine	(Mod_551_KDF_Pyrokar_NW, "RAT");
			B_StartOtherRoutine	(Mod_592_PAL_Hagen_NW, "RAT");
			B_StartOtherRoutine	(Mod_925_KDF_Talamon_NW, "RAT");
		}
		else
		{
			Wld_InsertNpc(Mod_510_DMR_Raven_NW, "BIGFARM");
			//B_StartOtherRoutine	(Mod_517_DMR_Gomez_NW, "RAT");
			B_StartOtherRoutine	(Mod_551_KDF_Pyrokar_NW, "RAT");
			B_StartOtherRoutine	(Mod_774_KDW_Saturas_NW, "RAT");
			B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "RAT");
			B_StartOtherRoutine	(Mod_925_KDF_Talamon_NW, "RAT");

			if (hero.guild != GIL_PAL)
			{
				B_StartOtherRoutine	(Mod_592_PAL_Hagen_NW, "RAT");
			};
		};
	};
};

INSTANCE Info_Mod_Xardas_NW_PatherionOk (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_PatherionOk_Condition;
	information	= Info_Mod_Xardas_NW_PatherionOk_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bezpieczny Patherion.";
};

FUNC INT Info_Mod_Xardas_NW_PatherionOk_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	&& (Mod_HS_XardasRat == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Aaron_BarriereWeg))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_PatherionOk_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_PatherionOk_15_00"); //Patherion jest bezpieczny i czarne magowie sa pokonywani.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_PatherionOk_14_01"); //To dobra wiadomosc. Teraz moge przypomniec sobie Rade Czarnoksieznika. Natychmiast odejde.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_PatherionOk_14_02"); //Spotkamy sie w klasztornej piwnicy. Mozna sie tam dostac za pomoca tego pierscienia.

	B_GiveInvItems	(self, hero, Mod_XardasBeamRing, 1);

	B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Xardas postanowil zwolac Rade mag�w. Odbywa sie to w piwnicy klasztornej. Dal mi pierscionek, kt�ry mnie tam zaprowadzi.");

	Mod_HS_XardasRat = 1;

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "WP_KLOSTER_KELLER_RAT_VERTEILER");

	// ToDo

	B_StartOtherRoutine	(self, "RAT");
	Wld_InsertNpc(Mod_510_DMR_Raven_NW, "BIGFARM");
	//B_StartOtherRoutine	(Mod_517_DMR_Gomez_NW, "RAT");
	B_StartOtherRoutine	(Mod_551_KDF_Pyrokar_NW, "RAT");
	B_StartOtherRoutine	(Mod_592_PAL_Hagen_NW, "RAT");
	B_StartOtherRoutine	(Mod_774_KDW_Saturas_NW, "RAT");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "RAT");
	B_StartOtherRoutine	(Mod_925_KDF_Talamon_NW, "RAT");
};

INSTANCE Info_Mod_Xardas_NW_BshydalOk (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_BshydalOk_Condition;
	information	= Info_Mod_Xardas_NW_BshydalOk_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozecie teraz zadzwonic do rady?";
};

FUNC INT Info_Mod_Xardas_NW_BshydalOk_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	&& (Mod_HS_XardasRat == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_AW_Bshydal))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_BshydalOk_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_BshydalOk_15_00"); //Czy mozecie teraz zadzwonic do rady?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_BshydalOk_14_01"); //Tak, odejde natychmiast.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_BshydalOk_14_02"); //Spotkamy sie w klasztornej piwnicy. Mozna sie tam dostac za pomoca tego pierscienia.

	B_GiveInvItems	(self, hero, Mod_XardasBeamRing, 1);

	B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Xardas postanowil zwolac Rade mag�w. Odbywa sie to w piwnicy klasztornej. Dal mi pierscionek, kt�ry mnie tam zaprowadzi.");

	Mod_HS_XardasRat = 1;

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "WP_KLOSTER_KELLER_RAT_VERTEILER");

	// ToDo

	B_StartOtherRoutine	(self, "RAT");
	//B_StartOtherRoutine	(Mod_520_DMR_Raven_NW, "RAT");
	//B_StartOtherRoutine	(Mod_517_DMR_Gomez_NW, "RAT");
	B_StartOtherRoutine	(Mod_551_KDF_Pyrokar_NW, "RAT");
	B_StartOtherRoutine	(Mod_592_PAL_Hagen_NW, "RAT");
	B_StartOtherRoutine	(Mod_774_KDW_Saturas_NW, "RAT");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "RAT");
	B_StartOtherRoutine	(Mod_925_KDF_Talamon_NW, "RAT");
};

INSTANCE Info_Mod_Xardas_NW_Rat_Dragon (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Rat_Dragon_Condition;
	information	= Info_Mod_Xardas_NW_Rat_Dragon_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Rat_Dragon_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	&& (Mod_HS_XardasRat == 1)
	&& (Mod_HSNL_RatProblem == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Rat_Dragon_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Dragon_14_00"); //(uderzone) Te ciasno myslace zapalniki....
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rat_Dragon_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Dragon_14_02"); //Ach, die Feuermagier haben Zweifel daran, ob die Bedrohung wirklich so gro� ist, dass sie ihr Schicksal in die H�nde eine "Bezbozni najemnicy i przestepcy z kolonii karnej" legen m�ssten, wie sie es nannten.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Dragon_14_03"); //Najpierw musi zdarzyc sie cos smiertelnego, co przekona ich o natychmiastowym niebezpieczenstwie.....

	B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Xardas jest z Rada, ale reszta nie chce w niej uczestniczyc, poniewaz nie chce stawic czola zagrozeniu.");
};

INSTANCE Info_Mod_Xardas_NW_Rat_Dragon2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Rat_Dragon2_Condition;
	information	= Info_Mod_Xardas_NW_Rat_Dragon2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Rat_Dragon2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	&& (Mod_HS_XardasRat == 1)
	&& (Mod_HSNL_RatProblem == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Rat_Dragon2_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Dragon2_14_00"); //Tak wiec atak demonicznych stworzen na klasztor przekonal Strazak�w o pilnosci naszej sprawy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Dragon2_14_01"); //Zanim jednak om�wimy dalsze kroki w walce z Xeresem, chca oni zostac pozbawieni zagrozenia, jakie dotknelo ich klasztor.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Dragon2_14_02"); //Prawdopodobnie wiesz, co robic.

	B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Zanim na spotkanie przyjda strazacy, nalezy rozstrzygnac sprawe smok�w.");

	Mod_HSNL_RatProblem = 0;
};

INSTANCE Info_Mod_Xardas_NW_Rat_Unheil (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Rat_Unheil_Condition;
	information	= Info_Mod_Xardas_NW_Rat_Unheil_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Rat_Unheil_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	&& (Mod_HS_XardasRat == 1)
	&& (Mod_HSWM_RatProblem == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Rat_Unheil_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Unheil_14_00"); //Niestety, nie jestesmy jeszcze gotowi i dlatego nie mozemy dyskutowac o dalszych krokach w walce z Xeresem.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Unheil_14_01"); //Satura jest konfrontowana z nie mniej groznymi wydarzeniami na plaskowyzu pastwiskowym i dolaczy do nas tylko wtedy, gdy to niebezpieczenstwo zostanie wyeliminowane.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Unheil_14_02"); //Powinienes go wspierac jak najwiecej.

	B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Satura nie pojawi sie w Radzie, dop�ki problemy na plaskowyzu pastwiskowym nie zostana rozwiazane.");
};

INSTANCE Info_Mod_Xardas_NW_Rat_Ende (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Rat_Ende_Condition;
	information	= Info_Mod_Xardas_NW_Rat_Ende_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Rat_Ende_Condition()
{
	var int dialog;

	dialog = FALSE;

	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	&& (Mod_HS_XardasRat == 1)
	&& (Mod_HSNL_RatProblem == 0)
	&& (Mod_HSWM_RatProblem == 0)
	{
		if (Hlp_IsValidNpc(Dragon_11009_NW))
		{
			if (Npc_IsDead(Dragon_11009_NW))
			{
				dialog = TRUE;
			}
			else
			{
				dialog = FALSE;

				return FALSE;
			};
		}
		else
		{
			dialog = TRUE;
		};
		if (Hlp_IsValidNpc(Knucker_11001_NW))
		{
			if (Npc_IsDead(Knucker_11001_NW))
			{
				dialog = TRUE;
			}
			else
			{
				dialog = FALSE;

				return FALSE;
			};
		}
		else
		{
			dialog = TRUE;
		};
		if (Hlp_IsValidNpc(Feuerdrache_11002_NW))
		{
			if (Npc_IsDead(Feuerdrache_11002_NW))
			{
				dialog = TRUE;
			}
			else
			{
				dialog = FALSE;

				return FALSE;
			};
		}
		else
		{
			dialog = TRUE;
		};
	};

	return dialog;
};

FUNC VOID Info_Mod_Xardas_NW_Rat_Ende_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Ende_14_00"); //Pozostala nam tylko jedna opcja. Potrzebujemy Uriziel. P�jdziesz do swiatyni sypialnej i dostaniesz ja.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Ende_14_01"); //Tylko w ten spos�b mamy teraz szanse. Wez ten teleport i wyjdz z niego i wejdz do klasztoru.

	B_GiveInvItems	(self, hero, ItRu_TeleportMonastery, 1);

	Log_CreateTopic	(TOPIC_MOD_URIZIEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_URIZIEL, LOG_RUNNING);
	B_SetTopicStatus	(TOPIC_MOD_MAGIERRAT, LOG_SUCCESS);
	B_LogEntry	(TOPIC_MOD_URIZIEL, "Xardas m�wi, ze musze wyprowadzic Uriziel z podpodlogowej swiatyni. To nasza jedyna szansa.");
};

INSTANCE Info_Mod_Xardas_NW_WoTempel (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WoTempel_Condition;
	information	= Info_Mod_Xardas_NW_WoTempel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie bylo wejscie do swiatyni?";
};

FUNC INT Info_Mod_Xardas_NW_WoTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Rat_Ende))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WoTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WoTempel_15_00"); //Gdzie bylo wejscie do swiatyni?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WoTempel_14_01"); //W miescie ork�w. Tam znajduje sie miejsce z kolumna. Stamtad dotarles do komory Xeres.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WoTempel_14_02"); //W kazdym razie jest tu kratownica, za kt�ra rozciaga sie swiatynia sypialna.
};

INSTANCE Info_Mod_Xardas_NW_WieInTempel (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WieInTempel_Condition;
	information	= Info_Mod_Xardas_NW_WieInTempel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak dojsc do swiatyni?";
};

FUNC INT Info_Mod_Xardas_NW_WieInTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Rat_Ende))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WieInTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WieInTempel_15_00"); //Jak dojsc do swiatyni?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WieInTempel_14_01"); //Musisz byc ostrozny, orki sa pod silnym wplywem Xeres�w. Nie rozpoznaja juz twojego Ulu-Mulu.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WieInTempel_14_02"); //Nie wiem, jak to wyglada w swiatyni, wiec uwazajcie.
};

INSTANCE Info_Mod_Xardas_NW_UrizielKaputt (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_UrizielKaputt_Condition;
	information	= Info_Mod_Xardas_NW_UrizielKaputt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Uriziel zostaje zniszczony.";
};

FUNC INT Info_Mod_Xardas_NW_UrizielKaputt_Condition()
{
	if (Mod_HasUrizielKaputt == 1)
	&& (Npc_HasItems(hero, ItMi_UrizielKaputt) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_UrizielKaputt_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrizielKaputt_15_00"); //Uriziel zostaje zniszczony.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_01"); //To nie jest dobre. Uriziel byl moja ostatnia i najwieksza nadzieja. Jestesmy teraz bezbronni na lasce Xeres.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrizielKaputt_15_02"); //Niekoniecznie.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_03"); //Co myslisz?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrizielKaputt_15_04"); //W swiatyni spotkalem szamana i powiedzial mi, ze Uriziel zostal zlamany.

	B_GiveInvItems	(hero, self, ItMi_UrizielKaputt, 1);

	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrizielKaputt_15_05"); //Powiedzial r�wniez, ze potega trzech bog�w zostala teraz zlamana. Co to oznacza?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_06"); //Oznacza to, ze mamy jeszcze szanse. Jak wam powiedzialem, daja bogom swiecona bron.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_07"); //Jesli mamy teraz bron od kazdego Boga i zjednoczyc je.....
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrizielKaputt_15_08"); //... w�wczas mozemy przywr�cic Uriziel. Co zatem nalezy zrobic?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_09"); //Potrzebujemy pozostalych dw�ch boskich broni. Trzeba ja znalezc. Postaramy sie znalezc spos�b na ich jednoczenie.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_10"); //Idzcie do Satura, studiuje historie broni bog�w.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_11"); //Oto kilka r�l, kt�re moga pom�c Ci w wyszukiwaniu.

	B_ShowGivenThings	("7 Przechowywanie rolek baner�w");

	CreateInvItems	(hero, ItSc_SumSkel, 5);
	CreateInvItems	(hero, ItSc_SumRabbit, 2);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_12"); //Jest jeszcze cos innego, co chce przedyskutowac z wami prywatnie.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Xardas ma pomysl jak odnowic Uriziel. W tym celu jednak nadal potrzebujemy dw�ch pozostalych rodzaj�w broni bog�w. Saturas wie o tym wiecej.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PRIVAT");
};

INSTANCE Info_Mod_Xardas_NW_UrnolKap4 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_UrnolKap4_Condition;
	information	= Info_Mod_Xardas_NW_UrnolKap4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tak, jestem uchem.";
};

FUNC INT Info_Mod_Xardas_NW_UrnolKap4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrizielKaputt))
	&& (Npc_GetDistToWP(self, "NW_KDF_LIBRARY_15") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_UrnolKap4_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrnolKap4_15_00"); //Tak, jestem uchem.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_01"); //Moge odczuc, ze Urnol jest na Khorinisie.... i wydaje sie poruszac swobodnie, nawet na obszarach zamieszkalych.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrnolKap4_15_02"); //Co? I nikt niczego nie zauwazyl?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_03"); //To jest niepokojace. Musial znalezc spos�b na zamaskowanie sie, ukrycie.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_04"); //Potem odczuwam wiele innych rozproszonych energii demonicznych, kt�re zmieniaja ich polozenie zar�wno w dzien jak i w nocy.....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_05"); //Dziwne rzeczy wydaja sie dzielic w tajemnicy. Trzeba sie zastanowic, co sie dzieje. Tylko w ten spos�b mozna znalezc Urnol.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrnolKap4_15_06"); //Zupelnie slusznie, rozumiem, ze.... hmm, gdzie powinienem rozpoczac wyszukiwanie?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_07"); //Uzywaj m�zgu. Gdziekolwiek spotykaja sie ludzie, jest r�wniez najwieksza szansa, ze ktos cos zauwazy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_08"); //Tawerny sa zawsze dobrym miejscem do wyjscia. Sluchaj i rozejrzyj sie po miescie i gospodarstwach rolnych.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_09"); //Badz jednak ostrozny..... Zlo mogloby czaic sie w poblizu, nie uznajac sie za takie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RAT");

	AI_Teleport	(Mod_534_KDF_Milten_NW, "NW_KDF_LIBRARY_21");
	B_StartOtherRoutine	(Mod_534_KDF_Milten_NW, "PRIVAT");
	AI_Teleport	(Mod_534_KDF_Milten_NW, "NW_KDF_LIBRARY_21");

	Log_CreateTopic	(TOPIC_MOD_DAEMONISCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONISCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Xardas wyczuwa obecnosc Urnola na zamieszkalym terenie wok�l Khorinis, a takze inne rozproszone sily demoniczne. Mialem wiec zapytac i zobaczyc, czy zauwazylem cos niezwyklego, a nastepnie zglosic sie do niego. Powinienem zapytac o to przy tawernach, ale takze w gospodarstwach rolnych i w miescie.");
};

INSTANCE Info_Mod_Xardas_NW_Daemonisch (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Daemonisch_Condition;
	information	= Info_Mod_Xardas_NW_Daemonisch_Info;
	permanent	= 1;
	important	= 0;
	description	= "Mam doniesienia.";
};

FUNC INT Info_Mod_Xardas_NW_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrnolKap4))
	&& (Mod_HQ_Daemonisch == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Daemonisch_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_00"); //Mam doniesienia.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_01"); //Tak, czego sie dowiedziales?

	if (Npc_KnowsInfo(hero, Info_Mod_Rosi_Daemonisch))
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_02"); //Ludzie zmieniaja sie nagle, gdy podr�zuja w ciemnosci.
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Opolos_Daemonisch))
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_03"); //W polaczeniu z klasztornym winem sa dziwne rzeczy do powiedzenia.

		if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_04"); //Novice Dyrian zmarl nagle po spozyciu klasztornego wina na Mszy sw.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_05"); //Inny nowicjusz zobaczyl, jak wylal sie z niego czarny dym.
		};
		if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_06"); //Rukhar wypil mn�stwo klasztornego wina, a wieczorem towarzyszyl niekt�rym ludziom na zewnatrz.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_07"); //Wr�cil sam do tawerny i zostal calkowicie zakl�cony.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_08"); //Jego towarzysze wr�cili po nim bez obrazen.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_09"); //Nastepnego ranka Rukhar zmarl.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_10"); //W tawernie w Orlanie prawie nikt nie pije wina klasztornego.
		};
		if (Npc_KnowsInfo(hero, Info_Mod_Opolos_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_11"); //W klasztorze wielu nowicjuszy cierpi na zaburzenia zoladkowe i nie moze juz cieszyc sie klasztornym winem.
		};
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Thekla_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Coragon_Daemonisch))
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_12"); //Jest wielu ludzi, kt�rzy jedza wyjatkowo duzo.
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_13"); //A jednak wszystkie wydaja sie wycienczone, wyraznie pogarszajace sie fizycznie.
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Brian_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Pepe_Daemonisch))
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_14"); //Niekt�rzy ludzie chca czarnych cieni widocznych w ciemnosci.
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_15"); //Ale ci naoczni swiadkowie zwykle nie radza sobie dobrze.

		if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_16"); //Tengron jest w lochu.
		};
		if (Npc_KnowsInfo(hero, Info_Mod_Brian_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_17"); //Brian zostal zabity przez paladyn�w.

			if (Mod_HQ_BrianDaemonisch == 2)
			{
				AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_18"); //Pr�bowali mnie zabic, kiedy dowiedzieli sie, co Brian mi powiedzial.
			};
		};
		if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_19"); //Rukhar jest martwy.
		};
		if (Npc_KnowsInfo(hero, Info_Mod_Pepe_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_20"); //Pepe utrzymuje sie w ukryciu i obawy o swoje zycie.
		};
	};

	if (Mod_HQ_PaladineDaemonisch == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_21"); //Widzialem nieumarlych paladyn�w w poblizu miasta, kt�rzy jeszcze niedlugo zyli.
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Pepe_Daemonisch))
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_22"); //Niekt�rzy zobaczyli nawet, ze pod wplywem cieni ludzie opadli na ziemie, poczatkowo wydawalo sie, ze nie maja zycia, a potem wyrastaja w twitch.
	};

	if (Mod_HQ_SPGesehen == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_23"); //Spotkalem nawet czarne cienie w nocy, kt�ra zaatakowala mnie.

		if (Npc_KnowsInfo(hero, Info_Mod_Rupert_Daemonisch3))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_24"); //Nawet obywatel Rupert zwabil mnie i powiedzial, ze przylacze sie do nich lub umre.
		};
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Pepe_Daemonisch))
	|| (Mod_HQ_SPGesehen == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_25"); //Beliar sprawia, ze wszyscy jestesmy powaznie zagrozeni.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_26"); //Nawet ja nawet nie widzialbym lasu drzew....
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_27"); //O czym Pan m�wi?
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_28"); //Odwracajac wzrok na orkiestrowe hordy w dolinie Minentala i przygotowujac sie do wojennej konfrontacji, Xeres przenika niezauwazalnie cieniste istoty w calym Khorini.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_29"); //Przejmuja posiadanie kazdej osoby, kt�ra spotykaja, kontroluja i stopniowo konsumuja.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_30"); //Pozostaje bezzyciowa powloka, kt�ra staje sie nieumarla.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_31"); //Jesli sie nie spieszymy, kazda osada znajdzie sie wkr�tce pod wplywem Xeres.
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_32"); //Co mozemy zrobic, aby powstrzymac cienie istot?

		if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch))
		|| (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
		|| (Npc_KnowsInfo(hero, Info_Mod_Opolos_Daemonisch))
		{
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_33"); //Ot�z panskie uwagi w zwiazku z winem klasztornym wskazuja, ze blogoslawione napoje sa sposobem na uwolnienie obsesyjnych od pasozyt�w.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_34"); //Soll ich jetzt etwa zu jedem hinrennen und ihn zu einem Schluck Klosterwein oder "Uzdrowienie obsesji" �berreden?
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_35"); //Dla Beliara nie, oczywiscie nie. Teraz nie czas na wybryki.
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_36"); //Powiazanie istot cieni z sila zyciowa ich gospodarzy jest zbyt silne.
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_37"); //Tak mocny eliksir nagle wypedzilby demony, ale jednoczesnie zgasilby zycie poszkodowanych.
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_38"); //Spr�buj wymieszac je niezauwazalnie w jednej z restauracji lub nasaczyc jedzenie przy stole alchemii.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_39"); //(umyslnie) Wszystko w porzadku, wiec teraz moge dostac eliksiry do uzdrowienia obsesji.
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_40"); //Nie sadze, by bylo to konieczne. Tutaj.

			B_GiveInvItems	(self, hero, ItMi_HolyWater, 3);

			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_41"); //Co mam z tym zrobic?
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_42"); //Na stole alchemicznym, wymieszaj chwast pola z poswieconymi malymi wodami, aby uzyskac trzy mikstury dla uzdrowienia obsesji....
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_43"); //Jak.....?
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_44"); //Kiedys sam bylem czarodziejem ognia - nie zapominajmy o tym - i dlatego wiem, na co skladaja sie drogocenne eliksiry klasztoru.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_45"); //O, to prawda, czasami zapominam, bo do tej pory widzialem cie tylko w ciemnej szacie......
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_46"); //I nie zapomnij zwiedzic miasta, Orlanu i wielkiego gospodarstwa rolnego.... i sprawdzic, czy odniesliscie sukces.

			Mod_HQ_Daemonisch = 1;

			B_GivePlayerXP	(800);

			B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Uh-huh, wiec istoty cieni przejmuja kontrole nad ludzmi. Zamierzam zatrzymac sie przy pubie w miescie, Orlanie i wielkiej farmie, aby mieszac swiete eliksiry z jedzeniem i napojem. Powinno to zakazac pasozytom przebywania u ich zywicieli.... co powinienem sobie za kazdym razem zobaczyc.");

			if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch))
			{
				B_StartOtherRoutine	(Mod_914_NOV_Babo_NW, "DAEMONISCH3");
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_47"); //C�z, ja jeszcze nie wiem.
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_48"); //Konieczne jest, aby dowiedziec sie wiecej o restauracjach i osadach w okolicy.

			B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Musze spr�bowac dowiedziec sie wiecej o miejscowosciach i restauracjach w okolicy.");
		};
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Brian_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Pepe_Daemonisch))
	|| (Mod_HQ_PaladineDaemonisch == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_49"); //To, co mi m�wisz, jest niezwykle niepokojace. Spr�buj dowiedziec sie wiecej. Slubuje zlo....
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_50"); //Bardzo tajemniczy. Moga to byc wazne wskaz�wki. Spr�buj dowiedziec sie wiecej.
	};
};

INSTANCE Info_Mod_Xardas_NW_Daemonisch2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Daemonisch2_Condition;
	information	= Info_Mod_Xardas_NW_Daemonisch2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przynioslem eliksiry zarazonym osobom.";
};

FUNC INT Info_Mod_Xardas_NW_Daemonisch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrnolKap4))
	&& (Mod_HQ_Daemonisch == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Daemonisch2_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch2_15_00"); //Przynioslem eliksiry zarazonym osobom. W ten spos�b nalezy rozpoznawac i zapobiegac zagrozeniom.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch2_14_01"); //Naprawde, zakazane? Bardzo nieostrozni, zas hordy tych dreczycieli duszy ciagle wedruja po nocy.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch2_15_02"); //Nie powinienem....?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch2_14_03"); //Tak, powinienes..... i przy tej okazji mozna jeszcze rozejrzec sie za wskaz�wkami.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch2_14_04"); //Urnol wciaz sie tu gdzies kreci, nie zapominajmy o tym....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch2_14_05"); //I pamietaj, cienie unikaja swiatla. Wykorzystaj te wiedze, kiedy sie z nimi spotkasz.

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Xardas chce, abym pokonal dreczycieli duszy i szukal dalszych wskaz�wek. Wszakze Urnol ciagle tu wisi.");

	Mod_HQ_Daemonisch = 3;

	Wld_InsertNpc	(Mod_13021_SP_Seelenpeiniger_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_13022_SP_Seelenpeiniger_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_13023_SP_Seelenpeiniger_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_13024_SP_Seelenpeiniger_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_13025_SP_Seelenpeiniger_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_13026_SP_Seelenpeiniger_NW, "TAVERNE");
};

INSTANCE Info_Mod_Xardas_NW_Daemonisch3 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Daemonisch3_Condition;
	information	= Info_Mod_Xardas_NW_Daemonisch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Daemonisch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urnol_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Daemonisch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch3_14_00"); //Nie czuje juz obecnosci Urnola w okolicy. Czyli odniesliscie sukces?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch3_15_01"); //Tak, jego maskarada. M�wil o dowodzeniu armiami Xeresa i musial wr�cic do Minentala.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch3_14_02"); //Doskonaly. Kiedy masz juz wszystkie boskie bronie z wami, nic nie powinno stac na drodze do konca kluczy Xeres' a. Niech nic nie stoi na przeszkodzie.

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch3_14_03"); //Hmm, Urnol m�wil o armii orkiestrowej.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch3_14_04"); //Jak slyszalem, zniszczyli stary ob�z i zalozyli tam swoja nowa baze. Moze go tam znajdziesz.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch3_14_05"); //Tutaj masz teleport m�wiacy role w starej roli w starej obozie i role zaklecia, co sprawi, ze pozostaniesz niezauwazony.

	CreateInvItems	(hero, ItSc_TeleportOldcamp, 1);
	CreateInvItems	(hero, ItSc_TrfSkeleton, 2);

	B_ShowGivenThings	("3 Utrzymywanie listew rolkowych");	

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch3_14_06"); //Powodzenia.

	B_GivePlayerXP	(400);

	B_SetTopicStatus	(TOPIC_MOD_DAEMONISCH, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_981_RIT_Tengron_NW, "START");

	Mod_SenyanTom_Kraut_Tag = Wld_GetDay();
	Mod_SP_Killed_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Xardas_NW_HolyHammer (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_HolyHammer_Condition;
	information	= Info_Mod_Xardas_NW_HolyHammer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy nadal masz swiety mlotek?";
};

FUNC INT Info_Mod_Xardas_NW_HolyHammer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrizielKaputt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_HolyHammer_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HolyHammer_15_00"); //Czy nadal masz swiety mlotek?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HolyHammer_14_01"); //Oczywiscie nadal mam mloteczek. Nie wydaje mi sie, ze nie wiem, co on ma do roboty.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HolyHammer_14_02"); //Wszakze przed stworzeniem zapory bylem szefem Strazak�w. Tutaj jest, Panie Panu.

	B_GiveInvItems	(self, hero, Holy_Hammer_MIS, 1);

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Xardas dal swietym mlotkiem.");
};

INSTANCE Info_Mod_Xardas_NW_Goetterschwerter (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Goetterschwerter_Condition;
	information	= Info_Mod_Xardas_NW_Goetterschwerter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem trzy pistolety.";
};

FUNC INT Info_Mod_Xardas_NW_Goetterschwerter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrizielKaputt))
	&& ((Npc_HasItems(hero, ItMw_Adanos_Stab_Magieteil) == 1)
	|| (Npc_HasItems(hero, ItMw_Adanos_Stab_Kampfteil) == 1))
	&& (Npc_HasItems(hero, Holy_Hammer_MIS) == 1)
	&& ((Npc_HasItems(hero, ItMw_BeliarWeapon_1H_01) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_02) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_03) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_04) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_05) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_06) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_07) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_08) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_09) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_10) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_11) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_12) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_13) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_14) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_15) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_16) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_17) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_18) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_19) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_20) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_01) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_02) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_03) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_04) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_05) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_06) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_07) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_08) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_09) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_10) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_11) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_12) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_13) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_14) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_15) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_16) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_17) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_18) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_19) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_20) == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Goetterschwerter_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_00"); //Dostalem trzy pistolety.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_01"); //Doskonaly! Majac moc trzech bog�w, powinnismy w zasadzie byc w stanie przywr�cic Uriziel.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_02"); //Dobre. Kiedy przeprowadzisz rytual rytualu?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_03"); //.... die Frage sollte viel eher lauten, "gdzie".
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_04"); //Intensywnie szukalismy odpowiedniego miejsca na rytual.... nie stwierdzono u Khorinis.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_05"); //Co? Jak to moze byc mozliwe? Jharkendar jest zr�dlem starej kultury.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_06"); //Tak, bez watpienia byly tu kiedys takie miejsca rytualu.... Wiecej
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_07"); //Za panowania Xeres' a terroru musialy one jednak zostac zniszczone..... lub oslabione przez plywy.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_08"); //A jak mamy zamiar przywr�cic Uriziel?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_09"); //Wlasnie o tym wlasnie m�wilem.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_10"); //Zr�dla ujawniaja, ze wielu budowniczych unikalo przesladowan Xeres, otwierajac portale do innych region�w swiata.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_11"); //Wsr�d nich byli takze kaplani i uczeni, kt�rzy uciekli przed morderstwami.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_12"); //Bez nich nie bylyby mozliwe procesy teleportacyjne na duzych odleglosciach tak wielu ludzi.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_13"); //Bylismy w stanie rozszyfrowac wsp�lrzedne docelowe jednego z ich portali i sadzimy, ze musi to byc wyspa daleko od ladu.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_14"); //A teraz masz nadzieje znalezc tam niezbedne miejsce obrzedowe?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_15"); //Tak, wiec nasze oczekiwania.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_16"); //Teraz dostosowalismy ostrosc magicznej rudy, aby mogli sledzic teleporty.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_17"); //Wtedy wystarczy tylko przejsc przez plomien teleport�w i rozejrzec sie dookola.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_18"); //Dokladnie. Na razie jednak tylko jedna osoba moze przejsc. Magiczna struktura jest wciaz bardzo niestabilna.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_19"); //Ten pionier musialby wtedy aktywowac jedna z platform teleportowych, kt�re bez watpienia znajduja sie na wyspie.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_20"); //Potem bedzie stabilny magiczny zwiazek pomiedzy tu i tam.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_21"); //Och, widze. Przypuszczam, ze wyb�r byl m�j?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_22"); //Dokladnie. Nie wiemy dokladnie, co nas tam czeka.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_23"); //Wyspa jest prawdopodobnie od dawna opuszczona.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_24"); //Mogloby sie tam kryc wiele niebezpieczenstw, stworzen dawnych czas�w, magicznych istot i opiekun�w.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_25"); //M�wi sie r�wniez, ze wyspa zrodzila sie z ognia, kt�ry pochodzil z glebin oceanu.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_26"); //Moze sie wiec okazac, ze jest to srodowisko, z kt�rym nie kazdy moze sobie poradzic.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_27"); //Jednak, jak mozemy miec tylko jedna pr�be, wybralismy czlowieka, kt�ry czesto wyr�znial sie swoimi czynami, czlowieka, kt�ry wielokrotnie uciekal przed smiercia i do kt�rego zawsze wazono bog�w. Oto dla Ciebie.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_28"); //Widze.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_29"); //Juz wyslalismy magiczne ognisko rudy przez plomien teleportu.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_30"); //Kiedy juz tam jestes, wystarczy tylko znalezc platforme teleportowa i aktywowac ja z ostroscia....
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_31"); //Wszystkie sluszne, wszystkie sluszne. Kiedy chcesz abym wyjechal?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_32"); //Plomien teleportowy jest gotowy dla Ciebie i mozesz przejsc w kazdej chwili, kiedy czujesz sie tak daleko.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_33"); //Oto klucz do drzwi, dzieki kt�remu mozna dotrzec do teleportera.

	B_GiveInvItems	(self, hero, ItKe_RitualsinselDoor, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_34"); //Niech wam towarzyszy blogoslawienstwo bog�w.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Dobrze, ze rytual odbywa sie na odleglej wyspie. W tym celu musze jednak aktywowac sie poprzez plomien teleportowy w piwnicy klasztornej i platforme teleportowa na wyspie. Magiczny punkt ciezkosci jest juz na miejscu.");

	B_GivePlayerXP	(1000);

	B_Kapitelwechsel	(5, NEWWORLD_ZEN);

	if (Mod_Gilde == 2)
	{
		B_StartOtherRoutine (Mod_579_RIT_Girion_NW, "SLD");

		AI_UnequipArmor	(Mod_579_RIT_Girion_NW);
		CreateInvItems	(Mod_579_RIT_Girion_NW, ItAr_Sld_M, 1);
		AI_EquipArmor	(Mod_579_RIT_Girion_NW, ItAr_Sld_M);

		Wld_InsertNpc	(Demon, "FP_ROAM_NW_TROLLAREA_RIVERSIDECAVE_07_02");
		Wld_InsertItem	(Pala_Feuer_Amulett, "FP_ROAM_NW_TROLLAREA_RIVERSIDECAVE_07_03");
	};
};

INSTANCE Info_Mod_Xardas_NW_Trimedron (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Trimedron_Condition;
	information	= Info_Mod_Xardas_NW_Trimedron_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Trimedron_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Trimedron_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_00"); //Wracasz! Wiec biore to za to, ze miales odniesc sukces?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_01"); //Tak, teleporter jest aktywny. I poznalem cos nowego....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_02"); //sprawozdania.....
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_03"); //Na wyspie znajduje sie miejsce ceremonialne.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_04"); //Strzeze go duch starozytnej kultury.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_05"); //Potencjalne swiadectwo minionych stuleci? Doskonaly! Idz dalej.....
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_06"); //Powiedzial mi, ze kultura wyspy zostala zniszczona przez kleske zywiolowa. Ich osada....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_07"); //(przerwania) To jest tragiczne w skutkach..... ale wazniejszy niz te szczeg�ly jest dostep do miejsca obrzedowego. Jaki jest wynik?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_08"); //Zrobil warunki zanim nas wpuscil.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_09"); //Mam go przywiezc duszy tych, kt�rzy sprawuja wladze jako swiadectwo zblizajacego sie niebezpieczenstwa.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_10"); //Pieciu Powerbearers?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_11"); //Teraz, gdy predzej czy p�zniej powinnismy sie ich wczesniej czy p�zniej pozbyc, bedzie to oznaczac tylko, ze to zadanie jest lepsze.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_12"); //Nie bedziemy jednak w stanie odzyskac kamienia duszy spiwora.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_13"); //Nie bedzie w stanie tak szybko uciec przed swiatem posrednim.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_14"); //A co z innymi?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_15"); //C�z, inny nosnik energii byl, jak juz wspomniano, slaby.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_16"); //Ujawniaja to niejednolite zr�dla zwolennik�w Xeresa z czas�w jego panowania terroru.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_17"); //Nie mozemy jednak juz nic wiecej powiedziec o tym stworzeniu..... ani to, gdzie sie obecnie znajduje, ani czy w og�le sie obudzil.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_18"); //Idz do Pyrokar, bardziej interesowal sie uprawnieniami, kt�re mu sie naleza.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Mam nadzieje, ze Pyrokar bedzie m�gl opowiedziec mi wiecej o miejscu, w kt�rym znajduja sie ci, kt�rzy sprawuja wladze.");

	if (Mod_Gilde == 2)
	{
		B_StartOtherRoutine (Mod_579_RIT_Girion_NW, "SLD");

		AI_UnequipArmor	(Mod_579_RIT_Girion_NW);
		CreateInvItems	(Mod_579_RIT_Girion_NW, ItAr_Sld_M, 1);
		AI_EquipArmor	(Mod_579_RIT_Girion_NW, ItAr_Sld_M);

		Wld_InsertNpc	(Demon, "FP_ROAM_NW_TROLLAREA_RIVERSIDECAVE_07_02");
		Wld_InsertItem	(Pala_Feuer_Amulett, "FP_ROAM_NW_TROLLAREA_RIVERSIDECAVE_07_03");
	};

	if (hero.guild == GIL_VLK)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Aaron_Party))
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_19"); //Pyrokar nie chce opuscic Khorinisa, dop�ki nie wie, ze Patherion jest bezpieczny.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_20"); //Wiec powinienes sie tym zajac zanim opuscimy Khorinis.
	}
	else
	{
		AUFSUCHENACHSEELENSTEINE = 1;

		AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_21"); //Udamy sie na wyspe. Spotkaj mnie tam, gdy znajdziesz lokalizacje strony obrzedowej.
	};
};

INSTANCE Info_Mod_Xardas_NW_Irdorath (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Irdorath_Condition;
	information	= Info_Mod_Xardas_NW_Irdorath_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Machttraeger))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Irdorath_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_00"); //Do kamienia duszy na wyspie potrzebny bedzie statek i zaloga.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Irdorath_15_01"); //Statek i zaloga! Gdzie mam to zrobic w pospiechu?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_02"); //C�z, w porcie miasta Khorinis znajduje sie statek na kotwicy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_03"); //Magicy klasztoru mogliby spr�bowac pozytywnie wplynac na paladyn�w, aby mogli oddac je do waszego dyspozycji.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_04"); //A zaloga.... Dobrze, zwiedzanie wyspy nie bedzie latwym przedsiewzieciem.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_05"); //Opr�cz mezczyzn, kt�rzy sa przeszkoleni w grach miecznikowych, nalezy miec mag�w na pokladzie w kazdych okolicznosciach.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_06"); //Twoi towarzysze z kolonii karnej powinni byc w stanie pom�c Ci znalezc odpowiednie osoby.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Irdorath_15_07"); //No c�z, wtedy moge zaczac zatrudniac ludzi.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_08"); //Tak, zr�b to.... z mojej strony nadal moge wskazac Ci Myxir i Raven, jak to mozliwe, towarzyszy....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_09"); //Bardzo dobrze. Niech Beliar pomoze Ci w wyszukiwaniu.

	Pal_213_Schiffswache.aivar[AIV_PASSGATE] = TRUE;

	if (Mod_VelayaFrei == 1)
	{
		Mod_VelayaFrei = 2;

		Wld_InsertNpc	(Mod_7416_BAU_Velaya_NW, "BIGFARM");
	};

	B_RemoveNpc	(Pal_212_Schiffswache);
	B_RemoveNpc	(Pal_213_Schiffswache);

	Log_CreateTopic	(TOPIC_MOD_HQ_CREW, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_HQ_CREW, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Ok, wtedy moge odebrac zesp�l, z kt�rym udaje sie na wyspe, aby odzyskac dusze kamienia. Xardas radzil mi zabrac ze soba magik�w i skonsultowac sie z moimi przyjaci�lmi Miltenem, Gorn, Diego i Lester w poszukiwaniu zdolnych ludzi. Sam zaproponowal Myxir i Raven jako potencjalnych kandydat�w.");
};

INSTANCE Info_Mod_Xardas_NW_Kap6 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Kap6_Condition;
	information	= Info_Mod_Xardas_NW_Kap6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Kap6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Kap6))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Kap6_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Kap6_14_00"); //Cieszy Cie moja mala niespodzianka?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Kap6_15_01"); //To pocieszajace, ze nie mozna byc samotnym.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Kap6_14_02"); //Mam jeszcze cos dla Ciebie.

	B_GiveInvItems	(self, hero, ItRu_TeleportUW, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Kap6_14_03"); //Jest to efekt dlugich spoconych nocy. Znalazlem spos�b, abys trafil do swiata Xeres.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Kap6_14_04"); //Jesli moje wyliczenia sa poprawne, powinienes zmaterializowac sie w poblizu swiatyni Xeres. Reszta zalezy od Ciebie.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Kap6_15_05"); //Chyba ze pojawimy sie bezposrednio na jego arenie.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Kap6_14_06"); //To sie nie zdarzylo.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Kap6_14_07"); //Teraz wszystko zostalo powiedziane. Niech bogowie beda z wami.

	B_LogEntry	(TOPIC_MOD_XERES, "Diego, Lester, Milten i Gorn przyszli mi z pomoca. Xardas wyposazyl nas wszystkich w teleporter�w niedaleko swiatyni Xeres. Teraz mozemy zaczac!");
};

INSTANCE Info_Mod_Xardas_NW_Argez (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Argez_Condition;
	information	= Info_Mod_Xardas_NW_Argez_Info;
	permanent	= 0;
	important	= 0;
	description	= "Spotkalem Argeza.";
};

FUNC INT Info_Mod_Xardas_NW_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Urnol1))
	&& (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Argez_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argez_15_00"); //Spotkalem Argeza.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argez_14_01"); //Bardzo dobrze! Jesli jest to mozliwe, zwr�c na niego uwage.

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Xardas_NW_NachAufnahmeQuest (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_NachAufnahmeQuest_Condition;
	information	= Info_Mod_Xardas_NW_NachAufnahmeQuest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_NachAufnahmeQuest_Condition()
{
	if (hero.guild == GIL_KDF)
	&& (Wld_GetDay() > BeliarAufnahme)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_NachAufnahmeQuest_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_14_00"); //Jestes na czasie. Odkrylem cos z ta ksiazka, kt�ra zdjales Ryan.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_15_01"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_14_02"); //Wydaje sie, ze na ksiazce widnieje zaklecie ochronne, kt�re ma uniemozliwic przeczytanie ksiazki. Ten zaklecie tylko sprawia, ze tresc staje sie bardziej interesujaca.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_14_03"); //Dlatego potrzebuje Twojej pomocy.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_15_04"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_14_05"); //Ksiazke mozna otworzyc tylko przez odpowiedni wylacznik. Ale nie posiadam niezbednej wiedzy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_14_06"); //Jak na ironie, rozwiazanie zlamania czaru mozna znalezc w innej ksiazce, Almanachu.

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(OrcScout,	"FP_ROAM_FARM1_GOBBO_04");
	Wld_InsertNpc	(OrcScout,	"FP_ROAM_FARM1_GOBBO_06");
	Wld_InsertNpc	(OrcWarrior_Almanach,	"FP_ROAM_FARM1_GOBBO_02");

	Log_CreateTopic	(TOPIC_MOD_BEL_ALMANACH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_ALMANACH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_ALMANACH, "Ksiazka, kt�ra wzialem na egzaminie wstepnym, Ryan, jest magicznie zapieczetowana. Aby go otworzyc, Xardas potrzebuje almanachu, w kt�rym stoi odpowiedni mlot. Ksiazka ta zostala jednak skradziona przez orki w rajdzie. Orki sa uwazane za znajdujace sie w lesie niedaleko farmy Lobart.");

	Info_ClearChoices	(Info_Mod_Xardas_NW_NachAufnahmeQuest);

	Info_AddChoice	(Info_Mod_Xardas_NW_NachAufnahmeQuest, "Gdzie moge znalezc szynke?", Info_Mod_Xardas_NW_NachAufnahmeQuest_B);
	Info_AddChoice	(Info_Mod_Xardas_NW_NachAufnahmeQuest, "Skad wiesz, co m�wi almanach?", Info_Mod_Xardas_NW_NachAufnahmeQuest_A);
};

FUNC VOID Info_Mod_Xardas_NW_NachAufnahmeQuest_B()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_15_00"); //Gdzie moge znalezc szynke?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_14_01"); //Teraz jest to ekscytujace. Podr�zujacy kupiec, kt�ry pozyczyl ksiazki, zostal wczoraj - prawdopodobnie przypadkowo - zaatakowany w poblizu ork�w i ograbiony z calego zasobu.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_15_02"); //Orki? Oto? I ukradl ksiazki?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_14_03"); //Dziwne, czyz nie?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_15_04"); //Potem musze znalezc orki.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_14_05"); //Otrzymasz wiadomosc. Rolnicy na farmie Lobarta powiedzieli mi, ze orki zniknely w lesie poza murami miasta.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_14_06"); //I obawiam sie, ze beda tam mieli klopoty niz miec konkurs na czytanie. Moze spotkaja sie tam z wykonawca.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_14_07"); //Musisz p�jsc za nimi teraz i zabrac im ksiazke!
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_15_08"); //Wtedy natychmiast odejde.

	Info_ClearChoices	(Info_Mod_Xardas_NW_NachAufnahmeQuest);

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(OrcScout,	"FP_ROAM_FARM1_GOBBO_04");
	Wld_InsertNpc	(OrcScout,	"FP_ROAM_FARM1_GOBBO_06");
	Wld_InsertNpc	(OrcWarrior_Almanach,	"FP_ROAM_FARM1_GOBBO_02");

	Log_CreateTopic	(TOPIC_MOD_BEL_ALMANACH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_ALMANACH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_ALMANACH, "Ksiazka, kt�ra wzialem na egzaminie wstepnym, Ryan, jest magicznie zapieczetowana. Aby go otworzyc, Xardas potrzebuje almanachu, w kt�rym stoi odpowiedni mlot. Ksiazka ta zostala jednak skradziona przez orki w rajdzie. Orki sa uwazane za znajdujace sie w lesie niedaleko farmy Lobart.");
};

FUNC VOID Info_Mod_Xardas_NW_NachAufnahmeQuest_A()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_A_15_00"); //Skad wiesz, co m�wi almanach?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_A_14_01"); //Bo ja sam ja posiadalem. Potem w pewnym momencie, kiedy sprzatalem biblioteke podr�zna, zostawilem ja w spadku.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_A_14_02"); //Kto wiedzial, ze potrzebuje go p�zniej?
};

INSTANCE Info_Mod_Xardas_NW_HabAlmanach (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_HabAlmanach_Condition;
	information	= Info_Mod_Xardas_NW_HabAlmanach_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tu zn�w jestem.";
};

FUNC INT Info_Mod_Xardas_NW_HabAlmanach_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_NachAufnahmeQuest))
	&& (Npc_HasItems(hero, ItWr_XardasAlmanach) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Drach_Besiegt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_HabAlmanach_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_00"); //Tu zn�w jestem.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAlmanach_14_01"); //I czy masz almanach?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_02"); //Tak, tu jest.

	B_GiveInvItems	(hero, self, ItWr_XardasAlmanach, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAlmanach_14_03"); //No c�z, to zaczynam otwierac sie od razu!
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_04"); //Jest jeszcze cos innego.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAlmanach_14_05"); //Co o tym chodzi?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_06"); //Kiedy odzyskalem ksiazke i dotarlem do waszej wiezy, zostalem zatrzymany przez wojownika Shadow Warrior, kt�ry twierdzil, ze nalezy do grupy szesciu wojownik�w.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_07"); //Potem chcial ksiazek i zaatakowal mnie. Po tym jak go pokonalem, zaginal i wyjasnil, ze teraz przyjda wojownicy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAlmanach_14_08"); //Beliar! Starzy wojownicy sa z powrotem!
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_09"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAlmanach_14_10"); //Szesciu wojownik�w jest ochroniarzami renegaty. Wychodza tylko wtedy, gdy jest cos waznego do zrobienia. Najwyrazniej to oni sa po ksiazce.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAlmanach_14_11"); //Daj mi dzien i otworzylem ksiazke i przekonalem sie, dlaczego jest ona tak wazna dla wojownik�w.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_12"); //C�z, do zobaczenia jutro.

	B_LogEntry	(TOPIC_MOD_BEL_ALMANACH, "Dalem Xardasa almanachowi i opowiedzialem mu o Drachu. Chca, abym wr�cil jutro.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_ALMANACH, LOG_SUCCESS);

	OpenRyanBook = Wld_GetDay();

	B_GivePlayerXP	(600);

	B_G�ttergefallen(3, 1);
};

INSTANCE Info_Mod_Xardas_NW_AlmanachOffen (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_AlmanachOffen_Condition;
	information	= Info_Mod_Xardas_NW_AlmanachOffen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes gotowy?";
};

FUNC INT Info_Mod_Xardas_NW_AlmanachOffen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_HabAlmanach))
	&& (Wld_GetDay() > OpenRyanBook)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_AlmanachOffen_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlmanachOffen_15_00"); //Czy jestes gotowy?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_01"); //Ciesze sie, ze przyszedles. To straszne, co odkrylem!
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlmanachOffen_15_02"); //Co sie dowiedziales/as?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_03"); //Ksiazka zawiera szczeg�lowy opis jak dotrzec do siekiery zguby.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlmanachOffen_15_04"); //Co?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_05"); //siekiera kary smierci! Ta bron jest starozytnym kawalkiem mocy Beliara. Stworzyl go potezny czarny magik.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_06"); //Zdawal sobie jednak sprawe z demonicznej woli broni i ukrywal ja przed reszta swiata z tajemnica. Tylko ci, kt�rzy potrafia rozwiazac te zagadke sa gotowi niesc bron!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_07"); //Dlatego wojownicy sa po niej.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlmanachOffen_15_08"); //Jaki jest to rodzaj zagadki?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_09"); //Czarny mag utrzymal siekiere w bezpiecznym miejscu i pozostawil szesc almanach�w, gdzie znajduje sie najblizszy almanach. Jednak w zagadce, kt�ra moze byc rozwiazana tylko przez logiczne myslenie.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_10"); //W ostatnich stoiskach almanachu, gdzie znajduje sie siekiera zaglady. W ksiazce, kt�ra otworzylem, zapisana jest lokalizacja pierwszego almanachu.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_11"); //Twoja misja bedzie rozwiazac tajemnice zabicia szesciu wojownik�w, kt�rzy sa r�wniez za toporem i zabezpieczeniem siekiery.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlmanachOffen_15_12"); //To wlasnie robie z Linksem!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_13"); //Wiem, ze to zadanie jest trudne, ale dzieki temu mozemy wyciagnac z nich potezna bron.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlmanachOffen_15_14"); //Wtedy szybko odejde!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_15"); //Dobrze, badzcie ostrozni! Jestes podstepny! Oto ksiazka z pierwsza zagadka!

	B_GiveInvItems	(self, hero, ItWr_AxtAlmanach_Pre, 1);

	GardeBeliars_1989_Drach.attribute[ATR_HITPOINTS] = GardeBeliars_1989_Drach.attribute[ATR_HITPOINTS_MAX];

	Log_CreateTopic	(TOPIC_MOD_BEL_RAETSEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_RAETSEL, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_BEL_AXT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_AXT, LOG_RUNNING);
	B_LogEntry_NMore	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_AXT, TOPIC_MOD_BEL_FIVEKNIGHTS, "Ksardas otworzyl Almanaca. Wewnatrz jest tajemnica, kt�ra otwiera droge do siekiery zguby. Powinienem przeczytac ksiazke i rozwiazac zagadke.", "Almanach powiedzial cos o siekierze zguby. Bron ta wydaje sie byc bardzo potezna. Xardas chce, abym ja znalazl.", "Najwyrazniej szesciu wojownik�w jest za siekiera zguby. Musze je przescignac.");
};

INSTANCE Info_Mod_Xardas_NW_HabAxt (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_HabAxt_Condition;
	information	= Info_Mod_Xardas_NW_HabAxt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wracam!";
};

FUNC INT Info_Mod_Xardas_NW_HabAxt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Frowin_HatAxt))
	&& (Npc_HasItems(hero, ItMw_AxtDesUntergangs) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_HabAxt_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAxt_15_00"); //Wracam!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAxt_14_01"); //A co sie stalo?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAxt_15_02"); //Zrobilem wszystko, co Pan powiedzial. Ciemna Gwardia zostaje zniszczona, tajemnica zostaje rozwiazana, a siekiera zabezpieczona.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAxt_14_03"); //Pokaz mi top�r!
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAxt_15_04"); //Tutaj.

	B_GiveInvItems	(hero, self, ItMw_AxtDesUntergangs, 1);

	AI_UnequipWeapons	(self);

	EquipWeapon	(self, ItMw_AxtDesUntergangs);

	AI_ReadyMeleeWeapon	(self);

	AI_PlayAni	(self, "T_1HSINSPECT");

	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAxt_14_05"); //Jaka moc. Myslalem, kiedy odszedles, i postanowilem utrzymac siekiere.

	AI_RemoveWeapon	(self);

	AI_UnequipWeapons	(self);

	B_GiveInvItems	(self, hero, ItMw_AxtDesUntergangs, 1);

	AI_EquipBestMeleeWeapon	(self);

	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAxt_15_06"); //Dzieki, bede sie nia dobrze opiekowal.

	B_LogEntry_More	(TOPIC_MOD_BEL_AXT, TOPIC_MOD_BEL_FIVEKNIGHTS, "Ocalilem siekiere zguby, a Xardas chce, abym ja zatrzymal.", "Szesciu wojownik�w to historia. Inny problem mniej.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_RAETSEL, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_BEL_AXT, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_BEL_FIVEKNIGHTS, LOG_SUCCESS);

	B_GivePlayerXP	(1000);

	B_G�ttergefallen(3, 1);
};

INSTANCE Info_Mod_Xardas_NW_Argibast (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Argibast_Condition;
	information	= Info_Mod_Xardas_NW_Argibast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wracam.";
};

FUNC INT Info_Mod_Xardas_NW_Argibast_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_ArgibastDead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Argibast_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_00"); //Wracam.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_01"); //A co?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_02"); //Oblezenie juz sie skonczylo i jeden z szesciu straznik�w Inno poblogoslawil doczesnego!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_03"); //Bardzo dobry. Co powiedzial straznik?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_04"); //Niewiele. M�wil, jak zawsze, o niezachwianej mocy swego Mistrza i czyms o poteznej broni, kt�rej poszukuja inni straznicy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_05"); //Jaka jest to bron?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_06"); //Nazywal ja miecz Innosem ".
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_07"); //W Beliar' s. Nie moglo sie to pogorszyc.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_08"); //O co w tym wszystkim chodzi?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_09"); //Tysiac lat temu, w czasie, gdy powstali Beliars i Gwardia Innos�w, a nastepnie zostali wygnani, stworzono z nimi dwie boskie bron, zagrazajace r�wnowadze swiata.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_10"); //Przypuszczam, ze m�wisz o siekierze zguby i mieczu Innos'?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_11"); //Tak, panie posle. Adanos zapieczetowal dwie bron, aby uchronic swiat przed chaosem. Juz odzyskales top�r, ale miecz Innos' jest prawdopodobnie r�wniez na Khorinis i wartownik Innos szuka go.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_12"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_13"); //Musisz przechwycic miecz Innosa, aby uchronic go przed zlem. Nalezy r�wniez zatrzymac straz Innoska, aby uchronic Khorinisa przed kolejnym zagrozeniem.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_14"); //Gdzie chcesz, abym zaczal szukac?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_15"); //To jest zagadka, kt�ra trzeba rozwiazac. Nie wiemy na pewno. Jednak gwaltownie wzrosla aktywnosc magicznej energii w Dolinie Magik�w Wody, co jest niepokojace. Rozpocznij tam wyszukiwanie.

	B_GivePlayerXP	(250);

	Wld_SendTrigger	("EVT_PORTAL_EINGANG_TOR_01");

	Log_CreateTopic	(TOPIC_MOD_BEL_INNOSSCHWERT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_INNOSSCHWERT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "Wydaje sie, ze straz Innos szuka poteznego miecza Innos. Musze znalezc przed nimi miecz. Jednak Xardas nie wie nawet, gdzie go znalezc, ale sa wskaz�wki na temat Jharkendend.");

	Wld_InsertNpc	(Mod_4085_HoherUntoterMagier_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4084_UntoterEliteNovize_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4083_UntoterKrieger_NW,		"TAVERNE");

	Wld_InsertNpc	(Mod_4088_HoherUntoterMagier_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4087_UntoterEliteNovize_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4086_UntoterKrieger_NW,		"TAVERNE");

	Wld_InsertNpc	(Mod_4091_HoherUntoterMagier_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4090_UntoterEliteNovize_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4089_UntoterKrieger_NW,		"TAVERNE");

	B_StartOtherRoutine	(Mod_512_RDW_Cavalorn_NW, "START");

	B_StartOtherRoutine	(Mod_771_KDW_Riordian_NW, "VORTEMPEL");

	B_StartOtherRoutine	(Mod_1538_WKR_Wasserkrieger_NW, "GEFANGEN");
	B_StartOtherRoutine	(Mod_1537_WKR_Vanas_NW, "GEFANGEN");
	B_StartOtherRoutine	(Mod_1536_WKR_Roka_NW, "GEFANGEN");
	B_StartOtherRoutine	(Mod_1532_HTR_Ethan_NW, "GEFANGEN");

	B_KillNpc	(Mod_1539_WKR_Wasserkrieger_NW);
};

INSTANCE Info_Mod_Xardas_NW_Uriela (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Uriela_Condition;
	information	= Info_Mod_Xardas_NW_Uriela_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Uriela_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_TeachingFinished))
	&& (Npc_KnowsInfo(hero, Info_Mod_Uriela_TeachMage))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Uriela_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Uriela_14_00"); //Dwie czarownice obdarzone magia run�w poprosily o dolaczenie do grona czarnych mag�w.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Uriela_14_01"); //Pozwolilem sobie na ich przyznanie, poniewaz w obecnej sytuacji jestesmy uzaleznieni od wszelkiego rodzaju wsparcia, a znajomosc magii czarownic moze z pewnoscia wzbogacic nas w walce z Xeresem.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Uriela_14_02"); //Ale jakos mam silne podejrzenie, ze miales w grze swoje palce.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Uriela_15_03"); //....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Uriela_14_04"); //Ostrzegam cie. Sztuka pracy nie jest latwo przekazywana osobom trzecim.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Uriela_14_05"); //W obchodzeniu sie z magia, trzeba byc nieco powazniejszym.
};

INSTANCE Info_Mod_Xardas_NW_Randolph (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Randolph_Condition;
	information	= Info_Mod_Xardas_NW_Randolph_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebuje Panstwa rady.";
};

FUNC INT Info_Mod_Xardas_NW_Randolph_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HalbinfernalischerRandolph_GoodOne))
	&& (Mod_Randolph_Started == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Randolph_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Randolph_15_00"); //Potrzebuje Panstwa rady. Farmer Randolph wydaje sie byc nie tylko pod demoniczna kontrola, ale wydaje sie byc jednym.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Randolph_15_01"); //Zebral hordy demon�w wok�l siebie i zagraza miastu.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Randolph_14_02"); //C�z, wtedy bedziesz musial znalezc spos�b, aby go zniszczyc, aby poradzic sobie z tym zagrozeniem.

	Info_ClearChoices	(Info_Mod_Xardas_NW_Randolph);

	Info_AddChoice	(Info_Mod_Xardas_NW_Randolph, "Ale czy nie mozesz mu pom�c?", Info_Mod_Xardas_NW_Randolph_B);
	Info_AddChoice	(Info_Mod_Xardas_NW_Randolph, "Dobrze, zrobie to.", Info_Mod_Xardas_NW_Randolph_A);
};

FUNC VOID Info_Mod_Xardas_NW_Randolph_B()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Randolph_B_15_00"); //Ale czy nie mozesz mu pom�c?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Randolph_B_14_01"); //No c�z, na stadionie pokrewienstwa z Demonikiem jakakolwiek pomoc przyjdzie za p�zno.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Randolph_B_14_02"); //I nawet jesli iskra jego pierwotnego bytu nadal istnieje w nim, trudno byloby przekonac go do wziecia eliksiru Pyrokara.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Randolph_B_14_03"); //W zwiazku z tym bedziecie musieli zniszczyc te istote - nawet jesli wciaz pozostaje mu reszta ludzkosci - poniewaz nie macie srodk�w, by wybi�rczo od niego wyrzucic demona.

	B_LogEntry	(TOPIC_MOD_AKIL_RANDOLPH, "Xardas uwaza, ze powinienem zniszczyc Randoplha lub to, czym on sie stal. Jesli nie ma innej drogi.....");

	Info_ClearChoices	(Info_Mod_Xardas_NW_Randolph);
};

FUNC VOID Info_Mod_Xardas_NW_Randolph_A()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Randolph_A_15_00"); //Dobrze, zrobie to.

	B_LogEntry	(TOPIC_MOD_AKIL_RANDOLPH, "Xardas uwaza, ze powinienem zniszczyc Randoplha lub to, czym on sie stal. Jesli nie ma innej drogi.....");

	Info_ClearChoices	(Info_Mod_Xardas_NW_Randolph);
};

INSTANCE Info_Mod_Xardas_NW_RandolphGeheilt (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_RandolphGeheilt_Condition;
	information	= Info_Mod_Xardas_NW_RandolphGeheilt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Udalo mi sie uratowac Randolpha.";
};

FUNC INT Info_Mod_Xardas_NW_RandolphGeheilt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Randolph))
	&& (Mod_Randolph_Started == 16)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_RandolphGeheilt_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_RandolphGeheilt_15_00"); //Udalo mi sie uratowac Randolpha.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_RandolphGeheilt_14_01"); //Hmm, wiec uzywales magii paladyn�w.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_RandolphGeheilt_15_02"); //Co? Wiedziales o mozliwosci? Ale dlaczego....?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_RandolphGeheilt_14_03"); //Musisz zrozumiec. Perspektywa sukcesu byla szczupla.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_RandolphGeheilt_14_04"); //Chcialem, zebys nie spedzal wiecej czasu, wysilku i ryzyka dla ludzkiego zycia, narazajac cale zycie Khoriniego.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_RandolphGeheilt_14_05"); //W przypadku niepowodzenia....
};

INSTANCE Info_Mod_Xardas_NW_Gidan1 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Gidan1_Condition;
	information	= Info_Mod_Xardas_NW_Gidan1_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozna polaczyc te pol�wki pergaminu?";
};

FUNC INT Info_Mod_Xardas_NW_Gidan1_Condition()
{
	if (Npc_HasItems(hero, ItWr_SektisTeleport2) == 1)
	&& (Npc_HasItems(hero, ItWr_SektisTeleport1) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung))
	&& (Mod_PalaKapitel3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Gidan1_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Gidan1_15_00"); //Czy mozna polaczyc te pol�wki pergaminu?

	AI_PrintScreen	("Podane pol�wki pergaminu!", -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);

	Npc_RemoveInvItems	(hero, ItWr_SektisTeleport2, 1);
	Npc_RemoveInvItems	(hero, ItWr_SektisTeleport1, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gidan1_14_01"); //To nie powinno byc problemem. Wr�c do domu p�zniej.

	B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "Xardas polaczy dwie pol�wki pergaminu.");
};

INSTANCE Info_Mod_Xardas_NW_Gidan2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Gidan2_Condition;
	information	= Info_Mod_Xardas_NW_Gidan2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Gidan2_Condition()
{
	if (Mod_PalaKapitel3 == 4)
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Gidan1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Gidan2_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gidan2_14_00"); //Oto Twoja historia.

	B_GiveInvItems	(self, hero, ItWr_SektisTeleport3, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gidan2_14_01"); //Wydaje sie jednak, ze ma ona lokalna zaleznosc.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gidan2_14_02"); //Tak wiec musi on byc wypowiadany w okreslonym miejscu, aby dzialal.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Gidan2_15_03"); //Mam przeczucie gdzies tam.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gidan2_14_04"); //Potem ruszam, jestem zajety.

	Mod_PalaKapitel3 = 5;

	B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "Jest to rola zaklecia, ale moze byc uzyta tylko w okreslonym miejscu. Powinienem spr�bowac latarni morskiej.");
};

INSTANCE Info_Mod_Xardas_NW_Namib (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Namib_Condition;
	information	= Info_Mod_Xardas_NW_Namib_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tutaj list od Baala Namiba do Pana.";
};

FUNC INT Info_Mod_Xardas_NW_Namib_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_DuengerVerteilt))
	&& (Npc_HasItems(hero, ItWr_NamibForBeliar) == 1)
	&& (Npc_HasItems(hero, ItMi_HerbPaket) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Namib_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Namib_15_00"); //Mam list, kt�ry mam Ci dostarczyc od Baala Namiba.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Namib_14_01"); //Wrecz list do Karry w naszej twierdzy. Odpowiada za takie rzeczy.
};

INSTANCE Info_Mod_Xardas_NW_Drachen (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Drachen_Condition;
	information	= Info_Mod_Xardas_NW_Drachen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Drachen_Condition()
{
	if (Mod_NL_Siegelbuch == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Drachen_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_00"); //Ach, ciesze sie, ze dotarlem do Ciebie na czas. Bo pod zadnym pozorem nie nalezy otwierac ksiazki.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_01"); //Uh, Xardas.....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_02"); //Jak dowiedzialem sie w swoich badaniach, nie ma zadnej potrzeby.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_03"); //Tworzac szczeline w strukturze czasowej ksiazki.....
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_04"); //(Energy) Xardas, ksiazka jest juz otwarta!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_05"); //Ohh..... teraz w takim przypadku, dziennik chromaniny powinien byl odzyskac sw�j komunikat.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_06"); //A wraz z innymi konsekwencjami otwarcia ksiazki - teraz musimy dojsc do jakiegos rodzaju aranzacji.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_07"); //Co sie tam stalo? Czulem, ze niebosklon wkr�tce spadnie na glowe.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_08"); //No c�z, wyjasnie to.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_09"); //Jak dowiedzialem sie w miedzyczasie, Pondaros byl poteznym magikiem, kt�ry zyl przed eonami, kr�tko po tym, jak b�stwo Radano zaczelo dzialac na Ziemi.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_10"); //Stworzyl on ta ksiazke, kt�ra jest w stanie pochlonac magiczne energie i wygnac wiele stworzen o magicznym pochodzeniu.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_11"); //Magiczne stworzenia? Jaki rodzaj?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_12"); //C�z, wszystko poczawszy od osad�w magicznych stworzen, poprzez gobliny i mag�w, az po potezne stworzenia jak.... Smok.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_13"); //(wiara) Smok?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_14"); //Tak, smoki, oddychajace ogniem istoty starozytnej potegi, kt�rych obecnosc moglaby zagrozic wszystkim ludzkim osadom i miastom na Khorinis? i Xeres odniosloby zatem znaczne korzysci z realizacji jego cel�w.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_15"); //Xeres.... I ksiazka w rekach jego szalonego stopmana. O co to wszystko chodzi?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_16"); //Czy szaman nie zdolalby znacznie wczesniej zlamac fok i dac tym potworom wolnosc?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_17"); //Na pewno by to byl w jego mocy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_18"); //Niewatpliwie jednak Pondaros dostarczyl kamiennym kregom mechanizm�w ochronnych, kt�re w szczeg�lnosci uniemozliwilyby projekt stworzenia ciemnosci - jak ten nieumarly ork.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_19"); //Ten szaman, wladca duch�w, zywiol�w i ozywionej natury oraz poplecznik ciemnosci, nie m�gl zlamac nawet pierwszej z trzech pieczeci.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_20"); //Wystarczajaca ilosc sl�w. Bez wzgledu na to, co byc moze wydobyliscie z ksiazki, nadal skupicie swoja uwage na jednym celu: zniszczeniu Xeres.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_21"); //Oto troche zlota na sprzet.

	B_GiveInvItems	(self, hero, ItMi_Gold, 400);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_22"); //Teraz powinienes wyjsc z niego, zanim natkniesz sie na zle istoty.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_23"); //Jestem pewien, ze moge Cie teleportowac do tawerny Orlana.

	Log_CreateTopic	(TOPIC_MOD_NL_DRACHEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_DRACHEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Och, wielki. Gdyby Xardas przyzwyczail sie do pojawienia o minute wczesniej.... Fakt, ze smoki i inne potwory uciekly przed ksiazka, wydaje sie nie bardzo go dotykac. Po prostu scigaj Xeres' a jak nic zlego. No c�z, przynajmniej zrobilem duzy krok blizej chromaniny.");
	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Wtedy postapie zgodnie z rada Xardy i wydostane sie z ostrej strefy zagrozenia, zanim natknalem sie na jeden z tych smok�w..... Tawerna Orlana, tam jestem. Ale co to za fuck? l-- me--- zmysly zanikaja......");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	Mdl_RemoveOverlayMDS	(hero, "HUMANS_REGEN.MDS");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xardas_NW_Lich (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Lich_Condition;
	information	= Info_Mod_Xardas_NW_Lich_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nieumarly magik jest na Khorinis.";
};

FUNC INT Info_Mod_Xardas_NW_Lich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lich_Unbesiegbar))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Lich_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Lich_15_00"); //Nieumarly magik jest na Khorinis.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Lich_15_01"); //W walce nie moglam z nim nic wsp�lnego i niemal opuscilam z nim zycie.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Lich_15_02"); //M�wil o potrzebie zniszczenia go wiele, ale niewiele.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Lich_14_03"); //(impatycznie) C�z, moge przypuszczac, ze nie m�wisz o Xeres, ale o jednym z stworzen z ksiazki.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Lich_14_04"); //Jesli nie mozesz go pokonac, wyjdz z drogi....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Lich_14_05"); //Ale poniewaz wiem tez, ze moje slowa nie pozwola ci powstrzymac sie od dalszej glupoty: Idz do naszej fortecy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Lich_14_06"); //W bibliotece znajduje sie ksiazka, kt�ra powinna dac Ci odpowiedzi, kt�rych szukasz.
};

INSTANCE Info_Mod_Xardas_NW_Gormgniez (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Gormgniez_Condition;
	information	= Info_Mod_Xardas_NW_Gormgniez_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jest cos, co mnie nie zostawi w spokoju....";
};

FUNC INT Info_Mod_Xardas_NW_Gormgniez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gormgniez_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Gormgniez_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Gormgniez_15_00"); //Jest cos, co mnie nie zostawi w spokoju.... Co laczy smoki, sen i mowe?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_01"); //Zajmujesz sie dziwne pytaniami, kiedy masz podbic Xeres.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Gormgniez_15_02"); //C�z, maly demon powiedzial mi taka tajemnice.... Wiecej
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_03"); //Tajemnica demona, smoka, mowy i snu?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_04"); //Hmm, zaczynam rozumiec i odpowiem na twoje pytanie.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_05"); //Jak kazde zywe stworzenie, smoki potrzebuja snu od czasu do czasu.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_06"); //Jednak ich sen jest szczeg�lnie ciezki i staly, gdy byli na rajdzie, wyczerpani wysilkiem, zadowoleni z bogatej ofiary.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Gormgniez_15_07"); //Bogaty lup?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_08"); //Zlote, srebrne i szlachetne kamienie. Towary, kt�re, na przyklad, wierzacy przenosza w mszy do przedstawicieli swojego boga Innos....
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Gormgniez_15_09"); //... zgromadzonych w miejscu zamieszkania w niewielkich ilosciach. Rozumiem.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_10"); //Przemyslany) Hmm, i niedaleko, na zach�d od klasztoru, czuje tez silna magiczna obecnosc.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_11"); //Co by bylo, gdyby ktos pom�gl przeplyw informacji pomiedzy demonami?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_12"); //(znowu bohaterowi) Mam nadzieje, ze z przyjemnoscia odpowiem na wszystkie pytania.

	Log_CreateTopic	(TOPIC_MOD_NL_DRAGON, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_DRAGON, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_DRAGON, "Nauczylem sie od Xardasa, ze smoki spia szczeg�lnie dobrze po udanych najazdach. Klasztor Innos z jego skarbami mial byc predestynowany na taki nalot, wskazal Xardas.");
	B_LogEntry	(TOPIC_MOD_NL_DRAGON, "Smok m�wiacy we snie z pewnoscia nie przegapilby tego, gdyby wiedzial o tym......");
};

INSTANCE Info_Mod_Xardas_NW_Moorhexe (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Moorhexe_Condition;
	information	= Info_Mod_Xardas_NW_Moorhexe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wygladalo to tak, ze smok duzo sie rozdawal.";
};

FUNC INT Info_Mod_Xardas_NW_Moorhexe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_KlosterErfolg))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Lich))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Moorhexe_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe_15_00"); //Wygladalo to tak, ze smok duzo sie rozdawal.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_01"); //Tak, slyszalem, co sie stalo w klasztorze.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe_15_02"); //Poza tym nie moglem dowiedziec sie wszystkiego.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe_15_03"); //Er sprach von "grunty, na kt�rych uprawia sie ziarno matki" und von einem Moor und seiner Bewohnerin.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_04"); //Hmm, kraj zboza matki.... musi byc parafraza dla obszaru na p�lnocy Khorinis: Relendel.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_05"); //I torfowisko.... Tak, wlasciwie, slyszalem o kims przekletym.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe_15_06"); //Co to jest przeklenstwo i gdzie dokladnie jest to wrzosowisko?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_07"); //Dla najlepszych intencji nie jestem w stanie dostarczyc informacji na temat wszystkiego.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_08"); //Zapytaj kogos, kto bardzo dobrze zna region na p�lnocy, na przyklad straznika. Czarny troll ma miec mieszkanca.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe_15_09"); //No c�z, wtedy smok m�wil o kobiecie mieszkance, kt�ra ma ukrywac sie przed poteznymi.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_10"); //Bardzo tajemniczy, ale biblioteka naszej twierdzy jest obszerna. Mozna tam znalezc porade.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_11"); //Teraz musze wesprzec Andokai badaniami, rozwinac wiedze, kt�ra jest ukryta w ksiegach tej fortecy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_12"); //Zdobyl kilka r�l w zakleciach i runy przemieniajacych sie mag�w.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_13"); //Spr�bujmy sie dowiedziec, czy mozesz z niego generowac zaklecia dzumy.

	if (!Npc_KnowsInfo(hero, Info_Mod_Lich_Hi))
	{
		B_RemoveNpc	(Mod_7290_PAL_Athos_NW);
		B_RemoveNpc	(Mod_7291_PAL_Aramis_NW);
		B_RemoveNpc	(Mod_7292_PAL_Porthos_NW);

		Wld_InsertNpc	(Lich_11008_NW, "NW_TROLLAREA_TROLLROCKCAVE_02");

		if (!Npc_KnowsInfo(hero, Info_Mod_Porthos_Hi))
		{
			Wld_SendTrigger	("LICHDUNGEON");
		};
	};

	B_SetTopicStatus	(TOPIC_MOD_NL_DRAGON, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_NL_MOORHEXE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_MOORHEXE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_MOORHEXE, "Xardas m�wil o obszarze Relendel na p�lnocy Khorinis, gdzie znajdowano moczar. Prawdopodobnie wiezyczka przy czarnym trollu moglaby mi tam pokazac droge.");
	B_LogEntry	(TOPIC_MOD_NL_MOORHEXE, "Xardas pr�buje wraz z Andokai zamienic niekt�re zaklecia mag�w przeksztalcajacych sie w zaklecia dzumy. Wiec zwr�cil mi sie do Biblioteki Czarnych Magicyst�w z pozostalymi pytaniami.");
};

INSTANCE Info_Mod_Xardas_NW_Moorhexe2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Moorhexe2_Condition;
	information	= Info_Mod_Xardas_NW_Moorhexe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Smok wspomnial o czyms innym....";
};

FUNC INT Info_Mod_Xardas_NW_Moorhexe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Moorhexe))
	&& (Mod_Moorhexe == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Moorhexe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe2_15_00"); //Smok wspomnial o czyms innym....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_01"); //Tak?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe2_15_02"); //Powiedzial, ze to, co jest w bagnie, ukrywa sie przed poteznymi.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_03"); //Hm, moze to skomplikowac twoje przedsiewziecie.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_04"); //Byc moze rozwiazanie tajemnicy zostanie ujawnione tylko wtedy, gdy przyjmiemy slaba forme.
	
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Moorhexe)) {
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_05"); //Slyszalem, ze byles juz z Andokai.
		if (Npc_KnowsInfo(hero, Info_Mod_Andokai_PyrmansStab)) {
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_06"); //Musial rzucic ci uzyteczny czar.
			B_LogEntry	(TOPIC_MOD_NL_MOORHEXE, "Byc moze tajemnica wrzosowiska nie objawi sie mi, gdy bede chodzil w mojej formie. Xardas zalecal slaba figure. Powinienem uzyc zaklecia metamorfozy Andokai.");
		} else {
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_07"); //On z pewnoscia bedzie mial cos pozytecznego dla Ciebie, jesli przyni�sl go, co chce.
			B_LogEntry	(TOPIC_MOD_NL_MOORHEXE, "Byc moze tajemnica wrzosowiska nie objawi sie mi, gdy bede chodzil w mojej formie. Xardas zalecal slaba figure. Andokai bedzie mial cos dla mnie, kiedy wykonam swoja prace.");
		};
	} else {
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_08"); //Andokai bedzie w stanie Ci w tym pom�c.
		B_LogEntry	(TOPIC_MOD_NL_MOORHEXE, "Byc moze tajemnica wrzosowiska nie objawi sie mi, gdy bede chodzil w mojej formie. Xardas zalecal slaba figure. Andokai powinien mi pom�c.");
	};
};

INSTANCE Info_Mod_Xardas_NW_WasMussIchTun (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WasMussIchTun_Condition;
	information	= Info_Mod_Xardas_NW_WasMussIchTun_Info;
	permanent	= 0;
	important	= 0;
	description	= "Droga Beliara? Jak trafic?";
};

FUNC INT Info_Mod_Xardas_NW_WasMussIchTun_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasFuerGilden))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WasMussIchTun_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WasMussIchTun_15_00"); //Droga Beliara? Jak trafic?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasMussIchTun_14_01"); //Obawiam sie, ze najpierw musze odkryc tajemnice.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasMussIchTun_14_02"); //Pamietasz trzy obozy w dolinie rzeki Minental, Stary Ob�z, Nowy Ob�z i Ob�z Szantowy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasMussIchTun_14_03"); //Faktem jest, ze istnial czwarty ob�z.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WasMussIchTun_15_04"); //I gdzie by to bylo?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasMussIchTun_14_05"); //Wysoko w g�rach, w poblizu Nowego Obozu.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasMussIchTun_14_06"); //W czasie I wojny lukowej na tym niegoscinnym terenie zbudowano twierdze.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasMussIchTun_14_07"); //Po stworzeniu bariery osiedlili sie tam ludzie, kt�rzy mieli dobre powody, aby nie miec kontaktu z innymi obozami - wyznawcami Beliara.
};

INSTANCE Info_Mod_Xardas_NW_WasDuMitGruppe (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WasDuMitGruppe_Condition;
	information	= Info_Mod_Xardas_NW_WasDuMitGruppe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co masz do czynienia z grupa?";
};

FUNC INT Info_Mod_Xardas_NW_WasDuMitGruppe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasMussIchTun))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WasDuMitGruppe_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WasDuMitGruppe_15_00"); //Co masz do czynienia z grupa?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasDuMitGruppe_14_01"); //Istnialo ono juz zanim odwr�cilem sie od Strazak�w, ale nie moge zaprzeczyc, ze zyskalem tam duzy wplyw.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasDuMitGruppe_14_02"); //Mozesz sobie wyobrazic moje zaskoczenie, kiedy natknalem sie na to ugrupowanie.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasDuMitGruppe_14_03"); //Po upadku Bariery, stal sie bardziej znany i dolaczyli do niego znani magowie i wojownicy kolonii.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasDuMitGruppe_14_04"); //Niekt�re z nich mozna dobrze zapamietac, nawet jesli nie bedzie odwrotnie.
};

INSTANCE Info_Mod_Xardas_NW_WarumNovize (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WarumNovize_Condition;
	information	= Info_Mod_Xardas_NW_WarumNovize_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przypuscmy, ze chcialem dolaczyc do tego klubu.....";
};

FUNC INT Info_Mod_Xardas_NW_WarumNovize_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasDuMitGruppe))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WarumNovize_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WarumNovize_15_00"); //Przypuscmy, ze chcialem dolaczyc do tego klubu.....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WarumNovize_14_01"); //Przejdz do Andokai. Jest on gl�wnym czarnym magiem fortecy i jest odpowiedzialny za rekrutacje.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WarumNovize_14_02"); //Jesli powiesz mu, ze ufam, on cie dobrze potraktuje.

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "Jesli chce przylaczyc sie do zwolennik�w Beliarana, powinienem zwr�cic sie do Andokai, najwyzszego czarnego maga starej twierdzy.");
};

INSTANCE Info_Mod_Xardas_NW_WelcherVorteil (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WelcherVorteil_Condition;
	information	= Info_Mod_Xardas_NW_WelcherVorteil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co wydostaloby sie z bycia przyczepa Beliaran?";
};

FUNC INT Info_Mod_Xardas_NW_WelcherVorteil_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasDuMitGruppe))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WelcherVorteil_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WelcherVorteil_15_00"); //Co wydostaloby sie z bycia przyczepa Beliaran?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WelcherVorteil_14_01"); //(nauczanie) Nie zwracasz swoje modlitwy do Beliara, poniewaz jestes pewien, ale dlatego, ze jestes przekonany o jego nauczaniu.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WelcherVorteil_14_02"); //Poza tym.... Nasi wojownicy sa r�wniez przeszkoleni w poslugiwaniu sie magia.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WelcherVorteil_14_03"); //Szkolenie podstawowe sklada sie z pierwszych dw�ch kreg�w magii.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WelcherVorteil_14_04"); //Dopiero wtedy trzeba wybrac specjalizacje. Jednak mozesz nauczyc sie tylko poteznych zaklec bojowych jak mag.

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "Kazdy nowicjusz uczy sie dw�ch pierwszych czarodziej�w wisiork�w Beliaranu, zanim specjalizuje sie w roli wojownika lub maga.");
};

INSTANCE Info_Mod_Xardas_NW_WoSindAndere (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WoSindAndere_Condition;
	information	= Info_Mod_Xardas_NW_WoSindAndere_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak dotrzec do tej twierdzy g�rskiej?";
};

FUNC INT Info_Mod_Xardas_NW_WoSindAndere_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasMussIchTun))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WoSindAndere_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WoSindAndere_15_00"); //Jak dotrzec do tej twierdzy g�rskiej?

	if (Npc_GetDistToWP(self, "NW_XARDAS_TOWER_IN1_22") < 500 || Npc_GetDistToWP(self, "WP_XARDAS_PREACH_02") < 500) {
		AI_Output(self, hero, "Info_Mod_Xardas_NW_WoSindAndere_14_01"); //Odpowiedz na to pytanie jest prosta. Sp�jrz tutaj. Jest moja wlasna swiatynia.
	} else {
		AI_Output(self, hero, "Info_Mod_Xardas_NW_WoSindAndere_14_02"); //Odpowiedz na to pytanie jest prosta. Spogladaj na g�re. Jest moja wlasna swiatynia.
	};
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WoSindAndere_15_03"); //Co dalej? Nie chcialem sie modlic.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WoSindAndere_14_04"); //Wybaczcie jeszcze raz za swoja niezrozumiala ignorancje.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WoSindAndere_14_05"); //Jako teleporterzy korzystamy z sanktuari�w Beliar. Musisz aktywowac kazda kapliczke, aby podr�zowac z nia, ale wtedy mozesz przelaczac sie miedzy nimi tak jak chcesz.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WoSindAndere_14_06"); //Moja swiatynia jest do tej pory zwiazana tylko z twierdza. Nie mozna tego przegapic.

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "Do twierdzy przyczep Beliaranu docieram do twierdzy Beliar przez swiatynie Beliar w wiezy Xardas, kt�ra pelni r�wniez funkcje teleportera.");
};

INSTANCE Info_Mod_Xardas_NW_VonWemKannIchLernen (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_VonWemKannIchLernen_Condition;
	information	= Info_Mod_Xardas_NW_VonWemKannIchLernen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kto moze mnie nauczyc, co?";
};

FUNC INT Info_Mod_Xardas_NW_VonWemKannIchLernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasMussIchTun))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_VonWemKannIchLernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_VonWemKannIchLernen_15_00"); //Kto moze mnie nauczyc, co?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_VonWemKannIchLernen_14_01"); //Moge Cie nauczyc o magii.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_BELIARFESTUNG, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_BELIARFESTUNG, "Xardas moze mi pom�c zwiekszyc moja mane.");
};

INSTANCE Info_Mod_Xardas_NW_GomezHier (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_GomezHier_Condition;
	information	= Info_Mod_Xardas_NW_GomezHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego Gomez wciaz zyje?";
};

FUNC INT Info_Mod_Xardas_NW_GomezHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gomez_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_GomezHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_GomezHier_15_00"); //Dlaczego Gomez wciaz zyje?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_GomezHier_14_01"); //Jest jednym z naszych wojownik�w.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_GomezHier_15_02"); //Ale ja go zabilem, a inni wr�cili do starego obozu.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_GomezHier_14_03"); //W pewnym sensie, tak. Ale byl jeszcze daleki od ostatecznej smierci.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_GomezHier_15_04"); //Dlaczego mnie nie pamieta?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_GomezHier_14_05"); //Wyrzucilem na niego i jego poplecznik�w potezne zapomnienie.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_GomezHier_14_06"); //Zapomniales o wszystkim, co wydarzylo sie w Minentalu.
};

INSTANCE Info_Mod_Xardas_NW_WannNovize (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WannNovize_Condition;
	information	= Info_Mod_Xardas_NW_WannNovize_Info;
	permanent	= 0;
	important	= 0;
	description	= "Andokai jest o mnie przekonany i chce mnie przyjac.";
};

FUNC INT Info_Mod_Xardas_NW_wannNovize_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_WarInBib))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WannNovize_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WannNovize_15_00"); //Andokai jest o mnie przekonany i chce mnie przyjac.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WannNovize_15_01"); //M�wi, ze nadal potrzebuje Pani zgody.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WannNovize_14_02"); //Wiesz, ze mysle o Tobie bardzo wiele i nie musze Cie wystawiac na pr�be.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WannNovize_15_03"); //Dzieki. Ale?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WannNovize_14_04"); //Niesprawiedliwe byloby preferencyjne traktowanie innych wnioskodawc�w. Dlatego tez daje ci jeszcze jeden test.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WannNovize_14_05"); //Poniewaz jest wyszukana, widzisz, ze ufam Tobie.
};

INSTANCE Info_Mod_Xardas_NW_LetzterTest (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_LetzterTest_Condition;
	information	= Info_Mod_Xardas_NW_LetzterTest_Info;
	permanent	= 0;
	important	= 0;
	description	= "C�z, jaki jest to rodzaj testu?";
};

FUNC INT Info_Mod_Xardas_NW_LetzterTest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WannNovize))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_LetzterTest_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_15_00"); //C�z, jaki jest to rodzaj testu?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_01"); //Chodzi o rozbita grupe wierzacych, kt�rzy zebrali sie pod przyw�dztwem pewnego Ryana.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_15_02"); //Gdzie?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_03"); //W Najswietszym Sakramencie Strazak�w, Jaskinia Test�w Pozarnych, polozona na dalekiej p�lnocy Khorinis.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_04"); //Tak naprawde nie powinno nam to przeszkadzac, ale raczej zachwycac nas - Ryan i jego grupa nie wywarliby na nas nietrwalego wplywu.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_05"); //Swoimi sadystycznymi rytualami, kt�re wykonuje w imie Beliarsa, bluznierczy przeciwko naszemu Bogu.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_06"); //Slyszalem, ze dw�ch z naszych nowicjuszy przeszlo do niego.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_07"); //Czas wiec zatrzymac Ryana. Ryan zauwazyl jednak r�wniez, ze poszedl za daleko i chroni sie przed silnymi zakleciami.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_08"); //Jak powiedzial mi nasz szpieg, jest tylko jedna bron, kt�ra moze wyrzadzic mu powazne szkody - a kaplan sekty jest jej wlascicielem.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_09"); //To trzema Bogami.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_15_10"); //Oho!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_11"); //Straszne bluznierstwo bog�w, czyz nie? Z tym kijem, rogate blystki dostaja beat i dzwonia do Beliara!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_12"); //Wiec jestes gonna trzeba dostac ten kij i wyciagnac Ryan z niego.

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "Xardas opowiedzial mi o czarodziejce renegatowej o nazwisku Ryan, kt�ry w Jaskini Test�w Pozarnych Magistra Ognia trzyma ciemne rytualy. Mam go zatrzymac. Aby go jednak zabic, potrzebuje tak zwanej Trzech Bog�w r�zdzki. Wedlug kardas�w, kaplani grupy niosa ja razem z nimi.");

	Info_ClearChoices	(Info_Mod_Xardas_NW_LetzterTest);

	Info_AddChoice	(Info_Mod_Xardas_NW_LetzterTest, "Zobacze, co moge zrobic.", Info_Mod_Xardas_NW_LetzterTest_B);
	Info_AddChoice	(Info_Mod_Xardas_NW_LetzterTest, "Czy nie moge przekonac Ryana inaczej niz mieczem?", Info_Mod_Xardas_NW_LetzterTest_A);
};

FUNC VOID Info_Mod_Xardas_NW_LetzterTest_B()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_B_15_00"); //Zobacze, co moge zrobic.

	Wld_InsertNpc	(Mod_1942_Ryan_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1943_Waechter_01_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1944_Waechter_02_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1945_Waechter_03_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1946_Waechter_04_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1947_Waechter_05_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1948_Waechter_06_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1949_Waechter_07_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1952_Waechter_08_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1951_Priester_NW, "TAVERNE");

	Info_ClearChoices	(Info_Mod_Xardas_NW_LetzterTest);
};

FUNC VOID Info_Mod_Xardas_NW_LetzterTest_A()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_A_15_00"); //Czy nie moge przekonac Ryana inaczej niz mieczem?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_A_14_01"); //Nie. Ryan sam wybral sw�j koniec. Wiedzial, do czego sie dostaje.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_A_14_02"); //Jako wyznawca Beliara, musisz sie dowiedziec, ze smierc jest tylko czescia natury.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_A_14_03"); //To nie jest najstraszniejsza kara, jaka moglibysmy wymyslic dla Ryana.
};

INSTANCE Info_Mod_Xardas_NW_LetzterTest_Success (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_LetzterTest_Success_Condition;
	information	= Info_Mod_Xardas_NW_LetzterTest_Success_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ryan's dead and his sect is crushed.";
};

FUNC INT Info_Mod_Xardas_NW_LetzterTest_Success_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_LetzterTest))
	&& (Npc_IsDead(Mod_1942_Ryan_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_LetzterTest_Success_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_Success_15_00"); //Ryan's dead and his sect is crushed.

	if (Npc_HasItems(hero, Ryans_Almanach) == 1)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_Success_15_01"); //Znalazlem to tam. Z pewnoscia zawiera ona pewne zle praktyki.

		B_GiveInvItems	(hero, self, Ryans_Almanach, 1);

		AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_Success_14_02"); //Cenny resztka falszywej wiary. Mial pan racje, zabierajac ja ze soba.

		B_GivePlayerXP	(400);
	}
	else
	{

		B_GivePlayerXP	(300);
	};

	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_Success_14_03"); //Jak sie spodziewalem, zdales ten test z latajacymi kolorami. Nic nie stoi na przeszkodzie, aby nagranie stalo sie Black Novice.

	B_LogEntry_More	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_DAEMONENBESCHWOERER, "Moge teraz zostac czarna nowicjuszka.", "Moge teraz zostac czarna nowicjuszka.");

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	B_G�ttergefallen(3, 1);
};

INSTANCE Info_Mod_Xardas_NW_Rasend (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Rasend_Condition;
	information	= Info_Mod_Xardas_NW_Rasend_Info;
	permanent	= 0;
	important	= 0;
	description	= "Na Khorinis szaleje gigantyczny demon.";
};

FUNC INT Info_Mod_Xardas_NW_Rasend_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Rasend))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Rasend_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_00"); //Gigantyczny demon wpadl na Khorinis i spowodowal spustoszenie wsr�d paladyn�w w miescie, klasztoru i wykopalisk mag�w wodnych.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_01"); //Jakie ma to znaczenie? Czemu sluzyly slugom Innos i Adanos?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_02"); //Nie slyszalem, ze odwiedzil on r�wniez mag�w i wojownik�w Beliar�w.... Wiecej
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_03"); //Co, powie pan, ze to potezna istota demoniczna? Wtedy wiec moje postrzeganie mnie nie oszukiwalo....
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_04"); //O czym Pan m�wi?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_05"); //Czulem obecnosc tego poteznego demona w srodowisku i nadal moge to dostrzec.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_06"); //Jesli sie nie myle, to jest to potezny sluga Beliar�w, zwany Shivar.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_07"); //A ty m�wisz, ze on byl osobiscie odpowiedzialny za to wszystko?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_08"); //Zaden sluga nie wspieralby go ani zadne inne istoty, ani takie, kt�re by go nie wspieraly?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_09"); //Tak, jak ja to podaje.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_10"); //To wiecej niz niezwykle.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_11"); //Jest ksieciem wsr�d demon�w i ma ogromny sztab nizszych sluzebnic.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_12"); //Fakt, ze on sam pojawia sie i rozprzestrzenia takie zlo rodzi wiele pytan....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_13"); //Prosze pozwolic mi pomyslec o tym. Slyszalem o dziwnych wydarzeniach na plaskowyzu pastwiskowym i w okolicy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_14"); //Gleby byly blogoslawione i przeklete, a potem pojawily sie potwory....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_15"); //Jestem pewien, ze mozesz mi powiedziec wiecej na ten temat.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_16"); //Tak, mialem bezposredni wplyw na te wydarzenia.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_17"); //Na polecenie magik�w wody oczyszczalem gleby z wplyw�w obu b�stw.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_18"); //I wtedy ciemna sila zlapala uwolnione sily i nazwala je istotami na plaskowyzu pastwiskowym.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_19"); //Magia tych dw�ch b�stw wchlonela i w ten spos�b przywoluje stworzenia?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_20"); //Jest to niezwykle interesujace i moze dostarczyc waznych informacji o aktualnych wydarzeniach.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_21"); //Czytalem, ze sludzy Xeres mieli moc przejac kontrole nad magia innych b�stw, a tym samym nad ich magicznymi stworzeniami.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_22"); //Czy m�wi pan, ze ten straszliwy demon jest teraz pod wplywem Xeres?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_23"); //Wtedy byloby to naprawde zle dla nas wszystkich.....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_24"); //Nie wiem, panie posle. Czy wplyw Xeres' a zwiekszyl sie do takiego stopnia, ze moze on nawet zdobyc kontrole nad najbardziej oddanymi stworzeniami Beliara?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_25"); //Nie mam odwagi sobie wyobrazic. W dalszym ciagu podnosiloby to r�wniez pewne sprzecznosci i pytania.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_26"); //Dlaczego przyszedl bez istot slugi i dlaczego zostawil zwolennik�w Beliara zupelnie nietknietych?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_27"); //Najwazniejsze jest to, ze moge znalezc spos�b, aby polozyc kres jego zgielkowi.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_28"); //Jesli nie ma innej drogi, prawdopodobnie bede musial posunac sie przeciwko niemu z mieczem i magia.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_29"); //Zdobadz Shivar w bitwie? Pr�ba zrobienia tego bylaby zwyklym szalenstwem.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_30"); //Jest o wiele potezniejszy niz jakikolwiek przeciwnik, z kt�rym walczyles w bezposredniej walce.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_31"); //Prawdopodobnie nie bedziesz w stanie zblizyc sie do siebie na tyle, aby przeprowadzic pojedynczy atak przeciwko niemu......
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_32"); //Musze miec cos, co moge zrobic. Wystarczy stac z tylu i obserwowac go zabic khorinis?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_33"); //Czy naprawde nie ma nic, co mogloby mi pom�c w starciu z nim?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_34"); //C�z, jest on demonem pelnym pychy i toleruje tylko sw�j wlasny rodzaj.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_35"); //Nawet ja, jako wysoki dostojnik magik�w demonicznych, nie moglem byc pewien, ze on nie odwr�ci sie przeciwko mnie.....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_36"); //Musisz wiec wchlonac czesc sily demonicznej. M�wi sie, ze slugom Xeres udalo sie to zrobic.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_37"); //Rozejrzyj sie wiec wok�l wierzby plaskowyzu, aby zobaczyc, czy znajdziesz jakies wazne wskaz�wki.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_38"); //Kiedy cos znajdziesz, wr�c do mnie.

	B_LogEntry	(TOPIC_MOD_ADANOS_RASEND, "Xardas poprosil mnie, abym szukal sposobu na rozbudzenie sil demonicznych w poblizu wierzbowego plaskowyzu. Tw�rcy potwor�w na plaskowyzu mogliby miec cos takiego.");

	Wld_InsertNpc	(Mod_7497_BlutkultMagier_NW, "TAVERNE");

	B_KillNpc	(Mod_7497_BlutkultMagier_NW);

	Mod_WM_BlutkultAttack = 1;
};

INSTANCE Info_Mod_Xardas_NW_Rasend02 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Rasend02_Condition;
	information	= Info_Mod_Xardas_NW_Rasend02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bylem juz w 'przyjemnosci' takiego srodka zaradczego.";
};

FUNC INT Info_Mod_Xardas_NW_Rasend02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Rasend))
	&& (Mod_WM_HeroHatDaemonInSich == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Rasend02_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend02_15_00"); //Bylem juz w "przyjemnosci" takiego srodka, z kt�rym przez jakis czas stalem sie czesciowo demoniczna istota.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend02_15_01"); //Sukiennik mial go z nimi.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend02_14_02"); //Czy tak jest? Tak, m�wicie prawde, wciaz moge wam dostrzec mala, ale wyrazna iskre demoniczna. Wydaje sie, ze trwala....
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend02_15_03"); //A jak moge to teraz wykorzystac dla siebie?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend02_14_04"); //Hmm, demony takich poteg jak Shivar zawsze otoczone sa silna aura.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend02_14_05"); //Jesli zblizysz sie do niego i skupisz sie na demonice, mozesz przynajmniej pozwolic demonikowi wyjsc na chwile w pelnym rozkwicie.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend02_15_06"); //Bloom of the Demonic?

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend02_15_07"); //Parafraza taka jak ta przychodzi nam do glowy tylko dla maga demona.

	AI_TurnToNpc	(hero, self);

	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend02_15_08"); //Ponownie do Xardasa) Stanie sie demonem nie czuje sie szczeg�lnie pozadany, ale jesli jest to moja jedyna mozliwosc......
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend02_14_09"); //Z pewnoscia otworzyloby to przed Toba nowe mozliwosci.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend02_14_10"); //Kiedy bedziesz gotowy, spr�buj nawiazac dialog z Shivar i dowiedziec sie, co sie dzieje.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend02_14_11"); //Beliar, bezpieczniej.

	B_LogEntry	(TOPIC_MOD_ADANOS_RASEND, "A zatem wszystko w porzadku. Skoro demonik wciaz jeszcze w mnie zyje za duszem zakletych kult�w krwi, powinienem skoncentrowac sie calkowicie na tym, aby stac sie pelnoprawnym demonem w poblizu demona Siwara. Potem moglem sie o nim wiele dowiedziec....");
};

INSTANCE Info_Mod_Xardas_NW_Trent (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Trent_Condition;
	information	= Info_Mod_Xardas_NW_Trent_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem to w opuszczonej kopalni. Zaczarowalo to paladyne, wiec pr�bowal mnie zabic.";
};

FUNC INT Info_Mod_Xardas_NW_Trent_Condition()
{
	if (Mod_KG_SchwarzesErz == 1)
	&& (Npc_HasItems(hero, ItMi_SchwarzesErz_Trent) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Trent_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trent_15_00"); //Znalazlem to w opuszczonej kopalni. Zaczarowalo to paladyne, wiec pr�bowal mnie zabic.

	B_GiveInvItems	(hero, self, ItMi_SchwarzesErz_Trent, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent_14_01"); //To naprawde interesujace.... ruda ta wydaje sie byc przekleta.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent_14_02"); //Jesli moge dowiedziec sie dokladnych cech, moze to byc potezna bron przeciwko wrogom.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent_14_03"); //Wr�ccie za kilka dni, wtedy bede wiedzial wiecej.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trent_15_04"); //(do samego siebie) No c�z, wtedy chyba powinienem p�jsc do Pana Andre' a....

	B_LogEntry	(TOPIC_MOD_KG_RITUAL, "Xardas bedzie badal czarna rude. W miedzyczasie zobacze Pana Andr�.");
};

INSTANCE Info_Mod_Xardas_NW_Trent2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Trent2_Condition;
	information	= Info_Mod_Xardas_NW_Trent2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy slyszales cokolwiek o rudie?";
};

FUNC INT Info_Mod_Xardas_NW_Trent2_Condition()
{
	if (Mod_KG_NachOrkZauber == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Trent2_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trent2_15_00"); //Czy slyszales cokolwiek o rudie? Jestem w punkcie, w kt�rym moglem uzyc broni cudownej.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent2_14_01"); //Niestety, nie jest tak potezny jak sadzilem. Nie uczyni nam to nic dobrego przeciwko Xeresowi.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent2_14_02"); //Mozna jednak osiagnac niesmiertelnosc przeciwko pewnym istotom.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trent2_15_03"); //Co zrobic, jesli mam juz pistolet, kt�ry moze zrobic to samo? Czy nie mozna wtedy rozpuscic efektu?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent2_14_04"); //Tak..... przez sama siebie, ale co to za zbieg okolicznosci...... Czy znalazles taka rude?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trent2_15_05"); //Tak i nie. Niesmiertelny szaman z orka powiedzial mi cos o czarnych plucach z ludzka krwia.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent2_14_06"); //No c�z, chyba tak wlasnie by ork nazwal.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent2_14_07"); //C�z, nawet gdybysmy mogli wykorzystac to w inny spos�b, nie mielibysmy innego wyboru. Niezwyciezony szaman jest zbyt niebezpieczny.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent2_14_08"); //Wezmy ten pierscionek, mam go zrobiony z rudy. To powinno sprawic, ze bron mu zaszkodzi.

	B_GiveInvItems	(self, hero, ItRi_SchwarzesErz, 1);

	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trent2_15_09"); //Miejmy nadzieje, ze to dziala!

	B_LogEntry	(TOPIC_MOD_KG_RITUAL, "Zeby m�c zabic szamana, musze zalozyc pierscien, kt�ry Xardas zrobil z czarnej rudy, a nastepnie postawic mu twarza w twarz.");
};

INSTANCE Info_Mod_Xardas_NW_Aufnahme (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Aufnahme_Condition;
	information	= Info_Mod_Xardas_NW_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce byc czarna nowicjuszka.";
};

FUNC INT Info_Mod_Xardas_NW_Aufnahme_Condition()
{
	if (Mod_Gilde	==	0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_LetzterTest_Success))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Aufnahme_15_00"); //Chce byc czarna nowicjuszka.
	
	if (hero.level >= 5)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_14_01"); //Wiesz, ze nie ma powrotu? Czy panska decyzja jest ostateczna?
		
		if (Mod_HatPlayerNeutraleKlamotten())
		{
			if (Mod_Gottstatus > 4)
			{
				AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_14_02"); //Jednak najpierw powinienes zrobic kilka rzeczy na korzysc Beliara.
			}
			else
			{
				Info_ClearChoices	(Info_Mod_Xardas_NW_Aufnahme);

				Info_AddChoice	(Info_Mod_Xardas_NW_Aufnahme, "Dlaczego mi nie dales troche czasu?", Info_Mod_Xardas_NW_Aufnahme_Nein);
				Info_AddChoice	(Info_Mod_Xardas_NW_Aufnahme, "Tak.", Info_Mod_Xardas_NW_Aufnahme_Ja);
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_14_03"); //Najpierw powinienes zdobyc neutralna zbroje.
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_14_04"); //Zebrajcie wiecej doswiadczenia i z przyjemnoscia powitam Was.
	};
};

FUNC VOID Info_Mod_Xardas_NW_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Aufnahme_Nein_15_00"); //Dlaczego mi nie dales troche czasu?

	Info_ClearChoices	(Info_Mod_Xardas_NW_Aufnahme);
};

FUNC VOID Info_Mod_Xardas_NW_Aufnahme_Ja()
{
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_53);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_55);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_60);
	
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Aufnahme_Ja_15_00"); //Tak.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_Ja_14_01"); //Wtedy chcialbym powitac pana tutaj w imieniu Andokai!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_Ja_14_02"); //On nie bedzie mnie obwinial, jesli dam wam swoja zbroje i tradycyjna bron.

	CreateInvItems	(hero, ITAR_NOV_DMB_01, 1);
	CreateInvItems	(hero, ItMw_1h_SNov_Mace, 1);

	B_ShowGivenThings	("Czarna, nowicjuszska szate i paleczke otrzymano");

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Nov_DMB_01);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_Ja_14_03"); //Lepiej nie pojawiac sie w poblizu tych wiernych Inno w miescie i klasztorze Innos.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_Ja_14_04"); //Jesli potrzebujesz lepszej broni, powinienes udac sie do Scar' s.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_Ja_14_05"); //Ale z waszymi prawami i obowiazkami naprawde lepiej rozmawiac z Andokai.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_Ja_14_06"); //Bede Cie teraz pouczal w magii, jesli tylko zechcesz.

	B_LogEntry_More	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_DAEMONENBESCHWOERER, "Jestem czarna nowicjuszka.", "Jestem czarna nowicjuszka.");
	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_S�LDNER, LOG_FAILED);

	Mod_Gilde = 12;

	Info_ClearChoices	(Info_Mod_Xardas_NW_Aufnahme);

	Monster_Max += 6;
	
	hero.guild = GIL_KDF;
	Npc_SetTrueGuild	(hero, GIL_KDF);

	BeliarAufnahme = Wld_GetDay();

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	B_G�ttergefallen(3, 5);
};

INSTANCE Info_Mod_Xardas_NW_AxtDesUntergangs (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_AxtDesUntergangs_Condition;
	information	= Info_Mod_Xardas_NW_AxtDesUntergangs_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co dokladnie robi siekiera?";
};

FUNC INT Info_Mod_Xardas_NW_AxtDesUntergangs_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_HabAxt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_AxtDesUntergangs_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AxtDesUntergangs_15_00"); //Co dokladnie robi siekiera? Nie wyglada na szczeg�lnie silna.....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AxtDesUntergangs_14_01"); //Obecnie pozbawiona jest sily. Bedziesz musial ich czesto uzywac, aby odzyskac dawna sile.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AxtDesUntergangs_14_02"); //Z kazdego zabitego wroga wycofa czesc swojej sily i staje sie coraz silniejsza.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AxtDesUntergangs_15_03"); //Ciekawe brzmienie.
};

INSTANCE Info_Mod_Xardas_NW_MilizVorTurm (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_MilizVorTurm_Condition;
	information	= Info_Mod_Xardas_NW_MilizVorTurm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_MilizVorTurm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_VermissteFertig))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_MilizVorTurm_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_MilizVorTurm_14_00"); //Jesli zastanawiasz sie nad istotami poza moja wieza.... Maly tlum z miasta byl w drodze do mojej wiezy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_MilizVorTurm_14_01"); //Moja delegacja nalezycie je powitala.
};

INSTANCE Info_Mod_Xardas_NW_AlteMineQuest (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_AlteMineQuest_Condition;
	information	= Info_Mod_Xardas_NW_AlteMineQuest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_AlteMineQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Daemonisch3))
	&& (Wld_GetDay()-6 >= Mod_SP_Killed_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_AlteMineQuest_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest_14_00"); //W dawnej kopalni wydarzylo sie cos niepokojacego, o czym wlasnie slyszalem.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest_14_01"); //Zab�jstwo i zab�jstwo bez rozpoznawalnych motyw�w.... To wszystko, co wiem.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest_14_02"); //Mysle jednak, ze wasze umiejetnosci i wiedza moga byc przydatne w tej sytuacji.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlteMineQuest_15_03"); //Wszystko w porzadku, w odpowiednim czasie rzuce sie tam w pore.

	Log_CreateTopic	(TOPIC_MOD_XARDAS_ALTEMINE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_XARDAS_ALTEMINE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_XARDAS_ALTEMINE, "Xardas poprosil mnie, abym zatrzymal sie przy starej kopalni. Najwyrazniej doszlo do kilku niezwyklych akt�w przemocy.");

	Wld_InsertNpc	(Mod_7713_DMR_Daemonenritter_NW, "BIGFARM");
};

INSTANCE Info_Mod_Xardas_NW_AlteMineQuest2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_AlteMineQuest2_Condition;
	information	= Info_Mod_Xardas_NW_AlteMineQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Xeres zn�w mial palce w piersiach.";
};

FUNC INT Info_Mod_Xardas_NW_AlteMineQuest2_Condition()
{
	if (Mod_AMQ_Viper == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_AlteMineQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlteMineQuest2_15_00"); //Xeres zn�w mial palce w piersiach.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlteMineQuest2_15_01"); //Ale zawilem jego ciemne machinacje w starej kopalni.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_02"); //Tak, wlasnie uslyszalem o wydarzeniach.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_03"); //Chcial przebic sie przez stara kopalnie, aby sprowadzic swoje sily zbrojne na Khorinis.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_04"); //Bardzo sprytny.... gdzie nikt sie tego nie spodziewa.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlteMineQuest2_15_05"); //Prawo.... wszystkie oczy byly na przepustce.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_06"); //C�z, nie ma sensu wspominac, ze po raz kolejny uratowaliscie nie tylko nasza wsp�lnote, ale cala Khorini od zagrozenia.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_07"); //Co wiecej, dziedzictwo wroga w tej historii nie bylo zupelnie bezwartosciowe.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_08"); //Polecilem nasz kowalowi, zebyscie uczynili dla Was cos pieknego.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlteMineQuest2_15_09"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_10"); //Niewazne. Jesli p�jdziesz do naszej fortecy, bedziesz o tym wiedzial.

	B_SetTopicStatus	(TOPIC_MOD_XARDAS_ALTEMINE, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Xardas_NW_Schreine (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Schreine_Condition;
	information	= Info_Mod_Xardas_NW_Schreine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pracowal teleport z bialoruskiego sanktuarium.";
};

FUNC INT Info_Mod_Xardas_NW_Schreine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Schreine_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Schreine_15_00"); //Pracowal teleport z bialoruskiego sanktuarium.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine_14_01"); //Nie spodziewalem sie niczego wiecej.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine_14_02"); //Poniewaz system jest dosc mlody, nie wiele sanktuari�w beliarskich jest polaczonych w siec.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine_14_03"); //Dlatego prosze o zwr�cenie uwagi na wczesniej niepowiazane swiatynie w podr�zy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine_14_04"); //Jesli uda ci sie aktywowac wszystkie kapliczki, wymyslim dla ciebie mala nagrode.

	Log_CreateTopic	(TOPIC_MOD_BELIAR_SCHREINE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BELIAR_SCHREINE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BELIAR_SCHREINE, "Xardas kazal mi aktywowac wszystkie znalezione w drodze beliarskie swiatynie. Po podlaczeniu wszystkich dostepnych sanktuari�w, chce mi wymyslic nagrode.");
};

INSTANCE Info_Mod_Xardas_NW_Schreine2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Schreine2_Condition;
	information	= Info_Mod_Xardas_NW_Schreine2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mysle, ze polaczylem wszystkie beliarskie sanktuaria.";
};

FUNC INT Info_Mod_Xardas_NW_Schreine2_Condition()
{
	if (Mod_Beliarschreine == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Schreine2_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Schreine2_15_00"); //Mysle, ze polaczylem wszystkie beliarskie sanktuaria.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine2_14_01"); //To wlasnie nazywam godnym szacunku osiagnieciem. Jestem panstwu gleboko zadluzony.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Schreine2_15_02"); //Wspomnial pan o nagrodzie....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine2_14_03"); //Prawo. (szukajac) Pewnego dnia mialem go tu gdzies tam, gdzies innego dnia....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine2_14_04"); //Ah, to prawda. Tutaj jest, Panie Panu.

	B_GiveInvItems	(self, hero, ItPo_Perm_Mana, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine2_14_06"); //Mialem ten eliksir od wiek�w. Mam nadzieje, ze nadal dziala.

	B_SetTopicStatus	(TOPIC_MOD_BELIAR_SCHREINE, LOG_SUCCESS);
};

var int Xardas_LastPetzCounter;
var int Xardas_LastPetzCrime;

INSTANCE Info_Mod_Xardas_PMSchulden (C_INFO)
{
	npc         	= Mod_513_DMB_Xardas_NW;
	nr          	= 1;
	condition   	= Info_Mod_Xardas_PMSchulden_Condition;
	information 	= Info_Mod_Xardas_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Xardas_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Xardas_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Xardas_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Xardas_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_00"); //Czy przyszedles/as zaplacic grzywne?

	if (B_GetTotalPetzCounter(self) > Xardas_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_01"); //Zastanawialem sie, czy nawet nie osmieliscie sie tu przyjechac!
		AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_02"); //Najwyrazniej nie sa to ostatnie oskarzenia!

		if (Xardas_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_03"); //Ostrzegam cie! Grzywna, kt�ra musisz zaplacic jest teraz wyzsza!
			AI_Output (hero, self, "Info_Mod_Xardas_PMAdd_15_00"); //Ile?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Xardas_LastPetzCounter);
		
			if (diff > 0)
			{
				Xardas_Schulden = Xardas_Schulden + (diff * 50);
			};
		
			if (Xardas_Schulden > 1000)	{	Xardas_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Xardas_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_04"); //Zapusciles mnie tak zle!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Xardas_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_05"); //Pojawily sie nowe rzeczy.
		
		if (Xardas_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_06"); //Nagle nie ma juz nikogo, kto oskarzalby cie o morderstwo.
		};
		
		if (Xardas_LastPetzCrime == CRIME_THEFT)
		|| ( (Xardas_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_07"); //Nikt nie pamieta, ze widzisz sie przy kradziezy.
		};
		
		if (Xardas_LastPetzCrime == CRIME_ATTACK)
		|| ( (Xardas_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_08"); //Nie ma juz zadnych swiadk�w tego, ze kiedykolwiek walczyles.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_09"); //Widocznie wszystkie zarzuty przeciwko Tobie zniknely.
		};
		
		AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_10"); //Nie wiem, co sie stalo, ale ostrzegam: nie graj ze mna.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_11"); //Zrezygnowalem z waszego zadluzenia.
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_12"); //Upewnij sie, ze nie popadniesz ponownie w klopoty.
	
			Xardas_Schulden			= 0;
			Xardas_LastPetzCounter 	= 0;
			Xardas_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_13"); //Jedno jest pewne: nadal trzeba zaplacic kare w calosci.
			B_Say_Gold (self, hero, Xardas_Schulden);
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_14"); //Co to jest?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Xardas_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Xardas_PETZMASTER);
		Info_AddChoice		(Info_Mod_Xardas_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Xardas_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Xardas_PMSchulden,"Ile to zn�w bylo?",Info_Mod_Xardas_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Xardas_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Xardas_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Xardas_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Xardas_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Xardas_PMSchulden_HowMuchAgain_15_00"); //Ile to zn�w bylo?
	B_Say_Gold (self, hero, Xardas_Schulden);

	Info_ClearChoices  	(Info_Mod_Xardas_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Xardas_PETZMASTER);
	Info_AddChoice		(Info_Mod_Xardas_PMSchulden,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Xardas_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Xardas_PMSchulden,"Ile to zn�w bylo?",Info_Mod_Xardas_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Xardas_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Xardas_PMSchulden,"Chce zaplacic grzywne.",Info_Mod_Xardas_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Xardas_PETZMASTER   (C_INFO)
{
	npc         	= Mod_513_DMB_Xardas_NW;
	nr          	= 1;
	condition   	= Info_Mod_Xardas_PETZMASTER_Condition;
	information 	= Info_Mod_Xardas_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Xardas_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Xardas_PETZMASTER_Info()
{
	Xardas_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime h�her ist...	
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_01"); //Ciesze sie, ze przyszedles do mnie, zanim sytuacja sie pogorszyla.
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_02"); //Morderstwo jest powaznym wykroczeniem!

		Xardas_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Xardas_Schulden = Xardas_Schulden + 500;						//PLUS M�rder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_03"); //Nie wspominajac o innych rzeczach, kt�re zrobiles.
		};

		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_06"); //Nie interesuje mnie to, ze moge panstwa umiescic na szubienicy.
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_07"); //Ale nie bedzie latwo sprawic, by ludzie zn�w byli laskawi.
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_08"); //Mozesz okazac swoja pokute placac grzywne - oczywiscie kara musi byc odpowiednia.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_09"); //Dobrze! Jestes oskarzony o kradziez! Sa swiadkowie!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_10"); //Nie chce nawet m�wic o innych rzeczach, kt�re slyszalem.
		};

		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_11"); //Nie bede tolerowal takich zachowan tutaj!
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_12"); //Bedziesz musial zaplacic grzywne za swoje przestepstwo!
		
		Xardas_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_13"); //Jesli walczysz z milicja lub magikami ognia, to jest jedna rzecz....
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_14"); //Ale jesli zaatakujesz naszych ludzi, bede musial Cie pociagnac do odpowiedzialnosci.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_15"); //I nie sadze, aby tak bylo w przypadku owiec.
		};

		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_16"); //Jesli pozwole wam sie z tym uporac, wszyscy beda robic to, co chca.
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_17"); //Placi sie wiec odpowiednia grzywne - a cala sprawa zostanie zapomniana.
		
		Xardas_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf get�tet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_18"); //Slyszalem, ze balaganiles sie z naszymi owcami.
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_19"); //Zdajesz sobie sprawe, ze nie moge tego przepuscic.
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_20"); //Bedziesz musial wyplacic odszkodowanie!
		
		Xardas_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Xardas_PETZMASTER_15_21"); //Ile?
	
	if (Xardas_Schulden > 1000)	{	Xardas_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Xardas_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Xardas_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Xardas_PETZMASTER);
	Info_AddChoice		(Info_Mod_Xardas_PETZMASTER,"Nie mam wystarczajaco duzo zlota!",Info_Mod_Xardas_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Xardas_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Xardas_PETZMASTER,"Chce zaplacic grzywne.",Info_Mod_Xardas_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Xardas_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Xardas_PETZMASTER_PayNow_15_00"); //Chce zaplacic grzywne!
	B_GiveInvItems (hero, self, itmi_gold, Xardas_Schulden);
	AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_PayNow_14_01"); //Dobrze! Doloze wszelkich staran, aby kazdy z nas sie o tym dowiedzial - wiec Twoja reputacja zostanie w rozsadny spos�b przywr�cona.

	B_GrantAbsolution (LOC_SMCAMP);
	
	Xardas_Schulden			= 0;
	Xardas_LastPetzCounter 	= 0;
	Xardas_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Xardas_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Xardas_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Xardas_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Xardas_PETZMASTER_PayLater_15_00"); //Nie mam wystarczajaco duzo zlota!
	AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_PayLater_14_01"); //Nastepnie zobacz, ze zloto dostaniesz jak najszybciej.
	AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_PayLater_14_02"); //I ostrzegam cie, ze jesli cokolwiek zawdzieczasz sobie, to bedzie ci gorzej.
	
	Xardas_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Xardas_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Xardas_NW_Lernen_MANA (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Lernen_MANA_Condition;
	information	= Info_Mod_Xardas_NW_Lernen_MANA_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce zwiekszyc swoja magiczna moc.";
};

FUNC INT Info_Mod_Xardas_NW_Lernen_MANA_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_VonWemKannIchLernen))
	&& (hero.attribute[ATR_MANA_MAX]	<=	300)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Lernen_MANA_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Lernen_MANA_15_00"); //Chce zwiekszyc swoja magiczna moc.

	Info_ClearChoices	(Info_Mod_Xardas_NW_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, DIALOG_BACK, Info_Mod_Xardas_NW_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Xardas_NW_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Xardas_NW_Lernen_MANA_1);
};

FUNC VOID Info_Mod_Xardas_NW_Lernen_MANA_BACK()
{
	if (hero.attribute[ATR_MANA_MAX] >= 300)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Lernen_MANA_BACK_14_01"); //Twoje magiczne umiejetnosci sa teraz tak dobre, ze nie moge cie niczego nauczyc.
	};

	Info_ClearChoices	(Info_Mod_Xardas_NW_Lernen_MANA);
};

FUNC VOID Info_Mod_Xardas_NW_Lernen_MANA_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Xardas_NW_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, DIALOG_BACK, Info_Mod_Xardas_NW_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Xardas_NW_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Xardas_NW_Lernen_MANA_1);
};

FUNC VOID Info_Mod_Xardas_NW_Lernen_MANA_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Xardas_NW_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, DIALOG_BACK, Info_Mod_Xardas_NW_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Xardas_NW_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Xardas_NW_Lernen_MANA_1);
};

INSTANCE Info_Mod_Xardas_NW_Lehrer (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Lehrer_Condition;
	information	= Info_Mod_Xardas_NW_Lehrer_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy moge sie z Toba uczyc?";
};

FUNC INT Info_Mod_Xardas_NW_Lehrer_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Hallo))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_IstLehrling == 1)
	{	
		return 1;
	};
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_Info()
{
	AI_Output (hero, self, "Info_Mod_Xardas_NW_Lehrer_15_00"); //Czy moge sie z Toba uczyc?
	
	if (Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16)
	{
		AI_Output (self, hero, "Info_Mod_Xardas_NW_Lehrer_14_01"); //Pozw�lcie sie na tajemnice alchemii.
		
		if (Mod_XardasAlchemie == FALSE)
		{
			Mod_XardasAlchemie = TRUE;

			Log_CreateTopic	(TOPIC_MOD_LEHRER_BELIARFESTUNG, LOG_NOTE);
			B_LogEntry	(TOPIC_MOD_LEHRER_BELIARFESTUNG, "Xardas moze mnie nauczyc o alchemii.");
		};

		Info_ClearChoices 	(Info_Mod_Xardas_NW_Lehrer);
		Info_AddChoice 		(Info_Mod_Xardas_NW_Lehrer,DIALOG_BACK,Info_Mod_Xardas_NW_Lehrer_BACK);
	
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_01] == FALSE)
		&& (Mod_LehrlingBei != 1)
		{
			Info_AddChoice 		(Info_Mod_Xardas_NW_Lehrer,B_BuildLearnString ("Istota uzdrawiania", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_01)),Info_Mod_Xardas_NW_Lehrer_HEALTH_01);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_02] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Ekstrakt z ekstraktu leczniczego", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_02)), Info_Mod_Xardas_NW_Lehrer_Health_02);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_03] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_02] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Eliksir uzdrawiania", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_03)), Info_Mod_Xardas_NW_Lehrer_Health_03);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE)
		&& (Mod_LehrlingBei != 1)
		&& (Kapitel >= 4)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Eliksir zycia", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_Health)), Info_Mod_Xardas_NW_Lehrer_Perm_Health);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == FALSE)
		&& (Mod_LehrlingBei != 1)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Mana Essence", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_01)), Info_Mod_Xardas_NW_Lehrer_Mana_01);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("ekstrakt z maneny", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_02)), Info_Mod_Xardas_NW_Lehrer_Mana_02);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Mana Elixir", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_03)), Info_Mod_Xardas_NW_Lehrer_Mana_03);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE)
		&& (Kapitel >= 4)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Eliksir Ducha Swietego", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_Mana)), Info_Mod_Xardas_NW_Lehrer_Perm_Mana);
		};                                                                                                                                                                                   
		if (PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] == FALSE) 
		&& (Kapitel >= 4)
		{                                                                                                                                                                                     
			Info_AddChoice (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Skrobia Eliksir", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_STR)), Info_Mod_Xardas_NW_Lehrer_PermSTR);               
		};
		if (PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] == FALSE)
		&& (Kapitel >= 4)
		{
			Info_AddChoice (Info_Mod_Xardas_NW_Lehrer,B_BuildLearnString ("Eliksir umiejetnosci", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_DEX)), Info_Mod_Xardas_NW_Lehrer_Perm_DEX);
		};		
	};
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_BACK()
{
	Info_ClearChoices 	(Info_Mod_Xardas_NW_Lehrer);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_HEALTH_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_01);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_PermStr()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_STR);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_Perm_DEX()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_DEX);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_HEALTH_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_02);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_Health_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_03);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_Perm_Health()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_Health);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_MANA_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_01);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_MANA_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_02);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_MANA_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_03);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_Perm_Mana()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_Mana);
};

INSTANCE Info_Mod_Xardas_NW_Pickpocket (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Pickpocket_Condition;
	information	= Info_Mod_Xardas_NW_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_210;
};

FUNC INT Info_Mod_Xardas_NW_Pickpocket_Condition()
{
	C_Beklauen	(210, ItPo_MegaDrink, 1);
};

FUNC VOID Info_Mod_Xardas_NW_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);

	Info_AddChoice	(Info_Mod_Xardas_NW_Pickpocket, DIALOG_BACK, Info_Mod_Xardas_NW_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Xardas_NW_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Xardas_NW_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Xardas_NW_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);
};

FUNC VOID Info_Mod_Xardas_NW_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);

		Info_AddChoice	(Info_Mod_Xardas_NW_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Xardas_NW_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Xardas_NW_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Xardas_NW_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Xardas_NW_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Xardas_NW_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Xardas_NW_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Xardas_NW_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Xardas_NW_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Xardas_NW_EXIT (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_EXIT_Condition;
	information	= Info_Mod_Xardas_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Xardas_NW_EXIT_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasFuerGilden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
