INSTANCE Info_Mod_Leitwolf_Hi (C_INFO)
{
	npc		= Monster_11060_Leitwolf_TUG;
	nr		= 1;
	condition	= Info_Mod_Leitwolf_Hi_Condition;
	information	= Info_Mod_Leitwolf_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leitwolf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leitwolf_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_09_00"); //What are you doing here?

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Get lost, you mangy dog.", Info_Mod_Leitwolf_Hi_C);
	Info_AddChoice	(Info_Mod_Leitwolf_Hi, "You're not very welcome here.", Info_Mod_Leitwolf_Hi_B);
	Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Would you mind leaving the valley again?", Info_Mod_Leitwolf_Hi_A);
};

FUNC VOID Info_Mod_Leitwolf_Hi_F()
{
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_F_09_00"); //Do you want to end up like everyone else within ten meters?

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Come here, big bad wolf.", Info_Mod_Leitwolf_Hi_H);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Maybe we can work this out peacefully.", Info_Mod_Leitwolf_Hi_G);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_C_15_00"); //Get lost, you mangy dog.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_C_09_01"); //What do you think you're doing? What do you think you are?

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "I'm intellectually superior to you, so surrender or die.", Info_Mod_Leitwolf_Hi_E);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "What do you think you're doing to destroy everything here?", Info_Mod_Leitwolf_Hi_D);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_B_15_00"); //You're not very welcome here.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_B_09_01"); //Says who?

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "The transforming mages, to be precise.", Info_Mod_Leitwolf_Hi_K);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Didn't you hear me? I'll say it.", Info_Mod_Leitwolf_Hi_J);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_A_15_00"); //Would you mind leaving the valley again?
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_A_09_01"); //If you ask me that... yes. (laughs throatily) Why should I leave the valley?

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "You're not very welcome here.", Info_Mod_Leitwolf_Hi_B);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "You and your friends, you are destroying the peace of nature in this valley.", Info_Mod_Leitwolf_Hi_M);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_E_15_00"); //I'm intellectually superior to you, so surrender or die.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_E_09_01"); //Don't make me laugh! (laughs throatily)

	Info_Mod_Leitwolf_Hi_F();
};

FUNC VOID Info_Mod_Leitwolf_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_D_15_00"); //What do you think you're doing to destroy everything here?
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_D_09_01"); //I'm the leader of this pack! And what can you show me?
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_D_15_02"); //I don't look at it, but I'm a human being.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_D_09_03"); //So you're one of those morons, too? Get out of here, buster.

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "No, you get out of here!", Info_Mod_Leitwolf_Hi_I);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Can't we find some sort of agreement?", Info_Mod_Leitwolf_Hi_N);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_H_15_00"); //Come here, big bad wolf.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_H_09_01"); //Suit yourself!

	Mod_VMG_Pruefung_Leitwolf = 1;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Leitwolf_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_G_15_00"); //Maybe we can work this out peacefully.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_G_09_01"); //I can't think of anything spontaneously. (growls)

	Info_Mod_Leitwolf_Hi_A();
};

FUNC VOID Info_Mod_Leitwolf_Hi_I()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_I_15_00"); //No, you get out of here!

	Info_Mod_Leitwolf_Hi_F();
};

FUNC VOID Info_Mod_Leitwolf_Hi_K()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_K_15_00"); //The transforming mages, to be precise.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_K_09_01"); //That ragamuffin. It's scaring the shit out of me! Tell them I'm not going anywhere.
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_K_15_02"); //What if I don't?
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_K_09_03"); //Then I'll stay here! (laughs throatily)

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Get lost, you mangy dog.", Info_Mod_Leitwolf_Hi_C);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Can't we find some sort of agreement?", Info_Mod_Leitwolf_Hi_N);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_J()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_J_15_00"); //Didn't you hear me? I'll say it.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_J_09_01"); //Don't be a naughty boy. What do you want from me?
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_J_15_02"); //Leaving the valley. I already told you that.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_J_09_03"); //I don't want to leave the valley. It is an excellent hunting ground.

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Then die, you mangy dog!", Info_Mod_Leitwolf_Hi_L);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Can't we find some sort of agreement?", Info_Mod_Leitwolf_Hi_N);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_L()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_L_15_00"); //Then die, you mangy dog!

	Info_Mod_Leitwolf_Hi_F();
};

FUNC VOID Info_Mod_Leitwolf_Hi_N()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_N_15_00"); //Can't we find some sort of agreement?
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_N_09_01"); //Your bullshit's starting to bore me. You want a settlement?
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_N_09_02"); //Then bring me food for... One week and we're leaving.

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Forget it.", Info_Mod_Leitwolf_Hi_P);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "I will, what do you want?", Info_Mod_Leitwolf_Hi_O);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_M()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_M_15_00"); //You and your friends, you are destroying the peace of nature in this valley.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_M_09_01"); //Oh, how touching. I don't give a damn.

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_Mod_Leitwolf_Hi_N();
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_S()
{
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_S_09_00"); //Bring me... a twenty pieces of meat.

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "That's too much to ask!", Info_Mod_Leitwolf_Hi_U);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "All right, all right. I'll bring you the meat.", Info_Mod_Leitwolf_Hi_T);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_P()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_P_15_00"); //Forget about it.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_P_09_01"); //Then we can't do business. Get out of here.

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	if (Mod_WM_IsWarg == 1)
	{
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "No, you disappear. Now or I'll kill you!", Info_Mod_Leitwolf_Hi_R);
		Info_AddChoice	(Info_Mod_Leitwolf_Hi, "Wait! What do you want?", Info_Mod_Leitwolf_Hi_Q);
	}
	else
	{
		Mod_VMG_Pruefung_Leitwolf = 1;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Leitwolf_Hi_O()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_O_15_00"); //I will, what do you want?

	Info_Mod_Leitwolf_Hi_S();
};

FUNC VOID Info_Mod_Leitwolf_Hi_R()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_R_15_00"); //No, you disappear. Now or I'll kill you!
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_R_09_01"); //Not if I'm faster!

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	Mod_VMG_Pruefung_Leitwolf = 1;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Leitwolf_Hi_Q()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_Q_15_00"); //Wait! What do you want?

	Info_Mod_Leitwolf_Hi_S();
};

FUNC VOID Info_Mod_Leitwolf_Hi_U()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_U_15_00"); //That's too much to ask!
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_U_09_01"); //Then we can't do business. Get out of here.
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_U_15_02"); //No, you disappear. Now or I'll kill you!
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_U_09_03"); //Not if I'm faster!

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	Mod_VMG_Pruefung_Leitwolf = 1;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I had to kill the leader wolf. Hopefully, the task can still be considered completed. I should talk to Asko about this.");

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Leitwolf_Hi_T()
{
	AI_Output(hero, self, "Info_Mod_Leitwolf_Hi_T_15_00"); //All right, all right. I'll bring you the meat.
	AI_Output(self, hero, "Info_Mod_Leitwolf_Hi_T_09_01"); //Wonderful. (laughs throatily)

	Info_ClearChoices	(Info_Mod_Leitwolf_Hi);

	Mod_VMG_Pruefung_Leitwolf = 2;

	Npc_SetRefuseTalk	(self, 60);

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I'm supposed to bring 20 pieces of meat to the leader wolf so he and his pack can disappear. I think Dever sells meat. After that I should let Asko give me a new role.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Leitwolf_Aufgabe (C_INFO)
{
	npc		= Monster_11060_Leitwolf_TUG;
	nr		= 1;
	condition	= Info_Mod_Leitwolf_Aufgabe_Condition;
	information	= Info_Mod_Leitwolf_Aufgabe_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Leitwolf_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leitwolf_Hi))
	&& (Mod_VMG_Pruefung_Leitwolf == 2)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leitwolf_Aufgabe_Info()
{
	AI_Output(self, hero, "Info_Mod_Leitwolf_Aufgabe_09_00"); //How's it looking? (growls)

	if (Mod_HasFleisch_Amount >= 20)
	{
		AI_Output(hero, self, "Info_Mod_Leitwolf_Aufgabe_15_01"); //Here's your meat.

		//B_GiveInvItems	(hero, self, ItFo_MuttonRaw, 20);

		B_ShowGivenThings	("20 raw meat given");

		AI_Output(self, hero, "Info_Mod_Leitwolf_Aufgabe_09_02"); //That's what I call a good meal! I'll keep my promise and get the hell out of here.
		AI_Output(hero, self, "Info_Mod_Leitwolf_Aufgabe_15_03"); //It's best if you don't show up here anymore.
		AI_Output(self, hero, "Info_Mod_Leitwolf_Aufgabe_09_04"); //All right, all right. We'll get out of here.

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "The leader of the wolf has left with his cronies. I should tell Asko about it.");

		Mod_VMG_Pruefung_Leitwolf = 3;
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Leitwolf_Aufgabe_15_05"); //I'm on the case.
		AI_Output(self, hero, "Info_Mod_Leitwolf_Aufgabe_09_06"); //Hurry up, will you?
	};

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk	(self, 60);
};

INSTANCE Info_Mod_Leitwolf_EXIT (C_INFO)
{
	npc		= Monster_11060_Leitwolf_TUG;
	nr		= 1;
	condition	= Info_Mod_Leitwolf_EXIT_Condition;
	information	= Info_Mod_Leitwolf_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Leitwolf_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leitwolf_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
