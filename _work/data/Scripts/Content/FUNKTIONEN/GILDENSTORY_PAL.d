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

			AI_Output(PC_Hero, NULL, "Info_Mod_Hero_ErfinderLawrenceFollow_15_00"); //Bede za nim podazac!

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
				AI_Output(Mod_1730_MIL_Lawrence_NW, NULL, "Info_Mod_Lawrence_Larius_06_00"); //Zauwazono brak wynalazcy! Szukajaca go milicja.
			};
			if (Mod_MitLawrence_Counter == 8)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_01"); //Damn go. Skad to wiesz?
			};
			if (Mod_MitLawrence_Counter == 13)
			{
				AI_Output(Mod_1730_MIL_Lawrence_NW, NULL, "Info_Mod_Lawrence_Larius_06_02"); //W jego domu znajdowal sie facet szukajacy kogos, kto zaczyna nazywac sie L. Moze znalazl list?
			};
			if (Mod_MitLawrence_Counter == 19)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_03"); //Hmm..... wtedy prawdopodobnie bedziemy musieli nieco zmienic swoje nazwy.
			};
			if (Mod_MitLawrence_Counter == 24)
			{
				AI_Output(Mod_1730_MIL_Lawrence_NW, NULL, "Info_Mod_Lawrence_Larius_06_04"); //Um.... Niestety, to juz nie zadziala....
			};
			if (Mod_MitLawrence_Counter == 26)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_05"); //Dlaczego nie?
			};
			if (Mod_MitLawrence_Counter == 31)
			{
				AI_Output(Mod_1730_MIL_Lawrence_NW, NULL, "Info_Mod_Lawrence_Larius_06_06"); //No cóz, dalem mu swoje, moje i nazwisko Luteros.....
			};
			if (Mod_MitLawrence_Counter == 36)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_07"); //Idiota! Czy sadzisz, ze byl w Lutero?
			};
			if (Mod_MitLawrence_Counter == 41)
			{
				AI_Output(Mod_1730_MIL_Lawrence_NW, NULL, "Info_Mod_Lawrence_Larius_06_08"); //Nie wiem! Bede teraz isc i ostrzec go.
			};
			if (Mod_MitLawrence_Counter == 44)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_09"); //Masz tylko jedna glowe, wiec nie bedzie deszczu w dól gardla.
			};
			if (Mod_MitLawrence_Counter == 49)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_10"); //Jesli ten facet widzi, ze idziesz teraz do Lutero, to z pewnoscia bedzie sceptyczny! Prosze umiescic ten list w punkcie wymiany.
			};
			if (Mod_MitLawrence_Counter == 54)
			{
				AI_Output(Mod_1730_MIL_Lawrence_NW, NULL, "Info_Mod_Lawrence_Larius_06_11"); //Okay. Pedro budzi sie!
			};
			if (Mod_MitLawrence_Counter == 56)
			{
				AI_Output(Mod_591_NONE_Larius_NW, NULL, "Info_Mod_Lawrence_Larius_01_12"); //Shush! Pedro budzi sie!
			};
			if (Mod_MitLawrence_Counter == 61)
			{
				AI_Output(PC_Hero, NULL, "Info_Mod_Hero_ErfinderLawrence_15_00"); //Powinienem sie z tego wyprowadzic! Ale powinienem zwrócic uwage na Lawrence' a.
			};
			if (Mod_MitLawrence_Counter == 66)
			{
				AI_GotoWP	(PC_Hero, "NW_CITY_CITYHALL_01");

				B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "Wydaje sie, ze te trzy osoby naleza do siebie. Z pewnoscia maja one cos wspólnego z zanikiem wynalazcy. Powinienem trzymac sie Lawrence' a.");

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
				B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "Powinienem porozmawiac z Lutero, zanim pójde na to spotkanie.");

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

			AI_Output(hero, NULL, "Info_Mod_Hero_ErfinderLutero_15_00"); //Ja powinienem rozejrzec sie w poblizu jego punktu handlowego, moze zostawil tam notatke.

			Wld_InsertItem	(ItWr_ErfinderLuteroNotiz, "FP_LUTEROSNOTIZ");

			B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "Hm, Lutero szybko zniknal. Powinnam przyjrzec sie jego punktowi handlowemu, moze znajde tam cos podejrzanego.....");

			Mod_MitLawrenceGesprochen = 9;
		};

		if (Mod_MitLawrenceGesprochen == 9)
		&& (Npc_GetDistToWP(PC_Hero, "NW_CITY_UPTOWN_PATH_10") < 300)
		{
			AI_GotoWP	(hero, "NW_CITY_UPTOWN_PATH_12");

			AI_StandUp	(hero);

			AI_Output(hero, NULL, "Info_Mod_Hero_ErfinderNotiz_15_00"); //Jeszcze nie!
		};

		if (Npc_IsDead(Mod_591_NONE_Larius_NW))
		&& (Npc_IsDead(Mod_594_NONE_Lutero_NW))
		&& (Npc_IsDead(Mod_1730_MIL_Lawrence_NW))
		&& (Mod_MitLawrenceGesprochen == 11)
		{
			Mod_MitLawrenceGesprochen = 12;

			B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "Zabilem Lariusa, Lawrence' a i Lutero. Powinienem ja przeszukac, moze jeden z nich ma jeszcze jakies wskazówki na temat mezczyzny za nia.");
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
				AI_Output(Mod_1745_PSIGUR_Guru_NW, NULL, "Info_Mod_PSIGUR_12_00"); //Jestes z powrotem, mistrz?
			};

			if (Gidan_Counter == 10)
			{
				AI_Output(Mod_1723_MIL_Gidan_NW, NULL, "Info_Mod_PSIGUR_13_01"); //Tak! Nie trzeba juz teraz podszywac sie pod milicje. Zwabilem tutaj wroga.
			};

			if (Gidan_Counter == 15)
			{
				AI_Output(Mod_1723_MIL_Gidan_NW, NULL, "Info_Mod_PSIGUR_13_02"); //Bedzie tu wczesniej czy pózniej. Mozna tu rozbic obozy.
			};

			if (Gidan_Counter == 20)
			{
				AI_Output(Mod_1723_MIL_Gidan_NW, NULL, "Info_Mod_PSIGUR_13_03"); //Czekamy na niego w twierdzy! Jego krew wskrzesi sypialnego.
			};

			if (Gidan_Counter == 25)
			{
				AI_Output(Mod_1723_MIL_Gidan_NW, NULL, "Info_Mod_PSIGUR_13_04"); //Pedro budzi sie!
			};

			if (Gidan_Counter == 28)
			{
				AI_Output(Mod_1745_PSIGUR_Guru_NW, NULL, "Info_Mod_PSIGUR_12_05"); //Pedro budzi sie!
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

				B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "Gidan nalezy do fanatyków? Musze go sledzic, ale nie wiem, gdzie byl jej teleport.");

				if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Gidan1))
				{
					B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "Prawdopodobnie Xardas jest wykonywany z dwiema polówkami pergaminu. Moze mi to pomoze.");
				}
				else
				{
					B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "Byc moze dwie polówki pergaminu zabralem mnie dalej. Powinienem sie przekonac, czy ktos moze je polaczyc. Jestem pewien, ze magik jest w stanie to zrobic.");
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
			Info_Mod_Andre_RLMord.description = "Neron mnie wyslal.";
		};

		if (Mod_PAL_Galf == 0)
		&& (Npc_KnowsInfo(hero, Info_Mod_Galf_Hi))
		&& (!Npc_IsInState(Mod_7235_NONE_Galf_NW, ZS_Talk))
		{
			Mod_PAL_Galf = 1;

			PrintScreen ("Zle burze poza pomieszczeniem", -1, YPOS_LevelUp, FONT_Screen, 2);

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

			PrintScreen ("Robot straciles!", -1, YPOS_LevelUp, FONT_Screen, 2);
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
		&& (!Npc_KnowsInfo(hero, Info_Mod_Mika_AndreVermaechtnis2))
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
			B_LogEntry	(TOPIC_MOD_PAL_FI, "Wyladowalem na latajacej wyspie. Powinnam podazac ta droga i zobaczyc dokad ona prowadzi mnie.");

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

				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_00"); //Jestes!
			};

			if (FI_Rede == 5)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_01"); //Wujek!
			};

			if (FI_Rede == 10)
			{
				AI_TurnToNpc	(Kolam, Gidan_FI);

				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_02"); //Wylaczyc! Witam naszego goscia.
			};

			if (FI_Rede == 15)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_03"); //Zabijmy go! Jego krwia mozemy wreszcie wskrzesic sypialnia!
			};

			if (FI_Rede == 20)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_04"); //sypialnia? SPOJRZEC NA SIEBIE!
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

				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_05"); //Tak jak..... Tak jak..... Jak to jest mozliwe? Najemca wrócil do nas? Zdjac spiwora!
			};

			if (FI_Rede == 40)
			{
				AI_TurnToNpc	(Kolam, Gidan_FI);

				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_06"); //Wylaczyc fuck up!
			};

			if (FI_Rede == 45)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_07"); //Co?
			};

			if (FI_Rede == 50)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_08"); //Dass du Idiot deinen eigenen "Bóg" nicht erkennst!
			};

			if (FI_Rede == 55)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_09"); //Co masz na mysli?
			};

			if (FI_Rede == 60)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_10"); //To tylko robot! Ale przez niego moglem kontrolowac te wszystkie glupie sekciarskie nerdy!
			};

			if (FI_Rede == 65)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_11"); //Nie potrzebuje ich juz jednak.
			};

			if (FI_Rede == 70)
			{
				Wld_SendTrigger	("REDE_04");
			};

			if (FI_Rede == 72)
			{
				Wld_SendTrigger	("REDE_05");

				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_12"); //Co robisz? Nie chcesz obudzic sypialni?
			};

			if (FI_Rede == 77)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_13"); //Nie dostajesz tego, czy? Nie mozesz ponownie obudzic sypialni. Zostal wygnany! Jedynym, kto mógl to zrobic, jest sam Beliar!
			};

			if (FI_Rede == 82)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_14"); //To, na co patrzysz, to robot!
			};

			if (FI_Rede == 87)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_15"); //A robot? Wiec wynalazca zbudowal go dla Ciebie?
			};

			if (FI_Rede == 92)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_16"); //Haha ma racje, zlowieszczy wynalazca.
			};

			if (FI_Rede == 97)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_17"); //Wiec masz tylko to wszystko.... inscenizacja?
			};

			if (FI_Rede == 102)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_18"); //Tak! Jestes tak zwariowany jak mój mylony brat!
			};

			if (FI_Rede == 107)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_19"); //Ale.... Ale....
			};

			if (FI_Rede == 112)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_20"); //Nie zacinaj sie tutaj!
			};

			if (FI_Rede == 117)
			{
				AI_Output(Gidan_FI, NULL, "Info_Mod_FI_Rede_13_21"); //Ale wujek! Powiedziales, ze chcesz pomscic smierc mojego ojca, smierc twojego brata i oddac nam z powrotem spiacego!
			};

			if (FI_Rede == 122)
			{
				AI_Output(Kolam, NULL, "Info_Mod_FI_Rede_03_22"); //Jest twój sen, ty idiota. SCHLÄFER1. 0 INICJUJ ATAK!

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
			PrintScreen ("Gidan wraz z Cor Kolamem i bohaterem botem rozpada sie nad skala.", -1, YPOS_LevelUp, FONT_Screen, 2);

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

			PrintScreen ("Otrzymanie roli powiedzenia teleportu", -1, -1, FONT_Screen, 2);

			B_LogEntry	(TOPIC_MOD_PAL_FI, "Gidan oddal sie w ofierze i zabral Cor Kolam i bohatera z nim. Powinienem teraz wrócic do Khorinis i poinformowac Pana Andre' a. Moze ta czesc powiedzenia, które przyprowadzilo mnie tutaj, znowu zadziala?");
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

			AI_Output(Mod_7240_PAL_Andre_REL, NULL, "Info_Mod_Andre_REL_Sorry_40_00"); //Przepraszam, dzieciak, wyjscie nie wyszlo na dobre.

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
				AI_Teleport	(Mod_1016_KGD_Hymir_MT, "TOT");
				
				AI_Teleport	(Mod_7698_PAL_Hagen_MT, "TOT");
				B_StartOtherRoutine	(Mod_7698_PAL_Hagen_MT, "TOT");
				AI_Teleport	(Mod_7698_PAL_Hagen_MT, "TOT");

				B_RemoveNpc	(Mod_7698_PAL_Hagen_MT);

				Mod_Kap4_KGOrks = 2;
			};
		};
	};
};
