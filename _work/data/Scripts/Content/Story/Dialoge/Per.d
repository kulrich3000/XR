INSTANCE Info_Mod_Per_Trador (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Trador_Condition;
	information	= Info_Mod_Per_Trador_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Per_Trador_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Giftpflanzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Trador_Info()
{
	AI_Output(self, hero, "Info_Mod_Per_Trador_13_00"); //Long time no see, what's up?
	AI_Output(hero, self, "Info_Mod_Per_Trador_15_01"); //Can you tell me which mages are missing right now?
	AI_Output(self, hero, "Info_Mod_Per_Trador_13_02"); //Missing is such a thing... I guess I can tell you who hasn't been to the village in a few days.
	AI_Output(self, hero, "Info_Mod_Per_Trador_13_03"); //On the one hand there is Asko, who wanted to look around the ruins.
	AI_Output(self, hero, "Info_Mod_Per_Trador_13_04"); //Then there was Fore, who wanted to look for rare plants down the slope.
	AI_Output(self, hero, "Info_Mod_Per_Trador_13_05"); //And Dean. I think he wanted to look around the stone circle.
	AI_Output(hero, self, "Info_Mod_Per_Trador_15_06"); //I'll go see them three times.
	AI_Output(self, hero, "Info_Mod_Per_Trador_13_07"); //Thank you very much. If you meet Asko, please tell him I have a package for him.

	Log_CreateTopic	(TOPIC_MOD_PER_ASKO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PER_ASKO, LOG_RUNNING);

	if (Npc_KnowsInfo(hero, Info_Mod_Dever_Trador))
	{
		B_LogEntry	(TOPIC_MOD_PER_ASKO, "I'm supposed to tell Asko that Per has a package for him.");
	}
	else
	{
		B_LogEntry_More	(TOPIC_MOD_FAICE_GIFT, TOPIC_MOD_PER_ASKO, "Since a few days have not appeared any more: Asko, who is near the ruins; Fore, he's down on the slope; and Dean, he's at the stone circle.", "I'm supposed to tell Asko that Per has a package for him.");
	};
};

INSTANCE Info_Mod_Per_Dean (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Dean_Condition;
	information	= Info_Mod_Per_Dean_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Per_Dean_Condition()
{
	if (Mod_Turendil_Faice_Day == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Dean_Info()
{
	AI_Output(self, hero, "Info_Mod_Per_Dean_13_00"); //What did your search result in?
	AI_Output(hero, self, "Info_Mod_Per_Dean_15_01"); //Dean was killed by a golem sent here by a con man named Trador.
	AI_Output(self, hero, "Info_Mod_Per_Dean_13_02"); //That's terrible! But I haven't seen a golem around here in Tugettso lately. Strange.
	AI_Output(self, hero, "Info_Mod_Per_Dean_13_03"); //You have to let Genn know about this.

	if (!Npc_KnowsInfo(hero, Info_Mod_Dever_Dean))
	{
		B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "I reported Dean's death. Now I should go back to Genn and inform him of the events.");
	};
};

INSTANCE Info_Mod_Per_Asko (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Asko_Condition;
	information	= Info_Mod_Per_Asko_Info;
	permanent	= 0;
	important	= 0;
	description	= "I told Asko you had a package for him.";
};

FUNC INT Info_Mod_Per_Asko_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Asko_Per))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Asko_Info()
{
	AI_Output(hero, self, "Info_Mod_Per_Asko_15_00"); //I told Asko you had a package for him. He should be on his way.
	AI_Output(self, hero, "Info_Mod_Per_Asko_13_01"); //Thank you very much. Here's some gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_PER_ASKO, "Per knows Asko is on his way to see him.");
	B_SetTopicStatus	(TOPIC_MOD_PER_ASKO, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_7355_VMG_Asko_TUG, "START");
};

INSTANCE Info_Mod_Per_Pruefung (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Pruefung_Condition;
	information	= Info_Mod_Per_Pruefung_Info;
	permanent	= 1;
	important	= 0;
	description	= "What about the last task?";
};

FUNC INT Info_Mod_Per_Pruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Asko_Pruefung3))
	&& (Mod_VMG_Pruefung == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Pruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_15_00"); //What about the last task?
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_13_01"); //Oh, there you are. I have already learned that I should introduce you to the art of our meditation. Are you ready?

	Info_ClearChoices	(Info_Mod_Per_Pruefung);

	Info_AddChoice	(Info_Mod_Per_Pruefung, "No, I have to do something fast.", Info_Mod_Per_Pruefung_B);
	Info_AddChoice	(Info_Mod_Per_Pruefung, "Yeah, explain to me how to properly meditate.", Info_Mod_Per_Pruefung_A);
};

FUNC VOID Info_Mod_Per_Pruefung_B()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_B_15_00"); //No, I have to do something fast.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_B_13_01"); //Best hurry up.

	Info_ClearChoices	(Info_Mod_Per_Pruefung);
};

FUNC VOID Info_Mod_Per_Pruefung_A()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_A_15_00"); //Yeah, explain to me how to properly meditate.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_A_13_01"); //Maybe you know the small valley near the cave where the goblins had settled?
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_A_13_02"); //Go there and say a formula. I'll give you the text at the end of our conversation.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_A_13_03"); //Do you follow me?

	Info_ClearChoices	(Info_Mod_Per_Pruefung);

	Info_AddChoice	(Info_Mod_Per_Pruefung, "Can you say that again?", Info_Mod_Per_Pruefung_D);
	Info_AddChoice	(Info_Mod_Per_Pruefung, "Yeah, go on.", Info_Mod_Per_Pruefung_C);
};

FUNC VOID Info_Mod_Per_Pruefung_E()
{
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_E_13_00"); //When you have spoken the formula, you will fall into a trance state and a vision will overcome you.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_E_13_01"); //Don't tell anyone about the vision. It will lead you to the next station of this task.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_E_13_02"); //The ward is individual for everyone, so I can't help you. Listen carefully to the vision. Clearly so far?

	Info_ClearChoices	(Info_Mod_Per_Pruefung);

	Info_AddChoice	(Info_Mod_Per_Pruefung, "Can you say that again?", Info_Mod_Per_Pruefung_G);
	Info_AddChoice	(Info_Mod_Per_Pruefung, "Yeah, go on.", Info_Mod_Per_Pruefung_F);
};

FUNC VOID Info_Mod_Per_Pruefung_D()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_D_15_00"); //Can you say that again?
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_D_13_01"); //Go into the small valley near the Goblin Cave and read the text I'm about to give you aloud.

	Info_Mod_Per_Pruefung_E();
};

FUNC VOID Info_Mod_Per_Pruefung_C()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_C_15_00"); //Yeah, go on.

	Info_Mod_Per_Pruefung_E();
};

FUNC VOID Info_Mod_Per_Pruefung_H()
{
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_H_13_00"); //If you have interpreted your vision correctly and found your goal, you will get a red petal.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_H_13_01"); //This is the way nature has always intended it and you will probably be no exception.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_H_13_02"); //Bring me the petal so I know you've done your job. Can we get started?

	Info_ClearChoices	(Info_Mod_Per_Pruefung);

	Info_AddChoice	(Info_Mod_Per_Pruefung, "I'd like to have the short version of that.", Info_Mod_Per_Pruefung_J);
	Info_AddChoice	(Info_Mod_Per_Pruefung, "Yeah, give me the lines.", Info_Mod_Per_Pruefung_I);
};

FUNC VOID Info_Mod_Per_Pruefung_G()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_D_15_00"); //Can you say that again?
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_G_13_01"); //In your trance state you will have a vision that will take you to the next station.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_G_13_02"); //You can't tell anyone, though.

	Info_Mod_Per_Pruefung_H();
};

FUNC VOID Info_Mod_Per_Pruefung_F()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_C_15_00"); //Yeah, go on.

	Info_Mod_Per_Pruefung_H();
};

FUNC VOID Info_Mod_Per_Pruefung_K()
{
	B_GiveInvItems	(self, hero, ItWr_PerZettel, 1);

	AI_Output(self, hero, "Info_Mod_Per_Pruefung_K_13_00"); //Now get on your way.

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I'm supposed to be playing a spell in the valley. The following vision will lead me to a goal where I will find a red petal. I'm supposed to bring this to Per.");

	Mod_VMG_Pruefung = 3;

	Wld_SendTrigger	("EVT_BARRIERE");

	Info_ClearChoices	(Info_Mod_Per_Pruefung);

	Wld_InsertNpc	(Mod_7592_OUT_Handlanger_TUG,	"TUG_87");
	Wld_InsertNpc	(Mod_7593_OUT_Handlanger_TUG,	"TUG_87");
	Wld_InsertNpc	(Mod_7594_OUT_Petunia_TUG,	"TUG_87");
	Wld_InsertNpc	(Mod_7595_OUT_Verwandlungskrieger_TUG,	"TUG_87");
	Wld_InsertNpc	(Monster_11066_Hase_TUG,	"TUG_87");
};

FUNC VOID Info_Mod_Per_Pruefung_J()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_J_15_00"); //I'd like to have the short version of that.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_J_13_01"); //At your destination you will find a red petal to bring to me.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_J_13_02"); //So I know you've done your job. Here's the formula.

	Info_Mod_Per_Pruefung_K();
};

FUNC VOID Info_Mod_Per_Pruefung_I()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_I_15_00"); //Yeah, give me the lines.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_I_13_01"); //Here you have it.

	Info_Mod_Per_Pruefung_K();
};

INSTANCE Info_Mod_Per_Pruefung2 (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Pruefung2_Condition;
	information	= Info_Mod_Per_Pruefung2_Info;
	permanent	= 1;
	important	= 0;
	description	= "There's a problem...";
};

FUNC INT Info_Mod_Per_Pruefung2_Condition()
{
	if (Mod_VMG_Pruefung == 3)
	&& (Mod_VMG_Pruefung_Barriere == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Pruefung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_15_00"); //There's a problem...
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_13_01"); //What kind of problem?

	Info_ClearChoices	(Info_Mod_Per_Pruefung2);

	Info_AddChoice	(Info_Mod_Per_Pruefung2, "Oh, nothing, I can handle it.", Info_Mod_Per_Pruefung2_B);
	Info_AddChoice	(Info_Mod_Per_Pruefung2, "There's a woman in that valley.", Info_Mod_Per_Pruefung2_A);
};

FUNC VOID Info_Mod_Per_Pruefung2_B()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_B_15_00"); //Oh, nothing, I can handle it.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_B_13_01"); //You know what you have to do.

	Info_ClearChoices	(Info_Mod_Per_Pruefung2);
};

FUNC VOID Info_Mod_Per_Pruefung2_A()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_A_15_00"); //There's a woman in the valley with a magical barrier surrounding her.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_A_13_01"); //However, this is a problem.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_A_13_02"); //The valley has a magical origin that is so strong that the vision only comes to you there.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_A_13_03"); //That's probably why this woman appeared there.
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_A_15_04"); //What can we do?
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_A_13_05"); //Did you notice anything that might help us?
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_A_15_06"); //Apparently, the barrier can't harm animals.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_A_13_07"); //That's something already! So it shouldn't be hard for you to reach her and find out who she is.

	Info_ClearChoices	(Info_Mod_Per_Pruefung2);

	Info_AddChoice	(Info_Mod_Per_Pruefung2, "No, I won't go along with that.", Info_Mod_Per_Pruefung2_D);
	Info_AddChoice	(Info_Mod_Per_Pruefung2, "What am I supposed to do?", Info_Mod_Per_Pruefung2_C);
};

FUNC VOID Info_Mod_Per_Pruefung2_E()
{
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_E_13_00"); //Here you have a transformational role. She'll turn you into a meat bug, she won't attract attention.

	B_GiveInvItems	(self, hero, ItSc_TrfMeatbug, 1);

	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_E_13_01"); //Thanks to you, we can make some of these reels again.
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_E_15_02"); //Okay, I'm gonna find out who this woman is.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_E_13_03"); //I knew I could count on you.

	Mod_VMG_Pruefung_Barriere = 3;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Per gave me a metamorphosis into a meat bug. This should allow me to get unnoticed into the barrier and confront the woman.");

	Info_ClearChoices	(Info_Mod_Per_Pruefung2);
};

FUNC VOID Info_Mod_Per_Pruefung2_D()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_D_15_00"); //No, I won't go along with that.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_D_13_01"); //Just think of it as part of the test.
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_D_15_02"); //Then I don't have a choice. What am I supposed to do?

	Info_Mod_Per_Pruefung2_E();
};

FUNC VOID Info_Mod_Per_Pruefung2_C()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_C_15_00"); //What am I supposed to do?

	Info_Mod_Per_Pruefung2_E();
};

INSTANCE Info_Mod_Per_Pruefung3 (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Pruefung3_Condition;
	information	= Info_Mod_Per_Pruefung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "There's a problem...";
};

FUNC INT Info_Mod_Per_Pruefung3_Condition()
{
	if (Mod_VMG_Pruefung_Petunia >= 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Pruefung3_Info()
{
	if (Mod_VMG_Pruefung_Petunia == 6)
	{
		AI_Output(hero, self, "Info_Mod_Per_Pruefung3_15_00"); //I think we can solve this problem together right now.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Per_Pruefung3_15_01"); //I think I've solved the problem.
	};

	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_13_02"); //What's happening?
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_15_03"); //The woman there in the valley is called Petunia and claims to have been a transformational mage, but she was cast out.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_13_04"); //I remember her. What will happen to her now?

	Info_ClearChoices	(Info_Mod_Per_Pruefung3);

	Info_AddChoice	(Info_Mod_Per_Pruefung3, "She should be punished for everything she's done.", Info_Mod_Per_Pruefung3_B);

	if (Mod_VMG_Pruefung_Petunia == 6)
	{
		Info_AddChoice	(Info_Mod_Per_Pruefung3, "I promised her we'd come up with something.", Info_Mod_Per_Pruefung3_A);
	};
};

FUNC VOID Info_Mod_Per_Pruefung3_E()
{
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_E_13_00"); //There are several possibilities. We could lock her up, just let her go, or we could take her back.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_E_13_01"); //You should decide what happens to her.

	Info_ClearChoices	(Info_Mod_Per_Pruefung3);

	Info_AddChoice	(Info_Mod_Per_Pruefung3, "We should pick her up again.", Info_Mod_Per_Pruefung3_I);
	Info_AddChoice	(Info_Mod_Per_Pruefung3, "I think we can let her go.", Info_Mod_Per_Pruefung3_H);
	Info_AddChoice	(Info_Mod_Per_Pruefung3, "We should lock them up. Then she's no longer a danger.", Info_Mod_Per_Pruefung3_G);
};

FUNC VOID Info_Mod_Per_Pruefung3_F()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_F_15_00"); //What am I supposed to do now?
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_F_13_01"); //Do you still have my formula?

	if (Npc_HasItems(hero, ItWr_PerZettel) == 1)
	{
		AI_Output(hero, self, "Info_Mod_Per_Pruefung3_F_15_02"); //Yeah.
		AI_Output(self, hero, "Info_Mod_Per_Pruefung3_F_13_03"); //Then do your job and come back to me.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Per_Pruefung3_F_15_04"); //nay
		AI_Output(self, hero, "Info_Mod_Per_Pruefung3_F_13_05"); //Then I'll give you a new one. Here.

		B_GiveInvItems	(self, hero, ItWr_PerZettel, 1);

		AI_Output(self, hero, "Info_Mod_Per_Pruefung3_F_13_06"); //Now do your job and come back to me.
	};

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Petunia's fate is now decided. Now I have to do the job.");

	Info_ClearChoices	(Info_Mod_Per_Pruefung3);
};

FUNC VOID Info_Mod_Per_Pruefung3_B()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_B_15_00"); //She should be punished for everything she's done.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_B_13_01"); //If that's your decision.

	Info_ClearChoices	(Info_Mod_Per_Pruefung3);

	Info_AddChoice	(Info_Mod_Per_Pruefung3, "No! She doesn't deserve this.", Info_Mod_Per_Pruefung3_D);
	Info_AddChoice	(Info_Mod_Per_Pruefung3, "Punish them.", Info_Mod_Per_Pruefung3_C);
};

FUNC VOID Info_Mod_Per_Pruefung3_D()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_D_15_00"); //No! She doesn't deserve this. Do we have another choice?

	Info_Mod_Per_Pruefung3_E();
};

FUNC VOID Info_Mod_Per_Pruefung3_C()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_C_15_00"); //Punish them.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_C_13_01"); //If that's what you want. I'll get it all set up.

	B_StartOtherRoutine	(Mod_7594_OUT_Petunia_TUG, "GEFANGEN");

	Info_Mod_Per_Pruefung3_F();
};

FUNC VOID Info_Mod_Per_Pruefung3_M()
{
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_M_13_00"); //So be it. I'll get it all set up.

	Info_Mod_Per_Pruefung3_F();
};

FUNC VOID Info_Mod_Per_Pruefung3_A()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_A_15_00"); //I promised her we'd come up with something. What do you suggest?

	Info_Mod_Per_Pruefung3_E();
};

FUNC VOID Info_Mod_Per_Pruefung3_I()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_I_15_00"); //We should pick her up again.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_I_13_01"); //Are you sure about that?

	Info_ClearChoices	(Info_Mod_Per_Pruefung3);

	Info_AddChoice	(Info_Mod_Per_Pruefung3, "No, I think she's better off in freedom.", Info_Mod_Per_Pruefung3_L);
	Info_AddChoice	(Info_Mod_Per_Pruefung3, "No, we should lock them up. Then she's no longer a danger.", Info_Mod_Per_Pruefung3_K);
	Info_AddChoice	(Info_Mod_Per_Pruefung3, "I am convinced of her inner sincerity.", Info_Mod_Per_Pruefung3_J);
};

FUNC VOID Info_Mod_Per_Pruefung3_H()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_H_15_00"); //I think we can let her go.

	B_RemoveNpc	(Mod_7594_OUT_Petunia_TUG);

	Info_Mod_Per_Pruefung3_M();
};

FUNC VOID Info_Mod_Per_Pruefung3_G()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_G_15_00"); //We should lock them up. Then she's no longer a danger.

	B_StartOtherRoutine	(Mod_7594_OUT_Petunia_TUG,	"GEFANGEN");

	Info_Mod_Per_Pruefung3_M();
};

FUNC VOID Info_Mod_Per_Pruefung3_L()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_L_15_00"); //No, I think she's better off in freedom.

	B_RemoveNpc	(Mod_7594_OUT_Petunia_TUG);

	Info_Mod_Per_Pruefung3_M();
};

FUNC VOID Info_Mod_Per_Pruefung3_K()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_K_15_00"); //No, we should lock them up. Then she's no longer a danger.

	B_StartOtherRoutine	(Mod_7594_OUT_Petunia_TUG,	"GEFANGEN");

	Info_Mod_Per_Pruefung3_M();
};

FUNC VOID Info_Mod_Per_Pruefung3_J()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_J_15_00"); //I am convinced of her inner sincerity. You might have to supervise her a little bit, but she can make the jump.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_J_13_01"); //A wise decision. I'll get it all set up.

	AI_UnequipArmor	(Mod_7594_OUT_Petunia_TUG);

	CreateInvItems	(Mod_7594_OUT_Petunia_TUG, ItAr_Naturmagier2, 1);

	AI_EquipArmor	(Mod_7594_OUT_Petunia_TUG, ItAr_Naturmagier2);

	B_StartOtherRoutine	(Mod_7594_OUT_Petunia_TUG,	"MAGIERIN");

	Info_Mod_Per_Pruefung3_F();
};

INSTANCE Info_Mod_Per_Pruefung4 (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Pruefung4_Condition;
	information	= Info_Mod_Per_Pruefung4_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the petal.";
};

FUNC INT Info_Mod_Per_Pruefung4_Condition()
{
	if (Mod_VMG_Pruefung == 5)
	&& (Npc_HasItems(hero, ItMi_Bluetenblatt) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Pruefung4_Info()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_15_00"); //I have the petal.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung4_13_01"); //That's awesome! I knew you'd make it. Let me see that.
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_15_02"); //Here you have it.

	B_GiveInvItems	(hero, self, ItMi_Bluetenblatt, 1);

	AI_Output(self, hero, "Info_Mod_Per_Pruefung4_13_03"); //Hah, I love those petals. I still remember when I found mine....
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_15_04"); //Get to the point.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung4_13_05"); //Sorry, of course. Did you get any insight from finding the petal?

	Info_ClearChoices	(Info_Mod_Per_Pruefung4);

	Info_AddChoice	(Info_Mod_Per_Pruefung4, "I'm something special.", Info_Mod_Per_Pruefung4_C);
	Info_AddChoice	(Info_Mod_Per_Pruefung4, "Nature is something harmonious and should not be influenced by external influences.", Info_Mod_Per_Pruefung4_B);
	Info_AddChoice	(Info_Mod_Per_Pruefung4, "No, should I?", Info_Mod_Per_Pruefung4_A);
};

FUNC VOID Info_Mod_Per_Pruefung4_H()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_H_15_00"); //I will, I will. Goodbye. Goodbye.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung4_H_13_01"); //Maybe we'll see each other again.

	Info_ClearChoices	(Info_Mod_Per_Pruefung4);
};

FUNC VOID Info_Mod_Per_Pruefung4_D()
{
	AI_Output(self, hero, "Info_Mod_Per_Pruefung4_D_13_00"); //Well done, you did the job! Go to Genn, he'll teleport you back to the Minental.

	Mod_VMG_Pruefung_Per = 1;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I passed the last test. Now I have to go to Genn to get back to the Minental. Then I talk to Faice and see what he has to tell me.");

	Info_Mod_Per_Pruefung4_H();
};

FUNC VOID Info_Mod_Per_Pruefung4_E()
{
	if (Mod_VMG_Pruefung_Genn == 1)
	&& (Mod_VMG_Pruefung_Asko == 1)
	{
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_00"); //You have unfortunately failed in this most important task, but I will turn a blind eye to your actions earlier.
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_01"); //Go to Genn, he'll teleport you back to the Minental.
	}
	else if (Mod_VMG_Pruefung_Genn == 2)
	&& (Mod_VMG_Pruefung_Asko == 2)
	{
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_02"); //Unfortunately, you have failed in this most important task, just as you failed in the two previous tasks.
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_03"); //You'll never be a real quick-change mage. I'm really very sorry for you, after all you've done for us, but that's what the traditions say.
		AI_Output(hero, self, "Info_Mod_Per_Pruefung4_E_15_04"); //You can't be serious. Isn't there any other way I can still be here?
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_05"); //Dieses Mal nicht. Es tut mir wirklich Leid. Go to Genn, he'll teleport you back to the Minental.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_06"); //Unfortunately, you have failed in this most important task, just as you failed in a task before.
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_07"); //I can't let you go unless you give up your reward.
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_08"); //And that's a good point. You've done too much for us to let you fall through.
		AI_Output(hero, self, "Info_Mod_Per_Pruefung4_E_15_09"); //I don't have a choice.
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_10"); //Go to Genn, he'll teleport you back to the Minental.
	};

	Mod_VMG_Pruefung_Per = 2;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I failed the last assignment. Now I have to go to Genn to get back to the Minental. Then I talk to Faice and see what he has to tell me.");

	Info_Mod_Per_Pruefung4_H();
};

FUNC VOID Info_Mod_Per_Pruefung4_C()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_C_15_00"); //I'm something special.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung4_C_13_01"); //Are you serious?

	Info_ClearChoices	(Info_Mod_Per_Pruefung4);

	Info_AddChoice	(Info_Mod_Per_Pruefung4, "Of course not, of course.", Info_Mod_Per_Pruefung4_G);
	Info_AddChoice	(Info_Mod_Per_Pruefung4, "Of course it is.", Info_Mod_Per_Pruefung4_F);
};

FUNC VOID Info_Mod_Per_Pruefung4_B()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_B_15_00"); //Nature is something harmonious and should not be influenced by external influences.

	Info_Mod_Per_Pruefung4_D();
};

FUNC VOID Info_Mod_Per_Pruefung4_A()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_A_15_00"); //No, should I?

	Info_Mod_Per_Pruefung4_E();
};

FUNC VOID Info_Mod_Per_Pruefung4_G()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_G_15_00"); //Of course not, of course. Nature is something harmonious and should not be influenced by external influences. That's my insight.

	Info_Mod_Per_Pruefung4_D();
};

FUNC VOID Info_Mod_Per_Pruefung4_F()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_F_15_00"); //Of course it is.

	Info_Mod_Per_Pruefung4_E();
};

var int Mod_Knows_PerTeacher;

INSTANCE Info_Mod_Per_Lernen_DEX (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Lernen_DEX_Condition;
	information	= Info_Mod_Per_Lernen_DEX_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me something.";
};

FUNC INT Info_Mod_Per_Lernen_DEX_Condition()
{
	if (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Lernen_DEX_Info()
{
	if (Mod_Knows_PerTeacher == FALSE)
	{
		Mod_Knows_PerTeacher = TRUE;

		Log_CreateTopic	(TOPIC_MOD_LEHRER_VM, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_VM, "Per can show me how to be more skillful.");
	};

	AI_Output(hero, self, "Info_Mod_Per_Lernen_DEX_15_00"); //Teach me something.
	AI_Output(self, hero, "Info_Mod_Per_Lernen_DEX_13_01"); //What do you want to learn?

	Info_ClearChoices	(Info_Mod_Per_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Per_Lernen_DEX, DIALOG_BACK, Info_Mod_Per_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Per_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Per_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Per_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Per_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Per_Lernen_DEX_BACK()
{
	Info_ClearChoices (Info_Mod_Per_Lernen_DEX);
};

FUNC VOID Info_Mod_Per_Lernen_DEX_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Per_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Per_Lernen_DEX, DIALOG_BACK, Info_Mod_Per_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Per_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Per_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Per_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Per_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Per_Lernen_DEX_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Per_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Per_Lernen_DEX, DIALOG_BACK, Info_Mod_Per_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Per_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Per_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Per_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Per_Lernen_DEX_Geschick_1);
};

INSTANCE Info_Mod_Per_Pickpocket (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Pickpocket_Condition;
	information	= Info_Mod_Per_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Per_Pickpocket_Condition()
{
	C_Beklauen	(72, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Per_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Per_Pickpocket);

	Info_AddChoice	(Info_Mod_Per_Pickpocket, DIALOG_BACK, Info_Mod_Per_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Per_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Per_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Per_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Per_Pickpocket);
};

FUNC VOID Info_Mod_Per_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Per_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Per_Pickpocket);

		Info_AddChoice	(Info_Mod_Per_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Per_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Per_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Per_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Per_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Per_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Per_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Per_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Per_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Per_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Per_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Per_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Per_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Per_EXIT (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_EXIT_Condition;
	information	= Info_Mod_Per_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Per_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Per_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
