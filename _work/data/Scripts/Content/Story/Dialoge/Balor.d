INSTANCE Info_Mod_Balor_Hi (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Hi_Condition;
	information	= Info_Mod_Balor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Balor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Balor_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Balor_Hi_01_01"); //I'm Balor, novice of the Brotherhood. My job here is to collect bogweed in the swamp.
	AI_Output(self, hero, "Info_Mod_Balor_Hi_01_02"); //This is then processed into stems in the warehouse and then we smoke it or resell it.
};

INSTANCE Info_Mod_Balor_Duenger (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Duenger_Condition;
	information	= Info_Mod_Balor_Duenger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Baal Namib sent me.";
};

FUNC INT Info_Mod_Balor_Duenger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_WarBeiLester))
	&& (Npc_HasItems(hero, ItMi_DuengerPaket) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Balor_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_Duenger_Info()
{
	AI_Output(hero, self, "Info_Mod_Balor_Duenger_15_00"); //Baal Namib sent me to bring you this package.
	AI_Output(self, hero, "Info_Mod_Balor_Duenger_01_01"); //Ah, finally. The fertilizer has arrived. Why don't you spread it out on the field, please?
	AI_Output(hero, self, "Info_Mod_Balor_Duenger_15_02"); //You want me to spread it out in the field?
	AI_Output(self, hero, "Info_Mod_Balor_Duenger_01_03"); //Yeah. Here, take this pickaxe.

	B_GiveInvItems	(self, hero, ItMw_2H_Axe_L_01, 1);

	AI_Output(self, hero, "Info_Mod_Balor_Duenger_01_04"); //I marked the place where you need to fertilize with a red X. Just grave there and fertilize.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Balor wants me to spread the fertilizer on the field. He marked the spot with a red X.");

	Wld_SendTrigger	("EVT_MT_DUENGER");
};

INSTANCE Info_Mod_Balor_DuengerVerteilt (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_DuengerVerteilt_Condition;
	information	= Info_Mod_Balor_DuengerVerteilt_Info;
	permanent	= 0;
	important	= 0;
	description	= "I handed out the fertilizer.";
};

FUNC INT Info_Mod_Balor_DuengerVerteilt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balor_Duenger))
	&& (Npc_HasItems(hero, ItMi_DuengerPaket) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_DuengerVerteilt_Info()
{
	AI_Output(hero, self, "Info_Mod_Balor_DuengerVerteilt_15_00"); //I handed out the fertilizer.
	AI_Output(self, hero, "Info_Mod_Balor_DuengerVerteilt_01_01"); //Well, then the swampweed will just sprout like that.
	AI_Output(self, hero, "Info_Mod_Balor_DuengerVerteilt_01_02"); //Here are some stems.

	CreateInvItems	(self, ItMi_Joint, 6);

	B_GiveInvItems	(self, hero, ItMi_Joint, 5);

	AI_Output(self, hero, "Info_Mod_Balor_DuengerVerteilt_01_04"); //I'm gonna go check it out, too.

	B_UseItem	(self, ItMi_Joint);

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "I handed out the fertilizer and talked to Balor. Now I should go back to Baal Namib.");

	B_GivePlayerXP	(50);

	Wld_SendTrigger	("EVT_MT_DUENGER");
};

INSTANCE Info_Mod_Balor_Sumpfmensch (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Sumpfmensch_Condition;
	information	= Info_Mod_Balor_Sumpfmensch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Balor_Sumpfmensch_Condition()
{
	if (Guru_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_Sumpfmensch_Info()
{
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_00"); //Ahhhhhhhhhh!!!!
	AI_Output(hero, self, "Info_Mod_Balor_Sumpfmensch_15_01"); //What's going on?
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_02"); //Jesus Christ, don't scare me so much! For a moment I thought you were the.... the.... (gulps)
	AI_Output(hero, self, "Info_Mod_Balor_Sumpfmensch_15_03"); //The what? Spit it out already!
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_04"); //The.... (mumbles incomprehensibly)
	AI_Output(hero, self, "Info_Mod_Balor_Sumpfmensch_15_05"); //The WAS?
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_06"); //The WAILING SUMPING PEOPLE!!!!!

	// ToDo: Chor ergänzen

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_07"); //Sorry, false alarm!
	AI_Output(hero, self, "Info_Mod_Balor_Sumpfmensch_15_08"); //What's it got to do with this howling swamp man.... (screaming choir in the background).... in itself?
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_09"); //If you want to know more, follow the right footbridge until you come to a campfire at night from the camp entrance.
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch_01_10"); //The novice Fortuno tells the story. And don't forget to bring your own underwear.

	Log_CreateTopic	(TOPIC_MOD_SL_SUMPFMENSCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SL_SUMPFMENSCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SL_SUMPFMENSCH, "I was supposed to follow the right footbridge from the camp entrance at night until I got to a campfire. The novice Fortuno is apparently telling the story of the' howling swamp man'.");

	B_StartOtherRoutine	(Mod_951_PSINOV_Fortuno_MT, "SUMPFMENSCH");
	B_StartOtherRoutine	(Mod_1339_PSINOV_Novize_MT, "SUMPFMENSCH");
	B_StartOtherRoutine	(Mod_2008_PSINOV_Ghorim_MT, "SUMPFMENSCH");
	B_StartOtherRoutine	(Mod_1337_PSINOV_Novize_MT, "SUMPFMENSCH");
	B_StartOtherRoutine	(Mod_1336_PSINOV_Novize_MT, "SUMPFMENSCH");
	B_StartOtherRoutine	(Mod_1338_PSINOV_Novize_MT, "SUMPFMENSCH");
};

INSTANCE Info_Mod_Balor_Sumpfmensch2 (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Sumpfmensch2_Condition;
	information	= Info_Mod_Balor_Sumpfmensch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Balor_Sumpfmensch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Darrion_Sumpfmensch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_Sumpfmensch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch2_01_00"); //Hurry, Baal Joru is looking for you everywhere, come with me!
	
	AI_StopProcessInfos(self);
	
	B_StartOtherRoutine(self, "GUIDETOJORU");
	B_StartOtherRoutine(Mod_2014_PSINOV_Darrion_MT, "GUIDETOJORU");
	B_StartOtherRoutine(Mod_2013_PSINOV_Joru_MT, "SUMPFMENSCH");
	B_StartOtherRoutine(Mod_1924_TPL_GorNaMon_MT, "SUMPFMENSCH");
	
	Wld_InsertNpc(Mod_70000_TPL_Templer_MT, "OC1");
	B_KillNpc(Mod_70000_TPL_Templer_MT);
};

INSTANCE Info_Mod_Balor_Sumpfmensch3 (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Sumpfmensch3_Condition;
	information	= Info_Mod_Balor_Sumpfmensch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Balor_Sumpfmensch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Darrion_Sumpfmensch2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_Sumpfmensch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch3_01_00"); //Don't blame old Darrion. He's only been completely scattered since he met this swamp man.
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch3_01_01"); //Der traut sich nachts nichtmal mehr aus seiner Hütte raus. Außer natürlich für seine allnächtlichen... nennen wir's mal "session" im Sumpf. (lacht)
	
	AI_StopProcessInfos(self);
	
	B_StartOtherRoutine(self, "START");
	
	B_LogEntry	(TOPIC_MOD_SL_SUMPFMENSCH, "Darrion goes to the swamp every night. I should go put my hand on his heels.");
};

INSTANCE Info_Mod_Balor_Sumpfmensch4 (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Sumpfmensch4_Condition;
	information	= Info_Mod_Balor_Sumpfmensch4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Balor_Sumpfmensch4_Condition()
{
	if (Mod_Darrion_Sumpfmensch == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_Sumpfmensch4_Info()
{
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch4_01_00"); //There you are. Darrion was looking for you.
	AI_Output(hero, self, "Info_Mod_Balor_Sumpfmensch4_15_01"); //He woke up again?
	AI_Output(self, hero, "Info_Mod_Balor_Sumpfmensch4_01_02"); //That or he's a pretty talkative sleeper....
	
	AI_StopProcessInfos(self);
	
	B_StartOtherRoutine(self, "START");
	B_StartOtherRoutine(Mod_2014_PSINOV_Darrion_MT, "WACH");
	
	B_LogEntry	(TOPIC_MOD_SL_SUMPFMENSCH, "Darrion woke up. I should talk to him.");
};

INSTANCE Info_Mod_Balor_Woher (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Woher_Condition;
	information	= Info_Mod_Balor_Woher_Info;
	permanent	= 1;
	important	= 0;
	description	= "Why are you in the swamp camp?";
};

FUNC INT Info_Mod_Balor_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balor_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balor_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Balor_Woher_15_00"); //Why are you in the swamp camp?
	AI_Output(self, hero, "Info_Mod_Balor_Woher_01_01"); //After I was caught on a raid in Khorinis, they threw me into the colony.
	AI_Output(self, hero, "Info_Mod_Balor_Woher_01_02"); //The swamp camp seemed to me to be the safest and most pleasant camp, so I came here.
};

INSTANCE Info_Mod_Balor_Pickpocket (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_Pickpocket_Condition;
	information	= Info_Mod_Balor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Balor_Pickpocket_Condition()
{
	C_Beklauen	(15, ItMi_Gold, 13);
};

FUNC VOID Info_Mod_Balor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Balor_Pickpocket);

	Info_AddChoice	(Info_Mod_Balor_Pickpocket, DIALOG_BACK, Info_Mod_Balor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Balor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Balor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Balor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Balor_Pickpocket);
};

FUNC VOID Info_Mod_Balor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Balor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Balor_Pickpocket);

		Info_AddChoice	(Info_Mod_Balor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Balor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Balor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Balor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Balor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Balor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Balor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Balor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Balor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Balor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Balor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Balor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Balor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Balor_EXIT (C_INFO)
{
	npc		= Mod_3001_PSINOV_Balor_MT;
	nr		= 1;
	condition	= Info_Mod_Balor_EXIT_Condition;
	information	= Info_Mod_Balor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Balor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Balor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
