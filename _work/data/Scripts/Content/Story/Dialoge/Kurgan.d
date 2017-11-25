INSTANCE Info_Mod_Kurgan_Angebot (C_INFO)
{
	npc		= Mod_1000_DMR_Kurgan_NW;
	nr		= 1;
	condition	= Info_Mod_Kurgan_Angebot_Condition;
	information	= Info_Mod_Kurgan_Angebot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kurgan_Angebot_Condition()
{
	if (Hat_BuddlerNachrichtVonAL == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kurgan_Angebot_Info()
{
	AI_UnequipWeapons	(hero);

	AI_Output(self, hero, "Info_Mod_Kurgan_Angebot_10_00"); //Hey, what do you want?
	AI_Output(hero, self, "Info_Mod_Kurgan_Angebot_15_01"); //I'm from the Old Camp and I want to make Raven an offer.
	AI_Output(self, hero, "Info_Mod_Kurgan_Angebot_10_02"); //Raven is not here and has made me leader of the Demon Knights for so long.
	AI_Output(hero, self, "Info_Mod_Kurgan_Angebot_15_03"); //The old camp wants to buy off a part of the mine, after all it belongs to us legally.
	AI_Output(self, hero, "Info_Mod_Kurgan_Angebot_10_04"); //Buy off our mine. Tell your ore barons to wait a long time for it.
	AI_Output(hero, self, "Info_Mod_Kurgan_Angebot_15_05"); //Either you agree or we have to take tougher measures.
	AI_Output(self, hero, "Info_Mod_Kurgan_Angebot_10_06"); //Wait, I'll show you!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};
