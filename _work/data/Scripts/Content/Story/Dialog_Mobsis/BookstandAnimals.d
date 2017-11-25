//##########################################################################
//##
//##	Bookstand Animals
//##
//##########################################################################

//----------------------
var int Animals_1_permanent;
//----------------------
//----------------------
var int Animals_2_permanent;
//----------------------
//----------------------
var int Animals_3_permanent;
//----------------------

FUNC VOID Use_BookstandAnimals1_S1()		//Tierbücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Hunting and prey"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Each animal and being possesses its own trophies, which increase the fame and wealth of an experienced hunter."						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "An experienced hunter knows about the trophies of his prey and knows how to gut them.");
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "clench one's teeth"						);
					Doc_PrintLines	( nDocID,  0, "The teeth are the weapon of many animals and beings. Anyone who knows how to snatch them from their prey will find their prey in wolves, snapper, sharks and trolls."						);
				
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "Remove the skins"						);
					Doc_PrintLines	( nDocID,  1, "A talent that the experienced hunter often knows how to use - there are many animals whose body is protected by a fur. Sheep, wolves and shadow runners to name just a few."						); 
					Doc_PrintLines	( nDocID,  1, "A hunter who masters this talent can also peel the skins of Sumphai and Lurker.  "						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "break claws"						);
					Doc_PrintLines	( nDocID,  1, "An art that can be used for all kinds of monitors, snapper, lurker and shadow runners.  "						);
					Doc_Show		( nDocID );
					
					if (Animals_1_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Animals_1_permanent = TRUE;
					};	

	};
};

FUNC VOID Use_BookstandAnimals2_S1()		//Tierbücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Hunting and prey"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Each animal and being possesses its own trophies, which increase the fame and wealth of an experienced hunter."						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "The Blood Flies"			);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "To gut these flying devils requires two special arts."					); 
					Doc_PrintLines	( nDocID,  0, "On the one hand the wings can be cut off and on the other hand the sting can be torn off." );
					Doc_PrintLines	( nDocID,  0, "The experienced hunter should use both arts to acquire the trophies."	);
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Field robbers and minecrawlers attack with pliers. Especially the tongs of the minecrawlers"						);
					Doc_PrintLines	( nDocID,  1, "are considered particularly valuable because they contain a secretion that increases magical powers."						);
					Doc_PrintLines	( nDocID,  1, "However, it should be enjoyed with caution, as the human body no longer reacts to it over time."						);   
					Doc_PrintLines	( nDocID,  1, "The Minecrawler plates are also very popular. Armour can be made from them. "						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, " "						);
					Doc_Show		( nDocID );
					
					if (Animals_2_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Animals_2_permanent = TRUE;
					};

	};
};

FUNC VOID Use_BookstandAnimals3_S1()		//Tierbücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Hunting and prey"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Each animal and being possesses its own trophies, which increase the fame and wealth of an experienced hunter."						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "The Fire monitor"						);
					Doc_PrintLines	( nDocID,  0, "This special creature belongs to the genus of monitor lizards, but it is able to breathe fire, which inevitably kills anyone who approaches it in a few steps."						);
					Doc_PrintLines	( nDocID,  0, "Only those who are able to protect themselves against fire can compete with these creatures and snatch their precious tongues from them."	);		
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "The Shadow Petrel"		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "The Shadow Creeper is an ancient loner who lives hidden in the woods."						); 
					Doc_PrintLines	( nDocID,  1, "There are only a few specimens left, so that he is no longer a danger to humans as long as he does not cross his hunting grounds."						);
					Doc_PrintLines	( nDocID,  1, "The head of the Shadow Runner is crowned by a horn, which is considered a valuable trophy. A hunter must learn the art of breaking the horn properly,"						);
					Doc_PrintLines	( nDocID,  1, "to get this trophy."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
							
					Doc_Show		( nDocID );
					
					if (Animals_3_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Animals_3_permanent = TRUE;
					};

	};
};

