// ***********************************
// B_TeachPlayerTalentTakeAnimalTrophy
// ***********************************

func int B_TeachPlayerTalentTakeAnimalTrophy (var C_NPC slf, var C_NPC oth, var int trophy)
{
	// ------ Kosten festlegen ------
	var int kosten;
	kosten = B_GetLearnCostTalent(oth, NPC_TALENT_TAKEANIMALTROPHY, trophy);
	
	
	//EXIT IF...
	
	// ------ Player hat zu wenig Lernpunkte ------
	if (oth.lp < kosten)
	&& (Mod_Schwierigkeit != 4)
	{
		PrintScreen	(PRINT_NotEnoughLearnPoints, -1,-1, FONT_ScreenSmall, 2);
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
	
	Log_CreateTopic (TOPIC_TalentAnimalTrophy, LOG_NOTE);
	B_LogEntry (TOPIC_TalentAnimalTrophy, "I can now, if I have a razor blade with me:");
	
	// ------ Körperteil nehmen lernen ------
	
	if (trophy == TROPHY_Teeth) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Animals remove their teeth.");};
	if (trophy == TROPHY_Blood) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Blood] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... people draw blood.");};
	if (trophy == TROPHY_Claws) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Animals take the claws off.");};
	if (trophy == TROPHY_TrollTeeth) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TrollTeeth] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Trolls remove the tusks.");};
	if (trophy == TROPHY_SwampSharkTeeth) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SwampSharkTeeth] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Swamp sharks remove the teeth.");};
	if (trophy == TROPHY_AlligatorClaws)		{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_AlligatorClaws]		= TRUE;
	B_LogEntry (TOPIC_TalentAnimalTrophy, "... Alligators, take the claws off.");};
	if (trophy == TROPHY_Fur) 				{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] 				= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Pluck the fur off animals.");};
	if (trophy == TROPHY_ReptileSkin) 		{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ReptileSkin] 		= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Skin reptiles.");}; //ADDON
	if (trophy == TROPHY_Heart) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Heart] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Golems and demons take her heart.");};
	if (trophy == TROPHY_ShadowHorn) 		{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ShadowHorn] 		= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Shadow-runners remove the horn.");};
	if (trophy == TROPHY_FireTongue) 		{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireTongue] 		= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Fire monitors remove the tongue.");};
	if (trophy == TROPHY_BFWing) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... release the wings of blood flies from the body.");};
	if (trophy == TROPHY_BFSting) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Blood flies remove the sting.");};
	if (trophy == TROPHY_Mandibles) 		{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Mandibles] 		= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... animals remove their grippers.");};
	if (trophy == TROPHY_CrawlerPlate) 		{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_CrawlerPlate] 	= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Minecrawler Warriors detach the armor plates from the body");};
	if (trophy == TROPHY_DrgSnapperHorn)	{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DrgSnapperHorn] 	= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Dragon snappers remove their horns.");};
	if (trophy == TROPHY_DragonScale) 		{	
												PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DragonScale] 		= TRUE;	
												
												B_LogEntry (TOPIC_TalentAnimalTrophy,"... Detach kite scales from the body of a dead kite.");	
											};
	if (trophy == TROPHY_DragonBlood)		{	
												PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DragonBlood] 		= TRUE;	
												
												B_LogEntry (TOPIC_TalentAnimalTrophy,"... dragons killed their blood.");
											};

	PrintScreen			(PRINT_LearnTakeAnimalTrophy, -1, -1, FONT_Screen, 2);
	
	// ------ bei jedem Körperteil: TakeAnimalTrophy-Talent lernen (programmvariable, wird nur zur Ausgabe in StatusScreen benutzt) ------
	Npc_SetTalentSkill 	(oth, NPC_TALENT_TAKEANIMALTROPHY, 1);
	return TRUE;
};
	


	
	
	
	

	
	

	
	
	
	
	

	
	
	

