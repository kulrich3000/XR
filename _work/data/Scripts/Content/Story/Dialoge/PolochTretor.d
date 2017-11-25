INSTANCE Info_Mod_Poloch_Hi (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_Hi_Condition;
	information	= Info_Mod_Poloch_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is there a problem with you guys?";
};

FUNC INT Info_Mod_Poloch_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Poloch_Hi_Info()
{
	var C_NPC Poloch; Poloch = Hlp_GetNpc(Mod_10048_Orc_Poloch_MT);
	var C_NPC Tretor; Tretor = Hlp_GetNpc(Mod_10049_Orc_Tretor_MT);

	TRIA_Invite(Tretor);
	TRIA_Start();
	
	AI_Output(hero, self, "Info_Mod_Poloch_Hi_15_00"); //Is there a problem with you guys? You don't look happy.

	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_01"); //The problem is his butt hole. He did not want to admit that Tretor the stronger.

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_02"); //Poloch not laughing! It's as clear as river water that Tretor can't compete with Poloch.
	AI_Output(hero, self, "Info_Mod_Poloch_Hi_15_03"); //Then stand against each other! A little fistfight will sort things out.
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_04"); //Poloch and Tretor did it earlier, fought for two meals. Poloch did not know how to make Tretor, but he could not defeat him.

	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_05"); //Somehow cheat him, Tretor can't catch him. Then Tretor runs out of air and he has to stop.

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_06"); //Poloch also need a break. But when recovered, he should show Tretor!

	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_07"); //Tretor want to see this!
	AI_Output(hero, self, "Info_Mod_Poloch_Hi_15_08"); //Am I getting this right? You're both equally strong, but you don't want to admit it?
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_09"); //Without cheating from Poloch Tretor would be stronger!

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Hi_18_10"); //Don't cheat Poloch, but Tretor always run away like a cowardly rabbit.

	TRIA_Finish();

	Log_CreateTopic	(TOPIC_MOD_POLOCHTRETOR_SCHUMMLER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_POLOCHTRETOR_SCHUMMLER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_POLOCHTRETOR_SCHUMMLER, "The orcs Poloch and Tretor are in the middle of a personal confrontation. If I want to restore peace in the mountain fortress, I have to break them up.");
};

INSTANCE Info_Mod_Poloch_Egal (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_Egal_Condition;
	information	= Info_Mod_Poloch_Egal_Info;
	permanent	= 0;
	important	= 0;
	description	= "Does it matter who's stronger?";
};

FUNC INT Info_Mod_Poloch_Egal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Poloch_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Poloch_Egal_Info()
{
	var C_NPC Poloch; Poloch = Hlp_GetNpc(Mod_10048_Orc_Poloch_MT);
	var C_NPC Tretor; Tretor = Hlp_GetNpc(Mod_10049_Orc_Tretor_MT);

	TRIA_Invite(Tretor);
	TRIA_Start();
	
	AI_Output(hero, self, "Info_Mod_Poloch_Egal_15_00"); //Does it matter who's stronger?

	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Egal_18_01"); //Tretor wouldn't matter, but Poloch brag all the time with his strength until Tretor gets annoyed. Tell Poloch to stop, but don't do it.

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Egal_18_02"); //You're lying to Tretor again! Poloch never have indicated, but Tretor have pricked that poloch thin arms, and then poloch show his strength.

	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Egal_18_03"); //Tretor did not tease his invention of Poloch!
	
	AI_TurnAway(hero, self);
	
	AI_Output(hero, self, "Info_Mod_Poloch_Egal_15_04"); //(to himself) I can see that diplomacy won't get me very far here.
	
	AI_TurnToNpc(hero, self);

	TRIA_Finish();
};

INSTANCE Info_Mod_Poloch_IAmStronger (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_IAmStronger_Condition;
	information	= Info_Mod_Poloch_IAmStronger_Info;
	permanent	= 0;
	important	= 0;
	description	= "You guys are funny people. Of course I'm the strongest!";
};

FUNC INT Info_Mod_Poloch_IAmStronger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Poloch_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Poloch_IAmStronger_Info()
{
	var C_NPC Poloch; Poloch = Hlp_GetNpc(Mod_10048_Orc_Poloch_MT);
	var C_NPC Tretor; Tretor = Hlp_GetNpc(Mod_10049_Orc_Tretor_MT);

	TRIA_Invite(Tretor);
	TRIA_Start();
	
	AI_Output(hero, self, "Info_Mod_Poloch_IAmStronger_15_00"); //You guys are funny people. Of course I'm the strongest!
	
	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_IAmStronger_18_01"); //(laughs loudly) Man also make jokes.
	AI_Output(hero, self, "Info_Mod_Poloch_IAmStronger_15_02"); //I'm being serious. In battle, I'm stronger than you two bitches together.

	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_IAmStronger_18_03"); //Tretor don't find it funny anymore. Stop people immediately.
	
	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_IAmStronger_18_04"); //Poloch must agree with Tretor.

	TRIA_Finish();
};

INSTANCE Info_Mod_Poloch_Noobs (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_Noobs_Condition;
	information	= Info_Mod_Poloch_Noobs_Info;
	permanent	= 0;
	important	= 0;
	description	= "You weaklings are only very small sounds in the concert (... )";
};

FUNC INT Info_Mod_Poloch_Noobs_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Poloch_IAmStronger))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Poloch_Noobs_Info()
{
	var C_NPC Poloch; Poloch = Hlp_GetNpc(Mod_10048_Orc_Poloch_MT);
	var C_NPC Tretor; Tretor = Hlp_GetNpc(Mod_10049_Orc_Tretor_MT);

	TRIA_Invite(Tretor);
	TRIA_Start();
	
	AI_Output(hero, self, "Info_Mod_Poloch_Noobs_15_00"); //You wimps are just little sounds in the concert of the greats.
	
	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Noobs_18_01"); //That's enough! Man scream for a rubdown!

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Noobs_18_02"); //Poloch will break all his bones!

	TRIA_Finish();
	
	AI_StopProcessInfos	(self);
	
	Mod_PolochTretor = 1;
};

INSTANCE Info_Mod_Poloch_Won (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_Won_Condition;
	information	= Info_Mod_Poloch_Won_Info;
	permanent	= 0;
	important	= 0;
	description	= "I wasn't exaggerating, as you saw.";
};

FUNC INT Info_Mod_Poloch_Won_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Poloch_Noobs))
	&& (Mod_PolochTretor == 3)
	&& (Mod_Poloch_Beat && Mod_Tretor_Beat)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Poloch_Won_Info()
{
	var C_NPC Poloch; Poloch = Hlp_GetNpc(Mod_10048_Orc_Poloch_MT);
	var C_NPC Tretor; Tretor = Hlp_GetNpc(Mod_10049_Orc_Tretor_MT);

	TRIA_Invite(Tretor);
	TRIA_Start();
	
	AI_Output(hero, self, "Info_Mod_Poloch_Won_15_00"); //I wasn't exaggerating, as you saw.
	AI_Output(hero, self, "Info_Mod_Poloch_Won_15_01"); //And now leave your childish little games and help to prepare the mountain fortress.
	
	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Won_18_02"); //Humans have defeated Tretor and Poloch. You must bow to his will.

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Won_18_03"); //Poloch realize that stupid of him to argue with Tretor. He want to reconcile.
	
	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Won_18_04"); //Tretor accept offer.
	AI_Output(hero, self, "Info_Mod_Poloch_Won_15_05"); //Then we can now turn to important matters.

	TRIA_Finish();
	
	B_GivePlayerXP(200);
	B_SetTopicStatus	(TOPIC_MOD_POLOCHTRETOR_SCHUMMLER, LOG_SUCCESS);

	CurrentNQ += 1;
	
	AI_StopProcessInfos	(self);
	
	Mod_PolochTretor = 4;
};

INSTANCE Info_Mod_Poloch_Lost (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_Lost_Condition;
	information	= Info_Mod_Poloch_Lost_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Poloch_Lost_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Poloch_Noobs))
	&& (Mod_PolochTretor == 3)
	&& (Mod_Poloch_Beat == 0 || Mod_Tretor_Beat == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Poloch_Lost_Info()
{
	var C_NPC Poloch; Poloch = Hlp_GetNpc(Mod_10048_Orc_Poloch_MT);
	var C_NPC Tretor; Tretor = Hlp_GetNpc(Mod_10049_Orc_Tretor_MT);

	TRIA_Invite(Tretor);
	TRIA_Start();

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Lost_18_02"); //Big mouth stuffed by man now. Tretor did a good job.
	
	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Lost_18_01"); //Poloch and Tretor together invincible.

	TRIA_Next(Poloch);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Lost_18_02"); //Poloch realize that stupid of him to argue with Tretor. He want to reconcile.
	
	TRIA_Next(Tretor);
	
	AI_Output(self, hero, "Info_Mod_Poloch_Lost_18_01"); //Tretor accept offer.
	AI_Output(hero, self, "Info_Mod_Poloch_Lost_15_00"); //Then we can now turn to important matters.

	TRIA_Finish();
	
	B_GivePlayerXP(100);
	B_SetTopicStatus	(TOPIC_MOD_POLOCHTRETOR_SCHUMMLER, LOG_SUCCESS);

	CurrentNQ += 1;
	
	AI_StopProcessInfos	(self);
	
	Mod_PolochTretor = 4;
};

INSTANCE Info_Mod_Poloch_EXIT (C_INFO)
{
	npc		= Mod_10048_Orc_Poloch_MT;
	nr		= 1;
	condition	= Info_Mod_Poloch_EXIT_Condition;
	information	= Info_Mod_Poloch_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Poloch_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Poloch_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
