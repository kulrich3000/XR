// ******************
// B_TeachMagicCircle
// ******************

func int B_TeachMagicCircle (var C_NPC slf, var C_NPC oth, var int circle)
{
	// ------ Kosten festlegen ------
	var int kosten;
	kosten = B_GetLearnCostTalent(oth, NPC_TALENT_MAGE, circle);
	
	
	// EXIT IF...
	
	// ------ falscher Parameter ------
	if (circle < 1) || (circle > 6)
	{
		Print ("*** ERROR: Wrong Parameter ***");
		return FALSE;
	};
	
	// ------ Player hat zu wenig Lernpunkte ------
	if (oth.lp < kosten)
	&& (Mod_Schwierigkeit != 4)
	{
		PrintScreen	(PRINT_NotEnoughLP, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNNOPOINTS");
		
		return FALSE;
	}
	else if (Npc_HasItems(hero, ItMi_Gold) < kosten)
	&& (Mod_Schwierigkeit == 4)
	{
		PrintScreen	(PRINT_NotEnoughGold, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNGOLD");
		
		return FALSE;
	};
	
	
	// FUNC
	
	// ------ Lernpunkte abziehen ------			
	if (Mod_Schwierigkeit != 4)
	{
		oth.lp = oth.lp - kosten;
	}
	else
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, kosten);
	};
	
	// ------ Kreis setzen ------
	Npc_SetTalentSkill (oth, NPC_TALENT_MAGE, circle);
	Log_CreateTopic (TOPIC_TalentMagicCircle,LOG_NOTE);
	B_LogEntry (TOPIC_TalentMagicCircle,"The magical runes accessible to me are divided into circles. I cannot use a saying with a higher circle than I have mastered."); 
	
	// ------ 1. Kreis ------
	if (circle == 1)
	{
		if (Mod_Gilde == 12)
		|| (Mod_Gilde == 13)
		|| (Mod_Gilde == 14)
		|| (Mod_Gilde == 15)
		|| (Mod_Gilde == 16)
		{
			PrintScreen	(PRINT_LearnCircle_1, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The proverbs of the 1. Circles are: Light, stealing energy, healing light wounds and calling the wolf.");
			return TRUE;
		}
		else if (Mod_Gilde == 6)
		|| (Mod_Gilde == 7)
		|| (Mod_Gilde == 8)
		{
			PrintScreen	(PRINT_LearnCircle_1, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The proverbs of the 1. Circles are: Light, fire arrow and light wounds heal.");
			return TRUE;
		}
		else
		{
			PrintScreen	(PRINT_LearnCircle_1, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The proverbs of the 1. Circles are: Light, lightning, ice arrow and light wounds heal.");
			return TRUE;
		};
	};
	
	// ------ 2. Kreis ------
	if (circle == 2)
	{
		if (Mod_Gilde == 12)
		|| (Mod_Gilde == 13)
		|| (Mod_Gilde == 14)
		|| (Mod_Gilde == 15)
		|| (Mod_Gilde == 16)
		{
			PrintScreen	(PRINT_LearnCircle_2, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The proverbs of the 2. Circles are: Goblin skeleton created.");
			return TRUE;
		}
		else if (Mod_Gilde == 6)
		|| (Mod_Gilde == 7)
		|| (Mod_Gilde == 8)
		{
			PrintScreen	(PRINT_LearnCircle_2, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The proverbs of the 2. Circles are: Fireball.");
			return TRUE;
		}
		else
		{
			PrintScreen	(PRINT_LearnCircle_2, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The proverbs of the 2. Circles are: Ice ball and ice lance.");
			return TRUE;
		};
	};
	
	// ------ 3. Kreis ------
	if (circle == 3)
	{
		if (Mod_Gilde == 13)
		|| (Mod_Gilde == 14)
		{
			PrintScreen	(PRINT_LearnCircle_3, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The proverbs of the 3. Circles are: heal medium wounds, create skeleton, create guardians and Beliar's anger.");
			return TRUE;
		}
		else if (Mod_Gilde == 7)
		|| (Mod_Gilde == 8)
		{
			PrintScreen	(PRINT_LearnCircle_3, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The proverbs of the 3. Circles are: medium wounds heal and small firestorm.");
			return TRUE;
		}
		else
		{
			PrintScreen	(PRINT_LearnCircle_3, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The proverbs of the 3. Circles are: medium wounds heal, bullet flash, geyser, storm and ice block.");
			return TRUE;
		};
	};
	
	// ------ 4. Kreis ------
	if (circle == 4)
	{
		if (Mod_Gilde == 13)
		|| (Mod_Gilde == 14)
		{
			PrintScreen	(PRINT_LearnCircle_4, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The proverbs of the 4. Circles are: create Golem, destroy undead and create zombie.");
			return TRUE;
		}
		else if (Mod_Gilde == 7)
		|| (Mod_Gilde == 8)
		{
			PrintScreen	(PRINT_LearnCircle_4, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The proverbs of the 4. Circles are: Destroy undead and Big Fireball.");
			return TRUE;
		}
		else
		{
			PrintScreen	(PRINT_LearnCircle_4, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The proverbs of the 4. Circles are: lightning strike and water fist.");
			return TRUE;
		};
	};
	
	// ------ 5. Kreis ------
	if (circle == 5)
	{
		if (Mod_Gilde == 14)
		{
			PrintScreen	(PRINT_LearnCircle_5, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The sayings of the 5. Circles are: scream of the dead, summon demon and heal heavy wounds.");
			return TRUE;
		}
		else if (Mod_Gilde == 8)
		{
			PrintScreen	(PRINT_LearnCircle_5, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The sayings of the 5. Circles are: Large firestorm and severe wounds heal.");
			return TRUE;
		}
		else
		{
			PrintScreen	(PRINT_LearnCircle_5, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The sayings of the 5. Circles are: ice wave and heavy wounds heal.");
			return TRUE;
		};
	};
	
	// ------ 6. Kreis ------
	if (circle == 6)
	{
		if (Mod_Gilde == 14)
		{
			PrintScreen	(PRINT_LearnCircle_6, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The sayings of the 6. Circles are: Breath of Death and Army of Darkness.");
			return TRUE;
		}
		else if (Mod_Gilde == 8)
		{
			PrintScreen	(PRINT_LearnCircle_6, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The sayings of the 6. Circles are: rain of fire, monsters shrinking and holy bullet.");
			return TRUE;
		}
		else
		{
			PrintScreen	(PRINT_LearnCircle_6, -1, -1, FONT_Screen, 2);
			B_LogEntry (TOPIC_TalentMagicCircle,"The sayings of the 6. Circles are: Ice rain and monsters shrink.");
			return TRUE;
		};
	};

	Mod_Circle	=	circle;
};
