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
	AI_Output(self, hero, "Info_Mod_Josephina_Hi_17_00"); //YOU?!? HOW DID YOU GET HERE? THEN YOU MUST HAVE ALREADY KILLED YOURSELF!
	AI_Output(hero, self, "Info_Mod_Josephina_Hi_15_01"); //Well, I guess he sees the grass from below.
	AI_Output(self, hero, "Info_Mod_Josephina_Hi_17_02"); //It doesn't matter. Danae was a loser. You'll fail because of me, little hero!
	AI_Output(hero, self, "Info_Mod_Josephina_Hi_15_03"); //Oh, come on. You're not seriously saying you have a chance against me?
	AI_Output(self, hero, "Info_Mod_Josephina_Hi_17_04"); //Pride comes before the fall, mortal.
	AI_Output(hero, self, "Info_Mod_Josephina_Hi_15_05"); //Let's get started.
	AI_Output(self, hero, "Info_Mod_Josephina_Hi_17_06"); //(laughs) Suit yourself.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	AI_UnequipWeapons	(Mod_930_PIR_Bones_AW);

	Npc_RemoveInvItems	(Mod_930_PIR_Bones_AW, ItMw_BonesAxt, 100);

	B_StartOtherRoutine	(Mod_930_PIR_Bones_AW,	"BEFREIUNG");
	B_StartOtherRoutine	(Mod_775_PIR_Skip_AW,	"BEFREIUNG");
};
