INSTANCE Info_Mod_DaemonenritterWache_Hi (C_INFO)
{
	npc		= Mod_7066_DMR_Daemonenritter_MT;
	nr		= 1;
	condition	= Info_Mod_DaemonenritterWache_Hi_Condition;
	information	= Info_Mod_DaemonenritterWache_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_DaemonenritterWache_Hi_Condition()
{
	var C_Item CurrentArmor;
	CurrentArmor = Npc_GetEquippedArmor(hero);

	if (Hlp_IsItem(CurrentArmor, ItAr_Raven_Addon))
	{
		return 1;
	}
	else
	{
		B_Attack	(self, hero, AR_Kill, 0);
	};
};

FUNC VOID Info_Mod_DaemonenritterWache_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_DaemonenritterWache_Hi_12_00"); //Zatrzymaj sie! Czego chcesz z Gomezem?
	AI_Output(hero, self, "Info_Mod_DaemonenritterWache_Hi_15_01"); //Mam dla niego wazne przeslanie.
	AI_Output(self, hero, "Info_Mod_DaemonenritterWache_Hi_12_02"); //Przeslanie nie moze byc tak wazne, jak nie potrafie go posluchac i zdecydowac, jak wazne jest.
	AI_Output(hero, self, "Info_Mod_DaemonenritterWache_Hi_15_03"); //Oredzie jest przeznaczone tylko dla samego Gomeza.
	AI_Output(self, hero, "Info_Mod_DaemonenritterWache_Hi_12_04"); //Kazdy moze to powiedziec. Kim tak czy owak jestes?
	AI_Output(hero, self, "Info_Mod_DaemonenritterWache_Hi_15_05"); //Jestem.....

	B_StartOtherRoutine	(Mod_517_DMR_Gomez_MT, "INAL");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_DaemonenritterWache_Ok (C_INFO)
{
	npc		= Mod_7066_DMR_Daemonenritter_MT;
	nr		= 1;
	condition	= Info_Mod_DaemonenritterWache_Ok_Condition;
	information	= Info_Mod_DaemonenritterWache_Ok_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_DaemonenritterWache_Ok_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gomez_AtAL))
	&& (!Npc_IsInState(Mod_517_DMR_Gomez_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_DaemonenritterWache_Ok_Info()
{
	AI_TurnToNpc	(self, Mod_517_DMR_Gomez_MT);

	AI_Output(self, hero, "Info_Mod_DaemonenritterWache_Ok_12_00"); //Tak, panie posle.

	AI_StopProcessInfos	(self);
};
