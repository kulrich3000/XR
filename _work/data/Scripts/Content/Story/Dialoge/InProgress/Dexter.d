INSTANCE Info_Mod_Dexter_Hi (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Hi_Condition;
	information	= Info_Mod_Dexter_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Parole))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_00"); //What the hell are you doing here?
	AI_Output(hero, self, "Info_Mod_Dexter_Hi_15_01"); //I've come to join you.

	if (Gardist_Dabei == TRUE)
	|| (Mod_AnzahlNebengilden >= MaxNebengilden) {
		AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_02"); //Okay, you have our password.

		if (Gardist_Dabei == TRUE) {
			AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_03"); //But I have heard that you are already part of the Old Camp.
		} else {
			AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_04"); //But I have heard that you are already part of many other camps.
		};

		AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_05"); //You can't become a real bandit anymore. The danger of you passing on information from us is too great for me.
		AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_06"); //You are free to enter our camp and deal with the boys.
		AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_07"); //Don't make any trouble, okay?

		B_SetTopicStatus	(TOPIC_MOD_AUFNAHME_BANDITEN, LOG_FAILED);
	} else {
		AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_08"); //It seems that you have already convinced a few of us, or else you wouldn't have come in here alive.
		AI_Output(self, hero, "Info_Mod_Dexter_Hi_28_09"); //So if you want, you can become one of us now.

		B_LogEntry	(TOPIC_MOD_AUFNAHME_BANDITEN, "Dexter's gonna take me in now if I want to.");
	};

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Dexter_Aufnahme (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Aufnahme_Condition;
	information	= Info_Mod_Dexter_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to be a bandit.";
};

FUNC INT Info_Mod_Dexter_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Hi))
	&& (Gardist_Dabei == FALSE)
	&& (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_Aufnahme_15_00"); //I want to be a bandit.
	AI_Output(self, hero, "Info_Mod_Dexter_Aufnahme_28_01"); //Here's your armour. You can make yourself useful in the camp now.

	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_LogEntry_More	(TOPIC_MOD_NEBENGILDEN, TOPIC_MOD_AUFNAHME_BANDITEN, "Dexter took me in with the bandits.", "Dexter took me in and gave me armor.");
	B_SetTopicStatus	(TOPIC_MOD_AUFNAHME_BANDITEN, LOG_SUCCESS);

	B_GivePlayerXP	(400);

	CreateInvItems	(self, ITAR_BDT_M_01, 1);
	B_GiveInvItems	(self, hero, ITAR_BDT_M_01, 1);

	Banditen_Dabei = TRUE;

	B_Göttergefallen(3, 2);

	Mod_AnzahlNebengilden += 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_64);
};

INSTANCE Info_Mod_Dexter_WhatToDo (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_WhatToDo_Condition;
	information	= Info_Mod_Dexter_WhatToDo_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are my responsibilities as a bandit?";
};

FUNC INT Info_Mod_Dexter_WhatToDo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Hi))
	&& (Banditen_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_WhatToDo_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_WhatToDo_15_00"); //What are my responsibilities as a bandit?
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_01"); //They are very diverse and varied.
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_02"); //Of course, we plan and carry out robberies first and foremost and look elsewhere, where there is something to get with a bit of skill.
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_03"); //Only a few days ago we stalked a small group of hostile orcs on their way to the Orc City in the southwest.
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_04"); //A quite valuable artifact fell into our hands. But I'll deal with that some other time.
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_05"); //In any case, without buyers and receivers to whom we could resell our captured goods, we would lack a central source of income.
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_06"); //We have contacts and customers all over Khorinis. We therefore also act as traders, messengers, and occasionally even take on orders that are too hot for others.
	AI_Output(self, hero, "Info_Mod_Dexter_WhatToDo_28_07"); //Once you have proven yourself in the camp, some good fish will fall for you. You'll enjoy life as a bandit.
};

INSTANCE Info_Mod_Dexter_Job (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Job_Condition;
	information	= Info_Mod_Dexter_Job_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have you got something for me to do?";
};

FUNC INT Info_Mod_Dexter_Job_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_WhatToDo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Job_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_Job_15_00"); //You got something to do for me?
	AI_Output(self, hero, "Info_Mod_Dexter_Job_28_01"); //Not for the time being. Maybe come back in a few days.

	Mod_DextersJob = Wld_GetDay();

	Log_CreateTopic	(TOPIC_MOD_BDT_ORKS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_ORKS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter's got nothing to do for me for now. I should stop by his place in a couple of days.");
};

INSTANCE Info_Mod_Dexter_TimeOver (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_TimeOver_Condition;
	information	= Info_Mod_Dexter_TimeOver_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_TimeOver_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Job))
	&& ((Mod_DextersJob + 2) <= Wld_GetDay())
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_TimeOver_Info()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche2))
	|| (Mod_Banditenueberfall_Esteban == 11)
	|| (Mod_Orks_Morgahard == 4)
	{
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_00"); //You have already served our camp well and shown yourself to be a skillful and worthy bandit.
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_01"); //So I have a very important task for you.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_02"); //So far you haven't done anything really big for our camp.
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_03"); //But since you know the old camp of former times well and nobody knows about your affiliation to us, you can finally do something important for us.
	};

	AI_Output(hero, self, "Info_Mod_Dexter_TimeOver_15_04"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_05"); //I told you a few days ago in our conversation that we had captured an important artifact from the orcs.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_06"); //Well, this item was a magical amulet.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_07"); //From a book about lost treasures from the old days we learned that this piece of jewellery belonged to a series of powerful objects, which were once supposed to have been created by divine instruction in the smelting furnaces of Nordmars, long before the foundation of the clans.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_08"); //We entered into negotiations with the transforming magicians, who showed great interest in the amulet.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_09"); //They even gave us some valuable spell rolls on the spot to seal the deal.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_10"); //Now Quentin was to bring the amulet to them yesterday, after Oschust had given him a fresh shine. He's actually a capable man and one of our best fighters.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_11"); //On the way he stopped in the old camp to watch some arena fights. He drank one or the other sip and got into an argument with a foreign fighter.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_12"); //Well, to get to the point, they outbid each other with their bets to be able to send the other on the arena floor and this idiot Quentin offered the amulet at last.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_13"); //The fight didn't last long, Quentin sank into the dust after a few strokes of his opponent and the amulet was loose.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_14"); //This is a heavy blow to our entire camp, because some of the spell rolls given to us by the magicians were used up on a reconnaissance mission.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_15"); //This is not an easy way to reverse business and the reputation of our reliability is at stake.

	if (Kapitel >= 4)
	{
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_16"); //And that the old camp is now in the hands of the orcs doesn't make it any easier.
	};

	AI_Output(hero, self, "Info_Mod_Dexter_TimeOver_15_17"); //And I'm supposed to retrieve the amulet?
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_18"); //That's right, you get the point.

	B_Say	(hero, self, "$WIESOLLICHVORGEHEN");

	if (Kapitel >= 4)
	{
		AI_Output(hero, self, "Info_Mod_Dexter_TimeOver_15_19"); //Knock nicely and ask if anyone has seen the amulet by any chance?
	};

	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_20"); //We found out that the fighter is called Sabitsch and is an old friend of Thorus from the days before the colony.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_21"); //He has been on the road a lot and is said to have won victories in numerous arenas of the well-known world.
	AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_22"); //After he heard about the fall of the barrier and the reign of his old friend Thorus over the camp, he must have come here as a knight of fortune to take some of the treasures of this valley.

	if (Kapitel < 4)
	{
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_23"); //So a lot of dexterity is required for your task, because he is not only a notorious fighter, but also a good friend of Thorus and we don't want to mess it up with the old camp.
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_24"); //Try to find out as much about him as possible, talk to the people who often deal with him - not Thorus, of course.
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_25"); //And then do everything you can to get back into possession of the amulet... leave as little trace as possible if it should happen in a way that could lead to conflicts with the Old Camp.

		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter gave me the task of retrieving the amulet that lost Quentin to Sabitsch. I must proceed very skillfully, because Sabitsch, whom I will find in the old camp, is a formidable fighter and a good friend of Thorus.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_26"); //Well, didn't go as well for him as he hoped.
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_27"); //Although he was an excellent fighter, he probably didn't stand a chance against the 200 orcs sitting there now.
		AI_Output(hero, self, "Info_Mod_Dexter_TimeOver_15_28"); //Acha, what am I supposed to do?
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_29"); //Go in, find the arena, ransack the body, retrieve the amulet and bring it to us.
		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_30"); //However, perhaps in a less conspicuous form.

		B_Say	(hero, self, "$WASMEINSTDU");

		AI_Output(self, hero, "Info_Mod_Dexter_TimeOver_28_31"); //Talk to Quentin. He's got something for you.

		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter gave me the task of retrieving the amulet that lost Quentin to Sabitsch. This could still be found in the orc tried camp at the arena near his body. Dexter said Quentin had something on her so I wouldn't stand out in camp.");
	};

	Wld_InsertNpc	(Mod_7024_OUT_Sabitsch_MT,	"OC1");

	if (Kapitel >= 4)
	{
		B_KillNpc	(Mod_7024_OUT_Sabitsch_MT);
	};
};

INSTANCE Info_Mod_Dexter_AmulettBack (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_AmulettBack_Condition;
	information	= Info_Mod_Dexter_AmulettBack_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the amulet.";
};

FUNC INT Info_Mod_Dexter_AmulettBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_TimeOver))
	&& (Npc_HasItems(hero, ItAm_MegaAmulett) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_AmulettBack_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_AmulettBack_15_00"); //I have the amulet.

	B_GiveInvItems	(hero, self, ItAm_MegaAmulett, 1);

	if (Kapitel < 4)
	{
		if (Mod_SabitschArenaLooser < 2)
		{
			AI_Output(self, hero, "Info_Mod_Dexter_AmulettBack_28_01"); //Very good. Very good. You've done a great service to our camp.
			AI_Output(self, hero, "Info_Mod_Dexter_AmulettBack_28_02"); //Use this as a reward.

			CreateInvItems	(hero, ItMi_Gold, 500);
			CreateInvItems	(hero, ItMi_Nugget, 20);

			B_ShowGivenThings	("500 gold and 20 pieces of ore preserved");

			B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter was very pleased with my success and generously rewarded me.");

			B_GivePlayerXP	(600);
		}
		else if (Mod_SabitschAmulettGeklaut == 2)
		{
			AI_Output(self, hero, "Info_Mod_Dexter_AmulettBack_28_03"); //Well, you were caught stealing the amulet, but that's self-defeating and the main thing is that we have the amulet.
			AI_Output(self, hero, "Info_Mod_Dexter_AmulettBack_28_04"); //You've earned yourself a reward.

			CreateInvItems	(hero, ItMi_Gold, 300);
			CreateInvItems	(hero, ItMi_Nugget, 14);

			B_ShowGivenThings	("300 gold and 14 pieces of ore preserved");

			B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter was satisfied with me, despite the theft discovered, and he rewarded me appropriately.");

			B_GivePlayerXP	(200);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Dexter_AmulettBack_28_05"); //Amazing! You really did succeed. You've done a great service to our camp. Use this as a reward.

		CreateInvItems	(hero, ItMi_Gold, 500);
		CreateInvItems	(hero, ItMi_Nugget, 20);
		CreateInvItems	(hero, ItSc_TrfRabbit, 2);

		B_GivePlayerXP	(400);

		B_ShowGivenThings	("500 gold, 20 chunks of ore and 2 rulers preserved");
	};

	AI_Output(self, hero, "Info_Mod_Dexter_AmulettBack_28_06"); //Anyway, I'm gonna give quentin a second chance. He will bring the amulet to the magicians and complete the trade.

	Mod_DextersJob = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter has returned the amulet to Quentin to deliver it to the magicians. Hopefully everything will run smoothly this time.");
};

INSTANCE Info_Mod_Dexter_QuentinsBack (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_QuentinsBack_Condition;
	information	= Info_Mod_Dexter_QuentinsBack_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_QuentinsBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_AmulettBack))
	&& (Wld_GetDay() > Mod_DextersJob)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_QuentinsBack_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_00"); //Fucking hell.
	AI_Output(hero, self, "Info_Mod_Dexter_QuentinsBack_15_01"); //What has happened?
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_02"); //When Quentin handed over the amulet to the magician Albert, he examined the piece for a few minutes.
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_03"); //Then he suddenly threw the Quentin to her feet, was upset, spoke of deception and fraud.
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_04"); //He could still feel the rest of the magical aura of the real amulet, but this is clearly a fake.
	AI_Output(hero, self, "Info_Mod_Dexter_QuentinsBack_15_05"); //How is that possible?
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_06"); //Well, I'm not completely stupid either. I went over everything again and came to the only conclusion that this filthy Oschust must be behind it.
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_07"); //When we gave him the amulet to polish up, he must have made an exact copy in the same night, which he then handed over to us the next day.
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_08"); //He must have hidden the original somewhere. I can't just go to him now and cut him into pieces. We still need him.
	AI_Output(hero, self, "Info_Mod_Dexter_QuentinsBack_15_09"); //What remains to be done?
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_10"); //Das überlasse ich dir. Kümmere du dich um Oschust. Bringe ihn mit etwas "diplomacy" dazu, dir Auskunft über den Standort des Amulettes zu geben.
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_11"); //But he should still be able to pursue his counterfeiting trade afterwards. You understand?
	AI_Output(self, hero, "Info_Mod_Dexter_QuentinsBack_28_12"); //Good. Report back to me afterwards.

	Wld_InsertNpc	(Mod_10012_ORC_Scout_MT,	"OC1");
	Wld_InsertNpc	(Mod_10013_ORC_Scout_MT,	"OC1");
	Wld_InsertNpc	(Mod_10014_ORC_Elite_MT,	"OC1");
	Wld_InsertNpc	(Mod_10015_ORC_Elite_MT,	"OC1");
	Wld_InsertNpc	(Orcdog,	"WP_ORKBEIAMULETT");

	Wld_SendTrigger	("EVT_MT_ORKHOEHLEAMULETT");
};

INSTANCE Info_Mod_Dexter_FakeAmulett (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_FakeAmulett_Condition;
	information	= Info_Mod_Dexter_FakeAmulett_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where is the fake amulet now?";
};

FUNC INT Info_Mod_Dexter_FakeAmulett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_QuentinsBack))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_FakeAmulett_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_FakeAmulett_15_00"); //Where is the fake amulet now?
	AI_Output(self, hero, "Info_Mod_Dexter_FakeAmulett_28_01"); //I'm carrying it with me. Here, you can have it because you took it from the old camp.

	B_GiveInvItems	(self, hero, ItAm_MegaAmulett, 1);

	AI_Output(self, hero, "Info_Mod_Dexter_FakeAmulett_28_02"); //It's no longer of any value to us.
};

INSTANCE Info_Mod_Dexter_OschustAmulett (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_OschustAmulett_Condition;
	information	= Info_Mod_Dexter_OschustAmulett_Info;
	permanent	= 0;
	important	= 0;
	description	= "I learned from Oschust, where the amulet is located.";
};

FUNC INT Info_Mod_Dexter_OschustAmulett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_Umgehauen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_OschustAmulett_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_OschustAmulett_15_00"); //I learned from Oschust, where the amulet is located. Not far from here in a cave.
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_01"); //Very good. Very good. How cooperative was Oschust?
	AI_Output(hero, self, "Info_Mod_Dexter_OschustAmulett_15_02"); //Well, I had to put some emphasis on my position. Um, there's another problem.
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_03"); //Yes?
	AI_Output(hero, self, "Info_Mod_Dexter_OschustAmulett_15_04"); //The cave is full of orcs and warg now.
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_05"); //What, the orcs again?! So close to stock... that's not good.
	AI_Output(hero, self, "Info_Mod_Dexter_OschustAmulett_15_06"); //And what do we do about the amulet?
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_07"); //We don't have enough clout for a frontal attack... and a nightly robbery would fail because of the watchful dogs.
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_08"); //I also need my men here to protect the camp, as often as orcs are currently roaming around....
	AI_Output(hero, self, "Info_Mod_Dexter_OschustAmulett_15_09"); //Does that mean I'm on my own again?
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_10"); //Well... not necessarily. You could try hiring some Orchunters in the New Camp.
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_11"); //It doesn't come cheap. Here's some gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_12"); //Maybe you can also find a lunatic who plays the decoy and pulls the orcs out of the cave.
	AI_Output(self, hero, "Info_Mod_Dexter_OschustAmulett_28_13"); //Well, I'm sure you'll find a way. Good luck to you!

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter can't spare any people in the camp to recover the amulet and eventually advised me to hire some orcsoldiers to forcibly capture the jewelry. He also said that I could find an alternatively reckless one who would lure the orcs out of the cave. I wonder if I can think of anyone.");

	B_StartOtherRoutine	(Mod_7022_BDT_Oschust_MT, "TOT");
	AI_Teleport	(Mod_7022_BDT_Oschust_MT, "TOT");
};

INSTANCE Info_Mod_Dexter_OschustTot (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_OschustTot_Condition;
	information	= Info_Mod_Dexter_OschustTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Uh, I was trying to question oschust. Unfortunately, he passed away and....";
};

FUNC INT Info_Mod_Dexter_OschustTot_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Oschust_Amulett_A))
	|| (Npc_KnowsInfo(hero, Info_Mod_Oschust_Amulett_B)))
	&& (Npc_IsDead(Mod_7022_BDT_Oschust_MT))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustAmulett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_OschustTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_OschustTot_15_00"); //Uh, I was trying to question oschust. Unfortunately, he passed away and....
	AI_Output(self, hero, "Info_Mod_Dexter_OschustTot_28_01"); //What...?! You did a great job of it. Well... since you were so smart: have fun searching!

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter was unhappy about Oschust's demise. Finding the amulet now will be a difficult undertaking. I'll probably have to look for myself alone....");

	B_StartOtherRoutine	(Mod_7022_BDT_Oschust_MT, "TOT");
	AI_Teleport	(Mod_7022_BDT_Oschust_MT, "TOT");
};

INSTANCE Info_Mod_Dexter_Amulett2Gefunden (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Amulett2Gefunden_Condition;
	information	= Info_Mod_Dexter_Amulett2Gefunden_Info;
	permanent	= 0;
	important	= 0;
	description	= "I salvaged the amulet.";
};

FUNC INT Info_Mod_Dexter_Amulett2Gefunden_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustAmulett))
	|| (Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustTot)))
	&& (Npc_HasItems(hero, ItAm_MegaAmulett2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Amulett2Gefunden_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_Amulett2Gefunden_15_00"); //I salvaged the amulet.
	AI_Output(self, hero, "Info_Mod_Dexter_Amulett2Gefunden_28_01"); //Excellent. Now go directly to the transformation mage Albert and give it to him.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "I am to bring the extension's amulet to the transforming magician Albert.");
};

INSTANCE Info_Mod_Dexter_AmulettAbgegeben (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_AmulettAbgegeben_Condition;
	information	= Info_Mod_Dexter_AmulettAbgegeben_Info;
	permanent	= 0;
	important	= 0;
	description	= "Albert has received the amulet.";
};

FUNC INT Info_Mod_Dexter_AmulettAbgegeben_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Amulett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_AmulettAbgegeben_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_AmulettAbgegeben_15_00"); //Albert has received the amulet.
	AI_Output(self, hero, "Info_Mod_Dexter_AmulettAbgegeben_28_01"); //Very good. Very good. Did he give you the rest of the agreed-upon price?

	Info_ClearChoices	(Info_Mod_Dexter_AmulettAbgegeben);

	Info_AddChoice	(Info_Mod_Dexter_AmulettAbgegeben, "No, he was still angry about the fake jewelry.", Info_Mod_Dexter_AmulettAbgegeben_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 300)
	&& (Npc_HasItems(hero, ItSc_TrfSheep) >= 1)
	&& (Npc_HasItems(hero, ItSc_TrfKeiler) >= 1)
	{
		Info_AddChoice	(Info_Mod_Dexter_AmulettAbgegeben, "Yeah, you got everything here.", Info_Mod_Dexter_AmulettAbgegeben_A);
	};
};

FUNC VOID Info_Mod_Dexter_AmulettAbgegeben_C()
{
	AI_Output(self, hero, "Info_Mod_Dexter_AmulettAbgegeben_C_28_00"); //Be that as it may, after all the trouble over the last few days, we have to make up for it. Here, have a drink.

	CreateInvItems	(hero, ItFo_Addon_Grog, 1);

	B_UseItem	(hero, ItFo_Addon_Grog);

	AI_Output(self, hero, "Info_Mod_Dexter_AmulettAbgegeben_C_28_01"); //Real good sailor grog, which our boys once took from a merchant on Khorinis.
	AI_Output(self, hero, "Info_Mod_Dexter_AmulettAbgegeben_C_28_02"); //In addition, there are exquisite ham and crispy roasted meat. Tonight there's going to be no excuse. (laughs)

	CreateInvItems	(self, ItFo_Addon_Grog, 1);

	B_UseItem	(self, ItFo_Addon_Grog);

	Info_ClearChoices	(Info_Mod_Dexter_AmulettAbgegeben);

	AI_StopProcessInfos	(self);

	Mod_Dexter_AmulettParty = 1;
};

FUNC VOID Info_Mod_Dexter_AmulettAbgegeben_B()
{
	AI_Output(hero, self, "Info_Mod_Dexter_AmulettAbgegeben_B_15_00"); //No, he was still angry about the fake jewelry.
	AI_Output(self, hero, "Info_Mod_Dexter_AmulettAbgegeben_B_28_01"); //Damn, I almost feared that. Well, thanks for your efforts anyway.

	Info_Mod_Dexter_AmulettAbgegeben_C();
};

FUNC VOID Info_Mod_Dexter_AmulettAbgegeben_A()
{
	AI_Output(hero, self, "Info_Mod_Dexter_AmulettAbgegeben_A_15_00"); //Yeah, you got everything here.

	B_ShowGivenThings	("300 gold and 2 reels given");

	AI_Output(self, hero, "Info_Mod_Dexter_AmulettAbgegeben_A_28_01"); //Excellent. As a reward for your services around the camp you may keep the boar spell roll and 200 gold.

	B_ShowGivenThings	("200 gold and 1 spell rolls preserved");

	Npc_RemoveInvItems	(hero, ItMi_Gold, 100);
	Npc_RemoveInvItems	(hero, ItSc_TrfSheep, 1);

	B_GivePlayerXP	(300);

	Info_Mod_Dexter_AmulettAbgegeben_C();
};

INSTANCE Info_Mod_Dexter_BanditenKidnapped (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_BanditenKidnapped_Condition;
	information	= Info_Mod_Dexter_BanditenKidnapped_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_BanditenKidnapped_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_You))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_BanditenKidnapped_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_BanditenKidnapped_28_00"); //What happened, where are the other bandits?
	AI_Output(hero, self, "Info_Mod_Dexter_BanditenKidnapped_15_01"); //It was all an ambush. Oschust betrayed us to the orcs.

	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustTot))
	{
		AI_Output(self, hero, "Info_Mod_Dexter_BanditenKidnapped_28_02"); //How is that possible? I thought he was dead....
		AI_Output(hero, self, "Info_Mod_Dexter_BanditenKidnapped_15_03"); //No, the orcs had equipped him with magical artifacts that saved him from finally descending into Beliar's realm.
	};

	AI_Output(hero, self, "Info_Mod_Dexter_BanditenKidnapped_15_04"); //The other bandits were captured, I could barely resist my skin.
	AI_Output(self, hero, "Info_Mod_Dexter_BanditenKidnapped_28_05"); //Damn, this is a disaster. I have to think.... So, there is no time to lose, because our weakened camp can be attacked at any time.
	AI_Output(self, hero, "Info_Mod_Dexter_BanditenKidnapped_28_06"); //Hurry up to the old mountain fortress. There you will find orcs with whom we have dealings.
	AI_Output(self, hero, "Info_Mod_Dexter_BanditenKidnapped_28_07"); //Turn to Ur Shak. Maybe we can learn more from him.

	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Gnade))
	|| (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Plan))
	{
		AI_Output(hero, self, "Info_Mod_Dexter_BanditenKidnapped_15_08"); //I have already learned a lot about Oschust. He has indeed planned to attack our camp soon and wants to retrieve the amulet from the magicians.
		AI_Output(hero, self, "Info_Mod_Dexter_BanditenKidnapped_15_09"); //And the captured bandits will suffer badly....
		AI_Output(self, hero, "Info_Mod_Dexter_BanditenKidnapped_28_10"); //Hmm, in this case you can also turn to the Transformation Mages immediately. Talk to Albert, but hurry up.

		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "I should turn to the transforming magician Albert to tell him about the dangers that threaten his camp. Maybe this is how I can get support...");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Dexter advised me to contact Ur Shak in the old mountain stronghold to learn more about the future plans.");
	};
};

INSTANCE Info_Mod_Dexter_AngriffVorbei (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_AngriffVorbei_Condition;
	information	= Info_Mod_Dexter_AngriffVorbei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_AngriffVorbei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_FluchtHappy))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_AngriffVorbei_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_00"); //That was at the very last moment, but you did it.
	
	var int Mod_Survivors;
	Mod_Survivors = 8 - Mod_OC_Esteban - Mod_OC_Miguel - Mod_OC_Logan - Mod_OC_Juan - Mod_OC_Skinner - Mod_OC_Morgahard - Mod_OC_Bandit_01 - Mod_OC_Bandit_02;

	if (Mod_Survivors >= 6)
	{
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_01"); //Excellent, I see you were able to save most of them.
		AI_Output(hero, self, "Info_Mod_Dexter_AngriffVorbei_15_02"); //Yes, it was not easy, but with a lot of skill and the support of the transformation mages it was successful.
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_03"); //Great achievement. Here's 500 gold coins.

		B_GiveInvItems	(self, hero, ItMi_Gold, 500);

		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_04"); //This has to be celebrated. But not today.
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_05"); //A battle like today's even wipes out the strongest bandit.

		Mod_AlbertTransforms = 8;

		Mod_Dexter_BanditenParty = Wld_GetDay();
	}
	else if (Mod_Survivors >= 1)
	{
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_06"); //Ohh, I see some of them didn't make it.
		AI_Output(hero, self, "Info_Mod_Dexter_AngriffVorbei_15_07"); //The orcs have inflicted a great burden on us and some have died.
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_08"); //Very unfortunate, many good men. But in the fight against hordes of orcs, losses are to be expected.

		Mod_AlbertTransforms = 9;

		Mod_Dexter_BanditenParty = Wld_GetDay();
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_09"); //But where are the other bandits? You couldn't save any of them?
		AI_Output(hero, self, "Info_Mod_Dexter_AngriffVorbei_15_10"); //There were just too many orcs attacking us.
		AI_Output(self, hero, "Info_Mod_Dexter_AngriffVorbei_28_11"); //This is a disaster! Fucking orcs! How can we go on with our warehouse....

		Mod_AlbertTransforms = 7;

		Mod_Dexter_BanditenParty = Wld_GetDay();
	};

	CreateInvItems	(hero, ItAr_BDT_H_01, 1);

	B_ShowGivenThings	("Receiving heavy bandit armor");

	if (Mod_OC_Miguel == 0)
	{
		B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "START");
		Mod_958_BDT_Miguel_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Juan == 0)
	{
		B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "START");
		Mod_955_BDT_Juan_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Logan == 0)
	{
		B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "START");
		Mod_957_BDT_Logan_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Skinner == 0)
	{
		B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "START");
		Mod_964_BDT_Skinner_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Morgahard == 0)
	{
		B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "START");
		Mod_790_BDT_Morgahard_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Bandit_01 == 0)
	{
		B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "START");
		Mod_4074_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Bandit_02 == 0)
	{
		B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "START");
		Mod_4075_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};
	if (Mod_OC_Esteban == 0)
	{
		B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "START");
		Mod_948_BDT_Esteban_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	};

	B_StartOtherRoutine	(Mod_1120_BDT_Ratford_MT, "START");
	Mod_1120_BDT_Ratford_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_StartOtherRoutine	(Mod_961_BDT_Sancho_MT, "START");
	Mod_961_BDT_Sancho_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_StartOtherRoutine	(Mod_1121_BDT_Drax_MT, "START");
	Mod_1121_BDT_Drax_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "START");
	Mod_4072_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "START");
	Mod_4073_BDT_Bandit_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_GivePlayerXP(100+(300*Mod_Survivors));

	B_SetTopicStatus	(TOPIC_MOD_BDT_ORKS, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

FUNC VOID B_Dexter_SayNewArmor()
{
	AI_Output(self, hero, "B_Dexter_SayNewArmor_28_00"); //This old bandit armor may not look like the best, but it is perfect for longer raids even in difficult terrain... and you travel a lot.
	AI_Output(self, hero, "B_Dexter_SayNewArmor_28_01"); //It is made of resistant material and densely woven so that it can withstand all external influences in equal measure.
	AI_Output(self, hero, "B_Dexter_SayNewArmor_28_02"); //Have fun with it!

	B_GiveInvItems	(self, hero, ItAr_BDT_XL, 1);
};

INSTANCE Info_Mod_Dexter_PartyNachRettung (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_PartyNachRettung_Condition;
	information	= Info_Mod_Dexter_PartyNachRettung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_PartyNachRettung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_AngriffVorbei))
	&& (Mod_AlbertTransforms == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_PartyNachRettung_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_PartyNachRettung_28_00"); //(lightly ironic) Ahh, our savior. Come here and have a drink.

	if (Mod_Import_Dexter == LOG_SUCCESS)
	|| (Mod_Import_Dexter == -1)
	{
		AI_Output(self, hero, "Info_Mod_Dexter_PartyNachRettung_28_01"); //By the way, it took me a while, but I recognized you.
		AI_Output(hero, self, "Info_Mod_Dexter_PartyNachRettung_15_02"); //Then you know that back then,
		AI_Output(self, hero, "Info_Mod_Dexter_PartyNachRettung_28_03"); //Yeah, like you got me the recipe for that potion from Crazy Kalom back then. I got something here. Have a sip...

		B_GiveInvItems	(self, hero, ItPo_KalomsTrank, 1);

		B_UseItem	(hero, ItPo_KalomsTrank);
	}
	else
	{
		B_GiveInvItems	(self, hero, ItFo_Booze, 1);

		B_UseItem	(hero, ItFo_Booze);

		AI_Output(self, hero, "Info_Mod_Dexter_PartyNachRettung_28_04"); //I found something nice for you.

		B_Dexter_SayNewArmor();
	};

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Dexter_Wolkenwelt (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Wolkenwelt_Condition;
	information	= Info_Mod_Dexter_Wolkenwelt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Wolkenwelt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_PartyNachRettung))
	&& (Mod_CrazyRabbit >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Wolkenwelt_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Wolkenwelt_28_00"); //There you are again. While you were on the road in the land of dreams, I've been digging up something nice for you.

	B_Dexter_SayNewArmor();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Dexter_Alissandro (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Alissandro_Condition;
	information	= Info_Mod_Dexter_Alissandro_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Alissandro_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Alissandro))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Alissandro_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Alissandro_28_00"); //What's going on here?
	AI_Output(hero, self, "Info_Mod_Dexter_Alissandro_15_01"); //The guard won't let me in without a password.
	AI_Output(self, hero, "Info_Mod_Dexter_Alissandro_28_02"); //I know you, you can come in. Let's go to the camp, where we can talk better.

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Dexter_Botschaft (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Botschaft_Condition;
	information	= Info_Mod_Dexter_Botschaft_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a message from Alissandro.";
};

FUNC INT Info_Mod_Dexter_Botschaft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Alissandro))
	&& (Npc_HasItems(hero, ItWr_AliBotschaft) == 1)
	&& (Npc_GetDistToWP(self, "LOCATION_11_12_09") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Botschaft_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_Botschaft_15_00"); //I have a message from Alissandro.

	B_GiveInvItems	(hero, self, ItWr_AliBotschaft, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Dexter_Botschaft_28_01"); //Well, what happened to the actual ambassador?
	AI_Output(hero, self, "Info_Mod_Dexter_Botschaft_15_02"); //He was lying dead in front of the camp. That's why I'm here. Have you noticed anything?
	AI_Output(self, hero, "Info_Mod_Dexter_Botschaft_28_03"); //Bartholos people wanted to take us on their side and were here a few days ago.

	B_RemoveNpc	(Mod_943_GRD_Bloodwyn_MT);

	Wld_InsertNpc	(Mod_1876_EBR_Bloodwyn_MT, "LOCATION_11_05");
	Wld_InsertNpc	(Mod_1877_GRD_Gardist_MT, "LOCATION_11_05");
	Wld_InsertNpc	(Mod_1878_GRD_Gardist_MT, "LOCATION_11_05");
};

INSTANCE Info_Mod_Dexter_Plan (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Plan_Condition;
	information	= Info_Mod_Dexter_Plan_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have a plan?";
};

FUNC INT Info_Mod_Dexter_Plan_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bloodwyn_EBR_Belagerung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Plan_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_Plan_15_00"); //Do you have a plan?
	AI_Output(self, hero, "Info_Mod_Dexter_Plan_28_01"); //Under certain circumstances, however, is quite risky.
	AI_Output(hero, self, "Info_Mod_Dexter_Plan_15_02"); //And what is it?
	AI_Output(self, hero, "Info_Mod_Dexter_Plan_28_03"); //We don't stand a chance against all the guardsmen together, we have to kill them all at once.
	AI_Output(hero, self, "Info_Mod_Dexter_Plan_15_04"); //And how are we supposed to do that?
	AI_Output(self, hero, "Info_Mod_Dexter_Plan_28_05"); //Mach einfach das, was ich sage. Als erstes lockst du einen Gardisten zu mir. Ich belege ihn mit einer "Sleep" Spruchrolle.
	AI_Output(hero, self, "Info_Mod_Dexter_Plan_15_06"); //How am I gonna lure him?
	AI_Output(self, hero, "Info_Mod_Dexter_Plan_28_07"); //All guards guard the entrance, so it's hard to lure you away. However, one is something inside the camp and looks for the right thing. Attack him and lure him to me.

	B_LogEntry	(TOPIC_MOD_AL_BOTSCHAFTER, "Dexter's got a plan: I'm supposed to attack the guard who's on guard duty and lure the guard to Dexter.");
};

INSTANCE Info_Mod_Dexter_Gardist (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Gardist_Condition;
	information	= Info_Mod_Dexter_Gardist_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Gardist_Condition()
{
	if (Mod_LocktGardistZuDexter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Gardist_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Gardist_28_00"); //So, nun müssen wir warten, bis seine Kollegen nachschauen, was mit ihm passiert ist. In der Zeit brauchen wir eine "Fire Rain" Spruchrolle. Ich habe für Notfälle eine in meiner Truhe.
	AI_Output(self, hero, "Info_Mod_Dexter_Gardist_28_01"); //My chest is in the cave. I'll stay here in time and wait for the guards. When I give the signal, you ignite the part of speech.

	Mob_CreateItems	("DEXTERSTRUHE", ItSc_FireRain, 1);

	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "HOEHLE");
	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "HOEHLE");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "HOEHLE");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "HOEHLE");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "HOEHLE");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "HOEHLE");
	B_StartOtherRoutine	(Mod_7023_BDT_Quentin_MT, "HOEHLE");

	B_StartOtherRoutine	(Mod_1877_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1878_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1879_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1880_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1881_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1882_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1883_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1884_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1885_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1886_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1887_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1888_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1889_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1890_GRD_Gardist_MT, "FEUERREGEN");
	B_StartOtherRoutine	(Mod_1108_GRD_Bullit_MT, "FEUERREGEN");
};

INSTANCE Info_Mod_Dexter_Jetzt (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Jetzt_Condition;
	information	= Info_Mod_Dexter_Jetzt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Jetzt_Condition()
{
	if (Mob_HasItems("DEXTERSTRUHE", ItSc_FireRain) == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Dexter_Gardist))
	&& (Npc_GetDistToWP(Mod_1108_GRD_Bullit_MT, "LOCATION_11_08") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Jetzt_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Jetzt_28_00"); //Now, I'm hiding in the cave for so long.
	
	B_StartOtherRoutine	(self, "HOEHLE");
};

INSTANCE Info_Mod_Dexter_Feuerregen (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Feuerregen_Condition;
	information	= Info_Mod_Dexter_Feuerregen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Feuerregen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Jetzt))
	&& (Npc_IsDead(Mod_1108_GRD_Bullit_MT))
	&& (Npc_IsDead(Mod_1877_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1878_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1879_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1880_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1881_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1882_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1883_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1884_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1885_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1886_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1887_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1888_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1889_GRD_Gardist_MT))
	&& (Npc_IsDead(Mod_1890_GRD_Gardist_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Feuerregen_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Feuerregen_28_00"); //We won! We'll join Alissandro. Go to him and tell him about it.
	
	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "START");
	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "START");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "START");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "START");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "START");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "START");
	B_StartOtherRoutine	(Mod_7023_BDT_Quentin_MT, "START");

	B_LogEntry	(TOPIC_MOD_AL_BOTSCHAFTER, "I set off the rain of fire, all the guards are dead. Dexter and his guys are joining us. I'll report on the Alissandro.");
};

INSTANCE Info_Mod_Dexter_Eroberung_05 (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Eroberung_05_Condition;
	information	= Info_Mod_Dexter_Eroberung_05_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Eroberung_05_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_Eroberung_04))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Eroberung_05_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Eroberung_05_28_00"); //Then we penetrate...

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Dexter_Eroberung_07 (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Eroberung_07_Condition;
	information	= Info_Mod_Dexter_Eroberung_07_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_Eroberung_07_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Hymir_Eroberung_06))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_Eroberung_07_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_Eroberung_07_28_00"); //... and kicking Bartholo's ass and his people in the ass.
};

var int Dexter_LastPetzCounter;
var int Dexter_LastPetzCrime;

INSTANCE Info_Mod_Dexter_PMSchulden (C_INFO)
{
	npc         	= Mod_761_BDT_Dexter_MT;
	nr          	= 1;
	condition   	= Info_Mod_Dexter_PMSchulden_Condition;
	information 	= Info_Mod_Dexter_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Dexter_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Dexter_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Dexter_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Dexter_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_00"); //Did you come to pay your fine?

	if (B_GetTotalPetzCounter(self) > Dexter_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_01"); //I was wondering if you'd even dare come here!
		AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_02"); //Apparently, it's not the latest accusations!

		if (Dexter_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_03"); //I warned you! The fine you have to pay now is higher!
			AI_Output (hero, self, "Info_Mod_Dexter_PMAdd_15_00"); //How much?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Dexter_LastPetzCounter);
		
			if (diff > 0)
			{
				Dexter_Schulden = Dexter_Schulden + (diff * 50);
			};
		
			if (Dexter_Schulden > 1000)	{	Dexter_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Dexter_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_04"); //You let me down so badly!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Dexter_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_05"); //Some new things have come up.
		
		if (Dexter_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_06"); //Suddenly, there's no one left to accuse you of murder.
		};
		
		if (Dexter_LastPetzCrime == CRIME_THEFT)
		|| ( (Dexter_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_07"); //No one remembers seeing you at a theft.
		};
		
		if (Dexter_LastPetzCrime == CRIME_ATTACK)
		|| ( (Dexter_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_08"); //There's no more witnesses to the fact that you've ever been in a fight.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_09"); //Apparently all the charges against you have vanished.
		};
		
		AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_10"); //I don't know what happened, but I warn you: don't play games with me.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_11"); //Anyway, I've decided to waive your debt.
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_12"); //Make sure you don't get in trouble again.
	
			Dexter_Schulden			= 0;
			Dexter_LastPetzCounter 	= 0;
			Dexter_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_13"); //One thing is clear: you still have to pay your penalty in full.
			B_Say_Gold (self, hero, Dexter_Schulden);
			AI_Output (self, hero, "Info_Mod_Dexter_PMSchulden_28_14"); //So, what is it?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Dexter_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Dexter_PETZMASTER);
		Info_AddChoice		(Info_Mod_Dexter_PMSchulden,"I haven't got enough gold!",Info_Mod_Dexter_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Dexter_PMSchulden,"How much was that again?",Info_Mod_Dexter_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Dexter_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Dexter_PMSchulden,"I want to pay the penalty!",Info_Mod_Dexter_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Dexter_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Dexter_PMSchulden_HowMuchAgain_15_00"); //How much was it again?
	B_Say_Gold (self, hero, Dexter_Schulden);

	Info_ClearChoices  	(Info_Mod_Dexter_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Dexter_PETZMASTER);
	Info_AddChoice		(Info_Mod_Dexter_PMSchulden,"I haven't got enough gold!",Info_Mod_Dexter_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Dexter_PMSchulden,"How much was that again?",Info_Mod_Dexter_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Dexter_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Dexter_PMSchulden,"I want to pay the penalty!",Info_Mod_Dexter_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Dexter_PETZMASTER   (C_INFO)
{
	npc         	= Mod_761_BDT_Dexter_MT;
	nr          	= 1;
	condition   	= Info_Mod_Dexter_PETZMASTER_Condition;
	information 	= Info_Mod_Dexter_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Dexter_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Dexter_PETZMASTER_Info()
{
	Dexter_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...	
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_01"); //I'm glad you came to me before things got worse for you.
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_02"); //Murder is a grave offence!

		Dexter_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Dexter_Schulden = Dexter_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_03"); //Not to mention the other things you've done.
		};

		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_06"); //I have no interest in putting you on the gallows.
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_07"); //But it won't be easy to make people gracious again.
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_08"); //You could show your repentance by paying a fine - of course the penalty must be appropriate.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_09"); //Good of you to come! You're accused of stealing! There are witnesses!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_10"); //I don't even want to talk about the other things I've heard.
		};

		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_11"); //I will not tolerate such behaviour here!
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_12"); //You'll have to pay a fine to make up for your crime!
		
		Dexter_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_13"); //If you fight with the militia or anything, it's one thing...
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_14"); //But if you attack our people, I'll have to hold you accountable.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_15"); //And I don't think it had to be the case with the sheep.
		};

		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_16"); //If I let you get away with this, everybody's gonna do what they want.
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_17"); //So you'll pay an appropriate fine - and the whole thing will be forgotten.
		
		Dexter_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_18"); //I've heard that you've been messing with our sheep.
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_19"); //You do realize I can't let this go through.
		AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_28_20"); //You'll have to pay compensation!
		
		Dexter_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Dexter_PETZMASTER_15_21"); //How much?
	
	if (Dexter_Schulden > 1000)	{	Dexter_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Dexter_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Dexter_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Dexter_PETZMASTER);
	Info_AddChoice		(Info_Mod_Dexter_PETZMASTER,"I haven't got enough gold!",Info_Mod_Dexter_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Dexter_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Dexter_PETZMASTER,"I want to pay the penalty!",Info_Mod_Dexter_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Dexter_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Dexter_PETZMASTER_PayNow_15_00"); //I want to pay the fine!
	B_GiveInvItems (hero, self, itmi_gold, Dexter_Schulden);
	AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_PayNow_28_01"); //Good! I will see to it that each one of us learns about it - so your reputation would be reasonably restored.

	B_GrantAbsolution (LOC_BANDIT);
	
	Dexter_Schulden			= 0;
	Dexter_LastPetzCounter 	= 0;
	Dexter_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Dexter_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Dexter_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Dexter_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Dexter_PETZMASTER_PayLater_15_00"); //I don't have enough gold.
	AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_PayLater_28_01"); //Then see to it that you acquire the gold as quickly as possible
	AI_Output (self, hero, "Info_Mod_Dexter_PETZMASTER_PayLater_28_02"); //And I'm warning you: if you add to your guilt, things will get worse for you.
	
	Dexter_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Dexter_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Dexter_Pickpocket (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_Pickpocket_Condition;
	information	= Info_Mod_Dexter_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Dexter_Pickpocket_Condition()
{
	C_Beklauen	(125, ItMi_Gold, 70);
};

FUNC VOID Info_Mod_Dexter_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);

	Info_AddChoice	(Info_Mod_Dexter_Pickpocket, DIALOG_BACK, Info_Mod_Dexter_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Dexter_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Dexter_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Dexter_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);
};

FUNC VOID Info_Mod_Dexter_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);

		Info_AddChoice	(Info_Mod_Dexter_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Dexter_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Dexter_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Dexter_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Dexter_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Dexter_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Dexter_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Dexter_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Dexter_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Dexter_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Dexter_EXIT (C_INFO)
{
	npc		= Mod_761_BDT_Dexter_MT;
	nr		= 1;
	condition	= Info_Mod_Dexter_EXIT_Condition;
	information	= Info_Mod_Dexter_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dexter_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dexter_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
