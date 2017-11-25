INSTANCE Info_Mod_Lester_MT_Drogenminister (C_INFO)
{
	npc		= Mod_7268_PSINOV_Lester_MT;
	nr		= 1;
	condition	= Info_Mod_Lester_MT_Drogenminister_Condition;
	information	= Info_Mod_Lester_MT_Drogenminister_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lester_MT_Drogenminister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatDrogenminister_Spezialauftrag))
	&& (Npc_HasItems(hero, ItMi_PaketFuerLester) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lester_MT_Drogenminister_Info()
{
	AI_Output(self, hero, "Info_Mod_Lester_MT_Drogenminister_13_00"); //Ach, przynosisz paczke. Bardzo dziekuje!

	B_GiveInvItems	(hero, self, ItMi_PaketFuerLester, 1);

	AI_Output(hero, self, "Info_Mod_Lester_MT_Drogenminister_15_01"); //O co w tym wszystkim chodzi?
	AI_Output(self, hero, "Info_Mod_Lester_MT_Drogenminister_13_02"); //Jesli to zadziala, szybko sie dowiesz. Teraz, jesli mnie wybaczycie.

	B_GivePlayerXP	(250);

	B_SetTopicStatus	(TOPIC_MOD_SEKTE_KING, LOG_SUCCESS);
};

INSTANCE Info_Mod_Lester_MT_EXIT (C_INFO)
{
	npc		= Mod_7268_PSINOV_Lester_MT;
	nr		= 1;
	condition	= Info_Mod_Lester_MT_EXIT_Condition;
	information	= Info_Mod_Lester_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lester_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lester_MT_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Lester_MT_EXIT_13_01"); //Do celu!

	AI_StopProcessInfos	(self);
};
