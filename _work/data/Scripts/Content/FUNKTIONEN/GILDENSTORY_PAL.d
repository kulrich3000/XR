FUNC VOID GILDENSTORY_PAL()
{
	// Pala-Story

	if (CurrentLevel == NEWWORLD_ZEN)
	{
		if (Npc_GetDistToWP(PC_Hero, "NW_CITY_UPTOWN_HUT_04_01") < 200)
		&& (Mod_InErfinderhaus == FALSE)
		&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Auftrag))
		{
			Mod_InErfinderhaus = TRUE;
		};
	
		if (Mod_MitLawrenceGesprochen == 1)
		&& (Npc_GetDistToWP(Mod_1730_MIL_Lawrence_NW, "NW_CITY_UPTOWN_PATH_12") < 1000)
		{
			AI_StandUp	(hero);

			AI_Output(PC_Hero, NULL, "Info_Mod_Hero_ErfinderLawrenceFollow_15_00"); //I should follow him!

			Mod_MitLawrenceGesprochen = 2;
		};

		if (Mod_MitLawrenceGesprochen == 3)
		{
			if (Mod_MitLawrence_Counter == 0)
			{
				B_StartOtherRoutine	(Mod_1730_MIL_Lawrence_NW, "PLAUDERN");
				B_StartOtherRoutine	(Mod_591_NONE_Larius_NW, "PLAUDERN");

				CutsceneAn = TRUE;
			};
			if (Mod_MitLawrence_Counter == 5)
			{
				AI_Output(Mod_1730_MIL_Lawrence_NW, NULL, "Info_Mod_Lawrence_Larius_06_00"); //The lack of the inventor has been noticed! The militia's looking for him.
			};
			if (Mod_MitLawrence_Counter == 8)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_01"); //Damn it. How do you know that?
			};
			if (Mod_MitLawrence_Counter == 13)
			{
				AI_Output(Mod_1730_MIL_Lawrence_NW, NULL, "Info_Mod_Lawrence_Larius_06_02"); //There was a guy in his house looking for someone whose name starts with L. Maybe he found the letter?
			};
			if (Mod_MitLawrence_Counter == 19)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_03"); //Hmm... then we'll probably have to change our names slightly.
			};
			if (Mod_MitLawrence_Counter == 24)
			{
				AI_Output(Mod_1730_MIL_Lawrence_NW, NULL, "Info_Mod_Lawrence_Larius_06_04"); //Um... unfortunately, that won't work anymore...
			};
			if (Mod_MitLawrence_Counter == 26)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_05"); //Why not?
			};
			if (Mod_MitLawrence_Counter == 31)
			{
				AI_Output(Mod_1730_MIL_Lawrence_NW, NULL, "Info_Mod_Lawrence_Larius_06_06"); //Well, I gave him yours, mine and Luteros name...
			};
			if (Mod_MitLawrence_Counter == 36)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_07"); //You idiot! Do you think he's been to Lutero?
			};
			if (Mod_MitLawrence_Counter == 41)
			{
				AI_Output(Mod_1730_MIL_Lawrence_NW, NULL, "Info_Mod_Lawrence_Larius_06_08"); //I don't know! I'm going to go right now and warn him.
			};
			if (Mod_MitLawrence_Counter == 44)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_09"); //You only have one head so it won't rain down your throat.
			};
			if (Mod_MitLawrence_Counter == 49)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_10"); //If this guy sees you going to Lutero now, he's bound to be skeptical! Put this letter at the exchange point.
			};
			if (Mod_MitLawrence_Counter == 54)
			{
				AI_Output(Mod_1730_MIL_Lawrence_NW, NULL, "Info_Mod_Lawrence_Larius_06_11"); //Okay. The sleeper awakens!
			};
			if (Mod_MitLawrence_Counter == 56)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_12"); //Shush! The sleeper awakens!
			};
			if (Mod_MitLawrence_Counter == 61)
			{
				AI_Output(PC_Hero, NULL, "Info_Mod_Hero_ErfinderLawrence_15_00"); //I should get out of here! But I should keep an eye on Lawrence.
			};
			if (Mod_MitLawrence_Counter == 66)
			{
				AI_GotoWP	(PC_Hero, "NW_CITY_CITYHALL_01");

				B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "It seems that the three people belong together. Surely they have something to do with the disappearance of the inventor. I should stick with Lawrence.");

				B_StartOtherRoutine (Mod_591_NONE_Larius_NW, "START");
				B_StartOtherRoutine (Mod_1730_MIL_Lawrence_NW, "AFTER");

				Mod_MitLawrenceGesprochen = 4;

				B_GivePlayerXP	(500);

				CutsceneAn = FALSE;
			};
			

			Mod_MitLawrence_Counter += 1;
		};

		if (Mod_MitLawrenceGesprochen == 4)
		&& (Npc_GetDistToWP(Mod_1730_MIL_Lawrence_NW, "NW_CITY_CITYHALL_08") < 500)
		&& (Npc_GetDistToWP(hero, "NW_CITY_CITYHALL_08") < 1000)
		{
			//AI_Wait (PC_Hero, 3);

			if (Mod_LawrenceLegtBrief == 0)
			{
				AI_PlayAni		(Mod_1730_MIL_Lawrence_NW, "T_SEARCH");
			};

			if (Mod_LawrenceLegtBrief == 5)
			{
				AI_PlayAni		(Mod_1730_MIL_Lawrence_NW, "T_PLUNDER");
			};

			if (Mod_LawrenceLegtBrief == 8)
			{
				Wld_InsertItem	(ItWr_ErfinderLawrenceFuerLutero, "FP_ERFINDER_BRIEFFUERLUTERO");

				Mod_MitLawrenceGesprochen = 5;

				B_StartOtherRoutine	(Mod_1730_MIL_Lawrence_NW, "NORMAL");
				//B_StartOtherRoutine	(Mod_594_NONE_Lutero_NW, "BRIEF");
			};
		
			Mod_LawrenceLegtBrief += 1;
		};

		if (Mod_MitLawrenceGesprochen == 6)
		&& (Npc_HasItems(hero, ItWr_ErfinderLawrenceFuerLutero) == 1)
		{
			Npc_RemoveInvItems	(hero, ItWr_ErfinderLawrenceFuerLutero, 1);

			Wld_InsertItem	(ItWr_ErfinderLawrenceFuerLutero, "FP_ERFINDER_BRIEFFUERLUTERO");
		};

		if (Mod_MitLawrenceGesprochen == 6)
		&& (Npc_GetDistToWP(Mod_594_NONE_Lutero_NW, "NW_CITY_CITYHALL_08") < 500)
		&& (Npc_GetDistToWP(hero, "NW_CITY_CITYHALL_08") < 1000)
		{
			//AI_Wait (PC_Hero, 3);

			if (Mod_LuteroLiestBrief == 0)
			{
				AI_PlayAni		(Mod_594_NONE_Lutero_NW, "T_PLUNDER");
			};

			if (Mod_LuteroLiestBrief == 2)
			{
				Wld_RemoveItem	(ItWr_ErfinderLawrenceFuerLutero);
			};

			if (Mod_LuteroLiestBrief == 3)
			{
				B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "I should talk to Lutero before I go to that meeting.");

				Mod_MitLawrenceGesprochen = 7;

				B_StartOtherRoutine	(Mod_591_NONE_Larius_NW, "TREFFEN");
				B_StartOtherRoutine	(Mod_594_NONE_Lutero_NW, "TRADING");
			};
		
			Mod_LuteroLiestBrief += 1;
		};

		if (Mod_MitLawrenceGesprochen == 8)
		&& (Npc_IsInState(Mod_594_NONE_Lutero_NW, ZS_FleeToWP))
		{
			AI_StandUp	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_ErfinderLutero_15_00"); //I should look around near his trading post, maybe he left a note there.

			Wld_InsertItem	(ItWr_ErfinderLuteroNotiz, "FP_LUTEROSNOTIZ");

			B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "Hm, Lutero disappeared pretty quickly. I should take a look around his trading post, maybe I'll find something suspicious there....");

			Mod_MitLawrenceGesprochen = 9;
		};

		if (Mod_MitLawrenceGesprochen == 9)
		&& (Npc_GetDistToWP(PC_Hero, "NW_CITY_UPTOWN_PATH_10") < 300)
		{
			AI_GotoWP	(hero, "NW_CITY_UPTOWN_PATH_12");

			AI_StandUp	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_ErfinderNotiz_15_00"); //Not yet!
		};

		if (Npc_IsDead(Mod_591_NONE_Larius_NW))
		&& (Npc_IsDead(Mod_594_NONE_Lutero_NW))
		&& (Npc_IsDead(Mod_1730_MIL_Lawrence_NW))
		&& (Mod_MitLawrenceGesprochen == 11)
		{
			Mod_MitLawrenceGesprochen = 12;

			B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "I killed Larius, Lawrence and Lutero. I should search her, maybe one of them has some more clues about the man behind her.");
		};

		if (Mod_PalaKapitel3 == 3)
		&& (Npc_GetDistToWP(hero, "NW_LIGHTHOUSE_OUT_01") < 2000)
		{
			if (Gidan_Counter == 0)
			{
				Wld_SendTrigger	("EVT_GURUGIDANWEG");

				B_StartOtherRoutine	(Mod_1723_MIL_Gidan_NW, "GURU");
				B_StartOtherRoutine	(Mod_1745_PSIGUR_Guru_NW, "GURU");

				CutsceneAn = TRUE;
			};

			if (Gidan_Counter == 5)
			{
				AI_Output(Mod_1745_PSIGUR_Guru_NW, NULL, "Info_Mod_PSIGUR_12_00"); //You are back, master?
			};

			if (Gidan_Counter == 10)
			{
				AI_Output(Mod_1723_MIL_Gidan_NW, NULL, "Info_Mod_PSIGUR_13_01"); //Yes! It's no longer necessary to impersonate me as a militia now. I lured the enemy here.
			};

			if (Gidan_Counter == 15)
			{
				AI_Output(Mod_1723_MIL_Gidan_NW, NULL, "Info_Mod_PSIGUR_13_02"); //He'll be here sooner or later. You can break up the camps here.
			};

			if (Gidan_Counter == 20)
			{
				AI_Output(Mod_1723_MIL_Gidan_NW, NULL, "Info_Mod_PSIGUR_13_03"); //We'll wait for him in the fortress! His blood will resurrect the sleeper.
			};

			if (Gidan_Counter == 25)
			{
				AI_Output(Mod_1723_MIL_Gidan_NW, NULL, "Info_Mod_PSIGUR_13_04"); //The sleeper awakens!
			};

			if (Gidan_Counter == 28)
			{
				AI_Output(Mod_1745_PSIGUR_Guru_NW, NULL, "Info_Mod_PSIGUR_12_05"); //The sleeper awakens!
			};

			if (Gidan_Counter == 31)
			{
				B_StartOtherRoutine	(Mod_1723_MIL_Gidan_NW, "TELEPORT");
				B_StartOtherRoutine	(Mod_1745_PSIGUR_Guru_NW, "TELEPORT");
				B_StartOtherRoutine	(Mod_7392_PSITPL_Templer_NW, "TELEPORT");
				B_StartOtherRoutine	(Mod_7393_PSITPL_Templer_NW, "TELEPORT");
				B_StartOtherRoutine	(Mod_7392_PSITPL_Templer_NW, "TELEPORT");
				B_StartOtherRoutine	(Mod_7392_PSITPL_Templer_NW, "TELEPORT");
				B_StartOtherRoutine	(Mod_7392_PSITPL_Templer_NW, "TELEPORT");
			};

			if (Gidan_Counter == 36)
			{
				AI_Teleport	(Mod_1723_MIL_Gidan_NW, "TOT");
				AI_Teleport	(Mod_1745_PSIGUR_Guru_NW, "TOT");
				AI_Teleport	(Mod_7392_PSITPL_Templer_NW, "TOT");
				AI_Teleport	(Mod_7393_PSITPL_Templer_NW, "TOT");
				AI_Teleport	(Mod_7394_PSINOV_Novize_NW, "TOT");
				AI_Teleport	(Mod_7395_PSINOV_Novize_NW, "TOT");
				AI_Teleport	(Mod_7396_PSINOV_Novize_NW, "TOT");

				B_StartOtherRoutine	(Mod_1723_MIL_Gidan_NW, "TOT");
				B_StartOtherRoutine	(Mod_1745_PSIGUR_Guru_NW, "TOT");
				B_StartOtherRoutine	(Mod_7392_PSITPL_Templer_NW, "TOT");
				B_StartOtherRoutine	(Mod_7393_PSITPL_Templer_NW, "TOT");
				B_StartOtherRoutine	(Mod_7394_PSINOV_Novize_NW, "TOT");
				B_StartOtherRoutine	(Mod_7395_PSINOV_Novize_NW, "TOT");
				B_StartOtherRoutine	(Mod_7396_PSINOV_Novize_NW, "TOT");

				AI_Teleport	(Mod_1723_MIL_Gidan_NW, "TOT");
				AI_Teleport	(Mod_1745_PSIGUR_Guru_NW, "TOT");
				AI_Teleport	(Mod_7392_PSITPL_Templer_NW, "TOT");
				AI_Teleport	(Mod_7393_PSITPL_Templer_NW, "TOT");
				AI_Teleport	(Mod_7394_PSINOV_Novize_NW, "TOT");
				AI_Teleport	(Mod_7395_PSINOV_Novize_NW, "TOT");
				AI_Teleport	(Mod_7396_PSINOV_Novize_NW, "TOT");
		
				Mod_PalaKapitel3 = 4;

				CutsceneAn = FALSE;

				B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "Gidan is one of the fanatics? I have to follow him, but I don't know where her teleport went.");

				if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Gidan1))
				{
					B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "Xardas is probably done with the two halves of parchment. Maybe this will help me.");
				}
				else
				{
					B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "Maybe the two halves of parchment I found take me further. I should see if someone can put them together. I'm sure a magician is capable of it.");
				};
			};

			Gidan_Counter += 1;
		};

		if (FI_Story == 10)
		{
			FI_Story = 11;

			B_StartOtherRoutine	(Mod_540_PAL_Andre_NW, "KODEX");
		};

		if (FI_Story == 11)
		&& (Kapitel >= 5)
		&& (Npc_KnowsInfo(hero, Info_Mod_Andre_FIFinished))
		&& (Mod_REL_Stadthalter > 0)
		{
			FI_Story = 12;

			B_StartOtherRoutine	(Mod_1260_RIT_Neron_NW, "LATERNE");
			B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "LATERNE");
			B_StartOtherRoutine	(Mod_1178_MIL_Jason_NW, "LATERNE");
			B_StartOtherRoutine	(Mod_7234_OUT_Giselle_NW, "LATERNE");

			B_KillNpc	(Mod_1178_MIL_Jason_NW);
		};

		if (FI_Story == 12)
		&& (Npc_KnowsInfo(hero, Info_Mod_Neron_Hi))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_RLMord))
		{
			Info_Mod_Andre_RLMord.description = "Neron sent me.";
		};

		if (Mod_PAL_Galf == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Galf_Hi))
		&& (!Npc_IsInState(Mod_7235_NONE_Galf_NW, ZS_Talk))
		{
			Mod_PAL_Galf = 1;

			PrintScreen ("Galf storms out of the room", -1, YPOS_LevelUp, FONT_Screen, 2);

			Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);
		
			AI_Teleport	(Mod_7235_NONE_Galf_NW, "NW_CITY_HABOUR_PUFF_IN_07");

			B_StartOtherRoutine	(Mod_7235_NONE_Galf_NW, "KO");
		
			AI_Teleport	(Mod_7235_NONE_Galf_NW, "NW_CITY_HABOUR_PUFF_IN_07");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Guru_Gelaber))
		&& (!Npc_IsInState(Mod_7236_GUR_Guru_NW, ZS_Talk))
		&& (Mod_PAL_HeroBot == 0)
		{
			Mod_PAL_HeroBot = 1;

			Npc_SetTarget	(HeroBot_NW, Mod_7236_GUR_Guru_NW);
			Npc_GetTarget	(HeroBot_NW);

			AI_StartState	(HeroBot_NW, ZS_Attack, 0, "");
		};

		if (Mod_PAL_GiselleKerze == 1)
		&& (!Npc_IsInState(Mod_7234_OUT_Giselle_NW, ZS_Talk))
		{
			Mod_PAL_GiselleKerze = 2;

			Wld_SendTrigger	("EVT_KERZE_GISELLE");
		};

		// Die Falle

		if (Mod_PAL_GangsterArmor == 1)
		&& (Npc_GetDistToWP(hero, "MARKT") < 500)
		&& (Mod_PAL_HeroBotFollow == 0)
		{
			B_StartOtherRoutine	(HeroBot_NW, "FOLLOW");

			AI_Teleport	(HeroBot_NW, "MARKT");

			Mod_PAL_HeroBotFollow = 1;
		};

		if (Mod_PAL_HeroBotFollow == 1)
		&& (Npc_GetDistToNpc(hero, HeroBot_NW) > 4000)
		{
			Mod_PAL_HeroBotFollow = 0;

			B_StartOtherRoutine	(HeroBot_NW, "TOT");

			PrintScreen ("The robot lost you!", -1, YPOS_LevelUp, FONT_Screen, 2);
		};

		if (Mod_PAL_HeroBot == 17)
		&& ((Npc_KnowsInfo(hero, Info_Mod_Lukas_Andre))
		|| (Npc_KnowsInfo(hero, Info_Mod_Wendel_Andre))
		|| (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Andre)))
		{
			Mod_PAL_HeroBot = 18;

			Mob_CreateItems	("ANDRETRUHE", ItPo_Health_03, 5);
			Mob_CreateItems	("ANDRETRUHE", ItPo_Mana_03, 3);
			Mob_CreateItems	("ANDRETRUHE", ItWr_Milizregeln, 1);

			B_RemoveNpc	(Mod_540_PAL_Andre_NW);
			B_RemoveNpc	(HeroBot_NW);
		};

		if (Mod_PAL_MikaHehler == 0)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Mika_AndreVermaechtnis))
			&& (!Npc_IsInState(Mod_598_MIL_Mika_NW, ZS_Talk))
			{
				Mod_PAL_MikaHehler = 1;

				B_StartOtherRoutine	(Mod_598_MIL_Mika_NW, "FLUCHT");
				B_StartOtherRoutine	(Mod_587_NONE_Jesper_NW, "FLUCHT");
			};
		};

		if (Mod_PAL_MikaHehler == 1)
		{
			if (Npc_GetDistToNpc(hero, Mod_598_MIL_Mika_NW) >= 4000)
			|| (Npc_GetDistToNpc(hero, Mod_587_NONE_Jesper_NW) >= 4000)
			{
				Mod_PAL_MikaHehler = 2;

				B_RemoveNpc	(Mod_598_MIL_Mika_NW);
				B_RemoveNpc	(Mod_587_NONE_Jesper_NW);
			};
		};

		if (Mod_PAL_Diebesgilde_Aktion == 0)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Cassia_AndreVermaechtnis))
			&& (!Npc_IsInState(Mod_568_NONE_Cassia_NW, ZS_Talk))
			{
				Mod_PAL_Diebesgilde_Aktion = 1;

				B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "DIEB2");
				B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "DIEB2");
				B_StartOtherRoutine	(Mod_564_MIL_Boltan_NW, "DIEB2");
				B_StartOtherRoutine	(Mod_596_MIL_Martin_NW, "DIEB2");

				Mod_746_NONE_Ramirez_NW.guild = GIL_STRF;
				Npc_SetTrueGuild (Mod_746_NONE_Ramirez_NW, GIL_STRF);

				Mod_748_NONE_Rengaru_NW.guild = GIL_STRF;
				Npc_SetTrueGuild (Mod_748_NONE_Rengaru_NW, GIL_STRF);

				Mod_568_NONE_Cassia_NW.guild = GIL_STRF;
				Npc_SetTrueGuild (Mod_568_NONE_Cassia_NW, GIL_STRF);
			};
		};

		if (Mod_PAL_Diebesgilde == 0)
		{
			if (Npc_IsDead(Mod_746_NONE_Ramirez_NW))
			&& (Npc_IsDead(Mod_748_NONE_Rengaru_NW))
			&& (Npc_IsDead(Mod_568_NONE_Cassia_NW))
			{
				Mod_PAL_Diebesgilde = 1;
			};
		};

		if (Mod_PAL_Grim == 0)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Grim_NW_Hi))
			{
				if (!Npc_IsInState(Mod_7686_BUD_Grim_NW, ZS_Talk))
				{
					CreateInvItems	(Mod_7686_BUD_Grim_NW, ItAr_Dementor, 1);

					AI_UnequipArmor (Mod_7686_BUD_Grim_NW);

					AI_EquipArmor	(Mod_7686_BUD_Grim_NW, ItAr_Dementor);

					CreateInvItems	(Mod_7687_GRD_Gardist_NW, ItAr_Dementor, 1);

					AI_UnequipArmor (Mod_7687_GRD_Gardist_NW);

					AI_EquipArmor	(Mod_7687_GRD_Gardist_NW, ItAr_Dementor);

					CreateInvItems	(Mod_7688_STT_Schatten_NW, ItAr_Dementor, 1);

					AI_UnequipArmor (Mod_7688_STT_Schatten_NW);

					AI_EquipArmor	(Mod_7688_STT_Schatten_NW, ItAr_Dementor);

					CreateInvItems	(Mod_7689_BUD_Buddler_NW, ItAr_Dementor, 1);

					AI_UnequipArmor (Mod_7689_BUD_Buddler_NW);

					AI_EquipArmor	(Mod_7689_BUD_Buddler_NW, ItAr_Dementor);

					CreateInvItems	(Mod_7690_STT_Schatten_NW, ItAr_Dementor, 1);

					AI_UnequipArmor (Mod_7690_STT_Schatten_NW);

					AI_EquipArmor	(Mod_7690_STT_Schatten_NW, ItAr_Dementor);

					CreateInvItems	(Mod_7691_BUD_Buddler_NW, ItAr_Dementor, 1);

					AI_UnequipArmor (Mod_7691_BUD_Buddler_NW);

					AI_EquipArmor	(Mod_7691_BUD_Buddler_NW, ItAr_Dementor);

					Mod_PAL_Grim = 1;
				};
			};
		};
	};

	if (CurrentLevel == FLIEGENDEINSEL_ZEN)
	{
		if (Mod_FI_Quest == FALSE)
		&& (Npc_GetDistToWP(hero, "FI_03") < 1000)
		{
			Log_CreateTopic	(TOPIC_MOD_PAL_FI, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_PAL_FI, LOG_RUNNING);
			B_LogEntry	(TOPIC_MOD_PAL_FI, "I landed on a flying island. I should follow the path and see where it leads me.");

			Mod_FI_Quest = TRUE;
		};

		if (FI_Story == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Gidan_FI_Hi))
		&& (!Npc_IsInState(Mod_1974_MIL_Gidan_FI, ZS_Talk))
		{
			FI_Story = 1;

			Wld_InsertNpc	(Erzgolem_01, "FI_56");
			Wld_InsertNpc	(Erzgolem_02, "FI_55");
			Wld_InsertNpc	(Erzgolem_03, "FI_54");
			Wld_InsertNpc	(Erzgolem_04, "FI_52");
		};

		if (FI_Story == 1)
		&& (Npc_IsDead(Erzgolem_01))
		&& (Npc_IsDead(Erzgolem_02))
		&& (Npc_IsDead(Erzgolem_03))
		&& (Npc_IsDead(Erzgolem_04))
		{
			FI_Story = 2;

			B_StartOtherRoutine	(Mod_1974_MIL_Gidan_FI, "START");
		};

		if (FI_Story == 2)
		&& (Npc_KnowsInfo(hero, Info_Mod_Gidan_FI_FirstWaveDead))
		&& (!Npc_IsInState(Mod_1974_MIL_Gidan_FI, ZS_Talk))
		{
			FI_Story = 3;

			Wld_InsertNpc	(Erzgolem_05, "FI_56");
			Wld_InsertNpc	(Erzgolem_06, "FI_55");
			Wld_InsertNpc	(Erzgolem_07, "FI_54");
			Wld_InsertNpc	(Erzgolem_08, "FI_52");

			Wld_InsertNpc	(Mod_1975_PSITPL_Templer_FI, "FI_57");
			Wld_InsertNpc	(Mod_1976_PSITPL_Templer_FI, "FI_57");
			Wld_InsertNpc	(Mod_1977_PSITPL_Templer_FI, "FI_57");
			Wld_InsertNpc	(Mod_1978_PSITPL_Templer_FI, "FI_57");
			Wld_InsertNpc	(Mod_1979_PSIGUR_Guru_FI, "FI_57");
			Wld_InsertNpc	(Mod_1980_PSIGUR_Guru_FI, "FI_57");
		};

		if (FI_Story == 3)
		&& (Npc_IsDead(Erzgolem_05))
		&& (Npc_IsDead(Erzgolem_06))
		&& (Npc_IsDead(Erzgolem_07))
		&& (Npc_IsDead(Erzgolem_08))
		&& (Npc_IsDead(Mod_1975_PSITPL_Templer_FI))
		&& (Npc_IsDead(Mod_1976_PSITPL_Templer_FI))
		&& (Npc_IsDead(Mod_1977_PSITPL_Templer_FI))
		&& (Npc_IsDead(Mod_1978_PSITPL_Templer_FI))
		&& (Npc_IsDead(Mod_1979_PSIGUR_Guru_FI))
		&& (Npc_IsDead(Mod_1980_PSIGUR_Guru_FI))
		{
			FI_Story = 4;

			B_StartOtherRoutine	(Mod_1974_MIL_Gidan_FI, "START");
		};

		if (FI_Story == 4)
		&& (Npc_KnowsInfo(hero, Info_Mod_Gidan_FI_SecondWaveDead))
		&& (!Npc_IsInState(Mod_1974_MIL_Gidan_FI, ZS_Talk))
		{
			FI_Story = 5;

			Wld_InsertNpc	(Mod_1982_PSITPL_Templer_FI, "FI_57");
			Wld_InsertNpc	(Mod_1983_PSITPL_Templer_FI, "FI_57");
			Wld_InsertNpc	(Mod_1984_PSITPL_Templer_FI, "FI_57");
			Wld_InsertNpc	(Mod_1985_PSITPL_Templer_FI, "FI_57");
			Wld_InsertNpc	(Mod_1986_PSIGUR_Guru_FI, "FI_57");
			Wld_InsertNpc	(Mod_1987_PSIGUR_Guru_FI, "FI_57");
			Wld_InsertNpc	(Mod_1988_PSIGUR_Guru_FI, "FI_57");

			B_StartOtherRoutine	(Mod_1974_MIL_Gidan_FI, "REDE");
		};

		if (FI_Story == 5)
		&& (Npc_GetDistToWP(Mod_1981_Kolam_FI, "FI_59") < 200)
		&& (Npc_GetDistToWP(Mod_1974_MIL_Gidan_FI, "FI_58") < 200)
		{
			Wld_SendTrigger	("REDE_01");

			CutsceneAn = TRUE;

			AI_GotoWP	(hero, "FI_75");

			FI_Story = 6;
		};

		if (FI_Story == 6)
		{
			if (FI_Rede == 0)
			{
				AI_TurnToNpc	(Kolam, hero);
				AI_TurnToNpc	(Gidan_FI, Kolam);
				AI_TurnToNpc	(hero, Kolam);

				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_00"); //There you are!
			};

			if (FI_Rede == 5)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_01"); //Uncle!
			};

			if (FI_Rede == 10)
			{
				AI_TurnToNpc	(Kolam, Gidan_FI);

				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_02"); //Shut up! I'm greeting our guest.
			};

			if (FI_Rede == 15)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_03"); //Let's kill him! With his blood we can finally resurrect the sleeper!
			};

			if (FI_Rede == 20)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_04"); //The sleeper? LOOK AT YOURSELF!
			};

			if (FI_Rede == 23)
			{
				Wld_InsertNpc	(Sleeper, "FI_50");

				AI_Teleport	(Sleeper, "FI_50");
			};

			if (FI_Rede == 25)
			{
				AI_TurnToNpc	(Gidan_FI, Sleeper);
				AI_TurnToNpc	(hero, Sleeper);

				Wld_SendTrigger	("REDE_02");

				B_StartOtherRoutine	(Mod_1982_PSITPL_Templer_FI, "SLEEPER");
				B_StartOtherRoutine	(Mod_1983_PSITPL_Templer_FI, "SLEEPER");
				B_StartOtherRoutine	(Mod_1984_PSITPL_Templer_FI, "SLEEPER");
				B_StartOtherRoutine	(Mod_1985_PSITPL_Templer_FI, "SLEEPER");
				B_StartOtherRoutine	(Mod_1986_PSIGUR_Guru_FI, "SLEEPER");
				B_StartOtherRoutine	(Mod_1987_PSIGUR_Guru_FI, "SLEEPER");
				B_StartOtherRoutine	(Mod_1988_PSIGUR_Guru_FI, "SLEEPER");
			};

			if (FI_Rede == 35)
			{
				Wld_SendTrigger	("REDE_03");

				AI_TurnToNpc	(Gidan_FI, Kolam);
				AI_TurnToNpc	(hero, Kolam);

				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_05"); //Like.... Like.... How is that possible? The sleeper has returned to us? Hail the sleeper!
			};

			if (FI_Rede == 40)
			{
				AI_TurnToNpc	(Kolam, Gidan_FI);

				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_06"); //Shut the fuck up!
			};

			if (FI_Rede == 45)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_07"); //What?
			};

			if (FI_Rede == 50)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_08"); //Dass du Idiot deinen eigenen "God" nicht erkennst!
			};

			if (FI_Rede == 55)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_09"); //What do you mean?
			};

			if (FI_Rede == 60)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_10"); //It's just a robot! But through him, I could control all those stupid sectarian nerds!
			};

			if (FI_Rede == 65)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_11"); //I don't need them anymore, though.
			};

			if (FI_Rede == 70)
			{
				Wld_SendTrigger	("REDE_04");
			};

			if (FI_Rede == 72)
			{
				Wld_SendTrigger	("REDE_05");

				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_12"); //What are you doing? Don't you want to wake the sleeper?
			};

			if (FI_Rede == 77)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_13"); //You don't get it, do you? You can't wake the sleeper again. He was banished! The only one who could do that is Beliar himself!
			};

			if (FI_Rede == 82)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_14"); //What you're looking at is a robot!
			};

			if (FI_Rede == 87)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_15"); //A robot? So the inventor built it for you?
			};

			if (FI_Rede == 92)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_16"); //Haha quite right, the ominous inventor.
			};

			if (FI_Rede == 97)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_17"); //So you've only got all this... staged?
			};

			if (FI_Rede == 102)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_18"); //Yes! You're just as crazy as my misguided brother!
			};

			if (FI_Rede == 107)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_19"); //But... But...
			};

			if (FI_Rede == 112)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_20"); //Don't stutter around here!
			};

			if (FI_Rede == 117)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_21"); //Aber Uncle! Du hast gesagt du willst den Tod meines Vaters, deines Bruders rächen und uns den Schläfer wiedergeben!
			};

			if (FI_Rede == 122)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_22"); //There's your sleeper, you idiot. SCHLÄFER1. 0 INITIALIZE ATTACK!

				B_Attack	(Sleeper, Gidan_FI, AR_None, 0);
			};

			if (FI_Rede == 125)
			{
				FI_Story = 7;

				CutsceneAn = FALSE;
			};

			FI_Rede += 1;
		};

		if (FI_Story == 7)
		&& (NpC_KnowsInfo(hero, Info_Mod_Kolam_Hi))
		&& (!Npc_IsInState(Mod_1981_Kolam_FI, ZS_Talk))
		{
			B_Attack	(Sleeper, hero, AR_Kill, 0);

			FI_Story = 8;
		};

		if (Mod_Sleeper_01 == 1)
		&& (Mod_Sleeper_02 == 1)
		&& (Mod_Sleeper_03 == 1)
		&& (FI_Story == 8)
		{
			if (!Npc_IsDead(Sleeper))
			{
				B_MagicHurtNpc	(hero, Sleeper, 999999);
			};

			AI_Teleport	(hero, "FI_82");

			AI_Teleport	(Mod_1981_Kolam_FI, "FI_81");

			B_StartOtherRoutine	(Mod_1981_Kolam_FI, "ENDE");
			Wld_InsertNpc	(HeroBot_FI, "FI_83");

			AI_Teleport	(Mod_1981_Kolam_FI, "FI_81");

			FI_Story = 9;
		};

		if (FI_Story == 9)
		&& (NpC_KnowsInfo(hero, Info_Mod_Kolam_SleeperDead))
		&& (!Npc_IsInState(Mod_1981_Kolam_FI, ZS_Talk))
		{
			PrintScreen ("Gidan rushes up and crashes over the cliff together with Cor Kolam and the hero bot.", -1, YPOS_LevelUp, FONT_Screen, 2);

			Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

			AI_Teleport	(HeroBot_FI, "TOT");
			AI_Teleport	(Mod_1974_MIL_Gidan_FI, "TOT");
			AI_Teleport	(Mod_1981_Kolam_FI, "TOT");

			B_StartOtherRoutine	(Mod_1981_Kolam_FI, "TOT");
			B_StartOtherRoutine	(HeroBot_FI, "TOT");
			B_StartOtherRoutine	(Mod_1974_MIL_Gidan_FI, "TOT");

			AI_Teleport	(HeroBot_FI, "TOT");
			AI_Teleport	(Mod_1974_MIL_Gidan_FI, "TOT");
			AI_Teleport	(Mod_1981_Kolam_FI, "TOT");

			FI_Story = 10;

			CreateInvItems	(hero, ItWr_SektisTeleport3, 1);

			PrintScreen ("Receive teleport saying role", -1, -1, FONT_Screen, 2);

			B_LogEntry	(TOPIC_MOD_PAL_FI, "Gidan sacrificed himself and took Cor Kolam and the hero bot down with him. I should now go back to Khorinis and inform Lord Andre. Maybe the part of the saying that brought me here will work again?");
		};
	};

	if (CurrentLevel == RELENDEL_ZEN)
	{
		if (Mod_PAL_HeroBotFollow == 1)
		&& (Mod_PAL_HeroBot == 3)
		{
			Wld_InsertNpc	(HeroBot_REL, "REL_005");
			Wld_InsertNpc	(Mod_7240_PAL_Andre_REL, "REL_CITY_085");

			Mod_PAL_HeroBotFollow = 2;
			Mod_PAL_HeroBot = 4;
		};

		if (Mod_PAL_HeroBotFollow == 2)
		&& (Npc_GetDistToWP(hero, "REL_CITY_002") < 1000)
		&& (Mod_PAL_HeroBot == 4)
		{
			Mod_PAL_HeroBot = 5;

			B_StartOtherRoutine	(HeroBot_REL, "WAIT");
		};

		if (Mod_PAL_HeroBot == 5)
		&& (Npc_GetDistToWP(hero, "REL_CITY_085") < 300)
		{
			Npc_ClearAIQueue(Mod_7240_PAL_Andre_REL);
			AI_StandUp(Mod_7240_PAL_Andre_REL);
			B_Attack	(Mod_7240_PAL_Andre_REL, hero, AR_None, 0);

			Mod_PAL_HeroBot = 6;

			var int mvrPtr; mvrPtr = MEM_SearchVobByName("EVT_OFENKLAPPEN");
			var zCMover mvr; mvr = MEM_PtrToInst(mvrPtr);
			if (mvr.actKeyframe == 0) {
				Wld_SendTrigger	("EVT_OFENKLAPPEN");
			};

			Mdl_RemoveOverlayMDS	(hero, "HUMANS_SPRINT.MDS");
		};

		if (Mod_PAL_HeroBot == 7)
		&& (C_NpcIsDown(hero))
		{
			AI_TurnToNpc	(Mod_7240_PAL_Andre_REL, hero);

			AI_UnequipArmor	(hero);
			B_GiveInvItems	(hero, Mod_7240_PAL_Andre_REL, ItAr_Gangster, 1);
			AI_EquipArmor	(Mod_7240_PAL_Andre_REL, ItAr_Gangster);

			Mod_PAL_HeroBot = 8;
		};

		if (Mod_PAL_HeroBot == 6)
		&& (C_NpcIsDown(hero))
		{
			AI_TurnToNpc	(Mod_7240_PAL_Andre_REL, hero);

			AI_UnequipArmor	(Mod_7240_PAL_Andre_REL);
			B_GiveInvItems	(Mod_7240_PAL_Andre_REL, hero, ItAr_PAL_H, 1);

			Mod_PAL_HeroBot = 7;
		};

		if (Mod_PAL_HeroBot == 8)
		{
			AI_TurnToNpc	(Mod_7240_PAL_Andre_REL, hero);

			AI_Output(Mod_7240_PAL_Andre_REL, NULL, "Info_Mod_Andre_REL_Sorry_40_00"); //Sorry, kid, the exit didn't really work out.

			Mod_PAL_HeroBot = 9;
		};

		if (Mod_PAL_HeroBot >= 9)
		&& (Mod_PAL_HeroBot < 14)
		{
			Mod_PAL_HeroBot += 1;
		};

		if (Mod_PAL_HeroBot == 14)
		{
			B_StartOtherRoutine	(Mod_7240_PAL_Andre_REL, "OFEN");
			B_StartOtherRoutine	(HeroBot_REL, "OFEN");

			AI_Teleport	(HeroBot_REL, "REL_CITY_043");

			AI_StopProcessInfos	(hero);

			Mod_PAL_HeroBot = 15;
		};

		if (Mod_PAL_HeroBot == 15)
		&& (Npc_GetDistToWP(HeroBot_REL, "REL_CITY_338") < 250)
		&& (Npc_GetDistToWP(Mod_7240_PAL_Andre_REL, "REL_CITY_338") < 250)
		{
			Wld_PlayEffect	("spellFX_Firestorm_SPREAD", Mod_7240_PAL_Andre_REL, Mod_7240_PAL_Andre_REL, 0, 0, 0, FALSE);

			B_RemoveNpc	(Mod_7240_PAL_Andre_REL);
			B_RemoveNpc	(HeroBot_REL);

			Wld_SendTrigger	("EVT_OFENKLAPPEN");

			Mod_PAL_HeroBot = 16;

			if (Mod_REL_Stadthalter == 1)
			{
				B_StartOtherRoutine	(Mod_7382_OUT_Theodorus_REL,	"ANDRE");
			}
			else if (Mod_REL_Stadthalter == 2)
			{
				B_StartOtherRoutine	(Mod_7480_OUT_Wendel_REL,	"ANDRE");
			}
			else
			{
				B_StartOtherRoutine	(Mod_7516_OUT_Lukas_REL,	"ANDRE");
			};
		};

		if (Mod_PAL_HeroBot == 16)
		{
			Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

			AI_Teleport	(hero, "REL_CITY_028");

			Wld_SetTime	(32,00);

			Mod_PAL_HeroBot = 17;
		};
	};

	if (CurrentLevel == MINENTAL_ZEN)
	{
		if (Mod_Kap4_KGOrks == 1)
		{
			if (Npc_KnowsInfo(hero, Info_Mod_Hymir_Treue2))
			&& (!Npc_IsInState(Mod_1016_KGD_Hymir_MT, ZS_Talk))
			{
				AI_Teleport	(Mod_1016_KGD_Hymir_MT, "TOT");
				B_StartOtherRoutine	(Mod_1016_KGD_Hymir_MT, "TOT");

				B_RemoveNpc	(Mod_7698_PAL_Hagen_MT);

				Mod_Kap4_KGOrks = 2;
			};
		};
	};
};
