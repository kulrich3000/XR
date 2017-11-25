FUNC VOID B_ShowGiftText(var int pos)
{
	StPl_nDocID = Doc_Create		() ;							// DocManager
	Doc_SetPages	( StPl_nDocID,  2 );                         
	Doc_SetPage 	( StPl_nDocID,  0, "Book_Brown_L.tga", 	0 	);  
	Doc_SetPage 	( StPl_nDocID,  1, "Book_Brown_R.tga",	0	);
	Doc_SetFont 	( StPl_nDocID, -1, FONT_Book	   				); 	
	Doc_SetMargins	( StPl_nDocID,  0,  275, 20, 30, 20, 1   	);

	if (pos == 1)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... dotrzec do ciala i rozwinac ich szkodliwe dzialanie. Zdrowie doznaje stalych obrazen przez pewien okres czasu, az do momentu zneutralizowania lub wyeliminowania trucizny przez organizm.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Toksyny dzieli sie na rózne grupy. Woski identyfikuja jeden z nich. Bez wzgledu na to, czy sa to trujace grzyby czy rosliny, ich spozycie nastepuje z pewnym opóznieniem, poniewaz sa one stopniowo wchlaniane."		);     
	}
	else if (pos == 2)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Jesli jednak bezposrednio przedostana sie one do krwioobiegu, ich dzialanie jest natychmiastowe. Wydaje sie, ze sa one znacznie silniejsze, ale krótsze. Podaje sie, ze niektórzy ludzie i inne racjonalnie utalentowane istoty celowo uzywaja swojej broni do zatrucia przeciwników w walce.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Jesli jednak ktos przezyje kilka zatruc, staje sie coraz bardziej odporny. Cialo uczy sie szybciej niszczyc specjalna trucizne, az stanie sie calkowicie odporne na zatrucia. Ponadto zmniejsza sie równiez szkodliwe dzialanie innych toksyn roslinnych, poniewaz sa one podobnie skomponowane."		);     
	}
	else if (pos == 3)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Inna grupa trucizn pochodzi z królestwa zwierzat. Przewaznie przenoszone przez owady, natychmiast przedostaja sie do krwioobiegu przez kolce i szczypce zwierzecia. Efekt jest zwykle krótszy, ale nieco bardziej intensywny niz w przypadku toksyn roslinnych. Toksyny zwierzece sa znacznie rzadziej spotykane na ostrzach broni, poniewaz zaopatrzenie jest drozsze.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Równiez w tym przypadku rosnacy opór widziec mozna jako wzrost zatruc. Podobnie jak w przypadku toksyn roslinnych, czas dzialania zmniejsza sie wraz z pewnymi trucizna zwierzeca w celu uzyskania pelnej odpornosci. Jednoczesnie zmniejsza sie szkodliwy wplyw wszystkich toksyn zwierzecych, poniewaz opieraja sie one na podobnych mechanizmach, a organizm uczy sie lepiej przeciwdzialac ich skutkom."		);     
	}
	else if (pos == 4)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Ostatnia wazna grupa, o której nalezy wspomniec, sa toksyczne opary. Ich dzialanie jest natychmiastowe i intensywne, nawet jesli zwykle ograniczone do kilku sekund. Mimo, ze organizm moze równiez stac sie odporny z czasem, opary maja dodatkowy efekt korozyjny i rabuja poszkodowanego z powietrza do oddychania, dzieki czemu nigdy nie ucieka sie calkowicie nieszkodliwie.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Jednak bez wzgledu na to, z jaka forma toksyn organizm zostal narazony, doswiadczenie zwieksza sie, aby uniknac wszelkiego rodzaju zatruc."		);     
	}
	else if (pos == 5)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Jednak po zatruciu nie wystarczy zwykla roslina lecznicza, poniewaz trucizna pozostaje w organizmie.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Roslina nazywana leczniczym buds leczniczy jest jednak zglaszana, aby nagle zniwelowac efekt zatrucia."		);     
	}
	else if (pos == 6)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Nawet doswiadczeni alchemicy potrafia przeciwdzialac zatruciom, które nie tylko niweluja istniejace zatrucia, ale takze maja krótkotrwaly efekt powypadkowy i zapewniaja ochrone przed dalszymi zatruciami.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Jednakze, jesli te srodki zaradcze nie sa dostepne, przynajmniej spozycie duzej ilosci plynu moze pomóc w szybszym wyplukaniu trucizny z organizmu...."		);     
	};

	Doc_Show		( StPl_nDocID );
};
