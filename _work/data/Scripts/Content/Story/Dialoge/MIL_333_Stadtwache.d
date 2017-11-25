// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Mil_333_Stadtwache_EXIT (C_INFO)
{
	npc			= Mil_333_Stadtwache;
	nr			= 999;
	condition	= DIA_Mil_333_Stadtwache_EXIT_Condition;
	information	= DIA_Mil_333_Stadtwache_EXIT_Info;
	permanent	= TRUE;
	description	= DIALOG_ENDE;
};        
         
FUNC INT DIA_Mil_333_Stadtwache_EXIT_Condition()
{	
	return TRUE;
};

FUNC VOID DIA_Mil_333_Stadtwache_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};

// -----------------------------------------------------------
	const string Mil_333_Checkpoint	= "NW_CITY_MERCHANT_PATH_29";	//Eingang City Hintereingang!
// -----------------------------------------------------------

INSTANCE Info_Mod_Mil_333_Hi (C_INFO)
{
	npc		= Mil_333_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Mil_333_Hi_Condition;
	information	= Info_Mod_Mil_333_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mil_333_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Parlaf_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mil_333_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_36_00"); //Chcecie tu przyjechac, przypuszczam, ze?

	Info_ClearChoices	(Info_Mod_Mil_333_Hi);

	Info_AddChoice	(Info_Mod_Mil_333_Hi, "Tak, a ty nie zatrzymujesz mnie.", Info_Mod_Mil_333_Hi_B);
	Info_AddChoice	(Info_Mod_Mil_333_Hi, "Tak wyglada.", Info_Mod_Mil_333_Hi_A);
};

FUNC VOID Info_Mod_Mil_333_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Mil_333_Hi_B_15_00"); //Tak, a ty nie zatrzymujesz mnie.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_B_36_00"); //(smiech) Oh, co mnie przeraza. Jesli osmielisz sie!
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_B_36_01"); //A jesli powinienes juz teraz gladzic spodnie, to lepiej spróbowac po drugiej stronie Garonda. Obecnie jest odpowiedzialny za skarpetki kryminalne.

	Info_ClearChoices	(Info_Mod_Mil_333_Hi);

	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP(other,Mil_333_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_FirstWarnGiven;

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Mil_333_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Mil_333_Hi_A_15_00"); //Tak wyglada.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_A_36_01"); //Musisz byc jednym z tych skazanych, którzy uciekli przed Minentalem.
	AI_Output(hero, self, "Info_Mod_Mil_333_Hi_A_15_02"); //Moze.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_A_36_03"); //Jestes. Znam kazdego, kto przychodzi i wychodzi z miasta. Ale nigdy wczesniej cie nie widzialem.
	AI_Output(hero, self, "Info_Mod_Mil_333_Hi_A_15_04"); //Czy moge przejsc teraz?
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_A_36_05"); //Nie ze mna. Garond chce zobaczyc samych mieszkanców kopuly, zanim wpusci Cie do srodka.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_A_36_06"); //Bedziesz musial podjac wysilek, aby dostac sie do drugiej bramy.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_A_36_07"); //Ale najlepsza rzecza do zrobienia jest spróbowac Garonda przeciwko mniejszej liczbie.... byc nieostrozny. On jest prawdziwym kawalkiem pukasza i nie lubi ciebie wcale.

	Info_ClearChoices	(Info_Mod_Mil_333_Hi);

	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP(other,Mil_333_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_FirstWarnGiven;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Mil_333_Hi2 (C_INFO)
{
	npc		= Mil_333_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Mil_333_Hi2_Condition;
	information	= Info_Mod_Mil_333_Hi2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mil_333_Hi2_Condition()
{
	if (Npc_GetDistToWP(other, Mil_333_Checkpoint) <= 1000) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Parlaf_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mil_333_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mil_333_Hi2_Info()
{
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi2_36_00"); //Chcecie tu przyjechac, przypuszczam, ze?
	AI_Output(hero, self, "Info_Mod_Mil_333_Hi2_15_01"); //Tak wyglada.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi2_36_02"); //Nigdy wczesniej cie nie widzialem.
	AI_Output(hero, self, "Info_Mod_Mil_333_Hi2_15_03"); //Ale bylem juz przy drugiej bramie. Zapytaj Garonda, jesli nie uwierzysz mi.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi2_36_04"); //Nah, pozwólcie, ze powiem wam, ze mam dzis cos lepszego do zrobienia. Wszystko w prawo, wejsc do srodka.
};

INSTANCE Info_Mod_Mil_333_TomKraut (C_INFO)
{
	npc		= Mil_333_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Mil_333_TomKraut_Condition;
	information	= Info_Mod_Mil_333_TomKraut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mil_333_TomKraut_Condition()
{
	if (Mod_SenyanTom_Kraut_Wache_01 == 1)
	&& (Mod_SenyanTom_Kraut_Wache_02 == 1)
	&& (Mod_SenyanTom_Kraut_Mika == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mil_333_TomKraut_Info()
{
	AI_Output(self, hero, "Info_Mod_Mil_333_TomKraut_36_00"); //Och, moja glowa, moja glowa.... czuje sie przyssany pusty.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Mil_333_Daemonisch (C_INFO)
{
	npc		= Mil_333_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Mil_333_Daemonisch_Condition;
	information	= Info_Mod_Mil_333_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mil_333_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mil_333_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_00"); //Ah, jeden z tych szalonych podrózników.
	AI_Output(hero, self, "Info_Mod_Mil_333_Daemonisch_15_01"); //Co masz na mysli, zwariowany? A co to jest wycieczkowiec?
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_02"); //Wszyscy obywatele, którzy ciagle przenikaja przez bramy miasta.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_03"); //Ostatnio bylo ich wiele. A szalenstwo jest tym, co dzialo sie ostatnio wokól bram miasta.

	B_Say	(hero, self, "$WASMEINSTDU");

	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_04"); //Cóz, przede wszystkim bandyci w malej dolinie przed miastem.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_05"); //Pewien obywatel odkryl je i wieczorem poprowadzil do nich paladynki i strazników miejskich.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_06"); //Tengron, który mial pilnowac miasta, nie mógl stanac na jego posterunku i biegal za nim.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_07"); //Nie minelo wiele czasu, zanim powrócil krzyczac i doniósl o ciemnych cieniach.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_08"); //Tak, tak, haha, cienie w nocy, jego swiete swiatlo musi mu swiecic zbyt mocno na rzepie.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_09"); //Od innych, którzy wrócili jakis czas pózniej dowiedzielismy sie, ze wpadl do Tobuchta i zaatakowal wszystkich. Od tego czasu przebywa w celi holdingowej....
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_10"); //A potem jest Brian. Niedawno wyszedl z miasta, cos zaskakiwalo zagrozeniem miasta i mrocznymi cieniami.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_11"); //Potem zniknal w kierunku Orlanu miedzy drzewami.
	AI_Output(hero, self, "Info_Mod_Mil_333_Daemonisch_15_12"); //Uh, czy nie jest to powód do zmartwien?
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_13"); //Dlaczego? Paladyny czesto wieczorami przebijaja sie przez ciemne lasy tak czesto, ze nie mozna czuc sie bezpieczniej.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_14"); //Dwóch paladynów, którzy kilka dni temu udali sie na mala lesna pólnocna czesc lasu, pozwolili sobie jednak na szukanie wszystkiego dla bandytów.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Czlowiek, straznik nie wydaje sie nikogo dziwic. Obywatel wyprowadzil Paladynów i strazników wieczorem do doliny, gdzie podobno stali bandyci. Tengron, który poszedl za nimi troche pózniej, powrócil z niepokojem i zglosil ciemne cienie. Towarzysze, którzy wrócili pózniej twierdzili, ze zaatakowal ich i oszalal. Od tego czasu przebywa w wiezieniu. Inna okazja: Brian podbiegl z bojaznia do bramy miejskiej, wyciszyl czarne cienie i zagrazal miastu. W koncu dowiedzialem sie, ze znikly dwie paladyny w pólnocnym lesie niedaleko wschodniej bramy.");

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Mil_333_Daemonisch2 (C_INFO)
{
	npc		= Mil_333_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Mil_333_Daemonisch2_Condition;
	information	= Info_MoD_Mil_333_Daemonisch2_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Mil_333_Daemonisch2_Condition()
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

FUNC VOID Info_Mod_Mil_333_Daemonisch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch2_36_00"); //Zatrzymajcie sie, napójcie najpierw szklanke klasztornego wina.

	B_GiveInvItems	(self, hero, ItFo_KWine, 1);

	B_UseItem	(hero, ItFo_KWine);

	Npc_SetRefuseTalk (self, 60);
};

INSTANCE Info_Mod_Mil_333_Mario (C_INFO)
{
	npc		= Mil_333_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Mil_333_Mario_Condition;
	information	= Info_Mod_Mil_333_Mario_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy wolno wspinac sie po murze miasta?";
};

FUNC INT Info_Mod_Mil_333_Mario_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe8))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mil_333_Mario_Info()
{
	AI_Output(hero, self, "Info_Mod_Mil_333_Mario_15_00"); //Czy wolno wspinac sie po murze miasta?
	AI_Output(self, hero, "Info_Mod_Mil_333_Mario_36_01"); //(smiech) Mury miejskie sa tak zaprojektowane, ze nikt nie moze sie nad nimi wspinac.
	AI_Output(hero, self, "Info_Mod_Mil_333_Mario_15_02"); //Och, widze. Tam jest dwóch mezczyzn, którzy to robia.
	AI_Output(self, hero, "Info_Mod_Mil_333_Mario_36_03"); //Co? Gdzie?
	AI_Output(hero, self, "Info_Mod_Mil_333_Mario_15_04"); //Cóz, na zachód. Caly utwór.
	AI_Output(hero, self, "Info_Mod_Mil_333_Mario_15_05"); //Kiedy zapytalem ich, co robia, powiedzieli mi, zebym sie piekla.
	AI_Output(self, hero, "Info_Mod_Mil_333_Mario_36_06"); //W Innosie! Za kazdym razem, gdy jestem na dyzurze!

	B_LogEntry	(TOPIC_MOD_MARIO_FLUCHTHILFE, "Straz miejska jest rozproszona.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Mil_333_HaradLehrling (C_INFO)
{
	npc		= Mil_333_Stadtwache;
	nr		= 1;
	condition	= Info_Mod_Mil_333_HaradLehrling_Condition;
	information	= Info_MoD_Mil_333_HaradLehrling_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mil_333_HaradLehrling_Condition()
{
	if (Npc_HasItems(hero, ItMi_Waffenbuendel) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mil_333_HaradLehrling_Info()
{
	AI_Output(self, hero, "Info_Mod_Mil_333_HaradLehrling_36_00"); //Zatrzymaj. Jestes praktykantem Harada, czyz nie jestes?
	AI_Output(hero, self, "Info_Mod_Mil_333_HaradLehrling_15_01"); //Tak, tak, tak.....
	AI_Output(self, hero, "Info_Mod_Mil_333_HaradLehrling_36_02"); //Na zamówienie Tengrons musimy Cie przeszukac. Tylko chwile, prosze.....

	AI_PlayAni	(self, "T_PLUNDER");

	AI_Output(self, hero, "Info_Mod_Mil_333_HaradLehrling_36_03"); //Wlasnie o to chodzilo w tej grupie broni. Harad narusza tym samym postanowienie Tengrona. Musimy to wziac.

	B_GiveInvItems	(hero, self, ItMi_Waffenbuendel, 1);

	AI_Output(self, hero, "Info_Mod_Mil_333_HaradLehrling_36_04"); //Harad próbujac przemycic go przez ciebie do najemników bedzie mial powazne konsekwencje dla niego.

	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - First Warn
// ************************************************************
	var int MIL_333_Personal_AbsolutionLevel;
	//var int Mil_333_schonmalreingelassen; --> GLOBALS
// -----------------------------------------------------------

instance DIA_Mil_333_Stadtwache_FirstWarn (C_INFO)
{
	npc			= Mil_333_Stadtwache;
	nr			= 1;
	condition	= DIA_Mil_333_Stadtwache_FirstWarn_Condition;
	information	= DIA_Mil_333_Stadtwache_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int DIA_Mil_333_Stadtwache_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(other, Mil_333_Checkpoint) <= 1000) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};

	if (B_GetGreatestPetzCrime(self) >= CRIME_ATTACK) //wenn CRIME in Stadt bekannt
	&& (B_GetCurrentAbsolutionLevel(self) == MIL_333_Personal_AbsolutionLevel) //und noch nicht bezahlt
	{
		self.aivar[AIV_PASSGATE] = FALSE;
	}
	else //CRIME_NONE (oder Sheepkiller) - wenn Crime rehabilitiert, wird hier PASSGATE automatisch wieder auf TRUE gesetzt
	{
		if (Mil_333_schonmalreingelassen == TRUE)
		{
			self.aivar[AIV_PASSGATE] = TRUE;
		};
	};
	
	if ((self.aivar[AIV_Guardpassage_Status]			== GP_NONE		)
	&&  (self.aivar[AIV_PASSGATE]						== FALSE		)
	&&	(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)		== TRUE			)
	&&  (Npc_RefuseTalk(self) 							== FALSE 		))
	{
		return TRUE;
	};
};

func void DIA_Mil_333_Stadtwache_FirstWarn_Info()
{
	AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_00"); //HALT!
		
	// ------ PETZMASTER LIGHT ------
	if (B_GetGreatestPetzCrime(self) >= CRIME_ATTACK)
	{
		AI_Output (other, self,"DIA_Mil_333_Stadtwache_FirstWarn_15_01"); //Co to jest?
		AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_02"); //Wiesz bardzo dobrze!
	
		if (B_GetGreatestPetzCrime(self) == CRIME_MURDER)
		{
			AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_03"); //Chcesz byc w miescie za morderstwo!
		};
	
		if (B_GetGreatestPetzCrime(self) == CRIME_THEFT)
		{
			AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_04"); //Nie potrzebujemy tu brudnych zlodziei!
		};
	
		if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
		{
			AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_05"); //W naszym miescie nie potrzebujemy wichrzycieli!
		};
	
		AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_06"); //Dlaczego uwazasz, ze powinnismy Cie wpuscic?
	}
	else // ------ normales Reinkommen ------
	{
		 var C_Item itm; itm = Npc_GetEquippedArmor(other);
		
		// ------ ohne Rüstung ODER als Bauer ------
		if (Npc_HasEquippedArmor(other) == FALSE)
		{
			AI_Output (other, self,"DIA_Mil_333_Stadtwache_FirstWarn_15_07"); //Tak?
			AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_08"); //Wygladasz jak biedny wretch. Nie mozemy miec ludzi bez pieniedzy w miescie.
		}
 	 	else 
		{
			AI_Output (other, self,"DIA_Mil_333_Stadtwache_FirstWarn_15_15"); //Cichy) Co?
			AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_16"); //Wystarczy sie po prostu zameldowac. Cóz, wyglada na to, ze masz pieniadze. Mozesz wejsc.
			
			self.aivar[AIV_PASSGATE] = TRUE;
			Mil_333_schonmalreingelassen = TRUE;
			
			AI_StopProcessInfos(self);
		};
	};

	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP(other,Mil_333_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE DIA_Mil_333_Stadtwache_SecondWarn (C_INFO)
{
	npc			= Mil_333_Stadtwache;
	nr			= 2;
	condition	= DIA_Mil_333_Stadtwache_SecondWarn_Condition;
	information	= DIA_Mil_333_Stadtwache_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT DIA_Mil_333_Stadtwache_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status]			== GP_FirstWarnGiven					)
	&&  (self.aivar[AIV_PASSGATE]						== FALSE								) 
	&&	(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)		== TRUE									)
	&&  (Npc_GetDistToWP(other,Mil_333_Checkpoint)		<  (other.aivar[AIV_LastDistToWP]-50)	)) 
	{
		return TRUE;
	};
};

func void DIA_Mil_333_Stadtwache_SecondWarn_Info()
{
	AI_Output (self, other,"DIA_Mil_333_Stadtwache_SecondWarn_36_00"); //Jak juz wspomnialem, nie ma dla Ciebie zadnego przejscia.

	other.aivar[AIV_LastDistToWP] 			= Npc_GetDistToWP (other,Mil_333_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE DIA_Mil_333_Stadtwache_Attack (C_INFO)
{
	npc			= Mil_333_Stadtwache;
	nr			= 3;
	condition	= DIA_Mil_333_Stadtwache_Attack_Condition;
	information	= DIA_Mil_333_Stadtwache_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT DIA_Mil_333_Stadtwache_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status]			== GP_SecondWarnGiven					)
	&&  (self.aivar[AIV_PASSGATE]						== FALSE								) 
	&&	(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)		== TRUE									)
	&&  (Npc_GetDistToWP(other,Mil_333_Checkpoint)		<  (other.aivar[AIV_LastDistToWP]-50)	))
	{
		return TRUE;
	};
};

func void DIA_Mil_333_Stadtwache_Attack_Info()
{
	other.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status]	= GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, other,"DIA_Mil_333_Stadtwache_Attack_36_00"); //Poprosil pan o to.....
	
	AI_StopProcessInfos	(self);			
	B_Attack (self, other, AR_GuardStopsIntruder, 0); 
};


// ************************************************************
// 							Bestechung!
// ************************************************************

INSTANCE DIA_Mil_333_Stadtwache_Bribe (C_INFO)
{
	npc			= Mil_333_Stadtwache;
	nr			= 5;
	condition	= DIA_Mil_333_Stadtwache_Bribe_Condition;
	information	= DIA_Mil_333_Stadtwache_Bribe_Info;
	permanent	= TRUE;
	description	= "Oto 100 sztuk zlota. Pozwólcie mi wejsc!";
};                       

FUNC INT DIA_Mil_333_Stadtwache_Bribe_Condition()
{	
	if (self.aivar[AIV_PASSGATE] == FALSE)
	{
		return TRUE;
	};
};
	
func void DIA_Mil_333_Stadtwache_Bribe_Info()
{
	AI_Output (other, self,"DIA_Mil_333_Stadtwache_Bribe_15_00"); //Oto 100 sztuk zlota. Pozwólcie mi wejsc!
	
	if (B_GiveInvItems (other, self, itmi_gold, 100))
	{
		AI_Output (self, other,"DIA_Mil_333_Stadtwache_Bribe_36_01"); //Dobrze brzmi 100 sztuk zlota. Cóz, dostac sie tam.
		
		if (B_GetGreatestPetzCrime(self) >= CRIME_ATTACK)
		{
			AI_Output (self, other,"DIA_Mil_333_Stadtwache_Bribe_36_02"); //Idz prosto do Andre! Albo zabiore 100 sztuk zlota nastepnym razem!
		};
		
		self.aivar[AIV_PASSGATE] = TRUE;
		Mil_333_schonmalreingelassen = TRUE;
		
		// ------ wenn bezahlt, persönliche Absolution erteilen -------
		MIL_333_Personal_AbsolutionLevel = B_GetCurrentAbsolutionLevel(self) + 1;
	}
	else //nicht genug Gold
	{
		AI_Output (self, other,"DIA_Mil_333_Stadtwache_Bribe_36_03"); //Co? Gdzie? Nie widze 100 zlotych monet. Wyjsc stad!
	};
	
	AI_StopProcessInfos (self);
};

// ************************************************************
// 							PERM
// ************************************************************

INSTANCE DIA_Mil_333_Stadtwache_PERM (C_INFO)
{
	npc			= Mil_333_Stadtwache;
	nr			= 5;
	condition	= DIA_Mil_333_Stadtwache_PERM_Condition;
	information	= DIA_Mil_333_Stadtwache_PERM_Info;
	permanent	= TRUE;
	important 	= TRUE;
};                       

FUNC INT DIA_Mil_333_Stadtwache_PERM_Condition()
{	
	if (self.aivar[AIV_PASSGATE] == TRUE)
	&& (Npc_IsInState(self, ZS_Talk))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe8) || Npc_KnowsInfo(hero, Info_Mod_Mil_333_Mario))
	{
		return TRUE;
	};
};
	
func void DIA_Mil_333_Stadtwache_PERM_Info()
{
	AI_Output (self, other,"DIA_Mil_333_Stadtwache_PERM_36_00"); //Pozostan w ruchu!
	
	AI_StopProcessInfos (self);
};
