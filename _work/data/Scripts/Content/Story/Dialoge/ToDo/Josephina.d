INSTANCE Info_Mod_Josephina_Hi (C_INFO)
{
	npc		= GardeInnos_4099_Josephina;
	nr		= 1;
	condition	= Info_Mod_Josephina_Hi_Condition;
	information	= Info_Mod_Josephina_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Josephina_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Josephina_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Josephina_Hi_17_00"); //YOU?!? JAK SIE TU DOSTALES? WTEDY MUSISZ JUZ ZABIC SIE!
	AI_Output(hero, self, "Info_Mod_Josephina_Hi_15_01"); //Cóz, chyba widzi trawe od dolu.
	AI_Output(self, hero, "Info_Mod_Josephina_Hi_17_02"); //Nie ma to znaczenia. Danae byl przegranym. Zawioda Cie mnie, maly bohater!
	AI_Output(hero, self, "Info_Mod_Josephina_Hi_15_03"); //Ach, przyjdzcie. Nie mówisz powaznie, ze masz szanse przeciwko mnie?
	AI_Output(self, hero, "Info_Mod_Josephina_Hi_17_04"); //Pycha przychodzi przed upadkiem, smiertelnik.
	AI_Output(hero, self, "Info_Mod_Josephina_Hi_15_05"); //Zacznijmy.
	AI_Output(self, hero, "Info_Mod_Josephina_Hi_17_06"); //(smiech) Sam siebie dopasuj.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	AI_UnequipWeapons	(Mod_930_PIR_Bones_AW);

	Npc_RemoveInvItems	(Mod_930_PIR_Bones_AW, ItMw_BonesAxt, 100);

	B_StartOtherRoutine	(Mod_930_PIR_Bones_AW,	"BEFREIUNG");
	B_StartOtherRoutine	(Mod_775_PIR_Skip_AW,	"BEFREIUNG");
};
