var int SchattisBeiFrowin;
var int IgnazDead;
var int KnowsComeback;
var int GardeCutscene_Counter;
var int Barriere_Down;

FUNC VOID GILDENSTORY_BELIAR()
{
	// Beliar-Story

	// Rest

	if (CurrentLevel == NEWWORLD_ZEN)
	{
		if (Npc_HasItems(hero, ItWr_XardasAlmanach) == 1)
		&& (Drach_Gespawnt == 0)
		{
			Drach_Gespawnt = 1;

			Wld_InsertNpc	(GardeBeliars_1989_Drach, "NW_XARDAS_TOWER_PATH_01_B");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Drach_WerBistDu))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Drach_AtAlmanach))
		{
			if (GardeBeliars_1989_Drach.attribute[ATR_HITPOINTS] < (GardeBeliars_1989_Drach.attribute[ATR_HITPOINTS_MAX] / 2)) {
				AI_StandUp	(GardeBeliars_1989_Drach);

				GardeBeliars_1989_Drach.attribute[ATR_HITPOINTS] = GardeBeliars_1989_Drach.attribute[ATR_HITPOINTS_MAX];

				GardeBeliars_1989_Drach.aivar[AIV_Damage] = GardeBeliars_1989_Drach.attribute[ATR_HITPOINTS_MAX];

				Npc_ClearAIQueue	(GardeBeliars_1989_Drach);

				AI_StandUp	(GardeBeliars_1989_Drach);

				AI_RemoveWeapon	(GardeBeliars_1989_Drach);

				Npc_ClearAIQueue	(hero);
				AI_StandUp	(hero);

				AI_RemoveWeapon	(hero);

				GardeBeliars_1989_Drach.aivar[AIV_AttackReason] = 0;
				GardeBeliars_1989_Drach.aivar[AIV_LastTarget] = 0;
				GardeBeliars_1989_Drach.aivar[AIV_Partymember] = TRUE;

				Npc_SendSinglePerc (hero, GardeBeliars_1989_Drach, PERC_ASSESSPLAYER);
			};
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Frowin_Hi))
		&& (SchattisBeiFrowin == FALSE)
		{
			if (Npc_GetDistToWP(GardeBeliars_1994_Frowin, "NW_CITYFOREST_CAVE_A06") > 1000) {
				SchattisBeiFrowin = TRUE;

				Wld_InsertNpc	(Skeleton,	"FP_ROAM_NW_CITYFOREST_CAVE_A06_01");
				Wld_InsertNpc	(Skeleton,	"FP_ROAM_NW_CITYFOREST_CAVE_A06_03");
				Wld_InsertNpc	(Skeleton,	"FP_ROAM_NW_CITYFOREST_CAVE_A06_02");

				AI_UnequipWeapons	(GardeBeliars_1994_Frowin);

				Npc_RemoveInvItems	(GardeBeliars_1994_Frowin, ItMw_Zweihaender2, 1);

				CreateInvItems	(GardeBeliars_1994_Frowin, ItMw_AxtDesUntergangs, 1);

				AI_EquipBestMeleeWeapon	(GardeBeliars_1994_Frowin);
			};
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Ignaz_Amulett))
		&& (IgnazDead == FALSE)
		{
			if (!Npc_IsInState(Mod_584_NONE_Ignaz_NW, ZS_Talk)) {
				IgnazDead = TRUE;

				Mod_584_NONE_Ignaz_NW.attribute[ATR_HITPOINTS] = 0;
				AI_PlayAni	(Mod_584_NONE_Ignaz_NW, "T_DEAD");

				AI_GotoNpc	(hero, Mod_584_NONE_Ignaz_NW);

				B_TransferInventory_All (Mod_584_NONE_Ignaz_NW, Cheater);

				AI_PlayAni	(hero, "T_PLUNDER");

				AI_StandUp	(hero);

				AI_Output(hero, NULL, "Info_Mod_Hero_IgnazDead_15_00"); //Zaprawde, on umarl! Gdzie powinienem szukac tych nowicjuszy? Jakie kamienne kolo?
			};
		};

		if (Npc_KnowsInfo(hero, Info_Mod_UntoterNovize_01_Hi))
		&& (KnowsComeback == FALSE)
		{
			if (!Npc_IsInState(Mod_1995_UntoterNovize_01_NW, ZS_Talk)) {
				KnowsComeback = TRUE;

				B_InitMonsterAttitudes();
			};
		};

		if (GardeAnfangCutscene == FALSE)
		&& (Npc_GetDistToNpc(hero, Mod_513_DMB_Xardas_NW) < 500)
		&& (Npc_KnowsInfo(hero, Info_Mod_Myxir_Amulett))
		&& (Npc_GetDistToWP(hero, "START") < 500)
		{
			AI_GotoWP	(hero, "NW_XARDAS_TOWER_IN1_25");

			GardeAnfangCutscene = TRUE;

			Wld_SendTrigger	("GARDEINNOS01");

			CutsceneAn = TRUE;
		};

		if (GardeAnfangCutscene == 1)
		{
			if (GardeCutscene_Counter == 0)
			{
				AI_TurnToNpc	(hero, Mod_513_DMB_Xardas_NW);
				AI_TurnToNpc	(Mod_513_DMB_Xardas_NW, hero);

				AI_Output(hero, NULL, "Info_Mod_Xardas_GardeInnos_15_00"); //Xardas, przekazuje pilna wiadomosc od Myxir!
			};

			if (GardeCutscene_Counter == 5)
			{
				AI_Output(Mod_513_DMB_Xardas_NW, NULL, "Info_Mod_Xardas_GardeInnos_14_01"); //Sprawozdania.
			};

			if (GardeCutscene_Counter == 10)
			{
				AI_Output(hero, NULL, "Info_Mod_Xardas_GardeInnos_15_02"); //Mialem odzyskac stary amulet do Myxiru, kt�ry powinien posiadac moc Innosa. Szukalem jej i znalazlem ja u niekt�rych nieumarlych nowicjuszy.
			};

			if (GardeCutscene_Counter == 15)
			{
				AI_Output(hero, NULL, "Info_Mod_Xardas_GardeInnos_15_03"); //Oskarzali o to, ze straznicy Innosa zostali uwolnieni i zniszczyli Beliara.
			};

			if (GardeCutscene_Counter == 20)
			{
				AI_Output(hero, NULL, "Info_Mod_Xardas_GardeInnos_15_04"); //Kiedy powiedzialem mi Myxir, poslal mnie prosto do ciebie.
			};

			if (GardeCutscene_Counter == 25)
			{
				AI_Output(Mod_513_DMB_Xardas_NW, NULL, "Info_Mod_Xardas_GardeInnos_14_05"); //Straz Innos�w? Nie moglo byc gorzej!
			};

			if (GardeCutscene_Counter == 30)
			{
				AI_Output(hero, NULL, "Info_Mod_Xardas_GardeInnos_15_06"); //Czym jest Gwardia Inno?
			};

			if (GardeCutscene_Counter == 35)
			{
				AI_Output(Mod_513_DMB_Xardas_NW, NULL, "Info_Mod_Xardas_GardeInnos_14_07"); //Tysiac lat temu bogowie Innos i Beliar wybrali dla siebie szesciu boskich bojownik�w. To byl tw�j osobisty straznik. B�stwa walczyly przeciwko sobie nawzajem, a straznicy zaszkodzili ziemi.
			};

			if (GardeCutscene_Counter == 40)
			{
				AI_Output(Mod_513_DMB_Xardas_NW, NULL, "Info_Mod_Xardas_GardeInnos_14_08"); //Adanos zakonczyl to i wygnal straznik�w. Zniszczyles juz straznik�w Beliara i zlapales siekiere zguby.
			};

			if (GardeCutscene_Counter == 45)
			{
				AI_Output(Mod_513_DMB_Xardas_NW, NULL, "Info_Mod_Xardas_GardeInnos_14_09"); //Teraz jednak Inno jest wsr�d nas znacznie silniejsza straza. Ich celem jest pokonanie naszego Boga. Musimy ich powstrzymac.
			};

			if (GardeCutscene_Counter == 50)
			{
				Wld_InsertNpc	(Mod_1998_SNOV_Novize_NW, "NW_XARDAS_TOWER_IN1_26");
			};

			if (GardeCutscene_Counter == 52)
			{
				AI_TurnToNpc	(hero, Mod_1998_SNOV_Novize_NW);
				AI_TurnToNpc	(Mod_513_DMB_Xardas_NW, Mod_1998_SNOV_Novize_NW);
				AI_TurnToNpc	(Mod_1998_SNOV_Novize_NW, Mod_513_DMB_Xardas_NW);

				AI_Output(Mod_1998_SNOV_Novize_NW, NULL, "Info_Mod_Xardas_GardeInnos_11_10"); //Master Xardas, jest straszna nowina!
			};

			if (GardeCutscene_Counter == 57)
			{
				AI_Output(Mod_513_DMB_Xardas_NW, NULL, "Info_Mod_Xardas_GardeInnos_14_11"); //Co sie dzieje?
			};

			if (GardeCutscene_Counter == 62)
			{
				AI_Output(Mod_1998_SNOV_Novize_NW, NULL, "Info_Mod_Xardas_GardeInnos_11_12"); //Gwardia Innos rozpoczela oblezenie biesiad naszych rycerskich uczt i grozi nam zniszczeniem!
			};

			if (GardeCutscene_Counter == 67)
			{
				AI_Output(Mod_1998_SNOV_Novize_NW, NULL, "Info_Mod_Xardas_GardeInnos_11_13"); //Co robimy, mistrzowie?
			};

			if (GardeCutscene_Counter == 72)
			{
				AI_Output(Mod_513_DMB_Xardas_NW, NULL, "Info_Mod_Xardas_GardeInnos_14_14"); //Powiedz Ravenowi, podejme natychmiastowe dzialania. Idzcie!
			};

			if (GardeCutscene_Counter == 77)
			{
				B_RemoveNpc	(Mod_1998_SNOV_Novize_NW);
			};

			if (GardeCutscene_Counter == 78)
			{
				AI_TurnToNpc	(hero, Mod_513_DMB_Xardas_NW);
				AI_TurnToNpc	(Mod_513_DMB_Xardas_NW, hero);

				AI_Output(Mod_513_DMB_Xardas_NW, NULL, "Info_Mod_Xardas_GardeInnos_14_15"); //Slyszales, co sie dzieje, prawda?
			};

			if (GardeCutscene_Counter == 83)
			{
				AI_Output(hero, NULL, "Info_Mod_Xardas_GardeInnos_15_16"); //Oczywiscie nie jestem glupi!
			};

			if (GardeCutscene_Counter == 88)
			{
				AI_Output(Mod_513_DMB_Xardas_NW, NULL, "Info_Mod_Xardas_GardeInnos_14_17"); //Sytuacja jest gorsza niz oczekiwano. Od razu bede Cie telepostowal do Rycerzy Demonicznych, a ty musisz im pom�c.
			};

			if (GardeCutscene_Counter == 93)
			{
				AI_Output(hero, NULL, "Info_Mod_Xardas_GardeInnos_15_17"); //Rozumiem!
			};

			if (GardeCutscene_Counter == 98)
			{
				AI_Output(Mod_513_DMB_Xardas_NW, NULL, "Info_Mod_Xardas_GardeInnos_14_18"); //C�z, powodzenia.
			};

			if (GardeCutscene_Counter == 103)
			{
				B_SetLevelchange ("Minental\Minental.zen", "PALTOBURG_2");	

				AI_Teleport	(hero, "OBELISKSCHREIN_WP");

				B_StartOtherRoutine	(Mod_513_DMB_Xardas_NW, "START");

				GardeAnfangCutscene = 2;

				CutsceneAn = FALSE;

				Log_CreateTopic	(TOPIC_MOD_BEL_BELAGERUNG, LOG_MISSION);
				B_SetTopicStatus	(TOPIC_MOD_BEL_BELAGERUNG, LOG_RUNNING);
				B_LogEntry_More	(TOPIC_MOD_BEL_GARDEINNOS, TOPIC_MOD_BEL_BELAGERUNG, "Straznik Innos 'byl kiedys ochroniarzem Innosem'. Chca teraz zabic Beliara. Musimy ich powstrzymac.", "Twierdza rycerska dla demon�w jest oblegana przez straz Innos. Xardas chce, abym ja wspieral.");
			};

			GardeCutscene_Counter += 1;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Argibast))
		&& (Npc_GetDistToWP(hero, "NW_TROLLAREA_RUINS_04") < 500)
		&& (Mod_PortalDicht == 0)
		{
			Mod_PortalDicht = 1;

			Log_CreateTopic	(TOPIC_MOD_BEL_ADANOS, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_BEL_ADANOS, LOG_RUNNING);
			B_LogEntry	(TOPIC_MOD_BEL_ADANOS, "Na miejscu wykopalisk szaleje bitwa wojownika wodnego z nieumarlymi. Powinienem zobaczyc, czy moge pom�c.");
		};
	};

	if (CurrentLevel == ADDONWORLD_ZEN)
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Josephina_Hi))
		&& (MyxirDa == FALSE)
		&& (hero.attribute[ATR_HITPOINTS] <= 25)
		{
			AI_Teleport	(hero, "ADW_PIRATECAMP_BEACH_16");
			Wld_InsertNpc	(Mod_7000_KDS_Myxir_AW, "ADW_PIRATECAMP_BEACH_14");

			MyxirDa = TRUE;
		};

		// Faule Bande

		if (Npc_KnowsInfo(hero, Info_Mod_Angus_Befreiung))
		&& (Mod_AngusHank_Verbatscht == 0)
		{
			if (C_NpcIsDown(Mod_941_PIR_Angus_AW))
			&& (C_NpcIsDown(Mod_942_PIR_Hank_AW))
			{
				Mod_AngusHank_Verbatscht = 1;
			};
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Angus_Befreiung))
		&& (Mod_PIR_AngusHank_Kampf == 0)
		{
			if (!Npc_IsInState(Mod_941_PIR_Angus_AW, ZS_Talk)) {
				Mod_PIR_AngusHank_Kampf = 1;

				B_Attack	(Mod_941_PIR_Angus_AW, hero, AR_None, 0);
				B_Attack	(Mod_942_PIR_Hank_AW, hero, AR_None, 0);
			};
		};

		if (Barriere_Down == FALSE)
		&& (Npc_KnowsInfo(hero, Info_Mod_Greg_ArtefaktAttacke))
		{
			if (Npc_IsDead(Mod_7300_Artefakt_AW)) {
				Barriere_Down = TRUE;

				Wld_SendTrigger	("EVT_AW_BEL_BARRIERE");
			};
		};

		// In der Bibliothek

		if (Mod_BEL_Josephina_Bib == 1)
		{
			Mod_BEL_Josephina_Bib_Counter += 1;

			if (Mod_BEL_Josephina_Bib_Counter == 5)
			{
				AI_Teleport	(GardeInnos_4099_Josephina, "WP_AW_BEL_08");
				B_StartOtherRoutine	(GardeInnos_4099_Josephina, "TEMPEL");
				AI_Teleport	(GardeInnos_4099_Josephina, "WP_AW_BEL_08");

				Wld_InsertNpc	(Mod_7315_BK_Bshydal_AW, "WP_AW_BEL_07");

				Wld_InsertNpc	(Stoneguardian_Giant, "WP_AW_BEL_10");
				Wld_InsertNpc	(Stoneguardian_Giant, "WP_AW_BEL_09");

				B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "Straznik Innos wlasnie wyteleportowala sie z biblioteki. M�wila o tym, ze wkr�tce opanowala miecz i chciala to osiagnac za pomoca magii teleportu.");
			};

			if (Mod_BEL_Josephina_Bib_Counter == 10)
			{
				B_StartOtherRoutine	(GardeInnos_4099_Josephina, "TEMPEL");
				AI_Teleport	(GardeInnos_4099_Josephina, "WP_AW_BEL_08");

				B_KillNpc	(GardeInnos_4099_Josephina);

				Mod_BEL_Josephina_Bib = 2;
			};
		};

		if (Npc_GetDistToWP(hero, "ADW_CANYON_LIBRARY_RIGHT_04") < 400)
		&& (Mod_BEL_Josephina_Bib == 0)
		&& (MyxirDa == TRUE)
		{
			AI_StandUP	(hero);

			Mod_BEL_Josephina_Bib = 1;

			AI_Output(GardeInnos_4099_Josephina, NULL, "Info_Mod_Josephina_Mono_17_00"); //Tak, nie na dlugo, a miecz jest w moich rekach. Z pewna magia teleportowa, powinna ona byc osiagalna.
		};

		// Aktivierung des Portals

		if (!Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_PortalZauberFertig))
		&& (!Npc_IsInFightmode(hero, FMODE_NONE))
		{
			if (Npc_GetDistToNpc(hero, Mod_7314_Ziel_AW) < 600) {
				Mod_7314_Ziel_AW.noFocus = TRUE;
			};
		}
		else
		{
			Mod_7314_Ziel_AW.noFocus = FALSE;
		};

		if (Mod_BEL_PortalCounter > 0)
		{
			Mod_BEL_PortalCounter -= 1;

			if (Mod_BEL_PortalCounter == 0)
			&& (Mod_BEL_PortalAktiv == 1)
			{
				Mod_BEL_PortalAktiv = 0;

				Wld_SendUnTrigger	("EVT_AW_PORTAL_PFX");

				if (Mod_BEL_FirstPortal == 0)
				{
					Mod_BEL_FirstPortal = 1;

					B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "Portal jest wlasnie otwarty. Niestety, niestety nie bylo to wystarczajaco stabilne, abym m�gl przejsc przez nie. Chyba powinienem zapytac mag�w wody.....");

					AI_StandUP (hero);

					AI_Output(hero, NULL, "Info_Mod_Hero_Mono_Portal_AW_15_00"); //Hmm, prawdopodobnie powinienem zapytac Magistr�w Wody.
				};
			};
		};

		if (Npc_GetDistToWP(hero, "BL_RAVEN_01") < 200)
		&& (Mod_BEL_PortalAktiv == 1)
		{
			AI_Teleport	(hero, "WP_AW_BEL_01");

			Mod_BEL_PortalAktiv = 0;

			Mod_BEL_PortalCounter = 0;

			Wld_SendTrigger	("EVT_AW_PORTALPLATTFORM_BELIAR");

			B_RemoveNpc	(Mod_7314_Ziel_AW);
		};

		if (Mod_BEL_BeliarDoch_Gefunden == FALSE)
		&& (Npc_HasItems(hero, ItWr_Bauplan_BeliarDolch) == 1)
		{
			Mod_BEL_BeliarDoch_Gefunden = 1;

			B_LogEntry	(TOPIC_MOD_BEL_BELIARDOLCH, "Mam instrukcje dotyczace budowy i teraz powinienem zobaczyc Myxir.");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Bshydal_Hi))
		&& (Mod_BEL_Bshydal == 0)
		{
			if (!Npc_IsInState(Mod_7315_BK_Bshydal_AW, ZS_Talk)) {
				Mod_BEL_Bshydal = 1;

				Wld_InsertNpc	(Blutgolem_02, "WP_AW_BEL_07");
				Wld_InsertNpc	(Blutgolem_03, "WP_AW_BEL_07");
			};
		};

		if (Mod_BEL_Bshydal == 2)
		&& (Npc_HasItems(hero, ItSc_TeleportBeliarOut) == 1)
		&& (Npc_HasItems(hero, ItMi_WaterOfLife) == 1)
		{
			Mod_BEL_Bshydal = 3;

			Wld_InsertNpc	(Mod_7316_BK_Bshydal_AW, "WP_AW_BEL_07");
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Bshydal_NichtTot))
		&& (Mod_BEL_Bshydal == 3)
		{
			if (!Npc_IsInState(Mod_7316_BK_Bshydal_AW, ZS_Talk)) {
				Mod_BEL_Bshydal = 4;

				Mdl_SetModelScale(Mod_7316_BK_Bshydal_AW, 3.0, 3.0, 3.0);
			};
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Greg_Beerdigung))
		&& (Mod_BEL_AJ == 0)
		{
			if (!Npc_IsInState(Mod_764_PIR_Greg_AW, ZS_Talk)) {
				Mod_BEL_AJ = 1;

				Wld_InsertNpc	(Mod_928_PIR_AlligatorJack_AW, "ADW_PIRATECAMP_TRAIN_01");

				B_StartOtherRoutine	(Mod_928_PIR_AlligatorJack_AW, "BEERDIGUNG");

				Wld_InsertNpc	(Rabbit, "ADW_PIRATECAMP_TRAIN_01");
				Wld_InsertNpc	(Rabbit, "ADW_PIRATECAMP_TRAIN_01");
			
				B_RemoveNpc(Mod_7000_KDS_Myxir_AW);
			};
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Greg_AJAlive3))
		&& (!Npc_IsInState(Mod_764_PIR_Greg_AW, ZS_Talk))
		&& (Mod_BEL_AJ == 1)
		{
			Mod_BEL_AJ = 2;

			Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);	

			B_StartOtherRoutine	(Mod_764_PIR_Greg_AW, "START");
			B_StartOtherRoutine	(Mod_928_PIR_AlligatorJack_AW, "START");
			B_StartOtherRoutine	(Mod_1079_PIR_PIRAT_AW, "START");
			B_StartOtherRoutine	(Mod_1078_PIR_PIRAT_AW, "START");
			B_StartOtherRoutine	(Mod_1077_PIR_PIRAT_AW, "START");
			B_StartOtherRoutine	(Mod_963_PIR_Malcom_NW, "START");
			B_StartOtherRoutine	(Mod_941_PIR_Angus_AW, "START");
			B_StartOtherRoutine	(Mod_942_PIR_Hank_AW, "START");
			B_StartOtherRoutine	(Mod_939_PIR_Owen_AW, "START");
			B_StartOtherRoutine	(Mod_940_PIR_Samuel_AW, "START");
			B_StartOtherRoutine	(Mod_936_PIR_Matt_AW, "START");
			B_StartOtherRoutine	(Mod_938_PIR_Morgan_AW, "START");
			B_StartOtherRoutine	(Mod_1080_PIR_PIRAT_AW, "START");
			B_StartOtherRoutine	(Mod_935_PIR_Malcom_AW, "START");
			B_StartOtherRoutine	(Mod_933_PIR_Garett_AW, "START");
			B_StartOtherRoutine	(Mod_934_PIR_Henry_AW, "START");
			B_StartOtherRoutine	(Mod_932_PIR_Francis_AW, "START");
			B_StartOtherRoutine	(Mod_930_PIR_Bones_AW, "START");
			B_StartOtherRoutine	(Mod_931_PIR_Brandon_AW, "START");
			B_StartOtherRoutine	(Mod_775_PIR_Skip_AW, "START");
			B_StartOtherRoutine	(Mod_929_PIR_Bill_AW, "START");

			PC_Sleep (8);
		};

		// Plattform anquatschen

		if (B_GetAivar(hero, AIV_INVINCIBLE) == FALSE)
		&& ((!Npc_KnowsInfo(hero, Info_Mod_PlattformAWBeliar_Erzbrocken))
		|| (!Npc_KnowsInfo(hero, Info_Mod_PlattformAWBeliar_Weihwasser)))
		{
			if (Npc_GetDistToNpc(hero, Mod_7314_Ziel_AW) <= 300) {
				Npc_SendPassivePerc(hero, PERC_ASSESSTALK, Mod_7314_Ziel_AW, Mod_7314_Ziel_AW);
			};
		};

		// Hank greift in den Kampf erst nach dem Gespr�ch ein

		if (Npc_KnowsInfo(hero, Info_Mod_Angus_Befreiung))
		&& (Mod_BEL_AngusHank_Angriff == FALSE)
		{
			if (!Npc_IsInState(Mod_941_PIR_Angus_AW, ZS_Talk)) {
				Mod_BEL_AngusHank_Angriff = TRUE;

				B_Attack	(Mod_942_PIR_Hank_AW, hero, AR_None, 0);
			};
		};

		// Sequenz Greg - Owen vor Angriff auf die Untoten vor dem Piratenlager

		if (Npc_KnowsInfo(hero, Info_Mod_Greg_Befreiung3))
		&& (Mod_BEL_GregOwen == 0)
		{
			if (!Npc_IsInState(Mod_764_PIR_Greg_AW, ZS_Talk)) {
				Mod_BEL_GregOwen = 1;

				Wld_SendTrigger	("EVT_BEL_GREGOWEN_CAM");

				CutsceneAn = TRUE;
			};
		};

		if (Mod_BEL_GregOwen == 1)
		{
			if (Mod_BEL_GregOwen_Counter == 0)
			{
				AI_TurnToNpc	(Mod_939_PIR_Owen_AW, Mod_764_PIR_Greg_AW);
			};

			if (Mod_BEL_GregOwen_Counter == 1)
			{
				AI_Output(Mod_939_PIR_Owen_AW, NULL, "Info_Mod_GregOwen_31_00"); //Odwr�ce ich uwage.
			};

			if (Mod_BEL_GregOwen_Counter == 6)
			{
				AI_TurnToNpc	(Mod_764_PIR_Greg_AW, Mod_939_PIR_Owen_AW);

				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_GregOwen_01_01"); //Co myslisz, chlopiec?
			};

			if (Mod_BEL_GregOwen_Counter == 11)
			{
				AI_Output(Mod_939_PIR_Owen_AW, NULL, "Info_Mod_GregOwen_31_02"); //Alligator Jack poswiecil sie dla mnie. To minimum, co moge zrobic teraz.
			};

			if (Mod_BEL_GregOwen_Counter == 16)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_GregOwen_01_03"); //Nah, nie wiesz o czym m�wisz. Poza tym i tak jestes wciaz slaby.
			};

			if (Mod_BEL_GregOwen_Counter == 21)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_GregOwen_01_04"); //Trzej synowie suk zlapaliby cie w jiffie i zadziwialiby cie.
			};

			if (Mod_BEL_GregOwen_Counter == 26)
			{
				AI_Output(Mod_939_PIR_Owen_AW, NULL, "Info_Mod_GregOwen_31_05"); //Doskonale wiem, do czego dochodze.
			};

			if (Mod_BEL_GregOwen_Counter == 31)
			{
				AI_Output(Mod_939_PIR_Owen_AW, NULL, "Info_Mod_GregOwen_31_06"); //Moge byc oslabiony, ale tym bardziej bedziesz potrzebowal, aby uciec z obozu.
			};

			if (Mod_BEL_GregOwen_Counter == 36)
			{
				AI_Output(Mod_939_PIR_Owen_AW, NULL, "Info_Mod_GregOwen_31_07"); //Poza tym i tak bylem zawsze dobrym biegaczem i z pospiechem Samuela mialem szanse uciec przed nimi.... lub co najmniej wystarczajaco dlugo je rozpraszac.
			};

			if (Mod_BEL_GregOwen_Counter == 41)
			{
				AI_Output(Mod_939_PIR_Owen_AW, NULL, "Info_Mod_GregOwen_31_08"); //Moja decyzja zostala podjeta.
			};

			if (Mod_BEL_GregOwen_Counter == 46)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_GregOwen_01_09"); //C�z, ktos to slucha. Odwage, wzywam, aby zglosic sie do misji samob�jczej. Szanse, chlopiec, szacunek.
			};

			if (Mod_BEL_GregOwen_Counter == 51)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_GregOwen_01_10"); //Jesli jestes tak chetny, na pewno nie bede chcial cie zatrzymac....
			};

			if (Mod_BEL_GregOwen_Counter == 56)
			{
				AI_Output(Mod_764_PIR_Greg_AW, NULL, "Info_Mod_GregOwen_01_11"); //Zycze szczescia, synu. Potrzebujesz go.
			};

			if (Mod_BEL_GregOwen_Counter == 61)
			{
				B_LogEntry	(TOPIC_MOD_BEL_BEFREIUNG, "Owen chce sie poswiecic i spr�bowac rozpraszac trzy wystarczajaco dlugo, aby zniszczyc ten artefakt. Miejmy nadzieje, ze szybkie sledz Samuela dostarczy to, co obiecuje.... Wiecej");

				B_StartOtherRoutine	(Mod_764_PIR_Greg_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_1079_PIR_PIRAT_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_1078_PIR_PIRAT_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_1077_PIR_PIRAT_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_963_PIR_Malcom_NW, "SAMMELN");
				B_StartOtherRoutine	(Mod_941_PIR_Angus_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_942_PIR_Hank_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_939_PIR_Owen_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_940_PIR_Samuel_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_936_PIR_Matt_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_938_PIR_Morgan_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_1080_PIR_PIRAT_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_935_PIR_Malcom_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_933_PIR_Garett_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_934_PIR_Henry_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_932_PIR_Francis_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_930_PIR_Bones_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_931_PIR_Brandon_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_775_PIR_Skip_AW, "SAMMELN");
				B_StartOtherRoutine	(Mod_929_PIR_Bill_AW, "SAMMELN");

				Wld_SendTrigger	("EVT_PIRATENTOR");

				Mod_BEL_GregOwen = 2;

				CutsceneAn = FALSE;
			};

			Mod_BEL_GregOwen_Counter += 1;
		};
	};

	if (CurrentLevel == MINENTAL_ZEN)
	{
		if (Mod_Gomez_Timer > 0)
		{
			if (!Hlp_IsValidHandle(View_GomezTimer))
			{
				var int fontHeight; fontHeight = Print_GetFontHeight(FONT_Screen) + 10;
				View_GomezTimer = View_CreatePxl	(Print_Screen[PS_X] - 170, 50, Print_Screen[PS_X] - 20, 50 + fontHeight);
				View_GomezKillsIch = View_CreatePxl	(Print_Screen[PS_X] - 170, 50 + fontHeight, Print_Screen[PS_X] - 20, 50 + 2 * fontHeight);
				View_GomezKills = View_CreatePxl	(Print_Screen[PS_X] - 170, 50 + 2 * fontHeight, Print_Screen[PS_X] - 20, 50 + 3 * fontHeight);

				View_Open	(View_GomezTimer);
				View_Open	(View_GomezKillsIch);
				View_Open	(View_GomezKills);
			};

			View_DeleteText	(View_GomezTimer);
			View_AddText	(View_GomezTimer, 0, 0, IntToString(Mod_Gomez_Timer), FONT_Screen);

			View_DeleteText	(View_GomezKillsIch);
			View_AddText	(View_GomezKillsIch, 0, 0, ConcatStrings("Ja: ", IntToString(Mod_Gomez_HasenKiller2 / 2)), FONT_Screen);

			View_DeleteText	(View_GomezKills);
			View_AddText	(View_GomezKills, 0, 0, ConcatStrings("Gomez: ", IntToString(Mod_Gomez_HasenKiller)), FONT_Screen);

			if (Mod_Gomez_Timer == 1) {
				View_DeleteText	(View_GomezTimer);
				View_Delete	(View_GomezTimer);

				View_DeleteText	(View_GomezKillsIch);
				View_Delete	(View_GomezKillsIch);

				View_DeleteText	(View_GomezKills);
				View_Delete	(View_GomezKills);
			};

			Mod_Gomez_Timer -= 1;
		};

		if (GardeCutscene_Counter == 104)
		{
			// Festung

			Wld_InsertNpc	(Mod_1999_UntoterNovize_04_MT,	"OC1");
			Wld_InsertNpc	(Mod_4000_UntoterNovize_05_MT,	"OC1");
			Wld_InsertNpc	(Mod_4001_UntoterNovize_05_MT,	"OC1");
			Wld_InsertNpc	(Mod_4002_UntoterNovize_06_MT,	"OC1");
			Wld_InsertNpc	(Mod_4003_UntoterNovize_07_MT,	"OC1");
			Wld_InsertNpc	(Mod_4004_UntoterNovize_08_MT,	"OC1");
			Wld_InsertNpc	(Mod_4005_UntoterNovize_09_MT,	"OC1");
			Wld_InsertNpc	(Mod_4006_UntoterMagier_01_MT,	"OC1");
			Wld_InsertNpc	(Mod_4007_UntoterMagier_02_MT,	"OC1");
			Wld_InsertNpc	(Mod_4008_UntoterMagier_03_MT,	"OC1");

			// altes Lager von dem J�ger da unten ^^
		
			Wld_InsertNpc	(Mod_4031_UntoterNovize_16_MT, "OC1");
			Wld_InsertNpc	(Mod_4032_UntoterNovize_17_MT, "OC1");
			Wld_InsertNpc	(Mod_4033_UntoterNovize_18_MT, "OC1");
			Wld_InsertNpc	(Mod_4034_UntoterNovize_19_MT, "OC1");
			Wld_InsertNpc	(Mod_4035_UntoterMagier_04_MT, "OC1");
			Wld_InsertNpc	(Mod_4036_UntoterMagier_05_MT, "OC1");

			// Belagerer bei Onars Hof
		
			Wld_InsertNpc	(Mod_4037_UntoterNovize_20_MT, "OC1");
			Wld_InsertNpc	(Mod_4038_UntoterNovize_21_MT, "OC1");
			Wld_InsertNpc	(Mod_4039_UntoterNovize_22_MT, "OC1");
			Wld_InsertNpc	(Mod_4040_UntoterNovize_23_MT, "OC1");
			Wld_InsertNpc	(Mod_4041_UntoterNovize_24_MT, "OC1");
			Wld_InsertNpc	(Mod_4042_UntoterNovize_25_MT, "OC1");
			Wld_InsertNpc	(Mod_4043_UntoterNovize_26_MT, "OC1");
			Wld_InsertNpc	(Mod_4044_UntoterNovize_27_MT, "OC1");
			Wld_InsertNpc	(Mod_4045_UntoterNovize_28_MT, "OC1");
			Wld_InsertNpc	(Mod_4046_UntoterNovize_29_MT, "OC1");
			Wld_InsertNpc	(Mod_4047_UntoterMagier_06_MT, "OC1");
			Wld_InsertNpc	(Mod_4048_UntoterMagier_07_MT, "OC1");
			Wld_InsertNpc	(Mod_4049_UntoterMagier_08_MT, "OC1");

			// Talkessel f�r Finalschlacht
			
			Wld_InsertNpc	(Mod_4051_UntoterNovize_30_MT, "OC1");
			Wld_InsertNpc	(Mod_4052_UntoterNovize_31_MT, "OC1");
			Wld_InsertNpc	(Mod_4053_UntoterNovize_32_MT, "OC1");
			Wld_InsertNpc	(Mod_4054_UntoterNovize_33_MT, "OC1");
			Wld_InsertNpc	(Mod_4055_UntoterNovize_34_MT, "OC1");
			Wld_InsertNpc	(Mod_4056_UntoterNovize_35_MT, "OC1");
			Wld_InsertNpc	(Mod_4057_UntoterNovize_36_MT, "OC1");
			Wld_InsertNpc	(Mod_4058_UntoterNovize_37_MT, "OC1");
			Wld_InsertNpc	(Mod_4059_UntoterNovize_38_MT, "OC1");
			Wld_InsertNpc	(Mod_4060_UntoterNovize_39_MT, "OC1");
			Wld_InsertNpc	(Mod_4061_UntoterMagier_09_MT, "OC1");
			Wld_InsertNpc	(Mod_4062_UntoterMagier_10_MT, "OC1");
			Wld_InsertNpc	(Mod_4063_UntoterMagier_11_MT, "OC1");
			Wld_InsertNpc	(Mod_4064_UntoterMagier_12_MT, "OC1");
			Wld_InsertNpc	(Mod_4065_UntoterMagier_13_MT, "OC1");
			Wld_InsertNpc	(Mod_4066_UntoterMagier_14_MT, "OC1");
			Wld_InsertNpc	(Mod_4067_UntoterMagier_15_MT, "OC1");
			Wld_InsertNpc	(Mod_4068_UntoterMagier_16_MT, "OC1");
			Wld_InsertNpc	(Mod_4069_UntoterMagier_17_MT, "OC1");
			Wld_InsertNpc	(Mod_4070_UntoterMagier_18_MT, "OC1");

			B_StartOtherRoutine	(Mod_779_SLD_Bullco_MT, "FMC");
			B_StartOtherRoutine	(Mod_781_SLD_Cipher_MT, "FMC");
			B_StartOtherRoutine	(Mod_784_SLD_Fester_MT, "FMC");
			B_StartOtherRoutine	(Mod_1269_SLD_Blade_MT, "FMC");

			GardeCutscene_Counter = 105;
		};

		if (Beliar_TalkesselSchlacht == 1)
		{
			if (Talkessel_Counter == 0)
			{
				AI_TurnToNpc	(Mod_520_DMR_Raven_MT, hero);
				AI_TurnToNpc	(hero, Mod_520_DMR_Raven_MT);

				AI_Output(Mod_520_DMR_Raven_MT, NULL, "Info_Mod_BS_Rede_03_00"); //Ciesze sie, ze jestes tutaj. Jest jeszcze cos innego, co musze wam powiedziec.
			};

			if (Talkessel_Counter == 5)
			{
				AI_Output(hero, NULL, "Info_Mod_BS_Rede_15_01"); //Co to jest?
			};

			if (Talkessel_Counter == 10)
			{
				AI_Output(Mod_520_DMR_Raven_MT, NULL, "Info_Mod_BS_Rede_03_02"); //Nieumarlych prowadzi jeden z szesciu straznik�w Innos�w. Musisz go pokonac.
			};

			if (Talkessel_Counter == 15)
			{
				AI_Output(hero, NULL, "Info_Mod_BS_Rede_15_03"); //Wiedzialem, ze to przyjdzie.
			};

			if (Talkessel_Counter == 20)
			{
				AI_Output(Mod_520_DMR_Raven_MT, NULL, "Info_Mod_BS_Rede_03_04"); //Badz ostrozny, straznik Innos' jest bardzo silny.
			};

			if (Talkessel_Counter == 25)
			{
				AI_Output(hero, NULL, "Info_Mod_BS_Rede_15_05"); //Przywyklem do tego.
			};

			if (Talkessel_Counter == 30)
			{
				AI_TurnToNpc	(Mod_779_SLD_Bullco_MT, hero);
				AI_TurnToNpc	(hero, Mod_779_SLD_Bullco_MT);

				AI_Output(Mod_779_SLD_Bullco_MT, NULL, "Info_Mod_BS_Rede_06_06"); //Chodzmy dalej, kopnijmy troche tylk�w z tymi wl�czegami.
			};

			if (Talkessel_Counter == 35)
			{
				AI_Output(hero, NULL, "Info_Mod_BS_Rede_15_07"); //Nic lepszego niz to.
			};

			if (Talkessel_Counter == 40)
			{
				AI_Output(Mod_779_SLD_Bullco_MT, NULL, "Info_Mod_BS_Rede_06_08"); //(smiech) Tak jak dawne czasy, prawda?
			};

			if (Talkessel_Counter == 45)
			{
				AI_Output(hero, NULL, "Info_Mod_BS_Rede_15_09"); //Tak, jak za dawnych czas�w.
			};

			if (Talkessel_Counter == 50)
			{
				AI_TurnToNpc	(Mod_520_DMR_Raven_MT, Mod_517_DMR_Gomez_MT);
				AI_TurnToNpc	(hero, Mod_520_DMR_Raven_MT);

				AI_Output(Mod_520_DMR_Raven_MT, NULL, "Info_Mod_BS_Rede_03_10"); //Nadszedl czas na atak. Atakuj!
			};

			if (Talkessel_Counter == 55)
			{
				B_StartOtherRoutine	(Mod_520_DMR_Raven_MT, "ANGRIFF");
				B_StartOtherRoutine	(Mod_517_DMR_Gomez_MT, "ANGRIFF");
				B_StartOtherRoutine	(Mod_1030_SNOV_Abdi_MT, "ANGRIFF");
				B_StartOtherRoutine	(Mod_518_SMK_Scar_MT, "ANGRIFF");
				B_StartOtherRoutine	(Mod_1029_SMK_Fahim_MT, "ANGRIFF");
				B_StartOtherRoutine	(Mod_1027_SMK_Eduard_MT, "ANGRIFF");
				B_StartOtherRoutine	(Mod_779_SLD_Bullco_MT, "ANGRIFF");
				B_StartOtherRoutine	(Mod_781_SLD_Cipher_MT, "ANGRIFF");
				B_StartOtherRoutine	(Mod_784_SLD_Fester_MT, "ANGRIFF");
				B_StartOtherRoutine	(Mod_1269_SLD_Blade_MT, "ANGRIFF");
			};

			if (Talkessel_Counter == 60)
			{
				AI_GotoWp	(hero, "OW_PATH_086");

				Beliar_TalkesselSchlacht = 2;

				Wld_InsertNpc	(GardeInnos_4050_Argibast, "OW_PATH_086");
			};

			Talkessel_Counter += 1;
		};

		if (Npc_KnowsInfo(hero, Info_Mod_Raven_SoeldnerDabei))
		&& (Beliar_TalkesselSchlacht == 0)
		{
			if (!Npc_IsInState(Mod_520_DMR_Raven_MT, ZS_Talk)) {
				Beliar_TalkesselSchlacht = 1;

				Wld_SetTime	(23,59);

				AI_Teleport	(hero, "OW_PATH_3001_01");
			};
		};

		// Besessener Novize taucht nicht korrekt auf

		if (!Npc_KnowsInfo(hero, Info_Mod_BesessenerNovize_Hi))
		{
			if (Hlp_IsValidNpc(Mod_4015_SNOV_BesessenerNovize_MT)) {
				if (!Npc_IsDead(Mod_4015_SNOV_BesessenerNovize_MT)) {
					if (Wld_IsTime(01,00,03,00))
					&& (Npc_GetDistToWP(Mod_4015_SNOV_BesessenerNovize_MT, "PALTOBURG_5") > 2000)
					{
						AI_Teleport	(Mod_4015_SNOV_BesessenerNovize_MT, "PALTOBURG_5");
						AI_Teleport	(Mod_4015_SNOV_BesessenerNovize_MT, "PALTOBURG_5");
					}
					else if (Wld_IsTime(03,00,01,00))
					&& (Npc_GetDistToWP(Mod_4015_SNOV_BesessenerNovize_MT, "PALTOBURG_5") <= 2000)
					{
						AI_Teleport	(Mod_4015_SNOV_BesessenerNovize_MT, "TOT");
						AI_Teleport	(Mod_4015_SNOV_BesessenerNovize_MT, "TOT");
					};
				};
			};
		};

		// Ungeheuer in der Bibliothek

		if (Kapitel >= 5)
		&& (Mod_BeliarBibScene == 0)
		{
			Mod_BeliarBibScene = 1;

			B_StartOtherRoutine	(Mod_7755_KDS_SchwarzerMagier_MT, "BIBSCENE");
			B_StartOtherRoutine	(Mod_7756_KDS_SchwarzerMagier_MT, "BIBSCENE");
			B_StartOtherRoutine	(Mod_473_DMB_Andokai_MT, "BIBSCENE");

			B_KillNpc	(Mod_7757_KDS_SchwarzerMagier_MT);
			B_KillNpc	(Mod_7758_KDS_SchwarzerMagier_MT);
			B_KillNpc	(Mod_7759_KDS_SchwarzerMagier_MT);

			Wld_InsertItem	(ItWr_BeliarBibGruss,	"FP_ITEM_UNGEHEUERBELIARBIBBUCH");

			Wld_InsertNpc	(Mod_7785_SNOV_Novize_MT, "LABYRINTH_69");

			B_KillNpc	(Mod_7785_SNOV_Novize_MT);

			Wld_InsertNpc	(RazorSkelett_Bib_01, "LABYRINTH_70");
			Wld_InsertNpc	(RazorSkelett_Bib_02, "LABYRINTH_74");
			Wld_InsertNpc	(RazorSkelett_Bib_03, "LABYRINTH_52");
			Wld_InsertNpc	(RazorSkelett_Bib_04, "LABYRINTH_106");
			Wld_InsertNpc	(RazorSkelett_Bib_05, "LABYRINTH_130");
			Wld_InsertNpc	(RazorSkelett_Bib_06, "LABYRINTH_109");
			Wld_InsertNpc	(RazorSkelett_Bib_07, "LABYRINTH_8");
		};

		if (Mod_BeliarBibScene == 1)
		&& (Npc_GetDistToWP(hero, "LABYRINTH") < 750)
		{
			BeliarBibScene();
		};

		if (Mod_BeliarBibScene == 3) {
			if (Npc_IsDead(RazorSkelett_Bib_01))
			&& (Npc_IsDead(RazorSkelett_Bib_02))
			&& (Npc_IsDead(RazorSkelett_Bib_03))
			&& (Npc_IsDead(RazorSkelett_Bib_04))
			&& (Npc_IsDead(RazorSkelett_Bib_05))
			&& (Npc_IsDead(RazorSkelett_Bib_06))
			&& (Npc_IsDead(RazorSkelett_Bib_07))
			{
				Mod_BeliarBibScene = 4;

				B_LogEntry	(TOPIC_MOD_BELIAR_UNGEHEUER, "Biblioteka powinna byc ponownie oczyszczona. Andokai powinien o tym wiedziec.");
			};
		};
	};
};
