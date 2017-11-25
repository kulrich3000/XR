var int BeliarBibliothek_01;
var int BeliarBibliothek_02;
var int BeliarBibliothek_03;
var int BeliarBibliothek_04;
var int BeliarBibliothek_05;
var int BeliarBibliothek_06;
var int BeliarBibliothek_07;
var int BeliarBibliothek_08;
var int BeliarBibliothek_09;
var int BeliarBibliothek_10;
var int BeliarBibliothek_11;
var int BeliarBibliothek_12;
var int BeliarBibliothek_13;
var int BeliarBibliothek_14;
var int BeliarBibliothek_15;
var int BeliarBibliothek_16;
var int BeliarBibliothek_17;

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_01_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
		//1.Seite
  					
		Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
		Doc_PrintLine	( nDocID,  0, "Magic");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, " "			);
		Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
		Doc_PrintLine	( nDocID,  0, "The gift of the gods");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "For centuries people have been trying to understand the essence and origin of magic. But where to look? How can they be described? It is the most contradictory force we know. She can kill and heal at the same time, she can shape and destroy.");
					
		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "What does such a force look like? Where can you find this invisible and yet so powerful force? Magic is what it is. The most glorious and powerful gift of the gods. The user and caster of this power is thus also given a divine gift. A sacred power that only a select few are able to control.");	
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "Barthos from Laran");
		Doc_Show		( nDocID );
					
		if (BeliarBibliothek_01 == FALSE)
		{
			B_GivePlayerXP (XP_Bookstand);

			BeliarBibliothek_01 = TRUE;
		};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_02_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager 
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
					
		//1.Seite
  					
		Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLine	( nDocID,  0, "Secrets of Sorcery");
					
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "The magus himself does not have any magic, he is rather able to make use of it. He himself has only the ability to influence and direct magic. The adept initiated in the High Art of Magic must be able to use his or her mind as a tool.");
					
		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "It is his spirit that collects, shapes and bundles the all-environmental Arcane power and finally releases it into the world that is accessible to us. During this time of highest concentration, the magus succeeds with his spirit in penetrating our sphere and looking to the other side, from there comes the power, the magus himself is only leader and former of this power.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "Barthos from Laran");
		Doc_Show		( nDocID );
					
		if (BeliarBibliothek_02 == FALSE)
		{
			B_GivePlayerXP (XP_Bookstand);

			BeliarBibliothek_02 = TRUE;
		};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_03_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga" 	, 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga"	, 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Powerful art");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "A work for the consecrated of Arcanic Art");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "The ability to channel divine power grows in the magician. At first, it germinates like a small sprout on the field and must be cared for so that it does not atrophy. But once this offspring has grown, it unfolds its full splendour.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "It grows and grows and becomes stronger with every day. This is what happens to the docile magus. Its initially very small forces grow and prosper and, over time, develop a power that is not foreseeable in its completion. To lead this power to its highest perfection is the sacred duty of every magus, for this sprout seeded by the gods themselves is the greatest gift a mortal can receive.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_03 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_03 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_04_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga" ,	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" ,	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Elementary Arcanei");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Classification of magic in the structure of the earthly");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Much has been researched about magic and its position on the elements. It is fair to say that magic can be regarded as the absolute element. It has the power to change and shape all elements and is thus visibly transferred to them.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "A combination of element and magic reveals every element in its purest form, so there are only a few natural occurrences of such compounds and they are in great demand. Also the abilities of a magus element seemingly to be created from nothing are proof that the magical power is the purest and highest good that exists.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_04 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_04 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_05_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "True Power");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "The sacred duty of the expert");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "It is his power that separates the magus from ordinary people. He, endowed with the ability to influence divine power, is a being to whom the normal limits of mortal power do not apply. ");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Once the magus has reached a degree that allows him to transcend the limits of his existence, he can place himself on a level above that of the normal mortal. He can penetrate the limits of space and time, even the end of all being, death, is not an obstacle on his way.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_05 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_05 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_06_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "From ore");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "The best ore for forging weapons can undoubtedly be found in the ore mines near Khorinis. It is of elemental purity and imbued with magic. It is of incomparable hardness and yet so soft that it does not break. A weapon forged from the steel obtained from the deep mines at an unimaginably high cost is not comparable to a blade, even if it is made from the best steel.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLines	( nDocID,  1, ". No shield she can't break, no armour she can't pierce. Kings and heroes from days gone by wore weapons made of the best khorini steel, and in Myrtana the best prices are still achieved for such weapons today. However, a high price is also charged for this ore. It is as if the ore does not want to escape from the earth's depths.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_06 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_06 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_07_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga",		0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga",		0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					); 					
					Doc_PrintLines	( nDocID,  0, "... but Commander Rhobar chose the attack. He gathered his army and pushed forward with concentrated force against the badly covered right flank of the enemy. He did not stay long with the skirmishes, but pushed himself like a sword into the side of the enemy army and cut them up like paper. He kept pushing his men forward, always further towards the border of Varant. He knew that if he wanted to win this battle, he had to be able to share the enemy lord and prevent Gellon and Lukkor from joining forces. ");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "  and give him the devastating blow. He had to be able to disrupt her supplies, then he couldn't take the victory any more..."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "... Gellon was dead, his army defeated, his now leaderless men on the run. But Rhobar was not willing to give the enemy a chance to gather up and ordered them to leave immediately to destroy the enemy. Lukkor, however, decides to take advantage of the hour and take the blow out of King Rhobar's exhausted troops....");
					
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_07 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_07 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_08_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga",		0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga", 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					); 					
					Doc_PrintLines	( nDocID,  0, "The war was decided. Varant robbed his seaports, so important for the supply of troops. King Rhobar has not been on the battlefields of Varant for a long time, but has left it to his generals to wipe out the last enemy troops. Varant possessed only a larger army, led by Lukkor, the most capable warlord of the Varant army, more than once he had been able to transform an impending defeat into a victory.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, ". But now his army was trapped. Numerically superior to the enemy's army, but in a hopeless position. Lee, the war hero of Myrtana had lured him into a trap. His heavy cavalry couldn't fight on the deep, swampy ground of the narrow valley and the hills around him were occupied by Lee's soldiers, who kept pounding over and over again and thus decimated his master man by man. The desperate failures of his men had been beaten back bloody. He was defeated.");
					
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_08 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_08 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_09_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					); 					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "    The song of the");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "		  regret");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
		
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "In the beginning there was power, pure and pure,");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "only the echo of the old oath remains.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "The times of unity are long gone,");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "after possessions is now our purpose.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "What is now divided is what was once together.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "Damn the spirit that took us.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "Our songs are full of longing.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "Unity never comes again.");				
					Doc_PrintLines	( nDocID,  1, ""	);
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_09 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_09 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_10_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
 					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "Listen to the words of the gods, for it is their will that they be heard. Follow the teachings of the gods, for it is their will that they be obeyed. Respect the priests of the gods, for they are chosen."	);
					Doc_PrintLine	( nDocID,  0, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  0, "The words of Innos:'And if ye do not understand, do not doubt the words of the priests; their deeds are righteous and wise. For I am the rising sun, the light and life. And all that there against the sun is against me, and shall be banished forever and ever in the shadows.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The words of Adanos:'Work and live, for the day is made for man to work. Look for learning and knowledge so that you can pass it on, because that's how you were created. But whoever is idle and lazy shall be banished to the shadows forever and ever."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  1, "Beliar's words:'But whosoever acts wrongly and against the will of the gods, I will punish him, the body with pain, suffering and death, but I will take the spirit to myself forever and ever in the shadows. "					);
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_10 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_10 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_11_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					); 					
					Doc_PrintLines	( nDocID,  0, "From the beginning of time: There was no day or night and no being moved over the world. Then appeared the world Inno's world and his light illuminated everything. And Innos gave life to the world. But since no being can live in the light of the Inno, he created the sun. But the light was still too strong. Then Innos divided and created Beliar. Beliar brought the night. Now the people could be. Then Innos divided again and created Adanos. Adanos gave people versatility, knowledge, curiosity and courage. Innos was very satisfied with himself and his work.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "And he decided to leave the people of Adano entirely to rest. But Beliar was devoured with envy, for men did not pray to him and rested at night. Then he got angry and formed a man. A man who should worship only him. But man became like all other people. Beliar was so full of anger that he killed the man and said:'If they do not worship me, let them fear me. And he created death and took men's lives."	);
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_11 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_11 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_12_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite

					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
   					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
   					Doc_PrintLine	( nDocID,  0, ""					);			
					Doc_PrintLines	( nDocID,  0, "Innos gave the people the power to hear him and speak to him. He gave them the power to perform great miracles. And he called it magic. With this power, people could freely shape the world according to their will. There were no boundaries that Innos showed them. And so men were part of the divine creative power. But men were all alike and they didn't like it. So he took away the strength of those who were dissatisfied. The few who were grateful put Innos above all others"	);
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
 					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "These people were soon worshipped and feared and were called priests. But even among them there were many who were soon dissatisfied. And so it happened that they prayed to Adanos and forgot their origins. The priests were divided. Wars were unleashed and the belief in divine omnipotence soon became a myth. So the priests divided. Those who followed the Adanos were now called magicians of the water, but the consecrated of the Inno were called the magicians of fire."	);
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_12 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_12 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_13_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					); 					
					Doc_PrintLines	( nDocID,  0, "His writing has survived the times and his advice is regarded as a textbook of hunting. After the great battles in the north, each fellow countryman is now familiar with how to handle the bow. However, there are a few rules to follow when hunting, which go beyond the easy handling of the weapon! The game is shy and unpredictable.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "The art of bow hunting has not only the oldest tradition, but is also the most common of all conceivable types of hunting. The technique of this kind of traditional hunting has hardly changed in the course of thousands of years and will probably not change in the future. What circumstances really determine the course of hunting with the bow? Recognizing these laws is the true art of bow hunting."	);
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_13 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_13 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_14_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 	0		);
					
					//1.Seite

					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
   					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
  					Doc_PrintLine	( nDocID,  0, ""					);					
  					Doc_PrintLine	( nDocID,  0, ""					);					
  					Doc_PrintLine	( nDocID,  0, ""					);					
					Doc_PrintLines	( nDocID,  0, "For 2000 years, these teachings of the Master were the pillars in the development of martial arts.  "	);
  					Doc_PrintLine	( nDocID,  0, ""					);					
  					Doc_PrintLine	( nDocID,  0, ""					);					
   					Doc_PrintLines	( nDocID,  0, "It trains the mobility of the body, rest and speed, observation and reaction. The movements must be well coordinated and the posture must be correct in order to achieve the best development of your strength."	);			
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
  					Doc_PrintLine	( nDocID,  1, ""					);					
  					Doc_PrintLine	( nDocID,  1, ""					);					
  					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "The core of the Master's spiritual and physical teachings has survived many years.  "	);
  					Doc_PrintLine	( nDocID,  1, ""					);					
  					Doc_PrintLine	( nDocID,  1, ""					);					
 					Doc_PrintLines	( nDocID,  1, "His unique success has influenced generations. Thousands of years in which the world has often changed its appearance, but in which one thing will last forever: the harmony of inner forces with the targeted external movement of the body."					);					
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_14 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_14 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_15_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
 					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "In the centre is the Morgrad with its four elements earth, water, fire and air, the space of the transient, in its interior the unspeakable darkness of the Beliar. Above everything is the sphere of heaven."	);
					Doc_PrintLine	( nDocID,  0, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  0, "In the hierarchy of the cosmos, man occupies the position of the receiver. Through his soul he is part of the supreme being, the divine spirit, whereas his transient body is made up of substances of the Morgrad. As a small image of the whole world.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The synodic orbit of the planets, i. e.. the period of time between two similar positions in relation to the mortuary degree of our world differs by a few degrees every century, so that we can expect to find ourselves in a constant movement with the rest of the cosmos."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  1, "When we set up a calendar, we referred to the moon's course at the beginning, in order to maintain the connection to the actual length of the solar year.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_15 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_15 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_16_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
 					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "The balm of sight:"	);
					Doc_PrintLine	( nDocID,  0, "----------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);		
					Doc_PrintLines	( nDocID,  0, "To do this, he's got bile painted on his eyes. Bile is bitter in taste. If this bitterness is taken to the eye, i. e. if we look at the bitterness, wisdom is born of it. We will see! Bitterness and wisdom are mutually exclusive. They're antipoles!");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, ""	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  1, "Tears, sorrow and disappointment are bitter, but wisdom is the comforter in every spiritual pain. Bitterness and wisdom are an alternative. Wherever bitterness, there is no wisdom, and where wisdom, there is no bitterness.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_16 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_16 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_17_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
 					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "The wine of forgetting"	);
					Doc_PrintLine	( nDocID,  0, "--------------------"					);
						Doc_PrintLine	( nDocID,  0, ""					);			
					Doc_PrintLines	( nDocID,  0, "High up on the slopes of Archolo, there are the best grapes that can be found for this wine. The art of ripening this wine to its perfection is not to leave it in motion under any circumstances. The grapes are mixed with the common Syos cabbage in front of the winery. ");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					//Absatz
					Doc_PrintLines	( nDocID,  1, "Behold and be amazed when the Magister transforms clearest well water into excellent wine. All pay homage to him and feed on his gift. The Magister puts his lazy apprentices in bottles to punishment, fires are miraculously ignited and black snakes grow up.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_17 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_17 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_FAKE_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int rnd; rnd = r_max(1);

		if (rnd == 0)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE01");
		}
		else if (rnd == 1)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE02");
		}
		else if (rnd == 2)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE03");
		}
		else if (rnd == 3)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE04");
		}
		else if (rnd == 4)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE05");
		}
		else if (rnd == 5)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE06");
		}
		else if (rnd == 6)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE07");
		}
		else if (rnd == 7)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE08");
		}
		else if (rnd == 8)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE09");
		}
		else if (rnd == 9)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE10");
		}
		else if (rnd == 10)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE11");
		}
		else if (rnd == 11)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE12");
		}
		else if (rnd == 12)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE13");
		}
		else if (rnd == 13)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE14");
		};
	};
};
