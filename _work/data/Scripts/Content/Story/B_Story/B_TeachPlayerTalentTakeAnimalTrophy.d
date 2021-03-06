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
	B_LogEntry (TOPIC_TalentAnimalTrophy, "Ich kann jetzt, wenn ich eine Rasierklinge dabei habe:");
	
	// ------ K�rperteil nehmen lernen ------
	
	if (trophy == TROPHY_Teeth) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Tieren die Z�hne entfernen.");};
	if (trophy == TROPHY_Blood) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Blood] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Menschen Blut abzapfen.");};
	if (trophy == TROPHY_Claws) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Tieren die Krallen abnehmen.");};
	if (trophy == TROPHY_TrollTeeth) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TrollTeeth] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Trollen die Hauer entfernen.");};
	if (trophy == TROPHY_SwampSharkTeeth) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SwampSharkTeeth] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Sumpfhaien die Z�hne entfernen.");};
	if (trophy == TROPHY_AlligatorClaws)		{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_AlligatorClaws]		= TRUE;
	B_LogEntry (TOPIC_TalentAnimalTrophy, "... Alligatoren die Krallen abnehmen.");};
	if (trophy == TROPHY_Fur) 				{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] 				= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Tieren das Fell abziehen.");};
	if (trophy == TROPHY_ReptileSkin) 		{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ReptileSkin] 		= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Reptilien h�uten.");}; //ADDON
	if (trophy == TROPHY_Heart) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Heart] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Golems und D�monen ihr Herz entnehmen.");};
	if (trophy == TROPHY_ShadowHorn) 		{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ShadowHorn] 		= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Schattenl�ufern das Horn entfernen.");};
	if (trophy == TROPHY_FireTongue) 		{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireTongue] 		= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Feuerwaranen die Zunge enfernen.");};
	if (trophy == TROPHY_BFWing) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... die Fl�gel von Blutfliegen vom K�rper l�sen.");};
	if (trophy == TROPHY_BFSting) 			{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] 			= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Blutfliegen den Stachel entfernen.");};
	if (trophy == TROPHY_Mandibles) 		{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Mandibles] 		= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Tieren ihre Greifzangen entfernen.");};
	if (trophy == TROPHY_CrawlerPlate) 		{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_CrawlerPlate] 	= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Minecrawler Warriors die Panzerplatten vom K�rper l�sen");};
	if (trophy == TROPHY_DrgSnapperHorn)	{	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DrgSnapperHorn] 	= TRUE;	
	B_LogEntry (TOPIC_TalentAnimalTrophy,"... Drachensnappern ihre H�rner entfernen.");};
	if (trophy == TROPHY_DragonScale) 		{	
												PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DragonScale] 		= TRUE;	
												
												B_LogEntry (TOPIC_TalentAnimalTrophy,"... Drachenschuppen vom K�rper eines toten Drachen l�sen.");	
											};
	if (trophy == TROPHY_DragonBlood)		{	
												PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DragonBlood] 		= TRUE;	
												
												B_LogEntry (TOPIC_TalentAnimalTrophy,"... toten Drachen ihr Blut abzapfen.");
											};

	PrintScreen			(PRINT_LearnTakeAnimalTrophy, -1, -1, FONT_Screen, 2);
	
	// ------ bei jedem K�rperteil: TakeAnimalTrophy-Talent lernen (programmvariable, wird nur zur Ausgabe in StatusScreen benutzt) ------
	Npc_SetTalentSkill 	(oth, NPC_TALENT_TAKEANIMALTROPHY, 1);
	return TRUE;
};
	


	
	
	
	

	
	

	
	
	
	
	

	
	
	

