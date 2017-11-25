INSTANCE Info_Mod_Zahit_Kill (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Kill_Condition;
	information	= Info_Mod_Zahit_Kill_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Zahit_Kill_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Amir_AtVersteck))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_Kill_Info()
{
	AI_Output(self, hero, "Info_Mod_Zahit_Kill_13_00"); //You shouldn't have come here!
	
	AI_StopProcessInfos(self);
	
	B_Attack(self, hero, AR_KILL, 0);
};

INSTANCE Info_Mod_Zahit_Amir (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Amir_Condition;
	information	= Info_Mod_Zahit_Amir_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Zahit_Amir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Amir_AtVersteck))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_Amir_Info()
{
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_13_00"); //What are you doing here? Did Amir bring you here?
	AI_Output(hero, self, "Info_Mod_Zahit_Amir_15_01"); //Yeah, he did.
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_13_02"); //What's he imagining?
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_13_03"); //Just because he's in town doesn't mean that he can ignore our rules and drag strangers here.
	AI_Output(hero, self, "Info_Mod_Zahit_Amir_15_04"); //Stay loose. I helped Amir with a problem and he offered to join the assassins.
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_13_05"); //Aha, you helped Amir. So my friend, what did you have to do? Kill meat bugs?
	AI_Output(hero, self, "Info_Mod_Zahit_Amir_15_06"); //I killed an annoying citizen of the city for Amir in an assassination attempt and stole a blood cup from him.
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_13_07"); //You as a weakling have such talents? That speaks for you, I must say.
	AI_Output(hero, self, "Info_Mod_Zahit_Amir_15_08"); //What about now, can I join you?
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_13_09"); //Don't be in a hurry, my friend. You did convince Amir, but to become an Assassin at all, you have to do a lot of things.
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_13_10"); //There's a long way to go, my boy.
};

INSTANCE Info_Mod_Zahit_Aufnahme (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Aufnahme_Condition;
	information	= Info_Mod_Zahit_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "How can I join you?";
};

FUNC INT Info_Mod_Zahit_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zahit_Amir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_00"); //How can I join you?
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_01"); //Well, in order to become an assassin, it takes a very important thing.
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_02"); //Which is?
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_03"); //Trust.
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_04"); //Uh-huh. What next?
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_05"); //In order to become a member of the camp, you first have to earn the trust of the lower Assassin members, the so-called crooks.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_06"); //Your neighborhood is behind this door.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_07"); //Behind it comes the quarter of the warriors and after that the magician and the High Council.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_08"); //In order to be able to enter the last two quarters at all, you have to be a crook.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_09"); //If you really embrace this path, which will be very difficult, then you have the possibility to join the magicians or the warriors.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_10"); //But first you will have to undergo difficult tests.
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_11"); //That sounds very motivating.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_12"); //(strength) Be glad that you get the chance to join us at all.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_13"); //Few outsiders have received this honor so far, so keep your naughty mouth shut.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_14"); //If you meet the magicians or warriors like that, they will teach you manners.
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_15"); //I'll keep it in mind.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_16"); //Good. So you can enter the first quarter now.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_17"); //Talk to the people and complete their tasks to be accepted.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_18"); //When you've convinced everyone, you'll get a chance to talk to the magicians and warriors.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_19"); //The leader is Chief Crown Shakir. Talk to him for more information.
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_20"); //Thank you, I will.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_13_21"); //And don't make any trouble for us to understand each other!
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_22"); //That's what we have, don't worry.

	Log_CreateTopic	(TOPIC_MOD_ASS_VERTRAUEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_VERTRAUEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_VERTRAUEN, "I spoke to the Zahit guard who, with a colleague, guarded the entrance to the Assassins' hideout. He said that in order to become a member of the camp, a so-called crook, I have to earn the trust of those same assasins. The only way to do that is to get back to being a errand boy. To find out more, I have to talk to the leader of the crooks, Shakir, in the camp. I can't wait to see.");
};

INSTANCE Info_Mod_Zahit_Assassinengold (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Assassinengold_Condition;
	information	= Info_Mod_Zahit_Assassinengold_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Zahit_Assassinengold_Condition()
{
	if (Mod_ASS_Assassinengold == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_Assassinengold_Info()
{
	AI_Output(self, hero, "Info_Mod_Zahit_Assassinengold_13_00"); //Here you are at last. Everybody's waiting for you. Go for it.
	AI_Output(hero, self, "Info_Mod_Zahit_Assassinengold_15_01"); //A little respect for a magician, lad!
	AI_Output(self, hero, "Info_Mod_Zahit_Assassinengold_13_02"); //Sorry about that. Not long ago, you were nothing.
	AI_Output(hero, self, "Info_Mod_Zahit_Assassinengold_15_03"); //To each his own. Get out of the way.
};

INSTANCE Info_Mod_Zahit_PosWechsel (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_PosWechsel_Condition;
	information	= Info_Mod_Zahit_PosWechsel_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Zahit_PosWechsel_Condition()
{
	if (Mod_ASS_PosWechsel == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_PosWechsel_Info()
{
	AI_Output(hero, self, "Info_Mod_Zahit_PosWechsel_15_00"); //What are you doing here?
	AI_Output(self, hero, "Info_Mod_Zahit_PosWechsel_13_01"); //Replaced Amir as an observer.
	AI_Output(hero, self, "Info_Mod_Zahit_PosWechsel_15_02"); //And what's so important?
	AI_Output(self, hero, "Info_Mod_Zahit_PosWechsel_13_03"); //You must go to Mustafa immediately. Seems important.
	AI_Output(hero, self, "Info_Mod_Zahit_PosWechsel_15_04"); //I can't wait to see.
};

INSTANCE Info_Mod_Zahit_Gefunden (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Gefunden_Condition;
	information	= Info_Mod_Zahit_Gefunden_Info;
	permanent	= 0;
	important	= 0;
	description	= "How come you haven't been discovered yet?";
};

FUNC INT Info_Mod_Zahit_Gefunden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zahit_Amir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_Gefunden_Info()
{
	AI_Output(hero, self, "Info_Mod_Zahit_Gefunden_15_00"); //How come you haven't been discovered yet?
	AI_Output(self, hero, "Info_Mod_Zahit_Gefunden_13_01"); //What do you mean?
	AI_Output(hero, self, "Info_Mod_Zahit_Gefunden_15_02"); //I don't think nobody has ever explored this cave before.
	AI_Output(self, hero, "Info_Mod_Zahit_Gefunden_13_03"); //This has rarely happened so far and those who came here could not tell anyone else.
	AI_Output(hero, self, "Info_Mod_Zahit_Gefunden_15_04"); //So you killed her?
	AI_Output(self, hero, "Info_Mod_Zahit_Gefunden_13_05"); //Yeah, we don't want to move the paladins and militia here.
	AI_Output(hero, self, "Info_Mod_Zahit_Gefunden_15_06"); //Sure, that wouldn't be good.
};

INSTANCE Info_Mod_Zahit_Hergekommen (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Hergekommen_Condition;
	information	= Info_Mod_Zahit_Hergekommen_Info;
	permanent	= 0;
	important	= 0;
	description	= "How did you get here?";
};

FUNC INT Info_Mod_Zahit_Hergekommen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zahit_Amir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_Hergekommen_Info()
{
	AI_Output(hero, self, "Info_Mod_Zahit_Hergekommen_15_00"); //How did you get here?
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_13_01"); //As we all know, there is total chaos on the mainland.
	AI_Output(hero, self, "Info_Mod_Zahit_Hergekommen_15_02"); //Yeah, I heard about that, too.
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_13_03"); //We couldn't stand it there any more. Therefore, our wise leaders decided to escape this madness.
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_13_04"); //By means of a powerful teleport spell, the mages of ours have managed to telepolize us all to Khorinis.
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_13_05"); //We searched for a hiding place and found this cave here unused.
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_13_06"); //We decided to stay here and since then this is our camp.
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_13_07"); //But we want to try to expand our influence in the near future.
	AI_Output(hero, self, "Info_Mod_Zahit_Hergekommen_15_08"); //It all sounds very adventurous. Interesting to know how you came here. Thanks for the info.
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_13_09"); //Don't mention it.
};

INSTANCE Info_Mod_Zahit_Pickpocket (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Pickpocket_Condition;
	information	= Info_Mod_Zahit_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Zahit_Pickpocket_Condition()
{
	C_Beklauen	(99, ItMi_Gold, 40);
};

FUNC VOID Info_Mod_Zahit_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);

	Info_AddChoice	(Info_Mod_Zahit_Pickpocket, DIALOG_BACK, Info_Mod_Zahit_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Zahit_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Zahit_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Zahit_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);
};

FUNC VOID Info_Mod_Zahit_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);

		Info_AddChoice	(Info_Mod_Zahit_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Zahit_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Zahit_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Zahit_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Zahit_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Zahit_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Zahit_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Zahit_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Zahit_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Zahit_EXIT (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_EXIT_Condition;
	information	= Info_Mod_Zahit_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Zahit_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Zahit_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
