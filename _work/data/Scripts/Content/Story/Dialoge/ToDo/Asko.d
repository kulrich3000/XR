INSTANCE Info_Mod_Asko_Trador (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_Trador_Condition;
	information	= Info_Mod_Asko_Trador_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Asko_Trador_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Per_Trador))
	|| (Npc_KnowsInfo(hero, Info_Mod_Dever_Trador))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Asko_Trador_Info()
{
	AI_Output(self, hero, "Info_Mod_Asko_Trador_05_00"); //Hello. What's up?

	Info_ClearChoices	(Info_Mod_Asko_Trador);

	Info_AddChoice	(Info_Mod_Asko_Trador, "You're not dead? Then I have no business being here.", Info_Mod_Asko_Trador_B);
	Info_AddChoice	(Info_Mod_Asko_Trador, "A transforming magician has been murdered.", Info_Mod_Asko_Trador_A);
};

FUNC VOID Info_Mod_Asko_Trador_B()
{
	AI_Output(hero, self, "Info_Mod_Asko_Trador_B_15_00"); //You're not dead? Then I have no business being here.
	AI_Output(self, hero, "Info_Mod_Asko_Trador_B_05_01"); //What are you taking out?

	Info_ClearChoices	(Info_Mod_Asko_Trador);

	Info_AddChoice	(Info_Mod_Asko_Trador, "You can't do anything to me. I'll be back.", Info_Mod_Asko_Trador_D);
	Info_AddChoice	(Info_Mod_Asko_Trador, "I didn't mean that, I'm sorry.", Info_Mod_Asko_Trador_C);
};

FUNC VOID Info_Mod_Asko_Trador_A()
{
	AI_Output(hero, self, "Info_Mod_Asko_Trador_A_15_00"); //A transforming magician has been murdered, and I'm here to find out who that is.
	AI_Output(self, hero, "Info_Mod_Asko_Trador_A_05_01"); //There's no such thing! And I didn't notice anything out here.
	AI_Output(self, hero, "Info_Mod_Asko_Trador_A_05_02"); //But why are you coming to see me?
	AI_Output(hero, self, "Info_Mod_Asko_Trador_A_15_03"); //I have to see who's disappeared and who hasn't been to the village in a few days.
	AI_Output(self, hero, "Info_Mod_Asko_Trador_A_05_04"); //Of course, I should have known that. Nothing happened to me.
	AI_Output(hero, self, "Info_Mod_Asko_Trador_A_15_05"); //Okay, then I'll be on my way.

	B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Asko is still alive and studying the ruins.");

	Info_ClearChoices	(Info_Mod_Asko_Trador);
};

FUNC VOID Info_Mod_Asko_Trador_D()
{
	AI_Output(hero, self, "Info_Mod_Asko_Trador_D_15_00"); //You can't do anything to me. I'll be back.
	AI_Output(self, hero, "Info_Mod_Asko_Trador_D_05_01"); //You stay right here and tell me what's going on!

	Info_Mod_Asko_Trador_A();
};

FUNC VOID Info_Mod_Asko_Trador_C()
{
	AI_Output(hero, self, "Info_Mod_Asko_Trador_C_15_00"); //I didn't mean that, I'm sorry.

	Info_Mod_Asko_Trador_A();
};

INSTANCE Info_Mod_Asko_Per (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_Per_Condition;
	information	= Info_Mod_Asko_Per_Info;
	permanent	= 0;
	important	= 0;
	description	= "Per wants me to tell you he has a package for you up in the village.";
};

FUNC INT Info_Mod_Asko_Per_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Per_Trador))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Asko_Per_Info()
{
	AI_Output(hero, self, "Info_Mod_Asko_Per_15_00"); //Per wants me to tell you he has a package for you up in the village.
	AI_Output(self, hero, "Info_Mod_Asko_Per_05_01"); //Thanks for the information. I'll be right on my way.

	B_LogEntry	(TOPIC_MOD_PER_ASKO, "I informed Asko that Per has a package for him.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Asko_Pruefung (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_Pruefung_Condition;
	information	= Info_Mod_Asko_Pruefung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Genn sent me. It's about testing the transformative mages.";
};

FUNC INT Info_Mod_Asko_Pruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Pruefung2))
	&& (Mod_VMG_Pruefung == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Asko_Pruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung_15_00"); //Genn sent me. It's about testing the transformative mages.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_05_01"); //I've already been informed. The task will not be easy.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_05_02"); //Are you ready to know them?

	Info_ClearChoices	(Info_Mod_Asko_Pruefung);

	Info_AddChoice	(Info_Mod_Asko_Pruefung, "There's something I have to do.", Info_Mod_Asko_Pruefung_B);
	Info_AddChoice	(Info_Mod_Asko_Pruefung, "I'm ready.", Info_Mod_Asko_Pruefung_A);
};

FUNC VOID Info_Mod_Asko_Pruefung_B()
{
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung_B_15_00"); //There's something I have to do.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_B_05_01"); //Come back when you're ready.

	Info_ClearChoices	(Info_Mod_Asko_Pruefung);
};

FUNC VOID Info_Mod_Asko_Pruefung_A()
{
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung_A_15_00"); //I'm ready.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_01"); //Okay, here's your job: A pack of wolves has recently arrived in the valley.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_02"); //It has settled at the stone circle and chases its prey there.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_03"); //We live here in harmony with nature and she asks us to drive the pack away.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_04"); //And that is exactly what you will do.
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung_A_15_05"); //How am I supposed to do that?
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_06"); //I'll give you a spell to help you turn into a warg.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_07"); //Use them only away from humans, because otherwise they might think you are a wild low.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_08"); //Then go to the pack and try to convince the leader wolf to visit another hunting area.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_09"); //In any case try to avoid that the wolves get hurt!
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_10"); //Otherwise, I cannot really consider the task to be fulfilled.
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung_A_15_11"); //Actually?
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_12"); //Killing is not our way. It's only the ultimate emergency solution! Keep that in mind.
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung_A_15_13"); //Well, then I'll be on my way.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung_A_05_14"); //Okay. Here's the scroll. Take care of yourself.

	B_GiveInvItems	(self, hero, ItSc_TrfWarg, 1);

	Mod_VMG_Pruefung = 2;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "With the help of the transformation to the Warg, I should convince a pack near the stone circle to leave the valley so that nature is not harmed here. If possible, I should avoid killing the pack.");

	Info_ClearChoices	(Info_Mod_Asko_Pruefung);

	Wld_InsertNpc	(Monster_11060_Leitwolf_TUG,	"TUG_86");
	Wld_InsertNpc	(Monster_11061_Wolf_TUG,	"TUG_86");
	Wld_InsertNpc	(Monster_11062_Wolf_TUG,	"TUG_86");
	Wld_InsertNpc	(Monster_11063_Wolf_TUG,	"TUG_86");
	Wld_InsertNpc	(Monster_11064_Wolf_TUG,	"TUG_86");
	Wld_InsertNpc	(Monster_11065_Wolf_TUG,	"TUG_86");
};

INSTANCE Info_Mod_Asko_Pruefung2 (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_Pruefung2_Condition;
	information	= Info_Mod_Asko_Pruefung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I had to get meat and now I need a new role in transformation.";
};

FUNC INT Info_Mod_Asko_Pruefung2_Condition()
{
	if (Mod_VMG_Pruefung_Leitwolf == 2)
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Asko_Pruefung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung2_15_00"); //I had to get meat and now I need a new role in transformation.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung2_05_01"); //Okay, here's one.

	B_GiveInvItems	(self, hero, ItSc_TrfWarg, 1);
};

INSTANCE Info_Mod_Asko_Pruefung3 (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_Pruefung3_Condition;
	information	= Info_Mod_Asko_Pruefung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here I am again.";
};

FUNC INT Info_Mod_Asko_Pruefung3_Condition()
{
	if (Mod_VMG_Pruefung == 2)
	&& ((Mod_VMG_Pruefung_Leitwolf == 3)
	|| ((Npc_IsDead(Monster_11060_Leitwolf_TUG))
	&& (Npc_IsDead(Monster_11061_Wolf_TUG))
	&& (Npc_IsDead(Monster_11062_Wolf_TUG))
	&& (Npc_IsDead(Monster_11063_Wolf_TUG))
	&& (Npc_IsDead(Monster_11064_Wolf_TUG))
	&& (Npc_IsDead(Monster_11065_Wolf_TUG))))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Asko_Pruefung3_Info()
{
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_00"); //Here I am again.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_01"); //And? How did it go?

	if (Mod_VMG_Pruefung_Leitwolf == 3)
	{
		AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_02"); //The wolves won't show up again.
		AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_03"); //You did a good job, I'll make you a recommendation.
		AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_04"); //Now meet Per, he'll give you the final task. It shouldn't be a problem for you.

		Mod_VMG_Pruefung_Asko = 1;
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_05"); //I had to kill the pack. The leader wolf gave me no choice.

		Mod_VMG_Pruefung_Asko = 2;

		if (Mod_VMG_Pruefung_Genn == 1)
		{
			AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_06"); //Since you have worked hard on the previous task and have done so much for us, I will turn a blind eye.
			AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_07"); //But you must not fail. Do you understand that?
			AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_08"); //Clear as day. What should we do now?
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_09"); //Hm, Genn's task wasn't solved to his satisfaction. That's tricky.
			AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_10"); //I can only let you go on with one condition.
			AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_11"); //And what's that?
			AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_12"); //You must forego your reward.
			AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_13"); //You can't be serious.
			AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_14"); //I'm being serious. Either you pass, or you can't get anywhere.
			AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_15"); //Then I don't have a choice. Let me keep going.
		};

		AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_16"); //Now meet Per, he'll give you the final task.
	};

	AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_17"); //How about a reward?
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_18"); //You won't get it until you complete all three tasks.
	AI_Output(hero, self, "Info_Mod_Asko_Pruefung3_15_19"); //Of course it's clear. I'll see you around.
	AI_Output(self, hero, "Info_Mod_Asko_Pruefung3_05_20"); //I wish you every success on your last assignment.

	B_RemoveNpc	(Monster_11060_Leitwolf_TUG);
	B_RemoveNpc	(Monster_11061_Wolf_TUG);
	B_RemoveNpc	(Monster_11062_Wolf_TUG);
	B_RemoveNpc	(Monster_11063_Wolf_TUG);
	B_RemoveNpc	(Monster_11064_Wolf_TUG);
	B_RemoveNpc	(Monster_11065_Wolf_TUG);

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "This task is done. I'm supposed to report to Per now. He's going to give me my last assignment.");
};

INSTANCE Info_Mod_Asko_Pickpocket (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_Pickpocket_Condition;
	information	= Info_Mod_Asko_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Asko_Pickpocket_Condition()
{
	C_Beklauen	(58, ItPo_Health_01, 5);
};

FUNC VOID Info_Mod_Asko_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Asko_Pickpocket);

	Info_AddChoice	(Info_Mod_Asko_Pickpocket, DIALOG_BACK, Info_Mod_Asko_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Asko_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Asko_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Asko_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Asko_Pickpocket);
};

FUNC VOID Info_Mod_Asko_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Asko_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Asko_Pickpocket);

		Info_AddChoice	(Info_Mod_Asko_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Asko_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Asko_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Asko_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Asko_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Asko_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Asko_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Asko_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Asko_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Asko_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Asko_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Asko_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Asko_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Asko_EXIT (C_INFO)
{
	npc		= Mod_7355_VMG_Asko_TUG;
	nr		= 1;
	condition	= Info_Mod_Asko_EXIT_Condition;
	information	= Info_Mod_Asko_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Asko_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Asko_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
