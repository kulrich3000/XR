INSTANCE Info_Mod_Tengron_Hi (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Hi_Condition;
	information	= Info_Mod_Tengron_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Tengron_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tengron_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Hi_15_00"); //What are you doing here?
	AI_Output(self, hero, "Info_Mod_Tengron_Hi_07_01"); //Watch your step.
	AI_Output(hero, self, "Info_Mod_Tengron_Hi_15_02"); //Don't you think Garond and the city guards can handle it on their own?
	AI_Output(self, hero, "Info_Mod_Tengron_Hi_07_03"); //Uh... No. I'm watching.... something else.

	Info_ClearChoices	(Info_Mod_Tengron_Hi);

	Info_AddChoice	(Info_Mod_Tengron_Hi, "Let me guess. You're monitoring Garond.", Info_Mod_Tengron_Hi_B);
	Info_AddChoice	(Info_Mod_Tengron_Hi, "I don't care what happens next.", Info_Mod_Tengron_Hi_A);
};

FUNC VOID Info_Mod_Tengron_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Hi_B_15_00"); //Let me guess. You're monitoring Garond.
	AI_Output(self, hero, "Info_Mod_Tengron_Hi_B_07_01"); //I'm not at liberty to comment on that.
	AI_Output(hero, self, "Info_Mod_Tengron_Hi_B_15_02"); //I suppose he was disgraced by Lord Hagen?
	AI_Output(self, hero, "Info_Mod_Tengron_Hi_B_07_03"); //Maybe so.
	AI_Output(hero, self, "Info_Mod_Tengron_Hi_B_15_04"); //No wonder. Have a good time.

	Info_ClearChoices	(Info_Mod_Tengron_Hi);
};

FUNC VOID Info_Mod_Tengron_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Hi_A_15_00"); //I don't care what happens next.

	Info_ClearChoices	(Info_Mod_Tengron_Hi);
};

INSTANCE Info_Mod_Tengron_WillPaladinWerden (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_WillPaladinWerden_Condition;
	information	= Info_Mod_Tengron_WillPaladinWerden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's say I wanted to be a paladin...";
};

FUNC INT Info_Mod_Tengron_WillPaladinWerden_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tengron_WillPaladinWerden_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_WillPaladinWerden_15_00"); //Let's say I wanted to be a paladin...
	AI_Output(self, hero, "Info_Mod_Tengron_WillPaladinWerden_07_01"); //Only the best militiamen ascend to paladins. We demand absolute loyalty to Innos and Lord Hagen.
	AI_Output(self, hero, "Info_Mod_Tengron_WillPaladinWerden_07_02"); //Also, a paladin must know how to use the sword.
	AI_Output(self, hero, "Info_Mod_Tengron_WillPaladinWerden_07_03"); //You'll find the militia in the barracks. Lord Andre will have you committed if he finds you fit.
};

INSTANCE Info_Mod_Tengron_Daemonisch (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Daemonisch_Condition;
	information	= Info_Mod_Tengron_Daemonisch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you tell me what happened in the dark forest?";
};

FUNC INT Info_Mod_Tengron_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_Daemonisch_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Daemonisch_15_00"); //Can you tell me what happened in the dark forest?
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_01"); //(resigned) Oh, it's not that important, I probably just lost my mind...
	AI_Output(hero, self, "Info_Mod_Tengron_Daemonisch_15_02"); //No, I'm really interested. It could be of great importance for the safety of the city....
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_03"); //Do you really think so? Well, I'll tell you what I saw...
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_04"); //It was already late in the evening when I left and I didn't have a torch with me, but I used the holy paladin light to light up the surroundings.
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_05"); //So I stepped into the small valley and couldn't see anything at first....
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_06"); //But when I looked around, I saw something shiny lying at a cave from far away.
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_07"); //As I came closer, I was horrified to discover that it was the paladins and city guards who were standing motionlessly on the ground.
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_08"); //At this very moment my light went out.
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_09"); //I collected my mana to light the light again.... and suddenly saw me from dozens of black... shadows that screech in all directions.
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_10"); //Packed with horrible fear I took the escape back to the city....
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_11"); //Well, you probably know why I'm sitting here.
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_12"); //My comrades came out of the woods and accused me of attacking them....
	AI_Output(hero, self, "Info_Mod_Tengron_Daemonisch_15_13"); //Who were all the men in the forest?
	AI_Output(self, hero, "Info_Mod_Tengron_Daemonisch_07_14"); //Well, among the paladins... (interrupted)

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Tengron_Irdorath (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Irdorath_Condition;
	information	= Info_Mod_Tengron_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'll be leaving for an island by ship soon.";
};

FUNC INT Info_Mod_Tengron_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Irdorath_15_00"); //I'll be leaving for an island by ship soon.
	AI_Output(hero, self, "Info_Mod_Tengron_Irdorath_15_01"); //The point is to banish a lackey of the Xeres, the ogre who almost brought the city under his control with dark magic.
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath_07_02"); //Punish the evil magician who was responsible for all this?
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath_07_03"); //I'd love to go with you...
};

INSTANCE Info_Mod_Tengron_Irdorath2 (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Irdorath2_Condition;
	information	= Info_Mod_Tengron_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Then just come with me.";
};

FUNC INT Info_Mod_Tengron_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Irdorath2_15_00"); //Then just come with me.
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath2_07_01"); //But that would mean leaving my post in the city....
	AI_Output(hero, self, "Info_Mod_Tengron_Irdorath2_15_02"); //... just like when you were one of the few people who saw the danger to the city.
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath2_07_03"); //Hmm, yeah, you're right. This seems to be about much more....
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath2_07_04"); //All right, I'll wait for departure at the harbour.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Very well, with a bit of persuasion I was able to convince Tengron to join the ship.");

	B_GivePlayerXP	(100);

	Mod_TengronDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Tengron_Irdorath3 (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Irdorath3_Condition;
	information	= Info_Mod_Tengron_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems we're too many.";
};

FUNC INT Info_Mod_Tengron_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_TengronDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Irdorath3_15_00"); //I'm sorry, but it seems we're too many. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath3_07_01"); //Too bad. I'll go back then. You know where to find me if there's ever gonna be a seat left.

	Mod_TengronDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Tengron_Irdorath4 (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Irdorath4_Condition;
	information	= Info_Mod_Tengron_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I can give you a ride.";
};

FUNC INT Info_Mod_Tengron_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_TengronDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_Irdorath4_15_00"); //I can give you a ride. There's room on the ship.
	AI_Output(self, hero, "Info_Mod_Tengron_Irdorath4_07_01"); //Very well, I'll be back at the harbour.

	Mod_TengronDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Tengron_HaradLehrling (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_HaradLehrling_Condition;
	information	= Info_Mod_Tengron_HaradLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Because of Harad...";
};

FUNC INT Info_Mod_Tengron_HaradLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest8))
	&& (Mod_HaradLehrling_Kap4 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_HaradLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_HaradLehrling_15_00"); //Because of Harad...
	AI_Output(self, hero, "Info_Mod_Tengron_HaradLehrling_07_01"); //Save your breath! The proof of his guilt has been furnished.
	AI_Output(self, hero, "Info_Mod_Tengron_HaradLehrling_07_02"); //Everything else is in Lord Andres hand, not mine.
};

INSTANCE Info_Mod_Tengron_BinPaladin (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_BinPaladin_Condition;
	information	= Info_Mod_Tengron_BinPaladin_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm a paladin now, too.";
};

FUNC INT Info_Mod_Tengron_BinPaladin_Condition()
{
	if (Mod_Gilde == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_BinPaladin_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_BinPaladin_15_00"); //I'm a paladin now, too.
	AI_Output(self, hero, "Info_Mod_Tengron_BinPaladin_07_01"); //So you're the new guy. You've had a rapid rise. Some take longer. Look at Mario. (laughs)
	AI_Output(self, hero, "Info_Mod_Tengron_BinPaladin_07_02"); //If Lord Hagen trusts you, so do I. May Innos guard you on your ways.
};

INSTANCE Info_Mod_Tengron_Beliar (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Beliar_Condition;
	information	= Info_Mod_Tengron_Beliar_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Tengron_Beliar_Condition()
{
	if (hero.guild == GIL_KDF)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_Beliar_Info()
{
	AI_Output(self, hero, "Info_Mod_Tengron_Beliar_07_00"); //(shrieks) Ahhhhhh! Get your hands off me, Beliar breed!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Tengron_Pickpocket (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_Pickpocket_Condition;
	information	= Info_Mod_Tengron_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Tengron_Pickpocket_Condition()
{
	C_Beklauen	(107, ItMi_Gold, 38);
};

FUNC VOID Info_Mod_Tengron_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);

	Info_AddChoice	(Info_Mod_Tengron_Pickpocket, DIALOG_BACK, Info_Mod_Tengron_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Tengron_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Tengron_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Tengron_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);
};

FUNC VOID Info_Mod_Tengron_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);

		Info_AddChoice	(Info_Mod_Tengron_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Tengron_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Tengron_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Tengron_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Tengron_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Tengron_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Tengron_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Tengron_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Tengron_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Tengron_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Tengron_EXIT (C_INFO)
{
	npc		= Mod_981_RIT_Tengron_NW;
	nr		= 1;
	condition	= Info_Mod_Tengron_EXIT_Condition;
	information	= Info_Mod_Tengron_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tengron_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tengron_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
