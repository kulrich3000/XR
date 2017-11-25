FUNC VOID B_ShowBackground_Story(var int pos)
{
	Spine_UpdateAchievementProgress(SPINE_ACHIEVEMENT_9, pos);
	Spine_UpdateAchievementProgress(SPINE_ACHIEVEMENT_10, pos);

	StPl_nDocID = Doc_Create		() ;							// DocManager
	Doc_SetPages	( StPl_nDocID,  2 );                         
	Doc_SetPage 	( StPl_nDocID,  0, "Book_MayaRead_L.tga", 	0 	);  
	Doc_SetPage 	( StPl_nDocID,  1, "Book_MayaRead_R.tga",	0	);
	Doc_SetFont 	( StPl_nDocID, -1, FONT_Book	   				); 	
	Doc_SetMargins	( StPl_nDocID,  0,  275, 20, 30, 20, 1   	);

	if (pos == 1)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... there was wisdom and reason. And Radanos looked down and pleased with what happened.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Free of sorrow and sorrow, all the inhabitants did their day's work, each one according to the function of his caste. For all were blessed with a part of his divine power and love. And with power, people could freely shape the world according to their will. Thus all men were part of the divine creative power and were equal."		);     
	}
	else if (pos == 2)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "But the priest's caste became a man whose heart was devoured by lust for power and envy. He could not bear that everyone was blessed in the same way by one God. His name was Xeres. And he came up with a plan that should ever end harmony and equality.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "He forged intrigues and he pretended that the lower castes want to use their part of divine power to overthrow the others. And he succeeded in winning many priests, like scholars, for his plan and in corrupting the hearts of many. And so they decided to take away one part of their power from the other, so that their great number was no longer a danger to them. But only a few of them knew what plans he was really pursuing."		);     
	}
	else if (pos == 3)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Thus, they held off a ritual of robbing the members of the other castes of some of their power. And those who conspired with Xeres united their part of the power to carry out the ritual.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "But they were all deceived, and Xeres deprived them of power and life and self-sacrificing. Only his closest allies were spared and carried out their sinister plan with the blood of the betrayed. And the blood of many should still fall to their lust for power."		);     
	}
	else if (pos == 4)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "The ritual continued to use man's attachment to the powers of one God against him. And just as the bodies of the slaughtered were divided, so was Radanos, the will and power of the slaughtered, broken apart and scattered into a thousand pieces. And the sky darkened and the earth trembled.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "People felt that their God was no longer their God and the shock of the incredible loss paralyzed all life. However, the builders soon learned of the terrible outrage that Xeres had caused. And after the paralysis of the first moment had given way, unspeakable anger rose in all the castes."		);     
	}
	else if (pos == 5)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "People used sword and magic to place and judge the blasphemous Xeres. But no one was able to oppose him and his faithful... their power was too great, insurmountable the magical protective mechanisms.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "People had to gradually realize that their rebellion was in vain. And when the fiery anger about the loss of their God had given way to despair, every will to fight ceased immediately. And Xeres devastated the country with tyranny and a terrible murder began."		);     
	}
	else if (pos == 6)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Everything that Xeres saw as a threat to his power was made to the ground. Temples and places considered sacrosanct and sacred to man were desecrated, burned and ground to dust. And many residents realized that they were powerless to confront Xere's cruel activity and sought their salvation in flight. But there were also those who submitted themselves to the idol and swore to follow him.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "And what had once been a flourishing culture began to extinguish through greed for power, blindness and barbarism...."		);     
	}
	else if (pos == 7)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "And Xeres recalled another plan to consolidate his power and existence on earth for all time. To this end, he created powerbearers, five in number, and fed them with the free powers of the overthrown God.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "And it appeared that man of unknown origin who seized the holy sword. This was consecrated to the one God... and part of the original power was still in him. And he took the sword, and judged it against tyranny... and he slew Xeres and his creatures."		);     
	}
	else if (pos == 8)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "The coconut is a fruit of particular interest for the magic arts. The consumption of milk and meat alone already regenerates and increases the magical ability.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "However, if you add the extract of a field knotweed to an alchemy table and heat it slowly and steadily, you get a broth that is much more effective..."		);     
	}
	else if (pos == 9)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... at the same time, however, new creation moved in the spheres of the heavenly new creation. The fragments of the power and will that came from one God joined together again.... but in three parts with their own will and power. And the new celestials arose and they took control of the earth's surface...");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "... And a new age was begun...."		);     
	}
	else if (pos == 10)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... the age of the three new deities: Innos, Adanos and Beliar.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "The first of them was Innos. He looked down on the earth and had to realize that only a few people still inhabited it. The previous events had cost too many lives. And so he decided to create new people and put them in different parts of the world."		);     
	}
	else if (pos == 11)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Next, Beliar entered the country. He saw that Inno's creatures - humans - inhabited and ruled the earth alone. He, too, wanted to see his work perpetuated in creation and so the beast was created by his will.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Most recently Adanos appeared. He shared most of his personality and attitude with the great-grandfather of Radano. And he looked down upon the earth, and pleased with what happened."		);     
	}
	else if (pos == 12)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "And again a brief period of peace and prosperity began. The surviving builders, scattered in many parts of the earth, gradually began to return to their accustomed everyday lives as they had known it before the horror events.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "And as the days, weeks and months went by, all the terrible events around Xeres - violence, discord and inequality - seemed to be a thing of the past. And men praised and worshipped the new deities as sons of their forefathers and as three equal brothers."		);     
	}
	else if (pos == 13)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "But as unified as the origin of the three gods seemed to be, as different as they were in the course of time and their ideas about how to shape creation turned out to be. And when no consensus seemed possible any more, each one claimed a different part of creation for himself. Beliar dedicated himself to darkness and chaos, Innos to fire and order. Adanos, who shared most of the personality and attitude with his forefather, remained indecisive at first....");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "And men wanted to grant to each of the gods the worship that gave him condition. But the worship of fire meant at the same time that darkness was to be reviled and vice versa. And conflicts arose among men, which should be the greatest worship of the deities."		);     
	}
	else if (pos == 14)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "And the wrath of the two deities Innos and Beliar against each other grew and prospered to an open conflict. And Innos and Beliar fought with each other and the sky darkened.... and the earth trembled....");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "The earth trembled, the sky darkened. Between Innos and Beliar a fierce battle raged, devastating the earth. And the followers of both deities also fought with each other. They directed their part of the divine power against the environment, threatening the entire creation."		);     
	}
	else if (pos == 15)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Then Adanos entered the scene and he stood between his brothers to settle their quarrels. And with the use of his wisdom and divine power, he succeeded in ending the open quarrel of his brothers. And he looked down and saw what was happening on earth, where there was a fierce war.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Once again, creation was threatened by the hands of men who abused the divine power as a tool of destruction. And he decided to take away some of the power from people. Only the chosen ones, the priests of the gods, were now able to influence the divine power."		);     
	}
	else if (pos == 16)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "And he looked down and saw what was happening on earth, where there was a fierce war. Once again, creation was threatened by the hands of men who abused the divine power as a tool of destruction. And just as his divine wrath arose, so did the seas, lakes and rivers rise up and take everything with them.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Humans, animals fought for their survival and many drowned in the floods. As the water calmed down again, styles reigned in the countryside. Only gradually did the survivors begin to collect again to build what had been washed away."		);     
	}
	else if (pos == 17)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "However, Adanos decided to deprive people of their power. Only the chosen ones, the priests of the gods, should from now on be able to influence the divine power.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "And Adanos decided from now on to strive for the preservation of the balance. He had realized that the positions of his brothers were incompatible and that the influence of one of them - Innos or Beliar - would never prevail. Neither complete chaos nor absolute order could allow creation to flourish. And the changeable water should become its element...."		);     
	}
	else if (pos == 18)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... so Xeres brought his priests together to begin the ceremony and create the bearers of power. 5 in number, equipped with a part of the freed forces of Radano... but bound to Xere's existence. (weathered)");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "But one of the rituals failed and produced a creature that was not like the others. For it was not the liberated power of the destroyed God that became part of him... it was his will.... (weathered).... and Xere's servant swore to erase his name from the Scriptures forever."		);     
	};

	Doc_Show		( StPl_nDocID );
};
