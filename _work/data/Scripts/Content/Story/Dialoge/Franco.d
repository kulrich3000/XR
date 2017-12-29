INSTANCE Info_Mod_Franco_Hi (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_Hi_Condition;
	information	= Info_Mod_Franco_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Franco_Hi_Condition()
{
	if (Npc_GetDistToWP(hero, "NW_FARM2_TO_TAVERN_02") < Npc_GetDistToWP(hero, "NW_FARM2_TO_TAVERN_03"))
	&& (!Npc_RefuseTalk(self))
	{
		return 1;
	}
	else
	{
		Npc_SetRefuseTalk (self, 30);
	};
};

FUNC VOID Info_Mod_Franco_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_00"); //Just run merrily into your doom.
	AI_Output(hero, self, "Info_Mod_Franco_Hi_15_01"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_02"); //Try it out. You may still cross the bridge, but before you get to Orlan, you have an arrow in your face.
	AI_Output(hero, self, "Info_Mod_Franco_Hi_15_03"); //Do you have any friends on the other side of the bridge?
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_04"); //Pah, friends! Stupid idiots from the Minental.
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_05"); //A whole bunch of them, stupid as a sandwich. Real assholes.
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_06"); //Walked in a couple of days ago and set up camp right next to mine.
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_07"); //I made it clear to them that this is MY place, but they couldn't think of anything better than laughing out loud.
	AI_Output(hero, self, "Info_Mod_Franco_Hi_15_08"); //And now you're so kind as to warn everyone who comes by?
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_09"); //Tell the bums to bleed out slowly. If they don't have someone to attack, they'll pull out again.
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_10"); //Do you have any gold or anything valuable?
	AI_Output(hero, self, "Info_Mod_Franco_Hi_15_11"); //(slightly ironic) No, I'm sorry.
	AI_Output(self, hero, "Info_Mod_Franco_Hi_25_12"); //Then pull out.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Franco_Warnung (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_Warnung_Condition;
	information	= Info_Mod_Franco_Warnung_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm supposed to warn you about a militia force.";
};

FUNC INT Info_Mod_Franco_Warnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tom_Hi))
	&& (Mod_Tom_Boese == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Franco_Warnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Franco_Warnung_15_00"); //I'm supposed to warn you about a militia force.
	AI_Output(self, hero, "Info_Mod_Franco_Warnung_25_01"); //Says who?
	AI_Output(hero, self, "Info_Mod_Franco_Warnung_15_02"); //Tom sent me.
	AI_Output(self, hero, "Info_Mod_Franco_Warnung_25_03"); //Well, then I believe you. I'm out of here. Tell Tom I'm with Edgor.

	B_LogEntry	(TOPIC_MOD_TOMSFREUND, "Franco's leaving now. I'm supposed to tell Tom he's with Edgor.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BEIFRANCO");

	B_Göttergefallen(3, 1);

	Npc_SetRefuseTalk	(self, 60);
};

INSTANCE Info_Mod_Franco_Scorpio (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_Scorpio_Condition;
	information	= Info_Mod_Franco_Scorpio_Info;
	permanent	= 0;
	important	= 0;
	description	= "The bandits are gone, by the way.";
};

FUNC INT Info_Mod_Franco_Scorpio_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Franco_Hi))
	&& (Mod_Tom_Boese == FALSE)
	&& (Npc_IsDead(Mod_7600_GRD_Scorpio_NW))
	&& (Npc_IsDead(Mod_7601_GRD_Gardist_NW))
	&& (Npc_IsDead(Mod_7602_GRD_Gardist_NW))
	&& (Npc_IsDead(Mod_7603_GRD_Gardist_NW))
	&& (Npc_IsDead(Mod_7604_STT_Schatten_NW))
	&& (Npc_IsDead(Mod_7605_STT_Schatten_NW))
	&& (Npc_IsDead(Mod_7606_STT_Schatten_NW))
	&& (Npc_IsDead(Mod_7607_STT_Schatten_NW))
	&& (Npc_IsDead(Mod_7608_STT_Schatten_NW))
	&& (Npc_IsDead(Mod_7609_STT_Schatten_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Franco_Scorpio_Info()
{
	AI_Output(hero, self, "Info_Mod_Franco_Scorpio_15_00"); //The bandits are gone, by the way.
	AI_Output(self, hero, "Info_Mod_Franco_Scorpio_25_01"); //What? Already? (laughs) I'm saying "stupid as bread."

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Franco_Allein (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_Allein_Condition;
	information	= Info_Mod_Franco_Allein_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you really all alone?";
};

FUNC INT Info_Mod_Franco_Allein_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Franco_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Franco_Allein_Info()
{
	AI_Output(hero, self, "Info_Mod_Franco_Allein_15_00"); //Are you really all alone?
	AI_Output(self, hero, "Info_Mod_Franco_Allein_25_01"); //I'm just a scout. My people want me to watch the merchants from here. And that's what I do.
	AI_Output(self, hero, "Info_Mod_Franco_Allein_25_02"); //But I'd rather stay for me anyway.
	AI_Output(hero, self, "Info_Mod_Franco_Allein_15_03"); //A loner, huh?
	AI_Output(self, hero, "Info_Mod_Franco_Allein_25_04"); //Nah. The only thing you can't do with the other idiots is nothin'. I'll be happy if I don't notice anything about them.
};

INSTANCE Info_Mod_Franco_AtEdgor (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_AtEdgor_Condition;
	information	= Info_Mod_Franco_AtEdgor_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you do round here?";
};

FUNC INT Info_Mod_Franco_AtEdgor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Franco_Warnung))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Franco_AtEdgor_Info()
{
	AI_Output(hero, self, "Info_Mod_Franco_AtEdgor_15_00"); //What are you doing this way?
	AI_Output(self, hero, "Info_Mod_Franco_AtEdgor_25_01"); //I'll figure out a way to kill Edgor. The guy's just annoying with his stupid orders.
};

INSTANCE Info_Mod_Franco_AtEdgor2 (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_AtEdgor2_Condition;
	information	= Info_Mod_Franco_AtEdgor2_Info;
	permanent	= 0;
	important	= 0;
	description	= "What does Edgor command?";
};

FUNC INT Info_Mod_Franco_AtEdgor2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Franco_AtEdgor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Franco_AtEdgor2_Info()
{
	AI_Output(hero, self, "Info_Mod_Franco_AtEdgor2_15_00"); //What does Edgor command?
	AI_Output(self, hero, "Info_Mod_Franco_AtEdgor2_25_01"); //"Wash your hands before eating!" "Don't snore so loud!" "Talk to me properly!" So einen Scheiß halt.
};

INSTANCE Info_Mod_Franco_Pickpocket (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_Pickpocket_Condition;
	information	= Info_Mod_Franco_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Franco_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Franco_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Franco_Pickpocket);

	Info_AddChoice	(Info_Mod_Franco_Pickpocket, DIALOG_BACK, Info_Mod_Franco_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Franco_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Franco_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Franco_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Franco_Pickpocket);
};

FUNC VOID Info_Mod_Franco_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Franco_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Franco_Pickpocket);

		Info_AddChoice	(Info_Mod_Franco_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Franco_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Franco_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Franco_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Franco_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Franco_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Franco_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Franco_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Franco_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Franco_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Franco_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Franco_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Franco_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Franco_EXIT (C_INFO)
{
	npc		= Mod_952_BDT_Franco_NW;
	nr		= 1;
	condition	= Info_Mod_Franco_EXIT_Condition;
	information	= Info_Mod_Franco_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Franco_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Franco_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
