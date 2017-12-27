INSTANCE Info_Mod_Lares_Hi (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Hi_Condition;
	information	= Info_Mod_Lares_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lares_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Hi_37_00"); //You're still alive?
	AI_Output(hero, self, "Info_Mod_Lares_Hi_15_01"); //It's a long story.
	AI_Output(self, hero, "Info_Mod_Lares_Hi_37_02"); //What are you doing now?
};

INSTANCE Info_Mod_Lares_Daemonisch (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Daemonisch_Condition;
	information	= Info_Mod_Lares_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_00"); //Well, what are you doing here?
	AI_Output(hero, self, "Info_Mod_Lares_Daemonisch_15_01"); //Oh, I just wanted to have a look around....
	AI_Output(hero, self, "Info_Mod_Lares_Daemonisch_15_02"); //Has anything special happened to you on the farm lately?
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_03"); //Yeah, there was something. Pepe had seen dark shadows in the forest at night, probably from wolves.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_04"); //I then sent some guys with him to the small camp there to look around the night.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_05"); //Pepe came in early in the morning, panicked and looked around in disconcerted panic.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_06"); //When my boys came out of the forest again, he ran screaming towards the mountain stronghold.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_07"); //The boys thought that a big pack of wolves had attacked them and Pepe ran away.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_08"); //Unfortunately, one of my mercenaries was killed by the bastards. Well, everything's gonna be all right.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "I learned from Lares that Pepe saw dark shadows in the forest, which were probably caused by wolves. Some mercenaries went with Pepe to the small camp in the forest. Pepe arrived in the early morning in panic and disappeared towards the mountain fortress when he saw the mercenaries coming out of the forest behind him. Apparently a big pack of wolves had attacked them and Pepe panicked. A mercenary was killed.");
};

INSTANCE Info_Mod_Lares_Grog (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Grog_Condition;
	information	= Info_Mod_Lares_Grog_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got something for you.";
};

FUNC INT Info_Mod_Lares_Grog_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Skip_Francis))
	&& (Npc_HasItems(hero, Mod_GrogPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Grog_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_Grog_15_00"); //I got something for you.
	AI_Output(self, hero, "Info_Mod_Lares_Grog_37_01"); //What do you mean?
	AI_Output(hero, self, "Info_Mod_Lares_Grog_15_02"); //Package of grog.

	B_GiveInvItems	(hero, self, Mod_GrogPaket, 1);

	AI_Output(self, hero, "Info_Mod_Lares_Grog_37_03"); //It's about time. Finally I can celebrate with my boys again a little bit.
	AI_Output(self, hero, "Info_Mod_Lares_Grog_37_04"); //Here's your gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);
};

INSTANCE Info_Mod_Lares_BronkoMehlsack (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_BronkoMehlsack_Condition;
	information	= Info_Mod_Lares_BronkoMehlsack_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you guys do anything with a free shipment of flour?";
};

FUNC INT Info_Mod_Lares_BronkoMehlsack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Ambient01))
	&& (Npc_HasItems(hero, ItMi_Mehlsack_Bronko) == 5)
	&& (Mod_BronkoMehlsack == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_BronkoMehlsack_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_BronkoMehlsack_15_00"); //Can you guys do anything with a free shipment of flour?
	AI_Output(self, hero, "Info_Mod_Lares_BronkoMehlsack_37_01"); //Just give it to me. Where'd you find this?

	B_GiveInvItems	(hero, self, ItMi_Mehlsack_Bronko, 5);

	AI_Output(hero, self, "Info_Mod_Lares_BronkoMehlsack_15_02"); //I sort of fell for that.
	AI_Output(self, hero, "Info_Mod_Lares_BronkoMehlsack_37_03"); //(laughs) Then I'd rather not keep asking. Anyway, thank you very much.
	AI_Output(self, hero, "Info_Mod_Lares_BronkoMehlsack_37_04"); //Here, I'll spare those few potions. I'm not on the road as much as I need it right now anyway.

	CreateInvItems	(hero, ItPo_Health_01, 2);
	CreateInvItems	(hero, ItPo_Mana_01, 2);

	B_ShowGivenThings	("2 Healing Essences and 2 Mana essences obtained");

	B_GivePlayerXP	(100);

	B_Göttergefallen(3, 1);

	Mod_BronkoMehlsack = 3;
};

INSTANCE Info_Mod_Lares_WillSoeldner (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_WillSoeldner_Condition;
	information	= Info_Mod_Lares_WillSoeldner_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to join you.";
};

FUNC INT Info_Mod_Lares_WillSoeldner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Hi))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_WillSoeldner_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_WillSoeldner_15_00"); //I want to join you.
	AI_Output(self, hero, "Info_Mod_Lares_WillSoeldner_37_01"); //That's good news. Very good. Very good. All you have to do is show your loyalty to the camp.
	AI_Output(hero, self, "Info_Mod_Lares_WillSoeldner_15_02"); //You know me, you know me.
	AI_Output(self, hero, "Info_Mod_Lares_WillSoeldner_37_03"); //A lot has happened in the Minental. I know I can trust you, but that doesn't get you any respect among the others.
	AI_Output(self, hero, "Info_Mod_Lares_WillSoeldner_37_04"); //Go to Torlof and tell him I'm sending you.

	B_LogEntry	(TOPIC_MOD_SÖLDNER, "In order to be accepted by the mercenaries, I have to impress them a little and prove my loyalty. I should talk to Torlof.");
};

INSTANCE Info_Mod_Lares_AndereSoeldner (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_AndereSoeldner_Condition;
	information	= Info_Mod_Lares_AndereSoeldner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where are the other mercenaries?";
};

FUNC INT Info_Mod_Lares_AndereSoeldner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_AndereSoeldner_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_AndereSoeldner_15_00"); //Where are the other mercenaries?
	AI_Output(self, hero, "Info_Mod_Lares_AndereSoeldner_37_01"); //They're still in the New Camp.
	AI_Output(self, hero, "Info_Mod_Lares_AndereSoeldner_37_02"); //Lee sent me here with Torlof and Cord to persuade some people from Khorinis to join us.
	AI_Output(hero, self, "Info_Mod_Lares_AndereSoeldner_15_03"); //How many have you persuaded?
	AI_Output(self, hero, "Info_Mod_Lares_AndereSoeldner_37_04"); //Some. However, given the boredom we are currently experiencing, this is not a major problem.
};

INSTANCE Info_Mod_Lares_Aufnahme (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Aufnahme_Condition;
	information	= Info_Mod_Lares_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm ready to be a mercenary.";
};

FUNC INT Info_Mod_Lares_Aufnahme_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Torlof_KristallEntgelt))
	|| (Npc_KnowsInfo(hero, Info_Mod_Torlof_Alvares)))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_Aufnahme_15_00"); //I'm ready to be a mercenary.
	
	if (hero.level	>=	5)
	&& (Gardist_Dabei == FALSE)
	&& (Orks_Dabei == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_01"); //It's a pleasure to welcome you here.
		AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_02"); //But once you wear one of our armour, there's no turning back.
		
		if (Mod_HatPlayerNeutraleKlamotten())
		{
			Info_ClearChoices	(Info_Mod_Lares_Aufnahme);

			Info_AddChoice	(Info_Mod_Lares_Aufnahme, "I changed my mind.", Info_Mod_Lares_Aufnahme_Nein);
			Info_AddChoice	(Info_Mod_Lares_Aufnahme, "I want to join you.", Info_Mod_Lares_Aufnahme_Ja);
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_04"); //You should get yourself a neutral armor first.
		};
	}
	else if (Gardist_Dabei == TRUE)
	|| (Orks_Dabei == TRUE)
	{
		if (Gardist_Dabei == TRUE)
		{
			AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_05"); //You don't seriously think we can tolerate a guardsman in our ranks.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_06"); //There are also orc hunters among us, there's an orc friend of ours who is wrong.
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_03"); //You better get some more experience.
	};
};

FUNC VOID Info_Mod_Lares_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_Lares_Aufnahme_Nein_15_00"); //I changed my mind.
	AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_Nein_37_01"); //Whatever you say.

	Info_ClearChoices	(Info_Mod_Lares_Aufnahme);
};

FUNC VOID Info_Mod_Lares_Aufnahme_Ja()
{
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_53);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_55);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_58);
		
	AI_Output(hero, self, "Info_Mod_Lares_Aufnahme_Ja_15_00"); //I want to join you.
	
	AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_Ja_37_01"); //If you need a gun, you should ask Bennet.
	AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_Ja_37_02"); //Here's your armour.

	CreateInvItems	(self, ITAR_SLD_L, 1);
	B_GiveInvItems	(self, hero, ITAR_SLD_L, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_SLD_L);
	
	AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_Ja_14_03"); //But don't go into town with the armour. The militia won't let you in.
	
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	{
		Log_CreateTopic	(TOPIC_MOD_SLD_ORKJAEGER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SLD_ORKJAEGER, LOG_RUNNING);
		B_LogEntry_NMore	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_SÖLDNER, TOPIC_MOD_SLD_ORKJAEGER, "I'm a mercenary now.", "I'm a mercenary now.", "Sylvio decides who gets in on the Orc hunters.");
	}
	else
	{
		B_LogEntry_More	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_SÖLDNER, "I'm a mercenary now.", "I'm a mercenary now.");
	};

	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_SÖLDNER, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_FAILED);
	
	Mod_Gilde = 4;

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	hero.guild = GIL_MIL;
	Npc_SetTrueGuild	(hero, GIL_MIL);

	Monster_Max += 6;

	Info_ClearChoices	(Info_Mod_Lares_Aufnahme);
};

INSTANCE Info_Mod_Lares_Drachen (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Drachen_Condition;
	information	= Info_Mod_Lares_Drachen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Drachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Drachen_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_00"); //Fucking scumbags!
	AI_Output(hero, self, "Info_Mod_Lares_Drachen_15_01"); //What's going on?
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_02"); //You still ask that? Didn't you see the dragons in the field?
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_03"); //Have eaten all the sheep and even the shepherd dog of the farmer Sekob.
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_04"); //As we advanced against them, we realized that our weapons could not do much to harm them.
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_05"); //We lost a man in the process.
	AI_Output(hero, self, "Info_Mod_Lares_Drachen_15_06"); //Well, what can you do...?
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_07"); //You're asking me? You are always on the road, solving puzzles and capturing information from humans, magicians and orcs.
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_08"); //If you find a way to kill the dragons, let me know. filthy creatures....

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Lares has complained about the dragons and the damage they caused. He and the mercenaries couldn't hurt them. He asked me to let him know as soon as I found a way to do it.");
};

INSTANCE Info_Mod_Lares_LeeDJGHelfer (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_LeeDJGHelfer_Condition;
	information	= Info_Mod_Lares_LeeDJGHelfer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_LeeDJGHelfer_Condition()
{
	if (Mod_NL_HasKamm >= 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lee_Gormgniez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_LeeDJGHelfer_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer_37_00"); //Damn it, where's the backup? Did you call Lee? If not, hurry up.
};

INSTANCE Info_Mod_Lares_LeeDJGHelfer2 (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_LeeDJGHelfer2_Condition;
	information	= Info_Mod_Lares_LeeDJGHelfer2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_LeeDJGHelfer2_Condition()
{
	if (Mod_NL_HasKamm >= 3)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_Gormgniez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_LeeDJGHelfer2_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer2_37_00"); //What's it look like? Any news on the ugly giant lizards?
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer2_37_01"); //With the reinforcement from the Minental we are now well prepared.
	AI_Output(hero, self, "Info_Mod_Lares_LeeDJGHelfer2_15_02"); //Yeah, now we should be able to take them out. The spell that protected them is broken.
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer2_37_03"); //Really? Then let's not hesitate for a second.
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer2_37_04"); //Guys, did you hear that? We're ready to go.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "HEXEN");
	B_StartOtherRoutine	(self, "HEXEN");

	if (!Npc_KnowsInfo(hero, Info_Mod_Hock_NahkampfJG)) {
		B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "HEXEN");
	};

	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_7296_DJG_Drachenjaeger_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_7297_DJG_Drachenjaeger_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_7298_DJG_Butch_NW, "HEXEN");
};

INSTANCE Info_Mod_Lares_Knucker (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Knucker_Condition;
	information	= Info_Mod_Lares_Knucker_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Knucker_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_LeeDJGHelfer2))
	&& (Npc_GetDistToWP(self, "NW_BIGFARM_CROSS") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Knucker_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Knucker_37_00"); //Well, then. Now it's time for the preserves.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "KNUCKER");
	B_StartOtherRoutine	(self, "KNUCKER");

	if (!Npc_KnowsInfo(hero, Info_Mod_Hock_NahkampfJG)) {
		B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "KNUCKER");
	};

	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_7296_DJG_Drachenjaeger_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_7297_DJG_Drachenjaeger_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_7298_DJG_Butch_NW, "KNUCKER");

	Mod_798_SLD_Wolf_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_527_SLD_Torlof_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1200_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1201_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1202_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1203_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1204_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1205_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1206_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1207_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1208_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1209_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7296_DJG_Drachenjaeger_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7297_DJG_Drachenjaeger_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7298_DJG_Butch_NW.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Lares_KnuckerTot (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_KnuckerTot_Condition;
	information	= Info_Mod_Lares_KnuckerTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_KnuckerTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Knucker))
	&& (Npc_IsDead(Knucker_11001_NW))
	&& (Npc_IsDead(Feuerdrache_11002_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_KnuckerTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_KnuckerTot_37_00"); //Well, that was easier than I thought. And the boys had some movement once again. We have to do this again at some point.
	AI_Output(hero, self, "Info_Mod_Lares_KnuckerTot_15_01"); //Where's Gorn, anyway? I missed him at the fight.
	AI_Output(self, hero, "Info_Mod_Lares_KnuckerTot_37_02"); //He can watch the chapel. We don't want to experience any unpleasant surprises from the forest.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "START");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "PRESTART");
	B_StartOtherRoutine	(self, "START");

	if (!Npc_KnowsInfo(hero, Info_Mod_Hock_NahkampfJG)) {
		B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "START");
	};

	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_7296_DJG_Drachenjaeger_NW, "START");
	B_StartOtherRoutine	(Mod_7297_DJG_Drachenjaeger_NW, "START");
	B_StartOtherRoutine	(Mod_7298_DJG_Butch_NW, "START");

	Mod_798_SLD_Wolf_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_527_SLD_Torlof_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1200_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1201_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1202_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1203_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1204_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1205_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1206_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1207_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1208_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1209_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7296_DJG_Drachenjaeger_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7297_DJG_Drachenjaeger_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7298_DJG_Butch_NW.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Lares_Hexen (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Hexen_Condition;
	information	= Info_Mod_Lares_Hexen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Hexen_Condition()
{
	if (Mod_WM_HexenTot == 1)
	&& (!Npc_IsDead(DienerDesBoesen_01))
	&& (Mod_WM_GornAttack == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Hexen_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_37_00"); //Hey, the undead at Sekob's court have scattered. Now we could beat them up.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_37_01"); //If you go along, our clout should be enough.
	
	Info_ClearChoices	(Info_Mod_Lares_Hexen);

	Info_AddChoice	(Info_Mod_Lares_Hexen, "No, I've got more important things to do right now.", Info_Mod_Lares_Hexen_B);
	Info_AddChoice	(Info_Mod_Lares_Hexen, "Sure, I'm in.", Info_Mod_Lares_Hexen_A);
};

FUNC VOID Info_Mod_Lares_Hexen_B()
{
	AI_Output(hero, self, "Info_Mod_Lares_Hexen_B_15_00"); //No, I've got more important things to do right now.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_B_37_01"); //Hmm, too bad I didn't think you'd want to miss this.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_B_37_02"); //Then we'll just have to wait a little longer before we get reinforcements.

	Info_ClearChoices	(Info_Mod_Lares_Hexen);
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Lares_Hexen_A()
{
	AI_Output(hero, self, "Info_Mod_Lares_Hexen_A_15_00"); //Sure, I'm in.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_A_37_01"); //Very well, I didn't expect anything else from you. Well, here we go.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_A_37_02"); //We'll gather at the crossroads. Just like old times.

	Mod_WM_GornAttack = 1;

	Info_ClearChoices	(Info_Mod_Lares_Hexen);
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_526_SLD_Lares_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_528_SLD_Cord_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_533_SLD_Gorn_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "HEXEN");
};

INSTANCE Info_Mod_Lares_NahkampfJG (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_NahkampfJG_Condition;
	information	= Info_Mod_Lares_NahkampfJG_Info;
	permanent	= 0;
	important	= 0;
	description	= "The Rangers are looking for people. Swordsmen, preferably.";
};

FUNC INT Info_Mod_Lares_NahkampfJG_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Opferschale))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_NahkampfJG_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_NahkampfJG_15_00"); //The Rangers are looking for people. Swordsmen, preferably.
	AI_Output(self, hero, "Info_Mod_Lares_NahkampfJG_37_01"); //Hm. Here are some who spend all day bumming around. But you'll have to ask Cord.
	AI_Output(hero, self, "Info_Mod_Lares_NahkampfJG_15_02"); //Good. See you later.
};

INSTANCE Info_Mod_Lares_NahkampfJG2 (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_NahkampfJG2_Condition;
	information	= Info_Mod_Lares_NahkampfJG2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cord gave me the squat. You'll get a hunter for this.";
};

FUNC INT Info_Mod_Lares_NahkampfJG2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_NahkampfJG))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_NahkampfJG2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_NahkampfJG2_15_00"); //Cord gave me squat. You'll get a hunter for this.
	AI_Output(self, hero, "Info_Mod_Lares_NahkampfJG2_37_01"); //Go right ahead. He can go hunting with me.
	AI_Output(hero, self, "Info_Mod_Lares_NahkampfJG2_15_02"); //See you around.
};

INSTANCE Info_Mod_Lares_AndereGilde (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_AndereGilde_Condition;
	information	= Info_Mod_Lares_AndereGilde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_AndereGilde_Condition()
{
	if (Mod_Gilde > 0)
	&& (hero.guild != GIL_MIL)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lares_WillSoeldner))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_AndereGilde_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_AndereGilde_37_00"); //Hey, I hear you're from another big warehouse.
	AI_Output(hero, self, "Info_Mod_Lares_AndereGilde_15_01"); //Uh, well....
	AI_Output(self, hero, "Info_Mod_Lares_AndereGilde_37_02"); //Well, in that case, you can't join us anymore.
	AI_Output(self, hero, "Info_Mod_Lares_AndereGilde_37_03"); //The risk would be too great to represent the interests of others, if you understand.
};

INSTANCE Info_Mod_Lares_Friedensbote (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Friedensbote_Condition;
	information	= Info_Mod_Lares_Friedensbote_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Friedensbote_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Friedensbote_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_00"); //Well, have the Paladins ever sent you on holiday again?
	AI_Output(hero, self, "Info_Mod_Lares_Friedensbote_15_01"); //Yeah, sort of. I am to deliver this message from Lord Hagen personally.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_02"); //Of Lord Castrato the King's hagilein himself? You're kidding me!
	AI_Output(hero, self, "Info_Mod_Lares_Friedensbote_15_03"); //Here.

	B_GiveInvItems	(hero, self, ItWr_HagenLares, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_04"); //factual

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_05"); //... I make the suggestion... blah... the conflicts.... blah... Paladins and mercenaries.... etc. ... so, so, uh-huh... Signs of trust... Aspirant at the post of captain.... uh-huh.
	AI_Output(hero, self, "Info_Mod_Lares_Friedensbote_15_06"); //And?
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_07"); //I gotta say, you've come a hell of a long way, kid. My ass.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_08"); //Highest knight and contender for captain position in the city.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_09"); //When you brought us the Old Camp's list of needs back in the colony, I would have guessed that you would have been at the top of the king's troop.
	AI_Output(hero, self, "Info_Mod_Lares_Friedensbote_15_10"); //Now what do you say to Hagen's question?
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_11"); //If you, as future captain, vouch for compliance with the ceasefire, I see no reason why we should not adhere to it.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_12"); //The orcs in the Minental are really becoming more and more of a threat.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_13"); //It would not be a bad idea to have such a short cease-fire to calmly consolidate our position in Khorinis and to prepare ourselves for everything else.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_14"); //So you can tell Hagen that we will do our part.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_15"); //He'll be happy with you there, won't he?
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_16"); //No hard feelings. I am curious to see how this develops. Take care, now.

	B_LogEntry	(TOPIC_MOD_MILIZ_FRIEDENSBOTE, "Lares has agreed to the ceasefire. I should tell Lord Hagen about it.");
};

INSTANCE Info_Mod_Lares_Banditenfestung (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Banditenfestung_Condition;
	information	= Info_Mod_Lares_Banditenfestung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Banditenfestung_Condition()
{
	if (Mod_Irdorath == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Banditenfestung_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Banditenfestung_37_00"); //Hey, wait a minute. I wanted to warn you if you want to go south into the mountains.
	AI_Output(hero, self, "Info_Mod_Lares_Banditenfestung_15_01"); //Why? What's there?
	AI_Output(self, hero, "Info_Mod_Lares_Banditenfestung_37_02"); //Some scum from the Minental valley has settled in the fortress. So be careful when you're out there.
};

INSTANCE Info_Mod_Lares_Banditenfestung2 (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Banditenfestung2_Condition;
	information	= Info_Mod_Lares_Banditenfestung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The men in the mountains pose no danger.";
};

FUNC INT Info_Mod_Lares_Banditenfestung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_NW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Banditenfestung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_Banditenfestung2_15_00"); //The men in the mountains pose no danger. They're old acquaintances from the colony.
	AI_Output(self, hero, "Info_Mod_Lares_Banditenfestung2_37_01"); //Well, fine, if you say so, it's probably true. Then I can be reassured.

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Lares_Lehrer (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Lehrer_Condition;
	information	= Info_Mod_Lares_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Lares_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Hi))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Lares_Lehrer_37_00"); //I can help you get smarter.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, "Lares can help me to be more skillful.");
};

var int Lares_LastPetzCounter;
var int Lares_LastPetzCrime;

INSTANCE Info_Mod_Lares_PMSchulden (C_INFO)
{
	npc         	= Mod_526_SLD_Lares_NW;
	nr          	= 1;
	condition   	= Info_Mod_Lares_PMSchulden_Condition;
	information 	= Info_Mod_Lares_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Lares_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Lares_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Lares_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lares_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_00"); //Did you come to pay your fine?

	if (B_GetTotalPetzCounter(self) > Lares_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_01"); //I was wondering if you'd even dare come here!
		AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_02"); //Apparently, it's not the latest accusations!

		if (Lares_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_03"); //I warned you! The fine you have to pay now is higher!
			AI_Output (hero, self, "Info_Mod_Lares_PMAdd_15_00"); //How much?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Lares_LastPetzCounter);
		
			if (diff > 0)
			{
				Lares_Schulden = Lares_Schulden + (diff * 50);
			};
		
			if (Lares_Schulden > 1000)	{	Lares_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Lares_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_04"); //You let me down so badly!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Lares_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_05"); //Some new things have come up.
		
		if (Lares_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_06"); //Suddenly, there's no one left to accuse you of murder.
		};
		
		if (Lares_LastPetzCrime == CRIME_THEFT)
		|| ( (Lares_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_07"); //No one remembers seeing you at a theft.
		};
		
		if (Lares_LastPetzCrime == CRIME_ATTACK)
		|| ( (Lares_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_08"); //There's no more witnesses to the fact that you've ever been in a fight.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_09"); //Apparently all the charges against you have vanished.
		};
		
		AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_10"); //I don't know what happened, but I warn you: don't play games with me.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_11"); //Anyway, I've decided to waive your debt.
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_12"); //Make sure you don't get in trouble again.
	
			Lares_Schulden			= 0;
			Lares_LastPetzCounter 	= 0;
			Lares_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_13"); //One thing is clear: you still have to pay your penalty in full.
			B_Say_Gold (self, hero, Lares_Schulden);
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_14"); //So, what is it?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Lares_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Lares_PETZMASTER);
		Info_AddChoice		(Info_Mod_Lares_PMSchulden,"I haven't got enough gold!",Info_Mod_Lares_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Lares_PMSchulden,"How much was that again?",Info_Mod_Lares_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Lares_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Lares_PMSchulden,"I want to pay the penalty!",Info_Mod_Lares_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Lares_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Lares_PMSchulden_HowMuchAgain_15_00"); //How much was it again?
	B_Say_Gold (self, hero, Lares_Schulden);

	Info_ClearChoices  	(Info_Mod_Lares_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Lares_PETZMASTER);
	Info_AddChoice		(Info_Mod_Lares_PMSchulden,"I haven't got enough gold!",Info_Mod_Lares_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Lares_PMSchulden,"How much was that again?",Info_Mod_Lares_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Lares_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Lares_PMSchulden,"I want to pay the penalty!",Info_Mod_Lares_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Lares_PETZMASTER   (C_INFO)
{
	npc         	= Mod_526_SLD_Lares_NW;
	nr          	= 1;
	condition   	= Info_Mod_Lares_PETZMASTER_Condition;
	information 	= Info_Mod_Lares_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lares_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Lares_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lares_PETZMASTER_Info()
{
	Lares_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_01"); //I'm glad you came to me before things got worse for you.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_02"); //Murder is a grave offence!

		Lares_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Lares_Schulden = Lares_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_03"); //Not to mention the other things you've done.
		};

		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_06"); //I have no interest in putting you on the gallows. We're at war, and we need every man we can get.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_07"); //But it won't be easy to make people gracious again.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_08"); //You could show your repentance by paying a fine - of course the penalty must be appropriate.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_09"); //Good of you to come! You're accused of stealing! There are witnesses!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_10"); //I don't even want to talk about the other things I've heard.
		};

		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_11"); //I will not tolerate such behaviour in our country!
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_12"); //You'll have to pay a fine to make up for your crime!
		
		Lares_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_13"); //If you fight with the riffraff in town, that's one thing...
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_14"); //But if you attack the peasants or other mercenaries, I'll have to hold you accountable.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_15"); //And I don't think it had to be the case with the sheep.
		};

		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_16"); //If I let you get away with this, everybody's gonna do what they want.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_17"); //So you'll pay an appropriate fine - and the whole thing will be forgotten.
		
		Lares_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_18"); //I've heard that you've been messing with our sheep.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_19"); //You do realize I can't let this go through.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_20"); //You'll have to pay compensation!
		
		Lares_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Lares_PETZMASTER_15_21"); //How much?
	
	if (Lares_Schulden > 1000)	{	Lares_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Lares_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Lares_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Lares_PETZMASTER);
	Info_AddChoice		(Info_Mod_Lares_PETZMASTER,"I haven't got enough gold!",Info_Mod_Lares_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Lares_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Lares_PETZMASTER,"I want to pay the penalty!",Info_Mod_Lares_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Lares_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Lares_PETZMASTER_PayNow_15_00"); //I want to pay the fine!
	B_GiveInvItems (hero, self, itmi_gold, Lares_Schulden);
	AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_PayNow_37_01"); //Good! I will see to it that every farmer and mercenary learns about it - this will restore your reputation to some extent.

	B_GrantAbsolution (LOC_FARM);
	
	Lares_Schulden			= 0;
	Lares_LastPetzCounter 	= 0;
	Lares_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Lares_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Lares_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Lares_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Lares_PETZMASTER_PayLater_15_00"); //I don't have enough gold!
	AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_PayLater_37_01"); //Then see that you get the gold as soon as possible.
	AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_PayLater_37_02"); //And I'm warning you, if you owe yourself anything, it's going to get worse for you.
	
	Lares_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Lares_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Lares_Lernen (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Lernen_Condition;
	information	= Info_Mod_Lares_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me something.";
};

FUNC INT Info_Mod_Lares_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Lehrer))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_Lernen_15_00"); //Teach me something.
	AI_Output(self, hero, "Info_Mod_Lares_Lernen_37_01"); //What do you want to learn?

	Info_ClearChoices	(Info_Mod_Lares_Lernen);

	Info_AddChoice 		(Info_Mod_Lares_Lernen, DIALOG_BACK, Info_Mod_Lares_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_1);
};

FUNC VOID Info_Mod_Lares_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Lares_Lernen);
};

FUNC VOID Info_Mod_Lares_Lernen_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 140);
	
	Info_ClearChoices	(Info_Mod_Lares_Lernen);

	Info_AddChoice 		(Info_Mod_Lares_Lernen, DIALOG_BACK, Info_Mod_Lares_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_1);
};

FUNC VOID Info_Mod_Lares_Lernen_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 140);
	
	Info_ClearChoices	(Info_Mod_Lares_Lernen);

	Info_AddChoice 		(Info_Mod_Lares_Lernen, DIALOG_BACK, Info_Mod_Lares_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_1);
};

INSTANCE Info_Mod_Lares_Pickpocket (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Pickpocket_Condition;
	information	= Info_Mod_Lares_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Lares_Pickpocket_Condition()
{
	C_Beklauen	(124, ItMi_Gold, 60);
};

FUNC VOID Info_Mod_Lares_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

	Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_BACK, Info_Mod_Lares_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lares_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lares_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lares_Pickpocket);
};

FUNC VOID Info_Mod_Lares_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

		Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lares_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lares_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lares_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lares_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lares_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lares_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lares_EXIT (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_EXIT_Condition;
	information	= Info_Mod_Lares_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lares_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lares_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
