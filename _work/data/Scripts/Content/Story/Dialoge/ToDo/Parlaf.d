// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE Info_Mod_Parlaf_EXIT (C_INFO)
{
	npc			= Mil_309_Stadtwache;
	nr			= 999;
	condition	= Info_Mod_Parlaf_EXIT_Condition;
	information	= Info_Mod_Parlaf_EXIT_Info;
	permanent	= TRUE;
	description	= DIALOG_ENDE;
};        
         
FUNC INT Info_Mod_Parlaf_EXIT_Condition()
{	
	return TRUE;
};

FUNC VOID Info_Mod_Parlaf_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
// ************************************************************
// 				  	Guard_Passage - First Warn
// ************************************************************

// -----------------------------------------------------------
	const string Mil_309_Checkpoint	= "NW_CITY_ENTRANCE_MAIN";	//WP hinter City-Tor vom Spielstart aus!
// -----------------------------------------------------------
	var int MIL_309_Personal_AbsolutionLevel;
	//var int Mil_309_schonmalreingelassen; --> GLOBALS
// -----------------------------------------------------------

INSTANCE Info_Mod_Parlaf_HaradLehrling (C_INFO)
{
	npc		= Mil_309_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Parlaf_HaradLehrling_Condition;
	information	= Info_Mod_Parlaf_HaradLehrling_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Parlaf_HaradLehrling_Condition()
{
	if (Npc_HasItems(hero, ItMi_Waffenbuendel) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Parlaf_HaradLehrling_Info()
{
	AI_Output(self, hero, "Info_Mod_Parlaf_HaradLehrling_06_00"); //Zatrzymaj. Jestes praktykantem Harada, czyz nie jestes?
	AI_Output(hero, self, "Info_Mod_Parlaf_HaradLehrling_15_01"); //Tak, tak, tak.....
	AI_Output(self, hero, "Info_Mod_Parlaf_HaradLehrling_06_02"); //Na zamówienie Tengrons musimy Cie przeszukac. Tylko chwile, prosze.....

	AI_PlayAni	(self, "T_PLUNDER");

	AI_Output(self, hero, "Info_Mod_Parlaf_HaradLehrling_06_03"); //Wlasnie o to chodzilo w tej grupie broni. Harad narusza tym samym postanowienie Tengrona. Musimy to wziac.

	B_GiveInvItems	(hero, self, ItMi_Waffenbuendel, 1);

	AI_Output(self, hero, "Info_Mod_Parlaf_HaradLehrling_06_04"); //Harad próbujac przemycic go przez ciebie do najemników bedzie mial powazne konsekwencje dla niego.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Parlaf_Randolph (C_INFO)
{
	npc		= Mil_309_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Parlaf_Randolph_Condition;
	information	= Info_Mod_Parlaf_Randolph_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Parlaf_Randolph_Condition()
{
	if (Mod_Randolph_Started == 11)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mika_Randolph))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Parlaf_Randolph_Info()
{
	AI_Output(self, hero, "Info_Mod_Parlaf_Randolph_06_00"); //Lepiej szybko dotrzec do miasta.
	AI_Output(self, hero, "Info_Mod_Parlaf_Randolph_06_01"); //W chwili obecnej wokól nich plywaja demony, nie pozostawiajac nikogo zywego, kto móglby ich przekroczyc.
	AI_Output(hero, self, "Info_Mod_Parlaf_Randolph_15_02"); //Demony? Skad one pochodza?
	AI_Output(self, hero, "Info_Mod_Parlaf_Randolph_06_03"); //Nie wiem, oni sa po lasach w poblizu miasta. A w sasiedztwie podwórza Lobarta kryje sie nieznana postac.
	AI_Output(self, hero, "Info_Mod_Parlaf_Randolph_06_04"); //Tak czy inaczej, musze byc teraz ostrozny i nie mam juz czasu na rozmowe.
};

INSTANCE Info_Mod_Parlaf_RandolphWeg (C_INFO)
{
	npc		= Mil_309_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Parlaf_RandolphWeg_Condition;
	information	= Info_Mod_Parlaf_RandolphWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Parlaf_RandolphWeg_Condition()
{
	if ((Mod_Randolph_Started == 13)
	|| (Mod_Randolph_Started == 16))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mika_RandolphWeg))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Parlaf_RandolphWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Parlaf_RandolphWeg_06_00"); //To dobra wiadomosc. Demony zdaja sie powoli wycofywac.
	AI_Output(self, hero, "Info_Mod_Parlaf_RandolphWeg_06_01"); //Przypuszczam, ze musieli zdac sobie sprawe, ze nie pasuja do nas.
	AI_Output(self, hero, "Info_Mod_Parlaf_RandolphWeg_06_02"); //Mozesz wiec spokojnie wrócic do miasta.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Parlaf_Rasend (C_INFO)
{
	npc		= Mil_309_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Parlaf_Rasend_Condition;
	information	= Info_Mod_Parlaf_Rasend_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Parlaf_Rasend_Condition()
{
	if (Mod_WM_Rasend >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Parlaf_Rasend_Info()
{
	AI_Output(self, hero, "Info_Mod_Parlaf_Rasend_06_00"); //Hey, uwazaj, gdy wiesz sie wokól miasta.
	AI_Output(self, hero, "Info_Mod_Parlaf_Rasend_06_01"); //Cos strasznego wydarzylo sie w porcie i zlego demonicznego stworzenia, które zrobilo to wszystko, musi byc w poblizu.
};

INSTANCE Info_Mod_Parlaf_Hi (C_INFO)
{
	npc		= Mil_309_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Parlaf_Hi_Condition;
	information	= Info_Mod_Parlaf_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Parlaf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Parlaf_Hi_Info()
{
	var C_Item NovArmorOrNot;
	NovArmorOrNot = Npc_GetEquippedArmor(hero);

	if (Hlp_IsItem(NovArmorOrNot, ITAR_FAKE_NOV_L) == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_06_00"); //Zatrzymaj sie! Co przynosi ci tutaj?
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_06_01"); //Po prostu daje wam dobra rade, abyscie nie popadli w klopoty w miescie, inaczej znajdziecie sie Panstwo predzej niz chcecie. Zrozumiec?
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_06_02"); //Ahh, nowicjusz klasztoru Innos.
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_06_03"); //Zawsze z przyjemnoscia witam bojowników za sprawiedliwych w naszych murach miejskich.
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_06_04"); //Biorac pod uwage, jaki rodzaj riffraffa wisi tu od czasu upadku zapory......
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_06_05"); //Tak czy inaczej, uwazaj na to, co robisz w miescie, ostatnio bylo wiele klopotów.
	};

	Info_ClearChoices	(Info_Mod_Parlaf_Hi);

	if (Hlp_IsItem(NovArmorOrNot, ITAR_FAKE_NOV_L) == FALSE)
	{
		Info_AddChoice	(Info_Mod_Parlaf_Hi, "Zrobie wszystko, co chce.", Info_Mod_Parlaf_Hi_B);
	};
	Info_AddChoice	(Info_Mod_Parlaf_Hi, "Oczywiscie tak jest.", Info_Mod_Parlaf_Hi_A);
};

FUNC VOID Info_Mod_Parlaf_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Parlaf_Hi_B_15_00"); //Zrobie wszystko, co chce.
	AI_Output(self, hero, "Info_Mod_Parlaf_Hi_B_06_01"); //Lubie to? Ale nie w miescie. Nie pozwole sobie pozwolic, zeby jakis awanturnik jak ty tam byl.

	if (!Npc_HasEquippedArmor(hero))
	{
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_B_06_02"); //Nawet ubrania nie....
	};

	Info_ClearChoices	(Info_Mod_Parlaf_Hi);

	AI_StopProcessInfos	(self);

	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP(other,Mil_309_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_FirstWarnGiven;
};

FUNC VOID Info_Mod_Parlaf_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Parlaf_Hi_A_15_00"); //Oczywiscie tak jest.
	AI_Output(self, hero, "Info_Mod_Parlaf_Hi_A_06_01"); //No cóz, wtedy zrozumiemy sie nawzajem.

	Info_ClearChoices	(Info_Mod_Parlaf_Hi);

	self.aivar[AIV_PASSGATE] = TRUE;
	Mil_333_Stadtwache.aivar[AIV_PASSGATE] = TRUE; 	//Wache vom anderen Stadttor
	Mil_309_schonmalreingelassen = TRUE;
};

INSTANCE Info_Mod_Parlaf_DunklerPilger (C_INFO)
{
	npc		= Mil_309_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Parlaf_DunklerPilger_Condition;
	information	= Info_Mod_Parlaf_DunklerPilger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jest tu ostatnio pielgrzymka w czarnej szacie (....)? )";
};

FUNC INT Info_Mod_Parlaf_DunklerPilger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Parlaf_Hi))
	&& (self.aivar[AIV_PASSGATE] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Parlaf_DunklerPilger_Info()
{
	AI_Output(hero, self, "Info_Mod_Parlaf_DunklerPilger_15_00"); //Czy pielgrzym przybyl tu niedawno w czarnej szacie?
	AI_Output(self, hero, "Info_Mod_Parlaf_DunklerPilger_06_01"); //Nie wiem o tym.
};

INSTANCE Info_Mod_Parlaf_Daemonisch (C_INFO)
{
	npc		= Mil_309_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Parlaf_Daemonisch_Condition;
	information	= Info_Mod_Parlaf_Daemonisch_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Parlaf_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Parlaf_Hi))
	&& (self.aivar[AIV_PASSGATE] == TRUE)
	&& (Npc_RefuseTalk(self) == FALSE)
	&& (Mod_HQ_Daemonisch >= 2)
	&& (Kapitel == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Parlaf_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Parlaf_Daemonisch_06_00"); //Stop, najpierw napic sie wina klasztornego 1/4

	B_GiveInvItems	(self, hero, ItFo_KWine, 1);

	B_UseItem	(hero, ItFo_KWine);

	if (Mod_HQ_Daemonisch == 6)
	{
		AI_Output(self, hero, "Info_Mod_Parlaf_Daemonisch_06_01"); //Mezczyzna przedtem prawie przeszedlby przez palce, ale my jestesmy zbyt szybcy i musial pic milo.
		AI_Output(self, hero, "Info_Mod_Parlaf_Daemonisch_06_02"); //Pózniej do lasu wbiegla kolejna wiencowa lunatyk.....

		AI_TurnAway	(hero, self);

		AI_Output(hero, self, "Info_Mod_Parlaf_Daemonisch_15_03"); //Do siebie, co zdal test wina klasztornego? Wtedy wszystko, co moze zrobic, to.... Urnol.

		Mod_HQ_Daemonisch = 7;

		B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Wiec wbiegamy do lasu po prawej stronie od bramy poludniowej. Bede cie zalatwial..... Urnol.");
	};

	Npc_SetRefuseTalk (self, 40);
};

instance Info_Mod_Parlaf_FirstWarn (C_INFO)
{
	npc			= Mil_309_Stadtwache;
	nr			= 1;
	condition	= Info_Mod_Parlaf_FirstWarn_Condition;
	information	= Info_Mod_Parlaf_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Parlaf_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(other, Mil_309_Checkpoint) <= 700) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	
	if (B_GetGreatestPetzCrime(self) >= CRIME_ATTACK) //wenn CRIME in Stadt bekannt
	&& (B_GetCurrentAbsolutionLevel(self) == MIL_309_Personal_AbsolutionLevel) //und noch nicht bezahlt
	{
		self.aivar[AIV_PASSGATE] = FALSE;
	}
	else //CRIME_NONE (oder Sheepkiller) - wenn Crime rehabilitiert, wird hier PASSGATE automatisch wieder auf TRUE gesetzt
	{
		if (Mil_309_schonmalreingelassen == TRUE)
		{
			self.aivar[AIV_PASSGATE] = TRUE;
		};
	};
	
	if ((self.aivar[AIV_Guardpassage_Status]			== GP_NONE		)
	&& (self.aivar[AIV_PASSGATE]						== FALSE		)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)		== TRUE			)
	&& (Npc_RefuseTalk(self) 							== FALSE 		))
	&& (Npc_KnowsInfo(hero, Info_Mod_Parlaf_Hi))
	{
		return TRUE;
	};
};

func void Info_Mod_Parlaf_FirstWarn_Info()
{
	AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_00"); //HALT!
		
	// ------ PETZMASTER LIGHT ------
	if (B_GetGreatestPetzCrime(self) >= CRIME_ATTACK)
	{
		AI_Output (other, self,"Info_Mod_Parlaf_FirstWarn_15_01"); //Co to jest?
		AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_02"); //Wiesz bardzo dobrze!
	
		if (B_GetGreatestPetzCrime(self) == CRIME_MURDER)
		{
			AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_03"); //Chcesz byc w miescie za morderstwo!
		};
	
		if (B_GetGreatestPetzCrime(self) == CRIME_THEFT)
		{
			AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_04"); //Nie potrzebujemy tu brudnych zlodziei!
		};
	
		if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
		{
			AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_05"); //W naszym miescie nie potrzebujemy wichrzycieli!
		};
	
		AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_06"); //Dlaczego uwazasz, ze powinnismy Cie wpuscic?
	}
	else // ------ normales Reinkommen ------
	{
		 var C_Item itm; itm = Npc_GetEquippedArmor(other);
		
		// ------ ohne Rüstung ------
		if (Npc_HasEquippedArmor(other) == FALSE)
		{
			AI_Output (other, self,"Info_Mod_Parlaf_FirstWarn_15_07"); //Co masz na mysli?
			AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_08"); //Nie mozesz sie tu dostac, synu!
			AI_Output (other, self,"Info_Mod_Parlaf_FirstWarn_15_09"); //Dlaczego nie?
			AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_10"); //Rozbity jak spojrzec, prawdopodobnie robisz tu tylko klopoty!
			AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_11"); //Juz w miescie dostalismy mnóstwo riffraffów. Nie mozemy miec ludzi bez pieniedzy.
		}
 	 	else 
		{
			AI_Output (other, self,"Info_Mod_Parlaf_FirstWarn_15_18"); //Cichy) Co?
			if (hero.guild == GIL_PAL)
			|| (hero.guild == GIL_KDF)
			{
				AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_19"); //Prosze mi wybaczyc, ale to sa zasady.
				AI_Output (other, self,"Info_Mod_Parlaf_FirstWarn_15_20"); //Chcesz mnie zatrzymac?
				AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_21"); //Oczywiscie nie. Wszyscy czlonkowie Kosciola Innos sa oczywiscie mile widziani.
				
			}
			else
			{
				AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_22"); //Wystarczy sie po prostu zameldowac. Wyglada na to, ze masz pieniadze. Mozesz wejsc.
			};
			self.aivar[AIV_PASSGATE] = TRUE;
			Mil_333_Stadtwache.aivar[AIV_PASSGATE] = TRUE; 	//Wache vom anderen Stadttor
			Mil_309_schonmalreingelassen = TRUE;
			
			AI_StopProcessInfos(self);
		};
	};

	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP(other,Mil_309_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Parlaf_SecondWarn (C_INFO)
{
	npc			= Mil_309_Stadtwache;
	nr			= 2;
	condition	= Info_Mod_Parlaf_SecondWarn_Condition;
	information	= Info_Mod_Parlaf_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Parlaf_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status]			== GP_FirstWarnGiven					)
	&&  (self.aivar[AIV_PASSGATE]						== FALSE								) 
	&&	(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)		== TRUE									)
	&&  (Npc_GetDistToWP(other,Mil_309_Checkpoint)		<  (other.aivar[AIV_LastDistToWP]-50)	)) 
	{
		return TRUE;
	};
};

func void Info_Mod_Parlaf_SecondWarn_Info()
{
	AI_Output (self, other,"Info_Mod_Parlaf_SecondWarn_06_00"); //

	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP (other,Mil_309_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Parlaf_Attack (C_INFO)
{
	npc			= Mil_309_Stadtwache;
	nr			= 3;
	condition	= Info_Mod_Parlaf_Attack_Condition;
	information	= Info_Mod_Parlaf_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Parlaf_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status]			== GP_SecondWarnGiven					)
	&&  (self.aivar[AIV_PASSGATE]						== FALSE								) 
	&&	(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)		== TRUE									)
	&&  (Npc_GetDistToWP(other,Mil_309_Checkpoint)		<  (other.aivar[AIV_LastDistToWP]-50)	))
	{
		return TRUE;
	};
};

func void Info_Mod_Parlaf_Attack_Info()
{
	other.aivar[AIV_LastDistToWP] 			= 0;
	self.aivar[AIV_Guardpassage_Status]	= GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, other,"Info_Mod_Parlaf_Attack_06_00"); //Poprosil pan o to.....
	
	AI_StopProcessInfos	(self);
	B_Attack (self, other, AR_GuardStopsIntruder, 0); 
};


// ************************************************************
// 							Bestechung!
// ************************************************************

INSTANCE Info_Mod_Parlaf_Bribe (C_INFO)
{
	npc			= Mil_309_Stadtwache;
	nr			= 5;
	condition	= Info_Mod_Parlaf_Bribe_Condition;
	information	= Info_Mod_Parlaf_Bribe_Info;
	permanent	= TRUE;
	description	= "Oto 100 sztuk zlota. Pozwólcie mi wejsc!";
};                       

FUNC INT Info_Mod_Parlaf_Bribe_Condition()
{	
	if (self.aivar[AIV_PASSGATE] == FALSE)
	{
		return TRUE;
	};
};
	
func void Info_Mod_Parlaf_Bribe_Info()
{
	AI_Output (other, self,"Info_Mod_Parlaf_Bribe_15_00"); //Oto 100 sztuk zlota. Pozwólcie mi wejsc!
	
	if (B_GiveInvItems (other, self, itmi_gold, 100))
	{
		AI_Output (self, other,"Info_Mod_Parlaf_Bribe_06_01"); //Dobrze brzmi 100 sztuk zlota. Cóz, dostac sie tam.
		
		if (B_GetGreatestPetzCrime(self) >= CRIME_ATTACK)
		{
			AI_Output (self, other,"Info_Mod_Parlaf_Bribe_06_02"); //Idz prosto do Pana Andre! Albo zabiore 100 sztuk zlota nastepnym razem!
		};
		
		self.aivar[AIV_PASSGATE] = TRUE;
		Mil_333_Stadtwache.aivar[AIV_PASSGATE] = TRUE; 	//Wache vom anderen Stadttor
		Mil_309_schonmalreingelassen = TRUE;
		B_CheckLog();
		
		// ------ wenn bezahlt, persönliche Absolution erteilen -------
		MIL_309_Personal_AbsolutionLevel = B_GetCurrentAbsolutionLevel(self) + 1;
	}
	else //nicht genug Gold
	{
		AI_Output (self, other,"Info_Mod_Parlaf_Bribe_06_03"); //Co? Gdzie? Nie widze 100 zlotych monet. Wyjsc stad!
	};
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Parlaf_PERM (C_INFO)
{
	npc			= Mil_309_Stadtwache;
	nr			= 5;
	condition	= Info_Mod_Parlaf_PERM_Condition;
	information	= Info_Mod_Parlaf_PERM_Info;
	permanent	= TRUE;
	important 	= TRUE;
};                       

FUNC INT Info_Mod_Parlaf_PERM_Condition()
{	
	if (self.aivar[AIV_PASSGATE] == TRUE)
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Kapitel != 4)
	{
		return TRUE;
	};
};
	
func void Info_Mod_Parlaf_PERM_Info()
{
	AI_Output (self, other,"Info_Mod_Parlaf_PERM_06_00"); //Pozostan w ruchu!
	
	AI_StopProcessInfos (self);
};
