var int Gift_01;
var int Gift_02;
var int Gift_03;
var int Gift_04;
var int Gift_05;
var int Gift_06;

FUNC VOID Use_Bookstand_Gift_01_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Gift_01 == 0)
		{
			GiftCounter += 1;

			Gift_01 = GiftCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_GIFT, LOG_NOTE);

			if (GiftCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "... dotrzec do ciala i rozwinac ich szkodliwe dzialanie. Zdrowie doznaje stalych obrazen przez pewien okres czasu, az do momentu zneutralizowania lub wyeliminowania trucizny przez organizm.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Toksyny dzieli sie na rózne grupy. Woski identyfikuja jeden z nich. Bez wzgledu na to, czy sa to trujace grzyby czy rosliny, ich spozycie nastepuje z pewnym opóznieniem, poniewaz sa one stopniowo wchlaniane.");
			}
			else if (GiftCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Jesli jednak bezposrednio przedostana sie one do krwioobiegu, ich dzialanie jest natychmiastowe. Wydaje sie, ze sa one znacznie silniejsze, ale krótsze. Podaje sie, ze niektórzy ludzie i inne racjonalnie utalentowane istoty celowo uzywaja swojej broni do zatrucia przeciwników w walce.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jesli jednak ktos przezyje kilka zatruc, staje sie coraz bardziej odporny. Cialo uczy sie szybciej niszczyc specjalna trucizne, az stanie sie calkowicie odporne na zatrucia. Ponadto zmniejsza sie równiez szkodliwe dzialanie innych toksyn roslinnych, poniewaz sa one podobnie skomponowane.");
			}
			else if (GiftCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Inna grupa trucizn pochodzi z królestwa zwierzat. Przewaznie przenoszone przez owady, natychmiast przedostaja sie do krwioobiegu przez kolce i szczypce zwierzecia. Efekt jest zwykle krótszy, ale nieco bardziej intensywny niz w przypadku toksyn roslinnych. Toksyny zwierzece sa znacznie rzadziej spotykane na ostrzach broni, poniewaz zaopatrzenie jest drozsze.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Równiez w tym przypadku rosnacy opór widziec mozna jako wzrost zatruc. Podobnie jak w przypadku toksyn roslinnych, czas dzialania zmniejsza sie wraz z pewnymi trucizna zwierzeca w celu uzyskania pelnej odpornosci. Jednoczesnie zmniejsza sie szkodliwy wplyw wszystkich toksyn zwierzecych, poniewaz opieraja sie one na podobnych mechanizmach, a organizm uczy sie lepiej przeciwdzialac ich skutkom.");
			}
			else if (GiftCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Ostatnia wazna grupa, o której nalezy wspomniec, sa toksyczne opary. Ich dzialanie jest natychmiastowe i intensywne, nawet jesli zwykle ograniczone do kilku sekund. Mimo, ze organizm moze równiez stac sie odporny z czasem, opary maja dodatkowy efekt korozyjny i rabuja poszkodowanego z powietrza do oddychania, dzieki czemu nigdy nie ucieka sie calkowicie nieszkodliwie.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednak bez wzgledu na to, z jaka forma toksyn organizm zostal narazony, doswiadczenie zwieksza sie, aby uniknac wszelkiego rodzaju zatruc.");
			}
			else if (GiftCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednak po zatruciu nie wystarczy zwykla roslina lecznicza, poniewaz trucizna pozostaje w organizmie.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Roslina nazywana leczniczym buds leczniczy jest jednak zglaszana, aby nagle zniwelowac efekt zatrucia.");
			}
			else if (GiftCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Nawet doswiadczeni alchemicy potrafia przeciwdzialac zatruciom, które nie tylko niweluja istniejace zatrucia, ale takze maja krótkotrwaly efekt powypadkowy i zapewniaja ochrone przed dalszymi zatruciami.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednakze, jesli te srodki zaradcze nie sa dostepne, przynajmniej spozycie duzej ilosci plynu moze pomóc w szybszym wyplukaniu trucizny z organizmu....");
			};
		};

		B_ShowGiftText (Gift_01);
	};
};

FUNC VOID Use_Bookstand_Gift_02_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Gift_02 == 0)
		{
			GiftCounter += 1;

			Gift_02 = GiftCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_GIFT, LOG_NOTE);

			if (GiftCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "... dotrzec do ciala i rozwinac ich szkodliwe dzialanie. Zdrowie doznaje stalych obrazen przez pewien okres czasu, az do momentu zneutralizowania lub wyeliminowania trucizny przez organizm.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Toksyny dzieli sie na rózne grupy. Woski identyfikuja jeden z nich. Bez wzgledu na to, czy sa to trujace grzyby czy rosliny, ich spozycie nastepuje z pewnym opóznieniem, poniewaz sa one stopniowo wchlaniane.");
			}
			else if (GiftCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Jesli jednak bezposrednio przedostana sie one do krwioobiegu, ich dzialanie jest natychmiastowe. Wydaje sie, ze sa one znacznie silniejsze, ale krótsze. Podaje sie, ze niektórzy ludzie i inne racjonalnie utalentowane istoty celowo uzywaja swojej broni do zatrucia przeciwników w walce.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jesli jednak ktos przezyje kilka zatruc, staje sie coraz bardziej odporny. Cialo uczy sie szybciej niszczyc specjalna trucizne, az stanie sie calkowicie odporne na zatrucia. Ponadto zmniejsza sie równiez szkodliwe dzialanie innych toksyn roslinnych, poniewaz sa one podobnie skomponowane.");
			}
			else if (GiftCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Inna grupa trucizn pochodzi z królestwa zwierzat. Przewaznie przenoszone przez owady, natychmiast przedostaja sie do krwioobiegu przez kolce i szczypce zwierzecia. Efekt jest zwykle krótszy, ale nieco bardziej intensywny niz w przypadku toksyn roslinnych. Toksyny zwierzece sa znacznie rzadziej spotykane na ostrzach broni, poniewaz zaopatrzenie jest drozsze.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Równiez w tym przypadku rosnacy opór widziec mozna jako wzrost zatruc. Podobnie jak w przypadku toksyn roslinnych, czas dzialania zmniejsza sie wraz z pewnymi trucizna zwierzeca w celu uzyskania pelnej odpornosci. Jednoczesnie zmniejsza sie szkodliwy wplyw wszystkich toksyn zwierzecych, poniewaz opieraja sie one na podobnych mechanizmach, a organizm uczy sie lepiej przeciwdzialac ich skutkom.");
			}
			else if (GiftCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Ostatnia wazna grupa, o której nalezy wspomniec, sa toksyczne opary. Ich dzialanie jest natychmiastowe i intensywne, nawet jesli zwykle ograniczone do kilku sekund. Mimo, ze organizm moze równiez stac sie odporny z czasem, opary maja dodatkowy efekt korozyjny i rabuja poszkodowanego z powietrza do oddychania, dzieki czemu nigdy nie ucieka sie calkowicie nieszkodliwie.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednak bez wzgledu na to, z jaka forma toksyn organizm zostal narazony, doswiadczenie zwieksza sie, aby uniknac wszelkiego rodzaju zatruc.");
			}
			else if (GiftCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednak po zatruciu nie wystarczy zwykla roslina lecznicza, poniewaz trucizna pozostaje w organizmie.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Roslina nazywana leczniczym buds leczniczy jest jednak zglaszana, aby nagle zniwelowac efekt zatrucia.");
			}
			else if (GiftCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Nawet doswiadczeni alchemicy potrafia przeciwdzialac zatruciom, które nie tylko niweluja istniejace zatrucia, ale takze maja krótkotrwaly efekt powypadkowy i zapewniaja ochrone przed dalszymi zatruciami.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednakze, jesli te srodki zaradcze nie sa dostepne, przynajmniej spozycie duzej ilosci plynu moze pomóc w szybszym wyplukaniu trucizny z organizmu....");
			};
		};

		B_ShowGiftText (Gift_02);
	};
};

FUNC VOID Use_Bookstand_Gift_03_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Gift_03 == 0)
		{
			GiftCounter += 1;

			Gift_03 = GiftCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_GIFT, LOG_NOTE);

			if (GiftCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "... dotrzec do ciala i rozwinac ich szkodliwe dzialanie. Zdrowie doznaje stalych obrazen przez pewien okres czasu, az do momentu zneutralizowania lub wyeliminowania trucizny przez organizm.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Toksyny dzieli sie na rózne grupy. Woski identyfikuja jeden z nich. Bez wzgledu na to, czy sa to trujace grzyby czy rosliny, ich spozycie nastepuje z pewnym opóznieniem, poniewaz sa one stopniowo wchlaniane.");
			}
			else if (GiftCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Jesli jednak bezposrednio przedostana sie one do krwioobiegu, ich dzialanie jest natychmiastowe. Wydaje sie, ze sa one znacznie silniejsze, ale krótsze. Podaje sie, ze niektórzy ludzie i inne racjonalnie utalentowane istoty celowo uzywaja swojej broni do zatrucia przeciwników w walce.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jesli jednak ktos przezyje kilka zatruc, staje sie coraz bardziej odporny. Cialo uczy sie szybciej niszczyc specjalna trucizne, az stanie sie calkowicie odporne na zatrucia. Ponadto zmniejsza sie równiez szkodliwe dzialanie innych toksyn roslinnych, poniewaz sa one podobnie skomponowane.");
			}
			else if (GiftCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Inna grupa trucizn pochodzi z królestwa zwierzat. Przewaznie przenoszone przez owady, natychmiast przedostaja sie do krwioobiegu przez kolce i szczypce zwierzecia. Efekt jest zwykle krótszy, ale nieco bardziej intensywny niz w przypadku toksyn roslinnych. Toksyny zwierzece sa znacznie rzadziej spotykane na ostrzach broni, poniewaz zaopatrzenie jest drozsze.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Równiez w tym przypadku rosnacy opór widziec mozna jako wzrost zatruc. Podobnie jak w przypadku toksyn roslinnych, czas dzialania zmniejsza sie wraz z pewnymi trucizna zwierzeca w celu uzyskania pelnej odpornosci. Jednoczesnie zmniejsza sie szkodliwy wplyw wszystkich toksyn zwierzecych, poniewaz opieraja sie one na podobnych mechanizmach, a organizm uczy sie lepiej przeciwdzialac ich skutkom.");
			}
			else if (GiftCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Ostatnia wazna grupa, o której nalezy wspomniec, sa toksyczne opary. Ich dzialanie jest natychmiastowe i intensywne, nawet jesli zwykle ograniczone do kilku sekund. Mimo, ze organizm moze równiez stac sie odporny z czasem, opary maja dodatkowy efekt korozyjny i rabuja poszkodowanego z powietrza do oddychania, dzieki czemu nigdy nie ucieka sie calkowicie nieszkodliwie.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednak bez wzgledu na to, z jaka forma toksyn organizm zostal narazony, doswiadczenie zwieksza sie, aby uniknac wszelkiego rodzaju zatruc.");
			}
			else if (GiftCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednak po zatruciu nie wystarczy zwykla roslina lecznicza, poniewaz trucizna pozostaje w organizmie.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Roslina nazywana leczniczym buds leczniczy jest jednak zglaszana, aby nagle zniwelowac efekt zatrucia.");
			}
			else if (GiftCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Nawet doswiadczeni alchemicy potrafia przeciwdzialac zatruciom, które nie tylko niweluja istniejace zatrucia, ale takze maja krótkotrwaly efekt powypadkowy i zapewniaja ochrone przed dalszymi zatruciami.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednakze, jesli te srodki zaradcze nie sa dostepne, przynajmniej spozycie duzej ilosci plynu moze pomóc w szybszym wyplukaniu trucizny z organizmu....");
			};
		};

		B_ShowGiftText (Gift_03);
	};
};

FUNC VOID Use_Bookstand_Gift_04_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Gift_04 == 0)
		{
			GiftCounter += 1;

			Gift_04 = GiftCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_GIFT, LOG_NOTE);

			if (GiftCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "... dotrzec do ciala i rozwinac ich szkodliwe dzialanie. Zdrowie doznaje stalych obrazen przez pewien okres czasu, az do momentu zneutralizowania lub wyeliminowania trucizny przez organizm.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Toksyny dzieli sie na rózne grupy. Woski identyfikuja jeden z nich. Bez wzgledu na to, czy sa to trujace grzyby czy rosliny, ich spozycie nastepuje z pewnym opóznieniem, poniewaz sa one stopniowo wchlaniane.");
			}
			else if (GiftCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Jesli jednak bezposrednio przedostana sie one do krwioobiegu, ich dzialanie jest natychmiastowe. Wydaje sie, ze sa one znacznie silniejsze, ale krótsze. Podaje sie, ze niektórzy ludzie i inne racjonalnie utalentowane istoty celowo uzywaja swojej broni do zatrucia przeciwników w walce.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jesli jednak ktos przezyje kilka zatruc, staje sie coraz bardziej odporny. Cialo uczy sie szybciej niszczyc specjalna trucizne, az stanie sie calkowicie odporne na zatrucia. Ponadto zmniejsza sie równiez szkodliwe dzialanie innych toksyn roslinnych, poniewaz sa one podobnie skomponowane.");
			}
			else if (GiftCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Inna grupa trucizn pochodzi z królestwa zwierzat. Przewaznie przenoszone przez owady, natychmiast przedostaja sie do krwioobiegu przez kolce i szczypce zwierzecia. Efekt jest zwykle krótszy, ale nieco bardziej intensywny niz w przypadku toksyn roslinnych. Toksyny zwierzece sa znacznie rzadziej spotykane na ostrzach broni, poniewaz zaopatrzenie jest drozsze.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Równiez w tym przypadku rosnacy opór widziec mozna jako wzrost zatruc. Podobnie jak w przypadku toksyn roslinnych, czas dzialania zmniejsza sie wraz z pewnymi trucizna zwierzeca w celu uzyskania pelnej odpornosci. Jednoczesnie zmniejsza sie szkodliwy wplyw wszystkich toksyn zwierzecych, poniewaz opieraja sie one na podobnych mechanizmach, a organizm uczy sie lepiej przeciwdzialac ich skutkom.");
			}
			else if (GiftCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Ostatnia wazna grupa, o której nalezy wspomniec, sa toksyczne opary. Ich dzialanie jest natychmiastowe i intensywne, nawet jesli zwykle ograniczone do kilku sekund. Mimo, ze organizm moze równiez stac sie odporny z czasem, opary maja dodatkowy efekt korozyjny i rabuja poszkodowanego z powietrza do oddychania, dzieki czemu nigdy nie ucieka sie calkowicie nieszkodliwie.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednak bez wzgledu na to, z jaka forma toksyn organizm zostal narazony, doswiadczenie zwieksza sie, aby uniknac wszelkiego rodzaju zatruc.");
			}
			else if (GiftCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednak po zatruciu nie wystarczy zwykla roslina lecznicza, poniewaz trucizna pozostaje w organizmie.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Roslina nazywana leczniczym buds leczniczy jest jednak zglaszana, aby nagle zniwelowac efekt zatrucia.");
			}
			else if (GiftCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Nawet doswiadczeni alchemicy potrafia przeciwdzialac zatruciom, które nie tylko niweluja istniejace zatrucia, ale takze maja krótkotrwaly efekt powypadkowy i zapewniaja ochrone przed dalszymi zatruciami.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednakze, jesli te srodki zaradcze nie sa dostepne, przynajmniej spozycie duzej ilosci plynu moze pomóc w szybszym wyplukaniu trucizny z organizmu....");
			};
		};

		B_ShowGiftText (Gift_04);
	};
};

FUNC VOID Use_Bookstand_Gift_05_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Gift_05 == 0)
		{
			GiftCounter += 1;

			Gift_05 = GiftCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_GIFT, LOG_NOTE);

			if (GiftCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "... dotrzec do ciala i rozwinac ich szkodliwe dzialanie. Zdrowie doznaje stalych obrazen przez pewien okres czasu, az do momentu zneutralizowania lub wyeliminowania trucizny przez organizm.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Toksyny dzieli sie na rózne grupy. Woski identyfikuja jeden z nich. Bez wzgledu na to, czy sa to trujace grzyby czy rosliny, ich spozycie nastepuje z pewnym opóznieniem, poniewaz sa one stopniowo wchlaniane.");
			}
			else if (GiftCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Jesli jednak bezposrednio przedostana sie one do krwioobiegu, ich dzialanie jest natychmiastowe. Wydaje sie, ze sa one znacznie silniejsze, ale krótsze. Podaje sie, ze niektórzy ludzie i inne racjonalnie utalentowane istoty celowo uzywaja swojej broni do zatrucia przeciwników w walce.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jesli jednak ktos przezyje kilka zatruc, staje sie coraz bardziej odporny. Cialo uczy sie szybciej niszczyc specjalna trucizne, az stanie sie calkowicie odporne na zatrucia. Ponadto zmniejsza sie równiez szkodliwe dzialanie innych toksyn roslinnych, poniewaz sa one podobnie skomponowane.");
			}
			else if (GiftCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Inna grupa trucizn pochodzi z królestwa zwierzat. Przewaznie przenoszone przez owady, natychmiast przedostaja sie do krwioobiegu przez kolce i szczypce zwierzecia. Efekt jest zwykle krótszy, ale nieco bardziej intensywny niz w przypadku toksyn roslinnych. Toksyny zwierzece sa znacznie rzadziej spotykane na ostrzach broni, poniewaz zaopatrzenie jest drozsze.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Równiez w tym przypadku rosnacy opór widziec mozna jako wzrost zatruc. Podobnie jak w przypadku toksyn roslinnych, czas dzialania zmniejsza sie wraz z pewnymi trucizna zwierzeca w celu uzyskania pelnej odpornosci. Jednoczesnie zmniejsza sie szkodliwy wplyw wszystkich toksyn zwierzecych, poniewaz opieraja sie one na podobnych mechanizmach, a organizm uczy sie lepiej przeciwdzialac ich skutkom.");
			}
			else if (GiftCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Ostatnia wazna grupa, o której nalezy wspomniec, sa toksyczne opary. Ich dzialanie jest natychmiastowe i intensywne, nawet jesli zwykle ograniczone do kilku sekund. Mimo, ze organizm moze równiez stac sie odporny z czasem, opary maja dodatkowy efekt korozyjny i rabuja poszkodowanego z powietrza do oddychania, dzieki czemu nigdy nie ucieka sie calkowicie nieszkodliwie.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednak bez wzgledu na to, z jaka forma toksyn organizm zostal narazony, doswiadczenie zwieksza sie, aby uniknac wszelkiego rodzaju zatruc.");
			}
			else if (GiftCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednak po zatruciu nie wystarczy zwykla roslina lecznicza, poniewaz trucizna pozostaje w organizmie.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Roslina nazywana leczniczym buds leczniczy jest jednak zglaszana, aby nagle zniwelowac efekt zatrucia.");
			}
			else if (GiftCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Nawet doswiadczeni alchemicy potrafia przeciwdzialac zatruciom, które nie tylko niweluja istniejace zatrucia, ale takze maja krótkotrwaly efekt powypadkowy i zapewniaja ochrone przed dalszymi zatruciami.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednakze, jesli te srodki zaradcze nie sa dostepne, przynajmniej spozycie duzej ilosci plynu moze pomóc w szybszym wyplukaniu trucizny z organizmu....");
			};
		};

		B_ShowGiftText (Gift_05);
	};
};

FUNC VOID Use_Bookstand_Gift_06_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Gift_06 == 0)
		{
			GiftCounter += 1;

			Gift_06 = GiftCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_GIFT, LOG_NOTE);

			if (GiftCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "... dotrzec do ciala i rozwinac ich szkodliwe dzialanie. Zdrowie doznaje stalych obrazen przez pewien okres czasu, az do momentu zneutralizowania lub wyeliminowania trucizny przez organizm.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Toksyny dzieli sie na rózne grupy. Woski identyfikuja jeden z nich. Bez wzgledu na to, czy sa to trujace grzyby czy rosliny, ich spozycie nastepuje z pewnym opóznieniem, poniewaz sa one stopniowo wchlaniane.");
			}
			else if (GiftCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Jesli jednak bezposrednio przedostana sie one do krwioobiegu, ich dzialanie jest natychmiastowe. Wydaje sie, ze sa one znacznie silniejsze, ale krótsze. Podaje sie, ze niektórzy ludzie i inne racjonalnie utalentowane istoty celowo uzywaja swojej broni do zatrucia przeciwników w walce.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jesli jednak ktos przezyje kilka zatruc, staje sie coraz bardziej odporny. Cialo uczy sie szybciej niszczyc specjalna trucizne, az stanie sie calkowicie odporne na zatrucia. Ponadto zmniejsza sie równiez szkodliwe dzialanie innych toksyn roslinnych, poniewaz sa one podobnie skomponowane.");
			}
			else if (GiftCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Inna grupa trucizn pochodzi z królestwa zwierzat. Przewaznie przenoszone przez owady, natychmiast przedostaja sie do krwioobiegu przez kolce i szczypce zwierzecia. Efekt jest zwykle krótszy, ale nieco bardziej intensywny niz w przypadku toksyn roslinnych. Toksyny zwierzece sa znacznie rzadziej spotykane na ostrzach broni, poniewaz zaopatrzenie jest drozsze.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Równiez w tym przypadku rosnacy opór widziec mozna jako wzrost zatruc. Podobnie jak w przypadku toksyn roslinnych, czas dzialania zmniejsza sie wraz z pewnymi trucizna zwierzeca w celu uzyskania pelnej odpornosci. Jednoczesnie zmniejsza sie szkodliwy wplyw wszystkich toksyn zwierzecych, poniewaz opieraja sie one na podobnych mechanizmach, a organizm uczy sie lepiej przeciwdzialac ich skutkom.");
			}
			else if (GiftCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Ostatnia wazna grupa, o której nalezy wspomniec, sa toksyczne opary. Ich dzialanie jest natychmiastowe i intensywne, nawet jesli zwykle ograniczone do kilku sekund. Mimo, ze organizm moze równiez stac sie odporny z czasem, opary maja dodatkowy efekt korozyjny i rabuja poszkodowanego z powietrza do oddychania, dzieki czemu nigdy nie ucieka sie calkowicie nieszkodliwie.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednak bez wzgledu na to, z jaka forma toksyn organizm zostal narazony, doswiadczenie zwieksza sie, aby uniknac wszelkiego rodzaju zatruc.");
			}
			else if (GiftCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednak po zatruciu nie wystarczy zwykla roslina lecznicza, poniewaz trucizna pozostaje w organizmie.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Roslina nazywana leczniczym buds leczniczy jest jednak zglaszana, aby nagle zniwelowac efekt zatrucia.");
			}
			else if (GiftCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Nawet doswiadczeni alchemicy potrafia przeciwdzialac zatruciom, które nie tylko niweluja istniejace zatrucia, ale takze maja krótkotrwaly efekt powypadkowy i zapewniaja ochrone przed dalszymi zatruciami.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Jednakze, jesli te srodki zaradcze nie sa dostepne, przynajmniej spozycie duzej ilosci plynu moze pomóc w szybszym wyplukaniu trucizny z organizmu....");
			};
		};

		B_ShowGiftText (Gift_06);
	};
};
