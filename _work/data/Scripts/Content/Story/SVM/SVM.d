// *********************
// Standard	Voice Module
// *********************

CLASS C_SVM
{
	// ------ B_Say_GuildGreetings ------
	var string MILGreetings;				//Miliz grüßt Miliz oer Paladin
	var string PALGreetings;				//Paladin grüßt Paladin oder Magier
	var string BELGreetings;				//Belianer grüßt Belianer
	var string AdanosGreetings;				//Adanos grüßt Adanos
	var string Weather;						//So ein Mistwetter!
	
	// ------ B_Say_AttackReason ------
	var string IGetYouStill;				//Upset-NSC sieht Spieler währned seiner Angry-Time wieder. Greift mit altem AttackReason an.
	var string DieEnemy;					//Feind wird angegriffen
	var string DieMonster;					//gefährliches Monster wird angegriffen
	var string Addon_DieMonster;
	var string Addon_DieMonster2;
	var string DirtyThief;					//Dieb wird angegriffen
	var string HandsOff;					//SC fummelt an Objekt rum
	var string SheepKiller;					//Mensch greift Schaf an
	var string SheepKillerMonster;			//Monster greift Schaf an
	var string YouMurderer;					//Mensch hat Menschen umgebracht (kein Feind)
	var string DieStupidBeast;				//Torwachen schlagen ungefähliches Monster tot, das versucht durchs Tor zu gehen	
	var string YouDareHitMe;				//SC hat NSC geschlagen
	var	string YouAskedForIt;				//SC hat trotz Aufforderung seine Waffe NICHT weggesteckt
	var string ThenIBeatYouOutOfHere;		//SC hat trotz Aufforderung Raum NICHT verlassen 
	var string WhatDidYouDoInThere;			//Wache sieht SC aus einem verbotenen Raum rauskommen und greift an
	var string WillYouStopFighting;			//Wache beendet Kampf, greift Täter an
	
	// ------ B_Say_AttackEND ------
	var string KillEnemy;					//Finishing-Move
	var string EnemyKilled;					//NSC hat Feind getötet
	var string MonsterKilled;				//NSC hat gefährliches Monster getötet
	var string Addon_MonsterKilled;			
	var string Addon_MonsterKilled2;	
	var string ThiefDown;					//NSC hat Item-Dieb niedergeschlagen
	var string RumfummlerDown;				//NSC hat verbotenes-MOBSI-Benutzer niedergeschlagen
	var string SheepAttackerDown;			//NSC hat human SheepAttacker oder SheepKiller umgehauen
	var string KillMurderer;				//Mörder finishen
	var string StupidBeastKilled;			//GateGuards töten neutrales Monster, das vorbeikam
	var string NeverHitMeAgain;				//NSC hat jemand niedergeschlagen, der ihn angegriffen hat
	var string YouBetterShouldHaveListened;	//NSC hat jemed niedergeschlagen, der die Waffe nicht weggesteckt hat
	var string GetUpAndBeGone;				//NSC hat einen Eindringling im Portalraum niedergeschlagen
	var string NeverEnterRoomAgain;			//NSC hat Spieler, der aus verbotenem Portalraum kam niedergeschlagen
	var string ThereIsNoFightingHere;		//Wache hat Täter einer Schlägerei (derjenige, der angefangen hat) niedergeschlagen

	var string Berzerk;

	// ------ C_WantToFlee ------ 
	var string RunAway;						//Scheiße! Nichts wie weg!		

	// ------ C_WantToCallGuardsForFight ------
	var	string Alarm;						//Wache ruft Wache
	var string Guards;						//Harter Bursche ruft Wache
	var string Help;						//Bürger ruft Hilfe
		
	// ------ B_AssessMurder ------
	var string GoodMonsterKill;				//Monster getötet - NSC findet das toll
	var string GoodKill;					//Mensch getötet - NSC findet das toll (war sein Feind)
	
	// ------ B_AssessTalk ------
	var string NOTNOW;						//wenn RefuseTalk Counter aktiv
	
	// ------ ZS_Attack ------
	var string RunCoward;					//Gegner flieht
	
	// ------ ZS_ClearRoom ------
	var string GetOutOfHere;				//Spieler in verbotenem Raum. Harter Bursche: Raus hier!
	var string WhyAreYouInHere;				//Spieler in verbotenem Raum. Weicher Bursche: Was willst du hier?
	var string YesGoOutOfHere;				//Spieler verläßt verboten Raum artig wieder

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
	var string OhMyGodItsAFight;			//NSC entdeckt einen Kampf, und findet das bestützend (Bürger)
	var string GoodVictory;					//Dem Sieger zujubeln
	var string NotBad;						//'Nicht schlecht...' - Kampfende - Freund wurde von Nicht-Freund besiegt
	var string OhMyGodHesDown;				//Bestürzung über brutales Niederschlagen
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
	var string Awake;						//NSC wacht aus dem Zustand Sleep wieder auf (Aufwachen, räkeln)
	
	// ------ B_Say_ToughGuyNews ------
	var string TOUGHGUY_ATTACKLOST;			//Spieler hat einen ToughGuy angegriffen und gewonnen
	var string TOUGHGUY_ATTACKWON;			//Spieler hat einen ToughGuy angegriffen und ist besiegt worden
	var string TOUGHGUY_PLAYERATTACK;		//Spieler hat einen ToughGuy angegriffen und den Kampf abgebrochen	
	
	// ------ GOLD ------
	var string GOLD_1000;					//1000 Goldstücke.
	var string GOLD_950;					//950 Goldstücke.
	var string GOLD_900;					//900 Goldstücke.
	var string GOLD_850;					//850 Goldstücke.
	var string GOLD_800;					//800 Goldstücke.
	var string GOLD_750;					//750 Goldstücke.
	var string GOLD_700;					//700 Goldstücke.
	var string GOLD_650;					//650 Goldstücke.
	var string GOLD_600;					//600 GOldstücke.
	var string GOLD_550;					//550 Goldstücke.
	var string GOLD_500;					//500 Goldstücke.
	var string GOLD_450;					//450 Goldstücke.
	var string GOLD_400;					//400 Goldstücke.
	var string GOLD_350;					//350 Goldstücke.
	var string GOLD_300;					//300 Goldstücke.
	var string GOLD_250;					//250 Goldstücke.
	var string GOLD_200;					//200 Goldstücke.
	var string GOLD_150;					//150 Goldstücke.
	var string GOLD_100;					//100 Goldstücke.
	var string GOLD_90;						//90 Goldstücke.
	var string GOLD_80;						//80 Goldstücke.
	var string GOLD_70;						//70 Goldstücke.
	var string GOLD_60;						//60 Goldstücke.
	var string GOLD_50;						//50 Goldstücke.
	var string GOLD_40;						//40 Goldstücke.
	var string GOLD_30;						//30 Goldstücke.
	var string GOLD_20;						//20 Goldstücke.
	var string GOLD_10;						//10 Goldstücke.
	
	// ------ B_Say_Smalltalk (TA_Smalltalk) ------
	VAR	string Smalltalk01;				// ...wenn Du meinst...
	VAR	string Smalltalk02;				// ...kann schon sein...
	VAR	string Smalltalk03;				// ...war nicht besonders schlau....
	VAR	string Smalltalk04;				// ...ich halt mich da lieber raus...
	VAR	string Smalltalk05;				// ...das ist wirklich nicht mein Problem...
	VAR	string Smalltalk06;				// ...war doch klar, daß das Ärger gibt...
	VAR	string Smalltalk07;				// ...aber behalt's für Dich, muß nicht gleich jeder wissen...
	VAR	string Smalltalk08;				// ...das passiert mir nicht nochmal...
	VAR	string Smalltalk09;				// ...an der Gechichte muß wohl doch was dran sein...
	VAR	string Smalltalk10;				// ...man muß eben aufpassen was man rumerzählt...
	VAR	string Smalltalk11;				// ...solange ich damit nichts zu tun habe...
	VAR	string Smalltalk12;				// ...man darf auch nicht alles glauben, was man hört...
	VAR	string Smalltalk13;				// ...in seiner Haut will ich trotzdem nicht stecken...
	VAR	string Smalltalk14;				// ...immer wieder die selbe Leier...
	VAR	string Smalltalk15;				// ...manche lernen eben garnichts dazu...
	VAR	string Smalltalk16;				// ...früher wäre das ganz anders gelaufen...
	VAR	string Smalltalk17;				// ...gequatscht wird viel...
	VAR	string Smalltalk18;				// ...ich hör nicht mehr auf das Gefasel...
	VAR	string Smalltalk19;				// ...verlaß Dich auf jemanden und Du bist verlassen, das ist eben so...
	VAR	string Smalltalk20;				// ...ich glaube kaum, daß sich daran was ändern wird...
	VAR	string Smalltalk21;				// ...wahrscheinlich hast Du recht...
	VAR	string Smalltalk22;				// ...erstmal abwarten. Es wird nichts so heiß gegessen, wie es gekocht wird...
	VAR	string Smalltalk23;				// ...ich dachte, das wäre schon lange geklärt, aber das ist wohl nicht so...
	VAR	string Smalltalk24;				// ...laß uns lieber über was anderes reden...
	//Tough Guy (SLD/MIL/DJG)
	VAR	string Smalltalk25;				// ...der war doch sturzbetrunken...							
	VAR	string Smalltalk26;				// ...mit mir kann man sowas nicht machen...			
	VAR	string Smalltalk27;				// ...alle sind gerannt wie die Hasen, ich war ganz allein...
	//ProInnos (NOV/KDF/PAL)
	VAR	string Smalltalk28;				// ...so steht es in den heiligen Schriften...							
	VAR	string Smalltalk29;				// ...ich handle stets in Innos Namen...			
	VAR	string Smalltalk30;				// ...niemand darf gegen die göttliche Ordnung verstoßen...

	// Khorata

	VAR	string SmalltalkKhorataAnnaQuest01;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataAnnaQuest02;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataAnnaQuest03;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataAnnaQuest04;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataAnnaQuest05;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataAnnaQuest06;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataDichter01;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataDichter02;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataDichter03;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataDichter04;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataDichter05;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataEndres01;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataEndres02;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataEndres03;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataEndres04;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataEndres05;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataEndres06;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataEndres07;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataFrauenkleider01;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataFrauenkleider02;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorataFrauenkleider03;		// ...niemand darf gegen die göttliche Ordnung verstoßen...

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

	VAR	string SmalltalkRangar01;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkRangar02;		// ...niemand darf gegen die göttliche Ordnung verstoßen...

	VAR	string SmalltalkMatteo01;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkMatteo02;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkMatteo03;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkMatteo04;		// ...niemand darf gegen die göttliche Ordnung verstoßen...

	VAR	string SmalltalkKhorinisMario01;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorinisMario02;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorinisMario03;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkKhorinisMario04;		// ...niemand darf gegen die göttliche Ordnung verstoßen...

	VAR	string SmalltalkFellan01;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkFellan02;		// ...niemand darf gegen die göttliche Ordnung verstoßen...

	VAR	string SmalltalkMikaPflanzen01;		// ...niemand darf gegen die göttliche Ordnung verstoßen...
	VAR	string SmalltalkMikaPflanzen02;		// ...niemand darf gegen die göttliche Ordnung verstoßen...

	// Dämonenritterfesuntg

	VAR STRING SmalltalkDMRBelagerungAbdi01;
	VAR STRING SmalltalkDMRBelagerungAbdi02;
		
	// ------ Lehrer-Kommentare ------
	var string NoLearnNoPoints			;	//NSC-Lehrer verbietet Steigerung - keine Lernpunkte!
	var string NoLearnOverPersonalMAX	;	//NSC-Lehrer verbietet Steigerung ÜBER sein persönliches Lehrer-Maximum
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
	var	string Dead				;			// Tödlich verletzt
	VAR	string Aargh_1			;			// Treffer kassiert im Kampf	
	VAR	string Aargh_2			;			// Treffer kassiert im Kampf	
	VAR	string Aargh_3			;			// Treffer kassiert im Kampf	
	
	var string ADDON_WRONGARMOR;			//Sc hat unangemessene Rüstung an				//Default
	var string ADDON_WRONGARMOR_SLD;		//Beide SLD/DJG und falsche Rüstung
	var string ADDON_WRONGARMOR_MIL;		//Beide MIL/PAL	und falsche Rüstung
	var string ADDON_WRONGARMOR_KDF;		//Beide KDF und falsche Rüstung
	var string ADDON_NOARMOR_BDT;			//self ist BAndite und SC hat keine Rüstung an.
	
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
	var string MATTEOPAPER;			//Ich hab hier ein Flugblatt für dich.
	var string WANNAMARRY;			//Willst du mich heiraten?
	var string HAVEFREUDENSPENDER;		//Ich hab hier ein Fläschchen Freudenspender für dich.
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

	// Sätze der Minenarbeiter in Relendel

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


	// Kommentare zum Rübenziehen

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

	// Satz zum göttlichen Boten (Hund Adanos bzw. Baal Netbek)

	var string GODLYBOTE01;
	var string GODLYBOTE02;

	// Kommentar, wenn Alvars Kristall gefunden wird

	var string ALVARKRISTALL01;
	var string ALVARKRISTALL02;
	var string ALVARKRISTALL03;

	// Kommentar, wenn Buch über Eriskult gelesen

	var string ERISKULTBUCH01;

	// Kommentar zum Bücherregal

	var string BUECHERREGALFINDPAPER;
	var string BUECHERREGALNO;
	var string BUECHERREGALNOTHING;

	// Faule Äpfel unterschmuggeln

	var string PLACEAPFEL01;
	var string PLACEAPFEL02;
	var string PLACEAPFEL03;
	var string PLACEAPFEL04;
	var string PLACEAPFEL05;

	// Grüne Erzader hacken

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

	// Gespräch mit Schürfern wegen "Ärger im Kessel"

	var string KESSELPROBLEM01;
	var string KESSELPROBLEM02;
	var string KESSELPROBLEM03;

	// Anschlagtafel-Gespräche

	var string ANSCHLAGTAFEL01;
	var string ANSCHLAGTAFEL02;

	// Held probiert Sachen für Bierhexen-Quest

	var string SCHMECKTNORMAL;
	var string SCHMECKTECKLIG;

	// Held sollte eingesammeltes Item benutzen

	var string SHOULDUSE;

	// Held kennt Chromanin-Rätsel aus Vorgänger

	var string KNOWSRIDDLER;

	// Held riecht den Tabak von Jackal

	var string SMELLTABAK;

	// Schlösser knacken

	var string PICKLOCKFAILURE;
	var string PICKLOCKBROKEN;

	// Bücher nicht lesen können

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
// SVMs müssen immer "SVM_x" heissen, 
// wobei x die VoiceNummer ist.	
// **********************************

// ------ wird nur intern gebraucht! ------
instance SVM_0 (C_SVM)				
{
};

instance SVM_1 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_1_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_1_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_1_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_1_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_1_Weather"						;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_1_IGetYouStill"				;//Moge Cie jeszcze dostac!
	DieEnemy					=	"SVM_1_DieEnemy"					;//Teraz Twoja kolej!
	DieMonster					=	"SVM_1_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_1_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_1_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_1_SheepKiller"					;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_1_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_1_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_1_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_1_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_1_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_1_ThenIBeatYouOutOfHere"		;//Wtedy bede musial cie wybic!
	WhatDidYouDoInThere			=	"SVM_1_WhatDidYouDoInThere"			;//Co tam robiles, huh?
	WillYouStopFighting			=	"SVM_1_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_1_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_1_EnemyKilled"					;//To jest wlasnie dla Ciebie, punk.
	MonsterKilled				=	"SVM_1_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_1_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	Berzerk						=	"SVM_1_Berzerk"						;//UUAARRGHHHHH!
	rumfummlerDown				=	"SVM_1_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_1_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_1_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_1_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_1_NeverHitMeAgain"				;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_1_YouBetterShouldHaveListened"	;//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_1_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_1_NeverEnterRoomAgain"			;//I ze juz nigdy cie tam juz nie zlapam!
	ThereIsNoFightingHere		=	"SVM_1_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_1_RunAway"						;//Wyobraz sobie! Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_1_Alarm"						;//ALARM!
	Guards						=	"SVM_1_Guards"						;//WACHE!
	Help						=	"SVM_1_Help"						;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_1_GoodMonsterKill"				;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_1_GoodKill"					;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_1_NOTNOW"						;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_1_RunCoward"					;//Stoisz nieruchomo, rajd!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_1_GetOutOfHere"				;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_1_WhyAreYouInHere"				;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_1_YesGoOutOfHere"				;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_1_WhatsThisSupposedToBe"		;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_1_YouDisturbedMySlumber"		;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_1_ITookYourGold"				;//Zloto! To juz moja kopalnia.....
	ShitNoGold					=	"SVM_1_ShitNoGold"					;//Syn suki nie ma nawet zlota.
	ITakeYourWeapon				=	"SVM_1_ITakeYourWeapon"				;//Lepiej bym zabral ze soba bron.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_1_WhatAreYouDoing"				;//Ostrzezenie) Hej! Uwazaj!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_1_LookingForTroubleAgain"		;//Jeszcze za malo?
	StopMagic					=	"SVM_1_StopMagic"					;//Idz z magia!
	ISaidStopMagic				=	"SVM_1_ISaidStopMagic"				;//Pozbadz sie magii! Czy slyszysz zle?
	WeaponDown					=	"SVM_1_WeaponDown"					;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_1_ISaidWeaponDown"				;//Czy nie slyszysz dobrze? Powiedzialem, ze odlozylem pistolet!
	WiseMove					=	"SVM_1_WiseMove"					;//Idziesz tam, tam idzcie!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_1_NextTimeYoureInForIt"		;//Nadal mówimy o.....
	OhMyHead					=	"SVM_1_OhMyHead"					;//(do siebie) Oh, moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_1_TheresAFight"				;//Wejdzmy do biznesu!
	OhMyGodItsAFight			=	"SVM_1_OhMyGodItsAFight"			;//Oni rozbija czaszki w....
	GoodVictory					=	"SVM_1_GoodVictory"					;//Na to on zasluguje.
	NotBad						= 	"SVM_1_NotBad"						;//(pogniwianie) Nie takie zle....
	OhMyGodHesDown				=	"SVM_1_OhMyGodHesDown"				;//(do siebie) Jaki brutalny facet....
	CheerFriend01				=	"SVM_1_CheerFriend01"				;//Tak, to tak!
	CheerFriend02				=	"SVM_1_CheerFriend02"				;//Chodzcie dalej, odejdzmy!
	CheerFriend03				=	"SVM_1_CheerFriend03"				;//Pozostan na szczycie!
	Ooh01						=	"SVM_1_Ooh01"						;//Nie poddawaj sie niczemu!
	Ooh02						=	"SVM_1_Ooh02"						;//Jestes gonna!
	Ooh03						=	"SVM_1_Ooh03"						;//Nie moge w to uwierzyc!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_1_WhatWasThat"					;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_1_GetOutOfMyBed"					;//Wejsc z lózka!
	Awake						= "SVM_1_Awake"							;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_1_TOUGHGUY_ATTACKLOST"			;//To wszystko jest w porzadku, wygrasz. Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_1_TOUGHGUY_ATTACKWON"			;//Czy musze ponownie pokazac ci, kim jest Pan?
	TOUGHGUY_PLAYERATTACK		= "SVM_1_TOUGHGUY_PLAYERATTACK"			;//Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_1_GOLD_1000"						;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_1_GOLD_950"						;//950 sztuk zlota.
	GOLD_900					= "SVM_1_GOLD_900"						;//900 sztuk zlota.
	GOLD_850					= "SVM_1_GOLD_850"						;//850 sztuk zlota.
	GOLD_800					= "SVM_1_GOLD_800"						;//800 sztuk zlota.
	GOLD_750					= "SVM_1_GOLD_750"						;//750 sztuk zlota.
	GOLD_700					= "SVM_1_GOLD_700"						;//700 sztuk zlota.
	GOLD_650					= "SVM_1_GOLD_650"						;//650 sztuk zlota.
	GOLD_600					= "SVM_1_GOLD_600"						;//600 sztuk zlota.
	GOLD_550					= "SVM_1_GOLD_550"						;//550 sztuk zlota.
	GOLD_500					= "SVM_1_GOLD_500"						;//500 sztuk zlota.
	GOLD_450					= "SVM_1_GOLD_450"						;//450 sztuk zlota.
	GOLD_400					= "SVM_1_GOLD_400"						;//400 sztuk zlota.
	GOLD_350					= "SVM_1_GOLD_350"						;//350 sztuk zlota.
	GOLD_300					= "SVM_1_GOLD_300"						;//300 sztuk zlota.
	GOLD_250					= "SVM_1_GOLD_250"						;//250 sztuk zlota.
	GOLD_200					= "SVM_1_GOLD_200"						;//200 sztuk zlota.
	GOLD_150					= "SVM_1_GOLD_150"						;//150 sztuk zlota.
	GOLD_100					= "SVM_1_GOLD_100"						;//100 sztuk zlota.
	GOLD_90						= "SVM_1_GOLD_90"						;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_1_GOLD_80"						;//80 sztuk zlota.
	GOLD_70						= "SVM_1_GOLD_70"						;//70 sztuk zlota.
	GOLD_60						= "SVM_1_GOLD_60"						;//60 sztuk zlota.
	GOLD_50						= "SVM_1_GOLD_50"						;//50 sztuk zlota.
	GOLD_40						= "SVM_1_GOLD_40"						;//40 sztuk zlota.
	GOLD_30						= "SVM_1_GOLD_30"						;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_1_GOLD_20"						;//20 sztuk zlota.
	GOLD_10						= "SVM_1_GOLD_10"						;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_1_Smalltalk01"					;//... Czy naprawde wierzysz, ze....
	Smalltalk02					= "SVM_1_Smalltalk02"					;//... jest wszystko mozliwe.....
	Smalltalk03					= "SVM_1_Smalltalk03"					;//... powinien byl wiedziec lepiej......
	Smalltalk04					= "SVM_1_Smalltalk04"					;//... jakbym nie mial juz dosc problemów.....
	Smalltalk05					= "SVM_1_Smalltalk05"					;//... kto mówi takie cos.....
	Smalltalk06					= "SVM_1_Smalltalk06"					;//... jest jeszcze wiecej klopotów......
	Smalltalk07					= "SVM_1_Smalltalk07"					;//... wiele do powiedzenia.....
	Smalltalk08					= "SVM_1_Smalltalk08"					;//... Nie zrobilbym tego.....
	Smalltalk09					= "SVM_1_Smalltalk09"					;//... To tylko pogloski....
	Smalltalk10					= "SVM_1_Smalltalk10"					;//... musisz tylko uwazac, co mówisz ludziom....
	Smalltalk11					= "SVM_1_Smalltalk11"					;//... Móglbym panstwu to powiedziec wczesniej.....
	Smalltalk12					= "SVM_1_Smalltalk12"					;//... Nikt mnie nie pyta....
	Smalltalk13					= "SVM_1_Smalltalk13"					;//... Mozna zalowac biednego faceta....
	Smalltalk14					= "SVM_1_Smalltalk14"					;//... nie jest to nic nowego....
	Smalltalk15					= "SVM_1_Smalltalk15"					;//... to oczywiste....
	Smalltalk16					= "SVM_1_Smalltalk16"					;//... nie musisz mnie o to pytac......
	Smalltalk17					= "SVM_1_Smalltalk17"					;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_1_Smalltalk18"					;//... znasz juz moja opinie.....
	Smalltalk19					= "SVM_1_Smalltalk19"					;//... Tak wlasnie powiedzialem.....
	Smalltalk20					= "SVM_1_Smalltalk20"					;//... nic sie nigdy nie zmieni......
	Smalltalk21					= "SVM_1_Smalltalk21"					;//... dlaczego nie dowiedzialem sie o tym do tej pory.....
	Smalltalk22					= "SVM_1_Smalltalk22"					;//... poczekajmy i zobaczmy, co sie dzieje....
	Smalltalk23					= "SVM_1_Smalltalk23"					;//... niektóre problemy rozwiazywane sa samodzielnie......
	Smalltalk24					= "SVM_1_Smalltalk24"					;//... Juz nie slysze....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_1_Smalltalk25"					;//... Pijany jak pieklo....
	Smalltalk26					= "SVM_1_Smalltalk26"					;//... Nie mozesz to zrobic ze mna......
	Smalltalk27					= "SVM_1_Smalltalk27"					;//... wszystkie biegly jak króliki, bylem samotny......
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_1_Smalltalk28"					;//... Tak wiec mówi ona w Pismie swietym....[...].
	Smalltalk29					= "SVM_1_Smalltalk29"					;//... Zawsze dzialam w imieniu Innosa....
	Smalltalk30					= "SVM_1_Smalltalk30"					;//... nikt nie moze naruszac boskiego porzadku......
	SmalltalkKhorataAnnaQuest01			= "SVM_1_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_1_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_1_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_1_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_1_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_1_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_1_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_1_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_1_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_1_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_1_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_1_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_1_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_1_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_1_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_1_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_1_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_1_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_1_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_1_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_1_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_1_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_1_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_1_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_1_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_1_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_1_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_1_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_1_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_1_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_1_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_1_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_1_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_1_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_1_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_1_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_1_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_1_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_1_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_1_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_1_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_1_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_1_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_1_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_1_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_1_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_1_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_1_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_1_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_1_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_1_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_1_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_1_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_1_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_1_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_1_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_1_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_1_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_1_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_1_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_1_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_1_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_1_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_1_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_1_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_1_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_1_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_1_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_1_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_1_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_1_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_1_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_1_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_1_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_1_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_1_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_1_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_1_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...

	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_1_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_1_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_1_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_1_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_1_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_1_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_1_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_1_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_1_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_1_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_1_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_1_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_1_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_1_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_1_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_1_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_1_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_1_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_1_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_1_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_1_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_1_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_1_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_1_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_1_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_1_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_1_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_1_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_1_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_1_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_1_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_1_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_1_Addon_WrongArmor";				//To nie jest twoja odziez. Nie rozmawiam z wami.
	ADDON_WRONGARMOR_SLD		= "SVM_1_ADDON_WRONGARMOR_SLD";			//Jak chodzisz? Zalóz cos rozsadnego.
	ADDON_WRONGARMOR_MIL		= "SVM_1_ADDON_WRONGARMOR_MIL";			//Jestes zolnierzem! Odpowiednio ubrac sie.
	ADDON_WRONGARMOR_KDF		= "SVM_1_ADDON_WRONGARMOR_KDF";			//Twoje ubrania nie sa odpowiednie do naszego zamówienia. Zmienic sie.
	ADDON_NOARMOR_BDT			= "SVM_1_ADDON_ADDON_NOARMOR_BDT";		//Nie masz nawet zbroi. Wyjsc stad!

	ADDON_DIEBANDIT				= "SVM_1_ADDON_DIEBANDIT";				//Zgubisz sie, brudny bandyta!
	ADDON_DIRTYPIRATE			= "SVM_1_ADDON_DIRTYPIRATE";			//Pakiet piracki!

	RELMINE01			= "SVM_1_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_1_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_1_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_1_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_1_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_1_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_1_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_1_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_1_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_1_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_1_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_1_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_1_NoLearnGold";			//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_1_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_1_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_1_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_1_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_1_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_1_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_1_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_1_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_1_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_1_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_1_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_1_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_1_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_1_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_1_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_1_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_1_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_1_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_1_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_1_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_1_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_1_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_1_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_1_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_1_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_1_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_1_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_1_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_1_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_1_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_1_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_1_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_1_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_1_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_1_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_1_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_1_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_1_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_1_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_1_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_1_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_1_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_1_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_1_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

INSTANCE SVM_2	(C_SVM)	
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_2_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_2_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_2_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_2_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_2_Weather"						;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_2_IGetYouStill"				;//Moge Cie jeszcze dostac!
	DieEnemy					=	"SVM_2_DieEnemy"					;//Teraz Twoja kolej!
	DieMonster					=	"SVM_2_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_2_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_2_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_2_SheepKiller"					;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_2_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_2_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_2_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_2_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_2_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_2_ThenIBeatYouOutOfHere"		;//Wtedy bede musial cie wybic!
	WhatDidYouDoInThere			=	"SVM_2_WhatDidYouDoInThere"			;//Co tam robiles, huh?
	WillYouStopFighting			=	"SVM_2_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_2_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_2_EnemyKilled"					;//To jest wlasnie dla Ciebie, punk.
	MonsterKilled				=	"SVM_2_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_2_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	Berzerk						=	"SVM_2_Berzerk"						;//UUAARRGHHHHH!
	rumfummlerDown				=	"SVM_2_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_2_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_2_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_2_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_2_NeverHitMeAgain"				;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_2_YouBetterShouldHaveListened"	;//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_2_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_2_NeverEnterRoomAgain"			;//I ze juz nigdy cie tam juz nie zlapam!
	ThereIsNoFightingHere		=	"SVM_2_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_2_RunAway"						;//Wyobraz sobie! Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_2_Alarm"						;//ALARM!
	Guards						=	"SVM_2_Guards"						;//WACHE!
	Help						=	"SVM_2_Help"						;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_2_GoodMonsterKill"				;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_2_GoodKill"					;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_2_NOTNOW"						;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_2_RunCoward"					;//Stoisz nieruchomo, rajd!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_2_GetOutOfHere"				;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_2_WhyAreYouInHere"				;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_2_YesGoOutOfHere"				;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_2_WhatsThisSupposedToBe"		;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_2_YouDisturbedMySlumber"		;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_2_ITookYourGold"				;//Zloto! To juz moja kopalnia.....
	ShitNoGold					=	"SVM_2_ShitNoGold"					;//Syn suki nie ma nawet zlota.
	ITakeYourWeapon				=	"SVM_2_ITakeYourWeapon"				;//Lepiej bym zabral ze soba bron.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_2_WhatAreYouDoing"				;//Ostrzezenie) Hej! Uwazaj!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_2_LookingForTroubleAgain"		;//Jeszcze za malo?
	StopMagic					=	"SVM_2_StopMagic"					;//Idz z magia!
	ISaidStopMagic				=	"SVM_2_ISaidStopMagic"				;//Pozbadz sie magii! Czy slyszysz zle?
	WeaponDown					=	"SVM_2_WeaponDown"					;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_2_ISaidWeaponDown"				;//Czy nie slyszysz dobrze? Powiedzialem, ze odlozylem pistolet!
	WiseMove					=	"SVM_2_WiseMove"					;//Idziesz tam, tam idzcie!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_2_NextTimeYoureInForIt"		;//Nadal mówimy o.....
	OhMyHead					=	"SVM_2_OhMyHead"					;//(do siebie) Oh, moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_2_TheresAFight"				;//Wejdzmy do biznesu!
	OhMyGodItsAFight			=	"SVM_2_OhMyGodItsAFight"			;//Oni rozbija czaszki w....
	GoodVictory					=	"SVM_2_GoodVictory"					;//Na to on zasluguje.
	NotBad						= 	"SVM_2_NotBad"						;//(pogniwianie) Nie takie zle....
	OhMyGodHesDown				=	"SVM_2_OhMyGodHesDown"				;//(do siebie) Jaki brutalny facet....
	CheerFriend01				=	"SVM_2_CheerFriend01"				;//Tak, to tak!
	CheerFriend02				=	"SVM_2_CheerFriend02"				;//Chodzcie dalej, odejdzmy!
	CheerFriend03				=	"SVM_2_CheerFriend03"				;//Pozostan na szczycie!
	Ooh01						=	"SVM_2_Ooh01"						;//Nie poddawaj sie niczemu!
	Ooh02						=	"SVM_2_Ooh02"						;//Jestes gonna!
	Ooh03						=	"SVM_2_Ooh03"						;//Nie moge w to uwierzyc!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_2_WhatWasThat"					;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_2_GetOutOfMyBed"					;//Wejsc z lózka!
	Awake						= "SVM_2_Awake"							;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_2_TOUGHGUY_ATTACKLOST"			;//To wszystko jest w porzadku, wygrasz. Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_2_TOUGHGUY_ATTACKWON"			;//Czy musze ponownie pokazac ci, kim jest Pan?
	TOUGHGUY_PLAYERATTACK		= "SVM_2_TOUGHGUY_PLAYERATTACK"			;//Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_2_GOLD_1000"						;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_2_GOLD_950"						;//950 sztuk zlota.
	GOLD_900					= "SVM_2_GOLD_900"						;//900 sztuk zlota.
	GOLD_850					= "SVM_2_GOLD_850"						;//850 sztuk zlota.
	GOLD_800					= "SVM_2_GOLD_800"						;//800 sztuk zlota.
	GOLD_750					= "SVM_2_GOLD_750"						;//750 sztuk zlota.
	GOLD_700					= "SVM_2_GOLD_700"						;//700 sztuk zlota.
	GOLD_650					= "SVM_2_GOLD_650"						;//650 sztuk zlota.
	GOLD_600					= "SVM_2_GOLD_600"						;//600 sztuk zlota.
	GOLD_550					= "SVM_2_GOLD_550"						;//550 sztuk zlota.
	GOLD_500					= "SVM_2_GOLD_500"						;//500 sztuk zlota.
	GOLD_450					= "SVM_2_GOLD_450"						;//450 sztuk zlota.
	GOLD_400					= "SVM_2_GOLD_400"						;//400 sztuk zlota.
	GOLD_350					= "SVM_2_GOLD_350"						;//350 sztuk zlota.
	GOLD_300					= "SVM_2_GOLD_300"						;//300 sztuk zlota.
	GOLD_250					= "SVM_2_GOLD_250"						;//250 sztuk zlota.
	GOLD_200					= "SVM_2_GOLD_200"						;//200 sztuk zlota.
	GOLD_150					= "SVM_2_GOLD_150"						;//150 sztuk zlota.
	GOLD_100					= "SVM_2_GOLD_100"						;//100 sztuk zlota.
	GOLD_90						= "SVM_2_GOLD_90"						;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_2_GOLD_80"						;//80 sztuk zlota.
	GOLD_70						= "SVM_2_GOLD_70"						;//70 sztuk zlota.
	GOLD_60						= "SVM_2_GOLD_60"						;//60 sztuk zlota.
	GOLD_50						= "SVM_2_GOLD_50"						;//50 sztuk zlota.
	GOLD_40						= "SVM_2_GOLD_40"						;//40 sztuk zlota.
	GOLD_30						= "SVM_2_GOLD_30"						;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_2_GOLD_20"						;//20 sztuk zlota.
	GOLD_10						= "SVM_2_GOLD_10"						;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_2_Smalltalk01"					;//... Czy naprawde wierzysz, ze....
	Smalltalk02					= "SVM_2_Smalltalk02"					;//... jest wszystko mozliwe.....
	Smalltalk03					= "SVM_2_Smalltalk03"					;//... powinien byl wiedziec lepiej......
	Smalltalk04					= "SVM_2_Smalltalk04"					;//... jakbym nie mial juz dosc problemów.....
	Smalltalk05					= "SVM_2_Smalltalk05"					;//... kto mówi takie cos.....
	Smalltalk06					= "SVM_2_Smalltalk06"					;//... jest jeszcze wiecej klopotów......
	Smalltalk07					= "SVM_2_Smalltalk07"					;//... wiele do powiedzenia.....
	Smalltalk08					= "SVM_2_Smalltalk08"					;//... Nie zrobilbym tego.....
	Smalltalk09					= "SVM_2_Smalltalk09"					;//... To tylko pogloski....
	Smalltalk10					= "SVM_2_Smalltalk10"					;//... musisz tylko uwazac, co mówisz ludziom....
	Smalltalk11					= "SVM_2_Smalltalk11"					;//... Móglbym panstwu to powiedziec wczesniej.....
	Smalltalk12					= "SVM_2_Smalltalk12"					;//... Nikt mnie nie pyta....
	Smalltalk13					= "SVM_2_Smalltalk13"					;//... Mozna zalowac biednego faceta....
	Smalltalk14					= "SVM_2_Smalltalk14"					;//... nie jest to nic nowego....
	Smalltalk15					= "SVM_2_Smalltalk15"					;//... to oczywiste....
	Smalltalk16					= "SVM_2_Smalltalk16"					;//... nie musisz mnie o to pytac......
	Smalltalk17					= "SVM_2_Smalltalk17"					;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_2_Smalltalk18"					;//... znasz juz moja opinie.....
	Smalltalk19					= "SVM_2_Smalltalk19"					;//... Tak wlasnie powiedzialem.....
	Smalltalk20					= "SVM_2_Smalltalk20"					;//... nic sie nigdy nie zmieni......
	Smalltalk21					= "SVM_2_Smalltalk21"					;//... dlaczego nie dowiedzialem sie o tym do tej pory.....
	Smalltalk22					= "SVM_2_Smalltalk22"					;//... poczekajmy i zobaczmy, co sie dzieje....
	Smalltalk23					= "SVM_2_Smalltalk23"					;//... niektóre problemy rozwiazywane sa samodzielnie......
	Smalltalk24					= "SVM_2_Smalltalk24"					;//... Juz nie slysze....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_2_Smalltalk25"					;//... Pijany jak pieklo....
	Smalltalk26					= "SVM_2_Smalltalk26"					;//... Nie mozesz to zrobic ze mna......
	Smalltalk27					= "SVM_2_Smalltalk27"					;//... wszystkie biegly jak króliki, bylem samotny......
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_2_Smalltalk28"					;//... Tak wiec mówi ona w Pismie swietym....[...].
	Smalltalk29					= "SVM_2_Smalltalk29"					;//... Zawsze dzialam w imieniu Innosa....
	Smalltalk30					= "SVM_2_Smalltalk30"					;//... nikt nie moze naruszac boskiego porzadku......
	SmalltalkKhorataAnnaQuest01			= "SVM_2_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_2_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_2_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_2_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_2_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_2_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_2_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_2_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_2_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_2_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_2_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_2_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_2_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_2_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_2_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_2_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_2_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_2_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_2_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_2_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_2_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_2_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_2_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_2_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_2_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_2_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_2_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_2_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_2_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_2_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_2_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_2_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_2_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_2_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_2_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_2_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_2_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_2_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_2_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_2_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_2_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_2_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_2_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_2_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_2_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_2_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_2_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_2_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_2_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_2_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_2_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_2_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_2_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_2_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_2_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_2_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_2_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_2_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_2_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_2_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_2_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_2_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_2_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_2_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_2_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_2_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_2_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_2_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_2_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_2_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_2_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_2_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_2_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_2_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_2_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_2_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_2_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_2_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...

	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_2_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_2_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_2_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_2_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_2_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_2_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_2_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_2_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_2_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_2_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_2_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_2_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_2_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_2_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_2_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_2_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_2_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_2_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_2_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_2_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_2_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_2_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_2_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_2_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_2_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_2_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_2_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_2_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_2_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_2_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_2_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_2_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_2_Addon_WrongArmor";				//To nie jest twoja odziez. Nie rozmawiam z wami.
	ADDON_WRONGARMOR_SLD		= "SVM_2_ADDON_WRONGARMOR_SLD";			//Jak chodzisz? Zalóz cos rozsadnego.
	ADDON_WRONGARMOR_MIL		= "SVM_2_ADDON_WRONGARMOR_MIL";			//Jestes zolnierzem! Odpowiednio ubrac sie.
	ADDON_WRONGARMOR_KDF		= "SVM_2_ADDON_WRONGARMOR_KDF";			//Twoje ubrania nie sa odpowiednie do naszego zamówienia. Zmienic sie.
	ADDON_NOARMOR_BDT			= "SVM_2_ADDON_ADDON_NOARMOR_BDT";		//Nie masz nawet zbroi. Wyjsc stad!

	ADDON_DIEBANDIT				= "SVM_2_ADDON_DIEBANDIT";				//Zgubisz sie, brudny bandyta!
	ADDON_DIRTYPIRATE			= "SVM_2_ADDON_DIRTYPIRATE";			//Pakiet piracki!

	RELMINE01			= "SVM_2_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_2_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_2_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_2_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_2_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_2_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_2_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_2_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_2_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_2_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_2_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_2_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_2_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_2_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_2_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_2_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_2_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_2_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_2_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_2_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_2_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_2_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_2_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_2_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_2_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_2_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_2_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_2_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_2_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_2_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_2_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_2_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_2_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_2_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_2_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_2_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_2_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_2_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_2_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_2_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_2_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_2_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_2_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_2_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_2_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_2_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_2_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_2_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_2_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_2_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_2_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_2_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_2_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_2_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_2_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_2_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_2_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_3 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_3_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_3_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_3_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_3_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_3_Weather"					;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_3_IGetYouStill"				;//Ale teraz dostaje cie!
	DieEnemy					=	"SVM_3_DieEnemy"					;//Pospiesze sie!
	DieMonster					=	"SVM_3_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_3_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_3_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_3_SheepKiller"				;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_3_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_3_YouMurderer"				;//Morderca!
	DieStupidBeast				=	"SVM_3_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_3_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_3_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_3_ThenIBeatYouOutOfHere"		;//Nie chcesz isc? Wszystko w porzadku!
	WhatDidYouDoInThere			=	"SVM_3_WhatDidYouDoInThere"		;//Co tam robiles?
	WillYouStopFighting			=	"SVM_3_WillYouStopFighting"		;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_3_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_3_EnemyKilled"				;//Zaslugujecie na to, synu suki!
	MonsterKilled				=	"SVM_3_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_3_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_3_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_3_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_3_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_3_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_3_NeverHitMeAgain"			;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_3_YouBetterShouldHaveListened";//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_3_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_3_NeverEnterRoomAgain"		;//I juz nigdy wiecej nie wpadaj tam!
	ThereIsNoFightingHere		=	"SVM_3_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_3_Berzerk"						;//UUAARRGHHHHH!
	RunAway						= 	"SVM_3_RunAway"					;//Och, gówno!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_3_Alarm"					;//ALARM!
	Guards						=	"SVM_3_Guards"					;//WACHE!
	Help						=	"SVM_3_Help"					;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_3_GoodMonsterKill"		;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_3_GoodKill"				;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_3_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_3_RunCoward"				;//Krzyki) Tak! Pracuj tak szybko, jak tylko mozesz!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_3_GetOutOfHere"			;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_3_WhyAreYouInHere"		;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_3_YesGoOutOfHere"			;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_3_WhatsThisSupposedToBe"	;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_3_YouDisturbedMySlumber"	;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_3_ITookYourGold"			;//Dziekujemy za zloto, bohater!
	ShitNoGold					=	"SVM_3_ShitNoGold"				;//Biedny draniesz, nie masz nawet zlota!
	ITakeYourWeapon				=	"SVM_3_ITakeYourWeapon"		;//Lepiej wziac pistolet!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_3_WhatAreYouDoing"		;//Ostroznie) Uwazaj! Znowu, a ja cie poczne na twarzy.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_3_LookingForTroubleAgain"	;//Jeszcze za malo?
	StopMagic					=	"SVM_3_StopMagic"				;//Zatrzymaj ten magiczny chwyt!
	ISaidStopMagic				=	"SVM_3_ISaidStopMagic"			;//Chcesz poncz? Zatrzymaj sie teraz!
	WeaponDown					=	"SVM_3_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_3_ISaidWeaponDown"		;//Odstaw pistolet!
	WiseMove					=	"SVM_3_WiseMove"				;//Inteligentny przyjaciel!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_3_NextTimeYoureInForIt"	;//Nastepnym razem zobaczymy....
	OhMyHead					=	"SVM_3_OhMyHead"				;//O Mezczyzna, glowa moja....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_3_TheresAFight"			;//(chwycenie) Ah, walka!
	OhMyGodItsAFight			=	"SVM_3_OhMyGodItsAFight"		;//Mój Boze, walka!
	GoodVictory					=	"SVM_3_GoodVictory"			;//Pokazales go!
	NotBad						= 	"SVM_3_NotBad"					;//(pogniwianie) Nie zly....
	OhMyGodHesDown				=	"SVM_3_OhMyGodHesDown"			;//(do samego siebie) Mój Boze! Jak brutalne....
	CheerFriend01				=	"SVM_3_CheerFriend01"			;//Hit go!
	CheerFriend02				=	"SVM_3_CheerFriend02"			;//Daj to wszystko!
	CheerFriend03				=	"SVM_3_CheerFriend03"			;//Pokaz go!
	Ooh01						=	"SVM_3_Ooh01"					;//Badz blisko!
	Ooh02						=	"SVM_3_Ooh02"					;//Ostroznie!
	Ooh03						=	"SVM_3_Ooh03"					;//Och! Zrobil czas!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_3_WhatWasThat"				;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_3_GetOutOfMyBed"			;//To jest moje lózko!
	Awake						= "SVM_3_Awake"					;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_3_TOUGHGUY_ATTACKLOST"		;//Dobrze, to Ty jestes najlepszy z nas obojga! Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_3_TOUGHGUY_ATTACKWON"		;//(samo-wazne) Przypuszczam, ze teraz zrozumiales, który z nas jest silniejszy.... Czego chcesz?
	TOUGHGUY_PLAYERATTACK		= "SVM_3_TOUGHGUY_PLAYERATTACK"	;//Myslalem, ze chcialbys mnie zamieszac. Czy zmieniles zdanie? Chcesz porozmawiac, czy nie? (smiertelnicy)
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_3_GOLD_1000"				;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_3_GOLD_950"					;//950 sztuk zlota.
	GOLD_900					= "SVM_3_GOLD_900"					;//900 sztuk zlota.
	GOLD_850					= "SVM_3_GOLD_850"					;//850 sztuk zlota.
	GOLD_800					= "SVM_3_GOLD_800"					;//800 sztuk zlota.
	GOLD_750					= "SVM_3_GOLD_750"					;//750 sztuk zlota.
	GOLD_700					= "SVM_3_GOLD_700"					;//700 sztuk zlota.
	GOLD_650					= "SVM_3_GOLD_650"					;//650 sztuk zlota.
	GOLD_600					= "SVM_3_GOLD_600"					;//600 sztuk zlota.
	GOLD_550					= "SVM_3_GOLD_550"					;//550 sztuk zlota.
	GOLD_500					= "SVM_3_GOLD_500"					;//500 sztuk zlota.
	GOLD_450					= "SVM_3_GOLD_450"					;//450 sztuk zlota.
	GOLD_400					= "SVM_3_GOLD_400"					;//400 sztuk zlota.
	GOLD_350					= "SVM_3_GOLD_350"					;//350 sztuk zlota.
	GOLD_300					= "SVM_3_GOLD_300"					;//300 sztuk zlota.
	GOLD_250					= "SVM_3_GOLD_250"					;//250 sztuk zlota.
	GOLD_200					= "SVM_3_GOLD_200"					;//200 sztuk zlota.
	GOLD_150					= "SVM_3_GOLD_150"					;//150 sztuk zlota.
	GOLD_100					= "SVM_3_GOLD_100"					;//100 sztuk zlota.
	GOLD_90						= "SVM_3_GOLD_90"					;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_3_GOLD_80"					;//80 sztuk zlota.
	GOLD_70						= "SVM_3_GOLD_70"					;//70 sztuk zlota.
	GOLD_60						= "SVM_3_GOLD_60"					;//60 sztuk zlota.
	GOLD_50						= "SVM_3_GOLD_50"					;//50 sztuk zlota.
	GOLD_40						= "SVM_3_GOLD_40"					;//40 sztuk zlota.
	GOLD_30						= "SVM_3_GOLD_30"					;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_3_GOLD_20"					;//20 sztuk zlota.
	GOLD_10						= "SVM_3_GOLD_10"					;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_3_Smalltalk01"				;//... Czy naprawde wierzysz, ze....
	Smalltalk02					= "SVM_3_Smalltalk02"				;//... jest wszystko mozliwe.....
	Smalltalk03					= "SVM_3_Smalltalk03"				;//... powinien byl wiedziec lepiej......
	Smalltalk04					= "SVM_3_Smalltalk04"				;//... jakbym nie mial juz dosc problemów.....
	Smalltalk05					= "SVM_3_Smalltalk05"				;//... kto mówi takie cos.....
	Smalltalk06					= "SVM_3_Smalltalk06"				;//... jest jeszcze wiecej klopotów......
	Smalltalk07					= "SVM_3_Smalltalk07"				;//... wiele do powiedzenia.....
	Smalltalk08					= "SVM_3_Smalltalk08"				;//... Nie myslalem, ze tak nie sadzilem....
	Smalltalk09					= "SVM_3_Smalltalk09"				;//... To tylko pogloski....
	Smalltalk10					= "SVM_3_Smalltalk10"				;//... musisz tylko uwazac, co mówisz ludziom....
	Smalltalk11					= "SVM_3_Smalltalk11"				;//... Móglbym panstwu to powiedziec wczesniej.....
	Smalltalk12					= "SVM_3_Smalltalk12"				;//... Nikt mnie nie pyta....
	Smalltalk13					= "SVM_3_Smalltalk13"				;//... Mozna zalowac biednego faceta....
	Smalltalk14					= "SVM_3_Smalltalk14"				;//... nie jest to nic nowego....
	Smalltalk15					= "SVM_3_Smalltalk15"				;//... to oczywiste....
	Smalltalk16					= "SVM_3_Smalltalk16"				;//... nie musisz mnie o to pytac......
	Smalltalk17					= "SVM_3_Smalltalk17"				;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_3_Smalltalk18"				;//... znasz juz moja opinie.....
	Smalltalk19					= "SVM_3_Smalltalk19"				;//... Tak wlasnie powiedzialem.....
	Smalltalk20					= "SVM_3_Smalltalk20"				;//... nic sie nigdy nie zmieni......
	Smalltalk21					= "SVM_3_Smalltalk21"				;//... Dlaczego jestem dopiero teraz dowiaduje sie.....
	Smalltalk22					= "SVM_3_Smalltalk22"				;//... poczekajmy i zobaczmy, co sie dzieje....
	Smalltalk23					= "SVM_3_Smalltalk23"				;//... niektóre problemy rozwiazywane sa samodzielnie......
	Smalltalk24					= "SVM_3_Smalltalk24"				;//... Juz nie slysze....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                    
	Smalltalk25					= "SVM_3_Smalltalk25"				;//... Pijany jak pieklo....
	Smalltalk26					= "SVM_3_Smalltalk26"				;//... Nie mozesz to zrobic ze mna......
	Smalltalk27					= "SVM_3_Smalltalk27"				;//... wszystkie biegly jak króliki, bylem samotny......
	//ProInnos (NOV/KDF/PAL)                                                                                                                    
	Smalltalk28					= "SVM_3_Smalltalk28"				;//... Tak wiec mówi ona w Pismie swietym....[...].
	Smalltalk29					= "SVM_3_Smalltalk29"				;//... Zawsze dzialam w imieniu Innosa....
	Smalltalk30					= "SVM_3_Smalltalk30"				;//... nikt nie moze naruszac boskiego porzadku......
	SmalltalkKhorataAnnaQuest01			= "SVM_3_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_3_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_3_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_3_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_3_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_3_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_3_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_3_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_3_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_3_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_3_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_3_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_3_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_3_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_3_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_3_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_3_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_3_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_3_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_3_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_3_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_3_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_3_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_3_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_3_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_3_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_3_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_3_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_3_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_3_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_3_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_3_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_3_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_3_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_3_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_3_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_3_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_3_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_3_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_3_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_3_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_3_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_3_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_3_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_3_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_3_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_3_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_3_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_3_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_3_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_3_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_3_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_3_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_3_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_3_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_3_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_3_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_3_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_3_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_3_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_3_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_3_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_3_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_3_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_3_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_3_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_3_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_3_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_3_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_3_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_3_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_3_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_3_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_3_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_3_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_3_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_3_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_3_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_3_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_3_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_3_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_3_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_3_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_3_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_3_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_3_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_3_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_3_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_3_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_3_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_3_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_3_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_3_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_3_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_3_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_3_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_3_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_3_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_3_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_3_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_3_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_3_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_3_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_3_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_3_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_3_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_3_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_3_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_3_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_3_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_3_Addon_WrongArmor";				//Jaki jest to rodzaj odziezy? Ona Ci nie odpowiada. Nie martw sie o mnie.
	ADDON_WRONGARMOR_SLD		= "SVM_3_ADDON_WRONGARMOR_SLD";			//Jesli chcesz porozmawiac, umiesc najpierw cos prawdziwego.
	ADDON_WRONGARMOR_MIL		= "SVM_3_ADDON_WRONGARMOR_MIL";			//Zolnierze nosza mundury z duma. Zmienic sie.
	ADDON_WRONGARMOR_KDF		= "SVM_3_ADDON_WRONGARMOR_KDF";			//W naszym rozkazie wszyscy sa równi, wiec wszyscy noszymy te same ubrania. Zmienic!
	ADDON_NOARMOR_BDT			= "SVM_3_ADDON_ADDON_NOARMOR_BDT";		//Wyglada tak, jakbys byl z prawej strony z wiezienia. Zrób sobie pierwsze ubranie.

	ADDON_DIEBANDIT				= "SVM_3_ADDON_DIEBANDIT";				//! PRZYJECHAC TU, BANDYTA!
	ADDON_DIRTYPIRATE			= "SVM_3_ADDON_DIRTYPIRATE";			//PRZYJECHAC TU, PIRACIE!

	RELMINE01			= "SVM_3_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_3_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_3_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_3_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_3_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_3_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_3_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_3_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_3_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_3_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_3_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_3_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_3_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_3_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_3_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_3_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_3_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_3_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_3_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_3_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_3_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_3_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_3_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_3_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_3_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_3_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_3_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_3_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_3_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_3_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_3_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_3_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_3_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_3_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_3_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_3_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_3_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_3_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_3_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_3_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_3_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_3_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_3_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_3_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_3_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_3_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_3_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_3_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_3_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_3_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_3_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_3_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_3_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_3_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_3_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_3_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_3_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_4 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_4_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_4_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_4_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_4_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_4_Weather"						;//Przyjazna pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_4_IGetYouStill"				;//Jeszcze raz!
	DieEnemy					=	"SVM_4_DieEnemy"					;//Pospiesze sie!
	DieMonster					=	"SVM_4_DieMonster"					;//Kolejne z tych bestii!
	DirtyThief					=	"SVM_4_DirtyThief"					;//Irytujesz malego zlodziejka!
	HandsOff					=	"SVM_4_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_4_SheepKiller"					;//Hej! Zostaw nasze owce samotnie!
	SheepKillerMonster			=	"SVM_4_SheepKillerMonster"			;//Bestia jedzenie naszych owiec!
	YouMurderer					=	"SVM_4_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_4_DieStupidBeast"				;//Co robi tu to zwierze?
	YouDareHitMe				=	"SVM_4_YouDareHitMe"				;//Teraz mozesz sie bawic!
	YouAskedForIt				=	"SVM_4_YouAskedForIt"				;//Nie chciales tego inaczej!
	ThenIBeatYouOutOfHere		=	"SVM_4_ThenIBeatYouOutOfHere"		;//Jesli nie chcesz sluchac, czuc.
	WhatDidYouDoInThere			=	"SVM_4_WhatDidYouDoInThere"			;//Co tam pan robil?
	WillYouStopFighting			=	"SVM_4_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_4_Berzerk"						;//UUAARRGHHHHH!
	KillEnemy					= 	"SVM_4_KillEnemy"					;//Die!
	EnemyKilled					=	"SVM_4_EnemyKilled"					;//Taki glupi syn suki.....
	MonsterKilled				=	"SVM_4_MonsterKilled"				;//Tak to jest, syn suki!
	ThiefDown					=	"SVM_4_ThiefDown"					;//Chron rece przed moimi rekami w przyszlosci, dobrze?
	rumfummlerDown				=	"SVM_4_rumfummlerDown"				;//W przyszlosci trzymaj swoje palce!
	SheepAttackerDown			=	"SVM_4_SheepAttackerDown"			;//Nie dotykaj wiecej naszych owiec!
	KillMurderer				=	"SVM_4_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_4_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_4_NeverHitMeAgain"				;//Nie próbuj tego ponownie, busteruj!
	YouBetterShouldHaveListened	=	"SVM_4_YouBetterShouldHaveListened"	;//Niech to bedzie dla ciebie lekcja.
	GetUpAndBeGone				=	"SVM_4_GetUpAndBeGone"				;//Wstan i wyjdz stad!
	NeverEnterRoomAgain			=	"SVM_4_NeverEnterRoomAgain"			;//Nie chce widziec cie tam juz nigdy wiecej, wszystko w porzadku?
	ThereIsNoFightingHere		=	"SVM_4_ThereIsNoFightingHere"		;//Jesli tu jest jakis facet rzucajacy ciosami, to ja dobrze?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_4_RunAway"						;//Wyobraz sobie! Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_4_Alarm"					;//ALARM!
	Guards						=	"SVM_4_Guards"					;//WACHE!
	Help						=	"SVM_4_Help"					;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_4_GoodMonsterKill"			;//Krzyki) Tak! To jest wlasnie sposób, aby dac je bestiom!
	GoodKill					= 	"SVM_4_GoodKill"				;//(skrzyczenie) Na to ona zasluguje!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_4_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_4_RunCoward"				;//Porozmawiam z Toba pózniej!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_4_GetOutOfHere"			;//Wyjdzcie!
	WhyAreYouInHere				=	"SVM_4_WhyAreYouInHere"			;//Co tu robisz?
	YesGoOutOfHere				= 	"SVM_4_YesGoOutOfHere"			;//Wyciagnij z tego fuge!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_4_WhatsThisSupposedToBe"	;//Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_4_YouDisturbedMySlumber"	;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_4_ITookYourGold"			;//Dziekujemy za zloto, bohater!
	ShitNoGold					=	"SVM_4_ShitNoGold"				;//Biedny draniesz, nie masz nawet zlota!
	ITakeYourWeapon				=	"SVM_4_ITakeYourWeapon"			;//Lepiej wziac pistolet!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_4_WhatAreYouDoing"			;//Ostroznie) Uwazaj! Jeszcze raz i trafie cie.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_4_LookingForTroubleAgain"	;//(agresywne) Czy chcesz wrócic do ust?
																	 
	StopMagic					=	"SVM_4_StopMagic"				;//Zatrzymaj ten magiczny chwyt!
	ISaidStopMagic				=	"SVM_4_ISaidStopMagic"			;//Chcesz poncz? Zatrzymaj sie teraz!
	WeaponDown					=	"SVM_4_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_4_ISaidWeaponDown"			;//Odstaw pistolet!
	WiseMove					=	"SVM_4_WiseMove"				;//Inteligentny przyjaciel!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_4_NextTimeYoureInForIt"	;//Nastepnym razem zobaczymy....
	OhMyHead					=	"SVM_4_OhMyHead"				;//O Mezczyzna, glowa moja....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_4_TheresAFight"			;//(chwycenie) Ah, walka!
	OhMyGodItsAFight			=	"SVM_4_OhMyGodItsAFight"		;//Mój Boze, walka!
	GoodVictory					=	"SVM_4_GoodVictory"				;//Pokazales go!
	NotBad						= 	"SVM_4_NotBad"					;//(pogniwianie) Nie zly....
	OhMyGodHesDown				=	"SVM_4_OhMyGodHesDown"			;//(do samego siebie) Mój Boze! Jak brutalne....
	CheerFriend01				=	"SVM_4_CheerFriend01"			;//Tak, daj mu to!
	CheerFriend02				=	"SVM_4_CheerFriend02"			;//Pokaz go!
	CheerFriend03				=	"SVM_4_CheerFriend03"			;//Zakoncz go!
	Ooh01						=	"SVM_4_Ooh01"					;//Oderwac sie z powrotem!
	Ooh02						=	"SVM_4_Ooh02"					;//Uderz w nie!
	Ooh03						=	"SVM_4_Ooh03"					;//Ach! To zaszkodzilo!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_4_WhatWasThat"				;//Do samego siebie, budzac sie) Damn, co to bylo pieklo!
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_4_GetOutOfMyBed"				;//Znajdz wlasne lózko!
	Awake						= "SVM_4_Awake"						;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_4_TOUGHGUY_ATTACKLOST"		;//Dostales na ciebie pieklo ponczu.... Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_4_TOUGHGUY_ATTACKWON"		;//(auto wazne) Jakies pytania?
	TOUGHGUY_PLAYERATTACK		= "SVM_4_TOUGHGUY_PLAYERATTACK"		;//Jestes tam znowu!
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_4_GOLD_1000"					;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_4_GOLD_950"					;//950 sztuk zlota.
	GOLD_900					= "SVM_4_GOLD_900"					;//900 sztuk zlota.
	GOLD_850					= "SVM_4_GOLD_850"					;//850 sztuk zlota.
	GOLD_800					= "SVM_4_GOLD_800"					;//800 sztuk zlota.
	GOLD_750					= "SVM_4_GOLD_750"					;//750 sztuk zlota.
	GOLD_700					= "SVM_4_GOLD_700"					;//700 sztuk zlota.
	GOLD_650					= "SVM_4_GOLD_650"					;//650 sztuk zlota.
	GOLD_600					= "SVM_4_GOLD_600"					;//600 sztuk zlota.
	GOLD_550					= "SVM_4_GOLD_550"					;//550 sztuk zlota.
	GOLD_500					= "SVM_4_GOLD_500"					;//500 sztuk zlota.
	GOLD_450					= "SVM_4_GOLD_450"					;//450 sztuk zlota.
	GOLD_400					= "SVM_4_GOLD_400"					;//400 sztuk zlota.
	GOLD_350					= "SVM_4_GOLD_350"					;//350 sztuk zlota.
	GOLD_300					= "SVM_4_GOLD_300"					;//300 sztuk zlota.
	GOLD_250					= "SVM_4_GOLD_250"					;//250 sztuk zlota.
	GOLD_200					= "SVM_4_GOLD_200"					;//200 sztuk zlota.
	GOLD_150					= "SVM_4_GOLD_150"					;//150 sztuk zlota.
	GOLD_100					= "SVM_4_GOLD_100"					;//100 sztuk zlota.
	GOLD_90						= "SVM_4_GOLD_90"					;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_4_GOLD_80"					;//80 sztuk zlota.
	GOLD_70						= "SVM_4_GOLD_70"					;//70 sztuk zlota.
	GOLD_60						= "SVM_4_GOLD_60"					;//60 sztuk zlota.
	GOLD_50						= "SVM_4_GOLD_50"					;//50 sztuk zlota.
	GOLD_40						= "SVM_4_GOLD_40"					;//40 sztuk zlota.
	GOLD_30						= "SVM_4_GOLD_30"					;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_4_GOLD_20"					;//20 sztuk zlota.
	GOLD_10						= "SVM_4_GOLD_10"					;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_4_Smalltalk01"				;//... to prawda......
	Smalltalk02					= "SVM_4_Smalltalk02"				;//... Slyszalem cos innego....
	Smalltalk03					= "SVM_4_Smalltalk03"				;//... Nie powiedz mi, ze tego nie wiedziales....
	Smalltalk04					= "SVM_4_Smalltalk04"				;//... nie wiesz nawet, w kogo juz wiecej wierzyc......
	Smalltalk05					= "SVM_4_Smalltalk05"				;//... to wszystko tylko mówic.....
	Smalltalk06					= "SVM_4_Smalltalk06"				;//... Czy myslisz, ze jestem lepszy....
	Smalltalk07					= "SVM_4_Smalltalk07"				;//... Nic wiecej juz nie dziwi mnie.....
	Smalltalk08					= "SVM_4_Smalltalk08"				;//... to naprawde nie jest mój problem......
	Smalltalk09					= "SVM_4_Smalltalk09"				;//... naprawde w to wierzysz....
	Smalltalk10					= "SVM_4_Smalltalk10"				;//... Nikogo nie mówie.....
	Smalltalk11					= "SVM_4_Smalltalk11"				;//... bylo to jasne juz wczesniej....
	Smalltalk12					= "SVM_4_Smalltalk12"				;//... wsluchiwal sie w niesprawiedliwych ludzi......
	Smalltalk13					= "SVM_4_Smalltalk13"				;//... Jesli tego nie widzi, nie moge juz mu pomóc....
	Smalltalk14					= "SVM_4_Smalltalk14"				;//... Nie mówie ci nic nowego....
	Smalltalk15					= "SVM_4_Smalltalk15"				;//... on sam o tym nie myslal......
	Smalltalk16					= "SVM_4_Smalltalk16"				;//... to juz dawno znany fakt....
	Smalltalk17					= "SVM_4_Smalltalk17"				;//... To zle......
	Smalltalk18					= "SVM_4_Smalltalk18"				;//... Zrobilbym to inaczej......
	Smalltalk19					= "SVM_4_Smalltalk19"				;//... Zgadzam sie z Panem.....
	Smalltalk20					= "SVM_4_Smalltalk20"				;//... to, co bedzie sie zawsze zmienialo......
	Smalltalk21					= "SVM_4_Smalltalk21"				;//... Jeszcze tego nie wiedzialem......
	Smalltalk22					= "SVM_4_Smalltalk22"				;//... nie da sie nic z tym zrobic.....
	Smalltalk23					= "SVM_4_Smalltalk23"				;//... Nie jestem zaskoczony.....
	Smalltalk24					= "SVM_4_Smalltalk24"				;//... musial wiedziec lepiej....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                    
	Smalltalk25					= "SVM_4_Smalltalk25"				;//... Chodzi o sile, wiec nie daj mi tego....
	Smalltalk26					= "SVM_4_Smalltalk26"				;//... nie wie nawet, jak trzymac miecz.....
	Smalltalk27					= "SVM_4_Smalltalk27"				;//... Tak, tak naprawde powiedzial, ze....
	//ProInnos (NOV/KDF/PAL)                                                                                                                    
	Smalltalk28					= "SVM_4_Smalltalk28"				;//... ktos bedzie musial za to zaplacic......
	Smalltalk29					= "SVM_4_Smalltalk29"				;//... Innos swieci na wszystkich tych, którzy uznaja jego madrosc.....
	Smalltalk30					= "SVM_4_Smalltalk30"				;//... w koncu zwyciezy sprawiedliwosc......
	SmalltalkKhorataAnnaQuest01			= "SVM_4_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_4_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_4_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_4_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_4_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_4_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_4_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_4_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_4_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_4_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_4_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_4_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_4_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_4_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_4_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_4_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_4_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_4_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_4_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_4_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_4_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_4_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_4_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_4_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_4_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_4_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_4_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_4_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_4_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_4_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_4_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_4_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_4_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_4_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_4_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_4_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_4_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_4_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_4_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_4_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_4_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_4_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_4_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_4_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_4_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_4_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_4_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_4_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_4_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_4_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_4_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_4_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_4_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_4_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_4_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_4_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_4_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_4_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_4_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_4_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_4_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_4_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_4_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_4_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_4_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_4_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_4_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_4_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_4_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_4_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_4_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_4_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_4_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_4_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_4_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_4_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_4_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_4_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_4_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_4_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_4_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_4_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_4_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_4_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_4_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_4_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_4_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_4_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_4_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_4_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_4_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_4_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_4_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_4_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_4_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_4_TEMPEL_2_MARKT"			;//Kiedy stoisz przed swiatynia, skrecasz w lewo i ruszasz w góre walów, przychodzisz na targowisko.
	TEMPEL_2_GALGEN				= "SVM_4_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_4_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_4_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_4_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_4_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_4_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_4_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_4_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_4_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_4_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_4_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_4_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_4_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_4_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_4_Addon_WrongArmor";				//Zalózcie najpierw ubrania, a potem powiemy wiecej.
	ADDON_WRONGARMOR_SLD		= "SVM_4_ADDON_WRONGARMOR_SLD";			//Jesli chcesz rozmawiac ze mna, zalóz pancerz.
	ADDON_WRONGARMOR_MIL		= "SVM_4_ADDON_WRONGARMOR_MIL";			//Nie dostales zadnej zbroi? Potem nalezy najpierw wybrac jedna.
	ADDON_WRONGARMOR_KDF		= "SVM_4_ADDON_WRONGARMOR_KDF";			//Gdzie suknia? Zmienic sie. Nie jestem z Toba przedtem.
	ADDON_NOARMOR_BDT			= "SVM_4_ADDON_ADDON_NOARMOR_BDT";		//Jakiego rodzaju biednej bastard jestescie? Wróc, kiedy stac Cie na pancerz.

	ADDON_DIEBANDIT				= "SVM_4_ADDON_DIEBANDIT";				//Kolejny bandyta!
	ADDON_DIRTYPIRATE			= "SVM_4_ADDON_DIRTYPIRATE";			//Brudny pirat!

	RELMINE01			= "SVM_4_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_4_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_4_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_4_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_4_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_4_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_4_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_4_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_4_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_4_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_4_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_4_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_4_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_4_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_4_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_4_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_4_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_4_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_4_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_4_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_4_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_4_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_4_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_4_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_4_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_4_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_4_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_4_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_4_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_4_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_4_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_4_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_4_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_4_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_4_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_4_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_4_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_4_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_4_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_4_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_4_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_4_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_4_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_4_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_4_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_4_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_4_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_4_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_4_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_4_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_4_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_4_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_4_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_4_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_4_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_4_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_4_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_5 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_5_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_5_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_5_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_5_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_5_Weather"						;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_5_IGetYouStill"				;//Moge Cie jeszcze dostac!
	DieEnemy					=	"SVM_5_DieEnemy"					;//Teraz Twoja kolej!
	DieMonster					=	"SVM_5_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_5_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_5_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_5_SheepKiller"					;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_5_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_5_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_5_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_5_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_5_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_5_ThenIBeatYouOutOfHere"		;//Wtedy bede musial cie wybic!
	WhatDidYouDoInThere			=	"SVM_5_WhatDidYouDoInThere"			;//Co tam robiles, huh?
	WillYouStopFighting			=	"SVM_5_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_5_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_5_EnemyKilled"					;//To jest wlasnie dla Ciebie, punk.
	MonsterKilled				=	"SVM_5_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_5_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_5_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	Berzerk						=	"SVM_5_Berzerk"						;//UUAARRGHHHHH!
	SheepAttackerDown			=	"SVM_5_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_5_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_5_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_5_NeverHitMeAgain"				;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_5_YouBetterShouldHaveListened"	;//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_5_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_5_NeverEnterRoomAgain"			;//I ze juz nigdy cie tam juz nie zlapam!
	ThereIsNoFightingHere		=	"SVM_5_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_5_RunAway"						;//Wyobraz sobie! Wyjdzmy stad!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_5_Alarm"						;//ALARM!
	Guards						=	"SVM_5_Guards"						;//WACHE!
	Help						=	"SVM_5_Help"						;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_5_GoodMonsterKill"				;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_5_GoodKill"					;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_5_NOTNOW"						;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_5_RunCoward"					;//Stoisz nieruchomo, rajd!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_5_GetOutOfHere"				;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_5_WhyAreYouInHere"				;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_5_YesGoOutOfHere"				;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_5_WhatsThisSupposedToBe"		;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_5_YouDisturbedMySlumber"		;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_5_ITookYourGold"				;//Zloto! To juz moja kopalnia.....
	ShitNoGold					=	"SVM_5_ShitNoGold"					;//Nie masz nawet zlota?
	ITakeYourWeapon				=	"SVM_5_ITakeYourWeapon"				;//Lepiej bym zabral ze soba bron.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_5_WhatAreYouDoing"				;//Ostrzezenie) Hej! Uwazaj!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_5_LookingForTroubleAgain"		;//Jeszcze za malo?
	StopMagic					=	"SVM_5_StopMagic"					;//Idz z magia!
	ISaidStopMagic				=	"SVM_5_ISaidStopMagic"				;//Pozbadz sie magii! Czy slyszysz zle?
	WeaponDown					=	"SVM_5_WeaponDown"					;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_5_ISaidWeaponDown"				;//Czy nie slyszysz dobrze? Powiedzialem, ze odlozylem pistolet!
	WiseMove					=	"SVM_5_WiseMove"					;//Idziesz tam, tam idzcie!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_5_NextTimeYoureInForIt"		;//Nadal mówimy o.....
	OhMyHead					=	"SVM_5_OhMyHead"					;//(do siebie) Oh, moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_5_TheresAFight"				;//Wejdzmy do biznesu!
	OhMyGodItsAFight			=	"SVM_5_OhMyGodItsAFight"			;//Sa one gonna bash ich czaszki w.....
	GoodVictory					=	"SVM_5_GoodVictory"					;//Na to on zasluguje.
	NotBad						= 	"SVM_5_NotBad"						;//(pogniwianie) Nie takie zle....
	OhMyGodHesDown				=	"SVM_5_OhMyGodHesDown"				;//(do siebie) Jaki brutalny facet....
	CheerFriend01				=	"SVM_5_CheerFriend01"				;//Tak, to tak!
	CheerFriend02				=	"SVM_5_CheerFriend02"				;//Chodzcie dalej, odejdzmy!
	CheerFriend03				=	"SVM_5_CheerFriend03"				;//Pozostan na szczycie!
	Ooh01						=	"SVM_5_Ooh01"						;//Nie poddawaj sie niczemu!
	Ooh02						=	"SVM_5_Ooh02"						;//Jestes gonna!
	Ooh03						=	"SVM_5_Ooh03"						;//Nie moge w to uwierzyc!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_5_WhatWasThat"					;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_5_GetOutOfMyBed"					;//Wejsc z lózka!
	Awake						= "SVM_5_Awake"							;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_5_TOUGHGUY_ATTACKLOST"			;//To wszystko jest w porzadku, wygrasz. Cóz, czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_5_TOUGHGUY_ATTACKWON"			;//Czy musze ponownie pokazac ci, kim jest Pan?
	TOUGHGUY_PLAYERATTACK		= "SVM_5_TOUGHGUY_PLAYERATTACK"			;//Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_5_GOLD_1000"						;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_5_GOLD_950"						;//950 sztuk zlota.
	GOLD_900					= "SVM_5_GOLD_900"						;//900 sztuk zlota.
	GOLD_850					= "SVM_5_GOLD_850"						;//850 sztuk zlota.
	GOLD_800					= "SVM_5_GOLD_800"						;//800 sztuk zlota.
	GOLD_750					= "SVM_5_GOLD_750"						;//750 sztuk zlota.
	GOLD_700					= "SVM_5_GOLD_700"						;//700 sztuk zlota.
	GOLD_650					= "SVM_5_GOLD_650"						;//650 sztuk zlota.
	GOLD_600					= "SVM_5_GOLD_600"						;//600 sztuk zlota.
	GOLD_550					= "SVM_5_GOLD_550"						;//550 sztuk zlota.
	GOLD_500					= "SVM_5_GOLD_500"						;//500 sztuk zlota.
	GOLD_450					= "SVM_5_GOLD_450"						;//450 sztuk zlota.
	GOLD_400					= "SVM_5_GOLD_400"						;//400 sztuk zlota.
	GOLD_350					= "SVM_5_GOLD_350"						;//350 sztuk zlota.
	GOLD_300					= "SVM_5_GOLD_300"						;//300 sztuk zlota.
	GOLD_250					= "SVM_5_GOLD_250"						;//250 sztuk zlota.
	GOLD_200					= "SVM_5_GOLD_200"						;//200 sztuk zlota.
	GOLD_150					= "SVM_5_GOLD_150"						;//150 sztuk zlota.
	GOLD_100					= "SVM_5_GOLD_100"						;//100 sztuk zlota.
	GOLD_90						= "SVM_5_GOLD_90"						;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_5_GOLD_80"						;//80 sztuk zlota.
	GOLD_70						= "SVM_5_GOLD_70"						;//70 sztuk zlota.
	GOLD_60						= "SVM_5_GOLD_60"						;//60 sztuk zlota.
	GOLD_50						= "SVM_5_GOLD_50"						;//50 sztuk zlota.
	GOLD_40						= "SVM_5_GOLD_40"						;//40 sztuk zlota.
	GOLD_30						= "SVM_5_GOLD_30"						;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_5_GOLD_20"						;//20 sztuk zlota.
	GOLD_10						= "SVM_5_GOLD_10"						;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_5_Smalltalk01"					;//... Czy naprawde wierzysz, ze....
	Smalltalk02					= "SVM_5_Smalltalk02"					;//... jest wszystko mozliwe.....
	Smalltalk03					= "SVM_5_Smalltalk03"					;//... powinien byl wiedziec lepiej........
	Smalltalk04					= "SVM_5_Smalltalk04"					;//... jakbym nie mial juz dosc problemów.....
	Smalltalk05					= "SVM_5_Smalltalk05"					;//... kto mówi takie cos.....
	Smalltalk06					= "SVM_5_Smalltalk06"					;//... jest jeszcze wiecej klopotów......
	Smalltalk07					= "SVM_5_Smalltalk07"					;//... wiele do powiedzenia.....
	Smalltalk08					= "SVM_5_Smalltalk08"					;//... Nie zrobilbym tego.....
	Smalltalk09					= "SVM_5_Smalltalk09"					;//... To tylko pogloski....
	Smalltalk10					= "SVM_5_Smalltalk10"					;//... musisz tylko uwazac, co mówisz ludziom....
	Smalltalk11					= "SVM_5_Smalltalk11"					;//... Móglbym panstwu to powiedziec wczesniej.....
	Smalltalk12					= "SVM_5_Smalltalk12"					;//... Nikt mnie nie pyta....
	Smalltalk13					= "SVM_5_Smalltalk13"					;//... Mozna zalowac biednego faceta....
	Smalltalk14					= "SVM_5_Smalltalk14"					;//... nie jest to nic nowego....
	Smalltalk15					= "SVM_5_Smalltalk15"					;//... to oczywiste....
	Smalltalk16					= "SVM_5_Smalltalk16"					;//... nie musisz mnie o to pytac......
	Smalltalk17					= "SVM_5_Smalltalk17"					;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_5_Smalltalk18"					;//... znasz juz moja opinie.....
	Smalltalk19					= "SVM_5_Smalltalk19"					;//... Tak wlasnie powiedzialem.....
	Smalltalk20					= "SVM_5_Smalltalk20"					;//... nic sie nigdy nie zmieni......
	Smalltalk21					= "SVM_5_Smalltalk21"					;//... dlaczego nie dowiedzialem sie o tym do tej pory.....
	Smalltalk22					= "SVM_5_Smalltalk22"					;//... poczekajmy i zobaczmy, co sie dzieje....
	Smalltalk23					= "SVM_5_Smalltalk23"					;//... niektóre problemy rozwiazywane sa samodzielnie......
	Smalltalk24					= "SVM_5_Smalltalk24"					;//... Juz nie slysze....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_5_Smalltalk25"					;//... Pijany jak pieklo....
	Smalltalk26					= "SVM_5_Smalltalk26"					;//... Nie mozesz to zrobic ze mna......
	Smalltalk27					= "SVM_5_Smalltalk27"					;//... wszystkie biegly jak króliki, bylem samotny......
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_5_Smalltalk28"					;//... Tak wiec mówi ona w Pismie swietym....[...].
	Smalltalk29					= "SVM_5_Smalltalk29"					;//... Zawsze dzialam w imieniu Inno....
	Smalltalk30					= "SVM_5_Smalltalk30"					;//... nikt nie moze naruszac boskiego porzadku......
	SmalltalkKhorataAnnaQuest01			= "SVM_5_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_5_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_5_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_5_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_5_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_5_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_5_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_5_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_5_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_5_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_5_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_5_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_5_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_5_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_5_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_5_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_5_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_5_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_5_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_5_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_5_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_5_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_5_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_5_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_5_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_5_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_5_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_5_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_5_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_5_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_5_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_5_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_5_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_5_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_5_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_5_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_5_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_5_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_5_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_5_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_5_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_5_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_5_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_5_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_5_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_5_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_5_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_5_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_5_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_5_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_5_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_5_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_5_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_5_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_5_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_5_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_5_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_5_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_5_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_5_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_5_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_5_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_5_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_5_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_5_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_5_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_5_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_5_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_5_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_5_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_5_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_5_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_5_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_5_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_5_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_5_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_5_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_5_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_5_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_5_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_5_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_5_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_5_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_5_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_5_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_5_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_5_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_5_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_5_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_5_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_5_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_5_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_5_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_5_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_5_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_5_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_5_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_5_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_5_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_5_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_5_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_5_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_5_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_5_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_5_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_5_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_5_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_5_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_5_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_5_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_5_Addon_WrongArmor";				//Obronic sie na razie.
	ADDON_WRONGARMOR_SLD		= "SVM_5_ADDON_WRONGARMOR_SLD";			//Jak chodzisz? Czy nie jestes juz z nami? Wtedy nie chce z wami nic wspólnego.
	ADDON_WRONGARMOR_MIL		= "SVM_5_ADDON_WRONGARMOR_MIL";			//Zolnierze walcza o króla, wiec nosic jego zbroje.
	ADDON_WRONGARMOR_KDF		= "SVM_5_ADDON_WRONGARMOR_KDF";			//Dlaczego Zakon daje Ci ubrania, jesli ich nie nosisz? Pomyslmy o tym.
	ADDON_NOARMOR_BDT			= "SVM_5_ADDON_ADDON_NOARMOR_BDT";		//Jakim rodzajem kielbasy jestes? Nie masz nawet zbroi. Odejdz.

	ADDON_DIEBANDIT				= "SVM_5_ADDON_DIEBANDIT";				//Ach, bandyta.
	ADDON_DIRTYPIRATE			= "SVM_5_ADDON_DIRTYPIRATE";			//Pospiesze sie, pirat!

	RELMINE01			= "SVM_5_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_5_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_5_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_5_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_5_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_5_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_5_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_5_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_5_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_5_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_5_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_5_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_5_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_5_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_5_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_5_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_5_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_5_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_5_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_5_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_5_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_5_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_5_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_5_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_5_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_5_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_5_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_5_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_5_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_5_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_5_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_5_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_5_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_5_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_5_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_5_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_5_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_5_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_5_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_5_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_5_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_5_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_5_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_5_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_5_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_5_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_5_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_5_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_5_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_5_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_5_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_5_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_5_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_5_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_5_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_5_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_5_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_6 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_6_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_6_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_6_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_6_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_6_Weather"					;//Piekna pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_6_IGetYouStill"				;//Jestem gonna cie!
	DieEnemy					=	"SVM_6_DieEnemy"					;//Nie powinienes tu przyjezdzac!
	DieMonster					=	"SVM_6_DieMonster"					;//Chodzcie tu, suka!
	DirtyThief					=	"SVM_6_DirtyThief"					;//Brudny zlodziej! Cóz, poczekaj!
	HandsOff					=	"SVM_6_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_6_SheepKiller"				;//Zostaw nasze owce samotnie!
	SheepKillerMonster			=	"SVM_6_SheepKillerMonster"			;//Udajcie sie z dala od naszych owiec, synu suki!
	YouMurderer					=	"SVM_6_YouMurderer"				;//Morderca!
	DieStupidBeast				=	"SVM_6_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_6_YouDareHitMe"				;//Bedziesz tego zalowal!
	YouAskedForIt				=	"SVM_6_YouAskedForIt"				;//Ostrzegam cie!
	ThenIBeatYouOutOfHere		=	"SVM_6_ThenIBeatYouOutOfHere"		;//Hej!
	WhatDidYouDoInThere			=	"SVM_6_WhatDidYouDoInThere"		;//Hej! Co tam robiles?
	WillYouStopFighting			=	"SVM_6_WillYouStopFighting"		;//Zatrzymaj sie! Teraz!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_6_KillEnemy"					;//Teraz jestem przed Toba, skumbag!
	EnemyKilled					=	"SVM_6_EnemyKilled"				;//To wlasnie dla Ciebie.....
	Berzerk						=	"SVM_6_Berzerk"						;//UUAARRGHHHHH!
	MonsterKilled				=	"SVM_6_MonsterKilled"				;//Ciagle to zrozumialem!
	ThiefDown					=	"SVM_6_ThiefDown"					;//Ostrzegam! Nie próbuj tego ponownie, brudne zlodziejstwo!
	rumfummlerDown				=	"SVM_6_rumfummlerDown"				;//Nie dotykaj rzeczy, które juz nigdy wiecej nie naleza do Ciebie!
	SheepAttackerDown			=	"SVM_6_SheepAttackerDown"			;//I w przyszlosci trzymaj sie z dala od naszych owiec!
	KillMurderer				=	"SVM_6_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_6_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_6_NeverHitMeAgain"				;//Nie osmielisz sie zaatakowac mnie nigdy wiecej!
	YouBetterShouldHaveListened	=	"SVM_6_YouBetterShouldHaveListened"	;//Ostrzegam cie!
	GetUpAndBeGone				=	"SVM_6_GetUpAndBeGone"					;//Teraz wyjdz z tego miejsca!
	NeverEnterRoomAgain			=	"SVM_6_NeverEnterRoomAgain"			;//Nie chce widziec cie tam juz nigdy wiecej, wszystko w porzadku?
	ThereIsNoFightingHere		=	"SVM_6_ThereIsNoFightingHere"			;//Nie ma tu walki, niech to bedzie dla ciebie lekcja.
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_6_RunAway"						;//Jestem poza nia!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_6_Alarm"					;//ALARM!
	Guards						=	"SVM_6_Guards"					;//WACHE!
	Help						=	"SVM_6_Help"					;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_6_GoodMonsterKill"		;//(wywolywanie krzyków) Daj stworzeniom dobry marynatke!
	GoodKill					= 	"SVM_6_GoodKill"				;//(skrzyczacy) Tak, daj go synowi suki!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_6_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_6_RunCoward"				;//Jestem gonna cie!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_6_GetOutOfHere"			;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_6_WhyAreYouInHere"		;//Nie masz tutaj zadnych interesów!
	YesGoOutOfHere				= 	"SVM_6_YesGoOutOfHere"			;//Tak, wyjdz!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_6_WhatsThisSupposedToBe"	;//Co robisz w piekle? Dlaczego sie tu ukradacie?
	YouDisturbedMySlumber		=	"SVM_6_YouDisturbedMySlumber"	;//Jakiego fuku chcesz?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_6_ITookYourGold"			;//No cóz, przynajmniej przywiózles zloto!
	ShitNoGold					=	"SVM_6_ShitNoGold"				;//Nie ma nawet zlota hmph.
	ITakeYourWeapon				=	"SVM_6_ITakeYourWeapon"		;//Zabiore twoja bron ze soba.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_6_WhatAreYouDoing"		;//Ostrzezenie) Chlopiec! Nie rób tego ponownie!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_6_LookingForTroubleAgain"	;//(agresywne) Czy potrzebujesz ponawiac uderzenia?
	StopMagic					=	"SVM_6_StopMagic"				;//Pozbadz sie magii!
	ISaidStopMagic				=	"SVM_6_ISaidStopMagic"			;//Ostatnie ostrzezenie! Pozbadz sie magii!
	WeaponDown					=	"SVM_6_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_6_ISaidWeaponDown"		;//Udajcie sie tu z miejsca, bo nie bede was mial na twarzy!
	WiseMove					=	"SVM_6_WiseMove"				;//Nie jestes tak glupi, jak wygladasz!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_6_NextTimeYoureInForIt"	;//(u siebie) Nie próbuj tego ponownie spróbowac......
	OhMyHead					=	"SVM_6_OhMyHead"				;//(do samego siebie! Moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_6_TheresAFight"			;//Teraz to zabawa....
	OhMyGodItsAFight			=	"SVM_6_OhMyGodItsAFight"		;//O, moja dobroc!
	GoodVictory					=	"SVM_6_GoodVictory"			;//To go nauczy....
	NotBad						= 	"SVM_6_NotBad"					;//Zrobil czas!
	OhMyGodHesDown				=	"SVM_6_OhMyGodHesDown"			;//Brutalna kanalia!
	CheerFriend01				=	"SVM_6_CheerFriend01"			;//Uderz w nie!
	CheerFriend02				=	"SVM_6_CheerFriend02"			;//Nie zatrzymuj sie!
	CheerFriend03				=	"SVM_6_CheerFriend03"			;//Zakoncz go!
	Ooh01						=	"SVM_6_Ooh01"					;//Uwazaj!
	Ooh02						=	"SVM_6_Ooh02"					;//Nie badz glupcem!
	Ooh03						=	"SVM_6_Ooh03"					;//Oszalec, bolec!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_6_WhatWasThat"				;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_6_GetOutOfMyBed"			;//To jest moje lózko!
	Awake						= "SVM_6_Awake"					;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_6_TOUGHGUY_ATTACKLOST"		;//Dobrze, wygrasz. Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_6_TOUGHGUY_ATTACKWON"		;//Mysle, ze teraz zdaje sobie sprawe z tego, z kim rozmawiasz. Czego chcesz?
	TOUGHGUY_PLAYERATTACK		= "SVM_6_TOUGHGUY_PLAYERATTACK"	;//Ponownie? Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_6_GOLD_1000"				;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_6_GOLD_950"					;//950 sztuk zlota.
	GOLD_900					= "SVM_6_GOLD_900"					;//900 sztuk zlota.
	GOLD_850					= "SVM_6_GOLD_850"					;//850 sztuk zlota.
	GOLD_800					= "SVM_6_GOLD_800"					;//800 sztuk zlota.
	GOLD_750					= "SVM_6_GOLD_750"					;//750 sztuk zlota.
	GOLD_700					= "SVM_6_GOLD_700"					;//700 sztuk zlota.
	GOLD_650					= "SVM_6_GOLD_650"					;//650 sztuk zlota.
	GOLD_600					= "SVM_6_GOLD_600"					;//600 sztuk zlota.
	GOLD_550					= "SVM_6_GOLD_550"					;//550 sztuk zlota.
	GOLD_500					= "SVM_6_GOLD_500"					;//500 sztuk zlota.
	GOLD_450					= "SVM_6_GOLD_450"					;//450 sztuk zlota.
	GOLD_400					= "SVM_6_GOLD_400"					;//400 sztuk zlota.
	GOLD_350					= "SVM_6_GOLD_350"					;//350 sztuk zlota.
	GOLD_300					= "SVM_6_GOLD_300"					;//300 sztuk zlota.
	GOLD_250					= "SVM_6_GOLD_250"					;//250 sztuk zlota.
	GOLD_200					= "SVM_6_GOLD_200"					;//200 sztuk zlota.
	GOLD_150					= "SVM_6_GOLD_150"					;//150 sztuk zlota.
	GOLD_100					= "SVM_6_GOLD_100"					;//100 sztuk zlota.
	GOLD_90						= "SVM_6_GOLD_90"					;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_6_GOLD_80"					;//80 sztuk zlota.
	GOLD_70						= "SVM_6_GOLD_70"					;//70 sztuk zlota.
	GOLD_60						= "SVM_6_GOLD_60"					;//60 sztuk zlota.
	GOLD_50						= "SVM_6_GOLD_50"					;//50 sztuk zlota.
	GOLD_40						= "SVM_6_GOLD_40"					;//40 sztuk zlota.
	GOLD_30						= "SVM_6_GOLD_30"					;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_6_GOLD_20"					;//20 sztuk zlota.
	GOLD_10						= "SVM_6_GOLD_10"					;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_6_Smalltalk01"				;//... Nie moge w to uwierzyc.....
	Smalltalk02					= "SVM_6_Smalltalk02"				;//... Nie bylabym pewna, ze.....
	Smalltalk03					= "SVM_6_Smalltalk03"				;//... wiedzial, ze wczesniej.....
	Smalltalk04					= "SVM_6_Smalltalk04"				;//... Nie wiem, w co juz wierzyc.....
	Smalltalk05					= "SVM_6_Smalltalk05"				;//... Nie wiem, dlaczego jest tak zdenerwowany.....
	Smalltalk06					= "SVM_6_Smalltalk06"				;//... Nie potrzebuje wiecej klopotów....
	Smalltalk07					= "SVM_6_Smalltalk07"				;//... Slyszalem wiele rzeczy....
	Smalltalk08					= "SVM_6_Smalltalk08"				;//... Wole raczej trzymac rece z dala od niego....
	Smalltalk09					= "SVM_6_Smalltalk09"				;//... po prostu nie mozesz uwierzyc we wszystko, co slyszysz....
	Smalltalk10					= "SVM_6_Smalltalk10"				;//... od mnie tego nie zrobil......
	Smalltalk11					= "SVM_6_Smalltalk11"				;//... Tak wiele myslalem, ze....
	Smalltalk12					= "SVM_6_Smalltalk12"				;//... Nikt nie chce uslyszec mojej opinii.....
	Smalltalk13					= "SVM_6_Smalltalk13"				;//... on naprawde nie zasluzyl na to....
	Smalltalk14					= "SVM_6_Smalltalk14"				;//... Nie powiedz mi, ze nie wiedziales....
	Smalltalk15					= "SVM_6_Smalltalk15"				;//... bylo to oczywiste....
	Smalltalk16					= "SVM_6_Smalltalk16"				;//... Skad to sie wzielas?
	Smalltalk17					= "SVM_6_Smalltalk17"				;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_6_Smalltalk18"				;//... Mam wlasna opinie....
	Smalltalk19					= "SVM_6_Smalltalk19"				;//... dokladnie to, co pan powiedzial....
	Smalltalk20					= "SVM_6_Smalltalk20"				;//... Nie sadze, aby w tym cos sie zmienilo....
	Smalltalk21					= "SVM_6_Smalltalk21"				;//... Slysze to po raz pierwszy.....
	Smalltalk22					= "SVM_6_Smalltalk22"				;//... Mozemy tylko poczekac i zobaczyc....
	Smalltalk23					= "SVM_6_Smalltalk23"				;//... problemy, które widzialem przyjezdzajac.....
	Smalltalk24					= "SVM_6_Smalltalk24"				;//... Dlaczego nikt nie slucha mnie....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_6_Smalltalk25"				;//... który biegal tak, jakby Beliar sam byl po nim....
	Smalltalk26					= "SVM_6_Smalltalk26"				;//... oczywiscie dostalismy go przeciez.....
	Smalltalk27					= "SVM_6_Smalltalk27"				;//... musisz bardzo ciezko trafic w miedzyczasie.....
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_6_Smalltalk28"				;//... niektórzy nie wiedza, jak wiele grzeszyli....
	Smalltalk29					= "SVM_6_Smalltalk29"				;//... bo to jest wola Innosa....
	Smalltalk30					= "SVM_6_Smalltalk30"				;//... jego czyny byly sprawiedliwe....
	SmalltalkKhorataAnnaQuest01			= "SVM_6_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_6_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_6_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_6_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_6_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_6_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_6_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_6_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_6_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_6_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_6_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_6_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_6_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_6_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_6_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_6_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_6_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_6_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_6_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_6_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_6_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_6_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_6_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_6_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_6_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_6_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_6_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_6_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_6_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_6_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_6_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_6_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_6_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_6_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_6_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_6_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_6_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_6_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_6_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_6_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_6_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_6_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_6_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_6_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_6_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_6_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_6_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_6_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_6_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_6_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_6_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_6_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_6_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_6_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_6_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_6_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_6_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_6_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_6_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_6_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_6_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_6_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_6_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_6_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_6_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_6_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_6_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_6_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_6_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_6_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_6_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_6_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_6_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_6_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_6_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_6_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_6_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_6_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_6_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_6_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_6_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_6_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_6_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_6_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_6_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_6_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_6_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_6_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_6_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_6_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_6_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_6_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_6_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_6_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_6_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_6_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_6_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_6_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_6_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_6_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_6_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_6_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_6_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_6_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_6_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_6_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_6_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_6_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_6_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_6_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_6_Addon_WrongArmor";				//W tej windzie robisz z siebie glupca. Zalóz cos rozsadnego.
	ADDON_WRONGARMOR_SLD		= "SVM_6_ADDON_WRONGARMOR_SLD";			//zgadnij, myslisz, ze cie nie rozpoznaje. Wychodzimy z tego i zmieniamy sie.
	ADDON_WRONGARMOR_MIL		= "SVM_6_ADDON_WRONGARMOR_MIL";			//Zolnierz. Jaki jest to rodzaj odziezy? Natychmiast przeniesc sie!
	ADDON_WRONGARMOR_KDF		= "SVM_6_ADDON_WRONGARMOR_KDF";			//Sluga Innosa nie ukrywa sie. Idz dostac szate.
	ADDON_NOARMOR_BDT			= "SVM_6_ADDON_ADDON_NOARMOR_BDT";		//Chodzisz jak kopaczka. Na poczatek wlóz ubrania.

	ADDON_DIEBANDIT				= "SVM_6_ADDON_DIEBANDIT";				//Bladzisz z niewlasciwym facetem, BANDITem!
	ADDON_DIRTYPIRATE			= "SVM_6_ADDON_DIRTYPIRATE";			//Powrót do morza, PIRAT!

	RELMINE01			= "SVM_6_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_6_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_6_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_6_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_6_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_6_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_6_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_6_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_6_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_6_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_6_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_6_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_6_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_6_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_6_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_6_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_6_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_6_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_6_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_6_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_6_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_6_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_6_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_6_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_6_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_6_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_6_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_6_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_6_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_6_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_6_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_6_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_6_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_6_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_6_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_6_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_6_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_6_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_6_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_6_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_6_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_6_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_6_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_6_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_6_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_6_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_6_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_6_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_6_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_6_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_6_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_6_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_6_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_6_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_6_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_6_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_6_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_7 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_7_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_7_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_7_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_7_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_7_Weather"						;//Przyjazna pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_7_IGetYouStill"				;//Jeszcze raz!
	DieEnemy					=	"SVM_7_DieEnemy"					;//Pospiesze sie!
	DieMonster					=	"SVM_7_DieMonster"					;//Kolejne z tych bestii!
	DirtyThief					=	"SVM_7_DirtyThief"					;//Irytujesz malego zlodziejka!
	HandsOff					=	"SVM_7_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_7_SheepKiller"					;//Hej! Zostaw nasze owce samotnie!
	SheepKillerMonster			=	"SVM_7_SheepKillerMonster"			;//Bestia jedzenie naszych owiec!
	YouMurderer					=	"SVM_7_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_7_DieStupidBeast"				;//Co robi tu to zwierze?
	YouDareHitMe				=	"SVM_7_YouDareHitMe"				;//Teraz mozesz sie bawic!
	YouAskedForIt				=	"SVM_7_YouAskedForIt"				;//Nie chciales tego inaczej!
	ThenIBeatYouOutOfHere		=	"SVM_7_ThenIBeatYouOutOfHere"		;//Jesli nie chcesz sluchac, czuc.
	WhatDidYouDoInThere			=	"SVM_7_WhatDidYouDoInThere"			;//Co tam pan robil?
	WillYouStopFighting			=	"SVM_7_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_7_KillEnemy"					;//Die!
	EnemyKilled					=	"SVM_7_EnemyKilled"					;//Taki glupi syn suki.....
	MonsterKilled				=	"SVM_7_MonsterKilled"				;//Tak to jest, syn suki!
	ThiefDown					=	"SVM_7_ThiefDown"					;//Chron rece przed moimi rekami w przyszlosci, dobrze?
	rumfummlerDown				=	"SVM_7_rumfummlerDown"				;//W przyszlosci trzymaj swoje palce!
	SheepAttackerDown			=	"SVM_7_SheepAttackerDown"			;//Nie dotykaj wiecej naszych owiec!
	KillMurderer				=	"SVM_7_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_7_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_7_NeverHitMeAgain"				;//Nie próbuj tego ponownie, busteruj!
	YouBetterShouldHaveListened	=	"SVM_7_YouBetterShouldHaveListened"	;//Niech to bedzie dla ciebie lekcja,
	GetUpAndBeGone				=	"SVM_7_GetUpAndBeGone"				;//Wstan i wyjdz stad!
	NeverEnterRoomAgain			=	"SVM_7_NeverEnterRoomAgain"			;//Nie chce widziec cie tam juz nigdy wiecej, wszystko w porzadku?
	ThereIsNoFightingHere		=	"SVM_7_ThereIsNoFightingHere"		;//Jesli tu jest jakis facet rzucajacy ciosami, to ja dobrze?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_7_Berzerk"						;//UUAARRGHHHHH!
		RunAway						= 	"SVM_7_RunAway"						;//Wyobraz sobie! Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_7_Alarm"					;//ALARM!
	Guards						=	"SVM_7_Guards"					;//WACHE!
	Help						=	"SVM_7_Help"					;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_7_GoodMonsterKill"			;//Krzyki) Tak! To jest wlasnie sposób, aby dac je bestiom!
	GoodKill					= 	"SVM_7_GoodKill"				;//(skrzyczenie) Na to ona zasluguje!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_7_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_7_RunCoward"				;//Porozmawiam z Toba pózniej!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_7_GetOutOfHere"			;//Wyjdzcie!
	WhyAreYouInHere				=	"SVM_7_WhyAreYouInHere"			;//Co tu robisz?
	YesGoOutOfHere				= 	"SVM_7_YesGoOutOfHere"			;//Wyciagnij z tego fuge!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_7_WhatsThisSupposedToBe"	;//Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_7_YouDisturbedMySlumber"	;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_7_ITookYourGold"			;//Dziekujemy za zloto, bohater!
	ShitNoGold					=	"SVM_7_ShitNoGold"				;//Biedny draniesz, nie masz nawet zlota!
	ITakeYourWeapon				=	"SVM_7_ITakeYourWeapon"			;//Lepiej wziac pistolet!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_7_WhatAreYouDoing"			;//Ostroznie) Uwazaj! Jeszcze raz i trafie cie.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_7_LookingForTroubleAgain"	;//(agresywne) Czy chcesz wrócic do ust?
																	 
	StopMagic					=	"SVM_7_StopMagic"				;//Zatrzymaj ten magiczny chwyt!
	ISaidStopMagic				=	"SVM_7_ISaidStopMagic"			;//Chcesz poncz? Zatrzymaj sie teraz!
	WeaponDown					=	"SVM_7_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_7_ISaidWeaponDown"			;//Odstaw pistolet!
	WiseMove					=	"SVM_7_WiseMove"				;//Inteligentny przyjaciel!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_7_NextTimeYoureInForIt"	;//Nastepnym razem zobaczymy....
	OhMyHead					=	"SVM_7_OhMyHead"				;//O Mezczyzna, glowa moja....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_7_TheresAFight"			;//(chwycenie) Ah, walka!
	OhMyGodItsAFight			=	"SVM_7_OhMyGodItsAFight"		;//Mój Boze, walka!
	GoodVictory					=	"SVM_7_GoodVictory"				;//Pokazales go!
	NotBad						= 	"SVM_7_NotBad"					;//(pogniwianie) Nie zly....
	OhMyGodHesDown				=	"SVM_7_OhMyGodHesDown"			;//(do samego siebie) Mój Boze! Jak brutalne....
	CheerFriend01				=	"SVM_7_CheerFriend01"			;//Tak, daj mu to!
	CheerFriend02				=	"SVM_7_CheerFriend02"			;//Pokaz go!
	CheerFriend03				=	"SVM_7_CheerFriend03"			;//Zakoncz go!
	Ooh01						=	"SVM_7_Ooh01"					;//Oderwac sie z powrotem!
	Ooh02						=	"SVM_7_Ooh02"					;//Uderz w nie!
	Ooh03						=	"SVM_7_Ooh03"					;//Ach! To zaszkodzilo!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_7_WhatWasThat"				;//Co to za Damn?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_7_GetOutOfMyBed"				;//Znajdz wlasne lózko!
	Awake						= "SVM_7_Awake"						;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_7_TOUGHGUY_ATTACKLOST"		;//Dostales na ciebie pieklo ponczu.... Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_7_TOUGHGUY_ATTACKWON"		;//(auto wazne) Jakies pytania?
	TOUGHGUY_PLAYERATTACK		= "SVM_7_TOUGHGUY_PLAYERATTACK"		;//Jestes tam znowu!
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_7_GOLD_1000"					;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_7_GOLD_950"					;//950 sztuk zlota.
	GOLD_900					= "SVM_7_GOLD_900"					;//900 sztuk zlota.
	GOLD_850					= "SVM_7_GOLD_850"					;//850 sztuk zlota.
	GOLD_800					= "SVM_7_GOLD_800"					;//800 sztuk zlota.
	GOLD_750					= "SVM_7_GOLD_750"					;//750 sztuk zlota.
	GOLD_700					= "SVM_7_GOLD_700"					;//700 sztuk zlota.
	GOLD_650					= "SVM_7_GOLD_650"					;//650 sztuk zlota.
	GOLD_600					= "SVM_7_GOLD_600"					;//600 sztuk zlota.
	GOLD_550					= "SVM_7_GOLD_550"					;//550 sztuk zlota.
	GOLD_500					= "SVM_7_GOLD_500"					;//500 sztuk zlota.
	GOLD_450					= "SVM_7_GOLD_450"					;//450 sztuk zlota.
	GOLD_400					= "SVM_7_GOLD_400"					;//400 sztuk zlota.
	GOLD_350					= "SVM_7_GOLD_350"					;//350 sztuk zlota.
	GOLD_300					= "SVM_7_GOLD_300"					;//300 sztuk zlota.
	GOLD_250					= "SVM_7_GOLD_250"					;//250 sztuk zlota.
	GOLD_200					= "SVM_7_GOLD_200"					;//200 sztuk zlota.
	GOLD_150					= "SVM_7_GOLD_150"					;//150 sztuk zlota.
	GOLD_100					= "SVM_7_GOLD_100"					;//100 sztuk zlota.
	GOLD_90						= "SVM_7_GOLD_90"					;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_7_GOLD_80"					;//80 sztuk zlota.
	GOLD_70						= "SVM_7_GOLD_70"					;//70 sztuk zlota.
	GOLD_60						= "SVM_7_GOLD_60"					;//60 sztuk zlota.
	GOLD_50						= "SVM_7_GOLD_50"					;//50 sztuk zlota.
	GOLD_40						= "SVM_7_GOLD_40"					;//40 sztuk zlota.
	GOLD_30						= "SVM_7_GOLD_30"					;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_7_GOLD_20"					;//20 sztuk zlota.
	GOLD_10						= "SVM_7_GOLD_10"					;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_7_Smalltalk01"				;//... to prawda......
	Smalltalk02					= "SVM_7_Smalltalk02"				;//... Slyszalem cos innego.....
	Smalltalk03					= "SVM_7_Smalltalk03"				;//... Nie powiedz mi, ze nie wiedziales....
	Smalltalk04					= "SVM_7_Smalltalk04"				;//... nie wiesz nawet, w kogo juz wiecej wierzyc......
	Smalltalk05					= "SVM_7_Smalltalk05"				;//... to wszystko tylko mówic.....
	Smalltalk06					= "SVM_7_Smalltalk06"				;//... Czy myslisz, ze jestem lepszy....
	Smalltalk07					= "SVM_7_Smalltalk07"				;//... Zastanawiam sie o niczym wiecej....
	Smalltalk08					= "SVM_7_Smalltalk08"				;//... to naprawde nie jest mój problem......
	Smalltalk09					= "SVM_7_Smalltalk09"				;//... naprawde w to wierzysz....
	Smalltalk10					= "SVM_7_Smalltalk10"				;//... Nikogo nie mówie.....
	Smalltalk11					= "SVM_7_Smalltalk11"				;//... bylo to jasne juz wczesniej....
	Smalltalk12					= "SVM_7_Smalltalk12"				;//... wsluchiwal sie w niesprawiedliwych ludzi....
	Smalltalk13					= "SVM_7_Smalltalk13"				;//... Jesli tego nie widzi, nie moge juz mu pomóc....
	Smalltalk14					= "SVM_7_Smalltalk14"				;//... Nie mówie ci nic nowego....
	Smalltalk15					= "SVM_7_Smalltalk15"				;//... on sam o tym nie myslal......
	Smalltalk16					= "SVM_7_Smalltalk16"				;//... to juz dawno znany fakt....
	Smalltalk17					= "SVM_7_Smalltalk17"				;//... to jest zle.....
	Smalltalk18					= "SVM_7_Smalltalk18"				;//... Zrobilbym to inaczej......
	Smalltalk19					= "SVM_7_Smalltalk19"				;//... Zgadzam sie z Panem.....
	Smalltalk20					= "SVM_7_Smalltalk20"				;//... to, co bedzie sie zawsze zmienialo......
	Smalltalk21					= "SVM_7_Smalltalk21"				;//... Jeszcze tego nie wiedzialem......
	Smalltalk22					= "SVM_7_Smalltalk22"				;//... nie da sie nic z tym zrobic.....
	Smalltalk23					= "SVM_7_Smalltalk23"				;//... Nie jestem zaskoczony.....
	Smalltalk24					= "SVM_7_Smalltalk24"				;//... musial wiedziec lepiej....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                   
	Smalltalk25					= "SVM_7_Smalltalk25"				;//... Chodzi o sile, wiec nie daj mi tego....
	Smalltalk26					= "SVM_7_Smalltalk26"				;//... nie wie nawet, jak trzymac miecz....
	Smalltalk27					= "SVM_7_Smalltalk27"				;//... Tak, tak naprawde powiedzial, ze....
	//ProInnos (NOV/KDF/PAL)                                                                                                                   
	Smalltalk28					= "SVM_7_Smalltalk28"				;//... ktos bedzie musial za to zaplacic......
	Smalltalk29					= "SVM_7_Smalltalk29"				;//... Innos swieci na wszystkich tych, którzy uznaja jego madrosc.....
	Smalltalk30					= "SVM_7_Smalltalk30"				;//... w koncu zwyciezy sprawiedliwosc......
	SmalltalkKhorataAnnaQuest01			= "SVM_7_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_7_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_7_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_7_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_7_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_7_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_7_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_7_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_7_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_7_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_7_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_7_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_7_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_7_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_7_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_7_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_7_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_7_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_7_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_7_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_7_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_7_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_7_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_7_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_7_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_7_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_7_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_7_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_7_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_7_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_7_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_7_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_7_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_7_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_7_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_7_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_7_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_7_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_7_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_7_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_7_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_7_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_7_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_7_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_7_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_7_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_7_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_7_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_7_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_7_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_7_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_7_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_7_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_7_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_7_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_7_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_7_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_7_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_7_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_7_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_7_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_7_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_7_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_7_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_7_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_7_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_7_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_7_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_7_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_7_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_7_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_7_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_7_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_7_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_7_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_7_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_7_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_7_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_7_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_7_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_7_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_7_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_7_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_7_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_7_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_7_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_7_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_7_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_7_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_7_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_7_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_7_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_7_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_7_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_7_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_7_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_7_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_7_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_7_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_7_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_7_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_7_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_7_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_7_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_7_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_7_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_7_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_7_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_7_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_7_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_7_Addon_WrongArmor";				//Dlaczego przebranie? Nie mówie do ciebie tak.
	ADDON_WRONGARMOR_SLD		= "SVM_7_ADDON_WRONGARMOR_SLD";			//Jak tu chodzic? Nos nasza zbroje.
	ADDON_WRONGARMOR_MIL		= "SVM_7_ADDON_WRONGARMOR_MIL";			//Jest to naruszenie zasad ubioru Armii. Zmienic natychmiast.
	ADDON_WRONGARMOR_KDF		= "SVM_7_ADDON_WRONGARMOR_KDF";			//Lepiej nosic szate. Do tego czasu bede milczal i modle sie za was.
	ADDON_NOARMOR_BDT			= "SVM_7_ADDON_ADDON_NOARMOR_BDT";		//Czego chcesz? Nie jestes z nami. Nie masz nawet naszej zbroi.

	ADDON_DIEBANDIT				= "SVM_7_ADDON_DIEBANDIT";				//Die, syn siostry z suki.
	ADDON_DIRTYPIRATE			= "SVM_7_ADDON_DIRTYPIRATE";			//Zgubisz pirackiego.

	RELMINE01			= "SVM_7_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_7_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_7_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_7_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_7_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_7_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_7_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_7_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_7_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_7_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_7_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_7_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_7_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_7_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_7_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_7_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_7_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_7_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_7_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_7_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_7_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_7_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_7_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_7_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_7_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_7_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_7_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_7_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_7_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_7_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_7_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_7_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_7_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_7_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_7_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_7_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_7_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_7_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_7_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_7_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_7_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_7_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_7_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_7_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_7_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_7_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_7_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_7_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_7_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_7_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_7_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_7_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_7_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_7_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_7_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_7_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_7_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_8 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_8_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_8_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_8_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_8_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_8_Weather"					;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_8_IGetYouStill"				;//Jestem gonna cie!
	DieEnemy					=	"SVM_8_DieEnemy"					;//Pospiesze sie!
	DieMonster					=	"SVM_8_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_8_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_8_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_8_SheepKiller"				;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_8_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_8_YouMurderer"				;//Morderca!
	DieStupidBeast				=	"SVM_8_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_8_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_8_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_8_ThenIBeatYouOutOfHere"		;//Nie chcesz isc? Wszystko w porzadku!
	WhatDidYouDoInThere			=	"SVM_8_WhatDidYouDoInThere"		;//Co tam robiles?
	WillYouStopFighting			=	"SVM_8_WillYouStopFighting"		;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_8_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_8_EnemyKilled"				;//Zaslugujecie na to, synu suki!
	MonsterKilled				=	"SVM_8_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_8_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_8_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_8_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	Berzerk						=	"SVM_8_Berzerk"						;//UUAARRGHHHHH!
	KillMurderer				=	"SVM_8_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_8_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_8_NeverHitMeAgain"			;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_8_YouBetterShouldHaveListened";//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_8_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_8_NeverEnterRoomAgain"		;//I juz nigdy wiecej nie wpadaj tam!
	ThereIsNoFightingHere		=	"SVM_8_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_8_RunAway"					;//Och, gówno!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_8_Alarm"					;//ALARM!
	Guards						=	"SVM_8_Guards"					;//WACHE!
	Help						=	"SVM_8_Help"					;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_8_GoodMonsterKill"		;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_8_GoodKill"				;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_8_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_8_RunCoward"				;//Krzyki) Tak! Pracuj tak szybko, jak tylko mozesz!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_8_GetOutOfHere"			;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_8_WhyAreYouInHere"		;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_8_YesGoOutOfHere"			;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_8_WhatsThisSupposedToBe"	;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_8_YouDisturbedMySlumber"	;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_8_ITookYourGold"			;//Dziekujemy za zloto, bohater!
	ShitNoGold					=	"SVM_8_ShitNoGold"				;//Biedny draniesz, nie masz nawet zlota!
	ITakeYourWeapon				=	"SVM_8_ITakeYourWeapon"		;//Lepiej wziac pistolet!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_8_WhatAreYouDoing"		;//Ostroznie) Uwazaj! Jeszcze raz i trafie cie.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_8_LookingForTroubleAgain"	;//Jeszcze za malo?
	StopMagic					=	"SVM_8_StopMagic"				;//Zatrzymaj ten magiczny chwyt!
	ISaidStopMagic				=	"SVM_8_ISaidStopMagic"			;//Chcesz poncz? Zatrzymaj sie teraz!
	WeaponDown					=	"SVM_8_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_8_ISaidWeaponDown"		;//Odstaw pistolet!
	WiseMove					=	"SVM_8_WiseMove"				;//Inteligentny przyjaciel!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_8_NextTimeYoureInForIt"	;//Nastepnym razem zobaczymy....
	OhMyHead					=	"SVM_8_OhMyHead"				;//O Mezczyzna, glowa moja....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_8_TheresAFight"			;//(chwycenie) Ah, walka!
	OhMyGodItsAFight			=	"SVM_8_OhMyGodItsAFight"		;//Mój Boze, walka!
	GoodVictory					=	"SVM_8_GoodVictory"			;//Pokazales go!
	NotBad						= 	"SVM_8_NotBad"					;//(pogniwianie) Nie zly....
	OhMyGodHesDown				=	"SVM_8_OhMyGodHesDown"			;//(do samego siebie) Mój Boze! Jak brutalne....
	CheerFriend01				=	"SVM_8_CheerFriend01"			;//Hit go!
	CheerFriend02				=	"SVM_8_CheerFriend02"			;//Daj to wszystko!
	CheerFriend03				=	"SVM_8_CheerFriend03"			;//Pokaz go!
	Ooh01						=	"SVM_8_Ooh01"					;//Badz blisko!
	Ooh02						=	"SVM_8_Ooh02"					;//Ostroznie!
	Ooh03						=	"SVM_8_Ooh03"					;//Och! Zrobil czas!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_8_WhatWasThat"				;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_8_GetOutOfMyBed"			;//Wejsc z lózka!
	Awake						= "SVM_8_Awake"					;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_8_TOUGHGUY_ATTACKLOST"		;//Dobrze, to Ty jestes najlepszy z nas obojga! Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_8_TOUGHGUY_ATTACKWON"		;//(samo-wazne) Przypuszczam, ze teraz zrozumiales, który z nas jest silniejszy.... czego chcesz?
	TOUGHGUY_PLAYERATTACK		= "SVM_8_TOUGHGUY_PLAYERATTACK"	;//Myslalem, ze chcialbys mnie zamieszac. Czy zmieniles zdanie? Chcesz porozmawiac, czy nie? (smiech) Na pewno tak.
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_8_GOLD_1000"				;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_8_GOLD_950"					;//950 sztuk zlota.
	GOLD_900					= "SVM_8_GOLD_900"					;//900 sztuk zlota.
	GOLD_850					= "SVM_8_GOLD_850"					;//850 sztuk zlota.
	GOLD_800					= "SVM_8_GOLD_800"					;//800 sztuk zlota.
	GOLD_750					= "SVM_8_GOLD_750"					;//750 sztuk zlota.
	GOLD_700					= "SVM_8_GOLD_700"					;//700 sztuk zlota.
	GOLD_650					= "SVM_8_GOLD_650"					;//650 sztuk zlota.
	GOLD_600					= "SVM_8_GOLD_600"					;//600 sztuk zlota.
	GOLD_550					= "SVM_8_GOLD_550"					;//550 sztuk zlota.
	GOLD_500					= "SVM_8_GOLD_500"					;//500 sztuk zlota.
	GOLD_450					= "SVM_8_GOLD_450"					;//450 sztuk zlota.
	GOLD_400					= "SVM_8_GOLD_400"					;//400 sztuk zlota.
	GOLD_350					= "SVM_8_GOLD_350"					;//350 sztuk zlota.
	GOLD_300					= "SVM_8_GOLD_300"					;//300 sztuk zlota.
	GOLD_250					= "SVM_8_GOLD_250"					;//250 sztuk zlota.
	GOLD_200					= "SVM_8_GOLD_200"					;//200 sztuk zlota.
	GOLD_150					= "SVM_8_GOLD_150"					;//150 sztuk zlota.
	GOLD_100					= "SVM_8_GOLD_100"					;//100 sztuk zlota.
	GOLD_90						= "SVM_8_GOLD_90"					;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_8_GOLD_80"					;//80 sztuk zlota.
	GOLD_70						= "SVM_8_GOLD_70"					;//70 sztuk zlota.
	GOLD_60						= "SVM_8_GOLD_60"					;//60 sztuk zlota.
	GOLD_50						= "SVM_8_GOLD_50"					;//50 sztuk zlota.
	GOLD_40						= "SVM_8_GOLD_40"					;//40 sztuk zlota.
	GOLD_30						= "SVM_8_GOLD_30"					;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_8_GOLD_20"					;//20 sztuk zlota.
	GOLD_10						= "SVM_8_GOLD_10"					;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_8_Smalltalk01"				;//... to prawda......
	Smalltalk02					= "SVM_8_Smalltalk02"				;//... Slyszalem cos innego....
	Smalltalk03					= "SVM_8_Smalltalk03"				;//... Nie powiedz mi, ze nie wiedziales....
	Smalltalk04					= "SVM_8_Smalltalk04"				;//... nie wiesz nawet, w kogo juz wiecej wierzyc......
	Smalltalk05					= "SVM_8_Smalltalk05"				;//... to wszystko tylko mówic.....
	Smalltalk06					= "SVM_8_Smalltalk06"				;//... Czy myslisz, ze jestem lepszy....
	Smalltalk07					= "SVM_8_Smalltalk07"				;//... Zastanawiam sie o niczym wiecej....
	Smalltalk08					= "SVM_8_Smalltalk08"				;//... to naprawde nie jest mój problem......
	Smalltalk09					= "SVM_8_Smalltalk09"				;//... naprawde w to wierzysz....
	Smalltalk10					= "SVM_8_Smalltalk10"				;//... Nikogo nie mówie.....
	Smalltalk11					= "SVM_8_Smalltalk11"				;//... bylo to jasne juz wczesniej....
	Smalltalk12					= "SVM_8_Smalltalk12"				;//... wsluchiwal sie w niesprawiedliwych ludzi......
	Smalltalk13					= "SVM_8_Smalltalk13"				;//... Jesli tego nie widzi, nie moge juz mu pomóc....
	Smalltalk14					= "SVM_8_Smalltalk14"				;//... Nie mówie ci nic nowego....
	Smalltalk15					= "SVM_8_Smalltalk15"				;//... sam o tym nie myslal....
	Smalltalk16					= "SVM_8_Smalltalk16"				;//... to juz dawno znany fakt....
	Smalltalk17					= "SVM_8_Smalltalk17"				;//... To zle......
	Smalltalk18					= "SVM_8_Smalltalk18"				;//... Zrobilbym to inaczej......
	Smalltalk19					= "SVM_8_Smalltalk19"				;//... Zgadzam sie z Panem.....
	Smalltalk20					= "SVM_8_Smalltalk20"				;//... to, co bedzie sie zawsze zmienialo......
	Smalltalk21					= "SVM_8_Smalltalk21"				;//... Jeszcze tego nie wiedzialem......
	Smalltalk22					= "SVM_8_Smalltalk22"				;//... nie da sie nic z tym zrobic.....
	Smalltalk23					= "SVM_8_Smalltalk23"				;//... Nie jestem zaskoczony.....
	Smalltalk24					= "SVM_8_Smalltalk24"				;//... musial wiedziec lepiej....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                  
	Smalltalk25					= "SVM_8_Smalltalk25"				;//... Chodzi o sile, wiec nie daj mi tego....
	Smalltalk26					= "SVM_8_Smalltalk26"				;//... nie wie nawet, jak trzymac miecz.....
	Smalltalk27					= "SVM_8_Smalltalk27"				;//... Tak, tak naprawde powiedzial, ze....
	//ProInnos (NOV/KDF/PAL)                                                                                                                  
	Smalltalk28					= "SVM_8_Smalltalk28"				;//... ktos bedzie musial za to zaplacic......
	Smalltalk29					= "SVM_8_Smalltalk29"				;//... Innos swieci na wszystkich tych, którzy uznaja jego madrosc.....
	Smalltalk30					= "SVM_8_Smalltalk30"				;//... w koncu zwyciezy sprawiedliwosc......
	SmalltalkKhorataAnnaQuest01			= "SVM_8_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_8_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_8_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_8_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_8_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_8_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_8_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_8_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_8_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_8_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_8_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_8_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_8_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_8_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_8_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_8_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_8_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_8_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_8_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_8_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_8_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_8_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_8_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_8_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_8_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_8_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_8_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_8_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_8_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_8_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_8_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_8_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_8_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_8_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_8_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_8_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_8_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_8_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_8_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_8_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_8_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_8_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_8_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_8_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_8_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_8_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_8_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_8_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_8_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_8_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_8_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_8_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_8_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_8_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_8_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_8_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_8_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_8_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_8_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_8_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_8_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_8_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_8_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_8_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_8_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_8_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_8_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_8_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_8_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_8_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_8_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_8_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_8_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_8_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_8_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_8_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_8_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_8_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_8_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_8_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_8_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_8_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_8_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_8_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_8_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_8_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_8_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_8_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_8_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_8_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_8_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_8_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_8_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_8_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_8_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_8_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_8_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_8_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_8_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_8_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_8_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_8_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_8_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_8_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_8_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_8_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_8_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_8_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_8_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_8_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_8_Addon_WrongArmor";				//Nie ufam Tobie. Jest cos zlego z Toba lub ubraniem.
	ADDON_WRONGARMOR_SLD		= "SVM_8_ADDON_WRONGARMOR_SLD";			//Przypuszczam, ze wyglada to tak, jakbys zatrudnil kogos innego. Wtedy nie chce z wami nic wspólnego.
	ADDON_WRONGARMOR_MIL		= "SVM_8_ADDON_WRONGARMOR_MIL";			//Musimy byc obecni. Idzcie wiec dostac swoja zbroje.
	ADDON_WRONGARMOR_KDF		= "SVM_8_ADDON_WRONGARMOR_KDF";			//Innos chce, abysmy z duma nosili jego szate. Idz i zmieniaj.
	ADDON_NOARMOR_BDT			= "SVM_8_ADDON_ADDON_NOARMOR_BDT";		//Nie rozmawiam z buddystami. Nie masz nawet zbroi.

	ADDON_DIEBANDIT				= "SVM_8_ADDON_DIEBANDIT";				//Brudny bandyta!
	ADDON_DIRTYPIRATE			= "SVM_8_ADDON_DIRTYPIRATE";			//PIRATEN!

	RELMINE01			= "SVM_8_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_8_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_8_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_8_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_8_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_8_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_8_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_8_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_8_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_8_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_8_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_8_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_8_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_8_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_8_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_8_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_8_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_8_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_8_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_8_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_8_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_8_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_8_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_8_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_8_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_8_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_8_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_8_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_8_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_8_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_8_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_8_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_8_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_8_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_8_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_8_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_8_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_8_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_8_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_8_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_8_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_8_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_8_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_8_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_8_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_8_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_8_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_8_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_8_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_8_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_8_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_8_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_8_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_8_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_8_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_8_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_8_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_9 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_9_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_9_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_9_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_9_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_9_Weather"						;//Piekna pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_9_IGetYouStill"				;//Jestem gonna cie!
	DieEnemy					=	"SVM_9_DieEnemy"					;//Nie powinienes tu przyjezdzac!
	DieMonster					=	"SVM_9_DieMonster"					;//Chodzcie tu, suka!
	Addon_DieMonster			=	"SVM_9_Addon_DieMonster"			;//Kolejne z tych bestii!
	Addon_DieMonster2			=	"SVM_9_Addon_DieMonster2"			;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_9_DirtyThief"					;//Brudny zlodziej! Cóz, poczekaj!
	HandsOff					=	"SVM_9_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_9_SheepKiller"				;//Zostaw nasze owce samotnie!
	Berzerk						=	"SVM_9_Berzerk"						;//UUAARRGHHHHH!
	SheepKillerMonster			=	"SVM_9_SheepKillerMonster"			;//Udajcie sie z dala od naszych owiec, synu suki!
	YouMurderer					=	"SVM_9_YouMurderer"				;//Morderca!
	DieStupidBeast				=	"SVM_9_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_9_YouDareHitMe"				;//Bedziesz tego zalowal!
	YouAskedForIt				=	"SVM_9_YouAskedForIt"				;//Ostrzegam cie!
	ThenIBeatYouOutOfHere		=	"SVM_9_ThenIBeatYouOutOfHere"		;//Powiedzialem to!
	WhatDidYouDoInThere			=	"SVM_9_WhatDidYouDoInThere"		;//Hej! Co tam robiles?
	WillYouStopFighting			=	"SVM_9_WillYouStopFighting"		;//Zatrzymaj sie! Teraz!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_9_KillEnemy"					;//Teraz jestem przed Toba, skumbag!
	EnemyKilled					=	"SVM_9_EnemyKilled"					;//To wlasnie dla Ciebie.....
	//MonsterKilled				=	"SVM_9_MonsterKilled"				;//Ich steh' auf diese ganze Scheiße!
	Addon_MonsterKilled			=	"SVM_9_Addon_MonsterKilled"			;//To jest wlasnie dla Ciebie, suka!
	Addon_MonsterKilled2		=	"SVM_9_Addon_MonsterKilled2"		;//Jedna krowa mniej!
	ThiefDown					=	"SVM_9_ThiefDown"					;//Ostrzegam! Nie próbuj tego ponownie, brudne zlodziejstwo!
	rumfummlerDown				=	"SVM_9_rumfummlerDown"				;//Nie dotykaj rzeczy, które juz nigdy wiecej nie naleza do Ciebie!
	SheepAttackerDown			=	"SVM_9_SheepAttackerDown"			;//I w przyszlosci trzymaj sie z dala od naszych owiec!
	KillMurderer				=	"SVM_9_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_9_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_9_NeverHitMeAgain"				;//Nie osmielisz sie zaatakowac mnie nigdy wiecej!
	YouBetterShouldHaveListened	=	"SVM_9_YouBetterShouldHaveListened"	;//Ostrzegam cie!
	GetUpAndBeGone				=	"SVM_9_GetUpAndBeGone"					;//Teraz wyjdz z tego miejsca!
	NeverEnterRoomAgain			=	"SVM_9_NeverEnterRoomAgain"			;//Nie chce widziec cie tam juz nigdy wiecej, wszystko w porzadku?
	ThereIsNoFightingHere		=	"SVM_9_ThereIsNoFightingHere"			;//Nie ma tu walki, pamietaj, ze to!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_9_RunAway"						;//Jestem poza nia!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_9_Alarm"					;//ALARM!
	Guards						=	"SVM_9_Guards"					;//WACHE!
	Help						=	"SVM_9_Help"					;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_9_GoodMonsterKill"		;//(skrzyczenie) Dajcie stworzenia calkiem kwasne!
	GoodKill					= 	"SVM_9_GoodKill"				;//(skrzyczacy) Tak, daj go synowi suki!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_9_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_9_RunCoward"				;//Jestem gonna cie!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_9_GetOutOfHere"			;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_9_WhyAreYouInHere"		;//Nie masz tutaj zadnych interesów!
	YesGoOutOfHere				= 	"SVM_9_YesGoOutOfHere"			;//Tak, wyjdz!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_9_WhatsThisSupposedToBe"	;//Co robisz w piekle? Dlaczego sie tu ukradacie?
	YouDisturbedMySlumber		=	"SVM_9_YouDisturbedMySlumber"	;//Jakiego fuku chcesz?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_9_ITookYourGold"			;//No cóz, przynajmniej przywiózles zloto!
	ShitNoGold					=	"SVM_9_ShitNoGold"				;//Nie ma nawet zlota hmph.
	ITakeYourWeapon				=	"SVM_9_ITakeYourWeapon"		;//Zabiore twoja bron ze soba.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_9_WhatAreYouDoing"		;//Ostrzezenie) Chlopiec! Nie rób tego ponownie!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_9_LookingForTroubleAgain"	;//(agresywne) Czy potrzebujesz ponawiac uderzenia?
	StopMagic					=	"SVM_9_StopMagic"				;//Pozbadz sie magii!
	ISaidStopMagic				=	"SVM_9_ISaidStopMagic"			;//Ostatnie ostrzezenie! Pozbadz sie magii!
	WeaponDown					=	"SVM_9_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_9_ISaidWeaponDown"		;//Udajcie sie tu z miejsca, bo nie bede was mial na twarzy!
	WiseMove					=	"SVM_9_WiseMove"				;//Nie jestes tak glupi, jak wygladasz!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_9_NextTimeYoureInForIt"	;//(u siebie) Nie próbuj tego ponownie spróbowac......
	OhMyHead					=	"SVM_9_OhMyHead"				;//(do samego siebie! Moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_9_TheresAFight"			;//Teraz to zabawa....
	OhMyGodItsAFight			=	"SVM_9_OhMyGodItsAFight"		;//O, moja dobroc!
	GoodVictory					=	"SVM_9_GoodVictory"			;//To go nauczy....
	NotBad						= 	"SVM_9_NotBad"					;//Zrobil czas!
	OhMyGodHesDown				=	"SVM_9_OhMyGodHesDown"			;//Brutalna kanalia!
	CheerFriend01				=	"SVM_9_CheerFriend01"			;//Uderz w nie!
	CheerFriend02				=	"SVM_9_CheerFriend02"			;//Nie zatrzymuj sie!
	CheerFriend03				=	"SVM_9_CheerFriend03"			;//Zakoncz go!
	Ooh01						=	"SVM_9_Ooh01"					;//Uwazaj!
	Ooh02						=	"SVM_9_Ooh02"					;//Nie badz glupcem!
	Ooh03						=	"SVM_9_Ooh03"					;//Oszalec, bolec!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_9_WhatWasThat"				;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_9_GetOutOfMyBed"			;//To jest moje lózko!
	Awake						= "SVM_9_Awake"					;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_9_TOUGHGUY_ATTACKLOST"		;//Dobrze, wygrasz. Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_9_TOUGHGUY_ATTACKWON"		;//Mysle, ze teraz zdaje sobie sprawe z tego, z kim rozmawiasz. Czego chcesz?
	TOUGHGUY_PLAYERATTACK		= "SVM_9_TOUGHGUY_PLAYERATTACK"	;//Ponownie? Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_9_GOLD_1000"				;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_9_GOLD_950"					;//950 sztuk zlota.
	GOLD_900					= "SVM_9_GOLD_900"					;//900 sztuk zlota.
	GOLD_850					= "SVM_9_GOLD_850"					;//850 sztuk zlota.
	GOLD_800					= "SVM_9_GOLD_800"					;//800 sztuk zlota.
	GOLD_750					= "SVM_9_GOLD_750"					;//750 sztuk zlota.
	GOLD_700					= "SVM_9_GOLD_700"					;//700 sztuk zlota.
	GOLD_650					= "SVM_9_GOLD_650"					;//650 sztuk zlota.
	GOLD_600					= "SVM_9_GOLD_600"					;//600 sztuk zlota.
	GOLD_550					= "SVM_9_GOLD_550"					;//550 sztuk zlota.
	GOLD_500					= "SVM_9_GOLD_500"					;//500 sztuk zlota.
	GOLD_450					= "SVM_9_GOLD_450"					;//450 sztuk zlota.
	GOLD_400					= "SVM_9_GOLD_400"					;//400 sztuk zlota.
	GOLD_350					= "SVM_9_GOLD_350"					;//350 sztuk zlota.
	GOLD_300					= "SVM_9_GOLD_300"					;//300 sztuk zlota.
	GOLD_250					= "SVM_9_GOLD_250"					;//250 sztuk zlota.
	GOLD_200					= "SVM_9_GOLD_200"					;//200 sztuk zlota.
	GOLD_150					= "SVM_9_GOLD_150"					;//150 sztuk zlota.
	GOLD_100					= "SVM_9_GOLD_100"					;//100 sztuk zlota.
	GOLD_90						= "SVM_9_GOLD_90"					;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_9_GOLD_80"					;//80 sztuk zlota.
	GOLD_70						= "SVM_9_GOLD_70"					;//70 sztuk zlota.
	GOLD_60						= "SVM_9_GOLD_60"					;//60 sztuk zlota.
	GOLD_50						= "SVM_9_GOLD_50"					;//50 sztuk zlota.
	GOLD_40						= "SVM_9_GOLD_40"					;//40 sztuk zlota.
	GOLD_30						= "SVM_9_GOLD_30"					;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_9_GOLD_20"					;//20 sztuk zlota.
	GOLD_10						= "SVM_9_GOLD_10"					;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_9_Smalltalk01"				;//... Nie moge w to uwierzyc.....
	Smalltalk02					= "SVM_9_Smalltalk02"				;//... Nie bylabym pewna, ze.....
	Smalltalk03					= "SVM_9_Smalltalk03"				;//... wiedzial, ze wczesniej.....
	Smalltalk04					= "SVM_9_Smalltalk04"				;//... Nie wiem, w co juz wierzyc.....
	Smalltalk05					= "SVM_9_Smalltalk05"				;//... Nie wiem, dlaczego jest tak zdenerwowany.....
	Smalltalk06					= "SVM_9_Smalltalk06"				;//... Nie potrzebuje wiecej klopotów....
	Smalltalk07					= "SVM_9_Smalltalk07"				;//... Slyszalem wiele rzeczy....
	Smalltalk08					= "SVM_9_Smalltalk08"				;//... Wole raczej trzymac rece z dala od niego....
	Smalltalk09					= "SVM_9_Smalltalk09"				;//... po prostu nie mozesz uwierzyc we wszystko, co slyszysz....
	Smalltalk10					= "SVM_9_Smalltalk10"				;//... od mnie tego nie zrobil......
	Smalltalk11					= "SVM_9_Smalltalk11"				;//... Tak wiele myslalem, ze....
	Smalltalk12					= "SVM_9_Smalltalk12"				;//... Nikt nie chce uslyszec mojej opinii.....
	Smalltalk13					= "SVM_9_Smalltalk13"				;//... on naprawde nie zasluzyl na to....
	Smalltalk14					= "SVM_9_Smalltalk14"				;//... Nie powiedz mi, ze tego nie wiedziales....
	Smalltalk15					= "SVM_9_Smalltalk15"				;//... bylo to oczywiste....
	Smalltalk16					= "SVM_9_Smalltalk16"				;//... Skad to sie wzielas?
	Smalltalk17					= "SVM_9_Smalltalk17"				;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_9_Smalltalk18"				;//... Mam wlasna opinie....
	Smalltalk19					= "SVM_9_Smalltalk19"				;//... dokladnie to, co pan powiedzial....
	Smalltalk20					= "SVM_9_Smalltalk20"				;//... Nie sadze, aby w tym cos sie zmienilo....
	Smalltalk21					= "SVM_9_Smalltalk21"				;//... Slysze to po raz pierwszy.....
	Smalltalk22					= "SVM_9_Smalltalk22"				;//... Mozemy tylko poczekac i zobaczyc....
	Smalltalk23					= "SVM_9_Smalltalk23"				;//... problemy, które widzialem przyjezdzajac.....
	Smalltalk24					= "SVM_9_Smalltalk24"				;//... Dlaczego nikt nie slucha mnie....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_9_Smalltalk25"				;//... jak gdyby sam Beliar go scigal....
	Smalltalk26					= "SVM_9_Smalltalk26"				;//... oczywiscie dostalismy go przeciez.....
	Smalltalk27					= "SVM_9_Smalltalk27"				;//... trzeba wlozyc w to wiele wysilku......
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_9_Smalltalk28"				;//... niektórzy nie wiedza, jak wiele grzeszyli....
	Smalltalk29					= "SVM_9_Smalltalk29"				;//... bo jest to wola Inno....
	Smalltalk30					= "SVM_9_Smalltalk30"				;//... jego czyny byly sprawiedliwe....
	SmalltalkKhorataAnnaQuest01			= "SVM_9_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_9_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_9_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_9_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_9_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_9_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_9_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_9_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_9_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_9_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_9_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_9_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_9_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_9_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_9_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_9_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_9_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_9_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_9_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_9_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_9_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_9_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_9_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_9_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_9_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_9_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_9_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_9_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_9_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_9_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_9_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_9_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_9_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_9_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_9_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_9_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_9_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_9_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_9_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_9_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_9_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_9_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_9_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_9_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_9_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_9_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_9_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_9_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_9_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_9_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_9_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_9_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_9_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_9_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_9_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_9_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_9_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_9_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_9_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_9_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_9_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_9_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_9_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_9_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_9_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_9_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_9_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_9_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_9_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_9_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_9_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_9_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_9_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_9_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_9_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_9_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_9_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_9_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...

	// Dämonenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_9_SmalltalkDMRBelagerungAbdi01"; //... Szczerze mówiac, nie przykro mi tych dwóch osób....
	SmalltalkDMRBelagerungAbdi02			= "SVM_9_SmalltalkDMRBelagerungAbdi02"; //... chcialby wiedziec, kto zabija ludzi w tym obozie....[...].
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_9_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_9_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_9_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_9_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_9_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_9_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_9_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_9_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_9_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_9_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_9_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_9_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_9_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_9_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_9_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_9_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_9_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_9_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_9_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_9_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_9_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_9_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_9_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_9_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_9_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_9_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_9_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_9_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_9_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_9_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_9_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_9_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_9_Addon_WrongArmor";				//Co jest z winda? Zalóz cos, co Ci sie podoba.
	ADDON_WRONGARMOR_SLD		= "SVM_9_ADDON_WRONGARMOR_SLD";			//Jak bierzesz? Nalozyc pancerz.
	ADDON_WRONGARMOR_MIL		= "SVM_9_ADDON_WRONGARMOR_MIL";			//Pracujesz dla króla, wiec nosisz jego zbroje. Zmienic sie.
	ADDON_WRONGARMOR_KDF		= "SVM_9_ADDON_WRONGARMOR_KDF";			//Twoje ubrania nie sa odpowiednie do naszego zamówienia. Zmienic sie.
	ADDON_NOARMOR_BDT			= "SVM_9_ADDON_ADDON_NOARMOR_BDT";		//Nie masz nawet zbroi. Wyjsc stad!

	ADDON_DIEBANDIT				= "SVM_9_ADDON_DIEBANDIT";				//Teraz Twoja kolej, bandyta!
	ADDON_DIRTYPIRATE			= "SVM_9_ADDON_DIRTYPIRATE";			//Nie powinienes sie tu pojawic, pirat.

	RELMINE01			= "SVM_9_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_9_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_9_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_9_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_9_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_9_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_9_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_9_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_9_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_9_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_9_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_9_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_9_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_9_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_9_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_9_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_9_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_9_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_9_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_9_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_9_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_9_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_9_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_9_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_9_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_9_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_9_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_9_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_9_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_9_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_9_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_9_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_9_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_9_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_9_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_9_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_9_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_9_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_9_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_9_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_9_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_9_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_9_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_9_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_9_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_9_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_9_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_9_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_9_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_9_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_9_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_9_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_9_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_9_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_9_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_9_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_9_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_10 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_10_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_10_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_10_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_10_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_10_Weather"						;//Przyjazna pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_10_IGetYouStill"				;//Jeszcze raz!
	DieEnemy					=	"SVM_10_DieEnemy"					;//Pospiesze sie!
	DieMonster					=	"SVM_10_DieMonster"					;//Kolejne z tych bestii!
	DirtyThief					=	"SVM_10_DirtyThief"					;//Irytujesz malego zlodziejka!
	HandsOff					=	"SVM_10_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_10_SheepKiller"					;//Hej! Zostaw nasze owce samotnie!
	SheepKillerMonster			=	"SVM_10_SheepKillerMonster"			;//Bestia jedzenie naszych owiec!
	YouMurderer					=	"SVM_10_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_10_DieStupidBeast"				;//Co robi tu to zwierze?
	YouDareHitMe				=	"SVM_10_YouDareHitMe"				;//Teraz mozesz sie bawic!
	YouAskedForIt				=	"SVM_10_YouAskedForIt"				;//Nie chciales tego inaczej!
	ThenIBeatYouOutOfHere		=	"SVM_10_ThenIBeatYouOutOfHere"		;//Jesli nie chcesz sluchac, czuc.
	WhatDidYouDoInThere			=	"SVM_10_WhatDidYouDoInThere"			;//Co tam pan robil?
	WillYouStopFighting			=	"SVM_10_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_10_KillEnemy"					;//Die!
	EnemyKilled					=	"SVM_10_EnemyKilled"					;//Taki glupi syn suki.....
	MonsterKilled				=	"SVM_10_MonsterKilled"				;//Tak to jest, syn suki!
	ThiefDown					=	"SVM_10_ThiefDown"					;//Chron rece przed moimi rekami w przyszlosci, dobrze?
	rumfummlerDown				=	"SVM_10_rumfummlerDown"				;//W przyszlosci trzymaj swoje palce!
	SheepAttackerDown			=	"SVM_10_SheepAttackerDown"			;//Nie dotykaj wiecej naszych owiec!
	KillMurderer				=	"SVM_10_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_10_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_10_NeverHitMeAgain"				;//Nie próbuj tego ponownie, busteruj!
	YouBetterShouldHaveListened	=	"SVM_10_YouBetterShouldHaveListened"	;//Niech to bedzie dla ciebie lekcja.
	GetUpAndBeGone				=	"SVM_10_GetUpAndBeGone"				;//Wstan i wyjdz stad!
	NeverEnterRoomAgain			=	"SVM_10_NeverEnterRoomAgain"			;//Nie chce widziec cie tam juz nigdy wiecej, wszystko w porzadku?
	ThereIsNoFightingHere		=	"SVM_10_ThereIsNoFightingHere"		;//Jesli tu jest jakis facet rzucajacy ciosami, to ja dobrze?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_10_RunAway"						;//Wyobraz sobie! Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_10_Alarm"					;//ALARM!
	Guards						=	"SVM_10_Guards"					;//WACHE!
	Help						=	"SVM_10_Help"					;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_10_GoodMonsterKill"			;//Krzyki) Tak! To jest wlasnie sposób, aby dac je bestiom!
	GoodKill					= 	"SVM_10_GoodKill"				;//(skrzyczenie) Na to ona zasluguje!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_10_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_10_RunCoward"				;//Porozmawiam z Toba pózniej!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_10_GetOutOfHere"			;//Wyjdzcie!
	WhyAreYouInHere				=	"SVM_10_WhyAreYouInHere"			;//Co tu robisz?
	YesGoOutOfHere				= 	"SVM_10_YesGoOutOfHere"			;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_10_WhatsThisSupposedToBe"	;//Po co sie chwiejesz?
	Berzerk						=	"SVM_10_Berzerk"						;//UUAARRGHHHHH!
	YouDisturbedMySlumber		=	"SVM_10_YouDisturbedMySlumber"	;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_10_ITookYourGold"			;//Dziekujemy za zloto, bohater!
	ShitNoGold					=	"SVM_10_ShitNoGold"				;//Biedna kielbasa, nie masz nawet zlota!
	ITakeYourWeapon				=	"SVM_10_ITakeYourWeapon"			;//Lepiej wziac pistolet!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_10_WhatAreYouDoing"			;//Ostroznie) Uwazaj! Jeszcze raz i trafie cie.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_10_LookingForTroubleAgain"	;//(agresywne) Czy chcesz wrócic do ust?
																	 
	StopMagic					=	"SVM_10_StopMagic"				;//Zatrzymaj ten magiczny chwyt!
	ISaidStopMagic				=	"SVM_10_ISaidStopMagic"			;//Chcesz poncz? Zatrzymaj sie teraz!
	WeaponDown					=	"SVM_10_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_10_ISaidWeaponDown"			;//Odstaw pistolet!
	WiseMove					=	"SVM_10_WiseMove"				;//Inteligentny przyjaciel!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_10_NextTimeYoureInForIt"	;//Nastepnym razem zobaczymy....
	OhMyHead					=	"SVM_10_OhMyHead"				;//O Mezczyzna, glowa moja....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_10_TheresAFight"			;//(chwycenie) Ah, walka!
	OhMyGodItsAFight			=	"SVM_10_OhMyGodItsAFight"		;//Mój Boze, walka!
	GoodVictory					=	"SVM_10_GoodVictory"				;//Pokazales go!
	NotBad						= 	"SVM_10_NotBad"					;//(pogniwianie) Nie zly....
	OhMyGodHesDown				=	"SVM_10_OhMyGodHesDown"			;//(do samego siebie) Mój Boze! Jak brutalne....
	CheerFriend01				=	"SVM_10_CheerFriend01"			;//Tak, daj mu to!
	CheerFriend02				=	"SVM_10_CheerFriend02"			;//Pokaz go!
	CheerFriend03				=	"SVM_10_CheerFriend03"			;//Zakoncz go!
	Ooh01						=	"SVM_10_Ooh01"					;//Oderwac sie z powrotem!
	Ooh02						=	"SVM_10_Ooh02"					;//Uderz w nie!
	Ooh03						=	"SVM_10_Ooh03"					;//Ach! To zaszkodzilo!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_10_WhatWasThat"				;//Do samego siebie, budzac sie) Damn, co to bylo pieklo!
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_10_GetOutOfMyBed"				;//Znajdz wlasne lózko!
	Awake						= "SVM_10_Awake"						;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_10_TOUGHGUY_ATTACKLOST"		;//Dostales na ciebie pieklo ponczu.... Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_10_TOUGHGUY_ATTACKWON"		;//(auto wazne) Jakies pytania?
	TOUGHGUY_PLAYERATTACK		= "SVM_10_TOUGHGUY_PLAYERATTACK"		;//Jestes tam znowu!
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_10_GOLD_1000"					;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_10_GOLD_950"					;//950 sztuk zlota.
	GOLD_900					= "SVM_10_GOLD_900"					;//900 sztuk zlota.
	GOLD_850					= "SVM_10_GOLD_850"					;//850 sztuk zlota.
	GOLD_800					= "SVM_10_GOLD_800"					;//800 sztuk zlota.
	GOLD_750					= "SVM_10_GOLD_750"					;//750 sztuk zlota.
	GOLD_700					= "SVM_10_GOLD_700"					;//700 sztuk zlota.
	GOLD_650					= "SVM_10_GOLD_650"					;//650 sztuk zlota.
	GOLD_600					= "SVM_10_GOLD_600"					;//600 sztuk zlota.
	GOLD_550					= "SVM_10_GOLD_550"					;//550 sztuk zlota.
	GOLD_500					= "SVM_10_GOLD_500"					;//500 sztuk zlota.
	GOLD_450					= "SVM_10_GOLD_450"					;//450 sztuk zlota.
	GOLD_400					= "SVM_10_GOLD_400"					;//400 sztuk zlota.
	GOLD_350					= "SVM_10_GOLD_350"					;//350 sztuk zlota.
	GOLD_300					= "SVM_10_GOLD_300"					;//300 sztuk zlota.
	GOLD_250					= "SVM_10_GOLD_250"					;//250 sztuk zlota.
	GOLD_200					= "SVM_10_GOLD_200"					;//200 sztuk zlota.
	GOLD_150					= "SVM_10_GOLD_150"					;//150 sztuk zlota.
	GOLD_100					= "SVM_10_GOLD_100"					;//100 sztuk zlota.
	GOLD_90						= "SVM_10_GOLD_90"					;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_10_GOLD_80"					;//80 sztuk zlota.
	GOLD_70						= "SVM_10_GOLD_70"					;//70 sztuk zlota.
	GOLD_60						= "SVM_10_GOLD_60"					;//60 sztuk zlota.
	GOLD_50						= "SVM_10_GOLD_50"					;//50 sztuk zlota.
	GOLD_40						= "SVM_10_GOLD_40"					;//40 sztuk zlota.
	GOLD_30						= "SVM_10_GOLD_30"					;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_10_GOLD_20"					;//20 sztuk zlota.
	GOLD_10						= "SVM_10_GOLD_10"					;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_10_Smalltalk01"				;//... Nie obchodzi mnie to......
	Smalltalk02					= "SVM_10_Smalltalk02"				;//... Nikt tego nie chce wiedziec....
	Smalltalk03					= "SVM_10_Smalltalk03"				;//... byla to jego decyzja.....
	Smalltalk04					= "SVM_10_Smalltalk04"				;//... Nie wiem, mówisz mi, mówisz....
	Smalltalk05					= "SVM_10_Smalltalk05"				;//... Nie bede sie angazowal.....
	Smalltalk06					= "SVM_10_Smalltalk06"				;//... Nie mam na to czasu....
	Smalltalk07					= "SVM_10_Smalltalk07"				;//... Nie moglem sobie na to pozwolic....
	Smalltalk08					= "SVM_10_Smalltalk08"				;//... Nie musisz mi mówic......
	Smalltalk09					= "SVM_10_Smalltalk09"				;//... Nie mów mi nic, znam te rzeczy.....
	Smalltalk10					= "SVM_10_Smalltalk10"				;//... Móglbym panstwu powiedziec.....
	Smalltalk11					= "SVM_10_Smalltalk11"				;//... nie mozesz na tym polegac......
	Smalltalk12					= "SVM_10_Smalltalk12"				;//... Tak wlasnie mówilem....
	Smalltalk13					= "SVM_10_Smalltalk13"				;//... i nie mysl, ze to wszystko.....
	Smalltalk14					= "SVM_10_Smalltalk14"				;//... zawsze zawsze to samo ciagle po kolei......
	Smalltalk15					= "SVM_10_Smalltalk15"				;//... nie moze to byc prawda.......
	Smalltalk16					= "SVM_10_Smalltalk16"				;//... W pewnym momencie musialo sie to zdarzyc.....
	Smalltalk17					= "SVM_10_Smalltalk17"				;//... mógl wiedziec, ze sam......
	Smalltalk18					= "SVM_10_Smalltalk18"				;//... które nigdy sie nie zmienia......
	Smalltalk19					= "SVM_10_Smalltalk19"				;//... to nie jest tajemnica......
	Smalltalk20					= "SVM_10_Smalltalk20"				;//... nie bylo wielkiego problemu.....
	Smalltalk21					= "SVM_10_Smalltalk21"				;//... zawsze tak latwo to sobie wyobraza......
	Smalltalk22					= "SVM_10_Smalltalk22"				;//... Nikt juz tego nie chce slyszec....
	Smalltalk23					= "SVM_10_Smalltalk23"				;//... Ale to prawda......
	Smalltalk24					= "SVM_10_Smalltalk24"				;//... po prostu trzeba sluchac....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                      
	Smalltalk25					= "SVM_10_Smalltalk25"				;//... Gdybysmy nie przyszli, sprawy wygladalyby inaczej....
	Smalltalk26					= "SVM_10_Smalltalk26"				;//... po prostu musi wiecej trenowac.....
	Smalltalk27					= "SVM_10_Smalltalk27"				;//... Nie chce, aby opowiadal mi o obowiazku....
	//ProInnos (NOV/KDF/PAL)                                                                                                                      
	Smalltalk28					= "SVM_10_Smalltalk28"				;//... Kara Innosa jest sprawiedliwa....
	Smalltalk29					= "SVM_10_Smalltalk29"				;//... droga cnoty jest dluga i kamienna.....
	Smalltalk30					= "SVM_10_Smalltalk30"				;//... tylko Innos decyduje o slusznosci i bledzie....
	SmalltalkKhorataAnnaQuest01			= "SVM_10_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_10_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_10_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_10_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_10_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_10_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_10_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_10_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_10_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_10_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_10_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_10_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_10_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_10_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_10_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_10_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_10_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_10_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_10_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_10_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_10_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_10_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_10_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_10_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_10_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_10_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_10_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_10_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_10_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_10_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_10_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_10_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_10_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_10_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_10_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_10_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_10_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_10_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_10_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_10_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_10_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_10_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_10_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_10_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_10_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_10_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_10_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_10_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_10_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_10_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_10_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_10_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_10_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_10_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_10_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_10_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_10_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_10_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_10_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_10_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_10_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_10_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_10_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_10_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_10_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_10_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_10_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_10_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_10_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_10_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_10_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_10_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_10_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_10_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_10_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_10_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_10_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_10_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...

	// Dämonenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_10_SmalltalkDMRBelagerungAbdi01"; //... Szczerze mówiac, nie przykro mi tych dwóch osób....
	SmalltalkDMRBelagerungAbdi02			= "SVM_10_SmalltalkDMRBelagerungAbdi02"; //... chcialby wiedziec, kto zabija ludzi w tym obozie....[...].
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_10_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_10_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_10_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Jestes zbyt dobry.
	YouLearnedSomething			= "SVM_10_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_10_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_10_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_10_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_10_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_10_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_10_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_10_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_10_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_10_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_10_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_10_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_10_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_10_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_10_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_10_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_10_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_10_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_10_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_10_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_10_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_10_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_10_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_10_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_10_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_10_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_10_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_10_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_10_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_10_Addon_WrongArmor";			//Jaki jest to rodzaj odziezy? Ona Ci nie odpowiada. Nie martw sie o mnie.
	ADDON_WRONGARMOR_SLD		= "SVM_10_ADDON_WRONGARMOR_SLD";		//Jesli jestes z nami, powinienes nosic nasze ubrania. Najpierw dokonaj zmian.
	ADDON_WRONGARMOR_MIL		= "SVM_10_ADDON_WRONGARMOR_MIL";		//Jesli dostajesz pancerz króla, nosisz go.
	ADDON_WRONGARMOR_KDF		= "SVM_10_ADDON_WRONGARMOR_KDF";		//Jesli zaprzeczasz szacie, zaprzeczasz Innosowi. Idz i zastanów sie nad tym.
	ADDON_NOARMOR_BDT			= "SVM_10_ADDON_ADDON_NOARMOR_BDT";		//Jesli nawet nie stac Cie na zbroje, dlaczego powinienem porozmawiac z Toba?

	ADDON_DIEBANDIT				= "SVM_10_ADDON_DIEBANDIT";				//Brudny bandyta!
	ADDON_DIRTYPIRATE			= "SVM_10_ADDON_DIRTYPIRATE";			//Brudny pirat!

	RELMINE01			= "SVM_10_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_10_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_10_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_10_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_10_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_10_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_10_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_10_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_10_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_10_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_10_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_10_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_10_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_10_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_10_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_10_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_10_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_10_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_10_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_10_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_10_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_10_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_10_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_10_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_10_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_10_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_10_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_10_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_10_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_10_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_10_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_10_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_10_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_10_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_10_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_10_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_10_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_10_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_10_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_10_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_10_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_10_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_10_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_10_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_10_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_10_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_10_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_10_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_10_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_10_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_10_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_10_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_10_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_10_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_10_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_10_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_10_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_11 (C_SVM)
{
	SC_HeyWaitASecond			= 	"SVM_11_Addon_HeyWaitASecond"			;//Krzyki!
	
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_11_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_11_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_11_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_11_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_11_Weather"						;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_11_IGetYouStill"				;//Moge Cie jeszcze dostac!
	DieEnemy					=	"SVM_11_DieEnemy"					;//Teraz Twoja kolej!
	DieMonster					=	"SVM_11_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_11_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_11_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_11_SheepKiller"					;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_11_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_11_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_11_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_11_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_11_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_11_ThenIBeatYouOutOfHere"		;//Wtedy bede musial cie wybic!
	WhatDidYouDoInThere			=	"SVM_11_WhatDidYouDoInThere"			;//Co tam robiles, huh?
	WillYouStopFighting			=	"SVM_11_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_11_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_11_EnemyKilled"					;//To jest wlasnie dla Ciebie, punk.
	Berzerk						=	"SVM_11_Berzerk"						;//UUAARRGHHHHH!
	MonsterKilled				=	"SVM_11_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_11_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_11_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_11_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_11_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_11_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_11_NeverHitMeAgain"				;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_11_YouBetterShouldHaveListened"	;//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_11_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_11_NeverEnterRoomAgain"			;//I ze juz nigdy cie tam juz nie zlapam!
	ThereIsNoFightingHere		=	"SVM_11_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_11_RunAway"						;//Wyobraz sobie! Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_11_Alarm"						;//ALARM!
	Guards						=	"SVM_11_Guards"						;//WACHE!
	Help						=	"SVM_11_Help"						;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_11_GoodMonsterKill"				;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_11_GoodKill"					;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_11_NOTNOW"						;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_11_RunCoward"					;//Stoisz nieruchomo, rajd!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_11_GetOutOfHere"				;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_11_WhyAreYouInHere"				;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_11_YesGoOutOfHere"				;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_11_WhatsThisSupposedToBe"		;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_11_YouDisturbedMySlumber"		;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_11_ITookYourGold"				;//Zloto! To juz moja kopalnia.....
	ShitNoGold					=	"SVM_11_ShitNoGold"					;//Nie masz nawet zlota?
	ITakeYourWeapon				=	"SVM_11_ITakeYourWeapon"				;//Lepiej bym zabral ze soba bron.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_11_WhatAreYouDoing"				;//Ostrzezenie) Hej! Uwazaj!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_11_LookingForTroubleAgain"		;//(agresywny) Nie masz jeszcze wystarczajaco duzo?
	StopMagic					=	"SVM_11_StopMagic"					;//Idz z magia!
	ISaidStopMagic				=	"SVM_11_ISaidStopMagic"				;//Pozbadz sie magii! Czy slyszysz zle?
	WeaponDown					=	"SVM_11_WeaponDown"					;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_11_ISaidWeaponDown"				;//Czy nie slyszysz dobrze? Powiedzialem, ze odlozylem pistolet!
	WiseMove					=	"SVM_11_WiseMove"					;//Idziesz tam, tam idzcie!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_11_NextTimeYoureInForIt"		;//Nadal mówimy o.....
	OhMyHead					=	"SVM_11_OhMyHead"					;//(do siebie) Oh, moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_11_TheresAFight"				;//Wejdzmy do biznesu!
	OhMyGodItsAFight			=	"SVM_11_OhMyGodItsAFight"			;//Oni rozbija czaszki w....
	GoodVictory					=	"SVM_11_GoodVictory"					;//Na to on zasluguje.
	NotBad						= 	"SVM_11_NotBad"						;//(pogniwianie) Nie takie zle....
	OhMyGodHesDown				=	"SVM_11_OhMyGodHesDown"				;//(do siebie) Jaki brutalny facet....
	CheerFriend01				=	"SVM_11_CheerFriend01"				;//Tak, to tak!
	CheerFriend02				=	"SVM_11_CheerFriend02"				;//Chodzcie dalej, odejdzmy!
	CheerFriend03				=	"SVM_11_CheerFriend03"				;//Pozostan na szczycie!
	Ooh01						=	"SVM_11_Ooh01"						;//Nie poddawaj sie niczemu!
	Ooh02						=	"SVM_11_Ooh02"						;//Jestes gonna!
	Ooh03						=	"SVM_11_Ooh03"						;//Nie moge w to uwierzyc!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_11_WhatWasThat"					;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_11_GetOutOfMyBed"					;//Wejsc z lózka!
	Awake						= "SVM_11_Awake"							;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_11_TOUGHGUY_ATTACKLOST"			;//To wszystko jest w porzadku, wygrasz. Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_11_TOUGHGUY_ATTACKWON"			;//Czy musze ponownie pokazac ci, kim jest Pan?
	TOUGHGUY_PLAYERATTACK		= "SVM_11_TOUGHGUY_PLAYERATTACK"			;//Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_11_GOLD_1000"						;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_11_GOLD_950"						;//950 sztuk zlota.
	GOLD_900					= "SVM_11_GOLD_900"						;//900 sztuk zlota.
	GOLD_850					= "SVM_11_GOLD_850"						;//850 sztuk zlota.
	GOLD_800					= "SVM_11_GOLD_800"						;//800 sztuk zlota.
	GOLD_750					= "SVM_11_GOLD_750"						;//750 sztuk zlota.
	GOLD_700					= "SVM_11_GOLD_700"						;//700 sztuk zlota.
	GOLD_650					= "SVM_11_GOLD_650"						;//650 sztuk zlota.
	GOLD_600					= "SVM_11_GOLD_600"						;//600 sztuk zlota.
	GOLD_550					= "SVM_11_GOLD_550"						;//550 sztuk zlota.
	GOLD_500					= "SVM_11_GOLD_500"						;//500 sztuk zlota.
	GOLD_450					= "SVM_11_GOLD_450"						;//450 sztuk zlota.
	GOLD_400					= "SVM_11_GOLD_400"						;//400 sztuk zlota.
	GOLD_350					= "SVM_11_GOLD_350"						;//350 sztuk zlota.
	GOLD_300					= "SVM_11_GOLD_300"						;//300 sztuk zlota.
	GOLD_250					= "SVM_11_GOLD_250"						;//250 sztuk zlota.
	GOLD_200					= "SVM_11_GOLD_200"						;//200 sztuk zlota.
	GOLD_150					= "SVM_11_GOLD_150"						;//150 sztuk zlota.
	GOLD_100					= "SVM_11_GOLD_100"						;//100 sztuk zlota.
	GOLD_90						= "SVM_11_GOLD_90"						;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_11_GOLD_80"						;//80 sztuk zlota.
	GOLD_70						= "SVM_11_GOLD_70"						;//70 sztuk zlota.
	GOLD_60						= "SVM_11_GOLD_60"						;//60 sztuk zlota.
	GOLD_50						= "SVM_11_GOLD_50"						;//50 sztuk zlota.
	GOLD_40						= "SVM_11_GOLD_40"						;//40 sztuk zlota.
	GOLD_30						= "SVM_11_GOLD_30"						;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_11_GOLD_20"						;//20 sztuk zlota.
	GOLD_10						= "SVM_11_GOLD_10"						;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_11_Smalltalk01"					;//... Czy naprawde wierzysz, ze....
	Smalltalk02					= "SVM_11_Smalltalk02"					;//... jest wszystko mozliwe.....
	Smalltalk03					= "SVM_11_Smalltalk03"					;//... powinien byl wiedziec lepiej......
	Smalltalk04					= "SVM_11_Smalltalk04"					;//... jakbym nie mial juz dosc problemów.....
	Smalltalk05					= "SVM_11_Smalltalk05"					;//... kto mówi takie cos.....
	Smalltalk06					= "SVM_11_Smalltalk06"					;//... jest jeszcze wiecej klopotów......
	Smalltalk07					= "SVM_11_Smalltalk07"					;//... wiele do powiedzenia.....
	Smalltalk08					= "SVM_11_Smalltalk08"					;//... Nie zrobilbym tego.....
	Smalltalk09					= "SVM_11_Smalltalk09"					;//... To tylko pogloski....
	Smalltalk10					= "SVM_11_Smalltalk10"					;//... musisz tylko uwazac, co mówisz ludziom....
	Smalltalk11					= "SVM_11_Smalltalk11"					;//... Móglbym panstwu to powiedziec wczesniej.....
	Smalltalk12					= "SVM_11_Smalltalk12"					;//... Nikt mnie nie pyta....
	Smalltalk13					= "SVM_11_Smalltalk13"					;//... Mozna zalowac biednego faceta....
	Smalltalk14					= "SVM_11_Smalltalk14"					;//... nie jest to nic nowego....
	Smalltalk15					= "SVM_11_Smalltalk15"					;//... to oczywiste....
	Smalltalk16					= "SVM_11_Smalltalk16"					;//... nie musisz mnie o to pytac......
	Smalltalk17					= "SVM_11_Smalltalk17"					;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_11_Smalltalk18"					;//... znasz juz moja opinie.....
	Smalltalk19					= "SVM_11_Smalltalk19"					;//... Tak wlasnie powiedzialem.....
	Smalltalk20					= "SVM_11_Smalltalk20"					;//... Nigdy sie tego nie zmieni.....
	Smalltalk21					= "SVM_11_Smalltalk21"					;//... dlaczego nie dowiedzialem sie o tym do tej pory.....
	Smalltalk22					= "SVM_11_Smalltalk22"					;//... poczekajmy i zobaczmy, co sie dzieje....
	Smalltalk23					= "SVM_11_Smalltalk23"					;//... niektóre problemy rozwiazywane sa samodzielnie......
	Smalltalk24					= "SVM_11_Smalltalk24"					;//... Juz nie slysze....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_11_Smalltalk25"					;//... Pijany jak pieklo....
	Smalltalk26					= "SVM_11_Smalltalk26"					;//... Nie mozesz to zrobic ze mna......
	Smalltalk27					= "SVM_11_Smalltalk27"					;//... wszystkie biegly jak króliki, bylem samotny......
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_11_Smalltalk28"					;//... Tak wiec mówi ona w Pismie swietym....[...].
	Smalltalk29					= "SVM_11_Smalltalk29"					;//... Zawsze dzialam w imieniu Innosa....
	Smalltalk30					= "SVM_11_Smalltalk30"					;//... nikt nie moze naruszac boskiego porzadku......
	SmalltalkKhorataAnnaQuest01			= "SVM_11_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_11_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_11_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_11_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_11_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_11_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_11_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_11_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_11_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_11_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_11_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_11_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_11_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_11_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_11_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_11_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_11_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_11_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_11_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_11_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_11_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_11_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_11_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_11_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_11_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_11_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_11_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_11_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_11_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_11_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_11_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_11_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_11_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_11_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_11_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_11_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_11_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_11_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_11_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_11_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_11_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_11_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_11_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_11_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_11_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_11_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_11_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_11_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_11_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_11_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_11_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_11_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_11_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_11_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_11_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_11_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_11_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_11_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_11_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_11_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_11_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_11_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_11_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_11_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_11_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_11_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_11_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_11_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_11_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_11_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_11_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_11_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_11_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_11_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_11_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_11_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_11_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_11_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...

	// Dämonenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_11_SmalltalkDMRBelagerungAbdi01"; //... Szczerze mówiac, nie przykro mi tych dwóch osób....
	SmalltalkDMRBelagerungAbdi02			= "SVM_11_SmalltalkDMRBelagerungAbdi02"; //... chcialby wiedziec, kto zabija ludzi w tym obozie....[...].
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_11_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_11_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_11_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_11_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_11_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_11_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_11_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_11_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_11_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_11_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_11_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_11_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_11_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_11_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_11_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_11_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_11_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_11_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_11_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_11_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_11_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_11_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_11_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_11_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_11_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_11_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_11_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_11_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_11_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_11_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_11_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_11_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_11_Addon_WrongArmor";				//Jaki jest to rodzaj odziezy? Ona Ci nie odpowiada. Nie martw sie o mnie.
	ADDON_WRONGARMOR_SLD		= "SVM_11_ADDON_WRONGARMOR_SLD";			//Kiedy mówie do Ciebie, nosimy nasza zbroje. Idz dalej, wyjdz stad.
	ADDON_WRONGARMOR_MIL		= "SVM_11_ADDON_WRONGARMOR_MIL";			//Nosic pancerz króla, prosze. Chodzcie dalej, odejdzmy.
	ADDON_WRONGARMOR_KDF		= "SVM_11_ADDON_WRONGARMOR_KDF";			//Twoje ubrania nie sa odpowiednie do naszego zamówienia. Zmienic sie.
	ADDON_NOARMOR_BDT			= "SVM_11_ADDON_ADDON_NOARMOR_BDT";			//Nie masz nawet zbroi. Wyjsc stad!

	ADDON_DIEBANDIT				= "SVM_11_ADDON_DIEBANDIT";				//Kolejny bandyta ponownie.
	ADDON_DIRTYPIRATE			= "SVM_11_ADDON_DIRTYPIRATE";			//PIRATEN!

	RELMINE01			= "SVM_11_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_11_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_11_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_11_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_11_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_11_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_11_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_11_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_11_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_11_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_11_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_11_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_11_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_11_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_11_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_11_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_11_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_11_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_11_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_11_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_11_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_11_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_11_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_11_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_11_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_11_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_11_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_11_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_11_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_11_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_11_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_11_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_11_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_11_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_11_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_11_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_11_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_11_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_11_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_11_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_11_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_11_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_11_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_11_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_11_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_11_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_11_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_11_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_11_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_11_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_11_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_11_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_11_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_11_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_11_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_11_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_11_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_12 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_12_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_12_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_12_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_12_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_12_Weather"					;//Piekna pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_12_IGetYouStill"				;//Jestem gonna cie!
	DieEnemy					=	"SVM_12_DieEnemy"					;//Nie powinienes tu przyjezdzac!
	DieMonster					=	"SVM_12_DieMonster"					;//Chodzcie tu, suka!
	DirtyThief					=	"SVM_12_DirtyThief"					;//Brudny zlodziej! Cóz, poczekaj!
	HandsOff					=	"SVM_12_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_12_SheepKiller"				;//Zostaw nasze owce samotnie!
	Berzerk						=	"SVM_12_Berzerk"						;//UUAARRGHHHHH!
	SheepKillerMonster			=	"SVM_12_SheepKillerMonster"			;//Udajcie sie z dala od naszych owiec, synu suki!
	YouMurderer					=	"SVM_12_YouMurderer"				;//Morderca!
	DieStupidBeast				=	"SVM_12_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_12_YouDareHitMe"				;//Bedziesz tego zalowal!
	YouAskedForIt				=	"SVM_12_YouAskedForIt"				;//Ostrzegam cie!
	ThenIBeatYouOutOfHere		=	"SVM_12_ThenIBeatYouOutOfHere"		;//Powiedzialem to!
	WhatDidYouDoInThere			=	"SVM_12_WhatDidYouDoInThere"		;//Hej! Co tam robiles?
	WillYouStopFighting			=	"SVM_12_WillYouStopFighting"		;//Zatrzymaj sie! Teraz!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_12_KillEnemy"					;//Teraz jestem przed Toba, skumbag!
	EnemyKilled					=	"SVM_12_EnemyKilled"				;//To wlasnie dla Ciebie.....
	MonsterKilled				=	"SVM_12_MonsterKilled"				;//Uwielbiam caly ten gówno!
	Addon_MonsterKilled			=	"SVM_12_Addon_MonsterKilled"		;//Jedna krowa mniej!
	ThiefDown					=	"SVM_12_ThiefDown"					;//Ostrzegam! Nie próbuj tego ponownie, brudne zlodziejstwo!
	rumfummlerDown				=	"SVM_12_rumfummlerDown"				;//Nie dotykaj rzeczy, które juz nie sa twoje!
	SheepAttackerDown			=	"SVM_12_SheepAttackerDown"			;//I w przyszlosci trzymaj sie z dala od naszych owiec!
	KillMurderer				=	"SVM_12_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_12_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_12_NeverHitMeAgain"				;//Nie osmielisz sie zaatakowac mnie nigdy wiecej!
	YouBetterShouldHaveListened	=	"SVM_12_YouBetterShouldHaveListened"	;//Ostrzegam cie!
	GetUpAndBeGone				=	"SVM_12_GetUpAndBeGone"					;//Teraz wyjdz z tego miejsca!
	NeverEnterRoomAgain			=	"SVM_12_NeverEnterRoomAgain"			;//Nie chce widziec cie tam juz nigdy wiecej, wszystko w porzadku?
	ThereIsNoFightingHere		=	"SVM_12_ThereIsNoFightingHere"			;//Nie ma tu walki, czy to jasne?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_12_RunAway"						;//Jestem poza nia!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_12_Alarm"					;//ALARM!
	Guards						=	"SVM_12_Guards"					;//WACHE!
	Help						=	"SVM_12_Help"					;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_12_GoodMonsterKill"		;//(wywolywanie krzyków) Daj stworzeniom dobry marynatke!
	GoodKill					= 	"SVM_12_GoodKill"				;//(skrzyczacy) Tak, daj go synowi suki!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_12_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_12_RunCoward"				;//Jestem gonna cie!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_12_GetOutOfHere"			;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_12_WhyAreYouInHere"		;//Nie masz tutaj zadnych interesów!
	YesGoOutOfHere				= 	"SVM_12_YesGoOutOfHere"			;//Tak, wyjdz!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_12_WhatsThisSupposedToBe"	;//Co robisz w piekle? Dlaczego sie tu ukradacie?
	YouDisturbedMySlumber		=	"SVM_12_YouDisturbedMySlumber"	;//Jakiego fuku chcesz?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_12_ITookYourGold"			;//No cóz, przynajmniej przywiózles zloto!
	ShitNoGold					=	"SVM_12_ShitNoGold"				;//Nie ma nawet zlota hmph.
	ITakeYourWeapon				=	"SVM_12_ITakeYourWeapon"		;//Zabiore twoja bron ze soba.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_12_WhatAreYouDoing"		;//Ostrzezenie) Chlopiec! Nie rób tego ponownie!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_12_LookingForTroubleAgain"	;//(agresywne) Czy potrzebujesz ponawiac uderzenia?
	StopMagic					=	"SVM_12_StopMagic"				;//Pozbadz sie magii!
	ISaidStopMagic				=	"SVM_12_ISaidStopMagic"			;//Ostatnie ostrzezenie! Pozbadz sie magii!
	WeaponDown					=	"SVM_12_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_12_ISaidWeaponDown"		;//Udajcie sie tu z miejsca, bo nie bede was mial na twarzy!
	WiseMove					=	"SVM_12_WiseMove"				;//Nie jestes tak glupi, jak wygladasz!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_12_NextTimeYoureInForIt"	;//(u siebie) Nie próbuj tego ponownie spróbowac......
	OhMyHead					=	"SVM_12_OhMyHead"				;//(do samego siebie! Moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_12_TheresAFight"			;//Teraz to zabawa....
	OhMyGodItsAFight			=	"SVM_12_OhMyGodItsAFight"		;//O, moja dobroc!
	GoodVictory					=	"SVM_12_GoodVictory"			;//To go nauczy....
	NotBad						= 	"SVM_12_NotBad"					;//Zrobil czas!
	OhMyGodHesDown				=	"SVM_12_OhMyGodHesDown"			;//Brutalna kanalia!
	CheerFriend01				=	"SVM_12_CheerFriend01"			;//Uderz w nie!
	CheerFriend02				=	"SVM_12_CheerFriend02"			;//Nie zatrzymuj sie!
	CheerFriend03				=	"SVM_12_CheerFriend03"			;//Zakoncz go!
	Ooh01						=	"SVM_12_Ooh01"					;//Uwazaj!
	Ooh02						=	"SVM_12_Ooh02"					;//Nie badz glupcem!
	Ooh03						=	"SVM_12_Ooh03"					;//Oszalec, bolec!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_12_WhatWasThat"				;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_12_GetOutOfMyBed"			;//To jest moje lózko!
	Awake						= "SVM_12_Awake"					;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_12_TOUGHGUY_ATTACKLOST"		;//Dobrze, wygrasz. Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_12_TOUGHGUY_ATTACKWON"		;//Mysle, ze teraz zdaje sobie sprawe z tego, z kim rozmawiasz. Czego chcesz?
	TOUGHGUY_PLAYERATTACK		= "SVM_12_TOUGHGUY_PLAYERATTACK"	;//Ponownie? Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_12_GOLD_1000"				;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_12_GOLD_950"					;//950 sztuk zlota.
	GOLD_900					= "SVM_12_GOLD_900"					;//900 sztuk zlota.
	GOLD_850					= "SVM_12_GOLD_850"					;//850 sztuk zlota.
	GOLD_800					= "SVM_12_GOLD_800"					;//800 sztuk zlota.
	GOLD_750					= "SVM_12_GOLD_750"					;//750 sztuk zlota.
	GOLD_700					= "SVM_12_GOLD_700"					;//700 sztuk zlota.
	GOLD_650					= "SVM_12_GOLD_650"					;//650 sztuk zlota.
	GOLD_600					= "SVM_12_GOLD_600"					;//600 sztuk zlota.
	GOLD_550					= "SVM_12_GOLD_550"					;//550 sztuk zlota.
	GOLD_500					= "SVM_12_GOLD_500"					;//500 sztuk zlota.
	GOLD_450					= "SVM_12_GOLD_450"					;//450 sztuk zlota.
	GOLD_400					= "SVM_12_GOLD_400"					;//400 sztuk zlota.
	GOLD_350					= "SVM_12_GOLD_350"					;//350 sztuk zlota.
	GOLD_300					= "SVM_12_GOLD_300"					;//300 sztuk zlota.
	GOLD_250					= "SVM_12_GOLD_250"					;//250 sztuk zlota.
	GOLD_200					= "SVM_12_GOLD_200"					;//200 sztuk zlota.
	GOLD_150					= "SVM_12_GOLD_150"					;//150 sztuk zlota.
	GOLD_100					= "SVM_12_GOLD_100"					;//100 sztuk zlota.
	GOLD_90						= "SVM_12_GOLD_90"					;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_12_GOLD_80"					;//80 sztuk zlota.
	GOLD_70						= "SVM_12_GOLD_70"					;//70 sztuk zlota.
	GOLD_60						= "SVM_12_GOLD_60"					;//60 sztuk zlota.
	GOLD_50						= "SVM_12_GOLD_50"					;//50 sztuk zlota.
	GOLD_40						= "SVM_12_GOLD_40"					;//40 sztuk zlota.
	GOLD_30						= "SVM_12_GOLD_30"					;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_12_GOLD_20"					;//20 sztuk zlota.
	GOLD_10						= "SVM_12_GOLD_10"					;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_12_Smalltalk01"				;//... Nie obchodzi mnie to......
	Smalltalk02					= "SVM_12_Smalltalk02"				;//... Nikt tego nie chce wiedziec....
	Smalltalk03					= "SVM_12_Smalltalk03"				;//... byla to jego decyzja.....
	Smalltalk04					= "SVM_12_Smalltalk04"				;//... Nie wiem, mówisz mi, mówisz....
	Smalltalk05					= "SVM_12_Smalltalk05"				;//... Nie bede sie angazowal.....
	Smalltalk06					= "SVM_12_Smalltalk06"				;//... Nie mam na to czasu....
	Smalltalk07					= "SVM_12_Smalltalk07"				;//... Nigdy nie moglem sobie na to pozwolic....
	Smalltalk08					= "SVM_12_Smalltalk08"				;//... Nie musisz mi mówic......
	Smalltalk09					= "SVM_12_Smalltalk09"				;//... Nie mów mi nic, znam te rzeczy.....
	Smalltalk10					= "SVM_12_Smalltalk10"				;//... Móglbym panstwu powiedziec.....
	Smalltalk11					= "SVM_12_Smalltalk11"				;//... nie mozesz na tym polegac......
	Smalltalk12					= "SVM_12_Smalltalk12"				;//... Tak wlasnie mówilem....
	Smalltalk13					= "SVM_12_Smalltalk13"				;//... Nie sadze, ze to wszystko.....
	Smalltalk14					= "SVM_12_Smalltalk14"				;//... zawsze zawsze to samo ciagle po kolei......
	Smalltalk15					= "SVM_12_Smalltalk15"				;//... nie moze to byc prawda.......
	Smalltalk16					= "SVM_12_Smalltalk16"				;//... W pewnym momencie musialo sie to zdarzyc.....
	Smalltalk17					= "SVM_12_Smalltalk17"				;//... mógl wiedziec, ze sam......
	Smalltalk18					= "SVM_12_Smalltalk18"				;//... które nigdy sie nie zmienia......
	Smalltalk19					= "SVM_12_Smalltalk19"				;//... to nie jest tajemnica......
	Smalltalk20					= "SVM_12_Smalltalk20"				;//... nie bylo wielkiego problemu.....
	Smalltalk21					= "SVM_12_Smalltalk21"				;//... zawsze tak latwo to sobie wyobraza......
	Smalltalk22					= "SVM_12_Smalltalk22"				;//... Nikt juz tego nie chce slyszec....
	Smalltalk23					= "SVM_12_Smalltalk23"				;//... Ale to prawda......
	Smalltalk24					= "SVM_12_Smalltalk24"				;//... trzeba czasami sluchac....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                      
	Smalltalk25					= "SVM_12_Smalltalk25"				;//... Gdybysmy nie przyszli, sprawy wygladalyby inaczej....
	Smalltalk26					= "SVM_12_Smalltalk26"				;//... po prostu musi wiecej trenowac.....
	Smalltalk27					= "SVM_12_Smalltalk27"				;//... Nie chce, aby opowiadal mi o obowiazku....
	//ProInnos (NOV/KDF/PAL)                                                                                                                      
	Smalltalk28					= "SVM_12_Smalltalk28"				;//... Kara Innosa jest sprawiedliwa....
	Smalltalk29					= "SVM_12_Smalltalk29"				;//... droga cnoty jest dluga i kamienna.....
	Smalltalk30					= "SVM_12_Smalltalk30"				;//... tylko Innos decyduje o slusznosci i bledzie....
	SmalltalkKhorataAnnaQuest01			= "SVM_12_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_12_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_12_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_12_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_12_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_12_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_12_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_12_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_12_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_12_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_12_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_12_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_12_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_12_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_12_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_12_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_12_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_12_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_12_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_12_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_12_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_12_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_12_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_12_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_12_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_12_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_12_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_12_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_12_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_12_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_12_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_12_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_12_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_12_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_12_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_12_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_12_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_12_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_12_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_12_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_12_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_12_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_12_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_12_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_12_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_12_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_12_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_12_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_12_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_12_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_12_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_12_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_12_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_12_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_12_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_12_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_12_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_12_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_12_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_12_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_12_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_12_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_12_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_12_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_12_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_12_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_12_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_12_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_12_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_12_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_12_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_12_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_12_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_12_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_12_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_12_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_12_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_12_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_12_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_12_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_12_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_12_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_12_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_12_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_12_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_12_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_12_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_12_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_12_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_12_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_12_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_12_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_12_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_12_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_12_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_12_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_12_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_12_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_12_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_12_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_12_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_12_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_12_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_12_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_12_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_12_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_12_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_12_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_12_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_12_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_12_Addon_WrongArmor";				//Twoje ubrania po prostu nie pasuja do Ciebie. Najpierw dokonaj zmian.
	ADDON_WRONGARMOR_SLD		= "SVM_12_ADDON_WRONGARMOR_SLD";			//Jesli chcesz rozmawiac ze mna, wlóz nasza zbroje.
	ADDON_WRONGARMOR_MIL		= "SVM_12_ADDON_WRONGARMOR_MIL";			//Zolnierz nosi pancerz króla. NOTHING OTHER! Zmienic sie wiec.
	ADDON_WRONGARMOR_KDF		= "SVM_12_ADDON_WRONGARMOR_KDF";			//Twoje ubrania nie sa odpowiednie do naszego zamówienia. Zmienic sie.
	ADDON_NOARMOR_BDT			= "SVM_12_ADDON_ADDON_NOARMOR_BDT";			//Nie mozna sobie nawet pozwolic na garnitur pancerny. Nie mówie o slabosciach.

	ADDON_DIEBANDIT				= "SVM_12_ADDON_DIEBANDIT";				//Bede cie wybawil, bandyta!
	ADDON_DIRTYPIRATE			= "SVM_12_ADDON_DIRTYPIRATE";			//Pospiesze sie, pirat!

	RELMINE01			= "SVM_12_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_12_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_12_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_12_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_12_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_12_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_12_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_12_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_12_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_12_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_12_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_12_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_12_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_12_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_12_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_12_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_12_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_12_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_12_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_12_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_12_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_12_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_12_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_12_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_12_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_12_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_12_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_12_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_12_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_12_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_12_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_12_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_12_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_12_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_12_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_12_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_12_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_12_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_12_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_12_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_12_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_12_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_12_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_12_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_12_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_12_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_12_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_12_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_12_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_12_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_12_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_12_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_12_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_12_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_12_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_12_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_12_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_13 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_13_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_13_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_13_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_13_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_13_Weather"					;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_13_IGetYouStill"				;//Jestem gonna cie!
	DieEnemy					=	"SVM_13_DieEnemy"					;//Pospiesze sie!
	DieMonster					=	"SVM_13_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_13_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_13_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_13_SheepKiller"				;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_13_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_13_YouMurderer"				;//Morderca!
	DieStupidBeast				=	"SVM_13_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_13_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_13_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_13_ThenIBeatYouOutOfHere"		;//Nie chcesz isc? Wszystko w porzadku!
	WhatDidYouDoInThere			=	"SVM_13_WhatDidYouDoInThere"		;//Co tam robiles?
	WillYouStopFighting			=	"SVM_13_WillYouStopFighting"		;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_13_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_13_EnemyKilled"				;//Zaslugujecie na to, synu suki!
	MonsterKilled				=	"SVM_13_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_13_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_13_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_13_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_13_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_13_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_13_NeverHitMeAgain"			;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_13_YouBetterShouldHaveListened";//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_13_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_13_NeverEnterRoomAgain"		;//I juz nigdy wiecej nie wpadaj tam!
	ThereIsNoFightingHere		=	"SVM_13_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_13_RunAway"					;//Och, gówno!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_13_Alarm"					;//ALARM!
	Berzerk						=	"SVM_13_Berzerk"						;//UUAARRGHHHHH!
	Guards						=	"SVM_13_Guards"					;//WACHE!
	Help						=	"SVM_13_Help"					;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_13_GoodMonsterKill"		;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_13_GoodKill"				;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_13_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_13_RunCoward"				;//Krzyki) Tak! Pracuj tak szybko, jak tylko mozesz!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_13_GetOutOfHere"			;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_13_WhyAreYouInHere"		;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_13_YesGoOutOfHere"			;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_13_WhatsThisSupposedToBe"	;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_13_YouDisturbedMySlumber"	;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_13_ITookYourGold"			;//Dziekujemy za zloto, bohater!
	ShitNoGold					=	"SVM_13_ShitNoGold"				;//Biedny draniesz, nie masz nawet zlota!
	ITakeYourWeapon				=	"SVM_13_ITakeYourWeapon"		;//Lepiej wziac pistolet!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_13_WhatAreYouDoing"		;//Ostroznie) Uwazaj! Jeszcze raz i trafie cie.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_13_LookingForTroubleAgain"	;//Jeszcze za malo?
	StopMagic					=	"SVM_13_StopMagic"				;//Zatrzymaj ten magiczny chwyt!
	ISaidStopMagic				=	"SVM_13_ISaidStopMagic"			;//Chcesz poncz? Zatrzymaj sie teraz!
	WeaponDown					=	"SVM_13_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_13_ISaidWeaponDown"		;//Odstaw pistolet!
	WiseMove					=	"SVM_13_WiseMove"				;//Inteligentny przyjaciel!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_13_NextTimeYoureInForIt"	;//Nastepnym razem zobaczymy....
	OhMyHead					=	"SVM_13_OhMyHead"				;//O Mezczyzna, glowa moja....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_13_TheresAFight"			;//(chwycenie) Ah, walka!
	OhMyGodItsAFight			=	"SVM_13_OhMyGodItsAFight"		;//Mój Boze, walka!
	GoodVictory					=	"SVM_13_GoodVictory"			;//Pokazales go!
	NotBad						= 	"SVM_13_NotBad"					;//(pogniwianie) Nie zly....
	OhMyGodHesDown				=	"SVM_13_OhMyGodHesDown"			;//(do samego siebie) Mój Boze! Jak brutalne....
	CheerFriend01				=	"SVM_13_CheerFriend01"			;//Hit go!
	CheerFriend02				=	"SVM_13_CheerFriend02"			;//Daj to wszystko!
	CheerFriend03				=	"SVM_13_CheerFriend03"			;//Pokaz go!
	Ooh01						=	"SVM_13_Ooh01"					;//Badz blisko!
	Ooh02						=	"SVM_13_Ooh02"					;//Ostroznie!
	Ooh03						=	"SVM_13_Ooh03"					;//Och! Zrobil czas!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_13_WhatWasThat"				;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_13_GetOutOfMyBed"			;//Znajdz wlasne lózko!
	Awake						= "SVM_13_Awake"					;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_13_TOUGHGUY_ATTACKLOST"		;//Dobrze, to Ty jestes najlepszy z nas obojga! Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_13_TOUGHGUY_ATTACKWON"		;//(samo-wazne) Przypuszczam, ze teraz zrozumiales, który z nas jest silniejszy.... czego chcesz?
	TOUGHGUY_PLAYERATTACK		= "SVM_13_TOUGHGUY_PLAYERATTACK"	;//Myslalem, ze chcialbys mnie zamieszac. Czy zmieniles zdanie? Chcesz porozmawiac, czy nie? (smiertelnicy)
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_13_GOLD_1000"				;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_13_GOLD_950"					;//950 sztuk zlota.
	GOLD_900					= "SVM_13_GOLD_900"					;//900 sztuk zlota.
	GOLD_850					= "SVM_13_GOLD_850"					;//850 sztuk zlota.
	GOLD_800					= "SVM_13_GOLD_800"					;//800 sztuk zlota.
	GOLD_750					= "SVM_13_GOLD_750"					;//750 sztuk zlota.
	GOLD_700					= "SVM_13_GOLD_700"					;//700 sztuk zlota.
	GOLD_650					= "SVM_13_GOLD_650"					;//650 sztuk zlota.
	GOLD_600					= "SVM_13_GOLD_600"					;//600 sztuk zlota.
	GOLD_550					= "SVM_13_GOLD_550"					;//550 sztuk zlota.
	GOLD_500					= "SVM_13_GOLD_500"					;//500 sztuk zlota.
	GOLD_450					= "SVM_13_GOLD_450"					;//450 sztuk zlota.
	GOLD_400					= "SVM_13_GOLD_400"					;//400 sztuk zlota.
	GOLD_350					= "SVM_13_GOLD_350"					;//350 sztuk zlota.
	GOLD_300					= "SVM_13_GOLD_300"					;//300 sztuk zlota.
	GOLD_250					= "SVM_13_GOLD_250"					;//250 sztuk zlota.
	GOLD_200					= "SVM_13_GOLD_200"					;//200 sztuk zlota.
	GOLD_150					= "SVM_13_GOLD_150"					;//150 sztuk zlota.
	GOLD_100					= "SVM_13_GOLD_100"					;//100 sztuk zlota.
	GOLD_90						= "SVM_13_GOLD_90"					;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_13_GOLD_80"					;//80 sztuk zlota.
	GOLD_70						= "SVM_13_GOLD_70"					;//70 sztuk zlota.
	GOLD_60						= "SVM_13_GOLD_60"					;//60 sztuk zlota.
	GOLD_50						= "SVM_13_GOLD_50"					;//50 sztuk zlota.
	GOLD_40						= "SVM_13_GOLD_40"					;//40 sztuk zlota.
	GOLD_30						= "SVM_13_GOLD_30"					;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_13_GOLD_20"					;//20 sztuk zlota.
	GOLD_10						= "SVM_13_GOLD_10"					;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_13_Smalltalk01"				;//... Nie obchodzi mnie to......
	Smalltalk02					= "SVM_13_Smalltalk02"				;//... Nikt tego nie chce wiedziec....
	Smalltalk03					= "SVM_13_Smalltalk03"				;//... byla to jego decyzja.....
	Smalltalk04					= "SVM_13_Smalltalk04"				;//... Nie wiem, mówisz mi, mówisz....
	Smalltalk05					= "SVM_13_Smalltalk05"				;//... Nie bede sie angazowal.....
	Smalltalk06					= "SVM_13_Smalltalk06"				;//... Nie mam na to czasu....
	Smalltalk07					= "SVM_13_Smalltalk07"				;//... Nie moglem sobie na to pozwolic....
	Smalltalk08					= "SVM_13_Smalltalk08"				;//... Nie musisz mi mówic......
	Smalltalk09					= "SVM_13_Smalltalk09"				;//... Nie mów mi nic, znam te rzeczy.....
	Smalltalk10					= "SVM_13_Smalltalk10"				;//... Móglbym panstwu powiedziec.....
	Smalltalk11					= "SVM_13_Smalltalk11"				;//... nie mozesz na tym polegac......
	Smalltalk12					= "SVM_13_Smalltalk12"				;//... Tak wlasnie mówilem....
	Smalltalk13					= "SVM_13_Smalltalk13"				;//... i nie mysl, ze to wszystko.....
	Smalltalk14					= "SVM_13_Smalltalk14"				;//... zawsze zawsze to samo jeszcze raz.....
	Smalltalk15					= "SVM_13_Smalltalk15"				;//... nie moze to byc prawda.......
	Smalltalk16					= "SVM_13_Smalltalk16"				;//... W pewnym momencie musialo sie to zdarzyc.....
	Smalltalk17					= "SVM_13_Smalltalk17"				;//... mógl wiedziec, ze sam......
	Smalltalk18					= "SVM_13_Smalltalk18"				;//... które nigdy sie nie zmienia......
	Smalltalk19					= "SVM_13_Smalltalk19"				;//... to nie jest tajemnica......
	Smalltalk20					= "SVM_13_Smalltalk20"				;//... nie bylo wielkiego problemu.....
	Smalltalk21					= "SVM_13_Smalltalk21"				;//... zawsze tak latwo to sobie wyobraza......
	Smalltalk22					= "SVM_13_Smalltalk22"				;//... Nikt juz tego nie chce slyszec....
	Smalltalk23					= "SVM_13_Smalltalk23"				;//... Ale to prawda......
	Smalltalk24					= "SVM_13_Smalltalk24"				;//... trzeba czasami sluchac....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                      
	Smalltalk25					= "SVM_13_Smalltalk25"				;//... Gdybysmy nie przyszli, sprawy wygladalyby inaczej....
	Smalltalk26					= "SVM_13_Smalltalk26"				;//... po prostu musi wiecej trenowac.....
	Smalltalk27					= "SVM_13_Smalltalk27"				;//... Nie chce, aby opowiadal mi o obowiazku....
	//ProInnos (NOV/KDF/PAL)                                                                                                                      
	Smalltalk28					= "SVM_13_Smalltalk28"				;//... Kara Innosa jest sprawiedliwa....
	Smalltalk29					= "SVM_13_Smalltalk29"				;//... droga cnoty jest dluga i kamienna.....
	Smalltalk30					= "SVM_13_Smalltalk30"				;//... tylko Innos decyduje o slusznosci i bledzie....
	SmalltalkKhorataAnnaQuest01			= "SVM_13_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_13_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_13_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_13_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_13_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_13_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_13_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_13_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_13_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_13_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_13_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_13_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_13_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_13_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_13_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_13_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_13_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_13_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_13_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_13_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_13_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_13_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_13_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_13_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_13_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_13_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_13_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_13_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_13_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_13_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_13_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_13_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_13_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_13_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_13_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_13_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_13_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_13_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_13_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_13_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_13_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_13_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_13_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_13_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_13_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_13_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_13_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_13_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_13_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_13_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_13_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_13_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_13_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_13_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_13_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_13_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_13_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_13_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_13_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_13_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_13_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_13_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_13_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_13_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_13_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_13_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_13_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_13_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_13_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_13_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_13_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_13_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_13_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_13_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_13_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_13_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_13_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_13_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_13_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_13_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_13_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_13_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_13_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_13_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_13_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_13_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_13_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_13_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_13_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_13_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_13_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_13_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_13_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_13_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_13_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_13_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_13_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_13_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_13_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_13_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_13_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_13_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_13_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_13_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_13_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_13_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_13_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_13_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_13_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_13_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_13_Addon_WrongArmor";			//Jaki jest to rodzaj odziezy? Ona Ci nie odpowiada. Nie martw sie o mnie.
	ADDON_WRONGARMOR_SLD		= "SVM_13_ADDON_WRONGARMOR_SLD";		//Nie masz swoja zbroje wlaczona, idz i zlapac.
	ADDON_WRONGARMOR_MIL		= "SVM_13_ADDON_WRONGARMOR_MIL";		//Powinienes byc dumny, ze nosic pancerz króla i nie chodzic w tych ubraniach. Teraz idzcie!
	ADDON_WRONGARMOR_KDF		= "SVM_13_ADDON_WRONGARMOR_KDF";		//Dlaczego nie nosza Panstwo ubran z naszego zamówienia? Idz i zastanów sie nad tym.
	ADDON_NOARMOR_BDT			= "SVM_13_ADDON_ADDON_NOARMOR_BDT";		//Nie masz nawet zbroi. Wyjsc stad!

	ADDON_DIEBANDIT				= "SVM_13_ADDON_DIEBANDIT";				//Brudny bandyta.
	ADDON_DIRTYPIRATE			= "SVM_13_ADDON_DIRTYPIRATE";			//Porywacie pirata!

	RELMINE01			= "SVM_13_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_13_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_13_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_13_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_13_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_13_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_13_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_13_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_13_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_13_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_13_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_13_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_13_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_13_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_13_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_13_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_13_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_13_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_13_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_13_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_13_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_13_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_13_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_13_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_13_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_13_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_13_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_13_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_13_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_13_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_13_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_13_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_13_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_13_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_13_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_13_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_13_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_13_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_13_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_13_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_13_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_13_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_13_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_13_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_13_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_13_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_13_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_13_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_13_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_13_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_13_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_13_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_13_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_13_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_13_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_13_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_13_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_14 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_14_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_14_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_14_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_14_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_14_Weather"						;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_14_IGetYouStill"				;//Moge Cie jeszcze dostac!
	DieEnemy					=	"SVM_14_DieEnemy"					;//Teraz Twoja kolej!
	DieMonster					=	"SVM_14_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_14_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_14_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_14_SheepKiller"					;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_14_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	Berzerk						=	"SVM_14_Berzerk"						;//UUAARRGHHHHH!
	YouMurderer					=	"SVM_14_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_14_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_14_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_14_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_14_ThenIBeatYouOutOfHere"		;//Wtedy bede musial cie wybic!
	WhatDidYouDoInThere			=	"SVM_14_WhatDidYouDoInThere"			;//Co tam robiles, huh?
	WillYouStopFighting			=	"SVM_14_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_14_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_14_EnemyKilled"					;//To jest wlasnie dla Ciebie, punk.
	MonsterKilled				=	"SVM_14_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_14_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_14_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_14_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_14_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_14_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_14_NeverHitMeAgain"				;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_14_YouBetterShouldHaveListened"	;//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_14_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_14_NeverEnterRoomAgain"			;//I ze juz nigdy cie tam juz nie zlapam!
	ThereIsNoFightingHere		=	"SVM_14_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_14_RunAway"						;//Wyobraz sobie! Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_14_Alarm"						;//ALARM!
	Guards						=	"SVM_14_Guards"						;//WACHE!
	Help						=	"SVM_14_Help"						;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_14_GoodMonsterKill"				;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_14_GoodKill"					;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_14_NOTNOW"						;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_14_RunCoward"					;//Stoisz nieruchomo, rajd!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_14_GetOutOfHere"				;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_14_WhyAreYouInHere"				;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_14_YesGoOutOfHere"				;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_14_WhatsThisSupposedToBe"		;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_14_YouDisturbedMySlumber"		;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_14_ITookYourGold"				;//Zloto! To juz moja kopalnia.....
	ShitNoGold					=	"SVM_14_ShitNoGold"					;//Nie masz nawet zlota?
	ITakeYourWeapon				=	"SVM_14_ITakeYourWeapon"				;//Lepiej zabrac ze soba bron.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_14_WhatAreYouDoing"				;//Ostrzezenie) Hej! Uwazaj!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_14_LookingForTroubleAgain"		;//(agresywny) Nie masz jeszcze wystarczajaco duzo?
	StopMagic					=	"SVM_14_StopMagic"					;//Idz z magia!
	ISaidStopMagic				=	"SVM_14_ISaidStopMagic"				;//Pozbadz sie magii! Czy slyszysz zle?
	WeaponDown					=	"SVM_14_WeaponDown"					;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_14_ISaidWeaponDown"				;//Czy nie slyszysz dobrze? Powiedzialem, ze odlozylem pistolet!
	WiseMove					=	"SVM_14_WiseMove"					;//Idziesz tam, tam idzcie!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_14_NextTimeYoureInForIt"		;//Nadal mówimy o.....
	OhMyHead					=	"SVM_14_OhMyHead"					;//(do siebie) Oh, moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_14_TheresAFight"				;//Wejdzmy do biznesu!
	OhMyGodItsAFight			=	"SVM_14_OhMyGodItsAFight"			;//Oni rozbija czaszki w....
	GoodVictory					=	"SVM_14_GoodVictory"					;//Na to on zasluguje.
	NotBad						= 	"SVM_14_NotBad"						;//(pogniwianie) Nie takie zle....
	OhMyGodHesDown				=	"SVM_14_OhMyGodHesDown"				;//(do siebie) Jaki brutalny facet....
	CheerFriend01				=	"SVM_14_CheerFriend01"				;//Tak, to tak!
	CheerFriend02				=	"SVM_14_CheerFriend02"				;//Chodzcie dalej, odejdzmy!
	CheerFriend03				=	"SVM_14_CheerFriend03"				;//Pozostan na szczycie!
	Ooh01						=	"SVM_14_Ooh01"						;//Nie poddawaj sie niczemu!
	Ooh02						=	"SVM_14_Ooh02"						;//Jestes gonna!
	Ooh03						=	"SVM_14_Ooh03"						;//Nie moge w to uwierzyc!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_14_WhatWasThat"					;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_14_GetOutOfMyBed"					;//Wejsc z lózka!
	Awake						= "SVM_14_Awake"							;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_14_TOUGHGUY_ATTACKLOST"			;//To wszystko jest w porzadku, wygrasz. Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_14_TOUGHGUY_ATTACKWON"			;//Czy musze ponownie pokazac ci, kim jest Pan?
	TOUGHGUY_PLAYERATTACK		= "SVM_14_TOUGHGUY_PLAYERATTACK"			;//Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_14_GOLD_1000"						;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_14_GOLD_950"						;//950 sztuk zlota.
	GOLD_900					= "SVM_14_GOLD_900"						;//900 sztuk zlota.
	GOLD_850					= "SVM_14_GOLD_850"						;//850 sztuk zlota.
	GOLD_800					= "SVM_14_GOLD_800"						;//800 sztuk zlota.
	GOLD_750					= "SVM_14_GOLD_750"						;//750 sztuk zlota.
	GOLD_700					= "SVM_14_GOLD_700"						;//700 sztuk zlota.
	GOLD_650					= "SVM_14_GOLD_650"						;//650 sztuk zlota.
	GOLD_600					= "SVM_14_GOLD_600"						;//600 sztuk zlota.
	GOLD_550					= "SVM_14_GOLD_550"						;//550 sztuk zlota.
	GOLD_500					= "SVM_14_GOLD_500"						;//500 sztuk zlota.
	GOLD_450					= "SVM_14_GOLD_450"						;//450 sztuk zlota.
	GOLD_400					= "SVM_14_GOLD_400"						;//400 sztuk zlota.
	GOLD_350					= "SVM_14_GOLD_350"						;//350 sztuk zlota.
	GOLD_300					= "SVM_14_GOLD_300"						;//300 sztuk zlota.
	GOLD_250					= "SVM_14_GOLD_250"						;//250 sztuk zlota.
	GOLD_200					= "SVM_14_GOLD_200"						;//200 sztuk zlota.
	GOLD_150					= "SVM_14_GOLD_150"						;//150 sztuk zlota.
	GOLD_100					= "SVM_14_GOLD_100"						;//100 sztuk zlota.
	GOLD_90						= "SVM_14_GOLD_90"						;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_14_GOLD_80"						;//80 sztuk zlota.
	GOLD_70						= "SVM_14_GOLD_70"						;//70 sztuk zlota.
	GOLD_60						= "SVM_14_GOLD_60"						;//60 sztuk zlota.
	GOLD_50						= "SVM_14_GOLD_50"						;//50 sztuk zlota.
	GOLD_40						= "SVM_14_GOLD_40"						;//40 sztuk zlota.
	GOLD_30						= "SVM_14_GOLD_30"						;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_14_GOLD_20"						;//20 sztuk zlota.
	GOLD_10						= "SVM_14_GOLD_10"						;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_14_Smalltalk01"					;//... Nie moge w to uwierzyc.....
	Smalltalk02					= "SVM_14_Smalltalk02"					;//... Nie bylabym pewna, ze.....
	Smalltalk03					= "SVM_14_Smalltalk03"					;//... To bylo to, co wiedzial wczesniej.......
	Smalltalk04					= "SVM_14_Smalltalk04"					;//... Nie wiem, w co juz wierzyc.....
	Smalltalk05					= "SVM_14_Smalltalk05"					;//... Nie wiem, dlaczego jest tak zdenerwowany.....
	Smalltalk06					= "SVM_14_Smalltalk06"					;//... Nie potrzebuje wiecej klopotów....
	Smalltalk07					= "SVM_14_Smalltalk07"					;//... Slyszalem wiele rzeczy....
	Smalltalk08					= "SVM_14_Smalltalk08"					;//... Wole raczej trzymac rece z dala od niego....
	Smalltalk09					= "SVM_14_Smalltalk09"					;//... po prostu nie mozesz uwierzyc we wszystko, co slyszysz....
	Smalltalk10					= "SVM_14_Smalltalk10"					;//... od mnie tego nie zrobil......
	Smalltalk11					= "SVM_14_Smalltalk11"					;//... Tak wiele myslalem, ze....
	Smalltalk12					= "SVM_14_Smalltalk12"					;//... Nikt nie chce uslyszec mojej opinii.....
	Smalltalk13					= "SVM_14_Smalltalk13"					;//... on naprawde nie zasluzyl na to....
	Smalltalk14					= "SVM_14_Smalltalk14"					;//... Nie powiedz mi, ze tego nie wiedziales....
	Smalltalk15					= "SVM_14_Smalltalk15"					;//... bylo to oczywiste....
	Smalltalk16					= "SVM_14_Smalltalk16"					;//... Skad to sie wzielas?
	Smalltalk17					= "SVM_14_Smalltalk17"					;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_14_Smalltalk18"					;//... Mam wlasna opinie....
	Smalltalk19					= "SVM_14_Smalltalk19"					;//... dokladnie to, co pan powiedzial....
	Smalltalk20					= "SVM_14_Smalltalk20"					;//... Nie sadze, aby w tym cos sie zmienilo....
	Smalltalk21					= "SVM_14_Smalltalk21"					;//... Slysze to po raz pierwszy.....
	Smalltalk22					= "SVM_14_Smalltalk22"					;//... Mozemy tylko poczekac i zobaczyc....
	Smalltalk23					= "SVM_14_Smalltalk23"					;//... problemy, które widzialem przyjezdzajac.....
	Smalltalk24					= "SVM_14_Smalltalk24"					;//... Dlaczego nikt nie slucha mnie....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                           
	Smalltalk25					= "SVM_14_Smalltalk25"					;//... który biegal tak, jakby Beliar sam byl po nim....
	Smalltalk26					= "SVM_14_Smalltalk26"					;//... oczywiscie w koncu dostalismy go.....
	Smalltalk27					= "SVM_14_Smalltalk27"					;//... trzeba wlozyc w to wiele wysilku......
	//ProInnos (NOV/KDF/PAL)                                                                                                                           
	Smalltalk28					= "SVM_14_Smalltalk28"					;//... niektórzy nie wiedza, jak wiele grzeszyli....
	Smalltalk29					= "SVM_14_Smalltalk29"					;//... bo jest to wola Inno....
	Smalltalk30					= "SVM_14_Smalltalk30"					;//... jego czyny byly sprawiedliwe....
	SmalltalkKhorataAnnaQuest01			= "SVM_14_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_14_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_14_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_14_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_14_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_14_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_14_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_14_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_14_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_14_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_14_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_14_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_14_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_14_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_14_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_14_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_14_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_14_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_14_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_14_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_14_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_14_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_14_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_14_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_14_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_14_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_14_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_14_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_14_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_14_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_14_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_14_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_14_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_14_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_14_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_14_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_14_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_14_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_14_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_14_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_14_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_14_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_14_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_14_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_14_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_14_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_14_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_14_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_14_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_14_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_14_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_14_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_14_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_14_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_14_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_14_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_14_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_14_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_14_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_14_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_14_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_14_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_14_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_14_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_14_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_14_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_14_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_14_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_14_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_14_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_14_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_14_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_14_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_14_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_14_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_14_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_14_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_14_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_14_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_14_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_14_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_14_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_14_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_14_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_14_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_14_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_14_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_14_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_14_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_14_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_14_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_14_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_14_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_14_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_14_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_14_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_14_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_14_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_14_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_14_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_14_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_14_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_14_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_14_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_14_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_14_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_14_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_14_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_14_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_14_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_14_Addon_WrongArmor";			//Ubrania nie pasuja do Ciebie. Musisz miec cos do ukrycia. Nie martw sie o mnie.
	ADDON_WRONGARMOR_SLD		= "SVM_14_ADDON_WRONGARMOR_SLD";		//Jesli chcesz do mnie porozmawiac, bedziesz musial nosic pancerz.
	ADDON_WRONGARMOR_MIL		= "SVM_14_ADDON_WRONGARMOR_MIL";		//Badz dumny z armii i nie bierz sie w tych ubraniach. Najpierw dokonaj zmian.
	ADDON_WRONGARMOR_KDF		= "SVM_14_ADDON_WRONGARMOR_KDF";		//Twoje ubrania nie sa odpowiednie do naszego zamówienia. Zmienic sie.
	ADDON_NOARMOR_BDT			= "SVM_14_ADDON_ADDON_NOARMOR_BDT";		//Nie masz nawet zbroi. Wyjsc stad!

	ADDON_DIEBANDIT				= "SVM_14_ADDON_DIEBANDIT";				//Die, bandyta.
	ADDON_DIRTYPIRATE			= "SVM_14_ADDON_DIRTYPIRATE";			//Smierc, pirat.

	RELMINE01			= "SVM_14_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_14_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_14_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_14_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_14_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_14_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_14_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_14_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_14_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_14_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_14_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_14_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_14_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_14_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_14_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_14_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_14_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_14_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_14_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_14_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_14_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_14_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_14_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_14_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_14_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_14_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_14_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_14_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_14_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_14_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_14_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_14_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_14_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_14_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_14_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_14_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_14_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_14_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_14_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_14_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_14_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_14_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_14_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_14_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_14_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_14_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_14_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_14_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_14_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_14_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_14_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_14_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_14_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_14_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_14_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_14_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_14_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

INSTANCE SVM_15	(C_SVM)		//	PLAYER	trocken,ernst
{
	// ------ Player-Only SVMs ---------------------------------------------------------------------
	SC_HeyTurnAround		= 	"SVM_15_SC_HeyTurnAround"			;//Hej!
	SC_HeyTurnAround02		= 	"SVM_15_SC_HeyTurnAround02"			;//Hej!
	SC_HeyTurnAround03		= 	"SVM_15_SC_HeyTurnAround03"			;//Hej!
	SC_HeyTurnAround04		= 	"SVM_15_SC_HeyTurnAround04"			;//Hej!
	
	SC_HeyWaitASecond		= 	"SVM_15_SC_HeyWaitASecond"			;//Poczekaj minute!

	DoesntWork				= 	"SVM_15_DoesntWork"					;//Nie dziala
	PickBroke				= 	"SVM_15_PickBroke"					;//Hm, zerwany.
	NeedKey					= 	"SVM_15_NeedKey"					;//W tym celu potrzebuje klucza....
	NoMorePicks				= 	"SVM_15_NoMorePicks"				;//Zaden inny sposób odzywiania....
	NoPickLockTalent		= 	"SVM_15_NoPickLockTalent"			;//Nie wiem nic o peknieciu zamka.
	NoSweeping				= 	"SVM_15_NoSweeping"					;//Wydmuchiwanie wszystkich komór na zawsze!
	
	PICKLOCKORKEYMISSING	= 	"SVM_15_PICKLOCKORKEYMISSING"		;//Hm.... Nie posiadam blokady ani klucza.
	KEYMISSING				= 	"SVM_15_KEYMISSING"					;//Bez odpowiedniego klucza nigdy nie otwre go bez odpowiedniego klucza!
	PICKLOCKMISSING			= 	"SVM_15_PICKLOCKMISSING"			;//Pomocne byloby kilka kresek!
	NEVEROPEN				= 	"SVM_15_NEVEROPEN"					;//Nigdy nie otworze tej rzeczy!
	MISSINGITEM				= 	"SVM_15_MISSINGITEM"				;//Z czym?
	DONTKNOW				= 	"SVM_15_DONTKNOW"					;//Hmm..... Nie.... Nie.
	NOTHINGTOGET			= 	"SVM_15_NOTHINGTOGET"				;//Nie ma nic do zdobycia.....
	NOTHINGTOGET02			= 	"SVM_15_NOTHINGTOGET02"				;//Nic do zdobycia....
	NOTHINGTOGET03			= 	"SVM_15_NOTHINGTOGET03"				;//Nic z grabiezy......
	
	// ------ sonstige SVMs -------------------------------------------------------------------------
	Aargh_1					=	"SVM_15_Aargh_1"					;//Aargh
	Aargh_2					=	"SVM_15_Aargh_2"					;//Aargh
	Aargh_3					=	"SVM_15_Aargh_3"					;//Aargh
	Dead					=	"SVM_15_Dead"						;//Aaargl
	Awake					=	"SVM_15_Awake"						;//(budzenie sie)
	
	// ------ Story SVMs ----------------------------------------------------------------------------
	
	IRDORATHTHEREYOUARE		= 	"SVM_15_IRDORATHTHEREYOUARE"		;//Mmh. To wlasnie tam sie ukrywales. Damn daleko. Mmh. Do dotarcia tam potrzebny jest mi statek.
	HEALSHRINE				= 	"SVM_15_HEALSHRINE"					;//Innos, udziel mi swoja pomoc i oczyscic te swiatynie.
	HEALLASTSHRINE			= 	"SVM_15_HEALLASTSHRINE"				;//Innos, udziel mi waszej pomocy itd.... Tam. Mysle, ze to powinien byc ostatni raz.
	SCOPENSIRDORATHBOOK		= 	"SVM_15_SCOPENSIRDORATHBOOK"		;//KARDAK! Ah. Ksiazka zostanie otwarta. W ksiazce jest litera i klucz ukryty.
	SCOPENSLASTDOOR			= 	"SVM_15_SCOPENSLASTDOOR"			;//Otwórz sie!

	//---------Addon SVMs----------------------------------------------------------------------------
	//ADDON>
	TRADE_1					= 	"SVM_15_Addon_TRADE_1"					;//Dzialajmy.
	TRADE_2					= 	"SVM_15_Addon_TRADE_2"					;//Pokaz mi swoje towary.
	TRADE_3					=	"SVM_15_Addon_TRADE_3"					;//Zobaczmy co dostales.
	
	VERSTEHE				=   "SVM_15_Addon_VERSTEHE"					;//Widze.
	FOUNDTREASURE			=   "SVM_15_Addon_FOUNDTREASURE"			;//Ah. Mysle, ze cos znalazlem.
	CANTUNDERSTANDTHIS		=   "SVM_15_Addon_CANTUNDERSTANDTHIS"		;//Nie rozumiem......
	CANTREADTHIS			= 	"SVM_15_Addon_CANTREADTHIS"				;//Nie moge tego przeczytac!
	STONEPLATE_1			= 	"SVM_15_Addon_STONEPLATE_1"				;//AKHANTAR!
	STONEPLATE_2			= 	"SVM_15_Addon_STONEPLATE_2"				;//JHERHEDRA!
	STONEPLATE_3			= 	"SVM_15_Addon_STONEPLATE_3"				;//URIZIEL RATIS!
		
	COUGH					=   "SVM_15_Addon_COUGH"					;//(kaszel) Mezczyzna, Brrr!
	HUI						=	"SVM_15_Addon_HUI"						;//Huihuihuihuihuihuiiii!
	
	ATTENTAT_ADDON_DESCRIPTION	=	"SVM_15_ATTENTAT_ADDON_DESCRIPTION"		;//Co wiesz o zamachu na Esteban?
	ATTENTAT_ADDON_DESCRIPTION2 = 	"SVM_15_ATTENTAT_ADDON_DESCRIPTION2"	;//Z powodu zamachu na Esteban.....
	ATTENTAT_ADDON_PRO			=	"SVM_15_ATTENTAT_ADDON_PRO"				;//Chce zabic zdrajców.
	ATTENTAT_ADDON_CONTRA		=	"SVM_15_ATTENTAT_ADDON_CONTRA"			;//Szukam tych facetów, którzy podejma dzialania przeciwko Estebanowi.
	
	MINE_ADDON_DESCRIPTION		=	"SVM_15_MINE_ADDON_DESCRIPTION"		;//Jestes potrzebny w kopalni.
	ADDON_SUMMONANCIENTGHOST	=	"SVM_15_ADDON_SUMMONANCIENTGHOST"	;//Ighoriat Thorul. Przyjdzcie do mnie, Quarhodron, stary przywódca walczacej kasty!
	ADDON_ANCIENTGHOST_NOTNEAR	=	"SVM_15_ADDON_ANCIENTGHOST_NOTNEAR"	;//Mhhh..... To tu nie dziala.
	ADDON_GOLD_DESCRIPTION		=	"SVM_15_ADDON_GOLD_DESCRIPTION"		;//Co musze wiedziec o hakerstwie na zloto?
	
	ADDON_THISLITTLEBASTARD		=   "SVM_15_Addon_ThisLittleBastard";		//Uh-huh. Ksiega podatkowa Franciszka. Mezczyzna wydaje sie zarzadzac duza iloscia zlota we wlasnej kieszeni.
	ADDON_OPENADANOSTEMPLE		=   "SVM_15_Addon_OPENADANOSTEMPLE";		//JHERHEDRA AKHANTAR!

	//ADDON<

	// MOD

	WHOAREYOU = "SVM_15_WerBistDu";				//Kim jestes?
	MATTEOPAPER = "SVM_15_Flugblatt";			//Mam dla Ciebie ulotke.
	WANNAMARRY = "SVM_15_WannaMarry";			//Czy poslubisz mnie?
	HAVEFREUDENSPENDER = "SVM_15_HAVEFREUDENSPENDER";	//Mam dla Ciebie butelke przyjemnosci.
	NO = "SVM_15_No";					//Nie.
	HIERNIMM = "SVM_15_HierNimm";				//Wez to tutaj.
	HIER = "SVM_15_Hier";					//Tutaj.
	XERESISTIMMORTAL = "SVM_15_XERESISTIMMORTAL";		//Damn, nie ulegnie uszkodzeniu.
	READZETTEL = "SVM_15_READZETTEL";			//Lepiej bym to przeczytal.
	WIESONICHT = "SVM_15_WIESONICHT";			//Dlaczego nie?
	WASMACHENWIRJETZT = "SVM_15_WASMACHENWIRJETZT";		//Co robimy teraz?
	WASISTDENNHIERLOS = "SVM_15_WASISTDENNHIERLOS";		//Co sie tu dzieje?
	WASMEINSTDU = "SVM_15_WASMEINSTDU";			//Co myslisz?
	WASISTDENN = "SVM_15_WASISTDENN";			//Co to jest sprawa?
	WASISTDAS = "SVM_15_WASISTDAS";				//Co to jest?
	WASISTZUTUN = "SVM_15_WASISTZUTUN";			//Co nalezy zrobic?
	WIESOLLICHVORGEHEN = "SVM_15_WIESOLLICHVORGEHEN";	//Co powinienem zrobic?
	KANNSTDUMIRWASBEIBRINGEN = "SVM_15_KANNSTDUMIRWASBEIBRINGEN";	//Czy mozesz mnie czegos nauczyc?
	WOFINDEICHIHN = "SVM_15_WOFINDEICHIHN";			//Gdzie moge go znalezc?
	WASMACHSTDUHIER = "SVM_15_WASMACHSTDUHIER";		//Co Pan tutaj robi?

	ALTERWALDMANN01 = "SVM_15_ALTERWALDMANN01";	//Hej, czy zdarza Ci sie wiedziec cos o opiekunie zwierzat i lasu, który ma mieszkac w lasach wokól Khoraty?
	ALTERWALDMANN02 = "SVM_15_ALTERWALDMANN02";	//Czy mozesz mi cos powiedziec o starym czlowieku z lasu?
	ALTERWALDMANN03 = "SVM_15_ALTERWALDMANN03";	//Czy wiesz cos o starym czlowieku z lasu?
	ALTERWALDMANN04 = "SVM_15_ALTERWALDMANN04";	//Co wiesz o starym czlowieku z lasu?
	ALTERWALDMANN05 = "SVM_15_ALTERWALDMANN05";	//Czy mozesz mi cos powiedziec o starym czlowieku z lasu?

	IRDORATHGEHTLOS = "SVM_15_IRDORATHGEHTLOS";	//Idzmy dalej. Czy odprowadzisz mnie na wyspe?
	IRDORATHGEHBACK = "SVM_15_IRDORATHGEHBACK";	//Wróc do statku.
	IRDORATHGEHBACK = "SVM_15_IRDORATHNOWAY";	//Hmm, to koniec linii. Czy mozna poruszac cos za pomoca dwóch dzwigni?
	IRDORATHGEHBACK = "SVM_15_IRDORATHHEBEL";	//Czy mozesz uzyc jednej dzwigni, gdy poruszam druga?
	IRDORATHGEHBACK = "SVM_15_IRDORATHHEBELPROBLEM";	//Damn go. Juz przesunalem druga dzwignie do góry. Bez pomocy towarzysza nie zadziala.


	// Kommentare zum Rüben ziehen

	RUEBE01_01	=	"SVM_15_RUEBE01_01";	//Ta rzepa jest jeszcze zbyt ciasna.
	RUEBE01_02	=	"SVM_15_RUEBE01_02";	//Wole raczej spróbowac gdzie indziej.
	RUEBE01_03	=	"SVM_15_RUEBE01_03";	//To tu nie zadziala.
	RUEBE02	=	"SVM_15_RUEBE02";	//Ta rzepa jest jeszcze zbyt ciasna.
	RUEBE03	=	"SVM_15_RUEBE03";	//Potrafie wyciagnac tysiac razy, marchewka jeszcze sie utknela.
	RUEBE04_01	=	"SVM_15_RUEBE04_01";	//Cos potrzasa.
	RUEBE04_02	=	"SVM_15_RUEBE04_02";	//Latwo jest ciagnac.
	RUEBE04_03	=	"SVM_15_RUEBE04_03";	//O jeden mniej.


	// Kommentar zum Umsehen

	LOOKFORSOMETHING	=	"SVM_15_LOOKFORSOMETHING";	//Lepiej byloby jeszcze raz spojrzec.

	// Blubber für den göttlichen Boten (Hund Adanos bzw. Baal Netbek)

	GODLYBOTE01	=	"SVM_15_GODLYBOTE01";	//Uh, nie sadze, zebys byl tym, z kim chce porozmawiac.
	GODLYBOTE02	=	"SVM_15_GODLYBOTE02";	//Ach, czy przez przypadek jestes boskim poslannikiem?

	// Kommentar, wenn Alvars Kristall gefunden wird

	ALVARKRISTALL01	=	"SVM_15_ALVARKRISTALL01";	//Cóz, co mamy tu do czynienia....
	ALVARKRISTALL02	=	"SVM_15_ALVARKRISTALL02";	//Tam idziesz, przepiekny magiczny krysztal.
	ALVARKRISTALL03	=	"SVM_15_ALVARKRISTALL03";	//.... nie jest to mozliwe. Jak ludzie moga byc tak niewidomi? Ale.... Co to jest?

	// Kommentar, wenn Buch über Eriskult gelesen

	ERISKULTBUCH01	=	"SVM_15_ERISKULTBUCH01";	//No cóz, to oczywiscie wiele wyjasnia. Wtedy przypuszczam, ze bede musial odzyskac krysztal..... Hmm, czy wyjasnienia na koncu moga byc pomocne podczas targowania.....

	// Kommentar zum Bücherregal

	BUECHERREGALFINDPAPER	=	"SVM_15_BUECHERREGALFINDPAPER";	//Ach, tu jest troche papieru....
	BUECHERREGALNO		=	"SVM_15_BUECHERREGALNO";	//Juz go przeszukalem.
	BUECHERREGALNOTHING	=	"SVM_15_BUECHERREGALNOTHING";	//Po prostu kurz i stare ksiazki....

	// Faule Äpfel unterjubeln

	PLACEAPFEL01	=	"SVM_15_PLACEAPFEL01";	//Czy cos sie po prostu poruszylo pod twoimi stopami?
	PLACEAPFEL02	=	"SVM_15_PLACEAPFEL02";	//Ach, to bylo nic.
	PLACEAPFEL03	=	"SVM_15_PLACEAPFEL03";	//Hej, nie szukaja go tam?
	PLACEAPFEL04	=	"SVM_15_PLACEAPFEL04";	//Och, musialem go pomylic.
	PLACEAPFEL05	=	"SVM_15_PLACEAPFEL05";	//Mile jablka, które tam masz....

	// Grüne Erzader hacken

	NOHACKE		=	"SVM_15_NOHACKE";	//Gdzie przeszedl mój motyk? Mysle, ze bede musial dostac kolejna.
	HACKESCHLECHT	=	"SVM_15_HACKESCHLECHT";	//Uh-huh. To jest trudne. Nie sadze, ze to dobry motyl. Moze powinienem porozmawiac z kowalem.

	// Wenn Fokus nicht einsetzbar

	FOKUSNICHTEINSETZEN		=	"SVM_15_FOKUSNICHTEINSETZEN";	//Najpierw powinienem porozmawiac z Saturami.

	// Plagenquest

	PLAGENQUEST01	=	"SVM_15_PLAGENQUEST01";	//Wydaje mi sie, ze potrzebujesz eksterminatora.
	PLAGENQUEST02	=	"SVM_15_PLAGENQUEST02";	//Czy istnieja jakies wskazówki co do przyczyn?
	PLAGENQUEST03	=	"SVM_15_PLAGENQUEST03";	//Czy moge byc do tego czasu uzyteczny?
	PLAGENQUEST04	=	"SVM_15_PLAGENQUEST04";	//... a teraz zaraza powrócila. Jak oni stali sie wtedy jej panem?
	PLAGENQUEST05	=	"SVM_15_PLAGENQUEST05";	//Klub chemiczny?
	PLAGENQUEST06	=	"SVM_15_PLAGENQUEST06";	//I czy taki klub jest jeszcze w waszym posiadaniu?
	PLAGENQUEST07	=	"SVM_15_PLAGENQUEST07";	//Czy moge je zobaczyc?
	PLAGENQUEST08	=	"SVM_15_PLAGENQUEST08";	//Hm....
	PLAGENQUEST09	=	"SVM_15_PLAGENQUEST09";	//Musze dostac potrzebne mi surowce.
	PLAGENQUEST10	=	"SVM_15_PLAGENQUEST10";	//Klub byl w stanie powstrzymac owady. Pokonalem ich wszystkich.
	PLAGENQUEST11	=	"SVM_15_PLAGENQUEST11";	//Pierwszy krok?
	PLAGENQUEST12	=	"SVM_15_PLAGENQUEST12";	//Duzy blad? Potem moge przejsc do wyszukiwania.....
	PLAGENQUEST13	=	"SVM_15_PLAGENQUEST13";	//Tak?
	PLAGENQUEST14	=	"SVM_15_PLAGENQUEST14";	//Uh-huh. Ale co daje Ci pewnosc, ze jest potomkiem? Mam na mysli, po tak wielu stuleciach....
	PLAGENQUEST15	=	"SVM_15_PLAGENQUEST15";	//Tak?
	PLAGENQUEST16	=	"SVM_15_PLAGENQUEST16";	//Hmph.....
	PLAGENQUEST17	=	"SVM_15_PLAGENQUEST17";	//To sie dzieje. Ogromny luk zostaje pokonany.

	// Herobotquest

	HEROBOTQUEST01	=	"SVM_15_HEROBOTQUEST01";	//Co sie dzieje?
	HEROBOTQUEST02	=	"SVM_15_HEROBOTQUEST02";	//Wtedy Andre nie zyje....

	// Ambis der Schwarzen Novizen

	AMBISNOV01	=	"SVM_15_AMBISNOV01";	//Kto jest tu odpowiedzialny?
	AMBISNOV03	=	"SVM_15_AMBISNOV03";	//Jakie sa interesujace miejsca?
	AMBISNOV04	=	"SVM_15_AMBISNOV04";	//Czy cos ciekawego zdarzylo sie ostatnio?

	// Gespräch mit Schürfern wegen "Ärger im Kessel"

	KESSELPROBLEM01	=	"SVM_15_KESSELPROBLEM01";	//Hej, slyszalem, ze groza ci dzikie zwierzeta i jeden z was zostal zabity.
	KESSELPROBLEM02	=	"SVM_15_KESSELPROBLEM02";	//I nikt niczego nie zauwazyl?
	KESSELPROBLEM03	=	"SVM_15_KESSELPROBLEM03";	//Co?

	// Anschlagtafel-Gespräche

	ANSCHLAGTAFEL01	=	"SVM_15_ANSCHLAGTAFEL01";	//Widzialem twój plakat na billboardzie....
	ANSCHLAGTAFEL02	=	"SVM_15_ANSCHLAGTAFEL02";	//Bede cie zalatwial.

	// Held probiert Sachen für Bierhexen-Quest

	SCHMECKTNORMAL	=	"SVM_15_SCHMECKTNORMAL";	//Mysle, ze to calkiem normalne.
	SCHMECKTECKLIG	=	"SVM_15_SCHMECKTECKLIG";	//Przez Adanosa to obrzydliwe!

	// Held sollte eingesammeltes Item benutzen

	SHOULDUSE	=	"SVM_15_SHOULDUSE";	//Blizej przyjrzec sie!

	// Held kennt Chromanin-Rätsel aus Vorgänger

	KNOWSRIDDLER	=	"SVM_15_KNOWSRIDDLER";	//Wydaje sie to jakos znajome...

	// Held riecht Tabak von Jackal

	SMELLTABAK	=	"SVM_15_SMELLTABAK";	//Tutaj pachnie jak wanilia i szafran.

	// Schlösser knacken

	PICKLOCKFAILURE	=	"SVM_15_PICKLOCKFAILURE";	//Szal, to sie zerwalo.....
	PICKLOCKBROKEN	=	"SVM_15_PICKLOCKBROKEN";	//f--- od poczatku.

	// Bücher nicht lesen können

	BOOKSTANDNOTREADABLE01	=	"SVM_15_BOOKSTANDNOTREADABLE01";	//Nie moge rozszyfrowac tych znaków.
	BOOKSTANDNOTREADABLE02	=	"SVM_15_BOOKSTANDNOTREADABLE02";	//Tu jest jakis robak. Ksiegozbiór.
	BOOKSTANDNOTREADABLE03	=	"SVM_15_BOOKSTANDNOTREADABLE03";	//Opowiesci bogów
	BOOKSTANDNOTREADABLE04	=	"SVM_15_BOOKSTANDNOTREADABLE04";	//Teksty o wspanialych magach i madrych mezczyznach
	BOOKSTANDNOTREADABLE05	=	"SVM_15_BOOKSTANDNOTREADABLE05";	//fauna i flora
	BOOKSTANDNOTREADABLE06	=	"SVM_15_BOOKSTANDNOTREADABLE06";	//Twory Magii 
	BOOKSTANDNOTREADABLE07	=	"SVM_15_BOOKSTANDNOTREADABLE07";	//Stwory nieumarle i Demoniczne
	BOOKSTANDNOTREADABLE08	=	"SVM_15_BOOKSTANDNOTREADABLE08";	//Wielkie bitwy
	BOOKSTANDNOTREADABLE09	=	"SVM_15_BOOKSTANDNOTREADABLE09";	//Czarodziejski swiat pomiedzy
	BOOKSTANDNOTREADABLE10	=	"SVM_15_BOOKSTANDNOTREADABLE10";	//Wielkie bankiety i festiwale
	BOOKSTANDNOTREADABLE11	=	"SVM_15_BOOKSTANDNOTREADABLE11";	//Opowiesci i historie
	BOOKSTANDNOTREADABLE12	=	"SVM_15_BOOKSTANDNOTREADABLE12";	//Stare tradycje
	BOOKSTANDNOTREADABLE13	=	"SVM_15_BOOKSTANDNOTREADABLE13";	//Cos na temat orzecznictwa i prawa
	BOOKSTANDNOTREADABLE14	=	"SVM_15_BOOKSTANDNOTREADABLE14";	//Cos na temat porzadku spolecznego i wspólnoty

	// Taschendiebstahl

	PICKPOCKET_BESCHIMPFEN	=	"SVM_15_PICKPOCKET_BESCHIMPFEN";	//Fuzowac.
	PICKPOCKET_BESTECHUNG	=	"SVM_15_PICKPOCKET_BESTECHUNG";		//Czy jest jakis sposób, w jaki mozemy wyeliminowac to nieporozumienie?
	PICKPOCKET_HERAUSREDEN	=	"SVM_15_PICKPOCKET_HERAUSREDEN";	//Nie mam pojecia, co pan ma na mysli.
};

instance SVM_16 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_16_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_16_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_16_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_16_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_16_Weather"						;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_16_IGetYouStill"				;//Moge Cie jeszcze dostac!
	DieEnemy					=	"SVM_16_DieEnemy"					;//Teraz Twoja kolej!
	DieMonster					=	"SVM_16_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_16_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_16_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_16_SheepKiller"					;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_16_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_16_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_16_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_16_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_16_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_16_ThenIBeatYouOutOfHere"		;//Wtedy bede musial cie wybic!
	WhatDidYouDoInThere			=	"SVM_16_WhatDidYouDoInThere"			;//Co tam robiles, huh?
	WillYouStopFighting			=	"SVM_16_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_16_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_16_EnemyKilled"				;//To dla ciebie, chlopak.
	MonsterKilled				=	"SVM_16_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_16_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_16_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_16_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_16_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_16_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_16_NeverHitMeAgain"				;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_16_YouBetterShouldHaveListened"	;//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_16_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_16_NeverEnterRoomAgain"			;//I ze juz nigdy cie tam juz nie zlapam?
	ThereIsNoFightingHere		=	"SVM_16_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja, dobra?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_16_RunAway"						;//Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_16_Alarm"					;//ALARM!
	Guards						=	"SVM_16_Guards"					;//WACHE!
	Help						=	"SVM_16_Help"					;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_16_GoodMonsterKill"			;//Dobrze!
	GoodKill					= 	"SVM_16_GoodKill"				;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_16_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_16_RunCoward"				;//Zatrzymaj sie tam, tchórz!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_16_GetOutOfHere"			;//Wyjdzcie stad z piekla!
	WhyAreYouInHere				=	"SVM_16_WhyAreYouInHere"		;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_16_YesGoOutOfHere"			;//Tak, wyciagnijcie z tego pieklo!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_16_WhatsThisSupposedToBe"	;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_16_YouDisturbedMySlumber"	;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_16_ITookYourGold"			;//Dziekujemy za zloto, bohater!
	ShitNoGold					=	"SVM_16_ShitNoGold"				;//Biedny draniesz, nie masz nawet zlota!
	ITakeYourWeapon				=	"SVM_16_ITakeYourWeapon"			;//Lepiej wziac pistolet!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_16_WhatAreYouDoing"			;//Ostroznie) Uwazaj! Znowu, a ja cie poczne na twarzy.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_16_LookingForTroubleAgain"	;//Jeszcze za malo?
	StopMagic					=	"SVM_16_StopMagic"				;//Zatrzymaj ten magiczny chwyt!
	ISaidStopMagic				=	"SVM_16_ISaidStopMagic"			;//Chcesz poncz? Zatrzymaj sie teraz!
	WeaponDown					=	"SVM_16_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_16_ISaidWeaponDown"		;//Odstaw pistolet!
	WiseMove					=	"SVM_16_WiseMove"				;//Inteligentny przyjaciel!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_16_NextTimeYoureInForIt"	;//Nastepnym razem zobaczymy....
	OhMyHead					=	"SVM_16_OhMyHead"				;//O Mezczyzna, glowa moja....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_16_TheresAFight"			;//(chwycenie) Ah, walka!
	OhMyGodItsAFight			=	"SVM_16_OhMyGodItsAFight"		;//Mój Boze, walka!
	GoodVictory					=	"SVM_16_GoodVictory"			;//Pokazales go!
	NotBad						= 	"SVM_16_NotBad"					;//(pogniwianie) Nie zly....
	OhMyGodHesDown				=	"SVM_16_OhMyGodHesDown"			;//(do samego siebie) Mój Boze! Jak brutalne....
	CheerFriend01				=	"SVM_16_CheerFriend01"			;//Uderz w nie!
	CheerFriend02				=	"SVM_16_CheerFriend02"			;//Pokaz go!
	CheerFriend03				=	"SVM_16_CheerFriend03"			;//Zakoncz go!
	Ooh01						=	"SVM_16_Ooh01"					;//Uderz go z powrotem!
	Ooh02						=	"SVM_16_Ooh02"					;//Uwazaj!
	Ooh03						=	"SVM_16_Ooh03"					;//Och! To zaszkodzilo!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_16_WhatWasThat"				;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_16_GetOutOfMyBed"			;//To jest moje lózko!
	Awake						= "SVM_16_Awake"					;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_16_GOLD_1000"					;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_16_GOLD_950"					;//950 sztuk zlota.
	GOLD_900					= "SVM_16_GOLD_900"					;//900 sztuk zlota.
	GOLD_850					= "SVM_16_GOLD_850"					;//850 sztuk zlota.
	GOLD_800					= "SVM_16_GOLD_800"					;//800 sztuk zlota.
	GOLD_750					= "SVM_16_GOLD_750"					;//750 sztuk zlota.
	GOLD_700					= "SVM_16_GOLD_700"					;//700 sztuk zlota.
	GOLD_650					= "SVM_16_GOLD_650"					;//650 sztuk zlota.
	GOLD_600					= "SVM_16_GOLD_600"					;//600 sztuk zlota.
	GOLD_550					= "SVM_16_GOLD_550"					;//550 sztuk zlota.
	GOLD_500					= "SVM_16_GOLD_500"					;//500 sztuk zlota.
	GOLD_450					= "SVM_16_GOLD_450"					;//450 sztuk zlota.
	GOLD_400					= "SVM_16_GOLD_400"					;//400 sztuk zlota.
	GOLD_350					= "SVM_16_GOLD_350"					;//350 sztuk zlota.
	GOLD_300					= "SVM_16_GOLD_300"					;//300 sztuk zlota.
	GOLD_250					= "SVM_16_GOLD_250"					;//250 sztuk zlota.
	GOLD_200					= "SVM_16_GOLD_200"					;//200 sztuk zlota.
	GOLD_150					= "SVM_16_GOLD_150"					;//150 sztuk zlota.
	GOLD_100					= "SVM_16_GOLD_100"					;//100 sztuk zlota.
	GOLD_90						= "SVM_16_GOLD_90"					;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_16_GOLD_80"					;//80 sztuk zlota.
	GOLD_70						= "SVM_16_GOLD_70"					;//70 sztuk zlota.
	GOLD_60						= "SVM_16_GOLD_60"					;//60 sztuk zlota.
	GOLD_50						= "SVM_16_GOLD_50"					;//50 sztuk zlota.
	GOLD_40						= "SVM_16_GOLD_40"					;//40 sztuk zlota.
	GOLD_30						= "SVM_16_GOLD_30"					;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_16_GOLD_20"					;//20 sztuk zlota.
	GOLD_10						= "SVM_16_GOLD_10"					;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_16_Smalltalk01"				;//... naprawde? To ciekawe....
	Smalltalk02					= "SVM_16_Smalltalk02"				;//... Nie wierze w to......
	Smalltalk03					= "SVM_16_Smalltalk03"				;//... Mój maz tak nie widzi....
	Smalltalk04					= "SVM_16_Smalltalk04"				;//... Och, nie mów mi tego.....
	Smalltalk05					= "SVM_16_Smalltalk05"				;//... Szczerze mówiac, widzialem to dla siebie....
	Smalltalk06					= "SVM_16_Smalltalk06"				;//... czego nie mówisz......
	Smalltalk07					= "SVM_16_Smalltalk07"				;//... nie mozesz nikomu nic powiedziec......
	Smalltalk08					= "SVM_16_Smalltalk08"				;//... to sa trudne czasy.....
	Smalltalk09					= "SVM_16_Smalltalk09"				;//... kto mówi cos takiego?
	Smalltalk10					= "SVM_16_Smalltalk10"				;//... jesli nie widzialem tego na wlasne oczy....
	Smalltalk11					= "SVM_16_Smalltalk11"				;//... Ktos musi wykonac prace......
	Smalltalk12					= "SVM_16_Smalltalk12"				;//... Slyszalem cos innego.....
	Smalltalk13					= "SVM_16_Smalltalk13"				;//... jest to znów typowe.....
	Smalltalk14					= "SVM_16_Smalltalk14"				;//... Wciaz wszystko mówi....
	Smalltalk15					= "SVM_16_Smalltalk15"				;//... lepiej zamknac usta....
	Smalltalk16					= "SVM_16_Smalltalk16"				;//... pracuje równiez przez caly dzien......
	Smalltalk17					= "SVM_16_Smalltalk17"				;//... czym jeszcze mam sie zajac?
	Smalltalk18					= "SVM_16_Smalltalk18"				;//... po prostu mówi zbyt wiele....
	Smalltalk19					= "SVM_16_Smalltalk19"				;//... nie jest juz tajemnica....
	Smalltalk20					= "SVM_16_Smalltalk20"				;//... wszyscy wiedza, ze do dzis.....
	Smalltalk21					= "SVM_16_Smalltalk21"				;//... Nie bede ci nic mówic....
	Smalltalk22					= "SVM_16_Smalltalk22"				;//... i staje sie znacznie gorzej....
	Smalltalk23					= "SVM_16_Smalltalk23"				;//... To okropne!
	Smalltalk24					= "SVM_16_Smalltalk24"				;//... Zawsze mówilem, ze......
	SmalltalkKhorataAnnaQuest01			= "SVM_16_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_16_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_16_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_16_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_16_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_16_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_16_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_16_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_16_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_16_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_16_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_16_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_16_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_16_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_16_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_16_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_16_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_16_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_16_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_16_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_16_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_16_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_16_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_16_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_16_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_16_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_16_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_16_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_16_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_16_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_16_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_16_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_16_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_16_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_16_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_16_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_16_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_16_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_16_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_16_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_16_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_16_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_16_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_16_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_16_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_16_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_16_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_16_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_16_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_16_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_16_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_16_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_16_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_16_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_16_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_16_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_16_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_16_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	// Khorinis

	SmalltalkRangar01			= "SVM_16_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_16_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_16_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_16_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_16_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_16_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_16_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_16_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_16_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_16_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_16_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_16_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_16_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_16_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_16_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_16_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_16_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_16_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_16_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_16_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_16_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_16_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_16_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_16_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_16_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_16_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_16_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_16_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_16_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_16_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_16_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_16_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_16_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_16_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_16_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_16_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_16_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_16_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_16_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_16_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_16_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_16_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_16_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_16_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_16_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_16_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_16_Addon_WrongArmor";				//Zalóz cos rozsadnego. Nie chce byc z wami tak samo widoczny.
	
	ADDON_DIEBANDIT				= "SVM_16_ADDON_DIEBANDIT";				//EIN BANDIT!
	ADDON_DIRTYPIRATE			= "SVM_16_ADDON_DIRTYPIRATE";			//EIN PIRAT!

	NoLearnGold			= "SVM_16_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_16_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_16_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_16_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_16_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_16_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_16_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_16_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_16_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_16_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_16_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_16_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_16_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_16_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_16_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_16_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_16_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_16_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_16_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_16_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_16_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_16_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_16_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_16_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_16_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_16_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_16_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_16_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_16_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_16_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_16_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_16_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_16_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_16_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_16_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_16_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_16_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_16_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_16_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_16_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_16_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_16_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_16_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_16_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_16_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_17 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_17_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_17_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_17_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_17_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_17_Weather"						;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_17_IGetYouStill"				;//Moge Cie jeszcze dostac!
	DieEnemy					=	"SVM_17_DieEnemy"					;//Teraz Twoja kolej!
	DieMonster					=	"SVM_17_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_17_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_17_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_17_SheepKiller"					;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_17_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_17_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_17_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_17_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_17_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_17_ThenIBeatYouOutOfHere"		;//Wtedy bede musial cie wybic!
	WhatDidYouDoInThere			=	"SVM_17_WhatDidYouDoInThere"			;//Co tam robiles, huh?
	WillYouStopFighting			=	"SVM_17_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_17_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_17_EnemyKilled"				;//To dla ciebie, chlopak.
	MonsterKilled				=	"SVM_17_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_17_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_17_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_17_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_17_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_17_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_17_NeverHitMeAgain"				;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_17_YouBetterShouldHaveListened"	;//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_17_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_17_NeverEnterRoomAgain"			;//I ze juz nigdy cie tam juz nie zlapam!
	ThereIsNoFightingHere		=	"SVM_17_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_17_RunAway"						;//Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_17_Alarm"					;//ALARM!
	Guards						=	"SVM_17_Guards"					;//WACHE!
	Help						=	"SVM_17_Help"					;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_17_GoodMonsterKill"			;//Dobrze!
	GoodKill					= 	"SVM_17_GoodKill"				;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_17_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_17_RunCoward"				;//Zatrzymaj sie tam, tchórz!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_17_GetOutOfHere"			;//Wyjdzcie stad z piekla!
	WhyAreYouInHere				=	"SVM_17_WhyAreYouInHere"		;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_17_YesGoOutOfHere"			;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_17_WhatsThisSupposedToBe"	;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_17_YouDisturbedMySlumber"	;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_17_ITookYourGold"			;//Dziekujemy za zloto, bohater!
	ShitNoGold					=	"SVM_17_ShitNoGold"				;//Biedny draniesz, nie masz nawet zlota!
	ITakeYourWeapon				=	"SVM_17_ITakeYourWeapon"			;//Lepiej wziac pistolet!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_17_WhatAreYouDoing"			;//Ostroznie) Uwazaj! Jeszcze raz i trafie cie.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_17_LookingForTroubleAgain"	;//Jeszcze za malo?
	StopMagic					=	"SVM_17_StopMagic"				;//Zatrzymaj ten magiczny chwyt!
	ISaidStopMagic				=	"SVM_17_ISaidStopMagic"			;//Chcesz poncz? Zatrzymaj sie teraz!
	WeaponDown					=	"SVM_17_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_17_ISaidWeaponDown"		;//Odstaw pistolet!
	WiseMove					=	"SVM_17_WiseMove"				;//Inteligentny przyjaciel!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_17_NextTimeYoureInForIt"	;//Nastepnym razem zobaczymy....
	OhMyHead					=	"SVM_17_OhMyHead"				;//O Mezczyzna, glowa moja....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_17_TheresAFight"			;//(chwycenie) Ah, walka!
	OhMyGodItsAFight			=	"SVM_17_OhMyGodItsAFight"		;//Mój Boze, walka!
	GoodVictory					=	"SVM_17_GoodVictory"			;//Pokazales go!
	NotBad						= 	"SVM_17_NotBad"					;//(pogniwianie) Nie zly....
	OhMyGodHesDown				=	"SVM_17_OhMyGodHesDown"			;//(do samego siebie) Mój Boze! Jak brutalne....
	CheerFriend01				=	"SVM_17_CheerFriend01"			;//Uderz w nie!
	CheerFriend02				=	"SVM_17_CheerFriend02"			;//Pokaz go!
	CheerFriend03				=	"SVM_17_CheerFriend03"			;//Zakoncz go!
	Ooh01						=	"SVM_17_Ooh01"					;//Uderz go z powrotem!
	Ooh02						=	"SVM_17_Ooh02"					;//Uwazaj!
	Ooh03						=	"SVM_17_Ooh03"					;//Och! To zaszkodzilo!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_17_WhatWasThat"				;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_17_GetOutOfMyBed"			;//Wejsc z lózka!
	Awake						= "SVM_17_Awake"					;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_17_GOLD_1000"					;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_17_GOLD_950"					;//950 sztuk zlota.
	GOLD_900					= "SVM_17_GOLD_900"					;//900 sztuk zlota.
	GOLD_850					= "SVM_17_GOLD_850"					;//850 sztuk zlota.
	GOLD_800					= "SVM_17_GOLD_800"					;//800 sztuk zlota.
	GOLD_750					= "SVM_17_GOLD_750"					;//750 sztuk zlota.
	GOLD_700					= "SVM_17_GOLD_700"					;//700 sztuk zlota.
	GOLD_650					= "SVM_17_GOLD_650"					;//650 sztuk zlota.
	GOLD_600					= "SVM_17_GOLD_600"					;//600 sztuk zlota.
	GOLD_550					= "SVM_17_GOLD_550"					;//550 sztuk zlota.
	GOLD_500					= "SVM_17_GOLD_500"					;//500 sztuk zlota.
	GOLD_450					= "SVM_17_GOLD_450"					;//450 sztuk zlota.
	GOLD_400					= "SVM_17_GOLD_400"					;//400 sztuk zlota.
	GOLD_350					= "SVM_17_GOLD_350"					;//350 sztuk zlota.
	GOLD_300					= "SVM_17_GOLD_300"					;//300 sztuk zlota.
	GOLD_250					= "SVM_17_GOLD_250"					;//250 sztuk zlota.
	GOLD_200					= "SVM_17_GOLD_200"					;//200 sztuk zlota.
	GOLD_150					= "SVM_17_GOLD_150"					;//150 sztuk zlota.
	GOLD_100					= "SVM_17_GOLD_100"					;//100 sztuk zlota.
	GOLD_90						= "SVM_17_GOLD_90"					;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_17_GOLD_80"					;//80 sztuk zlota.
	GOLD_70						= "SVM_17_GOLD_70"					;//70 sztuk zlota.
	GOLD_60						= "SVM_17_GOLD_60"					;//60 sztuk zlota.
	GOLD_50						= "SVM_17_GOLD_50"					;//50 sztuk zlota.
	GOLD_40						= "SVM_17_GOLD_40"					;//40 sztuk zlota.
	GOLD_30						= "SVM_17_GOLD_30"					;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_17_GOLD_20"					;//20 sztuk zlota.
	GOLD_10						= "SVM_17_GOLD_10"					;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_17_Smalltalk01"				;//... naprawde? To ciekawe....
	Smalltalk02					= "SVM_17_Smalltalk02"				;//... Nie wierze w to......
	Smalltalk03					= "SVM_17_Smalltalk03"				;//... Mój maz inaczej to widzi.....
	Smalltalk04					= "SVM_17_Smalltalk04"				;//... Och, nie mów mi tego.....
	Smalltalk05					= "SVM_17_Smalltalk05"				;//... Szczerze mówiac, widzialem to dla siebie....
	Smalltalk06					= "SVM_17_Smalltalk06"				;//... czego nie mówisz......
	Smalltalk07					= "SVM_17_Smalltalk07"				;//... nie mozesz nikomu nic powiedziec......
	Smalltalk08					= "SVM_17_Smalltalk08"				;//... to sa trudne czasy.....
	Smalltalk09					= "SVM_17_Smalltalk09"				;//... kto to mówi? ...
	Smalltalk10					= "SVM_17_Smalltalk10"				;//... jesli nie widzialem tego na wlasne oczy....
	Smalltalk11					= "SVM_17_Smalltalk11"				;//... Ktos musi wykonac prace......
	Smalltalk12					= "SVM_17_Smalltalk12"				;//... Slyszalem cos innego.....
	Smalltalk13					= "SVM_17_Smalltalk13"				;//... jest to znów typowe.....
	Smalltalk14					= "SVM_17_Smalltalk14"				;//... on mówi wszystko inne.....
	Smalltalk15					= "SVM_17_Smalltalk15"				;//... lepiej zamknac usta....
	Smalltalk16					= "SVM_17_Smalltalk16"				;//... pracuje równiez przez caly dzien......
	Smalltalk17					= "SVM_17_Smalltalk17"				;//... czym jeszcze mam sie zajac?
	Smalltalk18					= "SVM_17_Smalltalk18"				;//... po prostu mówi zbyt wiele....
	Smalltalk19					= "SVM_17_Smalltalk19"				;//... nie jest juz tajemnica....
	Smalltalk20					= "SVM_17_Smalltalk20"				;//... wszyscy wiedza, ze do dzis.....
	Smalltalk21					= "SVM_17_Smalltalk21"				;//... Nie bede ci nic mówic....
	Smalltalk22					= "SVM_17_Smalltalk22"				;//... i staje sie znacznie gorzej....
	Smalltalk23					= "SVM_17_Smalltalk23"				;//... To okropne!
	Smalltalk24					= "SVM_17_Smalltalk24"				;//... Zawsze mówilem, ze......
	SmalltalkKhorataAnnaQuest01			= "SVM_17_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_17_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_17_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_17_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_17_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_17_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_17_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_17_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_17_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_17_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_17_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_17_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_17_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_17_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_17_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_17_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_17_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_17_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_17_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_17_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_17_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_17_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_17_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_17_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_17_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_17_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_17_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_17_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_17_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_17_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_17_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_17_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_17_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_17_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_17_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_17_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_17_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_17_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_17_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_17_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_17_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_17_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_17_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_17_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_17_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_17_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_17_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_17_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_17_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_17_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_17_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_17_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_17_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_17_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_17_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_17_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_17_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_17_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	// Khorinis

	SmalltalkRangar01			= "SVM_17_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_17_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_17_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_17_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_17_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_17_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_17_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_17_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_17_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_17_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_17_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_17_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_17_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_17_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_17_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_17_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_17_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_17_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_17_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_17_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_17_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_17_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_17_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_17_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_17_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_17_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_17_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_17_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_17_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_17_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_17_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_17_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_17_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_17_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_17_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_17_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_17_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_17_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_17_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_17_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_17_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_17_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_17_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_17_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_17_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_17_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------

	NoLearnGold			= "SVM_17_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_17_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_17_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_17_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_17_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_17_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_17_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_17_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_17_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_17_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_17_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_17_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_17_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_17_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_17_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_17_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_17_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_17_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_17_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_17_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_17_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_17_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_17_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_17_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_17_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_17_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_17_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_17_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_17_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_17_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_17_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_17_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_17_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_17_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_17_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_17_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_17_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_17_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_17_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_17_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_17_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_17_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_17_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_17_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_17_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
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
	DieEnemy     	= "SVM_19_DieEnemy"     	;//On jest!
	RunCoward    	= "SVM_19_RunCoward"    	;//Jestesmy z nami!
	Dead      		= "SVM_19_Dead"      	;//Aaaaaaaaarglas!
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
	SmalltalkDragon01	= "SVM_21_SmalltalkDragon01"; //Tak, biegali jak króliki.
	SmalltalkDragon02	= "SVM_21_SmalltalkDragon02"; //Jednak cala welna tak naprawde uderza w mój zoladek.
	SmalltalkDragon03	= "SVM_21_SmalltalkDragon03"; //Mam nadzieje, ze nie zaparcie i zgaga.
	SmalltalkDragon04	= "SVM_21_SmalltalkDragon04"; //Czesc blotnistych kaluz pomoze mi odzyskac trawienie.
	SmalltalkDragon05	= "SVM_21_SmalltalkDragon05"; //Pies na deser byl dosc ciezki.
	SmalltalkDragon06	= "SVM_21_SmalltalkDragon06"; //Zywnosc nie jest juz tym, czym bylo 5000 lat temu.
	SmalltalkDragon07	= "SVM_21_SmalltalkDragon07"; //Jeden z krasnali strzelil strzal w moja lape.
	SmalltalkDragon08	= "SVM_21_SmalltalkDragon08"; //Pieczylam go raz.
	SmalltalkDragon09	= "SVM_21_SmalltalkDragon09"; //Pozostali uciekli bardzo szybko.
	SmalltalkDragon10	= "SVM_21_SmalltalkDragon10"; //Tak, po 5000 latach ciszy.
	SmalltalkDragon11	= "SVM_21_SmalltalkDragon11"; //Zawsze musial mówic we snie.
	SmalltalkDragon12	= "SVM_21_SmalltalkDragon12"; //I trujace stworzenie, które pilnowalo jego jaj, wreszcie sie pozbylismy.
	SmalltalkDragon13	= "SVM_21_SmalltalkDragon13"; //Tak, i dziekuje magii tego nieumarlego czlowieka.
	
};

INSTANCE SVM_22 (C_SVM)
{
	SmalltalkDragon01	= "SVM_22_SmalltalkDragon01"; //Tak, biegali jak króliki.
	SmalltalkDragon02	= "SVM_22_SmalltalkDragon02"; //Jednak cala welna tak naprawde uderza w mój zoladek.
	SmalltalkDragon03	= "SVM_22_SmalltalkDragon03"; //Mam nadzieje, ze nie zaparcie i zgaga.
	SmalltalkDragon04	= "SVM_22_SmalltalkDragon04"; //Czesc blotnistych kaluz pomoze mi odzyskac trawienie.
	SmalltalkDragon05	= "SVM_22_SmalltalkDragon05"; //Pies na deser byl dosc ciezki.
	SmalltalkDragon06	= "SVM_22_SmalltalkDragon06"; //Zywnosc nie jest juz tym, czym bylo 5000 lat temu.
	SmalltalkDragon07	= "SVM_22_SmalltalkDragon07"; //Jeden z krasnali strzelil strzal w moja lape.
	SmalltalkDragon08	= "SVM_22_SmalltalkDragon08"; //Pieczylam go raz.
	SmalltalkDragon09	= "SVM_22_SmalltalkDragon09"; //Pozostali uciekli bardzo szybko.
	SmalltalkDragon10	= "SVM_22_SmalltalkDragon10"; //Tak, po 5000 latach ciszy.
	SmalltalkDragon11	= "SVM_22_SmalltalkDragon11"; //Zawsze musial mówic we snie.
	SmalltalkDragon12	= "SVM_22_SmalltalkDragon12"; //I trujace stworzenie, które pilnowalo jego jaj, wreszcie sie pozbylismy.
	SmalltalkDragon13	= "SVM_22_SmalltalkDragon13"; //Tak, i dziekuje magii tego nieumarlego czlowieka.
	
};

INSTANCE SVM_23 (C_SVM)
{
	SmalltalkDragon01	= "SVM_23_SmalltalkDragon01"; //Tak, biegali jak króliki.
	SmalltalkDragon02	= "SVM_23_SmalltalkDragon02"; //Jednak cala welna tak naprawde uderza w mój zoladek.
	SmalltalkDragon03	= "SVM_23_SmalltalkDragon03"; //Mam nadzieje, ze nie zaparcie i zgaga.
	SmalltalkDragon04	= "SVM_23_SmalltalkDragon04"; //Czesc blotnistych kaluz pomoze mi odzyskac trawienie.
	SmalltalkDragon05	= "SVM_23_SmalltalkDragon05"; //Pies na deser byl dosc ciezki.
	SmalltalkDragon06	= "SVM_23_SmalltalkDragon06"; //Zywnosc nie jest juz tym, czym bylo 5000 lat temu.
	SmalltalkDragon07	= "SVM_23_SmalltalkDragon07"; //Jeden z krasnali strzelil strzal w moja lape.
	SmalltalkDragon08	= "SVM_23_SmalltalkDragon08"; //Pieczylam go raz.
	SmalltalkDragon09	= "SVM_23_SmalltalkDragon09"; //Pozostali uciekli bardzo szybko.
	SmalltalkDragon10	= "SVM_23_SmalltalkDragon10"; //Tak, po 5000 latach ciszy.
	SmalltalkDragon11	= "SVM_23_SmalltalkDragon11"; //Zawsze musial mówic we snie.
	SmalltalkDragon12	= "SVM_23_SmalltalkDragon12"; //I trujace stworzenie, które pilnowalo jego jaj, wreszcie sie pozbylismy.
	SmalltalkDragon13	= "SVM_23_SmalltalkDragon13"; //Tak, i dziekuje magii tego nieumarlego czlowieka.
	
};

instance SVM_24 (C_SVM)
{
	SC_HeyWaitASecond			= 	"SVM_24_Addon_HeyWaitASecond"			;//Krzyki!
	
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_24_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_24_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_24_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_24_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_24_Weather"						;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_24_IGetYouStill"				;//Moge Cie jeszcze dostac!
	DieEnemy					=	"SVM_24_DieEnemy"					;//Teraz Twoja kolej!
	DieMonster					=	"SVM_24_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_24_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_24_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_24_SheepKiller"					;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_24_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_24_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_24_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_24_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_24_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_24_ThenIBeatYouOutOfHere"		;//Wtedy bede musial cie wybic!
	WhatDidYouDoInThere			=	"SVM_24_WhatDidYouDoInThere"			;//Co tam robiles, huh?
	WillYouStopFighting			=	"SVM_24_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_24_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_24_EnemyKilled"					;//To jest wlasnie dla Ciebie, punk.
	Berzerk						=	"SVM_24_Berzerk"						;//UUAARRGHHHHH!
	MonsterKilled				=	"SVM_24_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_24_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_24_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_24_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_24_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_24_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_24_NeverHitMeAgain"				;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_24_YouBetterShouldHaveListened"	;//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_24_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_24_NeverEnterRoomAgain"			;//I ze juz nigdy cie tam juz nie zlapam!
	ThereIsNoFightingHere		=	"SVM_24_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_24_RunAway"						;//Wyobraz sobie! Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_24_Alarm"						;//ALARM!
	Guards						=	"SVM_24_Guards"						;//WACHE!
	Help						=	"SVM_24_Help"						;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_24_GoodMonsterKill"				;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_24_GoodKill"					;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_24_NOTNOW"						;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_24_RunCoward"					;//Stoisz nieruchomo, rajd!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_24_GetOutOfHere"				;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_24_WhyAreYouInHere"				;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_24_YesGoOutOfHere"				;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_24_WhatsThisSupposedToBe"		;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_24_YouDisturbedMySlumber"		;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_24_ITookYourGold"				;//Zloto! To juz moja kopalnia.....
	ShitNoGold					=	"SVM_24_ShitNoGold"					;//Nie masz nawet zlota?
	ITakeYourWeapon				=	"SVM_24_ITakeYourWeapon"				;//Lepiej bym zabral ze soba bron.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_24_WhatAreYouDoing"				;//Ostrzezenie) Hej! Uwazaj!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_24_LookingForTroubleAgain"		;//(agresywny) Nie masz jeszcze wystarczajaco duzo?
	StopMagic					=	"SVM_24_StopMagic"					;//Idz z magia!
	ISaidStopMagic				=	"SVM_24_ISaidStopMagic"				;//Pozbadz sie magii! Czy slyszysz zle?
	WeaponDown					=	"SVM_24_WeaponDown"					;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_24_ISaidWeaponDown"				;//Czy nie slyszysz dobrze? Powiedzialem, ze odlozylem pistolet!
	WiseMove					=	"SVM_24_WiseMove"					;//Idziesz tam, tam idzcie!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_24_NextTimeYoureInForIt"		;//Nadal mówimy o.....
	OhMyHead					=	"SVM_24_OhMyHead"					;//(do siebie) Oh, moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_24_TheresAFight"				;//Wejdzmy do biznesu!
	OhMyGodItsAFight			=	"SVM_24_OhMyGodItsAFight"			;//Oni rozbija czaszki w....
	GoodVictory					=	"SVM_24_GoodVictory"					;//Na to on zasluguje.
	NotBad						= 	"SVM_24_NotBad"						;//(pogniwianie) Nie takie zle....
	OhMyGodHesDown				=	"SVM_24_OhMyGodHesDown"				;//(do siebie) Jaki brutalny facet....
	CheerFriend01				=	"SVM_24_CheerFriend01"				;//Tak, to tak!
	CheerFriend02				=	"SVM_24_CheerFriend02"				;//Chodzcie dalej, odejdzmy!
	CheerFriend03				=	"SVM_24_CheerFriend03"				;//Pozostan na szczycie!
	Ooh01						=	"SVM_24_Ooh01"						;//Nie poddawaj sie niczemu!
	Ooh02						=	"SVM_24_Ooh02"						;//Jestes gonna!
	Ooh03						=	"SVM_24_Ooh03"						;//Nie moge w to uwierzyc!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_24_WhatWasThat"					;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_24_GetOutOfMyBed"					;//Wejsc z lózka!
	Awake						= "SVM_24_Awake"							;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_24_TOUGHGUY_ATTACKLOST"			;//To wszystko jest w porzadku, wygrasz. Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_24_TOUGHGUY_ATTACKWON"			;//Czy musze ponownie pokazac ci, kim jest Pan?
	TOUGHGUY_PLAYERATTACK		= "SVM_24_TOUGHGUY_PLAYERATTACK"			;//Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_24_GOLD_1000"						;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_24_GOLD_950"						;//950 sztuk zlota.
	GOLD_900					= "SVM_24_GOLD_900"						;//900 sztuk zlota.
	GOLD_850					= "SVM_24_GOLD_850"						;//850 sztuk zlota.
	GOLD_800					= "SVM_24_GOLD_800"						;//800 sztuk zlota.
	GOLD_750					= "SVM_24_GOLD_750"						;//750 sztuk zlota.
	GOLD_700					= "SVM_24_GOLD_700"						;//700 sztuk zlota.
	GOLD_650					= "SVM_24_GOLD_650"						;//650 sztuk zlota.
	GOLD_600					= "SVM_24_GOLD_600"						;//600 sztuk zlota.
	GOLD_550					= "SVM_24_GOLD_550"						;//550 sztuk zlota.
	GOLD_500					= "SVM_24_GOLD_500"						;//500 sztuk zlota.
	GOLD_450					= "SVM_24_GOLD_450"						;//450 sztuk zlota.
	GOLD_400					= "SVM_24_GOLD_400"						;//400 sztuk zlota.
	GOLD_350					= "SVM_24_GOLD_350"						;//350 sztuk zlota.
	GOLD_300					= "SVM_24_GOLD_300"						;//300 sztuk zlota.
	GOLD_250					= "SVM_24_GOLD_250"						;//250 sztuk zlota.
	GOLD_200					= "SVM_24_GOLD_200"						;//200 sztuk zlota.
	GOLD_150					= "SVM_24_GOLD_150"						;//150 sztuk zlota.
	GOLD_100					= "SVM_24_GOLD_100"						;//100 sztuk zlota.
	GOLD_90						= "SVM_24_GOLD_90"						;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_24_GOLD_80"						;//80 sztuk zlota.
	GOLD_70						= "SVM_24_GOLD_70"						;//70 sztuk zlota.
	GOLD_60						= "SVM_24_GOLD_60"						;//60 sztuk zlota.
	GOLD_50						= "SVM_24_GOLD_50"						;//50 sztuk zlota.
	GOLD_40						= "SVM_24_GOLD_40"						;//40 sztuk zlota.
	GOLD_30						= "SVM_24_GOLD_30"						;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_24_GOLD_20"						;//20 sztuk zlota.
	GOLD_10						= "SVM_24_GOLD_10"						;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_24_Smalltalk01"					;//... Czy naprawde wierzysz, ze....
	Smalltalk02					= "SVM_24_Smalltalk02"					;//... jest wszystko mozliwe.....
	Smalltalk03					= "SVM_24_Smalltalk03"					;//... powinien byl wiedziec lepiej......
	Smalltalk04					= "SVM_24_Smalltalk04"					;//... jakbym nie mial juz dosc problemów.....
	Smalltalk05					= "SVM_24_Smalltalk05"					;//... kto mówi takie cos.....
	Smalltalk06					= "SVM_24_Smalltalk06"					;//... jest jeszcze wiecej klopotów......
	Smalltalk07					= "SVM_24_Smalltalk07"					;//... wiele do powiedzenia.....
	Smalltalk08					= "SVM_24_Smalltalk08"					;//... Nie zrobilbym tego.....
	Smalltalk09					= "SVM_24_Smalltalk09"					;//... To tylko pogloski....
	Smalltalk10					= "SVM_24_Smalltalk10"					;//... musisz tylko uwazac, co mówisz ludziom....
	Smalltalk11					= "SVM_24_Smalltalk11"					;//... Móglbym panstwu to powiedziec wczesniej.....
	Smalltalk12					= "SVM_24_Smalltalk12"					;//... Nikt mnie nie pyta....
	Smalltalk13					= "SVM_24_Smalltalk13"					;//... Mozna zalowac biednego faceta....
	Smalltalk14					= "SVM_24_Smalltalk14"					;//... nie jest to nic nowego....
	Smalltalk15					= "SVM_24_Smalltalk15"					;//... to oczywiste....
	Smalltalk16					= "SVM_24_Smalltalk16"					;//... nie musisz mnie o to pytac......
	Smalltalk17					= "SVM_24_Smalltalk17"					;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_24_Smalltalk18"					;//... znasz juz moja opinie.....
	Smalltalk19					= "SVM_24_Smalltalk19"					;//... Tak wlasnie powiedzialem.....
	Smalltalk20					= "SVM_24_Smalltalk20"					;//... Nigdy sie tego nie zmieni.....
	Smalltalk21					= "SVM_24_Smalltalk21"					;//... dlaczego nie dowiedzialem sie o tym do tej pory.....
	Smalltalk22					= "SVM_24_Smalltalk22"					;//... poczekajmy i zobaczmy, co sie dzieje....
	Smalltalk23					= "SVM_24_Smalltalk23"					;//... niektóre problemy rozwiazywane sa samodzielnie......
	Smalltalk24					= "SVM_24_Smalltalk24"					;//... Juz nie slysze....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_24_Smalltalk25"					;//... Pijany jak pieklo....
	Smalltalk26					= "SVM_24_Smalltalk26"					;//... Nie mozesz to zrobic ze mna......
	Smalltalk27					= "SVM_24_Smalltalk27"					;//... wszystkie biegly jak króliki, bylem samotny......
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_24_Smalltalk28"					;//... Tak wiec mówi ona w Pismie swietym....[...].
	Smalltalk29					= "SVM_24_Smalltalk29"					;//... Zawsze dzialam w imieniu Innosa....
	Smalltalk30					= "SVM_24_Smalltalk30"					;//... nikt nie moze naruszac boskiego porzadku......
	SmalltalkKhorataAnnaQuest01			= "SVM_24_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_24_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_24_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_24_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_24_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_24_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_24_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_24_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_24_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_24_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_24_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_24_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_24_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_24_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_24_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_24_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_24_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_24_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_24_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_24_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_24_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_24_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_24_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_24_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_24_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_24_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_24_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_24_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_24_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_24_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_24_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_24_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_24_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_24_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_24_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_24_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_24_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_24_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_24_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_24_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_24_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_24_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_24_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_24_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_24_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_24_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_24_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_24_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_24_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_24_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_24_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_24_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_24_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_24_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_24_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_24_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_24_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_24_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_24_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_24_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_24_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_24_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_24_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_24_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_24_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_24_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_24_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_24_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_24_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_24_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_24_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_24_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_24_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_24_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_24_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_24_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_24_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_24_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...

	// Dämonenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_24_SmalltalkDMRBelagerungAbdi01"; //... Szczerze mówiac, nie przykro mi tych dwóch osób....
	SmalltalkDMRBelagerungAbdi02			= "SVM_24_SmalltalkDMRBelagerungAbdi02"; //... chcialby wiedziec, kto zabija ludzi w tym obozie....[...].
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_24_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_24_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_24_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_24_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_24_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_24_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_24_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_24_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_24_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_24_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_24_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_24_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_24_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_24_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_24_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_24_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_24_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_24_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_24_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_24_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_24_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_24_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_24_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_24_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_24_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_24_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_24_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_24_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_24_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_24_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_24_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_24_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_24_Addon_WrongArmor";				//Jaki jest to rodzaj odziezy? Ona Ci nie odpowiada. Nie martw sie o mnie.
	ADDON_WRONGARMOR_SLD		= "SVM_24_ADDON_WRONGARMOR_SLD";			//Kiedy mówie do Ciebie, nosimy nasza zbroje. Idz dalej, wyjdz stad.
	ADDON_WRONGARMOR_MIL		= "SVM_24_ADDON_WRONGARMOR_MIL";			//Nosic pancerz króla, prosze. Chodzcie dalej, odejdzmy.
	ADDON_WRONGARMOR_KDF		= "SVM_24_ADDON_WRONGARMOR_KDF";			//Twoje ubrania nie sa odpowiednie do naszego zamówienia. Zmienic sie.
	ADDON_NOARMOR_BDT			= "SVM_24_ADDON_ADDON_NOARMOR_BDT";			//Nie masz nawet zbroi. Wyjsc stad!

	ADDON_DIEBANDIT				= "SVM_24_ADDON_DIEBANDIT";				//Kolejny bandyta ponownie.
	ADDON_DIRTYPIRATE			= "SVM_24_ADDON_DIRTYPIRATE";			//PIRATEN!

	RELMINE01			= "SVM_24_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_24_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_24_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_24_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_24_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_24_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_24_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_24_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_24_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_24_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_24_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_24_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_24_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_24_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_24_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_24_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_24_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_24_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_24_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_24_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_24_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_24_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_24_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_24_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_24_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_24_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_24_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_24_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_24_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_24_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_24_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_24_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_24_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_24_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_24_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_24_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_24_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_24_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_24_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_24_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_24_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_24_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_24_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_24_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_24_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_24_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_24_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_24_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_24_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_24_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_24_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_24_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_24_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_24_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_24_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_24_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_24_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_25 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	Weather						= 	"SVM_25_Weather"					;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_25_IGetYouStill"				;//Jestem gonna cie!
	DieEnemy					=	"SVM_25_DieEnemy"					;//Pospiesze sie!
	DieMonster					=	"SVM_25_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_25_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_25_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_25_SheepKiller"				;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_25_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_25_YouMurderer"				;//Morderca!
	DieStupidBeast				=	"SVM_25_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_25_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_25_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_25_ThenIBeatYouOutOfHere"		;//Nie chcesz isc? Wszystko w porzadku!
	WhatDidYouDoInThere			=	"SVM_25_WhatDidYouDoInThere"		;//Co tam robiles?
	WillYouStopFighting			=	"SVM_25_WillYouStopFighting"		;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_25_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_25_EnemyKilled"				;//Zaslugujecie na to, synu suki!
	MonsterKilled				=	"SVM_25_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_25_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_25_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_25_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	Berzerk						=	"SVM_25_Berzerk"						;//UUAARRGHHHHH!
	KillMurderer				=	"SVM_25_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_25_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_25_NeverHitMeAgain"			;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_25_YouBetterShouldHaveListened";//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_25_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_25_NeverEnterRoomAgain"		;//I juz nigdy wiecej nie wpadaj tam!
	ThereIsNoFightingHere		=	"SVM_25_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_25_RunAway"					;//Och, gówno!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_25_GoodMonsterKill"		;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_25_GoodKill"				;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_25_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_25_RunCoward"				;//Krzyki) Tak! Pracuj tak szybko, jak tylko mozesz!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_25_GetOutOfHere"			;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_25_WhyAreYouInHere"		;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_25_YesGoOutOfHere"			;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_25_WhatsThisSupposedToBe"	;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_25_YouDisturbedMySlumber"	;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_25_ITookYourGold"			;//Dziekujemy za zloto, bohater!
	ShitNoGold					=	"SVM_25_ShitNoGold"				;//Biedny draniesz, nie masz nawet zlota!
	ITakeYourWeapon				=	"SVM_25_ITakeYourWeapon"		;//Lepiej wziac pistolet!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_25_WhatAreYouDoing"		;//Ostroznie) Uwazaj! Jeszcze raz i trafie cie.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_25_LookingForTroubleAgain"	;//Jeszcze za malo?
	StopMagic					=	"SVM_25_StopMagic"				;//Zatrzymaj ten magiczny chwyt!
	ISaidStopMagic				=	"SVM_25_ISaidStopMagic"			;//Chcesz poncz? Zatrzymaj sie teraz!
	WeaponDown					=	"SVM_25_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_25_ISaidWeaponDown"		;//Odstaw pistolet!
	WiseMove					=	"SVM_25_WiseMove"				;//Inteligentny przyjaciel!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_25_NextTimeYoureInForIt"	;//Nastepnym razem zobaczymy....
	OhMyHead					=	"SVM_25_OhMyHead"				;//O Mezczyzna, glowa moja....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_25_TheresAFight"			;//(chwycenie) Ah, walka!
	OhMyGodItsAFight			=	"SVM_25_OhMyGodItsAFight"		;//Mój Boze, walka!
	GoodVictory					=	"SVM_25_GoodVictory"			;//Pokazales go!
	NotBad						= 	"SVM_25_NotBad"					;//(pogniwianie) Nie zly....
	OhMyGodHesDown				=	"SVM_25_OhMyGodHesDown"			;//(do samego siebie) Mój Boze! Jak brutalne....
	CheerFriend01				=	"SVM_25_CheerFriend01"			;//Hit go!
	CheerFriend02				=	"SVM_25_CheerFriend02"			;//Daj to wszystko!
	CheerFriend03				=	"SVM_25_CheerFriend03"			;//Pokaz go!
	Ooh01						=	"SVM_25_Ooh01"					;//Badz blisko!
	Ooh02						=	"SVM_25_Ooh02"					;//Ostroznie!
	Ooh03						=	"SVM_25_Ooh03"					;//Och! Zrobil czas!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_25_WhatWasThat"				;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_25_GetOutOfMyBed"			;//Wejsc z lózka!
	Awake						= "SVM_25_Awake"					;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_25_TOUGHGUY_ATTACKLOST"		;//Dobrze, to Ty jestes najlepszy z nas obojga! Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_25_TOUGHGUY_ATTACKWON"		;//(samo-wazne) Przypuszczam, ze teraz zrozumiales, który z nas jest silniejszy.... czego chcesz?
	TOUGHGUY_PLAYERATTACK		= "SVM_25_TOUGHGUY_PLAYERATTACK"	;//Myslalem, ze chcialbys mnie zamieszac. Czy zmieniles zdanie? Chcesz porozmawiac, czy nie? (smiech) Na pewno tak.
	// ----------------------------------------------------------------------------------------------------------------------
	Dead						= "SVM_25_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_25_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_25_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_25_Aargh_3"					;//Aargh

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_25_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_25_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_25_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_26 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_26_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_26_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_26_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_26_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_26_Weather"						;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_26_IGetYouStill"				;//Moge Cie jeszcze dostac!
	DieEnemy					=	"SVM_26_DieEnemy"					;//Teraz Twoja kolej!
	DieMonster					=	"SVM_26_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_26_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_26_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_26_SheepKiller"					;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_26_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_26_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_26_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_26_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_26_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_26_ThenIBeatYouOutOfHere"		;//Wtedy bede musial cie wybic!
	WhatDidYouDoInThere			=	"SVM_26_WhatDidYouDoInThere"			;//Co tam robiles, huh?
	WillYouStopFighting			=	"SVM_26_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_26_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_26_EnemyKilled"					;//To jest wlasnie dla Ciebie, punk.
	MonsterKilled				=	"SVM_26_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_26_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	Berzerk						=	"SVM_26_Berzerk"						;//UUAARRGHHHHH!
	rumfummlerDown				=	"SVM_26_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_26_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_26_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_26_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_26_NeverHitMeAgain"				;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_26_YouBetterShouldHaveListened"	;//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_26_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_26_NeverEnterRoomAgain"			;//I ze juz nigdy cie tam juz nie zlapam!
	ThereIsNoFightingHere		=	"SVM_26_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_26_RunAway"						;//Wyobraz sobie! Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_26_Alarm"						;//ALARM!
	Guards						=	"SVM_26_Guards"						;//WACHE!
	Help						=	"SVM_26_Help"						;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_26_GoodMonsterKill"				;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_26_GoodKill"					;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_26_NOTNOW"						;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_26_RunCoward"					;//Stoisz nieruchomo, rajd!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_26_GetOutOfHere"				;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_26_WhyAreYouInHere"				;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_26_YesGoOutOfHere"				;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_26_WhatsThisSupposedToBe"		;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_26_YouDisturbedMySlumber"		;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_26_ITookYourGold"				;//Zloto! To juz moja kopalnia.....
	ShitNoGold					=	"SVM_26_ShitNoGold"					;//Syn suki nie ma nawet zlota.
	ITakeYourWeapon				=	"SVM_26_ITakeYourWeapon"				;//Lepiej bym zabral ze soba bron.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_26_WhatAreYouDoing"				;//Ostrzezenie) Hej! Uwazaj!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_26_LookingForTroubleAgain"		;//Jeszcze za malo?
	StopMagic					=	"SVM_26_StopMagic"					;//Idz z magia!
	ISaidStopMagic				=	"SVM_26_ISaidStopMagic"				;//Pozbadz sie magii! Czy slyszysz zle?
	WeaponDown					=	"SVM_26_WeaponDown"					;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_26_ISaidWeaponDown"				;//Czy nie slyszysz dobrze? Powiedzialem, ze odlozylem pistolet!
	WiseMove					=	"SVM_26_WiseMove"					;//Idziesz tam, tam idzcie!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_26_NextTimeYoureInForIt"		;//Nadal mówimy o.....
	OhMyHead					=	"SVM_26_OhMyHead"					;//(do siebie) Oh, moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_26_TheresAFight"				;//Wejdzmy do biznesu!
	OhMyGodItsAFight			=	"SVM_26_OhMyGodItsAFight"			;//Oni rozbija czaszki w....
	GoodVictory					=	"SVM_26_GoodVictory"					;//Na to on zasluguje.
	NotBad						= 	"SVM_26_NotBad"						;//(pogniwianie) Nie takie zle....
	OhMyGodHesDown				=	"SVM_26_OhMyGodHesDown"				;//(do siebie) Jaki brutalny facet....
	CheerFriend01				=	"SVM_26_CheerFriend01"				;//Tak, to tak!
	CheerFriend02				=	"SVM_26_CheerFriend02"				;//Chodzcie dalej, odejdzmy!
	CheerFriend03				=	"SVM_26_CheerFriend03"				;//Pozostan na szczycie!
	Ooh01						=	"SVM_26_Ooh01"						;//Nie poddawaj sie niczemu!
	Ooh02						=	"SVM_26_Ooh02"						;//Jestes gonna!
	Ooh03						=	"SVM_26_Ooh03"						;//Nie moge w to uwierzyc!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_26_WhatWasThat"					;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_26_GetOutOfMyBed"					;//Wejsc z lózka!
	Awake						= "SVM_26_Awake"							;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_26_TOUGHGUY_ATTACKLOST"			;//To wszystko jest w porzadku, wygrasz. Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_26_TOUGHGUY_ATTACKWON"			;//Czy musze ponownie pokazac ci, kim jest Pan?
	TOUGHGUY_PLAYERATTACK		= "SVM_26_TOUGHGUY_PLAYERATTACK"			;//Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_26_GOLD_1000"						;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_26_GOLD_950"						;//950 sztuk zlota.
	GOLD_900					= "SVM_26_GOLD_900"						;//900 sztuk zlota.
	GOLD_850					= "SVM_26_GOLD_850"						;//850 sztuk zlota.
	GOLD_800					= "SVM_26_GOLD_800"						;//800 sztuk zlota.
	GOLD_750					= "SVM_26_GOLD_750"						;//750 sztuk zlota.
	GOLD_700					= "SVM_26_GOLD_700"						;//700 sztuk zlota.
	GOLD_650					= "SVM_26_GOLD_650"						;//650 sztuk zlota.
	GOLD_600					= "SVM_26_GOLD_600"						;//600 sztuk zlota.
	GOLD_550					= "SVM_26_GOLD_550"						;//550 sztuk zlota.
	GOLD_500					= "SVM_26_GOLD_500"						;//500 sztuk zlota.
	GOLD_450					= "SVM_26_GOLD_450"						;//450 sztuk zlota.
	GOLD_400					= "SVM_26_GOLD_400"						;//400 sztuk zlota.
	GOLD_350					= "SVM_26_GOLD_350"						;//350 sztuk zlota.
	GOLD_300					= "SVM_26_GOLD_300"						;//300 sztuk zlota.
	GOLD_250					= "SVM_26_GOLD_250"						;//250 sztuk zlota.
	GOLD_200					= "SVM_26_GOLD_200"						;//200 sztuk zlota.
	GOLD_150					= "SVM_26_GOLD_150"						;//150 sztuk zlota.
	GOLD_100					= "SVM_26_GOLD_100"						;//100 sztuk zlota.
	GOLD_90						= "SVM_26_GOLD_90"						;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_26_GOLD_80"						;//80 sztuk zlota.
	GOLD_70						= "SVM_26_GOLD_70"						;//70 sztuk zlota.
	GOLD_60						= "SVM_26_GOLD_60"						;//60 sztuk zlota.
	GOLD_50						= "SVM_26_GOLD_50"						;//50 sztuk zlota.
	GOLD_40						= "SVM_26_GOLD_40"						;//40 sztuk zlota.
	GOLD_30						= "SVM_26_GOLD_30"						;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_26_GOLD_20"						;//20 sztuk zlota.
	GOLD_10						= "SVM_26_GOLD_10"						;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_26_Smalltalk01"					;//... Czy naprawde wierzysz, ze....
	Smalltalk02					= "SVM_26_Smalltalk02"					;//... jest wszystko mozliwe.....
	Smalltalk03					= "SVM_26_Smalltalk03"					;//... powinien byl wiedziec lepiej......
	Smalltalk04					= "SVM_26_Smalltalk04"					;//... jakbym nie mial juz dosc problemów.....
	Smalltalk05					= "SVM_26_Smalltalk05"					;//... kto mówi takie cos.....
	Smalltalk06					= "SVM_26_Smalltalk06"					;//... jest jeszcze wiecej klopotów......
	Smalltalk07					= "SVM_26_Smalltalk07"					;//... wiele do powiedzenia.....
	Smalltalk08					= "SVM_26_Smalltalk08"					;//... Nie zrobilbym tego.....
	Smalltalk09					= "SVM_26_Smalltalk09"					;//... To tylko pogloski....
	Smalltalk10					= "SVM_26_Smalltalk10"					;//... musisz tylko uwazac, co mówisz ludziom....
	Smalltalk11					= "SVM_26_Smalltalk11"					;//... Móglbym panstwu to powiedziec wczesniej.....
	Smalltalk12					= "SVM_26_Smalltalk12"					;//... Nikt mnie nie pyta....
	Smalltalk13					= "SVM_26_Smalltalk13"					;//... Mozna zalowac biednego faceta....
	Smalltalk14					= "SVM_26_Smalltalk14"					;//... nie jest to nic nowego....
	Smalltalk15					= "SVM_26_Smalltalk15"					;//... to oczywiste....
	Smalltalk16					= "SVM_26_Smalltalk16"					;//... nie musisz mnie o to pytac......
	Smalltalk17					= "SVM_26_Smalltalk17"					;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_26_Smalltalk18"					;//... znasz juz moja opinie.....
	Smalltalk19					= "SVM_26_Smalltalk19"					;//... Tak wlasnie powiedzialem.....
	Smalltalk20					= "SVM_26_Smalltalk20"					;//... nic sie nigdy nie zmieni......
	Smalltalk21					= "SVM_26_Smalltalk21"					;//... dlaczego nie dowiedzialem sie o tym do tej pory.....
	Smalltalk22					= "SVM_26_Smalltalk22"					;//... poczekajmy i zobaczmy, co sie dzieje....
	Smalltalk23					= "SVM_26_Smalltalk23"					;//... niektóre problemy rozwiazywane sa samodzielnie......
	Smalltalk24					= "SVM_26_Smalltalk24"					;//... Juz nie slysze....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_26_Smalltalk25"					;//... Pijany jak pieklo....
	Smalltalk26					= "SVM_26_Smalltalk26"					;//... Nie mozesz to zrobic ze mna......
	Smalltalk27					= "SVM_26_Smalltalk27"					;//... wszystkie biegly jak króliki, bylem samotny......
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_26_Smalltalk28"					;//... Tak wiec mówi ona w Pismie swietym....[...].
	Smalltalk29					= "SVM_26_Smalltalk29"					;//... Zawsze dzialam w imieniu Innosa....
	Smalltalk30					= "SVM_26_Smalltalk30"					;//... nikt nie moze naruszac boskiego porzadku......
	SmalltalkKhorataAnnaQuest01			= "SVM_26_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_26_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_26_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_26_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_26_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_26_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_26_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_26_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_26_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_26_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_26_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_26_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_26_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_26_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_26_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_26_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_26_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_26_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_26_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_26_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_26_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_26_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_26_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_26_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_26_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_26_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_26_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_26_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_26_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_26_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_26_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_26_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_26_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_26_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_26_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_26_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_26_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_26_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_26_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_26_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_26_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_26_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_26_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_26_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_26_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_26_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_26_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_26_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_26_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_26_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_26_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_26_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_26_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_26_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_26_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_26_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_26_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_26_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_26_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_26_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_26_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_26_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_26_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_26_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_26_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_26_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_26_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_26_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_26_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_26_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_26_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_26_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_26_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_26_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_26_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_26_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_26_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_26_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...

	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_26_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_26_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_26_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_26_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_26_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_26_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_26_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_26_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_26_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_26_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_26_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_26_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_26_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_26_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_26_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_26_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_26_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_26_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_26_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_26_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_26_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_26_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_26_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_26_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_26_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_26_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_26_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_26_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_26_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_26_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_26_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_26_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_26_Addon_WrongArmor";				//To nie jest twoja odziez. Nie rozmawiam z wami.
	ADDON_WRONGARMOR_SLD		= "SVM_26_ADDON_WRONGARMOR_SLD";			//Jak chodzisz? Zalóz cos rozsadnego.
	ADDON_WRONGARMOR_MIL		= "SVM_26_ADDON_WRONGARMOR_MIL";			//Jestes zolnierzem! Odpowiednio ubrac sie.
	ADDON_WRONGARMOR_KDF		= "SVM_26_ADDON_WRONGARMOR_KDF";			//Twoje ubrania nie sa odpowiednie do naszego zamówienia. Zmienic sie.
	ADDON_NOARMOR_BDT			= "SVM_26_ADDON_ADDON_NOARMOR_BDT";		//Nie masz nawet zbroi. Wyjsc stad!

	ADDON_DIEBANDIT				= "SVM_26_ADDON_DIEBANDIT";				//Zgubisz sie, brudny bandyta!
	ADDON_DIRTYPIRATE			= "SVM_26_ADDON_DIRTYPIRATE";			//Pakiet piracki!

	RELMINE01			= "SVM_26_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_26_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_26_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_26_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_26_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_26_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_26_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_26_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_26_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_26_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_26_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_26_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_26_NoLearnGold";			//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_26_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_26_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_26_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_26_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_26_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_26_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_26_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_26_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_26_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_26_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_26_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_26_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_26_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_26_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_26_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_26_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_26_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_26_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_26_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_26_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_26_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_26_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_26_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_26_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_26_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_26_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_26_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_26_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_26_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_26_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_26_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_26_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_26_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_26_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_26_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_26_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_26_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_26_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_26_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_26_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_26_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_26_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_26_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_26_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_27 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	Weather						= 	"SVM_27_Weather"						;//Przyjazna pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_27_IGetYouStill"				;//Jeszcze raz!
	DieEnemy					=	"SVM_27_DieEnemy"					;//Pospiesze sie!
	DieMonster					=	"SVM_27_DieMonster"					;//Kolejne z tych bestii!
	DirtyThief					=	"SVM_27_DirtyThief"					;//Irytujesz malego zlodziejka!
	HandsOff					=	"SVM_27_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_27_SheepKiller"					;//Hej! Zostaw nasze owce samotnie!
	SheepKillerMonster			=	"SVM_27_SheepKillerMonster"			;//Bestia jedzenie naszych owiec!
	YouMurderer					=	"SVM_27_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_27_DieStupidBeast"				;//Co robi tu to zwierze?
	YouDareHitMe				=	"SVM_27_YouDareHitMe"				;//Teraz mozesz sie bawic!
	YouAskedForIt				=	"SVM_27_YouAskedForIt"				;//Nie chciales tego inaczej!
	ThenIBeatYouOutOfHere		=	"SVM_27_ThenIBeatYouOutOfHere"		;//Jesli nie chcesz sluchac, czuc.
	WhatDidYouDoInThere			=	"SVM_27_WhatDidYouDoInThere"			;//Co tam pan robil?
	WillYouStopFighting			=	"SVM_27_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_27_KillEnemy"					;//Die!
	EnemyKilled					=	"SVM_27_EnemyKilled"					;//Taki glupi syn suki.....
	MonsterKilled				=	"SVM_27_MonsterKilled"				;//Tak to jest, syn suki!
	ThiefDown					=	"SVM_27_ThiefDown"					;//Chron rece przed moimi rekami w przyszlosci, dobrze?
	rumfummlerDown				=	"SVM_27_rumfummlerDown"				;//W przyszlosci trzymaj swoje palce!
	SheepAttackerDown			=	"SVM_27_SheepAttackerDown"			;//Nie dotykaj wiecej naszych owiec!
	KillMurderer				=	"SVM_27_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_27_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_27_NeverHitMeAgain"				;//Nie próbuj tego ponownie, busteruj!
	YouBetterShouldHaveListened	=	"SVM_27_YouBetterShouldHaveListened"	;//Niech to bedzie dla ciebie lekcja,
	GetUpAndBeGone				=	"SVM_27_GetUpAndBeGone"				;//Wstan i wyjdz stad!
	NeverEnterRoomAgain			=	"SVM_27_NeverEnterRoomAgain"			;//Nie chce widziec cie tam juz nigdy wiecej, wszystko w porzadku?
	ThereIsNoFightingHere		=	"SVM_27_ThereIsNoFightingHere"		;//Jesli tu jest jakis facet rzucajacy ciosami, to ja dobrze?
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_27_Berzerk"						;//UUAARRGHHHHH!
		RunAway						= 	"SVM_27_RunAway"						;//Wyobraz sobie! Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_27_Alarm"					;//ALARM!
	Guards						=	"SVM_27_Guards"					;//WACHE!
	Help						=	"SVM_27_Help"					;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_27_GoodMonsterKill"			;//Krzyki) Tak! To jest wlasnie sposób, aby dac je bestiom!
	GoodKill					= 	"SVM_27_GoodKill"				;//(skrzyczenie) Na to ona zasluguje!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_27_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_27_RunCoward"				;//Porozmawiam z Toba pózniej!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_27_GetOutOfHere"			;//Wyjdzcie!
	WhyAreYouInHere				=	"SVM_27_WhyAreYouInHere"			;//Co tu robisz?
	YesGoOutOfHere				= 	"SVM_27_YesGoOutOfHere"			;//Wyciagnij z tego fuge!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_27_WhatsThisSupposedToBe"	;//Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_27_YouDisturbedMySlumber"	;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_27_ITookYourGold"			;//Dziekujemy za zloto, bohater!
	ShitNoGold					=	"SVM_27_ShitNoGold"				;//Biedny draniesz, nie masz nawet zlota!
	ITakeYourWeapon				=	"SVM_27_ITakeYourWeapon"			;//Lepiej wziac pistolet!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_27_WhatAreYouDoing"			;//Ostroznie) Uwazaj! Jeszcze raz i trafie cie.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_27_LookingForTroubleAgain"	;//(agresywne) Czy chcesz wrócic do ust?
																	 
	StopMagic					=	"SVM_27_StopMagic"				;//Zatrzymaj ten magiczny chwyt!
	ISaidStopMagic				=	"SVM_27_ISaidStopMagic"			;//Chcesz poncz? Zatrzymaj sie teraz!
	WeaponDown					=	"SVM_27_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_27_ISaidWeaponDown"			;//Odstaw pistolet!
	WiseMove					=	"SVM_27_WiseMove"				;//Inteligentny przyjaciel!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_27_NextTimeYoureInForIt"	;//Nastepnym razem zobaczymy....
	OhMyHead					=	"SVM_27_OhMyHead"				;//O Mezczyzna, glowa moja....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_27_TheresAFight"			;//(chwycenie) Ah, walka!
	OhMyGodItsAFight			=	"SVM_27_OhMyGodItsAFight"		;//Mój Boze, walka!
	GoodVictory					=	"SVM_27_GoodVictory"				;//Pokazales go!
	NotBad						= 	"SVM_27_NotBad"					;//(pogniwianie) Nie zly....
	OhMyGodHesDown				=	"SVM_27_OhMyGodHesDown"			;//(do samego siebie) Mój Boze! Jak brutalne....
	CheerFriend01				=	"SVM_27_CheerFriend01"			;//Tak, daj mu to!
	CheerFriend02				=	"SVM_27_CheerFriend02"			;//Pokaz go!
	CheerFriend03				=	"SVM_27_CheerFriend03"			;//Zakoncz go!
	Ooh01						=	"SVM_27_Ooh01"					;//Oderwac sie z powrotem!
	Ooh02						=	"SVM_27_Ooh02"					;//Uderz w nie!
	Ooh03						=	"SVM_27_Ooh03"					;//Ach! To zaszkodzilo!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_27_WhatWasThat"				;//Co to za Damn?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_27_GetOutOfMyBed"				;//Znajdz wlasne lózko!
	Awake						= "SVM_27_Awake"						;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_27_TOUGHGUY_ATTACKLOST"		;//Dostales na ciebie pieklo ponczu.... Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_27_TOUGHGUY_ATTACKWON"		;//(auto wazne) Jakies pytania?
	TOUGHGUY_PLAYERATTACK		= "SVM_27_TOUGHGUY_PLAYERATTACK"		;//Jestes tam znowu!
	// ----------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_27_Smalltalk01"				;//... to prawda......
	Smalltalk02					= "SVM_27_Smalltalk02"				;//... Slyszalem cos innego.....
	Smalltalk03					= "SVM_27_Smalltalk03"				;//... Nie powiedz mi, ze nie wiedziales....
	Smalltalk04					= "SVM_27_Smalltalk04"				;//... nie wiesz nawet, w kogo juz wiecej wierzyc......
	Smalltalk05					= "SVM_27_Smalltalk05"				;//... to wszystko tylko mówic.....
	Smalltalk06					= "SVM_27_Smalltalk06"				;//... Czy myslisz, ze jestem lepszy....
	Smalltalk07					= "SVM_27_Smalltalk07"				;//... Zastanawiam sie o niczym wiecej....
	Smalltalk08					= "SVM_27_Smalltalk08"				;//... to naprawde nie jest mój problem......
	Smalltalk09					= "SVM_27_Smalltalk09"				;//... naprawde w to wierzysz....
	Smalltalk10					= "SVM_27_Smalltalk10"				;//... Nikogo nie mówie.....
	Smalltalk11					= "SVM_27_Smalltalk11"				;//... bylo to jasne juz wczesniej....
	Smalltalk12					= "SVM_27_Smalltalk12"				;//... wsluchiwal sie w niesprawiedliwych ludzi....
	Smalltalk13					= "SVM_27_Smalltalk13"				;//... Jesli tego nie widzi, nie moge juz mu pomóc....
	Smalltalk14					= "SVM_27_Smalltalk14"				;//... Nie mówie ci nic nowego....
	Smalltalk15					= "SVM_27_Smalltalk15"				;//... on sam o tym nie myslal......
	Smalltalk16					= "SVM_27_Smalltalk16"				;//... to juz dawno znany fakt....
	Smalltalk17					= "SVM_27_Smalltalk17"				;//... to jest zle.....
	Smalltalk18					= "SVM_27_Smalltalk18"				;//... Zrobilbym to inaczej......
	Smalltalk19					= "SVM_27_Smalltalk19"				;//... Zgadzam sie z Panem.....
	Smalltalk20					= "SVM_27_Smalltalk20"				;//... to, co bedzie sie zawsze zmienialo......
	Smalltalk21					= "SVM_27_Smalltalk21"				;//... Jeszcze tego nie wiedzialem......
	Smalltalk22					= "SVM_27_Smalltalk22"				;//... nie da sie nic z tym zrobic.....
	Smalltalk23					= "SVM_27_Smalltalk23"				;//... Nie jestem zaskoczony.....
	Smalltalk24					= "SVM_27_Smalltalk24"				;//... musial wiedziec lepiej....

	// Khorinis

	SmalltalkRangar01			= "SVM_27_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_27_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_27_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_27_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_27_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_27_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_27_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_27_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_27_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_27_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_27_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_27_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_27_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_27_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...
	// ----------------------------------------------------------------------------------------------------------------------
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_27_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_27_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_27_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_27_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------

	NoLearnGold			= "SVM_27_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_27_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_27_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_27_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_28 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	BELGreetings				=	"SVM_28_BELGreetings"				;//Aby uhonorowac Beliara!
	Weather						= 	"SVM_28_Weather"					;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_28_IGetYouStill"				;//Ale teraz dostaje cie!
	DieEnemy					=	"SVM_28_DieEnemy"					;//Pospiesze sie!
	DieMonster					=	"SVM_28_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_28_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_28_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_28_SheepKiller"				;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_28_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_28_YouMurderer"				;//Morderca!
	DieStupidBeast				=	"SVM_28_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_28_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_28_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_28_ThenIBeatYouOutOfHere"		;//Nie chcesz isc? Wszystko w porzadku!
	WhatDidYouDoInThere			=	"SVM_28_WhatDidYouDoInThere"		;//Co tam robiles?
	WillYouStopFighting			=	"SVM_28_WillYouStopFighting"		;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_28_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_28_EnemyKilled"				;//Zaslugujecie na to, synu suki!
	MonsterKilled				=	"SVM_28_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_28_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_28_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_28_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_28_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_28_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_28_NeverHitMeAgain"			;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_28_YouBetterShouldHaveListened";//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_28_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_28_NeverEnterRoomAgain"		;//I juz nigdy wiecej nie wpadaj tam!
	ThereIsNoFightingHere		=	"SVM_28_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	Berzerk						=	"SVM_28_Berzerk"						;//UUAARRGHHHHH!
	RunAway						= 	"SVM_28_RunAway"					;//Och, gówno!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_28_Alarm"					;//ALARM!
	Guards						=	"SVM_28_Guards"					;//WACHE!
	Help						=	"SVM_28_Help"					;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_28_GoodMonsterKill"		;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_28_GoodKill"				;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_28_NOTNOW"					;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_28_RunCoward"				;//Krzyki) Tak! Pracuj tak szybko, jak tylko mozesz!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_28_GetOutOfHere"			;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_28_WhyAreYouInHere"		;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_28_YesGoOutOfHere"			;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_28_WhatsThisSupposedToBe"	;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_28_YouDisturbedMySlumber"	;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_28_ITookYourGold"			;//Dziekujemy za zloto, bohater!
	ShitNoGold					=	"SVM_28_ShitNoGold"				;//Biedny draniesz, nie masz nawet zlota!
	ITakeYourWeapon				=	"SVM_28_ITakeYourWeapon"		;//Lepiej wziac pistolet!
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_28_WhatAreYouDoing"		;//Ostroznie) Uwazaj! Znowu, a ja cie poczne na twarzy.
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_28_LookingForTroubleAgain"	;//Jeszcze za malo?
	StopMagic					=	"SVM_28_StopMagic"				;//Zatrzymaj ten magiczny chwyt!
	ISaidStopMagic				=	"SVM_28_ISaidStopMagic"			;//Chcesz poncz? Zatrzymaj sie teraz!
	WeaponDown					=	"SVM_28_WeaponDown"				;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_28_ISaidWeaponDown"		;//Odstaw pistolet!
	WiseMove					=	"SVM_28_WiseMove"				;//Inteligentny przyjaciel!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_28_NextTimeYoureInForIt"	;//Nastepnym razem zobaczymy....
	OhMyHead					=	"SVM_28_OhMyHead"				;//O Mezczyzna, glowa moja....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_28_TheresAFight"			;//(chwycenie) Ah, walka!
	OhMyGodItsAFight			=	"SVM_28_OhMyGodItsAFight"		;//Mój Boze, walka!
	GoodVictory					=	"SVM_28_GoodVictory"			;//Pokazales go!
	NotBad						= 	"SVM_28_NotBad"					;//(pogniwianie) Nie zly....
	OhMyGodHesDown				=	"SVM_28_OhMyGodHesDown"			;//(do samego siebie) Mój Boze! Jak brutalne....
	CheerFriend01				=	"SVM_28_CheerFriend01"			;//Hit go!
	CheerFriend02				=	"SVM_28_CheerFriend02"			;//Daj to wszystko!
	CheerFriend03				=	"SVM_28_CheerFriend03"			;//Pokaz go!
	Ooh01						=	"SVM_28_Ooh01"					;//Badz blisko!
	Ooh02						=	"SVM_28_Ooh02"					;//Ostroznie!
	Ooh03						=	"SVM_28_Ooh03"					;//Och! Zrobil czas!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_28_WhatWasThat"				;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_28_GetOutOfMyBed"			;//To jest moje lózko!
	Awake						= "SVM_28_Awake"					;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_28_TOUGHGUY_ATTACKLOST"		;//Dobrze, to Ty jestes najlepszy z nas obojga! Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_28_TOUGHGUY_ATTACKWON"		;//(samo-wazne) Przypuszczam, ze teraz zrozumiales, który z nas jest silniejszy.... Czego chcesz?
	TOUGHGUY_PLAYERATTACK		= "SVM_28_TOUGHGUY_PLAYERATTACK"	;//Myslalem, ze chcialbys mnie zamieszac. Czy zmieniles zdanie? Chcesz porozmawiac, czy nie? (smiertelnicy)
	// ----------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_28_Smalltalk01"				;//... Czy naprawde wierzysz, ze....
	Smalltalk02					= "SVM_28_Smalltalk02"				;//... jest wszystko mozliwe.....
	Smalltalk03					= "SVM_28_Smalltalk03"				;//... powinien byl wiedziec lepiej......
	Smalltalk04					= "SVM_28_Smalltalk04"				;//... jakbym nie mial juz dosc problemów.....
	Smalltalk05					= "SVM_28_Smalltalk05"				;//... kto mówi takie cos.....
	Smalltalk06					= "SVM_28_Smalltalk06"				;//... jest jeszcze wiecej klopotów......
	Smalltalk07					= "SVM_28_Smalltalk07"				;//... wiele do powiedzenia.....
	Smalltalk08					= "SVM_28_Smalltalk08"				;//... Nie myslalem, ze tak nie sadzilem....
	Smalltalk09					= "SVM_28_Smalltalk09"				;//... To tylko pogloski....
	Smalltalk10					= "SVM_28_Smalltalk10"				;//... musisz tylko uwazac, co mówisz ludziom....
	Smalltalk11					= "SVM_28_Smalltalk11"				;//... Móglbym panstwu to powiedziec wczesniej.....
	Smalltalk12					= "SVM_28_Smalltalk12"				;//... Nikt mnie nie pyta....
	Smalltalk13					= "SVM_28_Smalltalk13"				;//... Mozna zalowac biednego faceta....
	Smalltalk14					= "SVM_28_Smalltalk14"				;//... nie jest to nic nowego....
	Smalltalk15					= "SVM_28_Smalltalk15"				;//... to oczywiste....
	Smalltalk16					= "SVM_28_Smalltalk16"				;//... nie musisz mnie o to pytac......
	Smalltalk17					= "SVM_28_Smalltalk17"				;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_28_Smalltalk18"				;//... znasz juz moja opinie.....
	Smalltalk19					= "SVM_28_Smalltalk19"				;//... Tak wlasnie powiedzialem.....
	Smalltalk20					= "SVM_28_Smalltalk20"				;//... nic sie nigdy nie zmieni......
	Smalltalk21					= "SVM_28_Smalltalk21"				;//... Dlaczego jestem dopiero teraz dowiaduje sie.....
	Smalltalk22					= "SVM_28_Smalltalk22"				;//... poczekajmy i zobaczmy, co sie dzieje....
	Smalltalk23					= "SVM_28_Smalltalk23"				;//... niektóre problemy rozwiazywane sa samodzielnie......
	Smalltalk24					= "SVM_28_Smalltalk24"				;//... Juz nie slysze....
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_28_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_28_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_28_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_28_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_28_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_28_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_28_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_28_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------

	NoLearnGold			= "SVM_28_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_28_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_28_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_28_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_29 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	Weather						= 	"SVM_29_Weather"						;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_29_IGetYouStill"				;//Moge Cie jeszcze dostac!
	DieEnemy					=	"SVM_29_DieEnemy"					;//Teraz Twoja kolej!
	DieMonster					=	"SVM_29_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_29_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_29_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_29_SheepKiller"					;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_29_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_29_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_29_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_29_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_29_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_29_ThenIBeatYouOutOfHere"		;//Wtedy bede musial cie wybic!
	WhatDidYouDoInThere			=	"SVM_29_WhatDidYouDoInThere"			;//Co tam robiles, huh?
	WillYouStopFighting			=	"SVM_29_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_29_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_29_EnemyKilled"					;//To jest wlasnie dla Ciebie, punk.
	MonsterKilled				=	"SVM_29_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_29_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_29_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	Berzerk						=	"SVM_29_Berzerk"						;//UUAARRGHHHHH!
	SheepAttackerDown			=	"SVM_29_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_29_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_29_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_29_NeverHitMeAgain"				;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_29_YouBetterShouldHaveListened"	;//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_29_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_29_NeverEnterRoomAgain"			;//I ze juz nigdy cie tam juz nie zlapam!
	ThereIsNoFightingHere		=	"SVM_29_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_29_RunAway"						;//Wyobraz sobie! Wyjdzmy stad!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_29_Alarm"						;//ALARM!
	Guards						=	"SVM_29_Guards"						;//WACHE!
	Help						=	"SVM_29_Help"						;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_29_GoodMonsterKill"				;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_29_GoodKill"					;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_29_NOTNOW"						;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_29_RunCoward"					;//Stoisz nieruchomo, rajd!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_29_GetOutOfHere"				;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_29_WhyAreYouInHere"				;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_29_YesGoOutOfHere"				;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_29_WhatsThisSupposedToBe"		;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_29_YouDisturbedMySlumber"		;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_29_ITookYourGold"				;//Zloto! To juz moja kopalnia.....
	ShitNoGold					=	"SVM_29_ShitNoGold"					;//Nie masz nawet zlota?
	ITakeYourWeapon				=	"SVM_29_ITakeYourWeapon"				;//Lepiej bym zabral ze soba bron.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_29_WhatAreYouDoing"				;//Ostrzezenie) Hej! Uwazaj!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_29_LookingForTroubleAgain"		;//Jeszcze za malo?
	StopMagic					=	"SVM_29_StopMagic"					;//Idz z magia!
	ISaidStopMagic				=	"SVM_29_ISaidStopMagic"				;//Pozbadz sie magii! Czy slyszysz zle?
	WeaponDown					=	"SVM_29_WeaponDown"					;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_29_ISaidWeaponDown"				;//Czy nie slyszysz dobrze? Powiedzialem, ze odlozylem pistolet!
	WiseMove					=	"SVM_29_WiseMove"					;//Idziesz tam, tam idzcie!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_29_NextTimeYoureInForIt"		;//Nadal mówimy o.....
	OhMyHead					=	"SVM_29_OhMyHead"					;//(do siebie) Oh, moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_29_TheresAFight"				;//Wejdzmy do biznesu!
	OhMyGodItsAFight			=	"SVM_29_OhMyGodItsAFight"			;//Sa one gonna bash ich czaszki w.....
	GoodVictory					=	"SVM_29_GoodVictory"					;//Na to on zasluguje.
	NotBad						= 	"SVM_29_NotBad"						;//(pogniwianie) Nie takie zle....
	OhMyGodHesDown				=	"SVM_29_OhMyGodHesDown"				;//(do siebie) Jaki brutalny facet....
	CheerFriend01				=	"SVM_29_CheerFriend01"				;//Tak, to tak!
	CheerFriend02				=	"SVM_29_CheerFriend02"				;//Chodzcie dalej, odejdzmy!
	CheerFriend03				=	"SVM_29_CheerFriend03"				;//Pozostan na szczycie!
	Ooh01						=	"SVM_29_Ooh01"						;//Nie poddawaj sie niczemu!
	Ooh02						=	"SVM_29_Ooh02"						;//Jestes gonna!
	Ooh03						=	"SVM_29_Ooh03"						;//Nie moge w to uwierzyc!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_29_WhatWasThat"					;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_29_GetOutOfMyBed"					;//Wejsc z lózka!
	Awake						= "SVM_29_Awake"							;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_29_TOUGHGUY_ATTACKLOST"			;//To wszystko jest w porzadku, wygrasz. Cóz, czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_29_TOUGHGUY_ATTACKWON"			;//Czy musze ponownie pokazac ci, kim jest Pan?
	TOUGHGUY_PLAYERATTACK		= "SVM_29_TOUGHGUY_PLAYERATTACK"			;//Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_29_Smalltalk01"					;//... Czy naprawde wierzysz, ze....
	Smalltalk02					= "SVM_29_Smalltalk02"					;//... jest wszystko mozliwe.....
	Smalltalk03					= "SVM_29_Smalltalk03"					;//... powinien byl wiedziec lepiej........
	Smalltalk04					= "SVM_29_Smalltalk04"					;//... jakbym nie mial juz dosc problemów.....
	Smalltalk05					= "SVM_29_Smalltalk05"					;//... kto mówi takie cos.....
	Smalltalk06					= "SVM_29_Smalltalk06"					;//... jest jeszcze wiecej klopotów......
	Smalltalk07					= "SVM_29_Smalltalk07"					;//... wiele do powiedzenia.....
	Smalltalk08					= "SVM_29_Smalltalk08"					;//... Nie zrobilbym tego.....
	Smalltalk09					= "SVM_29_Smalltalk09"					;//... To tylko pogloski....
	Smalltalk10					= "SVM_29_Smalltalk10"					;//... musisz tylko uwazac, co mówisz ludziom....
	Smalltalk11					= "SVM_29_Smalltalk11"					;//... Móglbym panstwu to powiedziec wczesniej.....
	Smalltalk12					= "SVM_29_Smalltalk12"					;//... Nikt mnie nie pyta....
	Smalltalk13					= "SVM_29_Smalltalk13"					;//... Mozna zalowac biednego faceta....
	Smalltalk14					= "SVM_29_Smalltalk14"					;//... nie jest to nic nowego....
	Smalltalk15					= "SVM_29_Smalltalk15"					;//... to oczywiste....
	Smalltalk16					= "SVM_29_Smalltalk16"					;//... nie musisz mnie o to pytac......
	Smalltalk17					= "SVM_29_Smalltalk17"					;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_29_Smalltalk18"					;//... znasz juz moja opinie.....
	Smalltalk19					= "SVM_29_Smalltalk19"					;//... Tak wlasnie powiedzialem.....
	Smalltalk20					= "SVM_29_Smalltalk20"					;//... nic sie nigdy nie zmieni......
	Smalltalk21					= "SVM_29_Smalltalk21"					;//... dlaczego nie dowiedzialem sie o tym do tej pory.....
	Smalltalk22					= "SVM_29_Smalltalk22"					;//... poczekajmy i zobaczmy, co sie dzieje....
	Smalltalk23					= "SVM_29_Smalltalk23"					;//... niektóre problemy rozwiazywane sa samodzielnie......
	Smalltalk24					= "SVM_29_Smalltalk24"					;//... Juz nie slysze....
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_29_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_29_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_29_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_29_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_29_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_29_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_29_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_29_Aargh_3"					;//Aargh
	
	NoLearnGold			= "SVM_29_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_29_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_29_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_29_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_30 (C_SVM)
{
	SC_HeyWaitASecond			= 	"SVM_30_Addon_HeyWaitASecond"			;//Krzyki!
	
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_30_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_30_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_30_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_30_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_30_Weather"						;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_30_IGetYouStill"				;//Moge Cie jeszcze dostac!
	DieEnemy					=	"SVM_30_DieEnemy"					;//Teraz Twoja kolej!
	DieMonster					=	"SVM_30_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_30_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_30_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_30_SheepKiller"					;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_30_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_30_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_30_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_30_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_30_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_30_ThenIBeatYouOutOfHere"		;//Wtedy bede musial cie wybic!
	WhatDidYouDoInThere			=	"SVM_30_WhatDidYouDoInThere"			;//Co tam robiles, huh?
	WillYouStopFighting			=	"SVM_30_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_30_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_30_EnemyKilled"					;//To jest wlasnie dla Ciebie, punk.
	Berzerk						=	"SVM_30_Berzerk"						;//UUAARRGHHHHH!
	MonsterKilled				=	"SVM_30_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_30_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_30_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_30_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_30_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_30_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_30_NeverHitMeAgain"				;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_30_YouBetterShouldHaveListened"	;//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_30_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_30_NeverEnterRoomAgain"			;//I ze juz nigdy cie tam juz nie zlapam!
	ThereIsNoFightingHere		=	"SVM_30_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_30_RunAway"						;//Wyobraz sobie! Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_30_Alarm"						;//ALARM!
	Guards						=	"SVM_30_Guards"						;//WACHE!
	Help						=	"SVM_30_Help"						;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_30_GoodMonsterKill"				;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_30_GoodKill"					;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_30_NOTNOW"						;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_30_RunCoward"					;//Stoisz nieruchomo, rajd!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_30_GetOutOfHere"				;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_30_WhyAreYouInHere"				;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_30_YesGoOutOfHere"				;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_30_WhatsThisSupposedToBe"		;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_30_YouDisturbedMySlumber"		;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_30_ITookYourGold"				;//Zloto! To juz moja kopalnia.....
	ShitNoGold					=	"SVM_30_ShitNoGold"					;//Nie masz nawet zlota?
	ITakeYourWeapon				=	"SVM_30_ITakeYourWeapon"				;//Lepiej bym zabral ze soba bron.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_30_WhatAreYouDoing"				;//Ostrzezenie) Hej! Uwazaj!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_30_LookingForTroubleAgain"		;//(agresywny) Nie masz jeszcze wystarczajaco duzo?
	StopMagic					=	"SVM_30_StopMagic"					;//Idz z magia!
	ISaidStopMagic				=	"SVM_30_ISaidStopMagic"				;//Pozbadz sie magii! Czy slyszysz zle?
	WeaponDown					=	"SVM_30_WeaponDown"					;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_30_ISaidWeaponDown"				;//Czy nie slyszysz dobrze? Powiedzialem, ze odlozylem pistolet!
	WiseMove					=	"SVM_30_WiseMove"					;//Idziesz tam, tam idzcie!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_30_NextTimeYoureInForIt"		;//Nadal mówimy o.....
	OhMyHead					=	"SVM_30_OhMyHead"					;//(do siebie) Oh, moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_30_TheresAFight"				;//Wejdzmy do biznesu!
	OhMyGodItsAFight			=	"SVM_30_OhMyGodItsAFight"			;//Oni rozbija czaszki w....
	GoodVictory					=	"SVM_30_GoodVictory"					;//Na to on zasluguje.
	NotBad						= 	"SVM_30_NotBad"						;//(pogniwianie) Nie takie zle....
	OhMyGodHesDown				=	"SVM_30_OhMyGodHesDown"				;//(do siebie) Jaki brutalny facet....
	CheerFriend01				=	"SVM_30_CheerFriend01"				;//Tak, to tak!
	CheerFriend02				=	"SVM_30_CheerFriend02"				;//Chodzcie dalej, odejdzmy!
	CheerFriend03				=	"SVM_30_CheerFriend03"				;//Pozostan na szczycie!
	Ooh01						=	"SVM_30_Ooh01"						;//Nie poddawaj sie niczemu!
	Ooh02						=	"SVM_30_Ooh02"						;//Jestes gonna!
	Ooh03						=	"SVM_30_Ooh03"						;//Nie moge w to uwierzyc!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_30_WhatWasThat"					;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_30_GetOutOfMyBed"					;//Wejsc z lózka!
	Awake						= "SVM_30_Awake"							;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_30_TOUGHGUY_ATTACKLOST"			;//To wszystko jest w porzadku, wygrasz. Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_30_TOUGHGUY_ATTACKWON"			;//Czy musze ponownie pokazac ci, kim jest Pan?
	TOUGHGUY_PLAYERATTACK		= "SVM_30_TOUGHGUY_PLAYERATTACK"			;//Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_30_GOLD_1000"						;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_30_GOLD_950"						;//950 sztuk zlota.
	GOLD_900					= "SVM_30_GOLD_900"						;//900 sztuk zlota.
	GOLD_850					= "SVM_30_GOLD_850"						;//850 sztuk zlota.
	GOLD_800					= "SVM_30_GOLD_800"						;//800 sztuk zlota.
	GOLD_750					= "SVM_30_GOLD_750"						;//750 sztuk zlota.
	GOLD_700					= "SVM_30_GOLD_700"						;//700 sztuk zlota.
	GOLD_650					= "SVM_30_GOLD_650"						;//650 sztuk zlota.
	GOLD_600					= "SVM_30_GOLD_600"						;//600 sztuk zlota.
	GOLD_550					= "SVM_30_GOLD_550"						;//550 sztuk zlota.
	GOLD_500					= "SVM_30_GOLD_500"						;//500 sztuk zlota.
	GOLD_450					= "SVM_30_GOLD_450"						;//450 sztuk zlota.
	GOLD_400					= "SVM_30_GOLD_400"						;//400 sztuk zlota.
	GOLD_350					= "SVM_30_GOLD_350"						;//350 sztuk zlota.
	GOLD_300					= "SVM_30_GOLD_300"						;//300 sztuk zlota.
	GOLD_250					= "SVM_30_GOLD_250"						;//250 sztuk zlota.
	GOLD_200					= "SVM_30_GOLD_200"						;//200 sztuk zlota.
	GOLD_150					= "SVM_30_GOLD_150"						;//150 sztuk zlota.
	GOLD_100					= "SVM_30_GOLD_100"						;//100 sztuk zlota.
	GOLD_90						= "SVM_30_GOLD_90"						;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_30_GOLD_80"						;//80 sztuk zlota.
	GOLD_70						= "SVM_30_GOLD_70"						;//70 sztuk zlota.
	GOLD_60						= "SVM_30_GOLD_60"						;//60 sztuk zlota.
	GOLD_50						= "SVM_30_GOLD_50"						;//50 sztuk zlota.
	GOLD_40						= "SVM_30_GOLD_40"						;//40 sztuk zlota.
	GOLD_30						= "SVM_30_GOLD_30"						;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_30_GOLD_20"						;//20 sztuk zlota.
	GOLD_10						= "SVM_30_GOLD_10"						;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_30_Smalltalk01"					;//... Czy naprawde wierzysz, ze....
	Smalltalk02					= "SVM_30_Smalltalk02"					;//... jest wszystko mozliwe.....
	Smalltalk03					= "SVM_30_Smalltalk03"					;//... powinien byl wiedziec lepiej......
	Smalltalk04					= "SVM_30_Smalltalk04"					;//... jakbym nie mial juz dosc problemów.....
	Smalltalk05					= "SVM_30_Smalltalk05"					;//... kto mówi takie cos.....
	Smalltalk06					= "SVM_30_Smalltalk06"					;//... jest jeszcze wiecej klopotów......
	Smalltalk07					= "SVM_30_Smalltalk07"					;//... wiele do powiedzenia.....
	Smalltalk08					= "SVM_30_Smalltalk08"					;//... Nie zrobilbym tego.....
	Smalltalk09					= "SVM_30_Smalltalk09"					;//... To tylko pogloski....
	Smalltalk10					= "SVM_30_Smalltalk10"					;//... musisz tylko uwazac, co mówisz ludziom....
	Smalltalk11					= "SVM_30_Smalltalk11"					;//... Móglbym panstwu to powiedziec wczesniej.....
	Smalltalk12					= "SVM_30_Smalltalk12"					;//... Nikt mnie nie pyta....
	Smalltalk13					= "SVM_30_Smalltalk13"					;//... Mozna zalowac biednego faceta....
	Smalltalk14					= "SVM_30_Smalltalk14"					;//... nie jest to nic nowego....
	Smalltalk15					= "SVM_30_Smalltalk15"					;//... to oczywiste....
	Smalltalk16					= "SVM_30_Smalltalk16"					;//... nie musisz mnie o to pytac......
	Smalltalk17					= "SVM_30_Smalltalk17"					;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_30_Smalltalk18"					;//... znasz juz moja opinie.....
	Smalltalk19					= "SVM_30_Smalltalk19"					;//... Tak wlasnie powiedzialem.....
	Smalltalk20					= "SVM_30_Smalltalk20"					;//... Nigdy sie tego nie zmieni.....
	Smalltalk21					= "SVM_30_Smalltalk21"					;//... dlaczego nie dowiedzialem sie o tym do tej pory.....
	Smalltalk22					= "SVM_30_Smalltalk22"					;//... poczekajmy i zobaczmy, co sie dzieje....
	Smalltalk23					= "SVM_30_Smalltalk23"					;//... niektóre problemy rozwiazywane sa samodzielnie......
	Smalltalk24					= "SVM_30_Smalltalk24"					;//... Juz nie slysze....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_30_Smalltalk25"					;//... Pijany jak pieklo....
	Smalltalk26					= "SVM_30_Smalltalk26"					;//... Nie mozesz to zrobic ze mna......
	Smalltalk27					= "SVM_30_Smalltalk27"					;//... wszystkie biegly jak króliki, bylem samotny......
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_30_Smalltalk28"					;//... Tak wiec mówi ona w Pismie swietym....[...].
	Smalltalk29					= "SVM_30_Smalltalk29"					;//... Zawsze dzialam w imieniu Innosa....
	Smalltalk30					= "SVM_30_Smalltalk30"					;//... nikt nie moze naruszac boskiego porzadku......
	SmalltalkKhorataAnnaQuest01			= "SVM_30_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_30_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_30_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_30_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_30_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_30_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_30_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_30_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_30_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_30_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_30_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_30_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_30_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_30_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_30_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_30_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_30_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_30_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_30_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_30_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_30_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_30_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_30_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_30_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_30_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_30_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_30_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_30_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_30_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_30_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_30_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_30_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_30_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_30_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_30_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_30_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_30_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_30_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_30_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_30_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_30_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_30_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_30_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_30_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_30_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_30_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_30_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_30_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_30_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_30_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_30_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_30_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_30_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_30_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_30_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_30_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_30_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_30_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_30_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_30_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_30_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_30_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_30_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_30_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_30_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_30_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_30_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_30_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_30_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_30_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_30_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_30_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_30_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_30_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_30_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_30_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_30_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_30_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...

	// Dämonenritterfestung wegen Belagerung

	SmalltalkDMRBelagerungAbdi01			= "SVM_30_SmalltalkDMRBelagerungAbdi01"; //... Szczerze mówiac, nie przykro mi tych dwóch osób....
	SmalltalkDMRBelagerungAbdi02			= "SVM_30_SmalltalkDMRBelagerungAbdi02"; //... chcialby wiedziec, kto zabija ludzi w tym obozie....[...].
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_30_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_30_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_30_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_30_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_30_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_30_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_30_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_30_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_30_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_30_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_30_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_30_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_30_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_30_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_30_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_30_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_30_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_30_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_30_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_30_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_30_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_30_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_30_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_30_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_30_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_30_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_30_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_30_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_30_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_30_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_30_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_30_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_30_Addon_WrongArmor";				//Jaki jest to rodzaj odziezy? Ona Ci nie odpowiada. Nie martw sie o mnie.
	ADDON_WRONGARMOR_SLD		= "SVM_30_ADDON_WRONGARMOR_SLD";			//Kiedy mówie do Ciebie, nosimy nasza zbroje. Idz dalej, wyjdz stad.
	ADDON_WRONGARMOR_MIL		= "SVM_30_ADDON_WRONGARMOR_MIL";			//Nosic pancerz króla, prosze. Chodzcie dalej, odejdzmy.
	ADDON_WRONGARMOR_KDF		= "SVM_30_ADDON_WRONGARMOR_KDF";			//Twoje ubrania nie sa odpowiednie do naszego zamówienia. Zmienic sie.
	ADDON_NOARMOR_BDT			= "SVM_30_ADDON_ADDON_NOARMOR_BDT";			//Nie masz nawet zbroi. Wyjsc stad!

	ADDON_DIEBANDIT				= "SVM_30_ADDON_DIEBANDIT";				//Kolejny bandyta ponownie.
	ADDON_DIRTYPIRATE			= "SVM_30_ADDON_DIRTYPIRATE";			//PIRATEN!

	RELMINE01			= "SVM_30_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_30_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_30_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_30_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_30_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_30_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_30_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_30_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_30_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_30_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_30_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_30_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_30_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_30_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_30_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_30_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_30_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_30_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_30_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_30_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_30_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_30_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_30_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_30_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_30_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_30_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_30_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_30_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_30_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_30_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_30_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_30_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_30_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_30_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_30_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_30_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_30_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_30_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_30_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_30_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_30_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_30_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_30_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_30_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_30_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_30_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_30_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_30_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_30_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_30_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_30_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_30_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_30_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_30_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_30_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_30_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_30_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_34 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_34_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_34_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_34_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_34_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_34_Weather"						;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_34_IGetYouStill"				;//Moge Cie jeszcze dostac!
	DieEnemy					=	"SVM_34_DieEnemy"					;//Teraz Twoja kolej!
	DieMonster					=	"SVM_34_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_34_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_34_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_34_SheepKiller"					;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_34_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	Berzerk						=	"SVM_34_Berzerk"						;//UUAARRGHHHHH!
	YouMurderer					=	"SVM_34_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_34_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_34_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_34_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_34_ThenIBeatYouOutOfHere"		;//Wtedy bede musial cie wybic!
	WhatDidYouDoInThere			=	"SVM_34_WhatDidYouDoInThere"			;//Co tam robiles, huh?
	WillYouStopFighting			=	"SVM_34_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_34_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_34_EnemyKilled"					;//To jest wlasnie dla Ciebie, punk.
	MonsterKilled				=	"SVM_34_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_34_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	rumfummlerDown				=	"SVM_34_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_34_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_34_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_34_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_34_NeverHitMeAgain"				;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_34_YouBetterShouldHaveListened"	;//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_34_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_34_NeverEnterRoomAgain"			;//I ze juz nigdy cie tam juz nie zlapam!
	ThereIsNoFightingHere		=	"SVM_34_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_34_RunAway"						;//Wyobraz sobie! Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_34_Alarm"						;//ALARM!
	Guards						=	"SVM_34_Guards"						;//WACHE!
	Help						=	"SVM_34_Help"						;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_34_GoodMonsterKill"				;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_34_GoodKill"					;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_34_NOTNOW"						;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_34_RunCoward"					;//Stoisz nieruchomo, rajd!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_34_GetOutOfHere"				;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_34_WhyAreYouInHere"				;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_34_YesGoOutOfHere"				;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_34_WhatsThisSupposedToBe"		;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_34_YouDisturbedMySlumber"		;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_34_ITookYourGold"				;//Zloto! To juz moja kopalnia.....
	ShitNoGold					=	"SVM_34_ShitNoGold"					;//Nie masz nawet zlota?
	ITakeYourWeapon				=	"SVM_34_ITakeYourWeapon"				;//Lepiej zabrac ze soba bron.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_34_WhatAreYouDoing"				;//Ostrzezenie) Hej! Uwazaj!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_34_LookingForTroubleAgain"		;//(agresywny) Nie masz jeszcze wystarczajaco duzo?
	StopMagic					=	"SVM_34_StopMagic"					;//Idz z magia!
	ISaidStopMagic				=	"SVM_34_ISaidStopMagic"				;//Pozbadz sie magii! Czy slyszysz zle?
	WeaponDown					=	"SVM_34_WeaponDown"					;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_34_ISaidWeaponDown"				;//Czy nie slyszysz dobrze? Powiedzialem, ze odlozylem pistolet!
	WiseMove					=	"SVM_34_WiseMove"					;//Idziesz tam, tam idzcie!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_34_NextTimeYoureInForIt"		;//Nadal mówimy o.....
	OhMyHead					=	"SVM_34_OhMyHead"					;//(do siebie) Oh, moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_34_TheresAFight"				;//Wejdzmy do biznesu!
	OhMyGodItsAFight			=	"SVM_34_OhMyGodItsAFight"			;//Oni rozbija czaszki w....
	GoodVictory					=	"SVM_34_GoodVictory"					;//Na to on zasluguje.
	NotBad						= 	"SVM_34_NotBad"						;//(pogniwianie) Nie takie zle....
	OhMyGodHesDown				=	"SVM_34_OhMyGodHesDown"				;//(do siebie) Jaki brutalny facet....
	CheerFriend01				=	"SVM_34_CheerFriend01"				;//Tak, to tak!
	CheerFriend02				=	"SVM_34_CheerFriend02"				;//Chodzcie dalej, odejdzmy!
	CheerFriend03				=	"SVM_34_CheerFriend03"				;//Pozostan na szczycie!
	Ooh01						=	"SVM_34_Ooh01"						;//Nie poddawaj sie niczemu!
	Ooh02						=	"SVM_34_Ooh02"						;//Jestes gonna!
	Ooh03						=	"SVM_34_Ooh03"						;//Nie moge w to uwierzyc!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_34_WhatWasThat"					;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_34_GetOutOfMyBed"					;//Wejsc z lózka!
	Awake						= "SVM_34_Awake"							;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_34_TOUGHGUY_ATTACKLOST"			;//To wszystko jest w porzadku, wygrasz. Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_34_TOUGHGUY_ATTACKWON"			;//Czy musze ponownie pokazac ci, kim jest Pan?
	TOUGHGUY_PLAYERATTACK		= "SVM_34_TOUGHGUY_PLAYERATTACK"			;//Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_34_GOLD_1000"						;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_34_GOLD_950"						;//950 sztuk zlota.
	GOLD_900					= "SVM_34_GOLD_900"						;//900 sztuk zlota.
	GOLD_850					= "SVM_34_GOLD_850"						;//850 sztuk zlota.
	GOLD_800					= "SVM_34_GOLD_800"						;//800 sztuk zlota.
	GOLD_750					= "SVM_34_GOLD_750"						;//750 sztuk zlota.
	GOLD_700					= "SVM_34_GOLD_700"						;//700 sztuk zlota.
	GOLD_650					= "SVM_34_GOLD_650"						;//650 sztuk zlota.
	GOLD_600					= "SVM_34_GOLD_600"						;//600 sztuk zlota.
	GOLD_550					= "SVM_34_GOLD_550"						;//550 sztuk zlota.
	GOLD_500					= "SVM_34_GOLD_500"						;//500 sztuk zlota.
	GOLD_450					= "SVM_34_GOLD_450"						;//450 sztuk zlota.
	GOLD_400					= "SVM_34_GOLD_400"						;//400 sztuk zlota.
	GOLD_350					= "SVM_34_GOLD_350"						;//350 sztuk zlota.
	GOLD_300					= "SVM_34_GOLD_300"						;//300 sztuk zlota.
	GOLD_250					= "SVM_34_GOLD_250"						;//250 sztuk zlota.
	GOLD_200					= "SVM_34_GOLD_200"						;//200 sztuk zlota.
	GOLD_150					= "SVM_34_GOLD_150"						;//150 sztuk zlota.
	GOLD_100					= "SVM_34_GOLD_100"						;//100 sztuk zlota.
	GOLD_90						= "SVM_34_GOLD_90"						;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_34_GOLD_80"						;//80 sztuk zlota.
	GOLD_70						= "SVM_34_GOLD_70"						;//70 sztuk zlota.
	GOLD_60						= "SVM_34_GOLD_60"						;//60 sztuk zlota.
	GOLD_50						= "SVM_34_GOLD_50"						;//50 sztuk zlota.
	GOLD_40						= "SVM_34_GOLD_40"						;//40 sztuk zlota.
	GOLD_30						= "SVM_34_GOLD_30"						;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_34_GOLD_20"						;//20 sztuk zlota.
	GOLD_10						= "SVM_34_GOLD_10"						;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_34_Smalltalk01"					;//... Nie moge w to uwierzyc.....
	Smalltalk02					= "SVM_34_Smalltalk02"					;//... Nie bylabym pewna, ze.....
	Smalltalk03					= "SVM_34_Smalltalk03"					;//... To bylo to, co wiedzial wczesniej.......
	Smalltalk04					= "SVM_34_Smalltalk04"					;//... Nie wiem, w co juz wierzyc.....
	Smalltalk05					= "SVM_34_Smalltalk05"					;//... Nie wiem, dlaczego jest tak zdenerwowany.....
	Smalltalk06					= "SVM_34_Smalltalk06"					;//... Nie potrzebuje wiecej klopotów....
	Smalltalk07					= "SVM_34_Smalltalk07"					;//... Slyszalem wiele rzeczy....
	Smalltalk08					= "SVM_34_Smalltalk08"					;//... Wole raczej trzymac rece z dala od niego....
	Smalltalk09					= "SVM_34_Smalltalk09"					;//... po prostu nie mozesz uwierzyc we wszystko, co slyszysz....
	Smalltalk10					= "SVM_34_Smalltalk10"					;//... od mnie tego nie zrobil......
	Smalltalk11					= "SVM_34_Smalltalk11"					;//... Tak wiele myslalem, ze....
	Smalltalk12					= "SVM_34_Smalltalk12"					;//... Nikt nie chce uslyszec mojej opinii.....
	Smalltalk13					= "SVM_34_Smalltalk13"					;//... on naprawde nie zasluzyl na to....
	Smalltalk14					= "SVM_34_Smalltalk14"					;//... Nie powiedz mi, ze tego nie wiedziales....
	Smalltalk15					= "SVM_34_Smalltalk15"					;//... bylo to oczywiste....
	Smalltalk16					= "SVM_34_Smalltalk16"					;//... Skad to sie wzielas?
	Smalltalk17					= "SVM_34_Smalltalk17"					;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_34_Smalltalk18"					;//... Mam wlasna opinie....
	Smalltalk19					= "SVM_34_Smalltalk19"					;//... dokladnie to, co pan powiedzial....
	Smalltalk20					= "SVM_34_Smalltalk20"					;//... Nie sadze, aby w tym cos sie zmienilo....
	Smalltalk21					= "SVM_34_Smalltalk21"					;//... Slysze to po raz pierwszy.....
	Smalltalk22					= "SVM_34_Smalltalk22"					;//... Mozemy tylko poczekac i zobaczyc....
	Smalltalk23					= "SVM_34_Smalltalk23"					;//... problemy, które widzialem przyjezdzajac.....
	Smalltalk24					= "SVM_34_Smalltalk24"					;//... Dlaczego nikt nie slucha mnie....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                           
	Smalltalk25					= "SVM_34_Smalltalk25"					;//... który biegal tak, jakby Beliar sam byl po nim....
	Smalltalk26					= "SVM_34_Smalltalk26"					;//... oczywiscie w koncu dostalismy go.....
	Smalltalk27					= "SVM_34_Smalltalk27"					;//... trzeba wlozyc w to wiele wysilku......
	//ProInnos (NOV/KDF/PAL)                                                                                                                           
	Smalltalk28					= "SVM_34_Smalltalk28"					;//... niektórzy nie wiedza, jak wiele grzeszyli....
	Smalltalk29					= "SVM_34_Smalltalk29"					;//... bo jest to wola Inno....
	Smalltalk30					= "SVM_34_Smalltalk30"					;//... jego czyny byly sprawiedliwe....
	SmalltalkKhorataAnnaQuest01			= "SVM_34_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_34_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_34_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_34_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_34_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_34_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_34_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_34_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_34_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_34_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_34_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_34_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_34_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_34_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_34_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_34_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_34_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_34_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_34_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_34_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_34_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_34_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_34_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_34_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_34_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_34_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_34_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_34_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_34_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_34_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_34_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_34_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_34_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_34_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_34_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_34_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_34_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_34_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_34_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_34_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_34_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_34_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_34_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_34_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_34_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_34_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_34_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_34_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_34_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_34_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_34_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_34_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_34_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_34_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_34_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_34_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_34_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_34_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_34_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_34_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_34_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_34_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_34_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_34_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_34_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_34_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_34_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_34_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_34_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_34_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_34_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_34_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_34_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_34_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_34_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_34_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_34_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_34_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...
	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_34_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_34_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_34_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_34_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_34_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_34_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_34_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_34_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_34_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_34_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_34_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_34_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_34_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_34_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_34_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_34_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_34_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_34_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_34_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_34_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_34_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_34_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_34_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_34_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_34_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_34_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_34_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_34_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_34_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_34_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_34_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_34_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_34_Addon_WrongArmor";			//Ubrania nie pasuja do Ciebie. Musisz miec cos do ukrycia. Nie martw sie o mnie.
	ADDON_WRONGARMOR_SLD		= "SVM_34_ADDON_WRONGARMOR_SLD";		//Jesli chcesz do mnie porozmawiac, bedziesz musial nosic pancerz.
	ADDON_WRONGARMOR_MIL		= "SVM_34_ADDON_WRONGARMOR_MIL";		//Badz dumny z armii i nie bierz sie w tych ubraniach. Najpierw dokonaj zmian.
	ADDON_WRONGARMOR_KDF		= "SVM_34_ADDON_WRONGARMOR_KDF";		//Twoje ubrania nie sa odpowiednie do naszego zamówienia. Zmienic sie.
	ADDON_NOARMOR_BDT			= "SVM_34_ADDON_ADDON_NOARMOR_BDT";		//Nie masz nawet zbroi. Wyjsc stad!

	ADDON_DIEBANDIT				= "SVM_34_ADDON_DIEBANDIT";				//Die, bandyta.
	ADDON_DIRTYPIRATE			= "SVM_34_ADDON_DIRTYPIRATE";			//Smierc, pirat.

	RELMINE01			= "SVM_34_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_34_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_34_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_34_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_34_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_34_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_34_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_34_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_34_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_34_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_34_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_34_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_34_NoLearnGold"			;//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_34_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_34_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_34_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_34_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_34_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_34_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_34_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_34_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_34_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_34_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_34_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_34_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_34_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_34_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_34_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_34_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_34_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_34_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_34_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_34_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_34_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_34_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_34_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_34_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_34_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_34_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_34_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_34_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_34_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_34_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_34_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_34_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_34_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_34_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_34_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_34_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_34_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_34_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_34_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_34_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_34_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_34_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_34_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_34_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};

instance SVM_36 (C_SVM)
{
	// ------ B_Say_GuildGreetings ---------------------------------------------------------------------------------------
	MILGreetings				= 	"SVM_36_MILGreetings"				;//Za Króla!
	PALGreetings				=	"SVM_36_PALGreetings"				;//Dla Innosów!
	BELGreetings				=	"SVM_36_BELGreetings"				;//Aby uhonorowac Beliara!
	AdanosGreetings				=	"SVM_36_AdanosGreetings"				;//Adanos byc z toba!
	Weather						= 	"SVM_36_Weather"						;//Dam pogoda!
	// ------ B_Say_AttackReason -----------------------------------------------------------------------------------------
	IGetYouStill				= 	"SVM_36_IGetYouStill"				;//Moge Cie jeszcze dostac!
	DieEnemy					=	"SVM_36_DieEnemy"					;//Teraz Twoja kolej!
	DieMonster					=	"SVM_36_DieMonster"					;//Jest jeszcze jeden z nich!
	DirtyThief					=	"SVM_36_DirtyThief"					;//Czekaj, brudny zlodziej!
	HandsOff					=	"SVM_36_HandsOff"					;//Zdejmij mi rece!
	SheepKiller					=	"SVM_36_SheepKiller"					;//Bastard zabija nasze owce!
	SheepKillerMonster			=	"SVM_36_SheepKillerMonster"			;//Damnowy syn suki jedza nasza owce!
	YouMurderer					=	"SVM_36_YouMurderer"					;//Morderca!
	DieStupidBeast				=	"SVM_36_DieStupidBeast"				;//Nie ma tu zadnych stworzen!
	YouDareHitMe				=	"SVM_36_YouDareHitMe"				;//Czekaj, syn suki!
	YouAskedForIt				=	"SVM_36_YouAskedForIt"				;//Prosiles o to!
	ThenIBeatYouOutOfHere		=	"SVM_36_ThenIBeatYouOutOfHere"		;//Wtedy bede musial cie wybic!
	WhatDidYouDoInThere			=	"SVM_36_WhatDidYouDoInThere"			;//Co tam robiles, huh?
	WillYouStopFighting			=	"SVM_36_WillYouStopFighting"			;//Prosze, zatrzymacie to, prosze!
	// ------ B_Say_AttackEND ---------------------------------------------------------------------------------------------
	KillEnemy					= 	"SVM_36_KillEnemy"					;//Smierc, skumbag!
	EnemyKilled					=	"SVM_36_EnemyKilled"					;//To jest wlasnie dla Ciebie, punk.
	MonsterKilled				=	"SVM_36_MonsterKilled"				;//Mniej suki!
	ThiefDown					=	"SVM_36_ThiefDown"					;//Nie próbujesz odebrac mi mnie nigdy wiecej!
	Berzerk						=	"SVM_36_Berzerk"						;//UUAARRGHHHHH!
	rumfummlerDown				=	"SVM_36_rumfummlerDown"				;//W przyszlosci trzymaj sie z dala od rzeczy, których nie masz w biznesie!
	SheepAttackerDown			=	"SVM_36_SheepAttackerDown"			;//Nie rób tego nigdy wiecej! To sa nasze owce!
	KillMurderer				=	"SVM_36_KillMurderer"				;//Smierc, morderca!
	StupidBeastKilled			=	"SVM_36_StupidBeastKilled"			;//Cóz za glupia cóz!
	NeverHitMeAgain				=	"SVM_36_NeverHitMeAgain"				;//Jeszcze nigdy znowu nie pierdole!
	YouBetterShouldHaveListened	=	"SVM_36_YouBetterShouldHaveListened"	;//Powinienes mnie wysluchac!
	GetUpAndBeGone				=	"SVM_36_GetUpAndBeGone"				;//Teraz wyjmij z niego pieklo!
	NeverEnterRoomAgain			=	"SVM_36_NeverEnterRoomAgain"			;//I ze juz nigdy cie tam juz nie zlapam!
	ThereIsNoFightingHere		=	"SVM_36_ThereIsNoFightingHere"		;//Nie ma tu walki, to prawda? Niech to bedzie dla ciebie lekcja!
	// ------ C_WantToFlee -------------------------------------------------------------------------------------------------
	RunAway						= 	"SVM_36_RunAway"						;//Wyobraz sobie! Wypuscmy sie tutaj!
	// ------ C_WantToCallGuardsToFight --------------------------------------------------------------------------------------
	Alarm						=	"SVM_36_Alarm"						;//ALARM!
	Guards						=	"SVM_36_Guards"						;//WACHE!
	Help						=	"SVM_36_Help"						;//Pomoc!
	// ------ B_AssessMurder -----------------------------------------------------------------------------------------------
	GoodMonsterKill				=	"SVM_36_GoodMonsterKill"				;//Dobrze zrobiona - mniej brudna krowa!
	GoodKill					= 	"SVM_36_GoodKill"					;//(skrzyk) Tak, dokonczyc swinie!
	// ------ B_AssessTalk -----------------------------------------------------------------------------------------------
	NOTNOW						= 	"SVM_36_NOTNOW"						;//Udajcie sie ode mnie!
	// ------ ZS_Attack ----------------------------------------------------------------------------------------------------
	RunCoward					=	"SVM_36_RunCoward"					;//Stoisz nieruchomo, rajd!
	// ------ ZS_ClearRoom -------------------------------------------------------------------------------------------------
	GetOutOfHere				=	"SVM_36_GetOutOfHere"				;//Wyjsc stad!
	WhyAreYouInHere				=	"SVM_36_WhyAreYouInHere"				;//Co Pan tutaj robi? Idzcie!
	YesGoOutOfHere				= 	"SVM_36_YesGoOutOfHere"				;//Tak, wyjdz stad!
	// ------ ZS_ObservePlayer ---------------------------------------------------------------------------------------------
	WhatsThisSupposedToBe		=	"SVM_36_WhatsThisSupposedToBe"		;//Hej! Po co sie chwiejesz?
	YouDisturbedMySlumber		=	"SVM_36_YouDisturbedMySlumber"		;//Co sie dzieje?
	// ------ ZS_RansackBody -----------------------------------------------------------------------------------------------
	ITookYourGold				=	"SVM_36_ITookYourGold"				;//Zloto! To juz moja kopalnia.....
	ShitNoGold					=	"SVM_36_ShitNoGold"					;//Syn suki nie ma nawet zlota.
	ITakeYourWeapon				=	"SVM_36_ITakeYourWeapon"				;//Lepiej bym zabral ze soba bron.
	// ------ ZS_ReactToDamage ---------------------------------------------------------------------------------------------
	WhatAreYouDoing				=	"SVM_36_WhatAreYouDoing"				;//Ostrzezenie) Hej! Uwazaj!
	// ------ ZS_ReactToWeapon ---------------------------------------------------------------------------------------------
	LookingForTroubleAgain		=	"SVM_36_LookingForTroubleAgain"		;//Jeszcze za malo?
	StopMagic					=	"SVM_36_StopMagic"					;//Idz z magia!
	ISaidStopMagic				=	"SVM_36_ISaidStopMagic"				;//Pozbadz sie magii! Czy slyszysz zle?
	WeaponDown					=	"SVM_36_WeaponDown"					;//Odlozyc pistolet!
	ISaidWeaponDown				=	"SVM_36_ISaidWeaponDown"				;//Czy nie slyszysz dobrze? Powiedzialem, ze odlozylem pistolet!
	WiseMove					=	"SVM_36_WiseMove"					;//Idziesz tam, tam idzcie!
	// ------ ZS_Unconscious ------------------------------------------------------------------------------------------------
	NextTimeYoureInForIt		=	"SVM_36_NextTimeYoureInForIt"		;//Nadal mówimy o.....
	OhMyHead					=	"SVM_36_OhMyHead"					;//(do siebie) Oh, moja czaszka....
	// ------ ZS_WatchFight -------------------------------------------------------------------------------------------------
	TheresAFight				=	"SVM_36_TheresAFight"				;//Wejdzmy do biznesu!
	OhMyGodItsAFight			=	"SVM_36_OhMyGodItsAFight"			;//Oni rozbija czaszki w....
	GoodVictory					=	"SVM_36_GoodVictory"					;//Na to on zasluguje.
	NotBad						= 	"SVM_36_NotBad"						;//(pogniwianie) Nie takie zle....
	OhMyGodHesDown				=	"SVM_36_OhMyGodHesDown"				;//(do siebie) Jaki brutalny facet....
	CheerFriend01				=	"SVM_36_CheerFriend01"				;//Tak, to tak!
	CheerFriend02				=	"SVM_36_CheerFriend02"				;//Chodzcie dalej, odejdzmy!
	CheerFriend03				=	"SVM_36_CheerFriend03"				;//Pozostan na szczycie!
	Ooh01						=	"SVM_36_Ooh01"						;//Nie poddawaj sie niczemu!
	Ooh02						=	"SVM_36_Ooh02"						;//Jestes gonna!
	Ooh03						=	"SVM_36_Ooh03"						;//Nie moge w to uwierzyc!
	// ----------------------------------------------------------------------------------------------------------------------
	WhatWasThat					= "SVM_36_WhatWasThat"					;//Co to bylo?
	// ----------------------------------------------------------------------------------------------------------------------
	GetOutOfMyBed				= "SVM_36_GetOutOfMyBed"					;//Wejsc z lózka!
	Awake						= "SVM_36_Awake"							;//(rzut serca)
	// ----------------------------------------------------------------------------------------------------------------------
	TOUGHGUY_ATTACKLOST			= "SVM_36_TOUGHGUY_ATTACKLOST"			;//To wszystko jest w porzadku, wygrasz. Czego chcesz?
	TOUGHGUY_ATTACKWON			= "SVM_36_TOUGHGUY_ATTACKWON"			;//Czy musze ponownie pokazac ci, kim jest Pan?
	TOUGHGUY_PLAYERATTACK		= "SVM_36_TOUGHGUY_PLAYERATTACK"			;//Chcesz znowu sie ze mna pietrowac lub co?
	// ----------------------------------------------------------------------------------------------------------------------
	GOLD_1000					= "SVM_36_GOLD_1000"						;//Tysiac sztuk zlota.
	GOLD_950					= "SVM_36_GOLD_950"						;//950 sztuk zlota.
	GOLD_900					= "SVM_36_GOLD_900"						;//900 sztuk zlota.
	GOLD_850					= "SVM_36_GOLD_850"						;//850 sztuk zlota.
	GOLD_800					= "SVM_36_GOLD_800"						;//800 sztuk zlota.
	GOLD_750					= "SVM_36_GOLD_750"						;//750 sztuk zlota.
	GOLD_700					= "SVM_36_GOLD_700"						;//700 sztuk zlota.
	GOLD_650					= "SVM_36_GOLD_650"						;//650 sztuk zlota.
	GOLD_600					= "SVM_36_GOLD_600"						;//600 sztuk zlota.
	GOLD_550					= "SVM_36_GOLD_550"						;//550 sztuk zlota.
	GOLD_500					= "SVM_36_GOLD_500"						;//500 sztuk zlota.
	GOLD_450					= "SVM_36_GOLD_450"						;//450 sztuk zlota.
	GOLD_400					= "SVM_36_GOLD_400"						;//400 sztuk zlota.
	GOLD_350					= "SVM_36_GOLD_350"						;//350 sztuk zlota.
	GOLD_300					= "SVM_36_GOLD_300"						;//300 sztuk zlota.
	GOLD_250					= "SVM_36_GOLD_250"						;//250 sztuk zlota.
	GOLD_200					= "SVM_36_GOLD_200"						;//200 sztuk zlota.
	GOLD_150					= "SVM_36_GOLD_150"						;//150 sztuk zlota.
	GOLD_100					= "SVM_36_GOLD_100"						;//100 sztuk zlota.
	GOLD_90						= "SVM_36_GOLD_90"						;//Dziewiecdziesiat sztuk zlota.
	GOLD_80						= "SVM_36_GOLD_80"						;//80 sztuk zlota.
	GOLD_70						= "SVM_36_GOLD_70"						;//70 sztuk zlota.
	GOLD_60						= "SVM_36_GOLD_60"						;//60 sztuk zlota.
	GOLD_50						= "SVM_36_GOLD_50"						;//50 sztuk zlota.
	GOLD_40						= "SVM_36_GOLD_40"						;//40 sztuk zlota.
	GOLD_30						= "SVM_36_GOLD_30"						;//Trzydziesci sztuk zlota.
	GOLD_20						= "SVM_36_GOLD_20"						;//20 sztuk zlota.
	GOLD_10						= "SVM_36_GOLD_10"						;//10 sztuk zlota.
	// -----------------------------------------------------------------------------------------------------------------------
	Smalltalk01					= "SVM_36_Smalltalk01"					;//... Czy naprawde wierzysz, ze....
	Smalltalk02					= "SVM_36_Smalltalk02"					;//... jest wszystko mozliwe.....
	Smalltalk03					= "SVM_36_Smalltalk03"					;//... powinien byl wiedziec lepiej......
	Smalltalk04					= "SVM_36_Smalltalk04"					;//... jakbym nie mial juz dosc problemów.....
	Smalltalk05					= "SVM_36_Smalltalk05"					;//... kto mówi takie cos.....
	Smalltalk06					= "SVM_36_Smalltalk06"					;//... jest jeszcze wiecej klopotów......
	Smalltalk07					= "SVM_36_Smalltalk07"					;//... wiele do powiedzenia.....
	Smalltalk08					= "SVM_36_Smalltalk08"					;//... Nie zrobilbym tego.....
	Smalltalk09					= "SVM_36_Smalltalk09"					;//... To tylko pogloski....
	Smalltalk10					= "SVM_36_Smalltalk10"					;//... musisz tylko uwazac, co mówisz ludziom....
	Smalltalk11					= "SVM_36_Smalltalk11"					;//... Móglbym panstwu to powiedziec wczesniej.....
	Smalltalk12					= "SVM_36_Smalltalk12"					;//... Nikt mnie nie pyta....
	Smalltalk13					= "SVM_36_Smalltalk13"					;//... Mozna zalowac biednego faceta....
	Smalltalk14					= "SVM_36_Smalltalk14"					;//... nie jest to nic nowego....
	Smalltalk15					= "SVM_36_Smalltalk15"					;//... to oczywiste....
	Smalltalk16					= "SVM_36_Smalltalk16"					;//... nie musisz mnie o to pytac......
	Smalltalk17					= "SVM_36_Smalltalk17"					;//... To nie moze trwac wiecznie.....
	Smalltalk18					= "SVM_36_Smalltalk18"					;//... znasz juz moja opinie.....
	Smalltalk19					= "SVM_36_Smalltalk19"					;//... Tak wlasnie powiedzialem.....
	Smalltalk20					= "SVM_36_Smalltalk20"					;//... nic sie nigdy nie zmieni......
	Smalltalk21					= "SVM_36_Smalltalk21"					;//... dlaczego nie dowiedzialem sie o tym do tej pory.....
	Smalltalk22					= "SVM_36_Smalltalk22"					;//... poczekajmy i zobaczmy, co sie dzieje....
	Smalltalk23					= "SVM_36_Smalltalk23"					;//... niektóre problemy rozwiazywane sa samodzielnie......
	Smalltalk24					= "SVM_36_Smalltalk24"					;//... Juz nie slysze....
	//ToughGuy (SLD/MIL/DJG)                                                                                                                        
	Smalltalk25					= "SVM_36_Smalltalk25"					;//... Pijany jak pieklo....
	Smalltalk26					= "SVM_36_Smalltalk26"					;//... Nie mozesz to zrobic ze mna......
	Smalltalk27					= "SVM_36_Smalltalk27"					;//... wszystkie biegly jak króliki, bylem samotny......
	//ProInnos (NOV/KDF/PAL)                                                                                                                        
	Smalltalk28					= "SVM_36_Smalltalk28"					;//... Tak wiec mówi ona w Pismie swietym....[...].
	Smalltalk29					= "SVM_36_Smalltalk29"					;//... Zawsze dzialam w imieniu Innosa....
	Smalltalk30					= "SVM_36_Smalltalk30"					;//... nikt nie moze naruszac boskiego porzadku......
	SmalltalkKhorataAnnaQuest01			= "SVM_36_SmalltalkKhorataAnnaQuest01"; //... On ich wszystkich zabil......
	SmalltalkKhorataAnnaQuest02			= "SVM_36_SmalltalkKhorataAnnaQuest02"; //... po tym, co zrobil przed sedzia, nie pozwole mu wejsc do mojego domu....
	SmalltalkKhorataAnnaQuest03			= "SVM_36_SmalltalkKhorataAnnaQuest03"; //... Nie oplakuje moich synów i córek....
	SmalltalkKhorataAnnaQuest04			= "SVM_36_SmalltalkKhorataAnnaQuest04"; //... Ulrich zawsze wydawal mi sie dziwny....
	SmalltalkKhorataAnnaQuest05			= "SVM_36_SmalltalkKhorataAnnaQuest05"; //... zakladac, ze Ulrich byl równiez czarownica....
	SmalltalkKhorataAnnaQuest06			= "SVM_36_SmalltalkKhorataAnnaQuest06"; //... Nigdy bym nie stanal po stronie sedziego.... Wiecej
	SmalltalkKhorataDichter01			= "SVM_36_SmalltalkKhorataDichter01"; //... Nie mogly to byc wiersze, które byly za nie odpowiedzialne......
	SmalltalkKhorataDichter02			= "SVM_36_SmalltalkKhorataDichter02"; //... zaprzestal teraz pisania.....
	SmalltalkKhorataDichter03			= "SVM_36_SmalltalkKhorataDichter03"; //... nigdy wczesniej nie pomagal mi nigdy wczesniej......
	SmalltalkKhorataDichter04			= "SVM_36_SmalltalkKhorataDichter04"; //... Nie widzialem go od dawna.....
	SmalltalkKhorataDichter05			= "SVM_36_SmalltalkKhorataDichter05"; //... Tak bardzo tesknie za jego historiami....
	SmalltalkKhorataEndres01			= "SVM_36_SmalltalkKhorataEndres01"; //... o mezu Juliany? ...
	SmalltalkKhorataEndres02			= "SVM_36_SmalltalkKhorataEndres02"; //... o Adanos, teraz ludzie sa porwani w Khorata....
	SmalltalkKhorataEndres03			= "SVM_36_SmalltalkKhorataEndres03"; //... Nie wyobrazam sobie, ze jeszcze zyje....
	SmalltalkKhorataEndres04			= "SVM_36_SmalltalkKhorataEndres04"; //... Ale kto nas teraz uzdrawia? ...
	SmalltalkKhorataEndres05			= "SVM_36_SmalltalkKhorataEndres05"; //... Nie moge uwierzyc, ze byl winny....
	SmalltalkKhorataEndres06			= "SVM_36_SmalltalkKhorataEndres06"; //... Nie zrobil nic lepszego niz uzdrowiciel.....
	SmalltalkKhorataEndres07			= "SVM_36_SmalltalkKhorataEndres07"; //... bezimienny czlowiek jest dla mnie bohaterem......
	SmalltalkKhorataFrauenkleider01			= "SVM_36_SmalltalkKhorataFrauenkleider01"; //... Melvin nosi damskie ubrania! ...
	SmalltalkKhorataFrauenkleider02			= "SVM_36_SmalltalkKhorataFrauenkleider02"; //... Czy chce byc traktowany powaznie? ...
	SmalltalkKhorataFrauenkleider03			= "SVM_36_SmalltalkKhorataFrauenkleider03"; //... Melvin ukradl moja bielizne! ...

	SmalltalkKhorataUnruhen01			= "SVM_36_SmalltalkKhorataUnruhen01"; //... Bedziesz mial racje......
	SmalltalkKhorataUnruhen01			= "SVM_36_SmalltalkKhorataUnruhen01"; //... Byloby inaczej w przeszlosci......
	SmalltalkKhorataUnruhen01			= "SVM_36_SmalltalkKhorataUnruhen01"; //... Powinnismy przytloczyc ich noca.....
	SmalltalkKhorataUnruhen01			= "SVM_36_SmalltalkKhorataUnruhen01"; //... Na to wlasnie zasluguja....
	SmalltalkKhorataUnruhen01			= "SVM_36_SmalltalkKhorataUnruhen01"; //... Tyrus i Dalton sa martwe! ...
	SmalltalkKhorataUnruhen01			= "SVM_36_SmalltalkKhorataUnruhen01"; //... Co wiec? Co mnie obchodzi? ...
	SmalltalkKhorataUnruhen01			= "SVM_36_SmalltalkKhorataUnruhen01"; //... Trudno mi sie odwazyc wyjsc na ulice......
	SmalltalkKhorataUnruhen01			= "SVM_36_SmalltalkKhorataUnruhen01"; //... To byka.
	SmalltalkKhorataUnruhen01			= "SVM_36_SmalltalkKhorataUnruhen01"; //... Lukasz mial zostac nowym gubernatorem....
	SmalltalkKhorataUnruhen01			= "SVM_36_SmalltalkKhorataUnruhen01"; //... Mysle, ze Wendel bylby lepszy.....
	SmalltalkKhorataUnruhen01			= "SVM_36_SmalltalkKhorataUnruhen01"; //... Nie teodorowy! ...

	SmalltalkKhorataUnruhenTheodorus01		= "SVM_36_SmalltalkKhorataUnruhenTheodorus01"; //... Bardzo zla decyzja....
	SmalltalkKhorataUnruhenTheodorus02		= "SVM_36_SmalltalkKhorataUnruhenTheodorus02"; //... Nie moglo sie to pogorszyc.....
	SmalltalkKhorataUnruhenTheodorus03		= "SVM_36_SmalltalkKhorataUnruhenTheodorus03"; //... Zdejmij glowe z powrotem na.....
	SmalltalkKhorataUnruhenTheodorus04		= "SVM_36_SmalltalkKhorataUnruhenTheodorus04"; //... Opuszczam miasto....

	SmalltalkKhorataUnruhenWendel01			= "SVM_36_SmalltalkKhorataUnruhenWendel01"; //... Ciesze sie, ze walka sie skonczyla....
	SmalltalkKhorataUnruhenWendel02			= "SVM_36_SmalltalkKhorataUnruhenWendel02"; //... Z Wendel wszystko musi zawsze dzialac poprawnie.....
	SmalltalkKhorataUnruhenWendel03			= "SVM_36_SmalltalkKhorataUnruhenWendel03"; //... W koncu osmiele sie wrócic na droge.....
	SmalltalkKhorataUnruhenWendel04			= "SVM_36_SmalltalkKhorataUnruhenWendel04"; //... Buddlerzy uciekli zbyt dobrze! ...

	SmalltalkKhorataUnruhenLukas01			= "SVM_36_SmalltalkKhorataUnruhenLukas01"; //... Dlaczego nie mozemy juz brac dawcy radosci? ...
	SmalltalkKhorataUnruhenLukas02			= "SVM_36_SmalltalkKhorataUnruhenLukas02"; //... Przeciez Lukasz jest lepszy niz Wendel.....
	SmalltalkKhorataUnruhenLukas03			= "SVM_36_SmalltalkKhorataUnruhenLukas03"; //... Oni zabili wszystkich Buddlerów! ...
	SmalltalkKhorataUnruhenLukas04			= "SVM_36_SmalltalkKhorataUnruhenLukas04"; //... Lucas jest po prostu glupi....

	SmalltalkKhorataDiebeGrusel01			= "SVM_36_SmalltalkKhorataDiebeGrusel01"; //... Czy slyszales ten opuszczony dom na skraju miasta? ...
	SmalltalkKhorataDiebeGrusel02			= "SVM_36_SmalltalkKhorataDiebeGrusel02"; //... Tak, mówi sie, ze zdarzyly sie tam straszne rzeczy. ...
	SmalltalkKhorataDiebeGrusel03			= "SVM_36_SmalltalkKhorataDiebeGrusel03"; //... I wciaz czaja sie tam sily zla. ...
	SmalltalkKhorataDiebeGrusel04			= "SVM_36_SmalltalkKhorataDiebeGrusel04"; //... Naprawde chca tam otworzyc restauracje. ...
	SmalltalkKhorataDiebeGrusel05			= "SVM_36_SmalltalkKhorataDiebeGrusel05"; //... Zmeczony zyciem! Wiec nie jestem gonna postawic w nim stope. ...
	SmalltalkKhorataDiebeGrusel06			= "SVM_36_SmalltalkKhorataDiebeGrusel06"; //... I nawet nie jade nigdzie w poblizu budynku. ...

	SmalltalkKhorataDiebeBib01			= "SVM_36_SmalltalkKhorataDiebeBib01"; //... Czy slyszales uczonego....
	SmalltalkKhorataDiebeBib02			= "SVM_36_SmalltalkKhorataDiebeBib02"; //... Tak, podobno ukradl cenne dokumenty z biblioteki......
	SmalltalkKhorataDiebeBib03			= "SVM_36_SmalltalkKhorataDiebeBib03"; //... A jest kilku swiadków, w tym gubernator....
	SmalltalkKhorataDiebeBib04			= "SVM_36_SmalltalkKhorataDiebeBib04"; //... A on bardzo powaznie twierdzi, ze caly czas mieszka w domu....
	SmalltalkKhorataDiebeBib05			= "SVM_36_SmalltalkKhorataDiebeBib05"; //... Oczywiscie nikt go tam nie widzial....
	SmalltalkKhorataDiebeBib06			= "SVM_36_SmalltalkKhorataDiebeBib06"; //... Jak on biegal przez miasto przed kradzieza, ale juz teraz....
	SmalltalkKhorataDiebeBib07			= "SVM_36_SmalltalkKhorataDiebeBib07"; //... Pokryte zgnilymi owocami.....
	SmalltalkKhorataDiebeBib08			= "SVM_36_SmalltalkKhorataDiebeBib08"; //... Musial naprawde stracic umysl....

	SmalltalkKhorataNormal01			= "SVM_36_SmalltalkKhorataNormal01"; //... Od dluzszego czasu nie widzialam wlasciwego spalania czarownic! ...
	SmalltalkKhorataNormal02			= "SVM_36_SmalltalkKhorataNormal02"; //... Bede mial jeszcze jedna....
	SmalltalkKhorataNormal03			= "SVM_36_SmalltalkKhorataNormal03"; //... Nastepna runda na mnie! ...
	SmalltalkKhorataNormal04			= "SVM_36_SmalltalkKhorataNormal04"; //... Jutro to jeszcze jeden dzien - ale on nie bedzie sie lepiej cieszyl.....
	SmalltalkKhorataNormal05			= "SVM_36_SmalltalkKhorataNormal05"; //... Nie pozwolisz czarnoksieznikom zyc....
	SmalltalkKhorataNormal06			= "SVM_36_SmalltalkKhorataNormal06"; //... Grawita zostala odlana.....

	// Khorinis

	SmalltalkRangar01			= "SVM_36_SmalltalkRangar01"; //... teraz nawet milicja ma byc klientem czerwonej latarni....
	SmalltalkRangar02			= "SVM_36_SmalltalkRangar02"; //... Slyszales o owcach Rangar i Alwin? ...

	SmalltalkMatteo01			= "SVM_36_SmalltalkMatteo01"; //... Czy byles juz Matteo? ...
	SmalltalkMatteo02			= "SVM_36_SmalltalkMatteo02"; //... Matte? Czyz nie ozenil sie? ...
	SmalltalkMatteo03			= "SVM_36_SmalltalkMatteo03"; //... wszedzie sa tylko zgnile jablka....
	SmalltalkMatteo04			= "SVM_36_SmalltalkMatteo04"; //... Teraz kupuje od Matteo, gdzie mozna jeszcze dostac swieze owoce....

	SmalltalkKhorinisMario01			= "SVM_36_SmalltalkKhorinisMario01"; //... Paladyny juz sie ubijaja.....
	SmalltalkKhorinisMario02			= "SVM_36_SmalltalkKhorinisMario02"; //... Nie chce, aby ten nieznajomy byl calkowicie niewinny smierci Garonda. ...
	SmalltalkKhorinisMario03			= "SVM_36_SmalltalkKhorinisMario03"; //... Ci dwaj mezczyzni moga byc w miescie i miec klopoty! ...
	SmalltalkKhorinisMario04			= "SVM_36_SmalltalkKhorinisMario04"; //... Milicja nie spelnila swoich obowiazków, to moim zdaniem....

	SmalltalkFellan01			= "SVM_36_SmalltalkFellan01"; //... Moglem zabic Fellana! O godzinie 7:00 rano juz beknie jak szalony. ...
	SmalltalkFellan02			= "SVM_36_SmalltalkFellan02"; //... Tock, tock, tock, tock, tock....

	SmalltalkMikaPflanzen01			= "SVM_36_SmalltalkMikaPflanzen01"; //... Mika oferuje roslinom leczniczym za okazyjna cene! ...
	SmalltalkMikaPflanzen02			= "SVM_36_SmalltalkMikaPflanzen02"; //... Ten nos buraczany zbiera wszystkie rosliny z mojego nosa! ...

	// ----------------------------------------------------------------------------------------------------------------------
	NoLearnNoPoints				= "SVM_36_NoLearnNoPoints"			;//Wróc do domu, gdy masz wiecej doswiadczenia.
	NoLearnOverPersonalMAX		= "SVM_36_NoLearnOverPersonalMAX"	;//Pytasz mnie wiecej niz ja moge Cie nauczyc.
	NoLearnYoureBetter			= "SVM_36_NoLearnYoureBetter"		;//Nie moge juz niczego nauczyc. Juz jestes zbyt dobry.
	YouLearnedSomething			= "SVM_36_YouLearnedSomething"		;//Zobacz, ze dostales sie lepiej....
	// ----------------------------------------------------------------------------------------------------------------------
	UNTERSTADT					= "SVM_36_UNTERSTADT"				;//Teraz jestes w dolnym miescie.
	OBERSTADT					= "SVM_36_OBERSTADT"					;//Teraz jestes w górnym miescie.
	TEMPEL						= "SVM_36_TEMPEL"					;//Teraz jestes w swiatyni.
	MARKT						= "SVM_36_MARKT"						;//Teraz jestes na rynku.
	GALGEN						= "SVM_36_GALGEN"					;//Teraz jestes na szubienicy przed barakami.
	KASERNE						= "SVM_36_KASERNE"					;//To sa baraki.
	HAFEN						= "SVM_36_HAFEN"						;//Jestes tutaj na nabrzezu.
	// -----------------------
	WHERETO						= "SVM_36_WHERETO"					;//Gdzie idziesz?
	// -----------------------
	OBERSTADT_2_UNTERSTADT		= "SVM_36_OBERSTADT_2_UNTERSTADT"	;//Stamtad nalezy przejsc przez brame sródmiejska i wjechac do dolnego miasta.
	UNTERSTADT_2_OBERSTADT		= "SVM_36_UNTERSTADT_2_OBERSTADT"	;//Na poludniowej bramie miasta znajduje sie klatka schodowa prowadzaca do bramy sródmiejskiej. Tu wlasnie zaczyna sie Górne Miasto.
	UNTERSTADT_2_TEMPEL			= "SVM_36_UNTERSTADT_2_TEMPEL"		;//Od kuzni przechodzimy przez przejscie podziemne i wchodzimy na plac swiatyni.
	UNTERSTADT_2_HAFEN			= "SVM_36_UNTERSTADT_2_HAFEN"		;//Z kowalstwa zejdz na Hafenstrasse i dotrzesz do portu.
	TEMPEL_2_UNTERSTADT			= "SVM_36_TEMPEL_2_UNTERSTADT"		;//Z rynku swiatyni znajduje sie przejscie podziemne prowadzace do dolnego miasta.
	TEMPEL_2_MARKT				= "SVM_36_TEMPEL_2_MARKT"			;//Jesli stoisz przed swiatynia, idziesz w lewo i wzdluz muru miasta, to przychodzisz na targ.
	TEMPEL_2_GALGEN				= "SVM_36_TEMPEL_2_GALGEN"			;//Jesli przejdziesz obok pubu po lewej stronie swiatyni, przyjdziesz na plac szubienicy.
	MARKT_2_TEMPEL				= "SVM_36_MARKT_2_TEMPEL"			;//Jesli przejedziesz przez wysoki mur miejski z rynku, dojdziesz do swiatyni.
	MARKT_2_KASERNE				= "SVM_36_MARKT_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach naprzeciwko hotelu.
	MARKT_2_GALGEN				= "SVM_36_MARKT_2_GALGEN"			;//Wystarczy isc po duzych barakach, a przyjdziesz do szubienicy.
	GALGEN_2_TEMPEL				= "SVM_36_GALGEN_2_TEMPEL"			;//Z szubienicy zejdziemy w dól alei i dojdziemy do swiatyni.
	GALGEN_2_MARKT				= "SVM_36_GALGEN_2_MARKT"			;//Wystarczy po prostu przejsc przez duzy barak i przyjsc na targ.
	GALGEN_2_KASERNE			= "SVM_36_GALGEN_2_KASERNE"			;//Baraki to ogromny budynek. Wystarczy wejsc po schodach w góre.
	KASERNE_2_MARKT				= "SVM_36_KASERNE_2_MARKT"			;//Wystarczy zejsc schodami przy glównym wejsciu po lewej stronie i przyjsc na targowisko.
	KASERNE_2_GALGEN			= "SVM_36_KASERNE_2_GALGEN"			;//Wystarczy zejsc schodami w dól przy glównym wejsciu po prawej stronie i przyjdziesz na szubienice.
	HAFEN_2_UNTERSTADT			= "SVM_36_HAFEN_2_UNTERSTADT"		;//Z muru nabrzeza nalezy wejsc w góre Hafenstraße i dotrzec do dolnego miasta.
	// -------------------------------------------------------------------------------------
	Dead						= "SVM_36_Dead"						;//Aaaaaaaaarglas!
	Aargh_1						= "SVM_36_Aargh_1"					;//Aargh
	Aargh_2						= "SVM_36_Aargh_2"					;//Aargh
	Aargh_3						= "SVM_36_Aargh_3"					;//Aargh
	
	//-------------------------------- Addon ------------------------------------------------
	
	ADDON_WRONGARMOR			= "SVM_36_Addon_WrongArmor";				//To nie jest twoja odziez. Nie rozmawiam z wami.
	ADDON_WRONGARMOR_SLD		= "SVM_36_ADDON_WRONGARMOR_SLD";			//Jak chodzisz? Zalóz cos rozsadnego.
	ADDON_WRONGARMOR_MIL		= "SVM_36_ADDON_WRONGARMOR_MIL";			//Jestes zolnierzem! Odpowiednio ubrac sie.
	ADDON_WRONGARMOR_KDF		= "SVM_36_ADDON_WRONGARMOR_KDF";			//Twoje ubrania nie sa odpowiednie do naszego zamówienia. Zmienic sie.
	ADDON_NOARMOR_BDT			= "SVM_36_ADDON_ADDON_NOARMOR_BDT";		//Nie masz nawet zbroi. Wyjsc stad!

	ADDON_DIEBANDIT				= "SVM_36_ADDON_DIEBANDIT";				//Zgubisz sie, brudny bandyta!
	ADDON_DIRTYPIRATE			= "SVM_36_ADDON_DIRTYPIRATE";			//Pakiet piracki!

	RELMINE01			= "SVM_36_RELMINE01";			//Nie moge juz tego robic!
	RELMINE02			= "SVM_36_RELMINE02";			//Gdyby tylko mialem cos do jedzenia.....
	RELMINE03			= "SVM_36_RELMINE03";			//Dmuchaj po uderzeniu, caly dzien przez caly dzien.....
	RELMINE04			= "SVM_36_RELMINE04";			//To trudne.
	RELMINE05			= "SVM_36_RELMINE05";			//Kiedy przychodzi ulga?
	RELMINE06			= "SVM_36_RELMINE06";			//Najczystsza eksploatacja jest taka!
	RELMINE07			= "SVM_36_RELMINE07";			//Nie wróce jutro, obiecuje, ze nie wróce jutro.... Wiecej
	RELMINE08			= "SVM_36_RELMINE08";			//Taki piekny kamien!
	RELMINE09			= "SVM_36_RELMINE09";			//Moja zona nawet nie wie, jak wygladam....
	RELMINE10			= "SVM_36_RELMINE10";			//Chcialbym teraz dostac tankowiec.....
	RELMINE11			= "SVM_36_RELMINE11";			//Ma to zastapic kolonie karna.
	RELMINE12			= "SVM_36_RELMINE12";			//Skorzystaj z dozowników przyjemnosci, to jest w porzadku.

	NoLearnGold			= "SVM_36_NoLearnGold";			//Wróc, gdy masz wiecej zlota.

	// Witze

	WITZ_01_01			= "SVM_36_WITZ_01_01";			//W glab lasu wchodzi mysliwy.
	WITZ_01_02			= "SVM_36_WITZ_01_02";			//Ork spotyka go z dzika na ramieniu.
	WITZ_01_03			= "SVM_36_WITZ_01_03";			//Kilka kroków dalej spotyka najemnika, który równiez nosi na ramieniu dzika.
	WITZ_01_04			= "SVM_36_WITZ_01_04";			//Kilka metrów dalej widzi goblina.
	WITZ_01_05			= "SVM_36_WITZ_01_05";			//pytanie............................. i co wedlug Ciebie ma goblin?
	WITZ_01_06			= "SVM_36_WITZ_01_06";			//Krwawienie dziasel, poniewaz co trzecia osoba ma krwawiace dziasla.

	WITZ_02_01			= "SVM_36_WITZ_02_01";			//Dwie zombie walcza o swoje zycie.

	WITZ_03_01			= "SVM_36_WITZ_03_01";			//Jaka jest róznica miedzy blotem a pluskiem miesnym?
	WITZ_03_02			= "SVM_36_WITZ_03_02";			//Mieso przynosi 10 doswiadczen.

	WITZ_04_01			= "SVM_36_WITZ_04_01";			//Zlodziej wlamuje sie noca do domu.
	WITZ_04_02			= "SVM_36_WITZ_04_02";			//Kiedy przeslizguje sie po boisku przez czarny salon, slyszy glos:
	WITZ_04_03			= "SVM_36_WITZ_04_03";			//Widze ciebie i widze cie Innos!
	WITZ_04_04			= "SVM_36_WITZ_04_04";			//Przeraza sie na smierc i zapala swiece.
	WITZ_04_05			= "SVM_36_WITZ_04_05";			//Patrzy w góre i widzi papuge siedzaca na slupku w rogu:
	WITZ_04_06			= "SVM_36_WITZ_04_06";			//Wlamywacz czuje ulge:
	WITZ_04_07			= "SVM_36_WITZ_04_07";			//Straszyles mnie piekla. Jakie jest Twoje imie?
	WITZ_04_08			= "SVM_36_WITZ_04_08";			//Bloto!
	WITZ_04_09			= "SVM_36_WITZ_04_09";			//Bloto jest rzadko glupia nazwa papugi!
	WITZ_04_10			= "SVM_36_WITZ_04_10";			//Usmiecha sie ptaka: No cóz, Innos jest równiez rzadko glupia nazwa warg.

	WITZ_05_01			= "SVM_36_WITZ_05_01";			//Zdjac z grobów dwa szkielety i ukrasc konie.
	WITZ_05_02			= "SVM_36_WITZ_05_02";			//Polóz ten nagrobek na jego nagrobku.
	WITZ_05_03			= "SVM_36_WITZ_05_03";			//Drugi z nich pyta:'Dlaczego tak?
	WITZ_05_04			= "SVM_36_WITZ_05_04";			//Czy myslisz, ze jezdze bez papieru?

	WITZ_06_01			= "SVM_36_WITZ_06_01";			//Powstaje podczas burzy w barze Coragon i mówi:
	WITZ_06_02			= "SVM_36_WITZ_06_02";			//Jestem mokry w kosci.

	WITZ_07_01			= "SVM_36_WITZ_07_01";			//Mówi Snappermutter:'Dziecko, dzis jest swieza paladynka.
	WITZ_07_02			= "SVM_36_WITZ_07_02";			//Mówi Snapperkind:'Nienawidze zywnosci konserwowanej.

	WITZ_08_01			= "SVM_36_WITZ_08_01";			//Co to jest czerwona, sliska substancja pomiedzy bokami rekina bagiennego?
	WITZ_08_02			= "SVM_36_WITZ_08_02";			//Powolny nowicjusz.

	WITZ_09_01			= "SVM_36_WITZ_09_01";			//Jaka jest pierwsza rzecz, która przychodzi na mysl, gdy Ork wchodzi do klasztoru Adanos?
	WITZ_09_02			= "SVM_36_WITZ_09_02";			//Lanca lodowa.

	WITZ_10_01			= "SVM_36_WITZ_10_01";			//Sluchaj tego....
	WITZ_10_02			= "SVM_36_WITZ_10_02";			//Tak?
	WITZ_10_03			= "SVM_36_WITZ_10_03";			//Tak wiec....
	WITZ_10_04			= "SVM_36_WITZ_10_04";			//Lisl owce pasterza Pepe sa chore.
	WITZ_10_05			= "SVM_36_WITZ_10_05";			//Martwi sie, pyta pasterza Balthasara:
	WITZ_10_06			= "SVM_36_WITZ_10_06";			//Co dales swojej owcy, kiedy byla tak chora?
	WITZ_10_07			= "SVM_36_WITZ_10_07";			//Dalem wtedy mojej Klarze podwójny mlotek Lou' a, mówi.
	WITZ_10_08			= "SVM_36_WITZ_10_08";			//Nie wczesniej niz to zostalo powiedziane. Kiedy dwa dni pózniej Pepe odwiedza Balthasara, odchodzi:
	WITZ_10_09			= "SVM_36_WITZ_10_09";			//Mój Lisl zmarl. I Balthasar: Moja Klary tez.
	WITZ_10_10			= "SVM_36_WITZ_10_10";			//Tak, tak, heh. Jesli dajesz zwierzetom gorzalke, potrzebuja.

	// Taschendiebstahl

	PICKPOCKET_BESTECHUNG_01	=	"SVM_36_PICKPOCKET_BESTECHUNG_01";	//Wszystko w porzadku, ale zgubic sie teraz!
	PICKPOCKET_HERAUSREDEN_01	=	"SVM_36_PICKPOCKET_HERAUSREDEN_01";	//Zapewne sie pomylilem.....
	PICKPOCKET_HERAUSREDEN_02	=	"SVM_36_PICKPOCKET_HERAUSREDEN_02";	//Byles wyraznie na kieszeni....
};
 

// ***********************
// 		Maximale SVMs
// ***********************

CONST INT SVM_MODULES =	31;
