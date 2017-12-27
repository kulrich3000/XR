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
			B_LogEntry (TOPIC_FireContest,"As a novice, I have a right to demand the Test of Fire. This entails each of the three magicians from the High Council setting me a test. If I pass these trials, I will be accepted into the Circle of Fire.");
		};
	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, "The Test of Fire"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Though a novice may feel ready to submit to the Test of Magic, he may not necessarily be chosen. If, however, he has given his decision ample consideration and if he insists, he is accorded the right to demand the Test and no magician may deny it to him. But not only must he pass the Test of Magic, he must also find enlightenment through the fire. If he insists before the High Council, he shall be submitted to the TEST OF FIRE.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The Test should challenge the wisdom, strength and dexterity of the novice. Therefore he must pass three trials, each of which is set before him by a magician of the High Council, before taking the Oath of the Fire to join the pact with the fire. "); 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Such is the will of Innos and so it shall be done. "					);
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
						Doc_PrintLines	( nDocID,  0, "... I hope the dome may protect the ore from the menace of Beliar. The King is naive enough to believe that we built the dome as protection against breakouts. Well, as long as such ruses enable us to fulfill our higher goals, let it be so. I can only hope we have enough time left to prepare for the fight. As soon as the dome around the Valley of Mines has been erected, I will use all the power at my disposal to intervene in the impeding fight. ");
						Doc_PrintLines	( nDocID,  0, "");
			
					
	
			
		if  (hero.guild == GIL_KDF)
		{	
			PlayerGetsAmulettOfDeath = TRUE;
			PLAYER_TALENT_RUNES[SPL_MasterOfDisaster] = TRUE; 
			B_LogEntry (TOPIC_TalentRunes,"Ingredients for the rune 'Holy Missile': 1 holy water, no spell scroll");
			
			
						
						Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "... I followed the instructions and simply poured Innos' holy water over a blank runestone on a rune table. The runestone was destroyed. I suspect this spell really is accessible only to the One."); 
						Doc_PrintLines	( nDocID,  1, "I have left the holy aura of Innos in the protection of the monastery. The abbot will take care of it until the One reveals himself."	);
						Doc_PrintLines	( nDocID,  1, "The Tears of Innos may have a vital part to play in the fight ahead. But it's too dangerous to keep them where all can see. I'd better leave them here in the library."	);
						Doc_Show		( nDocID );
						
						
		}
		else if (hero.guild == GIL_PAL)
		{
			PAL_KnowsAbout_FINAL_BLESSING = TRUE;
			PLAYER_TALENT_RUNES[SPL_PalTeleportSecret] 		= TRUE; 		
			PrintScreen	(PRINT_LearnPalTeleportSecret, -1, -1, FONT_Screen, 2);
			
			Log_CreateTopic (TOPIC_TalentRunes,LOG_NOTE);
			B_LogEntry (TOPIC_TalentRunes,"To create a rune, I need the scroll of the wanted spell and the required special ingredients for each. Using those and a blank rune I can create the desired rune at a rune table.");
			B_LogEntry (TOPIC_TalentRunes,"Ingredients for the rune 'Secret teleport': 1 holy water");
			
			
		
						
						Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "You have to create a teleportation rune to reach the secret place. For that you need a blank runestone and a small bottle of holy water. You can use the rune to teleport into the room."); 
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "I am now reasonably certain that the Tears of Innos are what the paladins of old used in the long forgotten ritual Consecration of the Sword. That means I should be able to use the little bottle I found to give additional strength to a consecrated weapon."	);
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
			B_LogEntry (TOPIC_TalentSmith,"To forge a weapon, first of all I need a piece of raw steel. This I must heat up in the fire of a smithy until it glows red-hot and then shape it on an anvil. Special weapons often require the use of certain substances that give them special characteristics.");
			B_LogEntry (TOPIC_TalentSmith,"If I add 4 ore and 5 dragon's blood, I can forge a?ERZ-DRACHENTÖTER? for myself.");
			B_LogEntry (TOPIC_TalentSmith,"If I add 5 ore and 5 dragon's blood, I can forge a? LARGE ERZ DRAGON KILLER? for myself.");
			PlayerGetsFinalDJGArmor = TRUE;
		
						
						Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "From: Weapons of the dragon lord."); 
						Doc_PrintLines	( nDocID,  1, "To make an armor of dragon scales as hard as possible, the scales may be coated with the ore mined in the valley on the isle of Karynis."					);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "To make a blade worthy of a dragon lord, the blade should be steeped in dragon blood. Even 5 phials of the blood can give the steel unequalled sharpness and strength."					);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "Note: 'Karynis' probably refers to what is now known as Khorinis.");
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

