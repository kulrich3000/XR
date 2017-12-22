INSTANCE Info_Mod_Joru_Hi (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_Hi_Condition;
	information	= Info_Mod_Joru_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joru_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Joru_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Joru_Hi_07_00"); //Oh, you're back? A lot of things have changed since you were here last time.
};

INSTANCE Info_Mod_Joru_Sumpfmensch (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_Sumpfmensch_Condition;
	information	= Info_Mod_Joru_Sumpfmensch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joru_Sumpfmensch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balor_Sumpfmensch2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joru_Sumpfmensch_Info()
{
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch_07_00"); //There you are! Look at this mess!!!
	AI_Output(hero, self, "Info_Mod_Joru_Sumpfmensch_15_01"); //What's going on?
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch_07_02"); //Es wurde gestorben und der Templer hier war involviert! Vielmehr weiß ich auch noch nicht! Die Leute hier sprechen alle von dem "swamp people howling".
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch_07_03"); //Und dann schreien sie mir ins Ohr! Was soll das alles überhaupt? Und ich hab' heute noch nicht einmal einen Stängel geraucht. Als wegen des "Howling swamp people".
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch_07_04"); //VERDAMMT! I really need some swamp herb now, because the most stubborn rock control can't stand that!
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch_07_05"); //Take care of this unpleasant thing, will you?

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Joru_Sumpfmensch2 (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_Sumpfmensch2_Condition;
	information	= Info_Mod_Joru_Sumpfmensch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joru_Sumpfmensch2_Condition()
{
	if (Mod_Darrion_Sumpfmensch == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joru_Sumpfmensch2_Info()
{
	AI_Output(hero, self, "Info_Mod_Joru_Sumpfmensch2_15_00"); //... and then I brought him here.
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch2_07_01"); //This is getting more and more confusing and confusing as my migraine strikes again.... I don't think we're gonna get anything out of Darrion in the near future.
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch2_07_02"); //He lost that key. Maybe he'll help you find information.
	
	B_GiveInvItems(self, hero, ItKe_Darrion, 1);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch2_07_03"); //You'd better try asking some of his friends while I take care of this terrible migraine attack.
	
	B_UseItem(self, ItMi_Joint);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	
	B_LogEntry	(TOPIC_MOD_SL_SUMPFMENSCH, "Darrion's in swamp K. O. left. I should ask around a little bit. Maybe Fortuno has some more information about Darrion.");
};

INSTANCE Info_Mod_Joru_Sumpfmensch3 (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_Sumpfmensch3_Condition;
	information	= Info_Mod_Joru_Sumpfmensch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joru_Sumpfmensch3_Condition()
{
	if (Mod_Darrion_Sumpfmensch == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joru_Sumpfmensch3_Info()
{
	var c_npc Joru; Joru = Hlp_GetNpc(Mod_2013_PSINOV_Joru_MT);
	var c_npc Darrion; Darrion = Hlp_GetNpc(Mod_2014_PSINOV_Darrion_MT);

	TRIA_Invite(Darrion);
	TRIA_Start();

	TRIA_Next(Joru);
	
	AI_Output(hero, self, "Info_Mod_Joru_Sumpfmensch3_15_00"); //... and we came here with the golem to report to you.
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_07_01"); //Soso, tricky, tricky, tricky, the whole story, but quite exciting with one or the other twist.
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_07_02"); //But the fact is, this is a swamp golem. A monster. We have to kill it. Wherein... I have one more question. Why is this thing even crying?
	
	TRIA_Next(Darrion);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_11_03"); //Well... When I made friends with him, I gave him a name... my old captain's.
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_11_04"); //And I think he was trying to pronounce that name... but it never became more than howling...

	TRIA_Next(Joru);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_07_05"); //WAS? That thing has a name? What's it called?
	
	TRIA_Next(Darrion);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_11_06"); //Roger...

	TRIA_Next(Joru);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_07_07"); //Sooso... The fact is, this thing has a name, it's called Roger... which means I can't call him monsters anymore.... Killing Roger would be a downright mean thing... there's only one problem....
	AI_Output(hero, self, "Info_Mod_Joru_Sumpfmensch3_15_08"); //Which one?
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_07_09"); //I don't think we have a rehearsal in his size.
	
	TRIA_Next(Darrion);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_11_10"); //You mean Roger can stay and you won't hurt him?

	TRIA_Next(Joru);
	
	AI_Output(self, hero, "Info_Mod_Joru_Sumpfmensch3_07_11"); //Of course not! He must protect us from the monsters. HE MUST KILL THE MONSTERS! THE MOOOOOOOOOOONSTER TO KILL!

	TRIA_Finish();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Joru_GotoTempel (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_GotoTempel_Condition;
	information	= Info_Mod_Joru_GotoTempel_Info;
	permanent	= 0;
	important	= 0;
	description	= "You are expected at the temple.";
};

FUNC INT Info_Mod_Joru_GotoTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_KarrasDa))
	&& (Npc_KnowsInfo(hero, Info_Mod_Joru_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joru_GotoTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Joru_GotoTempel_15_00"); //You are expected at the temple.

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "TEMPEL");
};

INSTANCE Info_Mod_Joru_Woher (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_Woher_Condition;
	information	= Info_Mod_Joru_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why did they put you in the colony?";
};

FUNC INT Info_Mod_Joru_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joru_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joru_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Joru_Woher_15_00"); //Why did they put you in the colony?
	AI_Output(self, hero, "Info_Mod_Joru_Woher_07_01"); //Because when I passed the test of fire, I killed one of my comrades-in-arms.
	AI_Output(self, hero, "Info_Mod_Joru_Woher_07_02"); //In the colony I became friends with Tondral and then joined the brotherhood together with him.
	AI_Output(self, hero, "Info_Mod_Joru_Woher_07_03"); //Tondral soon became Baal, I had to wait until the death of Y' Berion.
};

INSTANCE Info_Mod_Joru_Pickpocket (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_Pickpocket_Condition;
	information	= Info_Mod_Joru_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Joru_Pickpocket_Condition()
{
	C_Beklauen	(87, ItMi_Joint, 5);
};

FUNC VOID Info_Mod_Joru_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Joru_Pickpocket);

	Info_AddChoice	(Info_Mod_Joru_Pickpocket, DIALOG_BACK, Info_Mod_Joru_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Joru_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Joru_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Joru_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Joru_Pickpocket);
};

FUNC VOID Info_Mod_Joru_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Joru_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Joru_Pickpocket);

		Info_AddChoice	(Info_Mod_Joru_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Joru_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Joru_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Joru_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Joru_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Joru_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Joru_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Joru_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Joru_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Joru_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Joru_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Joru_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Joru_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Joru_EXIT (C_INFO)
{
	npc		= Mod_2013_PSINOV_Joru_MT;
	nr		= 1;
	condition	= Info_Mod_Joru_EXIT_Condition;
	information	= Info_Mod_Joru_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Joru_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Joru_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
