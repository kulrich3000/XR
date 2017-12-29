INSTANCE Info_Mod_Luis_Hi (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_Hi_Condition;
	information	= Info_Mod_Luis_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Your friend's in a mood.";
};

FUNC INT Info_Mod_Luis_Hi_Condition()
{
	if (Wld_IsTime(07,15,00,15))
	&& (Npc_KnowsInfo(hero, Info_Mod_Pilar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_00"); //Your friend's in a mood. Seems like you don't like sitting around here all day.
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_01"); //That would be a burden on any hunter!
	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_02"); //But you can change that. Why don't you go out of town and hunt a little?
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_03"); //You mean like a dozen other hunters?
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_04"); //The competition in front of the city is unbearable and you can't get much for a simple coat.
	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_05"); //The ice-area is quite big, there must be something to get?
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_06"); //My buddy Randi said something similar before he left, and I haven't heard from him since.
	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_07"); //What was he up to?
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_08"); //He wanted to use the old tower on the lake as a camp for the night.
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_09"); //Actually not a bad idea, but who knows what has settled there after all these years.
	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_10"); //Well, he might be earning a golden nose there.
	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_11"); //I think I'll have a look at the tower too.
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_12"); //If you want to die there too, please!
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_13"); //But you should check in with Keith first. Randi wanted to convince him of his idea.
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_14"); //Maybe you're lucky and they haven't left yet.
	AI_Output(self, hero, "Info_Mod_Luis_Hi_28_15"); //Here you have a map, with it you should get to his cabin in the forest, good luck.

	B_GiveInvItems	(self, hero, ItWr_Map_Eisgebiet_Keith, 1);

	AI_Output(hero, self, "Info_Mod_Luis_Hi_15_16"); //Thanks. If they're alive, I'll let you know.

	Log_CreateTopic	(TOPIC_MOD_EIS_ALTERTURM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_ALTERTURM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_ALTERTURM, "Luis' friend Randi has made his way to the old tower at the Eissee to look for new hunting grounds. Luis hasn't heard from him since. He has now given me a map of Keith's cabin. If I'm lucky, Randi and Keith are still there.");

	Wld_InsertNpc	(Mod_7569_OUT_Randi_EIS,	"EIS_338");

	B_KillNpc	(Mod_7569_OUT_Randi_EIS);

	Wld_InsertNpc	(Mod_7570_OUT_Bandit_EIS,	"EIS_338");
	Wld_InsertNpc	(Mod_7571_OUT_Bandit_EIS,	"EIS_338");
};

INSTANCE Info_Mod_Luis_Vigonza (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_Vigonza_Condition;
	information	= Info_Mod_Luis_Vigonza_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have some bad news for you, your buddy Randi is dead.";
};

FUNC INT Info_Mod_Luis_Vigonza_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Keith_Dalma))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_Vigonza_Info()
{
	AI_Output(hero, self, "Info_Mod_Luis_Vigonza_15_00"); //I have some bad news for you, your buddy Randi is dead.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_01"); //I was afraid of it, but I was hoping I was wrong.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_02"); //Now that I have the certainty of his death, I'm even more worried about Pilar.
	AI_Output(hero, self, "Info_Mod_Luis_Vigonza_15_03"); //Now that you're saying it, where is he?
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_04"); //He ran away recently, said he can't stand it here anymore.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_05"); //He wanted to see his brother, he lives near the Goblin cemetery, near the crumbling watchtower.
	AI_Output(hero, self, "Info_Mod_Luis_Vigonza_15_06"); //What the hell is a goblin cemetery? I thought the creatures didn't even have the brains to blow them away. How do they get the idea to build a cemetery?
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_07"); //This also applies to the normal goblins, but a few years ago there was a demon summoner among them.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_08"); //Apparently, he taught the others to build a cemetery.
	AI_Output(hero, self, "Info_Mod_Luis_Vigonza_15_09"); //That doesn't sound very good to me.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_10"); //Don't panic, we defeated the goblins a long time ago in a battle at one of the watchtowers.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_11"); //When the goblins tried to take him, we almost killed the entire clan. And the few who survived just wanted to bury their dead.
	AI_Output(hero, self, "Info_Mod_Luis_Vigonza_15_12"); //And the demon charmer?
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_13"); //He's dead, too. He even has the biggest tombstone in the cemetery.
	AI_Output(self, hero, "Info_Mod_Luis_Vigonza_28_14"); //If you want, I'll show you the cemetery. I'm going to Pilar's anyway, and it's on the way.
	AI_Output(hero, self, "Info_Mod_Luis_Vigonza_15_15"); //All right, all right.

	Log_CreateTopic	(TOPIC_MOD_EIS_FRIEDHOF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_FRIEDHOF, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_FRIEDHOF, "Pilar is with his brother near a goblin cemetery. Luis wants to see him and offered to show me the way to the cemetery.");

	self.aivar[AIV_Partymember] = TRUE;

	B_StartOtherRoutine	(self, "FRIEDHOF");
};

INSTANCE Info_Mod_Luis_AtFriedhof (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_AtFriedhof_Condition;
	information	= Info_Mod_Luis_AtFriedhof_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Luis_AtFriedhof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_Vigonza))
	&& (Npc_GetDistToWP(self, "FRIEDHOFF_3") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_AtFriedhof_Info()
{
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof_28_00"); //Well, here we are. There's not much going on here today.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof_28_01"); //Come with me, I'll show you the demon charmer's grave.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FRIEDHOF2");
};

INSTANCE Info_Mod_Luis_AtFriedhof2 (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_AtFriedhof2_Condition;
	information	= Info_Mod_Luis_AtFriedhof2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Luis_AtFriedhof2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_AtFriedhof))
	&& (Npc_GetDistToWP(self, "FRIEDHOFF_6") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_AtFriedhof2_Info()
{
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof2_28_00"); //Here it is here. It's kind of strange how a clever goblin can move the goblin mass to something like the construction of this cemetery.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof2_28_01"); //What was that...? Did you hear that, too?!

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Gobbo_Warrior, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Warrior, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Warrior, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Warrior, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Warrior, "FRIEDHOFF_7");
	Wld_InsertNpc	(Gobbo_Warrior, "FRIEDHOFF_7");
};

INSTANCE Info_Mod_Luis_AtFriedhof3 (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_AtFriedhof3_Condition;
	information	= Info_Mod_Luis_AtFriedhof3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Luis_AtFriedhof3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_AtFriedhof2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_AtFriedhof3_Info()
{
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof3_28_00"); //Damn, they just scared me. I really didn't hear them coming.
	AI_Output(hero, self, "Info_Mod_Luis_AtFriedhof3_15_01"); //Maybe they didn't like it so much that we were in their graveyard.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof3_28_02"); //Oh, and if so. There's only corpses here anyway.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof3_28_03"); //They better take care of their turnip fields than hang around here all day.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof3_28_04"); //Let's go to Pilar's brother's cabin now.

	B_LogEntry	(TOPIC_MOD_EIS_FRIEDHOF, "At the cemetery we were surprised by some goblins. Luis will lead me to Pilar's brother now.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PILARSBRUDER");
};

INSTANCE Info_Mod_Luis_AtFriedhof4 (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_AtFriedhof4_Condition;
	information	= Info_Mod_Luis_AtFriedhof4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Luis_AtFriedhof4_Condition()
{
	if (Mod_Pilar_Gobbos == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_AtFriedhof4_Info()
{
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof4_28_00"); //Let me guess, we're just gonna be late, aren't we?
	AI_Output(hero, self, "Info_Mod_Luis_AtFriedhof4_15_01"); //Looks that way. I do miss the demon charmer, though. No skeleton came out of his grave.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof4_28_02"); //Mhm... which could mean he may not be dead after all.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof4_28_03"); //We should have a look at the crumbling tower. Maybe there's a clue to his whereabouts.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof4_28_04"); //I'll have the guards take positions here, in case some of them come out of the ground.

	B_LogEntry	(TOPIC_MOD_EIS_FRIEDHOF, "Luis arrived at the cemetery with two guards. The guards will stay here for a while, while we will see the demon summoner at the tower.");

	AI_StopProcessInfos	(self);

	self.aivar[AIV_Partymember] = TRUE;

	B_StartOtherRoutine	(self, "ATTURM");
	B_StartOtherRoutine	(Mod_7566_OUT_Pilar_EIS, "START");

	Wld_InsertNpc	(Gobbo_Eis_Beschwoerer,	"NORTDGEBIET_88");
	Wld_InsertNpc	(Gobbo_Skeleton,	"NORTDGEBIET_88");
	Wld_InsertNpc	(Gobbo_Skeleton,	"NORTDGEBIET_88");
	Wld_InsertNpc	(Gobbo_Skeleton,	"NORTDGEBIET_88");
};

INSTANCE Info_Mod_Luis_AtFriedhof5 (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_AtFriedhof5_Condition;
	information	= Info_Mod_Luis_AtFriedhof5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Luis_AtFriedhof5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_AtFriedhof4))
	&& (Npc_IsDead(Gobbo_Eis_Beschwoerer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_AtFriedhof5_Info()
{
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof5_28_00"); //Let's hope there was only one of them.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof5_28_01"); //If they were all that strong, we'd have a hell of a problem.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof5_28_02"); //I think the goblins have had enough for today. I'm going back to the tavern now.
	AI_Output(self, hero, "Info_Mod_Luis_AtFriedhof5_28_03"); //Oh, yeah, I want you to check in with Thys, too. I think he wants to thank you.

	B_LogEntry	(TOPIC_MOD_EIS_FRIEDHOF, "The demon charmer is history and Luis returns to the tavern. I'm supposed to check in with Thys.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Luis_Heiltrank (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_Heiltrank_Condition;
	information	= Info_Mod_Luis_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(give healing potion)";
};

FUNC INT Info_Mod_Luis_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Luis_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	Info_AddChoice	(Info_Mod_Luis_Heiltrank, DIALOG_BACK, Info_Mod_Luis_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Essence of Healing", Info_Mod_Luis_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Elixir of Healing", Info_Mod_Luis_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Extract of Healing", Info_Mod_Luis_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Essence of Healing", Info_Mod_Luis_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Drink of light healing", Info_Mod_Luis_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Light healing potion", Info_Mod_Luis_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Luis_Heiltrank, "Potion of Quick Healing", Info_Mod_Luis_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Luis_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Luis_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Luis_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Luis_Pickpocket (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_Pickpocket_Condition;
	information	= Info_Mod_Luis_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Luis_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Luis_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Luis_Pickpocket);

	Info_AddChoice	(Info_Mod_Luis_Pickpocket, DIALOG_BACK, Info_Mod_Luis_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Luis_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Luis_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Luis_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Luis_Pickpocket);
};

FUNC VOID Info_Mod_Luis_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Luis_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Luis_Pickpocket);

		Info_AddChoice	(Info_Mod_Luis_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Luis_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Luis_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Luis_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Luis_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Luis_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Luis_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Luis_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Luis_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Luis_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Luis_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Luis_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Luis_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Luis_EXIT (C_INFO)
{
	npc		= Mod_7567_OUT_Luis_EIS;
	nr		= 1;
	condition	= Info_Mod_Luis_EXIT_Condition;
	information	= Info_Mod_Luis_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Luis_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Luis_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
