INSTANCE Info_Mod_Bandenchef_Hi (C_INFO)
{
	npc		= Mod_1891_NONE_Bandenchef_NW;
	nr		= 1;
	condition	= Info_Mod_Bandenchef_Hi_Condition;
	information	= Info_Mod_Bandenchef_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto wiec jestes.";
};

FUNC INT Info_Mod_Bandenchef_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bandenchef_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bandenchef_Hi_15_00"); //Oto wiec jestes.
	AI_Output(self, hero, "Info_Mod_Bandenchef_Hi_07_01"); //Czego chcesz? Potrzebujesz specjalnych przedmiot�w?
	AI_Output(hero, self, "Info_Mod_Bandenchef_Hi_15_02"); //Tak, pierscionek, prosze.
	AI_Output(self, hero, "Info_Mod_Bandenchef_Hi_07_03"); //Co? Kim jestes?
	AI_Output(hero, self, "Info_Mod_Bandenchef_Hi_15_04"); //Jestem agentem Attyli!
	AI_Output(self, hero, "Info_Mod_Bandenchef_Hi_07_05"); //Ul�z, przepraszam, syn suki. Twoja kolej!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Bandenchef_EXIT (C_INFO)
{
	npc		= Mod_1891_NONE_Bandenchef_NW;
	nr		= 1;
	condition	= Info_Mod_Bandenchef_EXIT_Condition;
	information	= Info_Mod_Bandenchef_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bandenchef_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bandenchef_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
