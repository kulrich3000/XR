INSTANCE Info_Mod_Trador_Hi (C_INFO)
{
	npc		= Mod_7352_OUT_Trador_TUG;
	nr		= 1;
	condition	= Info_Mod_Trador_Hi_Condition;
	information	= Info_Mod_Trador_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trador_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trador_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Trador_Hi_03_00"); //There you are, I didn't count on you, but I'm glad you're here.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "What do you want from me?", Info_Mod_Trador_Hi_B);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Who are you?", Info_Mod_Trador_Hi_A);
};

FUNC VOID Info_Mod_Trador_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_B_15_00"); //What do you want from me?
	AI_Output(self, hero, "Info_Mod_Trador_Hi_B_03_01"); //Don't you think it's appropriate to tell me something about yourself first?

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "No.", Info_Mod_Trador_Hi_D);
	Info_AddChoice	(Info_Mod_Trador_Hi, "I am....", Info_Mod_Trador_Hi_C);
};

FUNC VOID Info_Mod_Trador_Hi_A()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Trador_Hi_A_03_00"); //I am Trador, a high member of the circle of transformation mages.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_A_03_01"); //I've already heard of your coming, so I set off on my way.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "What do you want from me?", Info_Mod_Trador_Hi_B);
};

FUNC VOID Info_Mod_Trador_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_D_15_00"); //No.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_D_03_01"); //What have I done to you? Don't be so stubborn.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "I think I'd better go.", Info_Mod_Trador_Hi_E);
	Info_AddChoice	(Info_Mod_Trador_Hi, "I am....", Info_Mod_Trador_Hi_C);
};

FUNC VOID Info_Mod_Trador_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_C_15_00"); //I am....
	AI_Output(self, hero, "Info_Mod_Trador_Hi_C_03_01"); //I don't care who you are, but rather what you're doing here.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "I bring Genn poisonous plants that grow here.", Info_Mod_Trador_Hi_G);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Why would I tell you that?", Info_Mod_Trador_Hi_F);
};

FUNC VOID Info_Mod_Trador_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_E_15_00"); //I think I'd better go.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_E_03_01"); //Wait! What are you doing here?

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "I bring Genn poisonous plants that grow here.", Info_Mod_Trador_Hi_G);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Why would I tell you that?", Info_Mod_Trador_Hi_F);
};

FUNC VOID Info_Mod_Trador_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_G_15_00"); //I bring Genn poisonous plants that grow here.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_G_03_01"); //Can I see the plants?

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "No, these are for Genn.", Info_Mod_Trador_Hi_I);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Yeah, take it.", Info_Mod_Trador_Hi_H);
};

FUNC VOID Info_Mod_Trador_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_F_15_00"); //Why would I tell you that?
	AI_Output(self, hero, "Info_Mod_Trador_Hi_F_03_01"); //You can trust me. I'm a transforming magician, after all.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "I don't like your face.", Info_Mod_Trador_Hi_J);
	Info_AddChoice	(Info_Mod_Trador_Hi, "I bring Genn poisonous plants that grow here.", Info_Mod_Trador_Hi_G);
};

FUNC VOID Info_Mod_Trador_Hi_J()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_J_15_00"); //I don't like your face.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_J_03_01"); //Do you always judge people by their looks? Come on, come on.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "I don't think I'm gonna tell you.", Info_Mod_Trador_Hi_O);
	Info_AddChoice	(Info_Mod_Trador_Hi, "I bring Genn poisonous plants that grow here.", Info_Mod_Trador_Hi_G);
};

FUNC VOID Info_Mod_Trador_Hi_I()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_I_15_00"); //No, these are for Genn.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_I_03_01"); //I beg you, you can look for new plants for Genn.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_I_03_02"); //I can offer you these herbs, they look exactly like the poisonous ones, but they are completely harmless. You can give this to Genn.
	AI_Output(hero, self, "Info_Mod_Trador_Hi_I_15_03"); //What do I get out of it?
	AI_Output(self, hero, "Info_Mod_Trador_Hi_I_03_04"); //Shall we say - 200 gold coins?

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Okay.", Info_Mod_Trador_Hi_L);
	Info_AddChoice	(Info_Mod_Trador_Hi, "That's not good enough.", Info_Mod_Trador_Hi_K);
};

FUNC VOID Info_Mod_Trador_Hi_T()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_T_15_00"); //What's Furt got to do with this?

	if (Mod_VMG_FaiceGifty_Gift == 13)
	{
		AI_Output(self, hero, "Info_Mod_Trador_Hi_T_03_01"); //I wasn't exactly happy he got caught. But I figured you had something to do with it. You've been snooping around too much.

		B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "By surrendering Furt, his master, who introduced himself as Trador, became aware of me. He spoke to me in riddles. I think I should talk to Genn about this.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Trador_Hi_T_03_02"); //After you let him go, he came to me. That was pretty reckless of you.

		B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "After I let Furt go, he must have run to his master who introduced himself as Trador. Maybe I made a mistake. He spoke to me in riddles. I think I should talk to Genn about this.");
	};

	AI_Output(self, hero, "Info_Mod_Trador_Hi_T_03_03"); //But you'll probably never know why Faice should die. Adieu!

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");
};

FUNC VOID Info_Mod_Trador_Hi_R()
{
	AI_Output(self, hero, "Info_Mod_Trador_Hi_R_03_00"); //Thank you, you fool! You'll never see the plants again! (laughs)

	if (Mod_VMG_FaiceGifty_Gift == 13)
	{
		AI_Output(self, hero, "Info_Mod_Trador_Hi_R_03_01"); //That's what you get for turning Furt over!
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Trador_Hi_R_03_02"); //Furt was right, you're really reckless!
	};

	Mod_VMG_Giftpflanzen = 5;

	AI_Output(hero, self, "Info_Mod_Trador_Hi_R_15_03"); //You son of a bitch!

	Info_Mod_Trador_Hi_T();
};

FUNC VOID Info_Mod_Trador_Hi_S()
{
	AI_Output(self, hero, "Info_Mod_Trador_Hi_S_03_00"); //You're driving me crazy!

	if (Mod_VMG_FaiceGifty_Gift == 13)
	{
		AI_Output(self, hero, "Info_Mod_Trador_Hi_S_03_01"); //But I was expecting you to be persistent after you convicted Furt.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Trador_Hi_S_03_02"); //But Furt already told me you might be persistent.
	};

	Mod_VMG_Giftpflanzen = 6;

	Info_Mod_Trador_Hi_T();
};

FUNC VOID Info_Mod_Trador_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_H_15_00"); //Yeah, take it.

	Npc_RemoveInvItems	(hero, ItPl_Mushroom_04, 1);
	Npc_RemoveInvItems	(hero, ItPl_Mithrida, 1);
	Npc_RemoveInvItems	(hero, ItPl_Piante, 1);
	Npc_RemoveInvItems	(hero, ItPl_Ponzola, 1);
	Npc_RemoveInvItems	(hero, ItPl_Venena, 1);

	B_ShowGivenThings	("planting");

	Info_Mod_Trador_Hi_R();
};

FUNC VOID Info_Mod_Trador_Hi_L()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_L_15_00"); //Okay.

	Npc_RemoveInvItems	(hero, ItPl_Mushroom_04, 1);
	Npc_RemoveInvItems	(hero, ItPl_Mithrida, 1);
	Npc_RemoveInvItems	(hero, ItPl_Piante, 1);
	Npc_RemoveInvItems	(hero, ItPl_Ponzola, 1);
	Npc_RemoveInvItems	(hero, ItPl_Venena, 1);

	B_ShowGivenThings	("planting");

	Info_Mod_Trador_Hi_R();
};

FUNC VOID Info_Mod_Trador_Hi_K()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_K_15_00"); //That's not good enough.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_K_03_01"); //500 - My final offer.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Okay.", Info_Mod_Trador_Hi_L);
	Info_AddChoice	(Info_Mod_Trador_Hi, "That's not good enough.", Info_Mod_Trador_Hi_M);
};

FUNC VOID Info_Mod_Trador_Hi_M()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_M_15_00"); //That's not good enough.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_M_03_01"); //1000. And no more coins!

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "Okay.", Info_Mod_Trador_Hi_L);
	Info_AddChoice	(Info_Mod_Trador_Hi, "Hm, more wouldn't be bad.", Info_Mod_Trador_Hi_N);
};

FUNC VOID Info_Mod_Trador_Hi_N()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_N_15_00"); //Hm, more wouldn't be bad.

	Info_Mod_Trador_Hi_S();
};

FUNC VOID Info_Mod_Trador_Hi_O()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_O_15_00"); //I don't think I'm gonna tell you.
	AI_Output(self, hero, "Info_Mod_Trador_Hi_O_03_01"); //Why? Did I do something to you? I have to do this for an important... study know.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "What kind of study?", Info_Mod_Trador_Hi_P);
	Info_AddChoice	(Info_Mod_Trador_Hi, "I bring Genn poisonous plants that grow here.", Info_Mod_Trador_Hi_G);
};

FUNC VOID Info_Mod_Trador_Hi_P()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_P_15_00"); //What kind of study?
	AI_Output(self, hero, "Info_Mod_Trador_Hi_P_03_01"); //About the... Habits of the other members, yes.

	Info_ClearChoices	(Info_Mod_Trador_Hi);

	Info_AddChoice	(Info_Mod_Trador_Hi, "I don't believe a word you're saying.", Info_Mod_Trador_Hi_Q);
	Info_AddChoice	(Info_Mod_Trador_Hi, "I bring Genn poisonous plants that grow here.", Info_Mod_Trador_Hi_G);
};

FUNC VOID Info_Mod_Trador_Hi_Q()
{
	AI_Output(hero, self, "Info_Mod_Trador_Hi_Q_15_00"); //I don't believe you.

	Info_Mod_Trador_Hi_S();
};

INSTANCE Info_Mod_Trador_Teleport (C_INFO)
{
	npc		= Mod_7352_OUT_Trador_TUG;
	nr		= 1;
	condition	= Info_Mod_Trador_Teleport_Condition;
	information	= Info_Mod_Trador_Teleport_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trador_Teleport_Condition()
{
	if (Mod_VMG_WSTrador == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trador_Teleport_Info()
{
	AI_Output(self, hero, "Info_Mod_Trador_Teleport_03_00"); //What, you here? You're supposed to be somewhere else!

	Info_ClearChoices	(Info_Mod_Trador_Teleport);

	Info_AddChoice	(Info_Mod_Trador_Teleport, "I'm going to kill you!", Info_Mod_Trador_Teleport_B);
	Info_AddChoice	(Info_Mod_Trador_Teleport, "What's going on here?", Info_Mod_Trador_Teleport_A);
};

FUNC VOID Info_Mod_Trador_Teleport_C()
{
	AI_Output(self, hero, "Info_Mod_Trador_Teleport_C_03_00"); //(laughs) You don't stand a chance. I'm just gonna summon some golems and set them on you. I can run away calmly in that time.
	AI_Output(hero, self, "Info_Mod_Trador_Teleport_C_15_01"); //I'm not gonna let it get that far.
	AI_Output(self, hero, "Info_Mod_Trador_Teleport_C_03_02"); //What are you gonna do about it, huh?

	Info_ClearChoices	(Info_Mod_Trador_Teleport);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Trador_Teleport_B()
{
	AI_Output(hero, self, "Info_Mod_Trador_Teleport_B_15_00"); //I'm going to kill you!

	Info_Mod_Trador_Teleport_C();
};

FUNC VOID Info_Mod_Trador_Teleport_A()
{
	AI_Output(hero, self, "Info_Mod_Trador_Teleport_A_15_00"); //What's going on here?
	AI_Output(self, hero, "Info_Mod_Trador_Teleport_A_03_01"); //I have damaged the portal so that you end up in this lonely valley with the two poor people who have tried to thwart our plans before.
	AI_Output(hero, self, "Info_Mod_Trador_Teleport_A_15_02"); //You fucking bastard! You'll pay for this!

	Info_Mod_Trador_Teleport_C();
};

INSTANCE Info_Mod_Trador_Buff (C_INFO)
{
	npc		= Mod_7352_OUT_Trador_TUG;
	nr		= 1;
	condition	= Info_Mod_Trador_Buff_Condition;
	information	= Info_Mod_Trador_Buff_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trador_Buff_Condition()
{
	if (Mod_VMG_WSTrador == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trador_Buff_Info()
{
	AI_Output(self, hero, "Info_Mod_Trador_Buff_03_00"); //What...? What are you trying to do?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Trador_Setta (C_INFO)
{
	npc		= Mod_7352_OUT_Trador_TUG;
	nr		= 1;
	condition	= Info_Mod_Trador_Setta_Condition;
	information	= Info_Mod_Trador_Setta_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trador_Setta_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Buff_TUG_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trador_Setta_Info()
{
	AI_Output(self, hero, "Info_Mod_Trador_Setta_03_00"); //arghhhh...
	AI_Output(hero, self, "Info_Mod_Trador_Setta_15_01"); //Now you'll get a full pound on the mouth!
	AI_Output(self, hero, "Info_Mod_Trador_Setta_03_02"); //I won't surrender without a fight!

	AI_StopProcessInfos	(self);

	Wld_SpawnNpcRange (self, StoneGolem, 2, 1000);
};

INSTANCE Info_Mod_Trador_EXIT (C_INFO)
{
	npc		= Mod_7352_OUT_Trador_TUG;
	nr		= 1;
	condition	= Info_Mod_Trador_EXIT_Condition;
	information	= Info_Mod_Trador_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Trador_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trador_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
