//##########################################################################
//##
//##	Bookstand History
//##
//##########################################################################

//----------------------
var int History_1_permanent;
//----------------------
//----------------------
var int History_2_permanent;
//----------------------
//----------------------
var int History_3_permanent;
//----------------------

FUNC VOID Use_BookstandHistory1_S1()		//Geschichtsbücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_RED_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_RED_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "The Way of the Fight"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
				
					
					Doc_PrintLines	( nDocID,  0, "Attack is the best defense against anything that's not human. A parade against animals or monsters is pointless."						);
					Doc_PrintLines	( nDocID,  0, "It's better to keep the opponent at a distance with targeted side strokes in order to make a surprising combination of several strokes."						);
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Combinations of several strokes are naturally reserved for an experienced fighter. And if you even reach the championship in battle, you can make further combinations."						); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, ""						);
					Doc_Show		( nDocID );
					
					if (History_1_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						History_1_permanent = TRUE;
					};

	};
	
};

FUNC VOID Use_BookstandHistory2_S1()		//Geschichtsbücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_RED_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_RED_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "The Island"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "The port city of Khorini is located on an island off the coast of the Kingdom of Myrtana."						);
					Doc_PrintLines	( nDocID,  0, "The island is famous for the Minental valley. A dubious reputation, because for many years a magical barrier stretched over the entire valley and all the prisoners of the empire were taken there."						);
					Doc_PrintLines	( nDocID,  0, "Thus, the valley became a penal colony for many convicts who dug up the magical ore deep underground. "						);
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Outside Khorinis there are still a few farms that use the good soil to grow wheat and beets, but also sheep."						); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "For generations, the largest farm has been owned by a large farmer who leases his surrounding land to other farmers. "						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "In the middle of the island there is an old monastery. A monastery of Inno, run by the magicians of fire. There they pursue magical and alchemistic research and make wine."						);
					
					Doc_Show		( nDocID );
					
					if (History_2_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						History_2_permanent = TRUE;
					};

	};
};


FUNC VOID Use_BookstandHistory3_S1()		//Geschichtsbücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_RED_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_RED_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "The Law of the Island"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					
				
					
					Doc_PrintLines	( nDocID,  0, "Wherever people come together, the common life must be regulated. Whether it's in the monastery, in the city or on the farmer's farm."						);
					Doc_PrintLines	( nDocID,  0, "Thus any crime against the community will be punished."						);
					Doc_PrintLines	( nDocID,  0, "For the benefit of the Community, it is not allowed to instigate or get involved in fights. "						);
					Doc_PrintLines	( nDocID,  0, "Likewise, theft is a misdemeanor that does not go unnoticed. And the sheep are also protected by the law.  "						);
					Doc_PrintLines	( nDocID,  0, " "						);
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Those who even beat down and murder another human being must expect to be judged on the spot."						);
					Doc_PrintLines	( nDocID,  1, "And those who can escape this must pay a heavy fine. "						);
					Doc_PrintLines	( nDocID,  1, "In all the great places, men carry out the office of justice. They are told what action is being taken and they demand the punishment for restoring peace. "						); 
					Doc_PrintLines	( nDocID,  1, "Whoever becomes the victim of an offence or can testify against it will not speak well of the offender."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "There are of course also people who don't care about the laws. Especially bandits and mercenaries. "						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, ""						);
					Doc_Show		( nDocID );
					
					if (History_3_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						History_3_permanent = TRUE;
					};

	};
};

