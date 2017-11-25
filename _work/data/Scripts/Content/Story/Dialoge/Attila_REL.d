INSTANCE Info_Mod_Attila_REL_Hi (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_Hi_Condition;
	information	= Info_Mod_Attila_REL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_REL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Attila_REL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_REL_Hi_09_00"); //Wydaje sie, ze dzieci prostoty po prostu zapelniaja swój magazyn zaopatrzeniem.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Hi_09_01"); //Zawsze niosa pudelka i worki wypelnione jedzeniem i napojami do budynku od rana do nocy.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Hi_09_02"); //Nie ma tam okien.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Hi_09_03"); //Dwóch strazników strzeze calego procesu, który zawsze zamyka budynek wieczorem.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Hi_09_04"); //Jeden z nich zatrzymuje noc nad straza przy drzwiach wejsciowych.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Hi_09_05"); //To wszystko, co uslyszalem.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Attila_REL_Glorie (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_Glorie_Condition;
	information	= Info_Mod_Attila_REL_Glorie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_REL_Glorie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_Glorie2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_REL_Glorie_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_00"); //Powitanie, ojciec nauki.
	AI_Output(hero, self, "Info_Mod_Attila_REL_Glorie_15_01"); //Ty tutaj? Czy nie powinienes sie upewnic, ze uczony sie nie pojawil?

	AI_PlayAni	(hero, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_02"); //No cóz, nie moglem go zaangazowac w rozmowe.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_03"); //Musialem skorzystac z innych srodków.
	AI_Output(hero, self, "Info_Mod_Attila_REL_Glorie_15_04"); //Nie widziales go......
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_05"); //Nie, nie, nie..... tylko niektóre wycelowane mioty z leniwymi owocami, a nastepnie krótka gonitwa z nim i jego ochroniarzem.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_06"); //Teraz wolno mu trzymac dom w zabrudzonych strojach.
	AI_Output(hero, self, "Info_Mod_Attila_REL_Glorie_15_07"); //Owoce rotacyjne? To zwykle nie jest twoja droga.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_08"); //Zlodziej musi zawsze umiec sie zmienic.... co przypomina mi uwolnic Ramireza od jego niepewnej sytuacji.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_09"); //Jesli zrecznie to zrobimy, powinnismy byc nawet w stanie odlozyc sukienke z powrotem przed zauwazeniem kradziezy.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_10"); //Chodz dalej!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOSCHNEIDER");
};

INSTANCE Info_Mod_Attila_REL_Glorie2 (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_Glorie2_Condition;
	information	= Info_Mod_Attila_REL_Glorie2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_REL_Glorie2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_REL_Glorie))
	&& (Npc_GetDistToWP(self, "REL_CITY_231") < 500)
	&& (Npc_HasItems(hero, ItAr_GelehrterNeu) == 1)
	&& (Npc_HasItems(hero, ItAr_Bart) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_REL_Glorie2_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie2_09_00"); //Czy moge wiec poprosic pana posla o jego ubranie?

	B_GiveInvItems	(hero, self, ItAr_GelehrterNeu, 1);

	Npc_RemoveInvItems (hero, ItAr_Bart, 1);

	AI_EquipBestArmor (hero);

	AI_SetWalkmode (self, NPC_SNEAK);

	AI_GotoWP (self, "REL_CITY_232");

	AI_GotoNpc (self, hero);

	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Attila_REL_Glorie3 (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_Glorie3_Condition;
	information	= Info_Mod_Attila_REL_Glorie3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_REL_Glorie3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_REL_Glorie2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_REL_Glorie3_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie3_09_00"); //Wrócmy teraz do obozu.

	AI_StopProcessInfos (self);

	B_StartOtherRoutine	(self, "INHAUS");
	B_StartOtherRoutine	(Mod_7704_OUT_Jesper_REL, "INHAUS");
	B_StartOtherRoutine	(Mod_7705_OUT_Cassia_REL, "INHAUS");
	B_StartOtherRoutine	(Mod_7708_OUT_Ramirez_REL, "INHAUS");
};

INSTANCE Info_Mod_Attila_REL_Glorie4 (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_Glorie4_Condition;
	information	= Info_Mod_Attila_REL_Glorie4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_REL_Glorie4_Condition()
{
	if (Npc_GetDistToWP(hero, "REL_CITY_KANAL_027") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_REL_Glorie4_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie4_09_00"); //Beliar jest duzy.... Wystarczy spojrzec na ten skarb.

	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Attila_REL_Glorie5 (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_Glorie5_Condition;
	information	= Info_Mod_Attila_REL_Glorie5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_REL_Glorie5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_Glorie4))
	&& (Npc_IsDead(Lesser_Skeleton_Diebe_01))
	&& (Npc_IsDead(Lesser_Skeleton_Diebe_02))
	&& (Npc_IsDead(Lesser_Skeleton_Diebe_03))
	&& (Npc_IsDead(Lesser_Skeleton_Diebe_04))
	&& (Npc_IsDead(Lesser_Skeleton_Diebe_05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_REL_Glorie5_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie5_09_00"); //Cóz, mysle, ze na dzien dzisiejszy wscieklismy Beliara. Lepiej bysmy juz nie pladrowali jego skarbów.

	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Attila_REL_EXIT (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_EXIT_Condition;
	information	= Info_Mod_Attila_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Attila_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Attila_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
