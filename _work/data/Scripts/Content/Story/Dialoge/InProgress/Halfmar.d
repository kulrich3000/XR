INSTANCE Info_Mod_Halfmar_Hi (C_INFO)
{
	npc		= Mod_7645_OUT_Halfmar_EIS;
	nr		= 1;
	condition	= Info_Mod_Halfmar_Hi_Condition;
	information	= Info_Mod_Halfmar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Halfmar_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alfans_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Halfmar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_00"); //(zdziwiony) Kim to jest? Skad pochodzisz?
	AI_Output(hero, self, "Info_Mod_Halfmar_Hi_15_01"); //Jestem z wioski na pólnoc od niej. Alfans poprosil mnie, abym spojrzal we wlasciwym kierunku.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_02"); //Cóz, jak widac, nie jestem zbyt dobrze.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_03"); //Zbierajac ziola, glówny demon zaskoczyl mnie i uderzyl w dlon.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_04"); //Od tego czasu siedze tutaj w kabinie, próbujac sie wyleczyc. Ale nic nie wydaje sie pomocne.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_05"); //Zanieczyszczenie, które mi zadal wydaje sie byc magiczne w naturze i nie ma prostych ziól, które moglyby mi pomóc.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_06"); //Przemyslany) Gdyby tylko mialem jakies ziola i cienie ksiezycowe....
	AI_Output(hero, self, "Info_Mod_Halfmar_Hi_15_07"); //Dlaczego te ziola?
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_08"); //Sa to rosliny specjalne.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_09"); //W przeciwienstwie do innych roslin, nie potrzebuja swiatla slonecznego, poniewaz czerpia energie z magicznego promieniowania.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_10"); //Dlatego tez znajduja sie one czesto w jaskiniach z magiczna ruda lub w poblizu miejsc mistycznych.....
	AI_Output(hero, self, "Info_Mod_Halfmar_Hi_15_11"); //I czy takie miejsca sa wokól nas?
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_12"); //Tak, jest tu jakies sto metrów na poludnie od niego kamienny krag z jaskinia.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_13"); //Magiczne moce sa tam silne....
	AI_Output(hero, self, "Info_Mod_Halfmar_Hi_15_14"); //Potem bede szukal roslin tam.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_15"); //Tak, ale jak juz powiedzialem, magiczne energie sa tam potezne.... nawet w takim stopniu, ze moga sie przejawiac..... do stworzen.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_16"); //Chociaz znam swoja droge, nie osmiele sie nawet jechac tam bardzo czesto......
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_17"); //Jak kilka dni temu, kiedy zaskoczyl mnie paskudny demon zbierajacy ziola.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_18"); //Dlatego zadbaj o siebie.

	B_LogEntry	(TOPIC_MOD_ALFANS_HALFMAR, "Znalazlem Halfmar. Jest w swojej chacie i w zlej kondycji. Demon uderzyl go w dlon i zatrul nim. Tylko lecznicze dzialanie cienia ksiezycowego i kruka moze go leczyc. Kilkaset metrów na poludnie znajduje sie kamienny krag i jaskinia, gdzie musze znalezc.... demoniczne stworzenia.");

	Wld_InsertItem	(ItPl_Mondschatten, "FP_ITEM_MONDSCHATTEN_01");
	Wld_InsertItem	(ItPl_Rabenkraut, "FP_ITEM_RABENKRAUT_01");

	Wld_InsertNpc	(ZombieRandom,	"SUEDMINE_2");
	Wld_InsertNpc	(Demon,	"SUEDMINE_6");
	Wld_InsertNpc	(Skeleton_Halfmar,	"SUEDMINE_15");
};

INSTANCE Info_Mod_Halfmar_HabKraeuter (C_INFO)
{
	npc		= Mod_7645_OUT_Halfmar_EIS;
	nr		= 1;
	condition	= Info_Mod_Halfmar_HabKraeuter_Condition;
	information	= Info_Mod_Halfmar_HabKraeuter_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Halfmar_HabKraeuter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Halfmar_Hi))
	&& (Npc_HasItems(hero, ItPl_Mondschatten) >= 1)
	&& (Npc_HasItems(hero, ItPl_Rabenkraut) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Halfmar_HabKraeuter_Info()
{
	AI_Output(self, hero, "Info_Mod_Halfmar_HabKraeuter_16_00"); //Tam znów pan jest. Czy odniesliscie sukces?
	AI_Output(hero, self, "Info_Mod_Halfmar_HabKraeuter_15_01"); //Tak, dostalem ziola.

	Npc_RemoveInvItems	(hero, ItPl_Mondschatten, 1);
	Npc_RemoveInvItems	(hero, ItPl_Rabenkraut, 1);

	B_ShowGivenThings	("Raven ziolo i cien ksiezyca podane");

	AI_Output(self, hero, "Info_Mod_Halfmar_HabKraeuter_16_02"); //Wlasciwie. A Ty jestes bezpieczny?
	AI_Output(hero, self, "Info_Mod_Halfmar_HabKraeuter_15_03"); //Tak, moglem pomóc demonom....
	AI_Output(self, hero, "Info_Mod_Halfmar_HabKraeuter_16_04"); //Doskonaly. Poczekaj.... Tutaj wez te ziola jako nagrode.

	CreateInvItems	(hero, ItPl_Perm_Herb, 1);
	CreateInvItems	(hero, ItPl_Heilknospe, 1);
	CreateInvItems	(hero, ItPl_Health_Herb_03, 1);
	CreateInvItems	(hero, ItPl_Mana_Herb_03, 1);

	B_ShowGivenThings	("Pólksiezycowy, leczniczy bud, leczniczy korzen i korzen przeciwpozarowy zachowany");

	AI_Output(self, hero, "Info_Mod_Halfmar_HabKraeuter_16_05"); //Bede robil eliksir dla mojego powrotu do zdrowia.
	AI_Output(self, hero, "Info_Mod_Halfmar_HabKraeuter_16_06"); //Cóz, kiedy wrócisz do Alfansa, mozesz mu powiedziec, ze za kilka dni bede przychodzil z ziolami.
	AI_Output(hero, self, "Info_Mod_Halfmar_HabKraeuter_15_07"); //Wlasciwie, bede.
	AI_Output(self, hero, "Info_Mod_Halfmar_HabKraeuter_16_08"); //Cóz, bardzo dziekuje za wszystko.

	B_GivePlayerXP	(350);

	B_LogEntry	(TOPIC_MOD_ALFANS_HALFMAR, "Halfmar ma ziola i wkrótce powinien powrócic na nogi. Kiedy wróce do wioski, moge powiedziec Alfansowi, ze wkrótce wróci.");
};

INSTANCE Info_Mod_Halfmar_GeistGetroffen (C_INFO)
{
	npc		= Mod_7645_OUT_Halfmar_EIS;
	nr		= 1;
	condition	= Info_Mod_Halfmar_GeistGetroffen_Condition;
	information	= Info_Mod_Halfmar_GeistGetroffen_Info;
	permanent	= 0;
	important	= 0;
	description	= "W jaskini spotkalem duch zmarlej osoby.";
};

FUNC INT Info_Mod_Halfmar_GeistGetroffen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Halfmar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Geist_EIS_Hi))
	&& (Mod_Geist_EIS_Bruder == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Halfmar_GeistGetroffen_Info()
{
	AI_Output(hero, self, "Info_Mod_Halfmar_GeistGetroffen_15_00"); //W jaskini spotkalem duch zmarlej osoby. Przez wieki wydawal sie zwiazany z tym miejscem.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_01"); //Spokojna dusza uwieziona w tym miejscu?
	AI_Output(hero, self, "Info_Mod_Halfmar_GeistGetroffen_15_02"); //Tak. Jako zywy czlowiek, raz opuscil tam swoje zycie i od tego czasu na prózno czekal na druga strone.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_03"); //Amazing. Wiedzialem, ze to miejsce przyciagnie i zdobedzie magiczna energie.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_04"); //Nie pomyslalbym jednak, ze nie móglby on zapobiec wyjsciu zmarlych poza granice.
	AI_Output(hero, self, "Info_Mod_Halfmar_GeistGetroffen_15_05"); //Wspomnial o obietnicach, które zlozyl raz.
	AI_Output(hero, self, "Info_Mod_Halfmar_GeistGetroffen_15_06"); //Nie odpoczywac, dopóki nie znajdzie swego brata lub dopóki jego smiertelne cialo nie powróci do zaswiatów.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_07"); //Czy tak jest? Cóz, jest to bardziej zrozumiale.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_08"); //Obietnica ta uniemozliwia przejscie na druga strone, a miejsce nie pozwala mu sie swobodnie poruszac.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_09"); //Musialby zatem dotrzymac obietnicy, by znalezc pokój.
	AI_Output(hero, self, "Info_Mod_Halfmar_GeistGetroffen_15_10"); //Ale wszystko to wydarzylo sie dawno temu, prawdopodobnie ponad 100 lat temu.
	AI_Output(hero, self, "Info_Mod_Halfmar_GeistGetroffen_15_11"); //Czy to mozliwe, ze jego brat jeszcze zyje?
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_12"); //Hmm, nie wiem.... W tej czesci swiata jest wiele mistyki i magii.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_13"); //Jest calkiem mozliwe, ze stalo sie cos nadprzyrodzonego, co to umozliwia.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_14"); //Sadzac po waszym sprawozdaniu, jego brat byl daleko od osiedlenia sie.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_15"); //Moze natknal sie na cos nieznanego nam. To wszystko, co moge powiedziec.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_16"); //Byc moze kiedys twoje kroki poprowadza cie tam, jesli los cie zechce.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_17"); //Byc moze tajemnica wokól losu niespokojnego umyslu pozostanie w ciemnosci na zawsze....

	B_LogEntry	(TOPIC_MOD_GEIST_BRUDER, "Halfmar wierzy, ze jest mozliwe, iz Strewak natknal sie na cos nadprzyrodzonego i nieznanego daleko od cywilizacji na tym swiecie, co uchronilo go przed rozkladem w czasie. Byc moze kiedys dowiemy sie, co to bylo.");
};

INSTANCE Info_Mod_Halfmar_EXIT (C_INFO)
{
	npc		= Mod_7645_OUT_Halfmar_EIS;
	nr		= 1;
	condition	= Info_Mod_Halfmar_EXIT_Condition;
	information	= Info_Mod_Halfmar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Halfmar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Halfmar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
