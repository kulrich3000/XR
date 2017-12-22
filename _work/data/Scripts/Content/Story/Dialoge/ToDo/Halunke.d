INSTANCE Info_Mod_Halunke_Hi (C_INFO)
{
	npc		= Mod_7214_OUT_Halunke_NW;
	nr		= 1;
	condition	= Info_Mod_Halunke_Hi_Condition;
	information	= Info_Mod_Halunke_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Halunke_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Halunke_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Halunke_Hi_06_00"); //Cóz, spójrz, kto jest tutaj. Ktos, kto jest prawdopodobnie w drodze do magów wody.
	AI_Output(self, hero, "Info_Mod_Halunke_Hi_06_01"); //A ktos, kto udaje sie do magików wody jest prawdopodobnie jednym z ich poslanców.
	AI_Output(self, hero, "Info_Mod_Halunke_Hi_06_02"); //A ich poslancy musza miec zlote monety, aby je rozluznic.

	Wld_InsertNpc	(Mod_7215_OUT_Halunke_NW, "NW_TROLLAREA_RUINS_01");
	Wld_InsertNpc	(Mod_7216_OUT_Halunke_NW, "NW_TROLLAREA_RUINS_01");
};

INSTANCE Info_Mod_Halunke_Gold (C_INFO)
{
	npc		= Mod_7214_OUT_Halunke_NW;
	nr		= 1;
	condition	= Info_Mod_Halunke_Gold_Condition;
	information	= Info_Mod_Halunke_Gold_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto 500 zlotych monet. Nie chce zadnych klopotów.";
};

FUNC INT Info_Mod_Halunke_Gold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Halunke_Hi))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Halunke_Angriff))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Halunke_Gold_Info()
{
	AI_Output(hero, self, "Info_Mod_Halunke_Gold_15_00"); //Oto 500 zlotych monet. Nie chce zadnych klopotów.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Halunke_Gold_06_01"); //500 zlotych monet? Tam, gdzie jest tak wiele do zdobycia, musi byc ich wiecej.
};

INSTANCE Info_Mod_Halunke_Angriff (C_INFO)
{
	npc		= Mod_7214_OUT_Halunke_NW;
	nr		= 1;
	condition	= Info_Mod_Halunke_Angriff_Condition;
	information	= Info_Mod_Halunke_Angriff_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie daje wam niczego oszukac.";
};

FUNC INT Info_Mod_Halunke_Angriff_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Halunke_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Halunke_Gold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Halunke_Angriff_Info()
{
	AI_Output(hero, self, "Info_Mod_Halunke_Angriff_15_00"); //Nie daje wam niczego oszukac.
	AI_Output(self, hero, "Info_Mod_Halunke_Angriff_06_01"); //Dopasuj sie do siebie.
};

INSTANCE Info_Mod_Halunke_EXIT (C_INFO)
{
	npc		= Mod_7214_OUT_Halunke_NW;
	nr		= 1;
	condition	= Info_Mod_Halunke_EXIT_Condition;
	information	= Info_Mod_Halunke_EXIT_Info;
	permanent	= 0;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Halunke_EXIT_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Halunke_Angriff))
	|| (Npc_KnowsInfo(hero, Info_Mod_Halunke_Gold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Halunke_EXIT_Info()
{
	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
	B_Attack	(Mod_7215_OUT_Halunke_NW, hero, AR_Kill, 0);
	B_Attack	(Mod_7216_OUT_Halunke_NW, hero, AR_Kill, 0);
};
