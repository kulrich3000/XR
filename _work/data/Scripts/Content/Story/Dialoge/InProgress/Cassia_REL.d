INSTANCE Info_Mod_Cassia_REL_VorTaverne (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_VorTaverne_Condition;
	information	= Info_Mod_Cassia_REL_VorTaverne_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_VorTaverne_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_InTaverne))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_VorTaverne_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_00"); //Panowie naprawde dobrze wywiazali sie z tego zadania. Ladny i przerazajacy.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_01"); //Mialo to w krótkim czasie rozprzestrzenic sie po calym miescie i zyskac szacunek dla budynku.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_VorTaverne_15_02"); //Wszystko slyszales? Wiec mozemy sie wprowadzic?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_03"); //Jeszcze nie calkiem.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_04"); //Browarnicy i mistrzowie piwowarów wkrótce dowiedza sie o plotkach i udaja sie do domu, aby zobaczyc dla siebie.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_05"); //Zaplacili juz pierwsza rate za dom.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_06"); //Tam bede czekal na nia przy przednim wejsciu i podaje histeryczna kobiete.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_07"); //W tym czasie bedziesz sie chwytac za i nad palnikiem i zapalic latarke w piwnicy od tylu.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_17_08"); //To powinno dac im reszte...... i jej klucz do budynku.

	B_GivePlayerXP	(150);

	Info_ClearChoices	(Info_Mod_Cassia_REL_VorTaverne);

	Info_AddChoice	(Info_Mod_Cassia_REL_VorTaverne, "Czy zaklecie wywolania dziala?", Info_Mod_Cassia_REL_VorTaverne_B);
	Info_AddChoice	(Info_Mod_Cassia_REL_VorTaverne, "Wszystko jasne.", Info_Mod_Cassia_REL_VorTaverne_A);
};

FUNC VOID Info_Mod_Cassia_REL_VorTaverne_C()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_C_17_00"); //Wszystko w porzadku, podazaj za mna.

	Info_ClearChoices	(Info_Mod_Cassia_REL_VorTaverne);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOHAUS");
};

FUNC VOID Info_Mod_Cassia_REL_VorTaverne_B()
{
	AI_Output(hero, self, "Info_Mod_Cassia_REL_VorTaverne_B_15_00"); //Czy zaklecie wywolania dziala?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_B_17_01"); //Tak wiec, ze mamy w piwnicy dwa trupy, a straznicy miejscy pukaja do naszych drzwi mocno uzbrojeni?
	AI_Output(hero, self, "Info_Mod_Cassia_REL_VorTaverne_B_15_02"); //Widze.

	Info_Mod_Cassia_REL_VorTaverne_C();
};

FUNC VOID Info_Mod_Cassia_REL_VorTaverne_A()
{
	AI_Output(hero, self, "Info_Mod_Cassia_REL_VorTaverne_A_15_00"); //Wszystko jasne.

	Info_Mod_Cassia_REL_VorTaverne_C();
};

INSTANCE Info_Mod_Cassia_REL_AtHaus (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_AtHaus_Condition;
	information	= Info_Mod_Cassia_REL_AtHaus_Info;
	permanent	= 0;
	important	= 0;
	description	= "Otrzymalem wszystkie paczki.";
};

FUNC INT Info_Mod_Cassia_REL_AtHaus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_VorTaverne))
	&& (Npc_GetDistToWP(hero, "REL_CITY_053") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_AtHaus_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_AtHaus_17_00"); //Ach, tu przychodza. Oto runa.

	B_GiveInvItems	(self, hero, ItRu_Fackel, 1);

	AI_Output(self, hero, "Info_Mod_Cassia_REL_AtHaus_17_01"); //Wiesz co robic.

	B_LogEntry	(TOPIC_MOD_DIEB_UMZUG, "Podczas gdy Cassia rozprasza obie te dwie rzeczy, to za nimi sie przemykam i zapale pochodnie za pomoca zaklecia.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BESICHTIGUNG");
	B_StartOtherRoutine	(Mod_7576_OUT_Metzger_REL, "BESICHTIGUNG");
	B_StartOtherRoutine	(Mod_7578_OUT_Brauer_REL, "BESICHTIGUNG");
};

INSTANCE Info_Mod_Cassia_REL_InHaus (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_InHaus_Condition;
	information	= Info_Mod_Cassia_REL_InHaus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_InHaus_Condition()
{
	if (Mod_Diebe_FackelAn == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_InHaus_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_InHaus_17_00"); //Doskonaly. Nie bedziemy znów widziec tych durniów.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_InHaus_17_01"); //Teraz mozemy osiedlic sie tutaj w spokoju.

	B_GivePlayerXP	(350);

	B_SetTopicStatus	(TOPIC_MOD_DIEB_UMZUG, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7576_OUT_Metzger_REL, "START");
	B_StartOtherRoutine	(Mod_7578_OUT_Brauer_REL, "START");
	B_StartOtherRoutine	(self, "INHAUS");
	B_StartOtherRoutine	(Mod_7704_OUT_Jesper_REL, "INHAUS");
	B_StartOtherRoutine	(Mod_7708_OUT_Ramirez_REL, "INHAUS");
};

INSTANCE Info_Mod_Cassia_REL_Glorie (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie_Condition;
	information	= Info_Mod_Cassia_REL_Glorie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_REL_Lagerhaus2))
	&& (Wld_GetDay() > Mod_Dieb_Haus_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_00"); //Ach, dobrze, jestescie.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_01"); //Wlasnie wypracowalismy cos, z czym mozesz nam pomóc..... musza.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_02"); //Gotowy plan, slysze. Co jest po to, aby tym razem? Odrobina zlota, troche szynki....
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_03"); //Nie, tym razem jest to nieco bardziej skomplikowane.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_04"); //Bedziemy potrzebowac kazdego czlonka naszej spolecznosci, aby odniesc sukces.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_05"); //Brzmi to ekscytujaco. Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_06"); //Przede wszystkim chodzi o uzyskanie wartosciowych dokumentów, które moglyby zawierac jeszcze cenniejsze informacje.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_07"); //Sa one przechowywane gdzies w plyciznach biblioteki.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_08"); //Wiec wlamanie?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_09"); //Nie, znalezienie tego, czego szukamy wsród wszystkich pism i ksiazek zajeloby prawdopodobnie kilka dni, jesli nie tygodnie.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_10"); //Zamek, który moze ulec peknieciu nie jest zwykla blokada drzwi.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_11"); //Wiec najpierw posluchajcie mnie.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_12"); //Cóz, w tym miescie jest uczony, który codziennie w poludnie wchodzi do biblioteki.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_13"); //Towarzyszy mu ochroniarz, który zawsze zatrzymuje sie przy wejsciu.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_14"); //Gdy tylko bibliotekarz zobaczy starego mezczyzne, podskakuje i przechodzi przez zamkniete drzwi pulapki do pokoju ponizej.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_15"); //Po kilku minutach wychodzi z stosem dokumentów i przynosi je uczonemu.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_16"); //Sa to dokumenty bardzo ekskluzywne i specjalne, bo nikt inny ich nie otrzymuje.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_17"); //I wierzcie mi, wyciagnelismy wszystkie przystanki na dyplomacje.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_18"); //W kazdym razie, uczony stary czlowiek zawsze czyta w nim kilka godzin, zanim wróci do bibliotekarza i znikaja w pokoju ponizej.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_19"); //Hmm, i gdzie mamy sie dostac?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_20"); //U krawca.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_21"); //Nie rozumiem....
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_22"); //Poniewaz nie zebrales niezbednych informacji.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_23"); //Bo jak sie dowiedzielismy, krawiec pracuje obecnie nad sukienka dla uczonego.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_24"); //Suknia wyglada niemal dokladnie tak jak mimosrodowy akordeon, do którego chodzil stary czlowiek.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_25"); //Zaczynam rozumiec. Jeden z nas dostaje sukienke i udaje starca.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_26"); //Mozna wiec wyciagnac oczywiste wnioski.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_27"); //Ale wystarczy pochlebstwo.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_28"); //To bedzie Twoja praca i Ramirez' s.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_29"); //Podczas gdy on rozprasza sie z krawiectwem i przepychankami - prosze mi wierzyc, nie odniose sukcesu - zburzysz swój strój.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_30"); //Z ta broda tutaj nalezy wygladac jak stara rzecz.

	B_GiveInvItems	(self, hero, ItAr_Bart, 1);

	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_31"); //Dobrze, wtedy znam swoja inna prace.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_32"); //Jak zapewne sie domyslales, chodzisz do tak ubranej biblioteki.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_33"); //Attila dba o to, aby stary mezczyzna nie pojawil sie w bibliotece, angazujac go w rozmowe...... lub cokolwiek bedzie konieczne.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_34"); //No cóz, bibliotekarz nie zrozumie, ze nie ma przed soba wlasciwego uczonego.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_35"); //Dobry punkt.... gdzie stosuje sie Jesper.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_36"); //Bibliotekarz jest wlasciwie slepy na mola, bez jego monoklina ledwo potrafi rozpoznac ksiazke przed nosem.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_37"); //Jak tylko tylko wyciera oczy i odlozy monoklina na bok, Jesper zadba o to, aby nie dostal sie tak szybko w rece.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_38"); //Jedyne, co musisz zrobic, to wystarczajaco blisko bibliotekarza, aby rozpoznac akordeon ekscentryczny i dluga brode.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_39"); //Nie ma juz nikogo innego, kto chodzilby w taki sposób..... nawet w tym miescie.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_40"); //Nie musisz i nie powinienes mówic niczego.... chlopiec bedzie sie pieszczyc.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_41"); //Nastepnie zostawiasz biblioteke z dokumentami.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_42"); //Jesli wszystko pójdzie dobrze, powinienes miec wystarczajaco duzo czasu, aby zabrac sukienke z powrotem, zanim krawiec zauwazy straty.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_43"); //.... Co tu robisz?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_44"); //Oto ja! Jestem swoista dzika karta, jesli sprawy nie przebiegaja zgodnie z planem.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_45"); //Bede zawsze blisko, obserwujac otoczenie i interweniujac w razie potrzeby.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_46"); //Dobrze, kiedy zaczynamy?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_47"); //Jutro rano o godzinie 10:00 spotkasz sie tu z Ramirezem i pójdziesz do krawców.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_48"); //Jesli wszystko pójdzie zgodnie z planem, powinien dac nam idealny czas na nasz zamach stanu.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_17_49"); //Kazdy ma racje? Liczymy na Ciebie.

	Log_CreateTopic	(TOPIC_MOD_DIEB_GLORIE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_GLORIE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_GLORIE, "To jest teraz wieksza historia. Spotkam sie tu jutro rano o godzinie 10:00 z Ramirezem. Pójde z nim do krawca i ukradlem szate uczonego, podczas gdy Ramirez go rozprasza. Z nowymi ubraniami i falszywa broda ide do biblioteki, gdzie Jesper zrabowal bibliotekarzowi swojej pomocy wizualnej. Musze tylko sie z nim zmierzyc i on powinien przyniesc mi cenne dokumenty. W tym czasie Attila zadba o to, aby wizyta wlasciwego uczonego w bibliotece zostala opózniona. Jak tylko mam papiery, wszystko co musze zrobic, to polozyc sukienke z powrotem na krawca, zanim zauwazy straty.");

	Mod_Dieb_Haus_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Cassia_REL_Glorie2 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie2_Condition;
	information	= Info_Mod_Cassia_REL_Glorie2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_REL_Glorie3))
	&& (Npc_HasItems(hero, ItAr_GelehrterNeu) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie2_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie2_17_00"); //Nie ma czasu do stracenia. Zalóz ubrania i przejdz do biblioteki.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOBIB");
};

INSTANCE Info_Mod_Cassia_REL_Glorie3 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie3_Condition;
	information	= Info_Mod_Cassia_REL_Glorie3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_Glorie2))
	&& (Npc_GetDistToWP(hero, "REL_CITY_145") < 500)
	&& (Mod_Dieb_Verkleidung == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie3_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie3_17_00"); //Chodz dalej, w drodze.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATBIB");
};

INSTANCE Info_Mod_Cassia_REL_Glorie4 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie4_Condition;
	information	= Info_Mod_Cassia_REL_Glorie4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_Glorie3))
	&& (Npc_HasItems(hero, ItWr_DiebDokumente) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie4_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_17_00"); //Teraz dosc slów. Czy otrzymaliscie pliki?
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie4_15_01"); //Tak, tutaj.

	B_GiveInvItems	(hero, self, ItWr_DiebDokumente, 1);

	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_17_02"); //Pozwólcie, ze zobacze.

	B_UseFakescroll();

	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_17_03"); //Nie.... Nie. nie wydaje sie to wazne.......

	B_UseFakescroll();

	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_17_04"); //Calkowicie bez znaczenia....

	B_UseFakescroll();

	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_17_05"); //Nieciekawe....
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_17_06"); //Na znalezienie czegos przydatnego w stosie dokumentów zajmie kilka godzin.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DOKUMENTELESEN");
	B_StartOtherRoutine	(Mod_7708_OUT_Ramirez_REL, "DOKUMENTELESEN");

	B_LogEntry	(TOPIC_MOD_DIEB_GLORIE, "Udalo nam sie z powodzeniem ukrasc notatki. Teraz ich studiowanie zajmie troche czasu.");

	B_GivePlayerXP	(500);

	// Blubberlutsch: Milkys Zeitscripte nehmen und 6 Stunden Cooldown für nächstes Gespräch!!!
};

INSTANCE Info_Mod_Cassia_REL_Glorie5 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie5_Condition;
	information	= Info_Mod_Cassia_REL_Glorie5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_Glorie4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie5_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie5_17_00"); //Cóz, mysle, ze cos nam sie udalo. Tutaj przeczytaj go samemu.

	B_GiveInvItems	(self, hero, ItWr_BesaenftigungBeliars, 1);

	AI_StopProcessInfos	(self);

	B_UseItem (hero, ItWr_BesaenftigungBeliars);

	Npc_SetRefuseTalk (self, 15);
};

INSTANCE Info_Mod_Cassia_REL_Glorie6 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie6_Condition;
	information	= Info_Mod_Cassia_REL_Glorie6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_Glorie5))
	&& (!Npc_RefuseTalk(self))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie6_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie6_17_00"); //No cóz, czy to nie kusi?
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie6_15_01"); //Niewielka ofiara zlota co kilka dni..... byc moze przez wieki.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie6_17_02"); //Teraz musimy teraz dowiedziec sie, gdzie to poswiecenie ma miejsce.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie6_17_03"); //Po ostatniej akcji jestes tym, który na pewno nie bedzie znów rozpoznawany....
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie6_15_04"); //... Moge wiec miec przyjemnosc. Widze.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie6_17_05"); //Tak wiec, zawsze pozostan zawsze blisko gubernatora, jak tylko zmierzch sie rozpoczyna..... Ufam, ze pan to zrobi.

	B_LogEntry	(TOPIC_MOD_DIEB_GLORIE, "Wydaje sie, ze Beliarowi od wieków poswieca sie zloto, aby uchronic miasto przed gniewem. Musze zaciemnic w nocy gubernatora, aby zobaczyc, gdzie laduje zloto.");
};

INSTANCE Info_Mod_Cassia_REL_Glorie7 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie7_Condition;
	information	= Info_Mod_Cassia_REL_Glorie7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dowiedzialem sie, gdzie poswiecaja zloto.";
};

FUNC INT Info_Mod_Cassia_REL_Glorie7_Condition()
{
	if (Mod_Diebe_Brunnen == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie7_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie7_15_00"); //Dowiedzialem sie, gdzie poswiecaja zloto. Jest to zamknieta studnia, tutaj.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_17_01"); //Ahh, oczywiscie.... nic nie jest lepiej przystosowane do tego, by naklonic ofiare do Adanosa niz studnia.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie7_15_02"); //Co zatem powinnismy zrobic dalej?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_17_03"); //Otóz bliskosc studni do naszego mieszkania naturalnie wplywa na nasze rece.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_17_04"); //Bedziemy tez musieli ja wykorzystac, aby przejsc przez ziemie z pikseksami.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_17_05"); //Gdybysmy mieli szczescie, znalezlibysmy po kilku metrach jedna z wglebien, które zdaja sie przebiegac pod miastem.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_17_06"); //Miejmy nadzieje, ze do jutra bedziemy mieli wszystko, czego potrzebujemy, aby rozpoczac budowe tunelu.

	B_LogEntry	(TOPIC_MOD_DIEB_GLORIE, "Cassia planuje budowe tunelu z naszej kryjówki.");

	Mod_Diebe_BrunnenTag = Wld_GetDay();
};

INSTANCE Info_Mod_Cassia_REL_Glorie8 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie8_Condition;
	information	= Info_Mod_Cassia_REL_Glorie8_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie8_Condition()
{
	if (Mod_Diebe_Brunnen == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie8_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie8_17_00"); //Przyjdz dalej, rozbijaj sie.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie8_17_01"); //(do bohatera) I mozna równiez kolyszac sie pikseksem.... Musisz go pominac w kolonii.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cassia_REL_Glorie9 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie9_Condition;
	information	= Info_Mod_Cassia_REL_Glorie9_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie9_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_REL_Glorie4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie9_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie9_17_00"); //W prawo, chwycic latarki i isc. Jestesmy bardzo blisko naszego celu.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHATZKAMMER");
	B_StartOtherRoutine	(Mod_7704_OUT_Jesper_REL, "SCHATZKAMMER");
	B_StartOtherRoutine	(Mod_7708_OUT_Ramirez_REL, "SCHATZKAMMER");
	B_StartOtherRoutine	(Mod_7709_OUT_Attila_REL, "SCHATZKAMMER");
};

INSTANCE Info_Mod_Cassia_REL_Glorie10 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie10_Condition;
	information	= Info_Mod_Cassia_REL_Glorie10_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_REL_Glorie4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie10_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie10_17_00"); //Chcialbym powiedziec, ze trafilismy w jackpota. Nie obwiniam nikogo, kiedy rzuca sie na kupe zlota i wypelnia kieszenie? (szybko) jako pierwszy to zrobie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INSCHATZKAMMER");
	B_StartOtherRoutine	(Mod_7704_OUT_Jesper_REL, "INSCHATZKAMMER");
	B_StartOtherRoutine	(Mod_7708_OUT_Ramirez_REL, "INSCHATZKAMMER");
	B_StartOtherRoutine	(Mod_7709_OUT_Attila_REL, "INSCHATZKAMMER");

	B_SetTopicStatus	(TOPIC_MOD_DIEB_GLORIE, LOG_SUCCESS);

	B_GivePlayerXP	(1000);
};

INSTANCE Info_Mod_Cassia_REL_EXIT (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_EXIT_Condition;
	information	= Info_Mod_Cassia_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cassia_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cassia_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
