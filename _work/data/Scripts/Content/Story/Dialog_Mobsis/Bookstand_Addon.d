
//*************************************
//	Buchständer im Banditenlager
//*************************************

FUNC VOID Use_Bookstand_Addon_BL_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, "lead"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Crimson: 79 pieces of gold preserved and melted down"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Scatty: Receiving goods for 250 gold"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Garaz: 6 pieces of gold preserved"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "All guards: 9 pieces of gold received"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					
					Doc_PrintLines	( nDocID,  0, "");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "Bearing:  "					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Raven's Guard: 25 gold pieces"					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Finn: 60 gold pieces"					);
					Doc_PrintLines	( nDocID,  1, "Lennar: 40 gold pieces"); 
					Doc_PrintLines	( nDocID,  1, "Emilio: 50 gold pieces"					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Others: 20 gold pieces"					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Huno, Fisk, Snaf: depending on goods"					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Hunter: Let the leader take care of it! Franco 7 pieces of gold received");
					Doc_Show		( nDocID );
	
	};
};

//##########################################################################
//##
//##	SteinPult 
//##
//##########################################################################

//----------------------
var int BookstandMayaHierchary_1_permanent;
var int BookstandMayaHierchary_2_permanent;
var int BookstandMayaHierchary_3_permanent;
var int BookstandMayaHierchary_4_permanent;
var int BookstandMayaHierchary_5_permanent;
var int BookstandMayaHierchary_Beliar_permanent;
var int BookstandMayaArt;
//----------------------
func int C_CanReadBookStand ()
{
	IF (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	|| (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_2] == TRUE)
	|| (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_3] == TRUE)
		{
			return TRUE;
		};
};

func void Use_BookstandMaya () 
{
	if (BookstandMayaArt == 1)		//Joly:  überall objektieren!
	{
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... because only the DEATH GUARDS were able to call the ancestors. ");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Your absence hurts deeply. Without the advice of our ancestors, we are at the mercy of the arbitrariness of our people.");
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "The HEILERS were sent to seal the portal and destroy the key. Only Adanos knows what happened to them and whether they ever reached their goal.");         
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "The WARRIOR KASTE is destroyed by the wrath of Adano. The old warrior prince's heart is broken. "		);  
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Only the remaining PRIESTERs still fuel hope and preach incessantly of the resurrection of our once magnificent city. ");
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  1, "But we, the LEARNED, know the bitter truth. JHARKENDAR has fallen and will pass in the stream of time.");
			Doc_PrintLines	( StPl_nDocID,  1, "");        
	}
	else if (BookstandMayaArt == 2)     //Joly: objektieren egal wo, nur nicht Entrance.                     
	{
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "RHADEMES was forever locked in the temple of ADANOS, but the power of the sword was not broken.");
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                    
			Doc_PrintLines	( StPl_nDocID,  0, "His influence had already become too great. The killing in the streets didn't want to end.");
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                    
			Doc_PrintLines	( StPl_nDocID,  0, "ADANOS Zorn was the one who ended it all. The sea rose above JHARKENDAR and flooded the whole city.");
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  1, "Only the higher temples and buildings remained almost untouched.");
			Doc_PrintLine	( StPl_nDocID,  1, ""		);                                    
			Doc_PrintLine	( StPl_nDocID,  1, ""		);                                    
			Doc_PrintLines	( StPl_nDocID,  1, "The few who survived this catastrophe no longer had the strength to rebuild the city.");
			Doc_PrintLine	( StPl_nDocID,  1, ""		);                                    
			Doc_PrintLine	( StPl_nDocID,  1, ""		);                                    
			Doc_PrintLines	( StPl_nDocID,  1, "And so the fate of JHARKENDAR was sealed.");

			if ( SC_Knows_WeaponInAdanosTempel == FALSE)
			{				
				B_GivePlayerXP (XP_Bookstand);

				SC_Knows_WeaponInAdanosTempel = TRUE;
			};
	}
	else if (BookstandMayaArt == 3)                  
	{
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "QUARHODRON's age made it impossible for him to lead our army. And so the priests insisted on their right to command over him.");
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "They instructed him to resign and to pass on the sword.");
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "The Council of the Five should be his successor. But the caste of warriors refused to vote for the council.");
	                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  1, "The warriors no longer wanted to submit to the Council of Five and chose his son RHADEMES as their new leader. ");
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  1, "Out of pride and confidence in his own flesh and blood, QUARHODRON decided to give in to them.");
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  1, "He presented the sword to his son in the hope that he would lead it with the same strong hand as he did himself.");
	} 
	else if (BookstandMayaArt == 4)  
	{
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                    
			Doc_PrintLines	( StPl_nDocID,  0, "RHADEMES was weak. The sword's will overcame him and made him his tool.");
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                    
			Doc_PrintLines	( StPl_nDocID,  0, "The suffering and cruelty he brought to our people in his delusion could not even help the healers any more. ");
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                    
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                    
			Doc_PrintLines	( StPl_nDocID,  0, "The sword quickly realized that the people were too weak to thwart their plans.");
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                    
			Doc_PrintLines	( StPl_nDocID,  0, "The power of our ancestors alone could still be dangerous for him. ");
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                    
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  1, "And so RHADEMES had them banish or execute all the guardians of the dead, thus destroying any hope of redemption from this evil.");
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  1, "None of the guardians of the dead were present when the remaining four deprived leaders of our people made the bitter decision to give up JHARKENDAR.");
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  1, "The war raged in the streets as the healers set out to close the only access to our valley forever.");
	}
	else if (BookstandMayaArt == 5)
	{
			Doc_PrintLines	( StPl_nDocID,  0, "");  
			Doc_PrintLines	( StPl_nDocID,  0, "QUARHODRON, the high priest KHARDIMON and myself discussed a way to defeat RHADEMES and the sword in these halls.");
			Doc_PrintLines	( StPl_nDocID,  0, "");  
			Doc_PrintLines	( StPl_nDocID,  0, "QUARHODRON and KHARDIMON believed that they could defeat RHADEMES with combined forces in battle. But I knew the power of the sword too well to believe in it.");
			Doc_PrintLines	( StPl_nDocID,  0, "");	
			Doc_PrintLines	( StPl_nDocID,  0, "I therefore exercised my right to override the decision of the other two. Instead, I decided to overcome RHADEMES with a ruse.");			

			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLines	( StPl_nDocID,  1, ""		);  

			Doc_PrintLines	( StPl_nDocID,  1, "QUARHODRON followed the Council's decision. He went to Adano's temple and sent for his son.");                   
			Doc_PrintLines	( StPl_nDocID,  1, "");  
			Doc_PrintLines	( StPl_nDocID,  1, "His son's hatred had already taken such shape that RHADEMES stormed into the temple in furious fury to judge his father.");                
			Doc_PrintLines	( StPl_nDocID,  1, "");  
			Doc_PrintLines	( StPl_nDocID,  1, "He didn't realize our plans until it was too late for him.");
			Doc_PrintLines	( StPl_nDocID,  1, ""); 
			Doc_PrintLines	( StPl_nDocID,  1, "QUARHODRON closed the sacred chambers of the temple behind him, and RHADEMES was imprisoned in the temple for all time."); 
			
			Doc_PrintLines	( StPl_nDocID,  1, "");  
			Doc_PrintLines	( StPl_nDocID,  1, "");
	};
};

func void InitUse_BookstandMaya ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		if  (C_CanReadBookStand () == FALSE)
		{
				StPl_nDocID = 	
				Doc_Create		()			  ;							// DocManager
				Doc_SetPages	( StPl_nDocID,  2 );                         
				Doc_SetPage 	( StPl_nDocID,  0, "Book_MayaGlyph_L.tga", 	0 	);  
				Doc_SetPage 	( StPl_nDocID,  1, "Book_MayaGlyph_R.tga",	0	);
				Doc_SetFont 	( StPl_nDocID, -1, FONT_Book	   				); 	
				Doc_SetMargins	( StPl_nDocID,  0,  275, 20, 30, 20, 1   	);  	
	
	/*
				Doc_PrintLines	( StPl_nDocID,  0, "");
				Doc_PrintLines	( StPl_nDocID,  0, "Oksefd nodnf Kwe");	
				Doc_PrintLines	( StPl_nDocID,  0, "");	
				Doc_PrintLines	( StPl_nDocID,  0, "");
				Doc_PrintLines	( StPl_nDocID,  0, "Sebnejbuwd Weinafiwjf Ihweqpjrann");	
				Doc_PrintLines	( StPl_nDocID,  0, "Erfjkemvefj Hwoqmnyhan ckh" );
				Doc_PrintLines	( StPl_nDocID,  0, "");	
				Doc_PrintLines	( StPl_nDocID,  0, "Revfnbrebuiwe ewohjfribwe wefa");
				Doc_PrintLines	( StPl_nDocID,  0, "");	
				Doc_PrintLines	( StPl_nDocID,  0, "Ejkhfshduhweb isdh Thjdkad");	
				Doc_PrintLines	( StPl_nDocID,  0, "asdkejhnead Gakjesdhad Uhand");	
				Doc_PrintLines	( StPl_nDocID,  0, "");	
				Doc_PrintLines	( StPl_nDocID,  0, "Ihdah Zanshen");	
				Doc_PrintLines	( StPl_nDocID,  0, "");	
				Doc_PrintLines	( StPl_nDocID,  0, "");	
				Doc_PrintLines	( StPl_nDocID,  0, "Fjewheege Egadegsmkd Ygec slaje ");	
				Doc_PrintLines	( StPl_nDocID,  0, "");
				Doc_PrintLines	( StPl_nDocID,  0, "Esfj ewzbfujbwe Iuhdfb");				                                                                                          
					                                                                                          
					                                                                                          
				Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
				Doc_PrintLines	( StPl_nDocID,  1, "");
				Doc_PrintLines	( StPl_nDocID,  1, "Siehdkhnfv Ghlorka");	
				Doc_PrintLines	( StPl_nDocID,  1, "");
				Doc_PrintLines	( StPl_nDocID,  1, "");
				Doc_PrintLines	( StPl_nDocID,  1, "Jomaghe Ohramja");	
				Doc_PrintLines	( StPl_nDocID,  1, "");
				Doc_PrintLines	( StPl_nDocID,  1, "Bam klod Heknaud");	
				Doc_PrintLines	( StPl_nDocID,  1, "Wokan fadudeksJuh" );
				Doc_PrintLines	( StPl_nDocID,  1, "");	
				Doc_PrintLines	( StPl_nDocID,  1, "");	
				Doc_PrintLines	( StPl_nDocID,  1, "Jhdy funikha ");
				Doc_PrintLines	( StPl_nDocID,  1, "");	
				Doc_PrintLines	( StPl_nDocID,  1, "Ehnep Fhika Oiritan");	
				Doc_PrintLines	( StPl_nDocID,  1, "Oiritan Gkoropjia Onham");	
				Doc_PrintLines	( StPl_nDocID,  1, "");	
				Doc_PrintLines	( StPl_nDocID,  1, "");	
				Doc_PrintLines	( StPl_nDocID,  1, "Filiothak Juhama Penn");	
				Doc_PrintLines	( StPl_nDocID,  1, "Vorsiehal Kiman Sik");	
				Doc_PrintLines	( StPl_nDocID,  1, "");	
				Doc_PrintLines	( StPl_nDocID,  1, "Fjewheege Egdgsmkd Ygc slje ");	
				Doc_PrintLines	( StPl_nDocID,  1, "");	
				Doc_PrintLines	( StPl_nDocID,  1, "");
				Doc_PrintLines	( StPl_nDocID,  1, "Oznishdz gdo sek ie");
		*/
				Doc_Show		( StPl_nDocID );
				B_Say (self, self, "$CANTREADTHIS");	
		}
		else
		{			
			if (C_CanReadBookStand ())
			{
					StPl_nDocID = 
					Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( StPl_nDocID,  2 );                         
					Doc_SetPage 	( StPl_nDocID,  0, "Book_MayaRead_L.tga", 	0 	); 
					Doc_SetPage 	( StPl_nDocID,  1, "Book_MayaRead_R.tga",	0	);
					Doc_SetFont 	( StPl_nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( StPl_nDocID,  0,  275, 20, 30, 20, 1   	);  	
					Use_BookstandMaya ();
					Doc_Show		( StPl_nDocID );
			};
		};
	};
		BookstandMayaArt 	= 0;
};


FUNC VOID Use_BookstandMayaHierchary_01_S1()		
{
	BookstandMayaArt 	= 1;
	InitUse_BookstandMaya ();
	if (BookstandMayaHierchary_1_permanent == FALSE)
	&& (C_CanReadBookStand ())
		{
			B_GivePlayerXP (XP_Bookstand);

			BookstandMayaHierchary_1_permanent = TRUE;
		};	  
};

FUNC VOID Use_BookstandMayaHierchary_02_S1()		
{
	BookstandMayaArt 	= 2;
	InitUse_BookstandMaya ();
				
	if (BookstandMayaHierchary_2_permanent == FALSE)
	&& (C_CanReadBookStand ())
	{
		B_GivePlayerXP (XP_Bookstand);

		BookstandMayaHierchary_2_permanent = TRUE;
	};	
};

FUNC VOID Use_BookstandMayaHierchary_03_S1()		
{
	BookstandMayaArt 	= 3;
	InitUse_BookstandMaya ();

	if (BookstandMayaHierchary_3_permanent == FALSE)
	&& (C_CanReadBookStand ())
	{
		B_GivePlayerXP (XP_Bookstand);

		BookstandMayaHierchary_3_permanent = TRUE;
	};	
};

FUNC VOID Use_BookstandMayaHierchary_04_S1()		
{
	BookstandMayaArt 	= 4;
	InitUse_BookstandMaya ();
					
	if (BookstandMayaHierchary_4_permanent== FALSE)
	&& (C_CanReadBookStand ())
	{
		B_GivePlayerXP (XP_Bookstand);

		BookstandMayaHierchary_4_permanent = TRUE;
	};
};

FUNC VOID Use_BookstandMayaHierchary_05_S1()	
{
	BookstandMayaArt 	= 5;
	InitUse_BookstandMaya ();

	if (BookstandMayaHierchary_5_permanent == FALSE)
	&& (C_CanReadBookStand ())
	{
		B_GivePlayerXP (XP_Bookstand);

		BookstandMayaHierchary_5_permanent = TRUE;
	};
};

FUNC VOID Use_BookstandMayaHierchary_Beliar_S1()	
{
	if (BookstandMayaHierchary_Beliar_permanent == FALSE)
	&& (hero.guild == GIL_KDF)
	{
				StPl_nDocID = 	
				Doc_Create		()			  ;							// DocManager
				Doc_SetPages	( StPl_nDocID,  2 );                         
				Doc_SetPage 	( StPl_nDocID,  0, "Book_MayaRead_L.tga", 	0 	);  
				Doc_SetPage 	( StPl_nDocID,  1, "Book_MayaRead_R.tga",	0	);
				Doc_SetFont 	( StPl_nDocID, -1, FONT_Book	   				); 	
				Doc_SetMargins	( StPl_nDocID,  0,  275, 20, 30, 20, 1   	);  	
	
	
				Doc_PrintLines	( StPl_nDocID,  0, "");
				Doc_PrintLines	( StPl_nDocID,  0, "Thus the powerful instrument of God, who can decide on life and death, is hidden under the temple of water. Access is only possible in the city via the stone floor, which is not a road or path.");				                                                                                          
					                                                                                          
					                                                                                          
				Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
				Doc_PrintLines	( StPl_nDocID,  1, "");
				Doc_PrintLines	( StPl_nDocID,  1, "But when the path that is not one opens up, the magical iron salt rests on it, combined with the water that is dedicated to the gods, illuminated by the spark that springs from heaven, when the eye is unable to see a heavenly body.");
		
				Doc_Show		( StPl_nDocID );


		B_GivePlayerXP (XP_Bookstand);

		BookstandMayaHierchary_Beliar_permanent = TRUE;

		B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "Mysterious. The powerful instrument of the God who can decide on life and death. This must mean the sword. Hidden in the temple of water. I wonder if that means the Adano stamp. Access in the city. Well, there aren't many cities in Jharkendar... '... over the stone floor, it's not a road or a path. 'hmm...' The path that is not a path opens up, the magical iron salt rests on it, united with the water that is dedicated to the gods. What could these two items be? It is illuminated by the spark that springs from the sky, when the eye is unable to see a heavenly body. Well, when do you not see celestial bodies and what springs from the sky then, what can lighten?");

		Wld_SendTrigger	("EVT_AW_PORTALPLATTFORM_BELIAR");

		Wld_InsertNpc	(Mod_7314_Ziel_AW, "BL_RAVEN_01");
	};
};
