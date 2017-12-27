INSTANCE Info_Mod_Nagon_Hi (C_INFO)
{
	npc		= Mod_1773_KDF_Nagon_PAT;
	nr		= 1;
	condition	= Info_Mod_Nagon_Hi_Condition;
	information	= Info_Mod_Nagon_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nagon_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Gizar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagon_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Nagon_Hi_10_00"); //Don't bother me now!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Nagon_Gizar (C_INFO)
{
	npc		= Mod_1773_KDF_Nagon_PAT;
	nr		= 1;
	condition	= Info_Mod_Nagon_Gizar_Condition;
	information	= Info_Mod_Nagon_Gizar_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nagon_Gizar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gizar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagon_Gizar_Info()
{
	AI_Output(self, hero, "Info_Mod_Nagon_Gizar_10_00"); //Ah, it's good to see you, brother.
	AI_Output(hero, self, "Info_Mod_Nagon_Gizar_15_01"); //Gizar sent me to you.
	AI_Output(self, hero, "Info_Mod_Nagon_Gizar_10_02"); //I know. Pyrokar thinks a lot of you. He has great faith in you! That's why you're here.
	AI_Output(self, hero, "Info_Mod_Nagon_Gizar_10_03"); //I have an important task for you. You have to steal the five Foki that the Black Mages use to hold up the barrier, steal and bring them to us.
	AI_Output(hero, self, "Info_Mod_Nagon_Gizar_15_04"); //But... How am I supposed to do that?
	AI_Output(self, hero, "Info_Mod_Nagon_Gizar_10_05"); //Go to the top of the tower and ask the oracle. It'll tell you how to get the focus.

	Log_CreateTopic	(TOPIC_MOD_FM_FOKI, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_FOKI, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_FOKI, "Nagon wants me to steal the five foci that the black mages use to maintain the barrier around Patherion. To do this I should ask the oracle on the tower.");
};

INSTANCE Info_Mod_Nagon_HabFoki (C_INFO)
{
	npc		= Mod_1773_KdF_Nagon_PAT;
	nr		= 1;
	condition	= Info_Mod_Nagon_HabFoki_Condition;
	information	= Info_Mod_Nagon_HabFoki_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the focus.";
};

FUNC INT Info_Mod_Nagon_HabFoki_Condition()
{
	if (Npc_HasItems(hero, ItMi_Focus_Pat) == 5)
	&& (Mod_FM_Foki >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagon_HabFoki_Info()
{
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_00"); //I've done it. I've got the five Foki.
	
	B_GiveInvItems	(hero, self, ItMi_Focus_Pat, 5);

	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_01"); //Truly brother, you did it! We're proud of you! You have done Innos a great service!
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_02"); //But why hasn't the barrier disappeared?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_03"); //Well, we need to perform a ritual first. But for that we need a fifth magician.
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_04"); //I'll keep it safe until we find someone powerful enough to destroy the barrier with us.
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_05"); //Did you know that we created the Foki?
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_06"); //Her?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_07"); //Yeah. That means four of us and Ragon.
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_08"); //Oh, the founder of this monastery.
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_09"); //You know the story?
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_10"); //Yeah, Pyrokar told me.
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_11"); //It is sad to think that the founder of the entire Innoskirche has disappeared.
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_12"); //Yes, but I have another question: do you know Aaron?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_13"); //Aaron? You mean the new magician. Yeah, I know him.
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_14"); //He dropped off the last shipment of potions that Tojan wanted. That wasn't so long ago...
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_15"); //(surprised) He brought the potions?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_16"); //Yeah, he shared it out right away, just like you.
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_17"); //And did something extraordinary happen?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_18"); //Something extraordinary? What do you mean, something extraordinary?
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_19"); //Well, for example, that there was a black magician in the fortress?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_20"); //What? A black magician? What makes you think that?
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_21"); //Just a question.
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_22"); //No, Tojan would have told me so.
	AI_Output(hero, self, "Info_Mod_Nagon_HabFoki_15_23"); //Well, thank you. Do you know where Aaron is?
	AI_Output(self, hero, "Info_Mod_Nagon_HabFoki_10_24"); //During the day he is always somewhere else, he tries to make himself useful everywhere, but at night he is always in the church praying.

	B_GivePlayerXP	(500);

	B_StartOtherRoutine	(Mod_1771_KDF_Aaron_PAT, "ARBEIT");

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "Aaron is hard to find during the day because he helps out everywhere, but at night he is always in the church praying. Which was funny, because Nagon thinks it's impossible for a black magician to be in the monastery. It almost seems that Tojan didn't inform him.");
	B_SetTopicStatus	(TOPIC_MOD_FM_FOKI, LOG_SUCCESS);
};

INSTANCE Info_Mod_Nagon_MangelQuest (C_INFO)
{
	npc		= Mod_1773_KDF_Nagon_PAT;
	nr		= 1;
	condition	= Info_Mod_Nagon_MangelQuest_Condition;
	information	= Info_Mod_Nagon_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's troubling you, brother?";
};

FUNC INT Info_Mod_Nagon_MangelQuest_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nagon_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Nagon_MangelQuest_15_00"); //What's troubling you, brother?
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest_10_01"); //Ah... Excuse my tone of voice.... but just look around here!
	AI_Output(hero, self, "Info_Mod_Nagon_MangelQuest_15_02"); //(looks around) Hmm, I don't see anything...
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest_10_03"); //Exactly! This is the church of Patherion, one of the most important religious places of our community... and who's here? Almost nobody!
	AI_Output(hero, self, "Info_Mod_Nagon_MangelQuest_15_04"); //Unfortunately, however, there is a siege, and the priests and fighters of Innos have to...
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest_10_05"); //Yes, defend this place.
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest_10_06"); //But what value does it have if no one speaks prayer to Innos and cultivates the religious traditions that define our faith as such?
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest_10_07"); //This conflict has cost us many sacrifices... but the biggest price we pay is our connection to Innos.
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest_10_08"); //If not even in this holy place someone cultivates the relationship with Innos, yes, then we have already lost the war.

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Nagon complained that no one would come to pray in the chapel anymore.");
};

INSTANCE Info_Mod_Nagon_MangelQuest2 (C_INFO)
{
	npc		= Mod_1773_KDF_Nagon_PAT;
	nr		= 1;
	condition	= Info_Mod_Nagon_MangelQuest2_Condition;
	information	= Info_Mod_Nagon_MangelQuest2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nagon_MangelQuest2_Condition()
{
	if (Mod_Pat_Beter >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nagon_MangelQuest2_Info()
{
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest2_10_00"); //Greetings, brother. As soon as we had talked, several disciples quickly arrived to pray.
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest2_10_01"); //This place of faith is now once again the focus of attention, as it should be? and I doubt it's a coincidence.
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest2_10_02"); //Your commitment to our faith shows that you are a true servant of our Lord.
	AI_Output(self, hero, "Info_Mod_Nagon_MangelQuest2_10_03"); //So go with Innos' blessing and continue to help shape the world according to his will.

	B_BlessAttribute	(hero, ATR_MANA_MAX, 3);

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Nagon was pleased with the faithful in the church.");

	B_StopMangel();
};

var int Nagon_LastPetzCounter;
var int Nagon_LastPetzCrime;

INSTANCE Info_Mod_Nagon_PMSchulden (C_INFO)
{
	npc         	= Mod_1773_KDF_Nagon_PAT;
	nr          	= 1;
	condition   	= Info_Mod_Nagon_PMSchulden_Condition;
	information 	= Info_Mod_Nagon_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Nagon_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Nagon_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Nagon_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Nagon_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_00"); //Did you come to pay your fine?

	if (B_GetTotalPetzCounter(self) > Nagon_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_01"); //I was wondering if you'd even dare come here!
		AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_02"); //Apparently, it's not the latest accusations!

		if (Nagon_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_03"); //I warned you! The fine you have to pay now is higher!
			AI_Output (hero, self, "Info_Mod_Nagon_PMAdd_15_00"); //How much?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Nagon_LastPetzCounter);
		
			if (diff > 0)
			{
				Nagon_Schulden = Nagon_Schulden + (diff * 50);
			};
		
			if (Nagon_Schulden > 1000)	{	Nagon_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Nagon_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_04"); //You let me down so badly!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Nagon_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_05"); //Some new things have come up.
		
		if (Nagon_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_06"); //Suddenly, there's no one left to accuse you of murder.
		};
		
		if (Nagon_LastPetzCrime == CRIME_THEFT)
		|| ( (Nagon_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_07"); //No one remembers seeing you at a theft.
		};
		
		if (Nagon_LastPetzCrime == CRIME_ATTACK)
		|| ( (Nagon_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_08"); //There's no more witnesses to the fact that you've ever been in a fight.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_09"); //Apparently all the charges against you have vanished.
		};
		
		AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_10"); //I don't know what happened, but I warn you: don't play games with me.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_11"); //Anyway, I've decided to waive your debt.
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_12"); //Make sure you don't get in trouble again.
	
			Nagon_Schulden			= 0;
			Nagon_LastPetzCounter 	= 0;
			Nagon_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_13"); //One thing is clear: you still have to pay your penalty in full.
			B_Say_Gold (self, hero, Nagon_Schulden);
			AI_Output (self, hero, "Info_Mod_Nagon_PMSchulden_10_14"); //So, what is it?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Nagon_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Nagon_PETZMASTER);
		Info_AddChoice		(Info_Mod_Nagon_PMSchulden,"I haven't got enough gold!",Info_Mod_Nagon_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Nagon_PMSchulden,"How much was that again?",Info_Mod_Nagon_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Nagon_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Nagon_PMSchulden,"I want to pay the penalty!",Info_Mod_Nagon_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Nagon_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Nagon_PMSchulden_HowMuchAgain_15_00"); //How much was it again?
	B_Say_Gold (self, hero, Nagon_Schulden);

	Info_ClearChoices  	(Info_Mod_Nagon_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Nagon_PETZMASTER);
	Info_AddChoice		(Info_Mod_Nagon_PMSchulden,"I haven't got enough gold!",Info_Mod_Nagon_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Nagon_PMSchulden,"How much was that again?",Info_Mod_Nagon_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Nagon_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Nagon_PMSchulden,"I want to pay the penalty!",Info_Mod_Nagon_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Nagon_PETZMASTER   (C_INFO)
{
	npc         	= Mod_1773_KDF_Nagon_PAT;
	nr          	= 1;
	condition   	= Info_Mod_Nagon_PETZMASTER_Condition;
	information 	= Info_Mod_Nagon_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Nagon_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Nagon_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Nagon_PETZMASTER_Info()
{
	Nagon_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...
	
	// ------ SC hat mit Nagon noch nicht gesprochen ------
	if (B_GetAivar(self, AIV_TalkedToPlayer) == FALSE)
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_00"); //You must be the new guy who caused trouble here at the monastery.
	};	
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_01"); //I'm glad you came to me before things got worse for you.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_02"); //Murder is a grave offence!

		Nagon_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Nagon_Schulden = Nagon_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_03"); //Not to mention the other things you've done.
		};

		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_04"); //Most magicians and paladins will not tolerate a murderer in the monastery!
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_06"); //I have no interest in putting you on the gallows.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_07"); //But it won't be easy to make people gracious again.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_08"); //You could show your repentance by paying a fine - of course the penalty must be appropriate.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_09"); //Good of you to come! You're accused of stealing! There are witnesses!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_10"); //I don't even want to talk about the other things I've heard.
		};

		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_11"); //I will not tolerate such behaviour in the monastery!
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_12"); //You'll have to pay a fine to make up for your crime!
		
		Nagon_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_13"); //You mess with the black mages, it's none of our business.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_14"); //But if you attack a magician or a paladin, I'll have to hold you accountable.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_15"); //And I don't think it had to be the case with the sheep.
		};

		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_16"); //If I let you get away with this, everybody's gonna do what they want.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_17"); //So you'll pay an appropriate fine - and the whole thing will be forgotten.
		
		Nagon_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_18"); //I've heard that you've been messing with our sheep.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_19"); //You do realize I can't let this go through.
		AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_10_20"); //You'll have to pay compensation!
		
		Nagon_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Nagon_PETZMASTER_15_21"); //How much?
	
	if (Nagon_Schulden > 1000)	{	Nagon_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Nagon_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Nagon_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Nagon_PETZMASTER);
	Info_AddChoice		(Info_Mod_Nagon_PETZMASTER,"I haven't got enough gold!",Info_Mod_Nagon_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Nagon_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Nagon_PETZMASTER,"I want to pay the penalty!",Info_Mod_Nagon_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Nagon_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Nagon_PETZMASTER_PayNow_15_00"); //I want to pay the fine!
	B_GiveInvItems (hero, self, itmi_gold, Nagon_Schulden);
	AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_PayNow_10_01"); //Good! I will make sure that everyone in the monastery learns about it - this will restore your reputation to a certain extent.

	B_GrantAbsolution (LOC_PATHERION);
	
	Nagon_Schulden			= 0;
	Nagon_LastPetzCounter 	= 0;
	Nagon_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Nagon_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Nagon_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Nagon_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Nagon_PETZMASTER_PayLater_15_00"); //I don't have enough gold!
	AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_PayLater_10_01"); //Then see that you get the gold as soon as possible.
	AI_Output (self, hero, "Info_Mod_Nagon_PETZMASTER_PayLater_10_02"); //And I'm warning you, if you owe yourself anything, it's going to get worse for you.
	
	Nagon_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Nagon_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Nagon_EXIT (C_INFO)
{
	npc		= Mod_1773_KDF_Nagon_PAT;
	nr		= 1;
	condition	= Info_Mod_Nagon_EXIT_Condition;
	information	= Info_Mod_Nagon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nagon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nagon_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
