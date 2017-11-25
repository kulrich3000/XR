// ************************
// B_TeachPlayerTalentRunes
// ************************

func int B_TeachPlayerTalentRunes (var C_NPC slf, var C_NPC oth, var int spell)
{
	// ------ Kosten festlegen ------
	var int kosten;
	kosten = B_GetLearnCostTalent(oth, NPC_TALENT_RUNES, spell);
	
	
	//EXIT IF...
	
	// ------ Player hat zu wenig Lernpunkte ------
	if (oth.lp < kosten)
	&& (Mod_Schwierigkeit != 4)
	{
		PrintScreen	(PRINT_NotEnoughLearnPoints, -1, -1, FONT_ScreenSmall, 2);
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
	
	Log_CreateTopic (TOPIC_TalentRunes, LOG_NOTE);
	B_LogEntry (TOPIC_TalentRunes, "Aby stworzyc rune, potrzebuje r�znych skladnik�w dla kazdej runy opr�cz roli pozadanego zaklecia. Dzieki tym skladnikom i pustej runie moge stworzyc pozadana rune przy stole.");
	
	var C_NPC ScrollTrader;
	
	
	
	// ------ Rune lernen ------
	if (spell == SPL_PalLight)			{	PLAYER_TALENT_RUNES[SPL_PalLight] 			= TRUE;	};		
	if (spell == SPL_PalLightHeal)			{	PLAYER_TALENT_RUNES[SPL_PalLightHeal] 			= TRUE;	};		
	if (spell == SPL_PalHolyBolt)			{	PLAYER_TALENT_RUNES[SPL_PalHolyBolt] 			= TRUE; };		
	if (spell == SPL_PalMediumHeal)			{	PLAYER_TALENT_RUNES[SPL_PalMediumHeal] 			= TRUE;	};		
	if (spell == SPL_PalRepelEvil)			{	PLAYER_TALENT_RUNES[SPL_PalRepelEvil] 			= TRUE;	};		
	if (spell == SPL_SummonGoblinKrieger)		{	PLAYER_TALENT_RUNES[SPL_SummonGoblinKrieger] 		= TRUE;	};		
	if (spell == SPL_SummonEisgoblin)		{	PLAYER_TALENT_RUNES[SPL_SummonEisgoblin] 		= TRUE;	};		
	if (spell == SPL_PalFullHeal)			{	PLAYER_TALENT_RUNES[SPL_PalFullHeal] 			= TRUE;	};		
	if (spell == SPL_PalDestroyEvil)		{	PLAYER_TALENT_RUNES[SPL_PalDestroyEvil]			= TRUE;	};		
	if (spell == SPL_PalTeleportSecret)		{	PLAYER_TALENT_RUNES[SPL_PalTeleportSecret] 		= TRUE;	};		
	if (spell == SPL_TeleportSeaport)		{	PLAYER_TALENT_RUNES[SPL_TeleportSeaport] 		= TRUE;	};		
	if (spell == SPL_TeleportMonastery)		{	PLAYER_TALENT_RUNES[SPL_TeleportMonastery] 		= TRUE;	};		
	if (spell == SPL_TeleportFarm)			{	PLAYER_TALENT_RUNES[SPL_TeleportFarm] 			= TRUE;	};		
	if (spell == SPL_TeleportXardas)		{	PLAYER_TALENT_RUNES[SPL_TeleportXardas] 		= TRUE;	};		
	if (spell == SPL_TeleportPassNW)		{	PLAYER_TALENT_RUNES[SPL_TeleportPassNW] 		= TRUE;	};		
	if (spell == SPL_TeleportPassOW)		{	PLAYER_TALENT_RUNES[SPL_TeleportPassOW] 		= TRUE;	};		
	if (spell == SPL_TeleportOC)			{	PLAYER_TALENT_RUNES[SPL_TeleportOC] 			= TRUE;	};		
	// Teleport-Joker fehlen
	if (spell == SPL_LIGHT)					{	PLAYER_TALENT_RUNES[SPL_LIGHT] 					= TRUE;	CreateInvItems (ScrollTrader, ItSc_LIGHT, 1);					
	B_LogEntry (TOPIC_TalentRunes,"Skladniki do runy - SWIATLO?: 1 zlota moneta.");	};		
	if (spell == SPL_Firebolt)				{	PLAYER_TALENT_RUNES[SPL_Firebolt] 				= TRUE;	CreateInvItems (ScrollTrader, ItSc_Firebolt, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla strzalki ognia Rune?: 1 siarka.");	};		
	if (spell == SPL_Icebolt)				{	PLAYER_TALENT_RUNES[SPL_Icebolt] 				= TRUE;	CreateInvItems (ScrollTrader, ItSc_Icebolt, 1);					
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla Rune? Strzalka lodowa: 1 lodowiec kwarcowy?");};		
	if (spell == SPL_LightHeal)				{	PLAYER_TALENT_RUNES[SPL_LightHeal] 				= TRUE;	CreateInvItems (ScrollTrader, ItSc_LightHeal, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla runa, LEKKIE WYBORY SWIATLA?: 1 roslina lecznicza.");	};		
	if (spell == SPL_SummonGoblinSkeleton)	{	PLAYER_TALENT_RUNES[SPL_SummonGoblinSkeleton] 	= TRUE;	CreateInvItems (ScrollTrader, ItSc_SumGobSkel, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla Rune GOBLINSKELETT CREATE?: 1 kosc goblinowa.");	};		
	if (spell == SPL_InstantIceball)		{	PLAYER_TALENT_RUNES[SPL_InstantIceball] 		= TRUE;	CreateInvItems (ScrollTrader, ItSc_InstantIceball, 1);			
	B_LogEntry (TOPIC_TalentRunes,"Skladniki na rune? ICE BALL: 1 wysokosc?");	};	
	if (spell == SPL_InstantFireball)		{	PLAYER_TALENT_RUNES[SPL_InstantFireball] 		= TRUE;	CreateInvItems (ScrollTrader, ItSc_InstantFireball, 1);			
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla runa? FIREBALL: 1 smola?");	};	
	if (spell == SPL_Zap)					{	PLAYER_TALENT_RUNES[SPL_Zap] 					= TRUE;	CreateInvItems (ScrollTrader, ItSc_Zap, 1);						
	B_LogEntry (TOPIC_TalentRunes,"");	};		
	if (spell == SPL_SummonWolf)			{	PLAYER_TALENT_RUNES[SPL_SummonWolf]				= TRUE;	CreateInvItems (ScrollTrader, ItSc_SumWolf, 1);					
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla runa, WOLF RUF RUFEN?: 1 siersc wilka.");	};		
	if (spell == SPL_WINDFIST)				{	PLAYER_TALENT_RUNES[SPL_WINDFIST] 				= TRUE;	CreateInvItems (ScrollTrader, ItSc_WINDFIST, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki runa: 1 kawalk wegla.");	};		
	if (spell == SPL_Sleep)					{	PLAYER_TALENT_RUNES[SPL_Sleep] 					= TRUE;	CreateInvItems (ScrollTrader, ItSc_Sleep, 1);					
	B_LogEntry (TOPIC_TalentRunes,"");	};		
	if (spell == SPL_MediumHeal)			{	PLAYER_TALENT_RUNES[SPL_MediumHeal] 			= TRUE;	CreateInvItems (ScrollTrader, ItSc_MediumHeal, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla Rune MEDIUM SREDNIO UZYTKOWANIE?: 1 Ziola.");	};		
	if (spell == SPL_LightningFlash)		{	PLAYER_TALENT_RUNES[SPL_LightningFlash] 		= TRUE;	CreateInvItems (ScrollTrader, ItSc_LightningFlash, 1);			
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla Rune BLITZSCHLAG: 1 krysztal skalny i 1 kwarc lodowy.");	};	
	if (spell == SPL_ChargeFireball)		{	PLAYER_TALENT_RUNES[SPL_ChargeFireball] 		= TRUE;	CreateInvItems (ScrollTrader, ItSc_ChargeFireball, 1);			
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla runa, DUZE STOPNIOWE FARBALL: 1 siarka i 1 boisko.");	};		
	if (spell == SPL_SummonSkeleton)		{	PLAYER_TALENT_RUNES[SPL_SummonSkeleton] 		= TRUE;	CreateInvItems (ScrollTrader, ItSc_SumSkel, 1);					
	B_LogEntry (TOPIC_TalentRunes,"Skladniki na rune, SKELET DEMONS?: 1 kosc szkieletowa.");	};		
	if (spell == SPL_Fear)					{	PLAYER_TALENT_RUNES[SPL_Fear] 					= TRUE;	CreateInvItems (ScrollTrader, ItSc_Fear, 1);					
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla runa ANGST?: 1 czarna perla.");	};		
	if (spell == SPL_IceCube)				{	PLAYER_TALENT_RUNES[SPL_IceCube] 				= TRUE;	CreateInvItems (ScrollTrader, ItSc_IceCube, 1);					
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla Rune, EISBLOCK?: 1 kwarc lodowy i 1 Aquamarine.");	};		
	if (spell == SPL_ChargeZap)				{	PLAYER_TALENT_RUNES[SPL_ChargeZap] 				= TRUE;	CreateInvItems (ScrollTrader, ItSc_ThunderBall, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla pioruna Rune: 1 siarka i 1 krysztal skalny.");	};		
	if (spell == SPL_SummonGolem)			{	PLAYER_TALENT_RUNES[SPL_SummonGolem] 			= TRUE;	CreateInvItems (ScrollTrader, ItSc_SumGol, 1);					
	B_LogEntry (TOPIC_TalentRunes,"Skladniki do runa: 1 kamienne serce golema.");	};	
	if (spell == SPL_SummonFireGolem)			{	PLAYER_TALENT_RUNES[SPL_SummonFireGolem] 			= TRUE;					
	B_LogEntry (TOPIC_TalentRunes,"Skladniki na runie: 1 serce golema pozarowego.");	};	
	if (spell == SPL_SummonIceGolem)			{	PLAYER_TALENT_RUNES[SPL_SummonIceGolem] 			= TRUE;
	B_LogEntry (TOPIC_TalentRunes,"Skladniki na runo: 1 serce golema lodowego.");	};	
	if (spell == SPL_DestroyUndead)			{	PLAYER_TALENT_RUNES[SPL_DestroyUndead] 			= TRUE;	CreateInvItems (ScrollTrader, ItSc_HarmUndead, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla runa, BEAUTY?: 1 swieta woda.");	};		
	if (spell == SPL_Pyrokinesis)			{	PLAYER_TALENT_RUNES[SPL_Pyrokinesis] 			= TRUE;	CreateInvItems (ScrollTrader, ItSc_Pyrokinesis, 1);				
	B_LogEntry (TOPIC_TalentRunes,"");	};		
	if (spell == SPL_Firestorm)				{	PLAYER_TALENT_RUNES[SPL_Firestorm] 				= TRUE;	CreateInvItems (ScrollTrader, ItSc_Firestorm, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki burzy pozarowej runy?: 1 siarka i 1 boisko.");	};		
	if (spell == SPL_Pyrokinesis_g1)			{	PLAYER_TALENT_RUNES[SPL_Pyrokinesis_g1] 			= TRUE;					
	B_LogEntry (TOPIC_TalentRunes,"");	};		
	if (spell == SPL_IceWave)				{	PLAYER_TALENT_RUNES[SPL_IceWave] 				= TRUE;	CreateInvItems (ScrollTrader, ItSc_IceWave, 1);					
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla Rune? Fala lodowa: 1 kwarc lodowy i 1 akwamaryna.");	};		
	if (spell == SPL_SummonDemon)			{	PLAYER_TALENT_RUNES[SPL_SummonDemon] 			= TRUE;	CreateInvItems (ScrollTrader, ItSc_SumDemon, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki na rune, DEMONS: 1 serce demona?");	};		
	if (spell == SPL_FullHeal)				{	PLAYER_TALENT_RUNES[SPL_FullHeal] 				= TRUE;	CreateInvItems (ScrollTrader, ItSc_FullHeal, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla run�w GL�WNIE OSIAGNIECIA UZYTKOWNIK�W? 1 korzen leczniczy?");	};	
	if (spell == SPL_Firerain)				{	PLAYER_TALENT_RUNES[SPL_Firerain] 				= TRUE;	CreateInvItems (ScrollTrader, ItSc_Firerain, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla runa, RAIN OGNIECIA: 1 nachylenie i jeden jezyk z monitora przeciwpozarowego?");	};		
	if (spell == SPL_BreathOfDeath)			{	PLAYER_TALENT_RUNES[SPL_BreathOfDeath]			= TRUE;	CreateInvItems (ScrollTrader, ItSc_BreathOfDeath, 1);			
	B_LogEntry (TOPIC_TalentRunes,"Skladniki Rune: 1 wegiel drzewny i 1 czarna perla?");	};		
	if (spell == SPL_MassDeath)				{	PLAYER_TALENT_RUNES[SPL_MassDeath] 				= TRUE;	CreateInvItems (ScrollTrader, ItSc_MassDeath, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla runa: 1 kosc szkieletowa i 1 czarna perla?");	};		
	if (spell == SPL_ArmyOfDarkness)		{	PLAYER_TALENT_RUNES[SPL_ArmyOfDarkness] 		= TRUE;	CreateInvItems (ScrollTrader, ItSc_ArmyOfDarkness, 1);			
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla Rune ARMEE DER FINSTERNIS: 1 kosc szkieletowa, 1 czarna perla, 1 serce kamiennego golema i 1 serce demona. ");	};		
	if (spell == SPL_Icerain)				{	PLAYER_TALENT_RUNES[SPL_Icerain] 				= TRUE;	CreateInvItems (ScrollTrader, ItSc_Icerain, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki na rune, ICE RAIN: 1 szt.");	};		
	if (spell == SPL_SummonDragon)			{	PLAYER_TALENT_RUNES[SPL_SummonDragon] 			= TRUE;	CreateInvItems (ScrollTrader, ItSc_SumDemon, 1);				
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla runa, smialek: 1 smocze jajko?");	};		
	if (spell == SPL_Shrink)				{	PLAYER_TALENT_RUNES[SPL_Shrink] 				= TRUE;	CreateInvItems (ScrollTrader, ItSc_Shrink, 1);					
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla Rune' a MONSTER SCHRUMPFEN?: 1 kosc goblinowa i 1 zab trollowy?");	};		
	
	//Addon
	
	if (spell == SPL_Whirlwind)				{	PLAYER_TALENT_RUNES[SPL_Whirlwind]				= TRUE; CreateInvItems (ScrollTrader, ItSc_Whirlwind, 1);				
	B_LogEntry (TOPIC_TalentRunes,Log_Text_Addon_TalentRune_Whirlwind);	};
	if (spell == SPL_WaterFist)				{	PLAYER_TALENT_RUNES[SPL_WaterFist]				= TRUE; CreateInvItems (ScrollTrader, ItSc_Waterfist, 1);				
	B_LogEntry (TOPIC_TalentRunes,Log_Text_Addon_TalentRune_Waterfist);	};
	if (spell == SPL_IceLance)				{	PLAYER_TALENT_RUNES[SPL_IceLance]				= TRUE; CreateInvItems (ScrollTrader, ItSc_Icelance, 1);				
	B_LogEntry (TOPIC_TalentRunes,Log_Text_Addon_TalentRune_Icelance);	};
	if (spell == SPL_Geyser)				{	PLAYER_TALENT_RUNES[SPL_Geyser]					= TRUE; CreateInvItems (ScrollTrader, ItSc_Geyser, 1);					
	B_LogEntry (TOPIC_TalentRunes,Log_Text_Addon_TalentRune_Geyser);	};
	if (spell == SPL_Thunderstorm)			{	PLAYER_TALENT_RUNES[SPL_Thunderstorm]			= TRUE; CreateInvItems (ScrollTrader, ItSc_Thunderstorm, 1);			
	B_LogEntry (TOPIC_TalentRunes,Log_Text_Addon_TalentRune_Thunderstorm);	};
	if (spell == SPL_SuckEnergy)				{	PLAYER_TALENT_RUNES[SPL_SuckEnergy]	= TRUE;
	B_LogEntry (TOPIC_TalentRunes,"Skladniki dla Rune: 1 butelka krwi ludzkiej?"); };
	if (spell == SPL_SummonGuardian)
	{
		PLAYER_TALENT_RUNES[SPL_SummonGuardian] = TRUE;
		B_LogEntry	(TOPIC_TalentRunes,"Skladniki DYSKCJI ZATRZYMANIA RUNU: 1 stara moneta i 1 krysztal skalny");
	};
	if (spell == SPL_SummonZombie)
	{
		PLAYER_TALENT_RUNES[SPL_SummonZombie] = TRUE;
		B_LogEntry	(TOPIC_TalentRunes,"Skladniki dla Rune ZOMBIE DEMONS: 1 mieso zombie i 1 butelka krwi ludzkiej.");
	};
	if (spell == SPL_EnergyBall)
	{
		PLAYER_TALENT_RUNES[SPL_EnergyBall] = TRUE;
		B_LogEntry	(TOPIC_TalentRunes,"Skladniki dla Rune' a BELIARSKIEGO ZORNU: 1 czarna perla i 2 wegiel.");
	};
	if (spell == SPL_Skull)
	{
		PLAYER_TALENT_RUNES[SPL_Skull] = TRUE;
		B_LogEntry	(TOPIC_TalentRunes,"Skladniki do runy: 2 butelki krwi ludzkiej, 3 zombie mieso i 2 kosci.");
	};
	// Scrolls und Runen-Joker fehlen
	if (spell == SPL_Zerfleischen)				{	PLAYER_TALENT_RUNES[SPL_Zerfleischen]					= TRUE; CreateInvItems (ScrollTrader, ItSc_Zerfleischen, 1);					
	B_LogEntry (TOPIC_TalentRunes,Log_Text_Addon_TalentRune_Zerfleischen);	};
							
	PrintScreen			(PRINT_LearnRunes, -1, -1, FONT_Screen, 2);
	
	// ------ bei jeder Rune: Runen-Talent lernen (programmvariable, wird nur zur Ausgabe in StatusScreen benutzt) ------
	Npc_SetTalentSkill 	(oth, NPC_TALENT_RUNES, 1);
	return TRUE;
};
