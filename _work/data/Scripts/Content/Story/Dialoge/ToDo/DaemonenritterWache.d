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
	AI_Output(self, hero, "Info_Mod_DaemonenritterWache_Hi_12_00"); //Stop! What do you want with Gomez?
	AI_Output(hero, self, "Info_Mod_DaemonenritterWache_Hi_15_01"); //I have an important message for him.
	AI_Output(self, hero, "Info_Mod_DaemonenritterWache_Hi_12_02"); //A message can't be as important as I can't listen to it to decide how important it is.
	AI_Output(hero, self, "Info_Mod_DaemonenritterWache_Hi_15_03"); //The message is only intended for Gomez himself.
	AI_Output(self, hero, "Info_Mod_DaemonenritterWache_Hi_12_04"); //Anyone can say that. Who are you, anyway?
	AI_Output(hero, self, "Info_Mod_DaemonenritterWache_Hi_15_05"); //I am....

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

	AI_Output(self, hero, "Info_Mod_DaemonenritterWache_Ok_12_00"); //Yes, sir.

	AI_StopProcessInfos	(self);
};
