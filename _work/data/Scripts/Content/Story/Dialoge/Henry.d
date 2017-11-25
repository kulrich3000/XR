INSTANCE Info_Mod_Henry_Hi (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Hi_Condition;
	information	= Info_Mod_Henry_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Henry_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Henry_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Henry_Hi_04_00"); //What on earth are you doing here?
	AI_Output(hero, self, "Info_Mod_Henry_Hi_15_01"); //I don't know exactly... depends on what you find here.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_04_02"); //What you got here? A camp with guys who itch when they see you.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_04_03"); //I have no idea where you come from or who you are... doesn't interest me either.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_04_04"); //But among us buccaneers we scrub with washcloths like you the keel of our ship.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_04_05"); //So do yourself a favor, turn around and fuck off.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_04_06"); //Only whole guys with salt water in their blood have lost something.

	Info_ClearChoices	(Info_Mod_Henry_Hi);

	Info_AddChoice	(Info_Mod_Henry_Hi, "If you've lost some blood, you might see things differently!", Info_Mod_Henry_Hi_B);
	Info_AddChoice	(Info_Mod_Henry_Hi, "I'm not a sissy!", Info_Mod_Henry_Hi_A);
};

FUNC VOID Info_Mod_Henry_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_00"); //I'll tell you what: Before I have to clean up a big mess later on, you do one little thing for me and then we'll talk about it all again.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_01"); //Well, there's a canyon to the left of here. You go there and get me a piece of bite meat. Got it?
	AI_Output(hero, self, "Info_Mod_Henry_Hi_C_15_02"); //Okay, I should be able to.

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_03"); //(quietly to himself) Hmm, after that he actually comes back and continues to annoy...

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_04"); //(again to the hero) Oh, and while you're in the canyon, I'm not afraid to tell you... a bottle of milk from there...
	AI_Output(hero, self, "Info_Mod_Henry_Hi_C_15_05"); //What?! Ahh, you joker...
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_06"); //Joker?! You'll hear the birds chirp as soon as I give you one with the dull side of my sword.
	AI_Output(hero, self, "Info_Mod_Henry_Hi_C_15_07"); //But what...?
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_08"); //Nothing, but. Flocks of wild goats roam the canyon again and again. From one with full udders, you're gonna get me a bottle of goat's milk.
	AI_Output(hero, self, "Info_Mod_Henry_Hi_C_15_09"); //So you want me to milk goats for you now?!
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_10"); //Who said anything about milking, you bum?! Although, when I look at you that way, you look more like a kitchen maid to me than a guy, huh?
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_11"); //But why don't you try milking one of these goats while she's still alive, huh?
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_12"); //With the captain's beard, I would give you all my gold and put my sword on top of it, hahaha.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_13"); //But enough of this bullshit. When you hit the goat, you just pierce its udder and let the milk run into a bottle. Got it?
	AI_Output(self, hero, "Info_Mod_Henry_Hi_C_04_14"); //Now get out of here and don't come back until you've brought everything.

	Info_ClearChoices	(Info_Mod_Henry_Hi);

	Wld_InsertNpc	(Canyon_Ziege_Euter,	"ADW_CANYON_PATH_TO_BANDITS_36");

	Log_CreateTopic	(TOPIC_MOD_HENRY_BEISSER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_HENRY_BEISSER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_HENRY_BEISSER, "Henry won't let me go to the camp until I bring him a piece of meat. I'm also supposed to get the milk of a wild goat.");
};

FUNC VOID Info_Mod_Henry_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Henry_Hi_B_15_00"); //If you've lost some blood, you might see things differently!
	AI_Output(self, hero, "Info_Mod_Henry_Hi_B_04_01"); //Look, we got a hero here.... a pretty stupid hero.
	AI_Output(self, hero, "Info_Mod_Henry_Hi_B_04_02"); //You think you can just poop around here and I'll let you in?
	AI_Output(self, hero, "Info_Mod_Henry_Hi_B_04_03"); //The only thing that's about to go in is my blade in your belly... and my colleagues' if they want a piece of you.

	Info_Mod_Henry_Hi_C();
};

FUNC VOID Info_Mod_Henry_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Henry_Hi_A_15_00"); //I'm not a sissy!
	AI_Output(self, hero, "Info_Mod_Henry_Hi_A_04_01"); //Yes, right... which is good for something. But what are we supposed to do with a dirty tramp like you in the camp?
	AI_Output(self, hero, "Info_Mod_Henry_Hi_A_04_02"); //Paint the entrance of our camp with red if you ever want to visit us?

	Info_Mod_Henry_Hi_C();
};

INSTANCE Info_Mod_Henry_Fleisch (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Fleisch_Condition;
	information	= Info_Mod_Henry_Fleisch_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got everything...";
};

FUNC INT Info_Mod_Henry_Fleisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Hi))
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 1)
	&& (Npc_HasItems(hero, ItFo_Ziegenmilch_Bloody) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Fleisch_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_Fleisch_15_00"); //I got everything...
	
	B_GiveInvItems	(hero, self, ItFo_MuttonRaw, 1);

	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_01"); //Well, let's see.

	Npc_RemoveInvItems	(hero, ItFo_MuttonRaw, 1);
	Npc_RemoveInvItems	(hero, ItFo_Ziegenmilch_Bloody, 1);

	B_ShowGivenThings	("and bloody goat's milk.");

	CreateInvItems	(self, ItFo_Milk, 1);

	B_UseItem	(self, ItFo_Milk);

	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_02"); //Ahh, there's nothing like a good sip of bloody goat's milk.
	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_03"); //No hard feelings. You don't seem like the kind of wimp I used to think you were when you took on all those things.
	AI_Output(hero, self, "Info_Mod_Henry_Fleisch_15_04"); //So now I can go in?
	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_05"); //I don't want to be like that. At first I thought you were a puny errand boy of these magicians who just wanted to snoop around.
	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_06"); //You may seem to have a little bit of talent, though... don't be afraid of getting your fingers dirty when you're hunting.
	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_07"); //For a guy like you, maybe we could still find some use in our warehouse.... if the captain doesn't eat you for breakfast, huh?
	AI_Output(self, hero, "Info_Mod_Henry_Fleisch_04_08"); //All right, so call Greg. He'll have something to do for you.

	B_LogEntry	(TOPIC_MOD_HENRY_BEISSER, "I brought Henry the meat and milk. Now I'm supposed to go see Greg.");
	B_SetTopicStatus	(TOPIC_MOD_HENRY_BEISSER, LOG_SUCCESS);

	B_GivePlayerXP	(600);

	AI_StopProcessInfos	(self);

	B_Göttergefallen(2, 1);

	self.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Henry_Entertrupp (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Entertrupp_Condition;
	information	= Info_Mod_Henry_Entertrupp_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey, you're one of the guards!";
};

FUNC INT Info_Mod_Henry_Entertrupp_Condition()
{
	if (Mod_InEntertrupp == 0)
	&& (Piraten_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Entertrupp_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_Entertrupp_15_00"); //Hey, you're one of the guards!
	AI_Output(self, hero, "Info_Mod_Henry_Entertrupp_04_01"); //I'm not one of them, I'm THE squad leader of the boys!
	AI_Output(self, hero, "Info_Mod_Henry_Entertrupp_04_02"); //What do you want?
	AI_Output(hero, self, "Info_Mod_Henry_Entertrupp_15_03"); //I want to join your posse.
	AI_Output(self, hero, "Info_Mod_Henry_Entertrupp_04_04"); //Everyone wants to join my troops.
	AI_Output(self, hero, "Info_Mod_Henry_Entertrupp_04_05"); //If you're serious, you have to show what you can do!
	AI_Output(hero, self, "Info_Mod_Henry_Entertrupp_15_06"); //What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Henry_Entertrupp_04_07"); //First you get me a bottle of grog, then we'll talk.
	AI_Output(hero, self, "Info_Mod_Henry_Entertrupp_15_08"); //And where can I get it?
	AI_Output(self, hero, "Info_Mod_Henry_Entertrupp_04_09"); //Further back, in the cave, is Samuel's witch's kitchen.

	Log_CreateTopic	(TOPIC_MOD_HENRY_ENTERTRUPP, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_HENRY_ENTERTRUPP, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_HENRY_ENTERTRUPP, "I'm supposed to get him a bottle of grog.");

	AI_Teleport	(Mod_940_PIR_Samuel_AW, "ADW_PIRATECAMP_TOWER_BED");
	B_StartOtherRoutine	(Mod_940_PIR_Samuel_AW, "ENTER");
	AI_Teleport	(Mod_940_PIR_Samuel_AW, "ADW_PIRATECAMP_TOWER_BED");
};

INSTANCE Info_Mod_Henry_SamuelWeg (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_SamuelWeg_Condition;
	information	= Info_Mod_Henry_SamuelWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Samuel's not here.";
};

FUNC INT Info_Mod_Henry_SamuelWeg_Condition()
{
	if (Mod_SamuelIstWeg == 1)
	&& (Mod_InEntertrupp == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_SamuelWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_SamuelWeg_15_00"); //Samuel's not here.
	AI_Output(self, hero, "Info_Mod_Henry_SamuelWeg_04_01"); //That's where the problem lies! Without Samuel, no grog.
	AI_Output(self, hero, "Info_Mod_Henry_SamuelWeg_04_02"); //And you'll make sure I get my grog.
	AI_Output(hero, self, "Info_Mod_Henry_SamuelWeg_15_03"); //And where do I get grog from?
	AI_Output(self, hero, "Info_Mod_Henry_SamuelWeg_04_04"); //Why don't you take a look around Samuel's cave? There must be a prescription somewhere.
	AI_Output(hero, self, "Info_Mod_Henry_SamuelWeg_15_05"); //All right, I will.
	AI_Output(self, hero, "Info_Mod_Henry_SamuelWeg_04_06"); //Don't you dare bring me some cheap fusel.

	B_LogEntry	(TOPIC_MOD_HENRY_ENTERTRUPP, "Apparently, I'm supposed to burn Henry's grog myself.");

	Wld_InsertItem	(Mod_SamuelsGrogRezept, "FP_PIRATESCAMP_INSERT_NOTIZ");
};

INSTANCE Info_Mod_Henry_HierGrog (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_HierGrog_Condition;
	information	= Info_Mod_Henry_HierGrog_Info;
	permanent	= 1;
	important	= 0;
	description	= "I got grog.";
};

FUNC INT Info_Mod_Henry_HierGrog_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_SamuelWeg))
	&& (Mod_QuatschGrog == 0)
	&& (Mod_InEntertrupp == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_HierGrog_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_HierGrog_15_00"); //I got grog.

	Info_ClearChoices	(Info_Mod_Henry_HierGrog);

	Info_AddChoice	(Info_Mod_Henry_HierGrog, "I got nothing.", Info_Mod_Henry_HierGrog_BACK);

	if (Npc_HasItems(hero, Mod_RealGrog) > 0)
	{
		Info_AddChoice	(Info_Mod_Henry_HierGrog, "Self-baked grog", Info_Mod_Henry_HierGrog_Own);
	};
	if (Npc_HasItems(hero, ItFo_Addon_Grog) > 0)
	{
		Info_AddChoice	(Info_Mod_Henry_HierGrog, "Normal Grog", Info_Mod_Henry_HierGrog_Fusel);
	};
};

FUNC VOID Info_Mod_Henry_HierGrog_BACK()
{
	AI_Output(hero, self, "Info_Mod_Henry_HierGrog_BACK_15_00"); //I got nothing.
	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_BACK_04_01"); //Then leave me alone.

	Info_ClearChoices	(Info_Mod_Henry_HierGrog);
};

FUNC VOID Info_Mod_Henry_HierGrog_Own()
{
	B_GiveInvItems	(hero, self, Mod_RealGrog, 1);

	B_UseItem	(self, Mod_RealGrog);

	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_Own_04_00"); //That's a grog!
	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_Own_04_01"); //If you can brew something like this, you can also enjoy the strongest Razor.
	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_Own_04_02"); //You have my approval!

	if (Mod_InEntertrupp == 0)
	{
		B_LogEntry_More	(TOPIC_MOD_PIRATEN_ENTERTRUPP, TOPIC_MOD_HENRY_ENTERTRUPP, "I got Henry's permission to join an enterprise-group.", "Henry was happy with my grog. I have his consent.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_HENRY_ENTERTRUPP, "Henry was happy with my grog. I have his consent.");
	};

	B_SetTopicStatus	(TOPIC_MOD_HENRY_ENTERTRUPP, LOG_SUCCESS);

	Mod_QuatschGrog = 1;

	B_GivePlayerXP	(200);

	B_Göttergefallen(2, 1);

	Info_ClearChoices	(Info_Mod_Henry_HierGrog);
};

FUNC VOID Info_Mod_Henry_HierGrog_Fusel()
{
	B_GiveInvItems	(hero, self, ItFo_Addon_Grog, 1);

	B_UseItem	(self, ItFo_Addon_Grog);

	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_Fusel_04_00"); //What the fuck are you doing to me?
	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_Fusel_04_01"); //I don't even brush my teeth with that!
	AI_Output(self, hero, "Info_Mod_Henry_HierGrog_Fusel_04_02"); //Get out of here with your stuff.

	Info_ClearChoices	(Info_Mod_Henry_HierGrog);
};

INSTANCE Info_Mod_Henry_InEntertrupp (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_InEntertrupp_Condition;
	information	= Info_Mod_Henry_InEntertrupp_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to join your posse.";
};

FUNC INT Info_Mod_Henry_InEntertrupp_Condition()
{
	if (Mod_QuatschGrog == 1)
	&& (Mod_InEntertrupp == 0)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Francis_Skip))
	|| (Npc_KnowsInfo(hero, Info_Mod_Morgan_HierKrallen)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_InEntertrupp_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_InEntertrupp_15_00"); //I want to join your posse.
	AI_Output(self, hero, "Info_Mod_Henry_InEntertrupp_04_01"); //You've proven yourself useful as a pirate.
	AI_Output(self, hero, "Info_Mod_Henry_InEntertrupp_04_02"); //From now on, you're in my squad.

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_PIRATEN_ENTERTRUPP, "I'm a member of Henry's enlisted group now.");
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_ENTERTRUPP, LOG_SUCCESS);

	Mod_InEntertrupp = 1;

	B_Göttergefallen(2, 1);
	
	if (Npc_KnowsInfo(hero, Info_Mod_Morgan_Entertrupp))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Morgan_HierKrallen)) {
		B_SetTopicStatus(TOPIC_MOD_MORGAN_ENTERTRUPP, LOG_FAILED);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_Entertrupp))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Francis_Skip)) {
		B_SetTopicStatus(TOPIC_MOD_FRANCIS_ENTERTRUPP, LOG_FAILED);
	};
};

INSTANCE Info_Mod_Henry_Befreiung (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Befreiung_Condition;
	information	= Info_Mod_Henry_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "You all right?";
};

FUNC INT Info_Mod_Henry_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Befreiung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung_15_00"); //You all right?
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_01"); //How can we be clear when we are at war?
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung_15_02"); //I don't know about that. I'm from Greg.
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_03"); //And what does he want?
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung_15_04"); //I'm supposed to help you guys out so we can strike back.
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_05"); //Why didn't you say so?
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung_15_06"); //What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_07"); //While the battle raged, some of these undead guys moved to the beach and entrenched themselves in a cave.
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_08"); //They're not as stupid as they seem to be, since they've installed a spiky trap.
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_09"); //You must kill those undead and try to deactivate the trap.
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung_15_10"); //It's as good as done.
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung_04_11"); //We'll see about that.

	Wld_SendTrigger	("HENRYMAINMOVER");

	Wld_InsertNpc	(Mod_7001_HoherUntoterMagier_AW,	"ADW_PIRATECAMP_CAVE3_04");
	Wld_InsertNpc	(Mod_7002_HoherUntoterMagier_AW,	"ADW_PIRATECAMP_CAVE3_04");
	Wld_InsertNpc	(Mod_7003_HoherUntoterMagier_AW,	"ADW_PIRATECAMP_CAVE3_04");
	Wld_InsertNpc	(Mod_7004_HoherUntoterMagier_AW,	"ADW_PIRATECAMP_CAVE3_04");
	Wld_InsertNpc	(Mod_7005_HoherUntoterMagier_AW,	"ADW_PIRATECAMP_CAVE3_04");

	Log_CreateTopic	(TOPIC_MOD_BEL_PIRHENRY, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRHENRY, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_PIRHENRY, "Henry wants me to kill some undead guys who are hiding in the cave on the beach. However, they seem to have a spiked trap installed at the entrance. I need to see if I can somehow disable it.");
};

INSTANCE Info_Mod_Henry_Befreiung2 (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Befreiung2_Condition;
	information	= Info_Mod_Henry_Befreiung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The undead were defeated.";
};

FUNC INT Info_Mod_Henry_Befreiung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Befreiung))
	&& (Npc_IsDead(Mod_7001_HoherUntoterMagier_AW))
	&& (Npc_IsDead(Mod_7002_HoherUntoterMagier_AW))
	&& (Npc_IsDead(Mod_7003_HoherUntoterMagier_AW))
	&& (Npc_IsDead(Mod_7004_HoherUntoterMagier_AW))
	&& (Npc_IsDead(Mod_7005_HoherUntoterMagier_AW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Befreiung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung2_15_00"); //The undead were defeated.
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung2_04_01"); //(pleased) Very good work. Now these undead will no longer threaten us.
	AI_Output(hero, self, "Info_Mod_Henry_Befreiung2_15_02"); //How about a reward?
	AI_Output(self, hero, "Info_Mod_Henry_Befreiung2_04_03"); //Here, take this gold and four bottles of grog.

	CreateInvItems	(hero, ItMi_Gold, 250);
	CreateInvItems	(hero, ItFo_Addon_Grog, 4);

	B_ShowGivenThings	("250 Gold and 4 Grog received");

	AI_Output(hero, self, "Info_Mod_Henry_Befreiung2_15_04"); //Thanks.

	Mod_Piratenbefreiung += 1;

	B_GivePlayerXP	(450);

	B_LogEntry_More	(TOPIC_MOD_BEL_PIRHENRY, TOPIC_MOD_BEL_PIRATENLAGER, "I told Henry about my victory over the undead in the cave.", "I helped Henry with his problem with the undead.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRHENRY, LOG_SUCCESS);
};

INSTANCE Info_Mod_Henry_Todesangst (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Todesangst_Condition;
	information	= Info_Mod_Henry_Todesangst_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Henry_Todesangst_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Norek_Heimweh))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Todesangst_Info()
{
	AI_Output(self, hero, "Info_Mod_Henry_Todesangst_04_00"); //(loudly) Stop! I can't let you get involved.
	AI_Output(hero, self, "Info_Mod_Henry_Todesangst_15_01"); //What's going on? You know me, don't you?
	AI_Output(self, hero, "Info_Mod_Henry_Todesangst_04_02"); //Whatever. That's what the captain wants.
	AI_Output(hero, self, "Info_Mod_Henry_Todesangst_15_03"); //I need to talk to Greg. It's important.
	AI_Output(self, hero, "Info_Mod_Henry_Todesangst_04_04"); //Hmm. All right, then. You let Jack escort you to the camp.
	AI_Output(hero, self, "Info_Mod_Henry_Todesangst_15_05"); //If you say so...

	self.aivar[AIV_PASSGATE] = FALSE;
};

INSTANCE Info_Mod_Henry_Todesangst2 (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Todesangst2_Condition;
	information	= Info_Mod_Henry_Todesangst2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Henry_Todesangst2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlligatorJack_Todesangst2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Todesangst2_Info()
{
	AI_Output(self, hero, "Info_Mod_Henry_Todesangst2_04_00"); //Go through!

	self.aivar[AIV_PASSGATE] = TRUE;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Henry_Malcom (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Malcom_Condition;
	information	= Info_Mod_Henry_Malcom_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm supposed to order food at a skip for Malcom back there.";
};

FUNC INT Info_Mod_Henry_Malcom_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_AW_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Henry_Fleisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Malcom_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_Malcom_15_00"); //I'm supposed to order food at a skip for Malcom back there.
	AI_Output(self, hero, "Info_Mod_Henry_Malcom_04_01"); //First my bite. Then you can talk to whoever you want.
};

INSTANCE Info_Mod_Henry_Lehrer (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Lehrer_Condition;
	information	= Info_Mod_Henry_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Henry_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Hi))
	&& (Piraten_Dabei == TRUE)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Henry_Lehrer_04_00"); //I can teach you how to use two-handed people.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_PIRATEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_PIRATEN, "Henry can teach me how to handle two-handed people.");
};

INSTANCE Info_Mod_Henry_Lernen (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Lernen_Condition;
	information	= Info_Mod_Henry_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn.";
};

FUNC INT Info_Mod_Henry_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Lehrer))
	&& (Piraten_Dabei == TRUE)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henry_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Henry_Lernen_15_00"); //I want to learn.

	Info_ClearChoices	(Info_Mod_Henry_Lernen);

	Info_AddChoice	(Info_Mod_Henry_Lernen, DIALOG_BACK, Info_Mod_Henry_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Henry_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Henry_Lernen_2H_5);
	Info_AddChoice	(Info_Mod_Henry_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Henry_Lernen_2H_1);
};

FUNC VOID Info_Mod_Henry_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Henry_Lernen);
};

FUNC VOID Info_Mod_Henry_Lernen_2H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Henry_Lernen);

		Info_AddChoice	(Info_Mod_Henry_Lernen, DIALOG_BACK, Info_Mod_Henry_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Henry_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Henry_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Henry_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Henry_Lernen_2H_1);
	};
};

FUNC VOID Info_Mod_Henry_Lernen_2H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Henry_Lernen);

		Info_AddChoice	(Info_Mod_Henry_Lernen, DIALOG_BACK, Info_Mod_Henry_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Henry_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Henry_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Henry_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Henry_Lernen_2H_1);
	};
};

const string Henry_Checkpoint	= "ADW_PIRATECAMP_WAY_01";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_Henry_FirstWarn (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_FirstWarn_Condition;
	information	= Info_Mod_Henry_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Henry_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, Henry_Checkpoint) <= 700) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	
	if ((self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_RefuseTalk(self) == FALSE))
	{
		return TRUE;
	};
};

func void Info_Mod_Henry_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Henry_FirstWarn_04_00"); //HALT! I said you can't get in here.
	
	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, Henry_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Henry_SecondWarn (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_SecondWarn_Condition;
	information	= Info_Mod_Henry_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Henry_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, Henry_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_Henry_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Henry_SecondWarn_04_00"); //I'll tell you one last time. One more step and you'll enter the world of pain!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,Henry_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Henry_Attack (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Attack_Condition;
	information	= Info_Mod_Henry_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Henry_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,Henry_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_Henry_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_Henry_Attack_04_00"); //You asked for it...

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_Henry_Pickpocket (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_Pickpocket_Condition;
	information	= Info_Mod_Henry_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Henry_Pickpocket_Condition()
{
	C_Beklauen	(91, ItFo_Addon_Grog, 5);
};

FUNC VOID Info_Mod_Henry_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Henry_Pickpocket);

	Info_AddChoice	(Info_Mod_Henry_Pickpocket, DIALOG_BACK, Info_Mod_Henry_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Henry_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Henry_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Henry_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Henry_Pickpocket);
};

FUNC VOID Info_Mod_Henry_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Henry_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Henry_Pickpocket);

		Info_AddChoice	(Info_Mod_Henry_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Henry_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Henry_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Henry_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Henry_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Henry_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Henry_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Henry_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Henry_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Henry_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Henry_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Henry_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Henry_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Henry_EXIT (C_INFO)
{
	npc		= Mod_934_PIR_Henry_AW;
	nr		= 1;
	condition	= Info_Mod_Henry_EXIT_Condition;
	information	= Info_Mod_Henry_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Henry_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Henry_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
