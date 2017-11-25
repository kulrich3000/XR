INSTANCE Info_Mod_Brunhild_DI_Hi (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_Hi_Condition;
	information	= Info_Mod_Brunhild_DI_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brunhild_DI_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brunhild_DI_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_00"); //Hu? Czy marze? Kim jestes ludzmi?
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_01"); //Jestesmy piratami. Dostalismy wiadomosc w butelce.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_02"); //Znalazles moje przeslanie? Dzieki niebu!
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_03"); //Nawiasem mówiac, nazywaja mnie Brunhilda. Przyjaciele dzwonia do mnie Bruni.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_04"); //Przyjemnosc spotkania. Jak sie tu dostales?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_05"); //To dluga historia.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_06"); //Powiedz mi o tym.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_07"); //Wyplynelam z ojcem i bratem. Jechalismy do Khorinis.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_08"); //Mówi sie, ze nie ma tam orków, którzy niszcza podwórze dworskie i zabijaja wszystko, co nie wyglada jak ork.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_09"); //Mama zostala przez nich zabita.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_10"); //Gdzie basn o starych zonach?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_11"); //Tak wlasnie mówia oni na kontynencie.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_12"); //Co za zart! A gdzie sa twoi ludzie?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_13"); //Umarly. Mój brat nie przezyl wraku statku, a ojciec zbudowal namiot.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_14"); //Potem zostal pobity na smierc przez przerazajace kulawizny zyjace posród nas w jaskiniach stworzenia.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_15"); //Znamy ich wszystkich. Nikt z nich nie przezywa juz wiecej klopotów.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_16"); //Zabiles je wszystkie?
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_17"); //Jestesmy piratami i nie boimy sie smierci ani Beliara!
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Hi_17_18"); //Czy mozesz dac mi winde? Nie przetrwam tu dlugo, nawet bez majsterkowiczów.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_19"); //Decyzje w tej sprawie podejmie nasz kapitan. Ale mysle, ze tak.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Hi_15_20"); //Idzmy na plaze.

	Mod_DI_InselErkunden = 2;

	B_StartOtherRoutine	(self, "FOLLOW");
	B_StartOtherRoutine	(Mod_1542_PIR_AlligatorJack_DI, "START");

	B_StartOtherRoutine	(Mod_1540_PIR_Skip_DI, "START");
	AI_Teleport	(Mod_1540_PIR_Skip_DI, "WP_DI_SKIPKOMMTANLAND");

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	Wld_InsertNpc	(Mod_1554_KDW_Jones_DI, "WP_DI_HEROKOMMTANLAND");
};

INSTANCE Info_Mod_Brunhild_DI_Gestaendnis (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_Gestaendnis_Condition;
	information	= Info_Mod_Brunhild_DI_Gestaendnis_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak Ci sie to podoba?";
};

FUNC INT Info_Mod_Brunhild_DI_Gestaendnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Samuel_DI_Brunhild))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brunhild_DI_Gestaendnis_Info()
{
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_00"); //Jak Ci sie to podoba?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_01"); //Lepiej niz w moim smutnym namiocie i tak! Chcesz zupy?
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_02"); //Moze pózniej. Pochodze z Samuela....
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_03"); //Mówiles o mnie?
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_04"); //Zrobilismy to. Nie byles szczery ze mna.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_05"); //Wybaczcie mi, boje sie, ze musze zostac na tej wyspie.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_06"); //Nie jestesmy znów brutalnymi piratami. Powiedz mi, co naprawde sie stalo.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_07"); //Nie wyemigrowalismy, ucieklismy.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_08"); //Matka nie utonela, zostala spalona jako czarownica na stosie.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_09"); //Podejrzewano mnie tez o czary.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_10"); //Czy byla czarownica? Czy jestes czarownica?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_11"); //Nie. Mój ojciec byl kiedys magikiem Ziemi.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_12"); //Kiedy poznal moja matke i chcial ja poslubic, musial opuscic zakon.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_13"); //Porzadek Ziemi? Nigdy o nim nie slyszalem.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_14"); //Ten porzadek modli sie do Adanosa jak magowie wody. Nie jest tak dobrze znany jak inne rozkazy, a ich magia jest nieco inna.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_15"); //Ojciec nauczyl mnie i matke tej magii.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_16"); //Nie wiedzmy wiec czary?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_17"); //Nie. Dobra, pozytywna magia, podobnie jak inni. Moja wiedza odpowiada w przyblizeniu pierwszemu kragowi magii.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_18"); //Co to znaczy?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Gestaendnis_17_19"); //Moglem wyrwac drzewa, tworzyc szczeliny, powodowac lawiny gruzów, przemieszczac skaly. Takie rzeczy.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Gestaendnis_15_20"); //Ruchome skaly..... Hmm..... ciekawy.
};

INSTANCE Info_Mod_Brunhild_DI_Amulett (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_Amulett_Condition;
	information	= Info_Mod_Brunhild_DI_Amulett_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przyjrzyjmy sie temu. Czy kiedykolwiek widziales to wczesniej?";
};

FUNC INT Info_Mod_Brunhild_DI_Amulett_Condition()
{
	if (Npc_HasItems(hero, ItAm_Pirateninsel) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brunhild_DI_Amulett_Info()
{
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Amulett_15_00"); //Przyjrzyjmy sie temu. Czy kiedykolwiek widziales to wczesniej?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Amulett_17_01"); //Och! Blokada.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Amulett_15_02"); //Medalion?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Amulett_17_03"); //Tak. Cos podobnego do amuletu, ale bardziej cennego i rzadkiego.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Amulett_15_04"); //I o co w tym wszystkim chodzi?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Amulett_17_05"); //Tak naprawde nie wiem. Moze to byc baner, ale nie jestem pewien.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Amulett_15_06"); //Haslo?
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Amulett_17_07"); //Tak. Przedmiot, z którym mozna wymawiac lub odwolywac zakazy.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Amulett_15_08"); //To juz teraz nie pomaga.
};

INSTANCE Info_Mod_Brunhild_DI_Erdmagie (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_Erdmagie_Condition;
	information	= Info_Mod_Brunhild_DI_Erdmagie_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mozna przenosic skaly....";
};

FUNC INT Info_Mod_Brunhild_DI_Erdmagie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brunhild_DI_Gestaendnis))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_DI_Amulett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brunhild_DI_Erdmagie_Info()
{
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Erdmagie_15_00"); //Mozna przenosic skaly....
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Erdmagie_17_01"); //Nawet jesli nie jest to cala góra.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Erdmagie_15_02"); //Uwazamy, ze znalezlismy skarb. Ale masywne sciany skalne blokuja wejscie.
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Erdmagie_15_03"); //Móglbys uczynic siebie nieodzownym dla nas.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Erdmagie_17_04"); //To cos sie stalo. Gdzie jest skarb?
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Erdmagie_15_05"); //W jaskiniach. Zabiore cie tam.

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Brunhild_DI_Erdmagie2 (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_Erdmagie2_Condition;
	information	= Info_Mod_Brunhild_DI_Erdmagie2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brunhild_DI_Erdmagie2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brunhild_DI_Erdmagie))
	&& (Npc_GetDistToWP(hero, "WP_DI_HOEHLE_02_TUNNEL_2") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brunhild_DI_Erdmagie2_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Erdmagie2_15_00"); //Oto jedna z jaskin.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Erdmagie2_17_01"); //Uh-huh. I masz na mysli ten mur? Powinna pracowac.

	AI_PlayAni	(self, "T_MAGRUN_2_TRFSHOOT");

	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Erdmagie2_17_02"); //Hm. Nie potrafie tego zrobic. Dziwny.... jest jakas przeszkoda. Nie rzeczywisty.... Silna magia.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Erdmagie2_17_03"); //Moze ten Jones, który jest z kapitanem moze pomóc. Moja znajomosc zaklec jest zbyt niska.

	Mod_DI_InselErkunden = 3;
};

INSTANCE Info_Mod_Brunhild_DI_Ende (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_Ende_Condition;
	information	= Info_Mod_Brunhild_DI_Ende_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brunhild_DI_Ende_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jones_Ende))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brunhild_DI_Ende_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_Brunhild_DI_Ende_15_00"); //Powinienes wrócic na statek, nie wiem, co jeszcze czeka mnie za tym murem.
	AI_Output(self, hero, "Info_Mod_Brunhild_DI_Ende_17_01"); //Zla bliskosc ma w sobie cos kojacego.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KUECHE");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Brunhild_DI_EXIT (C_INFO)
{
	npc		= Mod_7642_OUT_Brunhild_DI;
	nr		= 1;
	condition	= Info_Mod_Brunhild_DI_EXIT_Condition;
	information	= Info_Mod_Brunhild_DI_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Brunhild_DI_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brunhild_DI_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
