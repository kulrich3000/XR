INSTANCE Info_Mod_Rod_OGY_Hi (C_INFO)
{
	npc		= Mod_7533_SLD_Rod_OGY;
	nr		= 1;
	condition	= Info_Mod_Rod_OGY_Hi_Condition;
	information	= Info_Mod_Rod_OGY_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rod_OGY_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rod_OGY_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_00"); //Damn wreszcie wzmocnienia.
	AI_Output(hero, self, "Info_Mod_Rod_OGY_Hi_15_01"); //Co sie stalo?
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_02"); //Czego jeszcze trzeba zapytac! Zostalismy zasadzeni przez nieumarle dranie w zimnej krwi. Nagle nieumarli z kazdej strony.
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_03"); //Barykadowalismy sie tutaj w oczekiwaniu na wzmocnienia.
	AI_Output(hero, self, "Info_Mod_Rod_OGY_Hi_15_04"); //Tak, tam jestem.
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_05"); //A i inni? Nie jestes jedynym....
	AI_Output(hero, self, "Info_Mod_Rod_OGY_Hi_15_06"); //No cóz, uh.... ale.
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_07"); //Co? Cóz, fantastyczne.... Nah, czlowiek, dopóki nie przywiozles dwóch mezczyzn z zewnatrz, aby mnie wspierac, jestem pewien, ze jak pieklo nie zrobi kolejnego kroku.
	AI_Output(hero, self, "Info_Mod_Rod_OGY_Hi_15_08"); //No cóz, jesli nie ma innej drogi.....
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_09"); //Cóz, spieszyc sie. Bedziemy sie tu trzymac jak najdluzej.

	B_LogEntry	(TOPIC_MOD_SLD_FRIEDHOF, "Ocalale osoby na Cmentarzu Lukowym poprosily mnie, abym zadzwonil do lowców luków na wejscie.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Rod_OGY_GetZombie (C_INFO)
{
	npc		= Mod_7533_SLD_Rod_OGY;
	nr		= 1;
	condition	= Info_Mod_Rod_OGY_GetZombie_Condition;
	information	= Info_Mod_Rod_OGY_GetZombie_Info;
	permanent	= 0;
	important	= 0;
	description	= "No cóz, zle wyglada na wsparcie.";
};

FUNC INT Info_Mod_Rod_OGY_GetZombie_Condition()
{
	if (Mod_NL_ZombieVerwandlung == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rod_OGY_GetZombie_Info()
{
	AI_Output(hero, self, "Info_Mod_Rod_OGY_GetZombie_15_00"); //No cóz, zle wyglada na wsparcie.

	AI_StopProcessInfos	(self);
};
