//##########################################################################
//##
//##	Hier stehen alle Buchständermobsiscripte
//##
//##########################################################################


//*************************************
//	Buchständer in der Klosterbibliothek
//*************************************

FUNC VOID Use_Bookstand_01_S1()		//Buchständer in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
	if  (hero.guild == GIL_NOV)
		{
			KNOWS_FIRE_CONTEST = TRUE; //für die Prüfung des Feuers 
			
			Log_CreateTopic (TOPIC_FireContest,LOG_MISSION);
			B_SetTopicStatus	(TOPIC_FireContest,LOG_RUNNING);
			B_LogEntry (TOPIC_FireContest,"As a novice, I have the right to demand the examination of fire. Each of the three magicians from the High Council will examine me. If I pass, I'll be admitted to the circle of fire.");
		};
	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, "Fire test"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Such a novice is not chosen, it may be that he nevertheless feels the willingness to submit to the examination of magic. If he has carefully considered this decision and insists on it, he is allowed to take the test and no magician may refuse it. But it is not only the testing of magic that is imposed on him, but he is also to find his enlightenment through fire. If he insists on it before the High Council, he should be granted the FIRE EXAMINATION.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "In this examination, the prudence, strength and skill of the novice should be equally required. So he shall perform three trials, each received by one of the magicians of the High Council, before he swears the oath of the flame and can make the covenant with the fire. "); 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "This is what Inno's will and this is how it shall be done. "					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The High Council"					);
					Doc_Show		( nDocID );

			
	};
};

FUNC VOID BOOKSTAND_HEILMAGIER_01_S1()		//Buchständer in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLines	( nDocID,  0, "Origin of the Order of Healing Mages"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "The Order of Healing Magicians was born from the idea of the lesser-known magician Kamaros. It is said that he came from Myrthana, where he studied neutral magic for a long time. But one day, it is said, Adanos sent a vision to him. Adanos was the Lord of life and he instructed Kamaros to protect and preserve it.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "So he taught him the art of healing magic. So he moved out to find more magicians to help him with his mission. The names of these magicians are not known, but they are considered the founders of healing magic."); 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Heilmagier_1_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Heilmagier_1_permanent = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_HEILMAGIER_02_S1()		//Buchständer in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLines	( nDocID,  0, "The healing magic today"					);
					Doc_PrintLine	( nDocID,  0, "-------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "The tasks of today's curative mages still include the healing and strengthening of people. However, in addition to magical healing, one also attaches great importance to healing and refreshment potions. Even today the healing mages are not very widespread, but only in smaller groups.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Most of the healing mages are former water magicians who want to serve Adanos with non warlike means. In contrast to the Water Magicians, they do not try to damage the stronger side, but to support the weaker one."); 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Heilmagier_2_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Heilmagier_2_permanent = TRUE;
					};
			
	};
};

FUNC VOID BOOKSTAND_HEILMAGIER_03_S1()		//Buchständer in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLines	( nDocID,  0, "The Life of the Healing Magician"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "The curative mages are less strictly structured than the other magic branches. In principle, the healing mages do not care about political issues. Also, the healing mages hardly have any contact with the other magic branches, as it is written by Kamaros in the book of basic rules of healing magic:");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Thus, it is only the duty of the magician of healing not to intervene in a greater way in the intercession between the gods, but to provide help and support for the disadvantaged, but to ensure that they are supported against their opponents, which must not be of a warlike nature. '"); 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Heilmagier_3_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Heilmagier_3_permanent = TRUE;
					};
			
	};
};

FUNC VOID BOOKSTAND_HEILMAGIER_04_S1()		//Buchständer in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLines	( nDocID,  0, "Defense against attackers"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "If a situation should arise in which the healing magician has to defend himself, he is equipped with a magic baton that will sleep the enemy for a long time. He can also use magic to make the enemy unconscious or incapacitate him in other ways. However, it is against the commandments of the Healing Magician to kill his enemy.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Heilmagier_4_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Heilmagier_4_permanent = TRUE;
					};
			
	};
};

//*************************************
//	Buchständer in der Geheimen Bibliothek
//*************************************
//--------------------------------------
var int FinalDragonEquipment_Once;
//--------------------------------------

FUNC VOID Use_FINALDRAGONEQUIPMENT_S1()		//Buchständer in der geheimen Bibliothek 
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
	
		var int nDocID;
		
		nDocID = 		Doc_Create		()			  ;							
						Doc_SetPages	( nDocID,  2 );                         
						Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0); 
						Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0);
					
						Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
						Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  	
	
						Doc_PrintLine	( nDocID,  0, "");
						Doc_PrintLines	( nDocID,  0, "... I hope that the dome will be able to protect the ore from Beliar's access. The King is simple enough to believe that we are building the dome to protect us from eruptions, but as long as we continue to reach our higher line with these advice, it is all right with us. I hope there will be enough time to prepare for the fight. As soon as the dome around the Minental is created, I will try to intervene in the upcoming battle with all my power. ");
						Doc_PrintLines	( nDocID,  0, "");
			
					
	
			
		if  (hero.guild == GIL_KDF)
		{	
			PlayerGetsAmulettOfDeath = TRUE;
			PLAYER_TALENT_RUNES[SPL_MasterOfDisaster] = TRUE; 
			B_LogEntry (TOPIC_TalentRunes,"Ingredients for the Rune? holy bullet?: 1 consecrated water, but no spell roll");
			
			
						
						Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "... I have, according to the instructions, simply drizzled Inno's consecrated water onto a rune blank and brought it together at the rune table. The rune stone is destroyed, I think this saying is really only accessible to the One."); 
						Doc_PrintLines	( nDocID,  1, "I have given Saint Aura Innos to the monastic schtz. From now on, it will be kept by the head of the monastery until the day when the One reveals himself."	);
						Doc_PrintLines	( nDocID,  1, "May Inno's tears play a role in the upcoming battle. But it's probably too dangerous to keep them open. I'll leave them here in the library."	);
						Doc_Show		( nDocID );
						
						
		}
		else if (hero.guild == GIL_PAL)
		{
			PAL_KnowsAbout_FINAL_BLESSING = TRUE;
			PLAYER_TALENT_RUNES[SPL_PalTeleportSecret] 		= TRUE; 		
			PrintScreen	(PRINT_LearnPalTeleportSecret, -1, -1, FONT_Screen, 2);
			
			Log_CreateTopic (TOPIC_TalentRunes,LOG_NOTE);
			B_LogEntry (TOPIC_TalentRunes,"To create a rune, I need different ingredients for each rune. With these ingredients and a rune blank I can create the desired rune at the rune table.");
			B_LogEntry (TOPIC_TalentRunes,"Ingredients for the Rune - Geheimer Teleport: 1 Consecrated Water");
			
			
		
						
						Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "To get to the secret place you have to build a teleportrune. You will need a rune blank and a small bottle of consecrated water. With the created runes you can teleporteir yourself into the room."); 
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "I am now very sure that it was with the tears of Inno's tears that the paladins from the early days, the long forgotten high consecration of the sword, held. So it should be possible to give a consecrated weapon extra power with the bottle I discovered."	);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_Show		( nDocID );
		}
		else
		{
			PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] 	= TRUE;	
			PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] 	= TRUE;	
			
			PrintScreen			(PRINT_LearnSmith, -1, -1, FONT_Screen, 2);
			Npc_SetTalentSkill 	(self, NPC_TALENT_SMITH, 1);
			Log_CreateTopic (TOPIC_TalentSmith,LOG_NOTE);
			B_LogEntry (TOPIC_TalentSmith,"To forge a gun, I need a piece of crude steel first. I have to heat the steel at a forge and then take it to the desired shape on an anvil. For higher quality weapons you often need substances that give the weapon special properties.");
			B_LogEntry (TOPIC_TalentSmith,"If I add 4 ore and 5 dragon's blood, I can forge a?ERZ-DRACHENTÖTER? for myself.");
			B_LogEntry (TOPIC_TalentSmith,"If I add 5 ore and 5 dragon's blood, I can forge a? LARGE ERZ DRAGON KILLER? for myself.");
			PlayerGetsFinalDJGArmor = TRUE;
		
						
						Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "From the dragonfly's weapons."); 
						Doc_PrintLines	( nDocID,  1, "In order to give a shell made of dragon scales the highest hardness, the scales can be lined with the ore extracted in the valley of the island of Karynis."					);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "To obtain a blade worthy of the Dragon Lord, you must soak the blade in dragon's blood. The addition of just 5 small vials gives the steel a hardness and sharpness that cannot be opposed."					);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "Note: Karynis is the khorinis of today.");
						Doc_Show		( nDocID );
		};
		
		if FinalDragonEquipment_Once == FALSE
		{
			//B_GivePlayerXP (XP_FinalDragonEquipment);
			FinalDragonEquipment_Once = TRUE;
		};
	};
};

var int Blutkult_1_permanent;

FUNC VOID BOOKSTAND_BLUTKULT_01_S1()		//Buchständer in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
				Doc_SetPages	( nDocID,  2 );                         
				Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
				Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

				Doc_PrintLines	( nDocID,  0, "Use of Divine Magic for Summoning Purposes"					);
				Doc_PrintLine	( nDocID,  0, "-------------------------"					);
				Doc_PrintLine	( nDocID,  0, ""					);
				
				Doc_PrintLines	( nDocID,  0, "When a magician learns to use the power of Innos' or Adanos's power for himself, he can, if he masters the basics of the spherical manifestation of Beliar's magic, create servants created from the element for which the particular deity stands.");
			
				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, ""					);
				Doc_PrintLines	( nDocID,  1, "In order to create such a rune, a traditional golemrune is used as a basis, which is connected to the heart of an ice or fire golem at a rune table.");
				Doc_PrintLine	( nDocID,  1, ""					);
				Doc_PrintLine	( nDocID,  1, ""					);
				Doc_PrintLine	( nDocID,  1, ""					);
				Doc_Show		( nDocID );
					
				if (Blutkult_1_permanent == FALSE)
				{
					B_GivePlayerXP (XP_Bookstand);

					Blutkult_1_permanent = TRUE;
				};

				if (hero.lp >= 3)
				&& (Rune_Eisgolem == FALSE)
				{
					hero.lp -= 3;

					Rune_Eisgolem = 1;

					PrintScreen	("Learned: Creation of an ice-golemune", -1, -1, FONT_Screen, 2);
				}
				else
				{
					PrintScreen	(PRINT_NotEnoughLP, -1, -1, FONT_Screen, 2);
				};
	};
};

var int Blutkult_2_permanent;

FUNC VOID BOOKSTAND_BLUTKULT_02_S1()		//Buchständer in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
				Doc_SetPages	( nDocID,  2 );                         
				Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
				Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

				Doc_PrintLines	( nDocID,  0, "Basics of spherical manifestation"					);
				Doc_PrintLine	( nDocID,  0, "-------------------------"					);
				Doc_PrintLine	( nDocID,  0, ""					);
				
				Doc_PrintLines	( nDocID,  0, "The magician directs his full attention and concentration on the matter that is to arise into a creature.");
			
				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, ""					);
				Doc_PrintLines	( nDocID,  1, "After he briefly establishes a spiritual connection to the emerging creature and gives him a part of his magical energy, he loosens this connection again, so that the being is endowed with his own partial will, but nevertheless bound to his creator, follows him and supports him in the fight.");
				Doc_PrintLine	( nDocID,  1, ""					);
				Doc_PrintLine	( nDocID,  1, ""					);
				Doc_PrintLine	( nDocID,  1, ""					);
				Doc_Show		( nDocID );
					
				if (Blutkult_2_permanent == FALSE)
				{
					B_GivePlayerXP (XP_Bookstand);

					Blutkult_2_permanent = TRUE;
				};

				if (hero.lp >= 3)
				&& (Spheric_Manifestion == FALSE)
				{
					hero.lp -= 3;

					Spheric_Manifestion = 1;

					PrintScreen	("Learned: Spährische Manifestation", -1, -1, FONT_Screen, 2);
				}
				else
				{
					PrintScreen	(PRINT_NotEnoughLP, -1, -1, FONT_Screen, 2);
				};
	};
};

FUNC VOID Use_BookstandXardasRaetselOW_S1()		//Buchständer in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
				Doc_SetPages	( nDocID,  2 );                         
				Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
				Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

				Doc_PrintLines	( nDocID,  0, "Even a worthy man doesn't know everything."				);
				Doc_Show		( nDocID );
	};
};

