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
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_36_00"); //You want to come in here, I suppose?

	Info_ClearChoices	(Info_Mod_Mil_333_Hi);

	Info_AddChoice	(Info_Mod_Mil_333_Hi, "Yeah, and you're not gonna stop me.", Info_Mod_Mil_333_Hi_B);
	Info_AddChoice	(Info_Mod_Mil_333_Hi, "Looks that way.", Info_Mod_Mil_333_Hi_A);
};

FUNC VOID Info_Mod_Mil_333_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Mil_333_Hi_B_15_00"); //Yeah, and you're not gonna stop me.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_B_36_00"); //(laughs) Oh, that scares me. Come on, if you dare!
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_B_36_01"); //And if you should shit your pants now, then you'd better try it on the other side of Garond. He's in charge of criminal socks today.

	Info_ClearChoices	(Info_Mod_Mil_333_Hi);

	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP(other,Mil_333_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_FirstWarnGiven;

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Mil_333_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Mil_333_Hi_A_15_00"); //Looks that way.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_A_36_01"); //You must be one of those convicts who escaped from the Minental.
	AI_Output(hero, self, "Info_Mod_Mil_333_Hi_A_15_02"); //Maybe.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_A_36_03"); //You are. I know everyone who comes in and out of town. But I've never seen you before.
	AI_Output(hero, self, "Info_Mod_Mil_333_Hi_A_15_04"); //Can I pass now?
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_A_36_05"); //Not with me. Garond wants to see the dome residents himself before he lets you in.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_A_36_06"); //You'll have to make an effort to get to the other gate.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi_A_36_07"); //But the best thing to do is to try Garond against less... to be impudent. He's a real piece of puke, and he doesn't like you guys at all.

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
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi2_36_00"); //You want to come in here, I suppose?
	AI_Output(hero, self, "Info_Mod_Mil_333_Hi2_15_01"); //Looks that way.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi2_36_02"); //I've never seen you before.
	AI_Output(hero, self, "Info_Mod_Mil_333_Hi2_15_03"); //But I was already at the other gate. Ask Garond if you don't believe me.
	AI_Output(self, hero, "Info_Mod_Mil_333_Hi2_36_04"); //Nah, let me tell you, I've got something better to do today. All right, come on in.
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
	AI_Output(self, hero, "Info_Mod_Mil_333_TomKraut_36_00"); //Ohh, my head... he feels empty-sucked.

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
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_00"); //Ahh, one of those crazy excursionists again.
	AI_Output(hero, self, "Info_Mod_Mil_333_Daemonisch_15_01"); //What do you mean, crazy? And what excursionists?
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_02"); //All the citizens who keep coming through the city gates.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_03"); //There's been a hell of a lot of them lately. And crazy is what's been happening around the city gates lately.

	B_Say	(hero, self, "$WASMEINSTDU");

	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_04"); //Well, first of all the bandits in the small valley in front of the city.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_05"); //A citizen has discovered them and led some paladins and city guards to them in the evening.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_06"); //Tengron, who was supposed to be guarding the town, couldn't stand it at his post and ran after him.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_07"); //It didn't take long before he came back screaming and reported something of dark shadows.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_08"); //Yes, yes, haha, shadows in the night, to him his holy light must have shone too much on the turnip.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_09"); //From the others, who came back some time later, we learned that he fell into Tobucht and attacked everyone. He's been in the holding cell ever since...
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_10"); //And then there's Brian. Came out of town not long ago, something was stammering about threat to the city and dark shadows.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_11"); //Then disappeared in the direction of Orlan between the trees.
	AI_Output(hero, self, "Info_Mod_Mil_333_Daemonisch_15_12"); //Uh, isn't that kind of a reason for you to worry?
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_13"); //Why? The paladins often comb through the dark forests in the evenings so often that one cannot feel safer.
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch_36_14"); //The two paladins, who went to the small woodland north of us a few days ago, let themselves however really time to search everything for bandits.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Man, the gatekeeper doesn't seem to be surprised at anything. A citizen had led Paladins and guards into the valley in the evening, where bandits were supposedly standing. Tengron, who followed them a little later, came back disturbed and reported dark shadows. The companions who came back later claimed that he had attacked them and had gone mad. He's been in prison ever since. On another occasion, Brian came running scared to the city gate and muttered of black shadows and a threat to the city. Finally I learned that two paladins in the northern forest near the east gate have disappeared.");

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
	AI_Output(self, hero, "Info_Mod_Mil_333_Daemonisch2_36_00"); //Stop, first drink a glass of monastery wine.

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
	description	= "Is it allowed to climb over the city wall?";
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
	AI_Output(hero, self, "Info_Mod_Mil_333_Mario_15_00"); //Is it allowed to climb over the city wall?
	AI_Output(self, hero, "Info_Mod_Mil_333_Mario_36_01"); //(laughs) City walls are designed so that no one can climb over them.
	AI_Output(hero, self, "Info_Mod_Mil_333_Mario_15_02"); //Oh, I see. There's two guys back there doing that.
	AI_Output(self, hero, "Info_Mod_Mil_333_Mario_36_03"); //What?! Where?
	AI_Output(hero, self, "Info_Mod_Mil_333_Mario_15_04"); //Well, heading west. A whole piece.
	AI_Output(hero, self, "Info_Mod_Mil_333_Mario_15_05"); //When I asked them what they were doing, they told me to fuck off.
	AI_Output(self, hero, "Info_Mod_Mil_333_Mario_36_06"); //At Innos! Whenever I'm on duty!

	B_LogEntry	(TOPIC_MOD_MARIO_FLUCHTHILFE, "The city guards are distracted.");

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
	AI_Output(self, hero, "Info_Mod_Mil_333_HaradLehrling_36_00"); //Stop. You're Harad's apprentice, aren't you?
	AI_Output(hero, self, "Info_Mod_Mil_333_HaradLehrling_15_01"); //Yes, yes...
	AI_Output(self, hero, "Info_Mod_Mil_333_HaradLehrling_36_02"); //By order of Tengrons, we have to search you. Just a moment, please....

	AI_PlayAni	(self, "T_PLUNDER");

	AI_Output(self, hero, "Info_Mod_Mil_333_HaradLehrling_36_03"); //That's what this gun bunch was all about. Harad thus violates a provision of Tengron. We have to take it.

	B_GiveInvItems	(hero, self, ItMi_Waffenbuendel, 1);

	AI_Output(self, hero, "Info_Mod_Mil_333_HaradLehrling_36_04"); //Harad trying to smuggle it through you to the mercenaries will have serious consequences for him.

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
		AI_Output (other, self,"DIA_Mil_333_Stadtwache_FirstWarn_15_01"); //(sighs) What is it?
		AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_02"); //You know very well!
	
		if (B_GetGreatestPetzCrime(self) == CRIME_MURDER)
		{
			AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_03"); //You're wanted in town for murder!
		};
	
		if (B_GetGreatestPetzCrime(self) == CRIME_THEFT)
		{
			AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_04"); //We don't need dirty thieves here!
		};
	
		if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
		{
			AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_05"); //We don't need troublemakers in our town!
		};
	
		AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_06"); //Why do you think we should let you in?
	}
	else // ------ normales Reinkommen ------
	{
		 var C_Item itm; itm = Npc_GetEquippedArmor(other);
		
		// ------ ohne Rüstung ODER als Bauer ------
		if (Npc_HasEquippedArmor(other) == FALSE)
		{
			AI_Output (other, self,"DIA_Mil_333_Stadtwache_FirstWarn_15_07"); //Yes?
			AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_08"); //You look like a poor wretch. We can't have people without money in town.
		}
 	 	else 
		{
			AI_Output (other, self,"DIA_Mil_333_Stadtwache_FirstWarn_15_15"); //(quietly) What?
			AI_Output (self, other,"DIA_Mil_333_Stadtwache_FirstWarn_36_16"); //Just checking in on you. Well, looks like you have money. You can go in.
			
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
	AI_Output (self, other,"DIA_Mil_333_Stadtwache_SecondWarn_36_00"); //No passageway for you, I already mentioned.

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
	
	AI_Output (self, other,"DIA_Mil_333_Stadtwache_Attack_36_00"); //You asked for it...
	
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
	description	= "Here's 100 pieces of gold. Let me in!";
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
	AI_Output (other, self,"DIA_Mil_333_Stadtwache_Bribe_15_00"); //Here's 100 pieces of gold. Let me in!
	
	if (B_GiveInvItems (other, self, itmi_gold, 100))
	{
		AI_Output (self, other,"DIA_Mil_333_Stadtwache_Bribe_36_01"); //100 gold pieces sound good. Well, get in there.
		
		if (B_GetGreatestPetzCrime(self) >= CRIME_ATTACK)
		{
			AI_Output (self, other,"DIA_Mil_333_Stadtwache_Bribe_36_02"); //And go straight to Andre! Or I'll take 100 gold pieces off you next time!
		};
		
		self.aivar[AIV_PASSGATE] = TRUE;
		Mil_333_schonmalreingelassen = TRUE;
		
		// ------ wenn bezahlt, persönliche Absolution erteilen -------
		MIL_333_Personal_AbsolutionLevel = B_GetCurrentAbsolutionLevel(self) + 1;
	}
	else //nicht genug Gold
	{
		AI_Output (self, other,"DIA_Mil_333_Stadtwache_Bribe_36_03"); //What?! Where?! I don't see 100 gold coins. Get out of here!
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
	AI_Output (self, other,"DIA_Mil_333_Stadtwache_PERM_36_00"); //Keep moving!
	
	AI_StopProcessInfos (self);
};
