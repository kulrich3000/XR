INSTANCE Info_Mod_Eremit_Hi (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Hi_Condition;
	information	= Info_Mod_Eremit_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wiec jest nasz zlodziej.";
};

FUNC INT Info_Mod_Eremit_Hi_Condition()
{
	if (Mod_Saturas_Gast_Fortschritt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Hi_15_00"); //Wiec jest nasz zlodziej.
	AI_Output(self, hero, "Info_Mod_Eremit_Hi_20_01"); //Nie ma zlodzieja, zlodziejstwa! Po prostu graj!
	AI_Output(self, hero, "Info_Mod_Eremit_Hi_20_02"); //Powiedzialem, zebyscie wyszli z tego miejsca. Jasne bylo, ze ktos cie znajdzie.
	AI_Output(self, hero, "Info_Mod_Eremit_Hi_20_03"); //Ale chce grac!
};

INSTANCE Info_Mod_Eremit_WerBistDu (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_WerBistDu_Condition;
	information	= Info_Mod_Eremit_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes przy okazji?";
};

FUNC INT Info_Mod_Eremit_WerBistDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_WerBistDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_WerBistDu_15_00"); //Kim jestes przy okazji?
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_20_01"); //Które z nas masz na mysli?
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_20_02"); //(powaznie) Oczywiscie, ja. Dlaczego chcialby porozmawiac z Toba, glowa dziecka?
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_20_03"); //Zabierasz to natychmiast!
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_20_04"); //Powaznie o tym zapomnij.
	AI_Output(hero, self, "Info_Mod_Eremit_WerBistDu_15_05"); //Hej, badz cichy. Czy nie mozesz sie zgodzic, zanim cos powiesz?
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_20_06"); //W tajemnicy?
	AI_Output(hero, self, "Info_Mod_Eremit_WerBistDu_15_07"); //Tak, to prawda.
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_20_08"); //(dzieci, entuzjasci) Ohhhhhhhh....
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_20_09"); //Nie chce, aby zawiodla z mojej winy.
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_20_10"); //Powaznie, tak czy owak jestem zaklopotany, kiedy ktos musi sluchac komentarzy osoby opóznionej.
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_20_11"); //Zabierasz to z powrotem!
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_20_12"); //Nie!
	AI_Output(hero, self, "Info_Mod_Eremit_WerBistDu_15_13"); //Shh.
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_20_14"); //(nosi gardlo, normalny glos) Witaj. Przypomina nam o dawnych czasach, ze tak powiem.
	AI_Output(hero, self, "Info_Mod_Eremit_WerBistDu_15_15"); //Znacznie lepiej teraz.
};

INSTANCE Info_Mod_Eremit_Woher (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Woher_Condition;
	information	= Info_Mod_Eremit_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skad pochodzisz?";
};

FUNC INT Info_Mod_Eremit_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Woher_15_00"); //Skad pochodzisz?
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_01"); //Pierwotnie pochodzilismy z ladu i wspólnie przygotowalismy mapy.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_02"); //Dopóki nie wynajelismy tego statku do stworzenia mapy wybrzeza Khorini.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_03"); //Nie bylismy nawet na plytkich wodach, kiedy zostalismy zaatakowani i zatopieni przez Orkgaleere.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_04"); //Na beczce wina portowego wyplynelismy na plaze - jedynego.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_05"); //Do tego czasu Piranie zerwali juz cztery palce.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_06"); //Dla mnie tylko trzy.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_07"); //Po prostu nie mozna liczyc wiecej niz trzy.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_08"); //Potem osiedlilismy sie wygodnie.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_09"); //Nie na plazy mieszkaja tu policjanci. Nie chcielismy z nimi nic wspólnego.
	AI_Output(hero, self, "Info_Mod_Eremit_Woher_15_10"); //Nie próbowales nigdy wrócic na lad?
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_11"); //Nah, czlowiek. Czeka na nas tylko jedna irytujaca kobieta, która nie chce miec dzieci.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_12"); //Tutaj mozemy równiez rysowac mapy.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_13"); //Dzieki handlowi z piratami dostarczamy nam najwazniejsze rzeczy, a to wszystko, czego potrzebujemy.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_14"); //Samotnosc czasami sie nudzi, a my nawzajem na siebie nerwy.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_20_15"); //Czasami zyczymy sobie jednej trzeciej w sojuszu.
	AI_Output(hero, self, "Info_Mod_Eremit_Woher_15_16"); //Zapisz Adanos!
};

INSTANCE Info_Mod_Eremit_WiesoDieb (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_WiesoDieb_Condition;
	information	= Info_Mod_Eremit_WiesoDieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego kradles sprzet magików wodnych?";
};

FUNC INT Info_Mod_Eremit_WiesoDieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_WiesoDieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_WiesoDieb_15_00"); //Dlaczego kradles sprzet magików wodnych?
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_20_01"); //Magowie wody sa mezczyzni w szatach?
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_20_02"); //Z jednej strony.... (must overcome) chcielismy sie z nimi bawic.
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_20_03"); //Z drugiej strony, potrzebujemy skladników dla kilku przepisów pozostawionych przez starych ludzi.
	AI_Output(hero, self, "Info_Mod_Eremit_WiesoDieb_15_04"); //Mozesz wiec przeczytac jej jezyk?
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_20_05"); //Czytanie, mówienie, cokolwiek chcesz.
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_20_06"); //Czytalem wszystkie znalezione teksty.
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_20_07"); //Oczywiscie na poczatku nie rozumialem tego slowa, ale mialem czas.
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_20_08"); //Wenn es ein Wort gibt, dass das alte Volk beschreibt, dann ist es "magiczny".
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_20_09"); //W tym wzgledzie byli przed wami.
};

INSTANCE Info_Mod_Eremit_AlteSprache (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_AlteSprache_Condition;
	information	= Info_Mod_Eremit_AlteSprache_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz nauczyc mnie jezyka starych ludzi?";
};

FUNC INT Info_Mod_Eremit_AlteSprache_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_WiesoDieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_AlteSprache_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_AlteSprache_15_00"); //Czy mozesz nauczyc mnie jezyka starych ludzi?
	AI_Output(self, hero, "Info_Mod_Eremit_AlteSprache_20_01"); //Mogloby to zostac wynegocjowane w odpowiednim czasie.
	AI_Output(self, hero, "Info_Mod_Eremit_AlteSprache_20_02"); //Fnidhdr gröggel snüt!
	AI_Output(self, hero, "Info_Mod_Eremit_AlteSprache_20_03"); //Wystarczy uwazac na usta!
};

INSTANCE Info_Mod_Eremit_Prisma (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma_Condition;
	information	= Info_Mod_Eremit_Prisma_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebuje pomocy w tworzeniu pryzmatu.";
};

FUNC INT Info_Mod_Eremit_Prisma_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_WiesoDieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma_15_00"); //Potrzebuje pomocy w tworzeniu magicznego pryzmatu.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_20_01"); //magiczny pryzmat? Slyszelismy równiez o tym.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_20_02"); //Przez jakis czas byl on modny dla dawnych ludzi.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_20_03"); //Czesci te jednak zniknely tak szybko, jak tylko sie pojawily. Nie pytaj dlaczego.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma_15_04"); //Czy nie zdarzyloby Ci sie wiedziec, jak wykonac taki pryzmat?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_20_05"); //Tak, prawdopodobnie poradzilibysmy sobie z tym.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_20_06"); //(powaznie) No cóz, ja tak czy owak.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_20_07"); //Potrzebujemy jedynie czarnej perly.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma_15_08"); //Jesli przyniose Ci jedna, to czy mielisz mój pryzmat?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_20_09"); //Tak. Jeden warunek.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma_15_10"); //Co to jest?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_20_11"); //Mozemy zatrzymac magów wody.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma_15_12"); //Szatan's gonna zerwac glowe z glowy, ale dobrze.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_20_13"); //Wrócimy z powrotem, wrócimy tak dlugo, jak tylko bedziesz gotowy.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_20_14"); //Na tej mapie zaznaczylismy gdzie mozna nas znalezc.

	B_GiveInvItems	(self, hero, ItWr_Map_Eremit, 1);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItMi_DarkPearl, 1);

	if (Mod_Saturas_Gast == 1)
	{
		B_LogEntry_More (TOPIC_MOD_MAGIEPRISMA, TOPIC_MOD_SATURAS_TAGGAST, "pustelnik, który ukradl magów wodnych chce byc w stanie pomóc z pryzmatem. Musze tylko przyjsc do niego z czarna perla. Zapisal droge do swego mieszkania dla mnie.", "Zlodziej jest pustelnikiem. W zamian za jego wiedze obiecalem przyjac wine za wine Szatana.");
	}
	else
	{
		B_LogEntry_More (TOPIC_MOD_MAGIEPRISMA, TOPIC_MOD_SATURAS_NACHTGAST, "pustelnik, który ukradl magów wodnych chce byc w stanie pomóc z pryzmatem. Musze tylko przyjsc do niego z czarna perla. Zapisal droge do swego mieszkania dla mnie.", "Zlodziej jest pustelnikiem. W zamian za jego wiedze obiecalem przyjac wine za wine Szatana.");
	};
};

INSTANCE Info_Mod_Eremit_Prisma2 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma2_Condition;
	information	= Info_Mod_Eremit_Prisma2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem tam i jestem gotowy.";
};

FUNC INT Info_Mod_Eremit_Prisma2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma))
	&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
	&& (Npc_GetDistToWP(self, "ADW_VALLEY_BENCH") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma2_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma2_15_00"); //Jestem tam i jestem gotowy.
	
	B_GiveInvItems(hero, self, ItMi_DarkPearl, 1);
	
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma2_20_01"); //A nawet przyprowadziles swoich przyjaciól do gry z Toba?
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma2_15_02"); //Jaki znajomy?

	B_LogEntry	(TOPIC_MOD_MAGIEPRISMA, "Moi przeciwnicy pozostaja na pietach. Kiedy odwiedzilem pustelnika dla pryzmatu, zaatakowalo mnie kilku nieumarlych pod przywództwem Urnola.");

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(ZombieRandom_Eremit_01,	"ADW_VALLEY_PATH_031");
	Wld_InsertNpc	(ZombieRandom_Eremit_02,	"ADW_VALLEY_PATH_031");
	Wld_InsertNpc	(ZombieRandom_Eremit_03,	"ADW_VALLEY_PATH_031");
	Wld_InsertNpc	(ZombieRandom_Eremit_04,	"ADW_VALLEY_PATH_031");
	Wld_InsertNpc	(Skeleton_Eremit_01,	"ADW_VALLEY_PATH_031");
	Wld_InsertNpc	(Skeleton_Eremit_02,	"ADW_VALLEY_PATH_031");
};

INSTANCE Info_Mod_Eremit_Prisma3 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma3_Condition;
	information	= Info_Mod_Eremit_Prisma3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Prisma3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma2))
	&& (Npc_IsDead(ZombieRandom_Eremit_01))
	&& (Npc_IsDead(ZombieRandom_Eremit_02))
	&& (Npc_IsDead(ZombieRandom_Eremit_03))
	&& (Npc_IsDead(ZombieRandom_Eremit_04))
	&& (Npc_IsDead(Skeleton_Eremit_01))
	&& (Npc_IsDead(Skeleton_Eremit_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma3_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_20_00"); //Ogrzalismy je calkiem dobrze. Oni nie mieli szans na to, zeby nam sie sprzeciwic.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma3_15_01"); //Skad zawsze wiedza, gdzie jestem teraz?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_20_02"); //Nic nie jest niemozliwe. Moze znaja kilka sztuczek starych ludzi.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma3_15_03"); //Jakie triki?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_20_04"); //Po prostu sie domyslamy. Byc moze zaznaczyli cie magicznie, abys mógl naniesc drobny slad w dowolnym miejscu, który jest widoczny dla kólka.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_20_05"); //Czy kiedykolwiek zblizyles sie do jednego z nich zanim go zabiles?
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma3_15_06"); //Kilka razy.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_20_07"); //Jest to przynajmniej jedna z mozliwosci.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma3_15_08"); //Jak moge pozbyc sie markera?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_20_09"); //Nie wiem o tym. Czar nie jest przeznaczony do latwego lamania.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_20_10"); //Mozliwe, ze uda Ci sie go oszukac przekierowujac go na inny przedmiot.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma3_15_11"); //Obiekt, który nastepnie losowo porusza sie po swiecie, aby zdezorientowac moich przeciwników.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_20_12"); //Dokladnie.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma3_15_13"); //Wszystko w porzadku, ale jak zaczac?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_20_14"); //Nie pytaj nas..... Co mówia szaty? Moze jeden z nich ma pomysl.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_20_15"); //Albo ktos, kto zna starych ludzi lepiej niz my. Jesli cos takiego jest.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_20_16"); //Lepiej byloby, gdybyscie Panstwo zdjeli znacznik przed przystapieniem do pracy. Tak wielu odwiedzajacych nas jest troche denerwujacych.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_20_17"); //Zanim wrócisz do domu, skonczymy polerowanie pryzmatu.

	B_LogEntry_More	(TOPIC_MOD_MAGISCHEMARKIERUNG, TOPIC_MOD_MAGIEPRISMA, "Pustelnik podejrzewa, ze wszedzie bylbym widoczny z powodu magicznego markera dla tego zlowieszczego Urnola i jego mistrza. Sam nie wie, jak sie ich pozbyc. Jesli ja znam, powinienem zwrócic sie do Vatras lub jednego z starozytnych ludzi. Argez móglby byc równiez rozwiazaniem awaryjnym.", "pustelnik teraz miesza czarna perle. Gdy zdejme znacznik magii, chca, zebym wrócil.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Eremit_Prisma4 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma4_Condition;
	information	= Info_Mod_Eremit_Prisma4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Prisma4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Magiespur2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma4_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma4_20_00"); //Chodz, przyjdz! Nadal mamy jeszcze pewna droge do przebycia!
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma4_15_01"); //Gdzie zmierzamy?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma4_20_02"); //W poblizu znajduje sie jaskinia, w której moc Beliara jest silna. To musi wystarczyc.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma4_15_03"); //Czysty? Co robi pieklo?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma4_20_04"); //Beliar jest jedynym z trzech bogów, którzy ucielesniaja nieposkromione jak Radanos, bóg starozytnego ludu.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma4_20_05"); //Poniewaz nie mozemy juz prosic Radanosa o pomoc, musimy zajac sie Beliarem.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma4_15_06"); //Mam zle uczucie....
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma4_20_07"); //Nierozsadne byloby równiez czuc sie bezpiecznie w obecnosci Beliara.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma4_20_09"); //Ale idzmy teraz!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RITUALHOEHLE");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Eremit_Prisma5 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma5_Condition;
	information	= Info_Mod_Eremit_Prisma5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Prisma5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma4))
	&& (Npc_GetDistToWP(self, "ADW_VALLEY_PATH_020_CAVE_05") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma5_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_20_00"); //Musisz nam pomóc w obrzedach.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma5_15_01"); //Jak to dziala?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_20_02"); //Pryzmat nie jest jeszcze na tyle chlonny, by pomnozyc czary wielokrotnych zaklec, wiec rzucimy zaklecie ekspansyjne, by zwiekszyc magiczna objetosc pryzmatu.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_20_03"); //Moze to zajac troche czasu. Pryzmat bedzie próbowal odpychac czar.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_20_04"); //Ale z Beliarsem i wasza pomoca, to powinno dzialac.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_20_05"); //Moja glowa bzyczy!
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma5_15_06"); //Co moge zrobic?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_20_07"); //Dwoje z nas ma wystarczajaco duzo do zrobienia, aby utrzymac zaklecie.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_20_08"); //Trzeba sie upewnic, ze on pozostaje w pryzmie.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma5_15_09"); //I jak?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_20_10"); //Dopóki jest w pryzmie, swieci sie.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_20_11"); //Ermattet das Prisma, musst du schnell handeln - du hast nur wenige Sekunden, um den Zauber "Gniew Beliara" zu wirken, der den Dehnzauber zurück in seinen eigentlichen Bestimmungsort treibt.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_20_12"); //Oto kilka zaklec. Jesli kilka pierwszych prób nie zadziala, damy ci jeszcze wiecej.

	B_GiveInvItems	(self, hero, ItSc_BeliarsRage, 6);

	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_20_13"); //Czy jestes gotowy?

	B_LogEntry	(TOPIC_MOD_MAGIEPRISMA, "Rytual moze sie teraz zaczac - musze uwazac, aby rozciagajace sie zaklecia pustelników nie opuscily pryzmatu. Jesli pryzmat ma sie ubrac, musze natychmiast rzucic zaklecie 'Beliars Zorn'.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Eremit_Prisma6 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma6_Condition;
	information	= Info_Mod_Eremit_Prisma6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dajmy jej strzal.";
};

FUNC INT Info_Mod_Eremit_Prisma6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma6_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma6_15_00"); //Dajmy jej strzal.
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RITUAL");

	Wld_InsertItem	(ItMi_Magieprisma_Fake, "FP_ITEM_MAGIEPRISMA");

	Wld_PlayEffect ("SPELLFX_PRISMA", ItMi_Magieprisma_Fake, ItMi_Magieprisma_Fake, 0, 0, 0, FALSE);
	
	Wld_SendTrigger("PRSIMAMOVER");
};

INSTANCE Info_Mod_Eremit_Prisma7 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma7_Condition;
	information	= Info_Mod_Eremit_Prisma7_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Prisma7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma6))
	&& (Mod_PrismaRitual_ZuLangsam == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma7_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma7_20_00"); //To jeszcze nie zadzialalo. Ponownie!

	AI_StopProcessInfos	(self);

	Mod_PrismaRitual_ZuLangsam = FALSE;

	Mod_PrismaRitual_Counter = 0;

	Wld_PlayEffect ("SPELLFX_PRISMA", ItMi_Magieprisma_Fake, ItMi_Magieprisma_Fake, 0, 0, 0, FALSE);
};

INSTANCE Info_Mod_Eremit_Prisma8 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma8_Condition;
	information	= Info_Mod_Eremit_Prisma8_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Prisma8_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma6))
	&& (Npc_HasItems(hero, ItSc_BeliarsRage) == 0)
	&& (Mod_PrismaRitual_Counter < 80)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma8_Info()
{
	if (!Mod_PrismaZauber_Eremit) {
		AI_Output(self, hero, "Info_Mod_Eremit_Prisma8_20_00"); //Nie masz zaklec. Oto kilka nowych.

		B_GiveInvItems	(self, hero, ItSc_BeliarsRage, 6);

		AI_StopProcessInfos	(self);

		Mod_PrismaZauber_Eremit = TRUE;
	} else {
		AI_Output(self, hero, "Info_Mod_Eremit_Prisma8_20_01"); //Phew, jeszcze nie jestesmy skonczeni. Pozostalo jeszcze kilka zaklec, ale przy Twoim zuzyciu nie bedziemy w stanie.
		AI_Output(self, hero, "Info_Mod_Eremit_Prisma8_20_02"); //Próbujesz nas oszukac?
		AI_Output(self, hero, "Info_Mod_Eremit_Prisma8_20_03"); //Jesli chcesz wiecej zaklec, zaczynamy naliczac 300 sztuk zlota.

		Info_ClearChoices	(Info_Mod_Eremit_Prisma8);

		Info_AddChoice	(Info_Mod_Eremit_Prisma8, "Nie mam jeszcze tyle zlota.", Info_Mod_Eremit_Prisma8_B);

		if (Npc_HasItems(hero, ItMi_Gold) >= 300) {
			Info_AddChoice	(Info_Mod_Eremit_Prisma8, "Dobrze, daj mi magie.", Info_Mod_Eremit_Prisma8_A);
		};
	};

	Mod_PrismaRitual_ZuLangsam = FALSE;

	Mod_PrismaRitual_Counter = 0;
};

FUNC VOID Info_Mod_Eremit_Prisma8_A()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma8_A_15_00"); //Dobrze, daj mi magie.

	B_GiveInvItems	(hero, self, ItMi_Gold, 300);

	AI_Output(self, hero, "DEFAULT"); //

	B_GiveInvItems	(self, hero, ItSc_BeliarsRage, 6);

	Info_ClearChoices	(Info_Mod_Eremit_Prisma8);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Eremit_Prisma8_B()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma8_B_15_00"); //Nie mam jeszcze tyle zlota.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Eremit_Prisma8);

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk	(self, 30);
};

INSTANCE Info_Mod_Eremit_Prisma9 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma9_Condition;
	information	= Info_Mod_Eremit_Prisma9_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Prisma9_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma6))
	&& (Mod_PrismaRitual_Counter == 80)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma9_Info()
{
	Wld_RemoveItem	(ItMi_Magieprisma_Fake);

	Wld_InsertItem	(ItMi_Magieprisma, "FP_ITEM_MAGIEPRISMA");

	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_20_00"); //Wlasnie to otrzymalismy. Tam znajduje sie twój skonczony pryzmat.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma9_15_01"); //Jak moge wam podziekowac?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_20_02"); //Wystarczy proste podziekowania.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma9_15_03"); //Dzieki.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_20_04"); //Mozemy równiez udzielic wskazówek do wykorzystania.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_20_05"); //Pryzmat aktywuje sie tylko wtedy, gdy wyjmie sie go z bagazu i umiesci.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_20_06"); //Wszystkie zaklecia obrazen beda teraz ladowac pryzmat.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_20_07"); //Jednak tylko trzy do czterech czarów mozna umiescic w pryzmie jednoczesnie.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_20_08"); //Jesli mówisz wiecej, czary zostana utracone.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma9_15_09"); //Bede o tym pamietac.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_20_10"); //Niech przyniesie Ci to szczescie w podrózy.

	B_GivePlayerXP	(350);

	Wld_StopEffect ("SPELLFX_PRISMA");

	B_SetTopicStatus	(TOPIC_MOD_MAGIEPRISMA, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_PRISMA, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_PRISMA, "Gdy zaaplikowany jest pryzmat, a bohater rzuca zaklecie obrazenia, pryzmat jest naladowany. Pryzmat moze pomiescic jednoczesnie cztery czary. Pryzmat moze byc wyzwalany przez nacisniecie przypisanego klawisza, a nastepnie zadaje obrazenia otaczajacym wrogom z czterech zaklec.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
	
	Wld_SendUnTrigger("PRSIMAMOVER");
};

INSTANCE Info_Mod_Eremit_ScrollJG (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_ScrollJG_Condition;
	information	= Info_Mod_Eremit_ScrollJG_Info;
	permanent	= 0;
	important	= 0;
	description	= "Adanos, powitanie.";
};

FUNC INT Info_Mod_Eremit_ScrollJG_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Riordian_AW_ScrollJG))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	&& (Npc_HasItems(hero, ItWr_TruhenNotizJG) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_ScrollJG_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_00"); //Adanos, powitanie.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_20_01"); //Adanos? Zapomnij o tym nonsensie!
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_02"); //Nie jestes fanem wody?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_20_03"); //Nie, nie pojawil sie w starych pismach, które czytalismy. Udalo nam sie rozszyfrowac cztery jezyki.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_04"); //Czyms? Wiem tylko trzy, co jest czwartym?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_20_05"); //Jezyk uczonych.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_20_06"); //Potem natknelismy sie na inny jezyk. To bylo tak straszne, ze dzisiaj wciaz panikujemy, kiedy myslimy o tym.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_07"); //Hmm. Wtedy mozesz tez nauczyc mnie jezyka uczonych?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_20_08"); //Nie wiemy, czy jestes na to jeszcze gotowy.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_09"); //No cóz, spróbuj. Nie upadlem na glowe.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_20_10"); //Slysze wiec:"Ralgnatiru chrenid kar. “
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_11"); //Zatrzymaj go. Nie rozumiem slowa.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_20_12"); //Tak, jestes. Przepraszam za to.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_13"); //Hmm. Czy moze pan przynajmniej przetlumaczyc to przeslanie dla mnie?

	B_GiveInvItems	(hero, self, ItWr_TruhenNotizJG, 1);

	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_20_14"); //Pozwole sobie to zobaczyc.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_20_15"); //Tak. Jezyk naukowy.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_16"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_20_17"); //Dostales dla nas zloto? Musimy ponownie pójsc na zakupy z piratami.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_18"); //Ile miales na mysli?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_20_19"); //Wyglada na to, ze jestescie zainteresowani. Okolo 500 zlota....

	Info_ClearChoices	(Info_Mod_Eremit_ScrollJG);

	Info_AddChoice	(Info_Mod_Eremit_ScrollJG, "Tutaj idziesz. A co?", Info_Mod_Eremit_ScrollJG_B);
	Info_AddChoice	(Info_Mod_Eremit_ScrollJG, "Czy zloto 200 zlota równiez?", Info_Mod_Eremit_ScrollJG_A);
};

FUNC VOID Info_Mod_Eremit_ScrollJG_B()
{
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_B_15_00"); //Tutaj idziesz. A co?

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_B_20_01"); //Ten tekst wyjasnia, jak uzywac okreslonej czcionki.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_B_15_02"); //Dostalismy tez czesc.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_B_20_03"); //Mówi sie tutaj: Ralgnatiru chrenid.....
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_B_20_04"); //Przy okazji:"Wezcie te role, bryle rudy nieczystej, eliksir szybkosci, czesc zwierzecia lub agaryke muchowa, miazsz nieumarlych i dwie kosci szkieletowe.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_B_20_05"); //Das füge man in der Opferschale zusammen. Sodann erscheint ein Gegenstand, der dir in Zeiten höchster Bedrängnis helfen wird."
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_B_15_06"); //Tarcza. Wywoluje to wiecej pytan niz odpowiedzi.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_B_20_07"); //Przepraszam za to. Nie mozemy Ci tez pomóc.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_B_15_08"); //Postawie na Ciebie. Tak wiec jestesmy nawet?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_B_20_09"); //Oczywiscie. Zyczymy powodzenia.

	B_GivePlayerXP	(250);

	Info_ClearChoices	(Info_Mod_Eremit_ScrollJG);

	Log_CreateTopic	(TOPIC_MOD_JG_OPFERSCHALE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_OPFERSCHALE, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_JG_SCROLL, TOPIC_MOD_JG_OPFERSCHALE, "Pustelnik przetlumaczyl mi tekst. Jest napisana w jezyku uczonych i zajmuje sie pewna miska ofiarna. Hmm. Mam nadzieje, ze Wulfgar o tym wie.", "Hmm. Potrzebuje dwóch kosci szkieletowych, czegos o muchie krwi lub agarycznej muchy, peczniejacego eliksiru i rudy nieczystej. To moze byc dziwna ruda, która mam z Grimbaldu. Mam nadzieje, ze mam ja przy sobie. A potem miska ofiarnicza. Który z nich prosze? Byc moze Riordian....");
	B_SetTopicStatus	(TOPIC_MOD_JG_SCROLL, LOG_SUCCESS);
};

FUNC VOID Info_Mod_Eremit_ScrollJG_A()
{
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_A_15_00"); //Czy zloto 200 zlota równiez?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_A_20_01"); //Nie. Musimy kupowac z góry.

	Info_ClearChoices	(Info_Mod_Eremit_ScrollJG);

	Info_AddChoice	(Info_Mod_Eremit_ScrollJG, "Tutaj idziesz. A co?", Info_Mod_Eremit_ScrollJG_B);
};

INSTANCE Info_Mod_Eremit_Zeremoniendolch (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Zeremoniendolch_Condition;
	information	= Info_Mod_Eremit_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj! Tutaj znasz swoja droge.";
};

FUNC INT Info_Mod_Eremit_Zeremoniendolch_Condition()
{
	if (Mod_ASS_DolchMonolog == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Zeremoniendolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch_15_00"); //Witaj! Tutaj znasz swoja droge.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch_20_01"); //Oto co rozumiemy. Czego szukasz?
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch_15_02"); //Jak miejsce rytualu, miejsce ofiarnicze, miejsce mistyczne czy cos mistycznego.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch_20_03"); //Do tej pory cos juz wiemy. Ale zebysmy ci to powiedziec, musisz zrobic nam laske.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch_15_04"); //I co to jest?
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch_20_05"); //Brakuje nam jedzenia. I wtedy chcielibysmy miec cos innego niz woda z jeziora przez pirackich piratów.
};

INSTANCE Info_Mod_Eremit_Zeremoniendolch2 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Zeremoniendolch2_Condition;
	information	= Info_Mod_Eremit_Zeremoniendolch2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam na sobie kilka rzeczy. Spróbuj tego wina.";
};

FUNC INT Info_Mod_Eremit_Zeremoniendolch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Zeremoniendolch))
	&& (Npc_HasItems(hero, ItFo_Wine) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Zeremoniendolch2_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch2_15_00"); //Mam na sobie kilka rzeczy. Spróbuj tego wina.

	B_GiveInvItems	(hero, self, ItFo_Wine, 1);

	B_UseItem	(self, ItFo_Wine);

	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch2_20_01"); //Boaar! Minelo wiele czasu od wypicia tego rodzaju dobrych rzeczy! Gdzie mozna to osiagnac?
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch2_15_02"); //Mozna ja kupic prawie wszedzie w Khorinis.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch2_20_03"); //Khorinis?
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch2_15_04"); //Druga czesc wyspy. Gdzie ja i magicy wody pochodze w swiatyni.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch2_20_05"); //Jak tam dotrzec?
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch2_15_06"); //Przez te sama swiatynie. Jestem pewien, ze magicy Ci pomoga.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch2_20_07"); //Pomyslimy. Ale po pierwsze, to, czego pilnie potrzebujemy. Napiszemy Ci notatke.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch2_20_08"); //W miedzyczasie mozna bylo nas wyplynac z jeziora w kotlinie dolinowej niedaleko piratów. Tutaj jest szufla.

	B_GiveInvItems	(self, hero, ItMi_Eimer, 1);

	Log_CreateTopic	(TOPIC_MOD_ASS_EREMIT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_EREMIT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_EREMIT, "pustelnik chce napisac liste rzeczy, których potrzebuje. W miedzyczasie zaczne go od wiadra wody z jeziora w kotlinie w dolinie w poblizu piratów.");
};

INSTANCE Info_Mod_Eremit_Zeremoniendolch3 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Zeremoniendolch3_Condition;
	information	= Info_Mod_Eremit_Zeremoniendolch3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto woda.";
};

FUNC INT Info_Mod_Eremit_Zeremoniendolch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Zeremoniendolch2))
	&& (Npc_HasItems(hero, ItMi_EimerW) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Zeremoniendolch3_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch3_15_00"); //Oto woda.

	B_GiveInvItems	(hero, self, ItMi_EimerW, 1);

	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch3_20_01"); //Oto nasza lista. Potrzebujemy tez nowego poklonu mysliwskiego i nowej patelni.

	B_GiveInvItems	(self, hero, ItWr_EremitEinkaufsliste, 1);

	B_HEROFAKESCROLL();

	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch3_15_02"); //Czytam tutaj: 30 drewna. Czy masz na mysli normalne lub ciezkie galezie?
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch3_20_03"); //Nie ma to znaczenia. Najwazniejsze jest to, ze jest suchy i dobrze sie pali.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch3_15_04"); //A potem powiesz mi, gdzie moge znalezc miejsce ofiary?
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch3_20_05"); //Obiecuje.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch3_15_06"); //Do zobaczenia pózniej.

	B_LogEntry	(TOPIC_MOD_ASS_EREMIT, "Moze pustelnik mi pomoze. Ale najpierw musze ukonczyc jego liste zakupów. Chce 20 bochenków, 10 szynki, 10 kielbas, 10 kielbas, 10 kielbas, 5 grog, 30 galezi, 300 strzal, 1 luk mysliwski, 2 molowe tluszcze i nowa patelnie. Miejmy nadzieje, ze wysilek jest wart zachodu.....");

	Wld_InsertNpc	(Mod_7640_RDW_Cavalorn_AW, "ADW_ENTRANCE");
};

INSTANCE Info_Mod_Eremit_Zeremoniendolch4 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Zeremoniendolch4_Condition;
	information	= Info_Mod_Eremit_Zeremoniendolch4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj! Wróc do swoich rzeczy.";
};

FUNC INT Info_Mod_Eremit_Zeremoniendolch4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Zeremoniendolch2))
	&& (Npc_HasItems(hero, ItFo_Bread) >= 20)
	&& (Npc_HasItems(hero, ItFo_Bacon) >= 10)
	&& (Npc_HasItems(hero, ItFo_Wine) >= 10)
	&& (Npc_HasItems(hero, ItFo_Sausage) >= 10)
	&& (Npc_HasItems(hero, ItFo_Addon_Grog) >= 5)
	&& (Npc_HasItems(hero, ItMi_Ast) >= 30)
	&& (Npc_HasItems(hero, ItRw_Arrow) >= 300)
	&& (Npc_HasItems(hero, ItMi_MoleratLubric_MIS) >= 2)
	&& (Npc_HasItems(hero, ItRw_Bow_L_03) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Zeremoniendolch4_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch4_15_00"); //Witaj! Wróc do swoich rzeczy. Bylo to dosc drogie, a wszystko to wszystko.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch4_20_01"); //Pozwole sobie to zobaczyc. Zobaczmy najpierw.

	Npc_RemoveInvItems	(hero, ItFo_Bread, 20);
	Npc_RemoveInvItems	(hero, ItFo_Bacon, 10);
	Npc_RemoveInvItems	(hero, ItFo_Wine, 10);
	Npc_RemoveInvItems	(hero, ItFo_Sausage, 10);
	Npc_RemoveInvItems	(hero, ItFo_Addon_Grog, 5);
	Npc_RemoveInvItems	(hero, ItMi_Ast, 30);
	Npc_RemoveInvItems	(hero, ItRw_Arrow, 300);
	Npc_RemoveInvItems	(hero, ItMi_MoleratLubric_MIS, 2);
	Npc_RemoveInvItems	(hero, ItRw_Bow_L_03, 1);

	B_ShowGivenThings	("Rózne przedmioty");

	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch4_20_02"); //Wspaniale, wszystko w tym. Przedstawimy Ci sugestie: Jesli nasza wskazówka pomoze, otrzymamy dostawe bezplatnie. Jesli nie, zaplacimy za to.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch4_15_03"); //Drobny, drobny. Gdzie jest to miejsce ofiarne?
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch4_20_04"); //Wiec posluchajcie: Tuz za rogiem, w drodze od doliny do góry, kryje sie zakret na maly plaskowyz.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch4_20_05"); //Znajdziesz tu krypte. I tam moze byc twoje miejsce ofiarne.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch4_15_06"); //Czy kiedykolwiek byles tam wczesniej?
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch4_20_07"); //Zapisz! Jest pelna potworów. Nikt nie moze nas wciagnac. Mozemy byc troche dziwni, ale nie jestesmy samobójczy.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch4_15_08"); //Moge sobie z tym poradzic. Jestem podekscytowany.

	B_LogEntry	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, "Hermit opowiadal mi o plaskowyzu w poblizu jego chaty. Wejscie prowadzi sciezka. Jest tu grobowiec i mnóstwo potworów. Zobaczmy jak.....");
	B_SetTopicStatus	(TOPIC_MOD_ASS_EREMIT, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	Wld_InsertNpc	(Troll_Weg, "FP_ROAM_VALLEY_010");
};

INSTANCE Info_Mod_Eremit_Zeremoniendolch5 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Zeremoniendolch5_Condition;
	information	= Info_Mod_Eremit_Zeremoniendolch5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Zeremoniendolch5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Zeremoniendolch4))
	&& (Npc_HasItems(hero, ItMw_Avaquar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Zeremoniendolch5_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch5_20_00"); //Czy masz sztylet?
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch5_15_01"); //Tak. Byl w grobowcu, ale byl dobrze chroniony. I wtedy bydlo!
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch5_20_02"); //Tak wlasnie mówilismy. Wtedy nic Ci nie zawdzieczamy.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch5_15_03"); //Taka jest umowa. Zegnam sie, musze isc dalej.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch5_20_04"); //Niech slonce wskaze ci droge. Stare powiedzenie.
};

INSTANCE Info_Mod_Eremit_Sumpfmensch (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Sumpfmensch_Condition;
	information	= Info_Mod_Eremit_Sumpfmensch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Sumpfmensch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skip_Sumpfmensch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Sumpfmensch_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch_20_00"); //Czego chcesz?
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch_15_01"); //Czy znasz pirata o imieniu Darrion?
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch_20_02"); //Darrion? Znam go.
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch_15_03"); //Tlumaczyles dla niego ksiazke.
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch_20_04"); //Co by bylo, gdyby? Nie wiem, co to jest Twój biznes!
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch_15_05"); //Boli, jest....
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch_20_06"); //Nie interesuje mnie to! Idz dalej i zostaw mnie sam na sam.
	
	AI_StopProcessInfos(self);
};

INSTANCE Info_Mod_Eremit_Sumpfmensch2 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Sumpfmensch2_Condition;
	information	= Info_Mod_Eremit_Sumpfmensch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Sumpfmensch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Sumpfmensch))
	&& (Npc_HasItems(hero, ItMi_StinkeCheese) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Sumpfmensch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_20_00"); //Poczekaj minute! Ten zapach.... zapach, który sprawia, ze.... Czy masz z Toba ser plesniowy?
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch2_15_01"); //Co zrobic, gdybym to zrobil?
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_20_02"); //Uh.... Musze przeprosic za swoja chamosc, nie mialem tego na mysli. Chciales wiedziec o Darrionie, czyz nie?
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_20_03"); //Przyszedl do mnie z ksiazka, zostala napisana w starozytnych pismach swietych tej ziemi. Szczególnie zainteresowal sie opisywaniem kwiatu.
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_20_04"); //Tlumaczylem jego strone i on zniknal ponownie.
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch2_15_05"); //W przeciwnym razie?
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_20_06"); //Od tego czasu go nie widzialem.
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch2_15_07"); //Wszystkie sluszne, wszystkie sluszne. Tutaj.
	
	B_GiveInvItems(hero, self, ItMi_StinkeCheese, 1);
	
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_20_08"); //Och, tak! Bardzo dziekuje!
	
	B_UseItem(self, ItFo_Cheese);
	
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_20_09"); //Tak, powiedz Darrionowi, jesli go nie widzisz, nie pozwól mu wlozyc rosliny.
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_20_10"); //Ksiazka opisuje, ze roslina jest w jakis sposób zwiazana z jakims potworem.
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_20_11"); //Genau hab ich es nicht verstanden, aber der Autor stellt irgendeine Beziehung zwischen einer dieser Pflanzen und fünf "olbrzymie bagna" her.
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch2_15_12"); //A dlaczego nie powiecie tego Darrionowi!
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_20_13"); //To bylo na nastepnej stronie, jeszcze nie przetlumaczylem.......
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch2_15_14"); //Och, czlowiek....
	
	AI_StopProcessInfos(self);

	B_LogEntry	(TOPIC_MOD_SL_SUMPFMENSCH, "Pustelnik opowiedzial mi o roslinie, która zainteresowal sie Darrion. Wedlug pustelnika, jest zwiazany z piecioma gigantami bagiennymi. Moze Darrion odkryl te rosline i zasadzil ja w bagnie? Powinienem wrócic do obozu bagiennego i opowiedziec Baalowi Joru o swoich odkryciach.");
};

INSTANCE Info_Mod_Eremit_NettHier (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_NettHier_Condition;
	information	= Info_Mod_Eremit_NettHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ladne miejsce, do którego dotarles.";
};

FUNC INT Info_Mod_Eremit_NettHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma))
	&& (Npc_GetDistToWP(self, "ADW_VALLEY_BENCH") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_NettHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_NettHier_15_00"); //Ladne miejsce, do którego dotarles.
	AI_Output(self, hero, "Info_Mod_Eremit_NettHier_20_01"); //Z duza iloscia czasu mozna zrobic wszystko.
	AI_Output(self, hero, "Info_Mod_Eremit_NettHier_20_02"); //Poniewaz jestesmy razem, pokój jest troche ciasny, wiec spimy razem w jednym lózku.
	AI_Output(self, hero, "Info_Mod_Eremit_NettHier_20_03"); //Ale jesli masz tylko niezbedne rzeczy do zycia, bedziesz tez w stanie poradzic sobie z mala przestrzenia.
};

INSTANCE Info_Mod_Eremit_PreLehrer (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_PreLehrer_Condition;
	information	= Info_Mod_Eremit_PreLehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Eremit_PreLehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma))
	&& (Npc_GetDistToWP(self, "ADW_VALLEY_BENCH") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_PreLehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer_20_00"); //Mozemy nauczyc Cie jezyka starozytnej kultury....
	AI_Output(hero, self, "Info_Mod_Eremit_PreLehrer_15_01"); //Grzywna. Cóz, co mam do....?
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer_20_02"); //(przerwania) Powiedzielismy, ze mozemy.... ale nie mamy nerwy, aby to zrobic juz teraz!
	AI_Output(hero, self, "Info_Mod_Eremit_PreLehrer_15_03"); //Dlaczego, co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer_20_04"); //Ah.... Te harfy boginne bardzo utrudniaja nam zycie.
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer_20_05"); //Za kazdym razem, gdy chcemy ugotowac cos milego, przychodza i.... oh, chodz, tam znów sa!

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Harpie_Eremit_01, "ADW_VALLEY_PATH_032");
	Wld_InsertNpc	(Harpie_Eremit_02, "ADW_VALLEY_PATH_032");
};

INSTANCE Info_Mod_Eremit_PreLehrer2 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_PreLehrer2_Condition;
	information	= Info_Mod_Eremit_PreLehrer2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_PreLehrer2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_PreLehrer))
	&& (Npc_IsDead(Harpie_Eremit_01))
	&& (Npc_IsDead(Harpie_Eremit_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_PreLehrer2_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer2_20_00"); //Zobacz, o to wlasnie chodzilo nam! Kiedykolwiek bowiem chcemy sie smazyc, istoty te przychodza do nas latajac i defilowac wszystko swoim smrodem i brudem.
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer2_20_01"); //Te diabelskie bestie maja gdzies tam swoje gniazda....
	AI_Output(hero, self, "Info_Mod_Eremit_PreLehrer2_15_02"); //Próbowales ja jeszcze zabrac?
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer2_20_03"); //Jak? Czy mozemy isc do ich gniazd? I my tez sie nie zgadzamy na strzelanie.
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer2_20_04"); //Jesli tak bedzie dalej, prawdopodobnie bedziemy musieli znalezc inne miejsce do zycia.... Wiecej

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Harpie_Eremit_03, "FP_ROAM_EREMIT_HARPIE_01");
	Wld_InsertNpc	(Harpie_Eremit_04, "FP_ROAM_EREMIT_HARPIE_02");
	Wld_InsertNpc	(Harpie_Eremit_05, "FP_ROAM_EREMIT_HARPIE_03");

	Log_CreateTopic	(TOPIC_MOD_EREMIT_HARPIEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EREMIT_HARPIEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EREMIT_HARPIEN, "Hermit jest wielokrotnie nawiedzany przez harfy, które utrudniaja mu zycie. Powiedzial, ze stworzenia w poblizu musza miec swoje gniazda.");
};

INSTANCE Info_Mod_Eremit_Lehrer (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Lehrer_Condition;
	information	= Info_Mod_Eremit_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "harfy nie powinny sprawiac zadnych klopotów w przyszlosci.";
};

FUNC INT Info_Mod_Eremit_Lehrer_Condition()
{
	if (Mod_Eremit_Harpien == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Lehrer_15_00"); //harfy nie powinny sprawiac zadnych klopotów w przyszlosci.
	AI_Output(self, hero, "Info_Mod_Eremit_Lehrer_20_01"); //Wtedy dostales je wszystkie? Wspanialy, wreszcie znów mamy pokój.
	AI_Output(self, hero, "Info_Mod_Eremit_Lehrer_20_02"); //Nie wiemy, jak podziekowac..... hmm, gdzie..... przyjmowac te tabletki.

	B_ShowGivenThings	("2 tabletki kamienne zakonserwowane");

	CreateInvItems	(hero, ItWr_DexStonePlate1_Addon, 1);
	CreateInvItems	(hero, ItWr_ManaStonePlate1_Addon, 1);

	AI_Output(self, hero, "Info_Mod_Eremit_Lehrer_20_03"); //A jesli jeszcze ich nie mozesz przeczytac, oczywiscie Cie nauczymy.
	
	Log_CreateTopic	(TOPIC_MOD_LEHRER_JHARKENDAR, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_JHARKENDAR, "Pustelnik moze mnie nauczyc jezyków tego kraju.");

	B_SetTopicStatus	(TOPIC_MOD_EREMIT_HARPIEN, LOG_SUCCESS);

	CurrentNQ += 1;

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Eremit_Lernen (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Lernen_Condition;
	information	= Info_Mod_Eremit_Lernen_Info;
	permanent 	= TRUE;
	description 	= "Chce sie uczyc jezyków.";
};
FUNC INT Info_Mod_Eremit_Lernen_Condition ()
{
	if (Npc_KnowsInfo (other, Info_Mod_Eremit_Lehrer))
	&& (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_3] == FALSE)
	{
		return TRUE;
	};
};
FUNC VOID Info_Mod_Eremit_Lernen_Info ()
{
	AI_Output (other, self, "Info_Mod_Eremit_Lernen_15_00"); //Chce sie uczyc jezyków.
	AI_Output (self, other, "Info_Mod_Eremit_Lernen_20_01"); //Który z nich chcesz sie uczyc?

	Info_ClearChoices (Info_Mod_Eremit_Lernen);
	Info_AddChoice (Info_Mod_Eremit_Lernen, DIALOG_BACK, Info_Mod_Eremit_Lernen_No);
	
	
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == FALSE)
	{
		Info_AddChoice (Info_Mod_Eremit_Lernen,B_BuildLearnString (NAME_ADDON_LEARNLANGUAGE_1 , B_GetLearnCostTalent (other, NPC_TALENT_FOREIGNLANGUAGE, LANGUAGE_1)),Info_Mod_Eremit_Lernen_Yes);
	}	
	else if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_2] == FALSE)
	&& (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Info_AddChoice (Info_Mod_Eremit_Lernen,B_BuildLearnString (NAME_ADDON_LEARNLANGUAGE_2 , B_GetLearnCostTalent (other, NPC_TALENT_FOREIGNLANGUAGE, LANGUAGE_2)),Info_Mod_Eremit_Lernen_Yes);
	}	
	else if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_3] == FALSE)
	&& (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	&& (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_2] == TRUE)
	{
		Info_AddChoice (Info_Mod_Eremit_Lernen,B_BuildLearnString (NAME_ADDON_LEARNLANGUAGE_3 , B_GetLearnCostTalent (other, NPC_TALENT_FOREIGNLANGUAGE, LANGUAGE_3)),Info_Mod_Eremit_Lernen_Yes);
	};
};

FUNC VOID B_Eremit_LernenLanguage()
{	
	AI_Output (self, other, "Info_Mod_Eremit_Lernen_20_02"); //Also, es es ganz einfach. Ein G ist ein O, ein T ist ein H und ein I ist ein C. 
	AI_Output (self, other, "Info_Mod_Eremit_Lernen_20_03"); //Wenn du das mal kapiert hast, ist der Rest eigentlich logisch ...
};

FUNC VOID B_Eremit_LernenLanguage2()
{	
	AI_Output (self, other, "Info_Mod_Eremit_Lernen_20_05"); //Prawdopodobnie dla celów tajemnicy strategicznej wojownicy pisali teksty do tylu.
	AI_Output (self, other, "Info_Mod_Eremit_Lernen_20_06"); //Na przyklad:"Tlah! Czy na nowo? "lub" Elorap! "Wiec nie powinno byc zbyt trudno odczytac te tablice.
};

FUNC VOID Info_Mod_Eremit_Lernen_No()
{
	Info_ClearChoices (Info_Mod_Eremit_Lernen);
};

FUNC VOID Info_Mod_Eremit_Lernen_Yes()
{
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_3] == TRUE)
	{
		AI_Output (self, other, "Info_Mod_Eremit_Lernen_20_04"); //Nie sadzimy, zebysmy mogli Cie o tym niczego wiecej nauczyc....
	}
	else if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_2] == TRUE)
	{
		if (B_TeachPlayerTalentForeignLanguage (self, other, LANGUAGE_3))
		{
			B_Eremit_LernenLanguage();
		};
	}
	else if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		if (B_TeachPlayerTalentForeignLanguage (self, other, LANGUAGE_2))
		{
			B_Eremit_LernenLanguage();
		};
	}
	else //Keine Language
	{
		if (B_TeachPlayerTalentForeignLanguage (self, other, LANGUAGE_1))
		{
			B_Eremit_LernenLanguage();
		};
	};
};

INSTANCE Info_Mod_Eremit_Pickpocket (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Pickpocket_Condition;
	information	= Info_Mod_Eremit_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Eremit_Pickpocket_Condition()
{
	C_Beklauen	(80, ItWr_HitPointStonePlate2_Addon, 1);
};

FUNC VOID Info_Mod_Eremit_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);

	Info_AddChoice	(Info_Mod_Eremit_Pickpocket, DIALOG_BACK, Info_Mod_Eremit_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Eremit_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Eremit_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Eremit_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);
};

FUNC VOID Info_Mod_Eremit_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);

		Info_AddChoice	(Info_Mod_Eremit_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Eremit_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Eremit_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Eremit_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Eremit_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Eremit_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Eremit_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Eremit_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Eremit_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Eremit_EXIT (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_EXIT_Condition;
	information	= Info_Mod_Eremit_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Eremit_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Eremit_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
