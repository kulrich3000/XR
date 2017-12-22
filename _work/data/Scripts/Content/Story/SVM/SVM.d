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
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_0_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_0_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_0_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_0_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_0_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_0_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_0_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_0_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_0_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_0_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_0_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_0_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_0_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_0_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_0_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_0_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_0_ThenIBeatYouOutOfHere"		;//Then I'll have to knock you out of here!
	WhatDidYouDoInThere			=	"SVM_0_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_0_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_0_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_0_EnemyKilled"					;//So much for you, lowlife!
	MonsterKilled				=	"SVM_0_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_0_ThiefDown"					;//Never try to steal from me again!
	Berzerk						=	"SVM_0_Berzerk"						;//UUAAARRGGGHHHH!!!!
	rumfummlerDown				=	"SVM_0_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_0_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_0_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_0_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_0_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_0_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_0_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_0_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_0_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_0_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_0_Alarm"						;//ALARM!
	Guards						=	"SVM_0_Guards"						;//GUARDS!
	Help						=	"SVM_0_Help"						;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_0_GoodMonsterKill"				;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_0_GoodKill"					;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_0_NOTNOW"						;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_0_RunCoward"					;//(calls loudly) Stop right there, you lowlife!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_0_GetOutOfHere"				;//Get out of here!
	WhyAreYouInHere				=	"SVM_0_WhyAreYouInHere"				;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_0_YesGoOutOfHere"				;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_0_WhatsThisSupposedToBe"		;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_0_YouDisturbedMySlumber"		;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_0_ITookYourGold"				;//Gold! OK, that's mine for starters ...
	ShitNoGold					=	"SVM_0_ShitNoGold"					;//The bastard doesn't even have any gold on him.
	ITakeYourWeapon				=	"SVM_0_ITakeYourWeapon"				;//I think I'll take your weapon for safekeeping.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_0_WhatAreYouDoing"				;//(warning) Hey! Watch it!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_0_LookingForTroubleAgain"		;//(aggressively) Haven't you had enough yet?
	StopMagic					=	"SVM_0_StopMagic"					;//Just stay away from me with that magic of yours!
	ISaidStopMagic				=	"SVM_0_ISaidStopMagic"				;//Cut out that magic! Something wrong with your ears!?
	WeaponDown					=	"SVM_0_WeaponDown"					;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_0_ISaidWeaponDown"				;//Are you deaf or what? I said: Put down that weapon!
	WiseMove					=	"SVM_0_WiseMove"					;//See, that wasn't so hard.
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_0_NextTimeYoureInForIt"		;//(to himself) We'll see about that ...
	OhMyHead					=	"SVM_0_OhMyHead"					;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_0_TheresAFight"				;//(eagerly) And now for some action!
	OhMyGodItsAFight			=	"SVM_0_OhMyGodItsAFight"			;//(dismayed) They're smashing each other's skulls ...
	GoodVictory					=	"SVM_0_GoodVictory"					;//(evil laugh) He deserved that!
	NotBad						= 	"SVM_0_NotBad"						;//(approvingly) Not bad at all ...
	OhMyGodHesDown				=	"SVM_0_OhMyGodHesDown"				;//(to himself) What a brutal fellow ...
	CheerFriend01				=	"SVM_0_CheerFriend01"				;//Yeah, that's the ticket!
	CheerFriend02				=	"SVM_0_CheerFriend02"				;//Whatcha waiting for?
	CheerFriend03				=	"SVM_0_CheerFriend03"				;//Atta boy!
	Ooh01						=	"SVM_0_Ooh01"						;//Don't take any crap!
	Ooh02						=	"SVM_0_Ooh02"						;//Show him who's boss!
	Ooh03						=	"SVM_0_Ooh03"						;//Holy shit!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_0_WhatWasThat"					;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_0_GetOutOfMyBed"					;//Get out of my bed!
	Awake						= "SVM_0_Awake"							;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_0_TOUGHGUY_ATTACKLOST"			;//All right, all right, you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_0_TOUGHGUY_ATTACKWON"			;//(smugly) Do I have to show you again who's boss?
	TOUGHGUY_PLAYERATTACK		= "SVM_0_TOUGHGUY_PLAYERATTACK"			;//Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_0_GOLD_1000"						;//1000 gold pieces.
	GOLD_950					= "SVM_0_GOLD_950"						;//950 gold pieces.
	GOLD_900					= "SVM_0_GOLD_900"						;//900 gold pieces.
	GOLD_850					= "SVM_0_GOLD_850"						;//850 gold pieces.
	GOLD_800					= "SVM_0_GOLD_800"						;//800 gold pieces.
	GOLD_750					= "SVM_0_GOLD_750"						;//750 gold pieces.
	GOLD_700					= "SVM_0_GOLD_700"						;//700 gold pieces.
	GOLD_650					= "SVM_0_GOLD_650"						;//650 gold pieces.
	GOLD_600					= "SVM_0_GOLD_600"						;//600 gold pieces.
	GOLD_550					= "SVM_0_GOLD_550"						;//550 gold pieces.
	GOLD_500					= "SVM_0_GOLD_500"						;//500 gold pieces.
	GOLD_450					= "SVM_0_GOLD_450"						;//450 gold pieces.
	GOLD_400					= "SVM_0_GOLD_400"						;//400 gold pieces.
	GOLD_350					= "SVM_0_GOLD_350"						;//350 gold pieces.
	GOLD_300					= "SVM_0_GOLD_300"						;//300 gold pieces.
	GOLD_250					= "SVM_0_GOLD_250"						;//250 gold pieces.
	GOLD_200					= "SVM_0_GOLD_200"						;//200 gold pieces.
	GOLD_150					= "SVM_0_GOLD_150"						;//150 gold pieces.
	GOLD_100					= "SVM_0_GOLD_100"						;//100 gold pieces.
	GOLD_90						= "SVM_0_GOLD_90"						;//90 gold pieces.
	GOLD_80						= "SVM_0_GOLD_80"						;//80 gold pieces.
	GOLD_70						= "SVM_0_GOLD_70"						;//70 gold pieces.
	GOLD_60						= "SVM_0_GOLD_60"						;//60 gold pieces.
	GOLD_50						= "SVM_0_GOLD_50"						;//50 gold pieces.
	GOLD_40						= "SVM_0_GOLD_40"						;//40 gold pieces.
	GOLD_30						= "SVM_0_GOLD_30"						;//30 gold pieces.
	GOLD_20						= "SVM_0_GOLD_20"						;//20 gold pieces.
	GOLD_10						= "SVM_0_GOLD_10"						;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_0_Smalltalk01"					;//... do you really think ...
	Smalltalk02					= "SVM_0_Smalltalk02"					;//... anything's possible ...
	Smalltalk03					= "SVM_0_Smalltalk03"					;//... he should have known better ...
	Smalltalk04					= "SVM_0_Smalltalk04"					;//... as if I didn't have enough problems ...
	Smalltalk05					= "SVM_0_Smalltalk05"					;//... who said that ...
	Smalltalk06					= "SVM_0_Smalltalk06"					;//... that'll only cause more trouble ...
	Smalltalk07					= "SVM_0_Smalltalk07"					;//... there've been all kinds of rumors ...
	Smalltalk08					= "SVM_0_Smalltalk08"					;//... I wouldn't have done that ...
	Smalltalk09					= "SVM_0_Smalltalk09"					;//... those are all just rumors ...
	Smalltalk10					= "SVM_0_Smalltalk10"					;//... it's better to watch out who you tell what ...
	Smalltalk11					= "SVM_0_Smalltalk11"					;//... I could have told you that before ...
	Smalltalk12					= "SVM_0_Smalltalk12"					;//... nobody ever asks me ...
	Smalltalk13					= "SVM_0_Smalltalk13"					;//... you have to feel sorry for the poor guy ...
	Smalltalk14					= "SVM_0_Smalltalk14"					;//... that's nothing new ...
	Smalltalk15					= "SVM_0_Smalltalk15"					;//... that's totally obvious ...
	Smalltalk16					= "SVM_0_Smalltalk16"					;//... you don't have to ask me that ...
	Smalltalk17					= "SVM_0_Smalltalk17"					;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_0_Smalltalk18"					;//... you already know what I think ...
	Smalltalk19					= "SVM_0_Smalltalk19"					;//... that's exactly what I said ...
	Smalltalk20					= "SVM_0_Smalltalk20"					;//... nothing's ever going to change that ...
	Smalltalk21					= "SVM_0_Smalltalk21"					;//... why haven't I heard about this before ...
	Smalltalk22					= "SVM_0_Smalltalk22"					;//... let's wait and see what happens ...
	Smalltalk23					= "SVM_0_Smalltalk23"					;//... some problems solve themselves ...
	Smalltalk24					= "SVM_0_Smalltalk24"					;//... I don't want to hear that anymore ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_0_Smalltalk25"					;//... he was falling down drunk ...
	Smalltalk26					= "SVM_0_Smalltalk26"					;//... I won't be treated like that ...
	Smalltalk27					= "SVM_0_Smalltalk27"					;//... they all ran like rabbits, I was completely alone ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_0_Smalltalk28"					;//... so it says in the scriptures ...
	Smalltalk29					= "SVM_0_Smalltalk29"					;//... I always act in the name of Innos ...
	Smalltalk30					= "SVM_0_Smalltalk30"					;//... no one must violate the divine order ...
	SmalltalkKhorataAnnaQuest01			= "SVM_0_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_0_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_0_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_0_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_0_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_0_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_0_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_0_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_0_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_0_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_0_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_0_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_0_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_0_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_0_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_0_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_0_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_0_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_0_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_0_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_0_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_0_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_0_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_0_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_0_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_0_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_0_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_0_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_0_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_0_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_0_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_0_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_0_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_0_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_0_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_0_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_0_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_0_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_0_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_0_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_0_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_0_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_0_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_0_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_0_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_0_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_0_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_0_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_0_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_0_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_0_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_0_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_0_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_0_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_0_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_0_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_0_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_0_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_0_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_0_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_0_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_0_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_0_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_0_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_0_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_0_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_0_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_0_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_0_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_0_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_0_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_0_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_0_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_0_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_0_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_0_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_0_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_0_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...

	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_0_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_0_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_0_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_0_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_0_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_0_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_0_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_0_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_0_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_0_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_0_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_0_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_0_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_0_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_0_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_0_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_0_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_0_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_0_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_0_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_0_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_0_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_0_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_0_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_0_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_0_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_0_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_0_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_0_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_0_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_0_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_0_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_0_Addon_WrongArmor";				//Those aren't your clothes. I'm not talking to you.
	ADDON_WRONGARMOR_SLD		= "SVM_0_ADDON_WRONGARMOR_SLD";			//What are you wearing? Put on something decent.
	ADDON_WRONGARMOR_MIL		= "SVM_0_ADDON_WRONGARMOR_MIL";			//You are a soldier! Dress like one.
	ADDON_WRONGARMOR_KDF		= "SVM_0_ADDON_WRONGARMOR_KDF";			//Your clothing is not appropriate for our order. Go and change.
	ADDON_NOARMOR_BDT			= "SVM_0_ADDON_ADDON_NOARMOR_BDT";		//You haven't even got any armor. Beat it!

	ADDON_DIEBANDIT				= "SVM_0_ADDON_DIEBANDIT";				//Die, you filthy bandit!
	ADDON_DIRTYPIRATE			= "SVM_0_ADDON_DIRTYPIRATE";			//Pirate scum!

	RELMINE01			= "SVM_0_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_0_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_0_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_0_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_0_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_0_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_0_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_0_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_0_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_0_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_0_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_0_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_0_NoLearnGold";			//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_0_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_0_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_0_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_0_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_0_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_0_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_0_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_0_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_0_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_0_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_0_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_0_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_0_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_0_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_0_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_0_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_0_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_0_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_0_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_0_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_0_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_0_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_0_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_0_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_0_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_0_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_0_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_0_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_0_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_0_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_0_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_0_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_0_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_0_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_0_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_0_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_0_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_0_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_0_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_0_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_0_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_0_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_0_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_0_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_1 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_1_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_1_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_1_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_1_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_1_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_1_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_1_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_1_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_1_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_1_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_1_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_1_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_1_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_1_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_1_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_1_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_1_ThenIBeatYouOutOfHere"		;//Then I'll have to knock you out of here!
	WhatDidYouDoInThere			=	"SVM_1_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_1_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_1_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_1_EnemyKilled"					;//So much for you, lowlife!
	MonsterKilled				=	"SVM_1_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_1_ThiefDown"					;//Never try to steal from me again!
	Berzerk						=	"SVM_1_Berzerk"						;//UUAAARRGGGHHHH!!!!
	rumfummlerDown				=	"SVM_1_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_1_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_1_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_1_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_1_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_1_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_1_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_1_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_1_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_1_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_1_Alarm"						;//ALARM!
	Guards						=	"SVM_1_Guards"						;//GUARDS!
	Help						=	"SVM_1_Help"						;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_1_GoodMonsterKill"				;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_1_GoodKill"					;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_1_NOTNOW"						;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_1_RunCoward"					;//(calls loudly) Stop right there, you lowlife!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_1_GetOutOfHere"				;//Get out of here!
	WhyAreYouInHere				=	"SVM_1_WhyAreYouInHere"				;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_1_YesGoOutOfHere"				;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_1_WhatsThisSupposedToBe"		;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_1_YouDisturbedMySlumber"		;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_1_ITookYourGold"				;//Gold! OK, that's mine for starters ...
	ShitNoGold					=	"SVM_1_ShitNoGold"					;//The bastard doesn't even have any gold on him.
	ITakeYourWeapon				=	"SVM_1_ITakeYourWeapon"				;//I think I'll take your weapon for safekeeping.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_1_WhatAreYouDoing"				;//(warning) Hey! Watch it!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_1_LookingForTroubleAgain"		;//(aggressively) Haven't you had enough yet?
	StopMagic					=	"SVM_1_StopMagic"					;//Just stay away from me with that magic of yours!
	ISaidStopMagic				=	"SVM_1_ISaidStopMagic"				;//Cut out that magic! Something wrong with your ears!?
	WeaponDown					=	"SVM_1_WeaponDown"					;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_1_ISaidWeaponDown"				;//Are you deaf or what? I said: Put down that weapon!
	WiseMove					=	"SVM_1_WiseMove"					;//See, that wasn't so hard.
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_1_NextTimeYoureInForIt"		;//(to himself) We'll see about that ...
	OhMyHead					=	"SVM_1_OhMyHead"					;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_1_TheresAFight"				;//(eagerly) And now for some action!
	OhMyGodItsAFight			=	"SVM_1_OhMyGodItsAFight"			;//(dismayed) They're smashing each other's skulls ...
	GoodVictory					=	"SVM_1_GoodVictory"					;//(evil laugh) He deserved that!
	NotBad						= 	"SVM_1_NotBad"						;//(approvingly) Not bad at all ...
	OhMyGodHesDown				=	"SVM_1_OhMyGodHesDown"				;//(to himself) What a brutal fellow ...
	CheerFriend01				=	"SVM_1_CheerFriend01"				;//Yeah, that's the ticket!
	CheerFriend02				=	"SVM_1_CheerFriend02"				;//Whatcha waiting for?
	CheerFriend03				=	"SVM_1_CheerFriend03"				;//Atta boy!
	Ooh01						=	"SVM_1_Ooh01"						;//Don't take any crap!
	Ooh02						=	"SVM_1_Ooh02"						;//Show him who's boss!
	Ooh03						=	"SVM_1_Ooh03"						;//Holy shit!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_1_WhatWasThat"					;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_1_GetOutOfMyBed"					;//Get out of my bed!
	Awake						= "SVM_1_Awake"							;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_1_TOUGHGUY_ATTACKLOST"			;//All right, all right, you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_1_TOUGHGUY_ATTACKWON"			;//(smugly) Do I have to show you again who's boss?
	TOUGHGUY_PLAYERATTACK		= "SVM_1_TOUGHGUY_PLAYERATTACK"			;//Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_1_GOLD_1000"						;//1000 gold pieces.
	GOLD_950					= "SVM_1_GOLD_950"						;//950 gold pieces.
	GOLD_900					= "SVM_1_GOLD_900"						;//900 gold pieces.
	GOLD_850					= "SVM_1_GOLD_850"						;//850 gold pieces.
	GOLD_800					= "SVM_1_GOLD_800"						;//800 gold pieces.
	GOLD_750					= "SVM_1_GOLD_750"						;//750 gold pieces.
	GOLD_700					= "SVM_1_GOLD_700"						;//700 gold pieces.
	GOLD_650					= "SVM_1_GOLD_650"						;//650 gold pieces.
	GOLD_600					= "SVM_1_GOLD_600"						;//600 gold pieces.
	GOLD_550					= "SVM_1_GOLD_550"						;//550 gold pieces.
	GOLD_500					= "SVM_1_GOLD_500"						;//500 gold pieces.
	GOLD_450					= "SVM_1_GOLD_450"						;//450 gold pieces.
	GOLD_400					= "SVM_1_GOLD_400"						;//400 gold pieces.
	GOLD_350					= "SVM_1_GOLD_350"						;//350 gold pieces.
	GOLD_300					= "SVM_1_GOLD_300"						;//300 gold pieces.
	GOLD_250					= "SVM_1_GOLD_250"						;//250 gold pieces.
	GOLD_200					= "SVM_1_GOLD_200"						;//200 gold pieces.
	GOLD_150					= "SVM_1_GOLD_150"						;//150 gold pieces.
	GOLD_100					= "SVM_1_GOLD_100"						;//100 gold pieces.
	GOLD_90						= "SVM_1_GOLD_90"						;//90 gold pieces.
	GOLD_80						= "SVM_1_GOLD_80"						;//80 gold pieces.
	GOLD_70						= "SVM_1_GOLD_70"						;//70 gold pieces.
	GOLD_60						= "SVM_1_GOLD_60"						;//60 gold pieces.
	GOLD_50						= "SVM_1_GOLD_50"						;//50 gold pieces.
	GOLD_40						= "SVM_1_GOLD_40"						;//40 gold pieces.
	GOLD_30						= "SVM_1_GOLD_30"						;//30 gold pieces.
	GOLD_20						= "SVM_1_GOLD_20"						;//20 gold pieces.
	GOLD_10						= "SVM_1_GOLD_10"						;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_1_Smalltalk01"					;//... do you really think ...
	Smalltalk02					= "SVM_1_Smalltalk02"					;//... anything's possible ...
	Smalltalk03					= "SVM_1_Smalltalk03"					;//... he should have known better ...
	Smalltalk04					= "SVM_1_Smalltalk04"					;//... as if I didn't have enough problems ...
	Smalltalk05					= "SVM_1_Smalltalk05"					;//... who said that ...
	Smalltalk06					= "SVM_1_Smalltalk06"					;//... that'll only cause more trouble ...
	Smalltalk07					= "SVM_1_Smalltalk07"					;//... there've been all kinds of rumors ...
	Smalltalk08					= "SVM_1_Smalltalk08"					;//... I wouldn't have done that ...
	Smalltalk09					= "SVM_1_Smalltalk09"					;//... those are all just rumors ...
	Smalltalk10					= "SVM_1_Smalltalk10"					;//... it's better to watch out who you tell what ...
	Smalltalk11					= "SVM_1_Smalltalk11"					;//... I could have told you that before ...
	Smalltalk12					= "SVM_1_Smalltalk12"					;//... nobody ever asks me ...
	Smalltalk13					= "SVM_1_Smalltalk13"					;//... you have to feel sorry for the poor guy ...
	Smalltalk14					= "SVM_1_Smalltalk14"					;//... that's nothing new ...
	Smalltalk15					= "SVM_1_Smalltalk15"					;//... that's totally obvious ...
	Smalltalk16					= "SVM_1_Smalltalk16"					;//... you don't have to ask me that ...
	Smalltalk17					= "SVM_1_Smalltalk17"					;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_1_Smalltalk18"					;//... you already know what I think ...
	Smalltalk19					= "SVM_1_Smalltalk19"					;//... that's exactly what I said ...
	Smalltalk20					= "SVM_1_Smalltalk20"					;//... nothing's ever going to change that ...
	Smalltalk21					= "SVM_1_Smalltalk21"					;//... why haven't I heard about this before ...
	Smalltalk22					= "SVM_1_Smalltalk22"					;//... let's wait and see what happens ...
	Smalltalk23					= "SVM_1_Smalltalk23"					;//... some problems solve themselves ...
	Smalltalk24					= "SVM_1_Smalltalk24"					;//... I don't want to hear that anymore ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_1_Smalltalk25"					;//... he was falling down drunk ...
	Smalltalk26					= "SVM_1_Smalltalk26"					;//... I won't be treated like that ...
	Smalltalk27					= "SVM_1_Smalltalk27"					;//... they all ran like rabbits, I was completely alone ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_1_Smalltalk28"					;//... so it says in the scriptures ...
	Smalltalk29					= "SVM_1_Smalltalk29"					;//... I always act in the name of Innos ...
	Smalltalk30					= "SVM_1_Smalltalk30"					;//... no one must violate the divine order ...
	SmalltalkKhorataAnnaQuest01			= "SVM_1_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_1_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_1_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_1_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_1_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_1_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_1_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_1_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_1_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_1_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_1_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_1_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_1_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_1_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_1_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_1_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_1_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_1_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_1_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_1_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_1_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_1_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_1_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_1_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_1_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_1_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_1_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_1_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_1_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_1_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_1_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_1_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_1_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_1_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_1_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_1_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_1_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_1_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_1_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_1_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_1_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_1_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_1_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_1_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_1_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_1_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_1_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_1_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_1_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_1_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_1_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_1_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_1_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_1_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_1_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_1_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_1_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_1_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_1_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_1_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_1_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_1_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_1_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_1_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_1_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_1_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_1_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_1_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_1_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_1_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_1_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_1_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_1_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_1_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_1_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_1_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_1_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_1_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...

	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_1_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_1_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_1_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_1_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_1_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_1_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_1_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_1_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_1_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_1_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_1_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_1_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_1_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_1_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_1_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_1_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_1_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_1_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_1_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_1_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_1_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_1_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_1_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_1_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_1_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_1_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_1_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_1_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_1_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_1_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_1_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_1_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_1_Addon_WrongArmor";				//Those aren't your clothes. I'm not talking to you.
	ADDON_WRONGARMOR_SLD		= "SVM_1_ADDON_WRONGARMOR_SLD";			//What are you wearing? Put on something decent.
	ADDON_WRONGARMOR_MIL		= "SVM_1_ADDON_WRONGARMOR_MIL";			//You are a soldier! Dress like one.
	ADDON_WRONGARMOR_KDF		= "SVM_1_ADDON_WRONGARMOR_KDF";			//Your clothing is not appropriate for our order. Go and change.
	ADDON_NOARMOR_BDT			= "SVM_1_ADDON_ADDON_NOARMOR_BDT";		//You haven't even got any armor. Beat it!

	ADDON_DIEBANDIT				= "SVM_1_ADDON_DIEBANDIT";				//Die, you filthy bandit!
	ADDON_DIRTYPIRATE			= "SVM_1_ADDON_DIRTYPIRATE";			//Pirate scum!

	RELMINE01			= "SVM_1_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_1_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_1_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_1_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_1_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_1_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_1_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_1_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_1_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_1_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_1_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_1_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_1_NoLearnGold";			//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_1_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_1_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_1_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_1_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_1_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_1_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_1_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_1_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_1_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_1_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_1_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_1_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_1_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_1_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_1_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_1_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_1_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_1_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_1_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_1_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_1_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_1_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_1_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_1_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_1_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_1_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_1_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_1_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_1_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_1_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_1_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_1_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_1_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_1_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_1_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_1_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_1_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_1_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_1_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_1_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_1_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_1_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_1_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_1_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

INSTANCE SVM_2	(C_SVM)	
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_2_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_2_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_2_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_2_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_2_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_2_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_2_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_2_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_2_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_2_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_2_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_2_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_2_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_2_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_2_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_2_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_2_ThenIBeatYouOutOfHere"		;//Then I'll have to knock you out of here!
	WhatDidYouDoInThere			=	"SVM_2_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_2_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_2_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_2_EnemyKilled"					;//So much for you, lowlife!
	MonsterKilled				=	"SVM_2_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_2_ThiefDown"					;//Never try to steal from me again!
	Berzerk						=	"SVM_2_Berzerk"						;//UUAAARRGGGHHHH!!!!
	rumfummlerDown				=	"SVM_2_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_2_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_2_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_2_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_2_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_2_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_2_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_2_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_2_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_2_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_2_Alarm"						;//ALARM!
	Guards						=	"SVM_2_Guards"						;//GUARDS!
	Help						=	"SVM_2_Help"						;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_2_GoodMonsterKill"				;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_2_GoodKill"					;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_2_NOTNOW"						;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_2_RunCoward"					;//(calls loudly) Stop right there, you lowlife!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_2_GetOutOfHere"				;//Get out of here!
	WhyAreYouInHere				=	"SVM_2_WhyAreYouInHere"				;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_2_YesGoOutOfHere"				;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_2_WhatsThisSupposedToBe"		;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_2_YouDisturbedMySlumber"		;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_2_ITookYourGold"				;//Gold! OK, that's mine for starters ...
	ShitNoGold					=	"SVM_2_ShitNoGold"					;//The bastard doesn't even have any gold on him.
	ITakeYourWeapon				=	"SVM_2_ITakeYourWeapon"				;//I think I'll take your weapon for safekeeping.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_2_WhatAreYouDoing"				;//(warning) Hey! Watch it!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_2_LookingForTroubleAgain"		;//(aggressively) Haven't you had enough yet?
	StopMagic					=	"SVM_2_StopMagic"					;//Just stay away from me with that magic of yours!
	ISaidStopMagic				=	"SVM_2_ISaidStopMagic"				;//Cut out that magic! Something wrong with your ears!?
	WeaponDown					=	"SVM_2_WeaponDown"					;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_2_ISaidWeaponDown"				;//Are you deaf or what? I said: Put down that weapon!
	WiseMove					=	"SVM_2_WiseMove"					;//See, that wasn't so hard.
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_2_NextTimeYoureInForIt"		;//(to himself) We'll see about that ...
	OhMyHead					=	"SVM_2_OhMyHead"					;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_2_TheresAFight"				;//(eagerly) And now for some action!
	OhMyGodItsAFight			=	"SVM_2_OhMyGodItsAFight"			;//(dismayed) They're smashing each other's skulls ...
	GoodVictory					=	"SVM_2_GoodVictory"					;//(evil laugh) He deserved that!
	NotBad						= 	"SVM_2_NotBad"						;//(approvingly) Not bad at all ...
	OhMyGodHesDown				=	"SVM_2_OhMyGodHesDown"				;//(to himself) What a brutal fellow ...
	CheerFriend01				=	"SVM_2_CheerFriend01"				;//Yeah, that's the ticket!
	CheerFriend02				=	"SVM_2_CheerFriend02"				;//Whatcha waiting for?
	CheerFriend03				=	"SVM_2_CheerFriend03"				;//Atta boy!
	Ooh01						=	"SVM_2_Ooh01"						;//Don't take any crap!
	Ooh02						=	"SVM_2_Ooh02"						;//Show him who's boss!
	Ooh03						=	"SVM_2_Ooh03"						;//Holy shit!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_2_WhatWasThat"					;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_2_GetOutOfMyBed"					;//Get out of my bed!
	Awake						= "SVM_2_Awake"							;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_2_TOUGHGUY_ATTACKLOST"			;//All right, all right, you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_2_TOUGHGUY_ATTACKWON"			;//(smugly) Do I have to show you again who's boss?
	TOUGHGUY_PLAYERATTACK		= "SVM_2_TOUGHGUY_PLAYERATTACK"			;//Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_2_GOLD_1000"						;//1000 gold pieces.
	GOLD_950					= "SVM_2_GOLD_950"						;//950 gold pieces.
	GOLD_900					= "SVM_2_GOLD_900"						;//900 gold pieces.
	GOLD_850					= "SVM_2_GOLD_850"						;//850 gold pieces.
	GOLD_800					= "SVM_2_GOLD_800"						;//800 gold pieces.
	GOLD_750					= "SVM_2_GOLD_750"						;//750 gold pieces.
	GOLD_700					= "SVM_2_GOLD_700"						;//700 gold pieces.
	GOLD_650					= "SVM_2_GOLD_650"						;//650 gold pieces.
	GOLD_600					= "SVM_2_GOLD_600"						;//600 gold pieces.
	GOLD_550					= "SVM_2_GOLD_550"						;//550 gold pieces.
	GOLD_500					= "SVM_2_GOLD_500"						;//500 gold pieces.
	GOLD_450					= "SVM_2_GOLD_450"						;//450 gold pieces.
	GOLD_400					= "SVM_2_GOLD_400"						;//400 gold pieces.
	GOLD_350					= "SVM_2_GOLD_350"						;//350 gold pieces.
	GOLD_300					= "SVM_2_GOLD_300"						;//300 gold pieces.
	GOLD_250					= "SVM_2_GOLD_250"						;//250 gold pieces.
	GOLD_200					= "SVM_2_GOLD_200"						;//200 gold pieces.
	GOLD_150					= "SVM_2_GOLD_150"						;//150 gold pieces.
	GOLD_100					= "SVM_2_GOLD_100"						;//100 gold pieces.
	GOLD_90						= "SVM_2_GOLD_90"						;//90 gold pieces.
	GOLD_80						= "SVM_2_GOLD_80"						;//80 gold pieces.
	GOLD_70						= "SVM_2_GOLD_70"						;//70 gold pieces.
	GOLD_60						= "SVM_2_GOLD_60"						;//60 gold pieces.
	GOLD_50						= "SVM_2_GOLD_50"						;//50 gold pieces.
	GOLD_40						= "SVM_2_GOLD_40"						;//40 gold pieces.
	GOLD_30						= "SVM_2_GOLD_30"						;//30 gold pieces.
	GOLD_20						= "SVM_2_GOLD_20"						;//20 gold pieces.
	GOLD_10						= "SVM_2_GOLD_10"						;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_2_Smalltalk01"					;//... do you really think ...
	Smalltalk02					= "SVM_2_Smalltalk02"					;//... anything's possible ...
	Smalltalk03					= "SVM_2_Smalltalk03"					;//... he should have known better ...
	Smalltalk04					= "SVM_2_Smalltalk04"					;//... as if I didn't have enough problems ...
	Smalltalk05					= "SVM_2_Smalltalk05"					;//... who said that ...
	Smalltalk06					= "SVM_2_Smalltalk06"					;//... that'll only cause more trouble ...
	Smalltalk07					= "SVM_2_Smalltalk07"					;//... there've been all kinds of rumors ...
	Smalltalk08					= "SVM_2_Smalltalk08"					;//... I wouldn't have done that ...
	Smalltalk09					= "SVM_2_Smalltalk09"					;//... those are all just rumors ...
	Smalltalk10					= "SVM_2_Smalltalk10"					;//... it's better to watch out who you tell what ...
	Smalltalk11					= "SVM_2_Smalltalk11"					;//... I could have told you that before ...
	Smalltalk12					= "SVM_2_Smalltalk12"					;//... nobody ever asks me ...
	Smalltalk13					= "SVM_2_Smalltalk13"					;//... you have to feel sorry for the poor guy ...
	Smalltalk14					= "SVM_2_Smalltalk14"					;//... that's nothing new ...
	Smalltalk15					= "SVM_2_Smalltalk15"					;//... that's totally obvious ...
	Smalltalk16					= "SVM_2_Smalltalk16"					;//... you don't have to ask me that ...
	Smalltalk17					= "SVM_2_Smalltalk17"					;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_2_Smalltalk18"					;//... you already know what I think ...
	Smalltalk19					= "SVM_2_Smalltalk19"					;//... that's exactly what I said ...
	Smalltalk20					= "SVM_2_Smalltalk20"					;//... nothing's ever going to change that ...
	Smalltalk21					= "SVM_2_Smalltalk21"					;//... why haven't I heard about this before ...
	Smalltalk22					= "SVM_2_Smalltalk22"					;//... let's wait and see what happens ...
	Smalltalk23					= "SVM_2_Smalltalk23"					;//... some problems solve themselves ...
	Smalltalk24					= "SVM_2_Smalltalk24"					;//... I don't want to hear that anymore ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_2_Smalltalk25"					;//... he was falling down drunk ...
	Smalltalk26					= "SVM_2_Smalltalk26"					;//... I won't be treated like that ...
	Smalltalk27					= "SVM_2_Smalltalk27"					;//... they all ran like rabbits, I was completely alone ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_2_Smalltalk28"					;//... so it says in the scriptures ...
	Smalltalk29					= "SVM_2_Smalltalk29"					;//... I always act in the name of Innos ...
	Smalltalk30					= "SVM_2_Smalltalk30"					;//... no one must violate the divine order ...
	SmalltalkKhorataAnnaQuest01			= "SVM_2_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_2_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_2_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_2_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_2_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_2_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_2_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_2_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_2_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_2_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_2_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_2_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_2_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_2_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_2_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_2_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_2_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_2_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_2_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_2_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_2_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_2_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_2_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_2_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_2_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_2_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_2_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_2_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_2_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_2_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_2_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_2_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_2_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_2_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_2_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_2_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_2_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_2_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_2_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_2_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_2_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_2_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_2_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_2_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_2_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_2_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_2_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_2_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_2_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_2_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_2_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_2_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_2_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_2_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_2_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_2_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_2_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_2_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_2_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_2_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_2_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_2_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_2_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_2_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_2_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_2_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_2_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_2_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_2_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_2_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_2_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_2_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_2_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_2_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_2_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_2_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_2_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_2_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...

	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_2_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_2_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_2_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_2_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_2_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_2_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_2_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_2_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_2_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_2_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_2_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_2_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_2_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_2_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_2_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_2_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_2_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_2_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_2_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_2_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_2_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_2_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_2_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_2_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_2_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_2_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_2_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_2_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_2_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_2_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_2_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_2_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_2_Addon_WrongArmor";				//Those aren't your clothes. I'm not talking to you.
	ADDON_WRONGARMOR_SLD		= "SVM_2_ADDON_WRONGARMOR_SLD";			//What are you wearing? Put on something decent.
	ADDON_WRONGARMOR_MIL		= "SVM_2_ADDON_WRONGARMOR_MIL";			//You are a soldier! Dress like one.
	ADDON_WRONGARMOR_KDF		= "SVM_2_ADDON_WRONGARMOR_KDF";			//Your clothing is not appropriate for our order. Go and change.
	ADDON_NOARMOR_BDT			= "SVM_2_ADDON_ADDON_NOARMOR_BDT";		//You haven't even got any armor. Beat it!

	ADDON_DIEBANDIT				= "SVM_2_ADDON_DIEBANDIT";				//Die, you filthy bandit!
	ADDON_DIRTYPIRATE			= "SVM_2_ADDON_DIRTYPIRATE";			//Pirate scum!

	RELMINE01			= "SVM_2_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_2_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_2_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_2_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_2_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_2_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_2_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_2_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_2_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_2_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_2_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_2_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_2_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_2_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_2_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_2_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_2_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_2_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_2_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_2_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_2_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_2_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_2_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_2_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_2_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_2_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_2_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_2_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_2_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_2_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_2_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_2_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_2_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_2_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_2_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_2_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_2_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_2_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_2_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_2_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_2_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_2_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_2_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_2_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_2_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_2_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_2_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_2_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_2_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_2_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_2_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_2_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_2_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_2_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_2_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_2_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_2_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_3 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_3_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_3_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_3_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_3_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_3_Weather"					;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_3_IGetYouStill"				;//Now I've got you!
	DieEnemy					=	"SVM_3_DieEnemy"					;//I'm gonna rip you to pieces!
	DieMonster					=	"SVM_3_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_3_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_3_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_3_SheepKiller"				;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_3_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_3_YouMurderer"				;//Murderer!
	DieStupidBeast				=	"SVM_3_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_3_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_3_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_3_ThenIBeatYouOutOfHere"		;//You don't want to go? All right!
	WhatDidYouDoInThere			=	"SVM_3_WhatDidYouDoInThere"		;//What did you want in there?
	WillYouStopFighting			=	"SVM_3_WillYouStopFighting"		;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_3_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_3_EnemyKilled"				;//You deserved that, lowlife!
	MonsterKilled				=	"SVM_3_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_3_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_3_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_3_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_3_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_3_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_3_NeverHitMeAgain"			;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_3_YouBetterShouldHaveListened";//You should have listened to me!
	GetUpAndBeGone				=	"SVM_3_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_3_NeverEnterRoomAgain"		;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_3_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_3_Berzerk"						;//UUAAARRGGGHHHH!!!!
	RunAway						= 	"SVM_3_RunAway"					;//Oh, shit!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_3_Alarm"					;//ALARM!
	Guards						=	"SVM_3_Guards"					;//GUARDS!
	Help						=	"SVM_3_Help"					;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_3_GoodMonsterKill"		;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_3_GoodKill"				;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_3_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_3_RunCoward"				;//(calls loudly) Yes! Run as fast as you can!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_3_GetOutOfHere"			;//Get out of here!
	WhyAreYouInHere				=	"SVM_3_WhyAreYouInHere"		;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_3_YesGoOutOfHere"			;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_3_WhatsThisSupposedToBe"	;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_3_YouDisturbedMySlumber"	;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_3_ITookYourGold"			;//Thanks for the gold, you hero!
	ShitNoGold					=	"SVM_3_ShitNoGold"				;//You poor sucker, you don't even have any gold on you!
	ITakeYourWeapon				=	"SVM_3_ITakeYourWeapon"		;//I think I had better take this weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_3_WhatAreYouDoing"		;//(warning) Watch it! One more time, and I'll slug you one.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_3_LookingForTroubleAgain"	;//Haven't you had enough yet?
	StopMagic					=	"SVM_3_StopMagic"				;//Cut out this magic crap!
	ISaidStopMagic				=	"SVM_3_ISaidStopMagic"			;//Want a licking? Stop it this instant!!!
	WeaponDown					=	"SVM_3_WeaponDown"				;//Put away that weapon!
	ISaidWeaponDown				=	"SVM_3_ISaidWeaponDown"		;//Will you put away that damn weapon!
	WiseMove					=	"SVM_3_WiseMove"				;//Smart kid!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_3_NextTimeYoureInForIt"	;//(to himself) Well, we'll see the next time ...
	OhMyHead					=	"SVM_3_OhMyHead"				;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_3_TheresAFight"			;//(eagerly) Aah, a fight!
	OhMyGodItsAFight			=	"SVM_3_OhMyGodItsAFight"		;//(dismayed) Oh my God, a fight!
	GoodVictory					=	"SVM_3_GoodVictory"			;//(evil laugh) You showed him who's boss!
	NotBad						= 	"SVM_3_NotBad"					;//(approvingly) Not bad ...
	OhMyGodHesDown				=	"SVM_3_OhMyGodHesDown"			;//(to himself) My God! How brutal...
	CheerFriend01				=	"SVM_3_CheerFriend01"			;//Hit, then!
	CheerFriend02				=	"SVM_3_CheerFriend02"			;//Give it your all!
	CheerFriend03				=	"SVM_3_CheerFriend03"			;//Show him!
	Ooh01						=	"SVM_3_Ooh01"					;//Hang on!
	Ooh02						=	"SVM_3_Ooh02"					;//Watch out!
	Ooh03						=	"SVM_3_Ooh03"					;//Wow! That hit the spot!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_3_WhatWasThat"				;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_3_GetOutOfMyBed"			;//This is my bed!
	Awake						= "SVM_3_Awake"					;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_3_TOUGHGUY_ATTACKLOST"		;//All right, all right, you're the better fighter. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_3_TOUGHGUY_ATTACKWON"		;//(smugly) I assume that, by now, you are well aware which of us is stronger ... What do you want?
	TOUGHGUY_PLAYERATTACK		= "SVM_3_TOUGHGUY_PLAYERATTACK"	;//I thought you were trying to pick a fight with me. Did you change your mind? You prefer TALKING, right? (laughs)
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_3_GOLD_1000"				;//1000 gold pieces.
	GOLD_950					= "SVM_3_GOLD_950"					;//950 gold pieces.
	GOLD_900					= "SVM_3_GOLD_900"					;//900 gold pieces.
	GOLD_850					= "SVM_3_GOLD_850"					;//850 gold pieces.
	GOLD_800					= "SVM_3_GOLD_800"					;//800 gold pieces.
	GOLD_750					= "SVM_3_GOLD_750"					;//750 gold pieces.
	GOLD_700					= "SVM_3_GOLD_700"					;//700 gold pieces.
	GOLD_650					= "SVM_3_GOLD_650"					;//650 gold pieces.
	GOLD_600					= "SVM_3_GOLD_600"					;//600 gold pieces.
	GOLD_550					= "SVM_3_GOLD_550"					;//550 gold pieces.
	GOLD_500					= "SVM_3_GOLD_500"					;//500 gold pieces.
	GOLD_450					= "SVM_3_GOLD_450"					;//450 gold pieces.
	GOLD_400					= "SVM_3_GOLD_400"					;//400 gold pieces.
	GOLD_350					= "SVM_3_GOLD_350"					;//350 gold pieces.
	GOLD_300					= "SVM_3_GOLD_300"					;//300 gold pieces.
	GOLD_250					= "SVM_3_GOLD_250"					;//250 gold pieces.
	GOLD_200					= "SVM_3_GOLD_200"					;//200 gold pieces.
	GOLD_150					= "SVM_3_GOLD_150"					;//150 gold pieces.
	GOLD_100					= "SVM_3_GOLD_100"					;//100 gold pieces.
	GOLD_90						= "SVM_3_GOLD_90"					;//90 gold pieces.
	GOLD_80						= "SVM_3_GOLD_80"					;//80 gold pieces.
	GOLD_70						= "SVM_3_GOLD_70"					;//70 gold pieces.
	GOLD_60						= "SVM_3_GOLD_60"					;//60 gold pieces.
	GOLD_50						= "SVM_3_GOLD_50"					;//50 gold pieces.
	GOLD_40						= "SVM_3_GOLD_40"					;//40 gold pieces.
	GOLD_30						= "SVM_3_GOLD_30"					;//30 gold pieces.
	GOLD_20						= "SVM_3_GOLD_20"					;//20 gold pieces.
	GOLD_10						= "SVM_3_GOLD_10"					;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_3_Smalltalk01"				;//... do you really think ...
	Smalltalk02					= "SVM_3_Smalltalk02"				;//... anything's possible ...
	Smalltalk03					= "SVM_3_Smalltalk03"				;//... he should have known better ...
	Smalltalk04					= "SVM_3_Smalltalk04"				;//... as if I didn't have enough problems ...
	Smalltalk05					= "SVM_3_Smalltalk05"				;//... who said that ...
	Smalltalk06					= "SVM_3_Smalltalk06"				;//... that'll only cause more trouble ...
	Smalltalk07					= "SVM_3_Smalltalk07"				;//... there've been all kinds of rumors ...
	Smalltalk08					= "SVM_3_Smalltalk08"				;//... I never would have thought ...
	Smalltalk09					= "SVM_3_Smalltalk09"				;//... those are all just rumors ...
	Smalltalk10					= "SVM_3_Smalltalk10"				;//... it's better to watch out who you tell what ...
	Smalltalk11					= "SVM_3_Smalltalk11"				;//... I could have told you that before ...
	Smalltalk12					= "SVM_3_Smalltalk12"				;//... nobody ever asks me ...
	Smalltalk13					= "SVM_3_Smalltalk13"				;//... you have to feel sorry for the poor guy ...
	Smalltalk14					= "SVM_3_Smalltalk14"				;//... that's nothing new ...
	Smalltalk15					= "SVM_3_Smalltalk15"				;//... that's totally obvious ...
	Smalltalk16					= "SVM_3_Smalltalk16"				;//... you don't have to ask me that ...
	Smalltalk17					= "SVM_3_Smalltalk17"				;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_3_Smalltalk18"				;//... you already know what I think ...
	Smalltalk19					= "SVM_3_Smalltalk19"				;//... that's exactly what I said ...
	Smalltalk20					= "SVM_3_Smalltalk20"				;//... nothing's ever going to change that ...
	Smalltalk21					= "SVM_3_Smalltalk21"				;//... why haven't I heard about this before ...
	Smalltalk22					= "SVM_3_Smalltalk22"				;//... let's wait and see what happens ...
	Smalltalk23					= "SVM_3_Smalltalk23"				;//... some problems solve themselves ...
	Smalltalk24					= "SVM_3_Smalltalk24"				;//... I don't want to hear that anymore ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                    
	Smalltalk25					= "SVM_3_Smalltalk25"				;//... he was falling down drunk ...
	Smalltalk26					= "SVM_3_Smalltalk26"				;//... I won't be treated like that ...
	Smalltalk27					= "SVM_3_Smalltalk27"				;//... they all ran like rabbits, I was completely alone ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                    
	Smalltalk28					= "SVM_3_Smalltalk28"				;//... so it says in the scriptures ...
	Smalltalk29					= "SVM_3_Smalltalk29"				;//... I always act in the name of Innos ...
	Smalltalk30					= "SVM_3_Smalltalk30"				;//... no one must violate the divine order ...
	SmalltalkKhorataAnnaQuest01			= "SVM_3_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_3_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_3_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_3_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_3_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_3_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_3_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_3_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_3_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_3_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_3_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_3_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_3_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_3_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_3_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_3_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_3_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_3_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_3_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_3_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_3_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_3_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_3_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_3_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_3_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_3_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_3_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_3_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_3_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_3_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_3_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_3_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_3_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_3_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_3_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_3_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_3_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_3_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_3_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_3_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_3_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_3_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_3_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_3_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_3_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_3_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_3_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_3_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_3_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_3_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_3_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_3_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_3_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_3_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_3_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_3_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_3_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_3_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_3_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_3_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_3_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_3_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_3_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_3_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_3_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_3_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_3_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_3_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_3_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_3_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_3_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_3_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_3_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_3_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_3_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_3_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_3_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_3_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_3_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_3_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_3_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_3_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_3_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_3_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_3_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_3_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_3_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_3_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_3_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_3_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_3_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_3_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_3_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_3_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_3_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_3_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_3_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_3_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_3_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_3_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_3_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_3_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_3_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_3_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_3_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_3_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_3_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_3_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_3_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_3_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_3_Addon_WrongArmor";				//What kind of clothes are those? They don't suit you at all. Leave me alone.
	ADDON_WRONGARMOR_SLD		= "SVM_3_ADDON_WRONGARMOR_SLD";			//If you want to talk, then put on something decent first.
	ADDON_WRONGARMOR_MIL		= "SVM_3_ADDON_WRONGARMOR_MIL";			//We soldiers wear our uniforms with pride. Get changed.
	ADDON_WRONGARMOR_KDF		= "SVM_3_ADDON_WRONGARMOR_KDF";			//All are equal in our order, therefore we all wear the same clothing. Go change!
	ADDON_NOARMOR_BDT			= "SVM_3_ADDON_ADDON_NOARMOR_BDT";		//You must have come straight out of the slammer. First get yourself something to wear.

	ADDON_DIEBANDIT				= "SVM_3_ADDON_DIEBANDIT";				//COME HERE, YOU BANDIT!
	ADDON_DIRTYPIRATE			= "SVM_3_ADDON_DIRTYPIRATE";			//COME HERE, YOU PIRATE!

	RELMINE01			= "SVM_3_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_3_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_3_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_3_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_3_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_3_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_3_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_3_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_3_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_3_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_3_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_3_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_3_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_3_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_3_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_3_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_3_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_3_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_3_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_3_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_3_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_3_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_3_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_3_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_3_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_3_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_3_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_3_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_3_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_3_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_3_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_3_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_3_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_3_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_3_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_3_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_3_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_3_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_3_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_3_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_3_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_3_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_3_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_3_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_3_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_3_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_3_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_3_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_3_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_3_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_3_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_3_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_3_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_3_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_3_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_3_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_3_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_4 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_4_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_4_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_4_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_4_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_4_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_4_IGetYouStill"				;//YOU again!
	DieEnemy					=	"SVM_4_DieEnemy"					;//I'm gonna rip you to pieces!
	DieMonster					=	"SVM_4_DieMonster"					;//Another one of those things!
	DirtyThief					=	"SVM_4_DirtyThief"					;//You miserable little thief!
	HandsOff					=	"SVM_4_HandsOff"					;//Get your hands off that!
	SheepKiller					=	"SVM_4_SheepKiller"					;//Hey! Leave our sheep alone!
	SheepKillerMonster			=	"SVM_4_SheepKillerMonster"			;//That monster is gobbling up our sheep!
	YouMurderer					=	"SVM_4_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_4_DieStupidBeast"				;//What is THAT creature doing here?
	YouDareHitMe				=	"SVM_4_YouDareHitMe"				;//You're in for it now!
	YouAskedForIt				=	"SVM_4_YouAskedForIt"				;//You asked for it.
	ThenIBeatYouOutOfHere		=	"SVM_4_ThenIBeatYouOutOfHere"		;//I guess some people just have to learn the hard way.
	WhatDidYouDoInThere			=	"SVM_4_WhatDidYouDoInThere"			;//What did you want in there, huh!?
	WillYouStopFighting			=	"SVM_4_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_4_Berzerk"						;//UUAAARRGGGHHHH!!!!
	KillEnemy					= 	"SVM_4_KillEnemy"					;//Die!
	EnemyKilled					=	"SVM_4_EnemyKilled"					;//What a silly bastard...
	MonsterKilled				=	"SVM_4_MonsterKilled"				;//All right, so much for you, filthy beast!
	ThiefDown					=	"SVM_4_ThiefDown"					;//Keep your paws off my stuff from now on - got it?
	rumfummlerDown				=	"SVM_4_rumfummlerDown"				;//Keep your fingers to yourself from now on!
	SheepAttackerDown			=	"SVM_4_SheepAttackerDown"			;//Keep your grubby paws off our sheep from now on!
	KillMurderer				=	"SVM_4_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_4_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_4_NeverHitMeAgain"				;//Don't try that again, buster!
	YouBetterShouldHaveListened	=	"SVM_4_YouBetterShouldHaveListened"	;//Let that be a lesson to you.
	GetUpAndBeGone				=	"SVM_4_GetUpAndBeGone"				;//Stand up and get out of here!
	NeverEnterRoomAgain			=	"SVM_4_NeverEnterRoomAgain"			;//I never want to see you in there again - understood?
	ThereIsNoFightingHere		=	"SVM_4_ThereIsNoFightingHere"		;//I'm the one who does the bashing around here, understood?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_4_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_4_Alarm"					;//ALARM!
	Guards						=	"SVM_4_Guards"					;//GUARDS!
	Help						=	"SVM_4_Help"					;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_4_GoodMonsterKill"			;//(calls to) Yeah! That's how you deal with those things!
	GoodKill					= 	"SVM_4_GoodKill"				;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_4_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_4_RunCoward"				;//(yells) You haven't seen the last of me!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_4_GetOutOfHere"			;//Out!
	WhyAreYouInHere				=	"SVM_4_WhyAreYouInHere"			;//What's your business here?!
	YesGoOutOfHere				= 	"SVM_4_YesGoOutOfHere"			;//Just beat it!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_4_WhatsThisSupposedToBe"	;//What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_4_YouDisturbedMySlumber"	;//(wakes up) Wassup?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_4_ITookYourGold"			;//Thanks for the gold, you hero!
	ShitNoGold					=	"SVM_4_ShitNoGold"				;//You poor sucker, you don't even have any gold on you!
	ITakeYourWeapon				=	"SVM_4_ITakeYourWeapon"			;//I think I had better take this weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_4_WhatAreYouDoing"			;//(warning) Watch it! One more time, and I'll slug you one.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_4_LookingForTroubleAgain"	;//(aggressive) Do you want another punch in the face?
																	 
	StopMagic					=	"SVM_4_StopMagic"				;//Cut out this magic crap!
	ISaidStopMagic				=	"SVM_4_ISaidStopMagic"			;//Want a licking? Stop it this instant!
	WeaponDown					=	"SVM_4_WeaponDown"				;//Put away that weapon!
	ISaidWeaponDown				=	"SVM_4_ISaidWeaponDown"			;//Will you put away that damn weapon!
	WiseMove					=	"SVM_4_WiseMove"				;//Smart kid!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_4_NextTimeYoureInForIt"	;//(to himself) Well, we'll see the next time ...
	OhMyHead					=	"SVM_4_OhMyHead"				;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_4_TheresAFight"			;//(eagerly) Aah, a fight!
	OhMyGodItsAFight			=	"SVM_4_OhMyGodItsAFight"		;//(dismayed) Oh my God, a fight!
	GoodVictory					=	"SVM_4_GoodVictory"				;//(evil laugh) You showed him who's boss!
	NotBad						= 	"SVM_4_NotBad"					;//(approvingly) Not bad ...
	OhMyGodHesDown				=	"SVM_4_OhMyGodHesDown"			;//(to himself) My God! How brutal...
	CheerFriend01				=	"SVM_4_CheerFriend01"			;//Yeah, let him have it!
	CheerFriend02				=	"SVM_4_CheerFriend02"			;//Show him!
	CheerFriend03				=	"SVM_4_CheerFriend03"			;//Finish him!
	Ooh01						=	"SVM_4_Ooh01"					;//Defend yourself!
	Ooh02						=	"SVM_4_Ooh02"					;//Go ahead, hit back!
	Ooh03						=	"SVM_4_Ooh03"					;//Ouch! That hurt!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_4_WhatWasThat"				;//(to himself, waking up) Damnit, what was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_4_GetOutOfMyBed"				;//Find your own bed!
	Awake						= "SVM_4_Awake"						;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_4_TOUGHGUY_ATTACKLOST"		;//Say, you pack a pretty punch ... What is it you want?
	TOUGHGUY_ATTACKWON			= "SVM_4_TOUGHGUY_ATTACKWON"		;//(smugly) Any more questions?
	TOUGHGUY_PLAYERATTACK		= "SVM_4_TOUGHGUY_PLAYERATTACK"		;//There you are again!
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_4_GOLD_1000"					;//1000 gold pieces.
	GOLD_950					= "SVM_4_GOLD_950"					;//950 gold pieces.
	GOLD_900					= "SVM_4_GOLD_900"					;//900 gold pieces.
	GOLD_850					= "SVM_4_GOLD_850"					;//850 gold pieces.
	GOLD_800					= "SVM_4_GOLD_800"					;//800 gold pieces.
	GOLD_750					= "SVM_4_GOLD_750"					;//750 gold pieces.
	GOLD_700					= "SVM_4_GOLD_700"					;//700 gold pieces.
	GOLD_650					= "SVM_4_GOLD_650"					;//650 gold pieces.
	GOLD_600					= "SVM_4_GOLD_600"					;//600 gold pieces.
	GOLD_550					= "SVM_4_GOLD_550"					;//550 gold pieces.
	GOLD_500					= "SVM_4_GOLD_500"					;//500 gold pieces.
	GOLD_450					= "SVM_4_GOLD_450"					;//450 gold pieces.
	GOLD_400					= "SVM_4_GOLD_400"					;//400 gold pieces.
	GOLD_350					= "SVM_4_GOLD_350"					;//350 gold pieces.
	GOLD_300					= "SVM_4_GOLD_300"					;//300 gold pieces.
	GOLD_250					= "SVM_4_GOLD_250"					;//250 gold pieces.
	GOLD_200					= "SVM_4_GOLD_200"					;//200 gold pieces.
	GOLD_150					= "SVM_4_GOLD_150"					;//150 gold pieces.
	GOLD_100					= "SVM_4_GOLD_100"					;//100 gold pieces.
	GOLD_90						= "SVM_4_GOLD_90"					;//90 gold pieces.
	GOLD_80						= "SVM_4_GOLD_80"					;//80 gold pieces.
	GOLD_70						= "SVM_4_GOLD_70"					;//70 gold pieces.
	GOLD_60						= "SVM_4_GOLD_60"					;//60 gold pieces.
	GOLD_50						= "SVM_4_GOLD_50"					;//50 gold pieces.
	GOLD_40						= "SVM_4_GOLD_40"					;//40 gold pieces.
	GOLD_30						= "SVM_4_GOLD_30"					;//30 gold pieces.
	GOLD_20						= "SVM_4_GOLD_20"					;//20 gold pieces.
	GOLD_10						= "SVM_4_GOLD_10"					;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_4_Smalltalk01"				;//... is it really true ...
	Smalltalk02					= "SVM_4_Smalltalk02"				;//... that's not what I heard...
	Smalltalk03					= "SVM_4_Smalltalk03"				;//... don't tell me you didn't know that ...
	Smalltalk04					= "SVM_4_Smalltalk04"				;//... you hardly know who to believe these days ...
	Smalltalk05					= "SVM_4_Smalltalk05"				;//... that's all just gossip ...
	Smalltalk06					= "SVM_4_Smalltalk06"				;//... I'm no better off myself ...
	Smalltalk07					= "SVM_4_Smalltalk07"				;//... nothing amazes me any more ...
	Smalltalk08					= "SVM_4_Smalltalk08"				;//... that's really not my problem ...
	Smalltalk09					= "SVM_4_Smalltalk09"				;//... do you really believe that ...
	Smalltalk10					= "SVM_4_Smalltalk10"				;//... nobody will learn anything from me ...
	Smalltalk11					= "SVM_4_Smalltalk11"				;//... that was obvious all along ...
	Smalltalk12					= "SVM_4_Smalltalk12"				;//... he listened to the wrong people ...
	Smalltalk13					= "SVM_4_Smalltalk13"				;//... if he doesn't see that, I can't help him ...
	Smalltalk14					= "SVM_4_Smalltalk14"				;//... I'm not telling you anything new ...
	Smalltalk15					= "SVM_4_Smalltalk15"				;//... he never would have thought of that himself ...
	Smalltalk16					= "SVM_4_Smalltalk16"				;//... that's been known a long time ...
	Smalltalk17					= "SVM_4_Smalltalk17"				;//... it's a bad business ...
	Smalltalk18					= "SVM_4_Smalltalk18"				;//... I'd have done it differently ...
	Smalltalk19					= "SVM_4_Smalltalk19"				;//... I agree with you completely ...
	Smalltalk20					= "SVM_4_Smalltalk20"				;//... will it ever change ...
	Smalltalk21					= "SVM_4_Smalltalk21"				;//... I never knew that ...
	Smalltalk22					= "SVM_4_Smalltalk22"				;//... you can't do anything about it ...
	Smalltalk23					= "SVM_4_Smalltalk23"				;//... that doesn't amaze me ...
	Smalltalk24					= "SVM_4_Smalltalk24"				;//... but no, he insisted he knew better ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                    
	Smalltalk25					= "SVM_4_Smalltalk25"				;//... all that matters is strength, so don't tell me that ...
	Smalltalk26					= "SVM_4_Smalltalk26"				;//... he doesn't even know how to hold a sword ...
	Smalltalk27					= "SVM_4_Smalltalk27"				;//... yeah, he really said that ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                    
	Smalltalk28					= "SVM_4_Smalltalk28"				;//... someone's got to pay for that ...
	Smalltalk29					= "SVM_4_Smalltalk29"				;//... Innos enlightens all those who recognize his wisdom ...
	Smalltalk30					= "SVM_4_Smalltalk30"				;//... justice will prevail in the end ...
	SmalltalkKhorataAnnaQuest01			= "SVM_4_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_4_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_4_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_4_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_4_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_4_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_4_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_4_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_4_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_4_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_4_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_4_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_4_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_4_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_4_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_4_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_4_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_4_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_4_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_4_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_4_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_4_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_4_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_4_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_4_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_4_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_4_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_4_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_4_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_4_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_4_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_4_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_4_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_4_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_4_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_4_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_4_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_4_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_4_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_4_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_4_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_4_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_4_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_4_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_4_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_4_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_4_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_4_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_4_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_4_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_4_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_4_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_4_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_4_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_4_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_4_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_4_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_4_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_4_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_4_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_4_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_4_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_4_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_4_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_4_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_4_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_4_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_4_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_4_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_4_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_4_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_4_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_4_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_4_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_4_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_4_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_4_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_4_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_4_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_4_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_4_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_4_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_4_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_4_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_4_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_4_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_4_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_4_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_4_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_4_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_4_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_4_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_4_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_4_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_4_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_4_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_4_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_4_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_4_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_4_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_4_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_4_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_4_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_4_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_4_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_4_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_4_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_4_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_4_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_4_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_4_Addon_WrongArmor";				//First get dressed properly, then we'll talk some more.
	ADDON_WRONGARMOR_SLD		= "SVM_4_ADDON_WRONGARMOR_SLD";			//You had better wear your armor if you want to talk to me.
	ADDON_WRONGARMOR_MIL		= "SVM_4_ADDON_WRONGARMOR_MIL";			//Hasn't anyone given you some of our armor? Then get some first.
	ADDON_WRONGARMOR_KDF		= "SVM_4_ADDON_WRONGARMOR_KDF";			//Where is your robe? Go and change. Until then, I will not talk to you.
	ADDON_NOARMOR_BDT			= "SVM_4_ADDON_ADDON_NOARMOR_BDT";		//What kind of a poor bugger are you? Come back when you can afford some armor.

	ADDON_DIEBANDIT				= "SVM_4_ADDON_DIEBANDIT";				//Another bandit!
	ADDON_DIRTYPIRATE			= "SVM_4_ADDON_DIRTYPIRATE";			//You dirty pirate!

	RELMINE01			= "SVM_4_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_4_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_4_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_4_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_4_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_4_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_4_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_4_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_4_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_4_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_4_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_4_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_4_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_4_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_4_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_4_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_4_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_4_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_4_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_4_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_4_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_4_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_4_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_4_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_4_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_4_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_4_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_4_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_4_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_4_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_4_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_4_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_4_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_4_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_4_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_4_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_4_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_4_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_4_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_4_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_4_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_4_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_4_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_4_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_4_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_4_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_4_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_4_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_4_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_4_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_4_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_4_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_4_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_4_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_4_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_4_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_4_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_5 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_5_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_5_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_5_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_5_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_5_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_5_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_5_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_5_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_5_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_5_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_5_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_5_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_5_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_5_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_5_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_5_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_5_ThenIBeatYouOutOfHere"		;//Then I'll have to KNOCK you out of here!
	WhatDidYouDoInThere			=	"SVM_5_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_5_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_5_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_5_EnemyKilled"					;//So much for you, lowlife!
	MonsterKilled				=	"SVM_5_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_5_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_5_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	Berzerk						=	"SVM_5_Berzerk"						;//UUAAARRGGGHHHH!!!!
	SheepAttackerDown			=	"SVM_5_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_5_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_5_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_5_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_5_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_5_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_5_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_5_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_5_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_5_Alarm"						;//ALARM!
	Guards						=	"SVM_5_Guards"						;//GUARDS!
	Help						=	"SVM_5_Help"						;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_5_GoodMonsterKill"				;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_5_GoodKill"					;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_5_NOTNOW"						;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_5_RunCoward"					;//(calls loudly) Stop right there, you lowlife!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_5_GetOutOfHere"				;//Get out of here!
	WhyAreYouInHere				=	"SVM_5_WhyAreYouInHere"				;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_5_YesGoOutOfHere"				;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_5_WhatsThisSupposedToBe"		;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_5_YouDisturbedMySlumber"		;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_5_ITookYourGold"				;//Gold! OK, that's mine for starters ...
	ShitNoGold					=	"SVM_5_ShitNoGold"					;//You don't even have any gold on you?
	ITakeYourWeapon				=	"SVM_5_ITakeYourWeapon"				;//I think I'll take your weapon for safekeeping.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_5_WhatAreYouDoing"				;//(warning) Hey! Watch it!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_5_LookingForTroubleAgain"		;//(aggressively) Haven't you had enough yet?
	StopMagic					=	"SVM_5_StopMagic"					;//Just stay away from me with that magic of yours!
	ISaidStopMagic				=	"SVM_5_ISaidStopMagic"				;//Cut out that magic! Something wrong with your ears!?
	WeaponDown					=	"SVM_5_WeaponDown"					;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_5_ISaidWeaponDown"				;//Are you deaf or what? I said: Put down that weapon!
	WiseMove					=	"SVM_5_WiseMove"					;//See, that wasn't so hard.
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_5_NextTimeYoureInForIt"		;//(to himself) We'll see about that ...
	OhMyHead					=	"SVM_5_OhMyHead"					;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_5_TheresAFight"				;//(eagerly) And now for some action!
	OhMyGodItsAFight			=	"SVM_5_OhMyGodItsAFight"			;//(dismayed) But they're smashing each other's skulls ...
	GoodVictory					=	"SVM_5_GoodVictory"					;//(evil laugh) He deserved that!
	NotBad						= 	"SVM_5_NotBad"						;//(approvingly) Not bad at all ...
	OhMyGodHesDown				=	"SVM_5_OhMyGodHesDown"				;//(to himself) What a brutal fellow ...
	CheerFriend01				=	"SVM_5_CheerFriend01"				;//Yeah, that's the ticket!
	CheerFriend02				=	"SVM_5_CheerFriend02"				;//Whatcha waiting for?
	CheerFriend03				=	"SVM_5_CheerFriend03"				;//Atta boy!
	Ooh01						=	"SVM_5_Ooh01"						;//Don't take any crap!
	Ooh02						=	"SVM_5_Ooh02"						;//Show him who's boss!
	Ooh03						=	"SVM_5_Ooh03"						;//Holy shit!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_5_WhatWasThat"					;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_5_GetOutOfMyBed"					;//Get out of my bed!
	Awake						= "SVM_5_Awake"							;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_5_TOUGHGUY_ATTACKLOST"			;//All right, all right, you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_5_TOUGHGUY_ATTACKWON"			;//(smugly) Do I have to show you again who's boss?
	TOUGHGUY_PLAYERATTACK		= "SVM_5_TOUGHGUY_PLAYERATTACK"			;//Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_5_GOLD_1000"						;//1000 gold pieces.
	GOLD_950					= "SVM_5_GOLD_950"						;//950 gold pieces.
	GOLD_900					= "SVM_5_GOLD_900"						;//900 gold pieces.
	GOLD_850					= "SVM_5_GOLD_850"						;//850 gold pieces.
	GOLD_800					= "SVM_5_GOLD_800"						;//800 gold pieces.
	GOLD_750					= "SVM_5_GOLD_750"						;//750 gold pieces.
	GOLD_700					= "SVM_5_GOLD_700"						;//700 gold pieces.
	GOLD_650					= "SVM_5_GOLD_650"						;//650 gold pieces.
	GOLD_600					= "SVM_5_GOLD_600"						;//600 gold pieces.
	GOLD_550					= "SVM_5_GOLD_550"						;//550 gold pieces.
	GOLD_500					= "SVM_5_GOLD_500"						;//500 gold pieces.
	GOLD_450					= "SVM_5_GOLD_450"						;//450 gold pieces.
	GOLD_400					= "SVM_5_GOLD_400"						;//400 gold pieces.
	GOLD_350					= "SVM_5_GOLD_350"						;//350 gold pieces.
	GOLD_300					= "SVM_5_GOLD_300"						;//300 gold pieces.
	GOLD_250					= "SVM_5_GOLD_250"						;//250 gold pieces.
	GOLD_200					= "SVM_5_GOLD_200"						;//200 gold pieces.
	GOLD_150					= "SVM_5_GOLD_150"						;//150 gold pieces.
	GOLD_100					= "SVM_5_GOLD_100"						;//100 gold pieces.
	GOLD_90						= "SVM_5_GOLD_90"						;//90 gold pieces.
	GOLD_80						= "SVM_5_GOLD_80"						;//80 gold pieces.
	GOLD_70						= "SVM_5_GOLD_70"						;//70 gold pieces.
	GOLD_60						= "SVM_5_GOLD_60"						;//60 gold pieces.
	GOLD_50						= "SVM_5_GOLD_50"						;//50 gold pieces.
	GOLD_40						= "SVM_5_GOLD_40"						;//40 gold pieces.
	GOLD_30						= "SVM_5_GOLD_30"						;//30 gold pieces.
	GOLD_20						= "SVM_5_GOLD_20"						;//20 gold pieces.
	GOLD_10						= "SVM_5_GOLD_10"						;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_5_Smalltalk01"					;//... do you really think ...
	Smalltalk02					= "SVM_5_Smalltalk02"					;//... anything's possible ...
	Smalltalk03					= "SVM_5_Smalltalk03"					;//... he should have known better ...
	Smalltalk04					= "SVM_5_Smalltalk04"					;//... as if I don't have enough problems ...
	Smalltalk05					= "SVM_5_Smalltalk05"					;//... who said that ...
	Smalltalk06					= "SVM_5_Smalltalk06"					;//... that'll only cause more trouble ...
	Smalltalk07					= "SVM_5_Smalltalk07"					;//... there've been all kinds of rumors ...
	Smalltalk08					= "SVM_5_Smalltalk08"					;//... I wouldn't have done that ...
	Smalltalk09					= "SVM_5_Smalltalk09"					;//... those are all just rumors ...
	Smalltalk10					= "SVM_5_Smalltalk10"					;//... it's better to watch out who you tell what ...
	Smalltalk11					= "SVM_5_Smalltalk11"					;//... I could have told you that before ...
	Smalltalk12					= "SVM_5_Smalltalk12"					;//... nobody ever asks me ...
	Smalltalk13					= "SVM_5_Smalltalk13"					;//... you have to feel sorry for the poor guy ...
	Smalltalk14					= "SVM_5_Smalltalk14"					;//... that's nothing new ...
	Smalltalk15					= "SVM_5_Smalltalk15"					;//... that's totally obvious ...
	Smalltalk16					= "SVM_5_Smalltalk16"					;//... you don't have to ask me that ...
	Smalltalk17					= "SVM_5_Smalltalk17"					;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_5_Smalltalk18"					;//... you already know what I think ...
	Smalltalk19					= "SVM_5_Smalltalk19"					;//... that's exactly what I said ...
	Smalltalk20					= "SVM_5_Smalltalk20"					;//... nothing's ever going to change that ...
	Smalltalk21					= "SVM_5_Smalltalk21"					;//... why haven't I heard about this before ...
	Smalltalk22					= "SVM_5_Smalltalk22"					;//... let's wait and see what happens ...
	Smalltalk23					= "SVM_5_Smalltalk23"					;//... some problems solve themselves ...
	Smalltalk24					= "SVM_5_Smalltalk24"					;//... I don't want to hear that anymore ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_5_Smalltalk25"					;//... he was falling down drunk ...
	Smalltalk26					= "SVM_5_Smalltalk26"					;//... I won't be treated like that ...
	Smalltalk27					= "SVM_5_Smalltalk27"					;//... they all ran like rabbits, I was completely alone ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_5_Smalltalk28"					;//... so it says in the scriptures ...
	Smalltalk29					= "SVM_5_Smalltalk29"					;//... I always act in the name of Innos ...
	Smalltalk30					= "SVM_5_Smalltalk30"					;//... no one must violate the divine order ...
	SmalltalkKhorataAnnaQuest01			= "SVM_5_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_5_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_5_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_5_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_5_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_5_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_5_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_5_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_5_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_5_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_5_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_5_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_5_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_5_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_5_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_5_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_5_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_5_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_5_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_5_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_5_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_5_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_5_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_5_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_5_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_5_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_5_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_5_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_5_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_5_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_5_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_5_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_5_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_5_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_5_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_5_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_5_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_5_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_5_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_5_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_5_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_5_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_5_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_5_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_5_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_5_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_5_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_5_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_5_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_5_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_5_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_5_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_5_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_5_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_5_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_5_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_5_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_5_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_5_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_5_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_5_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_5_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_5_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_5_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_5_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_5_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_5_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_5_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_5_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_5_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_5_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_5_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_5_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_5_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_5_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_5_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_5_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_5_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_5_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_5_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_5_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_5_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_5_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_5_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_5_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_5_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_5_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_5_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_5_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_5_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_5_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_5_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_5_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_5_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_5_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_5_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_5_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_5_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_5_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_5_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_5_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_5_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_5_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_5_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_5_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_5_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_5_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_5_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_5_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_5_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_5_Addon_WrongArmor";				//First put on something appropriate.
	ADDON_WRONGARMOR_SLD		= "SVM_5_ADDON_WRONGARMOR_SLD";			//What are you wearing? Aren't you one of us anymore? Then I won't have anything to do with you.
	ADDON_WRONGARMOR_MIL		= "SVM_5_ADDON_WRONGARMOR_MIL";			//We soldiers fight for the King, so you had better wear his armor.
	ADDON_WRONGARMOR_KDF		= "SVM_5_ADDON_WRONGARMOR_KDF";			//Why does the order give you clothes if you don't wear them? Think about it.
	ADDON_NOARMOR_BDT			= "SVM_5_ADDON_ADDON_NOARMOR_BDT";		//What kind of poor sucker are you? You haven't even got any armor. Go away.

	ADDON_DIEBANDIT				= "SVM_5_ADDON_DIEBANDIT";				//Ah, a bandit.
	ADDON_DIRTYPIRATE			= "SVM_5_ADDON_DIRTYPIRATE";			//I'll tear you to pieces, pirate!

	RELMINE01			= "SVM_5_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_5_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_5_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_5_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_5_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_5_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_5_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_5_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_5_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_5_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_5_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_5_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_5_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_5_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_5_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_5_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_5_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_5_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_5_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_5_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_5_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_5_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_5_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_5_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_5_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_5_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_5_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_5_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_5_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_5_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_5_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_5_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_5_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_5_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_5_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_5_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_5_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_5_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_5_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_5_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_5_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_5_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_5_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_5_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_5_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_5_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_5_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_5_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_5_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_5_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_5_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_5_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_5_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_5_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_5_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_5_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_5_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_6 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_6_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_6_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_6_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_6_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_6_Weather"					;//Lousy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_6_IGetYouStill"				;//I'll get you now!
	DieEnemy					=	"SVM_6_DieEnemy"					;//You shouldn't have come here!
	DieMonster					=	"SVM_6_DieMonster"					;//Come here, damn beast!
	DirtyThief					=	"SVM_6_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_6_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_6_SheepKiller"				;//Leave our sheep alone!
	SheepKillerMonster			=	"SVM_6_SheepKillerMonster"			;//Get away from our sheep, you brute!
	YouMurderer					=	"SVM_6_YouMurderer"				;//Murderer!
	DieStupidBeast				=	"SVM_6_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_6_YouDareHitMe"				;//You'll regret this!
	YouAskedForIt				=	"SVM_6_YouAskedForIt"				;//It's not like I didn't warn you.
	ThenIBeatYouOutOfHere		=	"SVM_6_ThenIBeatYouOutOfHere"		;//Hey, GET OUT!
	WhatDidYouDoInThere			=	"SVM_6_WhatDidYouDoInThere"		;//Hey! What did you want in there?
	WillYouStopFighting			=	"SVM_6_WillYouStopFighting"		;//Stop it! At once!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_6_KillEnemy"					;//I'm going to run you through, you bastard!
	EnemyKilled					=	"SVM_6_EnemyKilled"				;//So much for you ...
	Berzerk						=	"SVM_6_Berzerk"						;//UUAAARRGGGHHHH!!!!
	MonsterKilled				=	"SVM_6_MonsterKilled"				;//Hey, I've still got it!
	ThiefDown					=	"SVM_6_ThiefDown"					;//I'm warning you! Don't try that again, you filthy thief!
	rumfummlerDown				=	"SVM_6_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_6_SheepAttackerDown"			;//And stay away from our sheep from now on!
	KillMurderer				=	"SVM_6_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_6_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_6_NeverHitMeAgain"				;//Don't you ever dare to attack me again!
	YouBetterShouldHaveListened	=	"SVM_6_YouBetterShouldHaveListened"	;//It's not like I didn't warn you.
	GetUpAndBeGone				=	"SVM_6_GetUpAndBeGone"					;//And now get out!
	NeverEnterRoomAgain			=	"SVM_6_NeverEnterRoomAgain"			;//I never want to see you in there again, capisce?
	ThereIsNoFightingHere		=	"SVM_6_ThereIsNoFightingHere"			;//No fighting here. Let that be a lesson to you.
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_6_RunAway"						;//I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_6_Alarm"					;//ALARM!
	Guards						=	"SVM_6_Guards"					;//GUARDS!
	Help						=	"SVM_6_Help"					;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_6_GoodMonsterKill"		;//(calls to) Send those beasts to kingdom come!
	GoodKill					= 	"SVM_6_GoodKill"				;//(calls) Yeah, give that bastard what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_6_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_6_RunCoward"				;//(calls loudly) I'll get you yet!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_6_GetOutOfHere"			;//Get out of here!
	WhyAreYouInHere				=	"SVM_6_WhyAreYouInHere"		;//You've no business being here!
	YesGoOutOfHere				= 	"SVM_6_YesGoOutOfHere"			;//Yeah, get out!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_6_WhatsThisSupposedToBe"	;//What are you up to? What's all this creeping about?
	YouDisturbedMySlumber		=	"SVM_6_YouDisturbedMySlumber"	;//(wakes up) Damnit, what do you want?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_6_ITookYourGold"			;//Well, at least you've got some gold on you.
	ShitNoGold					=	"SVM_6_ShitNoGold"				;//Not even any gold - hmpf.
	ITakeYourWeapon				=	"SVM_6_ITakeYourWeapon"		;//I think I'll take your weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_6_WhatAreYouDoing"		;//(warning) Boy! Don't you ever do that again!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_6_LookingForTroubleAgain"	;//(aggressively) Need yet another licking?
	StopMagic					=	"SVM_6_StopMagic"				;//Cut out that magic!
	ISaidStopMagic				=	"SVM_6_ISaidStopMagic"			;//Last warning! Cut out that magic!
	WeaponDown					=	"SVM_6_WeaponDown"				;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_6_ISaidWeaponDown"		;//Put that away, or you're in for it!
	WiseMove					=	"SVM_6_WiseMove"				;//Hey, you're not quite as stupid as you look!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_6_NextTimeYoureInForIt"	;//(to himself) Don't you try that again ...
	OhMyHead					=	"SVM_6_OhMyHead"				;//(to himself) Ohh! My head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_6_TheresAFight"			;//(greedily) And now for the fun part ...
	OhMyGodItsAFight			=	"SVM_6_OhMyGodItsAFight"		;//(dismayed) Oh my goodness ...
	GoodVictory					=	"SVM_6_GoodVictory"			;//(evil laugh) Let that be a lesson to him...
	NotBad						= 	"SVM_6_NotBad"					;//(approvingly) That hit the spot!
	OhMyGodHesDown				=	"SVM_6_OhMyGodHesDown"			;//(to himself) What a filthy brute!
	CheerFriend01				=	"SVM_6_CheerFriend01"			;//Slug him!
	CheerFriend02				=	"SVM_6_CheerFriend02"			;//Don't stop now!
	CheerFriend03				=	"SVM_6_CheerFriend03"			;//Finish him!
	Ooh01						=	"SVM_6_Ooh01"					;//Watch out!
	Ooh02						=	"SVM_6_Ooh02"					;//Parry, then!
	Ooh03						=	"SVM_6_Ooh03"					;//Shit, that hurt!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_6_WhatWasThat"				;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_6_GetOutOfMyBed"			;//This is my bed!
	Awake						= "SVM_6_Awake"					;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_6_TOUGHGUY_ATTACKLOST"		;//All right - you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_6_TOUGHGUY_ATTACKWON"		;//(smugly) I think that now you realize who you're dealing with. What do you want?
	TOUGHGUY_PLAYERATTACK		= "SVM_6_TOUGHGUY_PLAYERATTACK"	;//You again? Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_6_GOLD_1000"				;//1000 gold pieces.
	GOLD_950					= "SVM_6_GOLD_950"					;//950 gold pieces.
	GOLD_900					= "SVM_6_GOLD_900"					;//900 gold pieces.
	GOLD_850					= "SVM_6_GOLD_850"					;//850 gold pieces.
	GOLD_800					= "SVM_6_GOLD_800"					;//800 gold pieces.
	GOLD_750					= "SVM_6_GOLD_750"					;//750 gold pieces.
	GOLD_700					= "SVM_6_GOLD_700"					;//700 gold pieces.
	GOLD_650					= "SVM_6_GOLD_650"					;//650 gold pieces.
	GOLD_600					= "SVM_6_GOLD_600"					;//600 gold pieces.
	GOLD_550					= "SVM_6_GOLD_550"					;//550 gold pieces.
	GOLD_500					= "SVM_6_GOLD_500"					;//500 gold pieces.
	GOLD_450					= "SVM_6_GOLD_450"					;//450 gold pieces.
	GOLD_400					= "SVM_6_GOLD_400"					;//400 gold pieces.
	GOLD_350					= "SVM_6_GOLD_350"					;//350 gold pieces.
	GOLD_300					= "SVM_6_GOLD_300"					;//300 gold pieces.
	GOLD_250					= "SVM_6_GOLD_250"					;//250 gold pieces.
	GOLD_200					= "SVM_6_GOLD_200"					;//200 gold pieces.
	GOLD_150					= "SVM_6_GOLD_150"					;//150 gold pieces.
	GOLD_100					= "SVM_6_GOLD_100"					;//100 gold pieces.
	GOLD_90						= "SVM_6_GOLD_90"					;//90 gold pieces.
	GOLD_80						= "SVM_6_GOLD_80"					;//80 gold pieces.
	GOLD_70						= "SVM_6_GOLD_70"					;//70 gold pieces.
	GOLD_60						= "SVM_6_GOLD_60"					;//60 gold pieces.
	GOLD_50						= "SVM_6_GOLD_50"					;//50 gold pieces.
	GOLD_40						= "SVM_6_GOLD_40"					;//40 gold pieces.
	GOLD_30						= "SVM_6_GOLD_30"					;//30 gold pieces.
	GOLD_20						= "SVM_6_GOLD_20"					;//20 gold pieces.
	GOLD_10						= "SVM_6_GOLD_10"					;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_6_Smalltalk01"				;//... I can't believe that ...
	Smalltalk02					= "SVM_6_Smalltalk02"				;//... I wouldn't be so sure ...
	Smalltalk03					= "SVM_6_Smalltalk03"				;//... but he knew that all along ...
	Smalltalk04					= "SVM_6_Smalltalk04"				;//... I hardly know what to believe anymore...
	Smalltalk05					= "SVM_6_Smalltalk05"				;//... I don't know why he gets so worked up ...
	Smalltalk06					= "SVM_6_Smalltalk06"				;//... I'm in enough trouble as it is ...
	Smalltalk07					= "SVM_6_Smalltalk07"				;//... I have heard a thing or two ...
	Smalltalk08					= "SVM_6_Smalltalk08"				;//... I'm not touching that ...
	Smalltalk09					= "SVM_6_Smalltalk09"				;//... you mustn't believe everything you hear ...
	Smalltalk10					= "SVM_6_Smalltalk10"				;//... he didn't get that from me ...
	Smalltalk11					= "SVM_6_Smalltalk11"				;//... I already thought as much ...
	Smalltalk12					= "SVM_6_Smalltalk12"				;//... nobody ever asks for my opinion ...
	Smalltalk13					= "SVM_6_Smalltalk13"				;//... he really didn't deserve that ...
	Smalltalk14					= "SVM_6_Smalltalk14"				;//... don't say you didn't know that ...
	Smalltalk15					= "SVM_6_Smalltalk15"				;//... that was quite obvious ...
	Smalltalk16					= "SVM_6_Smalltalk16"				;//... where did you pick that up then ...
	Smalltalk17					= "SVM_6_Smalltalk17"				;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_6_Smalltalk18"				;//... I've got my own opinion about that ...
	Smalltalk19					= "SVM_6_Smalltalk19"				;//... it was just like you said ...
	Smalltalk20					= "SVM_6_Smalltalk20"				;//... I don't believe this is going to change ...
	Smalltalk21					= "SVM_6_Smalltalk21"				;//... that's the first I've heard of it ...
	Smalltalk22					= "SVM_6_Smalltalk22"				;//... we can only wait and see ...
	Smalltalk23					= "SVM_6_Smalltalk23"				;//... I knew that would be a problem ...
	Smalltalk24					= "SVM_6_Smalltalk24"				;//... so why won't they listen to me ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_6_Smalltalk25"				;//... he ran like Beliar himself was after him ...
	Smalltalk26					= "SVM_6_Smalltalk26"				;//... of course we got him in the end ...
	Smalltalk27					= "SVM_6_Smalltalk27"				;//... you have to step in and sort things out ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_6_Smalltalk28"				;//... some don't even know how wicked they are ...
	Smalltalk29					= "SVM_6_Smalltalk29"				;//... for that is the will of Innos ...
	Smalltalk30					= "SVM_6_Smalltalk30"				;//... his deeds were just ...
	SmalltalkKhorataAnnaQuest01			= "SVM_6_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_6_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_6_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_6_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_6_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_6_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_6_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_6_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_6_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_6_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_6_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_6_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_6_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_6_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_6_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_6_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_6_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_6_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_6_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_6_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_6_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_6_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_6_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_6_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_6_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_6_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_6_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_6_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_6_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_6_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_6_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_6_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_6_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_6_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_6_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_6_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_6_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_6_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_6_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_6_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_6_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_6_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_6_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_6_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_6_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_6_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_6_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_6_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_6_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_6_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_6_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_6_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_6_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_6_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_6_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_6_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_6_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_6_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_6_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_6_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_6_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_6_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_6_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_6_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_6_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_6_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_6_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_6_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_6_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_6_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_6_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_6_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_6_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_6_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_6_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_6_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_6_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_6_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_6_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_6_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_6_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_6_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_6_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_6_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_6_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_6_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_6_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_6_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_6_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_6_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_6_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_6_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_6_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_6_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_6_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_6_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_6_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_6_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_6_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_6_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_6_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_6_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_6_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_6_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_6_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_6_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_6_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_6_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_6_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_6_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_6_Addon_WrongArmor";				//You look ridiculous in that get-up. Put on something decent.
	ADDON_WRONGARMOR_SLD		= "SVM_6_ADDON_WRONGARMOR_SLD";			//Don't think I don't recognize you. Beat it and get changed.
	ADDON_WRONGARMOR_MIL		= "SVM_6_ADDON_WRONGARMOR_MIL";			//Soldier. What sort of clothes are those? Get changed, on the spot!
	ADDON_WRONGARMOR_KDF		= "SVM_6_ADDON_WRONGARMOR_KDF";			//A servant of Innos does not conceal himself. Go and fetch your robe.
	ADDON_NOARMOR_BDT			= "SVM_6_ADDON_ADDON_NOARMOR_BDT";		//You're running around like a digger. First put something on.

	ADDON_DIEBANDIT				= "SVM_6_ADDON_DIEBANDIT";				//You picked a fight with the wrong guy, BANDIT!
	ADDON_DIRTYPIRATE			= "SVM_6_ADDON_DIRTYPIRATE";			//Back to sea, PIRATE!

	RELMINE01			= "SVM_6_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_6_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_6_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_6_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_6_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_6_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_6_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_6_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_6_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_6_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_6_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_6_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_6_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_6_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_6_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_6_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_6_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_6_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_6_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_6_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_6_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_6_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_6_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_6_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_6_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_6_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_6_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_6_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_6_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_6_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_6_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_6_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_6_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_6_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_6_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_6_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_6_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_6_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_6_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_6_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_6_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_6_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_6_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_6_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_6_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_6_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_6_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_6_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_6_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_6_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_6_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_6_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_6_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_6_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_6_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_6_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_6_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_7 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_7_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_7_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_7_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_7_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_7_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_7_IGetYouStill"				;//YOU again!
	DieEnemy					=	"SVM_7_DieEnemy"					;//I'm gonna rip you to pieces!
	DieMonster					=	"SVM_7_DieMonster"					;//Another one of those things!
	DirtyThief					=	"SVM_7_DirtyThief"					;//You miserable little thief!
	HandsOff					=	"SVM_7_HandsOff"					;//Get your hands off that!
	SheepKiller					=	"SVM_7_SheepKiller"					;//Hey! Leave our sheep alone!
	SheepKillerMonster			=	"SVM_7_SheepKillerMonster"			;//That monster is gobbling up our sheep!
	YouMurderer					=	"SVM_7_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_7_DieStupidBeast"				;//What is THAT creature doing here?
	YouDareHitMe				=	"SVM_7_YouDareHitMe"				;//You're in for it now!
	YouAskedForIt				=	"SVM_7_YouAskedForIt"				;//You asked for it.
	ThenIBeatYouOutOfHere		=	"SVM_7_ThenIBeatYouOutOfHere"		;//I guess some people just have to learn the hard way.
	WhatDidYouDoInThere			=	"SVM_7_WhatDidYouDoInThere"			;//What did you want in there, huh!?
	WillYouStopFighting			=	"SVM_7_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_7_KillEnemy"					;//Die!
	EnemyKilled					=	"SVM_7_EnemyKilled"					;//What a silly bastard...
	MonsterKilled				=	"SVM_7_MonsterKilled"				;//All right, so much for you, filthy beast!
	ThiefDown					=	"SVM_7_ThiefDown"					;//Keep your paws off my stuff from now on - got it?
	rumfummlerDown				=	"SVM_7_rumfummlerDown"				;//Keep your fingers to yourself from now on!
	SheepAttackerDown			=	"SVM_7_SheepAttackerDown"			;//Keep your grubby paws off our sheep from now on!
	KillMurderer				=	"SVM_7_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_7_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_7_NeverHitMeAgain"				;//Don't try that again, buster!
	YouBetterShouldHaveListened	=	"SVM_7_YouBetterShouldHaveListened"	;//Let that be a lesson to you.
	GetUpAndBeGone				=	"SVM_7_GetUpAndBeGone"				;//Stand up and get out of here!
	NeverEnterRoomAgain			=	"SVM_7_NeverEnterRoomAgain"			;//I never want to see you in there again - understood?
	ThereIsNoFightingHere		=	"SVM_7_ThereIsNoFightingHere"		;//I'm the one who does the bashing around here, understood?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_7_Berzerk"						;//UUAAARRGGGHHHH!!!!
		RunAway						= 	"SVM_7_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_7_Alarm"					;//ALARM!
	Guards						=	"SVM_7_Guards"					;//GUARDS!
	Help						=	"SVM_7_Help"					;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_7_GoodMonsterKill"			;//(calls to) Yeah! That's how you deal with those things!
	GoodKill					= 	"SVM_7_GoodKill"				;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_7_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_7_RunCoward"				;//(yells) You haven't seen the last of me!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_7_GetOutOfHere"			;//Out!
	WhyAreYouInHere				=	"SVM_7_WhyAreYouInHere"			;//What's your business here?!
	YesGoOutOfHere				= 	"SVM_7_YesGoOutOfHere"			;//Just beat it!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_7_WhatsThisSupposedToBe"	;//What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_7_YouDisturbedMySlumber"	;//(wakes up) Wassup?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_7_ITookYourGold"			;//Thanks for the gold, you hero!
	ShitNoGold					=	"SVM_7_ShitNoGold"				;//You poor sucker, you don't even have any gold on you!
	ITakeYourWeapon				=	"SVM_7_ITakeYourWeapon"			;//I think I had better take this weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_7_WhatAreYouDoing"			;//(warning) Watch it! One more time, and I'll slug you one.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_7_LookingForTroubleAgain"	;//(aggressive) Do you want another punch in the face?
																	 
	StopMagic					=	"SVM_7_StopMagic"				;//Cut out this magic crap!
	ISaidStopMagic				=	"SVM_7_ISaidStopMagic"			;//Want a licking? Stop it this instant!!!
	WeaponDown					=	"SVM_7_WeaponDown"				;//Put away that weapon!
	ISaidWeaponDown				=	"SVM_7_ISaidWeaponDown"			;//Will you put away that damn weapon?!
	WiseMove					=	"SVM_7_WiseMove"				;//Smart kid!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_7_NextTimeYoureInForIt"	;//(to himself) Well, we'll see the next time ...
	OhMyHead					=	"SVM_7_OhMyHead"				;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_7_TheresAFight"			;//(eagerly) Aah, a fight!
	OhMyGodItsAFight			=	"SVM_7_OhMyGodItsAFight"		;//(dismayed) Oh my God, a fight!
	GoodVictory					=	"SVM_7_GoodVictory"				;//(evil laugh) You showed him who's boss!
	NotBad						= 	"SVM_7_NotBad"					;//(approvingly) Not bad ...
	OhMyGodHesDown				=	"SVM_7_OhMyGodHesDown"			;//(to himself) My God! How brutal...
	CheerFriend01				=	"SVM_7_CheerFriend01"			;//Yeah, let him have it!
	CheerFriend02				=	"SVM_7_CheerFriend02"			;//Show him!
	CheerFriend03				=	"SVM_7_CheerFriend03"			;//Finish him!
	Ooh01						=	"SVM_7_Ooh01"					;//Defend yourself!
	Ooh02						=	"SVM_7_Ooh02"					;//Go ahead, hit back!
	Ooh03						=	"SVM_7_Ooh03"					;//Ouch! That hurt!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_7_WhatWasThat"				;//(to himself, waking up) Damnit, what was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_7_GetOutOfMyBed"				;//Find your own bed!
	Awake						= "SVM_7_Awake"						;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_7_TOUGHGUY_ATTACKLOST"		;//Say, you pack a pretty punch ... What is it you want?
	TOUGHGUY_ATTACKWON			= "SVM_7_TOUGHGUY_ATTACKWON"		;//(smugly) Any more questions?
	TOUGHGUY_PLAYERATTACK		= "SVM_7_TOUGHGUY_PLAYERATTACK"		;//There you are again!
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_7_GOLD_1000"					;//1000 gold pieces.
	GOLD_950					= "SVM_7_GOLD_950"					;//950 gold pieces.
	GOLD_900					= "SVM_7_GOLD_900"					;//900 gold pieces.
	GOLD_850					= "SVM_7_GOLD_850"					;//850 gold pieces.
	GOLD_800					= "SVM_7_GOLD_800"					;//800 gold pieces.
	GOLD_750					= "SVM_7_GOLD_750"					;//750 gold pieces.
	GOLD_700					= "SVM_7_GOLD_700"					;//700 gold pieces.
	GOLD_650					= "SVM_7_GOLD_650"					;//650 gold pieces.
	GOLD_600					= "SVM_7_GOLD_600"					;//600 gold pieces.
	GOLD_550					= "SVM_7_GOLD_550"					;//550 gold pieces.
	GOLD_500					= "SVM_7_GOLD_500"					;//500 gold pieces.
	GOLD_450					= "SVM_7_GOLD_450"					;//450 gold pieces.
	GOLD_400					= "SVM_7_GOLD_400"					;//400 gold pieces.
	GOLD_350					= "SVM_7_GOLD_350"					;//350 gold pieces.
	GOLD_300					= "SVM_7_GOLD_300"					;//300 gold pieces.
	GOLD_250					= "SVM_7_GOLD_250"					;//250 gold pieces.
	GOLD_200					= "SVM_7_GOLD_200"					;//200 gold pieces.
	GOLD_150					= "SVM_7_GOLD_150"					;//150 gold pieces.
	GOLD_100					= "SVM_7_GOLD_100"					;//100 gold pieces.
	GOLD_90						= "SVM_7_GOLD_90"					;//90 gold pieces.
	GOLD_80						= "SVM_7_GOLD_80"					;//80 gold pieces.
	GOLD_70						= "SVM_7_GOLD_70"					;//70 gold pieces.
	GOLD_60						= "SVM_7_GOLD_60"					;//60 gold pieces.
	GOLD_50						= "SVM_7_GOLD_50"					;//50 gold pieces.
	GOLD_40						= "SVM_7_GOLD_40"					;//40 gold pieces.
	GOLD_30						= "SVM_7_GOLD_30"					;//30 gold pieces.
	GOLD_20						= "SVM_7_GOLD_20"					;//20 gold pieces.
	GOLD_10						= "SVM_7_GOLD_10"					;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_7_Smalltalk01"				;//... is it really true ...
	Smalltalk02					= "SVM_7_Smalltalk02"				;//... that's not what I heard...
	Smalltalk03					= "SVM_7_Smalltalk03"				;//... don't tell me you didn't know that ...
	Smalltalk04					= "SVM_7_Smalltalk04"				;//... you hardly know who to believe these days ...
	Smalltalk05					= "SVM_7_Smalltalk05"				;//... that's all just gossip ...
	Smalltalk06					= "SVM_7_Smalltalk06"				;//... I'm no better off myself ...
	Smalltalk07					= "SVM_7_Smalltalk07"				;//... nothing amazes me any more ...
	Smalltalk08					= "SVM_7_Smalltalk08"				;//... that's really not my problem ...
	Smalltalk09					= "SVM_7_Smalltalk09"				;//... do you really believe that ...
	Smalltalk10					= "SVM_7_Smalltalk10"				;//... nobody will learn anything from me ...
	Smalltalk11					= "SVM_7_Smalltalk11"				;//... that was obvious all along ...
	Smalltalk12					= "SVM_7_Smalltalk12"				;//... he listened to the wrong people ...
	Smalltalk13					= "SVM_7_Smalltalk13"				;//... if he doesn't see that, I can't help him ...
	Smalltalk14					= "SVM_7_Smalltalk14"				;//... I'm not telling you anything new ...
	Smalltalk15					= "SVM_7_Smalltalk15"				;//... he never would have thought of that himself ...
	Smalltalk16					= "SVM_7_Smalltalk16"				;//... that's been known a long time ...
	Smalltalk17					= "SVM_7_Smalltalk17"				;//... it's a bad business ...
	Smalltalk18					= "SVM_7_Smalltalk18"				;//... I'd have done it differently ...
	Smalltalk19					= "SVM_7_Smalltalk19"				;//... I agree with you completely ...
	Smalltalk20					= "SVM_7_Smalltalk20"				;//... will it ever change ...
	Smalltalk21					= "SVM_7_Smalltalk21"				;//... I never knew that ...
	Smalltalk22					= "SVM_7_Smalltalk22"				;//... you can't do anything about it ...
	Smalltalk23					= "SVM_7_Smalltalk23"				;//... that doesn't amaze me ...
	Smalltalk24					= "SVM_7_Smalltalk24"				;//... but no, he insisted he knew better ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                   
	Smalltalk25					= "SVM_7_Smalltalk25"				;//... all that matters is strength, so don't tell me that ...
	Smalltalk26					= "SVM_7_Smalltalk26"				;//... he doesn't even know how to hold a sword ...
	Smalltalk27					= "SVM_7_Smalltalk27"				;//... yeah, he really said that ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                   
	Smalltalk28					= "SVM_7_Smalltalk28"				;//... someone's got to pay for that ...
	Smalltalk29					= "SVM_7_Smalltalk29"				;//... Innos enlightens all those who recognize his wisdom ...
	Smalltalk30					= "SVM_7_Smalltalk30"				;//... justice will prevail in the end ...
	SmalltalkKhorataAnnaQuest01			= "SVM_7_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_7_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_7_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_7_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_7_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_7_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_7_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_7_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_7_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_7_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_7_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_7_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_7_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_7_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_7_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_7_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_7_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_7_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_7_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_7_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_7_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_7_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_7_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_7_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_7_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_7_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_7_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_7_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_7_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_7_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_7_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_7_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_7_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_7_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_7_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_7_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_7_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_7_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_7_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_7_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_7_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_7_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_7_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_7_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_7_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_7_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_7_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_7_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_7_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_7_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_7_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_7_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_7_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_7_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_7_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_7_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_7_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_7_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_7_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_7_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_7_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_7_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_7_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_7_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_7_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_7_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_7_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_7_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_7_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_7_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_7_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_7_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_7_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_7_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_7_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_7_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_7_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_7_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_7_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_7_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_7_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_7_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_7_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_7_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_7_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_7_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_7_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_7_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_7_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_7_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_7_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_7_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_7_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_7_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_7_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_7_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_7_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_7_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_7_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_7_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_7_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_7_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_7_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_7_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_7_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_7_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_7_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_7_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_7_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_7_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_7_Addon_WrongArmor";				//Why the disguise? I won't talk to you like that.
	ADDON_WRONGARMOR_SLD		= "SVM_7_ADDON_WRONGARMOR_SLD";			//What are you wearing? Put on our armor, will you!
	ADDON_WRONGARMOR_MIL		= "SVM_7_ADDON_WRONGARMOR_MIL";			//That is a violation of the army's dress code. Get changed, on the spot.
	ADDON_WRONGARMOR_KDF		= "SVM_7_ADDON_WRONGARMOR_KDF";			//You had better wear your robe. Until then, I will say nothing and pray for you.
	ADDON_NOARMOR_BDT			= "SVM_7_ADDON_ADDON_NOARMOR_BDT";		//What do you want? You aren't one of us. You don't even wear our armor.

	ADDON_DIEBANDIT				= "SVM_7_ADDON_DIEBANDIT";				//Die, you miserable bandit!
	ADDON_DIRTYPIRATE			= "SVM_7_ADDON_DIRTYPIRATE";			//Die, you despicable pirate!

	RELMINE01			= "SVM_7_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_7_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_7_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_7_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_7_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_7_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_7_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_7_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_7_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_7_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_7_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_7_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_7_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_7_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_7_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_7_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_7_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_7_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_7_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_7_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_7_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_7_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_7_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_7_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_7_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_7_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_7_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_7_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_7_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_7_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_7_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_7_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_7_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_7_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_7_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_7_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_7_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_7_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_7_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_7_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_7_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_7_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_7_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_7_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_7_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_7_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_7_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_7_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_7_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_7_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_7_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_7_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_7_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_7_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_7_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_7_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_7_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_8 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_8_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_8_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_8_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_8_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_8_Weather"					;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_8_IGetYouStill"				;//Now I've got you!
	DieEnemy					=	"SVM_8_DieEnemy"					;//I'm gonna rip you to pieces!
	DieMonster					=	"SVM_8_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_8_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_8_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_8_SheepKiller"				;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_8_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_8_YouMurderer"				;//Murderer!
	DieStupidBeast				=	"SVM_8_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_8_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_8_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_8_ThenIBeatYouOutOfHere"		;//You don't want to go? All right!
	WhatDidYouDoInThere			=	"SVM_8_WhatDidYouDoInThere"		;//What did you want in there?
	WillYouStopFighting			=	"SVM_8_WillYouStopFighting"		;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_8_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_8_EnemyKilled"				;//You deserved that, lowlife!
	MonsterKilled				=	"SVM_8_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_8_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_8_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_8_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	Berzerk						=	"SVM_8_Berzerk"						;//UUAAARRGGGHHHH!!!!
	KillMurderer				=	"SVM_8_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_8_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_8_NeverHitMeAgain"			;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_8_YouBetterShouldHaveListened";//You should have listened to me!
	GetUpAndBeGone				=	"SVM_8_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_8_NeverEnterRoomAgain"		;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_8_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_8_RunAway"					;//Oh, shit!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_8_Alarm"					;//ALARM!
	Guards						=	"SVM_8_Guards"					;//GUARDS!
	Help						=	"SVM_8_Help"					;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_8_GoodMonsterKill"		;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_8_GoodKill"				;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_8_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_8_RunCoward"				;//(calls loudly) Yes! Run as fast as you can!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_8_GetOutOfHere"			;//Get out of here!
	WhyAreYouInHere				=	"SVM_8_WhyAreYouInHere"		;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_8_YesGoOutOfHere"			;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_8_WhatsThisSupposedToBe"	;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_8_YouDisturbedMySlumber"	;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_8_ITookYourGold"			;//Thanks for the gold, you hero!
	ShitNoGold					=	"SVM_8_ShitNoGold"				;//You poor sucker, you don't even have any gold on you!
	ITakeYourWeapon				=	"SVM_8_ITakeYourWeapon"		;//I think I had better take this weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_8_WhatAreYouDoing"		;//(warning) Watch it! One more time, and I'll slug you one.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_8_LookingForTroubleAgain"	;//Haven't you had enough yet?
	StopMagic					=	"SVM_8_StopMagic"				;//Cut out this magic crap!
	ISaidStopMagic				=	"SVM_8_ISaidStopMagic"			;//Want a licking? Stop it this instant!!!
	WeaponDown					=	"SVM_8_WeaponDown"				;//Put away that weapon!
	ISaidWeaponDown				=	"SVM_8_ISaidWeaponDown"		;//Will you put away that damn weapon!
	WiseMove					=	"SVM_8_WiseMove"				;//Smart kid!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_8_NextTimeYoureInForIt"	;//(to himself) Well, we'll see the next time ...
	OhMyHead					=	"SVM_8_OhMyHead"				;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_8_TheresAFight"			;//(eagerly) Aah, a fight!
	OhMyGodItsAFight			=	"SVM_8_OhMyGodItsAFight"		;//(dismayed) Oh my God, a fight!
	GoodVictory					=	"SVM_8_GoodVictory"			;//(evil laugh) You showed him who's boss!
	NotBad						= 	"SVM_8_NotBad"					;//(approvingly) Not bad ...
	OhMyGodHesDown				=	"SVM_8_OhMyGodHesDown"			;//(to himself) My God! How brutal...
	CheerFriend01				=	"SVM_8_CheerFriend01"			;//Hit, then!
	CheerFriend02				=	"SVM_8_CheerFriend02"			;//Give it your all!
	CheerFriend03				=	"SVM_8_CheerFriend03"			;//Show him!
	Ooh01						=	"SVM_8_Ooh01"					;//Hang on!
	Ooh02						=	"SVM_8_Ooh02"					;//Watch out!
	Ooh03						=	"SVM_8_Ooh03"					;//Wow! That hit the spot!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_8_WhatWasThat"				;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_8_GetOutOfMyBed"			;//Get out of my bed!
	Awake						= "SVM_8_Awake"					;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_8_TOUGHGUY_ATTACKLOST"		;//All right, all right, you're the better fighter. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_8_TOUGHGUY_ATTACKWON"		;//(smugly) I assume that, by now, you are well aware which of us is stronger ... What do you want?
	TOUGHGUY_PLAYERATTACK		= "SVM_8_TOUGHGUY_PLAYERATTACK"	;//I thought you were trying to pick a fight with me. Did you change your mind? You prefer TALKING, right? (laughs) Of course.
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_8_GOLD_1000"				;//1000 gold pieces.
	GOLD_950					= "SVM_8_GOLD_950"					;//950 gold pieces.
	GOLD_900					= "SVM_8_GOLD_900"					;//900 gold pieces.
	GOLD_850					= "SVM_8_GOLD_850"					;//850 gold pieces.
	GOLD_800					= "SVM_8_GOLD_800"					;//800 gold pieces.
	GOLD_750					= "SVM_8_GOLD_750"					;//750 gold pieces.
	GOLD_700					= "SVM_8_GOLD_700"					;//700 gold pieces.
	GOLD_650					= "SVM_8_GOLD_650"					;//650 gold pieces.
	GOLD_600					= "SVM_8_GOLD_600"					;//600 gold pieces.
	GOLD_550					= "SVM_8_GOLD_550"					;//550 gold pieces.
	GOLD_500					= "SVM_8_GOLD_500"					;//500 gold pieces.
	GOLD_450					= "SVM_8_GOLD_450"					;//450 gold pieces.
	GOLD_400					= "SVM_8_GOLD_400"					;//400 gold pieces.
	GOLD_350					= "SVM_8_GOLD_350"					;//350 gold pieces.
	GOLD_300					= "SVM_8_GOLD_300"					;//300 gold pieces.
	GOLD_250					= "SVM_8_GOLD_250"					;//250 gold pieces.
	GOLD_200					= "SVM_8_GOLD_200"					;//200 gold pieces.
	GOLD_150					= "SVM_8_GOLD_150"					;//150 gold pieces.
	GOLD_100					= "SVM_8_GOLD_100"					;//100 gold pieces.
	GOLD_90						= "SVM_8_GOLD_90"					;//90 gold pieces.
	GOLD_80						= "SVM_8_GOLD_80"					;//80 gold pieces.
	GOLD_70						= "SVM_8_GOLD_70"					;//70 gold pieces.
	GOLD_60						= "SVM_8_GOLD_60"					;//60 gold pieces.
	GOLD_50						= "SVM_8_GOLD_50"					;//50 gold pieces.
	GOLD_40						= "SVM_8_GOLD_40"					;//40 gold pieces.
	GOLD_30						= "SVM_8_GOLD_30"					;//30 gold pieces.
	GOLD_20						= "SVM_8_GOLD_20"					;//20 gold pieces.
	GOLD_10						= "SVM_8_GOLD_10"					;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_8_Smalltalk01"				;//... is it really true ...
	Smalltalk02					= "SVM_8_Smalltalk02"				;//... that's not what I heard...
	Smalltalk03					= "SVM_8_Smalltalk03"				;//... don't tell me you didn't know that ...
	Smalltalk04					= "SVM_8_Smalltalk04"				;//... you hardly know who to believe these days ...
	Smalltalk05					= "SVM_8_Smalltalk05"				;//... that's all just gossip ...
	Smalltalk06					= "SVM_8_Smalltalk06"				;//... I'm no better off myself ...
	Smalltalk07					= "SVM_8_Smalltalk07"				;//... nothing amazes me any more ...
	Smalltalk08					= "SVM_8_Smalltalk08"				;//... that's really not my problem ...
	Smalltalk09					= "SVM_8_Smalltalk09"				;//... do you really believe that ...
	Smalltalk10					= "SVM_8_Smalltalk10"				;//... nobody will learn anything from me ...
	Smalltalk11					= "SVM_8_Smalltalk11"				;//... that was obvious all along ...
	Smalltalk12					= "SVM_8_Smalltalk12"				;//... he listened to the wrong people ...
	Smalltalk13					= "SVM_8_Smalltalk13"				;//... if he doesn't see that, I can't help him ...
	Smalltalk14					= "SVM_8_Smalltalk14"				;//... I'm not telling you anything new ...
	Smalltalk15					= "SVM_8_Smalltalk15"				;//... he never would have thought of that himself ...
	Smalltalk16					= "SVM_8_Smalltalk16"				;//... that's been known a long time ...
	Smalltalk17					= "SVM_8_Smalltalk17"				;//... it's a bad business ...
	Smalltalk18					= "SVM_8_Smalltalk18"				;//... I'd have done it differently ...
	Smalltalk19					= "SVM_8_Smalltalk19"				;//... I agree with you completely ...
	Smalltalk20					= "SVM_8_Smalltalk20"				;//... will it ever change ...
	Smalltalk21					= "SVM_8_Smalltalk21"				;//... I never knew that ...
	Smalltalk22					= "SVM_8_Smalltalk22"				;//... you can't do anything about it ...
	Smalltalk23					= "SVM_8_Smalltalk23"				;//... that doesn't amaze me ...
	Smalltalk24					= "SVM_8_Smalltalk24"				;//... but no, he insisted he knew better ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                  
	Smalltalk25					= "SVM_8_Smalltalk25"				;//... all that matters is strength, so don't tell me that ...
	Smalltalk26					= "SVM_8_Smalltalk26"				;//... he doesn't even know how to hold a sword ...
	Smalltalk27					= "SVM_8_Smalltalk27"				;//... yeah, he really said that ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                  
	Smalltalk28					= "SVM_8_Smalltalk28"				;//... someone's got to pay for that ...
	Smalltalk29					= "SVM_8_Smalltalk29"				;//... Innos enlightens all those who recognize his wisdom ...
	Smalltalk30					= "SVM_8_Smalltalk30"				;//... justice will prevail in the end ...
	SmalltalkKhorataAnnaQuest01			= "SVM_8_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_8_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_8_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_8_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_8_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_8_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_8_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_8_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_8_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_8_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_8_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_8_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_8_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_8_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_8_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_8_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_8_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_8_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_8_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_8_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_8_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_8_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_8_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_8_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_8_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_8_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_8_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_8_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_8_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_8_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_8_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_8_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_8_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_8_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_8_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_8_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_8_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_8_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_8_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_8_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_8_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_8_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_8_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_8_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_8_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_8_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_8_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_8_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_8_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_8_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_8_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_8_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_8_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_8_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_8_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_8_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_8_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_8_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_8_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_8_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_8_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_8_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_8_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_8_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_8_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_8_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_8_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_8_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_8_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_8_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_8_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_8_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_8_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_8_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_8_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_8_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_8_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_8_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_8_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_8_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_8_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_8_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_8_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_8_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_8_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_8_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_8_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_8_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_8_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_8_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_8_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_8_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_8_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_8_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_8_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_8_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_8_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_8_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_8_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_8_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_8_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_8_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_8_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_8_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_8_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_8_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_8_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_8_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_8_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_8_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_8_Addon_WrongArmor";				//I don't trust you. Something isn't right about you or the way you're dressed.
	ADDON_WRONGARMOR_SLD		= "SVM_8_ADDON_WRONGARMOR_SLD";			//The way you look, you must have signed on somewhere else? Then I won't have anything to do with you.
	ADDON_WRONGARMOR_MIL		= "SVM_8_ADDON_WRONGARMOR_MIL";			//We have to show a presence. So go and fetch your armor.
	ADDON_WRONGARMOR_KDF		= "SVM_8_ADDON_WRONGARMOR_KDF";			//Innos wants us to wear his robes with pride. Go and change.
	ADDON_NOARMOR_BDT			= "SVM_8_ADDON_ADDON_NOARMOR_BDT";		//I don't talk to diggers. You haven't even got any armor.

	ADDON_DIEBANDIT				= "SVM_8_ADDON_DIEBANDIT";				//You filthy bandit!
	ADDON_DIRTYPIRATE			= "SVM_8_ADDON_DIRTYPIRATE";			//PIRATES!

	RELMINE01			= "SVM_8_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_8_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_8_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_8_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_8_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_8_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_8_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_8_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_8_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_8_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_8_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_8_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_8_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_8_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_8_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_8_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_8_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_8_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_8_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_8_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_8_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_8_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_8_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_8_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_8_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_8_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_8_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_8_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_8_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_8_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_8_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_8_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_8_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_8_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_8_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_8_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_8_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_8_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_8_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_8_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_8_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_8_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_8_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_8_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_8_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_8_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_8_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_8_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_8_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_8_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_8_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_8_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_8_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_8_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_8_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_8_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_8_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_9 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_9_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_9_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_9_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_9_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_9_Weather"						;//Lousy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_9_IGetYouStill"				;//Now I've got you!
	DieEnemy					=	"SVM_9_DieEnemy"					;//You should never have come here!
	DieMonster					=	"SVM_9_DieMonster"					;//Come here, damn beast!
	Addon_DieMonster			=	"SVM_9_Addon_DieMonster"			;//Another one of those things!
	Addon_DieMonster2			=	"SVM_9_Addon_DieMonster2"			;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_9_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_9_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_9_SheepKiller"				;//Leave our sheep alone!
	Berzerk						=	"SVM_9_Berzerk"						;//UUAAARRGGGHHHH!!!!
	SheepKillerMonster			=	"SVM_9_SheepKillerMonster"			;//Get away from our sheep, you brute!
	YouMurderer					=	"SVM_9_YouMurderer"				;//Murderer!
	DieStupidBeast				=	"SVM_9_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_9_YouDareHitMe"				;//You'll regret this!
	YouAskedForIt				=	"SVM_9_YouAskedForIt"				;//It's not like I didn't warn you.
	ThenIBeatYouOutOfHere		=	"SVM_9_ThenIBeatYouOutOfHere"		;//I said OUT!
	WhatDidYouDoInThere			=	"SVM_9_WhatDidYouDoInThere"		;//Hey! What did you want in there?
	WillYouStopFighting			=	"SVM_9_WillYouStopFighting"		;//Stop it! At once!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_9_KillEnemy"					;//I'm going to run you through, you bastard!
	EnemyKilled					=	"SVM_9_EnemyKilled"					;//That's it for you...
	//MonsterKilled				=	"SVM_9_MonsterKilled"				;//Ich steh' auf diese ganze Schei�e!
	Addon_MonsterKilled			=	"SVM_9_Addon_MonsterKilled"			;//So much for you, filthy beast!
	Addon_MonsterKilled2		=	"SVM_9_Addon_MonsterKilled2"		;//One less monster around!
	ThiefDown					=	"SVM_9_ThiefDown"					;//I'm warning you! Don't try that again, you filthy thief!
	rumfummlerDown				=	"SVM_9_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_9_SheepAttackerDown"			;//And stay away from our sheep from now on!
	KillMurderer				=	"SVM_9_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_9_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_9_NeverHitMeAgain"				;//Don't you ever dare to attack me again!
	YouBetterShouldHaveListened	=	"SVM_9_YouBetterShouldHaveListened"	;//It's not like I didn't warn you.
	GetUpAndBeGone				=	"SVM_9_GetUpAndBeGone"					;//And now get out!
	NeverEnterRoomAgain			=	"SVM_9_NeverEnterRoomAgain"			;//I never want to see you in there again, capisce?
	ThereIsNoFightingHere		=	"SVM_9_ThereIsNoFightingHere"			;//There's to be no fighting here, and don't you forget it!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_9_RunAway"						;//I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_9_Alarm"					;//ALARM!
	Guards						=	"SVM_9_Guards"					;//GUARDS!
	Help						=	"SVM_9_Help"					;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_9_GoodMonsterKill"		;//(calls to) Send those beasts to kingdom come!
	GoodKill					= 	"SVM_9_GoodKill"				;//(calls) Yeah, give that bastard what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_9_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_9_RunCoward"				;//(calls loudly) I'll get you yet!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_9_GetOutOfHere"			;//Get out of here!
	WhyAreYouInHere				=	"SVM_9_WhyAreYouInHere"		;//You've no business being here!
	YesGoOutOfHere				= 	"SVM_9_YesGoOutOfHere"			;//Yeah, get out!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_9_WhatsThisSupposedToBe"	;//What are you up to? What's all this creeping about?
	YouDisturbedMySlumber		=	"SVM_9_YouDisturbedMySlumber"	;//(wakes up) Damnit, what do you want?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_9_ITookYourGold"			;//Well, at least you've got some gold on you.
	ShitNoGold					=	"SVM_9_ShitNoGold"				;//Not even any gold - hmpf.
	ITakeYourWeapon				=	"SVM_9_ITakeYourWeapon"		;//I think I'll take your weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_9_WhatAreYouDoing"		;//(warning) Boy! Don't you ever do that again!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_9_LookingForTroubleAgain"	;//(aggressively) Need yet another licking?
	StopMagic					=	"SVM_9_StopMagic"				;//Cut out that magic!
	ISaidStopMagic				=	"SVM_9_ISaidStopMagic"			;//Last warning! Cut out that magic!
	WeaponDown					=	"SVM_9_WeaponDown"				;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_9_ISaidWeaponDown"		;//Put that away, or you're in for it!
	WiseMove					=	"SVM_9_WiseMove"				;//Hey, you're not quite as stupid as you look!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_9_NextTimeYoureInForIt"	;//(to himself) Don't you try that again ...
	OhMyHead					=	"SVM_9_OhMyHead"				;//(to himself) Ohh! My head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_9_TheresAFight"			;//(greedily) And now for the fun part ...
	OhMyGodItsAFight			=	"SVM_9_OhMyGodItsAFight"		;//(dismayed) Oh my goodness ...
	GoodVictory					=	"SVM_9_GoodVictory"			;//(evil laugh) Let that be a lesson to him...
	NotBad						= 	"SVM_9_NotBad"					;//(approvingly) That hit the spot!
	OhMyGodHesDown				=	"SVM_9_OhMyGodHesDown"			;//(to himself) What a filthy brute!
	CheerFriend01				=	"SVM_9_CheerFriend01"			;//Slug him!
	CheerFriend02				=	"SVM_9_CheerFriend02"			;//Don't stop now!
	CheerFriend03				=	"SVM_9_CheerFriend03"			;//Finish him!
	Ooh01						=	"SVM_9_Ooh01"					;//Watch out!
	Ooh02						=	"SVM_9_Ooh02"					;//Parry, then!
	Ooh03						=	"SVM_9_Ooh03"					;//Shit, that hurt!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_9_WhatWasThat"				;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_9_GetOutOfMyBed"			;//This is my bed!
	Awake						= "SVM_9_Awake"					;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_9_TOUGHGUY_ATTACKLOST"		;//All right - you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_9_TOUGHGUY_ATTACKWON"		;//(smugly) I think that now you realize who you're dealing with. What do you want?
	TOUGHGUY_PLAYERATTACK		= "SVM_9_TOUGHGUY_PLAYERATTACK"	;//You again? Trying to pick another fight with me, are you?
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_9_Smalltalk01"				;//... I can't believe that ...
	Smalltalk02					= "SVM_9_Smalltalk02"				;//... I wouldn't be so sure ...
	Smalltalk03					= "SVM_9_Smalltalk03"				;//... but he knew that all along ...
	Smalltalk04					= "SVM_9_Smalltalk04"				;//... I hardly know what to believe anymore...
	Smalltalk05					= "SVM_9_Smalltalk05"				;//... I don't know why he gets so worked up ...
	Smalltalk06					= "SVM_9_Smalltalk06"				;//... I'm in enough trouble as it is ...
	Smalltalk07					= "SVM_9_Smalltalk07"				;//... I have heard a thing or two ...
	Smalltalk08					= "SVM_9_Smalltalk08"				;//... I'm not touching that ...
	Smalltalk09					= "SVM_9_Smalltalk09"				;//... you mustn't believe everything you hear ...
	Smalltalk10					= "SVM_9_Smalltalk10"				;//... he didn't get that from me ...
	Smalltalk11					= "SVM_9_Smalltalk11"				;//... I already thought as much ...
	Smalltalk12					= "SVM_9_Smalltalk12"				;//... nobody ever asks for my opinion ...
	Smalltalk13					= "SVM_9_Smalltalk13"				;//... he really didn't deserve that ...
	Smalltalk14					= "SVM_9_Smalltalk14"				;//... don't say you didn't know that ...
	Smalltalk15					= "SVM_9_Smalltalk15"				;//... that was quite obvious ...
	Smalltalk16					= "SVM_9_Smalltalk16"				;//... where did you pick that up then ...
	Smalltalk17					= "SVM_9_Smalltalk17"				;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_9_Smalltalk18"				;//... I've got my own opinion about that ...
	Smalltalk19					= "SVM_9_Smalltalk19"				;//... it was just like you said ...
	Smalltalk20					= "SVM_9_Smalltalk20"				;//... I don't believe this is going to change ...
	Smalltalk21					= "SVM_9_Smalltalk21"				;//... that's the first I've heard of it ...
	Smalltalk22					= "SVM_9_Smalltalk22"				;//... we can only wait and see ...
	Smalltalk23					= "SVM_9_Smalltalk23"				;//... I knew that would be a problem ...
	Smalltalk24					= "SVM_9_Smalltalk24"				;//... so why won't they listen to me ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_9_Smalltalk25"				;//... he ran like Beliar himself was after him ...
	Smalltalk26					= "SVM_9_Smalltalk26"				;//... of course we got him in the end ...
	Smalltalk27					= "SVM_9_Smalltalk27"				;//... you have to step in and sort things out ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_9_Smalltalk28"				;//... some don't even know how wicked they are ...
	Smalltalk29					= "SVM_9_Smalltalk29"				;//... for that is the will of Innos ...
	Smalltalk30					= "SVM_9_Smalltalk30"				;//... his deeds were just ...
	SmalltalkKhorataAnnaQuest01			= "SVM_9_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_9_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_9_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_9_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_9_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_9_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_9_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_9_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_9_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_9_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_9_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_9_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_9_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_9_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_9_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_9_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_9_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_9_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_9_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_9_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_9_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_9_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_9_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_9_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_9_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_9_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_9_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_9_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_9_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_9_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_9_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_9_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_9_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_9_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_9_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_9_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_9_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_9_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_9_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_9_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_9_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_9_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_9_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_9_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_9_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_9_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_9_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_9_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_9_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_9_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_9_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_9_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_9_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_9_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_9_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_9_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_9_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_9_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_9_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_9_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_9_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_9_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_9_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_9_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_9_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_9_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_9_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_9_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_9_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_9_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_9_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_9_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_9_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_9_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_9_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_9_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_9_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_9_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...

	// D�monenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_9_SmalltalkDMRBelagerungAbdi01"; //... to be honest, I'm not sorry about the two of them...
	SmalltalkDMRBelagerungAbdi02			= "SVM_9_SmalltalkDMRBelagerungAbdi02"; //... would like to know who is slaughtering the people in this camp....
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_9_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_9_NoLearnOverPersonalMAX"	;//You're demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_9_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_9_YouLearnedSomething"		;//See, you're better already ...
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_9_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_9_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_9_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_9_Aargh_3"					;//Aargh

	NoLearnGold			= "SVM_9_NoLearnGold"			;//Come back when you have more gold.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_9_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_9_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_9_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_10 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_10_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_10_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_10_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_10_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_10_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_10_IGetYouStill"				;//YOU again!
	DieEnemy					=	"SVM_10_DieEnemy"					;//I'm gonna rip you to pieces!
	DieMonster					=	"SVM_10_DieMonster"					;//Another one of those things!
	DirtyThief					=	"SVM_10_DirtyThief"					;//You miserable little thief!
	HandsOff					=	"SVM_10_HandsOff"					;//Take your hands off that!
	SheepKiller					=	"SVM_10_SheepKiller"					;//Hey! Leave our sheep alone!
	SheepKillerMonster			=	"SVM_10_SheepKillerMonster"			;//That monster is gobbling up our sheep!
	YouMurderer					=	"SVM_10_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_10_DieStupidBeast"				;//What is THAT creature doing here?
	YouDareHitMe				=	"SVM_10_YouDareHitMe"				;//You're in for it now!
	YouAskedForIt				=	"SVM_10_YouAskedForIt"				;//You asked for it.
	ThenIBeatYouOutOfHere		=	"SVM_10_ThenIBeatYouOutOfHere"		;//I guess some people just have to learn the hard way.
	WhatDidYouDoInThere			=	"SVM_10_WhatDidYouDoInThere"			;//What did you want in there, huh!?
	WillYouStopFighting			=	"SVM_10_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_10_KillEnemy"					;//Die!
	EnemyKilled					=	"SVM_10_EnemyKilled"					;//What a silly bastard...
	MonsterKilled				=	"SVM_10_MonsterKilled"				;//All right, so much for you, filthy beast!
	ThiefDown					=	"SVM_10_ThiefDown"					;//Keep your paws off my stuff from now on - got it?
	rumfummlerDown				=	"SVM_10_rumfummlerDown"				;//Keep your fingers to yourself from now on!
	SheepAttackerDown			=	"SVM_10_SheepAttackerDown"			;//Keep your grubby paws off our sheep from now on!
	KillMurderer				=	"SVM_10_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_10_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_10_NeverHitMeAgain"				;//Don't try that again, buster!
	YouBetterShouldHaveListened	=	"SVM_10_YouBetterShouldHaveListened"	;//Let that be a lesson to you.
	GetUpAndBeGone				=	"SVM_10_GetUpAndBeGone"				;//Stand up and get out of here!
	NeverEnterRoomAgain			=	"SVM_10_NeverEnterRoomAgain"			;//I never want to see you in there again - understood?
	ThereIsNoFightingHere		=	"SVM_10_ThereIsNoFightingHere"		;//I'm the one who does the bashing around here, understood?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_10_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_10_Alarm"					;//ALARM!
	Guards						=	"SVM_10_Guards"					;//GUARDS!
	Help						=	"SVM_10_Help"					;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_10_GoodMonsterKill"			;//(calls to) Yeah! That's how you deal with those things!
	GoodKill					= 	"SVM_10_GoodKill"				;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_10_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_10_RunCoward"				;//(yells) You haven't seen the last of me!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_10_GetOutOfHere"			;//Out!
	WhyAreYouInHere				=	"SVM_10_WhyAreYouInHere"			;//What's your business here?!
	YesGoOutOfHere				= 	"SVM_10_YesGoOutOfHere"			;//Yeah, beat it!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_10_WhatsThisSupposedToBe"	;//What are you creeping around there for?
	Berzerk						=	"SVM_10_Berzerk"						;//UUAAARRGGGHHHH!!!!
	YouDisturbedMySlumber		=	"SVM_10_YouDisturbedMySlumber"	;//(wakes up) Wassup?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_10_ITookYourGold"			;//Thanks for the gold, you hero!
	ShitNoGold					=	"SVM_10_ShitNoGold"				;//You poor sucker - you don't even have any gold on you!
	ITakeYourWeapon				=	"SVM_10_ITakeYourWeapon"			;//I think I had better take this weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_10_WhatAreYouDoing"			;//(warning) Watch it! One more time, and I'll slug you one.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_10_LookingForTroubleAgain"	;//(aggressive) Do you want another punch in the face?
																	 
	StopMagic					=	"SVM_10_StopMagic"				;//Cut out this magic crap!
	ISaidStopMagic				=	"SVM_10_ISaidStopMagic"			;//Want a licking? Stop it this instant!!!
	WeaponDown					=	"SVM_10_WeaponDown"				;//Put away that weapon!
	ISaidWeaponDown				=	"SVM_10_ISaidWeaponDown"			;//Put that damn weapon away already!
	WiseMove					=	"SVM_10_WiseMove"				;//Smart kid!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_10_NextTimeYoureInForIt"	;//(to himself) Well, we'll see the next time ...
	OhMyHead					=	"SVM_10_OhMyHead"				;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_10_TheresAFight"			;//(eagerly) Aah, a fight!
	OhMyGodItsAFight			=	"SVM_10_OhMyGodItsAFight"		;//(dismayed) Oh my God, a fight!
	GoodVictory					=	"SVM_10_GoodVictory"				;//(evil laugh) You showed him who's boss!
	NotBad						= 	"SVM_10_NotBad"					;//(approvingly) Not bad ...
	OhMyGodHesDown				=	"SVM_10_OhMyGodHesDown"			;//(to himself) My God! How brutal...
	CheerFriend01				=	"SVM_10_CheerFriend01"			;//Yeah, let him have it!
	CheerFriend02				=	"SVM_10_CheerFriend02"			;//Show him!
	CheerFriend03				=	"SVM_10_CheerFriend03"			;//Finish him!
	Ooh01						=	"SVM_10_Ooh01"					;//Defend yourself!
	Ooh02						=	"SVM_10_Ooh02"					;//Go ahead, hit back!
	Ooh03						=	"SVM_10_Ooh03"					;//Ouch! That hurt!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_10_WhatWasThat"				;//(to himself, waking up) Damnit, what was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_10_GetOutOfMyBed"				;//Find your own bed!
	Awake						= "SVM_10_Awake"						;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_10_TOUGHGUY_ATTACKLOST"		;//Say, you pack a pretty punch ... What is it you want?
	TOUGHGUY_ATTACKWON			= "SVM_10_TOUGHGUY_ATTACKWON"		;//(smugly) Any more questions?
	TOUGHGUY_PLAYERATTACK		= "SVM_10_TOUGHGUY_PLAYERATTACK"		;//There you are again!
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_10_GOLD_1000"					;//1000 gold pieces.
	GOLD_950					= "SVM_10_GOLD_950"					;//950 gold pieces.
	GOLD_900					= "SVM_10_GOLD_900"					;//900 gold pieces.
	GOLD_850					= "SVM_10_GOLD_850"					;//850 gold pieces.
	GOLD_800					= "SVM_10_GOLD_800"					;//800 gold pieces.
	GOLD_750					= "SVM_10_GOLD_750"					;//750 gold pieces.
	GOLD_700					= "SVM_10_GOLD_700"					;//700 gold pieces.
	GOLD_650					= "SVM_10_GOLD_650"					;//650 gold pieces.
	GOLD_600					= "SVM_10_GOLD_600"					;//600 gold pieces.
	GOLD_550					= "SVM_10_GOLD_550"					;//550 gold pieces.
	GOLD_500					= "SVM_10_GOLD_500"					;//500 gold pieces.
	GOLD_450					= "SVM_10_GOLD_450"					;//450 gold pieces.
	GOLD_400					= "SVM_10_GOLD_400"					;//400 gold pieces.
	GOLD_350					= "SVM_10_GOLD_350"					;//350 gold pieces.
	GOLD_300					= "SVM_10_GOLD_300"					;//300 gold pieces.
	GOLD_250					= "SVM_10_GOLD_250"					;//250 gold pieces.
	GOLD_200					= "SVM_10_GOLD_200"					;//200 gold pieces.
	GOLD_150					= "SVM_10_GOLD_150"					;//150 gold pieces.
	GOLD_100					= "SVM_10_GOLD_100"					;//100 gold pieces.
	GOLD_90						= "SVM_10_GOLD_90"					;//90 gold pieces.
	GOLD_80						= "SVM_10_GOLD_80"					;//80 gold pieces.
	GOLD_70						= "SVM_10_GOLD_70"					;//70 gold pieces.
	GOLD_60						= "SVM_10_GOLD_60"					;//60 gold pieces.
	GOLD_50						= "SVM_10_GOLD_50"					;//50 gold pieces.
	GOLD_40						= "SVM_10_GOLD_40"					;//40 gold pieces.
	GOLD_30						= "SVM_10_GOLD_30"					;//30 gold pieces.
	GOLD_20						= "SVM_10_GOLD_20"					;//20 gold pieces.
	GOLD_10						= "SVM_10_GOLD_10"					;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_10_Smalltalk01"				;//... I couldn't care less ...
	Smalltalk02					= "SVM_10_Smalltalk02"				;//... nobody wants to know ...
	Smalltalk03					= "SVM_10_Smalltalk03"				;//... it was his decision, wasn't it ...
	Smalltalk04					= "SVM_10_Smalltalk04"				;//... no idea, you tell me ...
	Smalltalk05					= "SVM_10_Smalltalk05"				;//... I'm staying out of it ...
	Smalltalk06					= "SVM_10_Smalltalk06"				;//... I've got no time for things like that ...
	Smalltalk07					= "SVM_10_Smalltalk07"				;//... I couldn't get away with that ...
	Smalltalk08					= "SVM_10_Smalltalk08"				;//... you don't have to tell me that ...
	Smalltalk09					= "SVM_10_Smalltalk09"				;//... been there, done that ...
	Smalltalk10					= "SVM_10_Smalltalk10"				;//... the things I could tell you ...
	Smalltalk11					= "SVM_10_Smalltalk11"				;//... you can't rely on that ...
	Smalltalk12					= "SVM_10_Smalltalk12"				;//... I used to say that myself ...
	Smalltalk13					= "SVM_10_Smalltalk13"				;//... and there's more, believe me ...
	Smalltalk14					= "SVM_10_Smalltalk14"				;//... same old thing all over again ...
	Smalltalk15					= "SVM_10_Smalltalk15"				;//... tell me that isn't true ...
	Smalltalk16					= "SVM_10_Smalltalk16"				;//... it had to happen sooner or later ...
	Smalltalk17					= "SVM_10_Smalltalk17"				;//... he really should have known better ...
	Smalltalk18					= "SVM_10_Smalltalk18"				;//... that will never change ...
	Smalltalk19					= "SVM_10_Smalltalk19"				;//... that's no secret ...
	Smalltalk20					= "SVM_10_Smalltalk20"				;//... that was no big deal ...
	Smalltalk21					= "SVM_10_Smalltalk21"				;//... he thinks it's as easy as that ...
	Smalltalk22					= "SVM_10_Smalltalk22"				;//... no-one really wants to hear that  ...
	Smalltalk23					= "SVM_10_Smalltalk23"				;//... and that's the truth ...
	Smalltalk24					= "SVM_10_Smalltalk24"				;//... just listen to him talk ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                      
	Smalltalk25					= "SVM_10_Smalltalk25"				;//... things would have turned out differently if it hadn't been for us ...
	Smalltalk26					= "SVM_10_Smalltalk26"				;//... he simply needs to practice more ...
	Smalltalk27					= "SVM_10_Smalltalk27"				;//... what does he know about duty ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                      
	Smalltalk28					= "SVM_10_Smalltalk28"				;//... Innos deals out fair punishment ...
	Smalltalk29					= "SVM_10_Smalltalk29"				;//... the path of virtue is long and rocky ...
	Smalltalk30					= "SVM_10_Smalltalk30"				;//... only Innos decides what's right or wrong ...
	SmalltalkKhorataAnnaQuest01			= "SVM_10_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_10_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_10_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_10_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_10_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_10_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_10_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_10_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_10_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_10_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_10_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_10_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_10_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_10_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_10_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_10_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_10_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_10_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_10_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_10_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_10_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_10_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_10_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_10_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_10_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_10_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_10_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_10_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_10_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_10_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_10_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_10_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_10_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_10_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_10_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_10_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_10_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_10_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_10_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_10_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_10_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_10_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_10_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_10_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_10_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_10_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_10_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_10_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_10_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_10_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_10_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_10_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_10_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_10_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_10_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_10_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_10_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_10_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_10_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_10_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_10_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_10_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_10_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_10_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_10_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_10_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_10_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_10_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_10_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_10_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_10_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_10_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_10_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_10_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_10_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_10_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_10_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_10_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...

	// D�monenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_10_SmalltalkDMRBelagerungAbdi01"; //... to be honest, I'm not sorry about the two of them...
	SmalltalkDMRBelagerungAbdi02			= "SVM_10_SmalltalkDMRBelagerungAbdi02"; //... would like to know who is slaughtering the people in this camp....
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_10_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_10_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_10_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_10_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_10_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_10_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_10_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_10_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_10_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_10_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_10_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_10_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_10_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_10_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_10_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_10_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_10_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_10_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_10_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_10_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_10_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_10_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_10_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_10_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_10_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_10_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_10_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_10_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_10_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_10_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_10_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_10_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_10_Addon_WrongArmor";			//What kind of clothes are those? They don't suit you at all. Leave me alone.
	ADDON_WRONGARMOR_SLD		= "SVM_10_ADDON_WRONGARMOR_SLD";		//If you're one of us, then you should wear our gear. First go change.
	ADDON_WRONGARMOR_MIL		= "SVM_10_ADDON_WRONGARMOR_MIL";		//If someone gives you the King's armor, then you had better wear it.
	ADDON_WRONGARMOR_KDF		= "SVM_10_ADDON_WRONGARMOR_KDF";		//If you deny the robe, you deny Innos. Go and think upon this.
	ADDON_NOARMOR_BDT			= "SVM_10_ADDON_ADDON_NOARMOR_BDT";		//If you can't even afford any armor, why should I talk to you?

	ADDON_DIEBANDIT				= "SVM_10_ADDON_DIEBANDIT";				//You filthy bandit!
	ADDON_DIRTYPIRATE			= "SVM_10_ADDON_DIRTYPIRATE";			//You dirty pirate!

	RELMINE01			= "SVM_10_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_10_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_10_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_10_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_10_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_10_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_10_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_10_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_10_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_10_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_10_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_10_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_10_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_10_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_10_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_10_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_10_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_10_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_10_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_10_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_10_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_10_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_10_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_10_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_10_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_10_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_10_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_10_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_10_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_10_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_10_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_10_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_10_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_10_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_10_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_10_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_10_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_10_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_10_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_10_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_10_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_10_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_10_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_10_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_10_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_10_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_10_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_10_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_10_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_10_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_10_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_10_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_10_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_10_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_10_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_10_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_10_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_11 (C_SVM)
{
	SC_HeyWaitASecond			= 	"SVM_11_Addon_HeyWaitASecond"			;//(calls) Wait!
	
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_11_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_11_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_11_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_11_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_11_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_11_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_11_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_11_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_11_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_11_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_11_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_11_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_11_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_11_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_11_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_11_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_11_ThenIBeatYouOutOfHere"		;//Then I'll have to knock you out of here!
	WhatDidYouDoInThere			=	"SVM_11_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_11_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_11_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_11_EnemyKilled"					;//So much for you, lowlife!
	Berzerk						=	"SVM_11_Berzerk"						;//UUAAARRGGGHHHH!!!!
	MonsterKilled				=	"SVM_11_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_11_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_11_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_11_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_11_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_11_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_11_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_11_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_11_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_11_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_11_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_11_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_11_Alarm"						;//ALARM!
	Guards						=	"SVM_11_Guards"						;//GUARDS!
	Help						=	"SVM_11_Help"						;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_11_GoodMonsterKill"				;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_11_GoodKill"					;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_11_NOTNOW"						;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_11_RunCoward"					;//(calls loudly) Stop right there, you lowlife!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_11_GetOutOfHere"				;//Get out of here!
	WhyAreYouInHere				=	"SVM_11_WhyAreYouInHere"				;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_11_YesGoOutOfHere"				;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_11_WhatsThisSupposedToBe"		;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_11_YouDisturbedMySlumber"		;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_11_ITookYourGold"				;//Gold! OK, that's mine for starters ...
	ShitNoGold					=	"SVM_11_ShitNoGold"					;//You don't even have any gold on you?
	ITakeYourWeapon				=	"SVM_11_ITakeYourWeapon"				;//I think I'll take your weapon for safekeeping.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_11_WhatAreYouDoing"				;//(warning) Hey! Watch it!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_11_LookingForTroubleAgain"		;//(aggressively) Haven't you had enough yet?
	StopMagic					=	"SVM_11_StopMagic"					;//Just stay away from me with that magic of yours!
	ISaidStopMagic				=	"SVM_11_ISaidStopMagic"				;//Cut out that magic! Something wrong with your ears!?
	WeaponDown					=	"SVM_11_WeaponDown"					;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_11_ISaidWeaponDown"				;//Are you deaf or what? I said: Put down that weapon!
	WiseMove					=	"SVM_11_WiseMove"					;//See, that wasn't so hard.
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_11_NextTimeYoureInForIt"		;//(to himself) We'll see about that ...
	OhMyHead					=	"SVM_11_OhMyHead"					;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_11_TheresAFight"				;//(eagerly) And now for some action!
	OhMyGodItsAFight			=	"SVM_11_OhMyGodItsAFight"			;//(dismayed) They're smashing each other's skulls ...
	GoodVictory					=	"SVM_11_GoodVictory"					;//(evil laugh) He deserved that!
	NotBad						= 	"SVM_11_NotBad"						;//(approvingly) Not bad at all ...
	OhMyGodHesDown				=	"SVM_11_OhMyGodHesDown"				;//(to himself) What a brutal fellow ...
	CheerFriend01				=	"SVM_11_CheerFriend01"				;//Yeah, that's the ticket!
	CheerFriend02				=	"SVM_11_CheerFriend02"				;//Whatcha waiting for?
	CheerFriend03				=	"SVM_11_CheerFriend03"				;//Atta boy!
	Ooh01						=	"SVM_11_Ooh01"						;//Don't take any crap!
	Ooh02						=	"SVM_11_Ooh02"						;//Show him who's boss!
	Ooh03						=	"SVM_11_Ooh03"						;//Holy shit!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_11_WhatWasThat"					;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_11_GetOutOfMyBed"					;//Get out of my bed!
	Awake						= "SVM_11_Awake"							;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_11_TOUGHGUY_ATTACKLOST"			;//All right, all right, you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_11_TOUGHGUY_ATTACKWON"			;//(smugly) Do I have to show you again who's boss?
	TOUGHGUY_PLAYERATTACK		= "SVM_11_TOUGHGUY_PLAYERATTACK"			;//Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_11_GOLD_1000"						;//1000 gold pieces.
	GOLD_950					= "SVM_11_GOLD_950"						;//950 gold pieces.
	GOLD_900					= "SVM_11_GOLD_900"						;//900 gold pieces.
	GOLD_850					= "SVM_11_GOLD_850"						;//850 gold pieces.
	GOLD_800					= "SVM_11_GOLD_800"						;//800 gold pieces.
	GOLD_750					= "SVM_11_GOLD_750"						;//750 gold pieces.
	GOLD_700					= "SVM_11_GOLD_700"						;//700 gold pieces.
	GOLD_650					= "SVM_11_GOLD_650"						;//650 gold pieces.
	GOLD_600					= "SVM_11_GOLD_600"						;//600 gold pieces.
	GOLD_550					= "SVM_11_GOLD_550"						;//550 gold pieces.
	GOLD_500					= "SVM_11_GOLD_500"						;//500 gold pieces.
	GOLD_450					= "SVM_11_GOLD_450"						;//450 gold pieces.
	GOLD_400					= "SVM_11_GOLD_400"						;//400 gold pieces.
	GOLD_350					= "SVM_11_GOLD_350"						;//350 gold pieces.
	GOLD_300					= "SVM_11_GOLD_300"						;//300 gold pieces.
	GOLD_250					= "SVM_11_GOLD_250"						;//250 gold pieces.
	GOLD_200					= "SVM_11_GOLD_200"						;//200 gold pieces.
	GOLD_150					= "SVM_11_GOLD_150"						;//150 gold pieces.
	GOLD_100					= "SVM_11_GOLD_100"						;//100 gold pieces.
	GOLD_90						= "SVM_11_GOLD_90"						;//90 gold pieces.
	GOLD_80						= "SVM_11_GOLD_80"						;//80 gold pieces.
	GOLD_70						= "SVM_11_GOLD_70"						;//70 gold pieces.
	GOLD_60						= "SVM_11_GOLD_60"						;//60 gold pieces.
	GOLD_50						= "SVM_11_GOLD_50"						;//50 gold pieces.
	GOLD_40						= "SVM_11_GOLD_40"						;//40 gold pieces.
	GOLD_30						= "SVM_11_GOLD_30"						;//30 gold pieces.
	GOLD_20						= "SVM_11_GOLD_20"						;//20 gold pieces.
	GOLD_10						= "SVM_11_GOLD_10"						;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_11_Smalltalk01"					;//... do you really think ...
	Smalltalk02					= "SVM_11_Smalltalk02"					;//... anything's possible ...
	Smalltalk03					= "SVM_11_Smalltalk03"					;//... he should have known better ...
	Smalltalk04					= "SVM_11_Smalltalk04"					;//... as if I didn't have enough problems ...
	Smalltalk05					= "SVM_11_Smalltalk05"					;//... who said that ...
	Smalltalk06					= "SVM_11_Smalltalk06"					;//... that'll only cause more trouble ...
	Smalltalk07					= "SVM_11_Smalltalk07"					;//... there've been all kinds of rumors ...
	Smalltalk08					= "SVM_11_Smalltalk08"					;//... I wouldn't have done that ...
	Smalltalk09					= "SVM_11_Smalltalk09"					;//... those are all just rumors ...
	Smalltalk10					= "SVM_11_Smalltalk10"					;//... it's better to watch out who you tell what ...
	Smalltalk11					= "SVM_11_Smalltalk11"					;//... I could have told you that before ...
	Smalltalk12					= "SVM_11_Smalltalk12"					;//... nobody ever asks me ...
	Smalltalk13					= "SVM_11_Smalltalk13"					;//... you have to feel sorry for the poor guy ...
	Smalltalk14					= "SVM_11_Smalltalk14"					;//... that's nothing new ...
	Smalltalk15					= "SVM_11_Smalltalk15"					;//... that's totally obvious ...
	Smalltalk16					= "SVM_11_Smalltalk16"					;//... you don't have to ask me that ...
	Smalltalk17					= "SVM_11_Smalltalk17"					;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_11_Smalltalk18"					;//... you already know what I think ...
	Smalltalk19					= "SVM_11_Smalltalk19"					;//... that's exactly what I said ...
	Smalltalk20					= "SVM_11_Smalltalk20"					;//... nothing's going to change about that ...
	Smalltalk21					= "SVM_11_Smalltalk21"					;//... why haven't I heard about this before ...
	Smalltalk22					= "SVM_11_Smalltalk22"					;//... let's wait and see what happens ...
	Smalltalk23					= "SVM_11_Smalltalk23"					;//... some problems solve themselves ...
	Smalltalk24					= "SVM_11_Smalltalk24"					;//... I don't want to hear that anymore ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_11_Smalltalk25"					;//... he was falling down drunk ...
	Smalltalk26					= "SVM_11_Smalltalk26"					;//... I won't be treated like that ...
	Smalltalk27					= "SVM_11_Smalltalk27"					;//... they all ran like rabbits, I was completely alone ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_11_Smalltalk28"					;//... so it says in the scriptures ...
	Smalltalk29					= "SVM_11_Smalltalk29"					;//... I always act in the name of Innos ...
	Smalltalk30					= "SVM_11_Smalltalk30"					;//... no one must violate the divine order ...
	SmalltalkKhorataAnnaQuest01			= "SVM_11_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_11_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_11_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_11_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_11_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_11_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_11_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_11_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_11_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_11_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_11_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_11_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_11_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_11_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_11_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_11_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_11_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_11_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_11_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_11_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_11_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_11_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_11_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_11_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_11_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_11_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_11_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_11_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_11_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_11_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_11_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_11_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_11_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_11_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_11_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_11_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_11_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_11_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_11_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_11_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_11_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_11_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_11_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_11_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_11_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_11_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_11_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_11_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_11_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_11_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_11_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_11_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_11_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_11_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_11_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_11_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_11_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_11_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_11_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_11_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_11_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_11_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_11_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_11_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_11_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_11_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_11_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_11_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_11_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_11_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_11_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_11_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_11_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_11_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_11_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_11_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_11_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_11_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...

	// D�monenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_11_SmalltalkDMRBelagerungAbdi01"; //... to be honest, I'm not sorry about the two of them...
	SmalltalkDMRBelagerungAbdi02			= "SVM_11_SmalltalkDMRBelagerungAbdi02"; //... would like to know who is slaughtering the people in this camp....
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_11_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_11_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_11_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_11_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_11_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_11_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_11_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_11_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_11_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_11_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_11_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_11_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_11_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_11_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_11_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_11_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_11_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_11_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_11_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_11_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_11_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_11_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_11_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_11_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_11_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_11_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_11_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_11_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_11_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_11_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_11_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_11_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_11_Addon_WrongArmor";				//What kind of clothes are those? They don't suit you at all. Leave me alone.
	ADDON_WRONGARMOR_SLD		= "SVM_11_ADDON_WRONGARMOR_SLD";			//Kindly wear our armor when I'm talking to you. Go on, beat it.
	ADDON_WRONGARMOR_MIL		= "SVM_11_ADDON_WRONGARMOR_MIL";			//You are supposed to wear the King's armor. Now, go.
	ADDON_WRONGARMOR_KDF		= "SVM_11_ADDON_WRONGARMOR_KDF";			//Your clothing is not appropriate for our order. Go and change.
	ADDON_NOARMOR_BDT			= "SVM_11_ADDON_ADDON_NOARMOR_BDT";			//You haven't even got any armor. Beat it!

	ADDON_DIEBANDIT				= "SVM_11_ADDON_DIEBANDIT";				//Another bandit.
	ADDON_DIRTYPIRATE			= "SVM_11_ADDON_DIRTYPIRATE";			//PIRATES!

	RELMINE01			= "SVM_11_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_11_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_11_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_11_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_11_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_11_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_11_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_11_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_11_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_11_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_11_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_11_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_11_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_11_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_11_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_11_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_11_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_11_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_11_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_11_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_11_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_11_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_11_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_11_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_11_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_11_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_11_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_11_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_11_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_11_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_11_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_11_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_11_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_11_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_11_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_11_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_11_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_11_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_11_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_11_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_11_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_11_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_11_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_11_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_11_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_11_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_11_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_11_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_11_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_11_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_11_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_11_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_11_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_11_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_11_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_11_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_11_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_12 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_12_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_12_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_12_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_12_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_12_Weather"					;//Lousy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_12_IGetYouStill"				;//I'll get you now!
	DieEnemy					=	"SVM_12_DieEnemy"					;//You should never have come here!
	DieMonster					=	"SVM_12_DieMonster"					;//Come here, damn beast!
	DirtyThief					=	"SVM_12_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_12_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_12_SheepKiller"				;//Leave our sheep alone!
	Berzerk						=	"SVM_12_Berzerk"						;//UUAAARRGGGHHHH!!!!
	SheepKillerMonster			=	"SVM_12_SheepKillerMonster"			;//Get away from our sheep, you brute!
	YouMurderer					=	"SVM_12_YouMurderer"				;//Murderer!
	DieStupidBeast				=	"SVM_12_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_12_YouDareHitMe"				;//You'll regret this!
	YouAskedForIt				=	"SVM_12_YouAskedForIt"				;//I warned you!
	ThenIBeatYouOutOfHere		=	"SVM_12_ThenIBeatYouOutOfHere"		;//I said OUT!
	WhatDidYouDoInThere			=	"SVM_12_WhatDidYouDoInThere"		;//Hey! What did you want in there?
	WillYouStopFighting			=	"SVM_12_WillYouStopFighting"		;//Stop it! At once!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_12_KillEnemy"					;//I'm going to run you through, you bastard!
	EnemyKilled					=	"SVM_12_EnemyKilled"				;//So much for you ...
	MonsterKilled				=	"SVM_12_MonsterKilled"				;//I love this shit!
	Addon_MonsterKilled			=	"SVM_12_Addon_MonsterKilled"		;//One less monster around!
	ThiefDown					=	"SVM_12_ThiefDown"					;//I'm warning you! Don't try that again, you filthy thief!
	rumfummlerDown				=	"SVM_12_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_12_SheepAttackerDown"			;//And stay away from our sheep from now on!
	KillMurderer				=	"SVM_12_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_12_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_12_NeverHitMeAgain"				;//Don't you ever dare to attack me again!
	YouBetterShouldHaveListened	=	"SVM_12_YouBetterShouldHaveListened"	;//It's not like I didn't warn you.
	GetUpAndBeGone				=	"SVM_12_GetUpAndBeGone"					;//And now get out!
	NeverEnterRoomAgain			=	"SVM_12_NeverEnterRoomAgain"			;//I never want to see you in there again - understood?
	ThereIsNoFightingHere		=	"SVM_12_ThereIsNoFightingHere"			;//There's to be no fighting here, and don't you forget it!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_12_RunAway"						;//I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_12_Alarm"					;//ALARM!
	Guards						=	"SVM_12_Guards"					;//GUARDS!
	Help						=	"SVM_12_Help"					;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_12_GoodMonsterKill"		;//(calls to) Send those beasts to kingdom come!
	GoodKill					= 	"SVM_12_GoodKill"				;//(calls) Yeah, give that bastard what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_12_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_12_RunCoward"				;//(shouts loudly) I'll get you!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_12_GetOutOfHere"			;//Get out of here!
	WhyAreYouInHere				=	"SVM_12_WhyAreYouInHere"		;//You've no business being here!
	YesGoOutOfHere				= 	"SVM_12_YesGoOutOfHere"			;//Yeah, get out!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_12_WhatsThisSupposedToBe"	;//What are you up to? What's all this creeping about?
	YouDisturbedMySlumber		=	"SVM_12_YouDisturbedMySlumber"	;//(wakes up) Damnit, what do you want?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_12_ITookYourGold"			;//Well, at least you've got some gold on you.
	ShitNoGold					=	"SVM_12_ShitNoGold"				;//Not even any gold - hmpf.
	ITakeYourWeapon				=	"SVM_12_ITakeYourWeapon"		;//I think I'll take your weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_12_WhatAreYouDoing"		;//(warning) Boy! Don't you ever do that again!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_12_LookingForTroubleAgain"	;//(aggressively) Need yet another licking?
	StopMagic					=	"SVM_12_StopMagic"				;//Cut out that magic!
	ISaidStopMagic				=	"SVM_12_ISaidStopMagic"			;//Last warning! Cut out that magic!
	WeaponDown					=	"SVM_12_WeaponDown"				;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_12_ISaidWeaponDown"		;//Put that away, or you're in for it!
	WiseMove					=	"SVM_12_WiseMove"				;//Hey, you're not quite as stupid as you look!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_12_NextTimeYoureInForIt"	;//(to himself) Don't you try that again ...
	OhMyHead					=	"SVM_12_OhMyHead"				;//(to himself) Ohh! My head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_12_TheresAFight"			;//(greedily) And now for the fun part ...
	OhMyGodItsAFight			=	"SVM_12_OhMyGodItsAFight"		;//(dismayed) Oh my goodness ...
	GoodVictory					=	"SVM_12_GoodVictory"			;//(evil laugh) Let that be a lesson to him...
	NotBad						= 	"SVM_12_NotBad"					;//(approvingly) That hit the spot!
	OhMyGodHesDown				=	"SVM_12_OhMyGodHesDown"			;//(to himself) What a filthy brute!
	CheerFriend01				=	"SVM_12_CheerFriend01"			;//Slug him!
	CheerFriend02				=	"SVM_12_CheerFriend02"			;//Don't stop now!
	CheerFriend03				=	"SVM_12_CheerFriend03"			;//Finish him!
	Ooh01						=	"SVM_12_Ooh01"					;//Watch out!
	Ooh02						=	"SVM_12_Ooh02"					;//Parry, then!
	Ooh03						=	"SVM_12_Ooh03"					;//Shit, that hurt!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_12_WhatWasThat"				;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_12_GetOutOfMyBed"			;//This is my bed!
	Awake						= "SVM_12_Awake"					;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_12_TOUGHGUY_ATTACKLOST"		;//All right - you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_12_TOUGHGUY_ATTACKWON"		;//(smugly) I think that now you realize who you're dealing with. What do you want?
	TOUGHGUY_PLAYERATTACK		= "SVM_12_TOUGHGUY_PLAYERATTACK"	;//You again? Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_12_GOLD_1000"				;//1000 gold pieces.
	GOLD_950					= "SVM_12_GOLD_950"					;//950 gold pieces.
	GOLD_900					= "SVM_12_GOLD_900"					;//900 gold pieces.
	GOLD_850					= "SVM_12_GOLD_850"					;//850 gold pieces.
	GOLD_800					= "SVM_12_GOLD_800"					;//800 gold pieces.
	GOLD_750					= "SVM_12_GOLD_750"					;//750 gold pieces.
	GOLD_700					= "SVM_12_GOLD_700"					;//700 gold pieces.
	GOLD_650					= "SVM_12_GOLD_650"					;//650 gold pieces.
	GOLD_600					= "SVM_12_GOLD_600"					;//600 gold pieces.
	GOLD_550					= "SVM_12_GOLD_550"					;//550 gold pieces.
	GOLD_500					= "SVM_12_GOLD_500"					;//500 gold pieces.
	GOLD_450					= "SVM_12_GOLD_450"					;//450 gold pieces.
	GOLD_400					= "SVM_12_GOLD_400"					;//400 gold pieces.
	GOLD_350					= "SVM_12_GOLD_350"					;//350 gold pieces.
	GOLD_300					= "SVM_12_GOLD_300"					;//300 gold pieces.
	GOLD_250					= "SVM_12_GOLD_250"					;//250 gold pieces.
	GOLD_200					= "SVM_12_GOLD_200"					;//200 gold pieces.
	GOLD_150					= "SVM_12_GOLD_150"					;//150 gold pieces.
	GOLD_100					= "SVM_12_GOLD_100"					;//100 gold pieces.
	GOLD_90						= "SVM_12_GOLD_90"					;//90 gold pieces.
	GOLD_80						= "SVM_12_GOLD_80"					;//80 gold pieces.
	GOLD_70						= "SVM_12_GOLD_70"					;//70 gold pieces.
	GOLD_60						= "SVM_12_GOLD_60"					;//60 gold pieces.
	GOLD_50						= "SVM_12_GOLD_50"					;//50 gold pieces.
	GOLD_40						= "SVM_12_GOLD_40"					;//40 gold pieces.
	GOLD_30						= "SVM_12_GOLD_30"					;//30 gold pieces.
	GOLD_20						= "SVM_12_GOLD_20"					;//20 gold pieces.
	GOLD_10						= "SVM_12_GOLD_10"					;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_12_Smalltalk01"				;//... I couldn't care less ...
	Smalltalk02					= "SVM_12_Smalltalk02"				;//... nobody wants to know ...
	Smalltalk03					= "SVM_12_Smalltalk03"				;//... it was his decision, wasn't it ...
	Smalltalk04					= "SVM_12_Smalltalk04"				;//... no idea, you tell me ...
	Smalltalk05					= "SVM_12_Smalltalk05"				;//... I'm staying out of it ...
	Smalltalk06					= "SVM_12_Smalltalk06"				;//... I've got no time for things like that ...
	Smalltalk07					= "SVM_12_Smalltalk07"				;//... I couldn't get away with that ...
	Smalltalk08					= "SVM_12_Smalltalk08"				;//... you don't have to tell me that ...
	Smalltalk09					= "SVM_12_Smalltalk09"				;//... been there, done that ...
	Smalltalk10					= "SVM_12_Smalltalk10"				;//... the things I could tell you ...
	Smalltalk11					= "SVM_12_Smalltalk11"				;//... you can't rely on that ...
	Smalltalk12					= "SVM_12_Smalltalk12"				;//... I used to say that myself ...
	Smalltalk13					= "SVM_12_Smalltalk13"				;//... and there's more, believe me ...
	Smalltalk14					= "SVM_12_Smalltalk14"				;//... same old thing all over again ...
	Smalltalk15					= "SVM_12_Smalltalk15"				;//... tell me that isn't true ...
	Smalltalk16					= "SVM_12_Smalltalk16"				;//... it had to happen sooner or later ...
	Smalltalk17					= "SVM_12_Smalltalk17"				;//... he really should have known better ...
	Smalltalk18					= "SVM_12_Smalltalk18"				;//... that will never change ...
	Smalltalk19					= "SVM_12_Smalltalk19"				;//... that's no secret ...
	Smalltalk20					= "SVM_12_Smalltalk20"				;//... that was no big deal ...
	Smalltalk21					= "SVM_12_Smalltalk21"				;//... he thinks it's as easy as that ...
	Smalltalk22					= "SVM_12_Smalltalk22"				;//... no-one really wants to hear that  ...
	Smalltalk23					= "SVM_12_Smalltalk23"				;//... and that's the truth ...
	Smalltalk24					= "SVM_12_Smalltalk24"				;//...you just have to listen ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                      
	Smalltalk25					= "SVM_12_Smalltalk25"				;//... things would have turned out differently if it hadn't been for us ...
	Smalltalk26					= "SVM_12_Smalltalk26"				;//... he simply needs to practice more ...
	Smalltalk27					= "SVM_12_Smalltalk27"				;//... what does he know about duty ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                      
	Smalltalk28					= "SVM_12_Smalltalk28"				;//... Innos deals out fair punishment ...
	Smalltalk29					= "SVM_12_Smalltalk29"				;//... the path of virtue is long and rocky ...
	Smalltalk30					= "SVM_12_Smalltalk30"				;//... only Innos decides what's right or wrong ...
	SmalltalkKhorataAnnaQuest01			= "SVM_12_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_12_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_12_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_12_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_12_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_12_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_12_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_12_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_12_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_12_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_12_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_12_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_12_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_12_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_12_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_12_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_12_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_12_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_12_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_12_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_12_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_12_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_12_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_12_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_12_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_12_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_12_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_12_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_12_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_12_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_12_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_12_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_12_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_12_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_12_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_12_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_12_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_12_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_12_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_12_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_12_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_12_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_12_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_12_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_12_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_12_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_12_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_12_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_12_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_12_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_12_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_12_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_12_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_12_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_12_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_12_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_12_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_12_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_12_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_12_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_12_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_12_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_12_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_12_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_12_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_12_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_12_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_12_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_12_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_12_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_12_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_12_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_12_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_12_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_12_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_12_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_12_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_12_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_12_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_12_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_12_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_12_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_12_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_12_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_12_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_12_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_12_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_12_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_12_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_12_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_12_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_12_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_12_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_12_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_12_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_12_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_12_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_12_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_12_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_12_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_12_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_12_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_12_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_12_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_12_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_12_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_12_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_12_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_12_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_12_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_12_Addon_WrongArmor";				//Your clothes just don't suit you. First, go change.
	ADDON_WRONGARMOR_SLD		= "SVM_12_ADDON_WRONGARMOR_SLD";			//Wear your armor if you want to talk to me.
	ADDON_WRONGARMOR_MIL		= "SVM_12_ADDON_WRONGARMOR_MIL";			//A soldier wears the armor of the King. NOT something else! So go change.
	ADDON_WRONGARMOR_KDF		= "SVM_12_ADDON_WRONGARMOR_KDF";			//Your clothing is not appropriate for our order. Go and change.
	ADDON_NOARMOR_BDT			= "SVM_12_ADDON_ADDON_NOARMOR_BDT";			//You can't even afford any armor. I don't talk to weaklings.

	ADDON_DIEBANDIT				= "SVM_12_ADDON_DIEBANDIT";				//I'll tear you to pieces, bandit!
	ADDON_DIRTYPIRATE			= "SVM_12_ADDON_DIRTYPIRATE";			//I'll tear you to pieces, pirate!

	RELMINE01			= "SVM_12_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_12_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_12_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_12_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_12_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_12_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_12_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_12_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_12_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_12_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_12_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_12_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_12_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_12_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_12_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_12_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_12_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_12_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_12_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_12_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_12_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_12_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_12_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_12_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_12_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_12_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_12_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_12_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_12_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_12_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_12_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_12_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_12_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_12_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_12_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_12_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_12_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_12_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_12_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_12_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_12_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_12_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_12_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_12_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_12_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_12_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_12_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_12_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_12_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_12_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_12_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_12_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_12_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_12_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_12_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_12_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_12_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_13 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_13_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_13_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_13_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_13_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_13_Weather"					;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_13_IGetYouStill"				;//Now I've got you!
	DieEnemy					=	"SVM_13_DieEnemy"					;//I'm gonna rip you to pieces!
	DieMonster					=	"SVM_13_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_13_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_13_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_13_SheepKiller"				;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_13_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_13_YouMurderer"				;//Murderer!
	DieStupidBeast				=	"SVM_13_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_13_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_13_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_13_ThenIBeatYouOutOfHere"		;//You don't want to go? All right!
	WhatDidYouDoInThere			=	"SVM_13_WhatDidYouDoInThere"		;//What did you want in there?
	WillYouStopFighting			=	"SVM_13_WillYouStopFighting"		;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_13_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_13_EnemyKilled"				;//You deserved that, lowlife!
	MonsterKilled				=	"SVM_13_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_13_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_13_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_13_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_13_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_13_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_13_NeverHitMeAgain"			;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_13_YouBetterShouldHaveListened";//You should have listened to me!
	GetUpAndBeGone				=	"SVM_13_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_13_NeverEnterRoomAgain"		;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_13_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_13_RunAway"					;//Oh, shit!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_13_Alarm"					;//ALARM!
	Berzerk						=	"SVM_13_Berzerk"						;//UUAAARRGGGHHHH!!!!
	Guards						=	"SVM_13_Guards"					;//GUARDS!
	Help						=	"SVM_13_Help"					;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_13_GoodMonsterKill"		;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_13_GoodKill"				;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_13_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_13_RunCoward"				;//(calls loudly) Yes! Run as fast as you can!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_13_GetOutOfHere"			;//Get out of here!
	WhyAreYouInHere				=	"SVM_13_WhyAreYouInHere"		;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_13_YesGoOutOfHere"			;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_13_WhatsThisSupposedToBe"	;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_13_YouDisturbedMySlumber"	;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_13_ITookYourGold"			;//Thanks for the gold, you hero!
	ShitNoGold					=	"SVM_13_ShitNoGold"				;//You poor sucker, you don't even have any gold on you!
	ITakeYourWeapon				=	"SVM_13_ITakeYourWeapon"		;//I think I had better take this weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_13_WhatAreYouDoing"		;//(warning) Watch it! One more time, and I'll slug you one.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_13_LookingForTroubleAgain"	;//Haven't you had enough yet?
	StopMagic					=	"SVM_13_StopMagic"				;//Cut out this magic crap!
	ISaidStopMagic				=	"SVM_13_ISaidStopMagic"			;//Want a licking? Stop it this instant!!!
	WeaponDown					=	"SVM_13_WeaponDown"				;//Put away that weapon!
	ISaidWeaponDown				=	"SVM_13_ISaidWeaponDown"		;//Will you put away that damn weapon!
	WiseMove					=	"SVM_13_WiseMove"				;//Smart kid!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_13_NextTimeYoureInForIt"	;//(to himself) Well, we'll see the next time ...
	OhMyHead					=	"SVM_13_OhMyHead"				;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_13_TheresAFight"			;//(eagerly) Aah, a fight!
	OhMyGodItsAFight			=	"SVM_13_OhMyGodItsAFight"		;//(dismayed) Oh my God, a fight!
	GoodVictory					=	"SVM_13_GoodVictory"			;//(evil laugh) You showed him who's boss!
	NotBad						= 	"SVM_13_NotBad"					;//(approvingly) Not bad ...
	OhMyGodHesDown				=	"SVM_13_OhMyGodHesDown"			;//(to himself) My God! How brutal...
	CheerFriend01				=	"SVM_13_CheerFriend01"			;//Hit, then!
	CheerFriend02				=	"SVM_13_CheerFriend02"			;//Give it your all!
	CheerFriend03				=	"SVM_13_CheerFriend03"			;//Show him!
	Ooh01						=	"SVM_13_Ooh01"					;//Hang on!
	Ooh02						=	"SVM_13_Ooh02"					;//Watch out!
	Ooh03						=	"SVM_13_Ooh03"					;//Wow! That hit the spot!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_13_WhatWasThat"				;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_13_GetOutOfMyBed"			;//Find your own bed!
	Awake						= "SVM_13_Awake"					;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_13_TOUGHGUY_ATTACKLOST"		;//All right, all right, you're the better fighter. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_13_TOUGHGUY_ATTACKWON"		;//(smugly) I assume that, by now, you are well aware which of us is stronger ... What do you want?
	TOUGHGUY_PLAYERATTACK		= "SVM_13_TOUGHGUY_PLAYERATTACK"	;//I thought you were trying to pick a fight with me. Did you change your mind? You prefer TALKING, right? (laughs)
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_13_GOLD_1000"				;//1000 gold pieces.
	GOLD_950					= "SVM_13_GOLD_950"					;//950 gold pieces.
	GOLD_900					= "SVM_13_GOLD_900"					;//900 gold pieces.
	GOLD_850					= "SVM_13_GOLD_850"					;//850 gold pieces.
	GOLD_800					= "SVM_13_GOLD_800"					;//800 gold pieces.
	GOLD_750					= "SVM_13_GOLD_750"					;//750 gold pieces.
	GOLD_700					= "SVM_13_GOLD_700"					;//700 gold pieces.
	GOLD_650					= "SVM_13_GOLD_650"					;//650 gold pieces.
	GOLD_600					= "SVM_13_GOLD_600"					;//600 gold pieces.
	GOLD_550					= "SVM_13_GOLD_550"					;//550 gold pieces.
	GOLD_500					= "SVM_13_GOLD_500"					;//500 gold pieces.
	GOLD_450					= "SVM_13_GOLD_450"					;//450 gold pieces.
	GOLD_400					= "SVM_13_GOLD_400"					;//400 gold pieces.
	GOLD_350					= "SVM_13_GOLD_350"					;//350 gold pieces.
	GOLD_300					= "SVM_13_GOLD_300"					;//300 gold pieces.
	GOLD_250					= "SVM_13_GOLD_250"					;//250 gold pieces.
	GOLD_200					= "SVM_13_GOLD_200"					;//200 gold pieces.
	GOLD_150					= "SVM_13_GOLD_150"					;//150 gold pieces.
	GOLD_100					= "SVM_13_GOLD_100"					;//100 gold pieces.
	GOLD_90						= "SVM_13_GOLD_90"					;//90 gold pieces.
	GOLD_80						= "SVM_13_GOLD_80"					;//80 gold pieces.
	GOLD_70						= "SVM_13_GOLD_70"					;//70 gold pieces.
	GOLD_60						= "SVM_13_GOLD_60"					;//60 gold pieces.
	GOLD_50						= "SVM_13_GOLD_50"					;//50 gold pieces.
	GOLD_40						= "SVM_13_GOLD_40"					;//40 gold pieces.
	GOLD_30						= "SVM_13_GOLD_30"					;//30 gold pieces.
	GOLD_20						= "SVM_13_GOLD_20"					;//20 gold pieces.
	GOLD_10						= "SVM_13_GOLD_10"					;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_13_Smalltalk01"				;//... I couldn't care less ...
	Smalltalk02					= "SVM_13_Smalltalk02"				;//... nobody wants to know ...
	Smalltalk03					= "SVM_13_Smalltalk03"				;//... it was his decision, wasn't it ...
	Smalltalk04					= "SVM_13_Smalltalk04"				;//... no idea, you tell me ...
	Smalltalk05					= "SVM_13_Smalltalk05"				;//... I'm staying out of it ...
	Smalltalk06					= "SVM_13_Smalltalk06"				;//... I've got no time for things like that ...
	Smalltalk07					= "SVM_13_Smalltalk07"				;//... I couldn't get away with that ...
	Smalltalk08					= "SVM_13_Smalltalk08"				;//... you don't have to tell me that ...
	Smalltalk09					= "SVM_13_Smalltalk09"				;//... been there, done that ...
	Smalltalk10					= "SVM_13_Smalltalk10"				;//... the things I could tell you ...
	Smalltalk11					= "SVM_13_Smalltalk11"				;//... you can't rely on that ...
	Smalltalk12					= "SVM_13_Smalltalk12"				;//... I used to say that myself ...
	Smalltalk13					= "SVM_13_Smalltalk13"				;//... and there's more, believe me ...
	Smalltalk14					= "SVM_13_Smalltalk14"				;//... same old thing all over again ...
	Smalltalk15					= "SVM_13_Smalltalk15"				;//... tell me that isn't true ...
	Smalltalk16					= "SVM_13_Smalltalk16"				;//... it had to happen sooner or later ...
	Smalltalk17					= "SVM_13_Smalltalk17"				;//... he really should have known better ...
	Smalltalk18					= "SVM_13_Smalltalk18"				;//... that will never change ...
	Smalltalk19					= "SVM_13_Smalltalk19"				;//... that's no secret ...
	Smalltalk20					= "SVM_13_Smalltalk20"				;//... that was no big deal ...
	Smalltalk21					= "SVM_13_Smalltalk21"				;//... he thinks it's as easy as that ...
	Smalltalk22					= "SVM_13_Smalltalk22"				;//... no-one really wants to hear that  ...
	Smalltalk23					= "SVM_13_Smalltalk23"				;//... and that's the truth ...
	Smalltalk24					= "SVM_13_Smalltalk24"				;//...you just have to listen ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                      
	Smalltalk25					= "SVM_13_Smalltalk25"				;//... things would have turned out differently if it hadn't been for us ...
	Smalltalk26					= "SVM_13_Smalltalk26"				;//... he simply needs to practice more ...
	Smalltalk27					= "SVM_13_Smalltalk27"				;//... what does he know about duty ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                      
	Smalltalk28					= "SVM_13_Smalltalk28"				;//... Innos deals out fair punishment ...
	Smalltalk29					= "SVM_13_Smalltalk29"				;//... the path of virtue is long and rocky ...
	Smalltalk30					= "SVM_13_Smalltalk30"				;//... only Innos decides what's right or wrong ...
	SmalltalkKhorataAnnaQuest01			= "SVM_13_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_13_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_13_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_13_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_13_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_13_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_13_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_13_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_13_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_13_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_13_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_13_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_13_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_13_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_13_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_13_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_13_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_13_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_13_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_13_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_13_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_13_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_13_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_13_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_13_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_13_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_13_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_13_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_13_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_13_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_13_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_13_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_13_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_13_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_13_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_13_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_13_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_13_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_13_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_13_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_13_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_13_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_13_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_13_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_13_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_13_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_13_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_13_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_13_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_13_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_13_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_13_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_13_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_13_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_13_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_13_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_13_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_13_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_13_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_13_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_13_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_13_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_13_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_13_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_13_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_13_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_13_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_13_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_13_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_13_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_13_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_13_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_13_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_13_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_13_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_13_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_13_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_13_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_13_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_13_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_13_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_13_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_13_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_13_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_13_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_13_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_13_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_13_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_13_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_13_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_13_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_13_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_13_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_13_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_13_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_13_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_13_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_13_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_13_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_13_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_13_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_13_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_13_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_13_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_13_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_13_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_13_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_13_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_13_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_13_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_13_Addon_WrongArmor";			//What kind of clothes are those? They don't suit you at all. Leave me alone.
	ADDON_WRONGARMOR_SLD		= "SVM_13_ADDON_WRONGARMOR_SLD";		//You aren't wearing your armor. Go and fetch it.
	ADDON_WRONGARMOR_MIL		= "SVM_13_ADDON_WRONGARMOR_MIL";		//You should be proud to wear the armor of the King, rather than running around in these rags. Now, go!
	ADDON_WRONGARMOR_KDF		= "SVM_13_ADDON_WRONGARMOR_KDF";		//Why aren't you wearing the clothing of our order? Go and think upon this.
	ADDON_NOARMOR_BDT			= "SVM_13_ADDON_ADDON_NOARMOR_BDT";		//You haven't even got any armor. Beat it!

	ADDON_DIEBANDIT				= "SVM_13_ADDON_DIEBANDIT";				//You filthy bandit!
	ADDON_DIRTYPIRATE			= "SVM_13_ADDON_DIRTYPIRATE";			//You miserable pirate!

	RELMINE01			= "SVM_13_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_13_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_13_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_13_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_13_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_13_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_13_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_13_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_13_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_13_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_13_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_13_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_13_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_13_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_13_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_13_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_13_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_13_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_13_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_13_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_13_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_13_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_13_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_13_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_13_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_13_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_13_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_13_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_13_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_13_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_13_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_13_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_13_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_13_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_13_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_13_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_13_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_13_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_13_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_13_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_13_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_13_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_13_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_13_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_13_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_13_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_13_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_13_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_13_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_13_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_13_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_13_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_13_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_13_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_13_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_13_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_13_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_14 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_14_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_14_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_14_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_14_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_14_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_14_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_14_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_14_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_14_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_14_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_14_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_14_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	Berzerk						=	"SVM_14_Berzerk"						;//UUAAARRGGGHHHH!!!!
	YouMurderer					=	"SVM_14_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_14_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_14_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_14_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_14_ThenIBeatYouOutOfHere"		;//Then I'll have to KNOCK you out of here!
	WhatDidYouDoInThere			=	"SVM_14_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_14_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_14_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_14_EnemyKilled"					;//So much for you, lowlife!
	MonsterKilled				=	"SVM_14_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_14_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_14_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_14_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_14_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_14_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_14_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_14_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_14_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_14_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_14_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_14_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_14_Alarm"						;//ALARM!
	Guards						=	"SVM_14_Guards"						;//GUARDS!
	Help						=	"SVM_14_Help"						;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_14_GoodMonsterKill"				;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_14_GoodKill"					;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_14_NOTNOW"						;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_14_RunCoward"					;//(calls loudly) Stop right there, you lowlife!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_14_GetOutOfHere"				;//Get out of here!
	WhyAreYouInHere				=	"SVM_14_WhyAreYouInHere"				;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_14_YesGoOutOfHere"				;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_14_WhatsThisSupposedToBe"		;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_14_YouDisturbedMySlumber"		;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_14_ITookYourGold"				;//Gold! OK, that's mine for starters ...
	ShitNoGold					=	"SVM_14_ShitNoGold"					;//You don't even have any gold on you?
	ITakeYourWeapon				=	"SVM_14_ITakeYourWeapon"				;//I think I'll take your weapon for safekeeping.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_14_WhatAreYouDoing"				;//(warning) Hey! Watch it!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_14_LookingForTroubleAgain"		;//(aggressively) Haven't you had enough yet?
	StopMagic					=	"SVM_14_StopMagic"					;//Just stay away from me with that magic of yours!
	ISaidStopMagic				=	"SVM_14_ISaidStopMagic"				;//Cut out that magic! Something wrong with your ears!?
	WeaponDown					=	"SVM_14_WeaponDown"					;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_14_ISaidWeaponDown"				;//Are you deaf or what? I said: Put down that weapon!
	WiseMove					=	"SVM_14_WiseMove"					;//See, that wasn't so hard.
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_14_NextTimeYoureInForIt"		;//(to himself) We'll see about that ...
	OhMyHead					=	"SVM_14_OhMyHead"					;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_14_TheresAFight"				;//(eagerly) And now for some action!
	OhMyGodItsAFight			=	"SVM_14_OhMyGodItsAFight"			;//(dismayed) They're smashing each other's skulls ...
	GoodVictory					=	"SVM_14_GoodVictory"					;//(evil laugh) He deserved that!
	NotBad						= 	"SVM_14_NotBad"						;//(approvingly) Not bad at all ...
	OhMyGodHesDown				=	"SVM_14_OhMyGodHesDown"				;//(to himself) What a brutal fellow ...
	CheerFriend01				=	"SVM_14_CheerFriend01"				;//Yeah, that's the ticket!
	CheerFriend02				=	"SVM_14_CheerFriend02"				;//Whatcha waiting for?
	CheerFriend03				=	"SVM_14_CheerFriend03"				;//Atta boy!
	Ooh01						=	"SVM_14_Ooh01"						;//Don't take any crap!
	Ooh02						=	"SVM_14_Ooh02"						;//Show him who's boss!
	Ooh03						=	"SVM_14_Ooh03"						;//Holy shit!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_14_WhatWasThat"					;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_14_GetOutOfMyBed"					;//Get out of my bed!
	Awake						= "SVM_14_Awake"							;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_14_TOUGHGUY_ATTACKLOST"			;//All right, all right, you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_14_TOUGHGUY_ATTACKWON"			;//(smugly) Do I have to show you again who's boss?
	TOUGHGUY_PLAYERATTACK		= "SVM_14_TOUGHGUY_PLAYERATTACK"			;//Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_14_GOLD_1000"						;//1000 gold pieces.
	GOLD_950					= "SVM_14_GOLD_950"						;//950 gold pieces.
	GOLD_900					= "SVM_14_GOLD_900"						;//900 gold pieces.
	GOLD_850					= "SVM_14_GOLD_850"						;//850 gold pieces.
	GOLD_800					= "SVM_14_GOLD_800"						;//800 gold pieces.
	GOLD_750					= "SVM_14_GOLD_750"						;//750 gold pieces.
	GOLD_700					= "SVM_14_GOLD_700"						;//700 gold pieces.
	GOLD_650					= "SVM_14_GOLD_650"						;//650 gold pieces.
	GOLD_600					= "SVM_14_GOLD_600"						;//600 gold pieces.
	GOLD_550					= "SVM_14_GOLD_550"						;//550 gold pieces.
	GOLD_500					= "SVM_14_GOLD_500"						;//500 gold pieces.
	GOLD_450					= "SVM_14_GOLD_450"						;//450 gold pieces.
	GOLD_400					= "SVM_14_GOLD_400"						;//400 gold pieces.
	GOLD_350					= "SVM_14_GOLD_350"						;//350 gold pieces.
	GOLD_300					= "SVM_14_GOLD_300"						;//300 gold pieces.
	GOLD_250					= "SVM_14_GOLD_250"						;//250 gold pieces.
	GOLD_200					= "SVM_14_GOLD_200"						;//200 gold pieces.
	GOLD_150					= "SVM_14_GOLD_150"						;//150 gold pieces.
	GOLD_100					= "SVM_14_GOLD_100"						;//100 gold pieces.
	GOLD_90						= "SVM_14_GOLD_90"						;//90 gold pieces.
	GOLD_80						= "SVM_14_GOLD_80"						;//80 gold pieces.
	GOLD_70						= "SVM_14_GOLD_70"						;//70 gold pieces.
	GOLD_60						= "SVM_14_GOLD_60"						;//60 gold pieces.
	GOLD_50						= "SVM_14_GOLD_50"						;//50 gold pieces.
	GOLD_40						= "SVM_14_GOLD_40"						;//40 gold pieces.
	GOLD_30						= "SVM_14_GOLD_30"						;//30 gold pieces.
	GOLD_20						= "SVM_14_GOLD_20"						;//20 gold pieces.
	GOLD_10						= "SVM_14_GOLD_10"						;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_14_Smalltalk01"					;//... I can't believe that ...
	Smalltalk02					= "SVM_14_Smalltalk02"					;//... I wouldn't be so sure ...
	Smalltalk03					= "SVM_14_Smalltalk03"					;//... but he knew that all along ...
	Smalltalk04					= "SVM_14_Smalltalk04"					;//... I hardly know what to believe anymore...
	Smalltalk05					= "SVM_14_Smalltalk05"					;//... I don't know why he gets so worked up ...
	Smalltalk06					= "SVM_14_Smalltalk06"					;//... I'm in enough trouble as it is ...
	Smalltalk07					= "SVM_14_Smalltalk07"					;//... I have heard a thing or two ...
	Smalltalk08					= "SVM_14_Smalltalk08"					;//... I'm not touching that ...
	Smalltalk09					= "SVM_14_Smalltalk09"					;//... you mustn't believe everything you hear ...
	Smalltalk10					= "SVM_14_Smalltalk10"					;//... he didn't get that from me ...
	Smalltalk11					= "SVM_14_Smalltalk11"					;//... I already thought as much ...
	Smalltalk12					= "SVM_14_Smalltalk12"					;//... nobody ever asks for my opinion ...
	Smalltalk13					= "SVM_14_Smalltalk13"					;//... he really didn't deserve that ...
	Smalltalk14					= "SVM_14_Smalltalk14"					;//... don't say you didn't know that ...
	Smalltalk15					= "SVM_14_Smalltalk15"					;//... that was quite obvious ...
	Smalltalk16					= "SVM_14_Smalltalk16"					;//... where did you pick that up then ...
	Smalltalk17					= "SVM_14_Smalltalk17"					;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_14_Smalltalk18"					;//... I've got my own opinion about that ...
	Smalltalk19					= "SVM_14_Smalltalk19"					;//... it was just like you said ...
	Smalltalk20					= "SVM_14_Smalltalk20"					;//... I don't believe this is going to change ...
	Smalltalk21					= "SVM_14_Smalltalk21"					;//... that's the first I've heard of it ...
	Smalltalk22					= "SVM_14_Smalltalk22"					;//... we can only wait and see ...
	Smalltalk23					= "SVM_14_Smalltalk23"					;//... I knew that would be a problem ...
	Smalltalk24					= "SVM_14_Smalltalk24"					;//... so why won't they listen to me ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                           
	Smalltalk25					= "SVM_14_Smalltalk25"					;//... he ran like Beliar himself was after him ...
	Smalltalk26					= "SVM_14_Smalltalk26"					;//... of course we got him after all ...
	Smalltalk27					= "SVM_14_Smalltalk27"					;//... you have to step in and sort things out ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                           
	Smalltalk28					= "SVM_14_Smalltalk28"					;//... some don't even know how wicked they are ...
	Smalltalk29					= "SVM_14_Smalltalk29"					;//... for that is the will of Innos ...
	Smalltalk30					= "SVM_14_Smalltalk30"					;//... his deeds were just ...
	SmalltalkKhorataAnnaQuest01			= "SVM_14_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_14_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_14_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_14_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_14_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_14_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_14_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_14_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_14_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_14_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_14_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_14_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_14_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_14_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_14_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_14_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_14_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_14_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_14_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_14_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_14_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_14_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_14_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_14_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_14_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_14_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_14_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_14_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_14_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_14_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_14_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_14_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_14_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_14_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_14_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_14_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_14_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_14_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_14_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_14_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_14_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_14_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_14_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_14_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_14_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_14_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_14_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_14_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_14_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_14_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_14_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_14_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_14_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_14_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_14_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_14_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_14_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_14_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_14_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_14_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_14_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_14_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_14_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_14_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_14_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_14_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_14_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_14_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_14_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_14_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_14_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_14_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_14_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_14_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_14_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_14_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_14_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_14_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_14_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_14_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_14_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_14_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_14_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_14_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_14_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_14_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_14_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_14_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_14_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_14_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_14_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_14_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_14_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_14_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_14_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_14_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_14_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_14_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_14_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_14_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_14_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_14_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_14_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_14_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_14_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_14_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_14_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_14_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_14_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_14_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_14_Addon_WrongArmor";			//Your clothes don't suit you. You must have something to hide. Leave me alone.
	ADDON_WRONGARMOR_SLD		= "SVM_14_ADDON_WRONGARMOR_SLD";		//If you want to talk to me, you have to wear our armor.
	ADDON_WRONGARMOR_MIL		= "SVM_14_ADDON_WRONGARMOR_MIL";		//Be proud of the army and don't run around in those rags. First, go change.
	ADDON_WRONGARMOR_KDF		= "SVM_14_ADDON_WRONGARMOR_KDF";		//Your clothing is not appropriate for our order. Go and change.
	ADDON_NOARMOR_BDT			= "SVM_14_ADDON_ADDON_NOARMOR_BDT";		//You haven't even got any armor. Beat it!

	ADDON_DIEBANDIT				= "SVM_14_ADDON_DIEBANDIT";				//Die, bandit.
	ADDON_DIRTYPIRATE			= "SVM_14_ADDON_DIRTYPIRATE";			//Die, pirate.

	RELMINE01			= "SVM_14_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_14_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_14_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_14_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_14_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_14_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_14_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_14_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_14_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_14_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_14_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_14_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_14_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_14_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_14_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_14_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_14_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_14_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_14_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_14_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_14_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_14_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_14_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_14_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_14_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_14_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_14_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_14_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_14_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_14_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_14_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_14_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_14_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_14_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_14_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_14_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_14_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_14_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_14_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_14_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_14_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_14_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_14_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_14_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_14_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_14_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_14_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_14_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_14_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_14_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_14_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_14_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_14_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_14_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_14_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_14_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_14_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

INSTANCE SVM_15	(C_SVM)		//	PLAYER	trocken,ernst
{
	// ------ Player-Only SVMs ---------------------------------------------------------------------
	SC_HeyTurnAround		= 	"SVM_15_SC_HeyTurnAround"			;//Hey you!
	SC_HeyTurnAround02		= 	"SVM_15_SC_HeyTurnAround02"			;//Hey you!
	SC_HeyTurnAround03		= 	"SVM_15_SC_HeyTurnAround03"			;//Hey!
	SC_HeyTurnAround04		= 	"SVM_15_SC_HeyTurnAround04"			;//Hey!
	
	SC_HeyWaitASecond		= 	"SVM_15_SC_HeyWaitASecond"			;//Wait a minute!

	DoesntWork				= 	"SVM_15_DoesntWork"					;//Doesn't work
	PickBroke				= 	"SVM_15_PickBroke"					;//Hm, it broke.
	NeedKey					= 	"SVM_15_NeedKey"					;//I need the key for that ...
	NoMorePicks				= 	"SVM_15_NoMorePicks"				;//No more lockpicks ...
	NoPickLockTalent		= 	"SVM_15_NoPickLockTalent"			;//I know nothing about picking locks.
	NoSweeping				= 	"SVM_15_NoSweeping"					;//Sweeping all the chambers will take forever!
	
	PICKLOCKORKEYMISSING	= 	"SVM_15_PICKLOCKORKEYMISSING"		;//Hm ... I don't have a lock pick or the key.
	KEYMISSING				= 	"SVM_15_KEYMISSING"					;//I'll never get this open without the right key!
	PICKLOCKMISSING			= 	"SVM_15_PICKLOCKMISSING"			;//A few lock picks would be helpful!
	NEVEROPEN				= 	"SVM_15_NEVEROPEN"					;//I'll never be able to open this thing!
	MISSINGITEM				= 	"SVM_15_MISSINGITEM"				;//What with?
	DONTKNOW				= 	"SVM_15_DONTKNOW"					;//Hmm ... No ...
	NOTHINGTOGET			= 	"SVM_15_NOTHINGTOGET"				;//Nothing to be had there ...
	NOTHINGTOGET02			= 	"SVM_15_NOTHINGTOGET02"				;//Nothing there ...
	NOTHINGTOGET03			= 	"SVM_15_NOTHINGTOGET03"				;//Nothing to plunder ...
	
	// ------ sonstige SVMs -------------------------------------------------------------------------
	Aargh_1					=	"SVM_15_Aargh_1"					;//Aargh
	Aargh_2					=	"SVM_15_Aargh_2"					;//Aargh
	Aargh_3					=	"SVM_15_Aargh_3"					;//Aargh
	Dead					=	"SVM_15_Dead"						;//Aaargl
	Awake					=	"SVM_15_Awake"						;//(wakes up)
	
	// ------ Story SVMs ----------------------------------------------------------------------------
	
	IRDORATHTHEREYOUARE		= 	"SVM_15_IRDORATHTHEREYOUARE"		;//Mmh. So that's where you're hiding out. Damn far away. Mmh. I'll need a ship to get there.
	HEALSHRINE				= 	"SVM_15_HEALSHRINE"					;//Innos, grant me your aid and purify this shrine.
	HEALLASTSHRINE			= 	"SVM_15_HEALLASTSHRINE"				;//Innos, grant me your aid and all that ... There. That ought to be the last time.
	SCOPENSIRDORATHBOOK		= 	"SVM_15_SCOPENSIRDORATHBOOK"		;//XARAK BENDARDO! Ah. The book's open. There's a letter and a key hidden inside.
	SCOPENSLASTDOOR			= 	"SVM_15_SCOPENSLASTDOOR"			;//Open up!

	//---------Addon SVMs----------------------------------------------------------------------------
	//ADDON>
	TRADE_1					= 	"SVM_15_Addon_TRADE_1"					;//Let's deal.
	TRADE_2					= 	"SVM_15_Addon_TRADE_2"					;//Show me your wares.
	TRADE_3					=	"SVM_15_Addon_TRADE_3"					;//Show me what you have.
	
	VERSTEHE				=   "SVM_15_Addon_VERSTEHE"					;//I see.
	FOUNDTREASURE			=   "SVM_15_Addon_FOUNDTREASURE"			;//Ah. I think I've found something.
	CANTUNDERSTANDTHIS		=   "SVM_15_Addon_CANTUNDERSTANDTHIS"		;//I don't understand...
	CANTREADTHIS			= 	"SVM_15_Addon_CANTREADTHIS"				;//I can't read that!
	STONEPLATE_1			= 	"SVM_15_Addon_STONEPLATE_1"				;//AKHANTAR!
	STONEPLATE_2			= 	"SVM_15_Addon_STONEPLATE_2"				;//JHERHEDRA!
	STONEPLATE_3			= 	"SVM_15_Addon_STONEPLATE_3"				;//URIZIEL RATIS!
		
	COUGH					=   "SVM_15_Addon_COUGH"					;//(cough) Oh, man. Brrr!!
	HUI						=	"SVM_15_Addon_HUI"						;//Oh oh oh!
	
	ATTENTAT_ADDON_DESCRIPTION	=	"SVM_15_ATTENTAT_ADDON_DESCRIPTION"		;//What do you know about the attempt on Esteban's life?
	ATTENTAT_ADDON_DESCRIPTION2 = 	"SVM_15_ATTENTAT_ADDON_DESCRIPTION2"	;//About the attack on Esteban...
	ATTENTAT_ADDON_PRO			=	"SVM_15_ATTENTAT_ADDON_PRO"				;//I'll kill those traitors.
	ATTENTAT_ADDON_CONTRA		=	"SVM_15_ATTENTAT_ADDON_CONTRA"			;//I'm looking for those guys so I can move against Esteban.
	
	MINE_ADDON_DESCRIPTION		=	"SVM_15_MINE_ADDON_DESCRIPTION"		;//You're needed in the mine.
	ADDON_SUMMONANCIENTGHOST	=	"SVM_15_ADDON_SUMMONANCIENTGHOST"	;//Ighoriat Thorul. Appear to me, Quarhodron, ancient leader of the warrior caste!
	ADDON_ANCIENTGHOST_NOTNEAR	=	"SVM_15_ADDON_ANCIENTGHOST_NOTNEAR"	;//Mmh... That doesn't work here.
	ADDON_GOLD_DESCRIPTION		=	"SVM_15_ADDON_GOLD_DESCRIPTION"		;//What do I have to know about mining gold?
	
	ADDON_THISLITTLEBASTARD		=   "SVM_15_Addon_ThisLittleBastard";		//Aha. Francis' paybook. The man seems to have finagled a lot of gold into his own pockets.
	ADDON_OPENADANOSTEMPLE		=   "SVM_15_Addon_OPENADANOSTEMPLE";		//JHERHEDRA AKHANTAR!

	//ADDON<

	// MOD

	WHOAREYOU = "SVM_15_WerBistDu";				//Who are you?
	MATTEOPAPER = "SVM_15_Flugblatt";			//I've got a flyer for you.
	WANNAMARRY = "SVM_15_WannaMarry";			//Will you marry me?
	HAVEFREUDENSPENDER = "SVM_15_HAVEFREUDENSPENDER";	//I've got a bottle of pleasure for you.
	NO = "SVM_15_No";					//No.
	HIERNIMM = "SVM_15_HierNimm";				//Here, take this.
	HIER = "SVM_15_Hier";					//Here.
	XERESISTIMMORTAL = "SVM_15_XERESISTIMMORTAL";		//Damn, it won't get damaged.
	READZETTEL = "SVM_15_READZETTEL";			//I'd better read this.
	WIESONICHT = "SVM_15_WIESONICHT";			//Why not?
	WASMACHENWIRJETZT = "SVM_15_WASMACHENWIRJETZT";		//What do we do now?
	WASISTDENNHIERLOS = "SVM_15_WASISTDENNHIERLOS";		//What's going on here?
	WASMEINSTDU = "SVM_15_WASMEINSTDU";			//What do you think?
	WASISTDENN = "SVM_15_WASISTDENN";			//What's the matter?
	WASISTDAS = "SVM_15_WASISTDAS";				//What's this?
	WASISTZUTUN = "SVM_15_WASISTZUTUN";			//What is to be done?
	WIESOLLICHVORGEHEN = "SVM_15_WIESOLLICHVORGEHEN";	//What should I do?
	KANNSTDUMIRWASBEIBRINGEN = "SVM_15_KANNSTDUMIRWASBEIBRINGEN";	//Can you teach me something?
	WOFINDEICHIHN = "SVM_15_WOFINDEICHIHN";			//Where can I find him?
	WASMACHSTDUHIER = "SVM_15_WASMACHSTDUHIER";		//What are you doing here?

	ALTERWALDMANN01 = "SVM_15_ALTERWALDMANN01";	//Hey, do you happen to know anything about a keeper of the animals and the forest who's supposed to be living in the woods around Khorata?
	ALTERWALDMANN02 = "SVM_15_ALTERWALDMANN02";	//Can you tell me something about the old man of the forest?
	ALTERWALDMANN03 = "SVM_15_ALTERWALDMANN03";	//Do you know anything about the old man of the forest?
	ALTERWALDMANN04 = "SVM_15_ALTERWALDMANN04";	//What do you know about the old man of the forest?
	ALTERWALDMANN05 = "SVM_15_ALTERWALDMANN05";	//Can you tell me something about the old man of the forest?

	IRDORATHGEHTLOS = "SVM_15_IRDORATHGEHTLOS";	//Let's get going. Will you escort me to the island?
	IRDORATHGEHBACK = "SVM_15_IRDORATHGEHBACK";	//Go back to the ship.
	IRDORATHGEHBACK = "SVM_15_IRDORATHNOWAY";	//Hmm, this is the end of the line. Whether something can be moved with the two levers?
	IRDORATHGEHBACK = "SVM_15_IRDORATHHEBEL";	//Can you use one lever while I move the other?
	IRDORATHGEHBACK = "SVM_15_IRDORATHHEBELPROBLEM";	//Damn it. I had already moved the other lever upwards. Without the help of a companion, it won't work.


	// Kommentare zum R�ben ziehen

	RUEBE01_01	=	"SVM_15_RUEBE01_01";	//This turnip's still too tight.
	RUEBE01_02	=	"SVM_15_RUEBE01_02";	//I'd rather try somewhere else.
	RUEBE01_03	=	"SVM_15_RUEBE01_03";	//It won't work here.
	RUEBE02	=	"SVM_15_RUEBE02";	//This turnip's still too tight.
	RUEBE03	=	"SVM_15_RUEBE03";	//I can pull a thousand times, the carrot's still stuck.
	RUEBE04_01	=	"SVM_15_RUEBE04_01";	//Something's shaking.
	RUEBE04_02	=	"SVM_15_RUEBE04_02";	//It's easy to pull.
	RUEBE04_03	=	"SVM_15_RUEBE04_03";	//One less.


	// Kommentar zum Umsehen

	LOOKFORSOMETHING	=	"SVM_15_LOOKFORSOMETHING";	//I'd better take another look around.

	// Blubber f�r den g�ttlichen Boten (Hund Adanos bzw. Baal Netbek)

	GODLYBOTE01	=	"SVM_15_GODLYBOTE01";	//Uh, I don't think you're the one I want to talk to.
	GODLYBOTE02	=	"SVM_15_GODLYBOTE02";	//Uh, by any chance are you a divine messenger?

	// Kommentar, wenn Alvars Kristall gefunden wird

	ALVARKRISTALL01	=	"SVM_15_ALVARKRISTALL01";	//Well, what do we have here...
	ALVARKRISTALL02	=	"SVM_15_ALVARKRISTALL02";	//There you go, a beautiful magical crystal.
	ALVARKRISTALL03	=	"SVM_15_ALVARKRISTALL03";	//That... that's not possible. How can people be so blind? But... what is that?

	// Kommentar, wenn Buch �ber Eriskult gelesen

	ERISKULTBUCH01	=	"SVM_15_ERISKULTBUCH01";	//Well, that explains a lot, of course. Then I guess I'll have to recover the crystal.... Hmm, whether the explanations at the end might also be helpful when haggling....

	// Kommentar zum B�cherregal

	BUECHERREGALFINDPAPER	=	"SVM_15_BUECHERREGALFINDPAPER";	//Ah, here's some paper...
	BUECHERREGALNO		=	"SVM_15_BUECHERREGALNO";	//I already searched it.
	BUECHERREGALNOTHING	=	"SVM_15_BUECHERREGALNOTHING";	//Just dust and old books...

	// Faule �pfel unterjubeln

	PLACEAPFEL01	=	"SVM_15_PLACEAPFEL01";	//Did something just move under your feet?
	PLACEAPFEL02	=	"SVM_15_PLACEAPFEL02";	//Oh, that was nothing.
	PLACEAPFEL03	=	"SVM_15_PLACEAPFEL03";	//Hey, ain't they looking for him over there?
	PLACEAPFEL04	=	"SVM_15_PLACEAPFEL04";	//Oh, I must have mistaken him.
	PLACEAPFEL05	=	"SVM_15_PLACEAPFEL05";	//Nice apples you have there...

	// Gr�ne Erzader hacken

	NOHACKE		=	"SVM_15_NOHACKE";	//Oops, where did my hoe go? I guess I'll have to get another one.
	HACKESCHLECHT	=	"SVM_15_HACKESCHLECHT";	//Uh-huh. That stuff is hard. I don't think that's a good hoe. Maybe I should talk to a blacksmith.

	// Wenn Fokus nicht einsetzbar

	FOKUSNICHTEINSETZEN		=	"SVM_15_FOKUSNICHTEINSETZEN";	//I should talk to Saturas first.

	// Plagenquest

	PLAGENQUEST01	=	"SVM_15_PLAGENQUEST01";	//Seems to me you need an exterminator.
	PLAGENQUEST02	=	"SVM_15_PLAGENQUEST02";	//Are there any clues as to the causes?
	PLAGENQUEST03	=	"SVM_15_PLAGENQUEST03";	//Can I be of any use until then?
	PLAGENQUEST04	=	"SVM_15_PLAGENQUEST04";	//... and now the plague has returned. How did they become her master back then?
	PLAGENQUEST05	=	"SVM_15_PLAGENQUEST05";	//The chemical club?
	PLAGENQUEST06	=	"SVM_15_PLAGENQUEST06";	//And is such a club still in your possession?
	PLAGENQUEST07	=	"SVM_15_PLAGENQUEST07";	//Can I see them?
	PLAGENQUEST08	=	"SVM_15_PLAGENQUEST08";	//Hm...
	PLAGENQUEST09	=	"SVM_15_PLAGENQUEST09";	//I'd have to get the raw materials I need.
	PLAGENQUEST10	=	"SVM_15_PLAGENQUEST10";	//The club was able to stop the insects. I defeated them all.
	PLAGENQUEST11	=	"SVM_15_PLAGENQUEST11";	//The first step?
	PLAGENQUEST12	=	"SVM_15_PLAGENQUEST12";	//Big bug? Then I may go on the search....
	PLAGENQUEST13	=	"SVM_15_PLAGENQUEST13";	//Yes?
	PLAGENQUEST14	=	"SVM_15_PLAGENQUEST14";	//Uh-huh. But what gives you the certainty that he really is a descendant? I mean, after so many centuries...
	PLAGENQUEST15	=	"SVM_15_PLAGENQUEST15";	//Yes?
	PLAGENQUEST16	=	"SVM_15_PLAGENQUEST16";	//Hmph...
	PLAGENQUEST17	=	"SVM_15_PLAGENQUEST17";	//It is done. The giant bow is defeated.

	// Herobotquest

	HEROBOTQUEST01	=	"SVM_15_HEROBOTQUEST01";	//What's happening?
	HEROBOTQUEST02	=	"SVM_15_HEROBOTQUEST02";	//Then Andre is dead...

	// Ambis der Schwarzen Novizen

	AMBISNOV01	=	"SVM_15_AMBISNOV01";	//Who's in charge here?
	AMBISNOV03	=	"SVM_15_AMBISNOV03";	//What are the places of interest?
	AMBISNOV04	=	"SVM_15_AMBISNOV04";	//Has anything interesting happened lately?

	// Gespr�ch mit Sch�rfern wegen "�rger im Kessel"

	KESSELPROBLEM01	=	"SVM_15_KESSELPROBLEM01";	//Hey, I heard wild animals threaten you and one of you was killed.
	KESSELPROBLEM02	=	"SVM_15_KESSELPROBLEM02";	//And nobody noticed anything?
	KESSELPROBLEM03	=	"SVM_15_KESSELPROBLEM03";	//What?!

	// Anschlagtafel-Gespr�che

	ANSCHLAGTAFEL01	=	"SVM_15_ANSCHLAGTAFEL01";	//I saw your poster on the billboard...
	ANSCHLAGTAFEL02	=	"SVM_15_ANSCHLAGTAFEL02";	//I'll get you the things.

	// Held probiert Sachen f�r Bierhexen-Quest

	SCHMECKTNORMAL	=	"SVM_15_SCHMECKTNORMAL";	//It's quite normal, I think.
	SCHMECKTECKLIG	=	"SVM_15_SCHMECKTECKLIG";	//By Adanos, that's disgusting!

	// Held sollte eingesammeltes Item benutzen

	SHOULDUSE	=	"SVM_15_SHOULDUSE";	//I should have a closer look!

	// Held kennt Chromanin-R�tsel aus Vorg�nger

	KNOWSRIDDLER	=	"SVM_15_KNOWSRIDDLER";	//Somehow this seems familiar...

	// Held riecht Tabak von Jackal

	SMELLTABAK	=	"SVM_15_SMELLTABAK";	//Here it smells like vanilla and saffron.

	// Schl�sser knacken

	PICKLOCKFAILURE	=	"SVM_15_PICKLOCKFAILURE";	//Shit, it broke off....
	PICKLOCKBROKEN	=	"SVM_15_PICKLOCKBROKEN";	//f--- from the beginning.

	// B�cher nicht lesen k�nnen

	BOOKSTANDNOTREADABLE01	=	"SVM_15_BOOKSTANDNOTREADABLE01";	//I cannot decipher these characters.
	BOOKSTANDNOTREADABLE02	=	"SVM_15_BOOKSTANDNOTREADABLE02";	//There's a worm in here. The bookworm.
	BOOKSTANDNOTREADABLE03	=	"SVM_15_BOOKSTANDNOTREADABLE03";	//Tales of the gods
	BOOKSTANDNOTREADABLE04	=	"SVM_15_BOOKSTANDNOTREADABLE04";	//Texts about great magicians and wise men
	BOOKSTANDNOTREADABLE05	=	"SVM_15_BOOKSTANDNOTREADABLE05";	//The fauna and flora
	BOOKSTANDNOTREADABLE06	=	"SVM_15_BOOKSTANDNOTREADABLE06";	//Creatures of Magic 
	BOOKSTANDNOTREADABLE07	=	"SVM_15_BOOKSTANDNOTREADABLE07";	//Undead and Demonic Creatures
	BOOKSTANDNOTREADABLE08	=	"SVM_15_BOOKSTANDNOTREADABLE08";	//Great battles
	BOOKSTANDNOTREADABLE09	=	"SVM_15_BOOKSTANDNOTREADABLE09";	//The magic world in between
	BOOKSTANDNOTREADABLE10	=	"SVM_15_BOOKSTANDNOTREADABLE10";	//Large banquets and festivals
	BOOKSTANDNOTREADABLE11	=	"SVM_15_BOOKSTANDNOTREADABLE11";	//Tales and stories
	BOOKSTANDNOTREADABLE12	=	"SVM_15_BOOKSTANDNOTREADABLE12";	//Old traditions
	BOOKSTANDNOTREADABLE13	=	"SVM_15_BOOKSTANDNOTREADABLE13";	//Something about case law and the law
	BOOKSTANDNOTREADABLE14	=	"SVM_15_BOOKSTANDNOTREADABLE14";	//Something about social order and togetherness

	// Taschendiebstahl

	PICKPOCKET_BESCHIMPFEN	=	"SVM_15_PICKPOCKET_BESCHIMPFEN";	//Fuck you. Fuck you.
	PICKPOCKET_BESTECHUNG	=	"SVM_15_PICKPOCKET_BESTECHUNG";		//Is there any way we can get this misunderstanding out of the way?
	PICKPOCKET_HERAUSREDEN	=	"SVM_15_PICKPOCKET_HERAUSREDEN";	//I have no idea what you mean.
};

instance SVM_16 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_16_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_16_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_16_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_16_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_16_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_16_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_16_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_16_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_16_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_16_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_16_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_16_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_16_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_16_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_16_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_16_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_16_ThenIBeatYouOutOfHere"		;//Then I'll have to KNOCK you out of here!
	WhatDidYouDoInThere			=	"SVM_16_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_16_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_16_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_16_EnemyKilled"				;//So much for you, lowlife!
	MonsterKilled				=	"SVM_16_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_16_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_16_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_16_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_16_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_16_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_16_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_16_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_16_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_16_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_16_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_16_RunAway"						;//I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_16_Alarm"					;//ALARM!
	Guards						=	"SVM_16_Guards"					;//GUARDS!
	Help						=	"SVM_16_Help"					;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_16_GoodMonsterKill"			;//(calls) Well done!
	GoodKill					= 	"SVM_16_GoodKill"				;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_16_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_16_RunCoward"				;//(calls loudly) Stop right there, you coward!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_16_GetOutOfHere"			;//Get out of here!
	WhyAreYouInHere				=	"SVM_16_WhyAreYouInHere"		;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_16_YesGoOutOfHere"			;//Yeah, make yourself scarce!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_16_WhatsThisSupposedToBe"	;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_16_YouDisturbedMySlumber"	;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_16_ITookYourGold"			;//Thanks for the gold, you hero!
	ShitNoGold					=	"SVM_16_ShitNoGold"				;//You poor sucker, you don't even have any gold on you!
	ITakeYourWeapon				=	"SVM_16_ITakeYourWeapon"			;//I think I had better take this weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_16_WhatAreYouDoing"			;//(warning) Watch it! One more time, and I'll slug you one.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_16_LookingForTroubleAgain"	;//Haven't you had enough yet?
	StopMagic					=	"SVM_16_StopMagic"				;//Cut out this magic crap!
	ISaidStopMagic				=	"SVM_16_ISaidStopMagic"			;//Want a licking? Stop it this instant!!!
	WeaponDown					=	"SVM_16_WeaponDown"				;//Put away that weapon!
	ISaidWeaponDown				=	"SVM_16_ISaidWeaponDown"		;//Will you put away that damn weapon!
	WiseMove					=	"SVM_16_WiseMove"				;//Smart kid!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_16_NextTimeYoureInForIt"	;//(to himself) Well, we'll see the next time ...
	OhMyHead					=	"SVM_16_OhMyHead"				;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_16_TheresAFight"			;//(eagerly) Aah, a fight!
	OhMyGodItsAFight			=	"SVM_16_OhMyGodItsAFight"		;//(dismayed) Oh my God, a fight!
	GoodVictory					=	"SVM_16_GoodVictory"			;//(evil laugh) You showed him who's boss!
	NotBad						= 	"SVM_16_NotBad"					;//(approvingly) Not bad ...
	OhMyGodHesDown				=	"SVM_16_OhMyGodHesDown"			;//(to himself) My God! How brutal...
	CheerFriend01				=	"SVM_16_CheerFriend01"			;//Slug him!
	CheerFriend02				=	"SVM_16_CheerFriend02"			;//Show him!
	CheerFriend03				=	"SVM_16_CheerFriend03"			;//Finish him!
	Ooh01						=	"SVM_16_Ooh01"					;//Hit back!
	Ooh02						=	"SVM_16_Ooh02"					;//Watch out, then!
	Ooh03						=	"SVM_16_Ooh03"					;//Oh! That hurt!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_16_WhatWasThat"				;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_16_GetOutOfMyBed"			;//This is my bed!
	Awake						= "SVM_16_Awake"					;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_16_GOLD_1000"					;//1000 gold pieces.
	GOLD_950					= "SVM_16_GOLD_950"					;//950 gold pieces.
	GOLD_900					= "SVM_16_GOLD_900"					;//900 gold pieces.
	GOLD_850					= "SVM_16_GOLD_850"					;//850 gold pieces.
	GOLD_800					= "SVM_16_GOLD_800"					;//800 gold pieces.
	GOLD_750					= "SVM_16_GOLD_750"					;//750 gold pieces.
	GOLD_700					= "SVM_16_GOLD_700"					;//700 gold pieces.
	GOLD_650					= "SVM_16_GOLD_650"					;//650 gold pieces.
	GOLD_600					= "SVM_16_GOLD_600"					;//600 gold pieces.
	GOLD_550					= "SVM_16_GOLD_550"					;//550 gold pieces.
	GOLD_500					= "SVM_16_GOLD_500"					;//500 gold pieces.
	GOLD_450					= "SVM_16_GOLD_450"					;//450 gold pieces.
	GOLD_400					= "SVM_16_GOLD_400"					;//400 gold pieces.
	GOLD_350					= "SVM_16_GOLD_350"					;//350 gold pieces.
	GOLD_300					= "SVM_16_GOLD_300"					;//300 gold pieces.
	GOLD_250					= "SVM_16_GOLD_250"					;//250 gold pieces.
	GOLD_200					= "SVM_16_GOLD_200"					;//200 gold pieces.
	GOLD_150					= "SVM_16_GOLD_150"					;//150 gold pieces.
	GOLD_100					= "SVM_16_GOLD_100"					;//100 gold pieces.
	GOLD_90						= "SVM_16_GOLD_90"					;//90 gold pieces.
	GOLD_80						= "SVM_16_GOLD_80"					;//80 gold pieces.
	GOLD_70						= "SVM_16_GOLD_70"					;//70 gold pieces.
	GOLD_60						= "SVM_16_GOLD_60"					;//60 gold pieces.
	GOLD_50						= "SVM_16_GOLD_50"					;//50 gold pieces.
	GOLD_40						= "SVM_16_GOLD_40"					;//40 gold pieces.
	GOLD_30						= "SVM_16_GOLD_30"					;//30 gold pieces.
	GOLD_20						= "SVM_16_GOLD_20"					;//20 gold pieces.
	GOLD_10						= "SVM_16_GOLD_10"					;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_16_Smalltalk01"				;//... really? How interesting ...
	Smalltalk02					= "SVM_16_Smalltalk02"				;//... I don't believe that ...
	Smalltalk03					= "SVM_16_Smalltalk03"				;//... That's not what my husband thinks ...
	Smalltalk04					= "SVM_16_Smalltalk04"				;//... go away, don't tell me that ...
	Smalltalk05					= "SVM_16_Smalltalk05"				;//... honestly, I witnessed it myself ...
	Smalltalk06					= "SVM_16_Smalltalk06"				;//... you don't say ...
	Smalltalk07					= "SVM_16_Smalltalk07"				;//... don't tell this to anyone ...
	Smalltalk08					= "SVM_16_Smalltalk08"				;//... these are bad times ...
	Smalltalk09					= "SVM_16_Smalltalk09"				;//... who says things like that? ...
	Smalltalk10					= "SVM_16_Smalltalk10"				;//... if I hadn't seen it with my own eyes ...
	Smalltalk11					= "SVM_16_Smalltalk11"				;//... someone's got to do the work ...
	Smalltalk12					= "SVM_16_Smalltalk12"				;//... that's not what I heard ...
	Smalltalk13					= "SVM_16_Smalltalk13"				;//... now that's typical, isn't it ...
	Smalltalk14					= "SVM_16_Smalltalk14"				;//... he can't keep anything to himself ...
	Smalltalk15					= "SVM_16_Smalltalk15"				;//... he had better shut up ...
	Smalltalk16					= "SVM_16_Smalltalk16"				;//... and he works all day, too ...
	Smalltalk17					= "SVM_16_Smalltalk17"				;//... I can't take care of everything for everybody ...
	Smalltalk18					= "SVM_16_Smalltalk18"				;//... he simply talks too much ...
	Smalltalk19					= "SVM_16_Smalltalk19"				;//... that's an open secret ...
	Smalltalk20					= "SVM_16_Smalltalk20"				;//... everybody knows by now ...
	Smalltalk21					= "SVM_16_Smalltalk21"				;//... I won't tell her a thing from now on ...
	Smalltalk22					= "SVM_16_Smalltalk22"				;//... and it's going to get even worse ...
	Smalltalk23					= "SVM_16_Smalltalk23"				;//... but that's terrible ...
	Smalltalk24					= "SVM_16_Smalltalk24"				;//... that's what I've always said ...
	SmalltalkKhorataAnnaQuest01			= "SVM_16_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_16_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_16_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_16_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_16_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_16_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_16_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_16_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_16_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_16_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_16_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_16_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_16_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_16_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_16_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_16_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_16_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_16_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_16_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_16_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_16_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_16_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_16_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_16_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_16_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_16_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_16_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_16_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_16_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_16_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_16_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_16_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_16_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_16_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_16_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_16_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_16_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_16_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_16_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_16_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_16_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_16_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_16_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_16_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_16_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_16_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_16_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_16_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_16_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_16_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_16_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_16_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_16_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_16_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_16_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_16_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_16_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_16_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	// Khorinis

	SmalltalkRangar01			= "SVM_16_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_16_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_16_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_16_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_16_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_16_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_16_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_16_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_16_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_16_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_16_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_16_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_16_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_16_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_16_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_16_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_16_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_16_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_16_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_16_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_16_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_16_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_16_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_16_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_16_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_16_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_16_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_16_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_16_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_16_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_16_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_16_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_16_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_16_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_16_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_16_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_16_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_16_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_16_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_16_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_16_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_16_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_16_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_16_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_16_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_16_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_16_Addon_WrongArmor";				//Put on something decent. I don't want to see you like that.
	
	ADDON_DIEBANDIT				= "SVM_16_ADDON_DIEBANDIT";				//A BANDIT!
	ADDON_DIRTYPIRATE			= "SVM_16_ADDON_DIRTYPIRATE";			//A PIRATE!

	NoLearnGold			= "SVM_16_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_16_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_16_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_16_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_16_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_16_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_16_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_16_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_16_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_16_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_16_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_16_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_16_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_16_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_16_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_16_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_16_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_16_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_16_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_16_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_16_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_16_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_16_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_16_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_16_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_16_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_16_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_16_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_16_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_16_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_16_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_16_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_16_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_16_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_16_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_16_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_16_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_16_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_16_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_16_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_16_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_16_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_16_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_16_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_16_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_17 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_17_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_17_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_17_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_17_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_17_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_17_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_17_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_17_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_17_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_17_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_17_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_17_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_17_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_17_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_17_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_17_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_17_ThenIBeatYouOutOfHere"		;//Then I'll have to KNOCK you out of here!
	WhatDidYouDoInThere			=	"SVM_17_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_17_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_17_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_17_EnemyKilled"				;//So much for you, lowlife!
	MonsterKilled				=	"SVM_17_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_17_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_17_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_17_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_17_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_17_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_17_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_17_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_17_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_17_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_17_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_17_RunAway"						;//I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_17_Alarm"					;//ALARM!
	Guards						=	"SVM_17_Guards"					;//GUARDS!
	Help						=	"SVM_17_Help"					;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_17_GoodMonsterKill"			;//(calls) Well done!
	GoodKill					= 	"SVM_17_GoodKill"				;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_17_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_17_RunCoward"				;//(calls loudly) Stop right there, you coward!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_17_GetOutOfHere"			;//Get out of here!
	WhyAreYouInHere				=	"SVM_17_WhyAreYouInHere"		;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_17_YesGoOutOfHere"			;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_17_WhatsThisSupposedToBe"	;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_17_YouDisturbedMySlumber"	;//(wakes up) Wassup?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_17_ITookYourGold"			;//Thanks for the gold, you hero!
	ShitNoGold					=	"SVM_17_ShitNoGold"				;//You poor sucker, you don't even have any gold on you!
	ITakeYourWeapon				=	"SVM_17_ITakeYourWeapon"			;//I think I had better take this weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_17_WhatAreYouDoing"			;//(warning) Watch it! One more time, and I'll slug you one.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_17_LookingForTroubleAgain"	;//Haven't you had enough yet?
	StopMagic					=	"SVM_17_StopMagic"				;//Cut out this magic crap!
	ISaidStopMagic				=	"SVM_17_ISaidStopMagic"			;//Want a licking? Stop it this instant!!!
	WeaponDown					=	"SVM_17_WeaponDown"				;//Put away that weapon!
	ISaidWeaponDown				=	"SVM_17_ISaidWeaponDown"		;//Will you put away that damn weapon!
	WiseMove					=	"SVM_17_WiseMove"				;//Smart kid!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_17_NextTimeYoureInForIt"	;//(to himself) Well, we'll see the next time ...
	OhMyHead					=	"SVM_17_OhMyHead"				;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_17_TheresAFight"			;//(eagerly) Aah, a fight!
	OhMyGodItsAFight			=	"SVM_17_OhMyGodItsAFight"		;//(dismayed) Oh my God, a fight!
	GoodVictory					=	"SVM_17_GoodVictory"			;//(evil laugh) You showed him who's boss!
	NotBad						= 	"SVM_17_NotBad"					;//(approvingly) Not bad ...
	OhMyGodHesDown				=	"SVM_17_OhMyGodHesDown"			;//(to himself) My God! How brutal...
	CheerFriend01				=	"SVM_17_CheerFriend01"			;//Slug him!
	CheerFriend02				=	"SVM_17_CheerFriend02"			;//Show him!
	CheerFriend03				=	"SVM_17_CheerFriend03"			;//Finish him!
	Ooh01						=	"SVM_17_Ooh01"					;//Hit back!
	Ooh02						=	"SVM_17_Ooh02"					;//Watch out, then!
	Ooh03						=	"SVM_17_Ooh03"					;//Oh! That hurt!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_17_WhatWasThat"				;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_17_GetOutOfMyBed"			;//Get out of my bed!
	Awake						= "SVM_17_Awake"					;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_17_GOLD_1000"					;//1000 gold pieces.
	GOLD_950					= "SVM_17_GOLD_950"					;//950 gold pieces.
	GOLD_900					= "SVM_17_GOLD_900"					;//900 gold pieces.
	GOLD_850					= "SVM_17_GOLD_850"					;//850 gold pieces.
	GOLD_800					= "SVM_17_GOLD_800"					;//800 gold pieces.
	GOLD_750					= "SVM_17_GOLD_750"					;//750 gold pieces.
	GOLD_700					= "SVM_17_GOLD_700"					;//700 gold pieces.
	GOLD_650					= "SVM_17_GOLD_650"					;//650 gold pieces.
	GOLD_600					= "SVM_17_GOLD_600"					;//600 gold pieces.
	GOLD_550					= "SVM_17_GOLD_550"					;//550 gold pieces.
	GOLD_500					= "SVM_17_GOLD_500"					;//500 gold pieces.
	GOLD_450					= "SVM_17_GOLD_450"					;//450 gold pieces.
	GOLD_400					= "SVM_17_GOLD_400"					;//400 gold pieces.
	GOLD_350					= "SVM_17_GOLD_350"					;//350 gold pieces.
	GOLD_300					= "SVM_17_GOLD_300"					;//300 gold pieces.
	GOLD_250					= "SVM_17_GOLD_250"					;//250 gold pieces.
	GOLD_200					= "SVM_17_GOLD_200"					;//200 gold pieces.
	GOLD_150					= "SVM_17_GOLD_150"					;//150 gold pieces.
	GOLD_100					= "SVM_17_GOLD_100"					;//100 gold pieces.
	GOLD_90						= "SVM_17_GOLD_90"					;//90 gold pieces.
	GOLD_80						= "SVM_17_GOLD_80"					;//80 gold pieces.
	GOLD_70						= "SVM_17_GOLD_70"					;//70 gold pieces.
	GOLD_60						= "SVM_17_GOLD_60"					;//60 gold pieces.
	GOLD_50						= "SVM_17_GOLD_50"					;//50 gold pieces.
	GOLD_40						= "SVM_17_GOLD_40"					;//40 gold pieces.
	GOLD_30						= "SVM_17_GOLD_30"					;//30 gold pieces.
	GOLD_20						= "SVM_17_GOLD_20"					;//20 gold pieces.
	GOLD_10						= "SVM_17_GOLD_10"					;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_17_Smalltalk01"				;//... really? How interesting ...
	Smalltalk02					= "SVM_17_Smalltalk02"				;//... I don't believe that ...
	Smalltalk03					= "SVM_17_Smalltalk03"				;//... That's not what my husband thinks ...
	Smalltalk04					= "SVM_17_Smalltalk04"				;//... go away, don't tell me that ...
	Smalltalk05					= "SVM_17_Smalltalk05"				;//... honestly, I witnessed it myself ...
	Smalltalk06					= "SVM_17_Smalltalk06"				;//... you don't say ...
	Smalltalk07					= "SVM_17_Smalltalk07"				;//... don't tell this to anyone ...
	Smalltalk08					= "SVM_17_Smalltalk08"				;//... these are bad times ...
	Smalltalk09					= "SVM_17_Smalltalk09"				;//... who says things like that? ...
	Smalltalk10					= "SVM_17_Smalltalk10"				;//... if I hadn't seen it with my own eyes ...
	Smalltalk11					= "SVM_17_Smalltalk11"				;//... someone's got to do the work ...
	Smalltalk12					= "SVM_17_Smalltalk12"				;//... that's not what I heard ...
	Smalltalk13					= "SVM_17_Smalltalk13"				;//... now that's typical, isn't it ...
	Smalltalk14					= "SVM_17_Smalltalk14"				;//... he can't keep anything to himself ...
	Smalltalk15					= "SVM_17_Smalltalk15"				;//... he had better shut up ...
	Smalltalk16					= "SVM_17_Smalltalk16"				;//... and he works all day, too ...
	Smalltalk17					= "SVM_17_Smalltalk17"				;//... I can't take care of everything for everybody ...
	Smalltalk18					= "SVM_17_Smalltalk18"				;//... he simply talks too much ...
	Smalltalk19					= "SVM_17_Smalltalk19"				;//... that's an open secret ...
	Smalltalk20					= "SVM_17_Smalltalk20"				;//... everybody knows by now ...
	Smalltalk21					= "SVM_17_Smalltalk21"				;//... I won't tell her a thing from now on ...
	Smalltalk22					= "SVM_17_Smalltalk22"				;//... and it's going to get even worse ...
	Smalltalk23					= "SVM_17_Smalltalk23"				;//... but that's terrible ...
	Smalltalk24					= "SVM_17_Smalltalk24"				;//... that's what I've always said ...
	SmalltalkKhorataAnnaQuest01			= "SVM_17_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_17_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_17_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_17_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_17_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_17_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_17_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_17_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_17_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_17_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_17_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_17_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_17_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_17_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_17_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_17_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_17_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_17_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_17_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_17_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_17_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_17_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_17_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_17_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_17_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_17_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_17_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_17_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_17_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_17_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_17_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_17_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_17_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_17_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_17_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_17_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_17_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_17_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_17_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_17_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_17_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_17_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_17_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_17_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_17_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_17_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_17_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_17_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_17_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_17_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_17_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_17_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_17_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_17_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_17_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_17_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_17_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_17_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	// Khorinis

	SmalltalkRangar01			= "SVM_17_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_17_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_17_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_17_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_17_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_17_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_17_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_17_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_17_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_17_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_17_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_17_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_17_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_17_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_17_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_17_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_17_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_17_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_17_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_17_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_17_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_17_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_17_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_17_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_17_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_17_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_17_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_17_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_17_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_17_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_17_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_17_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_17_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_17_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_17_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_17_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_17_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_17_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_17_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_17_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_17_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_17_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_17_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_17_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_17_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_17_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------

	NoLearnGold			= "SVM_17_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_17_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_17_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_17_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_17_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_17_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_17_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_17_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_17_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_17_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_17_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_17_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_17_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_17_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_17_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_17_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_17_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_17_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_17_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_17_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_17_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_17_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_17_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_17_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_17_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_17_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_17_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_17_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_17_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_17_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_17_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_17_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_17_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_17_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_17_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_17_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_17_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_17_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_17_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_17_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_17_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_17_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_17_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_17_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_17_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
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
	DieEnemy     	= "SVM_19_DieEnemy"     	;//(hisses) There he is!
	RunCoward    	= "SVM_19_RunCoward"    	;//(hisses) We shall get you!
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
	SmalltalkDragon01	= "SVM_21_SmalltalkDragon01"; //Yeah, they ran like rabbits.
	SmalltalkDragon02	= "SVM_21_SmalltalkDragon02"; //The whole wool's really pounding my stomach, though.
	SmalltalkDragon03	= "SVM_21_SmalltalkDragon03"; //I hope I don't get constipation or heartburn.
	SmalltalkDragon04	= "SVM_21_SmalltalkDragon04"; //Some of the muddy puddle will help my digestion back up.
	SmalltalkDragon05	= "SVM_21_SmalltalkDragon05"; //The dog for dessert was pretty tough.
	SmalltalkDragon06	= "SVM_21_SmalltalkDragon06"; //The food is no longer what it was 5000 years ago.
	SmalltalkDragon07	= "SVM_21_SmalltalkDragon07"; //One of the dwarves actually shot an arrow in my paw.
	SmalltalkDragon08	= "SVM_21_SmalltalkDragon08"; //I roasted it once.
	SmalltalkDragon09	= "SVM_21_SmalltalkDragon09"; //The others ran away very quickly.
	SmalltalkDragon10	= "SVM_21_SmalltalkDragon10"; //Yes, after 5000 years of silence.
	SmalltalkDragon11	= "SVM_21_SmalltalkDragon11"; //He always had to talk in his sleep.
	SmalltalkDragon12	= "SVM_21_SmalltalkDragon12"; //And the poisonous creature that was guarding his eggs, we finally got rid of it.
	SmalltalkDragon13	= "SVM_21_SmalltalkDragon13"; //Yes, and thank the magic of this undead man.
	
};

INSTANCE SVM_22 (C_SVM)
{
	SmalltalkDragon01	= "SVM_22_SmalltalkDragon01"; //Yeah, they ran like rabbits.
	SmalltalkDragon02	= "SVM_22_SmalltalkDragon02"; //The whole wool's really pounding my stomach, though.
	SmalltalkDragon03	= "SVM_22_SmalltalkDragon03"; //I hope I don't get constipation or heartburn.
	SmalltalkDragon04	= "SVM_22_SmalltalkDragon04"; //Some of the muddy puddle will help my digestion back up.
	SmalltalkDragon05	= "SVM_22_SmalltalkDragon05"; //The dog for dessert was pretty tough.
	SmalltalkDragon06	= "SVM_22_SmalltalkDragon06"; //The food is no longer what it was 5000 years ago.
	SmalltalkDragon07	= "SVM_22_SmalltalkDragon07"; //One of the dwarves actually shot an arrow in my paw.
	SmalltalkDragon08	= "SVM_22_SmalltalkDragon08"; //I roasted it once.
	SmalltalkDragon09	= "SVM_22_SmalltalkDragon09"; //The others ran away very quickly.
	SmalltalkDragon10	= "SVM_22_SmalltalkDragon10"; //Yes, after 5000 years of silence.
	SmalltalkDragon11	= "SVM_22_SmalltalkDragon11"; //He always had to talk in his sleep.
	SmalltalkDragon12	= "SVM_22_SmalltalkDragon12"; //And the poisonous creature that was guarding his eggs, we finally got rid of it.
	SmalltalkDragon13	= "SVM_22_SmalltalkDragon13"; //Yes, and thank the magic of this undead man.
	
};

INSTANCE SVM_23 (C_SVM)
{
	SmalltalkDragon01	= "SVM_23_SmalltalkDragon01"; //Yeah, they ran like rabbits.
	SmalltalkDragon02	= "SVM_23_SmalltalkDragon02"; //The whole wool's really pounding my stomach, though.
	SmalltalkDragon03	= "SVM_23_SmalltalkDragon03"; //I hope I don't get constipation or heartburn.
	SmalltalkDragon04	= "SVM_23_SmalltalkDragon04"; //Some of the muddy puddle will help my digestion back up.
	SmalltalkDragon05	= "SVM_23_SmalltalkDragon05"; //The dog for dessert was pretty tough.
	SmalltalkDragon06	= "SVM_23_SmalltalkDragon06"; //The food is no longer what it was 5000 years ago.
	SmalltalkDragon07	= "SVM_23_SmalltalkDragon07"; //One of the dwarves actually shot an arrow in my paw.
	SmalltalkDragon08	= "SVM_23_SmalltalkDragon08"; //I roasted it once.
	SmalltalkDragon09	= "SVM_23_SmalltalkDragon09"; //The others ran away very quickly.
	SmalltalkDragon10	= "SVM_23_SmalltalkDragon10"; //Yes, after 5000 years of silence.
	SmalltalkDragon11	= "SVM_23_SmalltalkDragon11"; //He always had to talk in his sleep.
	SmalltalkDragon12	= "SVM_23_SmalltalkDragon12"; //And the poisonous creature that was guarding his eggs, we finally got rid of it.
	SmalltalkDragon13	= "SVM_23_SmalltalkDragon13"; //Yes, and thank the magic of this undead man.
	
};

instance SVM_24 (C_SVM)
{
	SC_HeyWaitASecond			= 	"SVM_24_Addon_HeyWaitASecond"			;//(calls) Wait!
	
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_24_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_24_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_24_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_24_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_24_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_24_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_24_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_24_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_24_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_24_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_24_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_24_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_24_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_24_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_24_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_24_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_24_ThenIBeatYouOutOfHere"		;//Then I'll have to knock you out of here!
	WhatDidYouDoInThere			=	"SVM_24_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_24_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_24_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_24_EnemyKilled"					;//So much for you, lowlife!
	Berzerk						=	"SVM_24_Berzerk"						;//UUAAARRGGGHHHH!!!!
	MonsterKilled				=	"SVM_24_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_24_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_24_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_24_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_24_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_24_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_24_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_24_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_24_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_24_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_24_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_24_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_24_Alarm"						;//ALARM!
	Guards						=	"SVM_24_Guards"						;//GUARDS!
	Help						=	"SVM_24_Help"						;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_24_GoodMonsterKill"				;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_24_GoodKill"					;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_24_NOTNOW"						;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_24_RunCoward"					;//(calls loudly) Stop right there, you lowlife!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_24_GetOutOfHere"				;//Get out of here!
	WhyAreYouInHere				=	"SVM_24_WhyAreYouInHere"				;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_24_YesGoOutOfHere"				;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_24_WhatsThisSupposedToBe"		;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_24_YouDisturbedMySlumber"		;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_24_ITookYourGold"				;//Gold! OK, that's mine for starters ...
	ShitNoGold					=	"SVM_24_ShitNoGold"					;//You don't even have any gold on you?
	ITakeYourWeapon				=	"SVM_24_ITakeYourWeapon"				;//I think I'll take your weapon for safekeeping.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_24_WhatAreYouDoing"				;//(warning) Hey! Watch it!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_24_LookingForTroubleAgain"		;//(aggressively) Haven't you had enough yet?
	StopMagic					=	"SVM_24_StopMagic"					;//Just stay away from me with that magic of yours!
	ISaidStopMagic				=	"SVM_24_ISaidStopMagic"				;//Cut out that magic! Something wrong with your ears!?
	WeaponDown					=	"SVM_24_WeaponDown"					;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_24_ISaidWeaponDown"				;//Are you deaf or what? I said: Put down that weapon!
	WiseMove					=	"SVM_24_WiseMove"					;//See, that wasn't so hard.
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_24_NextTimeYoureInForIt"		;//(to himself) We'll see about that ...
	OhMyHead					=	"SVM_24_OhMyHead"					;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_24_TheresAFight"				;//(eagerly) And now for some action!
	OhMyGodItsAFight			=	"SVM_24_OhMyGodItsAFight"			;//(dismayed) They're smashing each other's skulls ...
	GoodVictory					=	"SVM_24_GoodVictory"					;//(evil laugh) He deserved that!
	NotBad						= 	"SVM_24_NotBad"						;//(approvingly) Not bad at all ...
	OhMyGodHesDown				=	"SVM_24_OhMyGodHesDown"				;//(to himself) What a brutal fellow ...
	CheerFriend01				=	"SVM_24_CheerFriend01"				;//Yeah, that's the ticket!
	CheerFriend02				=	"SVM_24_CheerFriend02"				;//Whatcha waiting for?
	CheerFriend03				=	"SVM_24_CheerFriend03"				;//Atta boy!
	Ooh01						=	"SVM_24_Ooh01"						;//Don't take any crap!
	Ooh02						=	"SVM_24_Ooh02"						;//Show him who's boss!
	Ooh03						=	"SVM_24_Ooh03"						;//Holy shit!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_24_WhatWasThat"					;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_24_GetOutOfMyBed"					;//Get out of my bed!
	Awake						= "SVM_24_Awake"							;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_24_TOUGHGUY_ATTACKLOST"			;//All right, all right, you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_24_TOUGHGUY_ATTACKWON"			;//(smugly) Do I have to show you again who's boss?
	TOUGHGUY_PLAYERATTACK		= "SVM_24_TOUGHGUY_PLAYERATTACK"			;//Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_24_GOLD_1000"						;//1000 gold pieces.
	GOLD_950					= "SVM_24_GOLD_950"						;//950 gold pieces.
	GOLD_900					= "SVM_24_GOLD_900"						;//900 gold pieces.
	GOLD_850					= "SVM_24_GOLD_850"						;//850 gold pieces.
	GOLD_800					= "SVM_24_GOLD_800"						;//800 gold pieces.
	GOLD_750					= "SVM_24_GOLD_750"						;//750 gold pieces.
	GOLD_700					= "SVM_24_GOLD_700"						;//700 gold pieces.
	GOLD_650					= "SVM_24_GOLD_650"						;//650 gold pieces.
	GOLD_600					= "SVM_24_GOLD_600"						;//600 gold pieces.
	GOLD_550					= "SVM_24_GOLD_550"						;//550 gold pieces.
	GOLD_500					= "SVM_24_GOLD_500"						;//500 gold pieces.
	GOLD_450					= "SVM_24_GOLD_450"						;//450 gold pieces.
	GOLD_400					= "SVM_24_GOLD_400"						;//400 gold pieces.
	GOLD_350					= "SVM_24_GOLD_350"						;//350 gold pieces.
	GOLD_300					= "SVM_24_GOLD_300"						;//300 gold pieces.
	GOLD_250					= "SVM_24_GOLD_250"						;//250 gold pieces.
	GOLD_200					= "SVM_24_GOLD_200"						;//200 gold pieces.
	GOLD_150					= "SVM_24_GOLD_150"						;//150 gold pieces.
	GOLD_100					= "SVM_24_GOLD_100"						;//100 gold pieces.
	GOLD_90						= "SVM_24_GOLD_90"						;//90 gold pieces.
	GOLD_80						= "SVM_24_GOLD_80"						;//80 gold pieces.
	GOLD_70						= "SVM_24_GOLD_70"						;//70 gold pieces.
	GOLD_60						= "SVM_24_GOLD_60"						;//60 gold pieces.
	GOLD_50						= "SVM_24_GOLD_50"						;//50 gold pieces.
	GOLD_40						= "SVM_24_GOLD_40"						;//40 gold pieces.
	GOLD_30						= "SVM_24_GOLD_30"						;//30 gold pieces.
	GOLD_20						= "SVM_24_GOLD_20"						;//20 gold pieces.
	GOLD_10						= "SVM_24_GOLD_10"						;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_24_Smalltalk01"					;//... do you really think ...
	Smalltalk02					= "SVM_24_Smalltalk02"					;//... anything's possible ...
	Smalltalk03					= "SVM_24_Smalltalk03"					;//... he should have known better ...
	Smalltalk04					= "SVM_24_Smalltalk04"					;//... as if I didn't have enough problems ...
	Smalltalk05					= "SVM_24_Smalltalk05"					;//... who said that ...
	Smalltalk06					= "SVM_24_Smalltalk06"					;//... that'll only cause more trouble ...
	Smalltalk07					= "SVM_24_Smalltalk07"					;//... there've been all kinds of rumors ...
	Smalltalk08					= "SVM_24_Smalltalk08"					;//... I wouldn't have done that ...
	Smalltalk09					= "SVM_24_Smalltalk09"					;//... those are all just rumors ...
	Smalltalk10					= "SVM_24_Smalltalk10"					;//... it's better to watch out who you tell what ...
	Smalltalk11					= "SVM_24_Smalltalk11"					;//... I could have told you that before ...
	Smalltalk12					= "SVM_24_Smalltalk12"					;//... nobody ever asks me ...
	Smalltalk13					= "SVM_24_Smalltalk13"					;//... you have to feel sorry for the poor guy ...
	Smalltalk14					= "SVM_24_Smalltalk14"					;//... that's nothing new ...
	Smalltalk15					= "SVM_24_Smalltalk15"					;//... that's totally obvious ...
	Smalltalk16					= "SVM_24_Smalltalk16"					;//... you don't have to ask me that ...
	Smalltalk17					= "SVM_24_Smalltalk17"					;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_24_Smalltalk18"					;//... you already know what I think ...
	Smalltalk19					= "SVM_24_Smalltalk19"					;//... that's exactly what I said ...
	Smalltalk20					= "SVM_24_Smalltalk20"					;//... nothing's going to change about that ...
	Smalltalk21					= "SVM_24_Smalltalk21"					;//... why haven't I heard about this before ...
	Smalltalk22					= "SVM_24_Smalltalk22"					;//... let's wait and see what happens ...
	Smalltalk23					= "SVM_24_Smalltalk23"					;//... some problems solve themselves ...
	Smalltalk24					= "SVM_24_Smalltalk24"					;//... I don't want to hear that anymore ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_24_Smalltalk25"					;//... he was falling down drunk ...
	Smalltalk26					= "SVM_24_Smalltalk26"					;//... I won't be treated like that ...
	Smalltalk27					= "SVM_24_Smalltalk27"					;//... they all ran like rabbits, I was completely alone ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_24_Smalltalk28"					;//... so it says in the scriptures ...
	Smalltalk29					= "SVM_24_Smalltalk29"					;//... I always act in the name of Innos ...
	Smalltalk30					= "SVM_24_Smalltalk30"					;//... no one must violate the divine order ...
	SmalltalkKhorataAnnaQuest01			= "SVM_24_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_24_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_24_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_24_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_24_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_24_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_24_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_24_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_24_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_24_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_24_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_24_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_24_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_24_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_24_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_24_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_24_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_24_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_24_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_24_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_24_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_24_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_24_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_24_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_24_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_24_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_24_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_24_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_24_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_24_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_24_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_24_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_24_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_24_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_24_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_24_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_24_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_24_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_24_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_24_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_24_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_24_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_24_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_24_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_24_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_24_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_24_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_24_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_24_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_24_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_24_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_24_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_24_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_24_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_24_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_24_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_24_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_24_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_24_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_24_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_24_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_24_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_24_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_24_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_24_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_24_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_24_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_24_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_24_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_24_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_24_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_24_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_24_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_24_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_24_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_24_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_24_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_24_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...

	// D�monenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_24_SmalltalkDMRBelagerungAbdi01"; //... to be honest, I'm not sorry about the two of them...
	SmalltalkDMRBelagerungAbdi02			= "SVM_24_SmalltalkDMRBelagerungAbdi02"; //... would like to know who is slaughtering the people in this camp....
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_24_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_24_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_24_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_24_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_24_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_24_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_24_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_24_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_24_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_24_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_24_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_24_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_24_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_24_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_24_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_24_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_24_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_24_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_24_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_24_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_24_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_24_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_24_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_24_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_24_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_24_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_24_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_24_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_24_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_24_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_24_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_24_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_24_Addon_WrongArmor";				//What kind of clothes are those? They don't suit you at all. Leave me alone.
	ADDON_WRONGARMOR_SLD		= "SVM_24_ADDON_WRONGARMOR_SLD";			//Kindly wear our armor when I'm talking to you. Go on, beat it.
	ADDON_WRONGARMOR_MIL		= "SVM_24_ADDON_WRONGARMOR_MIL";			//You are supposed to wear the King's armor. Now, go.
	ADDON_WRONGARMOR_KDF		= "SVM_24_ADDON_WRONGARMOR_KDF";			//Your clothing is not appropriate for our order. Go and change.
	ADDON_NOARMOR_BDT			= "SVM_24_ADDON_ADDON_NOARMOR_BDT";			//You haven't even got any armor. Beat it!

	ADDON_DIEBANDIT				= "SVM_24_ADDON_DIEBANDIT";				//Another bandit.
	ADDON_DIRTYPIRATE			= "SVM_24_ADDON_DIRTYPIRATE";			//PIRATES!

	RELMINE01			= "SVM_24_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_24_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_24_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_24_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_24_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_24_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_24_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_24_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_24_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_24_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_24_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_24_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_24_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_24_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_24_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_24_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_24_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_24_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_24_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_24_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_24_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_24_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_24_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_24_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_24_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_24_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_24_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_24_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_24_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_24_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_24_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_24_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_24_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_24_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_24_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_24_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_24_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_24_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_24_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_24_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_24_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_24_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_24_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_24_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_24_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_24_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_24_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_24_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_24_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_24_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_24_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_24_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_24_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_24_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_24_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_24_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_24_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_25 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	Weather						= 	"SVM_25_Weather"					;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_25_IGetYouStill"				;//Now I've got you!
	DieEnemy					=	"SVM_25_DieEnemy"					;//I'm gonna rip you to pieces!
	DieMonster					=	"SVM_25_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_25_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_25_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_25_SheepKiller"				;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_25_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_25_YouMurderer"				;//Murderer!
	DieStupidBeast				=	"SVM_25_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_25_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_25_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_25_ThenIBeatYouOutOfHere"		;//You don't want to go? All right!
	WhatDidYouDoInThere			=	"SVM_25_WhatDidYouDoInThere"		;//What did you want in there?
	WillYouStopFighting			=	"SVM_25_WillYouStopFighting"		;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_25_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_25_EnemyKilled"				;//You deserved that, lowlife!
	MonsterKilled				=	"SVM_25_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_25_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_25_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_25_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	Berzerk						=	"SVM_25_Berzerk"						;//UUAAARRGGGHHHH!!!!
	KillMurderer				=	"SVM_25_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_25_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_25_NeverHitMeAgain"			;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_25_YouBetterShouldHaveListened";//You should have listened to me!
	GetUpAndBeGone				=	"SVM_25_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_25_NeverEnterRoomAgain"		;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_25_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_25_RunAway"					;//Oh, shit!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_25_GoodMonsterKill"		;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_25_GoodKill"				;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_25_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_25_RunCoward"				;//(calls loudly) Yes! Run as fast as you can!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_25_GetOutOfHere"			;//Get out of here!
	WhyAreYouInHere				=	"SVM_25_WhyAreYouInHere"		;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_25_YesGoOutOfHere"			;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_25_WhatsThisSupposedToBe"	;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_25_YouDisturbedMySlumber"	;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_25_ITookYourGold"			;//Thanks for the gold, you hero!
	ShitNoGold					=	"SVM_25_ShitNoGold"				;//You poor sucker, you don't even have any gold on you!
	ITakeYourWeapon				=	"SVM_25_ITakeYourWeapon"		;//I think I had better take this weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_25_WhatAreYouDoing"		;//(warning) Watch it! One more time, and I'll slug you one.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_25_LookingForTroubleAgain"	;//Haven't you had enough yet?
	StopMagic					=	"SVM_25_StopMagic"				;//Cut out this magic crap!
	ISaidStopMagic				=	"SVM_25_ISaidStopMagic"			;//Want a licking? Stop it this instant!!!
	WeaponDown					=	"SVM_25_WeaponDown"				;//Put away that weapon!
	ISaidWeaponDown				=	"SVM_25_ISaidWeaponDown"		;//Will you put away that damn weapon!
	WiseMove					=	"SVM_25_WiseMove"				;//Smart kid!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_25_NextTimeYoureInForIt"	;//(to himself) Well, we'll see the next time ...
	OhMyHead					=	"SVM_25_OhMyHead"				;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_25_TheresAFight"			;//(eagerly) Aah, a fight!
	OhMyGodItsAFight			=	"SVM_25_OhMyGodItsAFight"		;//(dismayed) Oh my God, a fight!
	GoodVictory					=	"SVM_25_GoodVictory"			;//(evil laugh) You showed him who's boss!
	NotBad						= 	"SVM_25_NotBad"					;//(approvingly) Not bad ...
	OhMyGodHesDown				=	"SVM_25_OhMyGodHesDown"			;//(to himself) My God! How brutal...
	CheerFriend01				=	"SVM_25_CheerFriend01"			;//Hit, then!
	CheerFriend02				=	"SVM_25_CheerFriend02"			;//Give it your all!
	CheerFriend03				=	"SVM_25_CheerFriend03"			;//Show him!
	Ooh01						=	"SVM_25_Ooh01"					;//Hang on!
	Ooh02						=	"SVM_25_Ooh02"					;//Watch out!
	Ooh03						=	"SVM_25_Ooh03"					;//Wow! That hit the spot!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_25_WhatWasThat"				;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_25_GetOutOfMyBed"			;//Get out of my bed!
	Awake						= "SVM_25_Awake"					;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_25_TOUGHGUY_ATTACKLOST"		;//All right, all right, you're the better fighter. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_25_TOUGHGUY_ATTACKWON"		;//(smugly) I assume that, by now, you are well aware which of us is stronger ... What do you want?
	TOUGHGUY_PLAYERATTACK		= "SVM_25_TOUGHGUY_PLAYERATTACK"	;//I thought you were trying to pick a fight with me. Did you change your mind? You prefer TALKING, right? (laughs) Of course.
	// ----------------------------------------------------------------------------------------------------------------------
	Dead						= "SVM_25_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_25_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_25_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_25_Aargh_3"					;//Aargh

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_25_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_25_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_25_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_26 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_26_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_26_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_26_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_26_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_26_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_26_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_26_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_26_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_26_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_26_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_26_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_26_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_26_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_26_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_26_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_26_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_26_ThenIBeatYouOutOfHere"		;//Then I'll have to knock you out of here!
	WhatDidYouDoInThere			=	"SVM_26_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_26_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_26_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_26_EnemyKilled"					;//So much for you, lowlife!
	MonsterKilled				=	"SVM_26_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_26_ThiefDown"					;//Never try to steal from me again!
	Berzerk						=	"SVM_26_Berzerk"						;//UUAAARRGGGHHHH!!!!
	rumfummlerDown				=	"SVM_26_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_26_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_26_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_26_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_26_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_26_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_26_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_26_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_26_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_26_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_26_Alarm"						;//ALARM!
	Guards						=	"SVM_26_Guards"						;//GUARDS!
	Help						=	"SVM_26_Help"						;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_26_GoodMonsterKill"				;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_26_GoodKill"					;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_26_NOTNOW"						;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_26_RunCoward"					;//(calls loudly) Stop right there, you lowlife!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_26_GetOutOfHere"				;//Get out of here!
	WhyAreYouInHere				=	"SVM_26_WhyAreYouInHere"				;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_26_YesGoOutOfHere"				;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_26_WhatsThisSupposedToBe"		;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_26_YouDisturbedMySlumber"		;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_26_ITookYourGold"				;//Gold! OK, that's mine for starters ...
	ShitNoGold					=	"SVM_26_ShitNoGold"					;//The bastard doesn't even have any gold on him.
	ITakeYourWeapon				=	"SVM_26_ITakeYourWeapon"				;//I think I'll take your weapon for safekeeping.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_26_WhatAreYouDoing"				;//(warning) Hey! Watch it!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_26_LookingForTroubleAgain"		;//(aggressively) Haven't you had enough yet?
	StopMagic					=	"SVM_26_StopMagic"					;//Just stay away from me with that magic of yours!
	ISaidStopMagic				=	"SVM_26_ISaidStopMagic"				;//Cut out that magic! Something wrong with your ears!?
	WeaponDown					=	"SVM_26_WeaponDown"					;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_26_ISaidWeaponDown"				;//Are you deaf or what? I said: Put down that weapon!
	WiseMove					=	"SVM_26_WiseMove"					;//See, that wasn't so hard.
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_26_NextTimeYoureInForIt"		;//(to himself) We'll see about that ...
	OhMyHead					=	"SVM_26_OhMyHead"					;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_26_TheresAFight"				;//(eagerly) And now for some action!
	OhMyGodItsAFight			=	"SVM_26_OhMyGodItsAFight"			;//(dismayed) They're smashing each other's skulls ...
	GoodVictory					=	"SVM_26_GoodVictory"					;//(evil laugh) He deserved that!
	NotBad						= 	"SVM_26_NotBad"						;//(approvingly) Not bad at all ...
	OhMyGodHesDown				=	"SVM_26_OhMyGodHesDown"				;//(to himself) What a brutal fellow ...
	CheerFriend01				=	"SVM_26_CheerFriend01"				;//Yeah, that's the ticket!
	CheerFriend02				=	"SVM_26_CheerFriend02"				;//Whatcha waiting for?
	CheerFriend03				=	"SVM_26_CheerFriend03"				;//Atta boy!
	Ooh01						=	"SVM_26_Ooh01"						;//Don't take any crap!
	Ooh02						=	"SVM_26_Ooh02"						;//Show him who's boss!
	Ooh03						=	"SVM_26_Ooh03"						;//Holy shit!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_26_WhatWasThat"					;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_26_GetOutOfMyBed"					;//Get out of my bed!
	Awake						= "SVM_26_Awake"							;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_26_TOUGHGUY_ATTACKLOST"			;//All right, all right, you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_26_TOUGHGUY_ATTACKWON"			;//(smugly) Do I have to show you again who's boss?
	TOUGHGUY_PLAYERATTACK		= "SVM_26_TOUGHGUY_PLAYERATTACK"			;//Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_26_GOLD_1000"						;//1000 gold pieces.
	GOLD_950					= "SVM_26_GOLD_950"						;//950 gold pieces.
	GOLD_900					= "SVM_26_GOLD_900"						;//900 gold pieces.
	GOLD_850					= "SVM_26_GOLD_850"						;//850 gold pieces.
	GOLD_800					= "SVM_26_GOLD_800"						;//800 gold pieces.
	GOLD_750					= "SVM_26_GOLD_750"						;//750 gold pieces.
	GOLD_700					= "SVM_26_GOLD_700"						;//700 gold pieces.
	GOLD_650					= "SVM_26_GOLD_650"						;//650 gold pieces.
	GOLD_600					= "SVM_26_GOLD_600"						;//600 gold pieces.
	GOLD_550					= "SVM_26_GOLD_550"						;//550 gold pieces.
	GOLD_500					= "SVM_26_GOLD_500"						;//500 gold pieces.
	GOLD_450					= "SVM_26_GOLD_450"						;//450 gold pieces.
	GOLD_400					= "SVM_26_GOLD_400"						;//400 gold pieces.
	GOLD_350					= "SVM_26_GOLD_350"						;//350 gold pieces.
	GOLD_300					= "SVM_26_GOLD_300"						;//300 gold pieces.
	GOLD_250					= "SVM_26_GOLD_250"						;//250 gold pieces.
	GOLD_200					= "SVM_26_GOLD_200"						;//200 gold pieces.
	GOLD_150					= "SVM_26_GOLD_150"						;//150 gold pieces.
	GOLD_100					= "SVM_26_GOLD_100"						;//100 gold pieces.
	GOLD_90						= "SVM_26_GOLD_90"						;//90 gold pieces.
	GOLD_80						= "SVM_26_GOLD_80"						;//80 gold pieces.
	GOLD_70						= "SVM_26_GOLD_70"						;//70 gold pieces.
	GOLD_60						= "SVM_26_GOLD_60"						;//60 gold pieces.
	GOLD_50						= "SVM_26_GOLD_50"						;//50 gold pieces.
	GOLD_40						= "SVM_26_GOLD_40"						;//40 gold pieces.
	GOLD_30						= "SVM_26_GOLD_30"						;//30 gold pieces.
	GOLD_20						= "SVM_26_GOLD_20"						;//20 gold pieces.
	GOLD_10						= "SVM_26_GOLD_10"						;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_26_Smalltalk01"					;//... do you really think ...
	Smalltalk02					= "SVM_26_Smalltalk02"					;//... anything's possible ...
	Smalltalk03					= "SVM_26_Smalltalk03"					;//... he should have known better ...
	Smalltalk04					= "SVM_26_Smalltalk04"					;//... as if I didn't have enough problems ...
	Smalltalk05					= "SVM_26_Smalltalk05"					;//... who said that ...
	Smalltalk06					= "SVM_26_Smalltalk06"					;//... that'll only cause more trouble ...
	Smalltalk07					= "SVM_26_Smalltalk07"					;//... there've been all kinds of rumors ...
	Smalltalk08					= "SVM_26_Smalltalk08"					;//... I wouldn't have done that ...
	Smalltalk09					= "SVM_26_Smalltalk09"					;//... those are all just rumors ...
	Smalltalk10					= "SVM_26_Smalltalk10"					;//... it's better to watch out who you tell what ...
	Smalltalk11					= "SVM_26_Smalltalk11"					;//... I could have told you that before ...
	Smalltalk12					= "SVM_26_Smalltalk12"					;//... nobody ever asks me ...
	Smalltalk13					= "SVM_26_Smalltalk13"					;//... you have to feel sorry for the poor guy ...
	Smalltalk14					= "SVM_26_Smalltalk14"					;//... that's nothing new ...
	Smalltalk15					= "SVM_26_Smalltalk15"					;//... that's totally obvious ...
	Smalltalk16					= "SVM_26_Smalltalk16"					;//... you don't have to ask me that ...
	Smalltalk17					= "SVM_26_Smalltalk17"					;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_26_Smalltalk18"					;//... you already know what I think ...
	Smalltalk19					= "SVM_26_Smalltalk19"					;//... that's exactly what I said ...
	Smalltalk20					= "SVM_26_Smalltalk20"					;//... nothing's ever going to change that ...
	Smalltalk21					= "SVM_26_Smalltalk21"					;//... why haven't I heard about this before ...
	Smalltalk22					= "SVM_26_Smalltalk22"					;//... let's wait and see what happens ...
	Smalltalk23					= "SVM_26_Smalltalk23"					;//... some problems solve themselves ...
	Smalltalk24					= "SVM_26_Smalltalk24"					;//... I don't want to hear that anymore ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_26_Smalltalk25"					;//... he was falling down drunk ...
	Smalltalk26					= "SVM_26_Smalltalk26"					;//... I won't be treated like that ...
	Smalltalk27					= "SVM_26_Smalltalk27"					;//... they all ran like rabbits, I was completely alone ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_26_Smalltalk28"					;//... so it says in the scriptures ...
	Smalltalk29					= "SVM_26_Smalltalk29"					;//... I always act in the name of Innos ...
	Smalltalk30					= "SVM_26_Smalltalk30"					;//... no one must violate the divine order ...
	SmalltalkKhorataAnnaQuest01			= "SVM_26_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_26_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_26_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_26_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_26_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_26_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_26_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_26_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_26_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_26_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_26_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_26_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_26_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_26_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_26_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_26_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_26_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_26_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_26_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_26_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_26_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_26_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_26_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_26_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_26_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_26_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_26_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_26_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_26_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_26_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_26_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_26_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_26_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_26_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_26_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_26_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_26_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_26_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_26_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_26_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_26_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_26_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_26_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_26_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_26_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_26_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_26_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_26_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_26_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_26_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_26_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_26_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_26_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_26_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_26_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_26_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_26_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_26_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_26_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_26_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_26_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_26_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_26_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_26_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_26_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_26_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_26_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_26_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_26_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_26_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_26_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_26_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_26_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_26_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_26_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_26_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_26_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_26_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...

	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_26_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_26_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_26_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_26_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_26_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_26_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_26_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_26_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_26_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_26_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_26_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_26_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_26_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_26_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_26_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_26_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_26_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_26_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_26_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_26_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_26_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_26_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_26_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_26_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_26_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_26_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_26_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_26_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_26_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_26_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_26_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_26_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_26_Addon_WrongArmor";				//Those aren't your clothes. I'm not talking to you.
	ADDON_WRONGARMOR_SLD		= "SVM_26_ADDON_WRONGARMOR_SLD";			//What are you wearing? Put on something decent.
	ADDON_WRONGARMOR_MIL		= "SVM_26_ADDON_WRONGARMOR_MIL";			//You are a soldier! Dress like one.
	ADDON_WRONGARMOR_KDF		= "SVM_26_ADDON_WRONGARMOR_KDF";			//Your clothing is not appropriate for our order. Go and change.
	ADDON_NOARMOR_BDT			= "SVM_26_ADDON_ADDON_NOARMOR_BDT";		//You haven't even got any armor. Beat it!

	ADDON_DIEBANDIT				= "SVM_26_ADDON_DIEBANDIT";				//Die, you filthy bandit!
	ADDON_DIRTYPIRATE			= "SVM_26_ADDON_DIRTYPIRATE";			//Pirate scum!

	RELMINE01			= "SVM_26_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_26_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_26_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_26_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_26_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_26_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_26_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_26_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_26_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_26_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_26_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_26_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_26_NoLearnGold";			//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_26_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_26_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_26_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_26_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_26_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_26_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_26_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_26_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_26_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_26_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_26_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_26_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_26_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_26_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_26_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_26_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_26_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_26_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_26_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_26_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_26_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_26_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_26_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_26_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_26_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_26_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_26_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_26_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_26_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_26_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_26_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_26_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_26_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_26_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_26_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_26_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_26_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_26_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_26_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_26_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_26_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_26_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_26_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_26_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_27 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	Weather						= 	"SVM_27_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_27_IGetYouStill"				;//YOU again!
	DieEnemy					=	"SVM_27_DieEnemy"					;//I'm gonna rip you to pieces!
	DieMonster					=	"SVM_27_DieMonster"					;//Another one of those things!
	DirtyThief					=	"SVM_27_DirtyThief"					;//You miserable little thief!
	HandsOff					=	"SVM_27_HandsOff"					;//Get your hands off that!
	SheepKiller					=	"SVM_27_SheepKiller"					;//Hey! Leave our sheep alone!
	SheepKillerMonster			=	"SVM_27_SheepKillerMonster"			;//That monster is gobbling up our sheep!
	YouMurderer					=	"SVM_27_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_27_DieStupidBeast"				;//What is THAT creature doing here?
	YouDareHitMe				=	"SVM_27_YouDareHitMe"				;//You're in for it now!
	YouAskedForIt				=	"SVM_27_YouAskedForIt"				;//You asked for it.
	ThenIBeatYouOutOfHere		=	"SVM_27_ThenIBeatYouOutOfHere"		;//I guess some people just have to learn the hard way.
	WhatDidYouDoInThere			=	"SVM_27_WhatDidYouDoInThere"			;//What did you want in there, huh!?
	WillYouStopFighting			=	"SVM_27_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_27_KillEnemy"					;//Die!
	EnemyKilled					=	"SVM_27_EnemyKilled"					;//What a silly bastard...
	MonsterKilled				=	"SVM_27_MonsterKilled"				;//All right, so much for you, filthy beast!
	ThiefDown					=	"SVM_27_ThiefDown"					;//Keep your paws off my stuff from now on - got it?
	rumfummlerDown				=	"SVM_27_rumfummlerDown"				;//Keep your fingers to yourself from now on!
	SheepAttackerDown			=	"SVM_27_SheepAttackerDown"			;//Keep your grubby paws off our sheep from now on!
	KillMurderer				=	"SVM_27_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_27_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_27_NeverHitMeAgain"				;//Don't try that again, buster!
	YouBetterShouldHaveListened	=	"SVM_27_YouBetterShouldHaveListened"	;//Let that be a lesson to you.
	GetUpAndBeGone				=	"SVM_27_GetUpAndBeGone"				;//Stand up and get out of here!
	NeverEnterRoomAgain			=	"SVM_27_NeverEnterRoomAgain"			;//I never want to see you in there again - understood?
	ThereIsNoFightingHere		=	"SVM_27_ThereIsNoFightingHere"		;//I'm the one who does the bashing around here, understood?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_27_Berzerk"						;//UUAAARRGGGHHHH!!!!
		RunAway						= 	"SVM_27_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_27_Alarm"					;//ALARM!
	Guards						=	"SVM_27_Guards"					;//GUARDS!
	Help						=	"SVM_27_Help"					;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_27_GoodMonsterKill"			;//(calls to) Yeah! That's how you deal with those things!
	GoodKill					= 	"SVM_27_GoodKill"				;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_27_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_27_RunCoward"				;//(yells) You haven't seen the last of me!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_27_GetOutOfHere"			;//Out!
	WhyAreYouInHere				=	"SVM_27_WhyAreYouInHere"			;//What's your business here?!
	YesGoOutOfHere				= 	"SVM_27_YesGoOutOfHere"			;//Just beat it!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_27_WhatsThisSupposedToBe"	;//What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_27_YouDisturbedMySlumber"	;//(wakes up) Wassup?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_27_ITookYourGold"			;//Thanks for the gold, you hero!
	ShitNoGold					=	"SVM_27_ShitNoGold"				;//You poor sucker, you don't even have any gold on you!
	ITakeYourWeapon				=	"SVM_27_ITakeYourWeapon"			;//I think I had better take this weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_27_WhatAreYouDoing"			;//(warning) Watch it! One more time, and I'll slug you one.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_27_LookingForTroubleAgain"	;//(aggressive) Do you want another punch in the face?
																	 
	StopMagic					=	"SVM_27_StopMagic"				;//Cut out this magic crap!
	ISaidStopMagic				=	"SVM_27_ISaidStopMagic"			;//Want a licking? Stop it this instant!!!
	WeaponDown					=	"SVM_27_WeaponDown"				;//Put away that weapon!
	ISaidWeaponDown				=	"SVM_27_ISaidWeaponDown"			;//Will you put away that damn weapon?!
	WiseMove					=	"SVM_27_WiseMove"				;//Smart kid!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_27_NextTimeYoureInForIt"	;//(to himself) Well, we'll see the next time ...
	OhMyHead					=	"SVM_27_OhMyHead"				;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_27_TheresAFight"			;//(eagerly) Aah, a fight!
	OhMyGodItsAFight			=	"SVM_27_OhMyGodItsAFight"		;//(dismayed) Oh my God, a fight!
	GoodVictory					=	"SVM_27_GoodVictory"				;//(evil laugh) You showed him who's boss!
	NotBad						= 	"SVM_27_NotBad"					;//(approvingly) Not bad ...
	OhMyGodHesDown				=	"SVM_27_OhMyGodHesDown"			;//(to himself) My God! How brutal...
	CheerFriend01				=	"SVM_27_CheerFriend01"			;//Yeah, let him have it!
	CheerFriend02				=	"SVM_27_CheerFriend02"			;//Show him!
	CheerFriend03				=	"SVM_27_CheerFriend03"			;//Finish him!
	Ooh01						=	"SVM_27_Ooh01"					;//Defend yourself!
	Ooh02						=	"SVM_27_Ooh02"					;//Go ahead, hit back!
	Ooh03						=	"SVM_27_Ooh03"					;//Ouch! That hurt!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_27_WhatWasThat"				;//(to himself, waking up) Damnit, what was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_27_GetOutOfMyBed"				;//Find your own bed!
	Awake						= "SVM_27_Awake"						;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_27_TOUGHGUY_ATTACKLOST"		;//Say, you pack a pretty punch ... What is it you want?
	TOUGHGUY_ATTACKWON			= "SVM_27_TOUGHGUY_ATTACKWON"		;//(smugly) Any more questions?
	TOUGHGUY_PLAYERATTACK		= "SVM_27_TOUGHGUY_PLAYERATTACK"		;//There you are again!
	// ----------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_27_Smalltalk01"				;//... is it really true ...
	Smalltalk02					= "SVM_27_Smalltalk02"				;//... that's not what I heard...
	Smalltalk03					= "SVM_27_Smalltalk03"				;//... don't tell me you didn't know that ...
	Smalltalk04					= "SVM_27_Smalltalk04"				;//... you hardly know who to believe these days ...
	Smalltalk05					= "SVM_27_Smalltalk05"				;//... that's all just gossip ...
	Smalltalk06					= "SVM_27_Smalltalk06"				;//... I'm no better off myself ...
	Smalltalk07					= "SVM_27_Smalltalk07"				;//... nothing amazes me any more ...
	Smalltalk08					= "SVM_27_Smalltalk08"				;//... that's really not my problem ...
	Smalltalk09					= "SVM_27_Smalltalk09"				;//... do you really believe that ...
	Smalltalk10					= "SVM_27_Smalltalk10"				;//... nobody will learn anything from me ...
	Smalltalk11					= "SVM_27_Smalltalk11"				;//... that was obvious all along ...
	Smalltalk12					= "SVM_27_Smalltalk12"				;//... he listened to the wrong people ...
	Smalltalk13					= "SVM_27_Smalltalk13"				;//... if he doesn't see that, I can't help him ...
	Smalltalk14					= "SVM_27_Smalltalk14"				;//... I'm not telling you anything new ...
	Smalltalk15					= "SVM_27_Smalltalk15"				;//... he never would have thought of that himself ...
	Smalltalk16					= "SVM_27_Smalltalk16"				;//... that's been known a long time ...
	Smalltalk17					= "SVM_27_Smalltalk17"				;//... it's a bad business ...
	Smalltalk18					= "SVM_27_Smalltalk18"				;//... I'd have done it differently ...
	Smalltalk19					= "SVM_27_Smalltalk19"				;//... I agree with you completely ...
	Smalltalk20					= "SVM_27_Smalltalk20"				;//... will it ever change ...
	Smalltalk21					= "SVM_27_Smalltalk21"				;//... I never knew that ...
	Smalltalk22					= "SVM_27_Smalltalk22"				;//... you can't do anything about it ...
	Smalltalk23					= "SVM_27_Smalltalk23"				;//... that doesn't amaze me ...
	Smalltalk24					= "SVM_27_Smalltalk24"				;//... but no, he insisted he knew better ...

	// Khorinis

	SmalltalkRangar01			= "SVM_27_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_27_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_27_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_27_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_27_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_27_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_27_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_27_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_27_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_27_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_27_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_27_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_27_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_27_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...
	// ----------------------------------------------------------------------------------------------------------------------
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_27_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_27_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_27_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_27_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------

	NoLearnGold			= "SVM_27_NoLearnGold"			;//Come back when you have more gold.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_27_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_27_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_27_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_28 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	BELGreetings				=	"SVM_28_BELGreetings"				;//To honor Beliar!
	Weather						= 	"SVM_28_Weather"					;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_28_IGetYouStill"				;//Now I've got you!
	DieEnemy					=	"SVM_28_DieEnemy"					;//I'm gonna rip you to pieces!
	DieMonster					=	"SVM_28_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_28_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_28_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_28_SheepKiller"				;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_28_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_28_YouMurderer"				;//Murderer!
	DieStupidBeast				=	"SVM_28_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_28_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_28_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_28_ThenIBeatYouOutOfHere"		;//You don't want to go? All right!
	WhatDidYouDoInThere			=	"SVM_28_WhatDidYouDoInThere"		;//What did you want in there?
	WillYouStopFighting			=	"SVM_28_WillYouStopFighting"		;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_28_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_28_EnemyKilled"				;//You deserved that, lowlife!
	MonsterKilled				=	"SVM_28_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_28_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_28_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_28_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_28_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_28_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_28_NeverHitMeAgain"			;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_28_YouBetterShouldHaveListened";//You should have listened to me!
	GetUpAndBeGone				=	"SVM_28_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_28_NeverEnterRoomAgain"		;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_28_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_28_Berzerk"						;//UUAAARRGGGHHHH!!!!
	RunAway						= 	"SVM_28_RunAway"					;//Oh, shit!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_28_Alarm"					;//ALARM!
	Guards						=	"SVM_28_Guards"					;//GUARDS!
	Help						=	"SVM_28_Help"					;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_28_GoodMonsterKill"		;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_28_GoodKill"				;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_28_NOTNOW"					;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_28_RunCoward"				;//(calls loudly) Yes! Run as fast as you can!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_28_GetOutOfHere"			;//Get out of here!
	WhyAreYouInHere				=	"SVM_28_WhyAreYouInHere"		;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_28_YesGoOutOfHere"			;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_28_WhatsThisSupposedToBe"	;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_28_YouDisturbedMySlumber"	;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_28_ITookYourGold"			;//Thanks for the gold, you hero!
	ShitNoGold					=	"SVM_28_ShitNoGold"				;//You poor sucker, you don't even have any gold on you!
	ITakeYourWeapon				=	"SVM_28_ITakeYourWeapon"		;//I think I had better take this weapon.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_28_WhatAreYouDoing"		;//(warning) Watch it! One more time, and I'll slug you one.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_28_LookingForTroubleAgain"	;//Haven't you had enough yet?
	StopMagic					=	"SVM_28_StopMagic"				;//Cut out this magic crap!
	ISaidStopMagic				=	"SVM_28_ISaidStopMagic"			;//Want a licking? Stop it this instant!!!
	WeaponDown					=	"SVM_28_WeaponDown"				;//Put away that weapon!
	ISaidWeaponDown				=	"SVM_28_ISaidWeaponDown"		;//Will you put away that damn weapon!
	WiseMove					=	"SVM_28_WiseMove"				;//Smart kid!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_28_NextTimeYoureInForIt"	;//(to himself) Well, we'll see the next time ...
	OhMyHead					=	"SVM_28_OhMyHead"				;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_28_TheresAFight"			;//(eagerly) Aah, a fight!
	OhMyGodItsAFight			=	"SVM_28_OhMyGodItsAFight"		;//(dismayed) Oh my God, a fight!
	GoodVictory					=	"SVM_28_GoodVictory"			;//(evil laugh) You showed him who's boss!
	NotBad						= 	"SVM_28_NotBad"					;//(approvingly) Not bad ...
	OhMyGodHesDown				=	"SVM_28_OhMyGodHesDown"			;//(to himself) My God! How brutal...
	CheerFriend01				=	"SVM_28_CheerFriend01"			;//Hit, then!
	CheerFriend02				=	"SVM_28_CheerFriend02"			;//Give it your all!
	CheerFriend03				=	"SVM_28_CheerFriend03"			;//Show him!
	Ooh01						=	"SVM_28_Ooh01"					;//Hang on!
	Ooh02						=	"SVM_28_Ooh02"					;//Watch out!
	Ooh03						=	"SVM_28_Ooh03"					;//Wow! That hit the spot!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_28_WhatWasThat"				;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_28_GetOutOfMyBed"			;//This is my bed!
	Awake						= "SVM_28_Awake"					;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_28_TOUGHGUY_ATTACKLOST"		;//All right, all right, you're the better fighter. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_28_TOUGHGUY_ATTACKWON"		;//(smugly) I assume that, by now, you are well aware which of us is stronger ... What do you want?
	TOUGHGUY_PLAYERATTACK		= "SVM_28_TOUGHGUY_PLAYERATTACK"	;//I thought you were trying to pick a fight with me. Did you change your mind? You prefer TALKING, right? (laughs)
	// ----------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_28_Smalltalk01"				;//... do you really think ...
	Smalltalk02					= "SVM_28_Smalltalk02"				;//... anything's possible ...
	Smalltalk03					= "SVM_28_Smalltalk03"				;//... he should have known better ...
	Smalltalk04					= "SVM_28_Smalltalk04"				;//... as if I didn't have enough problems ...
	Smalltalk05					= "SVM_28_Smalltalk05"				;//... who said that ...
	Smalltalk06					= "SVM_28_Smalltalk06"				;//... that'll only cause more trouble ...
	Smalltalk07					= "SVM_28_Smalltalk07"				;//... there've been all kinds of rumors ...
	Smalltalk08					= "SVM_28_Smalltalk08"				;//... I never would have thought ...
	Smalltalk09					= "SVM_28_Smalltalk09"				;//... those are all just rumors ...
	Smalltalk10					= "SVM_28_Smalltalk10"				;//... it's better to watch out who you tell what ...
	Smalltalk11					= "SVM_28_Smalltalk11"				;//... I could have told you that before ...
	Smalltalk12					= "SVM_28_Smalltalk12"				;//... nobody ever asks me ...
	Smalltalk13					= "SVM_28_Smalltalk13"				;//... you have to feel sorry for the poor guy ...
	Smalltalk14					= "SVM_28_Smalltalk14"				;//... that's nothing new ...
	Smalltalk15					= "SVM_28_Smalltalk15"				;//... that's totally obvious ...
	Smalltalk16					= "SVM_28_Smalltalk16"				;//... you don't have to ask me that ...
	Smalltalk17					= "SVM_28_Smalltalk17"				;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_28_Smalltalk18"				;//... you already know what I think ...
	Smalltalk19					= "SVM_28_Smalltalk19"				;//... that's exactly what I said ...
	Smalltalk20					= "SVM_28_Smalltalk20"				;//... nothing's ever going to change that ...
	Smalltalk21					= "SVM_28_Smalltalk21"				;//... why haven't I heard about this before ...
	Smalltalk22					= "SVM_28_Smalltalk22"				;//... let's wait and see what happens ...
	Smalltalk23					= "SVM_28_Smalltalk23"				;//... some problems solve themselves ...
	Smalltalk24					= "SVM_28_Smalltalk24"				;//... I don't want to hear that anymore ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_28_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_28_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_28_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_28_YouLearnedSomething"		;//See, you're better already ...
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_28_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_28_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_28_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_28_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------

	NoLearnGold			= "SVM_28_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_28_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_28_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_28_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_29 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	Weather						= 	"SVM_29_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_29_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_29_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_29_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_29_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_29_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_29_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_29_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_29_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_29_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_29_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_29_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_29_ThenIBeatYouOutOfHere"		;//Then I'll have to KNOCK you out of here!
	WhatDidYouDoInThere			=	"SVM_29_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_29_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_29_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_29_EnemyKilled"					;//So much for you, lowlife!
	MonsterKilled				=	"SVM_29_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_29_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_29_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	Berzerk						=	"SVM_29_Berzerk"						;//UUAAARRGGGHHHH!!!!
	SheepAttackerDown			=	"SVM_29_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_29_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_29_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_29_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_29_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_29_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_29_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_29_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_29_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_29_Alarm"						;//ALARM!
	Guards						=	"SVM_29_Guards"						;//GUARDS!
	Help						=	"SVM_29_Help"						;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_29_GoodMonsterKill"				;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_29_GoodKill"					;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_29_NOTNOW"						;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_29_RunCoward"					;//(calls loudly) Stop right there, you lowlife!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_29_GetOutOfHere"				;//Get out of here!
	WhyAreYouInHere				=	"SVM_29_WhyAreYouInHere"				;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_29_YesGoOutOfHere"				;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_29_WhatsThisSupposedToBe"		;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_29_YouDisturbedMySlumber"		;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_29_ITookYourGold"				;//Gold! OK, that's mine for starters ...
	ShitNoGold					=	"SVM_29_ShitNoGold"					;//You don't even have any gold on you?
	ITakeYourWeapon				=	"SVM_29_ITakeYourWeapon"				;//I think I'll take your weapon for safekeeping.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_29_WhatAreYouDoing"				;//(warning) Hey! Watch it!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_29_LookingForTroubleAgain"		;//(aggressively) Haven't you had enough yet?
	StopMagic					=	"SVM_29_StopMagic"					;//Just stay away from me with that magic of yours!
	ISaidStopMagic				=	"SVM_29_ISaidStopMagic"				;//Cut out that magic! Something wrong with your ears!?
	WeaponDown					=	"SVM_29_WeaponDown"					;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_29_ISaidWeaponDown"				;//Are you deaf or what? I said: Put down that weapon!
	WiseMove					=	"SVM_29_WiseMove"					;//See, that wasn't so hard.
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_29_NextTimeYoureInForIt"		;//(to himself) We'll see about that ...
	OhMyHead					=	"SVM_29_OhMyHead"					;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_29_TheresAFight"				;//(eagerly) And now for some action!
	OhMyGodItsAFight			=	"SVM_29_OhMyGodItsAFight"			;//(dismayed) But they're smashing each other's skulls ...
	GoodVictory					=	"SVM_29_GoodVictory"					;//(evil laugh) He deserved that!
	NotBad						= 	"SVM_29_NotBad"						;//(approvingly) Not bad at all ...
	OhMyGodHesDown				=	"SVM_29_OhMyGodHesDown"				;//(to himself) What a brutal fellow ...
	CheerFriend01				=	"SVM_29_CheerFriend01"				;//Yeah, that's the ticket!
	CheerFriend02				=	"SVM_29_CheerFriend02"				;//Whatcha waiting for?
	CheerFriend03				=	"SVM_29_CheerFriend03"				;//Atta boy!
	Ooh01						=	"SVM_29_Ooh01"						;//Don't take any crap!
	Ooh02						=	"SVM_29_Ooh02"						;//Show him who's boss!
	Ooh03						=	"SVM_29_Ooh03"						;//Holy shit!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_29_WhatWasThat"					;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_29_GetOutOfMyBed"					;//Get out of my bed!
	Awake						= "SVM_29_Awake"							;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_29_TOUGHGUY_ATTACKLOST"			;//All right, all right, you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_29_TOUGHGUY_ATTACKWON"			;//(smugly) Do I have to show you again who's boss?
	TOUGHGUY_PLAYERATTACK		= "SVM_29_TOUGHGUY_PLAYERATTACK"			;//Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_29_Smalltalk01"					;//... do you really think ...
	Smalltalk02					= "SVM_29_Smalltalk02"					;//... anything's possible ...
	Smalltalk03					= "SVM_29_Smalltalk03"					;//... he should have known better ...
	Smalltalk04					= "SVM_29_Smalltalk04"					;//... as if I don't have enough problems ...
	Smalltalk05					= "SVM_29_Smalltalk05"					;//... who said that ...
	Smalltalk06					= "SVM_29_Smalltalk06"					;//... that'll only cause more trouble ...
	Smalltalk07					= "SVM_29_Smalltalk07"					;//... there've been all kinds of rumors ...
	Smalltalk08					= "SVM_29_Smalltalk08"					;//... I wouldn't have done that ...
	Smalltalk09					= "SVM_29_Smalltalk09"					;//... those are all just rumors ...
	Smalltalk10					= "SVM_29_Smalltalk10"					;//... it's better to watch out who you tell what ...
	Smalltalk11					= "SVM_29_Smalltalk11"					;//... I could have told you that before ...
	Smalltalk12					= "SVM_29_Smalltalk12"					;//... nobody ever asks me ...
	Smalltalk13					= "SVM_29_Smalltalk13"					;//... you have to feel sorry for the poor guy ...
	Smalltalk14					= "SVM_29_Smalltalk14"					;//... that's nothing new ...
	Smalltalk15					= "SVM_29_Smalltalk15"					;//... that's totally obvious ...
	Smalltalk16					= "SVM_29_Smalltalk16"					;//... you don't have to ask me that ...
	Smalltalk17					= "SVM_29_Smalltalk17"					;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_29_Smalltalk18"					;//... you already know what I think ...
	Smalltalk19					= "SVM_29_Smalltalk19"					;//... that's exactly what I said ...
	Smalltalk20					= "SVM_29_Smalltalk20"					;//... nothing's ever going to change that ...
	Smalltalk21					= "SVM_29_Smalltalk21"					;//... why haven't I heard about this before ...
	Smalltalk22					= "SVM_29_Smalltalk22"					;//... let's wait and see what happens ...
	Smalltalk23					= "SVM_29_Smalltalk23"					;//... some problems solve themselves ...
	Smalltalk24					= "SVM_29_Smalltalk24"					;//... I don't want to hear that anymore ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_29_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_29_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_29_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_29_YouLearnedSomething"		;//See, you're better already ...
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_29_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_29_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_29_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_29_Aargh_3"					;//Aargh
	
	NoLearnGold			= "SVM_29_NoLearnGold"			;//Come back when you have more gold.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_29_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_29_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_29_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_30 (C_SVM)
{
	SC_HeyWaitASecond			= 	"SVM_30_Addon_HeyWaitASecond"			;//(calls) Wait!
	
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_30_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_30_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_30_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_30_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_30_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_30_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_30_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_30_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_30_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_30_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_30_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_30_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_30_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_30_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_30_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_30_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_30_ThenIBeatYouOutOfHere"		;//Then I'll have to knock you out of here!
	WhatDidYouDoInThere			=	"SVM_30_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_30_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_30_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_30_EnemyKilled"					;//So much for you, lowlife!
	Berzerk						=	"SVM_30_Berzerk"						;//UUAAARRGGGHHHH!!!!
	MonsterKilled				=	"SVM_30_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_30_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_30_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_30_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_30_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_30_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_30_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_30_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_30_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_30_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_30_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_30_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_30_Alarm"						;//ALARM!
	Guards						=	"SVM_30_Guards"						;//GUARDS!
	Help						=	"SVM_30_Help"						;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_30_GoodMonsterKill"				;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_30_GoodKill"					;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_30_NOTNOW"						;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_30_RunCoward"					;//(calls loudly) Stop right there, you lowlife!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_30_GetOutOfHere"				;//Get out of here!
	WhyAreYouInHere				=	"SVM_30_WhyAreYouInHere"				;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_30_YesGoOutOfHere"				;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_30_WhatsThisSupposedToBe"		;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_30_YouDisturbedMySlumber"		;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_30_ITookYourGold"				;//Gold! OK, that's mine for starters ...
	ShitNoGold					=	"SVM_30_ShitNoGold"					;//You don't even have any gold on you?
	ITakeYourWeapon				=	"SVM_30_ITakeYourWeapon"				;//I think I'll take your weapon for safekeeping.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_30_WhatAreYouDoing"				;//(warning) Hey! Watch it!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_30_LookingForTroubleAgain"		;//(aggressively) Haven't you had enough yet?
	StopMagic					=	"SVM_30_StopMagic"					;//Just stay away from me with that magic of yours!
	ISaidStopMagic				=	"SVM_30_ISaidStopMagic"				;//Cut out that magic! Something wrong with your ears!?
	WeaponDown					=	"SVM_30_WeaponDown"					;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_30_ISaidWeaponDown"				;//Are you deaf or what? I said: Put down that weapon!
	WiseMove					=	"SVM_30_WiseMove"					;//See, that wasn't so hard.
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_30_NextTimeYoureInForIt"		;//(to himself) We'll see about that ...
	OhMyHead					=	"SVM_30_OhMyHead"					;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_30_TheresAFight"				;//(eagerly) And now for some action!
	OhMyGodItsAFight			=	"SVM_30_OhMyGodItsAFight"			;//(dismayed) They're smashing each other's skulls ...
	GoodVictory					=	"SVM_30_GoodVictory"					;//(evil laugh) He deserved that!
	NotBad						= 	"SVM_30_NotBad"						;//(approvingly) Not bad at all ...
	OhMyGodHesDown				=	"SVM_30_OhMyGodHesDown"				;//(to himself) What a brutal fellow ...
	CheerFriend01				=	"SVM_30_CheerFriend01"				;//Yeah, that's the ticket!
	CheerFriend02				=	"SVM_30_CheerFriend02"				;//Whatcha waiting for?
	CheerFriend03				=	"SVM_30_CheerFriend03"				;//Atta boy!
	Ooh01						=	"SVM_30_Ooh01"						;//Don't take any crap!
	Ooh02						=	"SVM_30_Ooh02"						;//Show him who's boss!
	Ooh03						=	"SVM_30_Ooh03"						;//Holy shit!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_30_WhatWasThat"					;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_30_GetOutOfMyBed"					;//Get out of my bed!
	Awake						= "SVM_30_Awake"							;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_30_TOUGHGUY_ATTACKLOST"			;//All right, all right, you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_30_TOUGHGUY_ATTACKWON"			;//(smugly) Do I have to show you again who's boss?
	TOUGHGUY_PLAYERATTACK		= "SVM_30_TOUGHGUY_PLAYERATTACK"			;//Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_30_GOLD_1000"						;//1000 gold pieces.
	GOLD_950					= "SVM_30_GOLD_950"						;//950 gold pieces.
	GOLD_900					= "SVM_30_GOLD_900"						;//900 gold pieces.
	GOLD_850					= "SVM_30_GOLD_850"						;//850 gold pieces.
	GOLD_800					= "SVM_30_GOLD_800"						;//800 gold pieces.
	GOLD_750					= "SVM_30_GOLD_750"						;//750 gold pieces.
	GOLD_700					= "SVM_30_GOLD_700"						;//700 gold pieces.
	GOLD_650					= "SVM_30_GOLD_650"						;//650 gold pieces.
	GOLD_600					= "SVM_30_GOLD_600"						;//600 gold pieces.
	GOLD_550					= "SVM_30_GOLD_550"						;//550 gold pieces.
	GOLD_500					= "SVM_30_GOLD_500"						;//500 gold pieces.
	GOLD_450					= "SVM_30_GOLD_450"						;//450 gold pieces.
	GOLD_400					= "SVM_30_GOLD_400"						;//400 gold pieces.
	GOLD_350					= "SVM_30_GOLD_350"						;//350 gold pieces.
	GOLD_300					= "SVM_30_GOLD_300"						;//300 gold pieces.
	GOLD_250					= "SVM_30_GOLD_250"						;//250 gold pieces.
	GOLD_200					= "SVM_30_GOLD_200"						;//200 gold pieces.
	GOLD_150					= "SVM_30_GOLD_150"						;//150 gold pieces.
	GOLD_100					= "SVM_30_GOLD_100"						;//100 gold pieces.
	GOLD_90						= "SVM_30_GOLD_90"						;//90 gold pieces.
	GOLD_80						= "SVM_30_GOLD_80"						;//80 gold pieces.
	GOLD_70						= "SVM_30_GOLD_70"						;//70 gold pieces.
	GOLD_60						= "SVM_30_GOLD_60"						;//60 gold pieces.
	GOLD_50						= "SVM_30_GOLD_50"						;//50 gold pieces.
	GOLD_40						= "SVM_30_GOLD_40"						;//40 gold pieces.
	GOLD_30						= "SVM_30_GOLD_30"						;//30 gold pieces.
	GOLD_20						= "SVM_30_GOLD_20"						;//20 gold pieces.
	GOLD_10						= "SVM_30_GOLD_10"						;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_30_Smalltalk01"					;//... do you really think ...
	Smalltalk02					= "SVM_30_Smalltalk02"					;//... anything's possible ...
	Smalltalk03					= "SVM_30_Smalltalk03"					;//... he should have known better ...
	Smalltalk04					= "SVM_30_Smalltalk04"					;//... as if I didn't have enough problems ...
	Smalltalk05					= "SVM_30_Smalltalk05"					;//... who said that ...
	Smalltalk06					= "SVM_30_Smalltalk06"					;//... that'll only cause more trouble ...
	Smalltalk07					= "SVM_30_Smalltalk07"					;//... there've been all kinds of rumors ...
	Smalltalk08					= "SVM_30_Smalltalk08"					;//... I wouldn't have done that ...
	Smalltalk09					= "SVM_30_Smalltalk09"					;//... those are all just rumors ...
	Smalltalk10					= "SVM_30_Smalltalk10"					;//... it's better to watch out who you tell what ...
	Smalltalk11					= "SVM_30_Smalltalk11"					;//... I could have told you that before ...
	Smalltalk12					= "SVM_30_Smalltalk12"					;//... nobody ever asks me ...
	Smalltalk13					= "SVM_30_Smalltalk13"					;//... you have to feel sorry for the poor guy ...
	Smalltalk14					= "SVM_30_Smalltalk14"					;//... that's nothing new ...
	Smalltalk15					= "SVM_30_Smalltalk15"					;//... that's totally obvious ...
	Smalltalk16					= "SVM_30_Smalltalk16"					;//... you don't have to ask me that ...
	Smalltalk17					= "SVM_30_Smalltalk17"					;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_30_Smalltalk18"					;//... you already know what I think ...
	Smalltalk19					= "SVM_30_Smalltalk19"					;//... that's exactly what I said ...
	Smalltalk20					= "SVM_30_Smalltalk20"					;//... nothing's going to change about that ...
	Smalltalk21					= "SVM_30_Smalltalk21"					;//... why haven't I heard about this before ...
	Smalltalk22					= "SVM_30_Smalltalk22"					;//... let's wait and see what happens ...
	Smalltalk23					= "SVM_30_Smalltalk23"					;//... some problems solve themselves ...
	Smalltalk24					= "SVM_30_Smalltalk24"					;//... I don't want to hear that anymore ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_30_Smalltalk25"					;//... he was falling down drunk ...
	Smalltalk26					= "SVM_30_Smalltalk26"					;//... I won't be treated like that ...
	Smalltalk27					= "SVM_30_Smalltalk27"					;//... they all ran like rabbits, I was completely alone ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_30_Smalltalk28"					;//... so it says in the scriptures ...
	Smalltalk29					= "SVM_30_Smalltalk29"					;//... I always act in the name of Innos ...
	Smalltalk30					= "SVM_30_Smalltalk30"					;//... no one must violate the divine order ...
	SmalltalkKhorataAnnaQuest01			= "SVM_30_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_30_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_30_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_30_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_30_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_30_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_30_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_30_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_30_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_30_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_30_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_30_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_30_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_30_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_30_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_30_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_30_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_30_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_30_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_30_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_30_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_30_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_30_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_30_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_30_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_30_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_30_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_30_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_30_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_30_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_30_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_30_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_30_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_30_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_30_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_30_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_30_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_30_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_30_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_30_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_30_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_30_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_30_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_30_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_30_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_30_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_30_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_30_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_30_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_30_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_30_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_30_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_30_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_30_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_30_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_30_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_30_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_30_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_30_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_30_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_30_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_30_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_30_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_30_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_30_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_30_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_30_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_30_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_30_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_30_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_30_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_30_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_30_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_30_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_30_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_30_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_30_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_30_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...

	// D�monenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_30_SmalltalkDMRBelagerungAbdi01"; //... to be honest, I'm not sorry about the two of them...
	SmalltalkDMRBelagerungAbdi02			= "SVM_30_SmalltalkDMRBelagerungAbdi02"; //... would like to know who is slaughtering the people in this camp....
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_30_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_30_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_30_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_30_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_30_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_30_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_30_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_30_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_30_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_30_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_30_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_30_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_30_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_30_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_30_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_30_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_30_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_30_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_30_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_30_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_30_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_30_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_30_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_30_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_30_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_30_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_30_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_30_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_30_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_30_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_30_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_30_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_30_Addon_WrongArmor";				//What kind of clothes are those? They don't suit you at all. Leave me alone.
	ADDON_WRONGARMOR_SLD		= "SVM_30_ADDON_WRONGARMOR_SLD";			//Kindly wear our armor when I'm talking to you. Go on, beat it.
	ADDON_WRONGARMOR_MIL		= "SVM_30_ADDON_WRONGARMOR_MIL";			//You are supposed to wear the King's armor. Now, go.
	ADDON_WRONGARMOR_KDF		= "SVM_30_ADDON_WRONGARMOR_KDF";			//Your clothing is not appropriate for our order. Go and change.
	ADDON_NOARMOR_BDT			= "SVM_30_ADDON_ADDON_NOARMOR_BDT";			//You haven't even got any armor. Beat it!

	ADDON_DIEBANDIT				= "SVM_30_ADDON_DIEBANDIT";				//Another bandit.
	ADDON_DIRTYPIRATE			= "SVM_30_ADDON_DIRTYPIRATE";			//PIRATES!

	RELMINE01			= "SVM_30_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_30_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_30_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_30_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_30_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_30_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_30_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_30_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_30_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_30_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_30_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_30_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_30_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_30_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_30_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_30_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_30_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_30_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_30_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_30_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_30_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_30_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_30_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_30_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_30_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_30_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_30_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_30_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_30_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_30_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_30_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_30_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_30_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_30_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_30_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_30_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_30_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_30_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_30_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_30_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_30_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_30_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_30_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_30_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_30_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_30_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_30_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_30_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_30_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_30_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_30_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_30_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_30_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_30_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_30_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_30_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_30_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_34 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_34_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_34_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_34_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_34_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_34_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_34_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_34_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_34_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_34_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_34_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_34_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_34_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	Berzerk						=	"SVM_34_Berzerk"						;//UUAAARRGGGHHHH!!!!
	YouMurderer					=	"SVM_34_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_34_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_34_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_34_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_34_ThenIBeatYouOutOfHere"		;//Then I'll have to KNOCK you out of here!
	WhatDidYouDoInThere			=	"SVM_34_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_34_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_34_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_34_EnemyKilled"					;//So much for you, lowlife!
	MonsterKilled				=	"SVM_34_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_34_ThiefDown"					;//Never try to steal from me again!
	rumfummlerDown				=	"SVM_34_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_34_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_34_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_34_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_34_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_34_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_34_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_34_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_34_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_34_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_34_Alarm"						;//ALARM!
	Guards						=	"SVM_34_Guards"						;//GUARDS!
	Help						=	"SVM_34_Help"						;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_34_GoodMonsterKill"				;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_34_GoodKill"					;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_34_NOTNOW"						;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_34_RunCoward"					;//(calls loudly) Stop right there, you lowlife!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_34_GetOutOfHere"				;//Get out of here!
	WhyAreYouInHere				=	"SVM_34_WhyAreYouInHere"				;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_34_YesGoOutOfHere"				;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_34_WhatsThisSupposedToBe"		;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_34_YouDisturbedMySlumber"		;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_34_ITookYourGold"				;//Gold! OK, that's mine for starters ...
	ShitNoGold					=	"SVM_34_ShitNoGold"					;//You don't even have any gold on you?
	ITakeYourWeapon				=	"SVM_34_ITakeYourWeapon"				;//I think I'll take your weapon for safekeeping.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_34_WhatAreYouDoing"				;//(warning) Hey! Watch it!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_34_LookingForTroubleAgain"		;//(aggressively) Haven't you had enough yet?
	StopMagic					=	"SVM_34_StopMagic"					;//Just stay away from me with that magic of yours!
	ISaidStopMagic				=	"SVM_34_ISaidStopMagic"				;//Cut out that magic! Something wrong with your ears!?
	WeaponDown					=	"SVM_34_WeaponDown"					;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_34_ISaidWeaponDown"				;//Are you deaf or what? I said: Put down that weapon!
	WiseMove					=	"SVM_34_WiseMove"					;//See, that wasn't so hard.
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_34_NextTimeYoureInForIt"		;//(to himself) We'll see about that ...
	OhMyHead					=	"SVM_34_OhMyHead"					;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_34_TheresAFight"				;//(eagerly) And now for some action!
	OhMyGodItsAFight			=	"SVM_34_OhMyGodItsAFight"			;//(dismayed) They're smashing each other's skulls ...
	GoodVictory					=	"SVM_34_GoodVictory"					;//(evil laugh) He deserved that!
	NotBad						= 	"SVM_34_NotBad"						;//(approvingly) Not bad at all ...
	OhMyGodHesDown				=	"SVM_34_OhMyGodHesDown"				;//(to himself) What a brutal fellow ...
	CheerFriend01				=	"SVM_34_CheerFriend01"				;//Yeah, that's the ticket!
	CheerFriend02				=	"SVM_34_CheerFriend02"				;//Whatcha waiting for?
	CheerFriend03				=	"SVM_34_CheerFriend03"				;//Atta boy!
	Ooh01						=	"SVM_34_Ooh01"						;//Don't take any crap!
	Ooh02						=	"SVM_34_Ooh02"						;//Show him who's boss!
	Ooh03						=	"SVM_34_Ooh03"						;//Holy shit!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_34_WhatWasThat"					;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_34_GetOutOfMyBed"					;//Get out of my bed!
	Awake						= "SVM_34_Awake"							;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_34_TOUGHGUY_ATTACKLOST"			;//All right, all right, you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_34_TOUGHGUY_ATTACKWON"			;//(smugly) Do I have to show you again who's boss?
	TOUGHGUY_PLAYERATTACK		= "SVM_34_TOUGHGUY_PLAYERATTACK"			;//Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_34_GOLD_1000"						;//1000 gold pieces.
	GOLD_950					= "SVM_34_GOLD_950"						;//950 gold pieces.
	GOLD_900					= "SVM_34_GOLD_900"						;//900 gold pieces.
	GOLD_850					= "SVM_34_GOLD_850"						;//850 gold pieces.
	GOLD_800					= "SVM_34_GOLD_800"						;//800 gold pieces.
	GOLD_750					= "SVM_34_GOLD_750"						;//750 gold pieces.
	GOLD_700					= "SVM_34_GOLD_700"						;//700 gold pieces.
	GOLD_650					= "SVM_34_GOLD_650"						;//650 gold pieces.
	GOLD_600					= "SVM_34_GOLD_600"						;//600 gold pieces.
	GOLD_550					= "SVM_34_GOLD_550"						;//550 gold pieces.
	GOLD_500					= "SVM_34_GOLD_500"						;//500 gold pieces.
	GOLD_450					= "SVM_34_GOLD_450"						;//450 gold pieces.
	GOLD_400					= "SVM_34_GOLD_400"						;//400 gold pieces.
	GOLD_350					= "SVM_34_GOLD_350"						;//350 gold pieces.
	GOLD_300					= "SVM_34_GOLD_300"						;//300 gold pieces.
	GOLD_250					= "SVM_34_GOLD_250"						;//250 gold pieces.
	GOLD_200					= "SVM_34_GOLD_200"						;//200 gold pieces.
	GOLD_150					= "SVM_34_GOLD_150"						;//150 gold pieces.
	GOLD_100					= "SVM_34_GOLD_100"						;//100 gold pieces.
	GOLD_90						= "SVM_34_GOLD_90"						;//90 gold pieces.
	GOLD_80						= "SVM_34_GOLD_80"						;//80 gold pieces.
	GOLD_70						= "SVM_34_GOLD_70"						;//70 gold pieces.
	GOLD_60						= "SVM_34_GOLD_60"						;//60 gold pieces.
	GOLD_50						= "SVM_34_GOLD_50"						;//50 gold pieces.
	GOLD_40						= "SVM_34_GOLD_40"						;//40 gold pieces.
	GOLD_30						= "SVM_34_GOLD_30"						;//30 gold pieces.
	GOLD_20						= "SVM_34_GOLD_20"						;//20 gold pieces.
	GOLD_10						= "SVM_34_GOLD_10"						;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_34_Smalltalk01"					;//... I can't believe that ...
	Smalltalk02					= "SVM_34_Smalltalk02"					;//... I wouldn't be so sure ...
	Smalltalk03					= "SVM_34_Smalltalk03"					;//... but he knew that all along ...
	Smalltalk04					= "SVM_34_Smalltalk04"					;//... I hardly know what to believe anymore...
	Smalltalk05					= "SVM_34_Smalltalk05"					;//... I don't know why he gets so worked up ...
	Smalltalk06					= "SVM_34_Smalltalk06"					;//... I'm in enough trouble as it is ...
	Smalltalk07					= "SVM_34_Smalltalk07"					;//... I have heard a thing or two ...
	Smalltalk08					= "SVM_34_Smalltalk08"					;//... I'm not touching that ...
	Smalltalk09					= "SVM_34_Smalltalk09"					;//... you mustn't believe everything you hear ...
	Smalltalk10					= "SVM_34_Smalltalk10"					;//... he didn't get that from me ...
	Smalltalk11					= "SVM_34_Smalltalk11"					;//... I already thought as much ...
	Smalltalk12					= "SVM_34_Smalltalk12"					;//... nobody ever asks for my opinion ...
	Smalltalk13					= "SVM_34_Smalltalk13"					;//... he really didn't deserve that ...
	Smalltalk14					= "SVM_34_Smalltalk14"					;//... don't say you didn't know that ...
	Smalltalk15					= "SVM_34_Smalltalk15"					;//... that was quite obvious ...
	Smalltalk16					= "SVM_34_Smalltalk16"					;//... where did you pick that up then ...
	Smalltalk17					= "SVM_34_Smalltalk17"					;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_34_Smalltalk18"					;//... I've got my own opinion about that ...
	Smalltalk19					= "SVM_34_Smalltalk19"					;//... it was just like you said ...
	Smalltalk20					= "SVM_34_Smalltalk20"					;//... I don't believe this is going to change ...
	Smalltalk21					= "SVM_34_Smalltalk21"					;//... that's the first I've heard of it ...
	Smalltalk22					= "SVM_34_Smalltalk22"					;//... we can only wait and see ...
	Smalltalk23					= "SVM_34_Smalltalk23"					;//... I knew that would be a problem ...
	Smalltalk24					= "SVM_34_Smalltalk24"					;//... so why won't they listen to me ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                           
	Smalltalk25					= "SVM_34_Smalltalk25"					;//... he ran like Beliar himself was after him ...
	Smalltalk26					= "SVM_34_Smalltalk26"					;//... of course we got him after all ...
	Smalltalk27					= "SVM_34_Smalltalk27"					;//... you have to step in and sort things out ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                           
	Smalltalk28					= "SVM_34_Smalltalk28"					;//... some don't even know how wicked they are ...
	Smalltalk29					= "SVM_34_Smalltalk29"					;//... for that is the will of Innos ...
	Smalltalk30					= "SVM_34_Smalltalk30"					;//... his deeds were just ...
	SmalltalkKhorataAnnaQuest01			= "SVM_34_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_34_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_34_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_34_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_34_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_34_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_34_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_34_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_34_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_34_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_34_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_34_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_34_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_34_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_34_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_34_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_34_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_34_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_34_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_34_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_34_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_34_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_34_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_34_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_34_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_34_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_34_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_34_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_34_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_34_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_34_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_34_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_34_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_34_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_34_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_34_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_34_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_34_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_34_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_34_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_34_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_34_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_34_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_34_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_34_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_34_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_34_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_34_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_34_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_34_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_34_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_34_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_34_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_34_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_34_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_34_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_34_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_34_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_34_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_34_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_34_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_34_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_34_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_34_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_34_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_34_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_34_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_34_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_34_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_34_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_34_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_34_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_34_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_34_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_34_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_34_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_34_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_34_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_34_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_34_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_34_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_34_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_34_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_34_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_34_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_34_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_34_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_34_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_34_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_34_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_34_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_34_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_34_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_34_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_34_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_34_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_34_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_34_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_34_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_34_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_34_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_34_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_34_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_34_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_34_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_34_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_34_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_34_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_34_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_34_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_34_Addon_WrongArmor";			//Your clothes don't suit you. You must have something to hide. Leave me alone.
	ADDON_WRONGARMOR_SLD		= "SVM_34_ADDON_WRONGARMOR_SLD";		//If you want to talk to me, you have to wear our armor.
	ADDON_WRONGARMOR_MIL		= "SVM_34_ADDON_WRONGARMOR_MIL";		//Be proud of the army and don't run around in those rags. First, go change.
	ADDON_WRONGARMOR_KDF		= "SVM_34_ADDON_WRONGARMOR_KDF";		//Your clothing is not appropriate for our order. Go and change.
	ADDON_NOARMOR_BDT			= "SVM_34_ADDON_ADDON_NOARMOR_BDT";		//You haven't even got any armor. Beat it!

	ADDON_DIEBANDIT				= "SVM_34_ADDON_DIEBANDIT";				//Die, bandit.
	ADDON_DIRTYPIRATE			= "SVM_34_ADDON_DIRTYPIRATE";			//Die, pirate.

	RELMINE01			= "SVM_34_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_34_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_34_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_34_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_34_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_34_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_34_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_34_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_34_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_34_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_34_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_34_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_34_NoLearnGold"			;//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_34_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_34_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_34_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_34_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_34_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_34_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_34_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_34_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_34_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_34_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_34_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_34_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_34_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_34_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_34_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_34_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_34_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_34_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_34_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_34_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_34_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_34_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_34_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_34_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_34_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_34_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_34_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_34_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_34_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_34_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_34_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_34_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_34_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_34_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_34_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_34_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_34_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_34_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_34_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_34_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_34_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_34_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_34_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_34_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};

instance SVM_36 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_36_MILGreetings"				;//For the King!
	PALGreetings				=	"SVM_36_PALGreetings"				;//For Innos!
	BELGreetings				=	"SVM_36_BELGreetings"				;//To honor Beliar!
	AdanosGreetings				=	"SVM_36_AdanosGreetings"				;//Adanos be with you!
	Weather						= 	"SVM_36_Weather"						;//Crappy weather!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_36_IGetYouStill"				;//So I've got you after ALL!
	DieEnemy					=	"SVM_36_DieEnemy"					;//You're in for it now!
	DieMonster					=	"SVM_36_DieMonster"					;//There's another of those scummy beasts!
	DirtyThief					=	"SVM_36_DirtyThief"					;//Filthy thief! Just you wait!
	HandsOff					=	"SVM_36_HandsOff"					;//Take your paws off that!
	SheepKiller					=	"SVM_36_SheepKiller"					;//That piece of shit is slaughtering our sheep!
	SheepKillerMonster			=	"SVM_36_SheepKillerMonster"			;//That blasted monster is gobbling up our sheep!
	YouMurderer					=	"SVM_36_YouMurderer"					;//Murderer!
	DieStupidBeast				=	"SVM_36_DieStupidBeast"				;//No beasts in here!
	YouDareHitMe				=	"SVM_36_YouDareHitMe"				;//Just you wait, you sumbitch!
	YouAskedForIt				=	"SVM_36_YouAskedForIt"				;//You asked for it!
	ThenIBeatYouOutOfHere		=	"SVM_36_ThenIBeatYouOutOfHere"		;//Then I'll have to knock you out of here!
	WhatDidYouDoInThere			=	"SVM_36_WhatDidYouDoInThere"			;//So what was YOUR business in there, huh!?
	WillYouStopFighting			=	"SVM_36_WillYouStopFighting"			;//Will you stop it already!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_36_KillEnemy"					;//Die, bastard!
	EnemyKilled					=	"SVM_36_EnemyKilled"					;//So much for you, lowlife!
	MonsterKilled				=	"SVM_36_MonsterKilled"				;//One less monster around!
	ThiefDown					=	"SVM_36_ThiefDown"					;//Never try to steal from me again!
	Berzerk						=	"SVM_36_Berzerk"						;//UUAAARRGGGHHHH!!!!
	rumfummlerDown				=	"SVM_36_rumfummlerDown"				;//From now on, keep your paws off stuff that isn't yours!
	SheepAttackerDown			=	"SVM_36_SheepAttackerDown"			;//Never do that again! Those are our sheep!
	KillMurderer				=	"SVM_36_KillMurderer"				;//Die, murderer!
	StupidBeastKilled			=	"SVM_36_StupidBeastKilled"			;//What a bloody stupid beast!
	NeverHitMeAgain				=	"SVM_36_NeverHitMeAgain"				;//Never pick a fight with me again!
	YouBetterShouldHaveListened	=	"SVM_36_YouBetterShouldHaveListened"	;//You should have listened to me!
	GetUpAndBeGone				=	"SVM_36_GetUpAndBeGone"				;//And now get out of here!
	NeverEnterRoomAgain			=	"SVM_36_NeverEnterRoomAgain"			;//And never let me catch you in there again!
	ThereIsNoFightingHere		=	"SVM_36_ThereIsNoFightingHere"		;//No fighting here, do you understand? Let that be a lesson to you!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_36_RunAway"						;//Shit! I'm outta here!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_36_Alarm"						;//ALARM!
	Guards						=	"SVM_36_Guards"						;//GUARDS!
	Help						=	"SVM_36_Help"						;//Help!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_36_GoodMonsterKill"				;//(calls to) Well done - one dirty beast less!
	GoodKill					= 	"SVM_36_GoodKill"					;//(calls) Yeah, give the swine what for!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_36_NOTNOW"						;//Leave me alone!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_36_RunCoward"					;//(calls loudly) Stop right there, you lowlife!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_36_GetOutOfHere"				;//Get out of here!
	WhyAreYouInHere				=	"SVM_36_WhyAreYouInHere"				;//What do you want here!? Go!
	YesGoOutOfHere				= 	"SVM_36_YesGoOutOfHere"				;//Yeah, get away from here!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_36_WhatsThisSupposedToBe"		;//Hey you! What are you creeping around there for?
	YouDisturbedMySlumber		=	"SVM_36_YouDisturbedMySlumber"		;//(wakes up) Damnit, what's up?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_36_ITookYourGold"				;//Gold! OK, that's mine for starters ...
	ShitNoGold					=	"SVM_36_ShitNoGold"					;//The bastard doesn't even have any gold on him.
	ITakeYourWeapon				=	"SVM_36_ITakeYourWeapon"				;//I think I'll take your weapon for safekeeping.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_36_WhatAreYouDoing"				;//(warning) Hey! Watch it!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_36_LookingForTroubleAgain"		;//(aggressively) Haven't you had enough yet?
	StopMagic					=	"SVM_36_StopMagic"					;//Just stay away from me with that magic of yours!
	ISaidStopMagic				=	"SVM_36_ISaidStopMagic"				;//Cut out that magic! Something wrong with your ears!?
	WeaponDown					=	"SVM_36_WeaponDown"					;//Put down that weapon!
	ISaidWeaponDown				=	"SVM_36_ISaidWeaponDown"				;//Are you deaf or what? I said: Put down that weapon!
	WiseMove					=	"SVM_36_WiseMove"					;//See, that wasn't so hard.
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_36_NextTimeYoureInForIt"		;//(to himself) We'll see about that ...
	OhMyHead					=	"SVM_36_OhMyHead"					;//(to himself) Oh man, my head ...
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_36_TheresAFight"				;//(eagerly) And now for some action!
	OhMyGodItsAFight			=	"SVM_36_OhMyGodItsAFight"			;//(dismayed) They're smashing each other's skulls ...
	GoodVictory					=	"SVM_36_GoodVictory"					;//(evil laugh) He deserved that!
	NotBad						= 	"SVM_36_NotBad"						;//(approvingly) Not bad at all ...
	OhMyGodHesDown				=	"SVM_36_OhMyGodHesDown"				;//(to himself) What a brutal fellow ...
	CheerFriend01				=	"SVM_36_CheerFriend01"				;//Yeah, that's the ticket!
	CheerFriend02				=	"SVM_36_CheerFriend02"				;//Whatcha waiting for?
	CheerFriend03				=	"SVM_36_CheerFriend03"				;//Atta boy!
	Ooh01						=	"SVM_36_Ooh01"						;//Don't take any crap!
	Ooh02						=	"SVM_36_Ooh02"						;//Show him who's boss!
	Ooh03						=	"SVM_36_Ooh03"						;//Holy shit!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_36_WhatWasThat"					;//(to himself, waking up) What was THAT!?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_36_GetOutOfMyBed"					;//Get out of my bed!
	Awake						= "SVM_36_Awake"							;//(hearty yawn)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_36_TOUGHGUY_ATTACKLOST"			;//All right, all right, you win. What do you want?
	TOUGHGUY_ATTACKWON			= "SVM_36_TOUGHGUY_ATTACKWON"			;//(smugly) Do I have to show you again who's boss?
	TOUGHGUY_PLAYERATTACK		= "SVM_36_TOUGHGUY_PLAYERATTACK"			;//Trying to pick another fight with me, are you?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_36_GOLD_1000"						;//1000 gold pieces.
	GOLD_950					= "SVM_36_GOLD_950"						;//950 gold pieces.
	GOLD_900					= "SVM_36_GOLD_900"						;//900 gold pieces.
	GOLD_850					= "SVM_36_GOLD_850"						;//850 gold pieces.
	GOLD_800					= "SVM_36_GOLD_800"						;//800 gold pieces.
	GOLD_750					= "SVM_36_GOLD_750"						;//750 gold pieces.
	GOLD_700					= "SVM_36_GOLD_700"						;//700 gold pieces.
	GOLD_650					= "SVM_36_GOLD_650"						;//650 gold pieces.
	GOLD_600					= "SVM_36_GOLD_600"						;//600 gold pieces.
	GOLD_550					= "SVM_36_GOLD_550"						;//550 gold pieces.
	GOLD_500					= "SVM_36_GOLD_500"						;//500 gold pieces.
	GOLD_450					= "SVM_36_GOLD_450"						;//450 gold pieces.
	GOLD_400					= "SVM_36_GOLD_400"						;//400 gold pieces.
	GOLD_350					= "SVM_36_GOLD_350"						;//350 gold pieces.
	GOLD_300					= "SVM_36_GOLD_300"						;//300 gold pieces.
	GOLD_250					= "SVM_36_GOLD_250"						;//250 gold pieces.
	GOLD_200					= "SVM_36_GOLD_200"						;//200 gold pieces.
	GOLD_150					= "SVM_36_GOLD_150"						;//150 gold pieces.
	GOLD_100					= "SVM_36_GOLD_100"						;//100 gold pieces.
	GOLD_90						= "SVM_36_GOLD_90"						;//90 gold pieces.
	GOLD_80						= "SVM_36_GOLD_80"						;//80 gold pieces.
	GOLD_70						= "SVM_36_GOLD_70"						;//70 gold pieces.
	GOLD_60						= "SVM_36_GOLD_60"						;//60 gold pieces.
	GOLD_50						= "SVM_36_GOLD_50"						;//50 gold pieces.
	GOLD_40						= "SVM_36_GOLD_40"						;//40 gold pieces.
	GOLD_30						= "SVM_36_GOLD_30"						;//30 gold pieces.
	GOLD_20						= "SVM_36_GOLD_20"						;//20 gold pieces.
	GOLD_10						= "SVM_36_GOLD_10"						;//10 gold pieces.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_36_Smalltalk01"					;//... do you really think ...
	Smalltalk02					= "SVM_36_Smalltalk02"					;//... anything's possible ...
	Smalltalk03					= "SVM_36_Smalltalk03"					;//... he should have known better ...
	Smalltalk04					= "SVM_36_Smalltalk04"					;//... as if I didn't have enough problems ...
	Smalltalk05					= "SVM_36_Smalltalk05"					;//... who said that ...
	Smalltalk06					= "SVM_36_Smalltalk06"					;//... that'll only cause more trouble ...
	Smalltalk07					= "SVM_36_Smalltalk07"					;//... there've been all kinds of rumors ...
	Smalltalk08					= "SVM_36_Smalltalk08"					;//... I wouldn't have done that ...
	Smalltalk09					= "SVM_36_Smalltalk09"					;//... those are all just rumors ...
	Smalltalk10					= "SVM_36_Smalltalk10"					;//... it's better to watch out who you tell what ...
	Smalltalk11					= "SVM_36_Smalltalk11"					;//... I could have told you that before ...
	Smalltalk12					= "SVM_36_Smalltalk12"					;//... nobody ever asks me ...
	Smalltalk13					= "SVM_36_Smalltalk13"					;//... you have to feel sorry for the poor guy ...
	Smalltalk14					= "SVM_36_Smalltalk14"					;//... that's nothing new ...
	Smalltalk15					= "SVM_36_Smalltalk15"					;//... that's totally obvious ...
	Smalltalk16					= "SVM_36_Smalltalk16"					;//... you don't have to ask me that ...
	Smalltalk17					= "SVM_36_Smalltalk17"					;//... it can't go on like this forever ...
	Smalltalk18					= "SVM_36_Smalltalk18"					;//... you already know what I think ...
	Smalltalk19					= "SVM_36_Smalltalk19"					;//... that's exactly what I said ...
	Smalltalk20					= "SVM_36_Smalltalk20"					;//... nothing's ever going to change that ...
	Smalltalk21					= "SVM_36_Smalltalk21"					;//... why haven't I heard about this before ...
	Smalltalk22					= "SVM_36_Smalltalk22"					;//... let's wait and see what happens ...
	Smalltalk23					= "SVM_36_Smalltalk23"					;//... some problems solve themselves ...
	Smalltalk24					= "SVM_36_Smalltalk24"					;//... I don't want to hear that anymore ...
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_36_Smalltalk25"					;//... he was falling down drunk ...
	Smalltalk26					= "SVM_36_Smalltalk26"					;//... I won't be treated like that ...
	Smalltalk27					= "SVM_36_Smalltalk27"					;//... they all ran like rabbits, I was completely alone ...
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_36_Smalltalk28"					;//... so it says in the scriptures ...
	Smalltalk29					= "SVM_36_Smalltalk29"					;//... I always act in the name of Innos ...
	Smalltalk30					= "SVM_36_Smalltalk30"					;//... no one must violate the divine order ...
	SmalltalkKhorataAnnaQuest01			= "SVM_36_SmalltalkKhorataAnnaQuest01"; //... he slaughtered them all....
	SmalltalkKhorataAnnaQuest02			= "SVM_36_SmalltalkKhorataAnnaQuest02"; //... after what he did to the judge, I wouldn't let him into my house...
	SmalltalkKhorataAnnaQuest03			= "SVM_36_SmalltalkKhorataAnnaQuest03"; //... I don't mourn for my sons and daughters...
	SmalltalkKhorataAnnaQuest04			= "SVM_36_SmalltalkKhorataAnnaQuest04"; //... Ulrich always seemed strange to me...
	SmalltalkKhorataAnnaQuest05			= "SVM_36_SmalltalkKhorataAnnaQuest05"; //... would bet that Ulrich was also a witch...
	SmalltalkKhorataAnnaQuest06			= "SVM_36_SmalltalkKhorataAnnaQuest06"; //... I would never have taken the side of the judge....
	SmalltalkKhorataDichter01			= "SVM_36_SmalltalkKhorataDichter01"; //... It couldn't have been the poems that were responsible for it....
	SmalltalkKhorataDichter02			= "SVM_36_SmalltalkKhorataDichter02"; //... he has now stopped writing....
	SmalltalkKhorataDichter03			= "SVM_36_SmalltalkKhorataDichter03"; //... he's never helped me before....
	SmalltalkKhorataDichter04			= "SVM_36_SmalltalkKhorataDichter04"; //... I haven't seen him in a long time....
	SmalltalkKhorataDichter05			= "SVM_36_SmalltalkKhorataDichter05"; //... I miss his stories so much...
	SmalltalkKhorataEndres01			= "SVM_36_SmalltalkKhorataEndres01"; //... about Juliana's husband? ...
	SmalltalkKhorataEndres02			= "SVM_36_SmalltalkKhorataEndres02"; //... o Adanos, now people are being kidnapped in Khorata...
	SmalltalkKhorataEndres03			= "SVM_36_SmalltalkKhorataEndres03"; //... I can't imagine him still alive...
	SmalltalkKhorataEndres04			= "SVM_36_SmalltalkKhorataEndres04"; //... but who's healing us now? ...
	SmalltalkKhorataEndres05			= "SVM_36_SmalltalkKhorataEndres05"; //... I can't believe he was guilty...
	SmalltalkKhorataEndres06			= "SVM_36_SmalltalkKhorataEndres06"; //... He did no better than the healer....
	SmalltalkKhorataEndres07			= "SVM_36_SmalltalkKhorataEndres07"; //... the nameless man is a hero to me....
	SmalltalkKhorataFrauenkleider01			= "SVM_36_SmalltalkKhorataFrauenkleider01"; //... Melvin wears women's clothes! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_36_SmalltalkKhorataFrauenkleider02"; //... Does he want to be taken seriously? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_36_SmalltalkKhorataFrauenkleider03"; //... Melvin stole my underwear! ...

	SmalltalkKhorataUnruhen01			= "SVM_36_SmalltalkKhorataUnruhen01"; //... You'll be all right....
	SmalltalkKhorataUnruhen02			= "SVM_36_SmalltalkKhorataUnruhen02"; //... It would have been different in the past....
	SmalltalkKhorataUnruhen03			= "SVM_36_SmalltalkKhorataUnruhen03"; //... We should overwhelm them at night....
	SmalltalkKhorataUnruhen04			= "SVM_36_SmalltalkKhorataUnruhen04"; //... That's what they deserve...
	SmalltalkKhorataUnruhen05			= "SVM_36_SmalltalkKhorataUnruhen05"; //... Tyrus and Dalton are dead! ...
	SmalltalkKhorataUnruhen06			= "SVM_36_SmalltalkKhorataUnruhen06"; //... So what? What do I care? ...
	SmalltalkKhorataUnruhen07			= "SVM_36_SmalltalkKhorataUnruhen07"; //... I hardly dare to go out on the street....
	SmalltalkKhorataUnruhen08			= "SVM_36_SmalltalkKhorataUnruhen08"; //... This is bullshit.
	SmalltalkKhorataUnruhen09			= "SVM_36_SmalltalkKhorataUnruhen09"; //... Luke was to become the new governor...
	SmalltalkKhorataUnruhen10			= "SVM_36_SmalltalkKhorataUnruhen10"; //... I think Wendel would be better....
	SmalltalkKhorataUnruhen11			= "SVM_36_SmalltalkKhorataUnruhen11"; //... Not Theodorus! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_36_SmalltalkKhorataUnruhenTheodorus01"; //... A very bad decision...
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_36_SmalltalkKhorataUnruhenTheodorus02"; //... It couldn't get any worse....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_36_SmalltalkKhorataUnruhenTheodorus03"; //... Get your head back on....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_36_SmalltalkKhorataUnruhenTheodorus04"; //... I'm leaving town....

	SmalltalkKhorataUnruhenWendel01			= "SVM_36_SmalltalkKhorataUnruhenWendel01"; //... Am I glad the fighting's over...
	SmalltalkKhorataUnruhenWendel02			= "SVM_36_SmalltalkKhorataUnruhenWendel02"; //... With Wendel everything must always run correctly....
	SmalltalkKhorataUnruhenWendel03			= "SVM_36_SmalltalkKhorataUnruhenWendel03"; //... Finally I dare to go back on the road....
	SmalltalkKhorataUnruhenWendel04			= "SVM_36_SmalltalkKhorataUnruhenWendel04"; //... The Buddlers got away far too well! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_36_SmalltalkKhorataUnruhenLukas01"; //... Why can't we take a giver of joy anymore? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_36_SmalltalkKhorataUnruhenLukas02"; //... After all, Luke is better than Wendel....
	SmalltalkKhorataUnruhenLukas03			= "SVM_36_SmalltalkKhorataUnruhenLukas03"; //... They've killed all the Buddlers! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_36_SmalltalkKhorataUnruhenLukas04"; //... Lucas is just stupid...

	SmalltalkKhorataDiebeGrusel01			= "SVM_36_SmalltalkKhorataDiebeGrusel01"; //... Did you hear that abandoned house on the edge of town? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_36_SmalltalkKhorataDiebeGrusel02"; //... Yes, horrible things are said to have happened there. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_36_SmalltalkKhorataDiebeGrusel03"; //... And the forces of evil are still lurking there. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_36_SmalltalkKhorataDiebeGrusel04"; //... They really want to open a restaurant there. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_36_SmalltalkKhorataDiebeGrusel05"; //... Tired of life! So I'm not gonna put a foot in it. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_36_SmalltalkKhorataDiebeGrusel06"; //... And I'm not even going anywhere near the building. ...

	SmalltalkKhorataDiebeBib01			= "SVM_36_SmalltalkKhorataDiebeBib01"; //... Have you heard the scholar...
	SmalltalkKhorataDiebeBib02			= "SVM_36_SmalltalkKhorataDiebeBib02"; //... Yes, he is said to have stolen valuable documents from the library....
	SmalltalkKhorataDiebeBib03			= "SVM_36_SmalltalkKhorataDiebeBib03"; //... And there are several witnesses, including the governor...
	SmalltalkKhorataDiebeBib04			= "SVM_36_SmalltalkKhorataDiebeBib04"; //... And he's seriously claiming to have been home all the time...
	SmalltalkKhorataDiebeBib05			= "SVM_36_SmalltalkKhorataDiebeBib05"; //... Of course, nobody saw him there...
	SmalltalkKhorataDiebeBib06			= "SVM_36_SmalltalkKhorataDiebeBib06"; //... As he ran through the city before the theft, but already...
	SmalltalkKhorataDiebeBib07			= "SVM_36_SmalltalkKhorataDiebeBib07"; //... Covered with rotten fruit....
	SmalltalkKhorataDiebeBib08			= "SVM_36_SmalltalkKhorataDiebeBib08"; //... He must have really lost his mind...

	SmalltalkKhorataNormal01			= "SVM_36_SmalltalkKhorataNormal01"; //... I haven't seen a proper burning of witches in a long time! ...
	SmalltalkKhorataNormal02			= "SVM_36_SmalltalkKhorataNormal02"; //... I'll have one more...
	SmalltalkKhorataNormal03			= "SVM_36_SmalltalkKhorataNormal03"; //... Next round's on me! ...
	SmalltalkKhorataNormal04			= "SVM_36_SmalltalkKhorataNormal04"; //... Tomorrow is another day - but he won't get any better....
	SmalltalkKhorataNormal05			= "SVM_36_SmalltalkKhorataNormal05"; //... You shall not let the sorcerers live...
	SmalltalkKhorataNormal06			= "SVM_36_SmalltalkKhorataNormal06"; //... The die has been cast....

	// Khorinis

	SmalltalkRangar01			= "SVM_36_SmalltalkRangar01"; //... now even the militia is supposed to be a customer in the red lantern...
	SmalltalkRangar02			= "SVM_36_SmalltalkRangar02"; //... you've heard of Rangar and Alwin's sheep? ...

	SmalltalkMatteo01			= "SVM_36_SmalltalkMatteo01"; //... Have you been to see Matteo? ...
	SmalltalkMatteo02			= "SVM_36_SmalltalkMatteo02"; //... Matteo? He's getting married, isn't he? ...
	SmalltalkMatteo03			= "SVM_36_SmalltalkMatteo03"; //... everywhere there are only rotten apples...
	SmalltalkMatteo04			= "SVM_36_SmalltalkMatteo04"; //... I now buy from Matteo, where you can still get fresh fruit...

	SmalltalkKhorinisMario01			= "SVM_36_SmalltalkKhorinisMario01"; //... The paladins are already slaughtering each other....
	SmalltalkKhorinisMario02			= "SVM_36_SmalltalkKhorinisMario02"; //... I don't want this stranger to be completely innocent of Garond's death. ...
	SmalltalkKhorinisMario03			= "SVM_36_SmalltalkKhorinisMario03"; //... Those two guys could still be in town and be in trouble! ...
	SmalltalkKhorinisMario04			= "SVM_36_SmalltalkKhorinisMario04"; //... The militia failed in their duties, that's my opinion...

	SmalltalkFellan01			= "SVM_36_SmalltalkFellan01"; //... I could kill Fellan! At 7:00 in the morning, he's already pounding like a lunatic. ...
	SmalltalkFellan02			= "SVM_36_SmalltalkFellan02"; //... Tock, tock, tock...

	SmalltalkMikaPflanzen01			= "SVM_36_SmalltalkMikaPflanzen01"; //... Mika offers medicinal plants for a bargain price! ...
	SmalltalkMikaPflanzen02			= "SVM_36_SmalltalkMikaPflanzen02"; //... This beet nose collects all the plants from my nose! ...

	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_36_NoLearnNoPoints"			;//Come back once you have more experience.
	NoLearnOverPersonalMAX		= "SVM_36_NoLearnOverPersonalMAX"	;//You are demanding more than I can teach you.
	NoLearnYoureBetter			= "SVM_36_NoLearnYoureBetter"		;//There is nothing else I can teach you. You have become too good.
	YouLearnedSomething			= "SVM_36_YouLearnedSomething"		;//See, you're better already ...
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_36_UNTERSTADT"				;//You are now in the lower part of town.
	OBERSTADT					= "SVM_36_OBERSTADT"					;//You are now in the upper part of town.
	TEMPEL						= "SVM_36_TEMPEL"					;//You are now at the temple.
	MARKT						= "SVM_36_MARKT"						;//You are now at the marketplace.
	GALGEN						= "SVM_36_GALGEN"					;//You are now at the gallows square in front of the barracks.
	KASERNE						= "SVM_36_KASERNE"					;//These are the barracks.
	HAFEN						= "SVM_36_HAFEN"						;//You are now in the harbor district.
	// -----------------------
	WHERETO						= "SVM_36_WHERETO"					;//Where do you want to go?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_36_OBERSTADT_2_UNTERSTADT"	;//Walk through the inner city gate from here, and you'll get to the lower part of town.
	UNTERSTADT_2_OBERSTADT		= "SVM_36_UNTERSTADT_2_OBERSTADT"	;//A flight of stairs leads up from the southern city gate to the inner city gate. That's where the upper part of town begins.
	UNTERSTADT_2_TEMPEL			= "SVM_36_UNTERSTADT_2_TEMPEL"		;//Walking through the underpass from the smithy will take you to the temple square.
	UNTERSTADT_2_HAFEN			= "SVM_36_UNTERSTADT_2_HAFEN"		;//Walking down the harbor road from the smithy will take you to the harbor.
	TEMPEL_2_UNTERSTADT			= "SVM_36_TEMPEL_2_UNTERSTADT"		;//There is an underpass which leads to the lower part of town from the temple square.
	TEMPEL_2_MARKT				= "SVM_36_TEMPEL_2_MARKT"			;//When you're in front of the temple, go up to the left and along the city wall. This will take you to the marketplace.
	TEMPEL_2_GALGEN				= "SVM_36_TEMPEL_2_GALGEN"			;//Coming from the temple, if you pass the pub on the left, you'll come out at the gallows square.
	MARKT_2_TEMPEL				= "SVM_36_MARKT_2_TEMPEL"			;//Walking along the high city wall from the marketplace will take you to the temple.
	MARKT_2_KASERNE				= "SVM_36_MARKT_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs opposite the hotel.
	MARKT_2_GALGEN				= "SVM_36_MARKT_2_GALGEN"			;//Just walk past the large barracks and you'll get to the gallows square.
	GALGEN_2_TEMPEL				= "SVM_36_GALGEN_2_TEMPEL"			;//Walk down the alley from the gallows square, and you'll come to the temple square.
	GALGEN_2_MARKT				= "SVM_36_GALGEN_2_MARKT"			;//Just walk past the large barracks and you'll get to the marketplace.
	GALGEN_2_KASERNE			= "SVM_36_GALGEN_2_KASERNE"			;//The huge building is the barracks. Just walk up the stairs.
	KASERNE_2_MARKT				= "SVM_36_KASERNE_2_MARKT"			;//Just walk down the stairs to the left at the main entrance, and you'll get to the marketplace.
	KASERNE_2_GALGEN			= "SVM_36_KASERNE_2_GALGEN"			;//Just walk down the stairs to the right at the main entrance, and you'll get to the gallows square.
	HAFEN_2_UNTERSTADT			= "SVM_36_HAFEN_2_UNTERSTADT"		;//Walking up the harbor road from the quay wall will take you to the lower part of town.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_36_Dead"						;//Aaaaaargl!
	Aargh_1						= "SVM_36_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_36_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_36_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_36_Addon_WrongArmor";				//Those aren't your clothes. I'm not talking to you.
	ADDON_WRONGARMOR_SLD		= "SVM_36_ADDON_WRONGARMOR_SLD";			//What are you wearing? Put on something decent.
	ADDON_WRONGARMOR_MIL		= "SVM_36_ADDON_WRONGARMOR_MIL";			//You are a soldier! Dress like one.
	ADDON_WRONGARMOR_KDF		= "SVM_36_ADDON_WRONGARMOR_KDF";			//Your clothing is not appropriate for our order. Go and change.
	ADDON_NOARMOR_BDT			= "SVM_36_ADDON_ADDON_NOARMOR_BDT";		//You haven't even got any armor. Beat it!

	ADDON_DIEBANDIT				= "SVM_36_ADDON_DIEBANDIT";				//Die, you filthy bandit!
	ADDON_DIRTYPIRATE			= "SVM_36_ADDON_DIRTYPIRATE";			//Pirate scum!

	RELMINE01			= "SVM_36_RELMINE01";			//I can't take it anymore!
	RELMINE02			= "SVM_36_RELMINE02";			//If only I had something to eat....
	RELMINE03			= "SVM_36_RELMINE03";			//Blow after blow, all day long....
	RELMINE04			= "SVM_36_RELMINE04";			//That's a tough one.
	RELMINE05			= "SVM_36_RELMINE05";			//When's the relief coming?
	RELMINE06			= "SVM_36_RELMINE06";			//The purest exploitation is this!
	RELMINE07			= "SVM_36_RELMINE07";			//I won't come back tomorrow, I promise....
	RELMINE08			= "SVM_36_RELMINE08";			//Such a beautiful stone!
	RELMINE09			= "SVM_36_RELMINE09";			//My wife doesn't even know what I look like anymore...
	RELMINE10			= "SVM_36_RELMINE10";			//I'd like to get a tankard right now....
	RELMINE11			= "SVM_36_RELMINE11";			//This is supposed to be a substitute for the penal colony.
	RELMINE12			= "SVM_36_RELMINE12";			//Take pleasure dispensers, then it's okay.

	NoLearnGold			= "SVM_36_NoLearnGold";			//Come back when you have more gold.

	// Witze

	WITZ_01_01			= "SVM_36_WITZ_01_01";			//A hunter goes into the forest.
	WITZ_01_02			= "SVM_36_WITZ_01_02";			//An orc meets him with a wild boar on his shoulder.
	WITZ_01_03			= "SVM_36_WITZ_01_03";			//A few steps further on he meets a mercenary who also carries a boar on his shoulder.
	WITZ_01_04			= "SVM_36_WITZ_01_04";			//A few metres further on, he sees a goblin.
	WITZ_01_05			= "SVM_36_WITZ_01_05";			//question......... and what do you think the goblin has?
	WITZ_01_06			= "SVM_36_WITZ_01_06";			//Bleeding gums, because one in three people has bleeding gums.

	WITZ_02_01			= "SVM_36_WITZ_02_01";			//Two zombies fighting for their lives.

	WITZ_03_01			= "SVM_36_WITZ_03_01";			//What's the difference between mud and a meat bug?
	WITZ_03_02			= "SVM_36_WITZ_03_02";			//Meatbugs brings 10 experience.

	WITZ_04_01			= "SVM_36_WITZ_04_01";			//A thief breaks into a house at night.
	WITZ_04_02			= "SVM_36_WITZ_04_02";			//As he sneaks through the pitch black living room, he hears a voice:
	WITZ_04_03			= "SVM_36_WITZ_04_03";			//I see you and Innos sees you too!
	WITZ_04_04			= "SVM_36_WITZ_04_04";			//He frightens to death and lights a candle.
	WITZ_04_05			= "SVM_36_WITZ_04_05";			//He looks up and sees a parrot sitting on a pole in the corner:
	WITZ_04_06			= "SVM_36_WITZ_04_06";			//The burglar feels relieved:
	WITZ_04_07			= "SVM_36_WITZ_04_07";			//You scared the hell out of me. What's your name?
	WITZ_04_08			= "SVM_36_WITZ_04_08";			//Mud!
	WITZ_04_09			= "SVM_36_WITZ_04_09";			//Mud is a rarely stupid name for a parrot!
	WITZ_04_10			= "SVM_36_WITZ_04_10";			//Smiles the bird: Well, Innos is also a rarely stupid name for a warg.

	WITZ_05_01			= "SVM_36_WITZ_05_01";			//Get two skeletons out of their graves and steal horses.
	WITZ_05_02			= "SVM_36_WITZ_05_02";			//Put this one on his tombstone.
	WITZ_05_03			= "SVM_36_WITZ_05_03";			//The other one asks:'Why this?
	WITZ_05_04			= "SVM_36_WITZ_05_04";			//Do you think I drive without papers?

	WITZ_06_01			= "SVM_36_WITZ_06_01";			//Comes a skeleton during a storm in Coragon's bar and says:
	WITZ_06_02			= "SVM_36_WITZ_06_02";			//I'm wet to the bone

	WITZ_07_01			= "SVM_36_WITZ_07_01";			//Says the Snappermutter:'Kids, today there's fresh paladin.
	WITZ_07_02			= "SVM_36_WITZ_07_02";			//Says the Snapperkind:'I hate canned food.

	WITZ_08_01			= "SVM_36_WITZ_08_01";			//What's that red, slippery substance between the flanks of a swamp shark?
	WITZ_08_02			= "SVM_36_WITZ_08_02";			//Slow novice.

	WITZ_09_01			= "SVM_36_WITZ_09_01";			//What is the first thing that comes to mind when an Orc enters an Adanos monastery?
	WITZ_09_02			= "SVM_36_WITZ_09_02";			//An ice lance.

	WITZ_10_01			= "SVM_36_WITZ_10_01";			//Listen to this one....
	WITZ_10_02			= "SVM_36_WITZ_10_02";			//Yes?
	WITZ_10_03			= "SVM_36_WITZ_10_03";			//So...
	WITZ_10_04			= "SVM_36_WITZ_10_04";			//Lisl the sheep of shepherd Pepe is sick.
	WITZ_10_05			= "SVM_36_WITZ_10_05";			//Concerned, he asks the shepherd Balthasar:
	WITZ_10_06			= "SVM_36_WITZ_10_06";			//What did you give your sheep when she was so sick?
	WITZ_10_07			= "SVM_36_WITZ_10_07";			//I gave Lou's double hammer to my Clara back then, he says.
	WITZ_10_08			= "SVM_36_WITZ_10_08";			//No sooner said than done. When Pepe visits Balthasar again two days later, he mourns:
	WITZ_10_09			= "SVM_36_WITZ_10_09";			//My Lisl's dead. And Balthasar: My Clara, too.
	WITZ_10_10			= "SVM_36_WITZ_10_10";			//Yeah, heh. If you give the animals the booze they need.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_36_PICKPOCKET_BESTECHUNG_01";	//All right, but get lost now!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_36_PICKPOCKET_HERAUSREDEN_01";	//I must have been mistaken....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_36_PICKPOCKET_HERAUSREDEN_02";	//You were clearly on my pocket...
};
 

// ***********************
// 		Maximale SVMs
// ***********************

CONST INT SVM_MODULES =	31;
