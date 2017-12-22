FUNC VOID Info_Mod_BauerLobart_VinoBrennerei()
{
	AI_Output(hero, self, "Info_Mod_BauerLobart_VinoBrennerei_15_00"); //Slysze, ze Vino od jakiegos czasu brakowalo Vino. Czy wiesz cos o tym?
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei_04_01"); //(niepewny) Uh, cóz, nie wiem.... (osobiscie) ale jesli cos mu sie przydarzylo (....).
	AI_Output(hero, self, "Info_Mod_BauerLobart_VinoBrennerei_15_02"); //Wyrzuc go juz teraz. Moze moge pomóc.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei_04_03"); //(budzacy) No cóz.... Vino zalozylo gorzelnie w duzym lesie.... Mysle, ze w poblizu kamiennego kola.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei_04_04"); //Co jakis czas udaje sie tam, by zarobic w miescie kilka dodatkowych monet z wypiekanym domem.... lub przyniesc nam prace na wieczór.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei_04_05"); //Wiec teraz wiesz. Ale prosze nikomu nie mówic.

	B_LogEntry	(TOPIC_MOD_VINO_WO, "Jak slyszalem od innego rolnika, Vino zalozylo gorzelnie w duzym lesie, w poblizu kamiennego kola.");
};

FUNC VOID Info_Mod_BauerLobart_VinoBrennerei2()
{
	AI_Output(hero, self, "Info_Mod_BauerLobart_VinoBrennerei2_15_00"); //Dlaczego nikomu nie powiesz? Mógl byc w wielu klopotach....
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei2_04_01"); //Tak, wiem. Kto by jednak powiedzial?
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei2_04_02"); //Lobart wyrzucilby z niego pieklo, gdyby wiedzial, ze.... Mika i Mika, którzy maja oko na rzeczy poza miastem, nie jest dokladnie squeamish, jesli chodzi o narkotyki.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei2_04_03"); //Vino moze za to isc prosto do wiezienia....
};

FUNC VOID Info_Mod_BauerLobart_VinoBrennerei3()
{
	AI_Output(hero, self, "Info_Mod_BauerLobart_VinoBrennerei3_15_00"); //Rolnik samotnie przez skazony potworami las? To jest szalenstwo.....
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei3_04_01"); //Oh, prawda, nie wspomnialem o tym.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei3_04_02"); //Zglosil kiedys znalezienie dziwnej platformy za latarnia Jacka.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei3_04_03"); //Ma on zabrac go bezposrednio do tej zacisznej jaskini, za wszystkie potwory.
};

INSTANCE Info_Mod_BauerLobart_01_VinoBrennerei (C_INFO)
{
	npc		= Mod_1414_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_01_VinoBrennerei_Condition;
	information	= Info_Mod_BauerLobart_01_VinoBrennerei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze, ze Vino od jakiegos czasu brakowalo Vino.";
};

FUNC INT Info_Mod_BauerLobart_01_VinoBrennerei_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_02_VinoBrennerei))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_01_VinoBrennerei_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_02_VinoBrennerei (C_INFO)
{
	npc		= Mod_1415_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_02_VinoBrennerei_Condition;
	information	= Info_Mod_BauerLobart_02_VinoBrennerei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze, ze Vino od jakiegos czasu brakowalo Vino.";
};

FUNC INT Info_Mod_BauerLobart_02_VinoBrennerei_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_01_VinoBrennerei))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_02_VinoBrennerei_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_01_VinoBrennerei2 (C_INFO)
{
	npc		= Mod_1414_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_01_VinoBrennerei2_Condition;
	information	= Info_Mod_BauerLobart_01_VinoBrennerei2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego nikomu nie powiesz?";
};

FUNC INT Info_Mod_BauerLobart_01_VinoBrennerei2_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_02_VinoBrennerei2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_01_VinoBrennerei2_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei2();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_02_VinoBrennerei2 (C_INFO)
{
	npc		= Mod_1415_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_02_VinoBrennerei2_Condition;
	information	= Info_Mod_BauerLobart_02_VinoBrennerei2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego nikomu nie powiesz?";
};

FUNC INT Info_Mod_BauerLobart_02_VinoBrennerei2_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_01_VinoBrennerei2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_02_VinoBrennerei2_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei2();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_01_VinoBrennerei3 (C_INFO)
{
	npc		= Mod_1414_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_01_VinoBrennerei3_Condition;
	information	= Info_Mod_BauerLobart_01_VinoBrennerei3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rolnik samotnie przez skazony potworami las?";
};

FUNC INT Info_Mod_BauerLobart_01_VinoBrennerei3_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_02_VinoBrennerei3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_01_VinoBrennerei3_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei3();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_02_VinoBrennerei3 (C_INFO)
{
	npc		= Mod_1415_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_02_VinoBrennerei3_Condition;
	information	= Info_Mod_BauerLobart_02_VinoBrennerei3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rolnik samotnie przez skazony potworami las?";
};

FUNC INT Info_Mod_BauerLobart_02_VinoBrennerei3_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_01_VinoBrennerei3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_02_VinoBrennerei3_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei3();

	AI_StopProcessInfos	(self);
};
