INSTANCE Info_Mod_Jim_Hi (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_Hi_Condition;
	information	= Info_Mod_Jim_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Jim_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jim_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Jim_Hi_18_00"); //Me, Jim.
};

INSTANCE Info_Mod_Jim_WieStadt (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_WieStadt_Condition;
	information	= Info_Mod_Jim_WieStadt_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do you like the city?";
};

FUNC INT Info_Mod_Jim_WieStadt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jim_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_WieStadt_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_WieStadt_15_00"); //How do you like the city?
	AI_Output(self, hero, "Info_Mod_Jim_WieStadt_18_01"); //Until a few weeks ago Jim was happy in Menschenstadt, but now sad.
};

INSTANCE Info_Mod_Jim_Traurig (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_Traurig_Condition;
	information	= Info_Mod_Jim_Traurig_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why are you sad?";
};

FUNC INT Info_Mod_Jim_Traurig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jim_WieStadt))
	&& (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_Traurig_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_Traurig_15_00"); //Why are you sad?
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_01"); //Menschenhäuptling kommen zu Jim und sagen: "You now work in Khorata's mine."
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_02"); //Aber Jim sagen: "No!"
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_03"); //Jim did not want to work like his brothers in Mine.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_04"); //Menschenhäuptling sagen: "Fine, but then Jim won't get any more donor pleasures if he doesn't go to Mine."
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_05"); //Jim like donor pleasures very much, and people chiefs like to know.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_06"); //But Jim would rather not work in a dirty mine. Since then Jim miss donor joys.
	AI_Output(hero, self, "Info_Mod_Jim_Traurig_15_07"); //Now would be a good time to get rid of that stuff.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_08"); //No! Jim does not want to wean! Jim want donor joys!
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_09"); //And Jim have plan to get it back.
	AI_Output(hero, self, "Info_Mod_Jim_Traurig_15_10"); //Now I'm curious.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_11"); //Jim build human chieftain amulet to protect against ghosts.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_12"); //Then human chieftain content and again love Jim and give Jim donor joys.
	AI_Output(hero, self, "Info_Mod_Jim_Traurig_15_13"); //And that's supposed to work?
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_14"); //Jim very good craftsman, people don't need to be afraid. Jim have impressed great orc chief Grshka with ghost amulet.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_15"); //But to try out amulet, Jim must find ghost soul.

	Info_ClearChoices	(Info_Mod_Jim_Traurig);

	Info_AddChoice	(Info_Mod_Jim_Traurig, "Have fun searching!", Info_Mod_Jim_Traurig_B);
	Info_AddChoice	(Info_Mod_Jim_Traurig, "You want me to handle this?", Info_Mod_Jim_Traurig_A);
};

FUNC VOID Info_Mod_Jim_Traurig_B()
{
	AI_Output(hero, self, "Info_Mod_Jim_Traurig_B_15_00"); //Have fun searching!

	Info_ClearChoices	(Info_Mod_Jim_Traurig);
};

FUNC VOID Info_Mod_Jim_Traurig_A()
{
	AI_Output(hero, self, "Info_Mod_Jim_Traurig_A_15_00"); //You want me to handle this?
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_A_18_01"); //Jim happy when people are looking for ghost soul.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_A_18_02"); //Looking at man's graveyard near Hofstaat-Pass, when dark.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_A_18_03"); //Maybe there's a soul floating around.

	B_GiveInvItems	(self, hero, ItAm_Geisteramulett, 1);

	AI_Output(hero, self, "Info_Mod_Jim_Traurig_A_15_04"); //All clear. I'll have a look.

	Log_CreateTopic	(TOPIC_MOD_JIM_SCHUTZ, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JIM_SCHUTZ, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JIM_SCHUTZ, "Orc Jim in Khorata is no longer getting a giver of joy from Anselm because he refused to work in the mine. He now wants to give Anselm a ghost amulet to calm him down, but it has yet to be tested. Northeast of the Hofstaat-Pass is a cemetery, where a ghost soul might be at night.");

	Mod_Jim_Schutz = 1;

	Info_ClearChoices	(Info_Mod_Jim_Traurig);
};

INSTANCE Info_Mod_Jim_Schutzbeduerftig (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_Schutzbeduerftig_Condition;
	information	= Info_Mod_Jim_Schutzbeduerftig_Info;
	permanent	= 0;
	important	= 0;
	description	= "I tried your amulet. It worked perfectly.";
};

FUNC INT Info_Mod_Jim_Schutzbeduerftig_Condition()
{
	if (Mod_Jim_Schutz == 2)
	&& (Npc_HasItems(hero, ItAm_Geisteramulett) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_Schutzbeduerftig_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_Schutzbeduerftig_15_00"); //I tried your amulet. It worked perfectly.

	B_GiveInvItems	(hero, self, ItAm_Geisteramulett, 1);

	AI_Output(self, hero, "Info_Mod_Jim_Schutzbeduerftig_18_01"); //Jim glad and grateful. People take this gold as a thank you from Jim.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	AI_Output(hero, self, "Info_Mod_Jim_Schutzbeduerftig_15_02"); //Will you give the amulet to Anselm now?
	AI_Output(self, hero, "Info_Mod_Jim_Schutzbeduerftig_18_03"); //Yes! Jim can hardly wait to get back donor pleasures.
	AI_Output(hero, self, "Info_Mod_Jim_Schutzbeduerftig_15_04"); //Good luck, then.

	B_SetTopicStatus	(TOPIC_MOD_JIM_SCHUTZ, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;

	Mod_Jim_AnselmDay = Wld_GetDay();
};

INSTANCE Info_Mod_Jim_SpenderFreuden (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_SpenderFreuden_Condition;
	information	= Info_Mod_Jim_SpenderFreuden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Were you successful with your amulet?";
};

FUNC INT Info_Mod_Jim_SpenderFreuden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jim_Schutzbeduerftig))
	&& (Wld_GetDay() > Mod_Jim_AnselmDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_SpenderFreuden_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden_15_00"); //Were you successful with your amulet?
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden_18_01"); //(desperate) to take human chiefs, but do not give back donor joys.
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden_18_02"); //Say, amulet is nice and goes well with clothes.

	Info_ClearChoices	(Info_Mod_Jim_SpenderFreuden);

	Info_AddChoice	(Info_Mod_Jim_SpenderFreuden, "Believe me, it's better this way.", Info_Mod_Jim_SpenderFreuden_B);
	Info_AddChoice	(Info_Mod_Jim_SpenderFreuden, "Shall I find you a little treat for you?", Info_Mod_Jim_SpenderFreuden_A);
};

FUNC VOID Info_Mod_Jim_SpenderFreuden_B()
{
	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden_B_15_00"); //Believe me, it's better this way.
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden_B_18_01"); //But Jim's very sad now.

	Info_ClearChoices	(Info_Mod_Jim_SpenderFreuden);
};

FUNC VOID Info_Mod_Jim_SpenderFreuden_A()
{
	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden_A_15_00"); //Shall I find you a little treat for you?
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden_A_18_01"); //Jim would stand in great debt of man if bring donor pleasures.
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden_A_18_02"); //Human chiefs always go to house camp in lane where people sleep.
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden_A_18_03"); //There must be his large stock of donor pleasures. But guard does not leave Jim in house camp.
	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden_A_15_04"); //I'll be back soon.

	Mod_Jim_Freudenspender = 1;

	Log_CreateTopic	(TOPIC_MOD_JIM_FREUDENSPENDER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JIM_FREUDENSPENDER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JIM_FREUDENSPENDER, "Jim is devastated because Anselm didn't accept his gift with enthusiasm. I promised him I'd bring him some treats from the warehouse in Khorata's residential street.");

	Wld_InsertItem	(ItMi_FreudenspenderPaket, "FP_ITEM_JIM_DROGEN");

	Info_ClearChoices	(Info_Mod_Jim_SpenderFreuden);
};

INSTANCE Info_Mod_Jim_SpenderFreuden2 (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_SpenderFreuden2_Condition;
	information	= Info_Mod_Jim_SpenderFreuden2_Info;
	permanent	= 0;
	important	= 0;
	description	= "This package should be enough for now, right?";
};

FUNC INT Info_Mod_Jim_SpenderFreuden2_Condition()
{
	if (Mod_Jim_Freudenspender == 3)
	&& (Npc_HasItems(hero, ItMi_FreudenspenderPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_SpenderFreuden2_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden2_15_00"); //This package should be enough for now, right?

	B_GiveInvItems	(hero, self, ItMi_FreudenspenderPaket, 1);

	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden2_18_01"); //Oh, Jim Mensch very grateful. Jim have saved a lot of money by training at Metzger.
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden2_18_02"); //Jim want to share with people.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden2_15_03"); //Thanks. Take care, now.

	B_SetTopicStatus	(TOPIC_MOD_JIM_FREUDENSPENDER, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;

	Mod_Jim_Freudenspender = 4;

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Jim_SpenderFreuden3 (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_SpenderFreuden3_Condition;
	information	= Info_Mod_Jim_SpenderFreuden3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'd have something like a gleam of joy here...";
};

FUNC INT Info_Mod_Jim_SpenderFreuden3_Condition()
{
	if (Mod_Jim_Freudenspender < 4)
	&& (Mod_Jim_Freudenspender > 0)
	&& (Npc_HasItems(hero, ItPo_FreudenspenderSuppe) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_SpenderFreuden3_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden3_15_00"); //I'd have something like a gleam of joy here...

	B_GiveInvItems	(hero, self, ItPo_FreudenspenderSuppe, 1);

	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden3_18_01"); //Jim must try some. They don't smell good, but they might taste good.

	AI_StopProcessInfos	(self);

	Mod_Jim_Freudenspender = 5;
};

INSTANCE Info_Mod_Jim_Name (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_Name_Condition;
	information	= Info_Mod_Jim_Name_Info;
	permanent	= 0;
	important	= 0;
	description	= "Unusual name for an orc.";
};

FUNC INT Info_Mod_Jim_Name_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jim_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_Name_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_Name_15_00"); //Unusual name for an orc.
	AI_Output(self, hero, "Info_Mod_Jim_Name_18_01"); //Jim Name of people. Jim do not know name of orcs.
};

INSTANCE Info_Mod_Jim_Pickpocket (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_Pickpocket_Condition;
	information	= Info_Mod_Jim_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Jim_Pickpocket_Condition()
{
	C_Beklauen	(70, ItMi_Orkstatuette, 1);
};

FUNC VOID Info_Mod_Jim_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jim_Pickpocket);

	Info_AddChoice	(Info_Mod_Jim_Pickpocket, DIALOG_BACK, Info_Mod_Jim_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jim_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jim_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jim_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jim_Pickpocket);
};

FUNC VOID Info_Mod_Jim_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jim_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jim_Pickpocket);

		Info_AddChoice	(Info_Mod_Jim_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jim_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jim_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jim_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jim_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jim_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jim_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jim_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jim_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jim_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jim_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jim_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jim_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jim_EXIT (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_EXIT_Condition;
	information	= Info_Mod_Jim_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jim_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jim_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
