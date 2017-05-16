// *********************
// Standard	Voice Module
// *********************

CLASS C_SVM
{
	// ------ B_Say_GuildGreetings ------
	var string MILGreetings;				//Miliz gr��t Miliz oer Paladin
	var string PALGreetings;				//Paladin gr��t Paladin oder Magier
	var string BELGreetings;				//Belianer gr��t Belianer
	var string AdanosGreetings;				//Adanos gr��t Adanos
	var string Weather;						//So ein Mistwetter!
	
	// ------ B_Say_AttackReason ------
	var string IGetYouStill;				//Upset-NSC sieht Spieler w�hrned seiner Angry-Time wieder. Greift mit altem AttackReason an.
	var string DieEnemy;					//Feind wird angegriffen
	var string DieMonster;					//gef�hrliches Monster wird angegriffen
	var string Addon_DieMonster;
	var string Addon_DieMonster2;
	var string DirtyThief;					//Dieb wird angegriffen
	var string HandsOff;					//SC fummelt an Objekt rum
	var string SheepKiller;					//Mensch greift Schaf an
	var string SheepKillerMonster;			//Monster greift Schaf an
	var string YouMurderer;					//Mensch hat Menschen umgebracht (kein Feind)
	var string DieStupidBeast;				//Torwachen schlagen ungef�hliches Monster tot, das versucht durchs Tor zu gehen	
	var string YouDareHitMe;				//SC hat NSC geschlagen
	var	string YouAskedForIt;				//SC hat trotz Aufforderung seine Waffe NICHT weggesteckt
	var string ThenIBeatYouOutOfHere;		//SC hat trotz Aufforderung Raum NICHT verlassen 
	var string WhatDidYouDoInThere;			//Wache sieht SC aus einem verbotenen Raum rauskommen und greift an
	var string WillYouStopFighting;			//Wache beendet Kampf, greift T�ter an
	
	// ------ B_Say_AttackEND ------
	var string KillEnemy;					//Finishing-Move
	var string EnemyKilled;					//NSC hat Feind get�tet
	var string MonsterKilled;				//NSC hat gef�hrliches Monster get�tet
	var string Addon_MonsterKilled;			
	var string Addon_MonsterKilled2;	
	var string ThiefDown;					//NSC hat Item-Dieb niedergeschlagen
	var string RumfummlerDown;				//NSC hat verbotenes-MOBSI-Benutzer niedergeschlagen
	var string SheepAttackerDown;			//NSC hat human SheepAttacker oder SheepKiller umgehauen
	var string KillMurderer;				//M�rder finishen
	var string StupidBeastKilled;			//GateGuards t�ten neutrales Monster, das vorbeikam
	var string NeverHitMeAgain;				//NSC hat jemand niedergeschlagen, der ihn angegriffen hat
	var string YouBetterShouldHaveListened;	//NSC hat jemed niedergeschlagen, der die Waffe nicht weggesteckt hat
	var string GetUpAndBeGone;				//NSC hat einen Eindringling im Portalraum niedergeschlagen
	var string NeverEnterRoomAgain;			//NSC hat Spieler, der aus verbotenem Portalraum kam niedergeschlagen
	var string ThereIsNoFightingHere;		//Wache hat T�ter einer Schl�gerei (derjenige, der angefangen hat) niedergeschlagen

	var string Berzerk;

	// ------ C_WantToFlee ------ 
	var string RunAway;						//Schei�e! Nichts wie weg!		

	// ------ C_WantToCallGuardsForFight ------
	var	string Alarm;						//Wache ruft Wache
	var string Guards;						//Harter Bursche ruft Wache
	var string Help;						//B�rger ruft Hilfe
		
	// ------ B_AssessMurder ------
	var string GoodMonsterKill;				//Monster get�tet - NSC findet das toll
	var string GoodKill;					//Mensch get�tet - NSC findet das toll (war sein Feind)
	
	// ------ B_AssessTalk ------
	var string NOTNOW;						//wenn RefuseTalk Counter aktiv
	
	// ------ ZS_Attack ------
	var string RunCoward;					//Gegner flieht
	
	// ------ ZS_ClearRoom ------
	var string GetOutOfHere;				//Spieler in verbotenem Raum. Harter Bursche: Raus hier!
	var string WhyAreYouInHere;				//Spieler in verbotenem Raum. Weicher Bursche: Was willst du hier?
	var string YesGoOutOfHere;				//Spieler verl��t verboten Raum artig wieder

	// ------ ZS_ObservePlayer ------
	var string WhatsThisSupposedToBe;		//NSC sieht Spieler schleichen
	var	string YouDisturbedMySlumber;		//NSC wurde von SC durch QuietSound geweckt

	// ------ ZS_RansackBody ------
	var string ITookYourGold;			 
	var string ShitNoGold;				
	var string ITakeYourWeapon;	

	// ------ ZS_ReactToDamage ------
	VAR	string WhatAreYouDoing;				//NSC wird von einem FRIENDLY-SC/NSC geschlagen
	
	// ------ ZS_ReactToWeapon ------
	var string LookingForTroubleAgain;		//SC hat Kampf verloren "Willst du nochmal was aufs Maul?"
	var string StopMagic;					
	var string ISaidStopMagic;				
	var string WeaponDown;	
	var string ISaidWeaponDown;
	VAR	string WiseMove;					//Spieler hat Waffe/Spruch weggesteckt
	
	// ------ ZS_Unconscious ------
	var string NextTimeYoureInForIt;		//Harter Bursche steht auf, nachdem er niedergeschlagen wurde (murmelt zu sich selbst)
	var string OhMyHead;					//Weicher Bursche steht auf, nachdem er niedergeschlagen wurde (murmelt zu sich selbst)
	
	// ------ ZS_WatchFight ------
	var	string TheresAFight;				//NSC entdeckt einen Kampf, und findet das toll
	var string OhMyGodItsAFight;			//NSC entdeckt einen Kampf, und findet das best�tzend (B�rger)
	var string GoodVictory;					//Dem Sieger zujubeln
	var string NotBad;						//'Nicht schlecht...' - Kampfende - Freund wurde von Nicht-Freund besiegt
	var string OhMyGodHesDown;				//Best�rzung �ber brutales Niederschlagen
	var string CheerFriend01;				//Freund landet	einen Treffer. 'Immer in die Fresse!'
	var string CheerFriend02;
	var string CheerFriend03;
	var string Ooh01;						//Freund kriegt	aufs Maul. 'Mist - das tat weh.'
	var string Ooh02;
	var string Ooh03;
	
	// ------ ZS_MagicSleep ------
	var string WhatWasThat;     			//Wenn NSC aus Magic Sleep erwacht
	
	// ------ TA_Sleep ------
	var string GetOutOfMyBed;				//Raus aus meinem Bett!
	var string Awake;						//NSC wacht aus dem Zustand Sleep wieder auf (Aufwachen, r�keln)
	
	// ------ B_Say_ToughGuyNews ------
	var string TOUGHGUY_ATTACKLOST;			//Spieler hat einen ToughGuy angegriffen und gewonnen
	var string TOUGHGUY_ATTACKWON;			//Spieler hat einen ToughGuy angegriffen und ist besiegt worden
	var string TOUGHGUY_PLAYERATTACK;		//Spieler hat einen ToughGuy angegriffen und den Kampf abgebrochen	
	
	// ------ GOLD ------
	var string GOLD_1000;					//1000 Goldst�cke.
	var string GOLD_950;					//950 Goldst�cke.
	var string GOLD_900;					//900 Goldst�cke.
	var string GOLD_850;					//850 Goldst�cke.
	var string GOLD_800;					//800 Goldst�cke.
	var string GOLD_750;					//750 Goldst�cke.
	var string GOLD_700;					//700 Goldst�cke.
	var string GOLD_650;					//650 Goldst�cke.
	var string GOLD_600;					//600 GOldst�cke.
	var string GOLD_550;					//550 Goldst�cke.
	var string GOLD_500;					//500 Goldst�cke.
	var string GOLD_450;					//450 Goldst�cke.
	var string GOLD_400;					//400 Goldst�cke.
	var string GOLD_350;					//350 Goldst�cke.
	var string GOLD_300;					//300 Goldst�cke.
	var string GOLD_250;					//250 Goldst�cke.
	var string GOLD_200;					//200 Goldst�cke.
	var string GOLD_150;					//150 Goldst�cke.
	var string GOLD_100;					//100 Goldst�cke.
	var string GOLD_90;						//90 Goldst�cke.
	var string GOLD_80;						//80 Goldst�cke.
	var string GOLD_70;						//70 Goldst�cke.
	var string GOLD_60;						//60 Goldst�cke.
	var string GOLD_50;						//50 Goldst�cke.
	var string GOLD_40;						//40 Goldst�cke.
	var string GOLD_30;						//30 Goldst�cke.
	var string GOLD_20;						//20 Goldst�cke.
	var string GOLD_10;						//10 Goldst�cke.
	
	// ------ B_Say_Smalltalk (TA_Smalltalk) ------
	VAR	string Smalltalk01;				// ...wenn Du meinst...
	VAR	string Smalltalk02;				// ...kann schon sein...
	VAR	string Smalltalk03;				// ...war nicht besonders schlau....
	VAR	string Smalltalk04;				// ...ich halt mich da lieber raus...
	VAR	string Smalltalk05;				// ...das ist wirklich nicht mein Problem...
	VAR	string Smalltalk06;				// ...war doch klar, da� das �rger gibt...
	VAR	string Smalltalk07;				// ...aber behalt's f�r Dich, mu� nicht gleich jeder wissen...
	VAR	string Smalltalk08;				// ...das passiert mir nicht nochmal...
	VAR	string Smalltalk09;				// ...an der Gechichte mu� wohl doch was dran sein...
	VAR	string Smalltalk10;				// ...man mu� eben aufpassen was man rumerz�hlt...
	VAR	string Smalltalk11;				// ...solange ich damit nichts zu tun habe...
	VAR	string Smalltalk12;				// ...man darf auch nicht alles glauben, was man h�rt...
	VAR	string Smalltalk13;				// ...in seiner Haut will ich trotzdem nicht stecken...
	VAR	string Smalltalk14;				// ...immer wieder die selbe Leier...
	VAR	string Smalltalk15;				// ...manche lernen eben garnichts dazu...
	VAR	string Smalltalk16;				// ...fr�her w�re das ganz anders gelaufen...
	VAR	string Smalltalk17;				// ...gequatscht wird viel...
	VAR	string Smalltalk18;				// ...ich h�r nicht mehr auf das Gefasel...
	VAR	string Smalltalk19;				// ...verla� Dich auf jemanden und Du bist verlassen, das ist eben so...
	VAR	string Smalltalk20;				// ...ich glaube kaum, da� sich daran was �ndern wird...
	VAR	string Smalltalk21;				// ...wahrscheinlich hast Du recht...
	VAR	string Smalltalk22;				// ...erstmal abwarten. Es wird nichts so hei� gegessen, wie es gekocht wird...
	VAR	string Smalltalk23;				// ...ich dachte, das w�re schon lange gekl�rt, aber das ist wohl nicht so...
	VAR	string Smalltalk24;				// ...la� uns lieber �ber was anderes reden...
	//Tough Guy (SLD/MIL/DJG)
	VAR	string Smalltalk25;				// ...der war doch sturzbetrunken...							
	VAR	string Smalltalk26;				// ...mit mir kann man sowas nicht machen...			
	VAR	string Smalltalk27;				// ...alle sind gerannt wie die Hasen, ich war ganz allein...
	//ProInnos (NOV/KDF/PAL)
	VAR	string Smalltalk28;				// ...so steht es in den heiligen Schriften...							
	VAR	string Smalltalk29;				// ...ich handle stets in Innos Namen...			
	VAR	string Smalltalk30;				// ...niemand darf gegen die g�ttliche Ordnung versto�en...

	// Khorata

	VAR	string SmalltalkKhorataAnnaQuest01;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataAnnaQuest02;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataAnnaQuest03;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataAnnaQuest04;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataAnnaQuest05;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataAnnaQuest06;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataDichter01;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataDichter02;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataDichter03;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataDichter04;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataDichter05;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataEndres01;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataEndres02;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataEndres03;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataEndres04;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataEndres05;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataEndres06;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataEndres07;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataFrauenkleider01;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataFrauenkleider02;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorataFrauenkleider03;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...

	VAR	string SmalltalkKhorataUnruhen01;
	VAR	string SmalltalkKhorataUnruhen02;
	VAR	string SmalltalkKhorataUnruhen03;
	VAR	string SmalltalkKhorataUnruhen04;
	VAR	string SmalltalkKhorataUnruhen05;
	VAR	string SmalltalkKhorataUnruhen06;
	VAR	string SmalltalkKhorataUnruhen07;
	VAR	string SmalltalkKhorataUnruhen08;
	VAR	string SmalltalkKhorataUnruhen09;
	VAR	string SmalltalkKhorataUnruhen10;
	VAR	string SmalltalkKhorataUnruhen11;

	VAR	string SmalltalkKhorataUnruhenTheodorus01;
	VAR	string SmalltalkKhorataUnruhenTheodorus02;
	VAR	string SmalltalkKhorataUnruhenTheodorus03;
	VAR	string SmalltalkKhorataUnruhenTheodorus04;

	VAR	string SmalltalkKhorataUnruhenWendel01;
	VAR	string SmalltalkKhorataUnruhenWendel02;
	VAR	string SmalltalkKhorataUnruhenWendel03;
	VAR	string SmalltalkKhorataUnruhenWendel04;

	VAR	string SmalltalkKhorataUnruhenLukas01;
	VAR	string SmalltalkKhorataUnruhenLukas02;
	VAR	string SmalltalkKhorataUnruhenLukas03;
	VAR	string SmalltalkKhorataUnruhenLukas04;

	VAR	string SmalltalkKhorataDiebeGrusel01;
	VAR	string SmalltalkKhorataDiebeGrusel02;
	VAR	string SmalltalkKhorataDiebeGrusel03;
	VAR	string SmalltalkKhorataDiebeGrusel04;
	VAR	string SmalltalkKhorataDiebeGrusel05;
	VAR	string SmalltalkKhorataDiebeGrusel06;

	VAR	string SmalltalkKhorataDiebeBib01;
	VAR	string SmalltalkKhorataDiebeBib02;
	VAR	string SmalltalkKhorataDiebeBib03;
	VAR	string SmalltalkKhorataDiebeBib04;
	VAR	string SmalltalkKhorataDiebeBib05;
	VAR	string SmalltalkKhorataDiebeBib06;
	VAR	string SmalltalkKhorataDiebeBib07;
	VAR	string SmalltalkKhorataDiebeBib08;

	VAR	string SmalltalkKhorataNormal01;
	VAR	string SmalltalkKhorataNormal02;
	VAR	string SmalltalkKhorataNormal03;
	VAR	string SmalltalkKhorataNormal04;
	VAR	string SmalltalkKhorataNormal05;
	VAR	string SmalltalkKhorataNormal06;

	// Khorinis

	VAR	string SmalltalkRangar01;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkRangar02;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...

	VAR	string SmalltalkMatteo01;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkMatteo02;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkMatteo03;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkMatteo04;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...

	VAR	string SmalltalkKhorinisMario01;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorinisMario02;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorinisMario03;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkKhorinisMario04;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...

	VAR	string SmalltalkFellan01;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkFellan02;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...

	VAR	string SmalltalkMikaPflanzen01;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...
	VAR	string SmalltalkMikaPflanzen02;		// ...niemand darf gegen die g�ttliche Ordnung versto�en...

	// D�monenritterfesuntg

	VAR STRING SmalltalkDMRBelagerungAbdi01;
	VAR STRING SmalltalkDMRBelagerungAbdi02;
		
	// ------ Lehrer-Kommentare ------
	var string NoLearnNoPoints			;	//NSC-Lehrer verbietet Steigerung - keine Lernpunkte!
	var string NoLearnOverPersonalMAX	;	//NSC-Lehrer verbietet Steigerung �BER sein pers�nliches Lehrer-Maximum
	var string NoLearnYoureBetter		;   //NSC-Lehrer - MAX ist schlechter als oder gleich wie Spieler
	var string YouLearnedSomething		;   //SC hat etwas gelernt

	// ------ B_AssignCityGuide ------
	var string UNTERSTADT		;
	var string OBERSTADT		;
	var string TEMPEL		;
	var string MARKT		;
	var string GALGEN		;
	var string KASERNE		;
	var string HAFEN	;
	// -------------------------------
	var string WHERETO		;
	// -------------------------------
	var string OBERSTADT_2_UNTERSTADT	;
	var string UNTERSTADT_2_OBERSTADT	;
	var string UNTERSTADT_2_TEMPEL		;
	var string UNTERSTADT_2_HAFEN		;
	var string TEMPEL_2_UNTERSTADT		;
	var string TEMPEL_2_MARKT			;
	var string TEMPEL_2_GALGEN			;
	var string MARKT_2_TEMPEL			;
	var string MARKT_2_KASERNE			;
	var string MARKT_2_GALGEN			;
	var string GALGEN_2_TEMPEL			;
	var string GALGEN_2_MARKT			;
	var string GALGEN_2_KASERNE			;
	var string KASERNE_2_MARKT			;
	var string KASERNE_2_GALGEN			;
	var string HAFEN_2_UNTERSTADT		;

	// ------ Kampf ------
	var	string Dead				;			// T�dlich verletzt
	VAR	string Aargh_1			;			// Treffer kassiert im Kampf	
	VAR	string Aargh_2			;			// Treffer kassiert im Kampf	
	VAR	string Aargh_3			;			// Treffer kassiert im Kampf	
	
	var string ADDON_WRONGARMOR;			//Sc hat unangemessene R�stung an				//Default
	var string ADDON_WRONGARMOR_SLD;		//Beide SLD/DJG und falsche R�stung
	var string ADDON_WRONGARMOR_MIL;		//Beide MIL/PAL	und falsche R�stung
	var string ADDON_WRONGARMOR_KDF;		//Beide KDF und falsche R�stung
	var string ADDON_NOARMOR_BDT;			//self ist BAndite und SC hat keine R�stung an.
	
	var string ADDON_DIEBANDIT;				//Stirb du dreckiger Bandit
	var string ADDON_DIRTYPIRATE;			//Piratenpack
	// ------ SC SVMs ------
	var string SC_HeyTurnAround;			//SC: Hey du! (B_AssessTalk)
	var string SC_HeyTurnAround02;	
	var string SC_HeyTurnAround03;	
	var string SC_HeyTurnAround04;			
	var string SC_HeyWaitASecond;			//SC: Hey warte mal! (B_AssessTalk)
	var string DoesntWork;				
	var string PickBroke;				
	var string NeedKey;					
	var string NoMorePicks;	
	var string NoPickLockTalent;
	var string NoSweeping;
	
	var string PICKLOCKORKEYMISSING;	
	var string KEYMISSING;
	var string PICKLOCKMISSING;
	var string NEVEROPEN;
	var string MISSINGITEM;
	var string DONTKNOW;
	var string NOTHINGTOGET;
	var string NOTHINGTOGET02;
	var string NOTHINGTOGET03;
	var string HEALSHRINE;
	var string HEALLASTSHRINE;
	var string IRDORATHTHEREYOUARE;
	var string SCOPENSIRDORATHBOOK;
	var string SCOPENSLASTDOOR;

	//-------------Addon ----------------------
	
	var string TRADE_1;
	var string TRADE_2;
	var string TRADE_3;
	
	var string VERSTEHE;
	var string FOUNDTREASURE;
	var string CANTUNDERSTANDTHIS;
	var string CANTREADTHIS;
	var string STONEPLATE_1;
	var string STONEPLATE_2;
	var string STONEPLATE_3;
	
	var string COUGH;
	var string HUI;
	
	var string Addon_ThisLittleBastard;
	var string ADDON_OPENADANOSTEMPLE;
	
	//Story Banditenlager Dialoge
	var string	ATTENTAT_ADDON_DESCRIPTION;
	var string  ATTENTAT_ADDON_DESCRIPTION2;
	var string	ATTENTAT_ADDON_PRO;
	var string 	ATTENTAT_ADDON_CONTRA;
	
	var string 	MINE_ADDON_DESCRIPTION;
	var string 	ADDON_SUMMONANCIENTGHOST;
	var string 	ADDON_ANCIENTGHOST_NOTNEAR;
	
	var string 	ADDON_GOLD_DESCRIPTION; 

	// MOD

	var string WHOAREYOU;			//Wer bist du?
	var string MATTEOPAPER;			//Ich hab hier ein Flugblatt f�r dich.
	var string WANNAMARRY;			//Willst du mich heiraten?
	var string HAVEFREUDENSPENDER;		//Ich hab hier ein Fl�schchen Freudenspender f�r dich.
	var string WHATSUP;			
	var string NO;				//Nein.
	var string HIERNIMM;			//Hier, nimm.
	var string HIER;			//Hier.
	var string ALTERWALDMANN01;
	var string ALTERWALDMANN02;
	var string ALTERWALDMANN03;
	var string ALTERWALDMANN04;
	var string ALTERWALDMANN05;
	var string IRDORATHGEHTLOS;
	var string IRDORATHGEHBACK;
	var string IRDORATHNOWAY;
	var string IRDORATHHEBEL;
	var string IRDORATHHEBELPROBLEM;
	var string WIESONICHT;			//Wieso nicht?
	var string WASMACHENWIRJETZT;		//Was machen wir jetzt?
	var string WASISTDENNHIERLOS;		//Was ist denn hier los?
	var string WASMEINSTDU;			//Was meinst du?
	var string WASISTDENN;			//Was ist denn?
	var string WASISTDAS;			//Was ist das?
	var string WASISTZUTUN;			//Was ist zu tun?
	var string WIESOLLICHVORGEHEN;		//Wie soll ich vorgehen?
	var string KANNSTDUMIRWASBEIBRINGEN;	//Kannst du mir was beibringen?
	var string WOFINDEICHIHN;		//Wo finde ich ihn?
	var string WASMACHSTDUHIER;		//Was machst du hier?


	// Drachen

	var string SMALLTALKDRAGON01;
	var string SMALLTALKDRAGON02;
	var string SMALLTALKDRAGON03;
	var string SMALLTALKDRAGON04;
	var string SMALLTALKDRAGON05;
	var string SMALLTALKDRAGON06;
	var string SMALLTALKDRAGON07;
	var string SMALLTALKDRAGON08;
	var string SMALLTALKDRAGON09;
	var string SMALLTALKDRAGON10;
	var string SMALLTALKDRAGON11;
	var string SMALLTALKDRAGON12;
	var string SMALLTALKDRAGON13;

	// S�tze der Minenarbeiter in Relendel

	var string RELMINE01;
	var string RELMINE02;
	var string RELMINE03;
	var string RELMINE04;
	var string RELMINE05;
	var string RELMINE06;
	var string RELMINE07;
	var string RELMINE08;
	var string RELMINE09;
	var string RELMINE10;
	var string RELMINE11;
	var string RELMINE12;

	// Kampf gegen Xeres => der ist immortal

	var string XERESISTIMMORTAL;

	// Hero hat Notiz gefunden => Hinweis, dass er die auch lesen sollte

	var string READZETTEL;			//Das sollte ich lieber mal lesen.


	// Kommentare zum R�benziehen

	var string RUEBE01_01;
	var string RUEBE01_02;
	var string RUEBE01_03;
	var string RUEBE02;
	var string RUEBE03;
	var string RUEBE04_01;
	var string RUEBE04_02;
	var string RUEBE04_03;


	// Kommentar, wenn man sich lieber nochmal umsehen sollte (wenn man noch was suchen muss)

	var string LOOKFORSOMETHING;

	// Satz zum g�ttlichen Boten (Hund Adanos bzw. Baal Netbek)

	var string GODLYBOTE01;
	var string GODLYBOTE02;

	// Kommentar, wenn Alvars Kristall gefunden wird

	var string ALVARKRISTALL01;
	var string ALVARKRISTALL02;
	var string ALVARKRISTALL03;

	// Kommentar, wenn Buch �ber Eriskult gelesen

	var string ERISKULTBUCH01;

	// Kommentar zum B�cherregal

	var string BUECHERREGALFINDPAPER;
	var string BUECHERREGALNO;
	var string BUECHERREGALNOTHING;

	// Faule �pfel unterschmuggeln

	var string PLACEAPFEL01;
	var string PLACEAPFEL02;
	var string PLACEAPFEL03;
	var string PLACEAPFEL04;
	var string PLACEAPFEL05;

	// Gr�ne Erzader hacken

	var string NOHACKE;
	var string HACKESCHLECHT;

	// Lernen auf Gold

	var string NOLEARNGOLD;

	// Wenn Fokus nicht eingesetzt werden kann

	var string FOKUSNICHTEINSETZEN;

	// Witze

	var string WITZ_01_01;
	var string WITZ_01_02;
	var string WITZ_01_03;
	var string WITZ_01_04;
	var string WITZ_01_05;
	var string WITZ_01_06;

	var string WITZ_02_01;

	var string WITZ_03_01;
	var string WITZ_03_02;

	var string WITZ_04_01;
	var string WITZ_04_02;
	var string WITZ_04_03;
	var string WITZ_04_04;
	var string WITZ_04_05;
	var string WITZ_04_06;
	var string WITZ_04_07;
	var string WITZ_04_08;
	var string WITZ_04_09;
	var string WITZ_04_10;

	var string WITZ_05_01;
	var string WITZ_05_02;
	var string WITZ_05_03;
	var string WITZ_05_04;

	var string WITZ_06_01;
	var string WITZ_06_02;

	var string WITZ_07_01;
	var string WITZ_07_02;

	var string WITZ_08_01;
	var string WITZ_08_02;

	var string WITZ_09_01;
	var string WITZ_09_02;

	var string WITZ_10_01;
	var string WITZ_10_02;
	var string WITZ_10_03;
	var string WITZ_10_04;
	var string WITZ_10_05;
	var string WITZ_10_06;
	var string WITZ_10_07;
	var string WITZ_10_08;
	var string WITZ_10_09;
	var string WITZ_10_10;

	// 3x gleicher Dialog bei Plagenquest

	var string PLAGENQUEST01;
	var string PLAGENQUEST02;
	var string PLAGENQUEST03;
	var string PLAGENQUEST04;
	var string PLAGENQUEST05;
	var string PLAGENQUEST06;
	var string PLAGENQUEST07;
	var string PLAGENQUEST08;
	var string PLAGENQUEST09;
	var string PLAGENQUEST10;
	var string PLAGENQUEST11;
	var string PLAGENQUEST12;
	var string PLAGENQUEST13;
	var string PLAGENQUEST14;
	var string PLAGENQUEST15;
	var string PLAGENQUEST16;
	var string PLAGENQUEST17;

	// 3x gleicher Dialog bei HeroBot-Kill

	var string HEROBOTQUEST01;
	var string HEROBOTQUEST02;

	// Schwarze Novizen

	var string AMBISNOV01;
	var string AMBISNOV02;
	var string AMBISNOV03;
	var string AMBISNOV04;
	var string AMBISNOV05;
	var string AMBISNOV06;
	var string AMBISNOV07;
	var string AMBISNOV08;

	// Gespr�ch mit Sch�rfern wegen "�rger im Kessel"

	var string KESSELPROBLEM01;
	var string KESSELPROBLEM02;
	var string KESSELPROBLEM03;

	// Anschlagtafel-Gespr�che

	var string ANSCHLAGTAFEL01;
	var string ANSCHLAGTAFEL02;

	// Held probiert Sachen f�r Bierhexen-Quest

	var string SCHMECKTNORMAL;
	var string SCHMECKTECKLIG;

	// Held sollte eingesammeltes Item benutzen

	var string SHOULDUSE;

	// Held kennt Chromanin-R�tsel aus Vorg�nger

	var string KNOWSRIDDLER;

	// Held riecht den Tabak von Jackal

	var string SMELLTABAK;

	// Schl�sser knacken

	var string PICKLOCKFAILURE;
	var string PICKLOCKBROKEN;

	// B�cher nicht lesen k�nnen

	var string BOOKSTANDNOTREADABLE01;
	var string BOOKSTANDNOTREADABLE02;
	var string BOOKSTANDNOTREADABLE03;
	var string BOOKSTANDNOTREADABLE04;
	var string BOOKSTANDNOTREADABLE05;
	var string BOOKSTANDNOTREADABLE06;
	var string BOOKSTANDNOTREADABLE07;
	var string BOOKSTANDNOTREADABLE08;
	var string BOOKSTANDNOTREADABLE09;
	var string BOOKSTANDNOTREADABLE10;
	var string BOOKSTANDNOTREADABLE11;
	var string BOOKSTANDNOTREADABLE12;
	var string BOOKSTANDNOTREADABLE13;
	var string BOOKSTANDNOTREADABLE14;

	// Taschendiebstahl

	var string PICKPOCKET_BESCHIMPFEN;
	var string PICKPOCKET_BESTECHUNG;
	var string PICKPOCKET_HERAUSREDEN;

	var string PICKPOCKET_BESTECHUNG_01;
	var string PICKPOCKET_HERAUSREDEN_01;
	var string PICKPOCKET_HERAUSREDEN_02;
};     


// **********************************
// NSCs
// ----
// SVMs m�ssen immer "SVM_x" heissen, 
// wobei x die VoiceNummer ist.	
// **********************************

// ------ wird nur intern gebraucht! ------
instance SVM_0 (C_SVM)				
{
};

instance SVM_1 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_1_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_1_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_1_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_1_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_1_Weather"						;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_1_IGetYouStill"				;//Krieg ich dich DOCH noch!
	DieEnemy					=	"SVM_1_DieEnemy"					;//Jetzt bist du dran!
	DieMonster					=	"SVM_1_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_1_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_1_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_1_SheepKiller"					;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_1_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_1_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_1_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_1_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_1_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_1_ThenIBeatYouOutOfHere"		;//Dann muss ich dich eben rauspr�geln!
	WhatDidYouDoInThere			=	"SVM_1_WhatDidYouDoInThere"			;//Was hattest DU denn da drin zu suchen, he!?
	WillYouStopFighting			=	"SVM_1_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_1_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_1_EnemyKilled"					;//Das war's f�r dich, Penner.
	MonsterKilled				=	"SVM_1_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_1_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	Berzerk						=	"SVM_1_Berzerk"						;//UUAAARRGGGHHH!!!
	rumfummlerDown				=	"SVM_1_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_1_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_1_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_1_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_1_NeverHitMeAgain"				;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_1_YouBetterShouldHaveListened"	;//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_1_GetUpAndBeGone"				;//Und jetzt mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_1_NeverEnterRoomAgain"			;//Und dass ich dich nie wieder da drin erwische!
	ThereIsNoFightingHere		=	"SVM_1_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_1_RunAway"						;//Schei�e! Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_1_Alarm"						;//ALARM!
	Guards						=	"SVM_1_Guards"						;//WACHE!
	Help						=	"SVM_1_Help"						;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_1_GoodMonsterKill"				;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_1_GoodKill"					;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_1_NOTNOW"						;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_1_RunCoward"					;//(ruft laut) Bleib stehen, du Lump!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_1_GetOutOfHere"				;//Raus hier!
	WhyAreYouInHere				=	"SVM_1_WhyAreYouInHere"				;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_1_YesGoOutOfHere"				;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_1_WhatsThisSupposedToBe"		;//Hey du! Was schleichst du da rum.
	YouDisturbedMySlumber		=	"SVM_1_YouDisturbedMySlumber"		;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_1_ITookYourGold"				;//Gold! Das ist schon mal meins ...
	ShitNoGold					=	"SVM_1_ShitNoGold"					;//Der Mistkerl hat noch nicht mal Gold dabei.
	ITakeYourWeapon				=	"SVM_1_ITakeYourWeapon"				;//Deine Waffe nehm' ich mal lieber mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_1_WhatAreYouDoing"				;//(warnt) Hey! Pass auf!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_1_LookingForTroubleAgain"		;//(aggressiv) Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_1_StopMagic"					;//Geh blo� weg mit deiner Magie!
	ISaidStopMagic				=	"SVM_1_ISaidStopMagic"				;//Weg mit der Magie! H�rst du schlecht!?
	WeaponDown					=	"SVM_1_WeaponDown"					;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_1_ISaidWeaponDown"				;//H�rst du schlecht? Ich sagte: Weg mit der Waffe!
	WiseMove					=	"SVM_1_WiseMove"					;//Na bitte, geht doch!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_1_NextTimeYoureInForIt"		;//(zu sich selbst) Dar�ber reden wir noch ...
	OhMyHead					=	"SVM_1_OhMyHead"					;//(zu sich selbst) Oh, mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_1_TheresAFight"				;//(gierig) Jetzt geht's zur Sache!
	OhMyGodItsAFight			=	"SVM_1_OhMyGodItsAFight"			;//(best�rzt) Die hauen sich den Sch�del ein ...
	GoodVictory					=	"SVM_1_GoodVictory"					;//(b�se lachend) Das hat er verdient.
	NotBad						= 	"SVM_1_NotBad"						;//(anerkennend) Gar nicht so �bel ...
	OhMyGodHesDown				=	"SVM_1_OhMyGodHesDown"				;//(zu sich selbst) Was f�r ein brutaler Kerl ...
	CheerFriend01				=	"SVM_1_CheerFriend01"				;//Ja, so ist's gut!
	CheerFriend02				=	"SVM_1_CheerFriend02"				;//Na, mach schon!
	CheerFriend03				=	"SVM_1_CheerFriend03"				;//Immer feste drauf!
	Ooh01						=	"SVM_1_Ooh01"						;//Lass dir nichts gefallen!
	Ooh02						=	"SVM_1_Ooh02"						;//Den wirst du ja wohl schaffen!
	Ooh03						=	"SVM_1_Ooh03"						;//Das gibt's doch gar nicht!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_1_WhatWasThat"					;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_1_GetOutOfMyBed"					;//Raus aus meinem Bett!
	Awake						= "SVM_1_Awake"							;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_1_TOUGHGUY_ATTACKLOST"			;//Ist ja schon gut, du hast gewonnen. Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_1_TOUGHGUY_ATTACKWON"			;//(selbstgef�llig) Muss ich dir noch mal zeigen, wer hier der Herr ist?
	TOUGHGUY_PLAYERATTACK		= "SVM_1_TOUGHGUY_PLAYERATTACK"			;//Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_1_GOLD_1000"						;//1000 Goldst�cke.
	GOLD_950					= "SVM_1_GOLD_950"						;//950 Goldst�cke.
	GOLD_900					= "SVM_1_GOLD_900"						;//900 Goldst�cke.
	GOLD_850					= "SVM_1_GOLD_850"						;//850 Goldst�cke.
	GOLD_800					= "SVM_1_GOLD_800"						;//800 Goldst�cke.
	GOLD_750					= "SVM_1_GOLD_750"						;//750 Goldst�cke.
	GOLD_700					= "SVM_1_GOLD_700"						;//700 Goldst�cke.
	GOLD_650					= "SVM_1_GOLD_650"						;//650 Goldst�cke.
	GOLD_600					= "SVM_1_GOLD_600"						;//600 Goldst�cke.
	GOLD_550					= "SVM_1_GOLD_550"						;//550 Goldst�cke.
	GOLD_500					= "SVM_1_GOLD_500"						;//500 Goldst�cke.
	GOLD_450					= "SVM_1_GOLD_450"						;//450 Goldst�cke.
	GOLD_400					= "SVM_1_GOLD_400"						;//400 Goldst�cke.
	GOLD_350					= "SVM_1_GOLD_350"						;//350 Goldst�cke.
	GOLD_300					= "SVM_1_GOLD_300"						;//300 Goldst�cke.
	GOLD_250					= "SVM_1_GOLD_250"						;//250 Goldst�cke.
	GOLD_200					= "SVM_1_GOLD_200"						;//200 Goldst�cke.
	GOLD_150					= "SVM_1_GOLD_150"						;//150 Goldst�cke.
	GOLD_100					= "SVM_1_GOLD_100"						;//100 Goldst�cke.
	GOLD_90						= "SVM_1_GOLD_90"						;//90 Goldst�cke.
	GOLD_80						= "SVM_1_GOLD_80"						;//80 Goldst�cke.
	GOLD_70						= "SVM_1_GOLD_70"						;//70 Goldst�cke.
	GOLD_60						= "SVM_1_GOLD_60"						;//60 Goldst�cke.
	GOLD_50						= "SVM_1_GOLD_50"						;//50 Goldst�cke.
	GOLD_40						= "SVM_1_GOLD_40"						;//40 Goldst�cke.
	GOLD_30						= "SVM_1_GOLD_30"						;//30 Goldst�cke.
	GOLD_20						= "SVM_1_GOLD_20"						;//20 Goldst�cke.
	GOLD_10						= "SVM_1_GOLD_10"						;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_1_Smalltalk01"					;//... glaubst du wirklich ...
	Smalltalk02					= "SVM_1_Smalltalk02"					;//... m�glich ist alles ...
	Smalltalk03					= "SVM_1_Smalltalk03"					;//... das h�tte er doch besser wissen m�ssen ...
	Smalltalk04					= "SVM_1_Smalltalk04"					;//... als ob ich nicht schon genug Probleme h�tte ...
	Smalltalk05					= "SVM_1_Smalltalk05"					;//... wer erz�hlt denn so was ...
	Smalltalk06					= "SVM_1_Smalltalk06"					;//... das gibt doch nur noch mehr �rger ...
	Smalltalk07					= "SVM_1_Smalltalk07"					;//... man erz�hlt sich ja so einiges ...
	Smalltalk08					= "SVM_1_Smalltalk08"					;//... ich h�tte das nicht gemacht ...
	Smalltalk09					= "SVM_1_Smalltalk09"					;//... das sind doch alles nur Ger�chte ...
	Smalltalk10					= "SVM_1_Smalltalk10"					;//... man muss eben aufpassen, was man so rumerz�hlt ...
	Smalltalk11					= "SVM_1_Smalltalk11"					;//... das h�tte ich dir vorher sagen k�nnen ...
	Smalltalk12					= "SVM_1_Smalltalk12"					;//... mich fragt ja keiner ...
	Smalltalk13					= "SVM_1_Smalltalk13"					;//... der arme Kerl kann einem Leid tun ...
	Smalltalk14					= "SVM_1_Smalltalk14"					;//... das ist doch nichts Neues ...
	Smalltalk15					= "SVM_1_Smalltalk15"					;//... das liegt doch auf der Hand ...
	Smalltalk16					= "SVM_1_Smalltalk16"					;//... mich brauchst du das nicht zu fragen ...
	Smalltalk17					= "SVM_1_Smalltalk17"					;//... das kann ja nicht ewig so weitergehen ...
	Smalltalk18					= "SVM_1_Smalltalk18"					;//... meine Meinung kennst du ja schon ...
	Smalltalk19					= "SVM_1_Smalltalk19"					;//... genau das hab ich auch gesagt ...
	Smalltalk20					= "SVM_1_Smalltalk20"					;//... daran wird sich nie etwas �ndern ...
	Smalltalk21					= "SVM_1_Smalltalk21"					;//... warum erfahre ich das erst jetzt ...
	Smalltalk22					= "SVM_1_Smalltalk22"					;//... lass uns mal abwarten, was daraus wird ...
	Smalltalk23					= "SVM_1_Smalltalk23"					;//... einige Probleme erledigen sich von selbst ...
	Smalltalk24					= "SVM_1_Smalltalk24"					;//... ich kann das nicht mehr h�ren ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_1_Smalltalk25"					;//... der war doch sturzbetrunken ...
	Smalltalk26					= "SVM_1_Smalltalk26"					;//... mit mir kann man so was nicht machen ...
	Smalltalk27					= "SVM_1_Smalltalk27"					;//... alle sind gerannt wie die Hasen, ich war ganz allein ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_1_Smalltalk28"					;//... so steht es in den heiligen Schriften ...
	Smalltalk29					= "SVM_1_Smalltalk29"					;//... ich handle stets in Innos' Namen ...
	Smalltalk30					= "SVM_1_Smalltalk30"					;//... niemand darf gegen die g�ttliche Ordnung versto�en ...
	SmalltalkKhorataAnnaQuest01			= "SVM_1_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_1_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_1_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_1_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_1_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_1_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_1_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_1_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_1_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_1_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_1_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_1_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_1_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_1_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_1_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_1_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_1_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_1_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_1_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_1_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_1_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_1_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_1_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_1_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_1_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_1_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_1_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_1_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_1_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_1_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_1_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_1_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_1_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_1_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_1_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_1_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_1_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_1_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_1_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_1_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_1_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_1_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_1_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_1_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_1_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_1_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_1_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_1_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_1_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_1_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_1_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_1_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_1_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_1_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_1_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_1_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_1_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_1_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_1_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_1_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_1_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_1_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_1_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_1_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_1_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_1_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_1_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_1_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_1_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_1_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_1_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_1_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_1_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_1_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_1_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_1_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_1_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_1_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...

	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_1_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_1_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_1_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_1_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_1_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_1_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_1_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_1_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_1_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_1_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_1_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_1_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_1_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_1_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_1_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_1_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_1_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_1_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_1_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbei gehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_1_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlang gehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_1_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_1_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_1_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_1_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_1_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_1_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_1_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_1_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_1_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_1_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_1_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_1_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_1_Addon_WrongArmor";				//Das ist nicht deine Kleidung. Ich rede nicht mit dir.
	ADDON_WRONGARMOR_SLD		= "SVM_1_ADDON_WRONGARMOR_SLD";			//Wie l�ufst du denn rum? Zieh dir was Vern�nftiges an.
	ADDON_WRONGARMOR_MIL		= "SVM_1_ADDON_WRONGARMOR_MIL";			//Du bist Soldat! Kleide dich entsprechend.
	ADDON_WRONGARMOR_KDF		= "SVM_1_ADDON_WRONGARMOR_KDF";			//Deine Kleidung ist unserem Orden nicht angemessen. Zieh dich um.
	ADDON_NOARMOR_BDT			= "SVM_1_ADDON_ADDON_NOARMOR_BDT";		//Hast ja noch nicht mal 'ne R�stung. Verschwinde!

	ADDON_DIEBANDIT				= "SVM_1_ADDON_DIEBANDIT";				//Stirb, du dreckiger Bandit!
	ADDON_DIRTYPIRATE			= "SVM_1_ADDON_DIRTYPIRATE";			//Piratenpack!

	RELMINE01			= "SVM_1_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_1_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_1_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_1_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_1_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_1_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_1_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_1_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_1_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_1_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_1_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_1_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_1_NoLearnGold";			//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_1_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_1_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_1_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_1_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_1_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_1_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_1_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_1_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_1_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_1_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_1_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_1_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_1_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_1_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_1_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_1_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_1_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_1_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_1_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_1_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_1_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_1_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_1_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_1_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_1_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_1_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_1_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_1_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_1_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_1_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_1_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_1_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_1_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_1_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_1_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_1_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_1_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_1_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_1_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_1_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_1_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_1_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_1_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_1_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

INSTANCE SVM_2	(C_SVM)	
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_2_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_2_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_2_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_2_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_2_Weather"						;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_2_IGetYouStill"				;//Krieg ich dich DOCH noch!
	DieEnemy					=	"SVM_2_DieEnemy"					;//Jetzt bist du dran!
	DieMonster					=	"SVM_2_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_2_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_2_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_2_SheepKiller"					;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_2_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_2_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_2_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_2_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_2_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_2_ThenIBeatYouOutOfHere"		;//Dann muss ich dich eben rauspr�geln!
	WhatDidYouDoInThere			=	"SVM_2_WhatDidYouDoInThere"			;//Was hattest DU denn da drin zu suchen, he!?
	WillYouStopFighting			=	"SVM_2_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_2_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_2_EnemyKilled"					;//Das war's f�r dich, Penner.
	MonsterKilled				=	"SVM_2_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_2_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	Berzerk						=	"SVM_2_Berzerk"						;//UUAAARRGGGHHH!!!
	rumfummlerDown				=	"SVM_2_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_2_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_2_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_2_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_2_NeverHitMeAgain"				;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_2_YouBetterShouldHaveListened"	;//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_2_GetUpAndBeGone"				;//Und jetzt mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_2_NeverEnterRoomAgain"			;//Und dass ich dich nie wieder da drin erwische!
	ThereIsNoFightingHere		=	"SVM_2_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_2_RunAway"						;//Schei�e! Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_2_Alarm"						;//ALARM!
	Guards						=	"SVM_2_Guards"						;//WACHE!
	Help						=	"SVM_2_Help"						;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_2_GoodMonsterKill"				;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_2_GoodKill"					;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_2_NOTNOW"						;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_2_RunCoward"					;//(ruft laut) Bleib stehen, du Lump!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_2_GetOutOfHere"				;//Raus hier!
	WhyAreYouInHere				=	"SVM_2_WhyAreYouInHere"				;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_2_YesGoOutOfHere"				;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_2_WhatsThisSupposedToBe"		;//Hey du! Was schleichst du da rum.
	YouDisturbedMySlumber		=	"SVM_2_YouDisturbedMySlumber"		;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_2_ITookYourGold"				;//Gold! Das ist schon mal meins ...
	ShitNoGold					=	"SVM_2_ShitNoGold"					;//Der Mistkerl hat noch nicht mal Gold dabei.
	ITakeYourWeapon				=	"SVM_2_ITakeYourWeapon"				;//Deine Waffe nehm' ich mal lieber mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_2_WhatAreYouDoing"				;//(warnt) Hey! Pass auf!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_2_LookingForTroubleAgain"		;//(aggressiv) Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_2_StopMagic"					;//Geh blo� weg mit deiner Magie!
	ISaidStopMagic				=	"SVM_2_ISaidStopMagic"				;//Weg mit der Magie! H�rst du schlecht!?
	WeaponDown					=	"SVM_2_WeaponDown"					;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_2_ISaidWeaponDown"				;//H�rst du schlecht? Ich sagte: Weg mit der Waffe!
	WiseMove					=	"SVM_2_WiseMove"					;//Na bitte, geht doch!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_2_NextTimeYoureInForIt"		;//(zu sich selbst) Dar�ber reden wir noch ...
	OhMyHead					=	"SVM_2_OhMyHead"					;//(zu sich selbst) Oh, mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_2_TheresAFight"				;//(gierig) Jetzt geht's zur Sache!
	OhMyGodItsAFight			=	"SVM_2_OhMyGodItsAFight"			;//(best�rzt) Die hauen sich den Sch�del ein ...
	GoodVictory					=	"SVM_2_GoodVictory"					;//(b�se lachend) Das hat er verdient.
	NotBad						= 	"SVM_2_NotBad"						;//(anerkennend) Gar nicht so �bel ...
	OhMyGodHesDown				=	"SVM_2_OhMyGodHesDown"				;//(zu sich selbst) Was f�r ein brutaler Kerl ...
	CheerFriend01				=	"SVM_2_CheerFriend01"				;//Ja, so ist's gut!
	CheerFriend02				=	"SVM_2_CheerFriend02"				;//Na, mach schon!
	CheerFriend03				=	"SVM_2_CheerFriend03"				;//Immer feste drauf!
	Ooh01						=	"SVM_2_Ooh01"						;//Lass dir nichts gefallen!
	Ooh02						=	"SVM_2_Ooh02"						;//Den wirst du ja wohl schaffen!
	Ooh03						=	"SVM_2_Ooh03"						;//Das gibt's doch gar nicht!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_2_WhatWasThat"					;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_2_GetOutOfMyBed"					;//Raus aus meinem Bett!
	Awake						= "SVM_2_Awake"							;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_2_TOUGHGUY_ATTACKLOST"			;//Ist ja schon gut, du hast gewonnen. Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_2_TOUGHGUY_ATTACKWON"			;//(selbstgef�llig) Muss ich dir noch mal zeigen, wer hier der Herr ist?
	TOUGHGUY_PLAYERATTACK		= "SVM_2_TOUGHGUY_PLAYERATTACK"			;//Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_2_GOLD_1000"						;//1000 Goldst�cke.
	GOLD_950					= "SVM_2_GOLD_950"						;//950 Goldst�cke.
	GOLD_900					= "SVM_2_GOLD_900"						;//900 Goldst�cke.
	GOLD_850					= "SVM_2_GOLD_850"						;//850 Goldst�cke.
	GOLD_800					= "SVM_2_GOLD_800"						;//800 Goldst�cke.
	GOLD_750					= "SVM_2_GOLD_750"						;//750 Goldst�cke.
	GOLD_700					= "SVM_2_GOLD_700"						;//700 Goldst�cke.
	GOLD_650					= "SVM_2_GOLD_650"						;//650 Goldst�cke.
	GOLD_600					= "SVM_2_GOLD_600"						;//600 Goldst�cke.
	GOLD_550					= "SVM_2_GOLD_550"						;//550 Goldst�cke.
	GOLD_500					= "SVM_2_GOLD_500"						;//500 Goldst�cke.
	GOLD_450					= "SVM_2_GOLD_450"						;//450 Goldst�cke.
	GOLD_400					= "SVM_2_GOLD_400"						;//400 Goldst�cke.
	GOLD_350					= "SVM_2_GOLD_350"						;//350 Goldst�cke.
	GOLD_300					= "SVM_2_GOLD_300"						;//300 Goldst�cke.
	GOLD_250					= "SVM_2_GOLD_250"						;//250 Goldst�cke.
	GOLD_200					= "SVM_2_GOLD_200"						;//200 Goldst�cke.
	GOLD_150					= "SVM_2_GOLD_150"						;//150 Goldst�cke.
	GOLD_100					= "SVM_2_GOLD_100"						;//100 Goldst�cke.
	GOLD_90						= "SVM_2_GOLD_90"						;//90 Goldst�cke.
	GOLD_80						= "SVM_2_GOLD_80"						;//80 Goldst�cke.
	GOLD_70						= "SVM_2_GOLD_70"						;//70 Goldst�cke.
	GOLD_60						= "SVM_2_GOLD_60"						;//60 Goldst�cke.
	GOLD_50						= "SVM_2_GOLD_50"						;//50 Goldst�cke.
	GOLD_40						= "SVM_2_GOLD_40"						;//40 Goldst�cke.
	GOLD_30						= "SVM_2_GOLD_30"						;//30 Goldst�cke.
	GOLD_20						= "SVM_2_GOLD_20"						;//20 Goldst�cke.
	GOLD_10						= "SVM_2_GOLD_10"						;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_2_Smalltalk01"					;//... glaubst du wirklich ...
	Smalltalk02					= "SVM_2_Smalltalk02"					;//... m�glich ist alles ...
	Smalltalk03					= "SVM_2_Smalltalk03"					;//... das h�tte er doch besser wissen m�ssen ...
	Smalltalk04					= "SVM_2_Smalltalk04"					;//... als ob ich nicht schon genug Probleme h�tte ...
	Smalltalk05					= "SVM_2_Smalltalk05"					;//... wer erz�hlt denn so was ...
	Smalltalk06					= "SVM_2_Smalltalk06"					;//... das gibt doch nur noch mehr �rger ...
	Smalltalk07					= "SVM_2_Smalltalk07"					;//... man erz�hlt sich ja so einiges ...
	Smalltalk08					= "SVM_2_Smalltalk08"					;//... ich h�tte das nicht gemacht ...
	Smalltalk09					= "SVM_2_Smalltalk09"					;//... das sind doch alles nur Ger�chte ...
	Smalltalk10					= "SVM_2_Smalltalk10"					;//... man muss eben aufpassen, was man so rumerz�hlt ...
	Smalltalk11					= "SVM_2_Smalltalk11"					;//... das h�tte ich dir vorher sagen k�nnen ...
	Smalltalk12					= "SVM_2_Smalltalk12"					;//... mich fragt ja keiner ...
	Smalltalk13					= "SVM_2_Smalltalk13"					;//... der arme Kerl kann einem Leid tun ...
	Smalltalk14					= "SVM_2_Smalltalk14"					;//... das ist doch nichts Neues ...
	Smalltalk15					= "SVM_2_Smalltalk15"					;//... das liegt doch auf der Hand ...
	Smalltalk16					= "SVM_2_Smalltalk16"					;//... mich brauchst du das nicht zu fragen ...
	Smalltalk17					= "SVM_2_Smalltalk17"					;//... das kann ja nicht ewig so weitergehen ...
	Smalltalk18					= "SVM_2_Smalltalk18"					;//... meine Meinung kennst du ja schon ...
	Smalltalk19					= "SVM_2_Smalltalk19"					;//... genau das hab ich auch gesagt ...
	Smalltalk20					= "SVM_2_Smalltalk20"					;//... daran wird sich nie etwas �ndern ...
	Smalltalk21					= "SVM_2_Smalltalk21"					;//... warum erfahre ich das erst jetzt ...
	Smalltalk22					= "SVM_2_Smalltalk22"					;//... lass uns mal abwarten, was daraus wird ...
	Smalltalk23					= "SVM_2_Smalltalk23"					;//... einige Probleme erledigen sich von selbst ...
	Smalltalk24					= "SVM_2_Smalltalk24"					;//... ich kann das nicht mehr h�ren ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_2_Smalltalk25"					;//... der war doch sturzbetrunken ...
	Smalltalk26					= "SVM_2_Smalltalk26"					;//... mit mir kann man so was nicht machen ...
	Smalltalk27					= "SVM_2_Smalltalk27"					;//... alle sind gerannt wie die Hasen, ich war ganz allein ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_2_Smalltalk28"					;//... so steht es in den heiligen Schriften ...
	Smalltalk29					= "SVM_2_Smalltalk29"					;//... ich handle stets in Innos' Namen ...
	Smalltalk30					= "SVM_2_Smalltalk30"					;//... niemand darf gegen die g�ttliche Ordnung versto�en ...
	SmalltalkKhorataAnnaQuest01			= "SVM_2_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_2_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_2_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_2_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_2_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_2_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_2_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_2_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_2_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_2_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_2_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_2_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_2_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_2_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_2_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_2_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_2_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_2_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_2_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_2_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_2_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_2_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_2_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_2_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_2_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_2_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_2_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_2_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_2_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_2_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_2_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_2_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_2_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_2_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_2_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_2_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_2_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_2_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_2_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_2_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_2_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_2_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_2_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_2_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_2_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_2_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_2_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_2_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_2_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_2_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_2_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_2_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_2_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_2_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_2_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_2_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_2_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_2_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_2_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_2_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_2_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_2_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_2_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_2_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_2_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_2_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_2_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_2_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_2_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_2_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_2_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_2_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_2_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_2_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_2_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_2_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_2_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_2_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...

	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_2_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_2_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_2_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_2_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_2_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_2_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_2_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_2_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_2_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_2_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_2_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_2_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_2_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_2_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_2_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_2_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_2_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_2_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_2_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbei gehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_2_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlang gehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_2_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_2_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_2_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_2_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_2_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_2_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_2_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_2_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_2_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_2_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_2_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_2_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_2_Addon_WrongArmor";				//Das ist nicht deine Kleidung. Ich rede nicht mit dir.
	ADDON_WRONGARMOR_SLD		= "SVM_2_ADDON_WRONGARMOR_SLD";			//Wie l�ufst du denn rum? Zieh dir was Vern�nftiges an.
	ADDON_WRONGARMOR_MIL		= "SVM_2_ADDON_WRONGARMOR_MIL";			//Du bist Soldat! Kleide dich entsprechend.
	ADDON_WRONGARMOR_KDF		= "SVM_2_ADDON_WRONGARMOR_KDF";			//Deine Kleidung ist unserem Orden nicht angemessen. Zieh dich um.
	ADDON_NOARMOR_BDT			= "SVM_2_ADDON_ADDON_NOARMOR_BDT";		//Hast ja noch nicht mal 'ne R�stung. Verschwinde!

	ADDON_DIEBANDIT				= "SVM_2_ADDON_DIEBANDIT";				//Stirb, du dreckiger Bandit!
	ADDON_DIRTYPIRATE			= "SVM_2_ADDON_DIRTYPIRATE";			//Piratenpack!

	RELMINE01			= "SVM_2_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_2_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_2_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_2_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_2_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_2_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_2_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_2_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_2_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_2_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_2_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_2_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_2_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_2_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_2_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_2_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_2_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_2_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_2_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_2_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_2_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_2_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_2_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_2_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_2_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_2_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_2_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_2_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_2_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_2_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_2_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_2_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_2_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_2_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_2_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_2_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_2_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_2_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_2_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_2_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_2_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_2_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_2_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_2_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_2_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_2_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_2_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_2_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_2_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_2_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_2_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_2_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_2_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_2_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_2_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_2_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_2_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_3 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_3_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_3_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_3_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_3_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_3_Weather"					;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_3_IGetYouStill"				;//Aber jetzt krieg ich dich!
	DieEnemy					=	"SVM_3_DieEnemy"					;//Ich mach dich fertig!
	DieMonster					=	"SVM_3_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_3_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_3_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_3_SheepKiller"				;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_3_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_3_YouMurderer"				;//M�rder!
	DieStupidBeast				=	"SVM_3_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_3_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_3_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_3_ThenIBeatYouOutOfHere"		;//Du willst nicht gehen? Na gut!
	WhatDidYouDoInThere			=	"SVM_3_WhatDidYouDoInThere"		;//Was hattest du da drin zu suchen?
	WillYouStopFighting			=	"SVM_3_WillYouStopFighting"		;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_3_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_3_EnemyKilled"				;//Das hast du verdient, Mistkerl!
	MonsterKilled				=	"SVM_3_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_3_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_3_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_3_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_3_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_3_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_3_NeverHitMeAgain"			;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_3_YouBetterShouldHaveListened";//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_3_GetUpAndBeGone"				;//Und jetzt sieh zu, dass du hier verschwindest!
	NeverEnterRoomAgain			=	"SVM_3_NeverEnterRoomAgain"		;//Und lass dich ja nie wieder da drinnen erwischen!
	ThereIsNoFightingHere		=	"SVM_3_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_3_Berzerk"						;//UUAAARRGGGHHH!!!
	RunAway						= 	"SVM_3_RunAway"					;//Ach du Schei�e!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_3_Alarm"					;//ALARM!
	Guards						=	"SVM_3_Guards"					;//WACHE!
	Help						=	"SVM_3_Help"					;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_3_GoodMonsterKill"		;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_3_GoodKill"				;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_3_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_3_RunCoward"				;//(ruft laut) Ja! Renn, so schnell du kannst!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_3_GetOutOfHere"			;//Raus hier!
	WhyAreYouInHere				=	"SVM_3_WhyAreYouInHere"		;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_3_YesGoOutOfHere"			;//Ja, mach dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_3_WhatsThisSupposedToBe"	;//Hey du! Was schleichst du da rum.
	YouDisturbedMySlumber		=	"SVM_3_YouDisturbedMySlumber"	;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_3_ITookYourGold"			;//Danke f�r das Gold, du Held!
	ShitNoGold					=	"SVM_3_ShitNoGold"				;//Du arme Wurst, hast ja nicht mal Gold dabei!
	ITakeYourWeapon				=	"SVM_3_ITakeYourWeapon"		;//Die Waffe nehm ich mal besser an mich!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_3_WhatAreYouDoing"		;//(warnt) Pass auf! Noch mal, und ich verpass dir eine.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_3_LookingForTroubleAgain"	;//Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_3_StopMagic"				;//H�r auf mit dieser Magie-Schei�e!
	ISaidStopMagic				=	"SVM_3_ISaidStopMagic"			;//Willst du Schl�ge? H�r sofort damit auf!!!
	WeaponDown					=	"SVM_3_WeaponDown"				;//Steck die Waffe weg!
	ISaidWeaponDown				=	"SVM_3_ISaidWeaponDown"		;//Steck endlich die Schei�waffe weg!
	WiseMove					=	"SVM_3_WiseMove"				;//Kluges Kerlchen!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_3_NextTimeYoureInForIt"	;//(zu sich selbst) Das n�chste Mal werden wir ja sehen ...
	OhMyHead					=	"SVM_3_OhMyHead"				;//(zu sich selbst) Oh Mann, mein Kopf ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_3_TheresAFight"			;//(gierig) Ah, ein Kampf!
	OhMyGodItsAFight			=	"SVM_3_OhMyGodItsAFight"		;//(best�rzt) Mein Gott, ein Kampf!
	GoodVictory					=	"SVM_3_GoodVictory"			;//(b�se lachend) Dem hast du's gezeigt!
	NotBad						= 	"SVM_3_NotBad"					;//(anerkennend) Nicht schlecht ...
	OhMyGodHesDown				=	"SVM_3_OhMyGodHesDown"			;//(zu sich selbst) Mein Gott! Wie brutal ...
	CheerFriend01				=	"SVM_3_CheerFriend01"			;//Schlag zu!
	CheerFriend02				=	"SVM_3_CheerFriend02"			;//Gib alles!
	CheerFriend03				=	"SVM_3_CheerFriend03"			;//Zeig's ihm!
	Ooh01						=	"SVM_3_Ooh01"					;//Bleib dran!
	Ooh02						=	"SVM_3_Ooh02"					;//Vorsicht!
	Ooh03						=	"SVM_3_Ooh03"					;//Oh! Der hat gesessen!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_3_WhatWasThat"				;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_3_GetOutOfMyBed"			;//Das ist mein Bett!
	Awake						= "SVM_3_Awake"					;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_3_TOUGHGUY_ATTACKLOST"		;//Okay, okay, du bist der Bessere von uns beiden! Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_3_TOUGHGUY_ATTACKWON"		;//(selbstgef�llig) Ich nehme an, du hast mittlerweile begriffen, wer von uns beiden der St�rkere ist ... Was willst du?
	TOUGHGUY_PLAYERATTACK		= "SVM_3_TOUGHGUY_PLAYERATTACK"	;//Ich dachte, du wolltest dich mit mir anlegen. Hast du's dir anders �berlegt? Willst doch lieber REDEN, was? (lacht)
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_3_GOLD_1000"				;//1000 Goldst�cke.
	GOLD_950					= "SVM_3_GOLD_950"					;//950 Goldst�cke.
	GOLD_900					= "SVM_3_GOLD_900"					;//900 Goldst�cke.
	GOLD_850					= "SVM_3_GOLD_850"					;//850 Goldst�cke.
	GOLD_800					= "SVM_3_GOLD_800"					;//800 Goldst�cke.
	GOLD_750					= "SVM_3_GOLD_750"					;//750 Goldst�cke.
	GOLD_700					= "SVM_3_GOLD_700"					;//700 Goldst�cke.
	GOLD_650					= "SVM_3_GOLD_650"					;//650 Goldst�cke.
	GOLD_600					= "SVM_3_GOLD_600"					;//600 Goldst�cke.
	GOLD_550					= "SVM_3_GOLD_550"					;//550 Goldst�cke.
	GOLD_500					= "SVM_3_GOLD_500"					;//500 Goldst�cke.
	GOLD_450					= "SVM_3_GOLD_450"					;//450 Goldst�cke.
	GOLD_400					= "SVM_3_GOLD_400"					;//400 Goldst�cke.
	GOLD_350					= "SVM_3_GOLD_350"					;//350 Goldst�cke.
	GOLD_300					= "SVM_3_GOLD_300"					;//300 Goldst�cke.
	GOLD_250					= "SVM_3_GOLD_250"					;//250 Goldst�cke.
	GOLD_200					= "SVM_3_GOLD_200"					;//200 Goldst�cke.
	GOLD_150					= "SVM_3_GOLD_150"					;//150 Goldst�cke.
	GOLD_100					= "SVM_3_GOLD_100"					;//100 Goldst�cke.
	GOLD_90						= "SVM_3_GOLD_90"					;//90 Goldst�cke.
	GOLD_80						= "SVM_3_GOLD_80"					;//80 Goldst�cke.
	GOLD_70						= "SVM_3_GOLD_70"					;//70 Goldst�cke.
	GOLD_60						= "SVM_3_GOLD_60"					;//60 Goldst�cke.
	GOLD_50						= "SVM_3_GOLD_50"					;//50 Goldst�cke.
	GOLD_40						= "SVM_3_GOLD_40"					;//40 Goldst�cke.
	GOLD_30						= "SVM_3_GOLD_30"					;//30 Goldst�cke.
	GOLD_20						= "SVM_3_GOLD_20"					;//20 Goldst�cke.
	GOLD_10						= "SVM_3_GOLD_10"					;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_3_Smalltalk01"				;//... glaubst du wirklich ...
	Smalltalk02					= "SVM_3_Smalltalk02"				;//... m�glich ist alles ...
	Smalltalk03					= "SVM_3_Smalltalk03"				;//... das h�tte er doch besser wissen m�ssen ...
	Smalltalk04					= "SVM_3_Smalltalk04"				;//... als ob ich nicht schon genug Probleme h�tte ...
	Smalltalk05					= "SVM_3_Smalltalk05"				;//... wer erz�hlt denn so was ...
	Smalltalk06					= "SVM_3_Smalltalk06"				;//... das gibt doch nur noch mehr �rger ...
	Smalltalk07					= "SVM_3_Smalltalk07"				;//... man erz�hlt sich ja so einiges ...
	Smalltalk08					= "SVM_3_Smalltalk08"				;//... ich h�tte das nicht gedacht ...
	Smalltalk09					= "SVM_3_Smalltalk09"				;//... das sind doch alles nur Ger�chte ...
	Smalltalk10					= "SVM_3_Smalltalk10"				;//... man muss eben aufpassen, was man so rumerz�hlt ...
	Smalltalk11					= "SVM_3_Smalltalk11"				;//... das h�tte ich dir vorher sagen k�nnen ...
	Smalltalk12					= "SVM_3_Smalltalk12"				;//... mich fragt ja keiner ...
	Smalltalk13					= "SVM_3_Smalltalk13"				;//... der arme Kerl kann einem Leid tun ...
	Smalltalk14					= "SVM_3_Smalltalk14"				;//... das ist doch nichts Neues ...
	Smalltalk15					= "SVM_3_Smalltalk15"				;//... das liegt doch auf der Hand ...
	Smalltalk16					= "SVM_3_Smalltalk16"				;//... mich brauchst du das nicht zu fragen ...
	Smalltalk17					= "SVM_3_Smalltalk17"				;//... das kann ja nicht ewig so weitergehen ...
	Smalltalk18					= "SVM_3_Smalltalk18"				;//... meine Meinung kennst du ja schon ...
	Smalltalk19					= "SVM_3_Smalltalk19"				;//... genau das hab ich auch gesagt ...
	Smalltalk20					= "SVM_3_Smalltalk20"				;//... daran wird sich nie etwas �ndern ...
	Smalltalk21					= "SVM_3_Smalltalk21"				;//... warum erfahre ich das jetzt erst ...
	Smalltalk22					= "SVM_3_Smalltalk22"				;//... lass uns erstmal abwarten, was daraus wird ...
	Smalltalk23					= "SVM_3_Smalltalk23"				;//... einige Probleme erledigen sich von selbst ...
	Smalltalk24					= "SVM_3_Smalltalk24"				;//... ich kann das nicht mehr h�ren ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                    
	Smalltalk25					= "SVM_3_Smalltalk25"				;//... der war doch sturzbetrunken ...
	Smalltalk26					= "SVM_3_Smalltalk26"				;//... mit mir kann man so was nicht machen ...
	Smalltalk27					= "SVM_3_Smalltalk27"				;//... alle sind gerannt wie die Hasen, ich war ganz allein ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                    
	Smalltalk28					= "SVM_3_Smalltalk28"				;//... so steht es in den heiligen Schriften ...
	Smalltalk29					= "SVM_3_Smalltalk29"				;//... ich handle stets in Innos' Namen ...
	Smalltalk30					= "SVM_3_Smalltalk30"				;//... niemand darf gegen die g�ttliche Ordnung versto�en ...
	SmalltalkKhorataAnnaQuest01			= "SVM_3_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_3_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_3_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_3_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_3_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_3_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_3_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_3_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_3_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_3_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_3_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_3_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_3_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_3_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_3_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_3_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_3_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_3_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_3_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_3_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_3_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_3_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_3_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_3_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_3_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_3_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_3_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_3_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_3_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_3_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_3_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_3_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_3_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_3_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_3_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_3_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_3_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_3_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_3_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_3_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_3_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_3_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_3_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_3_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_3_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_3_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_3_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_3_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_3_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_3_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_3_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_3_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_3_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_3_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_3_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_3_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_3_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_3_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_3_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_3_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_3_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_3_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_3_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_3_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_3_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_3_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_3_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_3_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_3_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_3_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_3_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_3_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_3_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_3_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_3_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_3_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_3_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_3_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_3_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_3_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_3_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_3_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_3_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_3_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_3_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_3_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_3_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_3_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_3_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_3_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_3_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_3_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hoch f�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_3_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_3_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_3_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_3_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_3_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbei gehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_3_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlang gehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_3_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_3_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_3_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_3_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_3_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_3_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_3_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_3_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_3_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_3_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_3_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_3_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_3_Addon_WrongArmor";				//Was ist das f�r Kleidung? Sie passt nicht zu dir. Lass mich in Ruhe.
	ADDON_WRONGARMOR_SLD		= "SVM_3_ADDON_WRONGARMOR_SLD";			//Wenn du reden willst, dann zieh dir erst mal was Richtiges an.
	ADDON_WRONGARMOR_MIL		= "SVM_3_ADDON_WRONGARMOR_MIL";			//Wir Soldaten tragen unsere Uniform mit Stolz. Zieh dich um.
	ADDON_WRONGARMOR_KDF		= "SVM_3_ADDON_WRONGARMOR_KDF";			//In unserem Orden sind alle gleich, deshalb tragen wir auch alle die gleiche Kleidung. Zieh dich um!
	ADDON_NOARMOR_BDT			= "SVM_3_ADDON_ADDON_NOARMOR_BDT";		//Kommst wohl direkt aus dem Knast. Besorg dir erst mal was zum Anziehen.

	ADDON_DIEBANDIT				= "SVM_3_ADDON_DIEBANDIT";				//KOMM HER, BANDIT!
	ADDON_DIRTYPIRATE			= "SVM_3_ADDON_DIRTYPIRATE";			//KOMM HER, PIRAT!

	RELMINE01			= "SVM_3_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_3_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_3_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_3_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_3_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_3_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_3_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_3_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_3_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_3_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_3_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_3_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_3_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_3_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_3_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_3_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_3_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_3_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_3_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_3_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_3_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_3_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_3_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_3_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_3_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_3_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_3_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_3_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_3_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_3_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_3_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_3_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_3_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_3_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_3_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_3_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_3_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_3_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_3_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_3_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_3_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_3_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_3_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_3_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_3_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_3_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_3_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_3_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_3_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_3_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_3_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_3_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_3_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_3_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_3_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_3_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_3_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_4 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_4_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_4_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_4_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_4_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_4_Weather"						;//Schei�wetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_4_IGetYouStill"				;//DU schon wieder!
	DieEnemy					=	"SVM_4_DieEnemy"					;//Ich mach dich fertig!
	DieMonster					=	"SVM_4_DieMonster"					;//Schon wieder eins von diesen Biestern!
	DirtyThief					=	"SVM_4_DirtyThief"					;//Du mieser kleiner Dieb!
	HandsOff					=	"SVM_4_HandsOff"					;//Nimm deine Finger weg da!
	SheepKiller					=	"SVM_4_SheepKiller"					;//Hey! Lass unsere Schafe in Ruhe!
	SheepKillerMonster			=	"SVM_4_SheepKillerMonster"			;//Das Biest frisst unsere Schafe!
	YouMurderer					=	"SVM_4_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_4_DieStupidBeast"				;//Was will DAS Vieh denn hier?
	YouDareHitMe				=	"SVM_4_YouDareHitMe"				;//Jetzt kannst du was erleben!
	YouAskedForIt				=	"SVM_4_YouAskedForIt"				;//Du hast es nicht anders gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_4_ThenIBeatYouOutOfHere"		;//Wer nicht h�ren will, muss f�hlen.
	WhatDidYouDoInThere			=	"SVM_4_WhatDidYouDoInThere"			;//Was wolltet du da drin, he!?
	WillYouStopFighting			=	"SVM_4_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_4_Berzerk"						;//UUAAARRGGGHHH!!!
	KillEnemy					= 	"SVM_4_KillEnemy"					;//Stirb!
	EnemyKilled					=	"SVM_4_EnemyKilled"					;//So ein d�mlicher Mistkerl ...
	MonsterKilled				=	"SVM_4_MonsterKilled"				;//So, das war's mit dir, du Mistvieh!
	ThiefDown					=	"SVM_4_ThiefDown"					;//Lass in Zukunft die Finger von meinen Sachen, klar?
	rumfummlerDown				=	"SVM_4_rumfummlerDown"				;//Behalt in Zukunft deine Finger bei dir!
	SheepAttackerDown			=	"SVM_4_SheepAttackerDown"			;//Vergreif dich nie wieder an unseren Schafen!
	KillMurderer				=	"SVM_4_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_4_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_4_NeverHitMeAgain"				;//Versuch das nicht noch mal, B�rschchen!
	YouBetterShouldHaveListened	=	"SVM_4_YouBetterShouldHaveListened"	;//Lass dir das eine Lehre sein.
	GetUpAndBeGone				=	"SVM_4_GetUpAndBeGone"				;//Steh auf und mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_4_NeverEnterRoomAgain"			;//Ich will dich nie wieder da drinnen sehen, klar?
	ThereIsNoFightingHere		=	"SVM_4_ThereIsNoFightingHere"		;//Wenn hier einer Schl�ge verteilt, dann bin ich das, kapiert?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_4_RunAway"						;//Schei�e! Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_4_Alarm"					;//ALARM!
	Guards						=	"SVM_4_Guards"					;//WACHE!
	Help						=	"SVM_4_Help"					;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_4_GoodMonsterKill"			;//(ruft zu) Ja! So muss man's den Biestern geben!
	GoodKill					= 	"SVM_4_GoodKill"				;//(ruft) Das hat die Sau verdient!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_4_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_4_RunCoward"				;//(ruft laut) Wir sprechen uns noch!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_4_GetOutOfHere"			;//Raus!
	WhyAreYouInHere				=	"SVM_4_WhyAreYouInHere"			;//Was hast du hier zu suchen?!
	YesGoOutOfHere				= 	"SVM_4_YesGoOutOfHere"			;//Hau blo� ab!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_4_WhatsThisSupposedToBe"	;//Was schleichst du denn da rum?
	YouDisturbedMySlumber		=	"SVM_4_YouDisturbedMySlumber"	;//(wacht auf) Was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_4_ITookYourGold"			;//Danke f�r das Gold, du Held!
	ShitNoGold					=	"SVM_4_ShitNoGold"				;//Du arme Wurst, hast ja nicht mal Gold dabei!
	ITakeYourWeapon				=	"SVM_4_ITakeYourWeapon"			;//Die Waffe nehm ich mal besser an mich!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_4_WhatAreYouDoing"			;//(warnt) Pass auf! Noch mal und ich verpass dir eine.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_4_LookingForTroubleAgain"	;//(agressiv) Willst du noch mal was aufs Maul?
																	 
	StopMagic					=	"SVM_4_StopMagic"				;//H�r auf mit dieser Magie-Schei�e!
	ISaidStopMagic				=	"SVM_4_ISaidStopMagic"			;//Willst du Schl�ge? H�r sofort auf damit!
	WeaponDown					=	"SVM_4_WeaponDown"				;//Steck die Waffe weg!
	ISaidWeaponDown				=	"SVM_4_ISaidWeaponDown"			;//Steck endlich die Schei�waffe weg!
	WiseMove					=	"SVM_4_WiseMove"				;//Kluges Kerlchen!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_4_NextTimeYoureInForIt"	;//(zu sich selbst) Das n�chste Mal werden wir ja sehen ...
	OhMyHead					=	"SVM_4_OhMyHead"				;//(zu sich selbst) Oh Mann, mein Kopf ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_4_TheresAFight"			;//(gierig) Ah, ein Kampf!
	OhMyGodItsAFight			=	"SVM_4_OhMyGodItsAFight"		;//(best�rzt) Mein Gott, ein Kampf!
	GoodVictory					=	"SVM_4_GoodVictory"				;//(b�se lachend) Dem hast du's gezeigt!
	NotBad						= 	"SVM_4_NotBad"					;//(anerkennend) Nicht schlecht ...
	OhMyGodHesDown				=	"SVM_4_OhMyGodHesDown"			;//(zu sich selbst) Mein Gott! Wie brutal ...
	CheerFriend01				=	"SVM_4_CheerFriend01"			;//Ja, gib's ihm!
	CheerFriend02				=	"SVM_4_CheerFriend02"			;//Zeig's ihm!
	CheerFriend03				=	"SVM_4_CheerFriend03"			;//Mach ihn fertig!
	Ooh01						=	"SVM_4_Ooh01"					;//Wehr dich!
	Ooh02						=	"SVM_4_Ooh02"					;//Schlag doch zur�ck!
	Ooh03						=	"SVM_4_Ooh03"					;//Uh! Das tat weh!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_4_WhatWasThat"				;//(zu sich selbst, wacht auf) Verdammt, was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_4_GetOutOfMyBed"				;//Such dir ein eigenes Bett!
	Awake						= "SVM_4_Awake"						;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_4_TOUGHGUY_ATTACKLOST"		;//Du hast ja 'nen ganz sch�nen Schlag drauf ... Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_4_TOUGHGUY_ATTACKWON"		;//(selbstgef�llig) Noch Fragen?
	TOUGHGUY_PLAYERATTACK		= "SVM_4_TOUGHGUY_PLAYERATTACK"		;//Da bist du ja wieder!
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_4_GOLD_1000"					;//1000 Goldst�cke.
	GOLD_950					= "SVM_4_GOLD_950"					;//950 Goldst�cke.
	GOLD_900					= "SVM_4_GOLD_900"					;//900 Goldst�cke.
	GOLD_850					= "SVM_4_GOLD_850"					;//850 Goldst�cke.
	GOLD_800					= "SVM_4_GOLD_800"					;//800 Goldst�cke.
	GOLD_750					= "SVM_4_GOLD_750"					;//750 Goldst�cke.
	GOLD_700					= "SVM_4_GOLD_700"					;//700 Goldst�cke.
	GOLD_650					= "SVM_4_GOLD_650"					;//650 Goldst�cke.
	GOLD_600					= "SVM_4_GOLD_600"					;//600 Goldst�cke.
	GOLD_550					= "SVM_4_GOLD_550"					;//550 Goldst�cke.
	GOLD_500					= "SVM_4_GOLD_500"					;//500 Goldst�cke.
	GOLD_450					= "SVM_4_GOLD_450"					;//450 Goldst�cke.
	GOLD_400					= "SVM_4_GOLD_400"					;//400 Goldst�cke.
	GOLD_350					= "SVM_4_GOLD_350"					;//350 Goldst�cke.
	GOLD_300					= "SVM_4_GOLD_300"					;//300 Goldst�cke.
	GOLD_250					= "SVM_4_GOLD_250"					;//250 Goldst�cke.
	GOLD_200					= "SVM_4_GOLD_200"					;//200 Goldst�cke.
	GOLD_150					= "SVM_4_GOLD_150"					;//150 Goldst�cke.
	GOLD_100					= "SVM_4_GOLD_100"					;//100 Goldst�cke.
	GOLD_90						= "SVM_4_GOLD_90"					;//90 Goldst�cke.
	GOLD_80						= "SVM_4_GOLD_80"					;//80 Goldst�cke.
	GOLD_70						= "SVM_4_GOLD_70"					;//70 Goldst�cke.
	GOLD_60						= "SVM_4_GOLD_60"					;//60 Goldst�cke.
	GOLD_50						= "SVM_4_GOLD_50"					;//50 Goldst�cke.
	GOLD_40						= "SVM_4_GOLD_40"					;//40 Goldst�cke.
	GOLD_30						= "SVM_4_GOLD_30"					;//30 Goldst�cke.
	GOLD_20						= "SVM_4_GOLD_20"					;//20 Goldst�cke.
	GOLD_10						= "SVM_4_GOLD_10"					;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_4_Smalltalk01"				;//... ist das wirklich wahr ...
	Smalltalk02					= "SVM_4_Smalltalk02"				;//... ich hab was anderes geh�rt ...
	Smalltalk03					= "SVM_4_Smalltalk03"				;//... sag mir nicht, dass du das nicht gewusst hast ...
	Smalltalk04					= "SVM_4_Smalltalk04"				;//... man wei� gar nicht mehr, wem man noch glauben soll ...
	Smalltalk05					= "SVM_4_Smalltalk05"				;//... das ist doch alles nur Gerede ...
	Smalltalk06					= "SVM_4_Smalltalk06"				;//... meinst du, mir geht es besser ...
	Smalltalk07					= "SVM_4_Smalltalk07"				;//... ich wundere mich �ber gar nichts mehr ...
	Smalltalk08					= "SVM_4_Smalltalk08"				;//... das ist wirklich nicht mein Problem ...
	Smalltalk09					= "SVM_4_Smalltalk09"				;//... glaubst du wirklich daran ...
	Smalltalk10					= "SVM_4_Smalltalk10"				;//... von mir erf�hrt keiner was ...
	Smalltalk11					= "SVM_4_Smalltalk11"				;//... das war doch schon vorher klar ...
	Smalltalk12					= "SVM_4_Smalltalk12"				;//... er hat auf die falschen Leute geh�rt ...
	Smalltalk13					= "SVM_4_Smalltalk13"				;//... wenn er das nicht sieht, kann ich ihm auch nicht mehr helfen ...
	Smalltalk14					= "SVM_4_Smalltalk14"				;//... ich erz�hl dir doch nichts Neues ...
	Smalltalk15					= "SVM_4_Smalltalk15"				;//... von selbst ist er da nicht drauf gekommen ...
	Smalltalk16					= "SVM_4_Smalltalk16"				;//... das ist doch lange bekannt ...
	Smalltalk17					= "SVM_4_Smalltalk17"				;//... das ist 'ne schlimme Sache ...
	Smalltalk18					= "SVM_4_Smalltalk18"				;//... ich h�tte das anders gemacht ...
	Smalltalk19					= "SVM_4_Smalltalk19"				;//... ich bin ganz deiner Meinung ...
	Smalltalk20					= "SVM_4_Smalltalk20"				;//... wird sich das jemals �ndern ...
	Smalltalk21					= "SVM_4_Smalltalk21"				;//... das habe ich noch gar nicht gewusst ...
	Smalltalk22					= "SVM_4_Smalltalk22"				;//... da kannst du eh nichts dran �ndern ...
	Smalltalk23					= "SVM_4_Smalltalk23"				;//... das wundert mich nicht ...
	Smalltalk24					= "SVM_4_Smalltalk24"				;//... er musste es ja besser wissen ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                    
	Smalltalk25					= "SVM_4_Smalltalk25"				;//... es kommt nur auf die Kraft an, also komm mir nicht so ...
	Smalltalk26					= "SVM_4_Smalltalk26"				;//... der wei� ja nicht mal, wie man ein Schwert h�lt ...
	Smalltalk27					= "SVM_4_Smalltalk27"				;//... ja, das hat er wirklich behauptet ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                    
	Smalltalk28					= "SVM_4_Smalltalk28"				;//... jemand wird daf�r b��en m�ssen ...
	Smalltalk29					= "SVM_4_Smalltalk29"				;//... Innos leuchtet all denen, die seine Weisheit erkennen ...
	Smalltalk30					= "SVM_4_Smalltalk30"				;//... letztendlich wird die Gerechtigkeit siegen ...
	SmalltalkKhorataAnnaQuest01			= "SVM_4_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_4_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_4_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_4_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_4_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_4_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_4_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_4_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_4_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_4_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_4_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_4_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_4_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_4_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_4_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_4_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_4_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_4_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_4_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_4_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_4_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_4_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_4_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_4_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_4_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_4_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_4_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_4_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_4_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_4_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_4_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_4_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_4_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_4_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_4_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_4_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_4_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_4_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_4_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_4_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_4_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_4_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_4_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_4_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_4_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_4_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_4_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_4_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_4_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_4_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_4_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_4_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_4_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_4_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_4_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_4_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_4_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_4_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_4_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_4_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_4_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_4_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_4_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_4_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_4_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_4_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_4_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_4_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_4_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_4_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_4_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_4_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_4_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_4_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_4_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_4_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_4_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_4_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_4_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_4_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_4_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_4_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_4_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_4_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_4_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_4_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_4_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_4_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_4_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_4_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_4_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_4_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hoch f�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_4_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_4_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_4_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_4_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_4_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbei gehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_4_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlang gehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_4_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_4_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_4_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_4_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_4_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_4_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_4_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_4_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_4_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_4_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_4_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_4_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_4_Addon_WrongArmor";				//Zieh dich erst mal anst�ndig an, dann reden wir weiter.
	ADDON_WRONGARMOR_SLD		= "SVM_4_ADDON_WRONGARMOR_SLD";			//Trag gef�lligst deine R�stung, wenn du mit mir reden willst.
	ADDON_WRONGARMOR_MIL		= "SVM_4_ADDON_WRONGARMOR_MIL";			//Hat man dir keine von unseren R�stung gegeben? Dann besorg dir erst mal eine.
	ADDON_WRONGARMOR_KDF		= "SVM_4_ADDON_WRONGARMOR_KDF";			//Wo ist deine Robe? Zieh dich um. Vorher werde ich nicht mit dir reden.
	ADDON_NOARMOR_BDT			= "SVM_4_ADDON_ADDON_NOARMOR_BDT";		//Was bist du denn f�r eine arme Sau? Komm wieder, wenn du dir eine R�stung leisten kannst.

	ADDON_DIEBANDIT				= "SVM_4_ADDON_DIEBANDIT";				//Noch ein Bandit!
	ADDON_DIRTYPIRATE			= "SVM_4_ADDON_DIRTYPIRATE";			//Du dreckiger Pirat!

	RELMINE01			= "SVM_4_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_4_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_4_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_4_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_4_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_4_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_4_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_4_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_4_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_4_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_4_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_4_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_4_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_4_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_4_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_4_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_4_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_4_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_4_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_4_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_4_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_4_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_4_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_4_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_4_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_4_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_4_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_4_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_4_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_4_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_4_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_4_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_4_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_4_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_4_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_4_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_4_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_4_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_4_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_4_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_4_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_4_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_4_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_4_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_4_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_4_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_4_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_4_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_4_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_4_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_4_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_4_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_4_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_4_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_4_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_4_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_4_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_5 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_5_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_5_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_5_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_5_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_5_Weather"						;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_5_IGetYouStill"				;//Krieg' ich dich DOCH noch!
	DieEnemy					=	"SVM_5_DieEnemy"					;//Jetzt bist du dran!
	DieMonster					=	"SVM_5_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_5_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_5_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_5_SheepKiller"					;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_5_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_5_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_5_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_5_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_5_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_5_ThenIBeatYouOutOfHere"		;//Dann muss ich dich eben rausPR�GELN!
	WhatDidYouDoInThere			=	"SVM_5_WhatDidYouDoInThere"			;//Was hattest DU denn da drin zu suchen, he!?
	WillYouStopFighting			=	"SVM_5_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_5_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_5_EnemyKilled"					;//Das war's f�r dich, Penner.
	MonsterKilled				=	"SVM_5_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_5_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_5_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	Berzerk						=	"SVM_5_Berzerk"						;//UUAAARRGGGHHH!!!
	SheepAttackerDown			=	"SVM_5_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_5_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_5_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_5_NeverHitMeAgain"				;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_5_YouBetterShouldHaveListened"	;//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_5_GetUpAndBeGone"				;//Und jetzt mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_5_NeverEnterRoomAgain"			;//Und dass ich dich nie wieder da drin erwische!
	ThereIsNoFightingHere		=	"SVM_5_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_5_RunAway"						;//Schei�e! Nichts wie weg hier!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_5_Alarm"						;//ALARM!
	Guards						=	"SVM_5_Guards"						;//WACHE!
	Help						=	"SVM_5_Help"						;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_5_GoodMonsterKill"				;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_5_GoodKill"					;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_5_NOTNOW"						;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_5_RunCoward"					;//(ruft laut) Bleib stehen, du Lump!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_5_GetOutOfHere"				;//Raus hier!
	WhyAreYouInHere				=	"SVM_5_WhyAreYouInHere"				;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_5_YesGoOutOfHere"				;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_5_WhatsThisSupposedToBe"		;//Hey du! Was schleichst denn du da rum?
	YouDisturbedMySlumber		=	"SVM_5_YouDisturbedMySlumber"		;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_5_ITookYourGold"				;//Gold! Das ist schon mal meins ...
	ShitNoGold					=	"SVM_5_ShitNoGold"					;//Du hast noch nicht mal Gold dabei?
	ITakeYourWeapon				=	"SVM_5_ITakeYourWeapon"				;//Deine Waffe nehm ich mal lieber mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_5_WhatAreYouDoing"				;//(warnt) Hey! Pass auf!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_5_LookingForTroubleAgain"		;//(aggressiv) Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_5_StopMagic"					;//Geh blo� weg mit deiner Magie!
	ISaidStopMagic				=	"SVM_5_ISaidStopMagic"				;//Weg mit der Magie! H�rst du schlecht!?
	WeaponDown					=	"SVM_5_WeaponDown"					;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_5_ISaidWeaponDown"				;//H�rst du schlecht? Ich sagte: Weg mit der Waffe!
	WiseMove					=	"SVM_5_WiseMove"					;//Na bitte, geht doch!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_5_NextTimeYoureInForIt"		;//(zu sich selbst) Dar�ber reden wir noch ...
	OhMyHead					=	"SVM_5_OhMyHead"					;//(zu sich selbst) Oh, mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_5_TheresAFight"				;//(gierig) Jetzt geht's zur Sache!
	OhMyGodItsAFight			=	"SVM_5_OhMyGodItsAFight"			;//(best�rzt) Die hauen sich ja den Sch�del ein ...
	GoodVictory					=	"SVM_5_GoodVictory"					;//(b�se lachend) Das hat er verdient.
	NotBad						= 	"SVM_5_NotBad"						;//(anerkennend) Gar nicht so �bel ...
	OhMyGodHesDown				=	"SVM_5_OhMyGodHesDown"				;//(zu sich selbst) Was f�r ein brutaler Kerl ...
	CheerFriend01				=	"SVM_5_CheerFriend01"				;//Ja, so ist's gut!
	CheerFriend02				=	"SVM_5_CheerFriend02"				;//Na, mach schon!
	CheerFriend03				=	"SVM_5_CheerFriend03"				;//Immer feste drauf!
	Ooh01						=	"SVM_5_Ooh01"						;//Lass dir nichts gefallen!
	Ooh02						=	"SVM_5_Ooh02"						;//Den wirst du ja wohl schaffen!
	Ooh03						=	"SVM_5_Ooh03"						;//Das gibt's doch gar nicht!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_5_WhatWasThat"					;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_5_GetOutOfMyBed"					;//Raus aus meinem Bett!
	Awake						= "SVM_5_Awake"							;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_5_TOUGHGUY_ATTACKLOST"			;//Ist ja schon gut, du hast gewonnen. Na, was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_5_TOUGHGUY_ATTACKWON"			;//(selbstgef�llig) Muss ich dir noch mal zeigen, wer hier der Herr ist?
	TOUGHGUY_PLAYERATTACK		= "SVM_5_TOUGHGUY_PLAYERATTACK"			;//Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_5_GOLD_1000"						;//1000 Goldst�cke.
	GOLD_950					= "SVM_5_GOLD_950"						;//950 Goldst�cke.
	GOLD_900					= "SVM_5_GOLD_900"						;//900 Goldst�cke.
	GOLD_850					= "SVM_5_GOLD_850"						;//850 Goldst�cke.
	GOLD_800					= "SVM_5_GOLD_800"						;//800 Goldst�cke.
	GOLD_750					= "SVM_5_GOLD_750"						;//750 Goldst�cke.
	GOLD_700					= "SVM_5_GOLD_700"						;//700 Goldst�cke.
	GOLD_650					= "SVM_5_GOLD_650"						;//650 Goldst�cke.
	GOLD_600					= "SVM_5_GOLD_600"						;//600 Goldst�cke.
	GOLD_550					= "SVM_5_GOLD_550"						;//550 Goldst�cke.
	GOLD_500					= "SVM_5_GOLD_500"						;//500 Goldst�cke.
	GOLD_450					= "SVM_5_GOLD_450"						;//450 Goldst�cke.
	GOLD_400					= "SVM_5_GOLD_400"						;//400 Goldst�cke.
	GOLD_350					= "SVM_5_GOLD_350"						;//350 Goldst�cke.
	GOLD_300					= "SVM_5_GOLD_300"						;//300 Goldst�cke.
	GOLD_250					= "SVM_5_GOLD_250"						;//250 Goldst�cke.
	GOLD_200					= "SVM_5_GOLD_200"						;//200 Goldst�cke.
	GOLD_150					= "SVM_5_GOLD_150"						;//150 Goldst�cke.
	GOLD_100					= "SVM_5_GOLD_100"						;//100 Goldst�cke.
	GOLD_90						= "SVM_5_GOLD_90"						;//90 Goldst�cke.
	GOLD_80						= "SVM_5_GOLD_80"						;//80 Goldst�cke.
	GOLD_70						= "SVM_5_GOLD_70"						;//70 Goldst�cke.
	GOLD_60						= "SVM_5_GOLD_60"						;//60 Goldst�cke.
	GOLD_50						= "SVM_5_GOLD_50"						;//50 Goldst�cke.
	GOLD_40						= "SVM_5_GOLD_40"						;//40 Goldst�cke.
	GOLD_30						= "SVM_5_GOLD_30"						;//30 Goldst�cke.
	GOLD_20						= "SVM_5_GOLD_20"						;//20 Goldst�cke.
	GOLD_10						= "SVM_5_GOLD_10"						;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_5_Smalltalk01"					;//... glaubst du wirklich ...
	Smalltalk02					= "SVM_5_Smalltalk02"					;//... m�glich ist alles ...
	Smalltalk03					= "SVM_5_Smalltalk03"					;//... das h�tte er doch besser wissen m�ssen ....
	Smalltalk04					= "SVM_5_Smalltalk04"					;//... als wenn ich nicht schon genug Probleme h�tte ...
	Smalltalk05					= "SVM_5_Smalltalk05"					;//... wer erz�hlt denn so was ...
	Smalltalk06					= "SVM_5_Smalltalk06"					;//... das gibt doch nur noch mehr �rger ...
	Smalltalk07					= "SVM_5_Smalltalk07"					;//... man erz�hlt sich ja so einiges ...
	Smalltalk08					= "SVM_5_Smalltalk08"					;//... ich h�tte das nicht gemacht ...
	Smalltalk09					= "SVM_5_Smalltalk09"					;//... das sind doch alles nur Ger�chte ...
	Smalltalk10					= "SVM_5_Smalltalk10"					;//... man muss eben aufpassen, was man so rumerz�hlt ...
	Smalltalk11					= "SVM_5_Smalltalk11"					;//... das h�tte ich dir vorher sagen k�nnen ...
	Smalltalk12					= "SVM_5_Smalltalk12"					;//... mich fragt ja keiner ...
	Smalltalk13					= "SVM_5_Smalltalk13"					;//... der arme Kerl kann einem Leid tun ...
	Smalltalk14					= "SVM_5_Smalltalk14"					;//... das ist doch nichts Neues ...
	Smalltalk15					= "SVM_5_Smalltalk15"					;//... das liegt doch auf der Hand ...
	Smalltalk16					= "SVM_5_Smalltalk16"					;//... mich brauchst du das nicht zu fragen ...
	Smalltalk17					= "SVM_5_Smalltalk17"					;//... das kann ja nicht ewig so weitergehen ...
	Smalltalk18					= "SVM_5_Smalltalk18"					;//... meine Meinung kennst du ja schon ...
	Smalltalk19					= "SVM_5_Smalltalk19"					;//... genau das hab ich auch gesagt ...
	Smalltalk20					= "SVM_5_Smalltalk20"					;//... daran wird sich nie etwas �ndern ...
	Smalltalk21					= "SVM_5_Smalltalk21"					;//... warum erfahre ich das erst jetzt ...
	Smalltalk22					= "SVM_5_Smalltalk22"					;//... lass uns erstmal abwarten, was daraus wird ...
	Smalltalk23					= "SVM_5_Smalltalk23"					;//... einige Probleme erledigen sich von selbst ...
	Smalltalk24					= "SVM_5_Smalltalk24"					;//... ich kann das nicht mehr h�ren ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_5_Smalltalk25"					;//... der war doch sturzbetrunken ...
	Smalltalk26					= "SVM_5_Smalltalk26"					;//... mit mir kann man so was nicht machen ...
	Smalltalk27					= "SVM_5_Smalltalk27"					;//... alle sind gerannt wie die Hasen, ich war ganz allein ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_5_Smalltalk28"					;//... so steht es in den heiligen Schriften ...
	Smalltalk29					= "SVM_5_Smalltalk29"					;//... ich handle stets in Innos Namen ...
	Smalltalk30					= "SVM_5_Smalltalk30"					;//... niemand darf gegen die g�ttliche Ordnung versto�en ...
	SmalltalkKhorataAnnaQuest01			= "SVM_5_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_5_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_5_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_5_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_5_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_5_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_5_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_5_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_5_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_5_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_5_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_5_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_5_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_5_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_5_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_5_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_5_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_5_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_5_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_5_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_5_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_5_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_5_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_5_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_5_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_5_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_5_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_5_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_5_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_5_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_5_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_5_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_5_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_5_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_5_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_5_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_5_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_5_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_5_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_5_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_5_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_5_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_5_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_5_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_5_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_5_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_5_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_5_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_5_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_5_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_5_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_5_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_5_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_5_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_5_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_5_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_5_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_5_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_5_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_5_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_5_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_5_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_5_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_5_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_5_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_5_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_5_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_5_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_5_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_5_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_5_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_5_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_5_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_5_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_5_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_5_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_5_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_5_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_5_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_5_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_5_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_5_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_5_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_5_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_5_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_5_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_5_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_5_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_5_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_5_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_5_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_5_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hoch f�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_5_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_5_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_5_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_5_TEMPEL_2_MARKT"			;//Wenn du vor dem Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_5_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbei gehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_5_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlang gehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_5_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_5_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_5_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_5_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_5_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_5_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_5_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_5_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_5_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_5_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_5_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_5_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_5_Addon_WrongArmor";				//Zieh dir erst einmal was Passendes an.
	ADDON_WRONGARMOR_SLD		= "SVM_5_ADDON_WRONGARMOR_SLD";			//Wie l�ufst du denn rum? Geh�rst du nicht mehr zu uns? Dann will ich nichts mit dir zu tun haben.
	ADDON_WRONGARMOR_MIL		= "SVM_5_ADDON_WRONGARMOR_MIL";			//Wir Soldaten k�mpfen f�r den K�nig, also trag gef�lligst auch seine R�stung.
	ADDON_WRONGARMOR_KDF		= "SVM_5_ADDON_WRONGARMOR_KDF";			//Warum gibt dir der Orden Kleidung, wenn du sie nicht tr�gst? Denk mal dar�ber nach.
	ADDON_NOARMOR_BDT			= "SVM_5_ADDON_ADDON_NOARMOR_BDT";		//Was bist du denn f�r ein W�rstchen? Du hast ja nicht mal 'ne R�stung. Geh weg.

	ADDON_DIEBANDIT				= "SVM_5_ADDON_DIEBANDIT";				//Ah, ein Bandit.
	ADDON_DIRTYPIRATE			= "SVM_5_ADDON_DIRTYPIRATE";			//Ich mach dich fertig, Pirat!

	RELMINE01			= "SVM_5_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_5_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_5_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_5_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_5_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_5_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_5_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_5_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_5_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_5_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_5_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_5_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_5_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_5_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_5_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_5_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_5_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_5_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_5_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_5_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_5_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_5_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_5_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_5_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_5_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_5_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_5_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_5_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_5_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_5_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_5_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_5_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_5_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_5_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_5_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_5_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_5_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_5_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_5_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_5_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_5_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_5_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_5_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_5_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_5_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_5_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_5_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_5_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_5_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_5_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_5_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_5_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_5_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_5_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_5_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_5_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_5_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_6 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_6_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_6_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_6_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_6_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_6_Weather"					;//Sauwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_6_IGetYouStill"				;//Jetzt krieg ich dich!
	DieEnemy					=	"SVM_6_DieEnemy"					;//Du w�rst besser nicht hier hergekommen!
	DieMonster					=	"SVM_6_DieMonster"					;//Komm her, Mistvieh!
	DirtyThief					=	"SVM_6_DirtyThief"					;//Dreckiger Dieb! Na warte!
	HandsOff					=	"SVM_6_HandsOff"					;//Nimm deine Pfoten da weg!
	SheepKiller					=	"SVM_6_SheepKiller"				;//Lass unsere Schafe in Ruhe!
	SheepKillerMonster			=	"SVM_6_SheepKillerMonster"			;//Geh weg von unseren Schafen, du Mistvieh!
	YouMurderer					=	"SVM_6_YouMurderer"				;//M�rder!
	DieStupidBeast				=	"SVM_6_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_6_YouDareHitMe"				;//Das wirst du bereuen!
	YouAskedForIt				=	"SVM_6_YouAskedForIt"				;//Ich hatte dich gewarnt!
	ThenIBeatYouOutOfHere		=	"SVM_6_ThenIBeatYouOutOfHere"		;//Hey, RAUS!
	WhatDidYouDoInThere			=	"SVM_6_WhatDidYouDoInThere"		;//Hey! Was wolltest du da drin?
	WillYouStopFighting			=	"SVM_6_WillYouStopFighting"		;//Aufh�ren! Sofort!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_6_KillEnemy"					;//Jetzt spie� ich dich auf, Mistkerl!
	EnemyKilled					=	"SVM_6_EnemyKilled"				;//Das war's f�r dich ...
	Berzerk						=	"SVM_6_Berzerk"						;//UUAAARRGGGHHH!!!
	MonsterKilled				=	"SVM_6_MonsterKilled"				;//Ich hab's immer noch drauf!
	ThiefDown					=	"SVM_6_ThiefDown"					;//Ich warne dich! Versuch das nicht noch mal, du dreckiger Dieb!
	rumfummlerDown				=	"SVM_6_rumfummlerDown"				;//Vergreif dich nie wieder an Sachen, die dir nicht geh�ren!
	SheepAttackerDown			=	"SVM_6_SheepAttackerDown"			;//Und halt dich in Zukunft von unseren Schafen fern!
	KillMurderer				=	"SVM_6_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_6_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_6_NeverHitMeAgain"				;//Wag es ja nie wieder, mich anzugreifen!
	YouBetterShouldHaveListened	=	"SVM_6_YouBetterShouldHaveListened"	;//Ich hatte dich gewarnt!
	GetUpAndBeGone				=	"SVM_6_GetUpAndBeGone"					;//Und jetzt raus mit dir!
	NeverEnterRoomAgain			=	"SVM_6_NeverEnterRoomAgain"			;//Ich will dich nie wieder da drin sehen, klar?
	ThereIsNoFightingHere		=	"SVM_6_ThereIsNoFightingHere"			;//Hier wird nicht gek�mpft, lass dir das eine Lehre sein.
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_6_RunAway"						;//Ich hau ab!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_6_Alarm"					;//ALARM!
	Guards						=	"SVM_6_Guards"					;//WACHE!
	Help						=	"SVM_6_Help"					;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_6_GoodMonsterKill"		;//(ruft zu) Gib den Viechern ordentlich Saures!
	GoodKill					= 	"SVM_6_GoodKill"				;//(ruft) Ja, gib's dem Mistkerl!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_6_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_6_RunCoward"				;//(ruft laut) Ich krieg dich noch!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_6_GetOutOfHere"			;//Raus hier!
	WhyAreYouInHere				=	"SVM_6_WhyAreYouInHere"		;//Du hast hier nichts zu suchen!
	YesGoOutOfHere				= 	"SVM_6_YesGoOutOfHere"			;//Ja, raus mit dir!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_6_WhatsThisSupposedToBe"	;//Was soll das denn werden? Warum schleichst du hier rum?
	YouDisturbedMySlumber		=	"SVM_6_YouDisturbedMySlumber"	;//(wacht auf) Verdammt, was willst du?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_6_ITookYourGold"			;//Na, immerhin hast du wenigstens Gold dabei!
	ShitNoGold					=	"SVM_6_ShitNoGold"				;//Noch nicht mal Gold - hmpf.
	ITakeYourWeapon				=	"SVM_6_ITakeYourWeapon"		;//Deine Waffe nehm ich mal mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_6_WhatAreYouDoing"		;//(warnt) Junge! Mach das ja nicht noch mal!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_6_LookingForTroubleAgain"	;//(agressiv) Brauchst du schon wieder Schl�ge?
	StopMagic					=	"SVM_6_StopMagic"				;//Weg mit der Magie!
	ISaidStopMagic				=	"SVM_6_ISaidStopMagic"			;//Letzte Warnung! Weg mit der Magie!
	WeaponDown					=	"SVM_6_WeaponDown"				;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_6_ISaidWeaponDown"		;//Weg damit oder ich verpass dir eine!
	WiseMove					=	"SVM_6_WiseMove"				;//Du bist ja gar nicht so dumm, wie du aussiehst!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_6_NextTimeYoureInForIt"	;//(zu sich selbst) Versuch das ja nicht noch mal ...
	OhMyHead					=	"SVM_6_OhMyHead"				;//(zu sich selbst) Oh! Mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_6_TheresAFight"			;//(gierig) Jetzt wird's lustig ...
	OhMyGodItsAFight			=	"SVM_6_OhMyGodItsAFight"		;//(best�rzt) Du meine G�te ...
	GoodVictory					=	"SVM_6_GoodVictory"			;//(b�se lachend) Das wird ihm eine Lehre sein ...
	NotBad						= 	"SVM_6_NotBad"					;//(anerkennend) Der hat gesessen!
	OhMyGodHesDown				=	"SVM_6_OhMyGodHesDown"			;//(zu sich selbst) Brutaler Mistkerl!
	CheerFriend01				=	"SVM_6_CheerFriend01"			;//Hau drauf!
	CheerFriend02				=	"SVM_6_CheerFriend02"			;//H�r nicht auf!
	CheerFriend03				=	"SVM_6_CheerFriend03"			;//Mach ihn fertig!
	Ooh01						=	"SVM_6_Ooh01"					;//Pass auf!
	Ooh02						=	"SVM_6_Ooh02"					;//Parier doch!
	Ooh03						=	"SVM_6_Ooh03"					;//Schei�e, das tat weh!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_6_WhatWasThat"				;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_6_GetOutOfMyBed"			;//Das ist mein Bett!
	Awake						= "SVM_6_Awake"					;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_6_TOUGHGUY_ATTACKLOST"		;//Gut - du hast gewonnen. Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_6_TOUGHGUY_ATTACKWON"		;//(selbstgef�llig) Ich denke, dir ist jetzt klar, wen du vor dir hast. Was willst du?
	TOUGHGUY_PLAYERATTACK		= "SVM_6_TOUGHGUY_PLAYERATTACK"	;//Du schon wieder? Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_6_GOLD_1000"				;//1000 Goldst�cke.
	GOLD_950					= "SVM_6_GOLD_950"					;//950 Goldst�cke.
	GOLD_900					= "SVM_6_GOLD_900"					;//900 Goldst�cke.
	GOLD_850					= "SVM_6_GOLD_850"					;//850 Goldst�cke.
	GOLD_800					= "SVM_6_GOLD_800"					;//800 Goldst�cke.
	GOLD_750					= "SVM_6_GOLD_750"					;//750 Goldst�cke.
	GOLD_700					= "SVM_6_GOLD_700"					;//700 Goldst�cke.
	GOLD_650					= "SVM_6_GOLD_650"					;//650 Goldst�cke.
	GOLD_600					= "SVM_6_GOLD_600"					;//600 Goldst�cke.
	GOLD_550					= "SVM_6_GOLD_550"					;//550 Goldst�cke.
	GOLD_500					= "SVM_6_GOLD_500"					;//500 Goldst�cke.
	GOLD_450					= "SVM_6_GOLD_450"					;//450 Goldst�cke.
	GOLD_400					= "SVM_6_GOLD_400"					;//400 Goldst�cke.
	GOLD_350					= "SVM_6_GOLD_350"					;//350 Goldst�cke.
	GOLD_300					= "SVM_6_GOLD_300"					;//300 Goldst�cke.
	GOLD_250					= "SVM_6_GOLD_250"					;//250 Goldst�cke.
	GOLD_200					= "SVM_6_GOLD_200"					;//200 Goldst�cke.
	GOLD_150					= "SVM_6_GOLD_150"					;//150 Goldst�cke.
	GOLD_100					= "SVM_6_GOLD_100"					;//100 Goldst�cke.
	GOLD_90						= "SVM_6_GOLD_90"					;//90 Goldst�cke.
	GOLD_80						= "SVM_6_GOLD_80"					;//80 Goldst�cke.
	GOLD_70						= "SVM_6_GOLD_70"					;//70 Goldst�cke.
	GOLD_60						= "SVM_6_GOLD_60"					;//60 Goldst�cke.
	GOLD_50						= "SVM_6_GOLD_50"					;//50 Goldst�cke.
	GOLD_40						= "SVM_6_GOLD_40"					;//40 Goldst�cke.
	GOLD_30						= "SVM_6_GOLD_30"					;//30 Goldst�cke.
	GOLD_20						= "SVM_6_GOLD_20"					;//20 Goldst�cke.
	GOLD_10						= "SVM_6_GOLD_10"					;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_6_Smalltalk01"				;//... ich kann das nicht glauben ...
	Smalltalk02					= "SVM_6_Smalltalk02"				;//... ich w�r mir da nicht so sicher ...
	Smalltalk03					= "SVM_6_Smalltalk03"				;//... das hat er doch vorher gewusst ...
	Smalltalk04					= "SVM_6_Smalltalk04"				;//... ich wei� langsam nicht mehr, was ich glauben soll ...
	Smalltalk05					= "SVM_6_Smalltalk05"				;//... ich wei� gar nicht, warum er sich so aufregt ...
	Smalltalk06					= "SVM_6_Smalltalk06"				;//... noch mehr �rger kann ich nicht gebrauchen ...
	Smalltalk07					= "SVM_6_Smalltalk07"				;//... ich hab so einiges geh�rt ...
	Smalltalk08					= "SVM_6_Smalltalk08"				;//... davon lass ich lieber die Finger ...
	Smalltalk09					= "SVM_6_Smalltalk09"				;//... man darf halt nicht alles glauben, was man h�rt ...
	Smalltalk10					= "SVM_6_Smalltalk10"				;//... von mir hat er das nicht ...
	Smalltalk11					= "SVM_6_Smalltalk11"				;//... ich habe mir das schon gedacht ...
	Smalltalk12					= "SVM_6_Smalltalk12"				;//... meine Meinung will ja keiner h�ren ...
	Smalltalk13					= "SVM_6_Smalltalk13"				;//... das hat er wirklich nicht verdient ...
	Smalltalk14					= "SVM_6_Smalltalk14"				;//... sag nicht, dass hast du nicht gewusst ...
	Smalltalk15					= "SVM_6_Smalltalk15"				;//... das war doch klar ...
	Smalltalk16					= "SVM_6_Smalltalk16"				;//... wo hast du das denn schon wieder her ...
	Smalltalk17					= "SVM_6_Smalltalk17"				;//... das kann ja nicht ewig so weitergehen ...
	Smalltalk18					= "SVM_6_Smalltalk18"				;//... ich hab da meine eigene Meinung ...
	Smalltalk19					= "SVM_6_Smalltalk19"				;//... es war genau so, wie du sagst ...
	Smalltalk20					= "SVM_6_Smalltalk20"				;//... ich glaub nicht, dass sich daran was �ndert ...
	Smalltalk21					= "SVM_6_Smalltalk21"				;//... das h�re ich zum ersten Mal ...
	Smalltalk22					= "SVM_6_Smalltalk22"				;//... wir k�nnen nur abwarten ...
	Smalltalk23					= "SVM_6_Smalltalk23"				;//... die Probleme habe ich kommen sehen ...
	Smalltalk24					= "SVM_6_Smalltalk24"				;//... warum h�rt eigentlich keiner auf mich ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_6_Smalltalk25"				;//... der ist gerannt, als ob Beliar selbst hinter ihm her w�re ...
	Smalltalk26					= "SVM_6_Smalltalk26"				;//... wir haben ihn nat�rlich doch noch gekriegt ...
	Smalltalk27					= "SVM_6_Smalltalk27"				;//... da muss man mal ganz kr�ftig dazwischen hauen ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_6_Smalltalk28"				;//... einige wissen gar nicht, wie sehr sie sich vers�ndigen ...
	Smalltalk29					= "SVM_6_Smalltalk29"				;//... denn so ist Innos' Wille ...
	Smalltalk30					= "SVM_6_Smalltalk30"				;//... seine Taten waren gerecht ...
	SmalltalkKhorataAnnaQuest01			= "SVM_6_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_6_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_6_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_6_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_6_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_6_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_6_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_6_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_6_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_6_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_6_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_6_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_6_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_6_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_6_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_6_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_6_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_6_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_6_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_6_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_6_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_6_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_6_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_6_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_6_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_6_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_6_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_6_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_6_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_6_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_6_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_6_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_6_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_6_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_6_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_6_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_6_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_6_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_6_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_6_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_6_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_6_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_6_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_6_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_6_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_6_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_6_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_6_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_6_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_6_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_6_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_6_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_6_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_6_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_6_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_6_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_6_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_6_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_6_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_6_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_6_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_6_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_6_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_6_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_6_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_6_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_6_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_6_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_6_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_6_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_6_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_6_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_6_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_6_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_6_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_6_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_6_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_6_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_6_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_6_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_6_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_6_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_6_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_6_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_6_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_6_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_6_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_6_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_6_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_6_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_6_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_6_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe die zum inneren Stadttor hoch f�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_6_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_6_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_6_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_6_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_6_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbei gehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_6_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlang gehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_6_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_6_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_6_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_6_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_6_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_6_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_6_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_6_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_6_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_6_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_6_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_6_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_6_Addon_WrongArmor";				//In dem Aufzug machst du dich l�cherlich. Zieh dir was Vern�nftiges an.
	ADDON_WRONGARMOR_SLD		= "SVM_6_ADDON_WRONGARMOR_SLD";			//Denkst wohl, ich erkenn dich nicht. Verschwinde und zieh dich um.
	ADDON_WRONGARMOR_MIL		= "SVM_6_ADDON_WRONGARMOR_MIL";			//Soldat. Was ist das f�r Kleidung? Auf der Stelle umziehen!
	ADDON_WRONGARMOR_KDF		= "SVM_6_ADDON_WRONGARMOR_KDF";			//Ein Diener Innos' versteckt sich nicht. Geh und hole deine Robe.
	ADDON_NOARMOR_BDT			= "SVM_6_ADDON_ADDON_NOARMOR_BDT";		//Du l�ufst rum wie ein Buddler. Zieh dir erst mal was an.

	ADDON_DIEBANDIT				= "SVM_6_ADDON_DIEBANDIT";				//Du legst dich mit dem Falschen an, BANDIT!
	ADDON_DIRTYPIRATE			= "SVM_6_ADDON_DIRTYPIRATE";			//Zur�ck auf's Meer, PIRAT!

	RELMINE01			= "SVM_6_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_6_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_6_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_6_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_6_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_6_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_6_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_6_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_6_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_6_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_6_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_6_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_6_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_6_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_6_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_6_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_6_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_6_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_6_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_6_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_6_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_6_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_6_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_6_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_6_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_6_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_6_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_6_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_6_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_6_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_6_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_6_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_6_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_6_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_6_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_6_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_6_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_6_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_6_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_6_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_6_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_6_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_6_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_6_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_6_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_6_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_6_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_6_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_6_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_6_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_6_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_6_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_6_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_6_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_6_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_6_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_6_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_7 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_7_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_7_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_7_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_7_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_7_Weather"						;//Schei�wetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_7_IGetYouStill"				;//DU schon wieder!
	DieEnemy					=	"SVM_7_DieEnemy"					;//Ich mach dich fertig!
	DieMonster					=	"SVM_7_DieMonster"					;//Schon wieder eins von diesen Biestern!
	DirtyThief					=	"SVM_7_DirtyThief"					;//Du mieser kleiner Dieb!
	HandsOff					=	"SVM_7_HandsOff"					;//Nimm deine Finger weg da!
	SheepKiller					=	"SVM_7_SheepKiller"					;//Hey! Lass unsere Schafe in Ruhe!
	SheepKillerMonster			=	"SVM_7_SheepKillerMonster"			;//Das Biest frisst unsere Schafe!
	YouMurderer					=	"SVM_7_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_7_DieStupidBeast"				;//Was will DAS Vieh denn hier?
	YouDareHitMe				=	"SVM_7_YouDareHitMe"				;//Jetzt kannst du was erleben!
	YouAskedForIt				=	"SVM_7_YouAskedForIt"				;//Du hast es nicht anders gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_7_ThenIBeatYouOutOfHere"		;//Wer nicht h�ren will, muss f�hlen.
	WhatDidYouDoInThere			=	"SVM_7_WhatDidYouDoInThere"			;//Was wolltet du da drin, he!?
	WillYouStopFighting			=	"SVM_7_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_7_KillEnemy"					;//Stirb!
	EnemyKilled					=	"SVM_7_EnemyKilled"					;//So ein d�mlicher Mistkerl ...
	MonsterKilled				=	"SVM_7_MonsterKilled"				;//So, das war's mit dir, du Mistvieh!
	ThiefDown					=	"SVM_7_ThiefDown"					;//Lass in Zukunft die Finger von meinen Sachen, klar?
	rumfummlerDown				=	"SVM_7_rumfummlerDown"				;//Behalt in Zukunft deine Finger bei dir!
	SheepAttackerDown			=	"SVM_7_SheepAttackerDown"			;//Vergreif dich nie wieder an unseren Schafen!
	KillMurderer				=	"SVM_7_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_7_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_7_NeverHitMeAgain"				;//Versuch das nicht noch mal, B�rschchen!
	YouBetterShouldHaveListened	=	"SVM_7_YouBetterShouldHaveListened"	;//Lass dir das eine Lehre sein,
	GetUpAndBeGone				=	"SVM_7_GetUpAndBeGone"				;//Steh auf und mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_7_NeverEnterRoomAgain"			;//Ich will dich nie wieder da drinnen sehen, klar?
	ThereIsNoFightingHere		=	"SVM_7_ThereIsNoFightingHere"		;//Wenn hier einer Schl�ge verteilt, dann bin ich das, kapiert?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_7_Berzerk"						;//UUAAARRGGGHHH!!!
		RunAway						= 	"SVM_7_RunAway"						;//Schei�e! Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_7_Alarm"					;//ALARM!
	Guards						=	"SVM_7_Guards"					;//WACHE!
	Help						=	"SVM_7_Help"					;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_7_GoodMonsterKill"			;//(ruft zu) Ja! So muss man's den Biestern geben!
	GoodKill					= 	"SVM_7_GoodKill"				;//(ruft) Das hat die Sau verdient!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_7_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_7_RunCoward"				;//(ruft laut) Wir sprechen uns noch!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_7_GetOutOfHere"			;//Raus!
	WhyAreYouInHere				=	"SVM_7_WhyAreYouInHere"			;//Was hast du hier zu suchen?!
	YesGoOutOfHere				= 	"SVM_7_YesGoOutOfHere"			;//Hau blo� ab!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_7_WhatsThisSupposedToBe"	;//Was schleichst du denn da rum?
	YouDisturbedMySlumber		=	"SVM_7_YouDisturbedMySlumber"	;//(wacht auf) Was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_7_ITookYourGold"			;//Danke f�r das Gold, du Held!
	ShitNoGold					=	"SVM_7_ShitNoGold"				;//Du arme Wurst, hast ja nicht mal Gold dabei!
	ITakeYourWeapon				=	"SVM_7_ITakeYourWeapon"			;//Die Waffe nehm ich mal besser an mich!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_7_WhatAreYouDoing"			;//(warnt) Pass auf! Noch mal und ich verpass dir eine.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_7_LookingForTroubleAgain"	;//(agressiv) Willst du noch mal was aufs Maul?
																	 
	StopMagic					=	"SVM_7_StopMagic"				;//H�r auf mit dieser Magie-Schei�e!
	ISaidStopMagic				=	"SVM_7_ISaidStopMagic"			;//Willst du Schl�ge? H�r sofort damit auf!!!
	WeaponDown					=	"SVM_7_WeaponDown"				;//Steck die Waffe weg!
	ISaidWeaponDown				=	"SVM_7_ISaidWeaponDown"			;//Steck endlich die Schei�-Waffe weg!
	WiseMove					=	"SVM_7_WiseMove"				;//Kluges Kerlchen!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_7_NextTimeYoureInForIt"	;//(zu sich selbst) Das n�chste Mal werden wir ja sehen ...
	OhMyHead					=	"SVM_7_OhMyHead"				;//(zu sich selbst) Oh Mann, mein Kopf ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_7_TheresAFight"			;//(gierig) Ah, ein Kampf!
	OhMyGodItsAFight			=	"SVM_7_OhMyGodItsAFight"		;//(best�rzt) Mein Gott, ein Kampf!
	GoodVictory					=	"SVM_7_GoodVictory"				;//(b�se lachend) Dem hast du's gezeigt!
	NotBad						= 	"SVM_7_NotBad"					;//(anerkennend) Nicht schlecht ...
	OhMyGodHesDown				=	"SVM_7_OhMyGodHesDown"			;//(zu sich selbst) Mein Gott! Wie brutal ...
	CheerFriend01				=	"SVM_7_CheerFriend01"			;//Ja, gib's ihm!
	CheerFriend02				=	"SVM_7_CheerFriend02"			;//Zeig's ihm!
	CheerFriend03				=	"SVM_7_CheerFriend03"			;//Mach ihn fertig!
	Ooh01						=	"SVM_7_Ooh01"					;//Wehr dich!
	Ooh02						=	"SVM_7_Ooh02"					;//Schlag doch zur�ck!
	Ooh03						=	"SVM_7_Ooh03"					;//Uh! Das tat weh!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_7_WhatWasThat"				;//(zu sich selbst, wacht auf) Verdammt, Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_7_GetOutOfMyBed"				;//Such dir ein eigenes Bett!
	Awake						= "SVM_7_Awake"						;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_7_TOUGHGUY_ATTACKLOST"		;//Du hast ja 'nen ganz sch�nen Schlag drauf ... Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_7_TOUGHGUY_ATTACKWON"		;//(selbstgef�llig) Noch Fragen?
	TOUGHGUY_PLAYERATTACK		= "SVM_7_TOUGHGUY_PLAYERATTACK"		;//Da bist du ja wieder!
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_7_GOLD_1000"					;//1000 Goldst�cke.
	GOLD_950					= "SVM_7_GOLD_950"					;//950 Goldst�cke.
	GOLD_900					= "SVM_7_GOLD_900"					;//900 Goldst�cke.
	GOLD_850					= "SVM_7_GOLD_850"					;//850 Goldst�cke.
	GOLD_800					= "SVM_7_GOLD_800"					;//800 Goldst�cke.
	GOLD_750					= "SVM_7_GOLD_750"					;//750 Goldst�cke.
	GOLD_700					= "SVM_7_GOLD_700"					;//700 Goldst�cke.
	GOLD_650					= "SVM_7_GOLD_650"					;//650 Goldst�cke.
	GOLD_600					= "SVM_7_GOLD_600"					;//600 Goldst�cke.
	GOLD_550					= "SVM_7_GOLD_550"					;//550 Goldst�cke.
	GOLD_500					= "SVM_7_GOLD_500"					;//500 Goldst�cke.
	GOLD_450					= "SVM_7_GOLD_450"					;//450 Goldst�cke.
	GOLD_400					= "SVM_7_GOLD_400"					;//400 Goldst�cke.
	GOLD_350					= "SVM_7_GOLD_350"					;//350 Goldst�cke.
	GOLD_300					= "SVM_7_GOLD_300"					;//300 Goldst�cke.
	GOLD_250					= "SVM_7_GOLD_250"					;//250 Goldst�cke.
	GOLD_200					= "SVM_7_GOLD_200"					;//200 Goldst�cke.
	GOLD_150					= "SVM_7_GOLD_150"					;//150 Goldst�cke.
	GOLD_100					= "SVM_7_GOLD_100"					;//100 Goldst�cke.
	GOLD_90						= "SVM_7_GOLD_90"					;//90 Goldst�cke.
	GOLD_80						= "SVM_7_GOLD_80"					;//80 Goldst�cke.
	GOLD_70						= "SVM_7_GOLD_70"					;//70 Goldst�cke.
	GOLD_60						= "SVM_7_GOLD_60"					;//60 Goldst�cke.
	GOLD_50						= "SVM_7_GOLD_50"					;//50 Goldst�cke.
	GOLD_40						= "SVM_7_GOLD_40"					;//40 Goldst�cke.
	GOLD_30						= "SVM_7_GOLD_30"					;//30 Goldst�cke.
	GOLD_20						= "SVM_7_GOLD_20"					;//20 Goldst�cke.
	GOLD_10						= "SVM_7_GOLD_10"					;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_7_Smalltalk01"				;//... ist das wirklich wahr ...
	Smalltalk02					= "SVM_7_Smalltalk02"				;//... ich hab was Anderes geh�rt ...
	Smalltalk03					= "SVM_7_Smalltalk03"				;//... sag mir nicht, du hast das nicht gewusst ...
	Smalltalk04					= "SVM_7_Smalltalk04"				;//... man wei� gar nicht mehr, wem man noch glauben kann ...
	Smalltalk05					= "SVM_7_Smalltalk05"				;//... das ist doch alles nur Gerede ...
	Smalltalk06					= "SVM_7_Smalltalk06"				;//... meinst du, mir geht es besser ...
	Smalltalk07					= "SVM_7_Smalltalk07"				;//... ich wunder mich �ber gar nichts mehr ...
	Smalltalk08					= "SVM_7_Smalltalk08"				;//... das ist wirklich nicht mein Problem ...
	Smalltalk09					= "SVM_7_Smalltalk09"				;//... glaubst du wirklich daran ...
	Smalltalk10					= "SVM_7_Smalltalk10"				;//... von mir erf�hrt keiner was ...
	Smalltalk11					= "SVM_7_Smalltalk11"				;//... das war doch schon vorher klar ...
	Smalltalk12					= "SVM_7_Smalltalk12"				;//... er hat auf die falsche Leute geh�rt ...
	Smalltalk13					= "SVM_7_Smalltalk13"				;//... wenn er das nicht sieht, kann ich ihm auch nicht mehr helfen ...
	Smalltalk14					= "SVM_7_Smalltalk14"				;//... ich erz�hl dir doch nichts Neues ...
	Smalltalk15					= "SVM_7_Smalltalk15"				;//... von selbst ist er da nicht drauf gekommen ...
	Smalltalk16					= "SVM_7_Smalltalk16"				;//... das ist doch lange bekannt ...
	Smalltalk17					= "SVM_7_Smalltalk17"				;//... das ist ne schlimme Sache ...
	Smalltalk18					= "SVM_7_Smalltalk18"				;//... ich h�tte das anders gemacht ...
	Smalltalk19					= "SVM_7_Smalltalk19"				;//... ich bin ganz deiner Meinung ...
	Smalltalk20					= "SVM_7_Smalltalk20"				;//... wird sich das jemals �ndern ...
	Smalltalk21					= "SVM_7_Smalltalk21"				;//... das habe ich noch gar nicht gewusst ...
	Smalltalk22					= "SVM_7_Smalltalk22"				;//... da kannst du eh nichts dran �ndern ...
	Smalltalk23					= "SVM_7_Smalltalk23"				;//... das wundert mich nicht ...
	Smalltalk24					= "SVM_7_Smalltalk24"				;//... er musste es ja besser wissen ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                   
	Smalltalk25					= "SVM_7_Smalltalk25"				;//... es kommt nur auf die Kraft an, also komm mir nicht so ...
	Smalltalk26					= "SVM_7_Smalltalk26"				;//... er wei� ja nicht mal, wie er ein Schwert h�lt ...
	Smalltalk27					= "SVM_7_Smalltalk27"				;//... ja, das hat er wirklich behauptet ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                   
	Smalltalk28					= "SVM_7_Smalltalk28"				;//... jemand wird daf�r b��en m�ssen ...
	Smalltalk29					= "SVM_7_Smalltalk29"				;//... Innos leuchtet all denen, die seine Weisheit erkennen ...
	Smalltalk30					= "SVM_7_Smalltalk30"				;//... letztendlich wird die Gerechtigkeit siegen ...
	SmalltalkKhorataAnnaQuest01			= "SVM_7_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_7_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_7_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_7_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_7_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_7_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_7_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_7_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_7_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_7_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_7_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_7_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_7_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_7_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_7_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_7_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_7_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_7_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_7_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_7_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_7_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_7_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_7_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_7_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_7_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_7_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_7_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_7_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_7_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_7_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_7_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_7_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_7_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_7_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_7_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_7_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_7_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_7_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_7_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_7_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_7_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_7_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_7_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_7_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_7_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_7_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_7_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_7_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_7_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_7_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_7_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_7_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_7_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_7_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_7_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_7_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_7_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_7_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_7_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_7_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_7_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_7_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_7_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_7_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_7_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_7_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_7_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_7_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_7_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_7_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_7_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_7_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_7_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_7_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_7_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_7_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_7_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_7_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_7_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_7_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_7_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_7_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_7_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_7_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_7_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_7_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_7_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_7_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_7_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_7_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_7_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_7_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hoch f�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_7_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_7_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_7_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_7_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_7_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbei gehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_7_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlang gehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_7_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_7_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_7_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_7_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_7_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_7_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_7_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_7_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_7_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_7_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_7_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_7_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_7_Addon_WrongArmor";				//Warum die Verkleidung? So rede ich nicht mit dir.
	ADDON_WRONGARMOR_SLD		= "SVM_7_ADDON_WRONGARMOR_SLD";			//Wie l�ufst du denn hier rum? Trage gef�lligst unsere R�stung.
	ADDON_WRONGARMOR_MIL		= "SVM_7_ADDON_WRONGARMOR_MIL";			//Das ist ein Versto� gegen die Kleiderordnung der Armee. Zieh dich auf der Stelle um.
	ADDON_WRONGARMOR_KDF		= "SVM_7_ADDON_WRONGARMOR_KDF";			//Du solltest besser deine Robe tragen. Bis dahin werde ich schweigen und f�r dich beten.
	ADDON_NOARMOR_BDT			= "SVM_7_ADDON_ADDON_NOARMOR_BDT";		//Was willst du? Du geh�rst nicht zu uns. Du tr�gst ja nicht mal unsere R�stung.

	ADDON_DIEBANDIT				= "SVM_7_ADDON_DIEBANDIT";				//Stirb, du elender Bandit.
	ADDON_DIRTYPIRATE			= "SVM_7_ADDON_DIRTYPIRATE";			//Stirb, du elender Pirat.

	RELMINE01			= "SVM_7_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_7_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_7_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_7_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_7_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_7_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_7_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_7_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_7_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_7_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_7_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_7_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_7_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_7_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_7_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_7_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_7_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_7_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_7_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_7_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_7_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_7_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_7_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_7_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_7_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_7_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_7_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_7_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_7_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_7_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_7_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_7_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_7_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_7_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_7_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_7_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_7_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_7_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_7_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_7_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_7_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_7_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_7_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_7_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_7_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_7_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_7_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_7_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_7_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_7_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_7_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_7_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_7_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_7_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_7_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_7_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_7_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_8 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_8_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_8_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_8_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_8_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_8_Weather"					;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_8_IGetYouStill"				;//Jetzt krieg ich dich aber!
	DieEnemy					=	"SVM_8_DieEnemy"					;//Ich mach dich fertig!
	DieMonster					=	"SVM_8_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_8_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_8_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_8_SheepKiller"				;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_8_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_8_YouMurderer"				;//M�rder!
	DieStupidBeast				=	"SVM_8_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_8_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_8_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_8_ThenIBeatYouOutOfHere"		;//Du willst nicht gehen? Na gut!
	WhatDidYouDoInThere			=	"SVM_8_WhatDidYouDoInThere"		;//Was hattest du da drin zu suchen?
	WillYouStopFighting			=	"SVM_8_WillYouStopFighting"		;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_8_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_8_EnemyKilled"				;//Das hast du verdient, Mistkerl!
	MonsterKilled				=	"SVM_8_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_8_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_8_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_8_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	Berzerk						=	"SVM_8_Berzerk"						;//UUAAARRGGGHHH!!!
	KillMurderer				=	"SVM_8_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_8_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_8_NeverHitMeAgain"			;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_8_YouBetterShouldHaveListened";//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_8_GetUpAndBeGone"				;//Und jetzt sieh zu, dass du hier verschwindest!
	NeverEnterRoomAgain			=	"SVM_8_NeverEnterRoomAgain"		;//Und lass dich ja nie wieder da drinnen erwischen!
	ThereIsNoFightingHere		=	"SVM_8_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_8_RunAway"					;//Ach du Schei�e!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_8_Alarm"					;//ALARM!
	Guards						=	"SVM_8_Guards"					;//WACHE!
	Help						=	"SVM_8_Help"					;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_8_GoodMonsterKill"		;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_8_GoodKill"				;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_8_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_8_RunCoward"				;//(ruft laut) Ja! Renn, so schnell du kannst!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_8_GetOutOfHere"			;//Raus hier!
	WhyAreYouInHere				=	"SVM_8_WhyAreYouInHere"		;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_8_YesGoOutOfHere"			;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_8_WhatsThisSupposedToBe"	;//Hey du! Was schleichst du da rum?
	YouDisturbedMySlumber		=	"SVM_8_YouDisturbedMySlumber"	;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_8_ITookYourGold"			;//Danke f�r das Gold, du Held!
	ShitNoGold					=	"SVM_8_ShitNoGold"				;//Du arme Wurst, hast ja nicht mal Gold dabei!
	ITakeYourWeapon				=	"SVM_8_ITakeYourWeapon"		;//Die Waffe nehm ich mal besser an mich!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_8_WhatAreYouDoing"		;//(warnt) Pass auf! Noch mal und ich verpass dir eine.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_8_LookingForTroubleAgain"	;//Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_8_StopMagic"				;//H�r auf mit dieser Magie-Schei�e!
	ISaidStopMagic				=	"SVM_8_ISaidStopMagic"			;//Willst du Schl�ge? H�r sofort auf damit!!!
	WeaponDown					=	"SVM_8_WeaponDown"				;//Steck die Waffe weg!
	ISaidWeaponDown				=	"SVM_8_ISaidWeaponDown"		;//Steck endlich die Schei�waffe weg!
	WiseMove					=	"SVM_8_WiseMove"				;//Kluges Kerlchen!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_8_NextTimeYoureInForIt"	;//(zu sich selbst) Das n�chste Mal werden wir ja sehen ...
	OhMyHead					=	"SVM_8_OhMyHead"				;//(zu sich selbst) Oh Mann, mein Kopf ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_8_TheresAFight"			;//(gierig) Ah, ein Kampf!
	OhMyGodItsAFight			=	"SVM_8_OhMyGodItsAFight"		;//(best�rzt) Mein Gott, ein Kampf!
	GoodVictory					=	"SVM_8_GoodVictory"			;//(b�se lachend) Dem hast du's gezeigt!
	NotBad						= 	"SVM_8_NotBad"					;//(anerkennend) Nicht schlecht ...
	OhMyGodHesDown				=	"SVM_8_OhMyGodHesDown"			;//(zu sich selbst) Mein Gott! Wie brutal ...
	CheerFriend01				=	"SVM_8_CheerFriend01"			;//Schlag zu!
	CheerFriend02				=	"SVM_8_CheerFriend02"			;//Gib alles!
	CheerFriend03				=	"SVM_8_CheerFriend03"			;//Zeig's ihm!
	Ooh01						=	"SVM_8_Ooh01"					;//Bleib dran!
	Ooh02						=	"SVM_8_Ooh02"					;//Vorsicht!
	Ooh03						=	"SVM_8_Ooh03"					;//Oh! Der hat gesessen!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_8_WhatWasThat"				;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_8_GetOutOfMyBed"			;//Raus aus meinem Bett!
	Awake						= "SVM_8_Awake"					;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_8_TOUGHGUY_ATTACKLOST"		;//Okay, okay, du bist der Bessere von uns beiden! Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_8_TOUGHGUY_ATTACKWON"		;//(selbstgef�llig) Ich nehme an, du hast mittlerweile begriffen, wer von uns beiden der St�rkere ist ... was willst du?
	TOUGHGUY_PLAYERATTACK		= "SVM_8_TOUGHGUY_PLAYERATTACK"	;//Ich dachte, du wolltest dich mit mir anlegen. Hast du's dir anders �berlegt? Willst doch lieber REDEN, was? (lacht) Ja klar.
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_8_GOLD_1000"				;//1000 Goldst�cke.
	GOLD_950					= "SVM_8_GOLD_950"					;//950 Goldst�cke.
	GOLD_900					= "SVM_8_GOLD_900"					;//900 Goldst�cke.
	GOLD_850					= "SVM_8_GOLD_850"					;//850 Goldst�cke.
	GOLD_800					= "SVM_8_GOLD_800"					;//800 Goldst�cke.
	GOLD_750					= "SVM_8_GOLD_750"					;//750 Goldst�cke.
	GOLD_700					= "SVM_8_GOLD_700"					;//700 Goldst�cke.
	GOLD_650					= "SVM_8_GOLD_650"					;//650 Goldst�cke.
	GOLD_600					= "SVM_8_GOLD_600"					;//600 Goldst�cke.
	GOLD_550					= "SVM_8_GOLD_550"					;//550 Goldst�cke.
	GOLD_500					= "SVM_8_GOLD_500"					;//500 Goldst�cke.
	GOLD_450					= "SVM_8_GOLD_450"					;//450 Goldst�cke.
	GOLD_400					= "SVM_8_GOLD_400"					;//400 Goldst�cke.
	GOLD_350					= "SVM_8_GOLD_350"					;//350 Goldst�cke.
	GOLD_300					= "SVM_8_GOLD_300"					;//300 Goldst�cke.
	GOLD_250					= "SVM_8_GOLD_250"					;//250 Goldst�cke.
	GOLD_200					= "SVM_8_GOLD_200"					;//200 Goldst�cke.
	GOLD_150					= "SVM_8_GOLD_150"					;//150 Goldst�cke.
	GOLD_100					= "SVM_8_GOLD_100"					;//100 Goldst�cke.
	GOLD_90						= "SVM_8_GOLD_90"					;//90 Goldst�cke.
	GOLD_80						= "SVM_8_GOLD_80"					;//80 Goldst�cke.
	GOLD_70						= "SVM_8_GOLD_70"					;//70 Goldst�cke.
	GOLD_60						= "SVM_8_GOLD_60"					;//60 Goldst�cke.
	GOLD_50						= "SVM_8_GOLD_50"					;//50 Goldst�cke.
	GOLD_40						= "SVM_8_GOLD_40"					;//40 Goldst�cke.
	GOLD_30						= "SVM_8_GOLD_30"					;//30 Goldst�cke.
	GOLD_20						= "SVM_8_GOLD_20"					;//20 Goldst�cke.
	GOLD_10						= "SVM_8_GOLD_10"					;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_8_Smalltalk01"				;//... ist das wirklich wahr ...
	Smalltalk02					= "SVM_8_Smalltalk02"				;//... ich hab was anderes geh�rt ...
	Smalltalk03					= "SVM_8_Smalltalk03"				;//... sag mir nicht, du hast das nicht gewusst ...
	Smalltalk04					= "SVM_8_Smalltalk04"				;//... man wei� gar nicht mehr, wem man noch glauben kann ...
	Smalltalk05					= "SVM_8_Smalltalk05"				;//... das ist doch alles nur Gerede ...
	Smalltalk06					= "SVM_8_Smalltalk06"				;//... meinst du, mir geht es besser ...
	Smalltalk07					= "SVM_8_Smalltalk07"				;//... ich wunder mich �ber gar nichts mehr ...
	Smalltalk08					= "SVM_8_Smalltalk08"				;//... das ist wirklich nicht mein Problem ...
	Smalltalk09					= "SVM_8_Smalltalk09"				;//... glaubst du wirklich daran ...
	Smalltalk10					= "SVM_8_Smalltalk10"				;//... von mir erf�hrt keiner was ...
	Smalltalk11					= "SVM_8_Smalltalk11"				;//... das war doch schon vorher klar ...
	Smalltalk12					= "SVM_8_Smalltalk12"				;//... er hat auf die falschen Leute geh�rt ...
	Smalltalk13					= "SVM_8_Smalltalk13"				;//... wenn er das nicht sieht, kann ich ihm auch nicht mehr helfen ...
	Smalltalk14					= "SVM_8_Smalltalk14"				;//... ich erz�hl dir doch nichts Neues ...
	Smalltalk15					= "SVM_8_Smalltalk15"				;//... von selbst ist er nicht darauf gekommen ...
	Smalltalk16					= "SVM_8_Smalltalk16"				;//... das ist doch lange bekannt ...
	Smalltalk17					= "SVM_8_Smalltalk17"				;//... das ist 'ne schlimme Sache ...
	Smalltalk18					= "SVM_8_Smalltalk18"				;//... ich h�tte das anders gemacht ...
	Smalltalk19					= "SVM_8_Smalltalk19"				;//... ich bin ganz deiner Meinung ...
	Smalltalk20					= "SVM_8_Smalltalk20"				;//... wird sich das jemals �ndern ...
	Smalltalk21					= "SVM_8_Smalltalk21"				;//... das habe ich noch gar nicht gewusst ...
	Smalltalk22					= "SVM_8_Smalltalk22"				;//... da kannst du eh nichts dran �ndern ...
	Smalltalk23					= "SVM_8_Smalltalk23"				;//... das wundert mich nicht ...
	Smalltalk24					= "SVM_8_Smalltalk24"				;//... er musste es ja besser wissen ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                  
	Smalltalk25					= "SVM_8_Smalltalk25"				;//... es kommt nur auf die Kraft an, also komm mir nicht so ...
	Smalltalk26					= "SVM_8_Smalltalk26"				;//... der wei� ja nicht mal, wie man ein Schwert h�lt ...
	Smalltalk27					= "SVM_8_Smalltalk27"				;//... ja, das hat er wirklich behauptet ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                  
	Smalltalk28					= "SVM_8_Smalltalk28"				;//... jemand wird daf�r b��en m�ssen ...
	Smalltalk29					= "SVM_8_Smalltalk29"				;//... Innos leuchtet all denen, die seine Weisheit erkennen ...
	Smalltalk30					= "SVM_8_Smalltalk30"				;//... letztendlich wird die Gerechtigkeit siegen ...
	SmalltalkKhorataAnnaQuest01			= "SVM_8_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_8_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_8_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_8_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_8_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_8_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_8_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_8_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_8_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_8_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_8_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_8_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_8_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_8_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_8_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_8_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_8_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_8_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_8_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_8_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_8_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_8_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_8_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_8_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_8_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_8_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_8_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_8_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_8_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_8_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_8_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_8_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_8_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_8_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_8_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_8_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_8_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_8_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_8_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_8_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_8_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_8_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_8_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_8_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_8_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_8_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_8_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_8_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_8_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_8_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_8_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_8_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_8_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_8_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_8_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_8_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_8_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_8_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_8_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_8_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_8_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_8_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_8_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_8_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_8_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_8_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_8_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_8_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_8_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_8_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_8_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_8_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_8_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_8_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_8_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_8_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_8_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_8_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_8_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_8_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_8_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_8_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_8_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_8_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_8_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_8_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_8_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_8_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_8_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_8_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_8_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_8_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_8_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_8_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_8_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_8_TEMPEL_2_MARKT"			;//Wenn du vor dem Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_8_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbeigehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_8_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlanggehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_8_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_8_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_8_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_8_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_8_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_8_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_8_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_8_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_8_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_8_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_8_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_8_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_8_Addon_WrongArmor";				//Ich trau dir nicht. Irgendetwas stimmt nicht mit dir oder mit deiner Kleidung.
	ADDON_WRONGARMOR_SLD		= "SVM_8_ADDON_WRONGARMOR_SLD";			//So wie du aussiehst, hast du wohl woanders angeheuert? Dann will ich nichts mit dir zu tun haben.
	ADDON_WRONGARMOR_MIL		= "SVM_8_ADDON_WRONGARMOR_MIL";			//Wir m�ssen Pr�senz zeigen. Also geh und hol deine R�stung.
	ADDON_WRONGARMOR_KDF		= "SVM_8_ADDON_WRONGARMOR_KDF";			//Innos will, dass wir seine Robe mit Stolz tragen. Geh und ziehe dich um.
	ADDON_NOARMOR_BDT			= "SVM_8_ADDON_ADDON_NOARMOR_BDT";		//Mit Buddlern rede ich nicht. Du hast ja nicht mal 'ne R�stung.

	ADDON_DIEBANDIT				= "SVM_8_ADDON_DIEBANDIT";				//Du dreckiger Bandit!
	ADDON_DIRTYPIRATE			= "SVM_8_ADDON_DIRTYPIRATE";			//PIRATEN!

	RELMINE01			= "SVM_8_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_8_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_8_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_8_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_8_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_8_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_8_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_8_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_8_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_8_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_8_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_8_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_8_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_8_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_8_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_8_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_8_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_8_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_8_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_8_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_8_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_8_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_8_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_8_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_8_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_8_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_8_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_8_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_8_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_8_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_8_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_8_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_8_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_8_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_8_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_8_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_8_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_8_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_8_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_8_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_8_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_8_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_8_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_8_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_8_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_8_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_8_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_8_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_8_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_8_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_8_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_8_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_8_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_8_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_8_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_8_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_8_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_9 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_9_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_9_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_9_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_9_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_9_Weather"						;//Sauwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_9_IGetYouStill"				;//Jetzt krieg' ich dich!
	DieEnemy					=	"SVM_9_DieEnemy"					;//Du w�rst besser nicht hierher gekommen!
	DieMonster					=	"SVM_9_DieMonster"					;//Komm her, Mistvieh!
	Addon_DieMonster			=	"SVM_9_Addon_DieMonster"			;//Schon wieder eins von diesen Biestern!
	Addon_DieMonster2			=	"SVM_9_Addon_DieMonster2"			;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_9_DirtyThief"					;//Dreckiger Dieb! Na warte!
	HandsOff					=	"SVM_9_HandsOff"					;//Nimm deine Pfoten da weg!
	SheepKiller					=	"SVM_9_SheepKiller"				;//Lass unsere Schafe in Ruhe!
	Berzerk						=	"SVM_9_Berzerk"						;//UUAAARRGGGHHH!!!
	SheepKillerMonster			=	"SVM_9_SheepKillerMonster"			;//Geh weg von unseren Schafen, du Mistvieh!
	YouMurderer					=	"SVM_9_YouMurderer"				;//M�rder!
	DieStupidBeast				=	"SVM_9_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_9_YouDareHitMe"				;//Das wirst du bereuen!
	YouAskedForIt				=	"SVM_9_YouAskedForIt"				;//Ich hatte dich gewarnt!
	ThenIBeatYouOutOfHere		=	"SVM_9_ThenIBeatYouOutOfHere"		;//Ich hab gesagt RAUS!
	WhatDidYouDoInThere			=	"SVM_9_WhatDidYouDoInThere"		;//Hey! Was wolltest du da drin?
	WillYouStopFighting			=	"SVM_9_WillYouStopFighting"		;//Aufh�ren! Sofort!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_9_KillEnemy"					;//Jetzt spie� ich dich auf, Mistkerl!
	EnemyKilled					=	"SVM_9_EnemyKilled"					;//Das war's f�r dich...
	//MonsterKilled				=	"SVM_9_MonsterKilled"				;//Ich steh' auf diese ganze Schei�e!
	Addon_MonsterKilled			=	"SVM_9_Addon_MonsterKilled"			;//Das war's mit dir, Mistvieh!
	Addon_MonsterKilled2		=	"SVM_9_Addon_MonsterKilled2"		;//EIN Mistvieh weniger!
	ThiefDown					=	"SVM_9_ThiefDown"					;//Ich warne dich! Versuch das nicht noch mal, du dreckiger Dieb!
	rumfummlerDown				=	"SVM_9_rumfummlerDown"				;//Vergreif dich nie wieder an Sachen, die dir nicht geh�ren!
	SheepAttackerDown			=	"SVM_9_SheepAttackerDown"			;//Und halt dich in Zukunft von unseren Schafen fern!
	KillMurderer				=	"SVM_9_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_9_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_9_NeverHitMeAgain"				;//Wag es ja nie wieder, mich anzugreifen!
	YouBetterShouldHaveListened	=	"SVM_9_YouBetterShouldHaveListened"	;//Ich hatte dich gewarnt!
	GetUpAndBeGone				=	"SVM_9_GetUpAndBeGone"					;//Und jetzt raus mit dir!
	NeverEnterRoomAgain			=	"SVM_9_NeverEnterRoomAgain"			;//Ich will dich nie wieder da drin sehen, klar?
	ThereIsNoFightingHere		=	"SVM_9_ThereIsNoFightingHere"			;//Hier wird nicht gek�mpft, merk dir das!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_9_RunAway"						;//Ich hau ab!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_9_Alarm"					;//ALARM!
	Guards						=	"SVM_9_Guards"					;//WACHE!
	Help						=	"SVM_9_Help"					;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_9_GoodMonsterKill"		;//(ruft zu) Gib den Viechern ordentlich saures!
	GoodKill					= 	"SVM_9_GoodKill"				;//(ruft) Ja, gib's dem Mistkerl!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_9_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_9_RunCoward"				;//(ruft laut) Ich krieg dich noch!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_9_GetOutOfHere"			;//Raus hier!
	WhyAreYouInHere				=	"SVM_9_WhyAreYouInHere"		;//Du hast hier nichts zu suchen!
	YesGoOutOfHere				= 	"SVM_9_YesGoOutOfHere"			;//Ja, raus mit dir!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_9_WhatsThisSupposedToBe"	;//Was soll das denn werden? Warum schleichst du hier rum?
	YouDisturbedMySlumber		=	"SVM_9_YouDisturbedMySlumber"	;//(wacht auf) Verdammt, was willst du?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_9_ITookYourGold"			;//Na, immerhin hast du wenigstens Gold dabei!
	ShitNoGold					=	"SVM_9_ShitNoGold"				;//Noch nicht mal Gold - hmpf.
	ITakeYourWeapon				=	"SVM_9_ITakeYourWeapon"		;//Deine Waffe nehme ich mal mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_9_WhatAreYouDoing"		;//(warnt) Junge! Mach das ja nicht noch mal!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_9_LookingForTroubleAgain"	;//(agressiv) Brauchst du schon wieder Schl�ge?
	StopMagic					=	"SVM_9_StopMagic"				;//Weg mit der Magie!
	ISaidStopMagic				=	"SVM_9_ISaidStopMagic"			;//Letzte Warnung! Weg mit der Magie!
	WeaponDown					=	"SVM_9_WeaponDown"				;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_9_ISaidWeaponDown"		;//Weg damit oder ich verpass dir eine!
	WiseMove					=	"SVM_9_WiseMove"				;//Du bist ja gar nicht so dumm wie du aussiehst!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_9_NextTimeYoureInForIt"	;//(zu sich selbst) Versuch das ja nicht noch mal ...
	OhMyHead					=	"SVM_9_OhMyHead"				;//(zu sich selbst) Oh! Mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_9_TheresAFight"			;//(gierig) Jetzt wird's lustig ...
	OhMyGodItsAFight			=	"SVM_9_OhMyGodItsAFight"		;//(best�rzt) Du meine G�te ...
	GoodVictory					=	"SVM_9_GoodVictory"			;//(b�se lachend) Das wird ihm eine Lehre sein ...
	NotBad						= 	"SVM_9_NotBad"					;//(anerkennend) Der hat gesessen!
	OhMyGodHesDown				=	"SVM_9_OhMyGodHesDown"			;//(zu sich selbst) Brutaler Mistkerl!
	CheerFriend01				=	"SVM_9_CheerFriend01"			;//Hau drauf!
	CheerFriend02				=	"SVM_9_CheerFriend02"			;//H�r nicht auf!
	CheerFriend03				=	"SVM_9_CheerFriend03"			;//Mach ihn fertig!
	Ooh01						=	"SVM_9_Ooh01"					;//Pass auf!
	Ooh02						=	"SVM_9_Ooh02"					;//Parier doch!
	Ooh03						=	"SVM_9_Ooh03"					;//Schei�e, das tat weh!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_9_WhatWasThat"				;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_9_GetOutOfMyBed"			;//Das ist mein Bett!
	Awake						= "SVM_9_Awake"					;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_9_TOUGHGUY_ATTACKLOST"		;//Gut - du hast gewonnen. Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_9_TOUGHGUY_ATTACKWON"		;//(selbstgef�llig) Ich denke, dir ist jetzt klar, wen du vor dir hast. Was willst du?
	TOUGHGUY_PLAYERATTACK		= "SVM_9_TOUGHGUY_PLAYERATTACK"	;//Du schon wieder? Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_9_GOLD_1000"				;//1000 Goldst�cke.
	GOLD_950					= "SVM_9_GOLD_950"					;//950 Goldst�cke.
	GOLD_900					= "SVM_9_GOLD_900"					;//900 Goldst�cke.
	GOLD_850					= "SVM_9_GOLD_850"					;//850 Goldst�cke.
	GOLD_800					= "SVM_9_GOLD_800"					;//800 Goldst�cke.
	GOLD_750					= "SVM_9_GOLD_750"					;//750 Goldst�cke.
	GOLD_700					= "SVM_9_GOLD_700"					;//700 Goldst�cke.
	GOLD_650					= "SVM_9_GOLD_650"					;//650 Goldst�cke.
	GOLD_600					= "SVM_9_GOLD_600"					;//600 Goldst�cke.
	GOLD_550					= "SVM_9_GOLD_550"					;//550 Goldst�cke.
	GOLD_500					= "SVM_9_GOLD_500"					;//500 Goldst�cke.
	GOLD_450					= "SVM_9_GOLD_450"					;//450 Goldst�cke.
	GOLD_400					= "SVM_9_GOLD_400"					;//400 Goldst�cke.
	GOLD_350					= "SVM_9_GOLD_350"					;//350 Goldst�cke.
	GOLD_300					= "SVM_9_GOLD_300"					;//300 Goldst�cke.
	GOLD_250					= "SVM_9_GOLD_250"					;//250 Goldst�cke.
	GOLD_200					= "SVM_9_GOLD_200"					;//200 Goldst�cke.
	GOLD_150					= "SVM_9_GOLD_150"					;//150 Goldst�cke.
	GOLD_100					= "SVM_9_GOLD_100"					;//100 Goldst�cke.
	GOLD_90						= "SVM_9_GOLD_90"					;//90 Goldst�cke.
	GOLD_80						= "SVM_9_GOLD_80"					;//80 Goldst�cke.
	GOLD_70						= "SVM_9_GOLD_70"					;//70 Goldst�cke.
	GOLD_60						= "SVM_9_GOLD_60"					;//60 Goldst�cke.
	GOLD_50						= "SVM_9_GOLD_50"					;//50 Goldst�cke.
	GOLD_40						= "SVM_9_GOLD_40"					;//40 Goldst�cke.
	GOLD_30						= "SVM_9_GOLD_30"					;//30 Goldst�cke.
	GOLD_20						= "SVM_9_GOLD_20"					;//20 Goldst�cke.
	GOLD_10						= "SVM_9_GOLD_10"					;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_9_Smalltalk01"				;//... ich kann das nicht glauben ...
	Smalltalk02					= "SVM_9_Smalltalk02"				;//... ich w�r mir da nicht so sicher ...
	Smalltalk03					= "SVM_9_Smalltalk03"				;//... das hat er doch vorher gewusst ...
	Smalltalk04					= "SVM_9_Smalltalk04"				;//... ich wei� langsam nicht mehr, was ich glauben soll ...
	Smalltalk05					= "SVM_9_Smalltalk05"				;//... ich wei� gar nicht, warum er sich so aufregt ...
	Smalltalk06					= "SVM_9_Smalltalk06"				;//... noch mehr �rger kann ich nicht gebrauchen ...
	Smalltalk07					= "SVM_9_Smalltalk07"				;//... ich hab so einiges geh�rt ...
	Smalltalk08					= "SVM_9_Smalltalk08"				;//... davon lass ich lieber die Finger ...
	Smalltalk09					= "SVM_9_Smalltalk09"				;//... man darf halt nicht alles glauben, was man h�rt ...
	Smalltalk10					= "SVM_9_Smalltalk10"				;//... von mir hat er das nicht ...
	Smalltalk11					= "SVM_9_Smalltalk11"				;//... ich habe mir das schon gedacht ...
	Smalltalk12					= "SVM_9_Smalltalk12"				;//... meine Meinung will ja keiner h�ren ...
	Smalltalk13					= "SVM_9_Smalltalk13"				;//... das hat er wirklich nicht verdient ...
	Smalltalk14					= "SVM_9_Smalltalk14"				;//... sag nicht, das hast du nicht gewusst ...
	Smalltalk15					= "SVM_9_Smalltalk15"				;//... das war doch klar ...
	Smalltalk16					= "SVM_9_Smalltalk16"				;//... wo hast du das denn schon wieder her ...
	Smalltalk17					= "SVM_9_Smalltalk17"				;//... das kann ja nicht ewig so weitergehen ...
	Smalltalk18					= "SVM_9_Smalltalk18"				;//... ich hab da meine eigene Meinung ...
	Smalltalk19					= "SVM_9_Smalltalk19"				;//... es war genau so, wie du sagst ...
	Smalltalk20					= "SVM_9_Smalltalk20"				;//... ich glaub nicht, dass sich daran was �ndert ...
	Smalltalk21					= "SVM_9_Smalltalk21"				;//... das h�re ich zum ersten Mal ...
	Smalltalk22					= "SVM_9_Smalltalk22"				;//... wir k�nnen nur abwarten ...
	Smalltalk23					= "SVM_9_Smalltalk23"				;//... die Probleme habe ich kommen sehen ...
	Smalltalk24					= "SVM_9_Smalltalk24"				;//... warum h�rt eigentlich keiner auf mich ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_9_Smalltalk25"				;//... der ist gerannt, als wenn Beliar selbst hinter ihm her w�r ...
	Smalltalk26					= "SVM_9_Smalltalk26"				;//... wir haben ihn nat�rlich doch noch gekriegt ...
	Smalltalk27					= "SVM_9_Smalltalk27"				;//... da muss man mal ganz kr�ftig dazwischenhauen ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_9_Smalltalk28"				;//... einige wissen gar nicht, wie sehr sie sich vers�ndigen ...
	Smalltalk29					= "SVM_9_Smalltalk29"				;//... denn so ist es Innos' Wille ...
	Smalltalk30					= "SVM_9_Smalltalk30"				;//... seine Taten waren gerecht ...
	SmalltalkKhorataAnnaQuest01			= "SVM_9_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_9_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_9_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_9_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_9_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_9_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_9_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_9_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_9_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_9_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_9_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_9_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_9_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_9_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_9_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_9_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_9_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_9_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_9_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_9_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_9_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_9_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_9_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_9_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_9_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_9_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_9_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_9_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_9_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_9_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_9_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_9_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_9_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_9_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_9_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_9_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_9_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_9_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_9_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_9_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_9_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_9_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_9_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_9_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_9_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_9_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_9_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_9_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_9_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_9_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_9_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_9_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_9_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_9_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_9_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_9_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_9_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_9_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_9_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_9_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_9_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_9_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_9_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_9_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_9_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_9_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_9_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_9_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_9_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_9_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_9_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_9_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_9_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_9_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_9_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_9_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_9_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_9_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...

	// D�monenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_9_SmalltalkDMRBelagerungAbdi01"; //... ehrlich gesagt tut's mir um die beiden nicht Leid ...
	SmalltalkDMRBelagerungAbdi02			= "SVM_9_SmalltalkDMRBelagerungAbdi02"; //... w�sste zu gerne, wer hier im Lager die Leute abschlachtet ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_9_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_9_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_9_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_9_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_9_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_9_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_9_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_9_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_9_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_9_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_9_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_9_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_9_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_9_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_9_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_9_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_9_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_9_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_9_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbeigehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_9_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlanggehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_9_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_9_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_9_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_9_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_9_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_9_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, und dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_9_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_9_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_9_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_9_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_9_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_9_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_9_Addon_WrongArmor";				//Was soll der Aufzug? Zieh dir was an, was zu dir passt.
	ADDON_WRONGARMOR_SLD		= "SVM_9_ADDON_WRONGARMOR_SLD";			//Wie rennst du denn rum? Zieh dir gef�lligst deine R�stung an.
	ADDON_WRONGARMOR_MIL		= "SVM_9_ADDON_WRONGARMOR_MIL";			//Du arbeitest f�r den K�nig, also tr�gst du auch gef�lligst seine R�stung. Zieh dich um.
	ADDON_WRONGARMOR_KDF		= "SVM_9_ADDON_WRONGARMOR_KDF";			//Deine Kleidung ist unserem Orden nicht angemessen. Zieh dich um.
	ADDON_NOARMOR_BDT			= "SVM_9_ADDON_ADDON_NOARMOR_BDT";		//Hast ja noch nicht mal 'ne R�stung. Verschwinde!

	ADDON_DIEBANDIT				= "SVM_9_ADDON_DIEBANDIT";				//Jetzt bist du dran, Bandit!
	ADDON_DIRTYPIRATE			= "SVM_9_ADDON_DIRTYPIRATE";			//Du h�ttest hier nicht auftauchen sollen, Pirat.

	RELMINE01			= "SVM_9_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_9_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_9_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_9_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_9_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_9_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_9_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_9_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_9_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_9_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_9_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_9_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_9_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_9_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_9_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_9_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_9_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_9_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_9_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_9_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_9_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_9_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_9_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_9_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_9_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_9_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_9_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_9_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_9_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_9_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_9_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_9_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_9_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_9_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_9_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_9_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_9_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_9_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_9_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_9_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_9_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_9_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_9_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_9_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_9_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_9_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_9_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_9_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_9_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_9_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_9_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_9_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_9_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_9_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_9_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_9_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_9_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_10 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_10_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_10_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_10_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_10_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_10_Weather"						;//Schei�wetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_10_IGetYouStill"				;//DU schon wieder!
	DieEnemy					=	"SVM_10_DieEnemy"					;//Ich mach dich fertig!
	DieMonster					=	"SVM_10_DieMonster"					;//Schon wieder eins von diesen Biestern!
	DirtyThief					=	"SVM_10_DirtyThief"					;//Du mieser kleiner Dieb!
	HandsOff					=	"SVM_10_HandsOff"					;//Nimm die Finger weg da!
	SheepKiller					=	"SVM_10_SheepKiller"					;//Hey! Lass unsere Schafe in Ruhe!
	SheepKillerMonster			=	"SVM_10_SheepKillerMonster"			;//Das Biest frisst unsere Schafe!
	YouMurderer					=	"SVM_10_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_10_DieStupidBeast"				;//Was will DAS Vieh denn hier?
	YouDareHitMe				=	"SVM_10_YouDareHitMe"				;//Jetzt kannst du was erleben!
	YouAskedForIt				=	"SVM_10_YouAskedForIt"				;//Du hast es nicht anders gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_10_ThenIBeatYouOutOfHere"		;//Wer nicht h�ren will, muss f�hlen.
	WhatDidYouDoInThere			=	"SVM_10_WhatDidYouDoInThere"			;//Was wolltet du da drin, he!?
	WillYouStopFighting			=	"SVM_10_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_10_KillEnemy"					;//Stirb!
	EnemyKilled					=	"SVM_10_EnemyKilled"					;//So ein d�mlicher Mistkerl ...
	MonsterKilled				=	"SVM_10_MonsterKilled"				;//So, das war's mit dir, du Mistvieh!
	ThiefDown					=	"SVM_10_ThiefDown"					;//Lass in Zukunft die Finger von meinen Sachen, klar?
	rumfummlerDown				=	"SVM_10_rumfummlerDown"				;//Behalt in Zukunft deine Finger bei dir!
	SheepAttackerDown			=	"SVM_10_SheepAttackerDown"			;//Vergreif dich nie wieder an unseren Schafen!
	KillMurderer				=	"SVM_10_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_10_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_10_NeverHitMeAgain"				;//Versuch das nicht noch mal, B�rschchen!
	YouBetterShouldHaveListened	=	"SVM_10_YouBetterShouldHaveListened"	;//Lass dir das eine Lehre sein.
	GetUpAndBeGone				=	"SVM_10_GetUpAndBeGone"				;//Steh auf und mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_10_NeverEnterRoomAgain"			;//Ich will dich nie wieder da drinnen sehen, klar?
	ThereIsNoFightingHere		=	"SVM_10_ThereIsNoFightingHere"		;//Wenn hier einer Schl�ge verteilt, dann bin ich das, kapiert?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_10_RunAway"						;//Schei�e! Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_10_Alarm"					;//ALARM!
	Guards						=	"SVM_10_Guards"					;//WACHE!
	Help						=	"SVM_10_Help"					;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_10_GoodMonsterKill"			;//(ruft zu) Ja! So muss man's den Biestern geben!
	GoodKill					= 	"SVM_10_GoodKill"				;//(ruft) Das hat die Sau verdient!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_10_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_10_RunCoward"				;//(ruft laut) Wir sprechen uns noch!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_10_GetOutOfHere"			;//Raus!
	WhyAreYouInHere				=	"SVM_10_WhyAreYouInHere"			;//Was hast du hier zu suchen?!
	YesGoOutOfHere				= 	"SVM_10_YesGoOutOfHere"			;//Ja, hau ab!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_10_WhatsThisSupposedToBe"	;//Was schleichst du denn da rum?
	Berzerk						=	"SVM_10_Berzerk"						;//UUAAARRGGGHHH!!!
	YouDisturbedMySlumber		=	"SVM_10_YouDisturbedMySlumber"	;//(wacht auf) Was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_10_ITookYourGold"			;//Danke f�r das Gold, du Held!
	ShitNoGold					=	"SVM_10_ShitNoGold"				;//Du armes W�rstchen, hast ja nicht mal Gold dabei!
	ITakeYourWeapon				=	"SVM_10_ITakeYourWeapon"			;//Die Waffe nehm ich mal besser an mich!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_10_WhatAreYouDoing"			;//(warnt) Pass auf! Noch mal und ich verpass dir eine.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_10_LookingForTroubleAgain"	;//(agressiv) Willst du noch mal was aufs Maul?
																	 
	StopMagic					=	"SVM_10_StopMagic"				;//H�r auf mit dieser Magie-Schei�e!
	ISaidStopMagic				=	"SVM_10_ISaidStopMagic"			;//Willst du Schl�ge? H�r sofort damit auf!!!
	WeaponDown					=	"SVM_10_WeaponDown"				;//Steck die Waffe weg!
	ISaidWeaponDown				=	"SVM_10_ISaidWeaponDown"			;//Steck endlich die Schei�waffe weg!!
	WiseMove					=	"SVM_10_WiseMove"				;//Kluges Kerlchen!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_10_NextTimeYoureInForIt"	;//(zu sich selbst) Das n�chste Mal werden wir ja sehen ...
	OhMyHead					=	"SVM_10_OhMyHead"				;//(zu sich selbst) Oh Mann, mein Kopf ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_10_TheresAFight"			;//(gierig) Ah, ein Kampf!
	OhMyGodItsAFight			=	"SVM_10_OhMyGodItsAFight"		;//(best�rzt) Mein Gott, ein Kampf!
	GoodVictory					=	"SVM_10_GoodVictory"				;//(b�se lachend) Dem hast du's gezeigt!
	NotBad						= 	"SVM_10_NotBad"					;//(anerkennend) Nicht schlecht ...
	OhMyGodHesDown				=	"SVM_10_OhMyGodHesDown"			;//(zu sich selbst) Mein Gott! Wie brutal ...
	CheerFriend01				=	"SVM_10_CheerFriend01"			;//Ja, gib's ihm!
	CheerFriend02				=	"SVM_10_CheerFriend02"			;//Zeig's ihm!
	CheerFriend03				=	"SVM_10_CheerFriend03"			;//Mach ihn fertig!
	Ooh01						=	"SVM_10_Ooh01"					;//Wehr dich!
	Ooh02						=	"SVM_10_Ooh02"					;//Schlag doch zur�ck!
	Ooh03						=	"SVM_10_Ooh03"					;//Uh! Das tat weh!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_10_WhatWasThat"				;//(zu sich selbst, wacht auf) Verdammt, was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_10_GetOutOfMyBed"				;//Such dir ein eigenes Bett!
	Awake						= "SVM_10_Awake"						;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_10_TOUGHGUY_ATTACKLOST"		;//Du hast ja 'nen ganz sch�nen Schlag drauf ... Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_10_TOUGHGUY_ATTACKWON"		;//(selbstgef�llig) Noch Fragen?
	TOUGHGUY_PLAYERATTACK		= "SVM_10_TOUGHGUY_PLAYERATTACK"		;//Da bist du ja wieder!
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_10_GOLD_1000"					;//1000 Goldst�cke.
	GOLD_950					= "SVM_10_GOLD_950"					;//950 Goldst�cke.
	GOLD_900					= "SVM_10_GOLD_900"					;//900 Goldst�cke.
	GOLD_850					= "SVM_10_GOLD_850"					;//850 Goldst�cke.
	GOLD_800					= "SVM_10_GOLD_800"					;//800 Goldst�cke.
	GOLD_750					= "SVM_10_GOLD_750"					;//750 Goldst�cke.
	GOLD_700					= "SVM_10_GOLD_700"					;//700 Goldst�cke.
	GOLD_650					= "SVM_10_GOLD_650"					;//650 Goldst�cke.
	GOLD_600					= "SVM_10_GOLD_600"					;//600 Goldst�cke.
	GOLD_550					= "SVM_10_GOLD_550"					;//550 Goldst�cke.
	GOLD_500					= "SVM_10_GOLD_500"					;//500 Goldst�cke.
	GOLD_450					= "SVM_10_GOLD_450"					;//450 Goldst�cke.
	GOLD_400					= "SVM_10_GOLD_400"					;//400 Goldst�cke.
	GOLD_350					= "SVM_10_GOLD_350"					;//350 Goldst�cke.
	GOLD_300					= "SVM_10_GOLD_300"					;//300 Goldst�cke.
	GOLD_250					= "SVM_10_GOLD_250"					;//250 Goldst�cke.
	GOLD_200					= "SVM_10_GOLD_200"					;//200 Goldst�cke.
	GOLD_150					= "SVM_10_GOLD_150"					;//150 Goldst�cke.
	GOLD_100					= "SVM_10_GOLD_100"					;//100 Goldst�cke.
	GOLD_90						= "SVM_10_GOLD_90"					;//90 Goldst�cke.
	GOLD_80						= "SVM_10_GOLD_80"					;//80 Goldst�cke.
	GOLD_70						= "SVM_10_GOLD_70"					;//70 Goldst�cke.
	GOLD_60						= "SVM_10_GOLD_60"					;//60 Goldst�cke.
	GOLD_50						= "SVM_10_GOLD_50"					;//50 Goldst�cke.
	GOLD_40						= "SVM_10_GOLD_40"					;//40 Goldst�cke.
	GOLD_30						= "SVM_10_GOLD_30"					;//30 Goldst�cke.
	GOLD_20						= "SVM_10_GOLD_20"					;//20 Goldst�cke.
	GOLD_10						= "SVM_10_GOLD_10"					;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_10_Smalltalk01"				;//... das interessiert mich nicht ...
	Smalltalk02					= "SVM_10_Smalltalk02"				;//... das will doch keiner wissen ...
	Smalltalk03					= "SVM_10_Smalltalk03"				;//... es war doch seine Entscheidung ...
	Smalltalk04					= "SVM_10_Smalltalk04"				;//... keine Ahnung, sag du es mir ...
	Smalltalk05					= "SVM_10_Smalltalk05"				;//... ich werde mich da nicht einmischen ...
	Smalltalk06					= "SVM_10_Smalltalk06"				;//... ich hab f�r so etwas keine Zeit ...
	Smalltalk07					= "SVM_10_Smalltalk07"				;//... ich k�nnte mir so etwas nicht erlauben ...
	Smalltalk08					= "SVM_10_Smalltalk08"				;//... mir brauchst du das nicht zu sagen ...
	Smalltalk09					= "SVM_10_Smalltalk09"				;//... erz�hl mir nichts, ich kenne so was ...
	Smalltalk10					= "SVM_10_Smalltalk10"				;//... ich k�nnte dir Sachen erz�hlen ...
	Smalltalk11					= "SVM_10_Smalltalk11"				;//... da kann man sich nicht drauf verlassen ...
	Smalltalk12					= "SVM_10_Smalltalk12"				;//... das habe ich fr�her auch immer gesagt ...
	Smalltalk13					= "SVM_10_Smalltalk13"				;//... und glaub ja nicht, dass das alles ist ...
	Smalltalk14					= "SVM_10_Smalltalk14"				;//... immer wieder das gleiche ...
	Smalltalk15					= "SVM_10_Smalltalk15"				;//... das kann doch nicht wahr sein ...
	Smalltalk16					= "SVM_10_Smalltalk16"				;//... irgendwann musste es ja so kommen ...
	Smalltalk17					= "SVM_10_Smalltalk17"				;//... das h�tte er auch selbst wissen k�nnen ...
	Smalltalk18					= "SVM_10_Smalltalk18"				;//... das wird sich nie �ndern ...
	Smalltalk19					= "SVM_10_Smalltalk19"				;//... das ist kein Geheimnis ...
	Smalltalk20					= "SVM_10_Smalltalk20"				;//... das war keine gro�e Sache ...
	Smalltalk21					= "SVM_10_Smalltalk21"				;//... er stellt sich das immer so einfach vor ...
	Smalltalk22					= "SVM_10_Smalltalk22"				;//... das will doch keiner mehr h�ren ...
	Smalltalk23					= "SVM_10_Smalltalk23"				;//... ist doch wahr ...
	Smalltalk24					= "SVM_10_Smalltalk24"				;//... da muss man einfach mal zuh�ren ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                      
	Smalltalk25					= "SVM_10_Smalltalk25"				;//... wenn wir nicht gekommen w�ren, w�re die Sache anders ausgegangen ...
	Smalltalk26					= "SVM_10_Smalltalk26"				;//...der muss einfach mehr trainieren...
	Smalltalk27					= "SVM_10_Smalltalk27"				;//... der soll mir nichts von Pflicht erz�hlen ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                      
	Smalltalk28					= "SVM_10_Smalltalk28"				;//... Innos' Strafe ist gerecht ...
	Smalltalk29					= "SVM_10_Smalltalk29"				;//... der Pfad der Tugend ist lang und steinig ...
	Smalltalk30					= "SVM_10_Smalltalk30"				;//... nur Innos entscheidet �ber Recht und Unrecht ...
	SmalltalkKhorataAnnaQuest01			= "SVM_10_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_10_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_10_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_10_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_10_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_10_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_10_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_10_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_10_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_10_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_10_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_10_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_10_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_10_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_10_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_10_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_10_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_10_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_10_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_10_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_10_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_10_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_10_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_10_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_10_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_10_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_10_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_10_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_10_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_10_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_10_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_10_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_10_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_10_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_10_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_10_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_10_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_10_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_10_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_10_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_10_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_10_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_10_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_10_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_10_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_10_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_10_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_10_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_10_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_10_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_10_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_10_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_10_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_10_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_10_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_10_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_10_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_10_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_10_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_10_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_10_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_10_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_10_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_10_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_10_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_10_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_10_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_10_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_10_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_10_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_10_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_10_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_10_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_10_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_10_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_10_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_10_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_10_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...

	// D�monenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_10_SmalltalkDMRBelagerungAbdi01"; //... ehrlich gesagt tut's mir um die beiden nicht Leid ...
	SmalltalkDMRBelagerungAbdi02			= "SVM_10_SmalltalkDMRBelagerungAbdi02"; //... w�sste zu gerne, wer hier im Lager die Leute abschlachtet ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_10_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_10_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_10_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist zu gut.
	YouLearnedSomething			= "SVM_10_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_10_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_10_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_10_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_10_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_10_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_10_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_10_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_10_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_10_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_10_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_10_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_10_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_10_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_10_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_10_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbeigehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_10_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlanggehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_10_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_10_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_10_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_10_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_10_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppe rauf.
	KASERNE_2_MARKT				= "SVM_10_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_10_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_10_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_10_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_10_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_10_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_10_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_10_Addon_WrongArmor";			//Was ist das f�r Kleidung? Sie passt nicht zu dir. Lass mich in Ruhe.
	ADDON_WRONGARMOR_SLD		= "SVM_10_ADDON_WRONGARMOR_SLD";		//Wenn du zu uns geh�rst, solltest du auch unsere Klamotten tragen. Zieh dich erst mal um.
	ADDON_WRONGARMOR_MIL		= "SVM_10_ADDON_WRONGARMOR_MIL";		//Wenn man dir die R�stung des K�nigs gibt, dann trage sie auch gef�lligst.
	ADDON_WRONGARMOR_KDF		= "SVM_10_ADDON_WRONGARMOR_KDF";		//Wenn du die Robe verleugnest, verleugnest du Innos. Geh und denk dar�ber nach.
	ADDON_NOARMOR_BDT			= "SVM_10_ADDON_ADDON_NOARMOR_BDT";		//Wenn du dir noch nicht mal eine R�stung leisten kannst, warum soll ich mich dann mit dir unterhalten?

	ADDON_DIEBANDIT				= "SVM_10_ADDON_DIEBANDIT";				//Du dreckiger Bandit!
	ADDON_DIRTYPIRATE			= "SVM_10_ADDON_DIRTYPIRATE";			//Du dreckiger Pirat!

	RELMINE01			= "SVM_10_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_10_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_10_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_10_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_10_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_10_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_10_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_10_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_10_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_10_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_10_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_10_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_10_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_10_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_10_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_10_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_10_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_10_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_10_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_10_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_10_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_10_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_10_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_10_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_10_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_10_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_10_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_10_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_10_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_10_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_10_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_10_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_10_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_10_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_10_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_10_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_10_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_10_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_10_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_10_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_10_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_10_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_10_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_10_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_10_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_10_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_10_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_10_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_10_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_10_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_10_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_10_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_10_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_10_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_10_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_10_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_10_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_11 (C_SVM)
{
	SC_HeyWaitASecond			= 	"SVM_11_Addon_HeyWaitASecond"			;//(ruft) Warte!
	
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_11_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_11_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_11_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_11_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_11_Weather"						;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_11_IGetYouStill"				;//Krieg ich dich DOCH noch!
	DieEnemy					=	"SVM_11_DieEnemy"					;//Jetzt bist du dran!
	DieMonster					=	"SVM_11_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_11_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_11_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_11_SheepKiller"					;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_11_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_11_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_11_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_11_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_11_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_11_ThenIBeatYouOutOfHere"		;//Dann muss ich dich eben rauspr�geln!
	WhatDidYouDoInThere			=	"SVM_11_WhatDidYouDoInThere"			;//Was hattest DU denn da drin zu suchen, he!?
	WillYouStopFighting			=	"SVM_11_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_11_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_11_EnemyKilled"					;//Das war's f�r dich, Penner.
	Berzerk						=	"SVM_11_Berzerk"						;//UUAAARRGGGHHH!!!
	MonsterKilled				=	"SVM_11_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_11_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_11_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_11_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_11_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_11_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_11_NeverHitMeAgain"				;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_11_YouBetterShouldHaveListened"	;//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_11_GetUpAndBeGone"				;//Und jetzt mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_11_NeverEnterRoomAgain"			;//Und dass ich dich nie wieder da drin erwische!
	ThereIsNoFightingHere		=	"SVM_11_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_11_RunAway"						;//Schei�e! Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_11_Alarm"						;//ALARM!
	Guards						=	"SVM_11_Guards"						;//WACHE!
	Help						=	"SVM_11_Help"						;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_11_GoodMonsterKill"				;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_11_GoodKill"					;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_11_NOTNOW"						;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_11_RunCoward"					;//(ruft laut) Bleib stehen, du Lump!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_11_GetOutOfHere"				;//Raus hier!
	WhyAreYouInHere				=	"SVM_11_WhyAreYouInHere"				;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_11_YesGoOutOfHere"				;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_11_WhatsThisSupposedToBe"		;//Hey du! Was schleichst du da rum?
	YouDisturbedMySlumber		=	"SVM_11_YouDisturbedMySlumber"		;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_11_ITookYourGold"				;//Gold! Das ist schon mal meins ...
	ShitNoGold					=	"SVM_11_ShitNoGold"					;//Du hast noch nicht mal Gold dabei?
	ITakeYourWeapon				=	"SVM_11_ITakeYourWeapon"				;//Deine Waffe nehm ich mal lieber mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_11_WhatAreYouDoing"				;//(warnt) Hey! Pass auf!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_11_LookingForTroubleAgain"		;//(agressiv) Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_11_StopMagic"					;//Geh blo� weg mit deiner Magie!
	ISaidStopMagic				=	"SVM_11_ISaidStopMagic"				;//Weg mit der Magie! H�rst du schlecht!?
	WeaponDown					=	"SVM_11_WeaponDown"					;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_11_ISaidWeaponDown"				;//H�rst du schlecht? Ich sagte: Weg mit der Waffe!
	WiseMove					=	"SVM_11_WiseMove"					;//Na bitte, geht doch!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_11_NextTimeYoureInForIt"		;//(zu sich selbst) Dar�ber reden wir noch ...
	OhMyHead					=	"SVM_11_OhMyHead"					;//(zu sich selbst) Oh, mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_11_TheresAFight"				;//(gierig) Jetzt geht's zur Sache!
	OhMyGodItsAFight			=	"SVM_11_OhMyGodItsAFight"			;//(best�rzt) Die hauen sich den Sch�del ein ...
	GoodVictory					=	"SVM_11_GoodVictory"					;//(b�se lachend) Das hat er verdient.
	NotBad						= 	"SVM_11_NotBad"						;//(anerkennend) Gar nicht so �bel ...
	OhMyGodHesDown				=	"SVM_11_OhMyGodHesDown"				;//(zu sich selbst) Was f�r ein brutaler Kerl ...
	CheerFriend01				=	"SVM_11_CheerFriend01"				;//Ja, so ist's gut!
	CheerFriend02				=	"SVM_11_CheerFriend02"				;//Na, mach schon!
	CheerFriend03				=	"SVM_11_CheerFriend03"				;//Immer feste drauf!
	Ooh01						=	"SVM_11_Ooh01"						;//Lass dir nichts gefallen!
	Ooh02						=	"SVM_11_Ooh02"						;//Den wirst du ja wohl schaffen!
	Ooh03						=	"SVM_11_Ooh03"						;//Das gibt's doch gar nicht!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_11_WhatWasThat"					;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_11_GetOutOfMyBed"					;//Raus aus meinem Bett!
	Awake						= "SVM_11_Awake"							;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_11_TOUGHGUY_ATTACKLOST"			;//Ist ja schon gut, du hast gewonnen. Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_11_TOUGHGUY_ATTACKWON"			;//(selbstgef�llig) Muss ich dir noch mal zeigen, wer hier der Herr ist?
	TOUGHGUY_PLAYERATTACK		= "SVM_11_TOUGHGUY_PLAYERATTACK"			;//Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_11_GOLD_1000"						;//1000 Goldst�cke.
	GOLD_950					= "SVM_11_GOLD_950"						;//950 Goldst�cke.
	GOLD_900					= "SVM_11_GOLD_900"						;//900 Goldst�cke.
	GOLD_850					= "SVM_11_GOLD_850"						;//850 Goldst�cke.
	GOLD_800					= "SVM_11_GOLD_800"						;//800 Goldst�cke.
	GOLD_750					= "SVM_11_GOLD_750"						;//750 Goldst�cke.
	GOLD_700					= "SVM_11_GOLD_700"						;//700 Goldst�cke.
	GOLD_650					= "SVM_11_GOLD_650"						;//650 Goldst�cke.
	GOLD_600					= "SVM_11_GOLD_600"						;//600 Goldst�cke.
	GOLD_550					= "SVM_11_GOLD_550"						;//550 Goldst�cke.
	GOLD_500					= "SVM_11_GOLD_500"						;//500 Goldst�cke.
	GOLD_450					= "SVM_11_GOLD_450"						;//450 Goldst�cke.
	GOLD_400					= "SVM_11_GOLD_400"						;//400 Goldst�cke.
	GOLD_350					= "SVM_11_GOLD_350"						;//350 Goldst�cke.
	GOLD_300					= "SVM_11_GOLD_300"						;//300 Goldst�cke.
	GOLD_250					= "SVM_11_GOLD_250"						;//250 Goldst�cke.
	GOLD_200					= "SVM_11_GOLD_200"						;//200 Goldst�cke.
	GOLD_150					= "SVM_11_GOLD_150"						;//150 Goldst�cke.
	GOLD_100					= "SVM_11_GOLD_100"						;//100 Goldst�cke.
	GOLD_90						= "SVM_11_GOLD_90"						;//90 Goldst�cke.
	GOLD_80						= "SVM_11_GOLD_80"						;//80 Goldst�cke.
	GOLD_70						= "SVM_11_GOLD_70"						;//70 Goldst�cke.
	GOLD_60						= "SVM_11_GOLD_60"						;//60 Goldst�cke.
	GOLD_50						= "SVM_11_GOLD_50"						;//50 Goldst�cke.
	GOLD_40						= "SVM_11_GOLD_40"						;//40 Goldst�cke.
	GOLD_30						= "SVM_11_GOLD_30"						;//30 Goldst�cke.
	GOLD_20						= "SVM_11_GOLD_20"						;//20 Goldst�cke.
	GOLD_10						= "SVM_11_GOLD_10"						;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_11_Smalltalk01"					;//... glaubst du wirklich ...
	Smalltalk02					= "SVM_11_Smalltalk02"					;//... m�glich ist alles ...
	Smalltalk03					= "SVM_11_Smalltalk03"					;//... das h�tte er doch besser wissen m�ssen ...
	Smalltalk04					= "SVM_11_Smalltalk04"					;//... als ob ich nicht schon genug Probleme h�tte ...
	Smalltalk05					= "SVM_11_Smalltalk05"					;//... wer erz�hlt denn so was ...
	Smalltalk06					= "SVM_11_Smalltalk06"					;//... das gibt doch nur noch mehr �rger ...
	Smalltalk07					= "SVM_11_Smalltalk07"					;//... man erz�hlt sich ja so einiges ...
	Smalltalk08					= "SVM_11_Smalltalk08"					;//... ich h�tte das nicht gemacht ...
	Smalltalk09					= "SVM_11_Smalltalk09"					;//... das sind doch alles nur Ger�chte ...
	Smalltalk10					= "SVM_11_Smalltalk10"					;//... man muss eben aufpassen, was man so rumerz�hlt ...
	Smalltalk11					= "SVM_11_Smalltalk11"					;//... das h�tte ich dir vorher sagen k�nnen ...
	Smalltalk12					= "SVM_11_Smalltalk12"					;//... mich fragt ja keiner ...
	Smalltalk13					= "SVM_11_Smalltalk13"					;//... der arme Kerl kann einem Leid tun ...
	Smalltalk14					= "SVM_11_Smalltalk14"					;//... das ist doch nichts Neues ...
	Smalltalk15					= "SVM_11_Smalltalk15"					;//... das liegt doch auf der Hand ...
	Smalltalk16					= "SVM_11_Smalltalk16"					;//... mich brauchst du das nicht zu fragen ...
	Smalltalk17					= "SVM_11_Smalltalk17"					;//... das kann ja nicht ewig so weitergehen ...
	Smalltalk18					= "SVM_11_Smalltalk18"					;//... meine Meinung kennst du ja schon ...
	Smalltalk19					= "SVM_11_Smalltalk19"					;//... genau das hab ich auch gesagt ...
	Smalltalk20					= "SVM_11_Smalltalk20"					;//... daran wird dich nie was �ndern ...
	Smalltalk21					= "SVM_11_Smalltalk21"					;//... warum erfahre ich das erst jetzt ...
	Smalltalk22					= "SVM_11_Smalltalk22"					;//... lass uns erstmal abwarten, was daraus wird ...
	Smalltalk23					= "SVM_11_Smalltalk23"					;//... einige Probleme erledigen sich von selbst ...
	Smalltalk24					= "SVM_11_Smalltalk24"					;//... ich kann das nicht mehr h�ren ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_11_Smalltalk25"					;//... der war doch sturzbetrunken ...
	Smalltalk26					= "SVM_11_Smalltalk26"					;//... mit mir kann man so was nicht machen ...
	Smalltalk27					= "SVM_11_Smalltalk27"					;//... alle sind gerannt wie die Hasen, ich war ganz allein ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_11_Smalltalk28"					;//... so steht es in den heiligen Schriften ...
	Smalltalk29					= "SVM_11_Smalltalk29"					;//... ich handle stets in Innos' Namen ...
	Smalltalk30					= "SVM_11_Smalltalk30"					;//... niemand darf gegen die g�ttliche Ordnung versto�en ...
	SmalltalkKhorataAnnaQuest01			= "SVM_11_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_11_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_11_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_11_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_11_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_11_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_11_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_11_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_11_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_11_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_11_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_11_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_11_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_11_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_11_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_11_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_11_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_11_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_11_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_11_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_11_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_11_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_11_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_11_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_11_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_11_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_11_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_11_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_11_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_11_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_11_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_11_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_11_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_11_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_11_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_11_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_11_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_11_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_11_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_11_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_11_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_11_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_11_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_11_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_11_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_11_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_11_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_11_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_11_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_11_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_11_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_11_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_11_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_11_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_11_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_11_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_11_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_11_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_11_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_11_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_11_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_11_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_11_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_11_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_11_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_11_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_11_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_11_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_11_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_11_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_11_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_11_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_11_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_11_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_11_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_11_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_11_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_11_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...

	// D�monenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_11_SmalltalkDMRBelagerungAbdi01"; //... ehrlich gesagt tut's mir um die beiden nicht Leid ...
	SmalltalkDMRBelagerungAbdi02			= "SVM_11_SmalltalkDMRBelagerungAbdi02"; //... w�sste zu gerne, wer hier im Lager die Leute abschlachtet ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_11_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_11_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_11_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_11_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_11_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_11_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_11_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_11_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_11_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_11_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_11_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_11_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_11_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_11_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_11_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_11_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_11_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_11_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_11_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbeigehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_11_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlanggehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_11_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_11_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_11_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_11_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_11_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_11_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_11_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_11_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_11_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_11_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_11_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_11_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_11_Addon_WrongArmor";				//Was ist das f�r Kleidung? Sie passt nicht zu dir. Lass mich in Ruhe.
	ADDON_WRONGARMOR_SLD		= "SVM_11_ADDON_WRONGARMOR_SLD";			//Trage gef�lligst unsere R�stung, wenn ich mit dir rede. Los, verschwinde.
	ADDON_WRONGARMOR_MIL		= "SVM_11_ADDON_WRONGARMOR_MIL";			//Trage gef�lligst die R�stung des K�nigs. Los geh schon.
	ADDON_WRONGARMOR_KDF		= "SVM_11_ADDON_WRONGARMOR_KDF";			//Deine Kleidung ist unserem Orden nicht angemessen. Zieh dich um.
	ADDON_NOARMOR_BDT			= "SVM_11_ADDON_ADDON_NOARMOR_BDT";			//Hast ja noch nicht mal 'ne R�stung. Verschwinde!

	ADDON_DIEBANDIT				= "SVM_11_ADDON_DIEBANDIT";				//Schon wieder ein Bandit.
	ADDON_DIRTYPIRATE			= "SVM_11_ADDON_DIRTYPIRATE";			//PIRATEN!

	RELMINE01			= "SVM_11_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_11_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_11_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_11_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_11_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_11_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_11_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_11_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_11_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_11_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_11_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_11_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_11_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_11_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_11_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_11_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_11_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_11_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_11_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_11_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_11_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_11_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_11_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_11_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_11_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_11_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_11_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_11_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_11_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_11_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_11_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_11_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_11_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_11_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_11_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_11_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_11_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_11_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_11_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_11_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_11_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_11_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_11_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_11_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_11_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_11_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_11_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_11_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_11_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_11_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_11_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_11_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_11_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_11_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_11_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_11_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_11_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_12 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_12_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_12_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_12_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_12_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_12_Weather"					;//Sauwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_12_IGetYouStill"				;//Jetzt krieg ich dich!
	DieEnemy					=	"SVM_12_DieEnemy"					;//Du w�rst besser nicht hierher gekommen!
	DieMonster					=	"SVM_12_DieMonster"					;//Komm her, Mistvieh!
	DirtyThief					=	"SVM_12_DirtyThief"					;//Dreckiger Dieb! Na warte!
	HandsOff					=	"SVM_12_HandsOff"					;//Nimm deine Pfoten da weg!
	SheepKiller					=	"SVM_12_SheepKiller"				;//Lass unsere Schafe in Ruhe!
	Berzerk						=	"SVM_12_Berzerk"						;//UUAAARRGGGHHH!!!
	SheepKillerMonster			=	"SVM_12_SheepKillerMonster"			;//Geh weg von unseren Schafen, du Mistvieh!
	YouMurderer					=	"SVM_12_YouMurderer"				;//M�rder!
	DieStupidBeast				=	"SVM_12_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_12_YouDareHitMe"				;//Das wirst du bereuen!
	YouAskedForIt				=	"SVM_12_YouAskedForIt"				;//Ich habe dich gewarnt!
	ThenIBeatYouOutOfHere		=	"SVM_12_ThenIBeatYouOutOfHere"		;//Ich hab gesagt RAUS!
	WhatDidYouDoInThere			=	"SVM_12_WhatDidYouDoInThere"		;//Hey! Was wolltest du da drin?
	WillYouStopFighting			=	"SVM_12_WillYouStopFighting"		;//Aufh�ren! Sofort!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_12_KillEnemy"					;//Jetzt spie� ich dich auf, Mistkerl!
	EnemyKilled					=	"SVM_12_EnemyKilled"				;//Das war's f�r dich ...
	MonsterKilled				=	"SVM_12_MonsterKilled"				;//Ich steh auf diese ganze Schei�e!
	Addon_MonsterKilled			=	"SVM_12_Addon_MonsterKilled"		;//EIN Mistvieh weniger!
	ThiefDown					=	"SVM_12_ThiefDown"					;//Ich warne dich! Versuch das nicht noch mal, du dreckiger Dieb!
	rumfummlerDown				=	"SVM_12_rumfummlerDown"				;//Vergreif dich nie wieder an Sachen, die nicht dir geh�ren!
	SheepAttackerDown			=	"SVM_12_SheepAttackerDown"			;//Und halt dich in Zukunft von unseren Schafen fern!
	KillMurderer				=	"SVM_12_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_12_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_12_NeverHitMeAgain"				;//Wag es ja nie wieder, mich anzugreifen!
	YouBetterShouldHaveListened	=	"SVM_12_YouBetterShouldHaveListened"	;//Ich hatte dich gewarnt!
	GetUpAndBeGone				=	"SVM_12_GetUpAndBeGone"					;//Und jetzt raus mit dir!
	NeverEnterRoomAgain			=	"SVM_12_NeverEnterRoomAgain"			;//Ich will dich nie wieder da drinnen sehen, klar?
	ThereIsNoFightingHere		=	"SVM_12_ThereIsNoFightingHere"			;//Hier wird nicht gek�mpft, ist das klar?!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_12_RunAway"						;//Ich hau ab!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_12_Alarm"					;//ALARM!
	Guards						=	"SVM_12_Guards"					;//WACHE!
	Help						=	"SVM_12_Help"					;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_12_GoodMonsterKill"		;//(ruft zu) Gib den Viechern ordentlich Saures!
	GoodKill					= 	"SVM_12_GoodKill"				;//(ruft) Ja, gib's dem Mistkerl!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_12_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_12_RunCoward"				;//(ruft laut) Dich krieg ich noch!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_12_GetOutOfHere"			;//Raus hier!
	WhyAreYouInHere				=	"SVM_12_WhyAreYouInHere"		;//Du hast hier nichts zu suchen!
	YesGoOutOfHere				= 	"SVM_12_YesGoOutOfHere"			;//Ja, raus mit dir!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_12_WhatsThisSupposedToBe"	;//Was soll das denn werden? Warum schleichst du hier rum?
	YouDisturbedMySlumber		=	"SVM_12_YouDisturbedMySlumber"	;//(wacht auf) Verdammt, was willst du?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_12_ITookYourGold"			;//Na, immerhin hast du wenigstens Gold dabei!
	ShitNoGold					=	"SVM_12_ShitNoGold"				;//Noch nicht mal Gold - hmpf.
	ITakeYourWeapon				=	"SVM_12_ITakeYourWeapon"		;//Deine Waffe nehme ich mal mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_12_WhatAreYouDoing"		;//(warnt) Junge! Mach das ja nicht noch mal!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_12_LookingForTroubleAgain"	;//(agressiv) Brauchst du schon wieder Schl�ge?
	StopMagic					=	"SVM_12_StopMagic"				;//Weg mit der Magie!
	ISaidStopMagic				=	"SVM_12_ISaidStopMagic"			;//Letzte Warnung! Weg mit der Magie!
	WeaponDown					=	"SVM_12_WeaponDown"				;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_12_ISaidWeaponDown"		;//Weg damit oder ich verpass dir eine!
	WiseMove					=	"SVM_12_WiseMove"				;//Du bist ja gar nicht so dumm, wie du aussiehst!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_12_NextTimeYoureInForIt"	;//(zu sich selbst) Versuch das ja nicht noch mal ...
	OhMyHead					=	"SVM_12_OhMyHead"				;//(zu sich selbst) Oh! Mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_12_TheresAFight"			;//(gierig) Jetzt wird's lustig ...
	OhMyGodItsAFight			=	"SVM_12_OhMyGodItsAFight"		;//(best�rzt) Du meine G�te ...
	GoodVictory					=	"SVM_12_GoodVictory"			;//(b�se lachend) Das wird ihm eine Lehre sein ...
	NotBad						= 	"SVM_12_NotBad"					;//(anerkennend) Der hat gesessen!
	OhMyGodHesDown				=	"SVM_12_OhMyGodHesDown"			;//(zu sich selbst) Brutaler Mistkerl!
	CheerFriend01				=	"SVM_12_CheerFriend01"			;//Hau drauf!
	CheerFriend02				=	"SVM_12_CheerFriend02"			;//H�r nicht auf!
	CheerFriend03				=	"SVM_12_CheerFriend03"			;//Mach ihn fertig!
	Ooh01						=	"SVM_12_Ooh01"					;//Pass auf!
	Ooh02						=	"SVM_12_Ooh02"					;//Parier doch!
	Ooh03						=	"SVM_12_Ooh03"					;//Schei�e, das tat weh!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_12_WhatWasThat"				;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_12_GetOutOfMyBed"			;//Das ist mein Bett!
	Awake						= "SVM_12_Awake"					;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_12_TOUGHGUY_ATTACKLOST"		;//Gut - du hast gewonnen. Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_12_TOUGHGUY_ATTACKWON"		;//(selbstgef�llig) Ich denke, dir ist jetzt klar, wen du vor dir hast. Was willst du?
	TOUGHGUY_PLAYERATTACK		= "SVM_12_TOUGHGUY_PLAYERATTACK"	;//Du schon wieder? Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_12_GOLD_1000"				;//1000 Goldst�cke.
	GOLD_950					= "SVM_12_GOLD_950"					;//950 Goldst�cke.
	GOLD_900					= "SVM_12_GOLD_900"					;//900 Goldst�cke.
	GOLD_850					= "SVM_12_GOLD_850"					;//850 Goldst�cke.
	GOLD_800					= "SVM_12_GOLD_800"					;//800 Goldst�cke.
	GOLD_750					= "SVM_12_GOLD_750"					;//750 Goldst�cke.
	GOLD_700					= "SVM_12_GOLD_700"					;//700 Goldst�cke.
	GOLD_650					= "SVM_12_GOLD_650"					;//650 Goldst�cke.
	GOLD_600					= "SVM_12_GOLD_600"					;//600 Goldst�cke.
	GOLD_550					= "SVM_12_GOLD_550"					;//550 Goldst�cke.
	GOLD_500					= "SVM_12_GOLD_500"					;//500 Goldst�cke.
	GOLD_450					= "SVM_12_GOLD_450"					;//450 Goldst�cke.
	GOLD_400					= "SVM_12_GOLD_400"					;//400 Goldst�cke.
	GOLD_350					= "SVM_12_GOLD_350"					;//350 Goldst�cke.
	GOLD_300					= "SVM_12_GOLD_300"					;//300 Goldst�cke.
	GOLD_250					= "SVM_12_GOLD_250"					;//250 Goldst�cke.
	GOLD_200					= "SVM_12_GOLD_200"					;//200 Goldst�cke.
	GOLD_150					= "SVM_12_GOLD_150"					;//150 Goldst�cke.
	GOLD_100					= "SVM_12_GOLD_100"					;//100 Goldst�cke.
	GOLD_90						= "SVM_12_GOLD_90"					;//90 Goldst�cke.
	GOLD_80						= "SVM_12_GOLD_80"					;//80 Goldst�cke.
	GOLD_70						= "SVM_12_GOLD_70"					;//70 Goldst�cke.
	GOLD_60						= "SVM_12_GOLD_60"					;//60 Goldst�cke.
	GOLD_50						= "SVM_12_GOLD_50"					;//50 Goldst�cke.
	GOLD_40						= "SVM_12_GOLD_40"					;//40 Goldst�cke.
	GOLD_30						= "SVM_12_GOLD_30"					;//30 Goldst�cke.
	GOLD_20						= "SVM_12_GOLD_20"					;//20 Goldst�cke.
	GOLD_10						= "SVM_12_GOLD_10"					;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_12_Smalltalk01"				;//... das interessiert mich nicht ...
	Smalltalk02					= "SVM_12_Smalltalk02"				;//... das will doch keiner wissen ...
	Smalltalk03					= "SVM_12_Smalltalk03"				;//... es war doch seine Entscheidung ...
	Smalltalk04					= "SVM_12_Smalltalk04"				;//... keine Ahnung, sag du es mir ...
	Smalltalk05					= "SVM_12_Smalltalk05"				;//... ich werde mich da nicht einmischen ...
	Smalltalk06					= "SVM_12_Smalltalk06"				;//... ich hab f�r so etwas keine Zeit ...
	Smalltalk07					= "SVM_12_Smalltalk07"				;//... ich k�nnte mir so etwas nie erlauben ...
	Smalltalk08					= "SVM_12_Smalltalk08"				;//... mir brauchst du das nicht zu sagen ...
	Smalltalk09					= "SVM_12_Smalltalk09"				;//... erz�hl mir nichts, ich kenne so was ...
	Smalltalk10					= "SVM_12_Smalltalk10"				;//... ich k�nnte dir Sachen erz�hlen ...
	Smalltalk11					= "SVM_12_Smalltalk11"				;//... da kann man sich nicht drauf verlassen ...
	Smalltalk12					= "SVM_12_Smalltalk12"				;//... das habe ich fr�her auch immer gesagt ...
	Smalltalk13					= "SVM_12_Smalltalk13"				;//... ich glaub ja nicht, dass das alles ist ...
	Smalltalk14					= "SVM_12_Smalltalk14"				;//... immer wieder das gleiche ...
	Smalltalk15					= "SVM_12_Smalltalk15"				;//... das kann doch nicht wahr sein ...
	Smalltalk16					= "SVM_12_Smalltalk16"				;//... irgendwann musste es ja so kommen ...
	Smalltalk17					= "SVM_12_Smalltalk17"				;//... das h�tte er auch selbst wissen k�nnen ...
	Smalltalk18					= "SVM_12_Smalltalk18"				;//... das wird sich nie �ndern ...
	Smalltalk19					= "SVM_12_Smalltalk19"				;//... das ist kein Geheimnis ...
	Smalltalk20					= "SVM_12_Smalltalk20"				;//... das war keine gro�e Sache ...
	Smalltalk21					= "SVM_12_Smalltalk21"				;//... er stellt sich das immer so einfach vor ...
	Smalltalk22					= "SVM_12_Smalltalk22"				;//... das will doch keiner mehr h�ren ...
	Smalltalk23					= "SVM_12_Smalltalk23"				;//... ist doch wahr ...
	Smalltalk24					= "SVM_12_Smalltalk24"				;//... da muss man auch mal zuh�ren ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                      
	Smalltalk25					= "SVM_12_Smalltalk25"				;//... wenn wir nicht gekommen w�ren, w�re die Sache anders ausgegangen ...
	Smalltalk26					= "SVM_12_Smalltalk26"				;//... der muss einfach mehr trainieren ...
	Smalltalk27					= "SVM_12_Smalltalk27"				;//... der soll mir nichts von Pflicht erz�hlen ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                      
	Smalltalk28					= "SVM_12_Smalltalk28"				;//... Innos' Strafe ist gerecht ...
	Smalltalk29					= "SVM_12_Smalltalk29"				;//... der Pfad der Tugend ist lang und steinig ...
	Smalltalk30					= "SVM_12_Smalltalk30"				;//... nur Innos entscheidet �ber Recht und Unrecht ...
	SmalltalkKhorataAnnaQuest01			= "SVM_12_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_12_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_12_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_12_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_12_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_12_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_12_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_12_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_12_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_12_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_12_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_12_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_12_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_12_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_12_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_12_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_12_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_12_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_12_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_12_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_12_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_12_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_12_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_12_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_12_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_12_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_12_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_12_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_12_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_12_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_12_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_12_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_12_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_12_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_12_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_12_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_12_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_12_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_12_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_12_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_12_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_12_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_12_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_12_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_12_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_12_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_12_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_12_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_12_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_12_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_12_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_12_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_12_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_12_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_12_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_12_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_12_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_12_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_12_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_12_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_12_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_12_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_12_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_12_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_12_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_12_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_12_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_12_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_12_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_12_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_12_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_12_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_12_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_12_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_12_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_12_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_12_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_12_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_12_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_12_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_12_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_12_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_12_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_12_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_12_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_12_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_12_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_12_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_12_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_12_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_12_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_12_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_12_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_12_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_12_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_12_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_12_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbeigehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_12_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlanggehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_12_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_12_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_12_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_12_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_12_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppe rauf.
	KASERNE_2_MARKT				= "SVM_12_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_12_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_12_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_12_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_12_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_12_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_12_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_12_Addon_WrongArmor";				//Deine Kleidung passt einfach nicht zu dir. Zieh dich erst mal um.
	ADDON_WRONGARMOR_SLD		= "SVM_12_ADDON_WRONGARMOR_SLD";			//Zieh dir unsere R�stung an, wenn du mit mir reden willst.
	ADDON_WRONGARMOR_MIL		= "SVM_12_ADDON_WRONGARMOR_MIL";			//Ein Soldat tr�gt die R�stung des K�nigs. NICHTS anderes! Also zieh dich um.
	ADDON_WRONGARMOR_KDF		= "SVM_12_ADDON_WRONGARMOR_KDF";			//Deine Kleidung ist unserem Orden nicht angemessen. Zieh dich um.
	ADDON_NOARMOR_BDT			= "SVM_12_ADDON_ADDON_NOARMOR_BDT";			//Kannst dir ja noch nicht mal eine R�stung leisten. Mit Schw�chlingen rede ich nicht.

	ADDON_DIEBANDIT				= "SVM_12_ADDON_DIEBANDIT";				//Ich mach dich fertig, Bandit!
	ADDON_DIRTYPIRATE			= "SVM_12_ADDON_DIRTYPIRATE";			//Ich mach dich fertig, Pirat!

	RELMINE01			= "SVM_12_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_12_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_12_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_12_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_12_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_12_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_12_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_12_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_12_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_12_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_12_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_12_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_12_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_12_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_12_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_12_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_12_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_12_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_12_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_12_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_12_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_12_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_12_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_12_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_12_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_12_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_12_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_12_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_12_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_12_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_12_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_12_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_12_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_12_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_12_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_12_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_12_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_12_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_12_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_12_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_12_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_12_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_12_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_12_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_12_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_12_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_12_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_12_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_12_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_12_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_12_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_12_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_12_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_12_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_12_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_12_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_12_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_13 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_13_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_13_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_13_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_13_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_13_Weather"					;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_13_IGetYouStill"				;//Jetzt krieg ich dich aber!
	DieEnemy					=	"SVM_13_DieEnemy"					;//Ich mach dich fertig!
	DieMonster					=	"SVM_13_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_13_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_13_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_13_SheepKiller"				;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_13_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_13_YouMurderer"				;//M�rder!
	DieStupidBeast				=	"SVM_13_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_13_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_13_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_13_ThenIBeatYouOutOfHere"		;//Du willst nicht gehen? Na gut!
	WhatDidYouDoInThere			=	"SVM_13_WhatDidYouDoInThere"		;//Was hattest du da drin zu suchen?
	WillYouStopFighting			=	"SVM_13_WillYouStopFighting"		;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_13_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_13_EnemyKilled"				;//Das hast du verdient, Mistkerl!
	MonsterKilled				=	"SVM_13_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_13_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_13_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_13_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_13_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_13_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_13_NeverHitMeAgain"			;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_13_YouBetterShouldHaveListened";//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_13_GetUpAndBeGone"				;//Und jetzt sieh zu, dass du hier verschwindest!
	NeverEnterRoomAgain			=	"SVM_13_NeverEnterRoomAgain"		;//Und lass dich ja nie wieder da drinnen erwischen!
	ThereIsNoFightingHere		=	"SVM_13_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_13_RunAway"					;//Ach du Schei�e!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_13_Alarm"					;//ALARM!
	Berzerk						=	"SVM_13_Berzerk"						;//UUAAARRGGGHHH!!!
	Guards						=	"SVM_13_Guards"					;//WACHE!
	Help						=	"SVM_13_Help"					;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_13_GoodMonsterKill"		;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_13_GoodKill"				;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_13_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_13_RunCoward"				;//(ruft laut) Ja! Renn, so schnell wie du kannst!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_13_GetOutOfHere"			;//Raus hier!
	WhyAreYouInHere				=	"SVM_13_WhyAreYouInHere"		;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_13_YesGoOutOfHere"			;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_13_WhatsThisSupposedToBe"	;//Hey du! Was schleichst du da rum.
	YouDisturbedMySlumber		=	"SVM_13_YouDisturbedMySlumber"	;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_13_ITookYourGold"			;//Danke f�r das Gold, du Held!
	ShitNoGold					=	"SVM_13_ShitNoGold"				;//Du arme Wurst, hast ja nicht mal Gold dabei!
	ITakeYourWeapon				=	"SVM_13_ITakeYourWeapon"		;//Die Waffe nehm ich mal besser an mich!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_13_WhatAreYouDoing"		;//(warnt) Pass auf! Noch mal und ich verpass dir eine.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_13_LookingForTroubleAgain"	;//Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_13_StopMagic"				;//H�r auf mit dieser Magie-Schei�e!
	ISaidStopMagic				=	"SVM_13_ISaidStopMagic"			;//Willst du Schl�ge? H�r sofort damit auf!!!
	WeaponDown					=	"SVM_13_WeaponDown"				;//Steck die Waffe weg!
	ISaidWeaponDown				=	"SVM_13_ISaidWeaponDown"		;//Steck endlich die Schei�waffe weg!
	WiseMove					=	"SVM_13_WiseMove"				;//Kluges Kerlchen!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_13_NextTimeYoureInForIt"	;//(zu sich selbst) Das n�chste Mal werden wir ja sehen ...
	OhMyHead					=	"SVM_13_OhMyHead"				;//(zu sich selbst) Oh Mann, mein Kopf ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_13_TheresAFight"			;//(gierig) Ah, ein Kampf!
	OhMyGodItsAFight			=	"SVM_13_OhMyGodItsAFight"		;//(best�rzt) Mein Gott, ein Kampf!
	GoodVictory					=	"SVM_13_GoodVictory"			;//(b�se lachend) Dem hast du's gezeigt!
	NotBad						= 	"SVM_13_NotBad"					;//(anerkennend) Nicht schlecht ...
	OhMyGodHesDown				=	"SVM_13_OhMyGodHesDown"			;//(zu sich selbst) Mein Gott! Wie brutal ...
	CheerFriend01				=	"SVM_13_CheerFriend01"			;//Schlag zu!
	CheerFriend02				=	"SVM_13_CheerFriend02"			;//Gib alles!
	CheerFriend03				=	"SVM_13_CheerFriend03"			;//Zeig's ihm!
	Ooh01						=	"SVM_13_Ooh01"					;//Bleib dran!
	Ooh02						=	"SVM_13_Ooh02"					;//Vorsicht!
	Ooh03						=	"SVM_13_Ooh03"					;//Oh! Der hat gesessen!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_13_WhatWasThat"				;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_13_GetOutOfMyBed"			;//Such dir ein eigenes Bett!
	Awake						= "SVM_13_Awake"					;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_13_TOUGHGUY_ATTACKLOST"		;//Okay, okay, du bist der Bessere von uns beiden! Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_13_TOUGHGUY_ATTACKWON"		;//(selbstgef�llig) Ich nehme an, du hast mittlerweile begriffen, wer von uns beiden der St�rkere ist ... was willst du?
	TOUGHGUY_PLAYERATTACK		= "SVM_13_TOUGHGUY_PLAYERATTACK"	;//Ich dachte, du wolltest dich mit mir anlegen. Hast du's dir anders �berlegt? Willst doch lieber REDEN, was? (lacht)
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_13_GOLD_1000"				;//1000 Goldst�cke.
	GOLD_950					= "SVM_13_GOLD_950"					;//950 Goldst�cke.
	GOLD_900					= "SVM_13_GOLD_900"					;//900 Goldst�cke.
	GOLD_850					= "SVM_13_GOLD_850"					;//850 Goldst�cke.
	GOLD_800					= "SVM_13_GOLD_800"					;//800 Goldst�cke.
	GOLD_750					= "SVM_13_GOLD_750"					;//750 Goldst�cke.
	GOLD_700					= "SVM_13_GOLD_700"					;//700 Goldst�cke.
	GOLD_650					= "SVM_13_GOLD_650"					;//650 Goldst�cke.
	GOLD_600					= "SVM_13_GOLD_600"					;//600 Goldst�cke.
	GOLD_550					= "SVM_13_GOLD_550"					;//550 Goldst�cke.
	GOLD_500					= "SVM_13_GOLD_500"					;//500 Goldst�cke.
	GOLD_450					= "SVM_13_GOLD_450"					;//450 Goldst�cke.
	GOLD_400					= "SVM_13_GOLD_400"					;//400 Goldst�cke.
	GOLD_350					= "SVM_13_GOLD_350"					;//350 Goldst�cke.
	GOLD_300					= "SVM_13_GOLD_300"					;//300 Goldst�cke.
	GOLD_250					= "SVM_13_GOLD_250"					;//250 Goldst�cke.
	GOLD_200					= "SVM_13_GOLD_200"					;//200 Goldst�cke.
	GOLD_150					= "SVM_13_GOLD_150"					;//150 Goldst�cke.
	GOLD_100					= "SVM_13_GOLD_100"					;//100 Goldst�cke.
	GOLD_90						= "SVM_13_GOLD_90"					;//90 Goldst�cke.
	GOLD_80						= "SVM_13_GOLD_80"					;//80 Goldst�cke.
	GOLD_70						= "SVM_13_GOLD_70"					;//70 Goldst�cke.
	GOLD_60						= "SVM_13_GOLD_60"					;//60 Goldst�cke.
	GOLD_50						= "SVM_13_GOLD_50"					;//50 Goldst�cke.
	GOLD_40						= "SVM_13_GOLD_40"					;//40 Goldst�cke.
	GOLD_30						= "SVM_13_GOLD_30"					;//30 Goldst�cke.
	GOLD_20						= "SVM_13_GOLD_20"					;//20 Goldst�cke.
	GOLD_10						= "SVM_13_GOLD_10"					;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_13_Smalltalk01"				;//... das interessiert mich nicht ...
	Smalltalk02					= "SVM_13_Smalltalk02"				;//... das will doch keiner wissen ...
	Smalltalk03					= "SVM_13_Smalltalk03"				;//... es war doch seine Entscheidung ...
	Smalltalk04					= "SVM_13_Smalltalk04"				;//... keine Ahnung, sag du es mir ...
	Smalltalk05					= "SVM_13_Smalltalk05"				;//... ich werde mich da nicht einmischen ...
	Smalltalk06					= "SVM_13_Smalltalk06"				;//... ich hab f�r so etwas keine Zeit ...
	Smalltalk07					= "SVM_13_Smalltalk07"				;//... ich k�nnte mir so etwas nicht erlauben ...
	Smalltalk08					= "SVM_13_Smalltalk08"				;//... mir brauchst du das nicht zu sagen ...
	Smalltalk09					= "SVM_13_Smalltalk09"				;//... erz�hl mir nichts, ich kenne so was ...
	Smalltalk10					= "SVM_13_Smalltalk10"				;//... ich k�nnte dir Sachen erz�hlen ...
	Smalltalk11					= "SVM_13_Smalltalk11"				;//... da kann man sich nicht drauf verlassen ...
	Smalltalk12					= "SVM_13_Smalltalk12"				;//... das habe ich fr�her auch immer gesagt ...
	Smalltalk13					= "SVM_13_Smalltalk13"				;//... und glaub ja nicht, dass das alles ist ...
	Smalltalk14					= "SVM_13_Smalltalk14"				;//... immer wieder das Gleiche ...
	Smalltalk15					= "SVM_13_Smalltalk15"				;//... das kann doch nicht wahr sein ...
	Smalltalk16					= "SVM_13_Smalltalk16"				;//... irgendwann musste es ja so kommen ...
	Smalltalk17					= "SVM_13_Smalltalk17"				;//... das h�tte er auch selbst wissen k�nnen ...
	Smalltalk18					= "SVM_13_Smalltalk18"				;//... das wird sich nie �ndern ...
	Smalltalk19					= "SVM_13_Smalltalk19"				;//... das ist kein Geheimnis ...
	Smalltalk20					= "SVM_13_Smalltalk20"				;//... das war keine gro�e Sache ...
	Smalltalk21					= "SVM_13_Smalltalk21"				;//... er stellt sich das immer so einfach vor ...
	Smalltalk22					= "SVM_13_Smalltalk22"				;//... das will doch keiner mehr h�ren ...
	Smalltalk23					= "SVM_13_Smalltalk23"				;//... ist doch wahr ...
	Smalltalk24					= "SVM_13_Smalltalk24"				;//... da muss man auch mal zuh�ren ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                      
	Smalltalk25					= "SVM_13_Smalltalk25"				;//... wenn wir nicht gekommen w�ren, w�re die Sache anders ausgegangen ...
	Smalltalk26					= "SVM_13_Smalltalk26"				;//... der muss einfach mehr trainieren ...
	Smalltalk27					= "SVM_13_Smalltalk27"				;//... der soll mir nichts von Pflicht erz�hlen ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                      
	Smalltalk28					= "SVM_13_Smalltalk28"				;//... Innos' Strafe ist gerecht ...
	Smalltalk29					= "SVM_13_Smalltalk29"				;//... der Pfad der Tugend ist lang und steinig ...
	Smalltalk30					= "SVM_13_Smalltalk30"				;//... nur Innos entscheidet �ber Recht und Unrecht ...
	SmalltalkKhorataAnnaQuest01			= "SVM_13_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_13_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_13_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_13_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_13_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_13_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_13_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_13_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_13_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_13_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_13_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_13_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_13_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_13_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_13_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_13_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_13_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_13_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_13_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_13_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_13_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_13_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_13_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_13_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_13_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_13_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_13_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_13_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_13_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_13_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_13_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_13_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_13_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_13_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_13_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_13_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_13_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_13_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_13_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_13_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_13_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_13_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_13_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_13_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_13_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_13_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_13_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_13_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_13_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_13_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_13_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_13_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_13_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_13_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_13_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_13_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_13_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_13_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_13_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_13_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_13_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_13_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_13_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_13_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_13_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_13_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_13_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_13_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_13_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_13_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_13_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_13_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_13_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_13_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_13_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_13_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_13_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_13_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_13_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_13_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_13_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_13_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_13_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_13_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_13_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_13_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_13_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_13_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_13_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_13_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_13_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_13_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_13_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_13_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_13_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_13_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_13_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbeigehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_13_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlanggehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_13_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_13_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_13_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_13_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_13_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_13_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_13_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_13_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_13_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_13_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_13_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_13_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_13_Addon_WrongArmor";			//Was ist das f�r Kleidung? Sie passt nicht zu dir. Lass mich in Ruhe.
	ADDON_WRONGARMOR_SLD		= "SVM_13_ADDON_WRONGARMOR_SLD";		//Du hast deine R�stung nicht an, geh und hol sie.
	ADDON_WRONGARMOR_MIL		= "SVM_13_ADDON_WRONGARMOR_MIL";		//Du solltest stolz sein, die R�stung des K�nigs zu tragen und nicht mit diesen Klamotten durch die Gegend laufen. Jetzt geh!
	ADDON_WRONGARMOR_KDF		= "SVM_13_ADDON_WRONGARMOR_KDF";		//Warum tr�gst du nicht die Kleidung unseres Ordens? Geh und denke dar�ber nach.
	ADDON_NOARMOR_BDT			= "SVM_13_ADDON_ADDON_NOARMOR_BDT";		//Hast ja noch nicht mal 'ne R�stung. Verschwinde!

	ADDON_DIEBANDIT				= "SVM_13_ADDON_DIEBANDIT";				//Du dreckiger Bandit.
	ADDON_DIRTYPIRATE			= "SVM_13_ADDON_DIRTYPIRATE";			//Du elender Pirat!

	RELMINE01			= "SVM_13_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_13_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_13_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_13_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_13_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_13_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_13_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_13_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_13_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_13_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_13_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_13_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_13_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_13_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_13_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_13_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_13_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_13_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_13_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_13_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_13_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_13_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_13_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_13_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_13_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_13_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_13_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_13_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_13_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_13_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_13_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_13_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_13_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_13_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_13_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_13_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_13_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_13_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_13_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_13_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_13_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_13_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_13_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_13_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_13_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_13_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_13_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_13_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_13_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_13_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_13_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_13_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_13_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_13_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_13_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_13_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_13_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_14 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_14_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_14_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_14_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_14_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_14_Weather"						;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_14_IGetYouStill"				;//Krieg ich dich DOCH noch!
	DieEnemy					=	"SVM_14_DieEnemy"					;//Jetzt bist du dran!
	DieMonster					=	"SVM_14_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_14_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_14_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_14_SheepKiller"					;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_14_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	Berzerk						=	"SVM_14_Berzerk"						;//UUAAARRGGGHHH!!!
	YouMurderer					=	"SVM_14_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_14_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_14_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_14_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_14_ThenIBeatYouOutOfHere"		;//Dann muss ich dich eben rausPR�GELN!
	WhatDidYouDoInThere			=	"SVM_14_WhatDidYouDoInThere"			;//Was hattest DU denn da drin zu suchen, he!?
	WillYouStopFighting			=	"SVM_14_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_14_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_14_EnemyKilled"					;//Das war's f�r dich, Penner.
	MonsterKilled				=	"SVM_14_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_14_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_14_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_14_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_14_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_14_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_14_NeverHitMeAgain"				;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_14_YouBetterShouldHaveListened"	;//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_14_GetUpAndBeGone"				;//Und jetzt mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_14_NeverEnterRoomAgain"			;//Und dass ich dich nie wieder da drin erwische!
	ThereIsNoFightingHere		=	"SVM_14_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_14_RunAway"						;//Schei�e! Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_14_Alarm"						;//ALARM!
	Guards						=	"SVM_14_Guards"						;//WACHE!
	Help						=	"SVM_14_Help"						;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_14_GoodMonsterKill"				;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_14_GoodKill"					;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_14_NOTNOW"						;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_14_RunCoward"					;//(ruft laut) Bleib stehen, du Lump!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_14_GetOutOfHere"				;//Raus hier!
	WhyAreYouInHere				=	"SVM_14_WhyAreYouInHere"				;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_14_YesGoOutOfHere"				;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_14_WhatsThisSupposedToBe"		;//Hey du! Was schleichst du da rum.
	YouDisturbedMySlumber		=	"SVM_14_YouDisturbedMySlumber"		;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_14_ITookYourGold"				;//Gold! Das ist schon mal meins ...
	ShitNoGold					=	"SVM_14_ShitNoGold"					;//Du hast noch nicht mal Gold dabei?
	ITakeYourWeapon				=	"SVM_14_ITakeYourWeapon"				;//Deine Waffe nehme ich mal lieber mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_14_WhatAreYouDoing"				;//(warnt) Hey! Pass auf!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_14_LookingForTroubleAgain"		;//(agressiv) Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_14_StopMagic"					;//Geh blo� weg mit deiner Magie!
	ISaidStopMagic				=	"SVM_14_ISaidStopMagic"				;//Weg mit der Magie! H�rst du schlecht!?
	WeaponDown					=	"SVM_14_WeaponDown"					;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_14_ISaidWeaponDown"				;//H�rst du schlecht? Ich sagte: Weg mit der Waffe!
	WiseMove					=	"SVM_14_WiseMove"					;//Na bitte, geht doch!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_14_NextTimeYoureInForIt"		;//(zu sich selbst) Dar�ber reden wir noch ...
	OhMyHead					=	"SVM_14_OhMyHead"					;//(zu sich selbst) Oh, mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_14_TheresAFight"				;//(gierig) Jetzt geht's zur Sache!
	OhMyGodItsAFight			=	"SVM_14_OhMyGodItsAFight"			;//(best�rzt) Die hauen sich den Sch�del ein ...
	GoodVictory					=	"SVM_14_GoodVictory"					;//(b�se lachend) Das hat er verdient.
	NotBad						= 	"SVM_14_NotBad"						;//(anerkennend) Gar nicht so �bel ...
	OhMyGodHesDown				=	"SVM_14_OhMyGodHesDown"				;//(zu sich selbst) Was f�r ein brutaler Kerl ...
	CheerFriend01				=	"SVM_14_CheerFriend01"				;//Ja, so ist's gut!
	CheerFriend02				=	"SVM_14_CheerFriend02"				;//Na, mach schon!
	CheerFriend03				=	"SVM_14_CheerFriend03"				;//Immer feste drauf!
	Ooh01						=	"SVM_14_Ooh01"						;//Lass dir nichts gefallen!
	Ooh02						=	"SVM_14_Ooh02"						;//Den wirst du ja wohl schaffen!
	Ooh03						=	"SVM_14_Ooh03"						;//Das gibt's doch gar nicht!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_14_WhatWasThat"					;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_14_GetOutOfMyBed"					;//Raus aus meinem Bett!
	Awake						= "SVM_14_Awake"							;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_14_TOUGHGUY_ATTACKLOST"			;//Ist ja schon gut, du hast gewonnen. Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_14_TOUGHGUY_ATTACKWON"			;//(selbstgef�llig) Muss ich dir noch mal zeigen, wer hier der Herr ist?
	TOUGHGUY_PLAYERATTACK		= "SVM_14_TOUGHGUY_PLAYERATTACK"			;//Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_14_GOLD_1000"						;//1000 Goldst�cke.
	GOLD_950					= "SVM_14_GOLD_950"						;//950 Goldst�cke.
	GOLD_900					= "SVM_14_GOLD_900"						;//900 Goldst�cke.
	GOLD_850					= "SVM_14_GOLD_850"						;//850 Goldst�cke.
	GOLD_800					= "SVM_14_GOLD_800"						;//800 Goldst�cke.
	GOLD_750					= "SVM_14_GOLD_750"						;//750 Goldst�cke.
	GOLD_700					= "SVM_14_GOLD_700"						;//700 Goldst�cke.
	GOLD_650					= "SVM_14_GOLD_650"						;//650 Goldst�cke.
	GOLD_600					= "SVM_14_GOLD_600"						;//600 Goldst�cke.
	GOLD_550					= "SVM_14_GOLD_550"						;//550 Goldst�cke.
	GOLD_500					= "SVM_14_GOLD_500"						;//500 Goldst�cke.
	GOLD_450					= "SVM_14_GOLD_450"						;//450 Goldst�cke.
	GOLD_400					= "SVM_14_GOLD_400"						;//400 Goldst�cke.
	GOLD_350					= "SVM_14_GOLD_350"						;//350 Goldst�cke.
	GOLD_300					= "SVM_14_GOLD_300"						;//300 Goldst�cke.
	GOLD_250					= "SVM_14_GOLD_250"						;//250 Goldst�cke.
	GOLD_200					= "SVM_14_GOLD_200"						;//200 Goldst�cke.
	GOLD_150					= "SVM_14_GOLD_150"						;//150 Goldst�cke.
	GOLD_100					= "SVM_14_GOLD_100"						;//100 Goldst�cke.
	GOLD_90						= "SVM_14_GOLD_90"						;//90 Goldst�cke.
	GOLD_80						= "SVM_14_GOLD_80"						;//80 Goldst�cke.
	GOLD_70						= "SVM_14_GOLD_70"						;//70 Goldst�cke.
	GOLD_60						= "SVM_14_GOLD_60"						;//60 Goldst�cke.
	GOLD_50						= "SVM_14_GOLD_50"						;//50 Goldst�cke.
	GOLD_40						= "SVM_14_GOLD_40"						;//40 Goldst�cke.
	GOLD_30						= "SVM_14_GOLD_30"						;//30 Goldst�cke.
	GOLD_20						= "SVM_14_GOLD_20"						;//20 Goldst�cke.
	GOLD_10						= "SVM_14_GOLD_10"						;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_14_Smalltalk01"					;//... ich kann das nicht glauben ...
	Smalltalk02					= "SVM_14_Smalltalk02"					;//... ich w�re mir da nicht so sicher ...
	Smalltalk03					= "SVM_14_Smalltalk03"					;//... das hat er doch vorher gewusst ....
	Smalltalk04					= "SVM_14_Smalltalk04"					;//... ich wei� langsam nicht mehr, was ich glauben soll ...
	Smalltalk05					= "SVM_14_Smalltalk05"					;//... ich wei� gar nicht, warum er sich so aufregt ...
	Smalltalk06					= "SVM_14_Smalltalk06"					;//... noch mehr �rger kann ich nicht gebrauchen ...
	Smalltalk07					= "SVM_14_Smalltalk07"					;//... ich hab so einiges geh�rt ...
	Smalltalk08					= "SVM_14_Smalltalk08"					;//... davon lass ich lieber die Finger ...
	Smalltalk09					= "SVM_14_Smalltalk09"					;//... man darf halt nicht alles glauben, was man h�rt ...
	Smalltalk10					= "SVM_14_Smalltalk10"					;//... von mir hat er das nicht ...
	Smalltalk11					= "SVM_14_Smalltalk11"					;//... ich habe mir das schon gedacht ...
	Smalltalk12					= "SVM_14_Smalltalk12"					;//... meine Meinung will ja keiner h�ren ...
	Smalltalk13					= "SVM_14_Smalltalk13"					;//... das hat er wirklich nicht verdient ...
	Smalltalk14					= "SVM_14_Smalltalk14"					;//... sag nicht, das hast du nicht gewusst ...
	Smalltalk15					= "SVM_14_Smalltalk15"					;//... das war doch klar ...
	Smalltalk16					= "SVM_14_Smalltalk16"					;//... wo hast du das denn schon wieder her ...
	Smalltalk17					= "SVM_14_Smalltalk17"					;//... das kann ja nicht ewig so weiter gehen ...
	Smalltalk18					= "SVM_14_Smalltalk18"					;//... ich hab da so meine eigene Meinung ...
	Smalltalk19					= "SVM_14_Smalltalk19"					;//... es war genau so, wie du sagst ...
	Smalltalk20					= "SVM_14_Smalltalk20"					;//... ich glaub nicht, dass sich daran was �ndert ...
	Smalltalk21					= "SVM_14_Smalltalk21"					;//... das h�re ich zum ersten Mal ...
	Smalltalk22					= "SVM_14_Smalltalk22"					;//... wir k�nnen nur abwarten ...
	Smalltalk23					= "SVM_14_Smalltalk23"					;//... die Probleme habe ich kommen sehen ...
	Smalltalk24					= "SVM_14_Smalltalk24"					;//... warum h�rt eigentlich keiner auf mich ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                           
	Smalltalk25					= "SVM_14_Smalltalk25"					;//... der ist gerannt, als ob Beliar selbst hinter ihm her w�re ...
	Smalltalk26					= "SVM_14_Smalltalk26"					;//... wir haben ihn nat�rlich dann doch noch gekriegt ...
	Smalltalk27					= "SVM_14_Smalltalk27"					;//... da muss man mal ganz kr�ftig dazwischenhauen ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                           
	Smalltalk28					= "SVM_14_Smalltalk28"					;//... einige wissen gar nicht, wie sehr sie sich vers�ndigen ...
	Smalltalk29					= "SVM_14_Smalltalk29"					;//... denn so ist es Innos' Wille ...
	Smalltalk30					= "SVM_14_Smalltalk30"					;//... seine Taten waren gerecht ...
	SmalltalkKhorataAnnaQuest01			= "SVM_14_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_14_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_14_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_14_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_14_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_14_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_14_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_14_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_14_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_14_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_14_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_14_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_14_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_14_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_14_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_14_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_14_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_14_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_14_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_14_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_14_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_14_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_14_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_14_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_14_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_14_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_14_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_14_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_14_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_14_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_14_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_14_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_14_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_14_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_14_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_14_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_14_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_14_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_14_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_14_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_14_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_14_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_14_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_14_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_14_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_14_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_14_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_14_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_14_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_14_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_14_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_14_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_14_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_14_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_14_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_14_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_14_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_14_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_14_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_14_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_14_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_14_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_14_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_14_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_14_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_14_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_14_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_14_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_14_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_14_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_14_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_14_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_14_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_14_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_14_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_14_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_14_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_14_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_14_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_14_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_14_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_14_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_14_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_14_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_14_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_14_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_14_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_14_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_14_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_14_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_14_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_14_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_14_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_14_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_14_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_14_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_14_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbeigehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_14_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlanggehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_14_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_14_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_14_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_14_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_14_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_14_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_14_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_14_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_14_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_14_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_14_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_14_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_14_Addon_WrongArmor";			//Die Kleidung passt nicht zu dir. Du hast bestimmt was zu verbergen. Lass mich Ruhe.
	ADDON_WRONGARMOR_SLD		= "SVM_14_ADDON_WRONGARMOR_SLD";		//Wenn du mit mir reden willst, musst du unsere R�stung tragen.
	ADDON_WRONGARMOR_MIL		= "SVM_14_ADDON_WRONGARMOR_MIL";		//Sei stolz auf die Armee und renn nicht mit diesen Klamotten durch die Gegend. Zieh dich erst mal um.
	ADDON_WRONGARMOR_KDF		= "SVM_14_ADDON_WRONGARMOR_KDF";		//Deine Kleidung ist unserem Orden nicht angemessen. Zieh dich um.
	ADDON_NOARMOR_BDT			= "SVM_14_ADDON_ADDON_NOARMOR_BDT";		//Hast ja noch nicht mal 'ne R�stung. Verschwinde!

	ADDON_DIEBANDIT				= "SVM_14_ADDON_DIEBANDIT";				//Stirb, Bandit.
	ADDON_DIRTYPIRATE			= "SVM_14_ADDON_DIRTYPIRATE";			//Stirb, Pirat.

	RELMINE01			= "SVM_14_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_14_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_14_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_14_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_14_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_14_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_14_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_14_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_14_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_14_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_14_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_14_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_14_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_14_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_14_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_14_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_14_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_14_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_14_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_14_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_14_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_14_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_14_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_14_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_14_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_14_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_14_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_14_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_14_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_14_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_14_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_14_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_14_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_14_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_14_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_14_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_14_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_14_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_14_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_14_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_14_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_14_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_14_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_14_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_14_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_14_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_14_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_14_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_14_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_14_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_14_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_14_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_14_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_14_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_14_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_14_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_14_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

INSTANCE SVM_15	(C_SVM)		//	PLAYER	trocken,ernst
{
	// ------ Player-Only SVMs ---------------------------------------------------------------------
	SC_HeyTurnAround		= 	"SVM_15_SC_HeyTurnAround"			;//Hey du!
	SC_HeyTurnAround02		= 	"SVM_15_SC_HeyTurnAround02"			;//Hey du!
	SC_HeyTurnAround03		= 	"SVM_15_SC_HeyTurnAround03"			;//Hey!
	SC_HeyTurnAround04		= 	"SVM_15_SC_HeyTurnAround04"			;//Hey!
	
	SC_HeyWaitASecond		= 	"SVM_15_SC_HeyWaitASecond"			;//Warte mal!

	DoesntWork				= 	"SVM_15_DoesntWork"					;//Funktioniert nicht
	PickBroke				= 	"SVM_15_PickBroke"					;//Hm, abgebrochen.
	NeedKey					= 	"SVM_15_NeedKey"					;//Daf�r brauch ich den Schl�ssel ...
	NoMorePicks				= 	"SVM_15_NoMorePicks"				;//Keine Dietriche mehr ...
	NoPickLockTalent		= 	"SVM_15_NoPickLockTalent"			;//Vom Schl�sserknacken versteh ich nichts.
	NoSweeping				= 	"SVM_15_NoSweeping"					;//Alle Kammern auszufegen dauert ewig!
	
	PICKLOCKORKEYMISSING	= 	"SVM_15_PICKLOCKORKEYMISSING"		;//Hm ... ich hab weder einen Dietrich noch den Schl�ssel.
	KEYMISSING				= 	"SVM_15_KEYMISSING"					;//Ohne den richtigen Schl�ssel kriege ich das nie auf!
	PICKLOCKMISSING			= 	"SVM_15_PICKLOCKMISSING"			;//Ein paar Dietriche w�ren hilfreich!
	NEVEROPEN				= 	"SVM_15_NEVEROPEN"					;//Das Ding krieg ich nie auf!
	MISSINGITEM				= 	"SVM_15_MISSINGITEM"				;//Womit denn?
	DONTKNOW				= 	"SVM_15_DONTKNOW"					;//Hmm ... Nein ...
	NOTHINGTOGET			= 	"SVM_15_NOTHINGTOGET"				;//Da ist nichts zu holen ...
	NOTHINGTOGET02			= 	"SVM_15_NOTHINGTOGET02"				;//Nichts zu holen ...
	NOTHINGTOGET03			= 	"SVM_15_NOTHINGTOGET03"				;//Nichts zu pl�ndern ...
	
	// ------ sonstige SVMs -------------------------------------------------------------------------
	Aargh_1					=	"SVM_15_Aargh_1"					;//Aargh
	Aargh_2					=	"SVM_15_Aargh_2"					;//Aargh
	Aargh_3					=	"SVM_15_Aargh_3"					;//Aargh
	Dead					=	"SVM_15_Dead"						;//Aaargl
	Awake					=	"SVM_15_Awake"						;//(wacht auf)
	
	// ------ Story SVMs ----------------------------------------------------------------------------
	
	IRDORATHTHEREYOUARE		= 	"SVM_15_IRDORATHTHEREYOUARE"		;//Mmh. Da hast du dich also versteckt. Verdammt weit weg. Mmh. Ich werde ein Schiff brauchen, um dahin zu kommen.
	HEALSHRINE				= 	"SVM_15_HEALSHRINE"					;//Innos, gew�hre mir deine Hilfe und reinige diesen Schrein.
	HEALLASTSHRINE			= 	"SVM_15_HEALLASTSHRINE"				;//Innos, gew�hre mir deine Hilfe und so weiter ... So. Ich sch�tze, das sollte das letzte Mal gewesen sein.
	SCOPENSIRDORATHBOOK		= 	"SVM_15_SCOPENSIRDORATHBOOK"		;//XARAK BENDARDO! Ah. Das Buch �ffnet sich. Es ist ein Brief und ein Schl�ssel in dem Buch versteckt.
	SCOPENSLASTDOOR			= 	"SVM_15_SCOPENSLASTDOOR"			;//�ffne dich!

	//---------Addon SVMs----------------------------------------------------------------------------
	//ADDON>
	TRADE_1					= 	"SVM_15_Addon_TRADE_1"					;//Lass uns handeln.
	TRADE_2					= 	"SVM_15_Addon_TRADE_2"					;//Zeig mir deine Ware.
	TRADE_3					=	"SVM_15_Addon_TRADE_3"					;//Zeig mal, was du hast.
	
	VERSTEHE				=   "SVM_15_Addon_VERSTEHE"					;//Verstehe.
	FOUNDTREASURE			=   "SVM_15_Addon_FOUNDTREASURE"			;//Ah. Ich glaube, ich habe etwas gefunden.
	CANTUNDERSTANDTHIS		=   "SVM_15_Addon_CANTUNDERSTANDTHIS"		;//Ich verstehe nicht ...
	CANTREADTHIS			= 	"SVM_15_Addon_CANTREADTHIS"				;//Das kann ich nicht lesen!
	STONEPLATE_1			= 	"SVM_15_Addon_STONEPLATE_1"				;//AKHANTAR!
	STONEPLATE_2			= 	"SVM_15_Addon_STONEPLATE_2"				;//JHERHEDRA!
	STONEPLATE_3			= 	"SVM_15_Addon_STONEPLATE_3"				;//URIZIEL RATIS!
		
	COUGH					=   "SVM_15_Addon_COUGH"					;//(hust) Oh Mann, Brrr!!
	HUI						=	"SVM_15_Addon_HUI"						;//Huihuihui!
	
	ATTENTAT_ADDON_DESCRIPTION	=	"SVM_15_ATTENTAT_ADDON_DESCRIPTION"		;//Was wei�t du �ber das Attentat auf Esteban?
	ATTENTAT_ADDON_DESCRIPTION2 = 	"SVM_15_ATTENTAT_ADDON_DESCRIPTION2"	;//Wegen des Attentats auf Esteban ...
	ATTENTAT_ADDON_PRO			=	"SVM_15_ATTENTAT_ADDON_PRO"				;//Ich will diese Verr�ter t�ten.
	ATTENTAT_ADDON_CONTRA		=	"SVM_15_ATTENTAT_ADDON_CONTRA"			;//Ich suche diese Typen, um gegen Esteban vorzugehen.
	
	MINE_ADDON_DESCRIPTION		=	"SVM_15_MINE_ADDON_DESCRIPTION"		;//Du wirst in der Mine gebraucht.
	ADDON_SUMMONANCIENTGHOST	=	"SVM_15_ADDON_SUMMONANCIENTGHOST"	;//Ighoriat Thorul. Erscheine mir, Quarhodron, alter F�hrer der kriegerischen Kaste!
	ADDON_ANCIENTGHOST_NOTNEAR	=	"SVM_15_ADDON_ANCIENTGHOST_NOTNEAR"	;//Mmh ... Das funktioniert hier nicht.
	ADDON_GOLD_DESCRIPTION		=	"SVM_15_ADDON_GOLD_DESCRIPTION"		;//Was muss ich �ber's Goldhacken wissen?
	
	ADDON_THISLITTLEBASTARD		=   "SVM_15_Addon_ThisLittleBastard";		//Aha. Francis' Heuerbuch. Der Mann scheint sich eine Menge Gold in die eigene Tasche zu wirtschaften.
	ADDON_OPENADANOSTEMPLE		=   "SVM_15_Addon_OPENADANOSTEMPLE";		//JHERHEDRA AKHANTAR!

	//ADDON<

	// MOD

	WHOAREYOU = "SVM_15_WerBistDu";				//Wer bist du?
	MATTEOPAPER = "SVM_15_Flugblatt";			//Ich hab hier ein Flugblatt f�r dich.
	WANNAMARRY = "SVM_15_WannaMarry";			//Willst du mich heiraten?
	HAVEFREUDENSPENDER = "SVM_15_HAVEFREUDENSPENDER";	//Ich hab hier ein Fl�schchen Freudenspender f�r dich.
	NO = "SVM_15_No";					//Nein.
	HIERNIMM = "SVM_15_HierNimm";				//Hier, nimm.
	HIER = "SVM_15_Hier";					//Hier.
	XERESISTIMMORTAL = "SVM_15_XERESISTIMMORTAL";		//Verdammt, er nimmt keinen Schaden.
	READZETTEL = "SVM_15_READZETTEL";			//Das sollte ich lieber mal lesen.
	WIESONICHT = "SVM_15_WIESONICHT";			//Wieso nicht?
	WASMACHENWIRJETZT = "SVM_15_WASMACHENWIRJETZT";		//Was machen wir jetzt?
	WASISTDENNHIERLOS = "SVM_15_WASISTDENNHIERLOS";		//Was ist denn hier los?
	WASMEINSTDU = "SVM_15_WASMEINSTDU";			//Was meinst du?
	WASISTDENN = "SVM_15_WASISTDENN";			//Was ist denn?
	WASISTDAS = "SVM_15_WASISTDAS";				//Was ist das?
	WASISTZUTUN = "SVM_15_WASISTZUTUN";			//Was ist zu tun?
	WIESOLLICHVORGEHEN = "SVM_15_WIESOLLICHVORGEHEN";	//Wie soll ich vorgehen?
	KANNSTDUMIRWASBEIBRINGEN = "SVM_15_KANNSTDUMIRWASBEIBRINGEN";	//Kannst du mir was beibringen?
	WOFINDEICHIHN = "SVM_15_WOFINDEICHIHN";			//Wo finde ich ihn?
	WASMACHSTDUHIER = "SVM_15_WASMACHSTDUHIER";		//Was machst du hier?

	ALTERWALDMANN01 = "SVM_15_ALTERWALDMANN01";	//Hey, wei�t du zuf�llig etwas �ber einen H�ter der Tiere und des Waldes, der in den W�ldern um Khorata wohnhaft sein soll?
	ALTERWALDMANN02 = "SVM_15_ALTERWALDMANN02";	//Kannst du mir etwas zu dem alten Mann des Waldes verraten?
	ALTERWALDMANN03 = "SVM_15_ALTERWALDMANN03";	//Wei�t du etwas zu dem alten Mann des Waldes?
	ALTERWALDMANN04 = "SVM_15_ALTERWALDMANN04";	//Was wei�t du �ber den alten Mann des Waldes?
	ALTERWALDMANN05 = "SVM_15_ALTERWALDMANN05";	//Kannst du mir etwas zu dem alten Mann des Waldes verraten?

	IRDORATHGEHTLOS = "SVM_15_IRDORATHGEHTLOS";	//Es geht los. Wirst du mich auf die Insel begleiten?
	IRDORATHGEHBACK = "SVM_15_IRDORATHGEHBACK";	//Geh wieder zur�ck zum Schiff.
	IRDORATHGEHBACK = "SVM_15_IRDORATHNOWAY";	//Hmm, hier geht es nicht weiter. Ob sich etwas mit den beiden Hebeln bewegen l�sst?
	IRDORATHGEHBACK = "SVM_15_IRDORATHHEBEL";	//Kannst du den einen Hebel dort benutzen, w�hrend ich den anderen bewege?
	IRDORATHGEHBACK = "SVM_15_IRDORATHHEBELPROBLEM";	//Verdammt. Den anderen Hebel hatte ich doch eben schon nach oben bewegt. Ohne die Hilfe eines Begleiters wird das nichts.


	// Kommentare zum R�ben ziehen

	RUEBE01_01	=	"SVM_15_RUEBE01_01";	//Diese R�be sitzt noch zu fest.
	RUEBE01_02	=	"SVM_15_RUEBE01_02";	//Ich probiere es lieber woanders.
	RUEBE01_03	=	"SVM_15_RUEBE01_03";	//Hier wird das nichts.
	RUEBE02	=	"SVM_15_RUEBE02";	//Diese R�be sitzt immer noch zu fest.
	RUEBE03	=	"SVM_15_RUEBE03";	//Ich kann auch tausend Mal ziehen, die R�be sitzt trotzdem fest.
	RUEBE04_01	=	"SVM_15_RUEBE04_01";	//Hier wackelt doch was.
	RUEBE04_02	=	"SVM_15_RUEBE04_02";	//Die l�sst sich ganz einfach ziehen.
	RUEBE04_03	=	"SVM_15_RUEBE04_03";	//Eine weniger.


	// Kommentar zum Umsehen

	LOOKFORSOMETHING	=	"SVM_15_LOOKFORSOMETHING";	//Ich sollte mich hier lieber noch mal umsehen.

	// Blubber f�r den g�ttlichen Boten (Hund Adanos bzw. Baal Netbek)

	GODLYBOTE01	=	"SVM_15_GODLYBOTE01";	//�hh, ich glaube nicht, dass du derjenige bist, mit dem ich sprechen will.
	GODLYBOTE02	=	"SVM_15_GODLYBOTE02";	//�hh, bist du zuf�llig ein g�ttlicher Bote?

	// Kommentar, wenn Alvars Kristall gefunden wird

	ALVARKRISTALL01	=	"SVM_15_ALVARKRISTALL01";	//Aha, was haben wir den hier ...
	ALVARKRISTALL02	=	"SVM_15_ALVARKRISTALL02";	//Na bitte, ein sch�ner, magischer Kristall.
	ALVARKRISTALL03	=	"SVM_15_ALVARKRISTALL03";	//Das ... das ist doch nicht m�glich. Wie k�nnen die Menschen nur so blind sein. Aber ... was ist das?

	// Kommentar, wenn Buch �ber Eriskult gelesen

	ERISKULTBUCH01	=	"SVM_15_ERISKULTBUCH01";	//Aha, das erkl�rt nat�rlich einiges. Dann werde ich wohl den Kristall bergen m�ssen ... Hmm, ob die Erl�uterungen zum Schluss vielleicht auch beim Feilschen hilfreich sein k�nnten ...

	// Kommentar zum B�cherregal

	BUECHERREGALFINDPAPER	=	"SVM_15_BUECHERREGALFINDPAPER";	//Ah, hier ist etwas Papier ...
	BUECHERREGALNO		=	"SVM_15_BUECHERREGALNO";	//Das habe ich schon durchsucht.
	BUECHERREGALNOTHING	=	"SVM_15_BUECHERREGALNOTHING";	//Nur Staub und alte B�cher ...

	// Faule �pfel unterjubeln

	PLACEAPFEL01	=	"SVM_15_PLACEAPFEL01";	//Hat sich da unter deinem Stand gerade etwas bewegt?
	PLACEAPFEL02	=	"SVM_15_PLACEAPFEL02";	//Ach, das war doch nichts.
	PLACEAPFEL03	=	"SVM_15_PLACEAPFEL03";	//Hey, wird der da dr�ben nicht gesucht?
	PLACEAPFEL04	=	"SVM_15_PLACEAPFEL04";	//Oh, da hab ich ihn wohl verwechselt.
	PLACEAPFEL05	=	"SVM_15_PLACEAPFEL05";	//Sch�ne �pfel hast du da ...

	// Gr�ne Erzader hacken

	NOHACKE		=	"SVM_15_NOHACKE";	//Hoppla, wo ist denn meine Hacke abgeblieben? Muss mir wohl eine neue besorgen.
	HACKESCHLECHT	=	"SVM_15_HACKESCHLECHT";	//Oha. Das Zeug ist aber hart. Das ist meine Hacke wohl nicht zu gebrauchen. Sollte wohl mal mit einem Schmied reden.

	// Wenn Fokus nicht einsetzbar

	FOKUSNICHTEINSETZEN		=	"SVM_15_FOKUSNICHTEINSETZEN";	//Ich sollte zun�chst mit Saturas sprechen.

	// Plagenquest

	PLAGENQUEST01	=	"SVM_15_PLAGENQUEST01";	//Mir scheint, ihr braucht einen Kammerj�ger.
	PLAGENQUEST02	=	"SVM_15_PLAGENQUEST02";	//Gibt es irgendwelche Anhaltspunkte f�r die Ursachen?
	PLAGENQUEST03	=	"SVM_15_PLAGENQUEST03";	//Kann ich mich bis dahin irgendwie n�tzlich einbringen?
	PLAGENQUEST04	=	"SVM_15_PLAGENQUEST04";	//... und nun ist die Plage zur�ckgekommen. Wie wurde man ihr damals Herr?
	PLAGENQUEST05	=	"SVM_15_PLAGENQUEST05";	//Die chemische Keule?
	PLAGENQUEST06	=	"SVM_15_PLAGENQUEST06";	//Und befindet sich eine solche Keule noch in eurem Besitz?
	PLAGENQUEST07	=	"SVM_15_PLAGENQUEST07";	//Kann ich sie mal sehen?
	PLAGENQUEST08	=	"SVM_15_PLAGENQUEST08";	//Hm ...
	PLAGENQUEST09	=	"SVM_15_PLAGENQUEST09";	//An die n�tigen Rohstoffe m�sste ich kommen.
	PLAGENQUEST10	=	"SVM_15_PLAGENQUEST10";	//Die Keule konnte den Insekten Einhalt gebieten. Ich habe sie alle bezwungen.
	PLAGENQUEST11	=	"SVM_15_PLAGENQUEST11";	//Der erste Schritt?
	PLAGENQUEST12	=	"SVM_15_PLAGENQUEST12";	//Riesenbug? Dann darf ich mich also auf die Suche begeben ...
	PLAGENQUEST13	=	"SVM_15_PLAGENQUEST13";	//Ja?
	PLAGENQUEST14	=	"SVM_15_PLAGENQUEST14";	//Aha. Aber was gibt dir die Gewissheit, dass er wirklich ein Nachkomme ist? Ich meine, nach so vielen Jahrhunderten ...
	PLAGENQUEST15	=	"SVM_15_PLAGENQUEST15";	//Ja?
	PLAGENQUEST16	=	"SVM_15_PLAGENQUEST16";	//Hmpf ...
	PLAGENQUEST17	=	"SVM_15_PLAGENQUEST17";	//Es ist vollbracht. Der Riesenbug ist bezwungen.

	// Herobotquest

	HEROBOTQUEST01	=	"SVM_15_HEROBOTQUEST01";	//Was ist passiert?
	HEROBOTQUEST02	=	"SVM_15_HEROBOTQUEST02";	//Dann ist Andre also tot ...

	// Ambis der Schwarzen Novizen

	AMBISNOV01	=	"SVM_15_AMBISNOV01";	//Wer hat hier das Sagen?
	AMBISNOV03	=	"SVM_15_AMBISNOV03";	//Was gibt es hier f�r wichtige Orte?
	AMBISNOV04	=	"SVM_15_AMBISNOV04";	//Ist in letzter Zeit was Interessantes passiert?

	// Gespr�ch mit Sch�rfern wegen "�rger im Kessel"

	KESSELPROBLEM01	=	"SVM_15_KESSELPROBLEM01";	//Hey, habe geh�rt, dass wilde Tiere euch bedrohen und einer von euch get�tet wurde.
	KESSELPROBLEM02	=	"SVM_15_KESSELPROBLEM02";	//Und keiner hat was bemerkt?
	KESSELPROBLEM03	=	"SVM_15_KESSELPROBLEM03";	//Was?!

	// Anschlagtafel-Gespr�che

	ANSCHLAGTAFEL01	=	"SVM_15_ANSCHLAGTAFEL01";	//Ich habe deinen Aushang an der Anschlagtafel gesehen ...
	ANSCHLAGTAFEL02	=	"SVM_15_ANSCHLAGTAFEL02";	//Ich werde dir die Sachen besorgen.

	// Held probiert Sachen f�r Bierhexen-Quest

	SCHMECKTNORMAL	=	"SVM_15_SCHMECKTNORMAL";	//Schmeckt ganz normal, denke ich.
	SCHMECKTECKLIG	=	"SVM_15_SCHMECKTECKLIG";	//Bei Adanos, das ist ja scheu�lich!

	// Held sollte eingesammeltes Item benutzen

	SHOULDUSE	=	"SVM_15_SHOULDUSE";	//Das sollte ich mir mal genauer ansehen!

	// Held kennt Chromanin-R�tsel aus Vorg�nger

	KNOWSRIDDLER	=	"SVM_15_KNOWSRIDDLER";	//Irgendwie kommt mir das bekannt vor ...

	// Held riecht Tabak von Jackal

	SMELLTABAK	=	"SVM_15_SMELLTABAK";	//Hier riecht es doch nach Vanille und Safran.

	// Schl�sser knacken

	PICKLOCKFAILURE	=	"SVM_15_PICKLOCKFAILURE";	//Mist, der ist abgebrochen ...
	PICKLOCKBROKEN	=	"SVM_15_PICKLOCKBROKEN";	//Mist ... wieder von vorne.

	// B�cher nicht lesen k�nnen

	BOOKSTANDNOTREADABLE01	=	"SVM_15_BOOKSTANDNOTREADABLE01";	//Diese Schriftzeichen kann ich nicht entziffern.
	BOOKSTANDNOTREADABLE02	=	"SVM_15_BOOKSTANDNOTREADABLE02";	//Hier ist der Wurm drin. Der B�cherwurm.
	BOOKSTANDNOTREADABLE03	=	"SVM_15_BOOKSTANDNOTREADABLE03";	//Sagen �ber die G�tter
	BOOKSTANDNOTREADABLE04	=	"SVM_15_BOOKSTANDNOTREADABLE04";	//Texte �ber gro�e Magier und weise M�nner
	BOOKSTANDNOTREADABLE05	=	"SVM_15_BOOKSTANDNOTREADABLE05";	//Die Fauna und Flora
	BOOKSTANDNOTREADABLE06	=	"SVM_15_BOOKSTANDNOTREADABLE06";	//Wesen von Magie 
	BOOKSTANDNOTREADABLE07	=	"SVM_15_BOOKSTANDNOTREADABLE07";	//Untote und d�monische Kreaturen
	BOOKSTANDNOTREADABLE08	=	"SVM_15_BOOKSTANDNOTREADABLE08";	//Gro�e Schlachten
	BOOKSTANDNOTREADABLE09	=	"SVM_15_BOOKSTANDNOTREADABLE09";	//Die magische Zwischenwelt
	BOOKSTANDNOTREADABLE10	=	"SVM_15_BOOKSTANDNOTREADABLE10";	//Gro�e Bankette und prunkhafte Feste
	BOOKSTANDNOTREADABLE11	=	"SVM_15_BOOKSTANDNOTREADABLE11";	//M�rchen und Geschichten
	BOOKSTANDNOTREADABLE12	=	"SVM_15_BOOKSTANDNOTREADABLE12";	//Alte �berlieferungen
	BOOKSTANDNOTREADABLE13	=	"SVM_15_BOOKSTANDNOTREADABLE13";	//Etwas �ber die Rechtsprechung und das Gesetz
	BOOKSTANDNOTREADABLE14	=	"SVM_15_BOOKSTANDNOTREADABLE14";	//Etwas �ber die soziale Ordnung und das Miteinander

	// Taschendiebstahl

	PICKPOCKET_BESCHIMPFEN	=	"SVM_15_PICKPOCKET_BESCHIMPFEN";	//Leck mich.
	PICKPOCKET_BESTECHUNG	=	"SVM_15_PICKPOCKET_BESTECHUNG";		//K�nnen wir dieses Missverst�ndnis vielleicht irgendwie aus dem Weg r�umen?
	PICKPOCKET_HERAUSREDEN	=	"SVM_15_PICKPOCKET_HERAUSREDEN";	//Ich habe keine Ahnung was du meinst.
};

instance SVM_16 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_16_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_16_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_16_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_16_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_16_Weather"						;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_16_IGetYouStill"				;//Krieg' ich dich DOCH noch!
	DieEnemy					=	"SVM_16_DieEnemy"					;//Jetzt bist du dran!
	DieMonster					=	"SVM_16_DieMonster"					;//Da ist schon wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_16_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_16_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_16_SheepKiller"					;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_16_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_16_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_16_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_16_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_16_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_16_ThenIBeatYouOutOfHere"		;//Dann muss ich dich eben rausPR�GELN!
	WhatDidYouDoInThere			=	"SVM_16_WhatDidYouDoInThere"			;//Was hattest DU denn da drin zu suchen, he!?
	WillYouStopFighting			=	"SVM_16_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_16_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_16_EnemyKilled"				;//Das war's f�r dich, Junge.
	MonsterKilled				=	"SVM_16_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_16_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_16_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_16_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_16_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_16_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_16_NeverHitMeAgain"				;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_16_YouBetterShouldHaveListened"	;//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_16_GetUpAndBeGone"				;//Und jetzt mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_16_NeverEnterRoomAgain"			;//Und dass ich dich nie wieder da drin erwische, okay?
	ThereIsNoFightingHere		=	"SVM_16_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein, okay?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_16_RunAway"						;//Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_16_Alarm"					;//ALARM!
	Guards						=	"SVM_16_Guards"					;//WACHE!
	Help						=	"SVM_16_Help"					;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_16_GoodMonsterKill"			;//(ruft zu) Gut gemacht!
	GoodKill					= 	"SVM_16_GoodKill"				;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_16_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_16_RunCoward"				;//(ruft laut) Bleib stehen, du Feigling!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_16_GetOutOfHere"			;//Mach, dass du hier rauskommst!
	WhyAreYouInHere				=	"SVM_16_WhyAreYouInHere"		;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_16_YesGoOutOfHere"			;//Ja, mach, dass du hier wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_16_WhatsThisSupposedToBe"	;//Hey du! Was schleichst du da rum.
	YouDisturbedMySlumber		=	"SVM_16_YouDisturbedMySlumber"	;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_16_ITookYourGold"			;//Danke f�r das Gold, du Held!
	ShitNoGold					=	"SVM_16_ShitNoGold"				;//Du arme Wurst, hast ja nicht mal Gold dabei!
	ITakeYourWeapon				=	"SVM_16_ITakeYourWeapon"			;//Die Waffe nehm ich mal besser an mich!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_16_WhatAreYouDoing"			;//(warnt) Pass auf! Noch mal, und ich verpass dir eine.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_16_LookingForTroubleAgain"	;//Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_16_StopMagic"				;//H�r auf mit dieser Magie-Schei�e!
	ISaidStopMagic				=	"SVM_16_ISaidStopMagic"			;//Willst du Schl�ge? H�r sofort damit auf!!!
	WeaponDown					=	"SVM_16_WeaponDown"				;//Steck die Waffe weg!
	ISaidWeaponDown				=	"SVM_16_ISaidWeaponDown"		;//Steck endlich die Schei�waffe weg!
	WiseMove					=	"SVM_16_WiseMove"				;//Kluges Kerlchen!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_16_NextTimeYoureInForIt"	;//(zu sich selbst) Das n�chste Mal werden wir ja sehen ...
	OhMyHead					=	"SVM_16_OhMyHead"				;//(zu sich selbst) Oh Mann, mein Kopf ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_16_TheresAFight"			;//(gierig) Ah, ein Kampf!
	OhMyGodItsAFight			=	"SVM_16_OhMyGodItsAFight"		;//(best�rzt) Mein Gott, ein Kampf!
	GoodVictory					=	"SVM_16_GoodVictory"			;//(b�se lachend) Dem hast du's gezeigt!
	NotBad						= 	"SVM_16_NotBad"					;//(anerkennend) Nicht schlecht ...
	OhMyGodHesDown				=	"SVM_16_OhMyGodHesDown"			;//(zu sich selbst) Mein Gott! Wie brutal ...
	CheerFriend01				=	"SVM_16_CheerFriend01"			;//Hau drauf!
	CheerFriend02				=	"SVM_16_CheerFriend02"			;//Zeig's ihm!
	CheerFriend03				=	"SVM_16_CheerFriend03"			;//Mach ihn fertig!
	Ooh01						=	"SVM_16_Ooh01"					;//Schlag zur�ck!
	Ooh02						=	"SVM_16_Ooh02"					;//Pass doch auf!
	Ooh03						=	"SVM_16_Ooh03"					;//Oh! Das tat weh!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_16_WhatWasThat"				;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_16_GetOutOfMyBed"			;//Das ist mein Bett!
	Awake						= "SVM_16_Awake"					;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_16_GOLD_1000"					;//1000 Goldst�cke.
	GOLD_950					= "SVM_16_GOLD_950"					;//950 Goldst�cke.
	GOLD_900					= "SVM_16_GOLD_900"					;//900 Goldst�cke.
	GOLD_850					= "SVM_16_GOLD_850"					;//850 Goldst�cke.
	GOLD_800					= "SVM_16_GOLD_800"					;//800 Goldst�cke.
	GOLD_750					= "SVM_16_GOLD_750"					;//750 Goldst�cke.
	GOLD_700					= "SVM_16_GOLD_700"					;//700 Goldst�cke.
	GOLD_650					= "SVM_16_GOLD_650"					;//650 Goldst�cke.
	GOLD_600					= "SVM_16_GOLD_600"					;//600 Goldst�cke.
	GOLD_550					= "SVM_16_GOLD_550"					;//550 Goldst�cke.
	GOLD_500					= "SVM_16_GOLD_500"					;//500 Goldst�cke.
	GOLD_450					= "SVM_16_GOLD_450"					;//450 Goldst�cke.
	GOLD_400					= "SVM_16_GOLD_400"					;//400 Goldst�cke.
	GOLD_350					= "SVM_16_GOLD_350"					;//350 Goldst�cke.
	GOLD_300					= "SVM_16_GOLD_300"					;//300 Goldst�cke.
	GOLD_250					= "SVM_16_GOLD_250"					;//250 Goldst�cke.
	GOLD_200					= "SVM_16_GOLD_200"					;//200 Goldst�cke.
	GOLD_150					= "SVM_16_GOLD_150"					;//150 Goldst�cke.
	GOLD_100					= "SVM_16_GOLD_100"					;//100 Goldst�cke.
	GOLD_90						= "SVM_16_GOLD_90"					;//90 Goldst�cke.
	GOLD_80						= "SVM_16_GOLD_80"					;//80 Goldst�cke.
	GOLD_70						= "SVM_16_GOLD_70"					;//70 Goldst�cke.
	GOLD_60						= "SVM_16_GOLD_60"					;//60 Goldst�cke.
	GOLD_50						= "SVM_16_GOLD_50"					;//50 Goldst�cke.
	GOLD_40						= "SVM_16_GOLD_40"					;//40 Goldst�cke.
	GOLD_30						= "SVM_16_GOLD_30"					;//30 Goldst�cke.
	GOLD_20						= "SVM_16_GOLD_20"					;//20 Goldst�cke.
	GOLD_10						= "SVM_16_GOLD_10"					;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_16_Smalltalk01"				;//... wirklich? Das ist ja interessant ...
	Smalltalk02					= "SVM_16_Smalltalk02"				;//... ich glaube da nicht dran ...
	Smalltalk03					= "SVM_16_Smalltalk03"				;//... mein Mann sieht das anders ...
	Smalltalk04					= "SVM_16_Smalltalk04"				;//... ach, erz�hl mir nicht so was ...
	Smalltalk05					= "SVM_16_Smalltalk05"				;//... ehrlich, ich hab es selbst erlebt ...
	Smalltalk06					= "SVM_16_Smalltalk06"				;//... was du nicht sagst ...
	Smalltalk07					= "SVM_16_Smalltalk07"				;//... das darfst du keinem erz�hlen ...
	Smalltalk08					= "SVM_16_Smalltalk08"				;//... schlimme Zeiten sind das ...
	Smalltalk09					= "SVM_16_Smalltalk09"				;//... wer sagt denn so was?...
	Smalltalk10					= "SVM_16_Smalltalk10"				;//... wenn ich es nicht mit eigenen Augen gesehen h�tte ...
	Smalltalk11					= "SVM_16_Smalltalk11"				;//... irgendwer muss die Arbeit ja machen ...
	Smalltalk12					= "SVM_16_Smalltalk12"				;//... ich habe was anderes geh�rt ...
	Smalltalk13					= "SVM_16_Smalltalk13"				;//... das ist mal wieder typisch ...
	Smalltalk14					= "SVM_16_Smalltalk14"				;//... er erz�hlt alles weiter ..
	Smalltalk15					= "SVM_16_Smalltalk15"				;//... er sollte lieber den Mund halten ...
	Smalltalk16					= "SVM_16_Smalltalk16"				;//... er arbeitet auch den ganzen Tag ...
	Smalltalk17					= "SVM_16_Smalltalk17"				;//... worum soll ich mich denn noch alles k�mmern ...
	Smalltalk18					= "SVM_16_Smalltalk18"				;//... er redet einfach zu viel ...
	Smalltalk19					= "SVM_16_Smalltalk19"				;//... das ist doch kein Geheimnis mehr...
	Smalltalk20					= "SVM_16_Smalltalk20"				;//... das wei� doch inzwischen jeder ...
	Smalltalk21					= "SVM_16_Smalltalk21"				;//... der erz�hl ich gar nichts mehr ...
	Smalltalk22					= "SVM_16_Smalltalk22"				;//... und es wird noch viel schlimmer ...
	Smalltalk23					= "SVM_16_Smalltalk23"				;//... das ist ja schrecklich ...
	Smalltalk24					= "SVM_16_Smalltalk24"				;//... das habe ich schon immer gesagt ...
	SmalltalkKhorataAnnaQuest01			= "SVM_16_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_16_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_16_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_16_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_16_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_16_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_16_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_16_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_16_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_16_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_16_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_16_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_16_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_16_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_16_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_16_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_16_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_16_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_16_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_16_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_16_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_16_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_16_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_16_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_16_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_16_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_16_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_16_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_16_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_16_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_16_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_16_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_16_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_16_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_16_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_16_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_16_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_16_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_16_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_16_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_16_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_16_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_16_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_16_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_16_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_16_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_16_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_16_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_16_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_16_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_16_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_16_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_16_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_16_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_16_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_16_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_16_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_16_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	// Khorinis

	SmalltalkRangar01			= "SVM_16_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_16_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_16_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_16_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_16_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_16_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_16_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_16_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_16_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_16_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_16_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_16_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_16_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_16_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_16_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_16_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_16_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_16_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_16_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_16_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_16_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_16_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_16_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_16_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_16_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_16_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_16_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_16_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_16_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_16_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_16_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_16_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_16_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbeigehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_16_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlanggehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_16_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_16_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_16_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_16_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_16_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_16_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_16_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_16_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_16_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_16_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_16_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_16_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_16_Addon_WrongArmor";				//Zieh dir mal was Vern�nftiges an. So will ich nicht mit dir gesehen werden.
	
	ADDON_DIEBANDIT				= "SVM_16_ADDON_DIEBANDIT";				//EIN BANDIT!
	ADDON_DIRTYPIRATE			= "SVM_16_ADDON_DIRTYPIRATE";			//EIN PIRAT!

	NoLearnGold			= "SVM_16_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_16_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_16_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_16_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_16_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_16_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_16_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_16_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_16_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_16_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_16_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_16_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_16_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_16_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_16_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_16_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_16_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_16_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_16_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_16_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_16_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_16_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_16_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_16_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_16_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_16_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_16_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_16_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_16_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_16_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_16_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_16_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_16_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_16_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_16_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_16_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_16_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_16_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_16_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_16_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_16_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_16_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_16_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_16_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_16_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_17 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_17_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_17_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_17_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_17_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_17_Weather"						;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_17_IGetYouStill"				;//Krieg ich dich DOCH noch!
	DieEnemy					=	"SVM_17_DieEnemy"					;//Jetzt bist du dran!
	DieMonster					=	"SVM_17_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_17_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_17_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_17_SheepKiller"					;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_17_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_17_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_17_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_17_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_17_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_17_ThenIBeatYouOutOfHere"		;//Dann muss ich dich eben rausPR�GELN!
	WhatDidYouDoInThere			=	"SVM_17_WhatDidYouDoInThere"			;//Was hattest DU denn da drin zu suchen, he!?
	WillYouStopFighting			=	"SVM_17_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_17_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_17_EnemyKilled"				;//Das war's f�r dich, Junge.
	MonsterKilled				=	"SVM_17_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_17_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_17_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_17_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_17_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_17_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_17_NeverHitMeAgain"				;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_17_YouBetterShouldHaveListened"	;//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_17_GetUpAndBeGone"				;//Und jetzt mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_17_NeverEnterRoomAgain"			;//Und dass ich dich nie wieder da drin erwische!
	ThereIsNoFightingHere		=	"SVM_17_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_17_RunAway"						;//Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_17_Alarm"					;//ALARM!
	Guards						=	"SVM_17_Guards"					;//WACHE!
	Help						=	"SVM_17_Help"					;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_17_GoodMonsterKill"			;//(ruft zu) Gut gemacht!
	GoodKill					= 	"SVM_17_GoodKill"				;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_17_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_17_RunCoward"				;//(ruft laut) Bleib stehen, du Feigling!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_17_GetOutOfHere"			;//Mach, dass du hier rauskommst!
	WhyAreYouInHere				=	"SVM_17_WhyAreYouInHere"		;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_17_YesGoOutOfHere"			;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_17_WhatsThisSupposedToBe"	;//Hey du! Was schleichst du da rum.
	YouDisturbedMySlumber		=	"SVM_17_YouDisturbedMySlumber"	;//(wacht auf) Was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_17_ITookYourGold"			;//Danke f�r das Gold, du Held!
	ShitNoGold					=	"SVM_17_ShitNoGold"				;//Du arme Wurst, hast ja nicht mal Gold dabei!
	ITakeYourWeapon				=	"SVM_17_ITakeYourWeapon"			;//Die Waffe nehm ich mal besser an mich!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_17_WhatAreYouDoing"			;//(warnt) Pass auf! Noch mal und ich verpass dir eine.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_17_LookingForTroubleAgain"	;//Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_17_StopMagic"				;//H�r auf mit dieser Magie-Schei�e!
	ISaidStopMagic				=	"SVM_17_ISaidStopMagic"			;//Willst du Schl�ge? H�r sofort damit auf!!!
	WeaponDown					=	"SVM_17_WeaponDown"				;//Steck die Waffe weg!
	ISaidWeaponDown				=	"SVM_17_ISaidWeaponDown"		;//Steck endlich die Schei�waffe weg!
	WiseMove					=	"SVM_17_WiseMove"				;//Kluges Kerlchen!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_17_NextTimeYoureInForIt"	;//(zu sich selbst) Das n�chste Mal werden wir ja sehen ...
	OhMyHead					=	"SVM_17_OhMyHead"				;//(zu sich selbst) Oh Mann, mein Kopf ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_17_TheresAFight"			;//(gierig) Ah, ein Kampf!
	OhMyGodItsAFight			=	"SVM_17_OhMyGodItsAFight"		;//(best�rzt) Mein Gott, ein Kampf!
	GoodVictory					=	"SVM_17_GoodVictory"			;//(b�se lachend) Dem hast du's gezeigt!
	NotBad						= 	"SVM_17_NotBad"					;//(anerkennend) Nicht schlecht ...
	OhMyGodHesDown				=	"SVM_17_OhMyGodHesDown"			;//(zu sich selbst) Mein Gott! Wie brutal ...
	CheerFriend01				=	"SVM_17_CheerFriend01"			;//Hau drauf!
	CheerFriend02				=	"SVM_17_CheerFriend02"			;//Zeig's ihm!
	CheerFriend03				=	"SVM_17_CheerFriend03"			;//Mach ihn fertig!
	Ooh01						=	"SVM_17_Ooh01"					;//Schlag zur�ck!
	Ooh02						=	"SVM_17_Ooh02"					;//Pass doch auf!
	Ooh03						=	"SVM_17_Ooh03"					;//Oh! Das tat weh!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_17_WhatWasThat"				;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_17_GetOutOfMyBed"			;//Raus aus meinem Bett!
	Awake						= "SVM_17_Awake"					;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_17_GOLD_1000"					;//1000 Goldst�cke.
	GOLD_950					= "SVM_17_GOLD_950"					;//950 Goldst�cke.
	GOLD_900					= "SVM_17_GOLD_900"					;//900 Goldst�cke.
	GOLD_850					= "SVM_17_GOLD_850"					;//850 Goldst�cke.
	GOLD_800					= "SVM_17_GOLD_800"					;//800 Goldst�cke.
	GOLD_750					= "SVM_17_GOLD_750"					;//750 Goldst�cke.
	GOLD_700					= "SVM_17_GOLD_700"					;//700 Goldst�cke.
	GOLD_650					= "SVM_17_GOLD_650"					;//650 Goldst�cke.
	GOLD_600					= "SVM_17_GOLD_600"					;//600 Goldst�cke.
	GOLD_550					= "SVM_17_GOLD_550"					;//550 Goldst�cke.
	GOLD_500					= "SVM_17_GOLD_500"					;//500 Goldst�cke.
	GOLD_450					= "SVM_17_GOLD_450"					;//450 Goldst�cke.
	GOLD_400					= "SVM_17_GOLD_400"					;//400 Goldst�cke.
	GOLD_350					= "SVM_17_GOLD_350"					;//350 Goldst�cke.
	GOLD_300					= "SVM_17_GOLD_300"					;//300 Goldst�cke.
	GOLD_250					= "SVM_17_GOLD_250"					;//250 Goldst�cke.
	GOLD_200					= "SVM_17_GOLD_200"					;//200 Goldst�cke.
	GOLD_150					= "SVM_17_GOLD_150"					;//150 Goldst�cke.
	GOLD_100					= "SVM_17_GOLD_100"					;//100 Goldst�cke.
	GOLD_90						= "SVM_17_GOLD_90"					;//90 Goldst�cke.
	GOLD_80						= "SVM_17_GOLD_80"					;//80 Goldst�cke.
	GOLD_70						= "SVM_17_GOLD_70"					;//70 Goldst�cke.
	GOLD_60						= "SVM_17_GOLD_60"					;//60 Goldst�cke.
	GOLD_50						= "SVM_17_GOLD_50"					;//50 Goldst�cke.
	GOLD_40						= "SVM_17_GOLD_40"					;//40 Goldst�cke.
	GOLD_30						= "SVM_17_GOLD_30"					;//30 Goldst�cke.
	GOLD_20						= "SVM_17_GOLD_20"					;//20 Goldst�cke.
	GOLD_10						= "SVM_17_GOLD_10"					;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_17_Smalltalk01"				;//... wirklich? Das ist ja interessant ...
	Smalltalk02					= "SVM_17_Smalltalk02"				;//... ich glaube da nicht dran ...
	Smalltalk03					= "SVM_17_Smalltalk03"				;//... Mein Mann sieht das anders ....
	Smalltalk04					= "SVM_17_Smalltalk04"				;//... ach, erz�hl mir nicht so was ...
	Smalltalk05					= "SVM_17_Smalltalk05"				;//... ehrlich, ich hab es selbst erlebt ...
	Smalltalk06					= "SVM_17_Smalltalk06"				;//... was du nicht sagst ...
	Smalltalk07					= "SVM_17_Smalltalk07"				;//... das darfst du keinem erz�hlen ...
	Smalltalk08					= "SVM_17_Smalltalk08"				;//... schlimme Zeiten sind das ...
	Smalltalk09					= "SVM_17_Smalltalk09"				;//... wer sagt denn so was? ...
	Smalltalk10					= "SVM_17_Smalltalk10"				;//... wenn ich es nicht mit eigenen Augen gesehen h�tte ...
	Smalltalk11					= "SVM_17_Smalltalk11"				;//... irgendwer muss die Arbeit ja machen ...
	Smalltalk12					= "SVM_17_Smalltalk12"				;//... ich habe was anderes geh�rt ...
	Smalltalk13					= "SVM_17_Smalltalk13"				;//... das ist mal wieder typisch ...
	Smalltalk14					= "SVM_17_Smalltalk14"				;//... er erz�hlt alles weiter ...
	Smalltalk15					= "SVM_17_Smalltalk15"				;//... er sollte lieber den Mund halten ...
	Smalltalk16					= "SVM_17_Smalltalk16"				;//... er arbeitet auch den ganzen Tag ...
	Smalltalk17					= "SVM_17_Smalltalk17"				;//... worum soll ich mich denn noch alles k�mmern ...
	Smalltalk18					= "SVM_17_Smalltalk18"				;//... er redet einfach zu viel ...
	Smalltalk19					= "SVM_17_Smalltalk19"				;//... das ist doch kein Geheimnis mehr ...
	Smalltalk20					= "SVM_17_Smalltalk20"				;//... das wei� doch inzwischen jeder ...
	Smalltalk21					= "SVM_17_Smalltalk21"				;//... der erz�hl ich gar nichts mehr ...
	Smalltalk22					= "SVM_17_Smalltalk22"				;//... und es wird noch viel schlimmer ...
	Smalltalk23					= "SVM_17_Smalltalk23"				;//... das ist ja schrecklich ...
	Smalltalk24					= "SVM_17_Smalltalk24"				;//... das habe ich schon immer gesagt ...
	SmalltalkKhorataAnnaQuest01			= "SVM_17_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_17_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_17_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_17_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_17_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_17_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_17_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_17_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_17_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_17_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_17_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_17_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_17_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_17_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_17_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_17_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_17_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_17_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_17_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_17_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_17_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_17_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_17_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_17_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_17_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_17_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_17_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_17_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_17_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_17_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_17_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_17_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_17_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_17_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_17_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_17_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_17_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_17_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_17_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_17_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_17_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_17_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_17_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_17_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_17_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_17_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_17_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_17_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_17_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_17_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_17_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_17_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_17_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_17_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_17_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_17_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_17_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_17_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	// Khorinis

	SmalltalkRangar01			= "SVM_17_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_17_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_17_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_17_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_17_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_17_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_17_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_17_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_17_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_17_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_17_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_17_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_17_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_17_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_17_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_17_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_17_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_17_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_17_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_17_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_17_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_17_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_17_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_17_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_17_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_17_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_17_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_17_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_17_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_17_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_17_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_17_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_17_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbeigehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_17_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlanggehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_17_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_17_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_17_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_17_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_17_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_17_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_17_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_17_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_17_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_17_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_17_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_17_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------

	NoLearnGold			= "SVM_17_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_17_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_17_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_17_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_17_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_17_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_17_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_17_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_17_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_17_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_17_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_17_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_17_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_17_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_17_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_17_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_17_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_17_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_17_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_17_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_17_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_17_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_17_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_17_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_17_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_17_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_17_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_17_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_17_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_17_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_17_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_17_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_17_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_17_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_17_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_17_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_17_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_17_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_17_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_17_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_17_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_17_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_17_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_17_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_17_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

// *************
// 		Orks
// *************

INSTANCE SVM_18	(C_SVM)							
{
};

// ****************
// 	   Dementor
// ****************

INSTANCE SVM_19	(C_SVM)
{
	DieEnemy     	= "SVM_19_DieEnemy"     	;//(zischt) Da ist er!
	RunCoward    	= "SVM_19_RunCoward"    	;//(zischt) Wir werden dich kriegen!
	Dead      		= "SVM_19_Dead"      	;//Aaaaaargl!
	Aargh_1      	= "SVM_19_Aargh_1"     	;//Aargh
	Aargh_2      	= "SVM_19_Aargh_2"     	;//Aargh
	Aargh_3      	= "SVM_19_Aargh_3"     	;//Aargh
};

// Kobolde

INSTANCE SVM_20 (C_SVM)
{
};

// Drachen

INSTANCE SVM_21 (C_SVM)
{
	SmalltalkDragon01	= "SVM_21_SmalltalkDragon01"; //Jaja, sie sind gerannt, wie die Hasen.
	SmalltalkDragon02	= "SVM_21_SmalltalkDragon02"; //Die ganze Wolle schl�gt mir aber ziemlich auf den Magen.
	SmalltalkDragon03	= "SVM_21_SmalltalkDragon03"; //Hoffentlich bekomme ich keine Verstopfung oder Sodbrennen.
	SmalltalkDragon04	= "SVM_21_SmalltalkDragon04"; //Etwas von der schlammigen Pf�tze wird meiner Verdauung wieder auf die Spr�nge helfen.
	SmalltalkDragon05	= "SVM_21_SmalltalkDragon05"; //Der Hund als Nachspeise war aber ziemlich z�h.
	SmalltalkDragon06	= "SVM_21_SmalltalkDragon06"; //Das Essen ist auch nicht mehr das, was es einmal war vor 5000 Jahren.
	SmalltalkDragon07	= "SVM_21_SmalltalkDragon07"; //Einer von den Wichten hat mir doch tats�chlich einen Pfeil in die Pfote geschossen.
	SmalltalkDragon08	= "SVM_21_SmalltalkDragon08"; //Den habe ich erst mal ger�stet.
	SmalltalkDragon09	= "SVM_21_SmalltalkDragon09"; //Die anderen sind aber ganz schnell abgehauen.
	SmalltalkDragon10	= "SVM_21_SmalltalkDragon10"; //Jaja, nach 5000 Jahren endlich Ruhe.
	SmalltalkDragon11	= "SVM_21_SmalltalkDragon11"; //Immer musste er im Schlaf reden.
	SmalltalkDragon12	= "SVM_21_SmalltalkDragon12"; //Und das Giftvieh, das seine Eier bewacht hat, sind wir auch endlich los.
	SmalltalkDragon13	= "SVM_21_SmalltalkDragon13"; //Ja, und der Magie dieses Untoten sei Dank.
	
};

INSTANCE SVM_22 (C_SVM)
{
	SmalltalkDragon01	= "SVM_22_SmalltalkDragon01"; //Jaja, sie sind gerannt, wie die Hasen.
	SmalltalkDragon02	= "SVM_22_SmalltalkDragon02"; //Die ganze Wolle schl�gt mir aber ziemlich auf den Magen.
	SmalltalkDragon03	= "SVM_22_SmalltalkDragon03"; //Hoffentlich bekomme ich keine Verstopfung oder Sodbrennen.
	SmalltalkDragon04	= "SVM_22_SmalltalkDragon04"; //Etwas von der schlammigen Pf�tze wird meiner Verdauung wieder auf die Spr�nge helfen.
	SmalltalkDragon05	= "SVM_22_SmalltalkDragon05"; //Der Hund als Nachspeise war aber ziemlich z�h.
	SmalltalkDragon06	= "SVM_22_SmalltalkDragon06"; //Das Essen ist auch nicht mehr das, was es einmal war vor 5000 Jahren.
	SmalltalkDragon07	= "SVM_22_SmalltalkDragon07"; //Einer von den Wichten hat mir doch tats�chlich einen Pfeil in die Pfote geschossen.
	SmalltalkDragon08	= "SVM_22_SmalltalkDragon08"; //Den habe ich erst mal ger�stet.
	SmalltalkDragon09	= "SVM_22_SmalltalkDragon09"; //Die anderen sind aber ganz schnell abgehauen.
	SmalltalkDragon10	= "SVM_22_SmalltalkDragon10"; //Jaja, nach 5000 Jahren endlich Ruhe.
	SmalltalkDragon11	= "SVM_22_SmalltalkDragon11"; //Immer musste er im Schlaf reden.
	SmalltalkDragon12	= "SVM_22_SmalltalkDragon12"; //Und das Giftvieh, das seine Eier bewacht hat, sind wir auch endlich los.
	SmalltalkDragon13	= "SVM_22_SmalltalkDragon13"; //Ja, und der Magie dieses Untoten sei Dank.
	
};

INSTANCE SVM_23 (C_SVM)
{
	SmalltalkDragon01	= "SVM_23_SmalltalkDragon01"; //Jaja, sie sind gerannt, wie die Hasen.
	SmalltalkDragon02	= "SVM_23_SmalltalkDragon02"; //Die ganze Wolle schl�gt mir aber ziemlich auf den Magen.
	SmalltalkDragon03	= "SVM_23_SmalltalkDragon03"; //Hoffentlich bekomme ich keine Verstopfung oder Sodbrennen.
	SmalltalkDragon04	= "SVM_23_SmalltalkDragon04"; //Etwas von der schlammigen Pf�tze wird meiner Verdauung wieder auf die Spr�nge helfen.
	SmalltalkDragon05	= "SVM_23_SmalltalkDragon05"; //Der Hund als Nachspeise war aber ziemlich z�h.
	SmalltalkDragon06	= "SVM_23_SmalltalkDragon06"; //Das Essen ist auch nicht mehr das, was es einmal war vor 5000 Jahren.
	SmalltalkDragon07	= "SVM_23_SmalltalkDragon07"; //Einer von den Wichten hat mir doch tats�chlich einen Pfeil in die Pfote geschossen.
	SmalltalkDragon08	= "SVM_23_SmalltalkDragon08"; //Den habe ich erst mal ger�stet.
	SmalltalkDragon09	= "SVM_23_SmalltalkDragon09"; //Die anderen sind aber ganz schnell abgehauen.
	SmalltalkDragon10	= "SVM_23_SmalltalkDragon10"; //Jaja, nach 5000 Jahren endlich Ruhe.
	SmalltalkDragon11	= "SVM_23_SmalltalkDragon11"; //Immer musste er im Schlaf reden.
	SmalltalkDragon12	= "SVM_23_SmalltalkDragon12"; //Und das Giftvieh, das seine Eier bewacht hat, sind wir auch endlich los.
	SmalltalkDragon13	= "SVM_23_SmalltalkDragon13"; //Ja, und der Magie dieses Untoten sei Dank.
	
};

instance SVM_24 (C_SVM)
{
	SC_HeyWaitASecond			= 	"SVM_24_Addon_HeyWaitASecond"			;//(ruft) Warte!
	
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_24_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_24_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_24_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_24_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_24_Weather"						;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_24_IGetYouStill"				;//Krieg ich dich DOCH noch!
	DieEnemy					=	"SVM_24_DieEnemy"					;//Jetzt bist du dran!
	DieMonster					=	"SVM_24_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_24_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_24_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_24_SheepKiller"					;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_24_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_24_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_24_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_24_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_24_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_24_ThenIBeatYouOutOfHere"		;//Dann muss ich dich eben rauspr�geln!
	WhatDidYouDoInThere			=	"SVM_24_WhatDidYouDoInThere"			;//Was hattest DU denn da drin zu suchen, he!?
	WillYouStopFighting			=	"SVM_24_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_24_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_24_EnemyKilled"					;//Das war's f�r dich, Penner.
	Berzerk						=	"SVM_24_Berzerk"						;//UUAAARRGGGHHH!!!
	MonsterKilled				=	"SVM_24_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_24_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_24_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_24_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_24_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_24_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_24_NeverHitMeAgain"				;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_24_YouBetterShouldHaveListened"	;//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_24_GetUpAndBeGone"				;//Und jetzt mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_24_NeverEnterRoomAgain"			;//Und dass ich dich nie wieder da drin erwische!
	ThereIsNoFightingHere		=	"SVM_24_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_24_RunAway"						;//Schei�e! Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_24_Alarm"						;//ALARM!
	Guards						=	"SVM_24_Guards"						;//WACHE!
	Help						=	"SVM_24_Help"						;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_24_GoodMonsterKill"				;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_24_GoodKill"					;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_24_NOTNOW"						;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_24_RunCoward"					;//(ruft laut) Bleib stehen, du Lump!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_24_GetOutOfHere"				;//Raus hier!
	WhyAreYouInHere				=	"SVM_24_WhyAreYouInHere"				;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_24_YesGoOutOfHere"				;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_24_WhatsThisSupposedToBe"		;//Hey du! Was schleichst du da rum?
	YouDisturbedMySlumber		=	"SVM_24_YouDisturbedMySlumber"		;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_24_ITookYourGold"				;//Gold! Das ist schon mal meins ...
	ShitNoGold					=	"SVM_24_ShitNoGold"					;//Du hast noch nicht mal Gold dabei?
	ITakeYourWeapon				=	"SVM_24_ITakeYourWeapon"				;//Deine Waffe nehm ich mal lieber mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_24_WhatAreYouDoing"				;//(warnt) Hey! Pass auf!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_24_LookingForTroubleAgain"		;//(agressiv) Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_24_StopMagic"					;//Geh blo� weg mit deiner Magie!
	ISaidStopMagic				=	"SVM_24_ISaidStopMagic"				;//Weg mit der Magie! H�rst du schlecht!?
	WeaponDown					=	"SVM_24_WeaponDown"					;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_24_ISaidWeaponDown"				;//H�rst du schlecht? Ich sagte: Weg mit der Waffe!
	WiseMove					=	"SVM_24_WiseMove"					;//Na bitte, geht doch!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_24_NextTimeYoureInForIt"		;//(zu sich selbst) Dar�ber reden wir noch ...
	OhMyHead					=	"SVM_24_OhMyHead"					;//(zu sich selbst) Oh, mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_24_TheresAFight"				;//(gierig) Jetzt geht's zur Sache!
	OhMyGodItsAFight			=	"SVM_24_OhMyGodItsAFight"			;//(best�rzt) Die hauen sich den Sch�del ein ...
	GoodVictory					=	"SVM_24_GoodVictory"					;//(b�se lachend) Das hat er verdient.
	NotBad						= 	"SVM_24_NotBad"						;//(anerkennend) Gar nicht so �bel ...
	OhMyGodHesDown				=	"SVM_24_OhMyGodHesDown"				;//(zu sich selbst) Was f�r ein brutaler Kerl ...
	CheerFriend01				=	"SVM_24_CheerFriend01"				;//Ja, so ist's gut!
	CheerFriend02				=	"SVM_24_CheerFriend02"				;//Na, mach schon!
	CheerFriend03				=	"SVM_24_CheerFriend03"				;//Immer feste drauf!
	Ooh01						=	"SVM_24_Ooh01"						;//Lass dir nichts gefallen!
	Ooh02						=	"SVM_24_Ooh02"						;//Den wirst du ja wohl schaffen!
	Ooh03						=	"SVM_24_Ooh03"						;//Das gibt's doch gar nicht!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_24_WhatWasThat"					;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_24_GetOutOfMyBed"					;//Raus aus meinem Bett!
	Awake						= "SVM_24_Awake"							;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_24_TOUGHGUY_ATTACKLOST"			;//Ist ja schon gut, du hast gewonnen. Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_24_TOUGHGUY_ATTACKWON"			;//(selbstgef�llig) Muss ich dir noch mal zeigen, wer hier der Herr ist?
	TOUGHGUY_PLAYERATTACK		= "SVM_24_TOUGHGUY_PLAYERATTACK"			;//Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_24_GOLD_1000"						;//1000 Goldst�cke.
	GOLD_950					= "SVM_24_GOLD_950"						;//950 Goldst�cke.
	GOLD_900					= "SVM_24_GOLD_900"						;//900 Goldst�cke.
	GOLD_850					= "SVM_24_GOLD_850"						;//850 Goldst�cke.
	GOLD_800					= "SVM_24_GOLD_800"						;//800 Goldst�cke.
	GOLD_750					= "SVM_24_GOLD_750"						;//750 Goldst�cke.
	GOLD_700					= "SVM_24_GOLD_700"						;//700 Goldst�cke.
	GOLD_650					= "SVM_24_GOLD_650"						;//650 Goldst�cke.
	GOLD_600					= "SVM_24_GOLD_600"						;//600 Goldst�cke.
	GOLD_550					= "SVM_24_GOLD_550"						;//550 Goldst�cke.
	GOLD_500					= "SVM_24_GOLD_500"						;//500 Goldst�cke.
	GOLD_450					= "SVM_24_GOLD_450"						;//450 Goldst�cke.
	GOLD_400					= "SVM_24_GOLD_400"						;//400 Goldst�cke.
	GOLD_350					= "SVM_24_GOLD_350"						;//350 Goldst�cke.
	GOLD_300					= "SVM_24_GOLD_300"						;//300 Goldst�cke.
	GOLD_250					= "SVM_24_GOLD_250"						;//250 Goldst�cke.
	GOLD_200					= "SVM_24_GOLD_200"						;//200 Goldst�cke.
	GOLD_150					= "SVM_24_GOLD_150"						;//150 Goldst�cke.
	GOLD_100					= "SVM_24_GOLD_100"						;//100 Goldst�cke.
	GOLD_90						= "SVM_24_GOLD_90"						;//90 Goldst�cke.
	GOLD_80						= "SVM_24_GOLD_80"						;//80 Goldst�cke.
	GOLD_70						= "SVM_24_GOLD_70"						;//70 Goldst�cke.
	GOLD_60						= "SVM_24_GOLD_60"						;//60 Goldst�cke.
	GOLD_50						= "SVM_24_GOLD_50"						;//50 Goldst�cke.
	GOLD_40						= "SVM_24_GOLD_40"						;//40 Goldst�cke.
	GOLD_30						= "SVM_24_GOLD_30"						;//30 Goldst�cke.
	GOLD_20						= "SVM_24_GOLD_20"						;//20 Goldst�cke.
	GOLD_10						= "SVM_24_GOLD_10"						;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_24_Smalltalk01"					;//... glaubst du wirklich ...
	Smalltalk02					= "SVM_24_Smalltalk02"					;//... m�glich ist alles ...
	Smalltalk03					= "SVM_24_Smalltalk03"					;//... das h�tte er doch besser wissen m�ssen ...
	Smalltalk04					= "SVM_24_Smalltalk04"					;//... als ob ich nicht schon genug Probleme h�tte ...
	Smalltalk05					= "SVM_24_Smalltalk05"					;//... wer erz�hlt denn so was ...
	Smalltalk06					= "SVM_24_Smalltalk06"					;//... das gibt doch nur noch mehr �rger ...
	Smalltalk07					= "SVM_24_Smalltalk07"					;//... man erz�hlt sich ja so einiges ...
	Smalltalk08					= "SVM_24_Smalltalk08"					;//... ich h�tte das nicht gemacht ...
	Smalltalk09					= "SVM_24_Smalltalk09"					;//... das sind doch alles nur Ger�chte ...
	Smalltalk10					= "SVM_24_Smalltalk10"					;//... man muss eben aufpassen, was man so rumerz�hlt ...
	Smalltalk11					= "SVM_24_Smalltalk11"					;//... das h�tte ich dir vorher sagen k�nnen ...
	Smalltalk12					= "SVM_24_Smalltalk12"					;//... mich fragt ja keiner ...
	Smalltalk13					= "SVM_24_Smalltalk13"					;//... der arme Kerl kann einem Leid tun ...
	Smalltalk14					= "SVM_24_Smalltalk14"					;//... das ist doch nichts Neues ...
	Smalltalk15					= "SVM_24_Smalltalk15"					;//... das liegt doch auf der Hand ...
	Smalltalk16					= "SVM_24_Smalltalk16"					;//... mich brauchst du das nicht zu fragen ...
	Smalltalk17					= "SVM_24_Smalltalk17"					;//... das kann ja nicht ewig so weitergehen ...
	Smalltalk18					= "SVM_24_Smalltalk18"					;//... meine Meinung kennst du ja schon ...
	Smalltalk19					= "SVM_24_Smalltalk19"					;//... genau das hab ich auch gesagt ...
	Smalltalk20					= "SVM_24_Smalltalk20"					;//... daran wird dich nie was �ndern ...
	Smalltalk21					= "SVM_24_Smalltalk21"					;//... warum erfahre ich das erst jetzt ...
	Smalltalk22					= "SVM_24_Smalltalk22"					;//... lass uns erstmal abwarten, was daraus wird ...
	Smalltalk23					= "SVM_24_Smalltalk23"					;//... einige Probleme erledigen sich von selbst ...
	Smalltalk24					= "SVM_24_Smalltalk24"					;//... ich kann das nicht mehr h�ren ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_24_Smalltalk25"					;//... der war doch sturzbetrunken ...
	Smalltalk26					= "SVM_24_Smalltalk26"					;//... mit mir kann man so was nicht machen ...
	Smalltalk27					= "SVM_24_Smalltalk27"					;//... alle sind gerannt wie die Hasen, ich war ganz allein ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_24_Smalltalk28"					;//... so steht es in den heiligen Schriften ...
	Smalltalk29					= "SVM_24_Smalltalk29"					;//... ich handle stets in Innos' Namen ...
	Smalltalk30					= "SVM_24_Smalltalk30"					;//... niemand darf gegen die g�ttliche Ordnung versto�en ...
	SmalltalkKhorataAnnaQuest01			= "SVM_24_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_24_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_24_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_24_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_24_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_24_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_24_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_24_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_24_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_24_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_24_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_24_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_24_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_24_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_24_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_24_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_24_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_24_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_24_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_24_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_24_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_24_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_24_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_24_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_24_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_24_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_24_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_24_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_24_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_24_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_24_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_24_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_24_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_24_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_24_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_24_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_24_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_24_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_24_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_24_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_24_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_24_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_24_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_24_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_24_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_24_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_24_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_24_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_24_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_24_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_24_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_24_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_24_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_24_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_24_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_24_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_24_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_24_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_24_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_24_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_24_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_24_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_24_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_24_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_24_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_24_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_24_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_24_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_24_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_24_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_24_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_24_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_24_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_24_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_24_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_24_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_24_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_24_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...

	// D�monenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_24_SmalltalkDMRBelagerungAbdi01"; //... ehrlich gesagt tut's mir um die beiden nicht Leid ...
	SmalltalkDMRBelagerungAbdi02			= "SVM_24_SmalltalkDMRBelagerungAbdi02"; //... w�sste zu gerne, wer hier im Lager die Leute abschlachtet ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_24_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_24_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_24_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_24_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_24_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_24_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_24_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_24_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_24_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_24_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_24_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_24_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_24_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_24_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_24_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_24_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_24_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_24_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_24_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbeigehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_24_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlanggehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_24_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_24_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_24_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_24_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_24_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_24_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_24_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_24_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_24_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_24_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_24_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_24_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_24_Addon_WrongArmor";				//Was ist das f�r Kleidung? Sie passt nicht zu dir. Lass mich in Ruhe.
	ADDON_WRONGARMOR_SLD		= "SVM_24_ADDON_WRONGARMOR_SLD";			//Trage gef�lligst unsere R�stung, wenn ich mit dir rede. Los, verschwinde.
	ADDON_WRONGARMOR_MIL		= "SVM_24_ADDON_WRONGARMOR_MIL";			//Trage gef�lligst die R�stung des K�nigs. Los geh schon.
	ADDON_WRONGARMOR_KDF		= "SVM_24_ADDON_WRONGARMOR_KDF";			//Deine Kleidung ist unserem Orden nicht angemessen. Zieh dich um.
	ADDON_NOARMOR_BDT			= "SVM_24_ADDON_ADDON_NOARMOR_BDT";			//Hast ja noch nicht mal 'ne R�stung. Verschwinde!

	ADDON_DIEBANDIT				= "SVM_24_ADDON_DIEBANDIT";				//Schon wieder ein Bandit.
	ADDON_DIRTYPIRATE			= "SVM_24_ADDON_DIRTYPIRATE";			//PIRATEN!

	RELMINE01			= "SVM_24_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_24_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_24_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_24_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_24_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_24_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_24_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_24_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_24_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_24_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_24_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_24_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_24_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_24_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_24_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_24_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_24_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_24_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_24_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_24_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_24_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_24_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_24_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_24_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_24_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_24_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_24_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_24_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_24_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_24_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_24_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_24_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_24_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_24_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_24_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_24_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_24_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_24_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_24_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_24_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_24_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_24_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_24_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_24_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_24_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_24_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_24_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_24_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_24_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_24_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_24_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_24_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_24_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_24_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_24_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_24_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_24_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_25 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	Weather						= 	"SVM_25_Weather"					;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_25_IGetYouStill"				;//Jetzt krieg ich dich aber!
	DieEnemy					=	"SVM_25_DieEnemy"					;//Ich mach dich fertig!
	DieMonster					=	"SVM_25_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_25_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_25_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_25_SheepKiller"				;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_25_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_25_YouMurderer"				;//M�rder!
	DieStupidBeast				=	"SVM_25_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_25_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_25_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_25_ThenIBeatYouOutOfHere"		;//Du willst nicht gehen? Na gut!
	WhatDidYouDoInThere			=	"SVM_25_WhatDidYouDoInThere"		;//Was hattest du da drin zu suchen?
	WillYouStopFighting			=	"SVM_25_WillYouStopFighting"		;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_25_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_25_EnemyKilled"				;//Das hast du verdient, Mistkerl!
	MonsterKilled				=	"SVM_25_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_25_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_25_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_25_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	Berzerk						=	"SVM_25_Berzerk"						;//UUAAARRGGGHHH!!!
	KillMurderer				=	"SVM_25_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_25_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_25_NeverHitMeAgain"			;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_25_YouBetterShouldHaveListened";//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_25_GetUpAndBeGone"				;//Und jetzt sieh zu, dass du hier verschwindest!
	NeverEnterRoomAgain			=	"SVM_25_NeverEnterRoomAgain"		;//Und lass dich ja nie wieder da drinnen erwischen!
	ThereIsNoFightingHere		=	"SVM_25_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_25_RunAway"					;//Ach du Schei�e!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_25_GoodMonsterKill"		;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_25_GoodKill"				;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_25_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_25_RunCoward"				;//(ruft laut) Ja! Renn, so schnell du kannst!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_25_GetOutOfHere"			;//Raus hier!
	WhyAreYouInHere				=	"SVM_25_WhyAreYouInHere"		;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_25_YesGoOutOfHere"			;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_25_WhatsThisSupposedToBe"	;//Hey du! Was schleichst du da rum?
	YouDisturbedMySlumber		=	"SVM_25_YouDisturbedMySlumber"	;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_25_ITookYourGold"			;//Danke f�r das Gold, du Held!
	ShitNoGold					=	"SVM_25_ShitNoGold"				;//Du arme Wurst, hast ja nicht mal Gold dabei!
	ITakeYourWeapon				=	"SVM_25_ITakeYourWeapon"		;//Die Waffe nehm ich mal besser an mich!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_25_WhatAreYouDoing"		;//(warnt) Pass auf! Noch mal und ich verpass dir eine.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_25_LookingForTroubleAgain"	;//Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_25_StopMagic"				;//H�r auf mit dieser Magie-Schei�e!
	ISaidStopMagic				=	"SVM_25_ISaidStopMagic"			;//Willst du Schl�ge? H�r sofort auf damit!!!
	WeaponDown					=	"SVM_25_WeaponDown"				;//Steck die Waffe weg!
	ISaidWeaponDown				=	"SVM_25_ISaidWeaponDown"		;//Steck endlich die Schei�waffe weg!
	WiseMove					=	"SVM_25_WiseMove"				;//Kluges Kerlchen!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_25_NextTimeYoureInForIt"	;//(zu sich selbst) Das n�chste Mal werden wir ja sehen ...
	OhMyHead					=	"SVM_25_OhMyHead"				;//(zu sich selbst) Oh Mann, mein Kopf ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_25_TheresAFight"			;//(gierig) Ah, ein Kampf!
	OhMyGodItsAFight			=	"SVM_25_OhMyGodItsAFight"		;//(best�rzt) Mein Gott, ein Kampf!
	GoodVictory					=	"SVM_25_GoodVictory"			;//(b�se lachend) Dem hast du's gezeigt!
	NotBad						= 	"SVM_25_NotBad"					;//(anerkennend) Nicht schlecht ...
	OhMyGodHesDown				=	"SVM_25_OhMyGodHesDown"			;//(zu sich selbst) Mein Gott! Wie brutal ...
	CheerFriend01				=	"SVM_25_CheerFriend01"			;//Schlag zu!
	CheerFriend02				=	"SVM_25_CheerFriend02"			;//Gib alles!
	CheerFriend03				=	"SVM_25_CheerFriend03"			;//Zeig's ihm!
	Ooh01						=	"SVM_25_Ooh01"					;//Bleib dran!
	Ooh02						=	"SVM_25_Ooh02"					;//Vorsicht!
	Ooh03						=	"SVM_25_Ooh03"					;//Oh! Der hat gesessen!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_25_WhatWasThat"				;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_25_GetOutOfMyBed"			;//Raus aus meinem Bett!
	Awake						= "SVM_25_Awake"					;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_25_TOUGHGUY_ATTACKLOST"		;//Okay, okay, du bist der Bessere von uns beiden! Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_25_TOUGHGUY_ATTACKWON"		;//(selbstgef�llig) Ich nehme an, du hast mittlerweile begriffen, wer von uns beiden der St�rkere ist ... was willst du?
	TOUGHGUY_PLAYERATTACK		= "SVM_25_TOUGHGUY_PLAYERATTACK"	;//Ich dachte, du wolltest dich mit mir anlegen. Hast du's dir anders �berlegt? Willst doch lieber REDEN, was? (lacht) Ja klar.
	// ----------------------------------------------------------------------------------------------------------------------
	Dead						= "SVM_25_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_25_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_25_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_25_Aargh_3"					;//Aargh

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_25_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_25_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_25_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_26 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_26_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_26_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_26_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_26_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_26_Weather"						;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_26_IGetYouStill"				;//Krieg ich dich DOCH noch!
	DieEnemy					=	"SVM_26_DieEnemy"					;//Jetzt bist du dran!
	DieMonster					=	"SVM_26_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_26_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_26_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_26_SheepKiller"					;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_26_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_26_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_26_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_26_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_26_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_26_ThenIBeatYouOutOfHere"		;//Dann muss ich dich eben rauspr�geln!
	WhatDidYouDoInThere			=	"SVM_26_WhatDidYouDoInThere"			;//Was hattest DU denn da drin zu suchen, he!?
	WillYouStopFighting			=	"SVM_26_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_26_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_26_EnemyKilled"					;//Das war's f�r dich, Penner.
	MonsterKilled				=	"SVM_26_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_26_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	Berzerk						=	"SVM_26_Berzerk"						;//UUAAARRGGGHHH!!!
	rumfummlerDown				=	"SVM_26_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_26_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_26_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_26_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_26_NeverHitMeAgain"				;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_26_YouBetterShouldHaveListened"	;//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_26_GetUpAndBeGone"				;//Und jetzt mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_26_NeverEnterRoomAgain"			;//Und dass ich dich nie wieder da drin erwische!
	ThereIsNoFightingHere		=	"SVM_26_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_26_RunAway"						;//Schei�e! Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_26_Alarm"						;//ALARM!
	Guards						=	"SVM_26_Guards"						;//WACHE!
	Help						=	"SVM_26_Help"						;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_26_GoodMonsterKill"				;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_26_GoodKill"					;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_26_NOTNOW"						;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_26_RunCoward"					;//(ruft laut) Bleib stehen, du Lump!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_26_GetOutOfHere"				;//Raus hier!
	WhyAreYouInHere				=	"SVM_26_WhyAreYouInHere"				;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_26_YesGoOutOfHere"				;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_26_WhatsThisSupposedToBe"		;//Hey du! Was schleichst du da rum.
	YouDisturbedMySlumber		=	"SVM_26_YouDisturbedMySlumber"		;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_26_ITookYourGold"				;//Gold! Das ist schon mal meins ...
	ShitNoGold					=	"SVM_26_ShitNoGold"					;//Der Mistkerl hat noch nicht mal Gold dabei.
	ITakeYourWeapon				=	"SVM_26_ITakeYourWeapon"				;//Deine Waffe nehm' ich mal lieber mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_26_WhatAreYouDoing"				;//(warnt) Hey! Pass auf!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_26_LookingForTroubleAgain"		;//(aggressiv) Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_26_StopMagic"					;//Geh blo� weg mit deiner Magie!
	ISaidStopMagic				=	"SVM_26_ISaidStopMagic"				;//Weg mit der Magie! H�rst du schlecht!?
	WeaponDown					=	"SVM_26_WeaponDown"					;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_26_ISaidWeaponDown"				;//H�rst du schlecht? Ich sagte: Weg mit der Waffe!
	WiseMove					=	"SVM_26_WiseMove"					;//Na bitte, geht doch!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_26_NextTimeYoureInForIt"		;//(zu sich selbst) Dar�ber reden wir noch ...
	OhMyHead					=	"SVM_26_OhMyHead"					;//(zu sich selbst) Oh, mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_26_TheresAFight"				;//(gierig) Jetzt geht's zur Sache!
	OhMyGodItsAFight			=	"SVM_26_OhMyGodItsAFight"			;//(best�rzt) Die hauen sich den Sch�del ein ...
	GoodVictory					=	"SVM_26_GoodVictory"					;//(b�se lachend) Das hat er verdient.
	NotBad						= 	"SVM_26_NotBad"						;//(anerkennend) Gar nicht so �bel ...
	OhMyGodHesDown				=	"SVM_26_OhMyGodHesDown"				;//(zu sich selbst) Was f�r ein brutaler Kerl ...
	CheerFriend01				=	"SVM_26_CheerFriend01"				;//Ja, so ist's gut!
	CheerFriend02				=	"SVM_26_CheerFriend02"				;//Na, mach schon!
	CheerFriend03				=	"SVM_26_CheerFriend03"				;//Immer feste drauf!
	Ooh01						=	"SVM_26_Ooh01"						;//Lass dir nichts gefallen!
	Ooh02						=	"SVM_26_Ooh02"						;//Den wirst du ja wohl schaffen!
	Ooh03						=	"SVM_26_Ooh03"						;//Das gibt's doch gar nicht!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_26_WhatWasThat"					;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_26_GetOutOfMyBed"					;//Raus aus meinem Bett!
	Awake						= "SVM_26_Awake"							;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_26_TOUGHGUY_ATTACKLOST"			;//Ist ja schon gut, du hast gewonnen. Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_26_TOUGHGUY_ATTACKWON"			;//(selbstgef�llig) Muss ich dir noch mal zeigen, wer hier der Herr ist?
	TOUGHGUY_PLAYERATTACK		= "SVM_26_TOUGHGUY_PLAYERATTACK"			;//Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_26_GOLD_1000"						;//1000 Goldst�cke.
	GOLD_950					= "SVM_26_GOLD_950"						;//950 Goldst�cke.
	GOLD_900					= "SVM_26_GOLD_900"						;//900 Goldst�cke.
	GOLD_850					= "SVM_26_GOLD_850"						;//850 Goldst�cke.
	GOLD_800					= "SVM_26_GOLD_800"						;//800 Goldst�cke.
	GOLD_750					= "SVM_26_GOLD_750"						;//750 Goldst�cke.
	GOLD_700					= "SVM_26_GOLD_700"						;//700 Goldst�cke.
	GOLD_650					= "SVM_26_GOLD_650"						;//650 Goldst�cke.
	GOLD_600					= "SVM_26_GOLD_600"						;//600 Goldst�cke.
	GOLD_550					= "SVM_26_GOLD_550"						;//550 Goldst�cke.
	GOLD_500					= "SVM_26_GOLD_500"						;//500 Goldst�cke.
	GOLD_450					= "SVM_26_GOLD_450"						;//450 Goldst�cke.
	GOLD_400					= "SVM_26_GOLD_400"						;//400 Goldst�cke.
	GOLD_350					= "SVM_26_GOLD_350"						;//350 Goldst�cke.
	GOLD_300					= "SVM_26_GOLD_300"						;//300 Goldst�cke.
	GOLD_250					= "SVM_26_GOLD_250"						;//250 Goldst�cke.
	GOLD_200					= "SVM_26_GOLD_200"						;//200 Goldst�cke.
	GOLD_150					= "SVM_26_GOLD_150"						;//150 Goldst�cke.
	GOLD_100					= "SVM_26_GOLD_100"						;//100 Goldst�cke.
	GOLD_90						= "SVM_26_GOLD_90"						;//90 Goldst�cke.
	GOLD_80						= "SVM_26_GOLD_80"						;//80 Goldst�cke.
	GOLD_70						= "SVM_26_GOLD_70"						;//70 Goldst�cke.
	GOLD_60						= "SVM_26_GOLD_60"						;//60 Goldst�cke.
	GOLD_50						= "SVM_26_GOLD_50"						;//50 Goldst�cke.
	GOLD_40						= "SVM_26_GOLD_40"						;//40 Goldst�cke.
	GOLD_30						= "SVM_26_GOLD_30"						;//30 Goldst�cke.
	GOLD_20						= "SVM_26_GOLD_20"						;//20 Goldst�cke.
	GOLD_10						= "SVM_26_GOLD_10"						;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_26_Smalltalk01"					;//... glaubst du wirklich ...
	Smalltalk02					= "SVM_26_Smalltalk02"					;//... m�glich ist alles ...
	Smalltalk03					= "SVM_26_Smalltalk03"					;//... das h�tte er doch besser wissen m�ssen ...
	Smalltalk04					= "SVM_26_Smalltalk04"					;//... als ob ich nicht schon genug Probleme h�tte ...
	Smalltalk05					= "SVM_26_Smalltalk05"					;//... wer erz�hlt denn so was ...
	Smalltalk06					= "SVM_26_Smalltalk06"					;//... das gibt doch nur noch mehr �rger ...
	Smalltalk07					= "SVM_26_Smalltalk07"					;//... man erz�hlt sich ja so einiges ...
	Smalltalk08					= "SVM_26_Smalltalk08"					;//... ich h�tte das nicht gemacht ...
	Smalltalk09					= "SVM_26_Smalltalk09"					;//... das sind doch alles nur Ger�chte ...
	Smalltalk10					= "SVM_26_Smalltalk10"					;//... man muss eben aufpassen, was man so rumerz�hlt ...
	Smalltalk11					= "SVM_26_Smalltalk11"					;//... das h�tte ich dir vorher sagen k�nnen ...
	Smalltalk12					= "SVM_26_Smalltalk12"					;//... mich fragt ja keiner ...
	Smalltalk13					= "SVM_26_Smalltalk13"					;//... der arme Kerl kann einem Leid tun ...
	Smalltalk14					= "SVM_26_Smalltalk14"					;//... das ist doch nichts Neues ...
	Smalltalk15					= "SVM_26_Smalltalk15"					;//... das liegt doch auf der Hand ...
	Smalltalk16					= "SVM_26_Smalltalk16"					;//... mich brauchst du das nicht zu fragen ...
	Smalltalk17					= "SVM_26_Smalltalk17"					;//... das kann ja nicht ewig so weitergehen ...
	Smalltalk18					= "SVM_26_Smalltalk18"					;//... meine Meinung kennst du ja schon ...
	Smalltalk19					= "SVM_26_Smalltalk19"					;//... genau das hab ich auch gesagt ...
	Smalltalk20					= "SVM_26_Smalltalk20"					;//... daran wird sich nie etwas �ndern ...
	Smalltalk21					= "SVM_26_Smalltalk21"					;//... warum erfahre ich das erst jetzt ...
	Smalltalk22					= "SVM_26_Smalltalk22"					;//... lass uns mal abwarten, was daraus wird ...
	Smalltalk23					= "SVM_26_Smalltalk23"					;//... einige Probleme erledigen sich von selbst ...
	Smalltalk24					= "SVM_26_Smalltalk24"					;//... ich kann das nicht mehr h�ren ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_26_Smalltalk25"					;//... der war doch sturzbetrunken ...
	Smalltalk26					= "SVM_26_Smalltalk26"					;//... mit mir kann man so was nicht machen ...
	Smalltalk27					= "SVM_26_Smalltalk27"					;//... alle sind gerannt wie die Hasen, ich war ganz allein ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_26_Smalltalk28"					;//... so steht es in den heiligen Schriften ...
	Smalltalk29					= "SVM_26_Smalltalk29"					;//... ich handle stets in Innos' Namen ...
	Smalltalk30					= "SVM_26_Smalltalk30"					;//... niemand darf gegen die g�ttliche Ordnung versto�en ...
	SmalltalkKhorataAnnaQuest01			= "SVM_26_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_26_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_26_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_26_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_26_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_26_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_26_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_26_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_26_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_26_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_26_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_26_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_26_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_26_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_26_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_26_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_26_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_26_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_26_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_26_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_26_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_26_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_26_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_26_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_26_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_26_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_26_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_26_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_26_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_26_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_26_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_26_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_26_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_26_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_26_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_26_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_26_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_26_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_26_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_26_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_26_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_26_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_26_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_26_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_26_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_26_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_26_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_26_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_26_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_26_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_26_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_26_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_26_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_26_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_26_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_26_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_26_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_26_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_26_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_26_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_26_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_26_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_26_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_26_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_26_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_26_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_26_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_26_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_26_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_26_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_26_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_26_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_26_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_26_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_26_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_26_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_26_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_26_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...

	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_26_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_26_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_26_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_26_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_26_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_26_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_26_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_26_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_26_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_26_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_26_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_26_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_26_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_26_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_26_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_26_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_26_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_26_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_26_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbei gehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_26_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlang gehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_26_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_26_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_26_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_26_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_26_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_26_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_26_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_26_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_26_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_26_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_26_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_26_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_26_Addon_WrongArmor";				//Das ist nicht deine Kleidung. Ich rede nicht mit dir.
	ADDON_WRONGARMOR_SLD		= "SVM_26_ADDON_WRONGARMOR_SLD";			//Wie l�ufst du denn rum? Zieh dir was Vern�nftiges an.
	ADDON_WRONGARMOR_MIL		= "SVM_26_ADDON_WRONGARMOR_MIL";			//Du bist Soldat! Kleide dich entsprechend.
	ADDON_WRONGARMOR_KDF		= "SVM_26_ADDON_WRONGARMOR_KDF";			//Deine Kleidung ist unserem Orden nicht angemessen. Zieh dich um.
	ADDON_NOARMOR_BDT			= "SVM_26_ADDON_ADDON_NOARMOR_BDT";		//Hast ja noch nicht mal 'ne R�stung. Verschwinde!

	ADDON_DIEBANDIT				= "SVM_26_ADDON_DIEBANDIT";				//Stirb, du dreckiger Bandit!
	ADDON_DIRTYPIRATE			= "SVM_26_ADDON_DIRTYPIRATE";			//Piratenpack!

	RELMINE01			= "SVM_26_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_26_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_26_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_26_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_26_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_26_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_26_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_26_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_26_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_26_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_26_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_26_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_26_NoLearnGold";			//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_26_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_26_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_26_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_26_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_26_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_26_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_26_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_26_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_26_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_26_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_26_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_26_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_26_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_26_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_26_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_26_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_26_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_26_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_26_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_26_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_26_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_26_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_26_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_26_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_26_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_26_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_26_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_26_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_26_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_26_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_26_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_26_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_26_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_26_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_26_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_26_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_26_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_26_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_26_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_26_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_26_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_26_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_26_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_26_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_27 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	Weather						= 	"SVM_27_Weather"						;//Schei�wetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_27_IGetYouStill"				;//DU schon wieder!
	DieEnemy					=	"SVM_27_DieEnemy"					;//Ich mach dich fertig!
	DieMonster					=	"SVM_27_DieMonster"					;//Schon wieder eins von diesen Biestern!
	DirtyThief					=	"SVM_27_DirtyThief"					;//Du mieser kleiner Dieb!
	HandsOff					=	"SVM_27_HandsOff"					;//Nimm deine Finger weg da!
	SheepKiller					=	"SVM_27_SheepKiller"					;//Hey! Lass unsere Schafe in Ruhe!
	SheepKillerMonster			=	"SVM_27_SheepKillerMonster"			;//Das Biest frisst unsere Schafe!
	YouMurderer					=	"SVM_27_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_27_DieStupidBeast"				;//Was will DAS Vieh denn hier?
	YouDareHitMe				=	"SVM_27_YouDareHitMe"				;//Jetzt kannst du was erleben!
	YouAskedForIt				=	"SVM_27_YouAskedForIt"				;//Du hast es nicht anders gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_27_ThenIBeatYouOutOfHere"		;//Wer nicht h�ren will, muss f�hlen.
	WhatDidYouDoInThere			=	"SVM_27_WhatDidYouDoInThere"			;//Was wolltet du da drin, he!?
	WillYouStopFighting			=	"SVM_27_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_27_KillEnemy"					;//Stirb!
	EnemyKilled					=	"SVM_27_EnemyKilled"					;//So ein d�mlicher Mistkerl ...
	MonsterKilled				=	"SVM_27_MonsterKilled"				;//So, das war's mit dir, du Mistvieh!
	ThiefDown					=	"SVM_27_ThiefDown"					;//Lass in Zukunft die Finger von meinen Sachen, klar?
	rumfummlerDown				=	"SVM_27_rumfummlerDown"				;//Behalt in Zukunft deine Finger bei dir!
	SheepAttackerDown			=	"SVM_27_SheepAttackerDown"			;//Vergreif dich nie wieder an unseren Schafen!
	KillMurderer				=	"SVM_27_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_27_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_27_NeverHitMeAgain"				;//Versuch das nicht noch mal, B�rschchen!
	YouBetterShouldHaveListened	=	"SVM_27_YouBetterShouldHaveListened"	;//Lass dir das eine Lehre sein,
	GetUpAndBeGone				=	"SVM_27_GetUpAndBeGone"				;//Steh auf und mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_27_NeverEnterRoomAgain"			;//Ich will dich nie wieder da drinnen sehen, klar?
	ThereIsNoFightingHere		=	"SVM_27_ThereIsNoFightingHere"		;//Wenn hier einer Schl�ge verteilt, dann bin ich das, kapiert?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_27_Berzerk"						;//UUAAARRGGGHHH!!!
		RunAway						= 	"SVM_27_RunAway"						;//Schei�e! Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_27_Alarm"					;//ALARM!
	Guards						=	"SVM_27_Guards"					;//WACHE!
	Help						=	"SVM_27_Help"					;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_27_GoodMonsterKill"			;//(ruft zu) Ja! So muss man's den Biestern geben!
	GoodKill					= 	"SVM_27_GoodKill"				;//(ruft) Das hat die Sau verdient!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_27_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_27_RunCoward"				;//(ruft laut) Wir sprechen uns noch!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_27_GetOutOfHere"			;//Raus!
	WhyAreYouInHere				=	"SVM_27_WhyAreYouInHere"			;//Was hast du hier zu suchen?!
	YesGoOutOfHere				= 	"SVM_27_YesGoOutOfHere"			;//Hau blo� ab!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_27_WhatsThisSupposedToBe"	;//Was schleichst du denn da rum?
	YouDisturbedMySlumber		=	"SVM_27_YouDisturbedMySlumber"	;//(wacht auf) Was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_27_ITookYourGold"			;//Danke f�r das Gold, du Held!
	ShitNoGold					=	"SVM_27_ShitNoGold"				;//Du arme Wurst, hast ja nicht mal Gold dabei!
	ITakeYourWeapon				=	"SVM_27_ITakeYourWeapon"			;//Die Waffe nehm ich mal besser an mich!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_27_WhatAreYouDoing"			;//(warnt) Pass auf! Noch mal und ich verpass dir eine.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_27_LookingForTroubleAgain"	;//(agressiv) Willst du noch mal was aufs Maul?
																	 
	StopMagic					=	"SVM_27_StopMagic"				;//H�r auf mit dieser Magie-Schei�e!
	ISaidStopMagic				=	"SVM_27_ISaidStopMagic"			;//Willst du Schl�ge? H�r sofort damit auf!!!
	WeaponDown					=	"SVM_27_WeaponDown"				;//Steck die Waffe weg!
	ISaidWeaponDown				=	"SVM_27_ISaidWeaponDown"			;//Steck endlich die Schei�-Waffe weg!
	WiseMove					=	"SVM_27_WiseMove"				;//Kluges Kerlchen!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_27_NextTimeYoureInForIt"	;//(zu sich selbst) Das n�chste Mal werden wir ja sehen ...
	OhMyHead					=	"SVM_27_OhMyHead"				;//(zu sich selbst) Oh Mann, mein Kopf ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_27_TheresAFight"			;//(gierig) Ah, ein Kampf!
	OhMyGodItsAFight			=	"SVM_27_OhMyGodItsAFight"		;//(best�rzt) Mein Gott, ein Kampf!
	GoodVictory					=	"SVM_27_GoodVictory"				;//(b�se lachend) Dem hast du's gezeigt!
	NotBad						= 	"SVM_27_NotBad"					;//(anerkennend) Nicht schlecht ...
	OhMyGodHesDown				=	"SVM_27_OhMyGodHesDown"			;//(zu sich selbst) Mein Gott! Wie brutal ...
	CheerFriend01				=	"SVM_27_CheerFriend01"			;//Ja, gib's ihm!
	CheerFriend02				=	"SVM_27_CheerFriend02"			;//Zeig's ihm!
	CheerFriend03				=	"SVM_27_CheerFriend03"			;//Mach ihn fertig!
	Ooh01						=	"SVM_27_Ooh01"					;//Wehr dich!
	Ooh02						=	"SVM_27_Ooh02"					;//Schlag doch zur�ck!
	Ooh03						=	"SVM_27_Ooh03"					;//Uh! Das tat weh!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_27_WhatWasThat"				;//(zu sich selbst, wacht auf) Verdammt, Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_27_GetOutOfMyBed"				;//Such dir ein eigenes Bett!
	Awake						= "SVM_27_Awake"						;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_27_TOUGHGUY_ATTACKLOST"		;//Du hast ja 'nen ganz sch�nen Schlag drauf ... Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_27_TOUGHGUY_ATTACKWON"		;//(selbstgef�llig) Noch Fragen?
	TOUGHGUY_PLAYERATTACK		= "SVM_27_TOUGHGUY_PLAYERATTACK"		;//Da bist du ja wieder!
	// ----------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_27_Smalltalk01"				;//... ist das wirklich wahr ...
	Smalltalk02					= "SVM_27_Smalltalk02"				;//... ich hab was Anderes geh�rt ...
	Smalltalk03					= "SVM_27_Smalltalk03"				;//... sag mir nicht, du hast das nicht gewusst ...
	Smalltalk04					= "SVM_27_Smalltalk04"				;//... man wei� gar nicht mehr, wem man noch glauben kann ...
	Smalltalk05					= "SVM_27_Smalltalk05"				;//... das ist doch alles nur Gerede ...
	Smalltalk06					= "SVM_27_Smalltalk06"				;//... meinst du, mir geht es besser ...
	Smalltalk07					= "SVM_27_Smalltalk07"				;//... ich wunder mich �ber gar nichts mehr ...
	Smalltalk08					= "SVM_27_Smalltalk08"				;//... das ist wirklich nicht mein Problem ...
	Smalltalk09					= "SVM_27_Smalltalk09"				;//... glaubst du wirklich daran ...
	Smalltalk10					= "SVM_27_Smalltalk10"				;//... von mir erf�hrt keiner was ...
	Smalltalk11					= "SVM_27_Smalltalk11"				;//... das war doch schon vorher klar ...
	Smalltalk12					= "SVM_27_Smalltalk12"				;//... er hat auf die falsche Leute geh�rt ...
	Smalltalk13					= "SVM_27_Smalltalk13"				;//... wenn er das nicht sieht, kann ich ihm auch nicht mehr helfen ...
	Smalltalk14					= "SVM_27_Smalltalk14"				;//... ich erz�hl dir doch nichts Neues ...
	Smalltalk15					= "SVM_27_Smalltalk15"				;//... von selbst ist er da nicht drauf gekommen ...
	Smalltalk16					= "SVM_27_Smalltalk16"				;//... das ist doch lange bekannt ...
	Smalltalk17					= "SVM_27_Smalltalk17"				;//... das ist ne schlimme Sache ...
	Smalltalk18					= "SVM_27_Smalltalk18"				;//... ich h�tte das anders gemacht ...
	Smalltalk19					= "SVM_27_Smalltalk19"				;//... ich bin ganz deiner Meinung ...
	Smalltalk20					= "SVM_27_Smalltalk20"				;//... wird sich das jemals �ndern ...
	Smalltalk21					= "SVM_27_Smalltalk21"				;//... das habe ich noch gar nicht gewusst ...
	Smalltalk22					= "SVM_27_Smalltalk22"				;//... da kannst du eh nichts dran �ndern ...
	Smalltalk23					= "SVM_27_Smalltalk23"				;//... das wundert mich nicht ...
	Smalltalk24					= "SVM_27_Smalltalk24"				;//... er musste es ja besser wissen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_27_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_27_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_27_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_27_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_27_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_27_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_27_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_27_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_27_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_27_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_27_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_27_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_27_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_27_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...
	// ----------------------------------------------------------------------------------------------------------------------
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_27_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_27_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_27_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_27_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------

	NoLearnGold			= "SVM_27_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_27_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_27_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_27_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_28 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	BELGreetings				=	"SVM_28_BELGreetings"				;//Beliar zu ehren!
	Weather						= 	"SVM_28_Weather"					;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_28_IGetYouStill"				;//Aber jetzt krieg ich dich!
	DieEnemy					=	"SVM_28_DieEnemy"					;//Ich mach dich fertig!
	DieMonster					=	"SVM_28_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_28_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_28_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_28_SheepKiller"				;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_28_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_28_YouMurderer"				;//M�rder!
	DieStupidBeast				=	"SVM_28_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_28_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_28_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_28_ThenIBeatYouOutOfHere"		;//Du willst nicht gehen? Na gut!
	WhatDidYouDoInThere			=	"SVM_28_WhatDidYouDoInThere"		;//Was hattest du da drin zu suchen?
	WillYouStopFighting			=	"SVM_28_WillYouStopFighting"		;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_28_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_28_EnemyKilled"				;//Das hast du verdient, Mistkerl!
	MonsterKilled				=	"SVM_28_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_28_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_28_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_28_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_28_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_28_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_28_NeverHitMeAgain"			;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_28_YouBetterShouldHaveListened";//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_28_GetUpAndBeGone"				;//Und jetzt sieh zu, dass du hier verschwindest!
	NeverEnterRoomAgain			=	"SVM_28_NeverEnterRoomAgain"		;//Und lass dich ja nie wieder da drinnen erwischen!
	ThereIsNoFightingHere		=	"SVM_28_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_28_Berzerk"						;//UUAAARRGGGHHH!!!
	RunAway						= 	"SVM_28_RunAway"					;//Ach du Schei�e!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_28_Alarm"					;//ALARM!
	Guards						=	"SVM_28_Guards"					;//WACHE!
	Help						=	"SVM_28_Help"					;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_28_GoodMonsterKill"		;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_28_GoodKill"				;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_28_NOTNOW"					;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_28_RunCoward"				;//(ruft laut) Ja! Renn, so schnell du kannst!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_28_GetOutOfHere"			;//Raus hier!
	WhyAreYouInHere				=	"SVM_28_WhyAreYouInHere"		;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_28_YesGoOutOfHere"			;//Ja, mach dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_28_WhatsThisSupposedToBe"	;//Hey du! Was schleichst du da rum.
	YouDisturbedMySlumber		=	"SVM_28_YouDisturbedMySlumber"	;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_28_ITookYourGold"			;//Danke f�r das Gold, du Held!
	ShitNoGold					=	"SVM_28_ShitNoGold"				;//Du arme Wurst, hast ja nicht mal Gold dabei!
	ITakeYourWeapon				=	"SVM_28_ITakeYourWeapon"		;//Die Waffe nehm ich mal besser an mich!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_28_WhatAreYouDoing"		;//(warnt) Pass auf! Noch mal, und ich verpass dir eine.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_28_LookingForTroubleAgain"	;//Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_28_StopMagic"				;//H�r auf mit dieser Magie-Schei�e!
	ISaidStopMagic				=	"SVM_28_ISaidStopMagic"			;//Willst du Schl�ge? H�r sofort damit auf!!!
	WeaponDown					=	"SVM_28_WeaponDown"				;//Steck die Waffe weg!
	ISaidWeaponDown				=	"SVM_28_ISaidWeaponDown"		;//Steck endlich die Schei�waffe weg!
	WiseMove					=	"SVM_28_WiseMove"				;//Kluges Kerlchen!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_28_NextTimeYoureInForIt"	;//(zu sich selbst) Das n�chste Mal werden wir ja sehen ...
	OhMyHead					=	"SVM_28_OhMyHead"				;//(zu sich selbst) Oh Mann, mein Kopf ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_28_TheresAFight"			;//(gierig) Ah, ein Kampf!
	OhMyGodItsAFight			=	"SVM_28_OhMyGodItsAFight"		;//(best�rzt) Mein Gott, ein Kampf!
	GoodVictory					=	"SVM_28_GoodVictory"			;//(b�se lachend) Dem hast du's gezeigt!
	NotBad						= 	"SVM_28_NotBad"					;//(anerkennend) Nicht schlecht ...
	OhMyGodHesDown				=	"SVM_28_OhMyGodHesDown"			;//(zu sich selbst) Mein Gott! Wie brutal ...
	CheerFriend01				=	"SVM_28_CheerFriend01"			;//Schlag zu!
	CheerFriend02				=	"SVM_28_CheerFriend02"			;//Gib alles!
	CheerFriend03				=	"SVM_28_CheerFriend03"			;//Zeig's ihm!
	Ooh01						=	"SVM_28_Ooh01"					;//Bleib dran!
	Ooh02						=	"SVM_28_Ooh02"					;//Vorsicht!
	Ooh03						=	"SVM_28_Ooh03"					;//Oh! Der hat gesessen!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_28_WhatWasThat"				;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_28_GetOutOfMyBed"			;//Das ist mein Bett!
	Awake						= "SVM_28_Awake"					;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_28_TOUGHGUY_ATTACKLOST"		;//Okay, okay, du bist der Bessere von uns beiden! Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_28_TOUGHGUY_ATTACKWON"		;//(selbstgef�llig) Ich nehme an, du hast mittlerweile begriffen, wer von uns beiden der St�rkere ist ... Was willst du?
	TOUGHGUY_PLAYERATTACK		= "SVM_28_TOUGHGUY_PLAYERATTACK"	;//Ich dachte, du wolltest dich mit mir anlegen. Hast du's dir anders �berlegt? Willst doch lieber REDEN, was? (lacht)
	// ----------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_28_Smalltalk01"				;//... glaubst du wirklich ...
	Smalltalk02					= "SVM_28_Smalltalk02"				;//... m�glich ist alles ...
	Smalltalk03					= "SVM_28_Smalltalk03"				;//... das h�tte er doch besser wissen m�ssen ...
	Smalltalk04					= "SVM_28_Smalltalk04"				;//... als ob ich nicht schon genug Probleme h�tte ...
	Smalltalk05					= "SVM_28_Smalltalk05"				;//... wer erz�hlt denn so was ...
	Smalltalk06					= "SVM_28_Smalltalk06"				;//... das gibt doch nur noch mehr �rger ...
	Smalltalk07					= "SVM_28_Smalltalk07"				;//... man erz�hlt sich ja so einiges ...
	Smalltalk08					= "SVM_28_Smalltalk08"				;//... ich h�tte das nicht gedacht ...
	Smalltalk09					= "SVM_28_Smalltalk09"				;//... das sind doch alles nur Ger�chte ...
	Smalltalk10					= "SVM_28_Smalltalk10"				;//... man muss eben aufpassen, was man so rumerz�hlt ...
	Smalltalk11					= "SVM_28_Smalltalk11"				;//... das h�tte ich dir vorher sagen k�nnen ...
	Smalltalk12					= "SVM_28_Smalltalk12"				;//... mich fragt ja keiner ...
	Smalltalk13					= "SVM_28_Smalltalk13"				;//... der arme Kerl kann einem Leid tun ...
	Smalltalk14					= "SVM_28_Smalltalk14"				;//... das ist doch nichts Neues ...
	Smalltalk15					= "SVM_28_Smalltalk15"				;//... das liegt doch auf der Hand ...
	Smalltalk16					= "SVM_28_Smalltalk16"				;//... mich brauchst du das nicht zu fragen ...
	Smalltalk17					= "SVM_28_Smalltalk17"				;//... das kann ja nicht ewig so weitergehen ...
	Smalltalk18					= "SVM_28_Smalltalk18"				;//... meine Meinung kennst du ja schon ...
	Smalltalk19					= "SVM_28_Smalltalk19"				;//... genau das hab ich auch gesagt ...
	Smalltalk20					= "SVM_28_Smalltalk20"				;//... daran wird sich nie etwas �ndern ...
	Smalltalk21					= "SVM_28_Smalltalk21"				;//... warum erfahre ich das jetzt erst ...
	Smalltalk22					= "SVM_28_Smalltalk22"				;//... lass uns erstmal abwarten, was daraus wird ...
	Smalltalk23					= "SVM_28_Smalltalk23"				;//... einige Probleme erledigen sich von selbst ...
	Smalltalk24					= "SVM_28_Smalltalk24"				;//... ich kann das nicht mehr h�ren ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_28_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_28_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_28_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_28_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_28_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_28_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_28_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_28_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------

	NoLearnGold			= "SVM_28_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_28_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_28_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_28_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_29 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	Weather						= 	"SVM_29_Weather"						;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_29_IGetYouStill"				;//Krieg' ich dich DOCH noch!
	DieEnemy					=	"SVM_29_DieEnemy"					;//Jetzt bist du dran!
	DieMonster					=	"SVM_29_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_29_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_29_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_29_SheepKiller"					;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_29_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_29_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_29_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_29_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_29_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_29_ThenIBeatYouOutOfHere"		;//Dann muss ich dich eben rausPR�GELN!
	WhatDidYouDoInThere			=	"SVM_29_WhatDidYouDoInThere"			;//Was hattest DU denn da drin zu suchen, he!?
	WillYouStopFighting			=	"SVM_29_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_29_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_29_EnemyKilled"					;//Das war's f�r dich, Penner.
	MonsterKilled				=	"SVM_29_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_29_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_29_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	Berzerk						=	"SVM_29_Berzerk"						;//UUAAARRGGGHHH!!!
	SheepAttackerDown			=	"SVM_29_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_29_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_29_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_29_NeverHitMeAgain"				;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_29_YouBetterShouldHaveListened"	;//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_29_GetUpAndBeGone"				;//Und jetzt mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_29_NeverEnterRoomAgain"			;//Und dass ich dich nie wieder da drin erwische!
	ThereIsNoFightingHere		=	"SVM_29_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_29_RunAway"						;//Schei�e! Nichts wie weg hier!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_29_Alarm"						;//ALARM!
	Guards						=	"SVM_29_Guards"						;//WACHE!
	Help						=	"SVM_29_Help"						;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_29_GoodMonsterKill"				;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_29_GoodKill"					;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_29_NOTNOW"						;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_29_RunCoward"					;//(ruft laut) Bleib stehen, du Lump!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_29_GetOutOfHere"				;//Raus hier!
	WhyAreYouInHere				=	"SVM_29_WhyAreYouInHere"				;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_29_YesGoOutOfHere"				;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_29_WhatsThisSupposedToBe"		;//Hey du! Was schleichst denn du da rum?
	YouDisturbedMySlumber		=	"SVM_29_YouDisturbedMySlumber"		;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_29_ITookYourGold"				;//Gold! Das ist schon mal meins ...
	ShitNoGold					=	"SVM_29_ShitNoGold"					;//Du hast noch nicht mal Gold dabei?
	ITakeYourWeapon				=	"SVM_29_ITakeYourWeapon"				;//Deine Waffe nehm ich mal lieber mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_29_WhatAreYouDoing"				;//(warnt) Hey! Pass auf!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_29_LookingForTroubleAgain"		;//(aggressiv) Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_29_StopMagic"					;//Geh blo� weg mit deiner Magie!
	ISaidStopMagic				=	"SVM_29_ISaidStopMagic"				;//Weg mit der Magie! H�rst du schlecht!?
	WeaponDown					=	"SVM_29_WeaponDown"					;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_29_ISaidWeaponDown"				;//H�rst du schlecht? Ich sagte: Weg mit der Waffe!
	WiseMove					=	"SVM_29_WiseMove"					;//Na bitte, geht doch!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_29_NextTimeYoureInForIt"		;//(zu sich selbst) Dar�ber reden wir noch ...
	OhMyHead					=	"SVM_29_OhMyHead"					;//(zu sich selbst) Oh, mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_29_TheresAFight"				;//(gierig) Jetzt geht's zur Sache!
	OhMyGodItsAFight			=	"SVM_29_OhMyGodItsAFight"			;//(best�rzt) Die hauen sich ja den Sch�del ein ...
	GoodVictory					=	"SVM_29_GoodVictory"					;//(b�se lachend) Das hat er verdient.
	NotBad						= 	"SVM_29_NotBad"						;//(anerkennend) Gar nicht so �bel ...
	OhMyGodHesDown				=	"SVM_29_OhMyGodHesDown"				;//(zu sich selbst) Was f�r ein brutaler Kerl ...
	CheerFriend01				=	"SVM_29_CheerFriend01"				;//Ja, so ist's gut!
	CheerFriend02				=	"SVM_29_CheerFriend02"				;//Na, mach schon!
	CheerFriend03				=	"SVM_29_CheerFriend03"				;//Immer feste drauf!
	Ooh01						=	"SVM_29_Ooh01"						;//Lass dir nichts gefallen!
	Ooh02						=	"SVM_29_Ooh02"						;//Den wirst du ja wohl schaffen!
	Ooh03						=	"SVM_29_Ooh03"						;//Das gibt's doch gar nicht!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_29_WhatWasThat"					;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_29_GetOutOfMyBed"					;//Raus aus meinem Bett!
	Awake						= "SVM_29_Awake"							;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_29_TOUGHGUY_ATTACKLOST"			;//Ist ja schon gut, du hast gewonnen. Na, was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_29_TOUGHGUY_ATTACKWON"			;//(selbstgef�llig) Muss ich dir noch mal zeigen, wer hier der Herr ist?
	TOUGHGUY_PLAYERATTACK		= "SVM_29_TOUGHGUY_PLAYERATTACK"			;//Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_29_Smalltalk01"					;//... glaubst du wirklich ...
	Smalltalk02					= "SVM_29_Smalltalk02"					;//... m�glich ist alles ...
	Smalltalk03					= "SVM_29_Smalltalk03"					;//... das h�tte er doch besser wissen m�ssen ....
	Smalltalk04					= "SVM_29_Smalltalk04"					;//... als wenn ich nicht schon genug Probleme h�tte ...
	Smalltalk05					= "SVM_29_Smalltalk05"					;//... wer erz�hlt denn so was ...
	Smalltalk06					= "SVM_29_Smalltalk06"					;//... das gibt doch nur noch mehr �rger ...
	Smalltalk07					= "SVM_29_Smalltalk07"					;//... man erz�hlt sich ja so einiges ...
	Smalltalk08					= "SVM_29_Smalltalk08"					;//... ich h�tte das nicht gemacht ...
	Smalltalk09					= "SVM_29_Smalltalk09"					;//... das sind doch alles nur Ger�chte ...
	Smalltalk10					= "SVM_29_Smalltalk10"					;//... man muss eben aufpassen, was man so rumerz�hlt ...
	Smalltalk11					= "SVM_29_Smalltalk11"					;//... das h�tte ich dir vorher sagen k�nnen ...
	Smalltalk12					= "SVM_29_Smalltalk12"					;//... mich fragt ja keiner ...
	Smalltalk13					= "SVM_29_Smalltalk13"					;//... der arme Kerl kann einem Leid tun ...
	Smalltalk14					= "SVM_29_Smalltalk14"					;//... das ist doch nichts Neues ...
	Smalltalk15					= "SVM_29_Smalltalk15"					;//... das liegt doch auf der Hand ...
	Smalltalk16					= "SVM_29_Smalltalk16"					;//... mich brauchst du das nicht zu fragen ...
	Smalltalk17					= "SVM_29_Smalltalk17"					;//... das kann ja nicht ewig so weitergehen ...
	Smalltalk18					= "SVM_29_Smalltalk18"					;//... meine Meinung kennst du ja schon ...
	Smalltalk19					= "SVM_29_Smalltalk19"					;//... genau das hab ich auch gesagt ...
	Smalltalk20					= "SVM_29_Smalltalk20"					;//... daran wird sich nie etwas �ndern ...
	Smalltalk21					= "SVM_29_Smalltalk21"					;//... warum erfahre ich das erst jetzt ...
	Smalltalk22					= "SVM_29_Smalltalk22"					;//... lass uns erstmal abwarten, was daraus wird ...
	Smalltalk23					= "SVM_29_Smalltalk23"					;//... einige Probleme erledigen sich von selbst ...
	Smalltalk24					= "SVM_29_Smalltalk24"					;//... ich kann das nicht mehr h�ren ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_29_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_29_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_29_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_29_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_29_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_29_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_29_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_29_Aargh_3"					;//Aargh
	
	NoLearnGold			= "SVM_29_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_29_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_29_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_29_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_30 (C_SVM)
{
	SC_HeyWaitASecond			= 	"SVM_30_Addon_HeyWaitASecond"			;//(ruft) Warte!
	
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_30_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_30_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_30_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_30_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_30_Weather"						;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_30_IGetYouStill"				;//Krieg ich dich DOCH noch!
	DieEnemy					=	"SVM_30_DieEnemy"					;//Jetzt bist du dran!
	DieMonster					=	"SVM_30_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_30_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_30_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_30_SheepKiller"					;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_30_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_30_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_30_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_30_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_30_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_30_ThenIBeatYouOutOfHere"		;//Dann muss ich dich eben rauspr�geln!
	WhatDidYouDoInThere			=	"SVM_30_WhatDidYouDoInThere"			;//Was hattest DU denn da drin zu suchen, he!?
	WillYouStopFighting			=	"SVM_30_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_30_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_30_EnemyKilled"					;//Das war's f�r dich, Penner.
	Berzerk						=	"SVM_30_Berzerk"						;//UUAAARRGGGHHH!!!
	MonsterKilled				=	"SVM_30_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_30_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_30_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_30_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_30_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_30_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_30_NeverHitMeAgain"				;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_30_YouBetterShouldHaveListened"	;//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_30_GetUpAndBeGone"				;//Und jetzt mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_30_NeverEnterRoomAgain"			;//Und dass ich dich nie wieder da drin erwische!
	ThereIsNoFightingHere		=	"SVM_30_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_30_RunAway"						;//Schei�e! Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_30_Alarm"						;//ALARM!
	Guards						=	"SVM_30_Guards"						;//WACHE!
	Help						=	"SVM_30_Help"						;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_30_GoodMonsterKill"				;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_30_GoodKill"					;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_30_NOTNOW"						;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_30_RunCoward"					;//(ruft laut) Bleib stehen, du Lump!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_30_GetOutOfHere"				;//Raus hier!
	WhyAreYouInHere				=	"SVM_30_WhyAreYouInHere"				;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_30_YesGoOutOfHere"				;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_30_WhatsThisSupposedToBe"		;//Hey du! Was schleichst du da rum?
	YouDisturbedMySlumber		=	"SVM_30_YouDisturbedMySlumber"		;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_30_ITookYourGold"				;//Gold! Das ist schon mal meins ...
	ShitNoGold					=	"SVM_30_ShitNoGold"					;//Du hast noch nicht mal Gold dabei?
	ITakeYourWeapon				=	"SVM_30_ITakeYourWeapon"				;//Deine Waffe nehm ich mal lieber mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_30_WhatAreYouDoing"				;//(warnt) Hey! Pass auf!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_30_LookingForTroubleAgain"		;//(agressiv) Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_30_StopMagic"					;//Geh blo� weg mit deiner Magie!
	ISaidStopMagic				=	"SVM_30_ISaidStopMagic"				;//Weg mit der Magie! H�rst du schlecht!?
	WeaponDown					=	"SVM_30_WeaponDown"					;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_30_ISaidWeaponDown"				;//H�rst du schlecht? Ich sagte: Weg mit der Waffe!
	WiseMove					=	"SVM_30_WiseMove"					;//Na bitte, geht doch!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_30_NextTimeYoureInForIt"		;//(zu sich selbst) Dar�ber reden wir noch ...
	OhMyHead					=	"SVM_30_OhMyHead"					;//(zu sich selbst) Oh, mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_30_TheresAFight"				;//(gierig) Jetzt geht's zur Sache!
	OhMyGodItsAFight			=	"SVM_30_OhMyGodItsAFight"			;//(best�rzt) Die hauen sich den Sch�del ein ...
	GoodVictory					=	"SVM_30_GoodVictory"					;//(b�se lachend) Das hat er verdient.
	NotBad						= 	"SVM_30_NotBad"						;//(anerkennend) Gar nicht so �bel ...
	OhMyGodHesDown				=	"SVM_30_OhMyGodHesDown"				;//(zu sich selbst) Was f�r ein brutaler Kerl ...
	CheerFriend01				=	"SVM_30_CheerFriend01"				;//Ja, so ist's gut!
	CheerFriend02				=	"SVM_30_CheerFriend02"				;//Na, mach schon!
	CheerFriend03				=	"SVM_30_CheerFriend03"				;//Immer feste drauf!
	Ooh01						=	"SVM_30_Ooh01"						;//Lass dir nichts gefallen!
	Ooh02						=	"SVM_30_Ooh02"						;//Den wirst du ja wohl schaffen!
	Ooh03						=	"SVM_30_Ooh03"						;//Das gibt's doch gar nicht!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_30_WhatWasThat"					;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_30_GetOutOfMyBed"					;//Raus aus meinem Bett!
	Awake						= "SVM_30_Awake"							;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_30_TOUGHGUY_ATTACKLOST"			;//Ist ja schon gut, du hast gewonnen. Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_30_TOUGHGUY_ATTACKWON"			;//(selbstgef�llig) Muss ich dir noch mal zeigen, wer hier der Herr ist?
	TOUGHGUY_PLAYERATTACK		= "SVM_30_TOUGHGUY_PLAYERATTACK"			;//Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_30_GOLD_1000"						;//1000 Goldst�cke.
	GOLD_950					= "SVM_30_GOLD_950"						;//950 Goldst�cke.
	GOLD_900					= "SVM_30_GOLD_900"						;//900 Goldst�cke.
	GOLD_850					= "SVM_30_GOLD_850"						;//850 Goldst�cke.
	GOLD_800					= "SVM_30_GOLD_800"						;//800 Goldst�cke.
	GOLD_750					= "SVM_30_GOLD_750"						;//750 Goldst�cke.
	GOLD_700					= "SVM_30_GOLD_700"						;//700 Goldst�cke.
	GOLD_650					= "SVM_30_GOLD_650"						;//650 Goldst�cke.
	GOLD_600					= "SVM_30_GOLD_600"						;//600 Goldst�cke.
	GOLD_550					= "SVM_30_GOLD_550"						;//550 Goldst�cke.
	GOLD_500					= "SVM_30_GOLD_500"						;//500 Goldst�cke.
	GOLD_450					= "SVM_30_GOLD_450"						;//450 Goldst�cke.
	GOLD_400					= "SVM_30_GOLD_400"						;//400 Goldst�cke.
	GOLD_350					= "SVM_30_GOLD_350"						;//350 Goldst�cke.
	GOLD_300					= "SVM_30_GOLD_300"						;//300 Goldst�cke.
	GOLD_250					= "SVM_30_GOLD_250"						;//250 Goldst�cke.
	GOLD_200					= "SVM_30_GOLD_200"						;//200 Goldst�cke.
	GOLD_150					= "SVM_30_GOLD_150"						;//150 Goldst�cke.
	GOLD_100					= "SVM_30_GOLD_100"						;//100 Goldst�cke.
	GOLD_90						= "SVM_30_GOLD_90"						;//90 Goldst�cke.
	GOLD_80						= "SVM_30_GOLD_80"						;//80 Goldst�cke.
	GOLD_70						= "SVM_30_GOLD_70"						;//70 Goldst�cke.
	GOLD_60						= "SVM_30_GOLD_60"						;//60 Goldst�cke.
	GOLD_50						= "SVM_30_GOLD_50"						;//50 Goldst�cke.
	GOLD_40						= "SVM_30_GOLD_40"						;//40 Goldst�cke.
	GOLD_30						= "SVM_30_GOLD_30"						;//30 Goldst�cke.
	GOLD_20						= "SVM_30_GOLD_20"						;//20 Goldst�cke.
	GOLD_10						= "SVM_30_GOLD_10"						;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_30_Smalltalk01"					;//... glaubst du wirklich ...
	Smalltalk02					= "SVM_30_Smalltalk02"					;//... m�glich ist alles ...
	Smalltalk03					= "SVM_30_Smalltalk03"					;//... das h�tte er doch besser wissen m�ssen ...
	Smalltalk04					= "SVM_30_Smalltalk04"					;//... als ob ich nicht schon genug Probleme h�tte ...
	Smalltalk05					= "SVM_30_Smalltalk05"					;//... wer erz�hlt denn so was ...
	Smalltalk06					= "SVM_30_Smalltalk06"					;//... das gibt doch nur noch mehr �rger ...
	Smalltalk07					= "SVM_30_Smalltalk07"					;//... man erz�hlt sich ja so einiges ...
	Smalltalk08					= "SVM_30_Smalltalk08"					;//... ich h�tte das nicht gemacht ...
	Smalltalk09					= "SVM_30_Smalltalk09"					;//... das sind doch alles nur Ger�chte ...
	Smalltalk10					= "SVM_30_Smalltalk10"					;//... man muss eben aufpassen, was man so rumerz�hlt ...
	Smalltalk11					= "SVM_30_Smalltalk11"					;//... das h�tte ich dir vorher sagen k�nnen ...
	Smalltalk12					= "SVM_30_Smalltalk12"					;//... mich fragt ja keiner ...
	Smalltalk13					= "SVM_30_Smalltalk13"					;//... der arme Kerl kann einem Leid tun ...
	Smalltalk14					= "SVM_30_Smalltalk14"					;//... das ist doch nichts Neues ...
	Smalltalk15					= "SVM_30_Smalltalk15"					;//... das liegt doch auf der Hand ...
	Smalltalk16					= "SVM_30_Smalltalk16"					;//... mich brauchst du das nicht zu fragen ...
	Smalltalk17					= "SVM_30_Smalltalk17"					;//... das kann ja nicht ewig so weitergehen ...
	Smalltalk18					= "SVM_30_Smalltalk18"					;//... meine Meinung kennst du ja schon ...
	Smalltalk19					= "SVM_30_Smalltalk19"					;//... genau das hab ich auch gesagt ...
	Smalltalk20					= "SVM_30_Smalltalk20"					;//... daran wird dich nie was �ndern ...
	Smalltalk21					= "SVM_30_Smalltalk21"					;//... warum erfahre ich das erst jetzt ...
	Smalltalk22					= "SVM_30_Smalltalk22"					;//... lass uns erstmal abwarten, was daraus wird ...
	Smalltalk23					= "SVM_30_Smalltalk23"					;//... einige Probleme erledigen sich von selbst ...
	Smalltalk24					= "SVM_30_Smalltalk24"					;//... ich kann das nicht mehr h�ren ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_30_Smalltalk25"					;//... der war doch sturzbetrunken ...
	Smalltalk26					= "SVM_30_Smalltalk26"					;//... mit mir kann man so was nicht machen ...
	Smalltalk27					= "SVM_30_Smalltalk27"					;//... alle sind gerannt wie die Hasen, ich war ganz allein ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_30_Smalltalk28"					;//... so steht es in den heiligen Schriften ...
	Smalltalk29					= "SVM_30_Smalltalk29"					;//... ich handle stets in Innos' Namen ...
	Smalltalk30					= "SVM_30_Smalltalk30"					;//... niemand darf gegen die g�ttliche Ordnung versto�en ...
	SmalltalkKhorataAnnaQuest01			= "SVM_30_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_30_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_30_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_30_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_30_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_30_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_30_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_30_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_30_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_30_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_30_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_30_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_30_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_30_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_30_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_30_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_30_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_30_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_30_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_30_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_30_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_30_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_30_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_30_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_30_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_30_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_30_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_30_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_30_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_30_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_30_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_30_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_30_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_30_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_30_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_30_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_30_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_30_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_30_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_30_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_30_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_30_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_30_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_30_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_30_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_30_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_30_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_30_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_30_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_30_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_30_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_30_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_30_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_30_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_30_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_30_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_30_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_30_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_30_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_30_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_30_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_30_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_30_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_30_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_30_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_30_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_30_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_30_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_30_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_30_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_30_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_30_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_30_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_30_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_30_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_30_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_30_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_30_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...

	// D�monenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_30_SmalltalkDMRBelagerungAbdi01"; //... ehrlich gesagt tut's mir um die beiden nicht Leid ...
	SmalltalkDMRBelagerungAbdi02			= "SVM_30_SmalltalkDMRBelagerungAbdi02"; //... w�sste zu gerne, wer hier im Lager die Leute abschlachtet ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_30_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_30_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_30_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_30_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_30_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_30_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_30_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_30_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_30_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_30_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_30_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_30_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_30_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_30_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_30_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_30_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_30_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_30_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_30_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbeigehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_30_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlanggehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_30_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_30_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_30_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_30_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_30_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_30_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_30_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_30_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_30_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_30_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_30_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_30_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_30_Addon_WrongArmor";				//Was ist das f�r Kleidung? Sie passt nicht zu dir. Lass mich in Ruhe.
	ADDON_WRONGARMOR_SLD		= "SVM_30_ADDON_WRONGARMOR_SLD";			//Trage gef�lligst unsere R�stung, wenn ich mit dir rede. Los, verschwinde.
	ADDON_WRONGARMOR_MIL		= "SVM_30_ADDON_WRONGARMOR_MIL";			//Trage gef�lligst die R�stung des K�nigs. Los geh schon.
	ADDON_WRONGARMOR_KDF		= "SVM_30_ADDON_WRONGARMOR_KDF";			//Deine Kleidung ist unserem Orden nicht angemessen. Zieh dich um.
	ADDON_NOARMOR_BDT			= "SVM_30_ADDON_ADDON_NOARMOR_BDT";			//Hast ja noch nicht mal 'ne R�stung. Verschwinde!

	ADDON_DIEBANDIT				= "SVM_30_ADDON_DIEBANDIT";				//Schon wieder ein Bandit.
	ADDON_DIRTYPIRATE			= "SVM_30_ADDON_DIRTYPIRATE";			//PIRATEN!

	RELMINE01			= "SVM_30_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_30_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_30_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_30_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_30_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_30_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_30_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_30_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_30_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_30_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_30_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_30_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_30_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_30_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_30_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_30_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_30_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_30_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_30_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_30_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_30_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_30_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_30_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_30_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_30_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_30_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_30_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_30_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_30_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_30_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_30_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_30_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_30_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_30_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_30_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_30_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_30_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_30_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_30_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_30_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_30_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_30_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_30_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_30_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_30_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_30_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_30_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_30_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_30_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_30_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_30_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_30_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_30_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_30_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_30_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_30_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_30_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_34 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_34_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_34_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_34_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_34_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_34_Weather"						;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_34_IGetYouStill"				;//Krieg ich dich DOCH noch!
	DieEnemy					=	"SVM_34_DieEnemy"					;//Jetzt bist du dran!
	DieMonster					=	"SVM_34_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_34_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_34_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_34_SheepKiller"					;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_34_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	Berzerk						=	"SVM_34_Berzerk"						;//UUAAARRGGGHHH!!!
	YouMurderer					=	"SVM_34_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_34_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_34_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_34_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_34_ThenIBeatYouOutOfHere"		;//Dann muss ich dich eben rausPR�GELN!
	WhatDidYouDoInThere			=	"SVM_34_WhatDidYouDoInThere"			;//Was hattest DU denn da drin zu suchen, he!?
	WillYouStopFighting			=	"SVM_34_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_34_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_34_EnemyKilled"					;//Das war's f�r dich, Penner.
	MonsterKilled				=	"SVM_34_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_34_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	rumfummlerDown				=	"SVM_34_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_34_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_34_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_34_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_34_NeverHitMeAgain"				;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_34_YouBetterShouldHaveListened"	;//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_34_GetUpAndBeGone"				;//Und jetzt mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_34_NeverEnterRoomAgain"			;//Und dass ich dich nie wieder da drin erwische!
	ThereIsNoFightingHere		=	"SVM_34_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_34_RunAway"						;//Schei�e! Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_34_Alarm"						;//ALARM!
	Guards						=	"SVM_34_Guards"						;//WACHE!
	Help						=	"SVM_34_Help"						;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_34_GoodMonsterKill"				;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_34_GoodKill"					;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_34_NOTNOW"						;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_34_RunCoward"					;//(ruft laut) Bleib stehen, du Lump!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_34_GetOutOfHere"				;//Raus hier!
	WhyAreYouInHere				=	"SVM_34_WhyAreYouInHere"				;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_34_YesGoOutOfHere"				;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_34_WhatsThisSupposedToBe"		;//Hey du! Was schleichst du da rum.
	YouDisturbedMySlumber		=	"SVM_34_YouDisturbedMySlumber"		;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_34_ITookYourGold"				;//Gold! Das ist schon mal meins ...
	ShitNoGold					=	"SVM_34_ShitNoGold"					;//Du hast noch nicht mal Gold dabei?
	ITakeYourWeapon				=	"SVM_34_ITakeYourWeapon"				;//Deine Waffe nehme ich mal lieber mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_34_WhatAreYouDoing"				;//(warnt) Hey! Pass auf!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_34_LookingForTroubleAgain"		;//(agressiv) Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_34_StopMagic"					;//Geh blo� weg mit deiner Magie!
	ISaidStopMagic				=	"SVM_34_ISaidStopMagic"				;//Weg mit der Magie! H�rst du schlecht!?
	WeaponDown					=	"SVM_34_WeaponDown"					;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_34_ISaidWeaponDown"				;//H�rst du schlecht? Ich sagte: Weg mit der Waffe!
	WiseMove					=	"SVM_34_WiseMove"					;//Na bitte, geht doch!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_34_NextTimeYoureInForIt"		;//(zu sich selbst) Dar�ber reden wir noch ...
	OhMyHead					=	"SVM_34_OhMyHead"					;//(zu sich selbst) Oh, mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_34_TheresAFight"				;//(gierig) Jetzt geht's zur Sache!
	OhMyGodItsAFight			=	"SVM_34_OhMyGodItsAFight"			;//(best�rzt) Die hauen sich den Sch�del ein ...
	GoodVictory					=	"SVM_34_GoodVictory"					;//(b�se lachend) Das hat er verdient.
	NotBad						= 	"SVM_34_NotBad"						;//(anerkennend) Gar nicht so �bel ...
	OhMyGodHesDown				=	"SVM_34_OhMyGodHesDown"				;//(zu sich selbst) Was f�r ein brutaler Kerl ...
	CheerFriend01				=	"SVM_34_CheerFriend01"				;//Ja, so ist's gut!
	CheerFriend02				=	"SVM_34_CheerFriend02"				;//Na, mach schon!
	CheerFriend03				=	"SVM_34_CheerFriend03"				;//Immer feste drauf!
	Ooh01						=	"SVM_34_Ooh01"						;//Lass dir nichts gefallen!
	Ooh02						=	"SVM_34_Ooh02"						;//Den wirst du ja wohl schaffen!
	Ooh03						=	"SVM_34_Ooh03"						;//Das gibt's doch gar nicht!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_34_WhatWasThat"					;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_34_GetOutOfMyBed"					;//Raus aus meinem Bett!
	Awake						= "SVM_34_Awake"							;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_34_TOUGHGUY_ATTACKLOST"			;//Ist ja schon gut, du hast gewonnen. Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_34_TOUGHGUY_ATTACKWON"			;//(selbstgef�llig) Muss ich dir noch mal zeigen, wer hier der Herr ist?
	TOUGHGUY_PLAYERATTACK		= "SVM_34_TOUGHGUY_PLAYERATTACK"			;//Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_34_GOLD_1000"						;//1000 Goldst�cke.
	GOLD_950					= "SVM_34_GOLD_950"						;//950 Goldst�cke.
	GOLD_900					= "SVM_34_GOLD_900"						;//900 Goldst�cke.
	GOLD_850					= "SVM_34_GOLD_850"						;//850 Goldst�cke.
	GOLD_800					= "SVM_34_GOLD_800"						;//800 Goldst�cke.
	GOLD_750					= "SVM_34_GOLD_750"						;//750 Goldst�cke.
	GOLD_700					= "SVM_34_GOLD_700"						;//700 Goldst�cke.
	GOLD_650					= "SVM_34_GOLD_650"						;//650 Goldst�cke.
	GOLD_600					= "SVM_34_GOLD_600"						;//600 Goldst�cke.
	GOLD_550					= "SVM_34_GOLD_550"						;//550 Goldst�cke.
	GOLD_500					= "SVM_34_GOLD_500"						;//500 Goldst�cke.
	GOLD_450					= "SVM_34_GOLD_450"						;//450 Goldst�cke.
	GOLD_400					= "SVM_34_GOLD_400"						;//400 Goldst�cke.
	GOLD_350					= "SVM_34_GOLD_350"						;//350 Goldst�cke.
	GOLD_300					= "SVM_34_GOLD_300"						;//300 Goldst�cke.
	GOLD_250					= "SVM_34_GOLD_250"						;//250 Goldst�cke.
	GOLD_200					= "SVM_34_GOLD_200"						;//200 Goldst�cke.
	GOLD_150					= "SVM_34_GOLD_150"						;//150 Goldst�cke.
	GOLD_100					= "SVM_34_GOLD_100"						;//100 Goldst�cke.
	GOLD_90						= "SVM_34_GOLD_90"						;//90 Goldst�cke.
	GOLD_80						= "SVM_34_GOLD_80"						;//80 Goldst�cke.
	GOLD_70						= "SVM_34_GOLD_70"						;//70 Goldst�cke.
	GOLD_60						= "SVM_34_GOLD_60"						;//60 Goldst�cke.
	GOLD_50						= "SVM_34_GOLD_50"						;//50 Goldst�cke.
	GOLD_40						= "SVM_34_GOLD_40"						;//40 Goldst�cke.
	GOLD_30						= "SVM_34_GOLD_30"						;//30 Goldst�cke.
	GOLD_20						= "SVM_34_GOLD_20"						;//20 Goldst�cke.
	GOLD_10						= "SVM_34_GOLD_10"						;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_34_Smalltalk01"					;//... ich kann das nicht glauben ...
	Smalltalk02					= "SVM_34_Smalltalk02"					;//... ich w�re mir da nicht so sicher ...
	Smalltalk03					= "SVM_34_Smalltalk03"					;//... das hat er doch vorher gewusst ....
	Smalltalk04					= "SVM_34_Smalltalk04"					;//... ich wei� langsam nicht mehr, was ich glauben soll ...
	Smalltalk05					= "SVM_34_Smalltalk05"					;//... ich wei� gar nicht, warum er sich so aufregt ...
	Smalltalk06					= "SVM_34_Smalltalk06"					;//... noch mehr �rger kann ich nicht gebrauchen ...
	Smalltalk07					= "SVM_34_Smalltalk07"					;//... ich hab so einiges geh�rt ...
	Smalltalk08					= "SVM_34_Smalltalk08"					;//... davon lass ich lieber die Finger ...
	Smalltalk09					= "SVM_34_Smalltalk09"					;//... man darf halt nicht alles glauben, was man h�rt ...
	Smalltalk10					= "SVM_34_Smalltalk10"					;//... von mir hat er das nicht ...
	Smalltalk11					= "SVM_34_Smalltalk11"					;//... ich habe mir das schon gedacht ...
	Smalltalk12					= "SVM_34_Smalltalk12"					;//... meine Meinung will ja keiner h�ren ...
	Smalltalk13					= "SVM_34_Smalltalk13"					;//... das hat er wirklich nicht verdient ...
	Smalltalk14					= "SVM_34_Smalltalk14"					;//... sag nicht, das hast du nicht gewusst ...
	Smalltalk15					= "SVM_34_Smalltalk15"					;//... das war doch klar ...
	Smalltalk16					= "SVM_34_Smalltalk16"					;//... wo hast du das denn schon wieder her ...
	Smalltalk17					= "SVM_34_Smalltalk17"					;//... das kann ja nicht ewig so weiter gehen ...
	Smalltalk18					= "SVM_34_Smalltalk18"					;//... ich hab da so meine eigene Meinung ...
	Smalltalk19					= "SVM_34_Smalltalk19"					;//... es war genau so, wie du sagst ...
	Smalltalk20					= "SVM_34_Smalltalk20"					;//... ich glaub nicht, dass sich daran was �ndert ...
	Smalltalk21					= "SVM_34_Smalltalk21"					;//... das h�re ich zum ersten Mal ...
	Smalltalk22					= "SVM_34_Smalltalk22"					;//... wir k�nnen nur abwarten ...
	Smalltalk23					= "SVM_34_Smalltalk23"					;//... die Probleme habe ich kommen sehen ...
	Smalltalk24					= "SVM_34_Smalltalk24"					;//... warum h�rt eigentlich keiner auf mich ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                           
	Smalltalk25					= "SVM_34_Smalltalk25"					;//... der ist gerannt, als ob Beliar selbst hinter ihm her w�re ...
	Smalltalk26					= "SVM_34_Smalltalk26"					;//... wir haben ihn nat�rlich dann doch noch gekriegt ...
	Smalltalk27					= "SVM_34_Smalltalk27"					;//... da muss man mal ganz kr�ftig dazwischenhauen ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                           
	Smalltalk28					= "SVM_34_Smalltalk28"					;//... einige wissen gar nicht, wie sehr sie sich vers�ndigen ...
	Smalltalk29					= "SVM_34_Smalltalk29"					;//... denn so ist es Innos' Wille ...
	Smalltalk30					= "SVM_34_Smalltalk30"					;//... seine Taten waren gerecht ...
	SmalltalkKhorataAnnaQuest01			= "SVM_34_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_34_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_34_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_34_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_34_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_34_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_34_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_34_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_34_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_34_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_34_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_34_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_34_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_34_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_34_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_34_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_34_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_34_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_34_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_34_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_34_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_34_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_34_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_34_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_34_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_34_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_34_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_34_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_34_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_34_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_34_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_34_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_34_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_34_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_34_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_34_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_34_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_34_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_34_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_34_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_34_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_34_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_34_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_34_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_34_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_34_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_34_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_34_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_34_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_34_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_34_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_34_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_34_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_34_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_34_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_34_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_34_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_34_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_34_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_34_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_34_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_34_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_34_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_34_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_34_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_34_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_34_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_34_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_34_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_34_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_34_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_34_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_34_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_34_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_34_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_34_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_34_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_34_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_34_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_34_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_34_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_34_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_34_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_34_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_34_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_34_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_34_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_34_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_34_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_34_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_34_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_34_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_34_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_34_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_34_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_34_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_34_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbeigehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_34_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlanggehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_34_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_34_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_34_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_34_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_34_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_34_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_34_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_34_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_34_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_34_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_34_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_34_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_34_Addon_WrongArmor";			//Die Kleidung passt nicht zu dir. Du hast bestimmt was zu verbergen. Lass mich Ruhe.
	ADDON_WRONGARMOR_SLD		= "SVM_34_ADDON_WRONGARMOR_SLD";		//Wenn du mit mir reden willst, musst du unsere R�stung tragen.
	ADDON_WRONGARMOR_MIL		= "SVM_34_ADDON_WRONGARMOR_MIL";		//Sei stolz auf die Armee und renn nicht mit diesen Klamotten durch die Gegend. Zieh dich erst mal um.
	ADDON_WRONGARMOR_KDF		= "SVM_34_ADDON_WRONGARMOR_KDF";		//Deine Kleidung ist unserem Orden nicht angemessen. Zieh dich um.
	ADDON_NOARMOR_BDT			= "SVM_34_ADDON_ADDON_NOARMOR_BDT";		//Hast ja noch nicht mal 'ne R�stung. Verschwinde!

	ADDON_DIEBANDIT				= "SVM_34_ADDON_DIEBANDIT";				//Stirb, Bandit.
	ADDON_DIRTYPIRATE			= "SVM_34_ADDON_DIRTYPIRATE";			//Stirb, Pirat.

	RELMINE01			= "SVM_34_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_34_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_34_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_34_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_34_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_34_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_34_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_34_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_34_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_34_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_34_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_34_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_34_NoLearnGold"			;//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_34_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_34_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_34_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_34_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_34_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_34_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_34_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_34_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_34_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_34_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_34_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_34_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_34_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_34_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_34_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_34_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_34_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_34_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_34_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_34_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_34_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_34_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_34_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_34_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_34_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_34_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_34_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_34_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_34_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_34_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_34_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_34_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_34_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_34_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_34_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_34_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_34_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_34_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_34_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_34_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_34_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_34_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_34_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_34_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};

instance SVM_36 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_36_MILGreetings"				;//F�r den K�nig!
	PALGreetings				=	"SVM_36_PALGreetings"				;//F�r Innos!
	BELGreetings				=	"SVM_36_BELGreetings"				;//Beliar zu ehren!
	AdanosGreetings				=	"SVM_36_AdanosGreetings"				;//Adanos sei mit dir!
	Weather						= 	"SVM_36_Weather"						;//So ein Mistwetter!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_36_IGetYouStill"				;//Krieg ich dich DOCH noch!
	DieEnemy					=	"SVM_36_DieEnemy"					;//Jetzt bist du dran!
	DieMonster					=	"SVM_36_DieMonster"					;//Da ist wieder eins von diesen Drecksviechern!
	DirtyThief					=	"SVM_36_DirtyThief"					;//Na warte, du dreckiger Dieb!
	HandsOff					=	"SVM_36_HandsOff"					;//Finger weg da!
	SheepKiller					=	"SVM_36_SheepKiller"					;//Der Mistkerl schlachtet unsere Schafe!
	SheepKillerMonster			=	"SVM_36_SheepKillerMonster"			;//Das verdammte Mistvieh frisst unsere Schafe!
	YouMurderer					=	"SVM_36_YouMurderer"					;//M�rder!
	DieStupidBeast				=	"SVM_36_DieStupidBeast"				;//Hier kommen keine Viecher rein!
	YouDareHitMe				=	"SVM_36_YouDareHitMe"				;//Na warte, du Mistkerl!
	YouAskedForIt				=	"SVM_36_YouAskedForIt"				;//Du hast es so gewollt!
	ThenIBeatYouOutOfHere		=	"SVM_36_ThenIBeatYouOutOfHere"		;//Dann muss ich dich eben rauspr�geln!
	WhatDidYouDoInThere			=	"SVM_36_WhatDidYouDoInThere"			;//Was hattest DU denn da drin zu suchen, he!?
	WillYouStopFighting			=	"SVM_36_WillYouStopFighting"			;//Wollt ihr wohl damit aufh�ren!?
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_36_KillEnemy"					;//Stirb, Mistkerl!
	EnemyKilled					=	"SVM_36_EnemyKilled"					;//Das war's f�r dich, Penner.
	MonsterKilled				=	"SVM_36_MonsterKilled"				;//Ein Mistvieh weniger!
	ThiefDown					=	"SVM_36_ThiefDown"					;//Versuch nie wieder, mich zu bestehlen!
	Berzerk						=	"SVM_36_Berzerk"						;//UUAAARRGGGHHH!!!
	rumfummlerDown				=	"SVM_36_rumfummlerDown"				;//Lass in Zukunft die Finger von Sachen, an denen du nichts zu suchen hast!
	SheepAttackerDown			=	"SVM_36_SheepAttackerDown"			;//Tu das nie wieder! Das sind unsere Schafe!
	KillMurderer				=	"SVM_36_KillMurderer"				;//Stirb, M�rder!
	StupidBeastKilled			=	"SVM_36_StupidBeastKilled"			;//So ein saubl�des Vieh!
	NeverHitMeAgain				=	"SVM_36_NeverHitMeAgain"				;//Leg dich nie wieder mit mir an!
	YouBetterShouldHaveListened	=	"SVM_36_YouBetterShouldHaveListened"	;//Du h�ttest auf mich h�ren sollen!
	GetUpAndBeGone				=	"SVM_36_GetUpAndBeGone"				;//Und jetzt mach, dass du hier rauskommst!
	NeverEnterRoomAgain			=	"SVM_36_NeverEnterRoomAgain"			;//Und dass ich dich nie wieder da drin erwische!
	ThereIsNoFightingHere		=	"SVM_36_ThereIsNoFightingHere"		;//Hier wird nicht gek�mpft, klar!? Lass dir das eine Lehre sein!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_36_RunAway"						;//Schei�e! Nichts wie weg!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_36_Alarm"						;//ALARM!
	Guards						=	"SVM_36_Guards"						;//WACHE!
	Help						=	"SVM_36_Help"						;//Hilfe!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_36_GoodMonsterKill"				;//(ruft zu) Gut gemacht - ein Drecksvieh weniger!
	GoodKill					= 	"SVM_36_GoodKill"					;//(ruft) Ja, mach das Schwein fertig!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_36_NOTNOW"						;//Lass mich in Ruhe!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_36_RunCoward"					;//(ruft laut) Bleib stehen, du Lump!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_36_GetOutOfHere"				;//Raus hier!
	WhyAreYouInHere				=	"SVM_36_WhyAreYouInHere"				;//Was suchst du hier!? Geh!
	YesGoOutOfHere				= 	"SVM_36_YesGoOutOfHere"				;//Ja, mach, dass du wegkommst!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_36_WhatsThisSupposedToBe"		;//Hey du! Was schleichst du da rum.
	YouDisturbedMySlumber		=	"SVM_36_YouDisturbedMySlumber"		;//(wacht auf) Verdammt, was ist los?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_36_ITookYourGold"				;//Gold! Das ist schon mal meins ...
	ShitNoGold					=	"SVM_36_ShitNoGold"					;//Der Mistkerl hat noch nicht mal Gold dabei.
	ITakeYourWeapon				=	"SVM_36_ITakeYourWeapon"				;//Deine Waffe nehm' ich mal lieber mit.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_36_WhatAreYouDoing"				;//(warnt) Hey! Pass auf!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_36_LookingForTroubleAgain"		;//(aggressiv) Hast du immer noch nicht genug?!
	StopMagic					=	"SVM_36_StopMagic"					;//Geh blo� weg mit deiner Magie!
	ISaidStopMagic				=	"SVM_36_ISaidStopMagic"				;//Weg mit der Magie! H�rst du schlecht!?
	WeaponDown					=	"SVM_36_WeaponDown"					;//Weg mit der Waffe!
	ISaidWeaponDown				=	"SVM_36_ISaidWeaponDown"				;//H�rst du schlecht? Ich sagte: Weg mit der Waffe!
	WiseMove					=	"SVM_36_WiseMove"					;//Na bitte, geht doch!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_36_NextTimeYoureInForIt"		;//(zu sich selbst) Dar�ber reden wir noch ...
	OhMyHead					=	"SVM_36_OhMyHead"					;//(zu sich selbst) Oh, mein Sch�del ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_36_TheresAFight"				;//(gierig) Jetzt geht's zur Sache!
	OhMyGodItsAFight			=	"SVM_36_OhMyGodItsAFight"			;//(best�rzt) Die hauen sich den Sch�del ein ...
	GoodVictory					=	"SVM_36_GoodVictory"					;//(b�se lachend) Das hat er verdient.
	NotBad						= 	"SVM_36_NotBad"						;//(anerkennend) Gar nicht so �bel ...
	OhMyGodHesDown				=	"SVM_36_OhMyGodHesDown"				;//(zu sich selbst) Was f�r ein brutaler Kerl ...
	CheerFriend01				=	"SVM_36_CheerFriend01"				;//Ja, so ist's gut!
	CheerFriend02				=	"SVM_36_CheerFriend02"				;//Na, mach schon!
	CheerFriend03				=	"SVM_36_CheerFriend03"				;//Immer feste drauf!
	Ooh01						=	"SVM_36_Ooh01"						;//Lass dir nichts gefallen!
	Ooh02						=	"SVM_36_Ooh02"						;//Den wirst du ja wohl schaffen!
	Ooh03						=	"SVM_36_Ooh03"						;//Das gibt's doch gar nicht!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_36_WhatWasThat"					;//(zu sich selbst, wacht auf) Was WAR das!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_36_GetOutOfMyBed"					;//Raus aus meinem Bett!
	Awake						= "SVM_36_Awake"							;//(herzhaftes G�hnen)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_36_TOUGHGUY_ATTACKLOST"			;//Ist ja schon gut, du hast gewonnen. Was willst du?
	TOUGHGUY_ATTACKWON			= "SVM_36_TOUGHGUY_ATTACKWON"			;//(selbstgef�llig) Muss ich dir noch mal zeigen, wer hier der Herr ist?
	TOUGHGUY_PLAYERATTACK		= "SVM_36_TOUGHGUY_PLAYERATTACK"			;//Willst du dich noch mal mit mir anlegen oder was?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_36_GOLD_1000"						;//1000 Goldst�cke.
	GOLD_950					= "SVM_36_GOLD_950"						;//950 Goldst�cke.
	GOLD_900					= "SVM_36_GOLD_900"						;//900 Goldst�cke.
	GOLD_850					= "SVM_36_GOLD_850"						;//850 Goldst�cke.
	GOLD_800					= "SVM_36_GOLD_800"						;//800 Goldst�cke.
	GOLD_750					= "SVM_36_GOLD_750"						;//750 Goldst�cke.
	GOLD_700					= "SVM_36_GOLD_700"						;//700 Goldst�cke.
	GOLD_650					= "SVM_36_GOLD_650"						;//650 Goldst�cke.
	GOLD_600					= "SVM_36_GOLD_600"						;//600 Goldst�cke.
	GOLD_550					= "SVM_36_GOLD_550"						;//550 Goldst�cke.
	GOLD_500					= "SVM_36_GOLD_500"						;//500 Goldst�cke.
	GOLD_450					= "SVM_36_GOLD_450"						;//450 Goldst�cke.
	GOLD_400					= "SVM_36_GOLD_400"						;//400 Goldst�cke.
	GOLD_350					= "SVM_36_GOLD_350"						;//350 Goldst�cke.
	GOLD_300					= "SVM_36_GOLD_300"						;//300 Goldst�cke.
	GOLD_250					= "SVM_36_GOLD_250"						;//250 Goldst�cke.
	GOLD_200					= "SVM_36_GOLD_200"						;//200 Goldst�cke.
	GOLD_150					= "SVM_36_GOLD_150"						;//150 Goldst�cke.
	GOLD_100					= "SVM_36_GOLD_100"						;//100 Goldst�cke.
	GOLD_90						= "SVM_36_GOLD_90"						;//90 Goldst�cke.
	GOLD_80						= "SVM_36_GOLD_80"						;//80 Goldst�cke.
	GOLD_70						= "SVM_36_GOLD_70"						;//70 Goldst�cke.
	GOLD_60						= "SVM_36_GOLD_60"						;//60 Goldst�cke.
	GOLD_50						= "SVM_36_GOLD_50"						;//50 Goldst�cke.
	GOLD_40						= "SVM_36_GOLD_40"						;//40 Goldst�cke.
	GOLD_30						= "SVM_36_GOLD_30"						;//30 Goldst�cke.
	GOLD_20						= "SVM_36_GOLD_20"						;//20 Goldst�cke.
	GOLD_10						= "SVM_36_GOLD_10"						;//10 Goldst�cke.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_36_Smalltalk01"					;//... glaubst du wirklich ...
	Smalltalk02					= "SVM_36_Smalltalk02"					;//... m�glich ist alles ...
	Smalltalk03					= "SVM_36_Smalltalk03"					;//... das h�tte er doch besser wissen m�ssen ...
	Smalltalk04					= "SVM_36_Smalltalk04"					;//... als ob ich nicht schon genug Probleme h�tte ...
	Smalltalk05					= "SVM_36_Smalltalk05"					;//... wer erz�hlt denn so was ...
	Smalltalk06					= "SVM_36_Smalltalk06"					;//... das gibt doch nur noch mehr �rger ...
	Smalltalk07					= "SVM_36_Smalltalk07"					;//... man erz�hlt sich ja so einiges ...
	Smalltalk08					= "SVM_36_Smalltalk08"					;//... ich h�tte das nicht gemacht ...
	Smalltalk09					= "SVM_36_Smalltalk09"					;//... das sind doch alles nur Ger�chte ...
	Smalltalk10					= "SVM_36_Smalltalk10"					;//... man muss eben aufpassen, was man so rumerz�hlt ...
	Smalltalk11					= "SVM_36_Smalltalk11"					;//... das h�tte ich dir vorher sagen k�nnen ...
	Smalltalk12					= "SVM_36_Smalltalk12"					;//... mich fragt ja keiner ...
	Smalltalk13					= "SVM_36_Smalltalk13"					;//... der arme Kerl kann einem Leid tun ...
	Smalltalk14					= "SVM_36_Smalltalk14"					;//... das ist doch nichts Neues ...
	Smalltalk15					= "SVM_36_Smalltalk15"					;//... das liegt doch auf der Hand ...
	Smalltalk16					= "SVM_36_Smalltalk16"					;//... mich brauchst du das nicht zu fragen ...
	Smalltalk17					= "SVM_36_Smalltalk17"					;//... das kann ja nicht ewig so weitergehen ...
	Smalltalk18					= "SVM_36_Smalltalk18"					;//... meine Meinung kennst du ja schon ...
	Smalltalk19					= "SVM_36_Smalltalk19"					;//... genau das hab ich auch gesagt ...
	Smalltalk20					= "SVM_36_Smalltalk20"					;//... daran wird sich nie etwas �ndern ...
	Smalltalk21					= "SVM_36_Smalltalk21"					;//... warum erfahre ich das erst jetzt ...
	Smalltalk22					= "SVM_36_Smalltalk22"					;//... lass uns mal abwarten, was daraus wird ...
	Smalltalk23					= "SVM_36_Smalltalk23"					;//... einige Probleme erledigen sich von selbst ...
	Smalltalk24					= "SVM_36_Smalltalk24"					;//... ich kann das nicht mehr h�ren ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_36_Smalltalk25"					;//... der war doch sturzbetrunken ...
	Smalltalk26					= "SVM_36_Smalltalk26"					;//... mit mir kann man so was nicht machen ...
	Smalltalk27					= "SVM_36_Smalltalk27"					;//... alle sind gerannt wie die Hasen, ich war ganz allein ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_36_Smalltalk28"					;//... so steht es in den heiligen Schriften ...
	Smalltalk29					= "SVM_36_Smalltalk29"					;//... ich handle stets in Innos' Namen ...
	Smalltalk30					= "SVM_36_Smalltalk30"					;//... niemand darf gegen die g�ttliche Ordnung versto�en ...
	SmalltalkKhorataAnnaQuest01			= "SVM_36_SmalltalkKhorataAnnaQuest01"; //... er hat sie alle abgemetzelt ...
	SmalltalkKhorataAnnaQuest02			= "SVM_36_SmalltalkKhorataAnnaQuest02"; //... nach dem, was er dem Richter angetan hat, w�rde ich ihn nicht mehr in mein Haus lassen ...
	SmalltalkKhorataAnnaQuest03			= "SVM_36_SmalltalkKhorataAnnaQuest03"; //... ich trauere nicht um die Sch�ppen ...
	SmalltalkKhorataAnnaQuest04			= "SVM_36_SmalltalkKhorataAnnaQuest04"; //... Ulrich ist mir immer schon komisch vorgekommen ...
	SmalltalkKhorataAnnaQuest05			= "SVM_36_SmalltalkKhorataAnnaQuest05"; //... w�rde wetten, dass Ulrich auch ein Hexer war ...
	SmalltalkKhorataAnnaQuest06			= "SVM_36_SmalltalkKhorataAnnaQuest06"; //... ich h�tte mich niemals auf die Seite des Richters geschlagen ...
	SmalltalkKhorataDichter01			= "SVM_36_SmalltalkKhorataDichter01"; //... an den Gedichten kann es nicht gelegen haben ...
	SmalltalkKhorataDichter02			= "SVM_36_SmalltalkKhorataDichter02"; //... er hat jetzt aufgeh�rt zu schreiben ...
	SmalltalkKhorataDichter03			= "SVM_36_SmalltalkKhorataDichter03"; //... mir hat er noch nie geholfen ...
	SmalltalkKhorataDichter04			= "SVM_36_SmalltalkKhorataDichter04"; //... ich habe ihn schon lange nicht mehr gesehen ...
	SmalltalkKhorataDichter05			= "SVM_36_SmalltalkKhorataDichter05"; //... ich vermisse seine Geschichten so sehr ...
	SmalltalkKhorataEndres01			= "SVM_36_SmalltalkKhorataEndres01"; //... schon die Sache mit Julianas Mann geh�rt? ...
	SmalltalkKhorataEndres02			= "SVM_36_SmalltalkKhorataEndres02"; //... o Adanos, jetzt werden in Khorata Menschen entf�hrt ...
	SmalltalkKhorataEndres03			= "SVM_36_SmalltalkKhorataEndres03"; //... kann mir nicht vorstellen, dass er noch lebt ...
	SmalltalkKhorataEndres04			= "SVM_36_SmalltalkKhorataEndres04"; //... aber wer heilt uns denn nun? ...
	SmalltalkKhorataEndres05			= "SVM_36_SmalltalkKhorataEndres05"; //... ich kann nicht glauben, dass er schuldig war ...
	SmalltalkKhorataEndres06			= "SVM_36_SmalltalkKhorataEndres06"; //... er hat auch nicht besser gehandelt als der Heiler ...
	SmalltalkKhorataEndres07			= "SVM_36_SmalltalkKhorataEndres07"; //... der Namenlose ist f�r mich ein Held ...
	SmalltalkKhorataFrauenkleider01			= "SVM_36_SmalltalkKhorataFrauenkleider01"; //... Melvin tr�gt Frauenkleider! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_36_SmalltalkKhorataFrauenkleider02"; //... Will der ernst genommen werden? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_36_SmalltalkKhorataFrauenkleider03"; //... Mir hat Melvin die Unterw�sche geklaut! ...

	SmalltalkKhorataUnruhen01			= "SVM_36_SmalltalkKhorataUnruhen01"; //... Das wird schon wieder ...
	SmalltalkKhorataUnruhen02			= "SVM_36_SmalltalkKhorataUnruhen02"; //... Fr�her w�re das ganz anders gelaufen ...
	SmalltalkKhorataUnruhen03			= "SVM_36_SmalltalkKhorataUnruhen03"; //... Wir sollten sie in der Nacht �berw�ltigen ...
	SmalltalkKhorataUnruhen04			= "SVM_36_SmalltalkKhorataUnruhen04"; //... Das haben sie nicht anders verdient ...
	SmalltalkKhorataUnruhen05			= "SVM_36_SmalltalkKhorataUnruhen05"; //... Tyrus und Dalton sind tot! ...
	SmalltalkKhorataUnruhen06			= "SVM_36_SmalltalkKhorataUnruhen06"; //... Na und? Was interessiert mich das? ...
	SmalltalkKhorataUnruhen07			= "SVM_36_SmalltalkKhorataUnruhen07"; //... Ich trau mich kaum noch auf die Stra�e ...
	SmalltalkKhorataUnruhen08			= "SVM_36_SmalltalkKhorataUnruhen08"; //... So eine Schei�e ...
	SmalltalkKhorataUnruhen09			= "SVM_36_SmalltalkKhorataUnruhen09"; //... Lukas sollte neuer Stadthalter werden ...
	SmalltalkKhorataUnruhen10			= "SVM_36_SmalltalkKhorataUnruhen10"; //... Ich denke, Wendel w�re besser ...
	SmalltalkKhorataUnruhen11			= "SVM_36_SmalltalkKhorataUnruhen11"; //... Blo� nicht Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_36_SmalltalkKhorataUnruhenTheodorus01"; //... Eine ganz schlechte Entscheidung ...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_36_SmalltalkKhorataUnruhenTheodorus02"; //... Schlimmer konnte es nicht kommen ...
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_36_SmalltalkKhorataUnruhenTheodorus03"; //... Krieg dich mal wieder ein ...
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_36_SmalltalkKhorataUnruhenTheodorus04"; //... Ich werde die Stadt verlassen ...

	SmalltalkKhorataUnruhenWendel01			= "SVM_36_SmalltalkKhorataUnruhenWendel01"; //... Bin ich froh, dass die Streitereien vorbei sind ...
	SmalltalkKhorataUnruhenWendel02			= "SVM_36_SmalltalkKhorataUnruhenWendel02"; //... Bei Wendel muss immer alles korrekt laufen ...
	SmalltalkKhorataUnruhenWendel03			= "SVM_36_SmalltalkKhorataUnruhenWendel03"; //... Endlich traue ich mich wieder auf die Stra�e ...
	SmalltalkKhorataUnruhenWendel04			= "SVM_36_SmalltalkKhorataUnruhenWendel04"; //... Die Buddler sind viel zu gut davongekommen! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_36_SmalltalkKhorataUnruhenLukas01"; //... Wieso d�rfen wir keinen Freudenspender mehr nehmen? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_36_SmalltalkKhorataUnruhenLukas02"; //... Lukas ist immerhin besser als Wendel ...
	SmalltalkKhorataUnruhenLukas03			= "SVM_36_SmalltalkKhorataUnruhenLukas03"; //... Sie haben die Buddler alle umgebracht! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_36_SmalltalkKhorataUnruhenLukas04"; //... Lukas ist einfach nur dumm ...

	SmalltalkKhorataDiebeGrusel01			= "SVM_36_SmalltalkKhorataDiebeGrusel01"; //... Hast du schon geh�rt, dieses verlassene Haus am Rande der Stadt? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_36_SmalltalkKhorataDiebeGrusel02"; //... Ja, grauenvoll Dinge sollen dort geschehen sein. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_36_SmalltalkKhorataDiebeGrusel03"; //... Und die M�chte des B�sen lauern noch immer dort. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_36_SmalltalkKhorataDiebeGrusel04"; //... Die beiden wollen dort tats�chlich ein Restaurant er�ffnen. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_36_SmalltalkKhorataDiebeGrusel05"; //... Lebensm�de! Also ich werde dort bestimmt keinen Fu� hineinsetzen. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_36_SmalltalkKhorataDiebeGrusel06"; //... Und ich werde nicht mal in die N�he des Geb�udes gehen. ...

	SmalltalkKhorataDiebeBib01			= "SVM_36_SmalltalkKhorataDiebeBib01"; //... Hast du schon geh�rt, der Gelehrte ...
	SmalltalkKhorataDiebeBib02			= "SVM_36_SmalltalkKhorataDiebeBib02"; //... Ja, wertvolle Dokumente soll er aus der Bibliothek gestohlen haben ...
	SmalltalkKhorataDiebeBib03			= "SVM_36_SmalltalkKhorataDiebeBib03"; //... Und es gibt mehrere Zeugen, darunter sogar der Stadthalter ...
	SmalltalkKhorataDiebeBib04			= "SVM_36_SmalltalkKhorataDiebeBib04"; //... Und er behauptet ernsthaft die ganze Zeit zu Hause gewesen zu sein ...
	SmalltalkKhorataDiebeBib05			= "SVM_36_SmalltalkKhorataDiebeBib05"; //... Da hat ihn aber nat�rlich niemand gesehen ...
	SmalltalkKhorataDiebeBib06			= "SVM_36_SmalltalkKhorataDiebeBib06"; //... Wie er vor dem Diebstahl durch die Stadt gerannt ist aber schon ...
	SmalltalkKhorataDiebeBib07			= "SVM_36_SmalltalkKhorataDiebeBib07"; //... Bedeckt mit faulem Obst ...
	SmalltalkKhorataDiebeBib08			= "SVM_36_SmalltalkKhorataDiebeBib08"; //... Der muss echt den Verstand verloren haben ...

	SmalltalkKhorataNormal01			= "SVM_36_SmalltalkKhorataNormal01"; //... Ich hab schon lange keine z�nftige Hexenverbrennung mehr erlebt! ...
	SmalltalkKhorataNormal02			= "SVM_36_SmalltalkKhorataNormal02"; //... Einen trink ich noch ...
	SmalltalkKhorataNormal03			= "SVM_36_SmalltalkKhorataNormal03"; //... Die n�chste Runde geht auf mich! ...
	SmalltalkKhorataNormal04			= "SVM_36_SmalltalkKhorataNormal04"; //... Morgen ist auch noch ein Tag - aber besser wird er nicht ...
	SmalltalkKhorataNormal05			= "SVM_36_SmalltalkKhorataNormal05"; //... Die Zauberer sollst du nicht leben lassen ...
	SmalltalkKhorataNormal06			= "SVM_36_SmalltalkKhorataNormal06"; //... Die W�rfel sind gefallen ...

	// Khorinis

	SmalltalkRangar01			= "SVM_36_SmalltalkRangar01"; //... jetzt soll sogar die Miliz Kunde in der roten Laterne sein ...
	SmalltalkRangar02			= "SVM_36_SmalltalkRangar02"; //... hast du von Rangar und Alwins Schaf geh�rt? ...

	SmalltalkMatteo01			= "SVM_36_SmalltalkMatteo01"; //... Warst du schon bei Matteo? ...
	SmalltalkMatteo02			= "SVM_36_SmalltalkMatteo02"; //... Matteo? Der heiratet doch auch bald, oder? ...
	SmalltalkMatteo03			= "SVM_36_SmalltalkMatteo03"; //... �berall gibt es nur noch faulige �pfel ...
	SmalltalkMatteo04			= "SVM_36_SmalltalkMatteo04"; //... ich kaufe jetzt bei Matteo, bei dem bekommt man noch frisches Obst ...

	SmalltalkKhorinisMario01			= "SVM_36_SmalltalkKhorinisMario01"; //... Die Paladine metzeln sich schon gegenseitig nieder ...
	SmalltalkKhorinisMario02			= "SVM_36_SmalltalkKhorinisMario02"; //... An Garonds Tod soll dieser Unbekannte auch nicht ganz schuldlos sein. ...
	SmalltalkKhorinisMario03			= "SVM_36_SmalltalkKhorinisMario03"; //... Diese zwei Kerle k�nnten noch immer in der Stadt sein und ihr Unwesen treiben! ...
	SmalltalkKhorinisMario04			= "SVM_36_SmalltalkKhorinisMario04"; //... Die Miliz hat an ihren Aufgaben versagt, das ist meine Meinung ...

	SmalltalkFellan01			= "SVM_36_SmalltalkFellan01"; //... Ich k�nnte Fellan umbringen! Morgens um 7 h�mmert der schon wie ein Irrer. ...
	SmalltalkFellan02			= "SVM_36_SmalltalkFellan02"; //... Tock, tock, tock ...

	SmalltalkMikaPflanzen01			= "SVM_36_SmalltalkMikaPflanzen01"; //... Mika bietet gerade Heilpflanzen f�r einen Spottpreis an! ...
	SmalltalkMikaPflanzen02			= "SVM_36_SmalltalkMikaPflanzen02"; //... Diese R�bennase sammelt mir alle Pflanzen vor der Nase weg! ...

	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_36_NoLearnNoPoints"			;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverPersonalMAX		= "SVM_36_NoLearnOverPersonalMAX"	;//Du verlangst mehr von mir, als ich dir beibringen kann.
	NoLearnYoureBetter			= "SVM_36_NoLearnYoureBetter"		;//Ich kann dir nichts mehr beibringen. Du bist schon zu gut.
	YouLearnedSomething			= "SVM_36_YouLearnedSomething"		;//Siehst du, du bist schon besser geworden ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_36_UNTERSTADT"				;//Du bist jetzt in der Unterstadt.
	OBERSTADT					= "SVM_36_OBERSTADT"					;//Du bist jetzt in der Oberstadt.
	TEMPEL						= "SVM_36_TEMPEL"					;//Du bist jetzt am Tempel.
	MARKT						= "SVM_36_MARKT"						;//Du bist jetzt am Marktplatz.
	GALGEN						= "SVM_36_GALGEN"					;//Du bist jetzt am Galgenplatz vor der Kaserne.
	KASERNE						= "SVM_36_KASERNE"					;//Das hier ist die Kaserne.
	HAFEN						= "SVM_36_HAFEN"						;//Du bist hier im Hafenviertel.
	// -----------------------
	WHERETO						= "SVM_36_WHERETO"					;//Wo willst du hin?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_36_OBERSTADT_2_UNTERSTADT"	;//Geh von hier aus durch das innere Stadttor und du kommst in die Unterstadt.
	UNTERSTADT_2_OBERSTADT		= "SVM_36_UNTERSTADT_2_OBERSTADT"	;//Am s�dlichen Stadttor gibt es eine Treppe, die zum inneren Stadttor hochf�hrt. Dort beginnt die Oberstadt.
	UNTERSTADT_2_TEMPEL			= "SVM_36_UNTERSTADT_2_TEMPEL"		;//Geh vom Schmied aus durch die Unterf�hrung und du kommst zum Tempelplatz.
	UNTERSTADT_2_HAFEN			= "SVM_36_UNTERSTADT_2_HAFEN"		;//Geh vom Schmied aus die Hafenstra�e runter, dann kommst du zum Hafen.
	TEMPEL_2_UNTERSTADT			= "SVM_36_TEMPEL_2_UNTERSTADT"		;//Vom Tempelplatz aus gibt es eine Unterf�hrung, die in die Unterstadt f�hrt.
	TEMPEL_2_MARKT				= "SVM_36_TEMPEL_2_MARKT"			;//Wenn du vorm Tempel stehst, geh links hoch und an der Stadtmauer entlang, dann kommst du zum Markt.
	TEMPEL_2_GALGEN				= "SVM_36_TEMPEL_2_GALGEN"			;//Wenn du vom Tempel aus gesehen links an der Kneipe vorbei gehst, kommst du zum Galgenplatz.
	MARKT_2_TEMPEL				= "SVM_36_MARKT_2_TEMPEL"			;//Wenn du vom Marktplatz aus an der hohen Stadtmauer entlang gehst, kommst du zum Tempel.
	MARKT_2_KASERNE				= "SVM_36_MARKT_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen gegen�ber dem Hotel rauf.
	MARKT_2_GALGEN				= "SVM_36_MARKT_2_GALGEN"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Galgenplatz.
	GALGEN_2_TEMPEL				= "SVM_36_GALGEN_2_TEMPEL"			;//Geh vom Galgenplatz aus die Gasse runter und du kommst zum Tempelplatz.
	GALGEN_2_MARKT				= "SVM_36_GALGEN_2_MARKT"			;//Geh einfach an der gro�en Kaserne entlang und du kommst zum Markt.
	GALGEN_2_KASERNE			= "SVM_36_GALGEN_2_KASERNE"			;//Die Kaserne ist das riesengro�e Geb�ude. Geh einfach die Treppen rauf.
	KASERNE_2_MARKT				= "SVM_36_KASERNE_2_MARKT"			;//Geh einfach die Treppe am Haupteingang links runter, dann kommst du zum Marktplatz.
	KASERNE_2_GALGEN			= "SVM_36_KASERNE_2_GALGEN"			;//Geh einfach die Treppe am Haupteingang rechts runter, dann kommst du zum Galgenplatz.
	HAFEN_2_UNTERSTADT			= "SVM_36_HAFEN_2_UNTERSTADT"		;//Geh von der Kaimauer aus die Hafenstra�e hoch, dann kommst du in die Unterstadt.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_36_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_36_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_36_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_36_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_36_Addon_WrongArmor";				//Das ist nicht deine Kleidung. Ich rede nicht mit dir.
	ADDON_WRONGARMOR_SLD		= "SVM_36_ADDON_WRONGARMOR_SLD";			//Wie l�ufst du denn rum? Zieh dir was Vern�nftiges an.
	ADDON_WRONGARMOR_MIL		= "SVM_36_ADDON_WRONGARMOR_MIL";			//Du bist Soldat! Kleide dich entsprechend.
	ADDON_WRONGARMOR_KDF		= "SVM_36_ADDON_WRONGARMOR_KDF";			//Deine Kleidung ist unserem Orden nicht angemessen. Zieh dich um.
	ADDON_NOARMOR_BDT			= "SVM_36_ADDON_ADDON_NOARMOR_BDT";		//Hast ja noch nicht mal 'ne R�stung. Verschwinde!

	ADDON_DIEBANDIT				= "SVM_36_ADDON_DIEBANDIT";				//Stirb, du dreckiger Bandit!
	ADDON_DIRTYPIRATE			= "SVM_36_ADDON_DIRTYPIRATE";			//Piratenpack!

	RELMINE01			= "SVM_36_RELMINE01";			//Ich halt das nicht mehr aus!
	RELMINE02			= "SVM_36_RELMINE02";			//Wenn ich doch nur was zu essen h�tte ...
	RELMINE03			= "SVM_36_RELMINE03";			//Schlag auf Schlag, den ganzen Tag ...
	RELMINE04			= "SVM_36_RELMINE04";			//Ein schwerer Brocken ist das.
	RELMINE05			= "SVM_36_RELMINE05";			//Wann kommt die Abl�sung endlich?
	RELMINE06			= "SVM_36_RELMINE06";			//Die reinste Ausbeutung ist das!
	RELMINE07			= "SVM_36_RELMINE07";			//Morgen komme ich nicht wieder, das versprech ich ...
	RELMINE08			= "SVM_36_RELMINE08";			//So ein sch�nes Steinchen!
	RELMINE09			= "SVM_36_RELMINE09";			//Meine Frau wei� schon gar nicht mehr, wie ich aussehe ...
	RELMINE10			= "SVM_36_RELMINE10";			//'n Humpen w�r jetzt das Richtige ...
	RELMINE11			= "SVM_36_RELMINE11";			//Das soll wohl ein Ersatz f�r die Strafkolonie sein.
	RELMINE12			= "SVM_36_RELMINE12";			//(summt) Nimm Freudenspender, dann ist es okay.

	NoLearnGold			= "SVM_36_NoLearnGold";			//Komm wieder, wenn du mehr Gold hast.

	// Witze

	WITZ_01_01			= "SVM_36_WITZ_01_01";			//Ein J�ger geht in den Wald.
	WITZ_01_02			= "SVM_36_WITZ_01_02";			//Kommt ihm ein Ork mit einem Wildschwein auf der Schulter entgegen.
	WITZ_01_03			= "SVM_36_WITZ_01_03";			//Ein paar Schritte weiter trifft er auf einen S�ldner, der ebenfalls ein Wildschwein auf der Schulter tr�gt.
	WITZ_01_04			= "SVM_36_WITZ_01_04";			//Und noch ein paar Meter weiter sieht er einen Goblin.
	WITZ_01_05			= "SVM_36_WITZ_01_05";			//Frage ....... und was hat wohl der Goblin?
	WITZ_01_06			= "SVM_36_WITZ_01_06";			//Zahnfleischbluten, denn jeder Dritte hat Zahnfleischbluten.

	WITZ_02_01			= "SVM_36_WITZ_02_01";			//K�mpfen zwei Zombies um ihr Leben.

	WITZ_03_01			= "SVM_36_WITZ_03_01";			//Was ist der unterschied zwischen Mud und 'ner Fleischwanze?
	WITZ_03_02			= "SVM_36_WITZ_03_02";			//Fleischwanzen bringt 10 Erfahrung.

	WITZ_04_01			= "SVM_36_WITZ_04_01";			//Ein Dieb bricht nachts in ein Haus ein.
	WITZ_04_02			= "SVM_36_WITZ_04_02";			//Als er gerade durch das stockfinstere Wohnzimmer schleicht, h�rt er eine Stimme:
	WITZ_04_03			= "SVM_36_WITZ_04_03";			//"Ich sehe dich und Innos sieht dich auch!"
	WITZ_04_04			= "SVM_36_WITZ_04_04";			//Er erschrickt zu Tode und entz�ndet eine Kerze.
	WITZ_04_05			= "SVM_36_WITZ_04_05";			//Er blickt auf und sieht auf einer Stange in der Ecke einen Papageien sitzen:
	WITZ_04_06			= "SVM_36_WITZ_04_06";			//Meint der Einbrecher erleichtert:
	WITZ_04_07			= "SVM_36_WITZ_04_07";			//"Hast Du mich aber erschreckt. Wie hei�t Du denn ?"
	WITZ_04_08			= "SVM_36_WITZ_04_08";			//"Mud!"
	WITZ_04_09			= "SVM_36_WITZ_04_09";			//"Mud ist doch wohl wirklich ein selten bl�der Name f�r einen Papagei!"
	WITZ_04_10			= "SVM_36_WITZ_04_10";			//Grinst der Vogel: "Na und, Innos ist auch ein selten bl�der Name f�r einen Warg."

	WITZ_05_01			= "SVM_36_WITZ_05_01";			//Steigen zwei Skelette aus ihren Gr�bern und klauen Pferde.
	WITZ_05_02			= "SVM_36_WITZ_05_02";			//Packt das eine seinen Grabstein drauf.
	WITZ_05_03			= "SVM_36_WITZ_05_03";			//Fragt das andere: "Wozu das?"
	WITZ_05_04			= "SVM_36_WITZ_05_04";			//Sagt das andere: "Glaubst du ich fahr ohne Papiere"

	WITZ_06_01			= "SVM_36_WITZ_06_01";			//Kommt ein Skelett w�hrend nem Sturm in Coragons Kneipe und sagt:
	WITZ_06_02			= "SVM_36_WITZ_06_02";			//"Ich bin nass bis auf die Knochen"

	WITZ_07_01			= "SVM_36_WITZ_07_01";			//Sagt die Snappermutter: "Kinder, heute gibt's frischen Paladin."
	WITZ_07_02			= "SVM_36_WITZ_07_02";			//Sagt das Snapperkind: "Ich hasse Dosenfutter."

	WITZ_08_01			= "SVM_36_WITZ_08_01";			//Was ist das f�r eine rote, glitschige Substanz zwischen den Flanken eines Sumpfhaies?
	WITZ_08_02			= "SVM_36_WITZ_08_02";			//Langsamer Novize.

	WITZ_09_01			= "SVM_36_WITZ_09_01";			//Was geht einem Ork als erstes durch den Kopf, wenn er ein Adanos-Kloster betritt?
	WITZ_09_02			= "SVM_36_WITZ_09_02";			//Eine Eislanze.

	WITZ_10_01			= "SVM_36_WITZ_10_01";			//H�r dir mal den an ...
	WITZ_10_02			= "SVM_36_WITZ_10_02";			//Ja?
	WITZ_10_03			= "SVM_36_WITZ_10_03";			//Also ...
	WITZ_10_04			= "SVM_36_WITZ_10_04";			//Das Schaf Lisl vom Hirten Pepe ist krank.
	WITZ_10_05			= "SVM_36_WITZ_10_05";			//Besorgt fragt er den Sch�fer Balthasar:
	WITZ_10_06			= "SVM_36_WITZ_10_06";			//"Was hast du denn damals deinem Schaf gegeben als sie so krank war?"
	WITZ_10_07			= "SVM_36_WITZ_10_07";			//"Ich habe meiner Clara damals Lou�s doppelten Hammer gegeben", sagt dieser.
	WITZ_10_08			= "SVM_36_WITZ_10_08";			//Gesagt, getan. Als Pepe zwei Tage sp�ter wieder Balthasar besucht, trauert er:
	WITZ_10_09			= "SVM_36_WITZ_10_09";			//"Meine Lisl ist tot." Darauf Balthasar: "Meine Clara damals auch."
	WITZ_10_10			= "SVM_36_WITZ_10_10";			//(belustigt) Ja, h�h�. Wenn man den Viechern das Zeug zum Saufen gibt.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_36_PICKPOCKET_BESTECHUNG_01";	//Gut, aber jetzt verzieh dich!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_36_PICKPOCKET_HERAUSREDEN_01";	//Da hab ich mich wohl geirrt ...
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_36_PICKPOCKET_HERAUSREDEN_02";	//Du warst doch eindeutig an meiner Tasche ...
};
 

// ***********************
// 		Maximale SVMs
// ***********************

CONST INT SVM_MODULES =	31;