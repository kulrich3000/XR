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
	B_LogEntry (TOPIC_TalentSmith,"Do podkuwania pistoletu potrzebuje najpierw kawalka surowej stali. Musze podgrzac stal kuznia, a nastepnie przeniesc ja na kowadelko do pozadanego ksztaltu. Do broni wyzszej jakosci potrzebne sa czesto substancje, które nadaja bron specjalnym wlasciwosciom.");
	
	// ------ Waffe schmieden lernen ------
	//Bennet
	if (waffe == WEAPON_Common)				{	PLAYER_TALENT_SMITH[WEAPON_Common] 			= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Do zwyklego miecza nie potrzebuje zadnych innych skladników.");};
	if (waffe == WEAPON_1H_Special_01)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_01] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Jesli dodam 1 o rude, to moge dla siebie stworzyc ERZ-LONGWERT?");};
	if (waffe == WEAPON_2H_Special_01)		{	PLAYER_TALENT_SMITH[WEAPON_2H_Special_01] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Jesli dodam 2 rude, to moge ja podrobic?");};
	if (waffe == WEAPON_1H_Special_02)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_02] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Jesli dodam 2 rude, to dla siebie sam moge zrobic ERZ BASTARDSWERT?");};
	if (waffe == WEAPON_2H_Special_02)		{	PLAYER_TALENT_SMITH[WEAPON_2H_Special_02] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Jesli dodam 3 rudy, to moge wykuc HEAVY ORE DWA RECZNE?");};
	if (waffe == WEAPON_1H_Special_03)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Jesli dodam 20 rudy, to czy moge zrobic rekawice?");};
	if (waffe == WEAPON_1H_Special_03_Dex)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Jesli dodam 20 rudy, to moge stworzyc ERZ-SLAUGHTER?");};
	if (waffe == WEAPON_2H_Special_03)		{	PLAYER_TALENT_SMITH[WEAPON_2H_Special_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Jesli dodam 30 rudy, to moge wykuc HEAVY BATTLE BLADE.");};
	if (waffe == WEAPON_1H_Special_04)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Jesli dodam 60 rudy i 5 krwi smoka, to dla siebie sam moge wykuc ERZ-DRACHENT ÖTER?");};
	if (waffe == WEAPON_1H_Special_04_Dex)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_04_Dex] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Jesli dodam 60 rudy i 5 krwi smoka, to moge dla siebie wykuc ERZ-DRACHENSTECHER?");};
	if (waffe == WEAPON_2H_Special_04)		{	PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Jesli dodam 80 rudy i 7 krwi smoka, to moge wykuc DUZY KILLER.");};
	
	//Harad - Addon
	if (waffe == WEAPON_1H_Harad_01)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Moge teraz wykuc szlachetny miecz."); };
	if (waffe == WEAPON_1H_Harad_02)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Moge teraz równiez stworzyc szlachetne slowo dlugograjace."); };
	if (waffe == WEAPON_1H_Harad_03)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Moge nawet teraz nawet wykuc rubinowe ostrze."); };
	if (waffe == WEAPON_1H_Harad_04)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] 	= TRUE;
	B_LogEntry (TOPIC_TalentSmith,"Harad nauczyl mnie, zebym wykupila 'El Bastardo' - jedna z najlepszych broni jednorecznych!"); };
	
	PrintScreen			(PRINT_LearnSmith, -1, -1, FONT_Screen, 2);
	
	// ------ bei jeder Waffe: Waffen-Talent lernen (programmvariable, wird nur zur Ausgabe in StatusScreen benutzt) ------
	Npc_SetTalentSkill 	(oth, NPC_TALENT_SMITH, 1);
	return TRUE;
};
	

	
	
	
	
	
	
	

	
	

	
	
	
	
	

	
	
	

