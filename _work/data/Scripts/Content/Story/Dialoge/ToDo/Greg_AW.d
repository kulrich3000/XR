INSTANCE Info_Mod_Greg_Hi (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Hi_Condition;
	information	= Info_Mod_Greg_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_00"); //Adanos! Lubisz gospodyni! Czego chcesz?
	AI_Output(hero, self, "Info_Mod_Greg_Hi_15_01"); //Chce byc piratem.
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_02"); //Pirat? Czy? Nie organizujemy przyjecia herbatkowego min min mlody!
	AI_Output(hero, self, "Info_Mod_Greg_Hi_15_03"); //Nie chce pic herbaty!
	AI_Output(hero, self, "Info_Mod_Greg_Hi_15_04"); //Wygladasz jak pieklo, którego chcialbys!
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_05"); //Nie nalezy miec ust tak pelnych.
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_06"); //Skad pochodzisz? Pomin prawdopodobnie nie przyniosla ci nic.
	AI_Output(hero, self, "Info_Mod_Greg_Hi_15_07"); //Jestem z Khorinis. Przez góry do pewnego stopnia.
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_08"); //Góry? Czy jest tajemnicza sciezka czy cos?
	AI_Output(hero, self, "Info_Mod_Greg_Hi_15_09"); //Nie. Magicy znalezli sposób, aby stworzyc przejscie do Jharkendara miedzy stara swiatynia a jej odpowiednikiem w Khorinis.
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_10"); //Jharkendar?
	AI_Output(hero, self, "Info_Mod_Greg_Hi_15_11"); //To wlasnie starozytni budowniczowie nazywali ten obszar. Mówi sie, ze osiedlili sie na wyspie wieki temu.
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_12"); //Uh-huh. I naprawde chcesz byc piratem, huh?
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_13"); //Wszystkie sluszne, wszystkie sluszne. Poprowadz palec w prawo, a mape w lewo.

	CreateInvItems	(hero, ItWR_Addon_TreasureMap, 1);
	CreateInvItems	(hero, ItMw_2H_Axe_L_01, 1);

	B_ShowGivenThings	("Pickaxe i otrzymana karta");

	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_14"); //Zobaczymy, czy masz to, co trzeba, aby byc piratem!

	Log_CreateTopic	(TOPIC_MOD_GREG_AUFNAHME, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GREG_AUFNAHME, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GREG_AUFNAHME, "Greg dal mi mape skarbu i piknik. Mam mu zdobyc skarby.");
};

INSTANCE Info_Mod_Greg_Sweetwater (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Sweetwater_Condition;
	information	= Info_Mod_Greg_Sweetwater_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaki jest twój problem?";
};

FUNC INT Info_Mod_Greg_Sweetwater_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Sweetwater))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Sweetwater_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Sweetwater_15_00"); //Jaki jest twój problem?
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_01"); //Woda. Brakuje nam wody. I i wy sami.
	AI_Output(hero, self, "Info_Mod_Greg_Sweetwater_15_02"); //Woda wyplywa? Nad morzem? Czy kochasz mnie?
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_03"); //Mam na mysli slodka wode. Jedyna slodka woda, która mamy tutaj w dolinie, jest jezioro w góre.
	AI_Output(hero, self, "Info_Mod_Greg_Sweetwater_15_04"); //A co? To wystarczy, ze lubie moja.
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_05"); //Tak, ale nie mozemy do niego dotrzec. Dolina jest pelna aligatorów.
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_06"); //Czy Adanos wie skad one wszystkie nagle pochodza?
	AI_Output(hero, self, "Info_Mod_Greg_Sweetwater_15_07"); //Uh-huh. I tam mam.....
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_08"); //Porozmawiaj z Alligator Jack. On jest poza brama. Upewnij sie, ze te rzeczy nie spadna tutaj.
	AI_Output(hero, self, "Info_Mod_Greg_Sweetwater_15_09"); //Jack? Masz specjaliste.
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_10"); //Tak jest. Ale on sam nie ma szans, mówi.
	AI_Output(hero, self, "Info_Mod_Greg_Sweetwater_15_11"); //Wszystkie sluszne, wszystkie sluszne. Porozmawiam z nim.
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_12"); //Wtedy to dobrze.

	B_LogEntry	(TOPIC_MOD_JG_SWEETWATER, "plaga aligatorów w kotlinie dolinowej, zbiornik slodkowodny..... Zobaczmy, co mówi Alligator Jack.");

	B_StartOtherRoutine	(Mod_928_PIR_AlligatorJack_AW, "PRESTART");
};

INSTANCE Info_Mod_Greg_Irdorath (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Irdorath_Condition;
	information	= Info_Mod_Greg_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zamierzam odbyc wycieczke przez szerokie morze.";
};

FUNC INT Info_Mod_Greg_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath))
	&& (Mod_Irdorath == 0)
	&& (Piraten_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Irdorath_15_00"); //Zamierzam odbyc wycieczke przez szerokie morze.
	AI_Output(hero, self, "Info_Mod_Greg_Irdorath_15_01"); //Ale do tego potrzebny jest mi kapitan, który jest w stanie wyciagnac statek Paladyn z portu......
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_02"); //Czy chcesz, abym udal sie do portu morskiego i statku Paladynów?
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_03"); //Jestes przy mnie dobry, wiec moge sie zwrócic do córek królewskich.
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_04"); //Nah, chlopiec, jesli chce ustapic, to na pewno nie z lina wokól szyi i bezgraniczna glupota......
	AI_Output(hero, self, "Info_Mod_Greg_Irdorath_15_05"); //Zbyt przykry Potem musze znalezc innego kapitana, który przewiezie mnie na te zlowieszcza wyspe....
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_06"); //Jaka wyspa?
	AI_Output(hero, self, "Info_Mod_Greg_Irdorath_15_07"); //Wyspa, na której czaja sie potezne slugusy maga Xeresa.
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_08"); //(do siebie) Tjo, moze jest cos do podniesienia. Jak wszyscy wiemy, biedni przelykacze nigdy nie sa magami....
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_09"); //(znów bohaterowi) No cóz, min mlody, nie moge pozwolic sie zobaczyc w miescie, ale moze uda ci sie przekonac moje najlepsze kosci bojowników, aby przyszli ze mna.
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_10"); //Nie chce, aby zawiodla z mojej winy.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Greg nie przyjedzie do miasta portowego, aby poprowadzic statek. Dal mi jednak wolnosc wziecia kosci, gdybym mógl go przekonac do przyjscia ze mna.");
};

INSTANCE Info_Mod_Greg_Schatzsuche (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Schatzsuche_Condition;
	information	= Info_Mod_Greg_Schatzsuche_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem skarby.";
};

FUNC INT Info_Mod_Greg_Schatzsuche_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Hi))
	&& (Npc_HasItems(hero, ItMi_Sextant_Greg) > 0)
	&& (Npc_HasItems(hero, ItMi_JeweleryChest_Greg) > 0)
	&& (Npc_HasItems(hero, ItMi_DarkPearl_Greg) > 0)
	&& (Npc_HasItems(hero, ItMw_Piratensaebel_Greg) > 0)
	&& (Npc_HasItems(hero, ItMi_RuneBlank_Greg) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Schatzsuche_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Schatzsuche_15_00"); //Znalazlem skarby.
	
	Npc_RemoveInvItems	(hero, ItMi_Sextant_Greg, 1);
	Npc_RemoveInvItems	(hero, ItMi_JeweleryChest_Greg, 1);
	Npc_RemoveInvItems	(hero, ItMi_DarkPearl_Greg, 1);
	Npc_RemoveInvItems	(hero, ItMw_Piratensaebel_Greg, 1);
	Npc_RemoveInvItems	(hero, ItMi_RuneBlank_Greg, 1);

	AI_Output(self, hero, "Info_Mod_Greg_Schatzsuche_01_01"); //Cóz, wydaje Ci sie, ze czegos potrzebujesz!

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		AI_Output(self, hero, "Info_Mod_Greg_Schatzsuche_01_02"); //Jesli chcesz, mozesz teraz stac sie prawdziwym zeglarzem.
	}
	else 
	{
		AI_Output(self, hero, "Info_Mod_Greg_Schatzsuche_01_03"); //Niestety, dolaczyles do zbyt wielu spolecznosci.
	};

	B_Göttergefallen(2, 1);

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_GREG_AUFNAHME, LOG_SUCCESS);
};

INSTANCE Info_Mod_Greg_Aufnahme (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Aufnahme_Condition;
	information	= Info_Mod_Greg_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce byc piratem.";
};

FUNC INT Info_Mod_Greg_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Schatzsuche))
	&& (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Aufnahme_15_00"); //Chce byc piratem.
	AI_Output(self, hero, "Info_Mod_Greg_Aufnahme_01_01"); //Potem dostajcie troche przyzwoitych ubran i dostajcie sie do pracy.

	CreateInvItems	(self, ITAR_PIR_L_Addon, 1);
	B_GiveInvItems	(self, hero, ITAR_PIR_L_Addon, 1);

	AI_Output(hero, self, "Info_Mod_Greg_Aufnahme_15_02"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Greg_Aufnahme_01_03"); //Najpierw musisz znalezc druzyne, a potem zobaczymy.

	Mod_AnzahlNebengilden += 1;

	Piraten_Dabei = 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_69);

	B_GivePlayerXP	(400);

	B_Göttergefallen(2, 2);

	AI_Output(hero, self, "Info_Mod_Greg_Aufnahme_15_05"); //Oko, oko, oko, kapitan.

	Log_CreateTopic	(TOPIC_MOD_PIRATEN_ENTERTRUPP, LOG_MISSION);
	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_ENTERTRUPP, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_NEBENGILDEN, TOPIC_MOD_PIRATEN_ENTERTRUPP, "Jestem teraz prawdziwym piratem.", "Greg mówi, ze powinienem najpierw dolaczyc do oddzialu.");
};

INSTANCE Info_Mod_Greg_WasJetzt (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_WasJetzt_Condition;
	information	= Info_Mod_Greg_WasJetzt_Info;
	permanent	= 1;
	important	= 0;
	description	= "Co mam teraz zrobic?";
};

FUNC INT Info_Mod_Greg_WasJetzt_Condition()
{
	if (Mod_InEntertrupp == 1)
	&& (Kapitel == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_WasJetzt_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_WasJetzt_15_00"); //Co mam teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Greg_WasJetzt_01_01"); //W tej chwili nie mam nic do zrobienia.
	AI_Output(self, hero, "Info_Mod_Greg_WasJetzt_01_02"); //Jestem pewien, ze masz inne rzeczy do zrobienia.
	AI_Output(hero, self, "Info_Mod_Greg_WasJetzt_15_03"); //Mozna to powiedziec jeszcze raz. Do zobaczenia pózniej.

	Npc_ExchangeRoutine	(Mod_940_PIR_Samuel_AW, "START");
};

INSTANCE Info_Mod_Greg_Karte (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Karte_Condition;
	information	= Info_Mod_Greg_Karte_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_Karte_Condition()
{
	if (Mod_InEntertrupp == 1)
	&& (Kapitel > 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Karte_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_Karte_01_00"); //Hej, dobra od ciebie przyjsc.
	AI_Output(self, hero, "Info_Mod_Greg_Karte_01_01"); //Ta mapa zostala znaleziona przez jednego z chlopców Morgana w umytej butelce.
	AI_Output(self, hero, "Info_Mod_Greg_Karte_01_02"); //W katastrofie okretowej czlowiek pisze, ze zostal uwieziony na wyspie, gdzie zombie robily balagan i najwyrazniej strzegly ogromnego skarbu.
	AI_Output(self, hero, "Info_Mod_Greg_Karte_01_03"); //Mysle, ze powinnismy sie temu przyjrzec. Siedzcie tu zbyt dlugo i tak.
	AI_Output(self, hero, "Info_Mod_Greg_Karte_01_04"); //Pomozesz ludziom w przygotowaniach. Zapytaj mezczyzn.
	AI_Output(hero, self, "Info_Mod_Greg_Karte_15_05"); //Oko, oko, oko, kapitan.

	B_StartOtherRoutine	(Mod_940_PIR_Samuel_AW, "START");

	Log_CreateTopic	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, "Jeden z porywaczy Morgan znalazl mape. Ma mi pomóc przygotowac wszystko w obozie do polowania na skarb.");
};

INSTANCE Info_Mod_Greg_Aufgabe (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Aufgabe_Condition;
	information	= Info_Mod_Greg_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz dla mnie cos do zrobienia?";
};

FUNC INT Info_Mod_Greg_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Karte))
	&& (Mod_VorbereitungenFertig == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Aufgabe_15_00"); //Masz dla mnie cos do zrobienia?
	AI_Output(self, hero, "Info_Mod_Greg_Aufgabe_01_01"); //No cóz, móglbys wziac moja stara szable piratów, która przywiozles do kowala i naprawic.

	B_GiveInvItems	(self, hero, ItMw_Piratensaebel_Greg, 1);

	AI_Output(self, hero, "Info_Mod_Greg_Aufgabe_01_02"); //Ta stara zardzewiala stara rzecz sprawia, ze wygladam naprawde glupio. Tak spieszyc sie!
	AI_Output(hero, self, "Info_Mod_Greg_Aufgabe_15_03"); //Oko, oko, oko, kapitan.

	Log_CreateTopic	(TOPIC_MOD_GREG_ROST, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GREG_ROST, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GREG_ROST, "Mam naprawic stara szable pirata Greg' a w kuzni.");
};

INSTANCE Info_Mod_Greg_Saebel (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Saebel_Condition;
	information	= Info_Mod_Greg_Saebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wrócilem i cos ci przynióslam.";
};

FUNC INT Info_Mod_Greg_Saebel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bennet_Piraten))
	&& (Npc_HasItems(hero, ItMw_BennetGreg) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Saebel_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Saebel_15_00"); //Wrócilem i cos ci przynióslam.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_01"); //Mój szczytowy szabla?
	AI_Output(hero, self, "Info_Mod_Greg_Saebel_15_02"); //Nie, cos lepszego. Kowal Bennet chce utrzymac szable.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_03"); //Klabautermann! Spadek! Mój dziadek sam!
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_04"); //Nazywano go bukierem mórz.....
	AI_Output(hero, self, "Info_Mod_Greg_Saebel_15_05"); //Kowal dal mi za to ten miecz.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_06"); //Ten miecz pijal galon galon galon galon galon krwi!
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_07"); //Mój przodek umarl w grobie.... w morzu!
	AI_Output(hero, self, "Info_Mod_Greg_Saebel_15_08"); //Tutaj. Najpierw spójrz.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_09"); //Dusze wszystkich poleglych piratów przesladowaly mnie.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_10"); //Hm.... Pozwole sobie to zobaczyc.

	B_GiveInvItems	(hero, self, ItMw_BennetGreg, 1);

	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_11"); //Co to ma byc?

	AI_UnequipWeapons	(self);

	EquipWeapon	(self, ItMw_BennetGreg);

	AI_ReadyMeleeWeapon	(self);
	AI_PlayAni	(self, "T_1HSINSPECT");
	AI_RemoveWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_12"); //Dlaczego jest pomalowana na czarno? Ow! To jest tak gorace.
	AI_Output(hero, self, "Info_Mod_Greg_Saebel_15_13"); //Trzy razy ostrzejsze niz jakiekolwiek ostrze i dwa razy bardziej stabilne. Calkowicie nowy material, mówi Bennet.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_14"); //Musze sie przekonac. Jade do kosci, aby sprawdzic ostrze.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_15"); //Jesli materialy eksploatacyjne sa zaladowane, nalezy opuscic menu.
	AI_Output(hero, self, "Info_Mod_Greg_Saebel_15_16"); //Oko, panie posle.

	B_SetTopicStatus	(TOPIC_MOD_GREG_ROST, LOG_SUCCESS);

	Mod_PiratenVorbereitungen += 1;

	B_GivePlayerXP	(200);

	B_Göttergefallen(2, 1);

	B_LogEntry	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, "Teraz powinienem sprawdzic z Skipem, czy wszystko jest na pokladzie.");

	B_StartOtherRoutine	(self, "TRAINING");
};

INSTANCE Info_Mod_Greg_Bill (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Bill_Condition;
	information	= Info_Mod_Greg_Bill_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bill próbowal sabotowac polowanie na skarb.";
};

FUNC INT Info_Mod_Greg_Bill_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bill_Rezept))
	&& (Mod_BillsVerbrechenPetzen == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Bill_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Bill_15_00"); //Bill próbowal sabotowac polowanie na skarb.
	AI_Output(self, hero, "Info_Mod_Greg_Bill_01_01"); //Co sprawia, ze myslisz o tym?
	AI_Output(hero, self, "Info_Mod_Greg_Bill_15_02"); //Ta uwaga tak brzmi. Dostalem notatke od alchemika z Khorinisa.

	B_GiveInvItems	(hero, self, Mod_BillsRumRezept, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Greg_Bill_01_03"); //Wlasciwie. Odczekaj minute, bedzie ranny. Dobrze zrobione, min mlode!

	B_GivePlayerXP	(200);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Greg_Vorbereitungen (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Vorbereitungen_Condition;
	information	= Info_Mod_Greg_Vorbereitungen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy mozemy zaczac dzialac?";
};

FUNC INT Info_Mod_Greg_Vorbereitungen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Karte))
	&& (Mod_VorbereitungenFertig == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Vorbereitungen_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Vorbereitungen_15_00"); //Czy mozemy zaczac dzialac?

	if (Mod_PiratenVorbereitungen > 5)
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Josephina_Hi))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Greg_AJAlive4))
		{
			AI_Output(self, hero, "Info_Mod_Greg_Vorbereitungen_01_03"); //Nie, teraz nie jest najlepszy czas.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Greg_Vorbereitungen_01_01"); //Tak, przygotowania zostaly poczynione. Jestesmy gotowi do wyjazdu.
	
			Mod_VorbereitungenFertig = 1;

			B_LogEntry	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, "Poczyniono przygotowania i mozna rozpoczac polowanie na skarb.");

			B_Göttergefallen(2, 1);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Greg_Vorbereitungen_01_02"); //Nie przeprowadzono jeszcze dostatecznej ilosci przygotowan, nadal trzeba troche pomóc.
	};
};

INSTANCE Info_Mod_Greg_GehtsLos (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_GehtsLos_Condition;
	information	= Info_Mod_Greg_GehtsLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy mozemy wyjechac teraz?";
};

FUNC INT Info_Mod_Greg_GehtsLos_Condition()
{
	if (Mod_VorbereitungenFertig == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_GehtsLos_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_GehtsLos_15_00"); //Czy mozemy wyjechac teraz? Poza zaloga, wszystko jest na pokladzie.
	AI_Output(self, hero, "Info_Mod_Greg_GehtsLos_01_01"); //Jo, jak do tej pory wszystko jest robione. Upewnij sie, ze nie potrzebujesz niczego wiecej z tego miejsca po naszym wyjezdzie, nie wrócimy tak szybko.

	Info_ClearChoices	(Info_Mod_Greg_GehtsLos);

	Info_AddChoice	(Info_Mod_Greg_GehtsLos, "Jest cos, co musze zrobic.", Info_Mod_Greg_GehtsLos_Nein);
	Info_AddChoice	(Info_Mod_Greg_GehtsLos, "Jestem gotowy.", Info_Mod_Greg_GehtsLos_Ja);
};

FUNC VOID Info_Mod_Greg_GehtsLos_Nein ()
{
	AI_Output(hero, self, "Info_Mod_Greg_GehtsLos_Nein_15_00"); //Jest cos, co musze zrobic.
	AI_Output(self, hero, "Info_Mod_Greg_GehtsLos_Nein_01_01"); //Wszystko w porzadku, przyjdz jak tylko bedziesz gotowy.

	Info_ClearChoices	(Info_Mod_Greg_GehtsLos);
};

FUNC VOID Info_Mod_Greg_GehtsLos_Ja ()
{
	AI_Output(hero, self, "Info_Mod_Greg_GehtsLos_Ja_15_00"); //Jestem gotowy.
	AI_Output(self, hero, "Info_Mod_Greg_GehtsLos_Ja_01_01"); //I tu idziemy.

	Mod_VorbereitungenFertig = 2;

	Info_ClearChoices	(Info_Mod_Greg_GehtsLos);

	Info_AddChoice	(Info_Mod_Greg_GehtsLos, "Idzmy!", Info_Mod_Greg_GehtsLos_Los);
};

FUNC VOID Info_Mod_Greg_GehtsLos_Los ()
{
	Info_ClearChoices	(Info_Mod_Greg_GehtsLos);
	
	AI_StopProcessInfos	(self);

	Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

	B_StartOtherRoutine	(self, "PLAUDERN");
};

INSTANCE Info_Mod_Greg_Kompass (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Kompass_Condition;
	information	= Info_Mod_Greg_Kompass_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto kompas.";
};

FUNC INT Info_Mod_Greg_Kompass_Condition()
{
	if (Mod_VorbereitungenFertig == 4)
	&& (Npc_HasItems(hero, ItMi_Kompass) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Kompass_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_00"); //Oto kompas.

	B_GiveInvItems	(hero, self, ItMi_Kompass, 1);

	AI_Output(self, hero, "Info_Mod_Greg_Kompass_01_01"); //Dobre. Ale nadal mamy problem.
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_02"); //I co by to bylo?
	AI_Output(self, hero, "Info_Mod_Greg_Kompass_01_03"); //Czy czules sie jak najmniejszy powiew?
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_04"); //Wlasciwie nie.
	AI_Output(self, hero, "Info_Mod_Greg_Kompass_01_05"); //I czy mamy kuchnie, gdzie niewolnicy wioslowi napedzaja statek naprzód?
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_06"); //Tak naprawde nie.
	AI_Output(self, hero, "Info_Mod_Greg_Kompass_01_07"); //Czego wiec jeszcze potrzebujemy?
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_08"); //Sztywna bryza od poludniowego zachodu?
	AI_Output(self, hero, "Info_Mod_Greg_Kompass_01_09"); //Dokladnie! Dopóki nie wysycha, nie mozemy przeciekac.
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_10"); //Co to znaczy?
	AI_Output(self, hero, "Info_Mod_Greg_Kompass_01_11"); //Wyjezdzasz. Wróc do domu, jesli jest naprawde wietrznie.
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_12"); //Jesli tak powiesz. Do zobaczenia dookola.

	//Mod_VorbereitungenFertig = 5;

	B_SetTopicStatus	(TOPIC_MOD_GREG_KOMPASS, LOG_SUCCESS);
	B_LogEntry	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, "Niestety, juz teraz jestesmy w doldrumach, wiec nie mozemy jeszcze zaczac polowania na skarb. Mam wrócic pózniej.");
};

INSTANCE Info_Mod_Greg_Schatzaufteilung (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Schatzaufteilung_Condition;
	information	= Info_Mod_Greg_Schatzaufteilung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_Schatzaufteilung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skip_Schatzaufteilung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Schatzaufteilung_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_01_00"); //W rzeczywistosci jestes wciaz zywy! Nie sadzilem, aby ktokolwiek mógl przezyc taki cios siekiera!
	AI_Output(hero, self, "Info_Mod_Greg_Schatzaufteilung_15_01"); //Chyba mialem szczescie. Nic nie pamietam.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_01_02"); //Jo! Podczas przeprawy zostalismy zaatakowani przez orkiestrowa kuchnie. Oni potajemnie wyprowadzili cie na zewnatrz podczas snu.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_01_03"); //Byl to potezny cios, bowiem byl tak glosny, ze odnotowalismy iz zwierzeta te wsiadaly na nasz statek.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_01_04"); //Potem walczylismy z nimi z powrotem. Ale do niedawna byles nieprzytomny.
	AI_Output(hero, self, "Info_Mod_Greg_Schatzaufteilung_15_05"); //A co z skarbem?
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_01_06"); //Co jest z tym nie tak? Nikt go nie dotknal. Mimo ze pozwolilem na to! Wszyscy chcieli na ciebie czekac.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_01_07"); //Mozesz wiec wybrac swoja czesc!

	Info_ClearChoices	(Info_Mod_Greg_Schatzaufteilung);

	Info_AddChoice	(Info_Mod_Greg_Schatzaufteilung, "eliksir równowagi", Info_Mod_Greg_Schatzaufteilung_Trank);
	Info_AddChoice	(Info_Mod_Greg_Schatzaufteilung, "10. zloto", Info_Mod_Greg_Schatzaufteilung_Gold);
};

FUNC VOID Info_Mod_Greg_Schatzaufteilung_Trank ()
{
	AI_Output(hero, self, "Info_Mod_Greg_Schatzaufteilung_Trank_15_00"); //Wezmiemy eliksir.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_Trank_01_01"); //Musi to byc dobry wybór. Nie wiemy, co ona robi.
	AI_Output(hero, self, "Info_Mod_Greg_Schatzaufteilung_Trank_15_02"); //Gdzie go Pan dostal?
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_Trank_01_03"); //Lezal w wraku statku. Podczas zwiedzania wyspy Skip badal zatoke statku.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_Trank_01_04"); //Potknal sie na eliksir i przyniósl go razem z nim.

	B_GiveInvItems	(self, hero, ItPo_Piratentrank, 1);

	Info_ClearChoices	(Info_Mod_Greg_Schatzaufteilung);
};

FUNC VOID Info_Mod_Greg_Schatzaufteilung_Gold ()
{
	AI_Output(hero, self, "Info_Mod_Greg_Schatzaufteilung_Gold_15_00"); //Bede bral zloto.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_Gold_01_01"); //Dobrze, oto Twoje zloto.

	B_GiveInvItems	(self, hero, ItMi_Gold, 10000);

	Info_ClearChoices	(Info_Mod_Greg_Schatzaufteilung);
};

INSTANCE Info_Mod_Greg_Befreiung (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Befreiung_Condition;
	information	= Info_Mod_Greg_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Musze z panstwem porozmawiac.";
};

FUNC INT Info_Mod_Greg_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_AW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung_15_00"); //Musze z panstwem porozmawiac.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung_01_01"); //Czego od mnie oczekujesz? Czy nie widzisz, ze chce pozostac niezaklócony?
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung_15_02"); //Nie ma to znaczenia, przepraszam!
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung_01_03"); //Co uwazasz, ze robisz, to co robisz!
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung_15_04"); //Teraz wazniejsze jest, aby najpierw zatrzymac straznika Innosa, zanim wszystko pójdzie w dól odplywu!
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung_01_05"); //(sighs) Wszystko w porzadku. Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung_15_06"); //Myxir powiedzial mi, ze masz plany uwolnienia Jharkendala od tego zla.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung_01_07"); //Czyz nie? Cóz, prosze pozwolic mi powiedziec cos najpierw. Zanim bedziemy mogli nawet pomyslec o cokolwiek zrobic, musimy upewnic sie, ze wszystko jest w porzadku!
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung_15_08"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung_01_09"); //Rozejrzyj sie dookola. Od czasu zaatakowania nas przez zombie wydarzylo sie wiele rzeczy. Najpierw musimy przygotowac sie!
};

INSTANCE Info_Mod_Greg_Befreiung2 (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Befreiung2_Condition;
	information	= Info_Mod_Greg_Befreiung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co moge zrobic?";
};

FUNC INT Info_Mod_Greg_Befreiung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Befreiung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Befreiung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung2_15_00"); //Co moge zrobic?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung2_01_01"); //Powinienes udac sie do wszystkich moich chlopców i sprawdzic, czy mozesz pomóc im w rozwiazywaniu ich problemów, poniewaz nie mamy nic innego do zgloszenia.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung2_01_02"); //Pomóz co najmniej osmiu z nich.
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung2_15_03"); //Co to dla mnie jest?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung2_01_04"); //To sie nie moze zdarzyc! Chcesz zaplacic za pomoc?
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung2_15_05"); //(sighs) No cóz, wtedy bede....
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung2_01_06"); //Przykry, dobry! Otrzymujesz po tym 500 zlotych monet. Uzgodniony?
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung2_15_07"); //Okay.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung2_01_08"); //Nastepnie rozpocznij prace!

	Log_CreateTopic	(TOPIC_MOD_BEL_PIRATENLAGER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRATENLAGER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_PIRATENLAGER, "Zanim rozpocznie sie operacja wyzwolenia piratów, obóz musi zostac przywrócony do formy. Greg chce, abym pomógl co najmniej osmiu jego mieszkancom.");
};

INSTANCE Info_Mod_Greg_Befreiung3 (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Befreiung3_Condition;
	information	= Info_Mod_Greg_Befreiung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zrealizowalem rozkaz i ponownie ruszylem do obozu.";
};

FUNC INT Info_Mod_Greg_Befreiung3_Condition()
{
	if (Mod_Piratenbefreiung == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Befreiung3_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung3_15_00"); //Zrealizowalem rozkaz i ponownie ruszylem do obozu.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_01"); //Bardzo dobry, chlopiec. Wtedy byc moze pewnego dnia bedziemy mogli mimo wszystko wybuchnac.
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung3_15_02"); //A co z moim zlotem?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_03"); //Oh, tak, tak.... Wszystko w porzadku, oto 500 zlotych monet.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_04"); //Mniej bym mu zaproponowal.
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung3_15_05"); //Jak wiec postepujemy? Otwórz zamkniete palisady i kopac maty najezdzców?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_06"); //Cóz, uh, ne, ne, mei mlode, nie bedzie tak proste.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_07"); //Chlopcy, z którymi mamy tu do czynienia, sa z bardzo zlego strzalu.
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung3_15_08"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_09"); //Cóz, mówie o trzech nieumarlych wysokich kaplanach przed palisada.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_10"); //Dranie stoi wokól jakiejs magicznej rzeczy, która chroni je i daje im niesamowita magiczna moc.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_11"); //Czarny magik, który cie tutaj przywiózl, próbowal sie kilkakrotnie teleportowac, ale nie powiodla sie kazda próba.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_12"); //Musi nawet wyslac nieumarlego sluge, aby poprosil o pomoc.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_13"); //Te trzy dranie w mgnieniu oka teleportowaly sie do niego i uczynily go wszystkim.
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung3_15_14"); //Co mozemy zrobic?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_15"); //Jeszcze nie wiem. Powinien istniec sposób, aby ich trójka byla bliska i osobista tej magicznej rzeczy. Rozproszenie uwagi....

	AI_Teleport	(Mod_939_PIR_Owen_AW,	"WP_BLA_PIR_01");
	B_StartOtherRoutine	(Mod_939_PIR_Owen_AW, "GREG");

	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRATENLAGER, LOG_SUCCESS);
	B_LogEntry	(TOPIC_MOD_BEL_BEFREIUNG, "Przed obozem znajduje sie trzech nieumarlych wysokich kaplanów wokól magicznego artefaktu, który chroni ich i daje im wielka moc. Szybko doganiaja kazdego uciekiniera za pomoca teleportu, a takze zapobiegaja wykorzystywaniu magii teleportowej w magazynie.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PLAUDERN");
};

INSTANCE Info_Mod_Greg_ArtefaktAttacke (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_ArtefaktAttacke_Condition;
	information	= Info_Mod_Greg_ArtefaktAttacke_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_ArtefaktAttacke_Condition()
{
	if (Mod_BEL_GregOwen == 2)
	&& (Npc_GetDistToWP(self, "ADW_PIRATECAMP_WAY_02") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_ArtefaktAttacke_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_ArtefaktAttacke_01_00"); //Chodzcie, mezczyzni, to dobry czas.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_1079_PIR_PIRAT_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_1078_PIR_PIRAT_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_1077_PIR_PIRAT_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_963_PIR_Malcom_NW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_941_PIR_Angus_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_942_PIR_Hank_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_939_PIR_Owen_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_940_PIR_Samuel_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_936_PIR_Matt_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_938_PIR_Morgan_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_1080_PIR_PIRAT_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_935_PIR_Malcom_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_933_PIR_Garett_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_934_PIR_Henry_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_932_PIR_Francis_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_930_PIR_Bones_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_931_PIR_Brandon_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_775_PIR_Skip_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_929_PIR_Bill_AW, "ARTEFAKT");
};

INSTANCE Info_Mod_Greg_ArtefaktTot (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_ArtefaktTot_Condition;
	information	= Info_Mod_Greg_ArtefaktTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_ArtefaktTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_ArtefaktAttacke))
	&& (Npc_GetDistToWP(self, "ADW_PIRATECAMP_WAY_06") < 1000)
	&& (Npc_IsDead(Mod_7300_Artefakt_AW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_ArtefaktTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_ArtefaktTot_01_00"); //Cóz, tak sie stalo. Zalatwilibysmy nieumarlym bastardom powazny cios.
	AI_Output(hero, self, "Info_Mod_Greg_ArtefaktTot_15_01"); //Tak, ale zagrozenie nie zostalo jeszcze zazegnane. Musimy zabic orki w kanionie, aby...
	AI_Output(self, hero, "Info_Mod_Greg_ArtefaktTot_01_02"); //... i opuscic obóz bez ochrony w tym czasie? Nie, zajmiemy to stanowisko przez pewien czas i bedziemy czekac, aby zobaczyc, co sie zmienia.
	AI_Output(self, hero, "Info_Mod_Greg_ArtefaktTot_01_03"); //Poza tym bedziemy musieli poczekac i zobaczyc, czy Owen nie wróci. Stracilismy juz dobrego czlowieka.
	AI_Output(self, hero, "Info_Mod_Greg_ArtefaktTot_01_04"); //Tak dlugo, jak on jeszcze zyje, bedziemy na niego czekac.
	AI_Output(hero, self, "Info_Mod_Greg_ArtefaktTot_15_05"); //Ale....
	AI_Output(self, hero, "Info_Mod_Greg_ArtefaktTot_01_06"); //Nie, min mlode, jesli chcesz uczyc sie wiecej jezyków, musisz to robic samodzielnie. Do zobaczenia dookola.

	B_SetTopicStatus	(TOPIC_MOD_BEL_BEFREIUNG, LOG_SUCCESS);

	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "Zabójcy zostaja zniszczeni. Teraz moge udac sie do biblioteki w kanionie, aby szukac wskazówek do miecza.");
	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "Niestety, piraci nie beda zmotywowani do przyjscia. Czy musze znów samemu sie przebrnac?");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1079_PIR_PIRAT_AW, "START");
	B_StartOtherRoutine	(Mod_1078_PIR_PIRAT_AW, "START");
	B_StartOtherRoutine	(Mod_1077_PIR_PIRAT_AW, "START");
	B_StartOtherRoutine	(Mod_963_PIR_Malcom_NW, "START");
	B_StartOtherRoutine	(Mod_941_PIR_Angus_AW, "START");
	B_StartOtherRoutine	(Mod_942_PIR_Hank_AW, "START");
	B_StartOtherRoutine	(Mod_939_PIR_Owen_AW, "START");
	B_StartOtherRoutine	(Mod_940_PIR_Samuel_AW, "START");
	B_StartOtherRoutine	(Mod_936_PIR_Matt_AW, "START");
	B_StartOtherRoutine	(Mod_938_PIR_Morgan_AW, "START");
	B_StartOtherRoutine	(Mod_1080_PIR_PIRAT_AW, "START");
	B_StartOtherRoutine	(Mod_935_PIR_Malcom_AW, "START");
	B_StartOtherRoutine	(Mod_933_PIR_Garett_AW, "START");
	B_StartOtherRoutine	(Mod_934_PIR_Henry_AW, "START");
	B_StartOtherRoutine	(Mod_932_PIR_Francis_AW, "START");
	B_StartOtherRoutine	(Mod_930_PIR_Bones_AW, "START");
	B_StartOtherRoutine	(Mod_931_PIR_Brandon_AW, "START");
	B_StartOtherRoutine	(Mod_775_PIR_Skip_AW, "START");
	B_StartOtherRoutine	(Mod_929_PIR_Bill_AW, "START");

	B_StartOtherRoutine	(GardeInnos_4099_Josephina, "BIB");

	CreateInvItems	(hero, ITKE_CANYONLIBRARY_HIERARCHY_BOOKS_ADDON, 1);
};

INSTANCE Info_Mod_Greg_Beerdigung (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Beerdigung_Condition;
	information	= Info_Mod_Greg_Beerdigung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_Beerdigung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Owen_Beerdigung))
	&& (Npc_HasItems(hero, ItMi_WaterOfLife) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Beerdigung_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_00"); //Ach, chlopiec, ty tez wracasz. Jestes na czasie.
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_01"); //Grzebalismy Alligatora Jacka z niektórymi jego dobytkami i mówimy marynarzowi modlitwe za niego..... Bo przeciez my, chlopcy, bylismy razem.
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_02"); //Otóz trzeba bedzie czesciej doswiadczac strat czlowieka i materialu jako pirata......
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_03"); //Zastanawiam sie tylko, co sie stalo z tymi draniemi, którzy to wszystko spowodowali.
	AI_Output(hero, self, "Info_Mod_Greg_Beerdigung_15_04"); //Otrzymali sprawiedliwa kare i nigdy wiecej nie spowoduja konfliktów.
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_05"); //(zaskoczony) Tak? Nie mów mi.... I jestem pewien, ze masz swój udzial. To jest warte tysiac zlotych monet do mnie, wlasnie tutaj.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_06"); //Tjo, wiec jego smierc otrzyma przynajmniej zemsty.... nawet jesli nie da sie jej cofnac......
	AI_Output(hero, self, "Info_Mod_Greg_Beerdigung_15_07"); //Hmm, nie bylbym pewny....
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_08"); //Jak? Naprawde nie sadze, by nadszedl czas na zarty.
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_09"); //I w obozie tez nie mozemy nieumarlych miec w obozie.
	AI_Output(hero, self, "Info_Mod_Greg_Beerdigung_15_10"); //Nie, wygladac......

	B_SetTopicStatus	(TOPIC_MOD_BEL_INNOSSCHWERT, LOG_SUCCESS);

	Npc_RemoveInvItems	(hero, ItMi_WaterOfLife, 1);

	AI_GotoWP	(hero, "ADW_PIRATECAMP_TRAIN_01");
	AI_PlayAni	(hero, "T_PLUNDER");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Greg_AJAlive (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_AJAlive_Condition;
	information	= Info_Mod_Greg_AJAlive_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_AJAlive_Condition()
{
	if (Mod_BEL_AJ == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_AJAlive_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_AJAlive_01_00"); //Yo, potz tysiac, tam promien mi kiwa....

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Greg_AJAlive2 (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_AJAlive2_Condition;
	information	= Info_Mod_Greg_AJAlive2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_AJAlive2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlligatorJack_Beerdigung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_AJAlive2_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_AJAlive2_01_00"); //No cóz, najpierw lyk zalatwiania marynarzy. Dzis wieczorem odbedzie sie uroczystosc.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Greg_AJAlive3 (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_AJAlive3_Condition;
	information	= Info_Mod_Greg_AJAlive3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_AJAlive3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bones_Beerdigung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_AJAlive3_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_AJAlive3_01_00"); //....

	AI_TurnToNpc	(self, Rabbit);

	B_GivePlayerXP	(2000);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Greg_AJAlive4 (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_AJAlive4_Condition;
	information	= Info_Mod_Greg_AJAlive4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_AJAlive4_Condition()
{
	if (Mod_BEL_AJ == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_AJAlive4_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_AJAlive4_01_00"); //Chlopak, zrobiles bardzo duzo dla naszego obozu. Zloto prawie nie jest w stanie przewazyc.
	AI_Output(self, hero, "Info_Mod_Greg_AJAlive4_01_01"); //Dlatego chce, abys mial mój najlepszy kawalek: czapke piratowa Blackbarts. Z nosic go dumnie.

	B_ShowGivenThings	("Pobierz paski czarno-biale Piraty Hat");

	CreateInvItems	(hero, ItAr_Piratenhut, 1);

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Greg_AJAlive4_15_02"); //Swietny, to stary szarpany kapelusz.

	B_GivePlayerXP	(2000);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Greg_Todesangst (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Todesangst_Condition;
	information	= Info_Mod_Greg_Todesangst_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_Todesangst_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Todesangst2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Todesangst_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_00"); //Co robisz? Powiedzialem, ze nikt inny w magazynie nie jest obcy.
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_01"); //Spokojny, spokojny! Znasz mnie, czy nie? Poza tym Jack mnie pilnuje.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_02"); //A zatem wszystko w porzadku. Juz nam Pan pomógl. Dlaczego tu jestes?
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_03"); //Najpierw chcialbym wiedziec, co jest z toba zle.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_04"); //Co jest dla mnie najwazniejsze? Jestem w niebezpieczenstwie smierci! To wlasnie sie dzieje!
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_05"); //Czy sam sie zatrules? Znam dobrego uzdrowiciela.....
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_06"); //Pewnego dnia przybyl tu kiedys dziwny staruszek.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_07"); //Potrafi spojrzec w przyszlosc, mówi i powiedzial mi, ze wkrótce zostane zamordowany.
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_08"); //ha ha ha ha ha ha ha ha ha. Mówia, ze marynarze sa przesadni. Klabautermann i rzeczy. Ale cos takiego jak.... Nawiasem mówiac, oznacza to proroctwo.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_09"); //Po prostu mnie to nie obchodzi. Przynajmniej wierze mu. Nie ufaj juz moim wlasnym ludziom.
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_10"); //To zle. Byc moze powinienes pójsc do klasztoru, dopóki nie skonczy sie niebezpieczenstwo.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_11"); //Zatrzymajmy sie! Sa najwieksi hipokryci i zabójcy.
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_12"); //Zbyt zle. Mialem zamiar zaproponowac dzialalnosc biznesowa w Waszym zyciu.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_13"); //Byloby tak? Oprocentowanie....
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_14"); //Znam grupe ludzi, jak 20 mezczyzn, którzy chca pojechac na kontynent....
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_15"); //Czy nie masz zamiaru? 20 nieznajomych obok mnie! Moge sie utopic juz teraz.
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_16"); //... cena przejazdu jest nieistotna. Mozesz zapytac o wszystko, co chcesz.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_17"); //Dobrze mi brzmi. Ale nie, nawet jesli przetrwam podróz, to sa okrety lojalnosci Króla, które przekraczaja wybrzeze i byc moze nadal sa okretami orkiestrowymi. Nie. Calkowicie niemozliwe.
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_18"); //Zbyt zle. Wracam i bede sie raportowal. Uwazaj na plecy!
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_19"); //Co masz na mysli?
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_20"); //Bez powodu.

	B_GivePlayerXP	(300);

	B_StartOtherRoutine	(Mod_928_PIR_AlligatorJack_AW,	"START");

	B_SetTopicStatus	(TOPIC_MOD_ASS_TODESANGST, LOG_SUCCESS);

	B_LogEntry	(TOPIC_MOD_ASS_HEIMWEH, "Niewiarygodny! Kapitan tak naprawde wierzy w to, ze szmatka, która chodzil. Powiedzcie, ze nie smieje sie! Moze to byc tylko pustelnik od doliny. Zastanawiam sie, po co to bylo. W kazdym razie musze to zglosic. To nie spodoba sie radzie....");
};

INSTANCE Info_Mod_Greg_Sumpfmensch (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Sumpfmensch_Condition;
	information	= Info_Mod_Greg_Sumpfmensch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcialem zapytac o bylego pirata.";
};

FUNC INT Info_Mod_Greg_Sumpfmensch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fortuno_Sumpfmensch2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Sumpfmensch_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Sumpfmensch_15_00"); //Chcialem zapytac o bylego pirata.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_01"); //Dawniej pirat? Nie ma czegos takiego! Kiedys pirat, zawsze piracki, to jest motto!
	AI_Output(hero, self, "Info_Mod_Greg_Sumpfmensch_15_02"); //To Darrion.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_03"); //WAS?! Ten syn sukaniny? Nie mów mi, ze stary bastard wciaz zyje!
	AI_Output(hero, self, "Info_Mod_Greg_Sumpfmensch_15_04"); //W miedzyczasie dolaczyl do spolecznosci bagiennej i do niedawna prowadzil tam spokojne zycie.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_05"); //Wiec odszedl na emeryture? Zebym mógl to zobaczyc.
	AI_Output(hero, self, "Info_Mod_Greg_Sumpfmensch_15_06"); //Ostatnio nie mial tego ciszy. Ostatnio bal sie z bagnistym potworem, a to nie skonczylo mu sie dobrze. Nie obudzi sie tak szybko.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_07"); //Co powiedziales? Potwór, który moze przyjac dawnego Darriona? Czy w tym bagnie znajduje sie smok bogini lub co?
	AI_Output(hero, self, "Info_Mod_Greg_Sumpfmensch_15_08"); //Niezaleznie od tego, co jest niebezpieczne. I mysle, ze Darrion wie wiecej o potworze niz chcial powiedziec. Czy moze pan to zrozumiec?
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_09"); //Przykro mi, min. mlody, ale zawsze pozostawalam poza jego dzialalnoscia.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_10"); //Darrion i ja bylismy dwoma liderami eskadry Enter pod kierownictwem naszego poprzedniego kapitana. Kiedy mnie mianowal swoim nastepca, Darrion przychodzil do nas tylko sporadycznie.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_11"); //Wiekszosc czasu spedzil przy starej wiezy w poblizu obozu. Po prostu zatrzymal sie raz na jakis czas, aby cos zrobic i czasami pic nowych przybyszów pod stolem!
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_12"); //Porozmawiaj z Skipem, który moze miec dla Ciebie jakies informacje.
	AI_Output(hero, self, "Info_Mod_Greg_Sumpfmensch_15_13"); //Wlasciwie, bede. Dzieki.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_14"); //Nie rzecz, min mlode!

	B_LogEntry	(TOPIC_MOD_SL_SUMPFMENSCH, "Greg powiedzial, ze Darrion spedzil duzo czasu na starej wiezy w poblizu obozu piratów. Pomin mi troche wiecej informacji.");
};

INSTANCE Info_Mod_Greg_Steg (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Steg_Condition;
	information	= Info_Mod_Greg_Steg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie jest ten nabrzeze?";
};

FUNC INT Info_Mod_Greg_Steg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Aufnahme))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Steg_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Steg_15_00"); //Gdzie jest ten nabrzeze?
	AI_Output(self, hero, "Info_Mod_Greg_Steg_01_01"); //Do jednego z naszych obozów zapasowych. Jesli obezwladniajacy przeciwnik atakuje z morza.
};

INSTANCE Info_Mod_Greg_Pickpocket (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Pickpocket_Condition;
	information	= Info_Mod_Greg_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Greg_Pickpocket_Condition()
{
	C_Beklauen	(150, ItFo_Addon_Rum, 7);
};

FUNC VOID Info_Mod_Greg_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Greg_Pickpocket);

	Info_AddChoice	(Info_Mod_Greg_Pickpocket, DIALOG_BACK, Info_Mod_Greg_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Greg_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Greg_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Greg_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Greg_Pickpocket);
};

FUNC VOID Info_Mod_Greg_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Greg_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Greg_Pickpocket);

		Info_AddChoice	(Info_Mod_Greg_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Greg_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Greg_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Greg_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Greg_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Greg_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Greg_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Greg_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Greg_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Greg_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Greg_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Greg_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Greg_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Greg_EXIT (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_EXIT_Condition;
	information	= Info_Mod_Greg_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Greg_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Greg_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
