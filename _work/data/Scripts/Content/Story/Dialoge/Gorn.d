INSTANCE Info_Mod_Gorn_Hi (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hi_Condition;
	information	= Info_Mod_Gorn_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gorn_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Hi_12_00"); //I don't believe it.... you?! No monster or arch-demon can kill you....
	AI_Output(hero, self, "Info_Mod_Gorn_Hi_15_01"); //Nice to see you, too.
	AI_Output(self, hero, "Info_Mod_Gorn_Hi_12_02"); //Man... some memories come alive. What we have experienced together.
	AI_Output(self, hero, "Info_Mod_Gorn_Hi_12_03"); //It's like it was only yesterday that we kicked the guards out of our mine with an ass kick.
	AI_Output(hero, self, "Info_Mod_Gorn_Hi_15_04"); //Or together they killed the fat troll in the monastery fortress.
	AI_Output(self, hero, "Info_Mod_Gorn_Hi_12_05"); //Sure, how could I forget that fat bitch? And again you're in the right place at the right time.
	AI_Output(hero, self, "Info_Mod_Gorn_Hi_15_06"); //Why?
	AI_Output(self, hero, "Info_Mod_Gorn_Hi_12_07"); //Well, I was just about to take the cursed fortress up there. There should be lots of treasures to fetch, but also full of undead bastards.
	AI_Output(self, hero, "Info_Mod_Gorn_Hi_12_08"); //Hard work, I thought to myself. Until you came. It was supposed to be a walk with you.
};

INSTANCE Info_Mod_Gorn_GotoCastlemine (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_GotoCastlemine_Condition;
	information	= Info_Mod_Gorn_GotoCastlemine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well, let's pay the undead a visit.";
};

FUNC INT Info_Mod_Gorn_GotoCastlemine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_GotoCastlemine_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_GotoCastlemine_15_00"); //Well, let's pay the undead a visit.
	AI_Output(self, hero, "Info_Mod_Gorn_GotoCastlemine_12_01"); //I expected nothing less from you. Let's show these bastards.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "CASTLEMINE");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Gorn_AtCastlemine (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_AtCastlemine_Condition;
	information	= Info_Mod_Gorn_AtCastlemine_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_AtCastlemine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_GotoCastlemine))
	&& (Npc_GetDistToWP(hero, "NW_CASTLEMINE_HUT_10_B") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_AtCastlemine_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_12_00"); //So that's it, then. A few gold coins have come together, but not quite as much as I had hoped for.
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_12_01"); //And the mine seems to be buried too. In any case, there is nothing more to get here.
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_12_02"); //But it was still a lot of fun to be on the road with you again.... and reason enough to meet the other guys to discuss some things.
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_12_03"); //Can you do me a favor?
	AI_Output(hero, self, "Info_Mod_Gorn_AtCastlemine_15_04"); //Sure, what's it about?
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_12_05"); //Tell Diego, Milten and Lester that we'll meet at the Dead Harpie tavern.
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_12_06"); //Since you've become one of us, you can come too.
	AI_Output(self, hero, "Info_Mod_Gorn_AtCastlemine_12_07"); //And if you ever need help, you can come to us, then we will try to help you.
	
	Log_CreateTopic	(TOPIC_MOD_TREFFEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TREFFEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TREFFEN, "Gorn asked me to tell Diego, Milten and Lester that they want to meet at the tavern' Zur Toten Harpie'.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Gorn_Daemonisch (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Daemonisch_Condition;
	information	= Info_Mod_Gorn_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Daemonisch))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Daemonisch3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Daemonisch_12_00"); //Hey, looking for adventure again?
	AI_Output(hero, self, "Info_Mod_Gorn_Daemonisch_15_01"); //No, actually, I just wanted to ask around a little bit about the extraordinary things that have been going on lately.
	AI_Output(self, hero, "Info_Mod_Gorn_Daemonisch_12_02"); //Oh, Pepe went into the woods with some mercenaries to hunt wolves and then went crazy and left.
	AI_Output(self, hero, "Info_Mod_Gorn_Daemonisch_12_03"); //Lares can tell you more about it. Anyway, the boys from the woods have been eating for three since then.
	AI_Output(self, hero, "Info_Mod_Gorn_Daemonisch_12_04"); //Thekla hardly ever follows the cooking and is already mad.
	AI_Output(hero, self, "Info_Mod_Gorn_Daemonisch_15_05"); //Then there's always a reason for conversation. Well, see you soon.
	AI_Output(self, hero, "Info_Mod_Gorn_Daemonisch_12_06"); //Take care, now.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Gorn told me that Lares had sent a mercenary to chase wolves with Pepe in the forest, where Pepe was crazy. Corresponding mercenaries are supposed to eat the hair off the head since the Thekla.");
};

INSTANCE Info_Mod_Gorn_Irdorath (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Irdorath_Condition;
	information	= Info_Mod_Gorn_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "I will have to go to an island by ship in the harbour (...) )";
};

FUNC INT Info_Mod_Gorn_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Irdorath_15_00"); //I'm going to have to take the ship to an island in the harbour to get one step closer to Xeres' destruction.
	AI_Output(hero, self, "Info_Mod_Gorn_Irdorath_15_01"); //Can you think of anyone I could recruit for the crew?
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath_12_02"); //A trip to an island? Man, you're always good for a surprise...
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath_12_03"); //Well, the Orcfighter Cord would certainly be there.
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath_12_04"); //He trains like a madman all day long and would certainly not miss the chance of such an adventure.
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath_12_05"); //And then there's Bennet, because it wouldn't be bad to have a blacksmith on board if you need some sharp blades.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Gorn gave me Orkjäger Cord and Schmied Bennet as potential companions.");
};

INSTANCE Info_Mod_Gorn_Irdorath2 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Irdorath2_Condition;
	information	= Info_Mod_Gorn_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "And you certainly won't let it take you to come either....";
};

FUNC INT Info_Mod_Gorn_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Irdorath2_15_00"); //And you certainly won't let it take you to come either....
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath2_12_01"); //You say it. On an adventurous trip like this, I won't say no...
	AI_Output(hero, self, "Info_Mod_Gorn_Irdorath2_15_02"); //Then I'm happy to welcome you aboard.
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath2_12_03"); //I'll be on my way to the harbour right away.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Excellent, Gorn will swing the axe for me when we sail to the island.");

	B_GivePlayerXP	(150);

	Mod_GornDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Gorn_Irdorath3 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Irdorath3_Condition;
	information	= Info_Mod_Gorn_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems we're too many.";
};

FUNC INT Info_Mod_Gorn_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_GornDabei == 1)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Irdorath3_15_00"); //I'm sorry, but it seems we're too many. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath3_12_01"); //Too bad. I'll go back then. You know where to find me if there's ever gonna be a seat left.

	Mod_GornDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Gorn_Irdorath4 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Irdorath4_Condition;
	information	= Info_Mod_Gorn_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I can give you a ride.";
};

FUNC INT Info_Mod_Gorn_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_GornDabei == 0)
	&& (Mod_CedricDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Irdorath4_15_00"); //I can give you a ride. There's room on the ship.
	AI_Output(self, hero, "Info_Mod_Gorn_Irdorath4_12_01"); //Very well, I'll be back at the harbour.

	Mod_GornDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Gorn_Treffen (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Treffen_Condition;
	information	= Info_Mod_Gorn_Treffen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Treffen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Treffen))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lester_Treffen))
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_Treffen))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gorn_Hi))
	&& (Npc_GetDistToWP(self, "NW_TAVERNE_IN_RANGERMEETING_LARES") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Treffen_Info()
{
	var c_npc Gorn; Gorn = Hlp_GetNpc(Mod_533_SLD_Gorn_NW);
	var c_npc Diego; Diego = Hlp_GetNpc(Mod_538_RDW_Diego_NW);
	var c_npc Lester; Lester = Hlp_GetNpc(Mod_557_PSINOV_Lester_NW);
	var c_npc Milten; Milten = Hlp_GetNpc(Mod_534_KDF_Milten_NW);

	TRIA_Invite(Diego);
	TRIA_Invite(Lester);
	TRIA_Invite(Milten);
	TRIA_Start();

	TRIA_Next(Gorn);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_12_00"); //It's nice of you all to come. I thought it was time for another meeting. How have you been?

	TRIA_Next(Lester);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_13_01"); //I've spent the last few weeks alone in a cave. Only our friend here came to visit me. I feel like something new.

	TRIA_Next(Milten);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_03_02"); //I'm comfortable with the Fire Magicians. However, there are not many ways to escape the walls of the monastery, so I am not well informed about everything that is going on outside.

	TRIA_Next(Diego);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_11_03"); //There are more and more signs that we all face the worst.

	TRIA_Next(Gorn);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_12_04"); //(laughs) Since when do you try to be a prophet, Diego?
	AI_Output(hero, self, "Info_Mod_Gorn_Treffen_15_05"); //He might be right. Xardas is also worried. With the death of the sleeper, we have not eliminated all the misfortune.

	TRIA_Next(Milten);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_03_06"); //What awaits us?
	AI_Output(hero, self, "Info_Mod_Gorn_Treffen_15_07"); //It's still in the dark. But it will show up soon enough.

	TRIA_Next(Gorn);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_12_08"); //Let it come! I can't imagine anything we're not up to.

	TRIA_Next(Diego);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_11_09"); //Your imagination has never been better...

	TRIA_Next(Lester);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_13_10"); //In fact, it does not sound as if we have been granted the peace and quiet we deserve.

	TRIA_Next(Milten);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_03_11"); //Admit it, you're in the middle of it again.
	AI_Output(hero, self, "Info_Mod_Gorn_Treffen_15_12"); //It looks like it. I think I have more enemies than I intended.

	TRIA_Next(Gorn);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_12_13"); //You know, I hope you don't have to go through this alone. You can count on us if we all die.

	TRIA_Next(Milten);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_03_14"); //You shouldn't have put it so drastically.

	TRIA_Next(Lester);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_13_15"); //And until then?

	TRIA_Next(Diego);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_11_16"); //We'll wait and see.

	TRIA_Next(Gorn);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_12_17"); //And the axe ready.

	TRIA_Next(Milten);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_03_18"); //And the magic fresh in your memory.
	AI_Output(hero, self, "Info_Mod_Gorn_Treffen_15_19"); //I'm touched. Shall we still solemnly swear our friendship with an oath or something?

	TRIA_Next(Diego);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_11_20"); //(laughs) Let it go. I hate contracts, even with my best friends.

	TRIA_Next(Lester);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_13_21"); //Then we stay like this: When we need help, we are there for each other.

	TRIA_Next(Gorn);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_12_22"); //Aye.

	TRIA_Next(Milten);
	
	AI_Output(self, hero, "Info_Mod_Gorn_Treffen_03_23"); //Sure. Gladly. And if our danger is open, I'd like to know. The monastery is not the first place in the world to know what's going on.
	AI_Output(hero, self, "Info_Mod_Gorn_Treffen_15_24"); //All right, all right. (pause) Yeah, uh, take it easy then, for now. See you around.

	TRIA_Finish();

	B_LogEntry	(TOPIC_MOD_TREFFEN, "The meeting is over and the following things have come to an end: Diego stays in Khorinis, Lester probably goes back to the Minental, Milten stays in the monastery and Gorn goes back to Lares on Onar's farm.");

	B_GivePlayerXP	(400);

	AI_StopProcessInfos	(hero);

	B_SetTopicStatus	(TOPIC_MOD_TREFFEN, LOG_SUCCESS);

	CurrentNQ += 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_33);
};

INSTANCE Info_Mod_Gorn_Hexen_04 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hexen_04_Condition;
	information	= Info_Mod_Gorn_Hexen_04_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Hexen_04_Condition()
{
	if (Mod_WM_Boeden >= 14)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Gorn_Hexen))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lares_Hexen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Hexen_04_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_04_12_00"); //Oh, man, those horrible monsters on the plateau, we'd rather not dare.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_04_12_01"); //The undead on Sekobs may not be without them, but they can still be created.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_04_12_02"); //Lares hesitates but something else, waits for the right moment to attack....
};

INSTANCE Info_Mod_Gorn_Hexen (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hexen_Condition;
	information	= Info_Mod_Gorn_Hexen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Hexen_Condition()
{
	if (Mod_WM_HexenTot == 1)
	&& (!Npc_IsDead(DienerDesBoesen_01))
	&& (Mod_WM_GornAttack == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Hexen_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_12_00"); //Hey, the undead at Sekob's court have scattered. Now we could beat them up.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_12_01"); //If you go along with it, our clout should be enough.
	
	Info_ClearChoices	(Info_Mod_Gorn_Hexen);

	Info_AddChoice	(Info_Mod_Gorn_Hexen, "No, I've got more important things to do right now.", Info_Mod_Gorn_Hexen_B);
	Info_AddChoice	(Info_Mod_Gorn_Hexen, "Sure, I'm in.", Info_Mod_Gorn_Hexen_A);
};

FUNC VOID Info_Mod_Gorn_Hexen_B()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Hexen_B_15_00"); //No, I've got more important things to do right now.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_B_12_01"); //Hmm, too bad I didn't think you'd want to miss this.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_B_12_02"); //Then we'll just have to wait a little longer before we get reinforcements.

	Info_ClearChoices	(Info_Mod_Gorn_Hexen);
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Gorn_Hexen_A()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Hexen_A_15_00"); //Sure, I'm in.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_A_12_01"); //Very well, I didn't expect anything else from you. Well, here we go.
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_A_12_02"); //We'll gather at the crossroads. Just like old times.

	Mod_WM_GornAttack = 1;

	Info_ClearChoices	(Info_Mod_Gorn_Hexen);
	
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

INSTANCE Info_Mod_Gorn_Hexen_02 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hexen_02_Condition;
	information	= Info_Mod_Gorn_Hexen_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Hexen_02_Condition()
{
	if (Mod_WM_HexenTot == 1)
	&& (!Npc_IsDead(DienerDesBoesen_01))
	&& (Npc_GetDistToWP(self, "NW_BIGFARM_CROSS") < 500)
	&& (Mod_WM_GornAttack == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Hexen_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_02_12_00"); //Come on, let's kick this undead man's butt.
	
	Mod_WM_GornAttack = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "DIENER");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "DIENER");
	B_StartOtherRoutine	(Mod_526_SLD_Lares_NW, "DIENER");
	B_StartOtherRoutine	(Mod_528_SLD_Cord_NW, "DIENER");
	B_StartOtherRoutine	(Mod_533_SLD_Gorn_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "DIENER");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "DIENER");

	Mod_798_SLD_Wolf_NW.aivar[AIV_Partymember] = TRUE;
	Mod_527_SLD_Torlof_NW.aivar[AIV_Partymember] = TRUE;
	Mod_526_SLD_Lares_NW.aivar[AIV_Partymember] = TRUE;
	Mod_528_SLD_Cord_NW.aivar[AIV_Partymember] = TRUE;
	Mod_533_SLD_Gorn_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1200_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1201_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1202_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1203_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1204_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1205_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1206_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1207_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1208_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
	Mod_1209_SLD_Soeldner_NW.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Gorn_Hexen_03 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hexen_03_Condition;
	information	= Info_Mod_Gorn_Hexen_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Hexen_03_Condition()
{
	if (Mod_WM_HexenTot == 1)
	&& (Npc_IsDead(DienerDesBoesen_01))
	&& (Npc_GetDistToWP(self, "NW_FARM4_WOOD_MONSTER_MORE_03") < 500)
	&& (Mod_WM_GornAttack == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Hexen_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Hexen_03_12_00"); //Well, we showed them. It was a pleasure to have fought at your side again.

	B_GivePlayerXP	(200);
	
	Mod_WM_GornAttack = 3;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "START");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "PRESTART");
	B_StartOtherRoutine	(Mod_526_SLD_Lares_NW, "START");
	B_StartOtherRoutine	(Mod_528_SLD_Cord_NW, "START");
	B_StartOtherRoutine	(Mod_533_SLD_Gorn_NW, "START");
	B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "START");

	Mod_798_SLD_Wolf_NW.aivar[AIV_Partymember] = FALSE;
	Mod_527_SLD_Torlof_NW.aivar[AIV_Partymember] = FALSE;
	Mod_526_SLD_Lares_NW.aivar[AIV_Partymember] = FALSE;
	Mod_528_SLD_Cord_NW.aivar[AIV_Partymember] = FALSE;
	Mod_533_SLD_Gorn_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1200_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1201_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1202_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1203_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1204_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1205_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1206_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1207_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1208_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
	Mod_1209_SLD_Soeldner_NW.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Gorn_BalrogGigantTot (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_BalrogGigantTot_Condition;
	information	= Info_Mod_Gorn_BalrogGigantTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_BalrogGigantTot_Condition()
{
	if (Mod_WM_CronosAttack == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_BalrogGigantTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_BalrogGigantTot_12_00"); //Hey, I hear the monsters and giants on the plateau are gone... and somehow I think you were involved.
	AI_Output(self, hero, "Info_Mod_Gorn_BalrogGigantTot_12_01"); //Great performance. I would have liked to be at the party when you spanked those monsters.
};

INSTANCE Info_Mod_Gorn_Drachen (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Drachen_Condition;
	information	= Info_Mod_Gorn_Drachen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Drachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Drachen_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Drachen_12_00"); //Man, oh, man. In the Minental, one believes to have defied all the challenges that exist in the world and then these giant lizards are on the doorstep.
	AI_Output(hero, self, "Info_Mod_Gorn_Drachen_15_01"); //Well, without new challenges everything would be monotonous and pointless.
	AI_Output(self, hero, "Info_Mod_Gorn_Drachen_12_02"); //As always imperturbable before any great task. Yeah, I guess you're right.
	AI_Output(self, hero, "Info_Mod_Gorn_Drachen_12_03"); //And I'm also sure that there will be another chance to have an adventure together. Take care of yourself.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Gorn_Knucker (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Knucker_Condition;
	information	= Info_Mod_Gorn_Knucker_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well, you weren't at the party?";
};

FUNC INT Info_Mod_Gorn_Knucker_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_KnuckerTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Knucker_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Knucker_15_00"); //Well, you weren't at the party? It's not usually your way of avoiding an exchange of blows.
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_12_01"); //Oh, you're a good talker. Me and Cord were ordered to keep watch on the edge of the forest since some sheep died and two peasants disappeared.
	AI_Output(hero, self, "Info_Mod_Gorn_Knucker_15_02"); //Dead sheep, missing peasants? Sounds to me like young wolves and runaway peasants make you stand in your stomach.
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_12_03"); //Yes, if wolves are able to suck the sheep's blood to the last drop, they are.
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_12_04"); //Just like the peasants who went into the woods at night like in a trance and disappeared....
	AI_Output(hero, self, "Info_Mod_Gorn_Knucker_15_05"); //Hmm, that sounds a little more mysterious, of course. Wouldn't that be another opportunity for an adventure we could have together?
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_12_06"); //You mean, go to the woods and see? I don't know about that. At least I'd have to leave my post for that...
	AI_Output(hero, self, "Info_Mod_Gorn_Knucker_15_07"); //Come on, because of the five minutes we spend exploring the forest....
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_12_08"); //And if any of the demonic creatures that hang around here these days attack during this? No, it really doesn't work that way.
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_12_09"); //Hmm, but I'll be relieved next night. Then we can get started and make the forest insecure.
	AI_Output(hero, self, "Info_Mod_Gorn_Knucker_15_10"); //Okay, I'll pick you up then. Then, hopefully, you won't be squeezing any more.
	AI_Output(self, hero, "Info_Mod_Gorn_Knucker_12_11"); //What you can count on.

	Log_CreateTopic	(TOPIC_MOD_NL_GORN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_GORN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_GORN, "Gorn was condemned to guarding the forest, as sheep lost their lives and farmers disappeared. In the evening I want to explore with him what's going on there.");
};

INSTANCE Info_Mod_Gorn_WaldSpaziergang (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_WaldSpaziergang_Condition;
	information	= Info_Mod_Gorn_WaldSpaziergang_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_WaldSpaziergang_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Knucker))
	&& (Wld_IsTime(20,00,04,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_WaldSpaziergang_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_WaldSpaziergang_12_00"); //Oh, there you are. Shall we go then?
	AI_Output(hero, self, "Info_Mod_Gorn_WaldSpaziergang_15_01"); //Yeah, let's not waste any more time.
	AI_Output(self, hero, "Info_Mod_Gorn_WaldSpaziergang_12_02"); //All right, follow me.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "DRAGON");
	B_StartOtherRoutine	(self, "WALDTOUR");

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	Wld_InsertNpc	(Warg, "NW_CRYPT_MONSTER07");
	Wld_InsertNpc	(Warg, "NW_CRYPT_MONSTER07");
	Wld_InsertNpc	(Warg, "NW_CRYPT_MONSTER07");
};

INSTANCE Info_Mod_Gorn_NichtsLosImWald (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_NichtsLosImWald_Condition;
	information	= Info_Mod_Gorn_NichtsLosImWald_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_NichtsLosImWald_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_WaldSpaziergang))
	&& (Npc_GetDistToWP(hero, "NW_CRYPT_MONSTER07") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_NichtsLosImWald_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_NichtsLosImWald_12_00"); //Well, there wasn't much going on here, except for the few creatures.
	AI_Output(self, hero, "Info_Mod_Gorn_NichtsLosImWald_12_01"); //We should stop by the crypt sometime.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "VORKRYPTA");

	Wld_InsertNpc	(Zombie_Hel_01, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_02, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_03, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_04, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_05, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_06, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_07, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_08, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_09, "NW_CRYPT_01");
	Wld_InsertNpc	(Zombie_Hel_10, "NW_CRYPT_01");
};

INSTANCE Info_Mod_Gorn_VorKrypta (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_VorKrypta_Condition;
	information	= Info_Mod_Gorn_VorKrypta_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_VorKrypta_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_NichtsLosImWald))
	&& (Npc_GetDistToWP(hero, "NW_CRYPT_MONSTER01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_VorKrypta_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_VorKrypta_12_00"); //My ass, do you see all these undead in the cemetery of the crypt? Maybe they have something to do with the disappearance of the peasants.
	AI_Output(self, hero, "Info_Mod_Gorn_VorKrypta_12_01"); //Come on, let's get' em.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BEIKRYPTA");
};

INSTANCE Info_Mod_Gorn_Hel (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hel_Condition;
	information	= Info_Mod_Gorn_Hel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_Hel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hel_GhuleFutsch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Hel_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_Hel_12_00"); //Where the hell did she go?
	AI_Output(hero, self, "Info_Mod_Gorn_Hel_15_01"); //Maybe she's holed up in the crypt. Let's go downstairs.
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KRYPTA");
};

INSTANCE Info_Mod_Gorn_WaldFertig (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_WaldFertig_Condition;
	information	= Info_Mod_Gorn_WaldFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_WaldFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hel_InKrypta))
	&& (Npc_IsDead(Mod_7299_OUT_Hel_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_WaldFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_WaldFertig_12_00"); //(except for breath) Boah, she might have been a hard beast. Even Thekla is gentle as a lamb against them.
	AI_Output(self, hero, "Info_Mod_Gorn_WaldFertig_12_01"); //Well, I won't be laughing at the martial arts of women that fast.
	AI_Output(hero, self, "Info_Mod_Gorn_WaldFertig_15_02"); //Well, in any case, we may have found the cause of the events in this blood-thirsty demoness.
	AI_Output(self, hero, "Info_Mod_Gorn_WaldFertig_12_03"); //And now I can finally pursue other things than standing idly in front of the chapel all day long. Hey, I owe you one.
	AI_Output(hero, self, "Info_Mod_Gorn_WaldFertig_15_04"); //Oh, let it go. (joyfully) To be able to do another adventure with you and kick some demons and undead in the butt was reward enough for me.
	AI_Output(self, hero, "Info_Mod_Gorn_WaldFertig_12_05"); //Well, see you next time. Take care of yourself.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "PRESTART");

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Gorn_ZweihandAlsEinhand (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_ZweihandAlsEinhand_Condition;
	information	= Info_Mod_Gorn_ZweihandAlsEinhand_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_ZweihandAlsEinhand_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Hi))
	&& (hero.attribute[ATR_STRENGTH] >= 120)
	&& (hero.hitChance[NPC_TALENT_1H] >= 50)
	&& (hero.hitChance[NPC_TALENT_2H] >= 50)
	&& ((Mod_Gilde == 2)
	|| (Mod_Gilde == 3)
	|| (Mod_Gilde == 5)
	|| (Mod_Gilde == 19)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16)
	|| (Mod_Gilde == 17)
	|| (Mod_Gilde == 18))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_ZweihandAlsEinhand_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand_12_00"); //I see you're still using two-handed people with both hands, mate.
	AI_Output(hero, self, "Info_Mod_Gorn_ZweihandAlsEinhand_15_01"); //Yeah. What's wrong with that?
	AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand_12_02"); //It's impossible for a regular warrior, but guys as strong as you and I can lead two-handed men like one-handed men.
	AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand_12_03"); //If you feel like it, I'll show you how to do it.
};

INSTANCE Info_Mod_Gorn_ZweihandAlsEinhand2 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_ZweihandAlsEinhand2_Condition;
	information	= Info_Mod_Gorn_ZweihandAlsEinhand2_Info;
	permanent	= 1;
	important	= 0;
};

FUNC INT Info_Mod_Gorn_ZweihandAlsEinhand2_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Gorn_ZweihandAlsEinhand2.description = "Show me how to use two-handed people as one-handed people. (500 Gold)";
	}
	else
	{
		Info_Mod_Gorn_ZweihandAlsEinhand2.description = "Show me how to use two-handed people as one-handed people. (5 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_ZweihandAlsEinhand))
	&& (ZweihandAlsEinhand_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_ZweihandAlsEinhand2_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_ZweihandAlsEinhand2_15_00"); //Show me how to use two-handed people as one-handed people.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 5))
	{
		AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand2_12_01"); //The most important thing is that the feeling of one-handed and two-handed people is different.
		AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand2_12_02"); //The weapon's center of gravity is further away from your body in two-handed mode.
		AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand2_12_03"); //That's why you should be careful not to stretch your arm completely, because then the weight of the weapon will be too much.
		AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand2_12_04"); //Wave your arm slightly and you shouldn't have any problems.
		AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand2_12_05"); //What are you waiting for? I want to see you practice!

		ZweihandAlsEinhand_Perk = TRUE;

		if (hero.HitChance[NPC_TALENT_1H] >= 60)
		{
			Mdl_ApplyOverlayMds	(hero, "HUMANS_1H2HST2.MDS");
		}
		else if (hero.HitChance[NPC_TALENT_1H] >= 30)
		{
			Mdl_ApplyOverlayMds	(hero, "HUMANS_1H2HST1.MDS");
		};

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 500);
		}
		else
		{
			hero.lp -= 5;
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Gorn_ZweihandAlsEinhand2_12_06"); //Come back when you're ready.
	};
};

INSTANCE Info_Mod_Gorn_Standfest (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Standfest_Condition;
	information	= Info_Mod_Gorn_Standfest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you know how I can prevent certain enemies from throwing me through the air?";
};

FUNC INT Info_Mod_Gorn_Standfest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Hi))
	&& (hero.attribute[ATR_STRENGTH] >= 60)
	&& (hero.attribute[ATR_DEXTERITY] >= 60)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Standfest_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Standfest_15_00"); //Do you know how I can prevent certain enemies from throwing me through the air?
	AI_Output(self, hero, "Info_Mod_Gorn_Standfest_12_01"); //There is a way. Do you have some time?
};

INSTANCE Info_Mod_Gorn_Standfest2 (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Standfest2_Condition;
	information	= Info_Mod_Gorn_Standfest2_Info;
	permanent	= 1;
	important	= 0;
};

FUNC INT Info_Mod_Gorn_Standfest2_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Gorn_Standfest2.description = "How can I become more stable? (500 Gold)";
	}
	else
	{
		Info_Mod_Gorn_Standfest2.description = "How can I become more stable? (5 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Standfest))
	&& (Standfest_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Standfest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Standfest2_15_00"); //How can I become more stable?

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 5))
	{
		AI_Output(self, hero, "Info_Mod_Gorn_Standfest2_12_01"); //In the end, only the right mixture of strength and skill counts.
		AI_Output(self, hero, "Info_Mod_Gorn_Standfest2_12_02"); //When you see that one of the opponents is getting ready for a powerful blow, you prepare yourself.
		AI_Output(self, hero, "Info_Mod_Gorn_Standfest2_12_03"); //Just before he catches you, you make yourself small and move your body's centre of gravity towards the ground.
		AI_Output(self, hero, "Info_Mod_Gorn_Standfest2_12_04"); //If you then put all your power against the blow, it will still be painful, but you don't sail several meters through the air.
		AI_Output(hero, self, "Info_Mod_Gorn_Standfest2_15_05"); //I think I get it. Thanks.
		AI_Output(self, hero, "Info_Mod_Gorn_Standfest2_12_06"); //You're welcome.

		Standfest_Perk = TRUE;

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 500);
		}
		else
		{
			hero.lp -= 5;
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Gorn_Standfest2_12_07"); //Come back when you're ready.
	};
};

var int Mod_Gorn_Help_Paladine;

INSTANCE Info_Mod_Gorn_Hilfe (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Hilfe_Condition;
	information	= Info_Mod_Gorn_Hilfe_Info;
	permanent	= 1;
	important	= 0;
	description	= "I need your help";
};

FUNC INT Info_Mod_Gorn_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_Hilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Hilfe_15_00"); //I need your help.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_12_01"); //With what?

	Info_ClearChoices	(Info_Mod_Gorn_Hilfe);

	Info_AddChoice	(Info_Mod_Gorn_Hilfe, DIALOG_BACK, Info_Mod_Gorn_Hilfe_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Constantino_Lehrling))
	&& (Mod_MinecrawlerEi >= 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Constantino_Stimme))
	{
		Info_AddChoice	(Info_Mod_Gorn_Hilfe, "You know where I can get strong Minecrawler secretion?", Info_Mod_Gorn_Hilfe_MinecrawlerSekret);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_NeueAufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Alvares_Knast))
	{
		Info_AddChoice	(Info_Mod_Gorn_Hilfe, "I'm supposed to find a mercenary candidate.", Info_Mod_Gorn_Hilfe_Alvares);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Auftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torlof_Kristall))
	&& (!Mod_Gorn_Help_Paladine)
	{
		Info_AddChoice	(Info_Mod_Gorn_Hilfe, "I need to find something in the city. )", Info_Mod_Gorn_Hilfe_Kristall);
	};
};

FUNC VOID Info_Mod_Gorn_Hilfe_BACK()
{
	Info_ClearChoices	(Info_Mod_Gorn_Hilfe);
};

FUNC VOID Info_Mod_Gorn_Hilfe_Kristall()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Hilfe_Kristall_15_00"); //I need to find something in town to blackmail the paladins. Information, Artifacts.... whatever.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_Kristall_12_01"); //Hmm, let me think. I can't think of much in a hurry either.... but wait a minute.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_Kristall_12_02"); //I heard Lee talk about a paladin he knew from before. The fat Lothar in the upper quarter is said to be quite a swallow.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_Kristall_12_03"); //He likes to inflate himself, but doesn't take it so close to discipline....
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_Kristall_12_04"); //He might tell you something.

	B_LogEntry	(TOPIC_MOD_TORLOFSPIONAGE, "I learned from Gorn that Paladin Lothar has a weakness for alcohol and a big mouth in the upper quarter.");
	
	Mod_Gorn_Help_Paladine = TRUE;
};

FUNC VOID Info_Mod_Gorn_Hilfe_MinecrawlerSekret()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Hilfe_MinecrawlerSekret_15_00"); //You know where I can get strong Minecrawler secretion?
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_MinecrawlerSekret_12_01"); //Lester once told me that in the eggs of the minecrawler is a stronger secretion than in the tongs.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_MinecrawlerSekret_12_02"); //I had two minecrawler eggs from the free mine when we freed them together from the guardsmen, but I gave them to Milten.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_MinecrawlerSekret_12_03"); //I couldn't handle the eggs, but I'm sure he could use them as a magician. Go see him and ask him, maybe he still has it.

	Mod_MinecrawlerEi = 2;
	
	B_LogEntry	(TOPIC_MOD_CONSTANTINOSZUTATEN, "I get a strong minecrawler-secret from a minecrawler's workshop. Gorn told me he gave Milten two minecrawler eggs.");
};

FUNC VOID Info_Mod_Gorn_Hilfe_Alvares()
{
	AI_Output(hero, self, "Info_Mod_Gorn_Hilfe_Alvares_15_00"); //I'm supposed to find a mercenary candidate.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_Alvares_12_01"); //A mercenary candidate.... hmm, there won't be a qualified fighter on the farms.
	AI_Output(self, hero, "Info_Mod_Gorn_Hilfe_Alvares_12_02"); //Most likely those who have already been arrested by the city guards for their actions.
};

INSTANCE Info_Mod_Gorn_Pickpocket (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_Pickpocket_Condition;
	information	= Info_Mod_Gorn_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_210;
};

FUNC INT Info_Mod_Gorn_Pickpocket_Condition()
{
	C_Beklauen	(210, ItMi_Gold, 179);
};

FUNC VOID Info_Mod_Gorn_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);

	Info_AddChoice	(Info_Mod_Gorn_Pickpocket, DIALOG_BACK, Info_Mod_Gorn_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gorn_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gorn_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gorn_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);
};

FUNC VOID Info_Mod_Gorn_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);

		Info_AddChoice	(Info_Mod_Gorn_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gorn_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gorn_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gorn_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gorn_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gorn_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gorn_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gorn_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gorn_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gorn_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gorn_EXIT (C_INFO)
{
	npc		= Mod_533_SLD_Gorn_NW;
	nr		= 1;
	condition	= Info_Mod_Gorn_EXIT_Condition;
	information	= Info_Mod_Gorn_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gorn_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gorn_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_EXIT_12_00"); //May you never find your master!

	AI_StopProcessInfos	(self);
};
