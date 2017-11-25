INSTANCE Info_Mod_Giselle_RLMord (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_RLMord_Condition;
	information	= Info_Mod_Giselle_RLMord_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're Giselle?";
};

FUNC INT Info_Mod_Giselle_RLMord_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pablo_RLMord))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Giselle_RLMord_Info()
{
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_15_00"); //You're Giselle?
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_17_01"); //Flesh and blood, handsome.
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_15_02"); //What happened last night?
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_17_03"); //Well, like every month, Jason came to me and wanted the usual.
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_17_04"); //Suddenly someone stormed into the room and struck down Jason without warning.
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_17_05"); //After that, he just disappeared again without saying a word. Immediately afterwards I woke up Bromor, the owner who called the militia.
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_15_06"); //What's the usual?
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_17_07"); //Only good things about the dead. We in the red lantern are discreet.

	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "ZIMMER");

	Info_ClearChoices	(Info_Mod_Giselle_RLMord);

	Info_AddChoice	(Info_Mod_Giselle_RLMord, "If you don't tell me immediately (...) )", Info_Mod_Giselle_RLMord_C);

	if (Npc_HasItems(hero, ItMi_GoldRing) >= 1)
	{
		Info_AddChoice	(Info_Mod_Giselle_RLMord, "Tell me, please!", Info_Mod_Giselle_RLMord_B);
	};

	Info_AddChoice	(Info_Mod_Giselle_RLMord, "Jason won't mind where he is now.", Info_Mod_Giselle_RLMord_A);
};

FUNC VOID Info_Mod_Giselle_RLMord_D()
{
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_D_17_00"); //He was into brutality, wanted to be beaten and hurt. One time he even brought a fireball scroll.
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_D_17_01"); //But he never touched me, he was always passive.
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_D_15_02"); //I'll take a look around the crime scene. You were in room 2?
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_D_17_03"); //That's right, sweetie.
	
	Info_ClearChoices	(Info_Mod_Giselle_RLMord);
};

FUNC VOID Info_Mod_Giselle_RLMord_C()
{
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_C_15_00"); //If you don't tell me right now, I'll have you thrown in jail for obstruction of investigative work.
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_C_17_01"); //It's all right, I'm telling you.
	
	Info_Mod_Giselle_RLMord_D();
};

FUNC VOID Info_Mod_Giselle_RLMord_B()
{
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_B_15_00"); //Tell me, please!
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_B_17_01"); //If you ask me so nicely, I can hardly say no....
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_B_17_02"); //I'll make you a suggestion, you bring me a little token of your appreciation, then I'll tell you.
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_B_15_03"); //Here's a golden ring.

	B_GiveInvItems	(hero, self, ItMi_GoldRing, 1);

	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_B_17_04"); //It's beautiful, isn't it? All right, I'll tell you.
	
	Info_Mod_Giselle_RLMord_D();
};

FUNC VOID Info_Mod_Giselle_RLMord_A()
{
	AI_Output(hero, self, "Info_Mod_Giselle_RLMord_A_15_00"); //Jason won't mind where he is now.
	AI_Output(self, hero, "Info_Mod_Giselle_RLMord_A_17_01"); //All right, all right.
	
	Info_Mod_Giselle_RLMord_D();
};

INSTANCE Info_Mod_Giselle_Jason (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_Jason_Condition;
	information	= Info_Mod_Giselle_Jason_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you sure Jason was surprised?";
};

FUNC INT Info_Mod_Giselle_Jason_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pablo_Giselle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Giselle_Jason_Info()
{
	AI_Output(hero, self, "Info_Mod_Giselle_Jason_15_00"); //Are you sure Jason was surprised?
	AI_Output(self, hero, "Info_Mod_Giselle_Jason_17_01"); //Of course it is. If I can do something, it's to draw a man's attention to me.
	AI_Output(hero, self, "Info_Mod_Giselle_Jason_15_02"); //Then why did he pull out his gun before he died?
	AI_Output(self, hero, "Info_Mod_Giselle_Jason_17_03"); //He had...? Well... because... he was into role-playing games and liked to draw his sword.
	AI_Output(hero, self, "Info_Mod_Giselle_Jason_15_04"); //That doesn't sound like the "usual" thing you told me about earlier.
	AI_Output(self, hero, "Info_Mod_Giselle_Jason_17_05"); //l-- ah...

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Giselle is now hiding in Bromor's room. She seems to be hiding something. I should let Pablo know.");

	B_StartOtherRoutine	(self, "ZIMMER");
};

INSTANCE Info_Mod_Giselle_Galf (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_Galf_Condition;
	information	= Info_Mod_Giselle_Galf_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Giselle_Galf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pablo_GalfCall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Giselle_Galf_Info()
{
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_00"); //You have Galf? Leave him alone, you bastards!
	AI_Output(hero, self, "Info_Mod_Giselle_Galf_15_01"); //You know him?
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_02"); //He's my brother.... that fool should have run away a long time ago.
	AI_Output(hero, self, "Info_Mod_Giselle_Galf_15_03"); //What's going on here?
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_04"); //All right, you win. Jason's been coming to me a long time and Galf had the idea of blackmailing him. So he came in last night and threatened to call the militia on Jason.
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_05"); //You idiots would have kicked him out of your club octagonal if you had found out what he is doing here. So he got aggressive, took his sword and wanted to go after Galf.
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_06"); //But then a dark figure came in to the door, put Jason down and disappeared again, along with Jason's uniform. And then....
	AI_Output(hero, self, "Info_Mod_Giselle_Galf_15_07"); //Did you come up with this story to distract from yourself?
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_08"); //Exactly... but that didn't work out so well, sweetie.
	AI_Output(hero, self, "Info_Mod_Giselle_Galf_15_09"); //But why didn't you tell me anything about the dark figure?
	AI_Output(self, hero, "Info_Mod_Giselle_Galf_17_10"); //Because you'd really buy it from a whore? You have to laugh yourself.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Giselle told me the true story. I should go to Lord Andre now.");
};

INSTANCE Info_Mod_Giselle_Satz (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_Satz_Condition;
	information	= Info_Mod_Giselle_Satz_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Giselle_Satz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_HeroBot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Giselle_Satz_Info()
{
	AI_Output(self, hero, "Info_Mod_Giselle_Satz_17_00"); //You're coming to see me? How most charming of you.
	AI_Output(hero, self, "Info_Mod_Giselle_Satz_15_01"); //Let me ask you something.
	AI_Output(self, hero, "Info_Mod_Giselle_Satz_17_02"); //I'm used to heartier greetings from men. What's this about?
	AI_Output(hero, self, "Info_Mod_Giselle_Satz_15_03"); //Did the dark figure who killed Jason say anything?
	AI_Output(self, hero, "Info_Mod_Giselle_Satz_17_04"); //It's possible....

	Info_ClearChoices	(Info_Mod_Giselle_Satz);

	Info_AddChoice	(Info_Mod_Giselle_Satz, "What do you want?", Info_Mod_Giselle_Satz_C);
	Info_AddChoice	(Info_Mod_Giselle_Satz, "Maybe a hard blow to the back of the head would do the trick.", Info_Mod_Giselle_Satz_B);
	Info_AddChoice	(Info_Mod_Giselle_Satz, "If you don't tell me now, I'm gonna break both your brother's legs.", Info_Mod_Giselle_Satz_A);
};

FUNC VOID B_SayBotSentenceGiselle()
{
	AI_Output(self, hero, "Info_Mod_Giselle_Satz_Say_17_00"); //Er hat etwas gesagt wie "Milizen ist es in ihrer Vorbildwirkung nicht erlaubt unlautere Taten auszuüben".

	B_LogEntry	(TOPIC_MOD_PAL_RL, "The sentence of the robot that Giselle heard is' militias are not allowed to perform unfair acts'.");

	Mod_PAL_HeroBot = 3;
};

FUNC VOID Info_Mod_Giselle_Satz_D()
{
	AI_Output(self, hero, "Info_Mod_Giselle_Satz_D_17_00"); //Yes, yes... All right, I didn't want much. I don't even like your brutality, sweetheart.

	Info_ClearChoices	(Info_Mod_Giselle_Satz);

	B_SayBotSentenceGiselle();
};

FUNC VOID Info_Mod_Giselle_Satz_C()
{
	AI_Output(hero, self, "Info_Mod_Giselle_Satz_C_15_00"); //What do you want?
	AI_Output(self, hero, "Info_Mod_Giselle_Satz_C_17_01"); //I want a candle... how dark it is at night in a dungeon.

	B_LogEntry	(TOPIC_MOD_PAL_RL, "Before Giselle tells me anything about the robot, I shall bring her a candle.");
	
	Info_ClearChoices	(Info_Mod_Giselle_Satz);
};

FUNC VOID Info_Mod_Giselle_Satz_B()
{
	AI_Output(hero, self, "Info_Mod_Giselle_Satz_B_15_00"); //Maybe a hard blow to the back of the head would do the trick.
	
	Info_Mod_Giselle_Satz_D();
};

FUNC VOID Info_Mod_Giselle_Satz_A()
{
	AI_Output(hero, self, "Info_Mod_Giselle_Satz_A_15_00"); //If you don't tell me now, I'm gonna break both your brother's legs.
	
	Info_Mod_Giselle_Satz_D();
};

INSTANCE Info_Mod_Giselle_Kerze (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_Kerze_Condition;
	information	= Info_Mod_Giselle_Kerze_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a candle for you.";
};

FUNC INT Info_Mod_Giselle_Kerze_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Giselle_Satz))
	&& (Mod_PAL_HeroBot == 2)
	&& (Npc_HasItems(hero, ItMi_Kerze) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Giselle_Kerze_Info()
{
	AI_Output(hero, self, "Info_Mod_Giselle_Kerze_15_00"); //I have a candle for you.

	B_GiveInvItems	(hero, self, ItMi_Kerze, 1);

	AI_Output(self, hero, "Info_Mod_Giselle_Kerze_17_01"); //Thank you, at least now I have a light here in this dark hour.
	AI_Output(hero, self, "Info_Mod_Giselle_Kerze_15_02"); //What did the killer say?

	B_GivePlayerXP	(250);

	Mod_PAL_GiselleKerze = 1;

	B_SayBotSentenceGiselle();
};

INSTANCE Info_Mod_Giselle_Pickpocket (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_Pickpocket_Condition;
	information	= Info_Mod_Giselle_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Giselle_Pickpocket_Condition()
{
	C_Beklauen	(38, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Giselle_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);

	Info_AddChoice	(Info_Mod_Giselle_Pickpocket, DIALOG_BACK, Info_Mod_Giselle_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Giselle_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Giselle_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Giselle_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);
};

FUNC VOID Info_Mod_Giselle_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);

		Info_AddChoice	(Info_Mod_Giselle_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Giselle_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Giselle_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Giselle_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Giselle_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Giselle_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Giselle_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Giselle_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Giselle_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Giselle_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Giselle_EXIT (C_INFO)
{
	npc		= Mod_7234_OUT_Giselle_NW;
	nr		= 1;
	condition	= Info_Mod_Giselle_EXIT_Condition;
	information	= Info_Mod_Giselle_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Giselle_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Giselle_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
