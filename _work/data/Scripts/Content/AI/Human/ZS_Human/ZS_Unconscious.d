// ********************************
// ZS_Unconscious
// --------------
// wird auch vom Spieler ausgef�hrt
// ********************************

func void ZS_Unconscious ()
{	
	Npc_PercEnable  	(self,	PERC_ASSESSMAGIC		,	B_AssessMagic				);
		
	// EXIT IF...
	
	if (C_BodyStateContains(self, BS_SWIM))
	|| (C_BodyStateContains(self, BS_DIVE))
	{
		Npc_ClearAIQueue 	(self);
		B_ClearPerceptions	(self);
		AI_StartState 		(self, ZS_Dead, 0, "");
		return;
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Xeres_Hi))
	&& (Mod_Xeres_Kampf01 < 2) {
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
	} else {
		self.attribute[ATR_HITPOINTS] = 1;
		self.aivar[AIV_Damage] = 1;
	};
	
	// FUNC
	
	// ------ Guardpassage resetten ------
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;
	
	// ------ RefuseTalk Counter resetten -----
	Npc_SetRefuseTalk(self,0);
	
	// ------ Immer wenn unconscious: Temp_Att (upset) zum Hero "resetten" ------
	Npc_SetTempAttitude(self, Npc_GetPermAttitude(self,hero));
	
	// ------ Bewegungs-Overlays resetten ------	
	B_StopLookAt	(self);
	AI_StopPointAt	(self);
	
	// ------ NSC hat gegen Spieler verloren ------
	// BUGFIX: Nicht, wenn verwandelt
	if (self.guild < GIL_SEPERATOR_HUM)
	&& (C_NpcIsHero(other))								
	{
		self.aivar[AIV_DefeatedByPlayer] = TRUE; //wird nur hier gesetzt, nie ver�ndert!
		B_SetAivar(self, AIV_LastFightAgainstPlayer, FIGHT_LOST);
		
		if (self.aivar[AIV_LastPlayerAR] == AR_NONE)
		&& (self.aivar[AIV_DuelLost] == FALSE) //also nur EINMAL
		&& (self.guild == GIL_SLD)
		{
			Sld_Duelle_gewonnen = Sld_Duelle_gewonnen + 1;
			self.aivar[AIV_DuelLost] = TRUE;
		};
	
		if (self.aivar[AIV_ArenaFight] == AF_RUNNING)
		{
			self.aivar[AIV_ArenaFight] = AF_AFTER;
		};
	};

	if (C_NpcIsHero(self))
	&& (Mod_REL_HenkerKampf == 2)
	{
		Mod_REL_HenkerKampf = 3;
	};
	
	// ------ NSC hat gegen Spieler gewonnen ------
	// BUGFIX: Nicht, wenn verwandelt
	if (C_NpcIsHero (self))
	{
		B_SetAivar(other, AIV_LastFightAgainstPlayer, FIGHT_WON);
		
		if (other.aivar[AIV_ArenaFight] == AF_RUNNING)
		{
			other.aivar[AIV_ArenaFight] = AF_AFTER;
		};
	};

	if (Mod_LeftysBauern == 2)
	{
		if (C_NpcIsHero(other))
		{
			if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Mod_2001_BAU_Horatio_MT))
			{
				Mod_Lefty_Horatio_Down = 1;
			};

			if (self.npctype == NPCTYPE_MT_REISBAUER)
			&& (B_GetAivar(self, AIV_BauerWentKo) == 0)
			{
				Mod_Lefty_Bauern_Down += 1;

				B_SetAivar(self, AIV_BauerWentKo, 1);
			};

			if (Mod_Lefty_Horatio_Down == 1)
			&& (Mod_Lefty_Bauern_Down >= 5)
			{
				Mod_LeftysBauern = 3;

				B_LogEntry	(TOPIC_MOD_SLD_LEFTYBAUERN, "I beat up Horatio and five more peasants. I should go to Lefty's now and let him know.");
			};
		};
	};

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Mod_1871_TPL_GorKaranto_MT))
	&& (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(Mod_1872_NONE_Unbekannt_MT)) {
		Wld_SendUnTrigger	("ARENAKAMERA");
	};
	
	// ------ weil sonst H�ndler bevor man zum ersten Mal TRADE gew�hlt hat nix haben ------
	B_GiveTradeInv(self);//Joly:	STEHEN LASSEN VOR ->(self.aivar[AIV_VictoryXPGiven] = TRUE)!!!!!!!!!!!!!!!
	B_ClearRuneInv(self);//Hoshi, damit der Player keine Runen findet!

	// ------ XP ------
	
	if (self.guild < GIL_SEPERATOR_HUM)
	&& (C_NpcIsHero(other))
	&& (Npc_IsInFightMode(other, FMODE_FIST)) {
		Spine_UpdateAchievementProgress(SPINE_ACHIEVEMENT_51, Spine_GetAchievementProgress(SPINE_ACHIEVEMENT_51) + 1);
	};
	
	B_EXPVerteiler (self, other);

	B_GiveDeathInv(self);
			
	// ------ Equippte Waffen k�nnen nicht genommen werden! ------
	AI_UnequipWeapons (self);
};
	
func int ZS_Unconscious_Loop ()
{
	if (C_NpcIsHero(self))
	&& (Npc_GetDistToNpc(hero, Mod_680_DMB_Xardas_MT) < 3000)
	{
		return LOOP_END;
	}
	else if (Npc_GetStateTime (self) < HAI_TIME_UNCONSCIOUS)
	&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Lich_11008_NW))
	{
		return LOOP_CONTINUE;
	}
	else
	{
		return LOOP_END;
	};
};

func void ZS_Unconscious_End ()
{	
	// ------ AIV nochmal resetten ------
	B_SetAivar(self, AIV_RANSACKED, FALSE);
	
	// ------ aufstehen (auch Spieler) ------
	AI_StandUp(self);
	

	// EXIT IF...
	
	// ------ self == Spieler ------
	if (Npc_IsPlayer(self))
	{
		return;		//Spieler bekommt Kontrolle wieder
	};
	
	// FUNC 
	
	// ------ Kommentar ablassen ------
	if (Npc_CanSeeNpcFreeLOS(self,other))
	&& (Npc_GetDistToNpc(self,other) < PERC_DIST_INTERMEDIAT)
	&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Lich_11008_NW))
	{
		B_TurnToNpc (self,other);
		
		if (C_NpcIsToughGuy(self))
		&& (Npc_GetPermAttitude(self, other) != ATT_HOSTILE)
		&& (self.npctype != NPCTYPE_FRIEND)
		{
			B_Say (self, other, "$NEXTTIMEYOUREINFORIT");
		}
		else
		{
			B_Say (self, other, "$OHMYHEAD");
		};
	};

	// ------ Waffe wiederholen ------

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Mod_1871_TPL_GorKaranto_MT)) {
		if (Npc_HasItems(self, ItMw_2H_Sword_Light_02) == 0) {
			AI_GotoItem	(self, ItMw_2H_Sword_Light_02);
			AI_TakeItem	(self, ItMw_2H_Sword_Light_02);
		};
	};

	Npc_PerceiveAll (self);
	
	if (Wld_DetectItem (self, ITEM_KAT_NF))
	{
		if (Hlp_IsValidItem (item) && Npc_GetDistToItem(self, item) < 750)
		{
			if (Npc_GetDistToItem (self, item) > 500)
			{
				AI_GotoItem (self, item);
			};

			AI_TakeItem (self, item);
		};
	};
	
	// ------ die besten Waffen anlegen ------
	AI_EquipBestMeleeWeapon(self);
	AI_EquipBestRangedWeapon(self);
	
	// ------ NSC heilt sich ------
	AI_StartState (self, ZS_HealSelf, 0, "");
	return;
};
