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
	B_LogEntry (TOPIC_TalentAlchemy,"Do warzenia eliksiru potrzebuje pustej butelki laboratoryjnej i niezbednych skladników do odpowiedniego eliksiru. Dzieki tym skladnikom mozna przygotowac pozadany napój przy stole alchemicznym."); 
	
	// ------ Trank brauen lernen ------
	if (potion == POTION_Health_01)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_01] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"OCENA ZNACZENIA KSZTALCENIA: 2 rosliny lecznicze i 1 rdestnica."); };
	
	if (potion == POTION_Health_02)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_02] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"KONTRAKT OBCIAZENIA: 2 ziola lecznicze i 1 rdestnica.");  };
	
	if (potion == POTION_Health_03)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_03] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"ELIXIATYZACJA POJEMNOSCI: 2 lecznicze korzenie i 1 wezel chwast.");  };
	
	if (potion == POTION_Mana_01)		{	PLAYER_TALENT_ALCHEMY[POTION_Mana_01] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"MANA ESSENZ?: 2 pokrzywy ogniowe i 1 wezel chwast.");  };
	
	if (potion == POTION_Mana_02)		{	PLAYER_TALENT_ALCHEMY[POTION_Mana_02] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"MANA EXTRAKT: 2 czerwona kapusta czerwona i 1 rdestnica.");  };
	
	if (potion == POTION_Mana_03)		{	PLAYER_TALENT_ALCHEMY[POTION_Mana_03] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Skladniki MANA ELIXIER?: 2 korzenie ognia i 1 rdestal?");  };
	
	if (potion == POTION_Speed)			{	PLAYER_TALENT_ALCHEMY[POTION_Speed] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"NAPOJE PREDKOSCI: 1 PLYTKA i 1 rdest i 1 rdestnica.");  };
	
	if (potion == POTION_Perm_STR)		{	PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Kliks sily: 1 smoczy korzen i 1 korona.");  };
	
	if (potion == POTION_Perm_DEX)		{	PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"ELIXIATY UMIEJETNOSCI: 1 jagoda goblinowa i 1 pólksiezyc.");  };
	
	if (potion == POTION_Perm_Mana)		{	PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"ELIXIZACJA SPIRITU: 1 korzen ognia i 1 kij koronowy.");  };
	
	if (potion == POTION_Perm_Health)	{	PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"ELIXIACJA ZYCIA ZYCIA: 1 korzen leczniczy i 1 korona.");  };
	
	if (potion == POTION_AdanosWohltat)	{	PLAYER_TALENT_ALCHEMY[POTION_AdanosWohltat] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"ADANOS WOHLTAT?: 1 lekkie gojenie ran, 1 wisnia wisniowa, 1 kij koronowy, 5 pokrzywek i 4 rosliny lecznicze.");  };

	if (potion == POTION_Health_05)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_05] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"NIZ SKLADNIKI POMOCNICZE: 3 rosliny lecznicze i 1 woda."); };

	if (potion == POTION_Health_06)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_06] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Skladniki: 4 rosliny lecznicze i 1 jalowiec."); };

	if (potion == POTION_Health_07)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_07] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"BANEK SWIATLA SWIATLA?: 2 ziola lecznicze i 1 jalowiec."); };
	
	if (potion == POTION_Mana_05)		{	PLAYER_TALENT_ALCHEMY[POTION_Mana_05] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"LEKKIE CZLOWIEK: 3 pokrzywy przeciwpozarowe i 1 alkohol?");  };
	
	if (potion == POTION_Mana_06)		{	PLAYER_TALENT_ALCHEMY[POTION_Mana_06] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"BANEK ZARZADZANIA SWIATLEM: 2 korzenie i 1 alkohol.");  };
	
	if (potion == POTION_GiftNeutralisierer)		{	PLAYER_TALENT_ALCHEMY[POTION_GiftNeutralisierer] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"TYMCZASOWY TOXIC IMMUNITY TANK: 3 wedki zimowe, 2 paki lecznicze, 1 rokitnik blizniaczy?");  };
	
	if (potion == POTION_Gift)		{	PLAYER_TALENT_ALCHEMY[POTION_Gift] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"MIXTURA: 5 kolców krwi, 5 muchówek, 5 muchówek, 5 grzybów psyllium, 1 butelka wody laboratoryjnej.");  };
	
	if (potion == POTION_Gegengift)		{	PLAYER_TALENT_ALCHEMY[POTION_Gegengift] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"TOKSYKA: 1 eliksir leczniczy, 1 pak gojacy sie, 2 sutek.");  };
	
	if (potion == POTION_Genesung)		{	PLAYER_TALENT_ALCHEMY[POTION_Genesung] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"KONTAINER GENESACJI: 1 wyciag z gojenia, 1 jalowiec, 4 rosliny lecznicze, 1 rdestnica polowa.");  };
	
	if (potion == POTION_Regeneration)		{	PLAYER_TALENT_ALCHEMY[POTION_Regeneration] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"REJESTRACJA STANOWISKO REGENERACYJNE: 1 mleko, 10 niebieskich piosenek?");  };

	PrintScreen			(PRINT_LearnAlchemy, -1, -1, FONT_Screen, 2);
	
	// ------ bei jedem Trank: Alchemy-Talent lernen (programmvariable, wird nur zur Ausgabe in StatusScreen benutzt) ------
	Npc_SetTalentSkill 	(oth, NPC_TALENT_ALCHEMY, 1);
	
	return TRUE;
};
