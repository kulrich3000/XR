// ***************************************************
//  	B_CheckLog ()	
// ***************************************************

func void B_CheckLog ()	
{	
};

FUNC VOID B_StartMangel()
{
	if (Mod_Pat_MangelStarted == 0)
	{
		Log_CreateTopic	(TOPIC_MOD_FM_MANGEL, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_FM_MANGEL, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Z powodu dlugiego oblezenia w Patherionie brakuje wielu rzeczy.");

		Mod_Pat_MangelStarted = 1;
	};
};

FUNC VOID B_StopMangel()
{
	PrintDebug(ConcatStrings("Mangel: ", IntToString(Mod_Pat_MangelStarted)));
	PrintDebug(ConcatStrings("Mangel: ", IntToString(Npc_KnowsInfo(hero, Info_Mod_Faros_MangelQuest2))));
	PrintDebug(ConcatStrings("Mangel: ", IntToString(Npc_KnowsInfo(hero, Info_Mod_Furgas_MangelQuest2))));
	PrintDebug(ConcatStrings("Mangel: ", IntToString(Mod_Pat_FlaemarKraut >= 15)));
	PrintDebug(ConcatStrings("Mangel: ", IntToString(Mod_Pat_FlaemarAlkohol >= 15)));
	PrintDebug(ConcatStrings("Mangel: ", IntToString(Mod_Pat_PflanzenCount == 5)));
	PrintDebug(ConcatStrings("Mangel: ", IntToString(Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest2))));
	PrintDebug(ConcatStrings("Mangel: ", IntToString(Npc_KnowsInfo(hero, Info_Mod_Velario_MangelQuest2))));
	if (Mod_Pat_MangelStarted == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Faros_MangelQuest2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Furgas_MangelQuest2))
	&& (Mod_Pat_FlaemarKraut >= 15)
	&& (Mod_Pat_FlaemarAlkohol >= 15)
	&& (Mod_Pat_PflanzenCount == 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Velario_MangelQuest2))
	{
		B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Pomagalem wszystkim. Innos powinien mnie zadowolic.");
		B_SetTopicStatus	(TOPIC_MOD_FM_MANGEL, LOG_SUCCESS);

		Mod_Pat_MangelStarted = 2;

		B_BlessAttribute	(hero, ATR_MANA_MAX, 5);
	};
};
