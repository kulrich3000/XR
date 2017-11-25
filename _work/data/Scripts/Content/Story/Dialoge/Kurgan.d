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

	AI_Output(self, hero, "Info_Mod_Kurgan_Angebot_10_00"); //Hej, czego chcesz?
	AI_Output(hero, self, "Info_Mod_Kurgan_Angebot_15_01"); //Jestem z Starego Obozu i chce, aby oferta Raven byla dla mnie bardzo atrakcyjna.
	AI_Output(self, hero, "Info_Mod_Kurgan_Angebot_10_02"); //Raven jest nieobecny i od tak dawna czyni mnie przywódca Rycerzy Demonicznych.
	AI_Output(hero, self, "Info_Mod_Kurgan_Angebot_15_03"); //Stary obóz chce wykupic czesc kopalni, wszakze legalnie nalezaca do nas.
	AI_Output(self, hero, "Info_Mod_Kurgan_Angebot_10_04"); //Kup nasza kopalnie. Powiedz baronom rudy, aby dlugo na to czekac.
	AI_Output(hero, self, "Info_Mod_Kurgan_Angebot_15_05"); //Albo sie pan zgadza, albo musimy podjac bardziej rygorystyczne srodki.
	AI_Output(self, hero, "Info_Mod_Kurgan_Angebot_10_06"); //Poczekaj, pokaze Ci!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};
