INSTANCE Info_Mod_Garond_Hi (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Hi_Condition;
	information	= Info_Mod_Garond_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garond_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Garond_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_00"); //Where are you from?
	AI_Output(hero, self, "Info_Mod_Garond_Hi_15_01"); //Out of town.
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_02"); //Are you a refugee of the colony? You're a fugitive from the colony.
	AI_Output(hero, self, "Info_Mod_Garond_Hi_15_03"); //What if it were?
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_04"); //We don't tolerate any crime here, okay?
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_05"); //The Lords have graciously decreed that you scoundrels should be given a second chance, but if it were up to me, you would all dangle at the rope tomorrow.
	AI_Output(hero, self, "Info_Mod_Garond_Hi_15_06"); //Then I'm glad it's not up to you.
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_07"); //Watch your step. I'll keep an eye on you.
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_08"); //If you don't behave, we'll talk again.
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_09"); //And don't even think of peddling fairy tales like you beat the sleeper.
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_10"); //We've had enough of guys like that.
	AI_Output(hero, self, "Info_Mod_Garond_Hi_15_11"); //Who would say that?
	AI_Output(self, hero, "Info_Mod_Garond_Hi_30_12"); //Monty in the waterfront. It's the last one I haven't thrown out of town by myself yet.

	Log_CreateTopic	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, "Monty in the harbour district claims to have defeated the sleeper. I guess I'll have to take that in my chest sometime.");
};

INSTANCE Info_Mod_Garond_Argez (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Argez_Condition;
	information	= Info_Mod_Garond_Argez_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why didn't you let Argez into town?";
};

FUNC INT Info_Mod_Garond_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Argez_Info()
{
	AI_Output(hero, self, "Info_Mod_Garond_Argez_15_00"); //Why didn't you let Argez into town?
	AI_Output(self, hero, "Info_Mod_Garond_Argez_30_01"); //You mean the tattooed one? I just didn't like his face. He would've been trouble.

	Info_ClearChoices	(Info_Mod_Garond_Argez);

	Info_AddChoice	(Info_Mod_Garond_Argez, "Here's 100 gold, let him in.", Info_Mod_Garond_Argez_B);
	Info_AddChoice	(Info_Mod_Garond_Argez, "I'll vouch for him.", Info_Mod_Garond_Argez_A);
};

FUNC VOID Info_Mod_Garond_Argez_B()
{
	AI_Output(hero, self, "Info_Mod_Garond_Argez_B_15_00"); //Here's 100 gold, let him in.
	AI_Output(self, hero, "Info_Mod_Garond_Argez_B_30_01"); //Do you think, with such a...? Insulting my values can you change my mind?
	AI_Output(self, hero, "Info_Mod_Garond_Argez_B_30_02"); //Make sure you don't land in front of the gates for good!

	Info_ClearChoices	(Info_Mod_Garond_Argez);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_540_PAL_Andre_NW,	"ATGAROND");
};

FUNC VOID Info_Mod_Garond_Argez_A()
{
	AI_Output(hero, self, "Info_Mod_Garond_Argez_A_15_00"); //I'll vouch for him.
	AI_Output(self, hero, "Info_Mod_Garond_Argez_A_30_01"); //(laughs) This is getting better and better! Your colleague, huh?
	AI_Output(self, hero, "Info_Mod_Garond_Argez_A_30_02"); //My final word on this is: he can't get in!

	Info_ClearChoices	(Info_Mod_Garond_Argez);

	Info_AddChoice	(Info_Mod_Garond_Argez, "Here's 100 gold, let him in.", Info_Mod_Garond_Argez_B);
};

INSTANCE Info_Mod_Garond_Argez2 (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Argez2_Condition;
	information	= Info_Mod_Garond_Argez2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garond_Argez2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Follow))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Argez_NW_InCity))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Argez2_Info()
{
	AI_Output(self, hero, "Info_Mod_Garond_Argez2_30_00"); //Are you now trying to break my orders? Get out of here!

	Npc_SetRefuseTalk	(self, 30);

	Mod_Garond_Rauswurf = 1;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Garond_Zurechtfinden (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Zurechtfinden_Condition;
	information	= Info_Mod_Garond_Zurechtfinden_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do I find my way around here?";
};

FUNC INT Info_Mod_Garond_Zurechtfinden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Zurechtfinden_Info()
{
	AI_Output(hero, self, "Info_Mod_Garond_Zurechtfinden_15_00"); //How do I find my way around here?
	AI_Output(self, hero, "Info_Mod_Garond_Zurechtfinden_30_01"); //Pretty bad, I suppose, unless you've been here before.
	AI_Output(self, hero, "Info_Mod_Garond_Zurechtfinden_30_02"); //Except for the fact that we Paladins are now responsible for peace and order, nothing changes in this shitty city.
};

INSTANCE Info_Mod_Garond_News (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_News_Condition;
	information	= Info_Mod_Garond_News_Info;
	permanent	= 0;
	important	= 0;
	description	= "Any news?";
};

FUNC INT Info_Mod_Garond_News_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_News_Info()
{
	AI_Output(hero, self, "Info_Mod_Garond_News_15_00"); //Is there any news?
	AI_Output(self, hero, "Info_Mod_Garond_News_30_01"); //Yes, indeed! Since I've had to stand guard, one disaster after another has broken out on us.
	AI_Output(self, hero, "Info_Mod_Garond_News_30_02"); //First a band of robbers terrorizes us, and we don't have enough men to smoke out their nest, then their criminal comes along, and now the peasants are howling at us because of such a sinister hoodman who is supposed to annoy them.
	AI_Output(self, hero, "Info_Mod_Garond_News_30_03"); //But what would a single boy like that do? (laughs dirty)
	AI_Output(hero, self, "Info_Mod_Garond_News_15_04"); //Never heard of magic?
	AI_Output(self, hero, "Info_Mod_Garond_News_30_05"); //Shut up! Shut up!
};

INSTANCE Info_Mod_Garond_Miesepeter (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Miesepeter_Condition;
	information	= Info_Mod_Garond_Miesepeter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you always in such a bad mood?";
};

FUNC INT Info_Mod_Garond_Miesepeter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Miesepeter_Info()
{
	AI_Output(hero, self, "Info_Mod_Garond_Miesepeter_15_00"); //Are you always in such a bad mood?
	AI_Output(self, hero, "Info_Mod_Garond_Miesepeter_30_01"); //The fact that I am allowed to introduce the whole riffraff here in front of the village really spoiled my mood.
	AI_Output(self, hero, "Info_Mod_Garond_Miesepeter_30_02"); //Lord Hagen doesn't know how to tell his good men from his bad men.
	AI_Output(hero, self, "Info_Mod_Garond_Miesepeter_15_03"); //You don't think much of Lord Hagen, do you?
	AI_Output(self, hero, "Info_Mod_Garond_Miesepeter_30_04"); //Don't you dare drag this meritorious man's name through the mud!
	AI_Output(self, hero, "Info_Mod_Garond_Miesepeter_30_05"); //Just because he's too hesitant at the moment doesn't mean that I'm not one hundred percent behind him!
};

INSTANCE Info_Mod_Garond_Verbrecher (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Verbrecher_Condition;
	information	= Info_Mod_Garond_Verbrecher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garond_Verbrecher_Condition()
{
	if (Mod_GarondCityCrime >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Verbrecher_Info()
{
	AI_Output(self, hero, "Info_Mod_Garond_Verbrecher_30_00"); //Wait a minute, you criminal!
	AI_Output(self, hero, "Info_Mod_Garond_Verbrecher_30_01"); //How I heard you can't play by the simple rules in town.
	AI_Output(self, hero, "Info_Mod_Garond_Verbrecher_30_02"); //How about a little lesson?

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Garond_Blutkelch (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Blutkelch_Condition;
	information	= Info_Mod_Garond_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Innos salute, great warrior.";
};

FUNC INT Info_Mod_Garond_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Yussuf_Blutkelch2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Garond_Blutkelch_15_00"); //Innos salute, great warrior.
	AI_Output(self, hero, "Info_Mod_Garond_Blutkelch_30_01"); //What the fuck is this shit?
	AI_Output(hero, self, "Info_Mod_Garond_Blutkelch_15_02"); //When I recently came this way into town, I met a mighty winged creature.
	AI_Output(hero, self, "Info_Mod_Garond_Blutkelch_15_03"); //I ran for my life and just escaped from it. Surely this is a danger to the city.
	AI_Output(self, hero, "Info_Mod_Garond_Blutkelch_30_04"); //You say it. A demon. I'll grab him. He won't make the area unsafe any longer!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ABLENKUNG");
};

INSTANCE Info_Mod_Garond_Mario (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Mario_Condition;
	information	= Info_Mod_Garond_Mario_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garond_Mario_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Mario_Info()
{
	AI_Output(self, hero, "Info_Mod_Garond_Mario_30_00"); //I want to warn you again.
	AI_Output(self, hero, "Info_Mod_Garond_Mario_30_01"); //You were seen with Mario and it is said that you help him pass his exams.
	AI_Output(self, hero, "Info_Mod_Garond_Mario_30_02"); //l-- We tolerate.... not something like that. A militia officer has to carry the burdens he's been burdened with alone, all right?
	AI_Output(self, hero, "Info_Mod_Garond_Mario_30_03"); //So you better stay away from him in the future. It'd be better for both of you.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Garond_Mario2 (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Mario2_Condition;
	information	= Info_Mod_Garond_Mario2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garond_Mario2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Keroloth_Mario))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Mario2_Info()
{
	AI_Output(self, hero, "Info_Mod_Garond_Mario2_30_00"); //I didn't provoke him, I just put this awkward man in his place.
	AI_Output(self, hero, "Info_Mod_Garond_Mario2_30_01"); //If he therefore challenges me to a duel, he shall receive his just punishment.
	AI_Output(hero, self, "Info_Mod_Garond_Mario2_15_02"); //Just?!
	AI_Output(self, hero, "Info_Mod_Garond_Mario2_30_03"); //Stop letting the philosopher hang out now.
	AI_Output(self, hero, "Info_Mod_Garond_Mario2_30_04"); //You're lucky I didn't punish your cheating before.

	Log_CreateTopic	(TOPIC_MOD_MARIO_RACHE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MARIO_RACHE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MARIO_RACHE, "Garond provoked Mario until he was attacked by Mario. He'll pay for that!");

	B_StartOtherRoutine	(self, "KAMPF");
};

INSTANCE Info_Mod_Garond_Mario3 (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Mario3_Condition;
	information	= Info_Mod_Garond_Mario3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Enough already!";
};

FUNC INT Info_Mod_Garond_Mario3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Mario2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garond_Mario3_Info()
{
	AI_Output(hero, self, "Info_Mod_Garond_Mario3_15_00"); //Enough already!

	Info_ClearChoices	(Info_Mod_Garond_Mario3);

	Info_AddChoice	(Info_Mod_Garond_Mario3, "I'll be seeing you!", Info_Mod_Garond_Mario3_B);
	Info_AddChoice	(Info_Mod_Garond_Mario3, "I call you to a duel, too!", Info_Mod_Garond_Mario3_A);
};

FUNC VOID Info_Mod_Garond_Mario3_B()
{
	AI_Output(hero, self, "Info_Mod_Garond_Mario3_B_15_00"); //I'll talk to you later!
	AI_Output(self, hero, "Info_Mod_Garond_Mario3_B_30_01"); //I look forward to it.

	Info_ClearChoices	(Info_Mod_Garond_Mario3);
};

FUNC VOID Info_Mod_Garond_Mario3_A()
{
	AI_Output(hero, self, "Info_Mod_Garond_Mario3_A_15_00"); //I call you to a duel, too!
	AI_Output(self, hero, "Info_Mod_Garond_Mario3_A_30_01"); //Ha, today seems to be my lucky day. Two birds with one stone, right?
	AI_Output(self, hero, "Info_Mod_Garond_Mario3_A_30_02"); //Draw your gun and fight for your life!

	Info_ClearChoices	(Info_Mod_Garond_Mario3);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);

	self.flags = 0;

	self.guild = GIL_NONE;

	B_LogEntry	(TOPIC_MOD_MARIO_RACHE, "I brought Garond to justice.");
	B_SetTopicStatus	(TOPIC_MOD_MARIO_RACHE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Garond_Pickpocket (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_Pickpocket_Condition;
	information	= Info_Mod_Garond_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Garond_Pickpocket_Condition()
{
	C_Beklauen	(127, ItMi_Gold, 70);
};

FUNC VOID Info_Mod_Garond_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Garond_Pickpocket);

	Info_AddChoice	(Info_Mod_Garond_Pickpocket, DIALOG_BACK, Info_Mod_Garond_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Garond_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Garond_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Garond_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Garond_Pickpocket);
};

FUNC VOID Info_Mod_Garond_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Garond_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Garond_Pickpocket);

		Info_AddChoice	(Info_Mod_Garond_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Garond_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Garond_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Garond_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Garond_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Garond_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Garond_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Garond_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Garond_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Garond_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Garond_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Garond_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Garond_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Garond_EXIT (C_INFO)
{
	npc		= Mod_500_PAL_Garond_NW;
	nr		= 1;
	condition	= Info_Mod_Garond_EXIT_Condition;
	information	= Info_Mod_Garond_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Garond_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Garond_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
