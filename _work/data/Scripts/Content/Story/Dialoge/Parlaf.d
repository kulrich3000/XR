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
	AI_Output(self, hero, "Info_Mod_Parlaf_HaradLehrling_06_00"); //Stop. You're Harad's apprentice, aren't you?
	AI_Output(hero, self, "Info_Mod_Parlaf_HaradLehrling_15_01"); //Yes, yes...
	AI_Output(self, hero, "Info_Mod_Parlaf_HaradLehrling_06_02"); //By order of Tengrons, we have to search you. Just a moment, please....

	AI_PlayAni	(self, "T_PLUNDER");

	AI_Output(self, hero, "Info_Mod_Parlaf_HaradLehrling_06_03"); //That's what this gun bunch was all about. Harad thus violates a provision of Tengron. We have to take it.

	B_GiveInvItems	(hero, self, ItMi_Waffenbuendel, 1);

	AI_Output(self, hero, "Info_Mod_Parlaf_HaradLehrling_06_04"); //Harad trying to smuggle it through you to the mercenaries will have serious consequences for him.

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
	AI_Output(self, hero, "Info_Mod_Parlaf_Randolph_06_00"); //You better get to town fast.
	AI_Output(self, hero, "Info_Mod_Parlaf_Randolph_06_01"); //There are demons floating around out here at the moment, leaving no one alive to cross their path.
	AI_Output(hero, self, "Info_Mod_Parlaf_Randolph_15_02"); //Demons? Where do these come from?
	AI_Output(self, hero, "Info_Mod_Parlaf_Randolph_06_03"); //I don't know, they're all over the woods near the city. And in the vicinity of Lobart's yard there is an obscure figure.
	AI_Output(self, hero, "Info_Mod_Parlaf_Randolph_06_04"); //Anyway, I have to be careful now and I don't have time to talk anymore.
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
	AI_Output(self, hero, "Info_Mod_Parlaf_RandolphWeg_06_00"); //That's good news. The demons seem to be slowly retreating.
	AI_Output(self, hero, "Info_Mod_Parlaf_RandolphWeg_06_01"); //I suppose they must have realized they're no match for us.
	AI_Output(self, hero, "Info_Mod_Parlaf_RandolphWeg_06_02"); //So you can go back to town with peace of mind.

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
	AI_Output(self, hero, "Info_Mod_Parlaf_Rasend_06_00"); //Hey, watch out when you hang around town.
	AI_Output(self, hero, "Info_Mod_Parlaf_Rasend_06_01"); //Something terrible has happened at the harbour and the evil demonic creature that did all this must still be nearby.
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
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_06_00"); //Stop! What brings you here?
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_06_01"); //I just give you the good advice not to make trouble in the city, otherwise you will find yourself outside the city walls sooner than you like. Understand?
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_06_02"); //Ahh, a novice of the Innos monastery.
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_06_03"); //I am always pleased to welcome the fighters for the righteous in our city walls.
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_06_04"); //Considering what kind of riffraff has been hanging around here since the fall of the barrier....
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_06_05"); //Anyway, watch out for what you're doing in town, there's been a lot of trouble lately.
	};

	Info_ClearChoices	(Info_Mod_Parlaf_Hi);

	if (Hlp_IsItem(NovArmorOrNot, ITAR_FAKE_NOV_L) == FALSE)
	{
		Info_AddChoice	(Info_Mod_Parlaf_Hi, "I'll do whatever I want.", Info_Mod_Parlaf_Hi_B);
	};
	Info_AddChoice	(Info_Mod_Parlaf_Hi, "Of course it is.", Info_Mod_Parlaf_Hi_A);
};

FUNC VOID Info_Mod_Parlaf_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Parlaf_Hi_B_15_00"); //I'll do whatever I want.
	AI_Output(self, hero, "Info_Mod_Parlaf_Hi_B_06_01"); //Like this? But not in the city. I won't let a troublemaker like you in there.

	if (!Npc_HasEquippedArmor(hero))
	{
		AI_Output(self, hero, "Info_Mod_Parlaf_Hi_B_06_02"); //Not even clothes...
	};

	Info_ClearChoices	(Info_Mod_Parlaf_Hi);

	AI_StopProcessInfos	(self);

	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP(other,Mil_309_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_FirstWarnGiven;
};

FUNC VOID Info_Mod_Parlaf_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Parlaf_Hi_A_15_00"); //Of course it is.
	AI_Output(self, hero, "Info_Mod_Parlaf_Hi_A_06_01"); //Well, then we'll understand each other.

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
	description	= "Is there a pilgrim here recently in black robe (... )";
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
	AI_Output(hero, self, "Info_Mod_Parlaf_DunklerPilger_15_00"); //Did a pilgrim come by here recently in a black robe?
	AI_Output(self, hero, "Info_Mod_Parlaf_DunklerPilger_06_01"); //Not that I know of.
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
	AI_Output(self, hero, "Info_Mod_Parlaf_Daemonisch_06_00"); //Stop, first drink the 1/4 monastery wine

	B_GiveInvItems	(self, hero, ItFo_KWine, 1);

	B_UseItem	(hero, ItFo_KWine);

	if (Mod_HQ_Daemonisch == 6)
	{
		AI_Output(self, hero, "Info_Mod_Parlaf_Daemonisch_06_01"); //The guy before would have almost gone through our fingers, but we are just too quick and he had to drink up nice.
		AI_Output(self, hero, "Info_Mod_Parlaf_Daemonisch_06_02"); //Afterwards further wien lunatic ran into the forest....

		AI_TurnAway	(hero, self);

		AI_Output(hero, self, "Info_Mod_Parlaf_Daemonisch_15_03"); //(to himself) What, he passed the monastery wine test? Then all he can do is... Urnol.

		Mod_HQ_Daemonisch = 7;

		B_LogEntry	(TOPIC_MOD_DAEMONISCH, "So, run into the forest on the right from the south gate. I'll get you.... Urnol.");
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
		AI_Output (other, self,"Info_Mod_Parlaf_FirstWarn_15_01"); //(sighs) What is it?
		AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_02"); //You know very well!
	
		if (B_GetGreatestPetzCrime(self) == CRIME_MURDER)
		{
			AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_03"); //You're wanted in town for murder!
		};
	
		if (B_GetGreatestPetzCrime(self) == CRIME_THEFT)
		{
			AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_04"); //We don't need dirty thieves here!
		};
	
		if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
		{
			AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_05"); //We don't need troublemakers in our town!
		};
	
		AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_06"); //Why do you think we should let you in?
	}
	else // ------ normales Reinkommen ------
	{
		 var C_Item itm; itm = Npc_GetEquippedArmor(other);
		
		// ------ ohne Rüstung ------
		if (Npc_HasEquippedArmor(other) == FALSE)
		{
			AI_Output (other, self,"Info_Mod_Parlaf_FirstWarn_15_07"); //What do you mean?
			AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_08"); //You can't get in here, son!
			AI_Output (other, self,"Info_Mod_Parlaf_FirstWarn_15_09"); //Why not?
			AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_10"); //Torn down as you look, you're probably just making trouble here!
			AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_11"); //We got plenty of riffraff in town already. We can't have people without money.
		}
 	 	else 
		{
			AI_Output (other, self,"Info_Mod_Parlaf_FirstWarn_15_18"); //(quietly) What?
			if (hero.guild == GIL_PAL)
			|| (hero.guild == GIL_KDF)
			{
				AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_19"); //Excuse me, but that's the rules.
				AI_Output (other, self,"Info_Mod_Parlaf_FirstWarn_15_20"); //You want to stop me?
				AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_21"); //Of course not, of course. All members of the Church of Innos are of course welcome.
				
			}
			else
			{
				AI_Output (self, other,"Info_Mod_Parlaf_FirstWarn_06_22"); //Just checking in on you. Looks like you have money. You can go in.
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
	AI_Output (self, other,"Info_Mod_Parlaf_SecondWarn_06_00"); //Don't get all weird. One more step and I'll chop you to pieces!

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
	
	AI_Output (self, other,"Info_Mod_Parlaf_Attack_06_00"); //You asked for it...
	
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
	description	= "Here's 100 pieces of gold. Let me in!";
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
	AI_Output (other, self,"Info_Mod_Parlaf_Bribe_15_00"); //Here's 100 pieces of gold. Let me in!
	
	if (B_GiveInvItems (other, self, itmi_gold, 100))
	{
		AI_Output (self, other,"Info_Mod_Parlaf_Bribe_06_01"); //100 gold pieces sound good. Well, get in there.
		
		if (B_GetGreatestPetzCrime(self) >= CRIME_ATTACK)
		{
			AI_Output (self, other,"Info_Mod_Parlaf_Bribe_06_02"); //And go straight to Lord Andre! Or I'll take 100 gold pieces off you next time!
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
		AI_Output (self, other,"Info_Mod_Parlaf_Bribe_06_03"); //What?! Where?! I don't see 100 gold coins. Get out of here!
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
	AI_Output (self, other,"Info_Mod_Parlaf_PERM_06_00"); //Keep moving!
	
	AI_StopProcessInfos (self);
};
