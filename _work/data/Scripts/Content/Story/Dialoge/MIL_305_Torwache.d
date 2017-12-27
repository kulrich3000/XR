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
	description	= "I'm a citizen of the city now. May I pass?";
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
	AI_Output (hero, self, "Info_Mod_Engor_PassAsCitizen_15_00"); //I'm a citizen of the city now. May I pass?
	AI_Output (self, hero, "Info_Mod_Engor_PassAsCitizen_09_01"); //There is no law that forbids that.
	AI_Output (self, hero, "Info_Mod_Engor_PassAsCitizen_09_02"); //But beware: if you attack foreign property or sound, retaliation will be fragile.
	AI_Output (self, hero, "Info_Mod_Engor_PassAsCitizen_09_03"); //Those who live in the upper district usually have enough influence to ensure that they will not be fined.
	AI_Output (self, hero, "Info_Mod_Engor_PassAsCitizen_09_04"); //Now get in the living room!

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
			AI_Output (self, other,"Info_Mod_Engor_FirstWarn_09_01"); //You're wanted in town for murder! I can't let you into the upper district until this thing's sorted out.
		};
	
		if (B_GetGreatestPetzCrime(self) == CRIME_THEFT)
		{
			AI_Output (self, other,"Info_Mod_Engor_FirstWarn_09_02"); //As long as you're charged with stealing, you can't go upstairs!
		};
	
		if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
		{
			AI_Output (self, other,"Info_Mod_Engor_FirstWarn_09_03"); //I can't let a troublemaker like you into the upper district.
		};
	
		AI_Output (self, other,"Info_Mod_Engor_FirstWarn_09_04"); //Go to Lord Andre and settle this!
	}
	
	// ------ normales Reinkommen ------
	else 
	{
		AI_Output (self, other,"Info_Mod_Engor_FirstWarn_09_05"); //Only citizens of the city and king's troops enter the upper quarter!
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
	AI_Output (self, other,"Info_Mod_Engor_SecondWarn_09_00"); //I'll tell you one last time. One more step and you'll enter the world of pain!

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
	
	AI_Output (self, other,"Info_Mod_Engor_Attack_09_00"); //You asked for it...
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
	AI_Output (self, other,"Info_Mod_Engor_ToHagen_09_00"); //Stop!
	AI_Output (self, other,"Info_Mod_Engor_ToHagen_09_01"); //The citizen Bodo told us that you are a wanted bandit from the Minental.
	AI_Output (hero, self,"Info_Mod_Engor_ToHagen_15_02"); //What? I have an important request for the Paladins. Go to Lord Hagen and tell him Alissandro sent me, he'll see me safely.
	AI_Output (self, other,"Info_Mod_Engor_ToHagen_09_03"); //Oh, no, I'm not gonna do that. You're wanted on a warrant, buddy, and that's why you're coming with me.

	AI_StopProcessInfos	(self);	

	B_StartOtherRoutine	(Mod_540_PAL_Andre_NW,	"KNAST");

	AI_Teleport	(hero, "WP_HERO_KNAST"); 

	B_LogEntry	(TOPIC_MOD_AL_FLUCHT, "I was arrested in the city. Lord Andre will now question me.");

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
	description	 = 	"Couldn't we make an exception?";
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
	AI_Output (other, self, "Info_Mod_Engor_Ausnahme_15_00"); //Can't we make an exception?
	AI_Output (self, other, "Info_Mod_Engor_Ausnahme_09_01"); //What?! There are rules in this town! Rules that apply to everyone without exception!
	AI_Output (self, other, "Info_Mod_Engor_Ausnahme_09_02"); //If we break these rules, we act unfairly against all those who abide by them.
};	

INSTANCE Info_Mod_Engor_PERM (C_INFO)
{
	npc			= Mil_305_Torwache;
	nr			= 1;
	condition	= Info_Mod_Engor_PERM_Condition;
	information	= Info_Mod_Engor_PERM_Info;
	permanent	= TRUE;
	description	= "How's it going?";
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
	AI_Output (other, self,"Info_Mod_Engor_PERM_15_00"); //What's the score?
	
	if (other.guild == GIL_PAL) 
	{
		AI_Output (self, other,"Info_Mod_Engor_PERM_09_01"); //It's all right, comrade!
	}
	else if (other.guild == GIL_VLK)
	{
		AI_Output (self, other,"Info_Mod_Engor_PERM_09_02"); //We're just doing our duty here. Thank you for paying attention to me, darling!
	}
	else if (other.guild == GIL_MIL)
	{
		AI_Output (self, other,"Info_Mod_Engor_PERM_09_03"); //I have to let you in, but I don't have to talk to you!
	}
	else //GIL_None 
	{
		AI_Output (self, other,"Info_Mod_Engor_PERM_09_04"); //What do you want?
	};
	
	AI_StopProcessInfos	(self);
};
