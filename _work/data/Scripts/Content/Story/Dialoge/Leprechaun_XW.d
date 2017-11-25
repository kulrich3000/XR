INSTANCE Info_Mod_Leprechaun_XW_Hi (C_INFO)
{
	npc		= Monster_11074_Leprechaun_XW;
	nr		= 1;
	condition	= Info_Mod_Leprechaun_XW_Hi_Condition;
	information	= Info_Mod_Leprechaun_XW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leprechaun_XW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leprechaun_XW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_Hi_20_00"); //Kolejny nowy! Leprechaun Cie wie!
};

INSTANCE Info_Mod_Leprechaun_XW_Antworten (C_INFO)
{
	npc		= Monster_11074_Leprechaun_XW;
	nr		= 1;
	condition	= Info_Mod_Leprechaun_XW_Antworten_Condition;
	information	= Info_Mod_Leprechaun_XW_Antworten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zawdziecza mi pan kilka odpowiedzi.";
};

FUNC INT Info_Mod_Leprechaun_XW_Antworten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leprechaun_XW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leprechaun_XW_Antworten_Info()
{
	AI_Output(hero, self, "Info_Mod_Leprechaun_XW_Antworten_15_00"); //Zawdziecza mi pan kilka odpowiedzi.
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_Antworten_20_01"); //Nic nie pamieta dzieki Tobie. Za wszystko mial zaplacic straznik kamienia. (smiertelne jeki)
};

INSTANCE Info_Mod_Leprechaun_XW_TuerAuf (C_INFO)
{
	npc		= Monster_11074_Leprechaun_XW;
	nr		= 1;
	condition	= Info_Mod_Leprechaun_XW_TuerAuf_Condition;
	information	= Info_Mod_Leprechaun_XW_TuerAuf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy nie otwierasz drzwi?";
};

FUNC INT Info_Mod_Leprechaun_XW_TuerAuf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leprechaun_XW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leprechaun_XW_TuerAuf_Info()
{
	AI_Output(hero, self, "Info_Mod_Leprechaun_XW_TuerAuf_15_00"); //Czy nie otwierasz drzwi? Ja tez nie ranie cie.
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_TuerAuf_20_01"); //Tak, dlaczego bym nie byl? Wystarczy tylko wyjac klucz, który zawsze ma przy sobie, wlozyc go do zamka i przekrecic trzy razy - w prawo?
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_TuerAuf_20_02"); //Nie jest to wiec trudne zadanie. Nawet on bylby w stanie to zrobic.
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_TuerAuf_20_03"); //Ale wiesz co wiesz? Nie zabawa!
};

INSTANCE Info_Mod_Leprechaun_XW_EXIT (C_INFO)
{
	npc		= Monster_11074_Leprechaun_XW;
	nr		= 1;
	condition	= Info_Mod_Leprechaun_XW_EXIT_Condition;
	information	= Info_Mod_Leprechaun_XW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Leprechaun_XW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leprechaun_XW_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_EXIT_20_00"); //Teraz jest smaczny Happi-Happi, a potem Leprechaun musi znów jechac.
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_EXIT_20_01"); //Zyczylby ci blogoslawionego apetytu. Hu!

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};
