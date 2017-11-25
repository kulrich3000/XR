INSTANCE Info_Mod_Pepe_Hallo (C_INFO)
{
	npc		= Mod_793_BAU_Pepe_NW;
	nr		= 1;
	condition	= Info_Mod_Pepe_Hallo_Condition;
	information	= Info_Mod_Pepe_Hallo_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Pepe_Hallo_Condition ()
{
	return 1;
};

FUNC VOID Info_Mod_Pepe_Hallo_Info ()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output (self, hero, "Info_Mod_Pepe_Hallo_28_01"); //Take care of the sheep! And if possible, avoid any trouble.
};

INSTANCE Info_Mod_Pepe_Daemonisch (C_INFO)
{
	npc		= Mod_793_BAU_Pepe_NW;
	nr		= 1;
	condition	= Info_Mod_Pepe_Daemonisch_Condition;
	information	= Info_Mod_Pepe_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pepe_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pepe_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_28_00"); //What are you doing here, what do you want? Are you one of the black shadows too?
	AI_Output(hero, self, "Info_Mod_Pepe_Daemonisch_15_01"); //Now, just calm down. What do you mean, black shadows?
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_28_02"); //(disturbed) I mean the monsters who packed the mercenaries in the woods at night.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_28_03"); //They emerged out of nowhere with a kind of... screeching loudly.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_28_04"); //The mercenaries pulled out their weapons and tried to assault them.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_28_05"); //But they were all seized and penetrated by them.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_28_06"); //They shouted, screamed and threw themselves to the ground.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_28_07"); //One of them even pierced himself with his own gun.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_28_08"); //l-- I could not move and remained completely motionless while sitting by the fire, watching the terrible spectacle helplessly.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_28_09"); //Even when everyone was lying on the floor and nobody was moving, I was paralyzed.... for many hours.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_28_10"); //But then suddenly they all started twitching and groaning.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_28_11"); //Nothing could stop me any more and I panicked and took flight. And I've been hiding here ever since.
	AI_Output(hero, self, "Info_Mod_Pepe_Daemonisch_15_12"); //Hmm, that's very interesting what you're telling me.
	AI_Output(hero, self, "Info_Mod_Pepe_Daemonisch_15_13"); //You're doing well, I think, to hide here for a while.
	AI_Output(self, hero, "Info_Mod_Pepe_Daemonisch_28_14"); //(slightly calmer) Yes... Yes, yes, I will.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Pepe keeps himself hidden and fears for his life. According to him, they were attacked at night by black shadows and all mercenaries were torn to the ground. Someone's said to have pierced himself with his own gun. Pepe remained paralyzed at the campfire and did not take flight until the mercenaries rose again after many hours of flickering.");

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Pepe_Unheil (C_INFO)
{
	npc		= Mod_793_BAU_Pepe_NW;
	nr		= 1;
	condition	= Info_Mod_Pepe_Unheil_Condition;
	information	= Info_Mod_Pepe_Unheil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have you seen anything strange or unusual lately - apart from the monsters in the surroundings?";
};

FUNC INT Info_Mod_Pepe_Unheil_Condition()
{
	if (Mod_WM_Boeden == 14)
	|| (Mod_WM_Boeden == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pepe_Unheil_Info()
{
	AI_Output(hero, self, "Info_Mod_Pepe_Unheil_15_00"); //Have you seen anything strange or unusual lately - apart from the monsters in the surroundings?
	AI_Output(self, hero, "Info_Mod_Pepe_Unheil_28_01"); //Yes, indeed. This pack of black wolves makes my head spin. The mercenaries had already searched for them in the forest, but couldn't find anything.
	AI_Output(self, hero, "Info_Mod_Pepe_Unheil_28_02"); //And the health problems of my sheep.
	AI_Output(self, hero, "Info_Mod_Pepe_Unheil_28_03"); //Something always seems to startle them when they graze on the edge of the forest at the bend to the hunter Grom.
	AI_Output(self, hero, "Info_Mod_Pepe_Unheil_28_04"); //I could not see anything yet, but once I had the impression that I heard a soft groaning from the rocks above them.
	AI_Output(self, hero, "Info_Mod_Pepe_Unheil_28_05"); //Hmm, otherwise it seemed to me as if I had seen figures go into the forest a few times in the evening. Very creepy.
};

INSTANCE Info_Mod_Pepe_Hexen (C_INFO)
{
	npc		= Mod_793_BAU_Pepe_NW;
	nr		= 1;
	condition	= Info_Mod_Pepe_Hexen_Condition;
	information	= Info_Mod_Pepe_Hexen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pepe_Hexen_Condition()
{
	if (Mod_WM_PepeAtSheep == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pepe_Hexen_Info()
{
	AI_Output(self, hero, "Info_Mod_Pepe_Hexen_28_00"); //These dreadful beasts have killed my entire herd, and I should have been killed by a hair's breadth.
	AI_Output(self, hero, "Info_Mod_Pepe_Hexen_28_01"); //How am I supposed to explain that to Onar? Where is Innos' blessing when you need it?!
};

INSTANCE Info_Mod_Pepe_PICKPOCKET (C_INFO)
{
	npc		= Mod_793_BAU_Pepe_NW;
	nr		= 1;
	condition	= Info_Mod_Pepe_PICKPOCKET_Condition;
	information	= Info_Mod_Pepe_PICKPOCKET_Info;
	permanent	= 1;
	description	= Pickpocket_30;
};                       

FUNC INT Info_Mod_Pepe_PICKPOCKET_Condition()
{
	C_Beklauen (15, ItMi_Gold, 11);
};
 
FUNC VOID Info_Mod_Pepe_PICKPOCKET_Info()
{	
	Info_ClearChoices	(Info_Mod_Pepe_PICKPOCKET);
	Info_AddChoice		(Info_Mod_Pepe_PICKPOCKET, DIALOG_BACK 		,Info_Mod_Pepe_PICKPOCKET_BACK);
	Info_AddChoice		(Info_Mod_Pepe_PICKPOCKET, DIALOG_PICKPOCKET	,Info_Mod_Pepe_PICKPOCKET_DoIt);
};

FUNC VOID Info_Mod_Pepe_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Pepe_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Pepe_Pickpocket);

		Info_AddChoice	(Info_Mod_Pepe_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Pepe_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Pepe_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Pepe_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Pepe_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Pepe_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Pepe_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Pepe_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Pepe_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Pepe_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Pepe_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Pepe_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Pepe_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
FUNC VOID Info_Mod_Pepe_PICKPOCKET_BACK()
{
	Info_ClearChoices (Info_Mod_Pepe_PICKPOCKET);
};

INSTANCE Info_Mod_Pepe_EXIT   (C_INFO)
{
	npc         = Mod_793_BAU_Pepe_NW;
	nr          = 1;
	condition   = Info_Mod_Pepe_EXIT_Condition;
	information = Info_Mod_Pepe_EXIT_Info;
	permanent   = 1;
	description = DIALOG_ENDE;
};

FUNC INT Info_Mod_Pepe_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pepe_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
