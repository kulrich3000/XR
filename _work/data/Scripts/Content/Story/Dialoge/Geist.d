INSTANCE Info_Mod_Geist_EIS_Hi (C_INFO)
{
	npc		= Mod_7646_DMR_Geist_EIS;
	nr		= 1;
	condition	= Info_Mod_Geist_EIS_Hi_Condition;
	information	= Info_Mod_Geist_EIS_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Geist_EIS_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Geist_EIS_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_00"); //(kazdy dziwny dzwiek ducha)
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_01"); //Co, jak.....? Skad to sie bierze?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_02"); //Od mnie.....
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_03"); //A... Duch?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_04"); //Czlowiek. Ile eonów temu bylo, ze widzialem przed mna zywa istote?
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_05"); //Co.....? Kim jestes?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_06"); //l-- Jestem niespokojna dusza uwieziona w miejscu, gdzie kiedys oddalem zycie.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_07"); //Ale.... jak przyjsc? Dlaczego nie wszedles w zaswiatach, jak kazdy smiertelnik w tych dniach?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_08"); //Cóz, okolicznosci mojego przeznaczenia nie sa dla mnie do konca jasne, nawet jak dotad...... i uplynal juz dlugi czas.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_09"); //Byc moze magia tego miejsca odgrywa tu pewna role.... Jednak fakt, ze dusze innych istot i ludzi, którzy opuscili tu swoje zycie po mnie, nie sa juz wsród nas, mówi przeciwko temu.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_10"); //Potem jest mozliwe wyjasnienie, ale po tych latach wydaje sie coraz bardziej nieprawdopodobne......
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_11"); //Mówic.....
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_12"); //To obietnica, która zlozylem zanim skierowalem swoje kroki tutaj na ruine.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_13"); //Obietnica?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_14"); //Tak..... dopóki nie znajde brata.... lub jego smiertelna skorupa wkroczyla w królestwo ziemi.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_15"); //Ale.... co sie wtedy stalo? I jak dlugo jestes zwiazany z tym miejscem?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_16"); //Jak dlugo trwa? Czy sa to dziesieciolecia, czy nawet stulecia? To wszystko, co moge powiedziec.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_17"); //Bylem mlodym czlowiekiem w rozkwicie mojego zycia.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_18"); //Mój brat Strewak.... Byl mysliwym. Przez kilka dni przemierzal okolice Beute.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_19"); //Ale gdy tylko zostal dluzej niz zwykle i zaczelismy sie martwic.... Wiecej az wreszcie pojawil sie po wielu dniach.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_20"); //Ale on sie zmienil.... i podal ukryta liczbe.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_21"); //Postac zamaskowana?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_22"); //Tak, mój brat opowiedzial mi o tej liczbie. Mówi sie, ze ten wedrowiec dokonal pielgrzymki z zupelnie innego regionu ziemi az do tego miejsca.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_23"); //Bez watpienia zajelo mu to lata.... Wiecej gdyby Strewak nie tylko wyobrazal sobie cala rzecz.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_24"); //Pobierzcie? Dlaczego? I co tu robili pielgrzymi?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_25"); //No cóz, mój brat Strewak powiedzial mi wiele rzeczy, które wzbudzily we mnie watpliwosci, czy moze to byc prawda.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_26"); //Piechota ta szukala starozytnego miejsca kultu.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_27"); //Obiecal mojemu bratu wielka nagrode za prowadzenie go przez lodowisko.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_28"); //Mój brat zgodzil sie i wyjechali. Przez wiele dni jechali po drodze, az gdzies na pólnocy spotkali wieze.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_29"); //Mówi sie tam, ze wedrowiec zapalil morze ognia rekami w jednym zamachu, który odkryl przed soba lód, stopil sie i otworzyl dostep do wielkiej swiatyni.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_30"); //Weszli i powiedziano im, ze najpierw natkneli sie na gromade nieumarlych i demonicznych stworzen, które zakapturzone stworzenie pokonalo.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_31"); //Oni poszli dalej i doszli do przejscia pelnego plomieni.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_32"); //Teraz wedrowiec zwrócil sie do mojego brata i wreczyl mu jakies magiczne artefakty lub dokumenty, które powiedzial, ze juz ich nie potrzebuje.... dopóki oczy mojego brata nie przestana go sluchac.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_33"); //W tym momencie historii mój brat upadl.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_34"); //Slyszalem tylko, ze mówil cos o magicznie przekazanym mu jezyku i o najglebszej czesci magicznego mrozu, który mial dac mu dostep do niego.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_35"); //Polozylismy go spac, zeby mógl odpoczac. Nastepnego ranka jednak odszedl.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_36"); //Wiesniak nadal myslal, ze musi zobaczyc go na poludnie.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_37"); //Natychmiast odszedlem i obiecalem mojej matce, ze nie spocze, dopóki nie odnalazlem brata.... Wiecej albo - dodalem cicho, gdy sie odwrócilem - jego smiertelna skorupa weszla do królestwa ziemi.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_38"); //Poniewaz dobrze zdawalem sobie sprawe z niebezpieczenstw, które tam wystepowaly.....
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_39"); //O to wlasnie chodzi w tym wszystkim.... Ale co sie wtedy stalo?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_40"); //Cóz, nie ma juz duzo wiecej do przekazania. Slyszalem o tym magicznym miejscu na poludniowym zachodzie.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_41"); //To tam poszedlem..... i niech moje zycie poprowadza rece demona.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_42"); //Od tego czasu jestem przywiazany do tego miejsca.... i niestety nie wyglada na to, ze w dajacej sie przewidziec przyszlosci cos moze sie zmienic.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_43"); //Cóz, moglem rozejrzec sie dookola lub zapytac.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_44"); //Doceniam to. Jestem jednak pewien, ze nikt nie zyje z moich czasów.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_45"); //W dlugim okresie czasu i w ogromnej skali tego obszaru nie bedzie latwo znalezc wskazówki.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_46"); //A jednak.... Jednak twój wyglad budzi we mnie ponownie pewna nadzieje.....
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_47"); //Tak, zobaczmy. Jesli cos sie dowiem, to daje ci znac.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_48"); //Cóz, poniewaz mój los powinien cie nauczyc, nie jest to calkowicie nieszkodliwe.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_49"); //Wiec dbaj o siebie.... abysmy mogli znów spotkac sie na tym swiecie.

	Log_CreateTopic	(TOPIC_MOD_GEIST_BRUDER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GEIST_BRUDER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GEIST_BRUDER, "W jaskini kolo pustelnika spotkalem duch. Wydaje sie, ze od wieków jest zwiazany z tym miejscem. Mogloby sie to wiazac z obietnica, która kiedys dal: nie odpoczac, dopóki nie odnalazl swego brata Strewaka - lub gdy jego cialo powrócilo do lona ziemi. Niegdys poznal w przebraniu wedrowca, który przyjechal z daleka i szukal tu czegos. Strewak towarzyszyl mu do czasu, az spotkali kamienny krag na pólnocy, a pielgrzym magicznie odkryl swiatynie. Pózniej przeszedl przez przejscie pelne plomieni w srodku, a Strewak zostal i powrócil do krewnych we wsi. Zglosil cos o najglebszej czesci magicznego mrozu, który mial dac mu dostep i nastepnego ranka zniknal na zachód. Jego brat zlozyl obietnice i zmarl szukajac Strewaka. Zobacze, czy moge cos dowiedziec sie podczas moich dalszych poszukiwan w tym swiecie i pomóc Jego niespokojnemu duchowi, aby od dawna spózniony kontemplacja w zaswiatach.");
};

INSTANCE Info_Mod_Geist_EIS_Strewak (C_INFO)
{
	npc		= Mod_7646_DMR_Geist_EIS;
	nr		= 1;
	condition	= Info_Mod_Geist_EIS_Strewak_Condition;
	information	= Info_Mod_Geist_EIS_Strewak_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem twojego brata?";
};

FUNC INT Info_Mod_Geist_EIS_Strewak_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Geist_EIS_Hi))
	&& (Mod_Geist_EIS_Bruder == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Geist_EIS_Strewak_Info()
{
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_00"); //Znalazlem twojego brata?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_01"); //Jak to Pan mówi....? To brzmi niesamowicie. Mam nadzieje, ze nie chcesz mnie oszukiwac....
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_02"); //Ale mów tak, ale.... gdzie i w jakich okolicznosciach? Co sie z nim dzieje?
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_03"); //Niedawno poblogoslawil czas.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_04"); //Ale jego cialo znajdowalo sie w lodowatych szponach potwora, który uratowal go od rozkladu.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_05"); //Dlatego jego cialo nigdy nie przeszlo do królestwa ziemi.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_06"); //Najbardziej wewnetrzna czesc magicznego mrozu.... Oto, co on mial na mysli. .... chcialby wiedziec, czy.....
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_07"); //Tak?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_08"); //Nie, to nie jest konieczne. Czuje, ze mój duch stopniowo odchodzi od tego swiata. Wkrótce bede mógl sam zapytac mojego brata.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_09"); //Tak wiec wtedy byla to wlasciwie obietnica.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_10"); //Tak, z pewnoscia. l-- Ale jak moge wam podziekowac?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_11"); //a, magia miejsca, z którym jestem zwiazany tak dlugo, pozwole wam czesc tego miejsca przepuscic.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_12"); //l-- pozegnanie.

	B_SetTopicStatus	(TOPIC_MOD_GEIST_BRUDER, LOG_SUCCESS);

	B_GivePlayerXP	(2000);

	hero.attribute[ATR_MANA_MAX] += 10;
	hero.attribute[ATR_MANA] += 10;

	hero.protection[PROT_MAGIC] += 10;
	hero.protection[PROT_FIRE] += 5;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Geist_EIS_EXIT (C_INFO)
{
	npc		= Mod_7646_DMR_Geist_EIS;
	nr		= 1;
	condition	= Info_Mod_Geist_EIS_EXIT_Condition;
	information	= Info_Mod_Geist_EIS_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Geist_EIS_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Geist_EIS_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
