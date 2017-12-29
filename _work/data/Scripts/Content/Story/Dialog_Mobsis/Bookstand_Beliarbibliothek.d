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
		Doc_PrintLine	( nDocID,  0, "A Gift from the Gods");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Man has been trying to fathom the nature and origins of magic for centuries. But where should the search begin? How does one describe magic? It is the most conflicting power that has ever been known. It can kill and it can heal, it can create and it can destroy.");
					
		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "What does such power look like? Where can a man find this invisible, yet incredibly powerful force? Magic is what it is. It is the most marvelous and the most powerful gift the gods have ever given us. It is the divine gift presented to users and  weavers of magic. A healing power that only a few chosen ones are able to control.");	
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "Barthos of Laran");
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
		Doc_PrintLines	( nDocID,  0, "The magic is not inherent in the magus himself, he is far more able to work it. The only skill he possesses is the ability to influence and guide magic. A disciple of the art of magic must be able to use his spirit as a tool.");
					
		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "His spirit serves as a vessel for the all-encompassing arcane power ... to shape it, focus it and finally release it into the world we know. During these moments of total concentration, the magus' spirit rises above our sphere and gazes upon the Other Side, the home of power. The magus himself is but a conductor and shaper of that power.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "Barthos of Laran");
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
					Doc_PrintLines	( nDocID,  0, "A Work for Those Instructed in the Arcane Art");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "A magician's ability to control the divine power grows. At first, it appears like a small seed in a field. It must be tended or it will wither. But once the seed begins to grow, its splendor unfolds.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "It continues to grow with each passing day. The same applies to a receptive magus. His powers may be weak to begin with, but given time they will wax and thrive, unfolding a power whose limits are unforeseeable. To guide this power to the point of perfection is the sacred duty of every magus, for the seed sown by the gods is the greatest gift a mortal can receive.");
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
					Doc_PrintLines	( nDocID,  0, "The Place of Magic in the Order of the Worldly");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Much research has taken place on magic and its relation to the elements. It is just to claim that magic represents the perfect element. It has the power to transform all the elements and to shape them, which means it is superior to them.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Each element, when viewed in its purest form, unearths a connection to magic. Natural connections of this kind can only be found in very few places, and they are highly sought-after. A magus' ability to conjure up the elements, seemingly from nothing, proves that the power of magic is the purest, greatest good in existence.");
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
					Doc_PrintLines	( nDocID,  0, "The Sacred Duty of the Skillful");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "It is power that distinguishes a magus from his fellow men. Equipped with the ability to influence the divine power, he is a being independent of the laws of nature which apply to mortal man. ");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Once a magus has reached a stage which enables him to rise above the limits of his existence, he can place himself on a higher plane than that in which mortal man lives. He can break through the boundaries of time and space, and not even death, the eve of existence, can stop him.");
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
					Doc_PrintLine	( nDocID,  0, "Magic Ore");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "The best ore for use when forging weapons is doubtless found in the ore mines of Khorinis. It is of fundamental purity and suffused with magic. It is of incomparable strength, yet so soft that it cannot break. A weapon forged from this steel, which is mined far below the ground at an inexpressible cost of effort, is a match for any blade, albeit made of the strongest steel.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLines	( nDocID,  1, "It will break any shield and pierce any armor. Kings and heroes of old wielded weapons forged from the finest steel of Khorinis, and high prices are still paid for such weapons throughout Myrtana. But the ore itself demands a high price. Much effort is required to break it from the rock. It is almost as though the ore were fighting to remain within the womb of the earth.");
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
					Doc_PrintLines	( nDocID,  0, "... but Rhobar, the strategist, chose to attack. He assembled his troops and had them storm the enemy's weak right flank. He did not waste his time on long skirmishes, but thrust into the enemy army like a sword and cut down the defenses as though they were made of paper. On and on he drove his troops, advancing on the boarders of Varant. He knew that to win this fight, he would have to disperse the enemy army and prevent Gellon and Lukkor ");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "  uniting and dealing him a crushing blow. He would have to sever their supply lines to secure the victory ..."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "... Gellon was dead, his army beaten, his leaderless troops on the run. But Rhobar was not willing to give the enemy a chance to regroup, and commanded his army to destroy the remainder of the enemy forces. Meanwhile, Lukkor took advantage of the moment and struck a decisive blow at King Rhobar's exhausted troops ...");
					
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
					Doc_PrintLines	( nDocID,  0, "The war had been decided. Varant had lost its seaports, vital to army supplies. King Rhobar had not lingered on the battle fields for a long time, but left his generals to deal with the few remaining enemy troops. Varant had only one large force left, commanded by Lukkor, the most capable warlord of the Varant army, who had more than once turned defeat into victory.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "But now his army was trapped. The situation was hopeless, even though his army greatly outnumbered the enemy. Lee, a war hero from Myrtana, had lured him into this trap. The heavy cavalry had been unable to fight on the thick, swamped ground of the narrow valley. Lee's soldiers had occupied the range of hills surrounding the swamp, and they had struck repeatedly, decimating the army. The desperate sallies his troops had launched had been cut short in pools of blood. He was beaten.");
					
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
					Doc_PrintLine	( nDocID,  0, "    The Song of");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "		  Repentance");
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
					Doc_PrintLines	( nDocID,  1, "In the beginning was the power, pure and white,");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "Now only echoes of the vow sound through the night.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "They tell of days of unity, long since past,");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "'Tis having and taking for which we now thirst.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "All unity was torn apart and burst.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "Cursed the spirit which did not last.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "Of desire doth now tell our song.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "For unity is forever gone.");				
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
					Doc_PrintLines	( nDocID,  0, "Hear the words of the gods, for it is their will that you shall hear them. Heed the teachings of the gods, for it is their will that you shall heed them. Honor the priests of the gods, for they are the chosen ones."	);
					Doc_PrintLine	( nDocID,  0, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  0, "The word of Innos: And if it shall happen that you do not understand, do not despair at the words of the priests, for they are just and wise. For I am the rising sun, the light, and the life. And all that is contrary to the sun is contrary to me, and shall be banished to the shadows forever more.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The word of Adanos: Work and live, for the day was created so that man may work. Seek learning and knowledge so that you may pass it on, for it is for that purpose that you were created. But whosoever shall be listless and idle, he shall be banished to the shadows forever more."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  1, "The word of Beliar: But whosoever shall do wrong and go against the will of the gods, him I will punish. I will plague his body with pain, suffering and death, but his spirit shall join me in the shadows forever more. "					);
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
					Doc_PrintLines	( nDocID,  0, "Of the beginning of time: There was no night and no day, and no living thing moved across the land. Then Innos appeared and his light shone upon the world. And Innos gave unto the world the gift of life. But no creature could live in the light of Innos, so he created the sun. But still the light was too bright. So Innos divided himself and thus created Beliar. Beliar created the night. Now man could be. So Innos divided himself again and created Adanos. Adanos brought man versatility, knowledge, curiosity and courage. Innos was satisfied with what he had done.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "And he decided to leave mankind in the care of Adanos, and he rested. But Beliar was consumed by envy, for the people did not pray to him, but slept at night. He grew angry and created a man. A man to pray to him alone. But the man he created was like all other men. Beliar became so furious that he killed the man and spoke: If they will not worship me, then at least they shall fear me. And he created death and ended the lives of men."	);
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
					Doc_PrintLines	( nDocID,  0, "Innos gave mankind the power to hear him and speak to him. He gave mankind the power to perform great miracles, and he called them magic. With this power, the people were able to design the world after their will. Innos gave them no limits. And thus man received a portion of the divine power of creation. But not all the people were equal, and this dissatisfied them. So he took the power from the discontented. Innos raised the few who had shown him gratitude above the others."	);
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
 					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "These few were soon revered and feared, and the people  called them priests. But among them were many who soon became dissatisfied. And so it happened that they prayed to Adanos and forgot their origins. The league of priests was divided. Wars ensued and the faith in divine omnipotence soon became a myth. And so the priests were separated. Those who followed Adanos were called Magicians of the Circle of Water, while the priests of Innos became known as the Magicians of the Circle of Fire."	);
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
					Doc_PrintLines	( nDocID,  0, "His writings have outlasted the ages and his advice is considered a book on the art of hunting. Following the heavy battles in the north, every countryman now knows how to use a bow and arrows. Yet there are some rules to be followed when hunting which exceed the simple knowledge of how to use the weapon! Game is both timid and unpredictable.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "The art of hunting with a bow is not merely ancient tradition, but the most common form of hunting. The techniques employed in this traditional method of hunting have hardly altered in the course of the millennia, and it is unlikely that they will change in the future. What circumstances really determine a hunt with a bow and arrow? To recognize these laws is the true art of bow hunting."	);
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
					Doc_PrintLines	( nDocID,  0, "For 2000 years, the teachings of this expert have determined the development of the art of fighting.  "	);
  					Doc_PrintLine	( nDocID,  0, ""					);					
  					Doc_PrintLine	( nDocID,  0, ""					);					
   					Doc_PrintLines	( nDocID,  0, "Dexterity, composure, speed, observation and reactions are the skills which must be trained. Your movements must be well-coordinated and your posture correct if you want your powers to blossom."	);			
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
  					Doc_PrintLine	( nDocID,  1, ""					);					
  					Doc_PrintLine	( nDocID,  1, ""					);					
  					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "The essence of the master's spiritual and physical teachings has survived many years.  "	);
  					Doc_PrintLine	( nDocID,  1, ""					);					
  					Doc_PrintLine	( nDocID,  1, ""					);					
 					Doc_PrintLines	( nDocID,  1, "His unique success has influenced generations. For millennia, the face of the world has shifted and changed, but the harmony of inner powers with movements of the body has survived."					);					
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
					Doc_PrintLines	( nDocID,  0, "In the center lies the Morgrad, containing the four elements earth, water, fire and air. It is the place of transience, the heart of the inexpressible darkness of Beliar. Above all this towers the sphere of the heavens."	);
					Doc_PrintLine	( nDocID,  0, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  0, "In the hierarchy of the universe, man is a receiver. His soul allows him to take part in the highest plane of existence, the divine spirit. Yet man's body is made from the substance of the Morgrad. He is a reflection of the world itself.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The synodic orbit of the planets, that is the course they take between two identical positions in relation to the Morgrad of our world, varies by just a few degrees every century. We therefore conclude that we are constantly moving with the rest of the universe."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  1, "When we created the first calendar, we observed the course of the moon to determine the length of the solar year.");
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
					Doc_PrintLines	( nDocID,  0, "The Balm of Vision:"	);
					Doc_PrintLine	( nDocID,  0, "----------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);		
					Doc_PrintLines	( nDocID,  0, "Cover the patient's eyes with bile. This secretion has a bitter taste. Placing this bitterness on the eye forces the patient to regard it, which makes him wise. He learns to see! Bitterness and wisdom are mutually exclusive opposites. They are each other's counterparts!");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, ""	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  1, "Tears, suffering and disappointment are bitter, but wisdom is the consoling influence of every kind of pain. Bitterness and wisdom are alternatives. Where there is bitterness, there is no room for wisdom, and where there is wisdom, there is no bitterness.");
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
					Doc_PrintLines	( nDocID,  0, "The Wine of Oblivion"	);
					Doc_PrintLine	( nDocID,  0, "--------------------"					);
						Doc_PrintLine	( nDocID,  0, ""					);			
					Doc_PrintLines	( nDocID,  0, "The best grapes for this wine are found high up on the slopes of Archolos. The art of allowing this wine to ripen to perfection lies in not disturbing it through any kind of movement. The grapes are blended with the common syos herb in front of the wine cellars. ");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					//Absatz
					Doc_PrintLines	( nDocID,  1, "Observe and marvel as the master turns the clear water of the well to wine. The people pay tribute to him and feast on his gift. The master punishes his lazy disciples by locking them in bottles. A fire is kindled and black snakes arise.");
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
