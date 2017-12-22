INSTANCE Info_Mod_Ian_Hi (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_Hi_Condition;
	information	= Info_Mod_Ian_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ian_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ian_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ian_Hi_13_00"); //You're still alive? I never thought I'd see you again.
	AI_Output(hero, self, "Info_Mod_Ian_Hi_15_01"); //Likewise. So you survived the mine collapse?
	AI_Output(self, hero, "Info_Mod_Ian_Hi_13_02"); //(laughs joylessly) There was no collapse.
};

INSTANCE Info_Mod_Ian_AlteMine (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_AlteMine_Condition;
	information	= Info_Mod_Ian_AlteMine_Info;
	permanent	= 0;
	important	= 0;
	description	= "What happened at the old mine?";
};

FUNC INT Info_Mod_Ian_AlteMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_AlteMine_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_AlteMine_15_00"); //What happened at the old mine?
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine_13_01"); //We were mugged. Not by the bastards from the New Camp, but by black warriors and magicians.

	var C_ITEM arm;
	
	arm = Npc_GetEquippedArmor(hero);

	if (Hlp_IsItem(arm, ItAr_DMB_S) == TRUE)
	|| (Hlp_IsItem(arm, ItAr_XARDAS) == TRUE)
	|| (Hlp_IsItem(arm, ItAr_RAVEN_ADDON) == TRUE)
	|| (Hlp_IsItem(arm, ItAr_SMK_L) == TRUE)
	|| (Hlp_IsItem(arm, Schwarzmagierrobe) == TRUE)
	|| (Hlp_IsItem(arm, ItAr_NOV_DMB_01) == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Ian_AlteMine_13_02"); //Some of them wore as much armor as you do.
	};

	AI_Output(hero, self, "Info_Mod_Ian_AlteMine_15_03"); //The Beliaran trailers have taken over the mine?
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine_13_04"); //You could say that for sure. Our people were slaughtered like bugs.
};

INSTANCE Info_Mod_Ian_AlteMine2 (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_AlteMine2_Condition;
	information	= Info_Mod_Ian_AlteMine2_Info;
	permanent	= 0;
	important	= 0;
	description	= "How did you survive?";
};

FUNC INT Info_Mod_Ian_AlteMine2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_AlteMine))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_AlteMine2_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_AlteMine2_15_00"); //How did you survive?
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine2_13_01"); //I was just under the platform at the entrance to the mine when I heard screams and gunfire from above.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine2_13_02"); //The next moment Drake fell in front of my feet, hurled over the balustrade by a spell.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine2_13_03"); //I sounded the alarm, took my legs in my hands and looked for a safe hiding place.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine2_13_04"); //But that's when my odyssey started. First I had to listen to one of them being slaughtered after that, and then I was not allowed to move for days.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine2_13_05"); //I only survived because I could lick water from the mine wall. I've never been so dirty in my whole life.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine2_13_06"); //Of course, I made plans to escape. And then I used a guard shift at the gate to get me out of the way.
};

INSTANCE Info_Mod_Ian_AlteMine3 (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_AlteMine3_Condition;
	information	= Info_Mod_Ian_AlteMine3_Info;
	permanent	= 0;
	important	= 0;
	description	= "You should have defended the mine!";
};

FUNC INT Info_Mod_Ian_AlteMine3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_AlteMine2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_AlteMine3_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_AlteMine3_15_00"); //You should have defended the mine!
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine3_13_01"); //Don't pretend you understand any of this. With the few scattered guards and Templars, I couldn't have put up a coordinated resistance.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine3_13_02"); //We were doomed.
	AI_Output(hero, self, "Info_Mod_Ian_AlteMine3_15_03"); //Are there any other survivors?
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine3_13_04"); //Not that I know of.
};

INSTANCE Info_Mod_Ian_AlteMine4 (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_AlteMine4_Condition;
	information	= Info_Mod_Ian_AlteMine4_Info;
	permanent	= 0;
	important	= 0;
	description	= "I don't see any troop on their way here, the mine (...) )";
};

FUNC INT Info_Mod_Ian_AlteMine4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_AlteMine2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_AlteMine4_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_AlteMine4_15_00"); //I don't see any troops on their way to recapture the mine.
	AI_Output(self, hero, "Info_Mod_Ian_AlteMine4_13_01"); //Thorus considers the mine unnecessary at the moment. I'm not going to leave without his support.
};

INSTANCE Info_Mod_Ian_SLDSpy (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_SLDSpy_Condition;
	information	= Info_Mod_Ian_SLDSpy_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's new to report?";
};

FUNC INT Info_Mod_Ian_SLDSpy_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_Hi))
	&& (Mod_SLD_STT_Mordrag == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_GotoSylvio))
	&& (Mod_SLD_Spy == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_SLDSpy_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_SLDSpy_15_00"); //What's new to report?
	AI_Output(self, hero, "Info_Mod_Ian_SLDSpy_13_01"); //Hey, I didn't know you were back in the shadows.

	Info_ClearChoices	(Info_Mod_Ian_SLDSpy);

	Info_AddChoice	(Info_Mod_Ian_SLDSpy, "I'm not, either. I'm spying here for the New Camp.", Info_Mod_Ian_SLDSpy_B);
	Info_AddChoice	(Info_Mod_Ian_SLDSpy, "I spent some time with the marsh mothers spying.", Info_Mod_Ian_SLDSpy_A);
};

FUNC VOID Info_Mod_Ian_SLDSpy_C()
{
	AI_Output(self, hero, "Info_Mod_Ian_SLDSpy_C_13_00"); //Well, where were we? Well, what's the news? I heard that a guy from the New Camp allegedly killed Bullit.
	AI_Output(self, hero, "Info_Mod_Ian_SLDSpy_C_13_01"); //Thorus is pretty upset about this. Well, if it doesn't smell like revenge.

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Ian told me that the guardsman Bullit was allegedly murdered by someone from the New Camp. Thorus could consider taking revenge.");

	Info_ClearChoices	(Info_Mod_Ian_SLDSpy);
};

FUNC VOID Info_Mod_Ian_SLDSpy_B()
{
	AI_Output(hero, self, "Info_Mod_Ian_SLDSpy_B_15_00"); //I'm not, either. I'm spying here for the New Camp.
	AI_Output(self, hero, "Info_Mod_Ian_SLDSpy_B_13_01"); //(laughs) You joker. You're all right.

	Info_Mod_Ian_SLDSpy_C();
};

FUNC VOID Info_Mod_Ian_SLDSpy_A()
{
	AI_Output(hero, self, "Info_Mod_Ian_SLDSpy_A_15_00"); //I spent some time with the marsh mothers spying. Here, take a stem.

	B_ShowGivenThings	("Stem swamp herb given");

	CreateInvItems	(self, ItMi_Joint, 1);

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Ian_SLDSpy_A_13_01"); //Ahh, bog cabbage. You're okay.

	Info_Mod_Ian_SLDSpy_C();
};

INSTANCE Info_Mod_Ian_CutterBad (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_CutterBad_Condition;
	information	= Info_Mod_Ian_CutterBad_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey, I thought of something when you told me about the bullit murder.";
};

FUNC INT Info_Mod_Ian_CutterBad_Condition()
{
	if (Mod_SLD_Spy == 5)
	&& (Mob_HasItems("CUTTERSTRUHE", ItMw_BloodySword) == 1)
	&& (Mob_HasItems("CUTTERSTRUHE", ItWr_SentenzaForCutter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_CutterBad_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_CutterBad_15_00"); //Hey, I thought of something when you told me about the bullit murder.
	AI_Output(self, hero, "Info_Mod_Ian_CutterBad_13_01"); //Yes?
	AI_Output(hero, self, "Info_Mod_Ian_CutterBad_15_02"); //I saw Cutter walk through the camp at night with a whole bunch of Bullit's junk.
	AI_Output(self, hero, "Info_Mod_Ian_CutterBad_13_03"); //That's interesting. (to himself) I'm sure some of the guardsmen will be interested.

	Mod_SLD_Spy = 6;

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Well, that's done. Now, the guards should be looking into Cutter's chest soon.");
};

INSTANCE Info_Mod_Ian_Woher (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_Woher_Condition;
	information	= Info_Mod_Ian_Woher_Info;
	permanent	= 1;
	important	= 0;
	description	= "Why did you join the old camp?";
};

FUNC INT Info_Mod_Ian_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_Woher_15_00"); //Why did you join the old camp?
	AI_Output(self, hero, "Info_Mod_Ian_Woher_13_01"); //I used to live in Varant. When King Varant occupied Varant and put his men there, I attacked the governor.
	AI_Output(self, hero, "Info_Mod_Ian_Woher_13_02"); //They threw me in the colony for that, of course. I then went to the old camp and worked there as a digger, but the ore barons soon realized that I was using myself and Tauge to supervise the old mine.
};

INSTANCE Info_Mod_Ian_PruefungDesVertrauens (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_PruefungDesVertrauens_Condition;
	information	= Info_Mod_Ian_PruefungDesVertrauens_Info;
	permanent	= 1;
	important	= 0;
	description	= "What was your test of trust?";
};

FUNC INT Info_Mod_Ian_PruefungDesVertrauens_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_Woher))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_PruefungDesVertrauens_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_PruefungDesVertrauens_15_00"); //What was your test of trust?
	AI_Output(self, hero, "Info_Mod_Ian_PruefungDesVertrauens_13_01"); //I had to catch an orc as slaves for the mine. Wasn't exactly easy.
};

INSTANCE Info_Mod_Ian_Mine (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_Mine_Condition;
	information	= Info_Mod_Ian_Mine_Info;
	permanent	= 1;
	important	= 0;
	description	= "How come you're not in the mine anymore?";
};

FUNC INT Info_Mod_Ian_Mine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ian_Woher))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ian_Mine_Info()
{
	AI_Output(hero, self, "Info_Mod_Ian_Mine_15_00"); //How come you're not in the mine anymore?
	AI_Output(self, hero, "Info_Mod_Ian_Mine_13_01"); //After Xardas and his demons attacked the mine, I was arrested like almost everyone else.
	AI_Output(self, hero, "Info_Mod_Ian_Mine_13_02"); //But someday I managed to escape and told Thorus, who was an arch-baron at that time, everything.
};

INSTANCE Info_Mod_Ian_Pickpocket (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_Pickpocket_Condition;
	information	= Info_Mod_Ian_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ian_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Nugget, 5);
};

FUNC VOID Info_Mod_Ian_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ian_Pickpocket);

	Info_AddChoice	(Info_Mod_Ian_Pickpocket, DIALOG_BACK, Info_Mod_Ian_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ian_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ian_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ian_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ian_Pickpocket);
};

FUNC VOID Info_Mod_Ian_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ian_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ian_Pickpocket);

		Info_AddChoice	(Info_Mod_Ian_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ian_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ian_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ian_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ian_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ian_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ian_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ian_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ian_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ian_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ian_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ian_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ian_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ian_EXIT (C_INFO)
{
	npc		= Mod_1902_STT_Ian_MT;
	nr		= 1;
	condition	= Info_Mod_Ian_EXIT_Condition;
	information	= Info_Mod_Ian_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ian_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ian_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
