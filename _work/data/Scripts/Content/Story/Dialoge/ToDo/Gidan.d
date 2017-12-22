var int MerkLebenspunkteGidan;
var int MerkLebenspunkteHeldGidan;

INSTANCE Info_Mod_Gidan_Hi (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_Hi_Condition;
	information	= Info_Mod_Gidan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Gidan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gidan_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Gidan_Hi_13_01"); //I'm Gidan.
};

INSTANCE Info_Mod_Gidan_Kampf (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_Kampf_Condition;
	information	= Info_Mod_Gidan_Kampf_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_Kampf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gidan_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Turnier3))
	&& (Mod_MilizTurnier == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_Kampf_Info()
{
	AI_Output(self, hero, "Info_Mod_Gidan_Kampf_13_00"); //Huh, you're my next opponent? Don't make me laugh!
	AI_Output(self, hero, "Info_Mod_Gidan_Kampf_13_01"); //Why don't you just give up right now? That would shorten the whole thing.
	AI_Output(hero, self, "Info_Mod_Gidan_Kampf_15_02"); //The only thing that gets shortened is you, around a head if you don't shut up.
	AI_Output(self, hero, "Info_Mod_Gidan_Kampf_13_03"); //(laughs) You riffraff! Let's get this over with.

	Info_ClearChoices	(Info_Mod_Gidan_Kampf);

	Info_AddChoice	(Info_Mod_Gidan_Kampf, "No, wait a minute.", Info_Mod_Gidan_Kampf_B);
	Info_AddChoice	(Info_Mod_Gidan_Kampf, "All right, I'm ready.", Info_Mod_Gidan_Kampf_A);
};

FUNC VOID Info_Mod_Gidan_Kampf_B()
{
	AI_Output(hero, self, "Info_Mod_Gidan_Kampf_B_15_00"); //No, wait a minute.
	AI_Output(self, hero, "Info_Mod_Gidan_Kampf_B_13_01"); //Then come back when you're ready.

	Info_ClearChoices	(Info_Mod_Gidan_Kampf);
};

FUNC VOID Info_Mod_Gidan_Kampf_A()
{
	AI_Output(hero, self, "Info_Mod_Gidan_Kampf_A_15_00"); //All right, I'm ready.
	AI_Output(self, hero, "Info_Mod_Gidan_Kampf_A_13_01"); //Now I'll finish you off!

	Info_ClearChoices	(Info_Mod_Gidan_Kampf);

	self.fight_tactic = FAI_HUMAN_STRONG;

	Mod_MilizTurnier = 10;

	AI_StopProcessInfos	(self);
	B_Attack	(self, hero, AR_NONE, 1);
};

INSTANCE Info_Mod_Gidan_Kampf2 (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_Kampf2_Condition;
	information	= Info_Mod_Gidan_Kampf2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Show me what you can do!";
};

FUNC INT Info_Mod_Gidan_Kampf2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gidan_Kampf))
	&& (Mod_MilizTurnier == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_Kampf2_Info()
{
	AI_Output(hero, self, "Info_Mod_Gidan_Kampf2_15_00"); //Show me what you can do!
	AI_Output(self, hero, "Info_Mod_Gidan_Kampf2_13_01"); //Come here, then.

	self.fight_tactic = FAI_HUMAN_STRONG;

	Mod_MilizTurnier = 10;

	AI_StopProcessInfos	(self);
	B_Attack	(self, hero, AR_NONE, 1);
};

INSTANCE Info_Mod_Gidan_KampfEnde (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_KampfEnde_Condition;
	information	= Info_Mod_Gidan_KampfEnde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_KampfEnde_Condition()
{
	if (Mod_MilizTurnier == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_KampfEnde_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Gidan_KampfEnde_13_00"); //(roars) Fraud! I've been cheated!
			AI_Output(self, hero, "Info_Mod_Gidan_KampfEnde_13_03"); //Never would anyone like you have managed to defeat a fighter of my kind!
			AI_Output(hero, self, "Info_Mod_Gidan_KampfEnde_15_04"); //Take it easy! I beat you fairly and honestly.
			AI_Output(self, hero, "Info_Mod_Gidan_KampfEnde_13_05"); //I won't put up with that!

			Mod_MilizTurnier = 11;
			
			B_StartOtherRoutine	(Mod_1723_MIL_Gidan_NW,	"SAUER");
				
			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "I won my fight against Gidan. I should talk to Lord Andre now.");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Gidan_KampfEnde_13_01"); //Well, that was nothing. Now I may become a member of the militia.

			Mod_MilizTurnier = 12;

			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "I lost my fight against Gidan. I should talk to Lord Andre now.");

			B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_FAILED);
		}
		else //FIGHT_CANCEL
		{
			AI_Output (self, other,"Info_Mod_Gidan_KampfEnde_13_02"); //You ran away, and that's how I won. It's been a dumb thing for you.

			Mod_MilizTurnier = 12;

			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "I lost my fight against Gidan. I should talk to Lord Andre now.");

			B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_FAILED);
		};
		
					
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};

	self.fight_tactic = FAI_HUMAN_STRONG;

	B_StartOtherRoutine	(Mod_1176_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_1177_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_1175_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "START");
};

INSTANCE Info_Mod_Gidan_Andre (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_Andre_Condition;
	information	= Info_Mod_Gidan_Andre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_Andre_Condition()
{
	if (Kapitel >= 2)
	&& ((Mod_Gilde == 1)
	|| (Mod_Gilde == 2)
	|| (Mod_Gilde == 3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_Andre_Info()
{
	AI_Output(self, hero, "Info_Mod_Gidan_Andre_13_00"); //So we meet again.
	AI_Output(hero, self, "Info_Mod_Gidan_Andre_15_01"); //What are you doing here?
	AI_Output(self, hero, "Info_Mod_Gidan_Andre_13_02"); //I'm only fulfilling my duty as a militia in this town.
	AI_Output(hero, self, "Info_Mod_Gidan_Andre_15_03"); //I guess you bought the job, huh?
	AI_Output(self, hero, "Info_Mod_Gidan_Andre_13_04"); //Ts, I don't respond to insults like that. I have to do my duty now!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Gidan_Golem (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_Golem_Condition;
	information	= Info_Mod_Gidan_Golem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gidan_Golem_Condition()
{
	if (Mod_PalaKapitel3 == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gidan_Golem_Info()
{
	AI_Output(self, hero, "Info_Mod_Gidan_Golem_13_00"); //You saved my life.
	AI_Output(hero, self, "Info_Mod_Gidan_Golem_15_01"); //Looks that way.
	AI_Output(self, hero, "Info_Mod_Gidan_Golem_13_02"); //I still don't like you! But I think I owe you....
	AI_Output(self, hero, "Info_Mod_Gidan_Golem_13_03"); //Look at that golem. Have you ever seen a golem like that before?
	AI_Output(hero, self, "Info_Mod_Gidan_Golem_15_04"); //You're right. You're right. An iron golem... There's only fire, ice, stone and swamp.
	AI_Output(self, hero, "Info_Mod_Gidan_Golem_13_05"); //Yeah, that Golem there is only a machine.
	AI_Output(hero, self, "Info_Mod_Gidan_Golem_15_06"); //A machine? That explains a lot...
	AI_Output(self, hero, "Info_Mod_Gidan_Golem_13_07"); //Yeah, like the disappearance of the inventor. The sect kidnapped him to make these machines.
	AI_Output(self, hero, "Info_Mod_Gidan_Golem_13_08"); //Probably holding him captive on the hill in front of Khorinis, by the lighthouse.
	AI_Output(hero, self, "Info_Mod_Gidan_Golem_15_10"); //I'll take a look at that.

	Mod_PalaKapitel3 = 3;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "UNTERWEGS");

	B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "An iron golem attacked Gidan... very mysterious. Gidan believes that the inventor is surely being held captive at the lighthouse. I should stop by there sometime.");
};

INSTANCE Info_Mod_Gidan_Pickpocket (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_Pickpocket_Condition;
	information	= Info_Mod_Gidan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Gidan_Pickpocket_Condition()
{
	C_Beklauen	(120, ItMi_Gold, 40);
};

FUNC VOID Info_Mod_Gidan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);

	Info_AddChoice	(Info_Mod_Gidan_Pickpocket, DIALOG_BACK, Info_Mod_Gidan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gidan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gidan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gidan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);
};

FUNC VOID Info_Mod_Gidan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);

		Info_AddChoice	(Info_Mod_Gidan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gidan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gidan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gidan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gidan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gidan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gidan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gidan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gidan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gidan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gidan_EXIT (C_INFO)
{
	npc		= Mod_1723_MIL_Gidan_NW;
	nr		= 1;
	condition	= Info_Mod_Gidan_EXIT_Condition;
	information	= Info_Mod_Gidan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gidan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gidan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
