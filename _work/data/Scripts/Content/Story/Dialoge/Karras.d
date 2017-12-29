INSTANCE Info_Mod_Karras_Hallo (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Hallo_Condition;
	information	= Info_Mod_Karras_Hallo_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why are you with the Beliaran supporters?";
};

FUNC INT Info_Mod_Karras_Hallo_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Karras_Hallo_Info()
{
	AI_Output(hero, self, "Info_Mod_Karras_Hallo_15_00"); //Why are you with the Beliaran supporters?
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_36_01"); //Beliar called me in when I grew up.
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_36_02"); //My father was a innocent believer and a thug. He mistreated my mother and siblings.
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_36_03"); //One night Beliar spoke to me. I went to my father and strangled him in his sleep. From then on everything got better.

	Info_ClearChoices	(Info_Mod_Karras_Hallo);

	Info_AddChoice	(Info_Mod_Karras_Hallo, "An exciting story!", Info_Mod_Karras_Hallo_B);
	Info_AddChoice	(Info_Mod_Karras_Hallo, "That's bullshit.", Info_Mod_Karras_Hallo_A);
};

FUNC VOID Info_Mod_Karras_Hallo_B()
{
	AI_Output(hero, self, "Info_Mod_Karras_Hallo_B_15_00"); //An exciting story!
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_B_36_01"); //It shows that Beliar won't let us down. And once you have made contact with him, you can always talk to him if you wish.
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_B_36_02"); //That's how I feel.

	Info_ClearChoices	(Info_Mod_Karras_Hallo);
};

FUNC VOID Info_Mod_Karras_Hallo_A()
{
	AI_Output(hero, self, "Info_Mod_Karras_Hallo_A_15_00"); //That's bullshit.
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_A_36_01"); //I understand that you don't want to believe it. But Beliar takes care of the disadvantaged.
	AI_Output(self, hero, "Info_Mod_Karras_Hallo_A_36_02"); //Most of us have a history similar to mine. Beliar does not speak to the kings and princes.

	Info_ClearChoices	(Info_Mod_Karras_Hallo);
};

INSTANCE Info_Mod_Karras_HastDuAuftrag_2 (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_HastDuAuftrag_2_Condition;
	information	= Info_Mod_Karras_HastDuAuftrag_2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have a mission for me, Master?";
};

FUNC INT Info_Mod_Karras_HastDuAuftrag_2_Condition()
{
	if (Kapitel >= 2)
	&& (Mod_Gilde == 12)
	&& (Npc_KnowsInfo(hero, Info_Mod_Karras_Hallo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_HastDuAuftrag_2_Info()
{
	AI_Output(hero, self, "Info_Mod_Karras_HastDuAuftrag_2_15_00"); //Do you have a mission for me, Master?
	AI_Output(self, hero, "Info_Mod_Karras_HastDuAuftrag_2_36_01"); //Yes, I have a job for you, young student. My ears have been hearing rumors lately that our hated brothers are planning something big.
	AI_Output(self, hero, "Info_Mod_Karras_HastDuAuftrag_2_36_02"); //Get to the bottom of the rumors. It would probably be the wisest thing to do if you follow the heels of the messenger Pyrokar has sent to town recently.
	AI_Output(hero, self, "Info_Mod_Karras_HastDuAuftrag_2_15_03"); //Where will I find the messenger?
	AI_Output(self, hero, "Info_Mod_Karras_HastDuAuftrag_2_36_04"); //Our scouts report that he always takes a break in the tavern in front of the monastery to drink a glass at noon.
	AI_Output(self, hero, "Info_Mod_Karras_HastDuAuftrag_2_36_05"); //A glass usually turns into a bottle or two. You shouldn't have any problems getting rid of the messenger's letter!
	AI_Output(self, hero, "Info_Mod_Karras_HastDuAuftrag_2_36_06"); //Don't get caught in your robe, though!

	Log_CreateTopic	(TOPIC_MOD_KARRAS_BOTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KARRAS_BOTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KARRAS_BOTE, "The fire magicians seem to be planning something. I'm here to intercept your messenger and get his intel to Karras. At midday he is always in the tavern in front of the monastery. I'm not supposed to show up in my robe.");
};

INSTANCE Info_Mod_Karras_Bote (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Bote_Condition;
	information	= Info_Mod_Karras_Bote_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a letter here, Master.";
};

FUNC INT Info_Mod_Karras_Bote_Condition()
{
	if (Npc_HasItems(hero, Mod_MattheusBotschaft) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Bote_Info()
{
	AI_Output(hero, self, "Info_Mod_Karras_Bote_15_00"); //I have a letter here, Master.

	B_GiveInvItems	(hero, self, Mod_MattheusBotschaft, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Karras_Bote_36_01"); //Ah. So the Fire Magicians want to set up guards. But since Lord Hagen won't get this letter, it will take a while.

	if (Npc_KnowsInfo(hero, Info_Mod_Mattheus_Alk))
	{
		AI_Output(self, hero, "Info_Mod_Karras_Bote_36_02"); //What did you do to the messenger?
		AI_Output(hero, self, "Info_Mod_Karras_Bote_15_03"); //I gave him something to drink, but that seems to have been a sip too much, at least he won't get up now.
		AI_Output(self, hero, "Info_Mod_Karras_Bote_36_04"); //Then it will probably take a little longer until the fire magicians get wind of the matter.
	};

	AI_Output(self, hero, "Info_Mod_Karras_Bote_36_05"); //Anyway, you've done your job well. Here's a little reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_KARRAS_BOTE, "Karras is satisfied with my work.");

	B_SetTopicStatus	(TOPIC_MOD_KARRAS_BOTE, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Karras_Namib (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Namib_Condition;
	information	= Info_Mod_Karras_Namib_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm supposed to give you this letter.";
};

FUNC INT Info_Mod_Karras_Namib_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Namib))
	&& (Npc_HasItems(hero, ItWr_NamibForBeliar) == 1)
	&& (Npc_HasItems(hero, ItMi_HerbPaket) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Namib_Info()
{
	AI_Output(hero, self, "Info_Mod_Karras_Namib_15_00"); //I'm supposed to give you this letter.

	B_GiveInvItems	(hero, self, ItWr_NamibForBeliar, 1);

	B_UseFakeScroll();

	if (Mod_Gilde > 11)
	&& (Mod_Gilde < 16)
	{
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_01"); //At last, I thought they'd stopped asking questions.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_02"); //You expected it?
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_03"); //Of course! Do you think we didn't realize that godforsaken idiot in the cave was doing his experiments upstairs?
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_04"); //Then you come with me to the swamp.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_05"); //Yes... that is, no.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_06"); //What now?
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_07"); //We'll go with you, but first you have to organize something.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_08"); //What?
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_09"); //A book, the Necronomicum. The fire magicians stole it from us. It's in the monastery.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_10"); //And how do you imagine it? I can't go to the Convent of Fire Magicians! I stole the hammer there and they're looking for me.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_11"); //I don't know how you do it! Maybe this will help you. That's a nightstick.

		B_GiveInvItems	(self, hero, ItMw_UnconsciousKnueppel, 1);

		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_12"); //He's enchanted. If you hit someone with it, he'll faint and he won't remember anything when he wakes up.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_13"); //However, it only works once. Why don't you take a look around town?

		B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Before Karras goes to the Minental with him, I shall fetch him a book of fire magicians, which was stolen from him. I should check around town.");

		Mod_Sekte_Karras = 2;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_14"); //Are you serious? And what do we get in return?
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_15"); //Well, I'm supposed to give you this package here.

		B_GiveInvItems	(hero, self, ItMi_HerbPaket, 1);

		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_16"); //A packet of bogweed? Don't make me laugh.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_17"); //You don't seriously think we're just struggling over a bogweed package, do you? I'll make you a deal.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_18"); //There's something to do. Something only someone who isn't one of our brothers can do.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_19"); //What do you mean?
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_20"); //The Fire Magicians stole a book from us. I want you to get it back for us.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_21"); //If I steal this book from the Fire Magicians, will you come with me?
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_22"); //So, first of all, you don't steal it, but you get our rightful property back, and secondly, yes.
		AI_Output(hero, self, "Info_Mod_Karras_Namib_15_23"); //All right, all right. Where can I find the book?
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_24"); //Probably in her library.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_25"); //And take this stick. He's enchanted. If you hit someone with it, he'll faint and he won't remember anything when he wakes up.

		B_GiveInvItems	(self, hero, ItMw_UnconsciousKnueppel, 1);

		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_26"); //However, it only works once. So watch it. If you screw this up, you're gonna have to find a way to take out the guard yourself.
		AI_Output(self, hero, "Info_Mod_Karras_Namib_36_27"); //Now hurry up!

		B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Before Karras goes to the Minental with him, I shall fetch him a book of fire magicians, which was stolen from him.");

		Mod_Sekte_Karras = 1;
	};
};

INSTANCE Info_Mod_Karras_NamibHabBuch (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_NamibHabBuch_Condition;
	information	= Info_Mod_Karras_NamibHabBuch_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the book.";
};

FUNC INT Info_Mod_Karras_NamibHabBuch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Karras_Namib))
	&& (Mod_Sekte_Aufnahme == 0)
	&& (Mod_Sekte_Karras >= 1)
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_NamibHabBuch_Info()
{
	AI_Output(hero, self, "Info_Mod_Karras_NamibHabBuch_15_00"); //I have the book.

	B_GiveInvItems	(hero, self, ItWr_BeliarBook, 1);

	if (Mod_Sekte_Karras == 1)
	{
		AI_Output(self, hero, "Info_Mod_Karras_NamibHabBuch_36_01"); //Very good. Very good. Then we'll go to the Minental with you. Tell me when you're ready.
		AI_Output(hero, self, "Info_Mod_Karras_NamibHabBuch_15_02"); //I have to pick someone up, then we can go.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Karras_NamibHabBuch_36_03"); //Very good! This concludes the preparations.
		AI_Output(hero, self, "Info_Mod_Karras_NamibHabBuch_15_04"); //Preparations for what?
		AI_Output(self, hero, "Info_Mod_Karras_NamibHabBuch_36_05"); //You'll see soon enough. Let me know as soon as you're ready to go.
		AI_Output(hero, self, "Info_Mod_Karras_NamibHabBuch_15_06"); //I just need to get a friend out of a cave first.
	};

	AI_Output(self, hero, "Info_Mod_Karras_NamibHabBuch_36_07"); //All right, all right.

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Now I have to let Lester know and then Karras and I go to the Minental with him.");
};

INSTANCE Info_Mod_Karras_Lester (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Lester_Condition;
	information	= Info_Mod_Karras_Lester_Info;
	permanent	= 0;
	important	= 0;
	description	= "We can go now.";
};

FUNC INT Info_Mod_Karras_Lester_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_Karras))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Lester_Info()
{
	AI_Output(hero, self, "Info_Mod_Karras_Lester_15_00"); //We can go now.
	AI_Output(self, hero, "Info_Mod_Karras_Lester_36_01"); //All right, all right.
	
	AI_StopProcessInfos	(self);

	Mod_Sekte_Aufnahme = 1;
};

INSTANCE Info_Mod_Karras_Namib2 (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Namib2_Condition;
	information	= Info_Mod_Karras_Namib2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karras_Namib2_Condition()
{
	if (Mod_Sekte_Aufnahme == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Namib2_Info()
{
	AI_Output(self, hero, "Info_Mod_Karras_Namib2_36_00"); //Tell Baal Namib we're here.
};

INSTANCE Info_Mod_Karras_Leader (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Leader_Condition;
	information	= Info_Mod_Karras_Leader_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karras_Leader_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_AtTempel))
	&& (hero.guild == GIL_KDF)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Leader_Info()
{
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_00"); //Oh, there you are. Everything is going according to plan. It's almost time.
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_01"); //We will immediately summon the undead here, but no skeletons of bones, but the swamp sharks that ended here.
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_02"); //Don't worry, this has the same effect on the ground, but we will take advantage of it.
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_03"); //We have made sure that one of the Templars, who was supposed to lead a fight group against the undead, will not join us.
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_04"); //You'll take his place.
	AI_Output(hero, self, "Info_Mod_Karras_Leader_15_05"); //Why?
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_06"); //Here, take this stone.

	B_GiveInvItems	(self, hero, ItMi_SumpfhaiStein, 1);

	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_07"); //It will absorb the energy of every Sumphai you or someone in your group kills.
	AI_Output(self, hero, "Info_Mod_Karras_Leader_36_08"); //There should be at least ten sharks, otherwise it was all for nothing! Now go away.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Karras gave me a stone. He said he was going to absorb the energy of the swamp sharks I'm killing with my group.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Karras_Stein (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Stein_Condition;
	information	= Info_Mod_Karras_Stein_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karras_Stein_Condition()
{
	if (Npc_HasItems(hero, ItMi_SumpfhaiStein) == 1)
	&& (hero.guild == GIL_KDF)
	&& (Mod_Sekte_SH_Kampf == 4)
	&& (Npc_IsDead(Swampshark_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Stein_Info()
{
	AI_Output(self, hero, "Info_Mod_Karras_Stein_36_00"); //Give me the stone.

	B_GiveInvItems	(hero, self, ItMi_SumpfhaiStein, 1);

	if (Mod_Sekte_UDS_Stein >= 10)
	{
		AI_Output(self, hero, "Info_Mod_Karras_Stein_36_01"); //Oh, yeah, very good, it's loaded. Come by the valley in a few days.
	
		B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Karras wants me to come back to his place in a few days.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Karras_Stein_36_02"); //But... He's not even charged! Damn, it was all for nothing! You useless bastard! Get out of my sight!
	};
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	AI_Teleport	(self, "TOT");
};

INSTANCE Info_Mod_Karras_Fertig (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Fertig_Condition;
	information	= Info_Mod_Karras_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karras_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_SUDD))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Karras_Fertig_36_00"); //I'm going to leave now.

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Karras_UDS (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_UDS_Condition;
	information	= Info_Mod_Karras_UDS_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karras_UDS_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Karras_Stein))
	&& (Mod_Sekte_UDS_Stein >= 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_UDS_Info()
{
	AI_Output(self, hero, "Info_Mod_Karras_UDS_36_00"); //Ah, there you are! I got something for you.
	AI_Output(self, hero, "Info_Mod_Karras_UDS_36_01"); //Here, this is a rune summoning an undead swamp shark.

	B_GiveInvItems	(self, hero, ItRu_SumUDSwampshark, 1);

	AI_Output(self, hero, "Info_Mod_Karras_UDS_36_02"); //We made them with the energy of the stone you have charged for us.
	AI_Output(self, hero, "Info_Mod_Karras_UDS_36_03"); //Swamp sharks are tough opponents, undead swamp sharks are incredibly strong, but these, summoned by magic, are almost invincible!
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Karras_MagierWerden (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_MagierWerden_Condition;
	information	= Info_Mod_Karras_MagierWerden_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karras_MagierWerden_Condition()
{
	if (Kapitel >= 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Befoerderung))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Raven_Befoerderung))
	&& (hero.guild == GIL_KDF)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_MagierWerden_Info()
{
	AI_Output(self, hero, "Info_Mod_Karras_MagierWerden_36_00"); //You are now ready to become a black magician.
	AI_Output(self, hero, "Info_Mod_Karras_MagierWerden_36_01"); //If you choose this path, you should visit Xardas.
	AI_Output(self, hero, "Info_Mod_Karras_MagierWerden_36_02"); //Alternatively, you can also go to Raven and join the Black Warriors there.
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Karras_Kreis1	(C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Kreis1_Condition;
	information	= Info_Mod_Karras_Kreis1_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the first Circle of Magic.";
};
FUNC INT Info_Mod_Karras_Kreis1_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Karras_Hallo))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_MagieKreis == 0)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_Kreis1_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_Kreis1_15_00"); //Teach me the first circle of magic.
	
	if B_TeachMagicCircle (self, hero, 1)
	{
		AI_Output (self, hero, "Info_Mod_Karras_Kreis1_36_01"); //The first circle allows you to use the runes you have created.
		AI_Output (self, hero, "Info_Mod_Karras_Kreis1_36_02"); //You can now learn the spell formulas to create your own runes.

		Mod_MagieKreis = 1;
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_02
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Karras_Kreis2		(C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Kreis2_Condition;
	information	= Info_Mod_Karras_Kreis2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the second Circle of Magic.";
};
FUNC INT Info_Mod_Karras_Kreis2_Condition ()
{	
	if ((Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_MagieKreis == 1)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_Kreis2_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_Kreis2_15_00"); //Teach me the second circle of magic.
	
	if (Kapitel >= 2)
	{
		if B_TeachMagicCircle (self, hero, 2)
		{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis2_36_01"); //Step into the second circle and learn to cast even more powerful spells.

			Mod_MagieKreis = 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Karras_Kreis2_36_02"); //The time has not yet come.
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_03
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Karras_Kreis3		(C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Kreis3_Condition;
	information	= Info_Mod_Karras_Kreis3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the third Circle of Magic.";
};
FUNC INT Info_Mod_Karras_Kreis3_Condition ()
{	
	if ((Mod_Gilde == 13)
	|| (Mod_Gilde == 14))
	&& (Mod_MagieKreis == 2)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_Kreis3_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_Kreis3_15_00"); //Teach me the third circle of magic.
	
	if (Kapitel >= 3)
	{
		if B_TeachMagicCircle (self, hero, 3)
		{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis3_36_01"); //Yes, the time has come. Enter the third circle of magic. New spells await you.

			Mod_MagieKreis = 3;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Karras_Kreis3_36_02"); //It's not yet time for you to learn the third circle.
	};
};		

INSTANCE Info_Mod_Karras_Kreis4 (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Kreis4_Condition;
	information	= Info_Mod_Karras_Kreis4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn the fourth Circle of Magic.";
};

FUNC INT Info_Mod_Karras_Kreis4_Condition()
{	
	if (Mod_MagieKreis == 3)
	&& ((Mod_Gilde == 13)
	|| (Mod_Gilde == 14))
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Karras_Kreis4_Info ()
{
	AI_Output (hero, self, "Info_Mod_Karras_Kreis4_15_00"); //I want to learn the fourth circle of magic.
	
	if (Kapitel >= 4)
	{
		if B_TeachMagicCircle (self,hero, 4)
		{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis4_36_01"); //Good. All characters are fulfilled. Step into the fourth circle and you will be empowered by the new spells.

			Mod_MagieKreis = 4;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis4_36_02"); //It's not yet.
	};
};

INSTANCE Info_Mod_Karras_Kreis5 (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Kreis5_Condition;
	information	= Info_Mod_Karras_Kreis5_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn the fifth Circle of Magic.";
};

FUNC INT Info_Mod_Karras_Kreis5_Condition()
{	
	if (Mod_MagieKreis == 4)
	&& (Mod_Gilde == 14)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Kreis5_Info()
{
	AI_Output (hero, self, "Info_Mod_Karras_Kreis5_15_00"); //I want to learn the fifth circle of magic.
	
	if (Kapitel >= 5)
	{
		if B_TeachMagicCircle (self,hero, 5)
		{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis5_36_01"); //Then join the fifth circle of magic. You will now master more powerful spells than ever before.

			Mod_MagieKreis = 5;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis5_36_02"); //The time has not yet come.
	};
};

INSTANCE Info_Mod_Karras_Kreis6	(C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Kreis6_Condition;
	information	= Info_Mod_Karras_Kreis6_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the last Circle of Magic.";
};

FUNC INT Info_Mod_Karras_Kreis6_Condition()
{	
	if (Mod_MagieKreis == 5)
	&& (Mod_Gilde == 14)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karras_Kreis6_Info()
{
	AI_Output (hero, self, "Info_Mod_Karras_Kreis6_15_00"); //Teach me the last circle of magic.
	
	if (Kapitel >= 6)
	{
		if B_TeachMagicCircle (self,hero, 6)  
		{
			AI_Output (self, hero, "Info_Mod_Karras_Kreis6_36_01"); //A lot of time has passed since you made the covenant with Beliar. Much has happened and we find no peace.
			AI_Output (self, hero, "Info_Mod_Karras_Kreis6_36_02"); //You are the chosen Beliars. And as such, you will need all the strength to survive your battles.
			AI_Output (self, hero, "Info_Mod_Karras_Kreis6_36_03"); //I dedicate you now, elect. You're entering the sixth circle.
			AI_Output (self, hero, "Info_Mod_Karras_Kreis6_36_04"); //You can now learn the spells of the last circle from Andokai if you wish.

			Mod_MagieKreis = 6;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Karras_Kreis6_36_05"); //It's not the time yet. If you have walked a little further on the way Beliar shows you, then I will instruct you.
	};
};

INSTANCE Info_Mod_Karras_Pickpocket (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_Pickpocket_Condition;
	information	= Info_Mod_Karras_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Karras_Pickpocket_Condition()
{
	C_Beklauen	(136, ItMi_Gold, 62);
};

FUNC VOID Info_Mod_Karras_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Karras_Pickpocket);

	Info_AddChoice	(Info_Mod_Karras_Pickpocket, DIALOG_BACK, Info_Mod_Karras_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Karras_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Karras_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Karras_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Karras_Pickpocket);
};

FUNC VOID Info_Mod_Karras_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Karras_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Karras_Pickpocket);

		Info_AddChoice	(Info_Mod_Karras_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Karras_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Karras_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Karras_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Karras_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Karras_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Karras_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Karras_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Karras_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Karras_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Karras_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Karras_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Karras_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Karras_EXIT (C_INFO)
{
	npc		= Mod_514_DMB_Karras_MT;
	nr		= 1;
	condition	= Info_Mod_Karras_EXIT_Condition;
	information	= Info_Mod_Karras_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Karras_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Karras_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
