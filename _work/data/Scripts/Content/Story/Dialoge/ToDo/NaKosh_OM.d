INSTANCE Info_Mod_NaKosh_OM_Hi (C_INFO)
{
	npc		= Mod_7803_TPL_GorNaKosh_OM;
	nr		= 1;
	condition	= Info_Mod_NaKosh_OM_Hi_Condition;
	information	= Info_Mod_NaKosh_OM_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wiec jak to jest polowanie na gasienice?";
};

FUNC INT Info_Mod_NaKosh_OM_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_NaKosh_OM_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_NaKosh_OM_Hi_15_00"); //Wiec jak to jest polowanie na gasienice?
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_Hi_13_01"); //W ogóle nie. Jaki jest pozytek? Wielkie dni braterstwa juz sie skonczyly. Niegdys wielkie cele ustapily teraz miejsca handlowi kapusta i ruda.
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_Hi_13_02"); //I nic nie pozostalo z dawnej dumy templariusza.... z wyjatkiem wstydu.
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_Hi_13_03"); //Tak, gdzie oni, dumni czyny i insygnia wojowników? Zgnilizna do niczego.... rozpad na pyl.
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
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_13_00"); //Cóz, na co patrze? Znak braterstwa, który mój byly mentor nosil z nim? Masz ja u siebie?
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_13_01"); //Byc moze nie wszystko jest stracone, jesli jeden czlowiek moze osiagnac to, co zostalo uznane za zagubione.
	AI_Output(hero, self, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_15_02"); //To w rekach jednostki znajduje sie to, co osiaga na mocy swojej odwagi.
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_13_03"); //(pamietajac) Tak...... Tak, masz racje.

	CreateInvItems	(self, TPL_ARMOR_M, 1);

	AI_UnequipArmor	(self);

	AI_EquipArmor	(self, TPL_ARMOR_M);

	CreateInvItems	(self, ItMw_2H_Sword_Light_02, 1);

	AI_EquipBestMeleeWeapon	(self);

	AI_Output(self, hero, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_13_04"); //Dawno juz sie uspokajalem w chmurach bagnistych. Nadszedl czas, aby zrozumiec wojownika wewnatrz mnie, ze kiedys bylem.
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_13_05"); //(ustalenie bohatera) Znajcie to: ilekroc potrzebujecie towarzysza w bitwie, bede czekac przed wejsciem do kopalni, aby wam pomóc.
	AI_Output(self, hero, "Info_Mod_NaKosh_OM_ZeichenDerBruderschaft_13_06"); //Niech zaszczyt wojownika bedzie zawsze z wami.

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
