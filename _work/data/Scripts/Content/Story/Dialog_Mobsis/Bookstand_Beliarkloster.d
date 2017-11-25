var int Beliarkloster_1_permanent;
var int Beliarkloster_2_permanent;
var int Beliarkloster_3_permanent;
var int Beliarkloster_4_permanent;

FUNC VOID BOOKSTAND_BELIARKLOSTER_01_S1()		//Buchständer in der Magierbibliothek
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

					Doc_PrintLines	( nDocID,  0, "Minutes of the warlord Ur GarShock"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "The king of mankind was fetched by Beliar himself. The last battle, and thus the war, was over. And this could only be achieved by Beliar himself, who caused lightning to rain so that we could push forward.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Beliar you're here,"); 
					Doc_PrintLines	( nDocID,  1, "our Lord and Creator"); 
					Doc_PrintLines	( nDocID,  1, "all evil,"); 
					Doc_PrintLines	( nDocID,  1, "all bad things,"); 
					Doc_PrintLines	( nDocID,  1, "whose kingdom is the most glorious"); 
					Doc_PrintLines	( nDocID,  1, "and largest."); 
					Doc_PrintLines	( nDocID,  1, "Only through your power"); 
					Doc_PrintLines	( nDocID,  1, "we will be victorious,"); 
					Doc_PrintLines	( nDocID,  1, "to torment everyone,"); 
					Doc_PrintLines	( nDocID,  1, "against your subjects."); 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Beliarkloster_1_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Beliarkloster_1_permanent = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARKLOSTER_02_S1()		//Buchständer in der Magierbibliothek
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

					Doc_PrintLines	( nDocID,  0, "Minutes of the Prophet Gosh Tar-Wog"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Beliar revealed himself to all the followers today, but some were sceptical about the power of their Lord. They wanted a sign, but then a demon surrounded by fog appeared and said,' A kingdom that fights against itself is doomed to perdition, so do not doubt the power of Beliar, but find and kill all those who turn against Beliar's true faith.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLines	( nDocID,  1, "Accepting evil"					);
					Doc_PrintLine	( nDocID,  1, "-----------------"					);
					Doc_PrintLine	( nDocID,  1, ""					);
				
					
					Doc_PrintLines	( nDocID,  1, "No one takes the head of their enemy with them and then keeps it in secret or shows it to no one. The head is speared on a spear so that everyone can see it, both ally and enemy. Your hate is the key to pure malice. Therefore go and hate all your enemies except blood and fight them. When you are filled with hate and there is no bright spot left in you, you will enter Beliar's kingdom."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Beliarkloster_2_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Beliarkloster_2_permanent = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARKLOSTER_03_S1()		//Buchständer in der Magierbibliothek
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

					Doc_PrintLines	( nDocID,  0, "The parable of evil in you"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "A man had a farm, leased it to other farmers and left for a few months. When the harvest came, he sent a servant to collect the rent. He was beaten and beaten by the peasants. The farmer now sent another one, but the same thing happened to him. Now the farmer sent his son. But the farmers saw their chance and took it. Because in the world, only the law of the fittest prevails.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLines	( nDocID,  1, "Beliar cleans the temple"					);
					Doc_PrintLine	( nDocID,  1, "-------------------------"					);
					Doc_PrintLine	( nDocID,  1, ""					);
				
					
					Doc_PrintLines	( nDocID,  1, "Dear brothers and sisters, do not forget how long ago Beliar gave our ancestors this magnificent monastery in the middle of the sea so that we can spread his only and true faith. He led us through the sea and gave us everything we needed in life. But all these novices did not want to renounce their old gods. That's why everyone was killed by Beliar's hand."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Beliarkloster_3_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Beliarkloster_3_permanent = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARKLOSTER_04_S1()		//Buchständer in der Magierbibliothek
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

					Doc_PrintLines	( nDocID,  0, "Minutes of the Black Mage Thernus"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "I and my Black Mage brothers had warned these fools that Beliar would take and condemn them if they did not renounce their ancient gods. It was literally a bloodbath. Beliar has not been so angry since the defeat against Innos.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLines	( nDocID,  1, "Beliar kills 200. 000 Paladins"					);
					Doc_PrintLine	( nDocID,  1, "-------------------------"					);
					Doc_PrintLine	( nDocID,  1, ""					);
				
					
					Doc_PrintLines	( nDocID,  1, "Then Beliar called his servants to the battlefield. And they all came. Skeletons, orcs, demons, undead, seekers and black novices. The Paladins had Beliar's force under control until Beliar himself suddenly intervened and destroyed everything. Fire and lightning rained. Even a large part of his army was stretched out, but the victory was clear."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Beliarkloster_4_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Beliarkloster_4_permanent = TRUE;
					};
	};
};
