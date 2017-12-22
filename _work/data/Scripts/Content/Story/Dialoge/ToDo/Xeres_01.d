INSTANCE Info_Mod_Xeres_Hi (C_INFO)
{
	npc		= Xeres_01;
	nr		= 1;
	condition	= Info_Mod_Xeres_Hi_Condition;
	information	= Info_Mod_Xeres_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xeres_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Xeres_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_00"); //(höhnisch) Ahh, da ist ja mein "emancipators".
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_01"); //Come to pay homage to the new ruler of the world and heaven?
	AI_Output(hero, self, "Info_Mod_Xeres_Hi_15_02"); //You don't really think you can stand up to the power of the three gods.
	AI_Output(hero, self, "Info_Mod_Xeres_Hi_15_03"); //I'm her deputy here to keep you from this insane business of yours.
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_04"); //The heavenly gods.
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_05"); //Sit up there and try to determine the fate of the world, while the actual battle takes place and is decided down here...
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_06"); //But enough gossip. You want to stop me?
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_07"); //Vain fool, think you could just scratch my armor...
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_08"); //Wherein... you actually managed to banish my servant and thwart my plans.
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_09"); //You have proven that you could be a danger to me among mortals...
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_10"); //So I'm not going to take any unnecessary risks and give you a quick death.
	AI_Output(self, hero, "Info_Mod_Xeres_Hi_14_11"); //Prepare yourself for eternal darkness and damnation.

	AI_StopProcessInfos	(self);

	Wld_PlayEffect("DEMENTOR_FX",  self, self, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_Fear",  self, self, 0, 0, 0, FALSE );

	AI_StartState	(hero, ZS_MagicFreeze, 0, "");

	Wld_PlayEffect("DEMENTOR_FX",  hero, hero, 0, 0, 0, FALSE );
	B_Attack	(self, hero, AR_NONE, 1);

	B_StartOtherRoutine	(Schattenlord_877_Urnol, "TOT");
};

INSTANCE Info_Mod_Xeres_Beliar (C_INFO)
{
	npc		= Xeres_01;
	nr		= 1;
	condition	= Info_Mod_Xeres_Beliar_Condition;
	information	= Info_Mod_Xeres_Beliar_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xeres_Beliar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_HabSchwert))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xeres_Beliar_Info()
{
	AI_Output(self, hero, "Info_Mod_Xeres_Beliar_14_00"); //There you are again. You think you have a better chance this time?
	AI_Output(hero, self, "Info_Mod_Xeres_Beliar_15_01"); //We'll see about that.
	AI_Output(self, hero, "Info_Mod_Xeres_Beliar_14_02"); //This time, no one will come and save you.
	
	AI_StopProcessInfos	(self);

	if (Mod_TeleportZuFestung == 0)
	{
		Wld_PlayEffect("DEMENTOR_FX",  self, self, 0, 0, 0, FALSE );
		Wld_PlayEffect("spellFX_Fear",  self, self, 0, 0, 0, FALSE );

		AI_StartState	(hero, ZS_MagicFreeze, 0, "");
	};

	B_Attack	(self, hero, AR_GuildEnemy, 1);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);
};
