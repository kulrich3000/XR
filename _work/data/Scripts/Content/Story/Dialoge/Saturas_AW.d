INSTANCE Info_Mod_Saturas_AW_Hi (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Hi_Condition;
	information	= Info_Mod_Saturas_AW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Saturas_AW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_00"); //Are you all right? How did you get into this temple?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_01"); //What's happening?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_02"); //I'd be interested in that, too.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_03"); //We followed you through the portal and showed up in front of this temple.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_04"); //No sign of you.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_05"); //So we search the area around us, begin to furnish ourselves when the gate of the temple suddenly opens, you stagger out and faint.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_06"); //Afterwards we explored the temple and found something interesting.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_07"); //But now it's your turn to tell.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_08"); //It feels like a dream to me.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_09"); //I was intercepted by a gnome who wanted to take me to his master.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_10"); //Which master?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_11"); //I hardly know anything about him, except that he was targeting me and had something to do with the sleeper.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_12"); //When I told his sidekick not to be myself, he strangely enough believed me immediately and let me go - but not without leaving me a farewell present in the form of a running pile of stones.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_13"); //A lot of mysterious things are happening in this world, but this is simply inexplicable.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_14"); //I cannot imagine how much power is needed to interrupt or distract teleportation.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_15"); //That's just impossible!
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_16"); //And how does this master know where you are?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_17"); //I don't know about that. I didn't blow it around much.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_18"); //Do you think Argez has something to do with this?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_19"); //I think it makes more sense for you not to be near him anymore.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_20"); //You shouldn't tell him what you're doing either.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_21"); //All right, all right.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_22"); //But now I want to show you our discovery in the temple. Come with me!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOFOKUS");

	B_StartOtherRoutine	(Mod_9002_KDW_Nefarius_AW, "INTEMPEL");
};

INSTANCE Info_Mod_Saturas_AW_Fokusplatz (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Fokusplatz_Condition;
	information	= Info_Mod_Saturas_AW_Fokusplatz_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Fokusplatz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Hi))
	&& (Npc_GetDistToWp(self, "ADW_PORTALTEMPEL_TELEPORTSTATION") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Fokusplatz_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_00"); //Here we are. This column and the platform look like the focus places in the Minental.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_01"); //We should bring the Foki here. There's something mystical about this part of the island.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_02"); //Maybe it'll give us some information about this country.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_03"); //Where are the Foki? Are they still in the New Camp?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_04"); //No, after the barrier came down, we put the focus back in its old place.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_05"); //Why the hell is that?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_06"); //It was the safest option we could come up with to prevent anyone but us from getting into their possession.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_07"); //Only us and you - whom we believed dead - know of the remote places where they are.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_08"); //And if someone should come across one of them, he will hardly find a second one by chance.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_09"); //Even though the Foki did not have as much power as we originally assumed, this security measure seemed sensible to us.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_10"); //Oh, there's something else.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_11"); //That can't be good.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_12"); //We have also cast a protective spell on all Foki.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_13"); //Let me guess. You don't know how to pick it up.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_14"); //Keep your tongue in check. It's easy to pick it up again.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_15"); //However, three of us have joined forces to cast the spell.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_16"); //So three magicians are needed to pick it up.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_17"); //So there's the problem.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_18"); //Yes, indeed. I can't spare anyone who goes all the way there.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_19"); //Except me.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_20"); //You're gonna have to take care of this on your own.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_21"); //But how? I don't know many magicians who can take the afternoon off.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_22"); //Coincidentally, Nefarius came across something in the back of the temple that might be helpful to you.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_23"); //He'll explain what this is all about.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_24"); //Here's the focus map, if you don't remember the places.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_25"); //Oh yes, the Minental Pass is guarded by the Paladins, and only those who have a licence are allowed to pass.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_26"); //You will not be allowed in without express permission.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_27"); //Who could get me a license like that?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_28"); //I strongly suspect Lord Hagen is in charge of control.

	B_GiveInvItems	(self, hero, ItWrFocimap, 1);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DIEB");

	Mod_TarrokDarfQuatschen = 1;

	Mod_Saturas_KDW_Geblubber = Wld_GetDay();

	Log_CreateTopic	(TOPIC_MOD_FOKUSSUCHE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FOKUSSUCHE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Saturas hired me to get the Foki out of the Minental. However, they are all covered with a protection spell that only three mages can break at a time. Nefarius in the rear part of the temple in Jharkendar should be able to help me. Besides, I have to make sure that I get let into the Minental. Since the entrance is controlled by the paladins, I should try my luck with Lord Hagen.");
};

INSTANCE Info_Mod_Saturas_AW_UngebeterBesucher (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_UngebeterBesucher_Condition;
	information	= Info_Mod_Saturas_AW_UngebeterBesucher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_UngebeterBesucher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_AW_Fokussuche))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_00"); //(eruption) Not even consciously and again the fingers are stretched out!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_01"); //What? What?

	if (Wld_IsTime(07,00,22,00))
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_02"); //In broad daylight, important parts of our equipment are stolen from us.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_03"); //That night, someone in our camp helped themselves and stole important parts of our equipment.
	};

	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_04"); //I'm sure you're behind it again.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_05"); //What's missing?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_06"); //All sorts of small stuff: laboratory water bottles, medicinal herbs. Breads.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_07"); //Even something was taken from our food bags.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_08"); //It can't be all me.

	if (Wld_IsTime(07,00,22,00))
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_09"); //Oh, and then who is it? No one has seen anything, and Argez is being watched all the time.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_10"); //Oh, and then who is it? The Water Magicians and Argez have been sleeping for some time.
	};

	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_11"); //Someone who could use all this.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_12"); //I just don't see anyone here who wouldn't get to the things without asking.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_13"); //You're not looking out, you're coming to me in a minute.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_14"); //That's enough now. Either you find the thief or you move the stuff out.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_15"); //I won't talk to you before then.

	if (Wld_IsTime(07,00,22,00))
	{
		Log_CreateTopic	(TOPIC_MOD_SATURAS_TAGGAST, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SATURAS_TAGGAST, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_SATURAS_TAGGAST, "A thief steals the water magicians from their equipment. Satan doesn't want to talk to me before I catch him.");

		Mod_Saturas_Gast = 1;
	}
	else
	{
		Log_CreateTopic	(TOPIC_MOD_SATURAS_NACHTGAST, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SATURAS_NACHTGAST, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_SATURAS_NACHTGAST, "A thief steals the water magicians from their equipment. Satan doesn't want to talk to me before I catch him.");

		Mod_Saturas_Gast = 2;
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PRESTART");
};

INSTANCE Info_Mod_Saturas_AW_UngebeterBesucher2 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_UngebeterBesucher2_Condition;
	information	= Info_Mod_Saturas_AW_UngebeterBesucher2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a confession to make...";
};

FUNC INT Info_Mod_Saturas_AW_UngebeterBesucher2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher2_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_15_00"); //I have a confession to make...
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_01"); //Damn you! Damn you! How can I fall for you again and again?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_15_02"); //I want to make it up to you, too.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_03"); //That's the least I can do! Get everything you've hidden in your deep pockets!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_15_04"); //Uh... What's missing again?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_05"); //It's impossible to say that exactly.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_06"); //10 medicinal plants, if not more. 5 loafs of bread. 7 or more laboratory water bottles.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_07"); //And compensation for 100 gold coins.

	if (Mod_Saturas_Gast == 1)
	{
		B_LogEntry (TOPIC_MOD_SATURAS_TAGGAST, "Saturas wants 10 medicinal plants, 5 loafs of bread and 7 bottles of laboratory water from me. He shall have them.");
	}
	else
	{
		B_LogEntry (TOPIC_MOD_SATURAS_NACHTGAST, "Saturas wants 10 medicinal plants, 5 loafs of bread and 7 bottles of laboratory water from me. He shall have them.");
	};

	Info_ClearChoices	(Info_Mod_Saturas_AW_UngebeterBesucher2);

	if (Mod_Verhandlungsgeschick > 0)
	{
		Info_AddChoice	(Info_Mod_Saturas_AW_UngebeterBesucher2, "I'll replace the clothes... but the gold is not (.... )", Info_Mod_Saturas_AW_UngebeterBesucher2_B);
	};

	Info_AddChoice	(Info_Mod_Saturas_AW_UngebeterBesucher2, "I'll bring it all back.", Info_Mod_Saturas_AW_UngebeterBesucher2_A);
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher2_B()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_B_15_00"); //I'll replace the things... but the gold doesn't have to be.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_B_14_01"); //All right, I'll be fine when we get all the other stuff back.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_B_14_02"); //Then don't touch our stuff in the future!
	};

	Info_ClearChoices	(Info_Mod_Saturas_AW_UngebeterBesucher2);
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher2_A()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_A_15_00"); //I'll bring it all back.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_A_14_01"); //I hope so too!

	Info_ClearChoices	(Info_Mod_Saturas_AW_UngebeterBesucher2);
};

INSTANCE Info_Mod_Saturas_AW_UngebeterBesucher3 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_UngebeterBesucher3_Condition;
	information	= Info_Mod_Saturas_AW_UngebeterBesucher3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the stolen goods.";
};

FUNC INT Info_Mod_Saturas_AW_UngebeterBesucher3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher2))
	&& (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 10)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 5)
	&& (Npc_HasItems(hero, ItMi_Flask) >= 7)
	&& ((Npc_HasItems(hero, ItMi_Gold) >= 100)
	|| (self.aivar[AIV_Verhandlung] == TRUE))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher3_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher3_15_00"); //Here's the stolen goods.

	B_ShowGivenThings	("stolen goods given");

	Npc_RemoveInvItems	(hero, ItPl_Health_Herb_01, 10);
	Npc_RemoveInvItems	(hero, ItFo_Bread, 5);
	Npc_RemoveInvItems	(hero, ItMi_Flask, 7);

	if (self.aivar[AIV_Verhandlung] == FALSE)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 100);
	};

	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher3_14_01"); //Finally. But don't think I'm grateful to you now.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher3_14_02"); //What about your minental trip, anyway? Couldn't Nefarius help you?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher3_15_03"); //Yes, it will be all right. It'll just take a while.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher3_14_04"); //But don't dally!

	if (Mod_Saturas_Gast == 1)
	{
		B_SetTopicStatus (TOPIC_MOD_SATURAS_TAGGAST, LOG_SUCCESS);
	}
	else
	{
		B_SetTopicStatus (TOPIC_MOD_SATURAS_NACHTGAST, LOG_SUCCESS);
	};

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Saturas_AW_Magieschranke (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Magieschranke_Condition;
	information	= Info_Mod_Saturas_AW_Magieschranke_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you help me get rid of a magic marker?";
};

FUNC INT Info_Mod_Saturas_AW_Magieschranke_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma3))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Magieschranke_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Magieschranke_15_00"); //Can you help me get rid of a magic marker?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Magieschranke_14_01"); //A what?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Magieschranke_15_02"); //(sighs) It's okay. You don't know anyone who knows anything about it?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Magieschranke_14_03"); //The chance that another watermagician knows about it is very small if I have never heard of it.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Saturas_AW_Magieschranke_15_04"); //This country is almost as foreign to magicians as it is to me. They won't know anything about the magic marker. But because I'm thinking of mysterious magic - what does Argez think of it?

	AI_TurnToNpc	(hero, self);

	B_LogEntry	(TOPIC_MOD_MAGISCHEMARKIERUNG, "Saturas and probably all other magicians don't know how to get rid of a magic marker. Maybe I should ask Argez for advice...");
};

INSTANCE Info_Mod_Saturas_AW_HabFoki (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_HabFoki_Condition;
	information	= Info_Mod_Saturas_AW_HabFoki_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_HabFoki_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	&& (Mod_Fokus_Alle == 1)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_HabFoki_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_00"); //Did you get all the focus lines?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_01"); //Yeah, I found them all.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_02"); //Your great plan to bring the focus stones back to their original places, but almost went backwards.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_03"); //What do you mean?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_04"); //The orcs have come upon the funnel to resurrect the sleeper with the focus points, and had already collected two.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_05"); //I also had a second opponent who knew of the Foki's locations.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_06"); //Only with luck could I catch them all in front of him.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_07"); //What kind of opponent is that?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_08"); //I strongly suspect that it is the one who has also tried to catch me.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_09"); //And what should he do with the focus stones?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_10"); //I don't know about that.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_11"); //Then that won't get us anywhere. So we are pursuing our original plan.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_12"); //Now you have to find the bases for the focus stones and insert them.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_13"); //Protesting probably won't help, will it?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_14"); //Save it. Save it.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Saturas wants me to use the focus now. The platforms will again be arranged in the form of a pentagram. On the way to the swamp in the east, Neku will be waiting for me. He's scouted the area and may have some information for me.");

	Wld_InsertNpc	(Mod_7369_WNOV_Neku_AW,	"ADW_ENTRANCE_PATH2BANDITS_13A");

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Saturas_AW_Kap3 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Kap3_Condition;
	information	= Info_Mod_Saturas_AW_Kap3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Kap3_Condition()
{
	if (Kapitel == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Kap3_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_00"); //Adanos, help us! Hell has broken over us!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_01"); //That's one way of putting it. And I know now.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_02"); //Then don't let me ask you!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_03"); //I used all the focus stones, but I didn't do us any favors.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_04"); //The Foki have made sure that Xeres, an ancient bad-tempered magician, can now escape from his prison underground.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_05"); //He personally is already roaming around, and it looks like he has already sent out his troops.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_06"); //There were dozens of creatures I've never seen before.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_07"); //How did you survive?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_08"); //It... it was Argez. He kept them in check with spells until they overpowered him.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_09"); //And then they took him and pulled out.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_10"); //Argez has...
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_11"); //He saved us. I seem to have been wrong about him.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_12"); //Where did they take him?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_13"); //West. Merdarion walked briefly in this direction and told us about a huge gully, which is said to have opened up in one of the ravines.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_14"); //I'll take a closer look at that later.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_15"); //Are you out of your mind?!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_16"); //I wouldn't rule that out.

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Xeres' shelter seems to be very close. A hole is said to have opened up in one of the gorges to the west of the water magicians. When I go to visit Xeres, I can actually free Argez, who was abducted by him.");

	Wld_SendTrigger	("EVT_ZUGANG_UNTERWELT");
};

INSTANCE Info_Mod_Saturas_AW_Member_01 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_01_Condition;
	information	= Info_Mod_Saturas_AW_Member_01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Member_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	&& (Mod_Gilde == 9)
	&& ((Wld_GetDay()-2 >= Mod_Saturas_KDW_Geblubber)
	|| ((FokiEingesetzt == 2)
	&& (FokusBlockade == TRUE)))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_01_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_00"); //You have been a member of our community, the community of water, for a few days now. I hope you understand the great responsibility involved.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_01"); //It is we who, on Adano's instruction, keep the power relations and the influence of the two deities Innos and Beliar in balance.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_02"); //It is a very fragile equilibrium, and only if each of the children of our community carries out their tasks with great conscientiousness will it continue to exist.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_03"); //If one of the two sides - order or chaos - gains dominance, the entire structure of the world as we know it will be thrown out of whack.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_04"); //This would have devastating consequences for most creatures who walk on it...
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_01_15_05"); //Can I do something to help our fellowship in its quest for balance?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_06"); //Not at the moment. Maybe you'll find something in a few days.
};

INSTANCE Info_Mod_Saturas_AW_Member_02 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_02_Condition;
	information	= Info_Mod_Saturas_AW_Member_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Member_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_01))
	&& (FokiEingesetzt == 2)
	&& (FokusBlockade == TRUE)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_14_00"); //Do you have a minute? I have a job for you.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_02_15_01"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_14_02"); //Well, we have heard that demonic magicians are able to change the nature of the soil through unholy rituals.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_14_03"); //Maybe you've heard of it, too?

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_02);
	
	Info_AddChoice	(Info_Mod_Saturas_AW_Member_02, "No, not yet.", Info_Mod_Saturas_AW_Member_02_B);

	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Aufnehmen))
	{
		Info_AddChoice	(Info_Mod_Saturas_AW_Member_02, "Yes, as far as I had heard (.... )", Info_Mod_Saturas_AW_Member_02_A);
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_02_C()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_C_14_00"); //The most worrying thing about this is that the dark magic cast on the ground remains attached to the ground.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_C_14_01"); //Dark and demonic powers can find it easier to gain a foothold there and gradually pollute the area with the power of Beliars.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_C_14_02"); //The demon magicians also recognized this and extended their unholy work to other, for the time being smaller areas in Khorinis.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_C_14_03"); //They want to strengthen their position of power and open up space in which their magic can have a stronger effect.

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_02);
};

FUNC VOID Info_Mod_Saturas_AW_Member_02_B()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_02_B_15_00"); //No, not yet.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_B_14_01"); //It doesn't matter, I'll tell you the essentials now.

	Info_Mod_Saturas_AW_Member_02_C();
};

FUNC VOID Info_Mod_Saturas_AW_Member_02_A()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_02_A_15_00"); //Yes, as far as I have experienced, the soil is said to have obtained other properties by removing and adding any substances.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_A_14_01"); //Exactly. But that's not all you need to know about it.

	Info_Mod_Saturas_AW_Member_02_C();
};

INSTANCE Info_Mod_Saturas_AW_Member_03 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_03_Condition;
	information	= Info_Mod_Saturas_AW_Member_03_Info;
	permanent	= 0;
	important	= 0;
	description	= "What can one do to put an end to this hustle and bustle?";
};

FUNC INT Info_Mod_Saturas_AW_Member_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_02))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_03_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_03_15_00"); //What can one do to put an end to this hustle and bustle?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_01"); //In order to clean the floor again, we have to use the magic that Adanos has bestowed on us. We use magic water pearls for this purpose.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_02"); //It is now your task to scatter a water pearl of neutralization in every affected area.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_03"); //As soon as she touches the ground, she will suck out the dark magic out of him like poison from a wound, then dissolve and release the powers into the environment.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_03_15_04"); //Release black magic into the area?! Isn't that a little risky?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_05"); //Well... that's what I was just going to talk about.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_06"); //While some of the magical powers will gradually spread to ineffectiveness in the environment, a large portion of demonic magic can manifest in solid form.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_07"); //So you will have to prepare for one or the other encounter with a creature.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_08"); //But I have no doubt that you will become the Lord, since the individual regions are relatively small for the time being and have had little time to take on demonic powers.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_09"); //Also, you must have defied much more unruly creatures during the colony's focus search.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_03_15_10"); //I have another request. I used another focus, but I was teleported to a completely different place, where I would rather not have gone....
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_11"); //Hmm, highly unusual. However, the cause could be precisely the pollution of the soils mentioned above.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_03_15_12"); //It's supposed to have an effect over such a long distance?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_13"); //The adjustment of such teleporters and their magic is a highly accurate and sensitive matter. If there is a magical anomaly in the soils of another place on the island, it can have an effect up to Jharkendar.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_14"); //Go now to Merdarion, he will give you the water pearls. May Adanos keep you safe.

	Log_CreateTopic	(TOPIC_MOD_ADANOS_BOEDEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ADANOS_BOEDEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ADANOS_BOEDEN, "Saturas ordered me to clean the floors cursed by the black magicians. Merdarion is to provide me with the necessary tools.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Saturas_AW_Member_04 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_04_Condition;
	information	= Info_Mod_Saturas_AW_Member_04_Info;
	permanent	= 1;
	important	= 0;
	description	= "Because of the cleaning of the areas....";
};

FUNC INT Info_Mod_Saturas_AW_Member_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Merdarion_AW_Nefarius))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	&& (Mod_WM_Boeden < 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_04_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_04_15_00"); //Because of the cleaning of the areas....
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_01"); //Yeah, what do you have to report?

	if (Mod_WM_Boeden < 6)
	{
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_04_15_02"); //I'm still on the case.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_03"); //Then you better hurry up and don't dawdle around.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_04_15_04"); //I did everything you asked me to do and cleaned the floors of black magic.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_05"); //That's terrific. The Black Mages will now believe that their efforts have failed and will stop.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_06"); //But now report: Did you have to face many demonic minions?
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_04_15_07"); //No, only the first two cleansing rituals led to the manifestation of one being each.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_08"); //Just two creatures? This is very surprising... Well, well, anyway, you've done a great service to our fellowship.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_09"); //Take these mana potions as a thank you. May they give you magical power to fight for the will of our Lord Adanos.

		B_GiveInvItems	(self, hero, ItPo_Mana_01, 10);

		B_GivePlayerXP	(300);

		Mod_WM_Boeden = 7;

		Mod_WM_DaySave = Wld_GetDay();

		FokusBlockade = FALSE;
	};
};

INSTANCE Info_Mod_Saturas_AW_Member_05 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_05_Condition;
	information	= Info_Mod_Saturas_AW_Member_05_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is there anything else I can do?";
};

FUNC INT Info_Mod_Saturas_AW_Member_05_Condition()
{
	if (Mod_WM_Boeden >= 7)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_05_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_05_15_00"); //Is there anything else I can do?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_05_14_01"); //Right now I don't have a job for you, maybe in a few days again.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_05_14_02"); //Hmm, but Cronos told that he might have clues for the location of an old artifact that had been lost for a long time, but was still rather uncertain....
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_05_14_03"); //You'd better go to him. Maybe you can help him with his research.

	Log_CreateTopic	(TOPIC_MOD_ADANOS_NOVIZE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ADANOS_NOVIZE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "Saturas said that Cronos may be on the trail of an artifact.");
};

INSTANCE Info_Mod_Saturas_AW_Member_06 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_06_Condition;
	information	= Info_Mod_Saturas_AW_Member_06_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Member_06_Condition()
{
	if (Mod_Wm_Boeden == 7)
	&& (FokiEingesetzt == 4)
	&& (FokusBlockade == TRUE)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_06_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_14_00"); //Doesn't that fool thing ever end. The soils...
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_06_15_01"); //What, the black mages again?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_14_02"); //No, let me finish. This time it is the servants of Inno's servants who endanger the balance through their careless work.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_14_03"); //They had heard about the actions of the black mages and had now blessed some areas as part of a counteroffensive.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_14_04"); //Go to Merdarion, you already know how to proceed.

	B_LogEntry_More	(TOPIC_MOD_FOKUSSUCHE, TOPIC_MOD_ADANOS_BOEDEN, "Then the consecrated soils are probably the cause now. Only when they have been desecrated do I dare to use the last focus.", "Now this one. This time I am allowed to desecrate the lands blessed by the Innoscians. As usual, I am allowed to pick up all the necessary materials from Merdarion.");

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_06);

	Info_AddChoice	(Info_Mod_Saturas_AW_Member_06, "Are you serious? I'm to desecrate blessed ground?", Info_Mod_Saturas_AW_Member_06_B);
	Info_AddChoice	(Info_Mod_Saturas_AW_Member_06, "I'll be on my way right away.", Info_Mod_Saturas_AW_Member_06_A);
};

FUNC VOID Info_Mod_Saturas_AW_Member_06_B()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_06_B_15_00"); //Are you serious? I'm to desecrate blessed ground?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_B_14_01"); //It seems that you have not yet fully understood what our work consists of. Beliar's powers are not always the only ones to be contained.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_B_14_02"); //If the servants of Inno think that they have to disrupt the natural course of things by the blessing of whole regions, it goes without saying that it is also our task to prevent something like this.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_B_14_03"); //Now, do your duty.

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_06);
};

FUNC VOID Info_Mod_Saturas_AW_Member_06_A()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_06_A_15_00"); //I'll be on my way right away.

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_06);
};

INSTANCE Info_Mod_Saturas_AW_Member_07 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_07_Condition;
	information	= Info_Mod_Saturas_AW_Member_07_Info;
	permanent	= 1;
	important	= 0;
	description	= "Because of the cleaning of the floors...";
};

FUNC INT Info_Mod_Saturas_AW_Member_07_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_06))
	&& (Mod_WM_Boeden < 9)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_07_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_07_15_00"); //Because of the cleaning of the floors...
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_07_14_01"); //Yeah, what do you have to report?

	if (Mod_WM_Boeden < 8)
	{
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_07_15_02"); //I'm still on the case.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_07_14_03"); //Then you better hurry up and don't dawdle around.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_07_15_04"); //I've done everything you asked me to do and this time the floors of... uh, Innos' blessing.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_07_14_05"); //Very good. Very good. I just hope it doesn't cause friction with the monastery....
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_07_14_06"); //Anyway, here's some gold coins for your equipment.

		B_GiveInvItems	(self, hero, ItMi_Gold, 200);

		B_GivePlayerXP	(300);

		Mod_WM_Boeden = 9;

		Mod_WM_DaySave = Wld_GetDay();

		B_SetTopicStatus	(TOPIC_MOD_ADANOS_BOEDEN, LOG_SUCCESS);

		B_Göttergefallen(2, 1);

		FokusBlockade = FALSE;
	};
};

INSTANCE Info_Mod_Saturas_AW_PortalInnosSchwert (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_PortalInnosSchwert_Condition;
	information	= Info_Mod_Saturas_AW_PortalInnosSchwert_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_PortalInnosSchwert_Condition()
{
	if (Mod_BEL_FirstPortal == 1)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_PortalInnosSchwert_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_00"); //Ahh, there you are again. Is there any news?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_PortalInnosSchwert_15_01"); //Yeah, I think I found a way to get the artifact the guard wants.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_PortalInnosSchwert_15_02"); //There is a ritual, at the end of which I had to send out a flash of lightning to create a portal.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_PortalInnosSchwert_15_03"); //Unfortunately, the portal doesn't seem stable enough and disappears immediately.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_04"); //Hmm, that sounds like the portal is fed by the magical energy of the lightning.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_05"); //It shouldn't be difficult for us water magicians to create a spell roll that would produce a much stronger lightning.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_06"); //This should create a stable portal....
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_07"); //However, it will take us a few hours to complete the project.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_08"); //In the meantime, you should make sure that you have made all the preparations to face the guard.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_09"); //Undoubtedly, they are already threateningly close to their goal...

	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "The Water Magicians will create a modified lightning bolt that should keep the portal stable.");

	if (Mod_BEL_BeliarDoch_Gefunden == FALSE)
	{
		B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "During this time I was to search for the building instructions for the dagger Beliars.");
	};

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk (self, 3600);
};

INSTANCE Info_Mod_Saturas_AW_PortalZauberFertig (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_PortalZauberFertig_Condition;
	information	= Info_Mod_Saturas_AW_PortalZauberFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_PortalZauberFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_PortalInnosSchwert))
	&& (Npc_RefuseTalk(self) == FALSE)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_PortalZauberFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalZauberFertig_14_00"); //Ahh, here you are at last. We've already finished the part of the saying.

	B_GiveInvItems	(self, hero, ItSc_ModifiedZap, 1);

	AI_Output(hero, self, "Info_Mod_Saturas_AW_PortalZauberFertig_15_01"); //Thanks. I'll be on my way, then.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalZauberFertig_14_02"); //Don't forget, the preservation of balance is now in your hands. Adanos keep you safe.

	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "I have the prepared spell roll for the portal.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Saturas_AW_Bshydal (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Bshydal_Condition;
	information	= Info_Mod_Saturas_AW_Bshydal_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Bshydal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_AW_Bshydal))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Bshydal_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Bshydal_14_00"); //By Adanos, could you stop the evil?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Bshydal_15_01"); //Yes, the danger has been averted.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Bshydal_14_02"); //I'm reassured. My magical instinct already made me suspect it, but the confirmation of this is a balm for the spirit.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Bshydal_14_03"); //Anyway, you've done a lot for us and creation.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Bshydal_14_04"); //Here, take these idols and the potions as a thank you. Adanos keep you safe.

	B_ShowGivenThings	("2 spell rolls and 6 drinking troughs received");

	CreateInvItems	(hero, ItSc_IceRain, 2);
	CreateInVItems	(hero, ItPo_Mana_01, 3);
	CreateInvItems	(hero, ItPo_Mana_02, 2);
	CreateInvItems	(hero, ItPo_Geist, 1);

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Saturas_AW_Fokussteine (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Fokussteine_Condition;
	information	= Info_Mod_Saturas_AW_Fokussteine_Info;
	permanent	= 0;
	important	= 0;
	description	= "What if the focus stones don't work here?";
};

FUNC INT Info_Mod_Saturas_AW_Fokussteine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Fokussteine_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokussteine_15_00"); //What if the focus stones don't work here?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokussteine_14_01"); //Then we'll just have to try our feet.
};

INSTANCE Info_Mod_Saturas_AW_FokusSockel (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_FokusSockel_Condition;
	information	= Info_Mod_Saturas_AW_FokusSockel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where can I find the bases?";
};

FUNC INT Info_Mod_Saturas_AW_FokusSockel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_HabFoki))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	&& (Kapitel == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_FokusSockel_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_FokusSockel_15_00"); //Where can I find the bases?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_01"); //All we can do is make assumptions about it.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_02"); //But it is not unlikely that the bases are arranged as a pentagram like in the Minental.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_03"); //Once you've located two of them, you should be able to work out the rest.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_04"); //We have already sent Neku to the swamp in the east, who should look around there.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_05"); //I'm sure he already has information for you. You should see him as a matter of urgency.
};

INSTANCE Info_Mod_Saturas_AW_WofuerGut (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_WofuerGut_Condition;
	information	= Info_Mod_Saturas_AW_WofuerGut_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's this good for?";
};

FUNC INT Info_Mod_Saturas_AW_WofuerGut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_HabFoki))
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	&& (Kapitel == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_WofuerGut_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_WofuerGut_15_00"); //What's this good for?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WofuerGut_14_01"); //As soon as the teleporters work, a safe journey through this unknown world is possible.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WofuerGut_14_02"); //We cannot always send out one or two men as before, we need the knowledge and experience of the whole group.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WofuerGut_14_03"); //And I can't force the old boys to walk for days on end.
};

INSTANCE Info_Mod_Saturas_AW_WiesoFoki (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_WiesoFoki_Condition;
	information	= Info_Mod_Saturas_AW_WiesoFoki_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why should the Foki from the Minental also work here?";
};

FUNC INT Info_Mod_Saturas_AW_WiesoFoki_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_HabFoki))
	&& (Kapitel == 2)
	&& (!(Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	|| (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher3)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_WiesoFoki_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_WiesoFoki_15_00"); //Why should the Foki from the Minental also work here?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WiesoFoki_14_01"); //It is no coincidence that the two teleportation systems are so similar.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WiesoFoki_14_02"); //I suspect that the technique came from here to Khorinis and from there to the Minental, maybe the refugees even took the Foki with them.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WiesoFoki_14_03"); //There is therefore no reason why it should not be used here.
};

INSTANCE Info_Mod_Saturas_AW_PMSchulden (C_INFO)
{
	npc         	= Mod_9000_KDW_Saturas_AW;
	nr          	= 1;
	condition   	= Info_Mod_Saturas_AW_PMSchulden_Condition;
	information 	= Info_Mod_Saturas_AW_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Saturas_AW_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Saturas_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Saturas_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Saturas_AW_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_00"); //Did you come to pay your fine?

	if (B_GetTotalPetzCounter(self) > Saturas_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_01"); //I was wondering if you'd even dare come here!
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_02"); //Apparently, it's not the latest accusations!

		if (Saturas_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_03"); //I warned you! The fine you have to pay now is higher!
			AI_Output (hero, self, "Info_Mod_Saturas_AW_PMAdd_15_00"); //How much?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Saturas_LastPetzCounter);
		
			if (diff > 0)
			{
				Saturas_Schulden = Saturas_Schulden + (diff * 50);
			};
		
			if (Saturas_Schulden > 1000)	{	Saturas_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Saturas_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_04"); //You let me down so badly!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Saturas_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_05"); //Some new things have come up.
		
		if (Saturas_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_06"); //Suddenly, there's no one left to accuse you of murder.
		};
		
		if (Saturas_LastPetzCrime == CRIME_THEFT)
		|| ( (Saturas_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_07"); //No one remembers seeing you at a theft.
		};
		
		if (Saturas_LastPetzCrime == CRIME_ATTACK)
		|| ( (Saturas_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_08"); //There's no more witnesses to the fact that you've ever been in a fight.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_09"); //Apparently all the charges against you have vanished.
		};
		
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_10"); //I don't know what happened, but I warn you: don't play games with me.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_11"); //Anyway, I've decided to waive your debt.
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_12"); //Make sure you don't get in trouble again.
	
			Saturas_Schulden			= 0;
			Saturas_LastPetzCounter 	= 0;
			Saturas_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_13"); //One thing is clear: you still have to pay your penalty in full.
			B_Say_Gold (self, hero, Saturas_Schulden);
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_14"); //So, what is it?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Saturas_AW_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Saturas_AW_PETZMASTER);
		Info_AddChoice		(Info_Mod_Saturas_AW_PMSchulden,"I don't have enough gold!",Info_Mod_Saturas_AW_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Saturas_AW_PMSchulden,"How much was it again?",Info_Mod_Saturas_AW_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Saturas_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Saturas_AW_PMSchulden,"I want to pay the fine.",Info_Mod_Saturas_AW_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Saturas_AW_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Saturas_AW_PMSchulden_HowMuchAgain_15_00"); //How much was it again?
	B_Say_Gold (self, hero, Saturas_Schulden);

	Info_ClearChoices  	(Info_Mod_Saturas_AW_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PETZMASTER);
	Info_AddChoice		(Info_Mod_Saturas_AW_PMSchulden,"I don't have enough gold!",Info_Mod_Saturas_AW_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Saturas_AW_PMSchulden,"How much was it again?",Info_Mod_Saturas_AW_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Saturas_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Saturas_AW_PMSchulden,"I want to pay the fine.",Info_Mod_Saturas_AW_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Saturas_AW_PETZMASTER   (C_INFO)
{
	npc         	= Mod_9000_KDW_Saturas_AW;
	nr          	= 1;
	condition   	= Info_Mod_Saturas_AW_PETZMASTER_Condition;
	information 	= Info_Mod_Saturas_AW_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Saturas_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Saturas_AW_PETZMASTER_Info()
{
	Saturas_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_01"); //I'm glad you came to me before things got worse for you.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_02"); //Murder is a grave offence!

		Saturas_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Saturas_Schulden = Saturas_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_03"); //Not to mention the other things you've done.
		};

		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_06"); //I have no interest in putting you on the gallows. We're at war, and we need every man we can get.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_07"); //But it won't be easy to make people gracious again.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_08"); //You could show your repentance by paying a fine - of course the penalty must be appropriate.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_09"); //Good of you to come! You're accused of stealing! There are witnesses!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_10"); //I don't even want to talk about the other things I've heard.
		};

		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_11"); //I will not tolerate such behaviour in our country!
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_12"); //You'll have to pay a fine to make up for your crime!
		
		Saturas_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_13"); //If you fight with the riffraff in the harbour, that's one thing...
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_14"); //But if you attack our people, I'll have to hold you accountable.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_15"); //And I don't think it had to be the case with the sheep.
		};

		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_16"); //If I let you get away with this, everybody's gonna do what they want.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_17"); //So you'll pay an appropriate fine - and the whole thing will be forgotten.
		
		Saturas_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_18"); //I've heard that you've been messing with our sheep.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_19"); //You do realize I can't let this go through.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_20"); //You'll have to pay compensation!
		
		Saturas_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Saturas_AW_PETZMASTER_15_21"); //How much?
	
	if (Saturas_Schulden > 1000)	{	Saturas_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Saturas_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PETZMASTER);
	Info_AddChoice		(Info_Mod_Saturas_AW_PETZMASTER,"I don't have enough gold!",Info_Mod_Saturas_AW_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Saturas_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Saturas_AW_PETZMASTER,"I want to pay the fine.",Info_Mod_Saturas_AW_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Saturas_AW_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Saturas_AW_PETZMASTER_PayNow_15_00"); //I want to pay the fine!
	B_GiveInvItems (hero, self, itmi_gold, Saturas_Schulden);
	AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_PayNow_14_01"); //Good! I will see to it that each one of us learns about it - so your reputation would be reasonably restored.

	B_GrantAbsolution (LOC_WMCAMP);
	
	Saturas_Schulden			= 0;
	Saturas_LastPetzCounter 	= 0;
	Saturas_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Saturas_AW_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Saturas_AW_PETZMASTER_PayLater_15_00"); //I don't have enough gold!
	AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_PayLater_14_01"); //Then see that you get the gold as soon as possible.
	AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_PayLater_14_02"); //And I'm warning you, if you owe yourself anything, it's going to get worse for you.
	
	Saturas_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Saturas_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Saturas_AW_Pickpocket (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Pickpocket_Condition;
	information	= Info_Mod_Saturas_AW_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Saturas_AW_Pickpocket_Condition()
{
	C_Beklauen	(176, ItMi_Gold, 91);
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

	Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_BACK, Info_Mod_Saturas_AW_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Saturas_AW_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

		Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Saturas_AW_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Saturas_AW_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Saturas_AW_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Saturas_AW_EXIT (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_EXIT_Condition;
	information	= Info_Mod_Saturas_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Saturas_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Saturas_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
