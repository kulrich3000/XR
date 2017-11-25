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
			B_LogEntry (TOPIC_FireContest,"Jako nowicjusz mam prawo zadac zbadania pozaru. Kazdy z trzech magików z Wysokiej Rady przeanalizuje mnie. Jesli przejde obok, zostane dopuszczony do kola ognia.");
		};
	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, "Test ogniowy"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Taki nowicjusz nie jest wybrany, byc moze jednak czuje chec poddania sie badaniu magii. Jesli uwaznie rozwazy te decyzje i upiera sie, moze przystapic do testu i zaden magik nie moze jej odmówic. Ale to nie tylko testowanie magii jest nakladane na niego, ale on równiez znalezc jego oswiecenie przez ogien. Jezeli bedzie nalegal na to przed Wysokim Rada, nalezy mu przyznac BADANIE PRZECIWKO POZARU.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "W tym egzaminie, roztropnosc, sila i umiejetnosci nowicjusza powinny byc równie wazne. Wiec przeprowadzi trzy próby, z których kazda zostanie przyjeta przez jednego z magów Rady Najwyzszej, zanim przysiege plomienia zaplonie i bedzie mógl zawrzec przymierze z ogniem. "); 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "To wlasnie jest wola Inno i tak wlasnie ma byc realizowane. "					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Wysoka Rada"					);
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

					Doc_PrintLines	( nDocID,  0, "Pochodzenie Orderu Magazji Leczniczych"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Zakon Uzdrawiajacych Magów zrodzil sie z idei mniej znanego magika Kamarosa. Mówi sie, ze pochodzil z Myrthany, gdzie dlugo studiowal neutralna magie. Ale pewnego dnia, jak sie mówi, Adanos wyslal mu wizje. Adanos byl Panem zycia i polecil Kamarosowi go chronic i zachowac.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Nauczyl go wiec sztuki magii uzdrawiajacej. Wiec przeniósl sie, aby znalezc wiecej magów, aby pomóc mu w jego misji. Nazwiska tych magów nie sa znane, ale uwaza sie ich za zalozycieli magii uzdrawiajacej."); 
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

					Doc_PrintLines	( nDocID,  0, "Czary uzdrawiania dzisiaj"					);
					Doc_PrintLine	( nDocID,  0, "-------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Do zadan dzisiejszych magów leczniczych nalezy nadal uzdrawianie i wzmacnianie ludzi. Jednak oprócz magicznego uzdrawiania, duza wage przywiazuje sie równiez do eliksiru uzdrawiajacego i odswiezajacego. Do dzis magowie leczacy nie sa zbyt rozpowszechnieni, ale tylko w mniejszych grupach.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Wiekszosc magów uzdrawiajacych to dawni magicy wodni, którzy chca sluzyc Adanosowi za pomoca niewojennych srodków. W przeciwienstwie do Magicystów Wody, nie staraja sie oni uszkodzic mocniejsza strone, ale wspierac slabsza."); 
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

					Doc_PrintLines	( nDocID,  0, "Zycie uzdrawiajacego maga"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Uzdrowiskowe magowie maja mniej scisla strukture niz inne magiczne galezie. W zasadzie magowie leczacy nie dbaja o kwestie polityczne. Równiez magowie uzdrawiajacy nie maja prawie zadnego kontaktu z innymi magicznymi galeziami, jak pisze to Kamaros w ksiedze podstawowych zasad magii uzdrawiajacej:");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Tak wiec jedynie magik uzdrawiania ma obowiazek nie interweniowac w sposób szerszy w wstawiennictwie miedzy bogami, lecz udzielac pomocy i wsparcia osobom pokrzywdzonym, ale zapewnic im wsparcie przeciwko swoim przeciwnikom, które nie moga miec wojennego charakteru. '"); 
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

					Doc_PrintLines	( nDocID,  0, "Obrona przed atakujacymi"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Jesli ma powstac sytuacja, w której uzdrawiajacy magik musi sie bronic, to jest on wyposazony w magiczna paleczke, która bedzie dlugo spac z wrogiem. Moze równiez uzyc magii, aby sprawic, ze nieprzyjaciel stanie sie nieprzytomny lub obezwladni w inny sposób. Jednak zabicie wroga jest sprzeczne z przykazaniami uzdrawiajacego magika.");
			
					
					
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
						Doc_PrintLines	( nDocID,  0, "... Mam nadzieje, ze kopula ochroni rude przed dostepem Beliara. Król jest na tyle prosty, ze wierzy, iz budujemy kopule, aby uchronic nas przed erupcjami, ale tak dlugo, jak tylko bedziemy dochodzic do naszej wyzszej linii z tymi radami, dopóty bedzie to z nami wlasciwe. Mam nadzieje, ze bedzie wystarczajaco duzo czasu na przygotowanie sie do walki. Jak tylko powstanie kopula wokól Minentala, spróbuje z cala moja moca interweniowac w nadchodzaca walke. ");
						Doc_PrintLines	( nDocID,  0, "");
			
					
	
			
		if  (hero.guild == GIL_KDF)
		{	
			PlayerGetsAmulettOfDeath = TRUE;
			PLAYER_TALENT_RUNES[SPL_MasterOfDisaster] = TRUE; 
			B_LogEntry (TOPIC_TalentRunes,"Skladniki dla pocisku swietego Rune: 1 poswiecona woda, ale bez zaklec zaklecia.");
			
			
						
						Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "... Zgodnie z instrukcjami, po prostu wyschnalem poswiecona wode Inno na rune i zebralem ja przy stole na runach. Kamien runowy jest zniszczony, mysle, ze to powiedzenie jest naprawde dostepne tylko dla Jednego."); 
						Doc_PrintLines	( nDocID,  1, "Dalem swietej Aurze Innos zakonnemu schtzowi. Od tej chwili bedzie on trzymany przez glowe klasztoru az do dnia, w którym ujawni sie Jeden."	);
						Doc_PrintLines	( nDocID,  1, "Niech lzy Inna odegraja role w nadchodzacej walce. Jest to jednak prawdopodobnie zbyt niebezpieczne, aby utrzymac je w pozycji otwartej. Zostawie je tutaj w bibliotece."	);
						Doc_Show		( nDocID );
						
						
		}
		else if (hero.guild == GIL_PAL)
		{
			PAL_KnowsAbout_FINAL_BLESSING = TRUE;
			PLAYER_TALENT_RUNES[SPL_PalTeleportSecret] 		= TRUE; 		
			PrintScreen	(PRINT_LearnPalTeleportSecret, -1, -1, FONT_Screen, 2);
			
			Log_CreateTopic (TOPIC_TalentRunes,LOG_NOTE);
			B_LogEntry (TOPIC_TalentRunes,"Aby stworzyc rune, potrzebuje róznych skladników na kazda rune. Dzieki tym skladnikom i pustej runie moge stworzyc pozadana rune przy stole.");
			B_LogEntry (TOPIC_TalentRunes,"Skladniki Rune - geheimer Teleport: 1.");
			
			
		
						
						Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "Aby dostac sie do sekretnego miejsca trzeba zbudowac teleportrune. Bedziesz potrzebowal pustej runy i malej butelki poswieconej wody. Dzieki stworzonym runom mozesz sie teleporteirowac do pokoju."); 
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "Jestem teraz bardzo pewny, ze to wlasnie z lzami lez Inno paladyni od pierwszych dni palacowie, dawno zapomnianego wysokiego poswiecenia miecza, odbyli. Tak wiec powinno byc mozliwe nadanie poswieconej broni dodatkowej mocy dzieki odkrytej przeze mnie butelce."	);
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
			B_LogEntry (TOPIC_TalentSmith,"Do podkuwania pistoletu potrzebuje najpierw kawalka surowej stali. Musze podgrzac stal kuznia, a nastepnie przeniesc ja na kowadelko do pozadanego ksztaltu. Do broni wyzszej jakosci potrzebne sa czesto substancje, które nadaja bron specjalnym wlasciwosciom.");
			B_LogEntry (TOPIC_TalentSmith,"Jesli dodam 4 rude i 5 krwi smoka, to dla siebie sam moge wykuc ERZ-DRACHENT ÖTER?");
			B_LogEntry (TOPIC_TalentSmith,"Jesli dodam 5 rudy i 5 krwi smoka, to dla siebie sam moge wykuc DUZE ERZ DRAGONY KILLER?");
			PlayerGetsFinalDJGArmor = TRUE;
		
						
						Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "Z broni wazki."); 
						Doc_PrintLines	( nDocID,  1, "Aby uzyskac najwyzsza twardosc luski wykonanej z wag smoków, mozna ja wylozyc ruda wydobyta w dolinie wyspy Karynis."					);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "Aby uzyskac ostrze godne Smoczego Pana, musisz moczyc ostrze we krwi smoka. Dodanie zaledwie 5 malych fiolek zapewnia stalowi twardosc i ostrosc, której nie mozna przeciwstawic."					);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "Uwaga: Karynis to dzisiejsza khoryna.");
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

				Doc_PrintLines	( nDocID,  0, "Wykorzystanie Boskiej Magii do przywolywania celów"					);
				Doc_PrintLine	( nDocID,  0, "-------------------------"					);
				Doc_PrintLine	( nDocID,  0, ""					);
				
				Doc_PrintLines	( nDocID,  0, "Kiedy czarodziej nauczy sie wykorzystac moc Innosa lub Adanosa dla siebie, moze, jesli opanuje podstawy kulistego przejawu magii Beliara, stworzyc slugi stworzone z zywiolu, dla którego stoi dany bóstwo.");
			
				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, ""					);
				Doc_PrintLines	( nDocID,  1, "Do stworzenia takiej runy sluzy tradycyjna golemruna, która polaczona jest z sercem lodu lub golemem pozarowym przy okraglym stole.");
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

					PrintScreen	("Nauczony: Tworzenie odpornosci na lody.", -1, -1, FONT_Screen, 2);
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

				Doc_PrintLines	( nDocID,  0, "Podstawy manifestacji kulistej"					);
				Doc_PrintLine	( nDocID,  0, "-------------------------"					);
				Doc_PrintLine	( nDocID,  0, ""					);
				
				Doc_PrintLines	( nDocID,  0, "Czarodziej kieruje swoja uwage i skupienie na materii, która ma powstac w stworzeniu.");
			
				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, ""					);
				Doc_PrintLines	( nDocID,  1, "Po tym, jak krótko nawiazuje duchowe polaczenie z powstajacym stworzeniem i daje mu czesc jego magicznej energii, znów rozluznia to polaczenie, tak ze istota jest obdarzona swoja wlasna czastkowa wola, ale mimo to zwiazana z jego twórca, podaza za nim i wspiera go w walce.");
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

					PrintScreen	("Uczony: Manifestacja Spährische", -1, -1, FONT_Screen, 2);
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

				Doc_PrintLines	( nDocID,  0, "Nawet godny czlowiek nie wie wszystkiego."				);
				Doc_Show		( nDocID );
	};
};

