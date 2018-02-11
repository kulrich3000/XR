INSTANCE Info_Mod_Riordian_AW_Obelisk (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Obelisk_Condition;
	information	= Info_Mod_Riordian_AW_Obelisk_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_AW_Obelisk_Condition()
{	
	return 1;
};

FUNC VOID Info_Mod_Riordian_AW_Obelisk_Info()
{
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_00"); //Duzo podrózujesz, moze mam cos dla Ciebie tutaj.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Obelisk_15_01"); //Co masz?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_02"); //Ten obelisk znalazlem tutaj w ruinach.

	B_GiveInvItems	(self, hero, ItRu_TeleportObelisk, 1);

	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_03"); //W starych skryptach nie ma nic specyficznego, ale powinna istniec mozliwosc polaczenia z teleportrunami.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Obelisk_15_04"); //Polaczone z teleportrunami? A co dokladnie to robi?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_05"); //Podejrzewam, ze stanie sie to rodzajem uniwersalnego teleportu, który pozwoli ci teleportowac do dowolnego miejsca, które wlozyles nad runa.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_06"); //Ale jeszcze tego nie wypróbowalem.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Obelisk_15_07"); //A jak moge podlaczyc runy do obelisku?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_08"); //Prawdopodobnie przy okraglym stole.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Obelisk_15_09"); //Spróbuje.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_10"); //No cóz, prosze mi powiedziec, czy to dziala.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_11"); //Dowiedzialem sie równiez kilku rzeczy o Nocnej Ogniwie.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_12"); //Moge teraz pokazac, jak znalezc wiecej przedmiotów.

	Log_CreateTopic	(TOPIC_MOD_OBELISK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_OBELISK, "Riordian dal mi obelisk, w którym moge umiescic wszystkie teleporty. W tym celu musze udac sie na okragly stól z obeliskiem, teleporta i pustym kamieniem runowym. Tam moge polaczyc rune z obeliskiem. Gdybym ja przetestowal, powinienem dac Riordianowi znac.");
};

INSTANCE Info_Mod_Riordian_AW_ObeliskTeleportFunzt (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_ObeliskTeleportFunzt_Condition;
	information	= Info_Mod_Riordian_AW_ObeliskTeleportFunzt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Próbowalem obelisku.";
};

FUNC INT Info_Mod_Riordian_AW_ObeliskTeleportFunzt_Condition()
{
	if (Mod_TeleportObelisk_Funzt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_ObeliskTeleportFunzt_Info()
{
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ObeliskTeleportFunzt_15_00"); //Próbowalem obelisku.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ObeliskTeleportFunzt_23_01"); //No cóz, czy to zadzialalo?
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ObeliskTeleportFunzt_15_02"); //Tak, jak zwykla runa teleportu zabral mnie do mojego celu.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ObeliskTeleportFunzt_23_03"); //Wybitny. Starzy ludzie sa naprawde niesamowici. Miejmy nadzieje, ze znajdziemy jeszcze kilka starych relikwii.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ObeliskTeleportFunzt_23_04"); //Oto mala nagroda.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Riordian_AW_SteinkreisTafel (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_SteinkreisTafel_Condition;
	information	= Info_Mod_Riordian_AW_SteinkreisTafel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_AW_SteinkreisTafel_Condition()
{
	if (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_SteinkreisTafel_Info()
{
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafel_23_00"); //Znów znalazlem cos ciekawego w ruinach.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafel_15_01"); //Co znalazles?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafel_23_02"); //To kamienny tabletka. Jest na niej formula, a pod nia cos, co wyglada bardzo podobnie do kamiennego kola.

	B_GiveInvItems	(self, hero, ItMi_SteinkreisTafel, 1);

	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafel_23_03"); //Powinienes spróbowac formuly na kamiennym kole, moze to dziala.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafel_15_04"); //A to nie jest niebezpieczne?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafel_23_05"); //Ach, jaki jest cel?
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafel_15_06"); //Dobrze, spróbuje.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafel_23_07"); //No cóz, powiedz mi, co sie stalo.

	Log_CreateTopic	(TOPIC_MOD_STEINKREIS, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_STEINKREIS, "Riordian dal mi kamienna tabliczke, której powinienem uzyc do kamiennych kólek. Zobaczmy, co sie dzieje......");

	Mod_Riordian_Geister_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Riordian_AW_SteinkreisTafelFunzt (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_SteinkreisTafelFunzt_Condition;
	information	= Info_Mod_Riordian_AW_SteinkreisTafelFunzt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Formula rzeczywiscie dziala.";
};

FUNC INT Info_Mod_Riordian_AW_SteinkreisTafelFunzt_Condition()
{
	if (Mod_TeleportSteinkreis_Funzt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_SteinkreisTafelFunzt_Info()
{
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_15_00"); //Formula rzeczywiscie dziala.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_23_01"); //Co robi?
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_15_02"); //To wydaje sie byc jakas zaklecie teleportu.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_15_03"); //Kiedy wypowiadalem formule, zostalem teleportowany do ogromnego kamiennego kola w lodowym pejzazu.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_15_04"); //Potem bylem w stanie kontrolowac kazdy kamienny krag.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_23_05"); //Bardzo ciekawy. Bedzie to bardzo przydatne dla Ciebie, mozesz zachowac tablice. Nadal pamietam te formule.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_23_06"); //Oto mala nagroda.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_STEINKREIS, "Okazalo sie, ze moge jechac tam i z powrotem miedzy kamiennymi kregami z plyta kamienna.");
};

INSTANCE Info_Mod_Riordian_AW_Plagegeister (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Plagegeister_Condition;
	information	= Info_Mod_Riordian_AW_Plagegeister_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_AW_Plagegeister_Condition()
{
	if (Mod_Riordian_Geister == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_Plagegeister_Info()
{
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_00"); //Ciesze sie, ze przyszedles. Tu cale pieklo sie rozpadlo.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_01"); //Widze to. Co sie stalo?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_02"); //Cóz, ostatnio prowadzimy wiele badan nad ruinami i zdobylismy z niej wiele tajemnic.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_03"); //Niestety, cóz, musielismy byc troche zbyt nieostrozni i prawdopodobnie rozbudzilibysmy niektóre duchy, które sa teraz tu niespokojne i wsciekle.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_04"); //I wydaje sie, ze nie chca sie szybko zatrzymac....
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_05"); //Czy kilka magicznych pocisków nie odstawi ich z powrotem na ziemie?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_06"); //(przerwania) Nie dla Adano. Niebezpieczenstwo, ze zbudzimy wiecej sypialnych mocy byloby zbyt duze.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_07"); //Co mozemy zrobic?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_08"); //Cóz, niedawno natknalem sie w moich badaniach na cos, co moze nam pomóc.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_09"); //Jest to formula, która powinna byc w stanie uspokoic niespokojne duchy.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_10"); //Czy to zadziala?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_11"); //Byc moze.... ale musi mówic, gdy na oltarzu skladana jest ofiara i rzucane sa dwa magiczne zaklecia.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_12"); //Oferta smierci i magia?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_13"); //Ofiara smierci sa prawdopodobnie trzy rosliny ziól bagiennych. Mialy one nawiazywac kontakt z innymi sferami swiata.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_14"); //Z drugiej strony, zaklecia te maja podobno jakosc sprawiajac, ze zapomniales o tym, co sie wydarzylo i zasypiasz czuwne duchy.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_15"); //Hmm.....
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_16"); //Nie wiemy tez dokladnie, gdzie mozna znalezc taki ofiarny oltarz, ale niewatpliwie znajdziemy go w jednym ze starych miejsc.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_17"); //Dobrze, rozejrze sie dookola. Formula?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_18"); //Tutaj je masz.

	B_GiveInvItems	(self, hero, ItWr_PlagegeisterFormel, 1);

	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_19"); //Dobrze, bede na drodze.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_20"); //Zycze powodzenia. Adanos jest z wami.

	Log_CreateTopic	(TOPIC_MOD_RIORDIAN_PLAGEGEISTER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_RIORDIAN_PLAGEGEISTER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_RIORDIAN_PLAGEGEISTER, "Magicy wody rozluznili niektóre duchy w swoich badaniach, które obecnie plona tam niespokojnie. Riordian powiedzial, ze aby ja ponownie uspokoic, na oltarzu ofiarnym powinien zostac wykonany rytual. W tym celu musze poswiecic formule, 3 ziola bagienne i 2 zaklecia. Czary powinny miec mozliwosc zapomniec o wydarzeniach i obudzic duchy, aby spac.");
};

INSTANCE Info_Mod_Riordian_AW_Plagegeister2 (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Plagegeister2_Condition;
	information	= Info_Mod_Riordian_AW_Plagegeister2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_AW_Plagegeister2_Condition()
{
	if (Mod_Riordian_Geister == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_Plagegeister2_Info()
{
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister2_23_00"); //Zrobiles to zrobiles! Niespokojne dusze i dusze sa uspokojone.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister2_15_01"); //Mam nadzieje, ze bedziesz bardziej ostrozny w swoich badaniach w przyszlosci.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister2_23_02"); //Tak, oczywiscie! Mozesz byc tego pewien. Ale tutaj wez te tabletki do pomocy.

	B_ShowGivenThings	("2 tabletki kamienne zakonserwowane");

	CreateInvItems	(hero, ItWr_DexStonePlate1_Addon, 1);
	CreateInvItems	(hero, ItWr_HitPointStonePlate1_Addon, 1);

	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister2_23_03"); //Moga one byc dla ciebie uzyteczne na twoje dalsze sposoby.

	B_SetTopicStatus	(TOPIC_MOD_RIORDIAN_PLAGEGEISTER, LOG_SUCCESS);
	
	B_StartOtherRoutine	(Mod_9003_KDW_Riordian_AW, "START");
	B_StartOtherRoutine	(Mod_9004_KDW_Merdarion_AW, "START");
	B_StartOtherRoutine	(Mod_9001_KDW_Cronos_AW, "START");
	B_StartOtherRoutine	(Mod_9002_KDW_Nefarius_AW, "START");

	B_GivePlayerXP	(400);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Riordian_AW_ScrollJG (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_ScrollJG_Condition;
	information	= Info_Mod_Riordian_AW_ScrollJG_Info;
	permanent	= 0;
	important	= 0;
	description	= "Moze mozesz mi pomóc.";
};

FUNC INT Info_Mod_Riordian_AW_ScrollJG_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wulfgar_Key2))
	&& (Npc_HasItems(hero, ItWr_TruhenNotizJG) == 1)
	&& (Npc_HasItems(hero, ItWr_TruhenScrollJG) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_ScrollJG_Info()
{
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_00"); //Moze mozesz mi pomóc.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_01"); //Pozwole sobie to zobaczyc.

	B_UseFakeScroll ();

	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_02"); //Hm. To jest stary skrypt. Widzialem juz takie znaki. Wyglada na wyzszy jezyk.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_03"); //A co?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_04"); //Nie do konca je jeszcze odszyfrowalem. Wróc do domu pózniej.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_05"); //Pomoc Adano! W ten sposób za darmo....
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_06"); //Poczekaj. Czy znasz pustelnika w dolinie?
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_07"); //Um....
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_08"); //Przyjechal do Jhakendarza dawno temu z pierwszymi piratami. Studiowal równiez pisma swiete.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_09"); //Nagle jednak porzucil go i przeszedl na emeryture do doliny.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_10"); //Skad wiesz?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_11"); //Ten pirat, Greg, powiedzial mi.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_12"); //Uh-huh. I myslisz, ze moze miec....
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_13"); //Spróbuj. Jest to platforma po prawej stronie.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_14"); //Wiem.

	B_LogEntry	(TOPIC_MOD_JG_SCROLL, "Musze udac sie do pustelnika w dolinie i zapytac. Prawdopodobnie ostatnia szansa.");
};

INSTANCE Info_Mod_Riordian_AW_ScrollJG2 (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_ScrollJG2_Condition;
	information	= Info_Mod_Riordian_AW_ScrollJG2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hermit moze mi pomóc. Musze znalezc konkretna miske ofiarnicza.";
};

FUNC INT Info_Mod_Riordian_AW_ScrollJG2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_ScrollJG))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_ScrollJG2_Info()
{
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG2_15_00"); //Hermit moze mi pomóc. Musze znalezc konkretna miske ofiarnicza.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG2_23_01"); //Nie bedzie to latwe. Bedziesz potrzebowal szczescia, aby to zrobic. Nawiasem mówiac....
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG2_15_02"); //Tak?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG2_23_03"); //Cavalorn kazal mi jak najszybciej zawrócic do obozu.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG2_15_04"); //Do Minentala?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG2_23_05"); //Tak. Moze ten Wulfgar moze Ci pomóc.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG2_15_06"); //Jestem na drodze.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_JG_OPFERSCHALE, "Do Wulfgar. Moze cos wie.....");
};

INSTANCE Info_Mod_Riordian_AW_Zeremoniendolch (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Zeremoniendolch_Condition;
	information	= Info_Mod_Riordian_AW_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobry dzien. Merdarion mówi, ze masz nowe spostrzezenia.";
};

FUNC INT Info_Mod_Riordian_AW_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Merdarion_AW_Zeremoniendolch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_Zeremoniendolch_Info()
{
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Zeremoniendolch_15_00"); //Dobry dzien. Merdarion mówi, ze masz nowe spostrzezenia.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Zeremoniendolch_23_01"); //No cóz, tak. Ostatnio moglem odczytac kolejny napis w swiatyni.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Zeremoniendolch_23_02"); //Jest to bron, która byla oczywiscie uzywana w czasach starozytnych do niektórych rytualów ofiarniczych.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Zeremoniendolch_23_03"); //Wyglada smiertelnie i niewidocznie dla ofiary. Nazywala ja sztyletem rytualnym.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Zeremoniendolch_15_04"); //Uh-huh. A gdzie mozna znalezc taka bron?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Zeremoniendolch_23_05"); //Nie wiem o tym. Ale jesli tak, to mysle, ze tutaj w Jharkendarze.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Zeremoniendolch_15_06"); //I czy mozna myslec dalej?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Zeremoniendolch_23_07"); //No cóz, tak. Miejsce poswiecenia..... lub miejsce obrzedowe..... swiatyni. Tego rodzaju.... Hmm.....
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Zeremoniendolch_15_08"); //Moze tu w swiatyni?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Zeremoniendolch_23_09"); //Meriadon juz sie rozejrzal, nic tam nie ma. Ewentualnie stempel adano w bagnie....

	B_LogEntry	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, "Sztylet znajduje sie prawdopodobnie w miejscu ofiary, miejscu rytualu lub swiatyni. Riordian uwaza, ze powinienem przeszukac swiatynie Adano w bagnie....");
};

INSTANCE Info_Mod_Riordian_AW_Gast (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Gast_Condition;
	information	= Info_Mod_Riordian_AW_Gast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego i tak przybyles?";
};

FUNC INT Info_Mod_Riordian_AW_Gast_Condition()
{
	if (Mod_Saturas_Gast == 1)
	{
		Info_Mod_Riordian_AW_Gast.description = "Szukam zlodzieja, który ukradl twój sprzet.";
	}
	else
	{
		Info_Mod_Riordian_AW_Gast.description = "Ktos ukradl czesc sprzetu.";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	&& (Mod_Saturas_Gast_Fortschritt == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_Gast_Info()
{
	if (Mod_Saturas_Gast == 1)
	{
		AI_Output(hero, self, "Info_Mod_Riordian_AW_Gast_15_00"); //Szukam zlodzieja, który ukradl twój sprzet.
		AI_Output(self, hero, "Info_Mod_Riordian_AW_Gast_23_01"); //Tak, prawda, znajdz tego syna suki!
		AI_Output(hero, self, "Info_Mod_Riordian_AW_Gast_15_02"); //Jakies wskazówki?
		AI_Output(self, hero, "Info_Mod_Riordian_AW_Gast_23_03"); //Ja? Nie. Ale mógl to byc ten argument. Nie ufam mu.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Riordian_AW_Gast_15_04"); //Ktos ukradl czesc sprzetu.
		AI_Output(self, hero, "Info_Mod_Riordian_AW_Gast_23_05"); //Prosze o wybaczenie? Kto moze cos nam ukrasc?
		AI_Output(hero, self, "Info_Mod_Riordian_AW_Gast_15_06"); //Nie zdecydowalem sie jeszcze na to. Nie zauwazyles wiec nic niezwyklego?
		AI_Output(self, hero, "Info_Mod_Riordian_AW_Gast_23_07"); //Spalem jak dziecko.
	};
};

instance Info_Mod_Riordian_AW_Irrlicht		(C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Irrlicht_Condition;
	information	= Info_Mod_Riordian_AW_Irrlicht_Info;
	permanent	= 1;
	important	= 0;
	description	= "Pokaz mi jak uczyc moja wilk-o' -the-wisp.";
};

var int Info_Mod_Riordian_AW_Irrlicht_NoPerm;

FUNC INT Info_Mod_Riordian_AW_Irrlicht_Condition()
{
	if (Npc_HasItems (hero, ItAm_Addon_WispDetector) == 1)
	&& ((PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NF] == FALSE)
	|| (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FF] == FALSE)
	|| (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NONE] == FALSE)
	|| (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_RUNE] == FALSE)
	|| (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_MAGIC] == FALSE)
	|| (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FOOD] == FALSE)
	|| (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_POTIONS] == FALSE))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_Info()
{
	if ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NF] == FALSE)
	|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FF] == FALSE)
	|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NONE] == FALSE)	
	|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_RUNE] == FALSE)	
	|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_MAGIC] == FALSE)	
	|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FOOD] == FALSE)	
	|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_POTIONS] == FALSE)	
	{                                            
		Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
		Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,DIALOG_BACK,Info_Mod_Riordian_AW_Irrlicht_BACK);
		
		if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FF] == FALSE)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,B_BuildLearnString (NAME_ADDON_WISPSKILL_FF, B_GetLearnCostTalent (other, NPC_TALENT_WISPDETECTOR, WISPSKILL_FF)),Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_FF);
		};
		
		if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NONE] == FALSE)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,B_BuildLearnString (NAME_ADDON_WISPSKILL_NONE, B_GetLearnCostTalent (other, NPC_TALENT_WISPDETECTOR, WISPSKILL_NONE)),Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_NONE);
		};	
		
		if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_RUNE] == FALSE)
		&& (WISPSKILL_LEVEL >= 2)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,B_BuildLearnString (NAME_ADDON_WISPSKILL_RUNE, B_GetLearnCostTalent (other, NPC_TALENT_WISPDETECTOR, WISPSKILL_RUNE)),Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_RUNE);
		};
		
		if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_MAGIC] == FALSE)
		&& (WISPSKILL_LEVEL >= 2)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,B_BuildLearnString (NAME_ADDON_WISPSKILL_MAGIC, B_GetLearnCostTalent (other, NPC_TALENT_WISPDETECTOR, WISPSKILL_MAGIC)),Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_MAGIC);
		};
		
		if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FOOD] == FALSE)
		&& (WISPSKILL_LEVEL >= 3)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,B_BuildLearnString (NAME_ADDON_WISPSKILL_FOOD, B_GetLearnCostTalent (other, NPC_TALENT_WISPDETECTOR, WISPSKILL_FOOD)),Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_FOOD);
		};
		
		if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_POTIONS] == FALSE)
		&& (WISPSKILL_LEVEL >= 3)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,B_BuildLearnString (NAME_ADDON_WISPSKILL_POTIONS, B_GetLearnCostTalent (other, NPC_TALENT_WISPDETECTOR, WISPSKILL_POTIONS)),Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_POTIONS);
		};
	};
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_BACK ()
{
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_FF ()
{
	if B_TeachPlayerTalentWispDetector  (self, other, WISPSKILL_FF)
	{
		if (WISPSKILL_LEVEL < 2)
		{
			WISPSKILL_LEVEL = 2;
		};
	};
	
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_NONE ()
{
	if B_TeachPlayerTalentWispDetector (self, other, WISPSKILL_NONE)
	{
		if (WISPSKILL_LEVEL < 2)
		{
			WISPSKILL_LEVEL = 2;
		};
	};
	
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_RUNE ()
{
	if B_TeachPlayerTalentWispDetector (self, other, WISPSKILL_RUNE)
	{
		if (WISPSKILL_LEVEL < 3)
		{
			WISPSKILL_LEVEL = 3;
		};
	};
	
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_MAGIC ()
{
	if B_TeachPlayerTalentWispDetector (self, other, WISPSKILL_MAGIC)
	{
		if (WISPSKILL_LEVEL < 3)
		{
			WISPSKILL_LEVEL = 3;
		};
	};
	
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_FOOD ()
{
	if B_TeachPlayerTalentWispDetector (self, other, WISPSKILL_FOOD)
	{
	};
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_POTIONS ()
{
	if B_TeachPlayerTalentWispDetector (self, other, WISPSKILL_POTIONS)
	{
	};
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

INSTANCE Info_Mod_Riordian_AW_Lehrer (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Lehrer_Condition;
	information	= Info_Mod_Riordian_AW_Lehrer_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy moge sie z Toba uczyc?";
};

FUNC INT Info_Mod_Riordian_AW_Lehrer_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_Hi))
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11))
	&& (Mod_IstLehrling == 1)
	{	
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_Lehrer_Info()
{
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Lehrer_15_00"); //Czy moge sie z Toba uczyc?
	
	if (Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11)
	{
		AI_Output (self, hero, "Info_Mod_Riordian_AW_Lehrer_23_01"); //Pozwólcie sie na tajemnice alchemii.
		
		if (!Npc_KnowsInfo(hero, Info_Mod_Riordian_AW_Lehrer))
		{
			Log_CreateTopic	(TOPIC_MOD_LEHRER_WASSERMAGIER, LOG_NOTE);
			B_LogEntry	(TOPIC_MOD_LEHRER_WASSERMAGIER, "Riordian moze mnie nauczyc alchemii.");
		};

		Info_ClearChoices 	(Info_Mod_Riordian_AW_Lehrer);
		Info_AddChoice 		(Info_Mod_Riordian_AW_Lehrer,DIALOG_BACK,Info_Mod_Riordian_AW_Lehrer_BACK);
	
		if ( PLAYER_TALENT_ALCHEMY[POTION_Genesung] == FALSE)
		{
			Info_AddChoice 		(Info_Mod_Riordian_AW_Lehrer,B_BuildLearnString ("Napój z odzyskiem", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Genesung)),Info_Mod_Riordian_AW_Lehrer_Genesung);
		};
	
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_01] == FALSE)
		&& (Mod_LehrlingBei != 1)
		{
			Info_AddChoice 		(Info_Mod_Riordian_AW_Lehrer,B_BuildLearnString ("Istota uzdrawiania", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_01)),Info_Mod_Riordian_AW_Lehrer_HEALTH_01);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_02] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Ekstrakt z ekstraktu leczniczego", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_02)), Info_Mod_Riordian_AW_Lehrer_Health_02);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_03] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_02] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Eliksir uzdrawiania", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_03)), Info_Mod_Riordian_AW_Lehrer_Health_03);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE)
		&& (Mod_LehrlingBei != 1)
		&& (Kapitel >= 4)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Eliksir zycia", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_Health)), Info_Mod_Riordian_AW_Lehrer_Perm_Health);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == FALSE)
		&& (Mod_LehrlingBei != 1)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Mana Essence", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_01)), Info_Mod_Riordian_AW_Lehrer_Mana_01);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("ekstrakt z maneny", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_02)), Info_Mod_Riordian_AW_Lehrer_Mana_02);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Mana Elixir", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_03)), Info_Mod_Riordian_AW_Lehrer_Mana_03);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE)
		&& (Kapitel >= 4)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Eliksir Ducha Swietego", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_Mana)), Info_Mod_Riordian_AW_Lehrer_Perm_Mana);
		};                                                                                                                                                                            
		if (PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] == FALSE) 
		&& (Kapitel >= 4)
		{                                                                                                                                                                                     
			Info_AddChoice (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Skrobia Eliksir", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_STR)), Info_Mod_Riordian_AW_Lehrer_PermSTR);               
		};
		if (PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] == FALSE)
		&& (Kapitel >= 4)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Lehrer,B_BuildLearnString ("Eliksir umiejetnosci", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_DEX)), Info_Mod_Riordian_AW_Lehrer_Perm_DEX);
		};
		
	};
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_BACK()
{
	Info_ClearChoices 	(Info_Mod_Riordian_AW_Lehrer);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_Genesung()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Genesung);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_HEALTH_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_01);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_HEALTH_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_02);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_Health_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_03);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_PermStr()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_STR);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_Perm_DEX()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_DEX);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_Perm_Health()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_Health);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_MANA_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_01);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_MANA_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_02);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_MANA_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_03);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_Perm_Mana()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_Mana);
};

INSTANCE Info_Mod_Riordian_AW_Pickpocket (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Pickpocket_Condition;
	information	= Info_Mod_Riordian_AW_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Riordian_AW_Pickpocket_Condition()
{
	C_Beklauen	(148, ItPo_Health_Addon_04, 2);
};

FUNC VOID Info_Mod_Riordian_AW_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);

	Info_AddChoice	(Info_Mod_Riordian_AW_Pickpocket, DIALOG_BACK, Info_Mod_Riordian_AW_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Riordian_AW_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Riordian_AW_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Riordian_AW_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);
};

FUNC VOID Info_Mod_Riordian_AW_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);

		Info_AddChoice	(Info_Mod_Riordian_AW_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Riordian_AW_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Riordian_AW_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Riordian_AW_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Riordian_AW_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Riordian_AW_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Riordian_AW_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Riordian_AW_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Riordian_AW_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Riordian_AW_EXIT (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_EXIT_Condition;
	information	= Info_Mod_Riordian_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Riordian_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Riordian_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
