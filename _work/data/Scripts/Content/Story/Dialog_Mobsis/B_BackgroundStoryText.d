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
			Doc_PrintLines	( StPl_nDocID,  0, "... byla madrosc i rozum. Radanos spogladal w d�l i cieszyl sie z tego, co sie stalo.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Wolni od smutku i smutku, wszyscy mieszkancy wykonywali codzienna prace, kazdy wedlug funkcji kasty. Wszyscy bowiem byli blogoslawieni czescia Jego Boskiej mocy i milosci. A dzieki wladzy ludzie mogli swobodnie ksztaltowac swiat zgodnie z wlasna wola. Tak wiec wszyscy ludzie byli czescia boskiej mocy tw�rczej i byli r�wni."		);     
	}
	else if (pos == 2)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Kasta kaplana stala sie jednak czlowiekiem, kt�rego serce bylo pozrebione przez zadze mocy i zazdrosci. Nie m�gl zniesc, ze kazdy byl blogoslawiony w ten sam spos�b przez jednego Boga. Nazywal sie Xeres. I on wymyslil plan, kt�ry powinien kiedykolwiek polozyc kres harmonii i r�wnosci.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Falszowal intrygi i udawal, ze nizsze kasty chca wykorzystac swoja czesc boskiej mocy do obalenia innych. I udalo mu sie pozyskac wielu kaplan�w, jak uczonych, za sw�j plan i zniszczyc serca wielu. I tak postanowili odebrac im czesc wladzy, aby ich wielka liczba nie byla juz dla nich zagrozeniem. Ale tylko nieliczni z nich wiedzieli, jakie plany naprawde realizowal."		);     
	}
	else if (pos == 3)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Wstrzymali wiec oni rytual rabowania czlonk�w innych kast czesci ich wladzy. A ci, kt�rzy spiskowali sie z Xeresem, polaczyli swoja czesc wladzy do przeprowadzenia rytualu.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Ale wszyscy oni zostali oszukani, a Xeres pozbawil ich wladzy, zycia i poswiecenia. Tylko jego najblizsi sprzymierzency zostali oszczedzeni i zrealizowali sw�j zlowieszczy plan z krwia zdradzonego. I krew wielu z nich powinna nadal spadac na ich zadze wladzy."		);     
	}
	else if (pos == 4)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Rytual nadal wykorzystywal przywiazanie czlowieka do wladzy jednego Boga przeciwko niemu. Tak samo jak ciala zabitych zostaly podzielone, tak samo jak Radanos, wola i moc zabitych, rozbitych i rozrzuconych na tysiac sztuk. A niebo sie zaciemnilo i ziemia drzala.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Ludzie czuli, ze ich B�g nie jest juz ich Bogiem i szok z powodu niewiarygodnej straty sparalizowal cale zycie. Jednak budowniczowie szybko dowiedzieli sie o straszliwym oburzeniu, jakie wywolala firma Xeres. A po paralizu pierwszego momentu, po ustapieniu miejsca, we wszystkich kastach pojawila sie niewypowiedziana zlosc."		);     
	}
	else if (pos == 5)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Ludzie uzywali miecza i magii do postawienia i osadzenia bluznierczych Xeres. Ale nikt nie byl w stanie mu sie sprzeciwic i jego wierni.... Wiecej ich moc byla zbyt wielka, nie do pokonania, magiczne mechanizmy ochronne.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Ludzie musieli stopniowo zdawac sobie sprawe, ze ich bunt poszedl na marne. A kiedy ognisty gniew na utrate Boga ustapil miejsca rozpaczy, kazda wola do walki natychmiast ustala. A Xeres zniszczyl kraj tyrania i rozpoczelo sie straszliwe morderstwo."		);     
	}
	else if (pos == 6)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Wszystko, co Xeres widzial jako zagrozenie dla jego mocy, zostalo wykonane na ziemi. Swiatynie i miejsca uwazane za swiete i uswiecone czlowiekowi zostaly zbezczeszczone, spalone i posypane kurzem. Wielu mieszkanc�w zdalo sobie sprawe, ze sa bezsilni wobec okrutnej dzialalnosci Xere i szukali ratunku w locie. Ale byli tez tacy, kt�rzy poddali sie idolowi i przysiagli, aby p�jsc za nim.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "A to, co kiedys bylo kwitnaca kultura, zaczelo gasic przez chciwosc wladzy, slepote i barbarzynstwo......"		);     
	}
	else if (pos == 7)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Xeres przypomnial o kolejnym planie konsolidacji swojej wladzy i istnienia na ziemi przez caly czas. W tym celu stworzyl on piecioro posiadaczy mocy, pieciu w liczbie i nakarmil ich wolnymi mocami obalonego Boga.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "I okazalo sie, ze czlowiek nieznanego pochodzenia, kt�ry przechwycil swiety miecz. To bylo poswiecone jedynemu Bogu.... i czesc pierwotnej mocy byla jeszcze w Nim. I wzial miecz i osadzil go przeciwko tyranii.... i zabil Xeresa i jego stworzenia."		);     
	}
	else if (pos == 8)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "kokos jest owocem szczeg�lnie interesujacym dla magii. Sama konsumpcja mleka i miesa juz sie regeneruje i zwieksza magiczne zdolnosci.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Jesli jednak dodasz do stolu alchemicznego ekstrakt z chwastu z pola i podgrzewasz go powoli i r�wnomiernie, otrzymasz ros�l, kt�ry jest o wiele bardziej skuteczny...."		);     
	}
	else if (pos == 9)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... w tym samym czasie jednak w sferach niebianskiej nowej tw�rczosci ruszylo nowe stworzenie. Fragmenty mocy i woli, kt�re pochodzily od jednego Boga, polaczyly sie ponownie...... ale w trzech czesciach z wlasna wola i moca. Powstaly nowe celestiali i przejeli kontrole nad powierzchnia ziemi.... Wiecej");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "... I rozpoczal sie nowy wiek....."		);     
	}
	else if (pos == 10)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... wiek trzech nowych b�stw: Innosa, Adanosa i Beliara.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Pierwszym z nich byl Innos. Spogladal w d�l na ziemie i musial sobie uswiadomic, ze tylko nieliczni ludzie wciaz ja zamieszkiwali. Wczesniejsze wydarzenia kosztowaly zbyt wiele zycia. Postanowil wiec stworzyc nowych ludzi i umiescic ich w r�znych czesciach swiata."		);     
	}
	else if (pos == 11)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Nastepnie Beliar wszedl do kraju. Widzial, ze istoty Inno - ludzie zamieszkiwali i rzadzili ziemia. On r�wniez chcial widziec jego dzielo utrwalone w stworzeniu i dlatego bestia zostala stworzona przez jego wole.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Ostatnio pojawil sie Adanos. Wiekszosc swojej osobowosci i postawy dzielil sie z pradziadkiem Radano. I spojrzal na ziemie i zadowolony z tego, co sie stalo."		);     
	}
	else if (pos == 12)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "I zn�w rozpoczal sie kr�tki okres pokoju i dobrobytu. Ocalali budowniczowie, rozrzuceni w wielu czesciach ziemi, stopniowo zaczeli powracac do przyzwyczajonego zycia codziennego, kiedy znali je przed strasznymi wydarzeniami.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "W miare uplywu dni, tygodni i miesiecy wszystkie straszliwe wydarzenia wok�l Xeres - przemoc, niezgoda i nier�wnosc - zdawaly sie nalezec do przeszlosci. I mezczyzni chwalili i czcili nowe b�stwa jako synowie przodk�w i trzech r�wnych braci."		);     
	}
	else if (pos == 13)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Okazalo sie jednak, ze tak samo jednoczone jak pochodzenie trzech bog�w wydawalo sie byc, tak r�zne jak byly one w czasie i ich pomysly na ksztaltowanie stworzenia. A gdy nie bylo juz zadnego konsensusu, kazdy domagal sie innej czesci stworzenia dla siebie. Beliar poswiecil sie ciemnosci i chaosowi, Innosowi ogniem i porzadkiem. Adanos, kt�ry dzielil wiekszosc osobowosci i postawy z przodkiem, poczatkowo pozostal niezdecydowany......");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "I mezczyzni chcieli dac kazdemu z bog�w czesc, kt�ra nadala mu stan. Ale uwielbienie ognia oznaczalo w tym samym czasie, ze ciemnosc miala byc zbuntowana i odwrotnie. Powstaly konflikty miedzy ludzmi, kt�re powinny byc najwieksza czcia b�stw."		);     
	}
	else if (pos == 14)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "A gniew obu b�stw Innosa i Beliara wobec siebie nawzajem r�sl i rozwijal sie w otwartym konflikcie. I Innos i Beliar walczyli miedzy soba, a niebo przycmilo.... Wiecej a ziemia drzala.....");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Ziemia drzala, niebo sie zaciemnilo. Miedzy Innosem a Beliarem toczyla sie ostra walka, niszczaca ziemie. A wyznawcy obu b�stw r�wniez walczyli miedzy soba. Kierowali swoja czesc Boskiej mocy przeciwko srodowisku, zagrazajac calemu stworzeniu."		);     
	}
	else if (pos == 15)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Wtedy Adanos wszedl na scene i stanal miedzy bracmi, aby rozstrzygnac ich kl�tnie. Dzieki jego madrosci i boskiej mocy, udalo mu sie zakonczyc otwarta kl�tnie swoich braci. I spojrzal w d�l i zobaczyl, co sie dzialo na ziemi, gdzie toczyla sie zaciekla wojna.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Po raz kolejny stworzenie bylo zagrozone przez rece ludzi, kt�rzy naduzyli boskiej mocy jako narzedzia niszczenia. I postanowil odebrac ludziom czesc wladzy. Tylko wybrani, kaplani bog�w, mogli teraz wplywac na Boza moc."		);     
	}
	else if (pos == 16)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "I spojrzal w d�l i zobaczyl, co sie dzialo na ziemi, gdzie toczyla sie zaciekla wojna. Po raz kolejny stworzenie bylo zagrozone przez rece ludzi, kt�rzy naduzyli boskiej mocy jako narzedzia niszczenia. I tak jak narodzil sie jego boski gniew, tak samo wznosza sie morza, jeziora i rzeki i biora wszystko razem z nimi.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Ludzie, zwierzeta walczyli o swoje przetrwanie i wielu utonelo w powodzi. Gdy woda zn�w sie uspokoila, na wsi kr�lowaly style. Dopiero stopniowo ocaleni zaczeli zbierac sie ponownie, aby zbudowac to, co zostalo wymyte."		);     
	}
	else if (pos == 17)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Jednak Adanos postanowil pozbawic ludzi wladzy. Tylko wybrani, kaplani bog�w, powinni od teraz miec mozliwosc wplywania na Boza moc.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Od tej pory Adanos postanowil dazyc do zachowania r�wnowagi. Uswiadomil sobie, ze pozycje jego braci sa nie do pogodzenia i ze wplyw jednego z nich - Innosa czy Beliara - nigdy nie bedzie wiekszy. Ani calkowity chaos, ani bezwzgledny porzadek nie pozwolilby na rozkwit tw�rczosci. A zmienna woda powinna stac sie jej elementem....."		);     
	}
	else if (pos == 18)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... Tak wiec Xeres zgromadzil swoich kaplan�w, aby rozpoczac ceremonie i stworzyc nosicieli wladzy. 5 sztuk, wyposazony w czesc uwolnionych sil Radano.... ale zwiazane z egzystencja Xere. (utwardzony)");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Ale jeden z rytual�w zawi�dl i stworzyl istote, kt�ra nie byla podobna do innych. Bo to nie byla wyzwolona moc zniszczonego Boga, kt�ry stal sie czescia jego.... taka byla jego wola...... (chroniony przed dzialaniem czynnik�w atmosferycznych). i sluga Xere' a przysiagl na zawsze wymazac jego nazwisko z Pisma Swietego."		);     
	};

	Doc_Show		( StPl_nDocID );
};
