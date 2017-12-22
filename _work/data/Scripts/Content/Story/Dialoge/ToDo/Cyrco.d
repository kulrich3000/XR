INSTANCE Info_Mod_Cyrco_Hi (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Hi_Condition;
	information	= Info_Mod_Cyrco_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	&& (Npc_HasItems(hero, ItWr_MagicPaper) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_00"); //Ahh! A new face. You've been heard of.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_01"); //Like this? I only hope for the best...
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_02"); //Oh, sure enough. You helped Dragomir over there. Torgan told me about it.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_03"); //Well...
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_04"); //And you gave Torgan a hand. You visited the camps and defeated the guards.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_05"); //It is. But, venerable man, is it true that I am now accepted into the Rangers?
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_06"); //(laughs) Hi, hi, hi. The impetuosity of youth. There's one small thing you're gonna have to do.
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_07"); //Then nothing will stand in the way of your recording, young warrior. What's your name, anyway?
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_08"); //I don't have a name.
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_09"); //No name? Fool! Every child gets a name.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_10"); //Excuse me, my dear, I had a name. However, an oath prevents me from ever saying the name again.
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_11"); //An unusual oath...
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_12"); //That may be true. However, bad events in the past have caused me to do so.
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_13"); //You have to accept that. Tell me you got something for me.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_14"); //Yes, here.

	B_GiveInvItems	(hero, self, ItWr_MagicPaper, Npc_HasItems(hero, ItWr_MagicPaper));

	if (Npc_HasItems(self, ItWr_MagicPaper) == 1)
	{
		AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_15"); //I found this note at one of the guardsmen. Torgan says to bring it to you.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_16"); //I found these notes at one of the guardsmen and the bandits. Torgan said to bring it to you.
	};

	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_17"); //Uh-huh. A message.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_18"); //But wait, this writing...
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_19"); //Yes?
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_20"); //Patience!

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_21"); //Hmm. That doesn't seem like ink to me. It's kind of branded.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_22"); //Hm... Some kind of magic. Hm... Black magic, I'd say. And an uncertain aura...
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_23"); //Black magic? Aura?
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_24"); //Certainly. Old black magic. But I'm not sure. Hmm.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_25"); //Is there anything I can do to help? I know how to deal with buffs and stuff.
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_26"); //Go around? No. But you can go. To the swamp camp.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_27"); //Venerable?
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_28"); //Ask for Baal Orun. Maybe his long contact with the sleeper will help him to recognize this magic.
	AI_Output(hero, self, "Info_Mod_Cyrco_Hi_15_29"); //You want me to go?
	AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_30"); //Oh, sure enough. It seems to me that new calamities are brewing on khorinis.

	if (Npc_HasItems(self, ItWr_MagicPaper) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_31"); //Here's the document.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Cyrco_Hi_38_32"); //Here are the documents.
	};

	B_GiveInvItems	(self, hero, ItWr_MagicPaper, Npc_HasItems(self, ItWr_MagicPaper));

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Not ranger yet. But I think I'm close. Now I am to show Baal Orun in the swamp camp the note I took from the guardsman. Maybe he knows the aura around the note.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Cyrco_BaalOrun (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_BaalOrun_Condition;
	information	= Info_Mod_Cyrco_BaalOrun_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_BaalOrun_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orun_Cyrco))
	&& (Npc_HasItems(hero, ItMi_SpezielleRune) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_BaalOrun_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_00"); //I'm glad you came. Did you see what's going on outside?
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_01"); //Hello, Reverend! What happened was, it's done.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_02"); //But I have news for you.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_03"); //Let's hear it, Ranger.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_04"); //Ranger?
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_05"); //Of course you do. You are now a member of the camp as a ranger.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_06"); //You can shop here and get trained if you need it.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_07"); //But first, your report, please.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_08"); //I found this rune outside with one of the attackers.

	B_GiveInvItems	(hero, self, ItMi_SpezielleRune, 1);

	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_09"); //You need to see what's wrong with it.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_10"); //Good. And the note?
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_11"); //This guru had a vision.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_12"); //He saw this note near a cave surrounded by a strong presence of black magic.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_13"); //He warned against going there alone.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_14"); //Very well. I'll give you two people.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_15"); //Me?
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_16"); //Certainly. You think you're the closest to this place, I think.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_17"); //Yeah. I already know where this cave is.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_18"); //The bandits with the note were sitting in front of the old mine. There must be this cave.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_19"); //Good. I want to take a look at this rune. Maybe it's useful.
	AI_Output(self, hero, "Info_Mod_Cyrco_BaalOrun_38_20"); //Let me know when you're ready.
	AI_Output(hero, self, "Info_Mod_Cyrco_BaalOrun_15_21"); //As you wish, master.

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "I reported to Cyrco and gave him the rune. While he is examining them, I shall look for two companions with whom I will then set off to the old mine. I'm supposed to come back to Cyrco first.");
};

INSTANCE Info_Mod_Cyrco_SonorZelar (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_SonorZelar_Condition;
	information	= Info_Mod_Cyrco_SonorZelar_Info;
	permanent	= 0;
	important	= 0;
	description	= "We are ready. I'll take two men with me.";
};

FUNC INT Info_Mod_Cyrco_SonorZelar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sonor_CyrcoMine))
	&& (Npc_KnowsInfo(hero, Info_Mod_Zelar_CyrcoMine))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_SonorZelar_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_SonorZelar_15_00"); //We are ready. I'll take two men with me.
	AI_Output(self, hero, "Info_Mod_Cyrco_SonorZelar_38_01"); //Good, good, good. Here's something else for you. An amulet.

	B_GiveInvItems	(self, hero, ItAm_CyrcoMinenAmulett, 1);

	AI_Output(hero, self, "Info_Mod_Cyrco_SonorZelar_15_02"); //Am I not dressed up enough for you?
	AI_Output(self, hero, "Info_Mod_Cyrco_SonorZelar_38_03"); //Punch! This amulet enables you to track down magic or to see through its illusions. Put it on now.
	AI_Output(hero, self, "Info_Mod_Cyrco_SonorZelar_15_04"); //How convenient. Do I see the real face of people then?
	AI_Output(self, hero, "Info_Mod_Cyrco_SonorZelar_38_05"); //Get out of here!
	AI_Output(hero, self, "Info_Mod_Cyrco_SonorZelar_15_06"); //Yeah, but...

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Cyrco gave me another amulet, which I should put on at the mine at the latest. It will allow me to track down magic and find the secret cave.");
};

INSTANCE Info_Mod_Cyrco_MinenPart (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_MinenPart_Condition;
	information	= Info_Mod_Cyrco_MinenPart_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mission accomplished, site sounded, no casualties.";
};

FUNC INT Info_Mod_Cyrco_MinenPart_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_SonorZelar))
	&& (Mod_JG_MinenPart == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_MinenPart_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_MinenPart_15_00"); //Mission accomplished, site sounded, no casualties.
	AI_Output(self, hero, "Info_Mod_Cyrco_MinenPart_38_01"); //So, who was that unknown paper-pen?
	AI_Output(hero, self, "Info_Mod_Cyrco_MinenPart_15_02"); //There was no one there. Just a few small skeletons and a couple of spell rolls.
	AI_Output(hero, self, "Info_Mod_Cyrco_MinenPart_15_03"); //A Beliar shrine stood on the wall and there was a platform, but it doesn't seem to work.
	AI_Output(self, hero, "Info_Mod_Cyrco_MinenPart_38_04"); //Ahh, yeah. That fits together. The rune you gave me earlier is a teleportrune that needs to be loaded on a Beliar statue.
	AI_Output(self, hero, "Info_Mod_Cyrco_MinenPart_38_05"); //To do this, the Beliar statue must combine the bones of a skeleton, a goblin and a drop of your own blood.
	AI_Output(hero, self, "Info_Mod_Cyrco_MinenPart_15_06"); //What you don't know.
	AI_Output(self, hero, "Info_Mod_Cyrco_MinenPart_38_07"); //Certainly. The rune seems to work only near the platform.

	B_GiveInvItems	(self, hero, ItMi_SpezielleRune, 1);

	AI_Output(hero, self, "Info_Mod_Cyrco_MinenPart_15_08"); //Uh-huh. And now I'm supposed to....
	AI_Output(self, hero, "Info_Mod_Cyrco_MinenPart_38_09"); //Oh, sure enough.
	AI_Output(hero, self, "Info_Mod_Cyrco_MinenPart_15_10"); //I'm on my way.

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Let me go back to writing: I should take one large and one small bone and one drop of my own blood at the Beliar shrine. Then the rune functions again and I can continue with it. But this only works near the platform. Let's see....");
	
	Npc_RemoveInvItems(hero, ItAm_CyrcoMinenAmulett, 1);
};

INSTANCE Info_Mod_Cyrco_SuchenderZettel (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_SuchenderZettel_Condition;
	information	= Info_Mod_Cyrco_SuchenderZettel_Info;
	permanent	= 0;
	important	= 0;
	description	= "I successfully used the teleporter.";
};

FUNC INT Info_Mod_Cyrco_SuchenderZettel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Suchender_Hi))
	&& (Mod_JG_MinenPart == 4)
	&& (Npc_HasItems(hero, ItWr_JGSuchenderNotiz) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_SuchenderZettel_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_00"); //I successfully used the teleporter.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_01"); //I landed in the sunken tower of Xardas, where I met a seeker.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_02"); //He said that we would meet again soon and teleported away.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_03"); //I'm not sure he's really the murderer behind everything.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_04"); //I also found this note here.

	B_GiveInvItems	(hero, self, ItWr_JGSuchenderNotiz, 1);

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_05"); //Seems as if the seeker wants to weaken us, maybe even destroy us.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_06"); //It is strange that I hardly feel any magical power in this document, while the other one was almost imbued with it. Not very reassuring.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_07"); //I'll have every hunter and ranger look for this guy. Thank you for your help.

	B_SetTopicStatus	(TOPIC_MOD_JG_GARDISTEN, LOG_SUCCESS);

	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_08"); //Oh, one more thing.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_09"); //Yes?
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_10"); //I heard the news of Dragomir's accident and put together a small troop of Rangers with company to support him.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_11"); //We have to keep our post in Khorinis, but we seem to have strong opponents.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_12"); //Go and see Rangar. He would have to be near the pass in Khorinis.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_13"); //Tell him to join the Ranger group and support Dragomir.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_14"); //Rangar? I know a Rangar in town. But he's there at the city guard....
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_15"); //That's the one. He must have gone over to the hunters. That's what my information is.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_38_16"); //And then there's another one of that kind. He calls himself Ruga.
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_15_17"); //That's the truth. I met him at Dragomir. He's a crossbow teacher.

	Info_ClearChoices	(Info_Mod_Cyrco_SuchenderZettel);

	Info_AddChoice	(Info_Mod_Cyrco_SuchenderZettel, "Why can't you just let Dragomir come back?", Info_Mod_Cyrco_SuchenderZettel_B);
	Info_AddChoice	(Info_Mod_Cyrco_SuchenderZettel, "Hm, good. I'll do it.", Info_Mod_Cyrco_SuchenderZettel_A);
};

FUNC VOID Info_Mod_Cyrco_SuchenderZettel_B()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_B_15_00"); //Why can't you just let Dragomir come back? That would be safer for everyone!
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_B_38_01"); //Because... (Pause) First of all, please accept that we cannot afford it in the current situation.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_B_38_02"); //Here's some potions for him. Distribute them wisely.

	CreateInvItems	(hero, ItPo_Health_01, 10);
	CreateInvItems	(hero, ItPo_Mana_01, 10);

	B_ShowGivenThings	("20 Drinking trough received");

	Log_CreateTopic	(TOPIC_MOD_JG_DRAGOMIRHILFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_DRAGOMIRHILFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_DRAGOMIRHILFE, "I'm supposed to bring some potions to Dragomir's. Rangar, who receives the potions, should be near the pass.");

	Info_ClearChoices	(Info_Mod_Cyrco_SuchenderZettel);
};

FUNC VOID Info_Mod_Cyrco_SuchenderZettel_A()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_SuchenderZettel_A_15_00"); //Hm, good. I'll do it.
	AI_Output(self, hero, "Info_Mod_Cyrco_SuchenderZettel_A_38_01"); //Good. Take these healing and mana potions for him.

	CreateInvItems	(hero, ItPo_Health_01, 10);
	CreateInvItems	(hero, ItPo_Mana_01, 10);

	B_ShowGivenThings	("20 Drinking trough received");

	Log_CreateTopic	(TOPIC_MOD_JG_DRAGOMIRHILFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_DRAGOMIRHILFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_DRAGOMIRHILFE, "I'm supposed to bring some potions to Dragomir's. Rangar, who receives the potions, should be near the pass.");

	Info_ClearChoices	(Info_Mod_Cyrco_SuchenderZettel);
};

INSTANCE Info_Mod_Cyrco_NovizePass (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_NovizePass_Condition;
	information	= Info_Mod_Cyrco_NovizePass_Info;
	permanent	= 0;
	important	= 0;
	description	= "I met a magician-novice.";
};

FUNC INT Info_Mod_Cyrco_NovizePass_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Novize_JG_Pass_Hi))
	&& (Npc_HasItems(hero, ItWr_NovizeJGPass) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_NovizePass_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_NovizePass_15_00"); //I met a magician-novice. He looked like a magician of fire.
	AI_Output(self, hero, "Info_Mod_Cyrco_NovizePass_38_01"); //Another fire wizard? That's weird. Did he have anything on him?
	AI_Output(hero, self, "Info_Mod_Cyrco_NovizePass_15_02"); //Yeah, I took that note from him.

	B_GiveInvItems	(hero, self, ItWr_NovizeJGPass, 1);

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Cyrco_NovizePass_38_03"); //Hm, let's have a look. That name sounds familiar to me from somewhere.
	AI_Output(self, hero, "Info_Mod_Cyrco_NovizePass_38_04"); //Take the note to Wulfgar, he is best acquainted with our old history.

	B_GiveInvItems	(self, hero, ItWr_NovizeJGPass, 1);

	AI_Output(self, hero, "Info_Mod_Cyrco_NovizePass_38_05"); //You'll find him further back in the cave, where he has his alchemy lab.
};

INSTANCE Info_Mod_Cyrco_Turm (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Turm_Condition;
	information	= Info_Mod_Cyrco_Turm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_Turm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wulfgar_Turm))
	&& (Mod_SuchenderAtTurm == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Turm_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_Turm_38_00"); //Where to go so fast?
	AI_Output(hero, self, "Info_Mod_Cyrco_Turm_15_01"); //To the Fog Tower. Wulfgar says I should check it out for Khorgor.
	AI_Output(self, hero, "Info_Mod_Cyrco_Turm_38_02"); //Good luck! And be careful.
	AI_Output(hero, self, "Info_Mod_Cyrco_Turm_15_03"); //I know....

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cyrco_DragoHilfeII (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_DragoHilfeII_Condition;
	information	= Info_Mod_Cyrco_DragoHilfeII_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_DragoHilfeII_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wulfgar_Turm2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_DragoHilfeII_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII_38_00"); //Stop! Stop right there!
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII_15_01"); //Yes, Reverend?
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII_38_02"); //Bad news from Khorinis.
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII_15_03"); //Oh, oh, oh. narrative
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII_38_04"); //The men around Dragomir are under heavy attack.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII_38_05"); //You're in good shape. You have to help them. Right away.
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII_15_06"); //I'm on my way.

	AI_StopProcessInfos	(self);

	Log_CreateTopic	(TOPIC_MOD_JG_DRAGOMIRHILFE2, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_DRAGOMIRHILFE2, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_DRAGOMIRHILFE2, "Dragomir needs help. Always me.");
};

INSTANCE Info_Mod_Cyrco_DragoHilfeII2 (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_DragoHilfeII2_Condition;
	information	= Info_Mod_Cyrco_DragoHilfeII2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Back from Khorinis.";
};

FUNC INT Info_Mod_Cyrco_DragoHilfeII2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_HilfeII))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_DragoHilfeII2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_15_00"); //Back from Khorinis.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_38_01"); //And? What's the news?
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_15_02"); //The attacks on the new camp are becoming increasingly violent. We were able to strike back the enemy with difficulty.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_38_03"); //Were there any casualties?
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_15_04"); //Unfortunately. Wild fell, Nandor was badly injured.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_38_05"); //Did you get the healer?
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_15_06"); //Dragomir will inform the herb witch.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_38_07"); //Very good. Very good. You can be sent. I hereby designate you a third-degree ranger.
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_15_08"); //Which means?
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_38_09"); //You get this armor here.

	B_GiveInvItems	(self, hero, ItAr_Waldlaeufer_01, 1);

	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_38_10"); //And you can choose between a bone arch or a war crossbow.

	B_SetTopicStatus	(TOPIC_MOD_JG_DRAGOMIRHILFE2, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Cyrco_DragoHilfeII2);

	Info_AddChoice	(Info_Mod_Cyrco_DragoHilfeII2, "I'd like the crossbow.", Info_Mod_Cyrco_DragoHilfeII2_B);
	Info_AddChoice	(Info_Mod_Cyrco_DragoHilfeII2, "I'd like the bow.", Info_Mod_Cyrco_DragoHilfeII2_A);
};

FUNC VOID Info_Mod_Cyrco_DragoHilfeII2_C()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_C_38_00"); //Suit yourself.
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_C_15_01"); //Thank you, master.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_C_38_02"); //Adanos be with you.
	AI_Output(self, hero, "Info_Mod_Cyrco_DragoHilfeII2_C_38_03"); //Come back later.
	
	Info_ClearChoices	(Info_Mod_Cyrco_DragoHilfeII2);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Cyrco_DragoHilfeII2_B()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_B_15_00"); //I'd like the crossbow.
	
	B_GiveInvItems	(self, hero, ItRw_Crossbow_M_02, 1);

	Info_Mod_Cyrco_DragoHilfeII2_C();
};

FUNC VOID Info_Mod_Cyrco_DragoHilfeII2_A()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_DragoHilfeII2_A_15_00"); //I'd like the bow.
	
	B_GiveInvItems	(self, hero, ItRw_Bow_H_01, 1);

	Info_Mod_Cyrco_DragoHilfeII2_C();
};

INSTANCE Info_Mod_Cyrco_Opferschale (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Opferschale_Condition;
	information	= Info_Mod_Cyrco_Opferschale_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_Opferschale_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_AW_ScrollJG2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Opferschale_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_00"); //I'm glad you came.
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_01"); //What's the matter now?
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_02"); //You better ask what isn't.
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_03"); //What's not?
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_04"); //Our manpower.
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_05"); //That means we need more people?
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_06"); //Certainly. We've lost two men here, Dragomir three, as far as I know.
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_07"); //That's the truth. And who were you thinking of?
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_08"); //Melee fighters we can use. Melee.
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_09"); //Hmm. I think there's always a couple of mercenaries at Onar's farm. Might ask that.
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_10"); //And the new warehouse?
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_11"); //Let's see what happens there.
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_12"); //Do that.
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_13"); //I understand. By the way, do you know anything about a sacrificial bowl?
	AI_Output(self, hero, "Info_Mod_Cyrco_Opferschale_38_14"); //You mean a certain bowl?
	AI_Output(hero, self, "Info_Mod_Cyrco_Opferschale_15_15"); //Actually, yes. But what is certain? I'll ask Wulfgar.

	Log_CreateTopic	(TOPIC_MOD_JG_NAHKAMPF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_NAHKAMPF, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_NAHKAMPF, "They want me to recruit at least two men for the Rangers. There's people hanging around onar. And I can ask in the new warehouse.");
};

INSTANCE Info_Mod_Cyrco_Nahkampf (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Nahkampf_Condition;
	information	= Info_Mod_Cyrco_Nahkampf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mission accomplished. Have the fighters arrived yet?";
};

FUNC INT Info_Mod_Cyrco_Nahkampf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Nahkampf2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Nahkampf_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_Nahkampf_15_00"); //Mission accomplished. Have the fighters arrived yet?
	AI_Output(self, hero, "Info_Mod_Cyrco_Nahkampf_38_01"); //One yes. He's already training with the hunters. A capable man, it seems to me.
	AI_Output(hero, self, "Info_Mod_Cyrco_Nahkampf_15_02"); //Good to hear. The second comes from Onars Hof.
	AI_Output(hero, self, "Info_Mod_Cyrco_Nahkampf_15_03"); //However, I had to promise the leader there that you would send a hunter to Khorinis in exchange.
	AI_Output(hero, self, "Info_Mod_Cyrco_Nahkampf_15_04"); //I hope that was in your mind.
	AI_Output(self, hero, "Info_Mod_Cyrco_Nahkampf_38_05"); //Oh, sure enough. A melee fighter is more important here. I'll send the sonor when the new guy gets here.

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_JG_NAHKAMPF, "Cyrco will send Sonor to Lares as an exchange.");
	B_SetTopicStatus	(TOPIC_MOD_JG_NAHKAMPF, LOG_SUCCESS);

	Wld_InsertNpc	(Mod_7679_SLD_Falin_JL,	"JL_45");
};

INSTANCE Info_Mod_Cyrco_Sweetwater (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Sweetwater_Condition;
	information	= Info_Mod_Cyrco_Sweetwater_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, venerable. Is the new guy here?";
};

FUNC INT Info_Mod_Cyrco_Sweetwater_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Nahkampf))
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Sweetwater_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater_15_00"); //Hello, Reverend. Is the new guy here?
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater_38_01"); //Sure enough, that stool's there too. And it's about to send a message.
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater_15_02"); //For me?
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater_38_03"); //Exactly. He trains in the back.
};

INSTANCE Info_Mod_Cyrco_Sweetwater2 (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Sweetwater2_Condition;
	information	= Info_Mod_Cyrco_Sweetwater2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_Sweetwater2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Sweetwater2))
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Sweetwater2_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_00"); //You're back. What was going on?
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_01"); //The people in Jharkendar had water problems. Had!
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_02"); //Jharkendar?
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_03"); //Certainly. A new area beyond Khorinis.
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_04"); //Could be located west of Relendel, but is inaccessible and can only be reached via a portal.
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_05"); //The Water Magicians discovered it with my help.
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_06"); //Interesting. How do you get there?
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_07"); //As I said before, southeast of the passage to Relendel is a large old temple, next to it is an excavation site and inside the portal.
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_08"); //Speaking of which, Relendel. I heard that they had invented a new recipe.
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_09"); //They tell each other true wonders about it. But no one knows exactly what. You should be....
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_10"); //... I'll have a look there. I know. By the way, it's called delights.
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_11"); //Shall change the perception. People are getting weird.
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_12"); //Well, I'm personally interested. You wouldn't do it for nothing.
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_13"); //Which means?
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_14"); //I have a title to give away...
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_15"); //I see. If nothing else is on....
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_16"); //No, not at the moment. But we must not lose sight of this Khorgor.
	AI_Output(hero, self, "Info_Mod_Cyrco_Sweetwater2_15_17"); //Certainly not. See you later.
	AI_Output(self, hero, "Info_Mod_Cyrco_Sweetwater2_38_18"); //Adanos with you!

	Log_CreateTopic	(TOPIC_MOD_JG_RELENDEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_RELENDEL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_RELENDEL, "Cyrco wants me to go to Khorata and look for some goodies.");
};

INSTANCE Info_Mod_Cyrco_Drachental (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Drachental_Condition;
	information	= Info_Mod_Cyrco_Drachental_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm back, Master. I got a lot to report.";
};

FUNC INT Info_Mod_Cyrco_Drachental_Condition()
{
	if (Mod_JG_SuchenderDT == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Drachental_Info()
{
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_00"); //I'm back, Master. I got a lot to report.
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_01"); //(zealous) And? Did you...?

	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 2)
	{
		AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_02"); //Oh, sure enough. Here's two vials.

		B_GiveInvItems	(hero, self, ItMi_Freudenspender, 2);

		AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_03"); //Good. And do you know how...
		AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_04"); //Unfortunately, no. Even the inhabitants of Khorata don't know how the stuff is brewed.
		AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_05"); //But where do they get it from?
		AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_06"); //There's an enclave somewhere called a court. I guess that's where it's coming from.
		AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_07"); //Before you ask: Only a few people are allowed to enter this area.
		AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_08"); //Very well. And how does this stuff work?
		AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_09"); //Similar to swamp weed. Only much more intense. And you get addicted to it.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_10"); //Unfortunately, no.
		AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_11"); //Hmm... very sad.
	};

	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_12"); //But is that all you want to know?
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_13"); //By Adanos, no! What else did you learn?
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_14"); //This seeker who caused the raids on the hunters and the camp is dead.
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_15"); //Keep talking. How do you know that?
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_16"); //I finally got him. He lived in a small valley.
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_17"); //And I think this Khorgor can be found there, too.
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_18"); //And why didn't you just...?
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_19"); //Slow down, old man. I was thrown back into the secret cave near the Old Mine.
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_20"); //Just here to report back. And what about the title you're going to award?
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_21"); //Hm... first-class ranger. All right, bring me Khorgor's head and I'll give you the rank of highest ranger.
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_22"); //That's a word. Do you have any advice?
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_23"); //Do you still have that strange runic cuboid?
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_24"); //It is. But it takes the sacrificial bowl.
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_25"); //She'll be there when she's needed.
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_26"); //Well, hopefully.
	AI_Output(self, hero, "Info_Mod_Cyrco_Drachental_38_27"); //Good luck, runners!
	AI_Output(hero, self, "Info_Mod_Cyrco_Drachental_15_28"); //Thank you, master.

	B_LogEntry	(TOPIC_MOD_JG_DRACHENTAL, "Reported to Cyrco. He appoints me head ranger when I bring him Khorgor's head. And he reminded me of that weird cuboid rune. Let's see now.");
};

INSTANCE Info_Mod_Cyrco_Khorgor (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Khorgor_Condition;
	information	= Info_Mod_Cyrco_Khorgor_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_Khorgor_Condition()
{
	if (Mod_JG_Khorgor == 2)
	&& (Npc_HasItems(hero, ItAt_KhorgorKopf) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Khorgor_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_Khorgor_38_00"); //Adanos to greet you!
	AI_Output(hero, self, "Info_Mod_Cyrco_Khorgor_15_01"); //Here's to balance, Master.
	AI_Output(self, hero, "Info_Mod_Cyrco_Khorgor_38_02"); //Reports. What have you got to report?
	AI_Output(hero, self, "Info_Mod_Cyrco_Khorgor_15_03"); //A headless mad magician. He wanted to create absolute chaos. And master it.

	B_GiveInvItems	(hero, self, ItAt_KhorgorKopf, 1);

	AI_StopProcessInfos	(hero);
};

INSTANCE Info_Mod_Cyrco_Khorgor2 (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Khorgor2_Condition;
	information	= Info_Mod_Cyrco_Khorgor2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cyrco_Khorgor2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wulfgar_Khorgor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cyrco_Khorgor2_Info()
{
	AI_Output(self, hero, "Info_Mod_Cyrco_Khorgor2_38_00"); //So you shall receive the promised consecration. I hereby appoint you first degree ranger. Wulfgar is my witness.
	AI_Output(hero, self, "Info_Mod_Cyrco_Khorgor2_15_01"); //Subservient thanks, Master. Always at your service. But now I have to go back to Khorinis.
	AI_Output(self, hero, "Info_Mod_Cyrco_Khorgor2_38_02"); //Oh, sure enough. Good luck to you.

	B_SetTopicStatus	(TOPIC_MOD_JG_DRACHENTAL, LOG_SUCCESS);

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Cyrco_Pickpocket (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_Pickpocket_Condition;
	information	= Info_Mod_Cyrco_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Cyrco_Pickpocket_Condition()
{
	C_Beklauen	(175, ItMi_Gold, 97);
};

FUNC VOID Info_Mod_Cyrco_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);

	Info_AddChoice	(Info_Mod_Cyrco_Pickpocket, DIALOG_BACK, Info_Mod_Cyrco_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cyrco_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cyrco_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cyrco_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);
};

FUNC VOID Info_Mod_Cyrco_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);

		Info_AddChoice	(Info_Mod_Cyrco_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cyrco_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cyrco_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cyrco_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cyrco_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cyrco_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cyrco_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cyrco_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cyrco_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cyrco_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cyrco_EXIT (C_INFO)
{
	npc		= Mod_7417_JG_Cyrco_JL;
	nr		= 1;
	condition	= Info_Mod_Cyrco_EXIT_Condition;
	information	= Info_Mod_Cyrco_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cyrco_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cyrco_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
