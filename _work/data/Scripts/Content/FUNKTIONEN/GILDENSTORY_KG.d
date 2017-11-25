FUNC VOID GILDENSTORY_KG()
{
	if (CurrentLevel == ABANDONEDMINE_ZEN)
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_AtNager))
		&& (!Npc_IsInState(Mod_7625_KGD_Granmar_VM, ZS_Talk))
		&& (Npc_GetDistToNpc(Mod_7625_KGD_Granmar_VM, hero) > 1000)
		&& (Mod_KG_WaitInMine == 0)
		{
			Mod_KG_WaitInMine = 1;

			AI_StandUP	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_VM_GehtNichtVoran_15_00"); //If we keep this up, we'll never get the mine going. Looks like I'm allowed to do everything on my own again.

			B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "as long as Granmar takes the others to the mine.");
		};

		if (Mod_KG_WaitInMine == 1)
		&& (Npc_GetDistToWP(hero, "MINE_GO_41") < 500)
		&& (Mod_KG_TrentLicht == FALSE)
		{
			AI_StandUP	(hero);

			if (Mod_KG_RightTunnel == 0)
			{
				Mod_KG_RightTunnel = 1;

				AI_Output(hero, NULL, "Info_Mod_Hero_VM_RightTunnel_15_00"); //You can't even see your hand in front of your eyes. And I can't get my torch on here. Looks like there's a gust of wind here. I should rather turn back before I run into any monsters here, if they have anything like that....

				B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "The right tunnel is too dark to enter. I should try again later....");
			};

			AI_GotoWP	(hero, "MINE_GO_36");
		};

		if (Mod_KG_SpecialErzguardian == 0)
		&& (Npc_IsDead(Erzguardian_Special_01))
		{
			Mod_KG_SpecialErzguardian = 1;

			AI_StandUP	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_VM_SpecialErzguardian_15_00"); //I should stop by Granmar's house...

			B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "I should stop by Granmar's house...");
		};

		if (Mod_KG_SchwarzesErz == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_AfterQueenAttack))
		&& (!Npc_IsInState(Mod_7630_RIT_Trent_VM, ZS_Talk))
		{
			Mod_KG_SchwarzesErz = 1;

			AI_StandUP	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_VM_AfterQueenAttack_15_00"); //I'm not supposed to hand the black ore over to the paladins. Xarda's we can certainly help me with that...

			Log_CreateTopic	(TOPIC_MOD_KG_RITUAL, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_KG_RITUAL, LOG_RUNNING);
			B_LogEntry	(TOPIC_MOD_KG_RITUAL, "I should never hand the black ore over to the paladins. Xarda will certainly be able to help me with this....");
		};

		if (Mod_KG_TrentLicht > 0)
		{
			Mod_KG_TrentLicht -= 1;
		};

		if (Mod_KG_VMGate_02 == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Hymir_MineFertig))
		{
			Mod_KG_VMGate_02 = 1;

			Wld_SendTrigger	("EVT_VMGATE_02");
		};
	};

	if (CurrentLevel == MINENTAL_ZEN)
	{
		if (Mod_KG_OrkZauber == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_OrcSchamane_KG_Hi))
		&& (!Npc_IsInState(Mod_10041_Orc_Schamane_MT, ZS_Talk))
		{
			Mod_KG_OrkZauber = 1;

			Wld_PlayEffect	("SPELLFX_INVOCATION_RED", Mod_10041_Orc_Schamane_MT, Mod_10041_Orc_Schamane_MT, 0, 0, 0, FALSE);

			hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX]/2;

			B_KillNpc	(Mod_7528_RIT_Trent_MT);
			B_KillNpc	(Mod_7635_MIL_Miliz_MT);
			B_KillNpc	(Mod_7636_MIL_Miliz_MT);
		};

		if (Mod_KG_NachOrkZauber == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_OrcSchamane_KG_NichtTot))
		&& (Npc_GetDistToWP(hero, "CASTLE_30") < 300)
		{
			Mod_KG_NachOrkZauber = 1;

			AI_StandUP	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_KG_OrkNichtTot_15_00"); //Damn, I guess that's it for Trent. I should visit Xardas, maybe the black ore will help me here. Hm... didn't the shaman mention something black?

			B_LogEntry	(TOPIC_MOD_KG_RITUAL, "Damn, I guess that's it for Trent. I should visit Xardas, maybe the black ore will help me here. Hm... didn't the shaman mention something black?");
		};

		if (Mod_KG_OrkTot == 0)
		&& (Npc_IsDead(Mod_10041_Orc_Schamane_MT))
		&& (Npc_KnowsInfo(hero, Info_Mod_OrcSchamane_KG_KillYou))
		{
			Mod_KG_OrkTot = 1;

			AI_StandUP	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_KG_OrkTot_15_00"); //That settles it. I should see Hymir and Lord Andre now.

			B_LogEntry	(TOPIC_MOD_KG_RITUAL, "That settles it. I should see Hymir and Lord Andre now.");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_OrcSchamane_KG_NichtTot))
		&& (Mod_KG_SchwarzerRing == 0)
		&& (Npc_GetDistToWP(hero, "CASTLE_37") < 1000)
		{
			AI_StandUP	(hero);

			AI_GotoWP	(hero, "CASTLE_30");

			AI_Output(hero, NULL, "Info_Mod_Hero_KG_OrkNochNichtBereit_15_00"); //I'd better not go back inside.
		};
	};

	if (CurrentLevel == NEWWORLD_ZEN)
	{
		if (Mod_KG_VMGate_01 == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Hymir_MineFertig))
		{
			Mod_KG_VMGate_01 = 1;

			Wld_SendTrigger	("EVT_VMGATE_01");
		};
	};
};
