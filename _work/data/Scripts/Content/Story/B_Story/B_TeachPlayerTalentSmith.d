// ************************
// B_TeachPlayerTalentSmith
// ************************

func int B_TeachPlayerTalentSmith (var C_NPC slf, var C_NPC oth, var int waffe)
{
	// ------ Kosten festlegen ------
	var int kosten;
	kosten = B_GetLearnCostTalent(oth, NPC_TALENT_SMITH, waffe);
	
	
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
	
	Log_CreateTopic (TOPIC_TalentSmith,LOG_NOTE);
	B_LogEntry (TOPIC_TalentSmith,"Um eine Waffe zu schmiede, brauche ich zun�chst ein St�ck Rohstahl. An einem Schmiedefeuer muss ich den Stahl erhitzen und anschlie�end an einem Amboss in die gew�nschte Form bringen. F�r hochwertigere Waffe ben�tigt man h�ufig noch Substanzen, welche der Waffe besondere Eigenschaften verleihen.");
	
	// ------ Waffe schmieden lernen ------
	//Bennet
	if (waffe == WEAPON_Common)				{	PLAYER_TALENT_SMITH[WEAPON_Common] 			= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"F�r ein einfaches Schwert ben�tige ich keine weiteren Zutaten.");};
	if (waffe == WEAPON_1H_Special_01)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_01] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Wenn ich 1 Erz hinzugebe, kann ich mir ein �ERZ-LANGSCHWERT� schmieden.");};
	if (waffe == WEAPON_2H_Special_01)		{	PLAYER_TALENT_SMITH[WEAPON_2H_Special_01] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Wenn ich 2 Erz hinzugebe, kann ich mir einen �ERZ-ZWEIH�NDER� schmieden.");};
	if (waffe == WEAPON_1H_Special_02)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_02] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Wenn ich 2 Erz hinzugebe, kann ich mir ein �ERZ-BASTARDSCHWERT� schmieden.");};
	if (waffe == WEAPON_2H_Special_02)		{	PLAYER_TALENT_SMITH[WEAPON_2H_Special_02] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Wenn ich 3 Erz hinzugebe, kann ich mir einen �SCHWEREN ERZ-ZWEIH�NDER� schmieden.");};
	if (waffe == WEAPON_1H_Special_03)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Wenn ich 20 Erz hinzugebe, kann ich mir eine �ERZ-SCHLACHTKLINGE� schmieden.");};
	if (waffe == WEAPON_1H_Special_03_Dex)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Wenn ich 20 Erz hinzugebe, kann ich mir einen �ERZ-SCHLACHTSTECHER� schmieden.");};
	if (waffe == WEAPON_2H_Special_03)		{	PLAYER_TALENT_SMITH[WEAPON_2H_Special_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Wenn ich 30 Erz hinzugebe, kann ich mir eine �SCHWERE ERZ-SCHLACHTKLINGE� schmieden.");};
	if (waffe == WEAPON_1H_Special_04)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Wenn ich 60 Erz und 5 Drachenblut hinzugebe, kann ich mir einen �ERZ-DRACHENT�TER� schmieden.");};
	if (waffe == WEAPON_1H_Special_04_Dex)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_04_Dex] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Wenn ich 60 Erz und 5 Drachenblut hinzugebe, kann ich mir einen �ERZ-DRACHENSTECHER� schmieden.");};
	if (waffe == WEAPON_2H_Special_04)		{	PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Wenn ich 80 Erz und 7 Drachenblut hinzugebe, kann ich mir einen �GRO�EN ERZ-DRACHENT�TER� schmieden.");};
	
	//Harad - Addon
	if (waffe == WEAPON_1H_Harad_01)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Ich kann jetzt ein edles Schwert schmieden."); };
	if (waffe == WEAPON_1H_Harad_02)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Ich kann jetzt auch ein edles Langschwert schmieden."); };
	if (waffe == WEAPON_1H_Harad_03)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Ich kann jetzt sogar eine Rubinklinge schmieden."); };
	if (waffe == WEAPON_1H_Harad_04)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] 	= TRUE;
	B_LogEntry (TOPIC_TalentSmith,"Harad hat mir beigebracht, 'El Bastardo' zu schmieden - eine der besten Einhandwaffen, die es gibt!"); };
	
	PrintScreen			(PRINT_LearnSmith, -1, -1, FONT_Screen, 2);
	
	// ------ bei jeder Waffe: Waffen-Talent lernen (programmvariable, wird nur zur Ausgabe in StatusScreen benutzt) ------
	Npc_SetTalentSkill 	(oth, NPC_TALENT_SMITH, 1);
	return TRUE;
};
	

	
	
	
	
	
	
	

	
	

	
	
	
	
	

	
	
	

