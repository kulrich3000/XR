INSTANCE Info_Mod_Orun_Hi (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_Hi_Condition;
	information	= Info_Mod_Orun_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Orun_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Cyrco_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orun_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Orun_Hi_03_01"); //My name is Baal Orun and I take care of the production of swamp weed stalks.
};

INSTANCE Info_Mod_Orun_GotoTempel (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_GotoTempel_Condition;
	information	= Info_Mod_Orun_GotoTempel_Info;
	permanent	= 0;
	important	= 0;
	description	= "You are expected at the temple.";
};

FUNC INT Info_Mod_Orun_GotoTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_KarrasDa))
	&& ((Npc_KnowsInfo(hero, Info_Mod_Orun_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Hi)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orun_GotoTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Orun_GotoTempel_15_00"); //You are expected at the temple.

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "TEMPEL");
};

INSTANCE Info_Mod_Orun_Cyrco (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_Cyrco_Condition;
	information	= Info_Mod_Orun_Cyrco_Info;
	permanent	= 0;
	important	= 0;
	description	= "Good afternoon, great master.";
};

FUNC INT Info_Mod_Orun_Cyrco_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Hi))
	&& (Npc_HasItems(hero, ItWr_MagicPaper) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orun_Cyrco_Info()
{
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_00"); //Good afternoon, great master.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_01"); //Huh?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_02"); //(loudly) Good afternoon.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_03"); //Yeah. I agree, too. What do you want?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_04"); //I come from Cyrco, the druid.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_05"); //Yeah. I know him, too. How's he doing?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_06"); //Good. Here's his document. Do-ku-ment.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_07"); //Document? Give me that.

	B_GiveInvItems	(hero, self, ItWr_MagicPaper, 1);

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_08"); //Hmm... magic powerful magic.... black magic... evil magic...
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_09"); //And? What is it?
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_10"); //RUHE!
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_11"); //Hm... I see something.... A note... a cave.... very strong magic... Stranger?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_12"); //Yes Master?
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_13"); //Stranger!
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_14"); //Here!
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_15"); //Oh, I see. Listen: I had a vision. I saw this note near a cave surrounded by strong black magic. I wouldn't go there alone.
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_16"); //And you're sure?
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_17"); //Yeah. I'm sure of it.
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_18"); //I'll say thank you.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_19"); //What Anke?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_20"); //Thank you!

	Wld_InsertNpc	(Mod_7426_NOV_Novize_MT, "WP_MT_JAEGERLAGER_04");
	Wld_InsertNpc	(Mod_7427_BDT_Bandit_MT, "WP_MT_JAEGERLAGER_04");
	Wld_InsertNpc	(Mod_7428_BDT_Bandit_MT, "WP_MT_JAEGERLAGER_04");
	Wld_InsertNpc	(Mod_7429_BDT_Bandit_MT, "WP_MT_JAEGERLAGER_04");
	Wld_InsertNpc	(Mod_7430_BDT_Bandit_MT, "WP_MT_JAEGERLAGER_04");

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Baal Orun had a vision of a cave close to the note surrounded by strong black magic. This should interest Cyrco.");
};

INSTANCE Info_Mod_Orun_Woher (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_Woher_Condition;
	information	= Info_Mod_Orun_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "How did you get to the sect?";
};

FUNC INT Info_Mod_Orun_Woher_Condition()
{
	if (Guru_Dabei == 1)
	|| (Templer_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orun_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Orun_Woher_15_00"); //How did you get to the sect?
	AI_Output(self, hero, "Info_Mod_Orun_Woher_03_01"); //Before I was thrown into the colony, I was a militia soldier of Khorinis.
	AI_Output(self, hero, "Info_Mod_Orun_Woher_03_02"); //But after I accidentally injured a citizen during an operation, I was thrown into the colony.
	AI_Output(self, hero, "Info_Mod_Orun_Woher_03_03"); //At first I joined Gomez's people and soon became an influential shadow, but when I heard about the swamp camp, I was drawn to it.
};

INSTANCE Info_Mod_Orun_Pickpocket (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_Pickpocket_Condition;
	information	= Info_Mod_Orun_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Orun_Pickpocket_Condition()
{
	C_Beklauen	(143, ItMi_Gold, 66);
};

FUNC VOID Info_Mod_Orun_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Orun_Pickpocket);

	Info_AddChoice	(Info_Mod_Orun_Pickpocket, DIALOG_BACK, Info_Mod_Orun_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Orun_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Orun_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Orun_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Orun_Pickpocket);
};

FUNC VOID Info_Mod_Orun_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Orun_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Orun_Pickpocket);

		Info_AddChoice	(Info_Mod_Orun_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Orun_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Orun_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Orun_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Orun_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Orun_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Orun_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Orun_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Orun_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Orun_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Orun_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Orun_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Orun_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Orun_EXIT (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_EXIT_Condition;
	information	= Info_Mod_Orun_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Orun_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Orun_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
