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

			AI_Output(hero, NULL, "Info_Mod_Hero_VM_GehtNichtVoran_15_00"); //Jesli tak sie stanie, to nigdy nie uda nam sie tego odebrac. Wyglada na to, ze moge robic wszystko na wlasna reke.

			B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "tak dlugo, jak dlugo Granmar zabiera innych do kopalni.");
		};

		if (Mod_KG_WaitInMine == 1)
		&& (Npc_GetDistToWP(hero, "MINE_GO_41") < 500)
		&& (Mod_KG_TrentLicht == FALSE)
		{
			AI_StandUP	(hero);

			if (Mod_KG_RightTunnel == 0)
			{
				Mod_KG_RightTunnel = 1;

				AI_Output(hero, NULL, "Info_Mod_Hero_VM_RightTunnel_15_00"); //Nie widac nawet reki przed oczami. I tu nie moge siegnac po latarke. Wyglada jak podmuch wiatru. Powinienem raczej zawrócic z powrotem, zanim tu natrafie na jakies potwory, jesli maja cos takiego......

				B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Wlasciwy tunel jest zbyt ciemny, aby wejsc. Powinienem spróbowac ponownie pózniej.....");
			};

			AI_GotoWP	(hero, "MINE_GO_36");
		};

		if (Mod_KG_SpecialErzguardian == 0)
		&& (Npc_IsDead(Erzguardian_Special_01))
		{
			Mod_KG_SpecialErzguardian = 1;

			AI_StandUP	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_VM_SpecialErzguardian_15_00"); //Powinienem zatrzymac sie przy domu Granmara....

			B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Powinienem zatrzymac sie przy domu Granmara....");
		};

		if (Mod_KG_SchwarzesErz == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_AfterQueenAttack))
		&& (!Npc_IsInState(Mod_7630_RIT_Trent_VM, ZS_Talk))
		{
			Mod_KG_SchwarzesErz = 1;

			AI_StandUP	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_VM_AfterQueenAttack_15_00"); //Nigdy nie przekazuje paladynom czarnego rudy. Xarda z pewnoscia moze mi w tym pomóc.....

			Log_CreateTopic	(TOPIC_MOD_KG_RITUAL, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_KG_RITUAL, LOG_RUNNING);
			B_LogEntry	(TOPIC_MOD_KG_RITUAL, "Nigdy nie przekazuje paladynom czarnego rudy. Xarda z pewnoscia moze mi w tym pomóc.....");
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

			AI_Output(hero, NULL, "Info_Mod_Hero_KG_OrkNichtTot_15_00"); //Damn, to chyba dla Trent. Powinienem odwiedzic Xardas, moze pomoze mi tu czarna ruda. Hm.... czy szaman nie wspomnial o czyms czarnym?

			B_LogEntry	(TOPIC_MOD_KG_RITUAL, "Damn, to chyba dla Trent. Powinienem odwiedzic Xardas, moze pomoze mi tu czarna ruda. Hm.... czy szaman nie wspomnial o czyms czarnym?");
		};

		if (Mod_KG_OrkTot == 0)
		&& (Npc_IsDead(Mod_10041_Orc_Schamane_MT))
		&& (Npc_KnowsInfo(hero, Info_Mod_OrcSchamane_KG_KillYou))
		{
			Mod_KG_OrkTot = 1;

			AI_StandUP	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_KG_OrkTot_15_00"); //To ja reguluje. Zobacze teraz Hymira i Pana Andre' a.

			B_LogEntry	(TOPIC_MOD_KG_RITUAL, "To ja reguluje. Zobacze teraz Hymira i Pana Andre' a.");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_OrcSchamane_KG_NichtTot))
		&& (Mod_KG_SchwarzerRing == 0)
		&& (Npc_GetDistToWP(hero, "CASTLE_37") < 1000)
		{
			AI_StandUP	(hero);

			AI_GotoWP	(hero, "CASTLE_30");

			AI_Output(hero, NULL, "Info_Mod_Hero_KG_OrkNochNichtBereit_15_00"); //Lepiej bym nie wracal do srodka.
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
