INSTANCE Info_Mod_Telbor_Hi (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Hi_Condition;
	information	= Info_Mod_Telbor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_Hi_Condition()
{
	if (Kapitel == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_00"); //Hey, stranger. What brings you here at this difficult time?
	AI_Output(hero, self, "Info_Mod_Telbor_Hi_15_01"); //You seem pretty sad. What has happened?
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_02"); //I don't even know where to start. It all began with this dark pilgrim...
	AI_Output(hero, self, "Info_Mod_Telbor_Hi_15_03"); //The Dark Pilgrim?
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_04"); //Yes, he came up the stairs here last night and disappeared in the woods.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_05"); //A few hours later he came back and asked Akil to stay for the night. Akil is a man of faith and did not want to violate the right of hospitality, even if the pilgrim was not quite a monster in a dark robe.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_06"); //Anyway, he stayed over the night, didn't speak a word during this time and disappeared the next morning in the direction of Orlan's tavern.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_07"); //And since then the disaster has taken its course.
	AI_Output(hero, self, "Info_Mod_Telbor_Hi_15_08"); //What happened after that?
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_09"); //It started out inconspicuously at first. From the cemetery in the woods, strange noises, moaning and groaning have been going on since then.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_10"); //My buddy Tonak went out to see what was going on and didn't come back. Something terrible must have happened to him.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_11"); //But this is just the beginning. Ehnim and Egill had several smaller fights, but on that day they were like wild wolves.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_12"); //It began with a small exchange of words, which quickly turned into a fierce argument.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_13"); //Both of them were so upset that Egill hit his brother so unhappy with the sickle on his neck that he was badly injured.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_14"); //Scared by his own actions Egill ran off towards Orlan and has also disappeared since then.

	Log_CreateTopic	(TOPIC_MOD_AKILSHOF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AKILSHOF, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_DUNKLERPILGER, TOPIC_MOD_AKILSHOF, "It's getting more and more mysterious. Since the dark pilgrim came to Akil's farm, devastating things have happened there. He then disappeared towards the tavern.", "Since the pilgrim's visit, disturbing things have happened on the farm. Strange noises came from the cemetery in the woods. Tonak didn't come back after he tried to look there. Egill and Ehnim went at each other like mad. Ehnim was badly wounded and Egill ran away towards the tavern.");

	B_GivePlayerXP	(200);

	Wld_InsertNpc	(Zombie_Tonak, "WP_GAMPLE_TONAK_ZOMBIE");

	Mod_AkilsHof_WaitingForDeath = Wld_GetDay();
};

INSTANCE Info_Mod_Telbor_WhatHappenedNext (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WhatHappenedNext_Condition;
	information	= Info_Mod_Telbor_WhatHappenedNext_Info;
	permanent	= 0;
	important	= 0;
	description	= "And what about the others in the yard?";
};

FUNC INT Info_Mod_Telbor_WhatHappenedNext_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WhatHappenedNext_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_WhatHappenedNext_15_00"); //And what about the others in the yard? Why didn't you all go on a search together?
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext_12_01"); //If only the others could do it. Since that night they are all seriously ill and have retreated to the house.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext_12_02"); //It's better if you don't get too close to them, you might get sick too.

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "All the others are seriously ill and have retired to the house.");
};

INSTANCE Info_Mod_Telbor_WhatHappenedNext2 (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WhatHappenedNext2_Condition;
	information	= Info_Mod_Telbor_WhatHappenedNext2_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's the matter with you? Are you feeling all right?";
};

FUNC INT Info_Mod_Telbor_WhatHappenedNext2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_WhatHappenedNext))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WhatHappenedNext2_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_WhatHappenedNext2_15_00"); //What's the matter with you? Are you feeling all right?
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext2_12_01"); //That's right, I hadn't even mentioned that.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext2_12_02"); //I was in town that night to deliver our goods and do other things and when it was already too dark for the way back, I stayed in the hostel for the night.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext2_12_03"); //I came back early the next morning and just saw the pilgrim leaving for Orlan.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext2_12_04"); //This cursed fiend, this spawn of evil. He must be responsible for all this.
};

INSTANCE Info_Mod_Telbor_WhatHappenedNext3 (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WhatHappenedNext3_Condition;
	information	= Info_Mod_Telbor_WhatHappenedNext3_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you going to do now?";
};

FUNC INT Info_Mod_Telbor_WhatHappenedNext3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_WhatHappenedNext2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WhatHappenedNext3_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_WhatHappenedNext3_15_00"); //What are you going to do now?
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_01"); //I don't know, sir. I can't leave here anyway.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_02"); //I have to stay there to warn passing walkers against approaching the house.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_03"); //In addition, wild animals from the forest could fall down on injured Ehnim and the sick.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_04"); //But on the other hand they absolutely need medicine and Ehnim healing, otherwise they might not survive the next days.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_05"); //If you find the time and means to do so, I would ask you to try to find help for us somewhere.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_06"); //Maybe in the monastery, or in the city where there is a curative water magician,.... or the herb witch near the big farm.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_07"); //But please hurry, or we'll all be in bad shape.

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "Telbor has asked me to provide healing for Ehnim and medicine for the sick to stop their infirmity. He said that I might be able to find support in the monastery, in the city with a water magician, or with an herb witch near the big farm.");
};

INSTANCE Info_Mod_Telbor_TonakZombie (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_TonakZombie_Condition;
	information	= Info_Mod_Telbor_TonakZombie_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found your friend Tonak.";
};

FUNC INT Info_Mod_Telbor_TonakZombie_Condition()
{
	if (Mod_KnowsTonakZombie == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_TonakZombie_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_TonakZombie_15_00"); //I found your friend Tonak.
	AI_Output(self, hero, "Info_Mod_Telbor_TonakZombie_12_01"); //Yes, where is he?
	AI_Output(hero, self, "Info_Mod_Telbor_TonakZombie_15_02"); //Um....
	AI_Output(self, hero, "Info_Mod_Telbor_TonakZombie_12_03"); //Why didn't he come with you? Something hasn't happened to him, has it? (holds briefly) He's not... dead?

	if (Npc_IsDead(Zombie_Tonak))
	{
		AI_Output(hero, self, "Info_Mod_Telbor_TonakZombie_15_04"); //Well, then... well, whatever. He rots with zombies and other undead bastards in the cemetery.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Telbor_TonakZombie_15_05"); //Well, then... well, whatever. He walks around the cemetery with zombies and other undead bastards.
	};

	AI_Output(self, hero, "Info_Mod_Telbor_TonakZombie_12_06"); //I'll have to digest that first.
	
	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Telbor_Gerettet (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Gerettet_Condition;
	information	= Info_Mod_Telbor_Gerettet_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_Gerettet_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_Gerettet_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_Gerettet_12_00"); //You actually did it. Be sure of my eternal thanks. Without you, we would have all been lost.
	
	B_GivePlayerXP	(150);

	B_StartOtherRoutine	(Mod_900_BAU_Akil_NW, "START");
	B_StartOtherRoutine	(Mod_906_BAU_Randolph_NW, "FOLLOWPLAYER");
	B_StartOtherRoutine	(Mod_905_BAU_Kati_NW, "START");
	B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "START");

	B_SetTopicStatus	(TOPIC_MOD_AKILSHOF, LOG_SUCCESS);

	CurrentNQ += 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_39);
};

INSTANCE Info_Mod_Telbor_AllDead (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_AllDead_Condition;
	information	= Info_Mod_Telbor_AllDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_AllDead_Condition()
{
	if (Mod_AkilsHofAusgestorben == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_AllDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_AllDead_12_00"); //(resigned) Too late. They're all different in the house. I'll get to bury her soon.
	
	B_GivePlayerXP	(50);

	Mod_AkilsHof_WaitingForDeath = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "I must have taken too much time. The sick are no longer among us.");
	B_SetTopicStatus	(TOPIC_MOD_AKILSHOF, LOG_SUCCESS);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_40);
};

INSTANCE Info_Mod_Telbor_AllZombies (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_AllZombies_Condition;
	information	= Info_Mod_Telbor_AllZombies_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_AllZombies_Condition()
{
	if (Mod_AkilsHofAusgestorben == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_AllZombies_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_00"); //Does Innos have no mercy at all? How can he let something so horrible happen?
	AI_Output(hero, self, "Info_Mod_Telbor_AllZombies_15_01"); //Yeah, it must be hard, but death is part of life.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_02"); //Life?! Life?! Death?! If it were only that-- When I wanted to go to bury the poor yesterday, they suddenly began to move.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_03"); //I stood still, amazed and motionless, watching them rise. It was night and dark in the house so I couldn't see their faces.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_04"); //When they were standing in front of me, I believed in a miracle.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_05"); //But when I got too close to them, they suddenly began to beat after me and to make horrible, tortured sounds.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_06"); //I fell backwards and saw Akil's face now, as the moonlight on it much. It was cruelly distorted with dead, expressionless eyes.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_07"); //They had all become disgusting zombies. At the last moment I could still fall out of the house, otherwise I would have ended as the meal of these undead.
	AI_Output(hero, self, "Info_Mod_Telbor_AllZombies_15_08"); //Hmm, yeah, that's bad, of course.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_09"); //I certainly don't want to spend a moment in this cursed place.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_10"); //We go to the city and hope that a better fate awaits us there. There's only misery here, death... and even worse...

	B_GivePlayerXP	(100);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "CITY");

	if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "CITY");
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "CITY");
	};
};

INSTANCE Info_Mod_Telbor_WantingToHof (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WantingToHof_Condition;
	information	= Info_Mod_Telbor_WantingToHof_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_WantingToHof_Condition()
{
	if (Kapitel >= 3)
	&& (Mod_Telbor_GoingToHof == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Telbor_AllZombies))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WantingToHof_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_WantingToHof_12_00"); //Hello, is there any news from the outside world?
	AI_Output(hero, self, "Info_Mod_Telbor_WantingToHof_15_01"); //Well, at the moment there's a lot of bad luck between gods, demons and magicians. Hard times are hard times.
	AI_Output(hero, self, "Info_Mod_Telbor_WantingToHof_15_02"); //And what have you got to report? How's life in the city?
	AI_Output(self, hero, "Info_Mod_Telbor_WantingToHof_12_03"); //Oh, it's an unworthy existence. Somehow, one has to be a day labourer or leads the sheep to the meadow.
	AI_Output(self, hero, "Info_Mod_Telbor_WantingToHof_12_04"); //At the time on Akil's farm it wasn't always easy, but it was real work, for which you were also rewarded with a good harvest and with recognition.
	AI_Output(self, hero, "Info_Mod_Telbor_WantingToHof_12_05"); //Here I'm nothing but a thief and a bum.
};

INSTANCE Info_Mod_Telbor_WhyNotHof (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WhyNotHof_Condition;
	information	= Info_Mod_Telbor_WhyNotHof_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why don't you start again and put Akil's farm into operation?";
};

FUNC INT Info_Mod_Telbor_WhyNotHof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_WantingToHof))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WhyNotHof_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_WhyNotHof_15_00"); //Why don't you start again and put Akil's farm into operation?
	AI_Output(self, hero, "Info_Mod_Telbor_WhyNotHof_12_01"); //A beautiful dream, but as long as the undead are still living there, I will certainly not set foot there.
	AI_Output(self, hero, "Info_Mod_Telbor_WhyNotHof_12_02"); //Well, what should I keep talking about? The sheep must be milked. Thanks for the interview.

	Log_CreateTopic	(TOPIC_MOD_TELBOR_WEHMUT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TELBOR_WEHMUT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TELBOR_WEHMUT, "Telbor has complained about life in the city. He would like to run Akil's farm again, but is afraid of the undead in the house.");
};

INSTANCE Info_Mod_Telbor_ZombiesWeg (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_ZombiesWeg_Condition;
	information	= Info_Mod_Telbor_ZombiesWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "The undead in the house are gone.";
};

FUNC INT Info_Mod_Telbor_ZombiesWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_WhyNotHof))
	&& (Npc_IsDead(Zombie_Akil))
	&& (Npc_IsDead(Zombie_Randolph))
	&& (Npc_IsDead(Zombie_Kati))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_ZombiesWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_ZombiesWeg_15_00"); //The undead in the house are gone.
	AI_Output(self, hero, "Info_Mod_Telbor_ZombiesWeg_12_01"); //What, really? Thanks for the averaging. Yeah, actually, I could go back now, just...
	AI_Output(hero, self, "Info_Mod_Telbor_ZombiesWeg_15_02"); //Yeah, what else?
	AI_Output(self, hero, "Info_Mod_Telbor_ZombiesWeg_12_03"); //I'd rather wait and see if the dark pilgrim doesn't go back to his mischief.
	AI_Output(self, hero, "Info_Mod_Telbor_ZombiesWeg_12_04"); //Oh, if only I could be sure that he would never again do harm...

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_TELBOR_WEHMUT, "Well, the dark pilgrim or, as the case may be, Urnol still gives him cause for concern. Before Telbor can't be sure to stay untroubled by him, he wants to wait for his return to the farm.");
};

INSTANCE Info_Mod_Telbor_PilgerTot (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_PilgerTot_Condition;
	information	= Info_Mod_Telbor_PilgerTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "The hideous pilgrim will never again be able to harm anyone.";
};

FUNC INT Info_Mod_Telbor_PilgerTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_ZombiesWeg))
	&& (Mod_IstUrnolTot == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_PilgerTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_PilgerTot_15_00"); //The hideous pilgrim will never again be able to harm anyone.
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_01"); //What, are you really sure?
	AI_Output(hero, self, "Info_Mod_Telbor_PilgerTot_15_02"); //Yeah, I saw him go down.
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_03"); //What a pleasant message. Has this obnoxious fiend still received his just punishment?
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_04"); //May he burn with Beliar for all eternity.
	AI_Output(hero, self, "Info_Mod_Telbor_PilgerTot_15_05"); //So now you're gonna get back to work on the farm?
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_06"); //Yes, now there seems to be hardly anything standing in the way of it. It's just....
	AI_Output(hero, self, "Info_Mod_Telbor_PilgerTot_15_07"); //What else now?
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_08"); //Well, without additional workers it will be difficult to run the farm.
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_09"); //Two more farmhands and a maid should be there by now. But now that I'm supposed to find them fast....

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_TELBOR_WEHMUT, "This time there are two workers and a maid who are missing so that work can be resumed on the farm.");
};

INSTANCE Info_Mod_Telbor_FarmWorking (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_FarmWorking_Condition;
	information	= Info_Mod_Telbor_FarmWorking_Info;
	permanent	= 0;
	important	= 0;
	description	= "You can now return to the yard.";
};

FUNC INT Info_Mod_Telbor_FarmWorking_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_PilgerTot))
	&& (Npc_KnowsInfo(hero, Info_Mod_Onar_BauernFuerAkil))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_FarmWorking_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_FarmWorking_15_00"); //You can now return to the yard.
	AI_Output(hero, self, "Info_Mod_Telbor_FarmWorking_15_01"); //Indeed, two farm workers and a maid have found each other, who will help to restore the farm.
	AI_Output(self, hero, "Info_Mod_Telbor_FarmWorking_12_02"); //(joyous) Really? Then Innos may not have forgotten us when he sends us a selfless helper like you.
	AI_Output(self, hero, "Info_Mod_Telbor_FarmWorking_12_03"); //I don't know how to thank you. May the blessing be with you forever.
	
	B_SetTopicStatus	(TOPIC_MOD_TELBOR_WEHMUT, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1409_BAU_Bauer_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1410_BAU_Bobo_NW, "ATAKIL");

	if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "START");
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "START");
	};

	Mod_Telbor_HofBesetzt = Wld_GetDay();

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Telbor_Hausbesetzer (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Hausbesetzer_Condition;
	information	= Info_Mod_Telbor_Hausbesetzer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_Hausbesetzer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_FarmWorking))
	&& (Mod_Telbor_GoingToHof == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_Hausbesetzer_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_Hausbesetzer_12_00"); //Doesn't it end at all?!
	AI_Output(hero, self, "Info_Mod_Telbor_Hausbesetzer_15_01"); //What's happening?
	AI_Output(self, hero, "Info_Mod_Telbor_Hausbesetzer_12_02"); //Some obscure characters have occupied our house.
	AI_Output(self, hero, "Info_Mod_Telbor_Hausbesetzer_12_03"); //We certainly won't put another foot in there until they're gone.

	Log_CreateTopic	(TOPIC_MOD_TELBOR_HAUSBESETZER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TELBOR_HAUSBESETZER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TELBOR_HAUSBESETZER, "Telbor complains that he is no longer able to enter the house, as sinister creatures have settled there.");
};

INSTANCE Info_Mod_Telbor_Uriela (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Uriela_Condition;
	information	= Info_Mod_Telbor_Uriela_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_Uriela_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_LiveTogether))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_Uriela_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_Uriela_12_00"); //So, did you finally drive her out of the house?
	AI_Output(hero, self, "Info_Mod_Telbor_Uriela_15_01"); //No. They are refugees who, like you, have suffered under the Master of the Dark Pilgrim.
	AI_Output(hero, self, "Info_Mod_Telbor_Uriela_15_02"); //Couldn't you imagine living with them for a while?
	AI_Output(self, hero, "Info_Mod_Telbor_Uriela_12_03"); //What?! Beliars with that filth?! Never ever!
};

INSTANCE Info_Mod_Telbor_TalkAgain (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_TalkAgain_Condition;
	information	= Info_Mod_Telbor_TalkAgain_Info;
	permanent	= 0;
	important	= 0;
	description	= "Okay, then I'll talk to them again.";
};

FUNC INT Info_Mod_Telbor_TalkAgain_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Uriela))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Telbor_GoBackToCity))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_TalkAgain_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_TalkAgain_15_00"); //Okay, then I'll talk to them again.

	B_LogEntry	(TOPIC_MOD_TELBOR_HAUSBESETZER, "Under no circumstances can Telbor imagine living with the Belians. Then I'll have to try to convince Uriela to go somewhere else.");
};

INSTANCE Info_Mod_Telbor_GoBackToCity (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_GoBackToCity_Condition;
	information	= Info_Mod_Telbor_GoBackToCity_Info;
	permanent	= 0;
	important	= 0;
	description	= "All right, all right. If you don't like it, you can go back to town.";
};

FUNC INT Info_Mod_Telbor_GoBackToCity_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Uriela))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Telbor_TalkAgain))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_GoBackToCity_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_GoBackToCity_15_00"); //All right, all right. If you don't like it, you can go back to town.
	AI_Output(self, hero, "Info_Mod_Telbor_GoBackToCity_12_01"); //That's exactly what I'm gonna do. The others can do whatever they want.
	AI_Output(self, hero, "Info_Mod_Telbor_GoBackToCity_12_02"); //And I would like to say that I'm extremely disappointed in you.
	AI_Output(self, hero, "Info_Mod_Telbor_GoBackToCity_12_03"); //I was badly mistaken about you.
	
	B_SetTopicStatus	(TOPIC_MOD_TELBOR_HAUSBESETZER, LOG_FAILED);

	Wld_InsertNpc	(FeldarbeiterSkelett_Akil, "FARM2");

	B_GivePlayerXP	(150);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "CITY");
	B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1409_BAU_Bauer_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1410_BAU_Bobo_NW, "ATAKIL");

	if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "START");
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "START");
	};
};

INSTANCE Info_Mod_Telbor_SindWeg (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_SindWeg_Condition;
	information	= Info_Mod_Telbor_SindWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_SindWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_TeachingFinished))
	|| (Npc_KnowsInfo(hero, Info_Mod_Uriela_Bengar))
	|| (Mod_UrielaCo_Weg == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_SindWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_SindWeg_12_00"); //So, is the house finally empty?
	AI_Output(hero, self, "Info_Mod_Telbor_SindWeg_15_01"); //Yeah, you could go back inside.
	AI_Output(self, hero, "Info_Mod_Telbor_SindWeg_12_02"); //Again, I owe you a debt of gratitude. I hope that can at least compensate you for something.

	B_GivePlayerXP	(300);

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_TELBOR_HAUSBESETZER, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1409_BAU_Bauer_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1410_BAU_Bobo_NW, "ATAKIL");

	if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "START");
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "START");
	};

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Telbor_Pickpocket (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Pickpocket_Condition;
	information	= Info_Mod_Telbor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Telbor_Pickpocket_Condition()
{
	C_Beklauen	(40, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Telbor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

	Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_BACK, Info_Mod_Telbor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Telbor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Telbor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);
};

FUNC VOID Info_Mod_Telbor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

		Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Telbor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Telbor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Telbor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Telbor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Telbor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Telbor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Telbor_EXIT (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_EXIT_Condition;
	information	= Info_Mod_Telbor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Telbor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Telbor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
