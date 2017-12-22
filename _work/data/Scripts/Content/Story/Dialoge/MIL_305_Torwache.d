// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE Info_Mod_Engor_EXIT (C_INFO)
{
	npc			= Mil_305_Torwache;
	nr			= 999;
	condition	= Info_Mod_Engor_EXIT_Condition;
	information	= Info_Mod_Engor_EXIT_Info;
	permanent	= TRUE;
	description	= DIALOG_ENDE;
};        
         
FUNC INT Info_Mod_Engor_EXIT_Condition()
{	
	return TRUE;
};

FUNC VOID Info_Mod_Engor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 						Ich BIN Bürger!  				  
// ************************************************************
INSTANCE Info_Mod_Engor_PassAsCitizen (C_INFO)
{
	npc			= Mil_305_Torwache;
	nr			= 1;
	condition	= Info_Mod_Engor_PassAsCitizen_Condition;
	information	= Info_Mod_Engor_PassAsCitizen_Info;
	important	= 0;
	permanent	= 0;
	description	= "Jestem teraz obywatelem miasta. Czy moge przejsc?";
};                       
FUNC INT Info_Mod_Engor_PassAsCitizen_Condition()
{	
	if (Mod_IstLehrling == 1)
	{
		return TRUE;
	};
};
FUNC VOID Info_Mod_Engor_PassAsCitizen_Info()
{
	AI_Output (hero, self, "Info_Mod_Engor_PassAsCitizen_15_00"); //Jestem teraz obywatelem miasta. Czy moge przejsc?
	AI_Output (self, hero, "Info_Mod_Engor_PassAsCitizen_09_01"); //Zadne prawo nie zabrania tego.
	AI_Output (self, hero, "Info_Mod_Engor_PassAsCitizen_09_02"); //Uwazaj jednak: jesli zaatakujesz obcy majatek lub dzwiek, odwet bedzie delikatny.
	AI_Output (self, hero, "Info_Mod_Engor_PassAsCitizen_09_03"); //Ci, którzy mieszkaja w górnym okregu maja zazwyczaj wystarczajaco duzy wplyw, aby zapewnic, ze nie zostana ukarani grzywna.
	AI_Output (self, hero, "Info_Mod_Engor_PassAsCitizen_09_04"); //Teraz wejdz do salonu!

	self.aivar[AIV_PASSGATE] = TRUE;
	Mil_305_schonmalreingelassen = TRUE;

	AI_StopProcessInfos (self);
};

// ************************************************************
// 				  	Guard_Passage - First Warn
// ************************************************************

// -----------------------------------------------------------
	const string Mil_305_Checkpoint	= "NW_CITY_UPTOWN_PATH_02";	//WP hinter City-Tor vom Spielstart aus!
// -----------------------------------------------------------
//	var int Mil_305_schonmalreingelassen; Hab ich mal in Globals geschrieben, weils im Close Log abgefragt wird Mattes
// -----------------------------------------------------------

instance Info_Mod_Engor_FirstWarn (C_INFO)
{
	npc			= Mil_305_Torwache;
	nr			= 1;
	condition	= Info_Mod_Engor_FirstWarn_Condition;
	information	= Info_Mod_Engor_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Engor_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(other, Mil_305_Checkpoint) <= 700) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	
	if (B_GetGreatestPetzCrime(self) >= CRIME_ATTACK) //wenn CRIME in Stadt bekannt
	&& (Mil_305_schonmalreingelassen == TRUE)
	{
		self.aivar[AIV_PASSGATE] = FALSE;
	}
	else //CRIME_NONE (oder Sheepkiller) - wenn Crime rehabilitiert, wird hier PASSGATE automatisch wieder auf TRUE gesetzt
	{
		if (Mil_305_schonmalreingelassen == TRUE)
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

func void Info_Mod_Engor_FirstWarn_Info()
{
	AI_Output (self, other,"Info_Mod_Engor_FirstWarn_09_00"); //HALT!

	// ------ PETZMASTER LIGHT und Personal CRIMES -------
	if (B_GetGreatestPetzCrime(self) >= CRIME_ATTACK)
	{
		if (B_GetGreatestPetzCrime(self) == CRIME_MURDER)
		{
			AI_Output (self, other,"Info_Mod_Engor_FirstWarn_09_01"); //Chcesz byc w miescie za morderstwo! Nie moge wpuscic cie do górnej dzielnicy, dopóki ta sprawa nie zostanie zalatwiona.
		};
	
		if (B_GetGreatestPetzCrime(self) == CRIME_THEFT)
		{
			AI_Output (self, other,"Info_Mod_Engor_FirstWarn_09_02"); //Dopóki masz naladowany ladunek kradziezy, nie mozesz isc na góre!
		};
	
		if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
		{
			AI_Output (self, other,"Info_Mod_Engor_FirstWarn_09_03"); //Nie moge wpuscic takiego awanturnika jak ty do górnej dzielnicy.
		};
	
		AI_Output (self, other,"Info_Mod_Engor_FirstWarn_09_04"); //Idzcie do Pana Andre i zalatwiajcie to!
	}
	
	// ------ normales Reinkommen ------
	else 
	{
		AI_Output (self, other,"Info_Mod_Engor_FirstWarn_09_05"); //Górna dzielnice wkraczaja tylko mieszkancy miasta i wojska królewskie!
	};

	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP(other,Mil_305_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Engor_SecondWarn (C_INFO)
{
	npc			= Mil_305_Torwache;
	nr			= 2;
	condition	= Info_Mod_Engor_SecondWarn_Condition;
	information	= Info_Mod_Engor_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Engor_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status]			== GP_FirstWarnGiven					)
	&&  (self.aivar[AIV_PASSGATE]						== FALSE								) 
	&&	(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)		== TRUE									)
	&&  (Npc_GetDistToWP(other,Mil_305_Checkpoint)		<  (other.aivar[AIV_LastDistToWP]-50)	)) 
	{
		return TRUE;
	};
};

func void Info_Mod_Engor_SecondWarn_Info()
{
	AI_Output (self, other,"Info_Mod_Engor_SecondWarn_09_00"); //Opowiem ci to po raz ostatni. Jeszcze jeden krok i wejdziesz w swiat bólu!

	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP (other,Mil_305_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Engor_Attack (C_INFO)
{
	npc			= Mil_305_Torwache;
	nr			= 3;
	condition	= Info_Mod_Engor_Attack_Condition;
	information	= Info_Mod_Engor_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Engor_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status]			== GP_SecondWarnGiven					)
	&&  (self.aivar[AIV_PASSGATE]						== FALSE								) 
	&&	(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)		== TRUE									)
	&&  (Npc_GetDistToWP(other,Mil_305_Checkpoint)		<  (other.aivar[AIV_LastDistToWP]-50)	))
	{
		return TRUE;
	};
};

func void Info_Mod_Engor_Attack_Info()
{
	other.aivar[AIV_LastDistToWP] 			= 0;
	self.aivar[AIV_Guardpassage_Status]	= GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, other,"Info_Mod_Engor_Attack_09_00"); //Poprosil pan o to.....
	AI_StopProcessInfos	(self);	
	B_Attack (self, other, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_Engor_ToHagen (C_INFO)
{
	npc			= Mil_305_Torwache;
	nr			= 3;
	condition	= Info_Mod_Engor_ToHagen_Condition;
	information	= Info_Mod_Engor_ToHagen_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Engor_ToHagen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Flucht))
	{
		return TRUE;
	};
};

func void Info_Mod_Engor_ToHagen_Info()
{
	AI_Output (self, other,"Info_Mod_Engor_ToHagen_09_00"); //Zatrzymaj sie!
	AI_Output (self, other,"Info_Mod_Engor_ToHagen_09_01"); //Obywatel Bodo powiedzial nam, ze jestes pozadanym bandyta Minentala.
	AI_Output (hero, self,"Info_Mod_Engor_ToHagen_15_02"); //Co? Mam wazna prosbe o Paladynów. Idz do Lord Hagen i powiedz mu, ze Alissandro mnie poslal, zobaczy mnie bezpiecznie.
	AI_Output (self, other,"Info_Mod_Engor_ToHagen_09_03"); //Och, nie, ja tego nie robie. Jestes potrzebny na nakaz, znajomy i dlatego przychodzisz ze mna.

	AI_StopProcessInfos	(self);	

	B_StartOtherRoutine	(Mod_540_PAL_Andre_NW,	"KNAST");

	AI_Teleport	(hero, "WP_HERO_KNAST"); 

	B_LogEntry	(TOPIC_MOD_AL_FLUCHT, "Zostalem aresztowany w miescie. Pan Andre zapyta mnie teraz.");

	if (Mod_Zellentuer_Knast_01 == 1)
	{
		Mod_Zellentuer_Knast_01 = 0;

		Wld_SendTrigger	("EVT_CITY_PRISON_03");
	};
};

	

// ***************************************************************
//							Ausnahme (PERM)
// ***************************************************************
instance Info_Mod_Engor_Ausnahme (C_INFO)
{
	npc			 = 	Mil_305_Torwache;
	nr			 = 	2;
	condition	 = 	Info_Mod_Engor_Ausnahme_Condition;
	information	 = 	Info_Mod_Engor_Ausnahme_Info;
	permanent    =  TRUE;
	description	 = 	"Czy nie mozemy zrobic wyjatku?";
};
func int Info_Mod_Engor_Ausnahme_Condition ()
{	
	if (Mil_305_schonmalreingelassen == FALSE) 
	{
		return TRUE;
	};
};
func void Info_Mod_Engor_Ausnahme_Info ()
{
	AI_Output (other, self, "Info_Mod_Engor_Ausnahme_15_00"); //Czy nie mozemy zrobic wyjatku?
	AI_Output (self, other, "Info_Mod_Engor_Ausnahme_09_01"); //Co? W tym miescie obowiazuja zasady! Zasady, które obowiazuja wszystkich bez wyjatku!
	AI_Output (self, other, "Info_Mod_Engor_Ausnahme_09_02"); //Jezeli zlamiemy te zasady, bedziemy postepowac niesprawiedliwie wobec wszystkich tych, którzy ich przestrzegaja.
};	

INSTANCE Info_Mod_Engor_PERM (C_INFO)
{
	npc			= Mil_305_Torwache;
	nr			= 1;
	condition	= Info_Mod_Engor_PERM_Condition;
	information	= Info_Mod_Engor_PERM_Info;
	permanent	= TRUE;
	description	= "Jaki jest wynik?";
};        
         
FUNC INT Info_Mod_Engor_PERM_Condition()
{	
	if (Mil_305_schonmalreingelassen == TRUE)
	&& (B_GetGreatestPetzCrime(self) < CRIME_ATTACK)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Engor_PERM_Info()
{
	AI_Output (other, self,"Info_Mod_Engor_PERM_15_00"); //Jaki jest wynik?
	
	if (other.guild == GIL_PAL) 
	{
		AI_Output (self, other,"Info_Mod_Engor_PERM_09_01"); //To wszystko jest w porzadku, towarzysz!
	}
	else if (other.guild == GIL_VLK)
	{
		AI_Output (self, other,"Info_Mod_Engor_PERM_09_02"); //Tutaj po prostu wykonujemy swój obowiazek. Dziekuje za zwrócenie uwagi na mnie, ulubiencie!
	}
	else if (other.guild == GIL_MIL)
	{
		AI_Output (self, other,"Info_Mod_Engor_PERM_09_03"); //Musze Cie wpuscic, ale nie musze z Toba rozmawiac!
	}
	else //GIL_None 
	{
		AI_Output (self, other,"Info_Mod_Engor_PERM_09_04"); //Czego chcesz?
	};
	
	AI_StopProcessInfos	(self);
};
