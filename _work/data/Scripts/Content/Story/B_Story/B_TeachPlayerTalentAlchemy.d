// **************************
// B_TeachPlayerTalentAlchemy
// **************************

func int B_TeachPlayerTalentAlchemy (var C_NPC slf, var C_NPC oth, var int potion)
{
	// ------ Kosten festlegen ------
	var int kosten;
	kosten = B_GetLearnCostTalent(oth, NPC_TALENT_ALCHEMY, potion);
	
	
	//EXIT IF...
	
	// ------ Player hat zu wenig Lernpunkte ------
	if (oth.lp < kosten)
	&& (Mod_Schwierigkeit != 4)
	{
		PrintScreen	(PRINT_NotEnoughLearnPoints, -1,-1, FONT_ScreenSmall ,2);
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
	
	Log_CreateTopic (TOPIC_TalentAlchemy,LOG_NOTE);
	B_LogEntry (TOPIC_TalentAlchemy,"To brew a potion, I need an empty laboratory bottle and the necessary ingredients for the desired potion. With these ingredients you can prepare the desired drink at an alchemy table."); 
	
	// ------ Trank brauen lernen ------
	if (potion == POTION_Health_01)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_01] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients?ESSENCE OF HEALING?: 2 medicinal plants and 1 knotweed."); };
	
	if (potion == POTION_Health_02)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_02] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? EXTRACT OF HEALING?: 2 medicinal herbs and 1 knotweed.");  };
	
	if (potion == POTION_Health_03)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_03] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? ELIXIATION OF HEALING?: 2 healing roots and 1 knotweed.");  };
	
	if (potion == POTION_Mana_01)		{	PLAYER_TALENT_ALCHEMY[POTION_Mana_01] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? MANA ESSENZ?: 2 fire nettles and 1 knotweed.");  };
	
	if (potion == POTION_Mana_02)		{	PLAYER_TALENT_ALCHEMY[POTION_Mana_02] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? MANA EXTRAKT?: 2 red cabbage and 1 knotweed.");  };
	
	if (potion == POTION_Mana_03)		{	PLAYER_TALENT_ALCHEMY[POTION_Mana_03] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? MANA ELIXIER?: 2 fire roots and 1 knotweed");  };
	
	if (potion == POTION_Speed)			{	PLAYER_TALENT_ALCHEMY[POTION_Speed] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? DRINK OF SPEED?: 1 Snapwort and 1 knotweed");  };
	
	if (potion == POTION_Perm_STR)		{	PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? Elixir of Strength?: 1 Dragon Root and 1 Crown.");  };
	
	if (potion == POTION_Perm_DEX)		{	PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"INGREDIENT? ELIXIATES OF SKILLS?: 1 goblin berry and 1 crescent.");  };
	
	if (potion == POTION_Perm_Mana)		{	PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? ELIXIATION OF THE SPIRIT?: 1 fire root and 1 crown stick.");  };
	
	if (potion == POTION_Perm_Health)	{	PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? ELIXIATION OF LIFE?: 1 medicinal root and 1 crown.");  };
	
	if (potion == POTION_AdanosWohltat)	{	PLAYER_TALENT_ALCHEMY[POTION_AdanosWohltat] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? ADANOS WOHLTAT?: 1 light wound healing, 1 troll cherry, 1 crown stick, 5 nettles and 4 medicinal plants.");  };

	if (potion == POTION_Health_05)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_05] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"INGREDIENTS? THANK OF RAPID HEALING?: 3 medicinal plants and 1 water."); };

	if (potion == POTION_Health_06)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_06] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients: 4 medicinal plants and 1 juniper."); };

	if (potion == POTION_Health_07)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_07] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? BANK OF LIGHT HEALING?: 2 medicinal herbs and 1 juniper."); };
	
	if (potion == POTION_Mana_05)		{	PLAYER_TALENT_ALCHEMY[POTION_Mana_05] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? LIGHT MANATRANK?: 3 fire nettles and 1 alcohol");  };
	
	if (potion == POTION_Mana_06)		{	PLAYER_TALENT_ALCHEMY[POTION_Mana_06] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? LIGHT MANAGEMENT BANK: 2 fire roots and 1 alcohol");  };
	
	if (potion == POTION_GiftNeutralisierer)		{	PLAYER_TALENT_ALCHEMY[POTION_GiftNeutralisierer] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? TEMPORARY TOXIC IMMUNITY TANK?: 3 winter rod, 2 healing bud, 1 twin buckthorn");  };
	
	if (potion == POTION_Gift)		{	PLAYER_TALENT_ALCHEMY[POTION_Gift] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? MIXTURE?: 5 blood fly spikes, 5 toadstools, 5 psyllium fungi, 1 bottle of laboratory water.");  };
	
	if (potion == POTION_Gegengift)		{	PLAYER_TALENT_ALCHEMY[POTION_Gegengift] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? TOXIC?: 1 healing elixir, 1 healing bud, 2 field knotweed");  };
	
	if (potion == POTION_Genesung)		{	PLAYER_TALENT_ALCHEMY[POTION_Genesung] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? CONTAINER OF GENESATION?: 1 healing extract, 1 juniper, 4 medicinal plants, 1 field knotweed");  };
	
	if (potion == POTION_Regeneration)		{	PLAYER_TALENT_ALCHEMY[POTION_Regeneration] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Ingredients? REGENERATIONSTRANK?: 1 milk, 10 blue songs");  };

	PrintScreen			(PRINT_LearnAlchemy, -1, -1, FONT_Screen, 2);
	
	// ------ bei jedem Trank: Alchemy-Talent lernen (programmvariable, wird nur zur Ausgabe in StatusScreen benutzt) ------
	Npc_SetTalentSkill 	(oth, NPC_TALENT_ALCHEMY, 1);
	
	return TRUE;
};
