INSTANCE Info_Mod_Sylvio_Hi (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_Hi_Condition;
	information	= Info_Mod_Sylvio_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sylvio_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_GotoSylvio))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Sylvio_Hi_09_00"); //Hey, you're the guy who's supposed to be spying on us in the old camp.
	AI_Output(hero, self, "Info_Mod_Sylvio_Hi_15_01"); //Yes, I should.
	AI_Output(self, hero, "Info_Mod_Sylvio_Hi_09_02"); //I want to tell you something: If you get anything, you should tell me first before you run to Lee, understand?
	AI_Output(self, hero, "Info_Mod_Sylvio_Hi_09_03"); //With this you can become an orc hunter in no time and earn additional gold and ore. We understand each other?

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Sylvio wanted me to report to him first, in case I learned anything in the Old Camp.");
};

INSTANCE Info_Mod_Sylvio_InfosAnLee (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_InfosAnLee_Condition;
	information	= Info_Mod_Sylvio_InfosAnLee_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sylvio_InfosAnLee_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_SchlachtDabei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lee_SchlachtVerpasst))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_InfosAnLee_Info()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Sylvio_Infos))
	{
		AI_Output(self, hero, "Info_Mod_Sylvio_InfosAnLee_09_00"); //Didn't I tell you to come to me first?
	};

	AI_Output(self, hero, "Info_Mod_Sylvio_InfosAnLee_09_01"); //One of my best orc hunters was exposed and that will turn to me. And I don't like that at all.
	AI_Output(self, hero, "Info_Mod_Sylvio_InfosAnLee_09_02"); //Better watch out in the future if you don't make powerful enemies.
};

INSTANCE Info_Mod_Sylvio_Infos (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_Infos_Condition;
	information	= Info_Mod_Sylvio_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have important information (.... )";
};

FUNC INT Info_Mod_Sylvio_Infos_Condition()
{
	if (Mod_SLD_Spy == 1)
	&& (Npc_HasItems(hero, ItAr_Stt_Mordrag) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Infos_15_00"); //I have gained important information from my conversations with some of the shadows. Apparently, a guardsman fell victim to murder.
	AI_Output(hero, self, "Info_Mod_Lee_Infos_15_01"); //Another guardsman wants one of our men to be the culprit and the old camp plans to attack us at dawn in the next few days.
	AI_Output(self, hero, "Info_Mod_Sylvio_Infos_09_02"); //That's interesting. Go to Sentenza. He'll give you further instructions.
	
	B_LogEntry	(TOPIC_MOD_SLD_SPY, "I'm to Sentenza to get further instructions.");

	Mod_SLD_Spy = 4;

	Npc_RemoveInvItems	(hero, ItAr_Stt_Mordrag, 1);
};

INSTANCE Info_Mod_Sylvio_Frauenraub (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_Frauenraub_Condition;
	information	= Info_Mod_Sylvio_Frauenraub_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sylvio_Frauenraub_Condition()
{
	if (Mod_SLD_Spy == 7)
	|| (Mod_SLD_Spy == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_Frauenraub_Info()
{
	AI_Output(self, hero, "Info_Mod_Sylvio_Frauenraub_09_00"); //By the way, there's another way for you to prove yourself.
	AI_Output(self, hero, "Info_Mod_Sylvio_Frauenraub_09_01"); //Go to Bullco. He'll tell you everything else.
	AI_Output(hero, self, "Info_Mod_Sylvio_Frauenraub_15_02"); //But Bullco is not an orcish hunter.
	AI_Output(self, hero, "Info_Mod_Sylvio_Frauenraub_09_03"); //That's right, he's a dragon hunter. So what? Working for me is worthwhile. You'll find him outside the pub during the day.

	Log_CreateTopic	(TOPIC_MOD_SLD_BULLCO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_BULLCO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_BULLCO, "I'm supposed to see Bullco, who is usually in front of the pub, to get me further instructions.");
};

INSTANCE Info_Mod_Sylvio_VelayaWeg (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_VelayaWeg_Condition;
	information	= Info_Mod_Sylvio_VelayaWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sylvio_VelayaWeg_Condition()
{
	if (Mod_SLD_Velaya == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_VelayaWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Sylvio_VelayaWeg_09_00"); //What?! You here? And unaccompanied?
	AI_Output(hero, self, "Info_Mod_Sylvio_VelayaWeg_15_01"); //I'm afraid it didn't work out.
	AI_Output(self, hero, "Info_Mod_Sylvio_VelayaWeg_09_02"); //Didn't work?! After you've done that, there's probably a lot of other things that won't work out for you. Get out of my sight.

	B_SetTopicStatus	(TOPIC_MOD_SLD_BULLCO, LOG_SUCCESS);
};

INSTANCE Info_Mod_Sylvio_VelayaDabei (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_VelayaDabei_Condition;
	information	= Info_Mod_Sylvio_VelayaDabei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sylvio_VelayaDabei_Condition()
{
	if (Mod_SLD_Velaya == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_VelayaDabei_Info()
{
	AI_Output(self, hero, "Info_Mod_Sylvio_VelayaDabei_09_00"); //Well, look who they brought us here. She'll give me a good time.
	AI_Output(self, hero, "Info_Mod_Sylvio_VelayaDabei_09_01"); //You've done your thing more than well. You've come a lot closer to joining the ranks of the Orc hunters.
	AI_Output(self, hero, "Info_Mod_Sylvio_VelayaDabei_09_02"); //Here's your reward. You've earned it fair.

	B_ShowGivenThings	("350 gold, 10 ore and 12 stems of bog cabbage preserved");

	CreateInvItems	(hero, ItMi_Gold, 350);
	CreateInvItems	(hero, ItMi_Nugget, 10);
	CreateInvItems	(hero, ItMi_Joint, 12);

	B_SetTopicStatus	(TOPIC_MOD_SLD_BULLCO, LOG_SUCCESS);

	B_GivePlayerXP	(450);

	B_StartOtherRoutine	(Mod_1621_EBR_Velaya_MT, "ATSYLVIO");
};

INSTANCE Info_Mod_Sylvio_Befoerderung (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_Befoerderung_Condition;
	information	= Info_Mod_Sylvio_Befoerderung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Am I ready to join the ranks of the Orcish?";
};

FUNC INT Info_Mod_Sylvio_Befoerderung_Condition()
{
	if (Mod_Gilde == 4)
	&& (Mod_SLD_Orkjaeger == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_Befoerderung_Info()
{
	AI_Output(hero, self, "Info_Mod_Sylvio_Befoerderung_15_00"); //Am I ready to join the ranks of the Orcish?

	if (Kapitel == 1)
	{
		AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_01"); //What?! Oh, the recording... I'll think about it in a couple of days.
	}
	else
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Sylvio_VelayaDabei))
		&& (Npc_KnowsInfo(hero, Info_Mod_Sentenza_Cutter))
		{
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_02"); //Oh, your recording. You have shown that you are on the right side and have fulfilled your tasks to my complete satisfaction.
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_03"); //You've more than earned your recording with this. Welcome to the Orc hunters. Here's your new armor.

			B_ShowGivenThings	("Receive Hunting Armor");

			CreateInvItems	(hero, ItAr_Sld_H, 1);

			AI_UnequipArmor	(hero);
			AI_EquipArmor	(hero, ItAr_Sld_H);

			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_04"); //You can pick up your weapon at Thofeistos.

			Snd_Play ("LEVELUP");

			B_GivePlayerXP	(600);

			B_Göttergefallen(2, 5);

			Mod_Gilde = 19;

			Mod_SLD_Orkjaeger = 1;

			B_SetTopicStatus	(TOPIC_MOD_SLD_ORKJAEGER, LOG_SUCCESS);
		}
		else if (Npc_KnowsInfo(hero, Info_Mod_Sylvio_VelayaWeg))
		&& (Npc_KnowsInfo(hero, Info_Mod_Sylvio_InfosAnLee))
		{
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_05"); //Oh, the recording. You've really caused me and my boys a lot of trouble, buster.
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_06"); //Be glad you're a former acquaintance of Lee's, or I'd chop you to pieces with my gun.
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_07"); //Recording? With the farmers on the rice field, but not with us. Now get out of my sight before I forget myself.

			Mod_SLD_Orkjaeger = 2;

			B_LogEntry	(TOPIC_MOD_SLD_ORKJAEGER, "Oh, great. If it's Sylvio, I'm not there. I should ask Lee if there's another way.");
		}
		else if ((Npc_KnowsInfo(hero, Info_Mod_Sylvio_VelayaDabei))
		|| (Npc_KnowsInfo(hero, Info_Mod_Sentenza_Cutter)))
		&& ((Mod_SLD_Rufus == 7)
		|| ((Npc_KnowsInfo(hero, Info_Mod_Reislord_Hi))
		&& (Npc_KnowsInfo(hero, Info_Mod_Patrick_ShrikeDa))
		&& (Npc_KnowsInfo(hero, Info_Mod_Fester_BackAtCamp))
		&& (Mod_SLD_Engardo == 5)))
		{
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_08"); //You managed to do some things, beat some things up, but all in all you did a good job.
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_09"); //You may not have spilled glory on yourself, but it's still enough for a recording with us. Here's your new armor.

			B_ShowGivenThings	("Receive Hunting Armor");

			CreateInvItems	(hero, ItAr_Sld_H, 1);

			AI_UnequipArmor	(hero);
			AI_EquipArmor	(hero, ItAr_Sld_H);

			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_04"); //You can pick up your weapon at Thofeistos.

			Snd_Play ("LEVELUP");

			B_GivePlayerXP	(600);

			B_Göttergefallen(2, 5);

			Mod_Gilde = 19;

			Mod_SLD_Orkjaeger = 1;

			B_SetTopicStatus	(TOPIC_MOD_SLD_ORKJAEGER, LOG_SUCCESS);
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_10"); //What, you've barely done anything.
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_11"); //Until you prove yourself wrong, the answer is no.
		};
	};
};

INSTANCE Info_Mod_Sylvio_Wettstreit (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_Wettstreit_Condition;
	information	= Info_Mod_Sylvio_Wettstreit_Info;
	permanent	= 0;
	important	= 0;
	description	= "I challenge you to competition.";
};

FUNC INT Info_Mod_Sylvio_Wettstreit_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Lee_Wettstreit))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lee_Orkfriedhof)))
	&& (Mod_Gilde == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_Wettstreit_Info()
{
	AI_Output(hero, self, "Info_Mod_Sylvio_Wettstreit_15_00"); //I challenge you to competition.
	AI_Output(self, hero, "Info_Mod_Sylvio_Wettstreit_09_01"); //What...? What do you say?
	AI_Output(hero, self, "Info_Mod_Sylvio_Wettstreit_15_02"); //To the competition for the second rank. Officer and leader of the Orc hunters.
	AI_Output(self, hero, "Info_Mod_Sylvio_Wettstreit_09_03"); //You wretch dares... you'll regret this.
	AI_Output(hero, self, "Info_Mod_Sylvio_Wettstreit_15_04"); //Just wanted to let you know and get back to Lee.
	AI_Output(self, hero, "Info_Mod_Sylvio_Wettstreit_09_05"); //Okay, if you want a contest, I want you to have one.
};

INSTANCE Info_Mod_Sylvio_AtStonehenge (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_AtStonehenge_Condition;
	information	= Info_Mod_Sylvio_AtStonehenge_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sylvio_AtStonehenge_Condition()
{
	if (Mod_SLD_Wettstreit == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_AtStonehenge_Info()
{
	AI_Output(self, hero, "Info_Mod_Sylvio_AtStonehenge_09_00"); //You here? Damn it, where's my key and my slogan.
	AI_Output(self, hero, "Info_Mod_Sylvio_AtStonehenge_09_01"); //(To the hero) Well, it looks like I'm gonna have to take your key. You shouldn't have messed with me.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Sylvio_Pickpocket (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_Pickpocket_Condition;
	information	= Info_Mod_Sylvio_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Sylvio_Pickpocket_Condition()
{
	C_Beklauen	(129, ItMi_Gold, 65);
};

FUNC VOID Info_Mod_Sylvio_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);

	Info_AddChoice	(Info_Mod_Sylvio_Pickpocket, DIALOG_BACK, Info_Mod_Sylvio_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sylvio_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sylvio_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sylvio_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);
};

FUNC VOID Info_Mod_Sylvio_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);

		Info_AddChoice	(Info_Mod_Sylvio_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sylvio_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sylvio_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sylvio_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sylvio_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sylvio_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sylvio_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sylvio_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sylvio_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sylvio_EXIT (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_EXIT_Condition;
	information	= Info_Mod_Sylvio_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sylvio_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sylvio_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
