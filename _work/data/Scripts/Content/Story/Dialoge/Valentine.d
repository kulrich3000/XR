INSTANCE Info_Mod_Valentine_Hi (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Hi_Condition;
	information	= Info_Mod_Valentine_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Valentine_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Valentine_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Valentine_Hi_16_01"); //Jestem Walentynem, siostra Valentino.
};

INSTANCE Info_Mod_Valentine_Kapitel2 (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kapitel2_Condition;
	information	= Info_Mod_Valentine_Kapitel2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_Kapitel2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Hi))
	&& (Kapitel >= 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Moe_Geruechte3))
	&& (Npc_KnowsInfo(hero, Info_Mod_Canthar_Port))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kapitel2_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_Kapitel2_16_00"); //Co Pan tutaj robi?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Valentine_WoValentino (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_WoValentino_Condition;
	information	= Info_Mod_Valentine_WoValentino_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jestem z Moe. Chodzi o Valentino.";
};

FUNC INT Info_Mod_Valentine_WoValentino_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Moe_Geruechte3))
	&& (Mod_Moe_Valentino == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_WoValentino_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_15_00"); //Jestem z Moe. Chodzi o Valentino.
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_16_01"); //Czy nie chcesz jedynego Kanthara?

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "Nie, kto by to powiedzial?", Info_Mod_Valentine_WoValentino_B);
	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "Tak, to prawda.", Info_Mod_Valentine_WoValentino_A);
};

FUNC VOID Info_Mod_Valentine_WoValentino_E()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_E_15_00"); //Staram sie ratowac Valentino.
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_E_16_01"); //ocalic Valentino? Czy? Samotny?

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "Tak, ja sam. Gdzie jest?", Info_Mod_Valentine_WoValentino_G);
	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "Masz lepszy pomysl?", Info_Mod_Valentine_WoValentino_F);
};

FUNC VOID Info_Mod_Valentine_WoValentino_B()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_B_15_00"); //Nie, kto by to powiedzial?
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_B_16_01"); //W swoim zadaniu Canthar opisal czlowieka, którego opis odnosi sie do Ciebie.

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "Musi to byc przypadek.", Info_Mod_Valentine_WoValentino_D);
	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "Byc moze jestem w koncu, bo przeciez. Tak, tym bardziej mysle o tym wiecej....", Info_Mod_Valentine_WoValentino_C);
};

FUNC VOID Info_Mod_Valentine_WoValentino_A()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_A_15_00"); //Tak, to prawda.
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_A_16_01"); //Czego ode mnie chcesz?

	Info_Mod_Valentine_WoValentino_E();
};

FUNC VOID Info_Mod_Valentine_WoValentino_D()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_D_15_00"); //Musi to byc przypadek.
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_D_16_01"); //Aha.... Wszystko dobrze, czego chcesz?

	Info_Mod_Valentine_WoValentino_E();
};

FUNC VOID Info_Mod_Valentine_WoValentino_C()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_C_15_00"); //Byc moze jestem w koncu, bo przeciez. Tak, tym bardziej mysle o tym wiecej....
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_C_16_01"); //Co robisz? Wróc na pewno.

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Valentine_WoValentino_G()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_G_15_00"); //Tak, ja sam. Gdzie jest?
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_G_16_01"); //(srebrny) Na wysokosci latarni morskiej firmy Jack. Zycze powodzenia.

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "KIDNAPPED");

	Mod_Moe_Valentino = 1;

	B_LogEntry	(TOPIC_MOD_MOE_VALENTINO, "Valentino znajduje sie na plaskowyzu w poblizu latarni morskiej Jacka. Musze go jakos wyprowadzic.");

	// Pfad zum Leuchtturm

	Wld_InsertNpc	(Mod_7026_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7027_OUT_Entfuehrer_NW,	"TAVERNE");

	// Um Zelt

	Wld_InsertNpc	(Mod_7028_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7029_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7030_OUT_Entfuehrer_NW,	"TAVERNE");

	// In Zelt

	Wld_InsertNpc	(Mod_7031_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7032_OUT_Entfuehrer_NW,	"TAVERNE");

	// Lager hochfahren

	Wld_SendTrigger	("EVT_NW_VALENTINOZELT");

	Wld_InsertItem	(ItWr_CantharZettel_Valentino, "FP_ITEM_VALENTINO_RAMIREZ_ZETTEL");
};

FUNC VOID Info_Mod_Valentine_WoValentino_F()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_F_15_00"); //Masz lepszy pomysl?
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_F_16_01"); //Canthar chce dostac na ciebie rece, a ty chcesz biec do niego sam?
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_F_16_02"); //Nie, nie wolno sie ujawniac jego hejmerom. Pójde z Toba.

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "W zaden sposób nie zabieram cie ze soba. Gdzie sa porywacze?", Info_Mod_Valentine_WoValentino_I);
	Info_AddChoice	(Info_Mod_Valentine_WoValentino, "Nie sadzisz, ze jest to zbyt niebezpieczne?", Info_Mod_Valentine_WoValentino_H);
};

FUNC VOID Info_Mod_Valentine_WoValentino_I()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_I_15_00"); //W zaden sposób nie zabieram cie ze soba. Gdzie sa porywacze?
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_I_16_01"); //(srebrny) Wszystkie prawa. Na wysokosci latarni morskiej Jacka. Zycze powodzenia.

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "KIDNAPPED");

	Mod_Moe_Valentino = 1;

	B_LogEntry	(TOPIC_MOD_MOE_VALENTINO, "Valentino znajduje sie na plaskowyzu w poblizu latarni morskiej Jacka. Musze go jakos wyprowadzic.");

	// Pfad zum Leuchtturm

	Wld_InsertNpc	(Mod_7026_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7027_OUT_Entfuehrer_NW,	"TAVERNE");

	// Um Zelt

	Wld_InsertNpc	(Mod_7028_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7029_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7030_OUT_Entfuehrer_NW,	"TAVERNE");

	// In Zelt

	Wld_InsertNpc	(Mod_7031_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7032_OUT_Entfuehrer_NW,	"TAVERNE");

	// Lager hochfahren

	Wld_SendTrigger	("EVT_NW_VALENTINOZELT");

	Wld_InsertItem	(ItWr_CantharZettel_Valentino, "FP_ITEM_VALENTINO_RAMIREZ_ZETTEL");
};

FUNC VOID Info_Mod_Valentine_WoValentino_H()
{
	AI_Output(hero, self, "Info_Mod_Valentine_WoValentino_H_15_00"); //Nie sadzisz, ze jest to zbyt niebezpieczne?
	AI_Output(self, hero, "Info_Mod_Valentine_WoValentino_H_16_01"); //Mam juz plan...... Podazam za mna, zabiore cie do obozu uprowadzajacych.

	Info_ClearChoices	(Info_Mod_Valentine_WoValentino);

	Mod_Moe_Valentino = 2;

	B_LogEntry	(TOPIC_MOD_MOE_VALENTINO, "Walentynka zaprowadzi mnie do miejsca, w którym odbywa sie impreza Valentino. Uwaza, ze ma plan....");

	// Pfad zum Leuchtturm

	Wld_InsertNpc	(Mod_7026_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7027_OUT_Entfuehrer_NW,	"TAVERNE");

	// Um Zelt

	Wld_InsertNpc	(Mod_7028_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7029_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7030_OUT_Entfuehrer_NW,	"TAVERNE");

	// In Zelt

	Wld_InsertNpc	(Mod_7031_OUT_Entfuehrer_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_7032_OUT_Entfuehrer_NW,	"TAVERNE");

	// Lager hochfahren

	Wld_SendTrigger	("EVT_NW_VALENTINOZELT");

	B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "KIDNAPPED");

	Wld_InsertItem	(ItWr_CantharZettel_Valentino, "FP_ITEM_VALENTINO_RAMIREZ_ZETTEL");
};

INSTANCE Info_Mod_Valentine_LosZuValentino (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_LosZuValentino_Condition;
	information	= Info_Mod_Valentine_LosZuValentino_Info;
	permanent	= 0;
	important	= 0;
	description	= "Idziemy tutaj!";
};

FUNC INT Info_Mod_Valentine_LosZuValentino_Condition()
{
	if (Mod_Moe_Valentino == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_LosZuValentino_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_LosZuValentino_15_00"); //Idziemy tutaj!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "VALENTINO");
	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Valentine_FirstStop (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_FirstStop_Condition;
	information	= Info_Mod_Valentine_FirstStop_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_FirstStop_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_LosZuValentino))
	&& (Npc_GetDistToWp(self, "NW_CITY_TO_LIGHTHOUSE_04") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_FirstStop_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_FirstStop_16_00"); //Pierwsze dwa z tych gangów przestepczych juz istnieja.
	AI_Output(self, hero, "Info_Mod_Valentine_FirstStop_16_01"); //Wydaje mi sie, ze jestem nowicjuszem, nie wygladaja jak powazni przeciwnicy.
	AI_Output(self, hero, "Info_Mod_Valentine_FirstStop_16_02"); //Mysle, ze mozna je latwo wyjac. Po prostu upewnij sie, ze nie dzwonia do kopii zapasowej.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FIRSTGANGSTER");
};

INSTANCE Info_Mod_Valentine_FirstStop_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_FirstStop_Fertig_Condition;
	information	= Info_Mod_Valentine_FirstStop_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_FirstStop_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_FirstStop))
	&& (Npc_IsDead(Mod_7026_OUT_Entfuehrer_NW))
	&& (Npc_IsDead(Mod_7027_OUT_Entfuehrer_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_FirstStop_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_FirstStop_Fertig_16_00"); //To dobrze! Ale trudna czesc jeszcze nie nadeszla. Sledz mnie!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOZELT");
};

INSTANCE Info_Mod_Valentine_SecondStop (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_SecondStop_Condition;
	information	= Info_Mod_Valentine_SecondStop_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_SecondStop_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_FirstStop_Fertig))
	&& (Npc_GetDistToWp(self, "NW_CITY_JAEGER_08") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_SecondStop_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_SecondStop_16_00"); //(który caly czas sie pogarsza) Psst! Sa tam wlasnie.
	AI_Output(self, hero, "Info_Mod_Valentine_SecondStop_16_01"); //Teraz do mojego planu: Stoisz tutaj i chodzcie do obozu i szpieguje strazników.
	AI_Output(self, hero, "Info_Mod_Valentine_SecondStop_16_02"); //Moze mozna je w jakis sposób oddzielic lub przemknac obok nich.
	AI_Output(hero, self, "Info_Mod_Valentine_SecondStop_15_03"); //Dlaczego nie powinienem tego robic?
	AI_Output(self, hero, "Info_Mod_Valentine_SecondStop_16_04"); //Bo oni szukaja Ciebie, a nie mnie. Gdy jestem odkryta, nadal moge robic niewinne rzeczy.
	AI_Output(self, hero, "Info_Mod_Valentine_SecondStop_16_05"); //Ale mysle, ze najlepiej by bylo, gdybys mi powiedzial, co mam zrobic. To moje pierwsze tego typu przedsiewziecie!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATZELT");
};

INSTANCE Info_Mod_Valentine_Spy01 (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Spy01_Condition;
	information	= Info_Mod_Valentine_Spy01_Info;
	permanent	= 0;
	important	= 0;
	description	= "obóz potajemnie.";
};

FUNC INT Info_Mod_Valentine_Spy01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_SecondStop))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Spy01_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Spy01_15_00"); //obóz potajemnie.

	AI_SetWalkMode	(self, NPC_SNEAK);

	AI_GotoWP	(self, "NW_CITY_JAEGER_11");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Valentine_Spy01_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Spy01_Fertig_Condition;
	information	= Info_Mod_Valentine_Spy01_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_Spy01_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Spy01))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Spy01_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_Spy01_Fertig_16_00"); //Trzech mezczyzn stoi wokól namiotu, a w namiocie pojawiaja sie trzy cienie; Jednym z nich bedzie Valentino.
	AI_Output(self, hero, "Info_Mod_Valentine_Spy01_Fertig_16_01"); //Co mam teraz zrobic?

	B_LogEntry	(TOPIC_MOD_MOE_VALENTINO, "Valentino jest strzezone przez dwóch mezczyzn w namiocie. Wokól namiotu znajduja sie jeszcze trzy inne strazniczki. To zabraknie troche wiecej niz pobicie piekla z Valentino....");
};

INSTANCE Info_Mod_Valentine_Spy02 (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Spy02_Condition;
	information	= Info_Mod_Valentine_Spy02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Klienci powinni ponownie dbac o lozysko i zwracac uwage na szczególne cechy charakterystyczne.";
};

FUNC INT Info_Mod_Valentine_Spy02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Spy01_Fertig))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Spy02_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Spy02_15_00"); //Klienci powinni ponownie zajac sie obozem i zwrócic uwage na specyfike strazników.

	AI_SetWalkMode	(self, NPC_SNEAK);

	AI_GotoWP	(self, "NW_CITY_JAEGER_11");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Valentine_Spy02_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Spy02_Fertig_Condition;
	information	= Info_Mod_Valentine_Spy02_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_Spy02_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Spy02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Spy02_Fertig_Info()
{
	if (!Npc_IsDead(Mod_7032_OUT_Entfuehrer_NW))
	{
		AI_Output(self, hero, "Info_Mod_Valentine_Spy02_Fertig_16_00"); //Jeden z strazników zatrzymuje sie zawsze na miejscu i nadal pije piwo.
	};
	if (!Npc_IsDead(Mod_7030_OUT_Entfuehrer_NW))
	{
		AI_Output(self, hero, "Info_Mod_Valentine_Spy02_Fertig_16_01"); //Jeden z nich wydaje sie miec slaby pecherz, co godzine opuszcza obóz, aby sie odciazyc.
	};
	if (!Npc_IsDead(Mod_7031_OUT_Entfuehrer_NW))
	{
		AI_Output(self, hero, "Info_Mod_Valentine_Spy02_Fertig_16_02"); //Jeden z nich patroluje przez obóz, ale nie wyglada na bardzo silny.
	};
};

INSTANCE Info_Mod_Valentine_Kill01 (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kill01_Condition;
	information	= Info_Mod_Valentine_Kill01_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przedawkowac pierwsza warte w piwie.";
};

FUNC INT Info_Mod_Valentine_Kill01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Spy02_Fertig))
	&& (!C_NpcIsDown(Mod_7032_OUT_Entfuehrer_NW))
	&& (Mod_ValentineKill01 == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kill01_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_15_00"); //Zrób pierwsza warte przedawkowania w jego piwie.
	AI_Output(self, hero, "Info_Mod_Valentine_Kill01_16_01"); //Co dokladnie powinienem wymieszac?
	AI_Output(self, hero, "Info_Mod_Valentine_Kill01_16_02"); //Jesli masz dziesiec niebieskich piosenek, zasypia z przedawkowania.
	AI_Output(self, hero, "Info_Mod_Valentine_Kill01_16_03"); //Jesli masz porcje trucizny, on odetrze sie co najmniej na dlugi czas.
	AI_Output(self, hero, "Info_Mod_Valentine_Kill01_16_04"); //Jestem pewien, ze mógl umrzec z trzech czesci trucizny.

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	Info_AddChoice	(Info_Mod_Valentine_Kill01, "Zastanowie sie nad tym.", Info_Mod_Valentine_Kill01_D);

	if (Npc_HasItems(hero, ItPo_Gift) >= 3)
	{
		Info_AddChoice	(Info_Mod_Valentine_Kill01, "Mam dosc trucizny, nie zawiode.", Info_Mod_Valentine_Kill01_C);
	};
	if (Npc_HasItems(hero, ItPo_Gift) >= 1)
	{
		Info_AddChoice	(Info_Mod_Valentine_Kill01, "Mam tylko jedna czesc trucizny.", Info_Mod_Valentine_Kill01_B);
	};
	if (Npc_HasItems(hero, ItPo_Tiergift) >= 1)
	{
		Info_AddChoice	(Info_Mod_Valentine_Kill01, "Mam troche trucizny zwierzecej.", Info_Mod_Valentine_Kill01_G);
	};
	if (Npc_HasItems(hero, ItPo_Pflanzengift) >= 1)
	{
		Info_AddChoice	(Info_Mod_Valentine_Kill01, "Dostalem tu troche trucizny roslinnej.", Info_Mod_Valentine_Kill01_F);
	};
	if (Npc_HasItems(hero, ItPo_Mischgift) >= 1)
	{
		Info_AddChoice	(Info_Mod_Valentine_Kill01, "Mam te szczególna trucizne.", Info_Mod_Valentine_Kill01_E);
	};
	if (Npc_HasItems(hero, ItPl_BluePlant) >= 10)
	{
		Info_AddChoice	(Info_Mod_Valentine_Kill01, "Oto 10 niebieskich piosenek.", Info_Mod_Valentine_Kill01_A);
	};
};

FUNC VOID Info_Mod_Valentine_Kill01_D()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_D_15_00"); //Zastanowie sie nad tym.

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);
};

FUNC VOID Info_Mod_Valentine_Kill01_C()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_C_15_00"); //Mam dosc trucizny, nie zawiode.

	B_GiveInvItems	(hero, self, ItPo_Gift, 3);

	Mod_ValentineKill01 = 1;

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Valentine_Kill01_B()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_B_15_00"); //Mam tylko jedna czesc trucizny.

	B_GiveInvItems	(hero, self, ItPo_Gift, 1);

	Mod_ValentineKill01 = 1;

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Valentine_Kill01_G()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_G_15_00"); //Mam troche trucizny zwierzecej.

	B_GiveInvItems	(hero, self, ItPo_Tiergift, 1);

	Mod_ValentineKill01 = 1;

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Valentine_Kill01_F()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_F_15_00"); //Dostalem tu troche trucizny roslinnej.

	B_GiveInvItems	(hero, self, ItPo_Pflanzengift, 1);

	Mod_ValentineKill01 = 1;

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Valentine_Kill01_E()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_E_15_00"); //Mam te szczególna trucizne.

	B_GiveInvItems	(hero, self, ItPo_Mischgift, 1);

	Mod_ValentineKill01 = 1;

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Valentine_Kill01_A()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill01_A_15_00"); //Oto 10 niebieskich piosenek.

	B_GiveInvItems	(hero, self, ItPl_BluePlant, 10);

	Mod_ValentineKill01 = 1;

	Info_ClearChoices	(Info_Mod_Valentine_Kill01);

	AI_SetWalkMode	(self, NPC_RUN);

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Valentine_Kill01_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kill01_Fertig_Condition;
	information	= Info_Mod_Valentine_Kill01_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_Kill01_Fertig_Condition()
{
	if ((Npc_HasItems(self, ItPo_Gift) >= 3)
	|| (Npc_HasItems(self, ItPo_Gift) >= 1)
	|| (Npc_HasItems(self, ItPo_Mischgift) >= 1)
	|| (Npc_HasItems(self, ItPo_Tiergift) >= 1)
	|| (Npc_HasItems(self, ItPo_Pflanzengift) >= 1)
	|| (Npc_HasItems(self, ItPl_BluePlant) >= 10))
	&& (Mod_ValentineKill01 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kill01_Fertig_Info()
{
	if (Npc_HasItems(self, ItPo_Gift) >= 3)
	|| (Npc_HasItems(self, ItPo_Pflanzengift) >= 1)
	|| (Npc_HasItems(self, ItPo_Tiergift) >= 1)
	|| (Npc_HasItems(self, ItPo_Mischgift) >= 1)
	{
		AI_Output(self, hero, "Info_Mod_Valentine_Kill01_Fertig_16_00"); //Nigdy wiecej nie powinien wstac.

		B_GivePlayerXP	(Mod_7032_OUT_Entfuehrer_NW.level/2);

		B_KillNpc	(Mod_7032_OUT_Entfuehrer_NW);
	}
	else if (Npc_HasItems(self, ItPo_Gift) >= 1)
	{
		AI_Output(self, hero, "Info_Mod_Valentine_Kill01_Fertig_16_01"); //Nie wróci tak szybko.

		B_StartOtherRoutine	(Mod_7032_OUT_Entfuehrer_NW, "SLEEP");

		Mod_7032_OUT_Entfuehrer_NW.flags = 2;
	}
	else if (Npc_HasItems(self, ItPl_BluePlant) >= 10)
	{
		AI_Output(self, hero, "Info_Mod_Valentine_Kill01_Fertig_16_02"); //Najpierw wezmie troche drzemki.

		B_StartOtherRoutine	(Mod_7032_OUT_Entfuehrer_NW, "SLEEP");

		Mod_7032_OUT_Entfuehrer_NW.flags = 2;
	};
};

INSTANCE Info_Mod_Valentine_Kill02 (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kill02_Condition;
	information	= Info_Mod_Valentine_Kill02_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wez slaba straz.";
};

FUNC INT Info_Mod_Valentine_Kill02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Spy02_Fertig))
	&& (!Npc_IsDead(Mod_7031_OUT_Entfuehrer_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kill02_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill02_15_00"); //Wez slabego straznika.

	AI_SetWalkMode	(self, NPC_RUN);

	Mod_ValentineKill02 = 1;

	AI_GotoWP	(self, "NW_CITY_JAEGER_18");
	AI_GotoWP	(self, "NW_CITY_JAEGER_08");
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7031_OUT_Entfuehrer_NW, "KILLER");
};

INSTANCE Info_Mod_Valentine_Kill02_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kill02_Fertig_Condition;
	information	= Info_Mod_Valentine_Kill02_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_Kill02_Fertig_Condition()
{
	if (Mod_ValentineKill02 == 1)
	&& (Npc_IsDead(Mod_7031_OUT_Entfuehrer_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kill02_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_Kill02_Fertig_16_00"); //Nie wstanie tak szybko. Mniej sie martwic.
};

INSTANCE Info_Mod_Valentine_Kill03 (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kill03_Condition;
	information	= Info_Mod_Valentine_Kill03_Info;
	permanent	= 1;
	important	= 0;
	description	= "Zajme sie gosciem z slabym pecherzem.";
};

FUNC INT Info_Mod_Valentine_Kill03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_Spy02_Fertig))
	&& (!Npc_IsDead(Mod_7031_OUT_Entfuehrer_NW))
	&& (Mod_ValentineKill03 == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kill03_Info()
{
	AI_Output(hero, self, "Info_Mod_Valentine_Kill03_15_00"); //Zajme sie gosciem z slabym pecherzem.

	Mod_ValentineKill03 = 1;
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Valentine_Kill03_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Kill03_Fertig_Condition;
	information	= Info_Mod_Valentine_Kill03_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_Kill03_Fertig_Condition()
{
	if ((Mod_ValentineKill03 == 1)
	&& (Npc_IsDead(Mod_7030_OUT_Entfuehrer_NW)))
	|| (Mod_ValentineKill03 == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_Kill03_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_Kill03_Fertig_16_00"); //Dobrze wykonane. Co dalej?
};

INSTANCE Info_Mod_Valentine_AllKills_Fertig (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_AllKills_Fertig_Condition;
	information	= Info_Mod_Valentine_AllKills_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_AllKills_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_SecondStop))
	&& ((Npc_IsDead(Mod_7030_OUT_Entfuehrer_NW))
	|| (Mod_ValentineKill03 == 2))
	&& (Npc_IsDead(Mod_7031_OUT_Entfuehrer_NW))
	&& ((Npc_IsDead(Mod_7032_OUT_Entfuehrer_NW))
	|| (Npc_IsInState(Mod_7032_OUT_Entfuehrer_NW, ZS_Drained)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_AllKills_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_AllKills_Fertig_16_00"); //Dobrze! Nie spodziewalem sie, ze pójdziemy tak daleko.
	AI_Output(self, hero, "Info_Mod_Valentine_AllKills_Fertig_16_01"); //Teraz musimy tylko zabic dwóch przestepców w namiocie, nie szkodzac Valentino.

	B_LogEntry	(TOPIC_MOD_MOE_VALENTINO, "Trzy pierwsze trzy strazniczki sa gotowe, dwie pozostale.");
};

INSTANCE Info_Mod_Valentine_ValentinoFrei (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_ValentinoFrei_Condition;
	information	= Info_Mod_Valentine_ValentinoFrei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Valentine_ValentinoFrei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Valentine_AllKills_Fertig))
	&& (Npc_KnowsInfo(hero, Info_Mod_Valentino_Kidnapped))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Valentine_ValentinoFrei_Info()
{
	AI_Output(self, hero, "Info_Mod_Valentine_ValentinoFrei_16_00"); //Nie sadzilem, zeby bylo tak latwo.
	AI_Output(hero, self, "Info_Mod_Valentine_ValentinoFrei_15_01"); //Nie bylo to tez latwe.
	AI_Output(self, hero, "Info_Mod_Valentine_ValentinoFrei_16_02"); //Jednakze. Uwazam to za niezwykle ekscytujace.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	self.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Valentine_Pickpocket (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_Pickpocket_Condition;
	information	= Info_Mod_Valentine_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Valentine_Pickpocket_Condition()
{
	C_Beklauen	(56, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Valentine_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);

	Info_AddChoice	(Info_Mod_Valentine_Pickpocket, DIALOG_BACK, Info_Mod_Valentine_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Valentine_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Valentine_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Valentine_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);
};

FUNC VOID Info_Mod_Valentine_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);

		Info_AddChoice	(Info_Mod_Valentine_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Valentine_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Valentine_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Valentine_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Valentine_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Valentine_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Valentine_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Valentine_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Valentine_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Valentine_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Valentine_EXIT (C_INFO)
{
	npc		= Mod_1197_VLK_Valentine_NW;
	nr		= 1;
	condition	= Info_Mod_Valentine_EXIT_Condition;
	information	= Info_Mod_Valentine_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Valentine_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Valentine_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
