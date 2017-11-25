INSTANCE Info_Mod_NaKosh_OM_Hi (C_INFO)
{
	npc		= Mod_7803_TPL_GorNaKosh_OM;
	nr		= 1;
	condition	= Info_Mod_NaKosh_OM_Hi_Condition;
	information	= Info_Mod_NaKosh_OM_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "So, how's the crawler hunt going?";
};

FUNC INT Info_Mod_NaKosh_OM_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_NaKosh_OM_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_NaKosh_OM_Hi_15_00"); //So, how's the crawler hunt going?
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_Hi_13_01"); //Not at all. Not at all. What's the use? The great days of brotherhood are over. The once great aims have now given way to the trade in cabbage and ore.
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_Hi_13_02"); //And nothing remains of the former pride of the Templar... except shame.
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_Hi_13_03"); //Yes, where are they, the proud deeds and insignia of the warriors? Decay to nothing... decay to dust.
};

INSTANCE Info_Mod_NaKosh_OM_ZeichenDerBruderschaft (C_INFO)
{
	npc		= Mod_7803_TPL_GorNaKosh_OM;
	nr		= 1;
	condition	= Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_Condition;
	information	= Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_NaKosh_OM_Hi))
	&& (Npc_HasItems(hero, ItMi_ZeichenDerBruderschaft) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_Info()
{
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_13_00"); //What, what am I looking at? The sign of the brotherhood that my former mentor carried with him? You have it with you?
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_13_01"); //Perhaps not everything is lost if a single man can achieve what was thought to be lost.
	AI_Output(hero, self, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_15_02"); //It is in the hands of the individual what he achieves by virtue of his courage.
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_13_03"); //(remembering) Yes.... Yeah, you're right.

	CreateInvItems	(self, TPL_ARMOR_M, 1);

	AI_UnequipArmor	(self);

	AI_EquipArmor	(self, TPL_ARMOR_M);

	CreateInvItems	(self, ItMw_2H_Sword_Light_02, 1);

	AI_EquipBestMeleeWeapon	(self);

	AI_Output(self, hero, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_13_04"); //Long enough, I've been sedating myself in the swampweed clouds. It's time to fathom the warrior inside me that I once was.
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_13_05"); //(determining the hero) Know this: Whenever you need a companion in battle, I will wait in front of the entrance of this mine to assist you.
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_13_06"); //May the warrior's honor be with you at all times.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_NaKosh_OM_EXIT (C_INFO)
{
	npc		= Mod_7803_TPL_GorNaKosh_OM;
	nr		= 1;
	condition	= Info_Mod_NaKosh_OM_EXIT_Condition;
	information	= Info_Mod_NaKosh_OM_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_NaKosh_OM_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_NaKosh_OM_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
