///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Pal_213_Schiffswache_EXIT   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 999;
	condition   = DIA_Pal_213_Schiffswache_EXIT_Condition;
	information = DIA_Pal_213_Schiffswache_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Pal_213_Schiffswache_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Pal_213_Schiffswache_EXIT_Info()
{
	AI_StopProcessInfos (self);
};


// ************************************************************
// 				  	Guard_Passage - First Warn
// ************************************************************

// ------------------------------------------------------------
	const string Pal_213_Checkpoint		= "SHIP_DECK_09";					//Auf dem Schiff
// ------------------------------------------------------------

instance DIA_Pal_213_Schiffswache_FirstWarn (C_INFO)
{
	npc			= Pal_213_Schiffswache;
	nr			= 1;
	condition	= DIA_Pal_213_Schiffswache_FirstWarn_Condition;
	information	= DIA_Pal_213_Schiffswache_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int DIA_Pal_213_Schiffswache_FirstWarn_Condition()
{
	if ((MIS_ShipIsFree == FALSE) 
	&&	(self.aivar[AIV_Guardpassage_Status]			== GP_NONE		)
	&&  (self.aivar[AIV_PASSGATE]						== FALSE		)
	&&	(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)		== TRUE			))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_FirstWarn_Info()
{
	AI_Output (self, other,"DIA_Pal_213_Schiffswache_FirstWarn_01_00"); //Wait a minute! Where are you going?
	AI_Output (other, self,"DIA_Pal_213_Schiffswache_FirstWarn_15_01"); //I wanted to....

	if ((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		AI_Output (self, other,"DIA_Pal_213_Schiffswache_FirstWarn_01_02"); //Sorry about that. You can't go through here.
	}
	else
	{	
		AI_Output (self, other,"DIA_Pal_213_Schiffswache_FirstWarn_01_03"); //There's nothing to see here. And now you're leaving.
	};

	other.aivar[AIV_LastDistToWP] 			= Npc_GetDistToWP(other,Pal_213_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]		= GP_FirstWarnGiven;
};


// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE DIA_Pal_213_Schiffswache_SecondWarn (C_INFO)
{
	npc			= Pal_213_Schiffswache;
	nr			= 2;
	condition	= DIA_Pal_213_Schiffswache_SecondWarn_Condition;
	information	= DIA_Pal_213_Schiffswache_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT DIA_Pal_213_Schiffswache_SecondWarn_Condition()
{
	if ((MIS_ShipIsFree == FALSE) 
	&&	(self.aivar[AIV_Guardpassage_Status]			== GP_FirstWarnGiven						)
	&&  (self.aivar[AIV_PASSGATE]						== FALSE								) 
	&&	(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)		== TRUE									)
	&&  (Npc_GetDistToWP(other,Pal_213_Checkpoint)		<  (other.aivar[AIV_LastDistToWP]-50)	)) 
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_SecondWarn_Info()
{
	if ((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		AI_Output (self, other,"DIA_Pal_213_Schiffswache_SecondWarn_01_00"); //Don't take another step. No exceptions.
	}
	else
	{
		AI_Output (self, other,"DIA_Pal_213_Schiffswache_SecondWarn_01_01"); //You don't want to make me hurt you, do you?
	};
	other.aivar[AIV_LastDistToWP] 			= Npc_GetDistToWP (other,Pal_213_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE DIA_Pal_213_Schiffswache_Attack (C_INFO)
{
	npc			= Pal_213_Schiffswache;
	nr			= 3;
	condition	= DIA_Pal_213_Schiffswache_Attack_Condition;
	information	= DIA_Pal_213_Schiffswache_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT DIA_Pal_213_Schiffswache_Attack_Condition()
{
	if ((MIS_ShipIsFree == FALSE) 
	&&	(self.aivar[AIV_Guardpassage_Status]			== GP_SecondWarnGiven					)
	&&  (self.aivar[AIV_PASSGATE]						== FALSE								) 
	&&	(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)		== TRUE									)
	&&  (Npc_GetDistToWP(other,Pal_213_Checkpoint)		<  (other.aivar[AIV_LastDistToWP]-50)	))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_Attack_Info()
{
	other.aivar[AIV_LastDistToWP] 			= 0;
	self.aivar[AIV_Guardpassage_Status]	= GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_StopProcessInfos	(self);												//dem Spieler sofort wieder die Kontrolle zurückgeben
	
	B_Attack (self, other, AR_GuardStopsIntruder, 1);
};


//#############################
//###						###
//###		Kapitel 5		###
//###						###
//#############################


///////////////////////////////////////////////////////////////////////
//	Abziehen 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Pal_213_Schiffswache_GoOnBoard   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 5;
	condition   = DIA_Pal_213_Schiffswache_GoOnBoard_Condition;
	information = DIA_Pal_213_Schiffswache_GoOnBoard_Info;
	permanent   = FALSE;
	description = "I want to get on the ship.";
};

FUNC INT DIA_Pal_213_Schiffswache_GoOnBoard_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Pal_213_Schiffswache_GoOnBoard_Info()
{
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_GoOnBoard_15_00"); //I want to get on the ship.
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_GoOnBoard_01_01"); //No one is to enter the ship! I have my orders!
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_GoOnBoard_01_02"); //I will kill anyone who enters the ship without permission.
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_GoOnBoard_01_03"); //In the name of Innos, I will defend the ship with my life.
};

//**********************************************************
//sc ist kdf -Du stellst den Wunsch eines eines Magiers des Feuers in Frage?
//**********************************************************

INSTANCE DIA_Pal_213_Schiffswache_IAmKDF   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 6;
	condition   = DIA_Pal_213_Schiffswache_IAmKDF_Condition;
	information = DIA_Pal_213_Schiffswache_IAmKDF_Info;
	permanent   = FALSE;
	description = "You question the wish of a magician of fire?";
};

FUNC INT DIA_Pal_213_Schiffswache_IAmKDF_Condition()
{
	if (Hero.guild == GIL_KDF)
	&& (Npc_KnowsInfo (other,DIA_Pal_213_Schiffswache_GoOnBoard))
	{
		return TRUE;
	};
};

FUNC VOID DIA_Pal_213_Schiffswache_IAmKDF_Info()
{
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmKDF_15_00"); //You question the wish of a magician of fire?
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmKDF_01_01"); //(nervously) No, of course not. May Innos forgive me.
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmKDF_01_02"); //(nervously) The magicians of fire are the guardians of Inno's wisdom,...
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmKDF_01_03"); //(nervous).... whoever questions them questions Innos and forfeits any right to his mercy.
};

//**********************************************************
//What happens when I board?
//**********************************************************

INSTANCE DIA_Pal_213_Schiffswache_IAmKDF2   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 6;
	condition   = DIA_Pal_213_Schiffswache_IAmKDF2_Condition;
	information = DIA_Pal_213_Schiffswache_IAmKDF2_Info;
	permanent   = FALSE;
	description = "What happens when I board?";
};

FUNC INT DIA_Pal_213_Schiffswache_IAmKDF2_Condition()
{
	if (Hero.guild == GIL_KDF)
	&& (Npc_KnowsInfo (other,DIA_Pal_213_Schiffswache_IAmKDF))
	{
		return TRUE;
	};
};

FUNC VOID DIA_Pal_213_Schiffswache_IAmKDF2_Info()
{
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmKDF2_15_00"); //What happens when I board?
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmKDF2_01_01"); //(nervous) I'll kill you... I mean, stop it.
};

//**********************************************************
//You would attack a magician of fire?
//**********************************************************

INSTANCE DIA_Pal_213_Schiffswache_IAmKDF3   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 6;
	condition   = DIA_Pal_213_Schiffswache_IAmKDF3_Condition;
	information = DIA_Pal_213_Schiffswache_IAmKDF3_Info;
	permanent   = FALSE;
	description = "You would attack a magician of fire?";
};

FUNC INT DIA_Pal_213_Schiffswache_IAmKDF3_Condition()
{
	if (Hero.guild == GIL_KDF)
	&& (Npc_KnowsInfo (other,DIA_Pal_213_Schiffswache_IAmKDF2))
	{
		return TRUE;
	};
};

FUNC VOID DIA_Pal_213_Schiffswache_IAmKDF3_Info()
{
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmKDF3_15_00"); //You would attack a magician of fire?
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmKDF3_01_01"); //I would never lay hands on a magician.
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmKDF3_15_02"); //So, what would you do if I got on board?
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmKDF3_01_03"); //Nothing, my lord.
};

//**********************************************************
//I'm going to go on board now.
//**********************************************************

INSTANCE DIA_Pal_213_Schiffswache_IAmKDF4   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 6;
	condition   = DIA_Pal_213_Schiffswache_IAmKDF4_Condition;
	information = DIA_Pal_213_Schiffswache_IAmKDF4_Info;
	permanent   = FALSE;
	description = "I'm going to go on board now.";
};

FUNC INT DIA_Pal_213_Schiffswache_IAmKDF4_Condition()
{
	if (Hero.guild == GIL_KDF)
	&& (Npc_KnowsInfo (other,DIA_Pal_213_Schiffswache_IAmKDF3))
	{
		return TRUE;
	};
};

FUNC VOID DIA_Pal_213_Schiffswache_IAmKDF4_Info()
{
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmKDF4_15_00"); //I'm going to go on board now.
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmKDF4_01_01"); //You mustn't, Lord Hagen's orders were clear.
};

//**********************************************************
//Schließen Lord Hagen Befehle auch mich mit ein?.
//**********************************************************

INSTANCE DIA_Pal_213_Schiffswache_IAmKDF5   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 6;
	condition   = DIA_Pal_213_Schiffswache_IAmKDF5_Condition;
	information = DIA_Pal_213_Schiffswache_IAmKDF5_Info;
	permanent   = FALSE;
	description = "Lord Hagen's orders include me?";
};

FUNC INT DIA_Pal_213_Schiffswache_IAmKDF5_Condition()
{
	if (Hero.guild == GIL_KDF)
	&& (Npc_KnowsInfo (other,DIA_Pal_213_Schiffswache_IAmKDF4))
	{
		return TRUE;
	};
};

FUNC VOID DIA_Pal_213_Schiffswache_IAmKDF5_Info()
{
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmKDF5_15_00"); //Lord Hagen's orders include me?
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmKDF5_01_01"); //(nervous) I don't know.
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmKDF5_15_02"); //Think about it, would Lord Hagen dare to suspect a magician of theft?
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmKDF5_01_03"); //I don't think so.
};

//**********************************************************
//Zum letzten mal: Lass mich auf das Schiff
//**********************************************************

INSTANCE DIA_Pal_213_Schiffswache_IAmKDF6   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 6;
	condition   = DIA_Pal_213_Schiffswache_IAmKDF6_Condition;
	information = DIA_Pal_213_Schiffswache_IAmKDF6_Info;
	permanent   = FALSE;
	description = "For the last time, let me on the ship!";
};

FUNC INT DIA_Pal_213_Schiffswache_IAmKDF6_Condition()
{
	if (Hero.guild == GIL_KDF)
	&& (Npc_KnowsInfo (other,DIA_Pal_213_Schiffswache_IAmKDF5))
	{
		return TRUE;
	};
};

FUNC VOID DIA_Pal_213_Schiffswache_IAmKDF6_Info()
{
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmKDF6_15_00"); //For the last time, let me on the ship!
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmKDF6_01_01"); //Understood. You may board the ship.

};

//**********************************************************
//sc ist PA -Do you mistrust me, knight?
//**********************************************************

INSTANCE DIA_Pal_213_Schiffswache_IAmPAL   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 6;
	condition   = DIA_Pal_213_Schiffswache_IAmPAL_Condition;
	information = DIA_Pal_213_Schiffswache_IAmPAL_Info;
	permanent   = FALSE;
	description = "Do you mistrust me, knight?";
};

FUNC INT DIA_Pal_213_Schiffswache_IAmPAL_Condition()
{
	if (Hero.guild == GIL_PAL)
	&& (Npc_KnowsInfo (other,DIA_Pal_213_Schiffswache_GoOnBoard))
	{
		return TRUE;
	};
};

FUNC VOID DIA_Pal_213_Schiffswache_IAmPAL_Info()
{
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmPAL_15_00"); //Do you mistrust me, knight?
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmPAL_01_01"); //No, I'm just following orders.
};

//**********************************************************
//sc ist PA -Dann solltest du wissen, wer hier den Vorgesetzter ist.
//**********************************************************

INSTANCE DIA_Pal_213_Schiffswache_IAmPAL2   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 6;
	condition   = DIA_Pal_213_Schiffswache_IAmPAL2_Condition;
	information = DIA_Pal_213_Schiffswache_IAmPAL2_Info;
	permanent   = FALSE;
	description = "Then you should know who's higher-ranking here.";
};

FUNC INT DIA_Pal_213_Schiffswache_IAmPAL2_Condition()
{
	if (Hero.guild == GIL_PAL)
	&& (Npc_KnowsInfo (other,DIA_Pal_213_Schiffswache_IAmPAL))
	{
		return TRUE;
	};
};

FUNC VOID DIA_Pal_213_Schiffswache_IAmPAL2_Info()
{
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmPAL2_15_00"); //Then you should know who's higher-ranking here.
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmPAL2_01_01"); //Yes, sir!
};

//**********************************************************
//sc ist PA -Dann solltest du wissen, wer hier den Vorgesetzter ist.
//**********************************************************

INSTANCE DIA_Pal_213_Schiffswache_IAmPAL3   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 6;
	condition   = DIA_Pal_213_Schiffswache_IAmPAL3_Condition;
	information = DIA_Pal_213_Schiffswache_IAmPAL3_Info;
	permanent   = FALSE;
	description = "I hereby order you to grant me access to the ship.";
};

FUNC INT DIA_Pal_213_Schiffswache_IAmPAL3_Condition()
{
	if (Hero.guild == GIL_PAL)
	&& (Npc_KnowsInfo (other,DIA_Pal_213_Schiffswache_IAmPAL2))
	{
		return TRUE;
	};
};

FUNC VOID DIA_Pal_213_Schiffswache_IAmPAL3_Info()
{
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmPAL3_15_00"); //I hereby order you to grant me access to the ship.
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmPAL3_01_01"); //Understood, sir, access is granted.
	
};

//**********************************************************
//sc ist DJG -Isn't there anything you can do?
//**********************************************************

INSTANCE DIA_Pal_213_Schiffswache_IAmDJG   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 6;
	condition   = DIA_Pal_213_Schiffswache_IAmDJG_Condition;
	information = DIA_Pal_213_Schiffswache_IAmDJG_Info;
	permanent   = FALSE;
	description = "Isn't there anything you can do?";
};

FUNC INT DIA_Pal_213_Schiffswache_IAmDJG_Condition()
{
	if (Hero.guild == GIL_DJG)
	&& (Npc_KnowsInfo (other,DIA_Pal_213_Schiffswache_GoOnBoard))
	{
		return TRUE;
	};
};

FUNC VOID DIA_Pal_213_Schiffswache_IAmDJG_Info()
{
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmDJG_15_00"); //Isn't there anything you can do?
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmDJG_01_01"); //I don't think I understand.
};

//**********************************************************
//sc ist DJG -Ich könnte dir Geld geben.
//**********************************************************

INSTANCE DIA_Pal_213_Schiffswache_IAmDJG2   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 6;
	condition   = DIA_Pal_213_Schiffswache_IAmDJG2_Condition;
	information = DIA_Pal_213_Schiffswache_IAmDJG2_Info;
	permanent   = FALSE;
	description = "I could give you money.";
};

FUNC INT DIA_Pal_213_Schiffswache_IAmDJG2_Condition()
{
	if (Hero.guild == GIL_DJG)
	&& (Npc_KnowsInfo (other,DIA_Pal_213_Schiffswache_IAmDJG))
	{
		return TRUE;
	};
};

FUNC VOID DIA_Pal_213_Schiffswache_IAmDJG2_Info()
{
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmDJG2_15_00"); //I could give you money. So you'd look the other way.
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmDJG2_01_01"); //I'm not on the take, and if you don't leave right now, I'll take that as an insult.
};

//**********************************************************
//sc ist DJG -Ich habe einen Brief von Lord Hagen.
//**********************************************************

INSTANCE DIA_Pal_213_Schiffswache_IAmDJG3   (C_INFO)
{
	npc         = Pal_213_Schiffswache;
	nr          = 6;
	condition   = DIA_Pal_213_Schiffswache_IAmDJG3_Condition;
	information = DIA_Pal_213_Schiffswache_IAmDJG3_Info;
	permanent   = FALSE;
	description = "I have an authorization letter.";
};

FUNC INT DIA_Pal_213_Schiffswache_IAmDJG3_Condition()
{
	if (Hero.guild == GIL_DJG)
	&& (Npc_KnowsInfo (other,DIA_Pal_213_Schiffswache_IAmDJG))
	&& (Npc_HasItems (other,ITWr_ForgedShipLetter_MIS) >=1)
	{
		return TRUE;
	};
};

FUNC VOID DIA_Pal_213_Schiffswache_IAmDJG3_Info()
{
	AI_Output (other,self ,"DIA_Pal_213_Schiffswache_IAmDJG3_15_00"); //I have an authorization letter. I'm allowed on the ship.
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmDJG3_01_01"); //Let me have a look.
	
	B_GiveInvItems (other,self,ItWr_ForgedShipLetter_Mis,1);
	B_UseFakeScroll ();
	
	AI_Output (self ,other,"DIA_Pal_213_Schiffswache_IAmDJG3_01_02"); //All right, you can pass.
	
};
