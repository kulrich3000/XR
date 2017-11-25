FUNC VOID GILDENSTORY_VMG()
{
	// Verwandlungsstory

	if (CurrentLevel == EISGEBIET_ZEN)
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Thys_Fisch))
		&& (Npc_GetDistToWP(hero, "START_EISGEBIET") < 1000)
		&& (Mod_AusEisgebietRaus == 0)
		{
			AI_StandUp	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_Eisgebiet_Weg_15_00"); //Aman rabbah kolir!

			AI_Teleport	(hero, "EIS_TO_MT");

			Mod_AusEisgebietRaus = 1;
		};
	};

	if (CurrentLevel == MINENTAL_ZEN)
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Emerin_HabZutaten))
		&& (Mod_Hermy_KnowsQuest == 5)
		&& (Mod_EmerinWillDie < Wld_GetDay())
		&& (Npc_GetDistToNpc(hero, Mod_4025_NONE_Emerin_MT) > 1000)
		{
			Mod_Hermy_KnowsQuest = 6;

			B_KillNpc	(Mod_4025_NONE_Emerin_MT);

			CreateInvItems	(Mod_4025_NONE_Emerin_MT, ItWr_EmerinsTagebuch, 1);

			B_StartOtherRoutine	(Mod_4022_Orc_Grubuz_MT, "FLUCHT");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Grubuz_Emerin))
		&& (Mod_Hermy_KnowsQuest == 8)
		&& (Npc_HasItems(hero, ItSc_TrfHarpie) > 0)
		{
			if (Npc_IsDead(Mod_4022_Orc_Grubuz_MT)) {
				B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "I've got the spell of 'Transforming Harpie.' Now I should go with it to Hermy.");

				Mod_Hermy_KnowsQuest = 9;
			};
		};

		if (Mod_Brad_Quest < 2)
		&& (Npc_KnowsInfo(hero, Info_Mod_Brad_Hi))
		&& (Npc_HasItems(hero, ItMi_NicksKopf) == 1)
		{
			if (Hlp_IsValidNpc(Mod_10016_MIN_Brad_MT)) {
				if (Npc_IsDead(Mod_10016_MIN_Brad_MT)) {
					Mod_Brad_Quest = 2;

					B_LogEntry	(TOPIC_MOD_ANOR_NICK, "I killed Minotaur Brad and took his head off. I should get back to Nick now.");
				};
			} else {
				Mod_Brad_Quest = 2;

				B_LogEntry	(TOPIC_MOD_ANOR_NICK, "I killed Minotaur Brad and took his head off. I should get back to Nick now.");
			};
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Nick_Kopf))
		&& (Mod_Brad_Quest == 2) {
			if (!Npc_IsInState(Mod_7050_ZOM_Nick_MT, ZS_Talk))
			{
				Mod_7050_ZOM_Nick_MT.attribute[ATR_HITPOINTS] = 0;

				Mod_Brad_Quest = 3;
			};
		};

		// Quest: Teleport

		if (Mod_VMG_FurtTot == 0)
		&& (Npc_HasItems(hero, ItMw_FurtsSchwert) == 1)
		{
			Mod_VMG_FurtTot = 1;

			B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Furt's dead. I should let Albert know.");
		};

		// Faice ins Bett verfrachten

		if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Faice))
		&& (Mod_VMG_Faice_Gift > 0)
		&& (Mod_VMG_Faice_Gift < Wld_GetDay())
		&& (Mod_VMG_FaiceImBett == 0)
		{
			Mod_VMG_FaiceImBett = 1;

			AI_Teleport	(Mod_4019_VMG_Faice_MT, "VMG_05");
			B_StartOtherRoutine	(Mod_4019_VMG_Faice_MT, "GIFT");

			AI_Teleport	(Mod_1955_VMG_Turendil_MT, "VMG_05");
			B_StartOtherRoutine	(Mod_1955_VMG_Turendil_MT, "FAICE");
		};
	};

	if (CurrentLevel == TUGETTSO_ZEN)
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Genn_Mendulus))
		&& (Mod_VMG_FaiceGifty_Gift == 6)
		&& (Npc_HasItems(hero, ItPl_Mendulus) > 0)
		{
			Mod_VMG_FaiceGifty_Gift = 7;

			B_StartOtherRoutine	(Mod_7038_VMK_Soeren_TUG, "START");
			//B_StartOtherRoutine	(Mod_1959_VMG_Genn_TUG, "START");
		};

		if (Mod_VMG_Giftpflanzen == 0)
		&& (Npc_HasItems(hero, ItPl_Mushroom_04) >= 1)
		&& (Npc_HasItems(hero, ItPl_Venena) >= 1)
		&& (Npc_HasItems(hero, ItPl_Mithrida) >= 1)
		&& (Npc_HasItems(hero, ItPl_Piante) >= 1)
		&& (Npc_HasItems(hero, ItPl_Ponzola) >= 1)
		{
			Mod_VMG_Giftpflanzen = 1;

			Wld_SpawnNpcRange (hero, Golem_Trador_01, 1, 1000);

			B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "I have a copy of each of the plants. I should see Genn now. But where does this golem come from?");
		};

		if (Mod_VMG_Giftpflanzen == 1)
		&& (Npc_IsDead(Golem_Trador_01))
		{
			Mod_VMG_Giftpflanzen = 2;

			Wld_SpawnNpcRange (hero, Golem_Trador_02, 1, 1000);

			B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Right after I killed the Golem, a second one appeared...");
		};

		if (Mod_VMG_Giftpflanzen == 2)
		&& (Npc_IsDead(Golem_Trador_02))
		{
			Mod_VMG_Giftpflanzen = 3;

			Wld_SpawnNpcRange (hero, Golem_Trador_03, 1, 1000);

			B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Another golem... I hope this stops soon.");
		};

		if (Mod_VMG_Giftpflanzen == 3)
		&& (Npc_IsDead(Golem_Trador_03))
		{
			Mod_VMG_Giftpflanzen = 4;

			Wld_InsertNpc	(Mod_7352_OUT_Trador_TUG, "TUG_09");

			B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "It seems to have stopped. Now I should get to Genn's in a hurry.");
		};

		// Bugfix: Thorge's Skelette alles tot => Counter auf 0 setzen

		if (Npc_IsDead(Skeleton_Thorge_TUG))
		{
			Mod_Thorge_Skelette = 0;
		};

		if (Mod_VMG_WSTrador == 2)
		&& (Npc_KnowsInfo(hero, Info_Mod_Trador_Teleport))
		&& (!Npc_IsInState(Mod_7352_OUT_Trador_TUG, ZS_Talk))
		{
			Mod_VMG_WSTrador = 3;

			Wld_InsertNpc	(Mod_7361_OUT_Setta_TUG, "TUG_83");
			Wld_InsertNpc	(Mod_7362_OUT_Buff_TUG, "TUG_83");

			B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "After I went to the teleporter, I was teleported to the strange stone circle in Tugettso. There Trador was already waiting for me, ready to send his golems after me. To my surprise Setta and Buff came out of the portal to support me.");
		};

		if (Npc_HasItems(hero, ItSc_SumGol_Fake) > 0)
		{
			CreateInvItems	(hero, ItSc_SumGol, Npc_HasItems(hero, ItSc_SumGol_Fake));
			Npc_RemoveInvItems	(hero, ItSc_SumGol_Fake, Npc_HasItems(hero, ItSc_SumGol_Fake));
		};

		if (Npc_HasItems(hero, ItRu_SumGol_Fake) > 0)
		{
			CreateInvItems	(hero, ItRu_SumGol, Npc_HasItems(hero, ItRu_SumGol_Fake));
			Npc_RemoveInvItems	(hero, ItRu_SumGol_Fake, Npc_HasItems(hero, ItRu_SumGol_Fake));
		};

		if (Mod_VMG_WSTrador == 3)
		&& (Npc_HasItems(hero, ItRu_SumGol) >= 2)
		&& (Npc_IsDead(Mod_7352_OUT_Trador_TUG))
		{
			Mod_VMG_WSTrador = 4;

			B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "After defeating Trador, I found the Summon Golem spells. I should talk to them, maybe I'll find out more about the club that Trador belongs to.");
		};

		// Hinweise in Tugettso bei der Matronenjagd

		if (TUG_Matronen == 4)
		{
			B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "That should be all matrons.");

			TUG_Matronen = 5;
		};

		if (TUG_Lorforn == 0)
		&& (TUG_Matronen == 5)
		{
			B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "I should look around a little more. Maybe I'll find the man in charge of the plague.");

			TUG_Matronen = 6;
		};

		if (TUG_Lorforn == 1)
		&& (TUG_Matronen == 6)
		{
			B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "I did everything here for now and should return to Genn to report back to him.");

			TUG_Matronen = 7;
		};

		// Hero sagt was, wenn man die Notizen von Lorforn und Sören mitnimmt

		if (Npc_HasItems(hero, ItWr_LorfornsBrief) == 1)
		&& (Mod_LorfornZettel == 0)
		{
			Mod_LorfornZettel = 1;

			B_Say_Overlay	(hero, NULL, "$READZETTEL");
		};

		if (Npc_HasItems(hero, ItWr_SoerensPBrief) == 1)
		&& (Mod_SoerenZettel == 0)
		{
			Mod_SoerenZettel = 1;

			B_Say_Overlay	(hero, NULL, "$READZETTEL");
		};

		// Die Prüfung

		if (Npc_KnowsInfo(hero, Info_Mod_Leitwolf_Hi))
		&& (!Npc_IsInState(Monster_11060_Leitwolf_TUG, ZS_Talk))
		&& (Mod_VMG_Pruefung_Leitwolf == 1)
		{
			B_Attack	(Monster_11060_Leitwolf_TUG, hero, AR_GuildEnemy, 0);
			B_Attack	(Monster_11061_Wolf_TUG, hero, AR_GuildEnemy, 0);
			B_Attack	(Monster_11062_Wolf_TUG, hero, AR_GuildEnemy, 0);
			B_Attack	(Monster_11063_Wolf_TUG, hero, AR_GuildEnemy, 0);
			B_Attack	(Monster_11064_Wolf_TUG, hero, AR_GuildEnemy, 0);
			B_Attack	(Monster_11065_Wolf_TUG, hero, AR_GuildEnemy, 0);
		};

		if (Mod_VMG_Pruefung == 3)
		&& (Npc_GetDistToWP(hero, "TUG_87") < 1000)
		&& (Npc_GetDistToWP(hero, "TUG_87") > 800)
		&& (Mod_IsFleischwanze == 0)
		&& (Mod_VMG_Pruefung_Petunia < 6)
		{
			AI_Dodge	(hero);

			Wld_PlayEffect("spellFX_BELIARSRAGE", hero, hero, 0, 0, 0, FALSE );
		};

		if (Mod_VMG_Pruefung == 3)
		&& (Npc_GetDistToWP(hero, "TUG_87") < 2000)
		&& (Mod_VMG_Pruefung_Barriere == 0)
		{
			Mod_VMG_Pruefung_Barriere = 1;
		};

		if (Mod_VMG_Pruefung_Barriere == 1)
		{
			if (Mod_VMG_Pruefung_Barriere_Counter == 0)
			{
				Wld_SendTrigger	("EVT_CAMBARRIERE");

				CutsceneAn = TRUE;
			};

			if (Mod_VMG_Pruefung_Barriere_Counter == 1)
			{
				AI_GotoWP	(Mod_7595_OUT_Verwandlungskrieger_TUG, "TUG_88");
			};

			if (Mod_VMG_Pruefung_Barriere_Counter == 3)
			{
				AI_Dodge	(Mod_7595_OUT_Verwandlungskrieger_TUG);

				Wld_PlayEffect("spellFX_BELIARSRAGE", Mod_7595_OUT_Verwandlungskrieger_TUG, Mod_7595_OUT_Verwandlungskrieger_TUG, 0, 0, 0, FALSE );
			};

			if (Mod_VMG_Pruefung_Barriere_Counter == 4)
			{
				AI_GotoWP	(Mod_7595_OUT_Verwandlungskrieger_TUG, "TUG_89");
			};

			if (Mod_VMG_Pruefung_Barriere_Counter == 6)
			{
				AI_GotoWP	(Monster_11066_Hase_TUG, "TUG_87");
			};

			if (Mod_VMG_Pruefung_Barriere_Counter == 9)
			{
				AI_Output(hero, NULL, "Info_Mod_Hero_TugettsoRabbit_15_00"); //What the hell was that?

				B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "In the valley there is a woman surrounded by a magical barrier. This seems to be impenetrable to humans, but animals can pass through safely. I should tell Per about it.");

				Mod_VMG_Pruefung_Barriere = 2;

				CutsceneAn = FALSE;
			};

			Mod_VMG_Pruefung_Barriere_Counter += 1;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Petunia_Hi))
		&& (!Npc_IsInState(Mod_7594_OUT_Petunia_TUG, ZS_Talk))
		&& (Mod_VMG_Pruefung_Petunia == 2)
		{
			Mod_VMG_Pruefung_Petunia = 3;

			B_Attack	(Mod_7592_OUT_Handlanger_TUG, hero, AR_GuildEnemy, 0);
			B_Attack	(Mod_7593_OUT_Handlanger_TUG, hero, AR_GuildEnemy, 0);

			Mod_7592_OUT_Handlanger_TUG.guild = GIL_STRF;
			Npc_SetTrueGuild	(Mod_7592_OUT_Handlanger_TUG, GIL_STRF);

			Mod_7593_OUT_Handlanger_TUG.guild = GIL_STRF;
			Npc_SetTrueGuild	(Mod_7593_OUT_Handlanger_TUG, GIL_STRF);
		};

		if (Npc_HasItems(hero, ItWr_PetuniaZettel) == 1)
		&& (Mod_VMG_Pruefung_Petunia == 3)
		{
			Mod_VMG_Pruefung_Petunia = 4;

			B_Say_Overlay	(hero, NULL, "$READZETTEL");
		};

		if (!Npc_KnowsInfo(hero, Info_Mod_Per_Pruefung3))
		&& (Npc_KnowsInfo(hero, Info_Mod_Petunia_Pruefung))
		{
			if (Mod_VMG_Pruefung_Petunia == 6)
			{
				Info_Mod_Per_Pruefung3.description = "I think we can solve this problem together right now.";
			}
			else
			{
				Info_Mod_Per_Pruefung3.description = "I think I've solved the problem.";
			};
		};

		if (Mod_VMG_Pruefung == 4)
		{
			if (Mod_VMG_Pruefung_Vision == 0)
			{
				Wld_SendTrigger	("EVT_CAMERA_VISION");

				CutsceneAn = TRUE;

				Wld_InsertItem	(ItMi_Bluetenblatt,	"FP_ITEM_BLUETENBLATT");

				Wld_InsertNpc	(Rabbit,	"FP_ROAM_RABBIT_03");
				Wld_InsertNpc	(Rabbit,	"FP_ROAM_RABBIT_03");
			};

			if (Mod_VMG_Pruefung_Vision == 50)
			{
				Mod_VMG_Pruefung = 5;

				CutsceneAn = FALSE;

				B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had a vision. The petal I'm looking for must be by the pond.");
			};

			Mod_VMG_Pruefung_Vision += 1;
		};

		// Rückverwandlung nachdem man das Fleisch zum Leitwolf gebracht hat

		if (Mod_VMG_Pruefung_Leitwolf == 3)
		&& (!playerIsTransformed)
		&& (Mod_Leitwolf_Fleisch == FALSE)
		{
			Npc_RemoveInvItems	(hero, ItFo_MuttonRaw, 20);

			Mod_Leitwolf_Fleisch = TRUE;
		};
	};

	if (CurrentLevel == WALDSCHLUCHT_ZEN)
	{
		if (Mod_VMG_TeleporterEntdeckt == 0)
		&& (Npc_GetDistToWP(hero, "WS_30") < 500)
		{
			Mod_VMG_TeleporterEntdeckt = 1;

			B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Here's the teleporter Buff was talking about and next to it is a pedestal. I should talk to Buff about that again....");
		};
	};
};
