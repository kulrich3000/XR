INSTANCE Info_Mod_Xeres_XW_Hi (C_INFO)
{
	npc		= Xeres_02;
	nr		= 1;
	condition	= Info_Mod_Xeres_XW_Hi_Condition;
	information	= Info_Mod_Xeres_XW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xeres_XW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Xeres_XW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_00"); //I see you have not only found your way into my humble kingdom, but this time you have even brought your friends with you.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_01"); //So this is where you shall die and become my servants.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_02"); //You've also managed to unite the power of the gods, but that won't do you any good against me.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_03"); //I will not be banished twice by this sword.
	AI_Output(hero, self, "Info_Mod_Xeres_XW_Hi_15_04"); //How could it ever happen once when you're so powerful?
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_05"); //So let's have a little chat while your cronies are up there.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_06"); //It all began many years ago in Jharkendar. That's where I was born. It can be said that a high culture prevailed at that time.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_07"); //There was only one God, not three, like now. He was called Radanos and united the three gods in himself.
	AI_Output(hero, self, "Info_Mod_Xeres_XW_Hi_15_08"); //I already know all that.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_09"); //Why suddenly so hectic?
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_10"); //So I grew up in Jharkendar. My father was a simple blacksmith and my mother an herbalist.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_11"); //Already in my youth I felt the desire to escape my insignificant existence and gain power.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_12"); //So I experimented a lot with magic and potions.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_13"); //At that time, there were completely different ways of working magic than today.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_14"); //The use of new, stronger spells is now frowned upon. In the past, there were no limits to the spirit of research.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_15"); //So it happened that after five years I had found a way to become immortal. However, I had to share.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_16"); //The biggest problem was protecting my parts, or those in power.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_17"); //The first one was weak, but through his appearance he could disappear among the humans and was so safe from being killed.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_18"); //Of course, one power carrier was not enough. I created a second one. A dragon brought back from the dead. He was very powerful. My masterpiece, so to speak. And you destroyed him.
	AI_Output(hero, self, "Info_Mod_Xeres_XW_Hi_15_19"); //How do you know that?
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_20"); //The dragon was part of my self. After his death, his energy has returned to me.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_21"); //I have felt the deaths of three of my power holders. The Dragon, the Shape-shifter, and Urnol. The sleeper is banished.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_22"); //So you almost took away my immortality, but you gave me more strength.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_23"); //I can kill whoever I want with a snap of my finger.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xeres_XW_LesterTot (C_INFO)
{
	npc		= Xeres_02;
	nr		= 1;
	condition	= Info_Mod_Xeres_XW_LesterTot_Condition;
	information	= Info_Mod_Xeres_XW_LesterTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xeres_XW_LesterTot_Condition()
{
	if (Mod_XW_Kap6 == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xeres_XW_LesterTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_00"); //You see, I'm not kidding.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_01"); //So I had gained my immortality and almost infinite power.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_02"); //Because they did not want to submit to me, I killed most of the inhabitants of Jharkendar and sought servants.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_03"); //As the undead, the people of my people were quite useful. But after a short time a stranger appeared.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_04"); //I suspect he was an envoy of Radano's. He carried Uriziel, the twisted blade of the gods.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_05"); //Through this sword he managed to wound me badly, and Radanos managed to imprison me here.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_06"); //But thanks to my mighty men, I couldn't die. I tried to escape for a long time.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_07"); //I created another power carrier. You know him. It was you who destroyed him. Thanks to you, he is in Beliar's realm.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_08"); //He was my pet for a long time. Then I sent him to the Minental valley, where he accidentally helped to enlarge the barrier. I broke off my contact with him.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_09"); //But then you came. You know that part of the story. You had the sleeper on your conscience, my faithful friend. I wanted revenge.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_10"); //Urnol should now put you on my trail and finish what I couldn't tell the sleeper. And the plan worked.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_11"); //The curiosity of the Water Magicians made her break the magic that lay over me and liberate me.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_12"); //And now we face each other: the new chosen one of the gods and I, the mighty and above all immortal Xeres.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_13"); //But now enough of the words, let's get down to brass tacks. You'll be like your friend!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xeres_XW_LetzteRunde (C_INFO)
{
	npc		= Xeres_02;
	nr		= 1;
	condition	= Info_Mod_Xeres_XW_LetzteRunde_Condition;
	information	= Info_Mod_Xeres_XW_LetzteRunde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xeres_XW_LetzteRunde_Condition()
{
	if (Mod_XW_Kap6 == 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xeres_XW_LetzteRunde_Info()
{
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LetzteRunde_14_00"); //Well fought. Good fight. I'm willing to negotiate a tie.
	AI_Output(hero, self, "Info_Mod_Xeres_XW_LetzteRunde_15_01"); //End of the line?
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LetzteRunde_14_02"); //(panting) Never... Never ever!

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	self.fight_tactic = FAI_HUMAN_COWARD;
};
