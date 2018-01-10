INSTANCE Info_Mod_Argez_AW_Hi (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Hi_Condition;
	information	= Info_Mod_Argez_AW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_AW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_AW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_Hi_37_00"); //Good to see you again. We've been looking for you.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Hi_15_01"); //Uh, yeah, I just wanted to take a look at the temple, so I drove down the wall.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Hi_15_02"); //Took me a while to get this thing open.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Hi_37_03"); //And then you fainted right away.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Hi_15_04"); //Exactly, it must have been the bad air in there.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Hi_37_05"); //As long as everything went well.
};

INSTANCE Info_Mod_Argez_AW_Magiespur (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Magiespur_Condition;
	information	= Info_Mod_Argez_AW_Magiespur_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you know anything about magic marks?";
};

FUNC INT Info_Mod_Argez_AW_Magiespur_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Magiespur_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_00"); //Do you know anything about magic marks?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_01"); //You mean a Signum Magicum?
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_02"); //You keep surprising me.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_03"); //It is a spell of the ancient people that can be applied to any animated creature.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_04"); //The spellcaster can feel where his target is located at any time, he notices it....
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_05"); //Exactly. But before you improvise a doctoral thesis now, you could help me.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_06"); //It is immensely satisfying to discover knowledge where you have never suspected it.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_07"); //What exactly do you want to know?
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_08"); //It could be that I'm marked. Then I'd like to get rid of that marker.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_09"); //Hmm, let's see...

	// ToDo: Toller Zaubereffekt auf den Helden

	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_10"); //Yes, indeed.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_11"); //Can I remove the marking?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_12"); //Normally, the caster decides when to break the connection.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_13"); //But there are also ways for the victim to break the effect.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_14"); //The erectile I came up with the idea not to loosen the marker, but to redirect it.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_15"); //So that the sorcerer doesn't notice that he has been tricked.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_16"); //A wise thought. That should also be feasible.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_17"); //Just get me an animal that's supposed to be the new target.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_18"); //Some kind of animal?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur_37_19"); //Yeah. For better transport you should shrink it first.

	B_GiveInvItems	(self, hero, ItSc_Shrink, 1);

	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur_15_20"); //All right, see you later.

	B_LogEntry	(TOPIC_MOD_MAGISCHEMARKIERUNG, "Argez actually found a marker on me. But he wants to be able to reroute them if I bring him a shrunken animal.");

	Mod_Argez_Shrink = 1;
	
	// Tempelvorplatz

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_2_VALLEY_10");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_2_VALLEY_02A");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_2_VALLEY_05");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_2_VALLEY_08");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_2_VALLEY_02B");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_2_VALLEY_11");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_BEHINDAKROPOLIS_04");

	Wld_InsertNpc	(Waran,	"ADW_ENTRANCE_PATH2BANDITS_03");

	Wld_InsertNpc	(Blattcrawler,	"ADW_ENTRANCE_PATH2BANDITS_05P");
};

INSTANCE Info_Mod_Argez_AW_Magiespur2 (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Magiespur2_Condition;
	information	= Info_Mod_Argez_AW_Magiespur2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the new mark target.";
};

FUNC INT Info_Mod_Argez_AW_Magiespur2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Magiespur))
	&& (Mod_Argez_Shrink == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Magiespur2_Info()
{
	if (Hlp_IsValidNpc(Mod_Argez_ShrinkMonster)) {
		AI_Teleport	(Mod_Argez_ShrinkMonster, "PC_HERO");
	};

	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur2_15_00"); //Here's the new mark target.

	if (Hlp_IsValidNpc(Mod_Argez_ShrinkMonster)) {
		if (Mod_Argez_ShrinkMonster.guild == GIL_TROLL)
		|| (Mod_Argez_ShrinkMonster.guild == GIL_STONEGOLEM)
		{
			AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_01"); //(laughs) He's cute.
		}
		else if (Mod_Argez_ShrinkMonster.guild == GIL_MEATBUG)
		{
			AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_02"); //Where? Where? Oh, down there!
		};
	};

	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_03"); //Perfect, I'll start right away.

	// ToDo: Effekt auf Held und Monster rennt weg

	if (Hlp_IsValidNpc(Mod_Argez_ShrinkMonster)) {
		AI_Flee	(Mod_Argez_ShrinkMonster);
	};

	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_04"); //That should have been it. Hopefully the animal was still close enough for the transmission to work. Let me have a look.

	// ToDo: Toller Zaubereffekt auf den Helden

	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_05"); //You are free. The marker's gone.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur2_15_06"); //I'm feeling much better now.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_07"); //It's just the placebo effect. But from now on, your adversary shouldn't be able to track you down.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Magiespur2_15_08"); //That would be great. Thank you very much.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Magiespur2_37_09"); //Don't mention it.

	B_SetTopicStatus	(TOPIC_MOD_MAGISCHEMARKIERUNG, LOG_SUCCESS);

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Argez_AW_Echsis (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Echsis_Condition;
	information	= Info_Mod_Argez_AW_Echsis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_AW_Echsis_Condition()
{
	if (Mod_ArgezSpawn)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Echsis_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_00"); //Lost your invitation, huh?
	AI_Output(hero, self, "Info_Mod_Argez_AW_Echsis_15_01"); //You again?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_02"); //I could ask you the same thing. I would if it mattered.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Echsis_15_03"); //What are you doing here anyway?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_04"); //I want to go to the swamp, but as you've impressively proven, it's not that easy.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_05"); //Anyway, it wouldn't be wise to break through the gate.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_06"); //It would be wiser to use a weak point at the barrier, say a hole on the bottom of the barrier, a few meters to the right of the guards, which is just big enough for a small creature to crawl through.... that would be wise, yes.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Echsis_15_07"); //Probably....
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_08"); //Yeah. But smart decisions can also go wrong.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_09"); //Then there's always two ways. The fight and the diplomacy.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_10"); //Usually both lead to the goal, one faster, the other perhaps more effective... but a smart man will know what to do.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Echsis_15_11"); //Probably.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Echsis_37_12"); //Oh, yes, here. Your invitation.

	B_GiveInvItems	(self, hero, ItSc_TrfMeatbug, 1);

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "STRAND");
	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Before the swamp, I met Argez again. He gave me a' transformation bug' spell roll and tipped me to crawl through a hole in the barricade to the right of the guards. He also made funny insinuations:' But even smart decisions can go wrong. Then there's always two ways. The fight and the diplomacy. Usually both lead to the goal, one faster, the other perhaps more effective... '");
};

INSTANCE Info_Mod_Argez_AW_Rettung (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Rettung_Condition;
	information	= Info_Mod_Argez_AW_Rettung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_AW_Rettung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_XW_Gefangen2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Rettung_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_Rettung_37_00"); //Thanks. I can handle myself now.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Rettung_15_01"); //You want your peace of mind?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Rettung_37_02"); //Yes, please. There's something I need to think about.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Rettung_37_03"); //Don't hold it against me. It's not you.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Our escape from the underworld has succeeded! I should see if Xardas found out anything.");

	B_GivePlayerXP	(1000);
};

INSTANCE Info_Mod_Argez_AW_AtTempel (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_AtTempel_Condition;
	information	= Info_Mod_Argez_AW_AtTempel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_AW_AtTempel_Condition()
{
	if (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_AtTempel_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_00"); //Beautiful, isn't it? So old and yet so... familiar.
	AI_Output(hero, self, "Info_Mod_Argez_AW_AtTempel_15_01"); //(cautious) Argez?
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_02"); //Surprised?
	AI_Output(hero, self, "Info_Mod_Argez_AW_AtTempel_15_03"); //To say the least, yes. How did you get here?
	AI_Output(hero, self, "Info_Mod_Argez_AW_AtTempel_15_04"); //And why did you arrive before me?
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_05"); //I almost caught up with you when you entered the temple.
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_06"); //When I heard where you were going, the image of this temple shot me in the head, and I rushed right after you.
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_07"); //We can't have missed each other by many minutes. In front of the entrance I remembered many things: the fuses in front of robbers, the dark frescoes.
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_08"); //And the hidden side door that can handle the traps.
	AI_Output(hero, self, "Info_Mod_Argez_AW_AtTempel_15_09"); //(buzzed) Oh, great....
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_10"); //It won't work anymore, because I accidentally damaged its mechanism. It was stuck, and I resorted to brute force.
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_11"); //But at least I found you. I hope that somehow I can serve you with my knowledge.
	AI_Output(hero, self, "Info_Mod_Argez_AW_AtTempel_15_12"); //Sure, if you tell me where I can find a god's weapon.
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_13"); //I don't know about that. All I know is that she can't be far away.
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_14"); //If you have them, I'd like to take a closer look.
	AI_Output(hero, self, "Info_Mod_Argez_AW_AtTempel_15_15"); //Without any ulterior motives?
	AI_Output(self, hero, "Info_Mod_Argez_AW_AtTempel_37_16"); //At least none you have to be afraid of. I'm mainly curious.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "As soon as I find the god's weapon from the Adano Temple, Argez wants to take a look at it.");
};

INSTANCE Info_Mod_Argez_AW_Stab (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Stab_Condition;
	information	= Info_Mod_Argez_AW_Stab_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've made a find. However, apparently time has done its work.";
};

FUNC INT Info_Mod_Argez_AW_Stab_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_AtTempel))
	&& (Npc_HasItems(hero, ItMw_Adanos_Stab_Teil1) == 1)
	&& (Npc_HasItems(hero, ItMw_Adanos_Stab_Teil2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Stab_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab_15_00"); //I've made a find. However, apparently time has done its work.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_01"); //Hmm... I need to take a closer look at this.

	Npc_RemoveInvItems (hero, ItMw_Adanos_Stab_Teil1, 1);
	Npc_RemoveInvItems (hero, ItMw_Adanos_Stab_Teil2, 1);

	B_ShowGivenThings	("Two fragments given");

	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_02"); //That doesn't look good, and by that I don't even mean the more or less brittle wood and the obvious breakage.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_03"); //The place of the weapon, i. e. its tip, was fragile and crumbled when I touched it, and the remaining blade also shows cracks.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_04"); //It has lost much of its old strength.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab_15_05"); //Can't you do anything with magic?
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_06"); //I know of a healing spell that could help with inanimate matter. It's not a substitute for a hot meal, but it's the best I can offer.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_07"); //I don't want to promise that the weapon will regain its original effectiveness, but at least it would be ready for use again.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_08"); //For this, however, the individual fragments of the tip would have to be in their right place, which would be difficult enough to accomplish.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab_15_09"); //I don't think all I can do is try it on myself.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_10"); //Here are the fragments. I think I found them all.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_11"); //You should be able to merge them in such a way that they retain their original shape.

	B_GiveInvItems	(self, hero, ItMi_ArgezBruchstuecke, 1);

	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab_37_12"); //Let me know when you've made progress.

	Log_CreateTopic	(TOPIC_MOD_ARGEZ_ORT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ARGEZ_ORT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ARGEZ_ORT, "The tip of the blade in the bar is broken. I need to get them into the right shape. I should take a closer look at the fragments that Argez gave me.");
};

INSTANCE Info_Mod_Argez_AW_Stab2 (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Stab2_Condition;
	information	= Info_Mod_Argez_AW_Stab2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I seem to have found the right order...";
};

FUNC INT Info_Mod_Argez_AW_Stab2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Stab))
	&& (Mod_Argez_Puzzle == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Stab2_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab2_15_00"); //I seem to have found the right order.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab2_37_01"); //That helps me a lot.

	B_GiveInvItems	(hero, self, ItMi_ArgezBruchstuecke, 1);

	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab2_37_02"); //Before I put the fragments together, I'd like to offer you to change the staff.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab2_37_03"); //I could cast a spell on the blunt end so that you would give your opponent a mixture of the two damage types wood and magic.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab2_37_04"); //From the blade at the other end, such a spell would bounce off.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab2_37_05"); //Which of the two options appeals to you more?

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Argez fixed Adanos's staff. Like he always does.");

	B_GivePlayerXP	(400);

	B_SetTopicStatus	(TOPIC_MOD_ARGEZ_ORT, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Argez_AW_Stab2);

	Info_AddChoice	(Info_Mod_Argez_AW_Stab2, "I choose the magically strengthened wand.", Info_Mod_Argez_AW_Stab2_Magie);
	Info_AddChoice	(Info_Mod_Argez_AW_Stab2, "I'll take the staff as it is.", Info_Mod_Argez_AW_Stab2_Kampf);
};

FUNC VOID Info_Mod_Argez_AW_Stab2_Weiter()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab2_Kampf_37_00"); //So be it. Now resign.

	Info_ClearChoices	(Info_Mod_Argez_AW_Stab2);

	AI_StopProcessInfos	(self);

};

FUNC VOID Info_Mod_Argez_AW_Stab2_Kampf()
{
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab2_Kampf_15_00"); //I'll take the staff as it is.

	Mod_Argez_Stab = 0;

	Info_Mod_Argez_AW_Stab2_Weiter();
};

FUNC VOID Info_Mod_Argez_AW_Stab2_Magie()
{
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab2_Magie_15_00"); //I choose the magically strengthened wand.

	Mod_Argez_Stab = 1;

	Info_Mod_Argez_AW_Stab2_Weiter();
};

INSTANCE Info_Mod_Argez_AW_Stab3 (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Stab3_Condition;
	information	= Info_Mod_Argez_AW_Stab3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_AW_Stab3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Stab2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Stab3_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab3_37_00"); //Almost as good as I hoped for. But still better than anything forged today.

	if (Mod_Argez_Stab == 1) {
		B_GiveInvItems	(self, hero, ItMw_Adanos_Stab_Magieteil, 1);
	} else {
		B_GiveInvItems	(self, hero, ItMw_Adanos_Stab_Kampfteil, 1);
	};

	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab3_15_01"); //Thanks. I'm done with that here in the temple.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab3_37_02"); //So am I. Let's use this teleport platform.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab3_37_03"); //You can say what you want from the Old People, but comfort was appreciated.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTELEPORT");
};

INSTANCE Info_Mod_Argez_AW_Stab4 (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Stab4_Condition;
	information	= Info_Mod_Argez_AW_Stab4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_AW_Stab4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Stab3))
	&& (Npc_GetDistToWP(hero, "ADW_ADANOSTEMPEL_TELEPORTSTATION") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Stab4_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_00"); //I sense that you will soon leave for the final battle.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab4_15_01"); //Well...
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_02"); //I respect your reasons for not asking me to come with you.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab4_15_03"); //argez...
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_04"); //You really don't have to apologize.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab4_15_05"); //Thanks. But why are you in such a good mood today? That was different some time ago.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_06"); //I found something old. From me.
	AI_Output(hero, self, "Info_Mod_Argez_AW_Stab4_15_07"); //That's just.... fantastic!
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_08"); //In Xeres' dungeon, remember? When that horrible goblin who had trapped us had finally disappeared, I found a smelly, tattered code near the bars of the bars, in which many pages were missing.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_09"); //I hit him.... and recognized my own handwriting! I held my own diary in my hand, written a long time ago!
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_10"); //Of course I began to read immediately, but what I learned lay down on my mind like a tombstone. After we escaped, I could hardly bring myself to read on.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_11"); //Lucky I did. Because it fills me with pride now.
	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_12"); //I want to give you a page of it, one of the last, a page that will explain a lot, but not everything. I translated them for you.

	B_GiveInvItems	(self, hero, ItWr_ArgezTagebuch1, 1);

	AI_Output(self, hero, "Info_Mod_Argez_AW_Stab4_37_13"); //And I'll leave you alone with that, so you can go your own way without me. But don't worry, I won't lose sight of you.

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Argez_AW_Gast (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_Gast_Condition;
	information	= Info_Mod_Argez_AW_Gast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why did you come along anyway?";
};

FUNC INT Info_Mod_Argez_AW_Gast_Condition()
{
	if (Mod_Saturas_Gast == 1)
	{
		Info_Mod_Argez_AW_Gast.description = "Do you have any leads on who stole the magicians' equipment?";
	}
	else
	{
		Info_Mod_Argez_AW_Gast.description = "Did you notice anything about stealing the equipment?";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	&& (Mod_Saturas_Gast_Fortschritt == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_Gast_Info()
{
	if (Mod_Saturas_Gast == 1)
	{
		AI_Output(hero, self, "Info_Mod_Argez_AW_Gast_15_00"); //Do you have any leads on who stole the magicians' equipment?
		AI_Output(self, hero, "Info_Mod_Argez_AW_Gast_37_01"); //No, I didn't notice anything.
		AI_Output(self, hero, "Info_Mod_Argez_AW_Gast_37_02"); //I'm just surprised and relieved that no one has ever suspected me.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Argez_AW_Gast_15_03"); //Did you notice anything about stealing the equipment?
		AI_Output(self, hero, "Info_Mod_Argez_AW_Gast_37_04"); //What theft? I slept all night.
	};
};

INSTANCE Info_Mod_Argez_AW_WarumHier (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_WarumHier_Condition;
	information	= Info_Mod_Argez_AW_WarumHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why did you come along anyway?";
};

FUNC INT Info_Mod_Argez_AW_WarumHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_AW_WarumHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_AW_WarumHier_15_00"); //Why did you come along anyway? Didn't you want to go to the swamp?
	AI_Output(self, hero, "Info_Mod_Argez_AW_WarumHier_37_01"); //The feeling that gripped me when I saw the temple interior in Khorinis is even stronger here.
	AI_Output(self, hero, "Info_Mod_Argez_AW_WarumHier_37_02"); //I'm sure I know this area.
	AI_Output(hero, self, "Info_Mod_Argez_AW_WarumHier_15_03"); //But it doesn't look like many others could claim that.
	AI_Output(self, hero, "Info_Mod_Argez_AW_WarumHier_37_04"); //Right. But maybe there are people around here somewhere.
	AI_Output(self, hero, "Info_Mod_Argez_AW_WarumHier_37_05"); //I just feel at home.
	AI_Output(hero, self, "Info_Mod_Argez_AW_WarumHier_15_06"); //Good luck searching.
	AI_Output(self, hero, "Info_Mod_Argez_AW_WarumHier_37_07"); //Thanks. What are you going to do now?
	AI_Output(hero, self, "Info_Mod_Argez_AW_WarumHier_15_08"); //Let's have a look. I can't retire yet.
	AI_Output(self, hero, "Info_Mod_Argez_AW_WarumHier_37_09"); //I understand. I'll see you around.
};

INSTANCE Info_Mod_Argez_AW_EXIT (C_INFO)
{
	npc		= PC_Friend_AW;
	nr		= 1;
	condition	= Info_Mod_Argez_AW_EXIT_Condition;
	information	= Info_Mod_Argez_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Argez_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
