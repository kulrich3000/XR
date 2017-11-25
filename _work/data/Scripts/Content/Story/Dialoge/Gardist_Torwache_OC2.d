INSTANCE Info_Mod_Torwache_Halt (C_INFO)
{
	npc		= Mod_1130_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Halt_Condition;
	information	= Info_Mod_Torwache_Halt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_Halt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GorNaMon_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_Halt_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_Halt_08_00"); //HALT! Co Pan tutaj robi?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Torwache_SabitschDieb (C_INFO)
{
	npc		= Mod_1130_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_SabitschDieb_Condition;
	information	= Info_Mod_Torwache_SabitschDieb_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_SabitschDieb_Condition()
{
	if (Mod_SabitschAmulettGeklaut == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torwache_AL_01_SabitschDieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_SabitschDieb_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschDieb_08_00"); //Brudni zlodzieje nie stracili nic w naszym magazynie.
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschDieb_08_01"); //Najpierw splacic dlug Sabitschowi, a nastepnie wrócic do srodka.
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschDieb_08_02"); //1000 zlotych monet kara za pogrubiona kradziez i amulet.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Bylem w stanie ukrasc amulet, który Sabitsch zauwazyl wkrótce potem. Mialem go przywiezc do Dextera i zastanowic sie, jak po kradziezy przywrócic stary obóz przyjazny.");
};

INSTANCE Info_Mod_Torwache_SabitschMoerder (C_INFO)
{
	npc		= Mod_1130_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_SabitschMoerder_Condition;
	information	= Info_Mod_Torwache_SabitschMoerder_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_SabitschMoerder_Condition()
{
	if (Mod_SabitschTotPetze == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torwache_AL_01_SabitschMoerder))
	&& (!Npc_IsDead(Mod_962_STT_Scatty_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_SabitschMoerder_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschMoerder_08_00"); //Tego wieczoru w jego kabinie zmarl przyjaciel Thorusa.
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschMoerder_08_01"); //Mamy wiarygodnego swiadka, który widzial Cie w poblizu.
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschMoerder_08_02"); //Dopóki tak sie nie stanie, na pewno nie wrócisz do obozu.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Pewnego swiadka Damna - prawdopodobnie Scatty' ego - swiadczyl o tym, ze widzialem mnie noca w kabinie zmarlego. Jesli nie chce byc na stale zakazany z dawnego obozu, musze cos zrobic.");
};

INSTANCE Info_Mod_Torwache_EXIT (C_INFO)
{
	npc		= Mod_1130_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_EXIT_Condition;
	information	= Info_Mod_Torwache_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torwache_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
