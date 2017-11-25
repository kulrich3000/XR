INSTANCE Info_Mod_Oschust_BadOne_Hi (C_INFO)
{
	npc		= Mod_7175_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_BadOne_Hi_Condition;
	information	= Info_Mod_Oschust_BadOne_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Oschust_BadOne_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Oschust_BadOne_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Hi_04_00"); //Surrender, lay down your weapons! You are surrounded and have no chance against this superiority.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "ATPLAYER");
};

INSTANCE Info_Mod_Oschust_BadOne_You (C_INFO)
{
	npc		= Mod_7175_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_BadOne_You_Condition;
	information	= Info_Mod_Oschust_BadOne_You_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Oschust_BadOne_You_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_Unterlegen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_BadOne_You_Info()
{
	Npc_ClearAIQueue	(Mod_948_BDT_Esteban_MT);
	Npc_ClearAIQueue	(Mod_955_BDT_Juan_MT);
	Npc_ClearAIQueue	(Mod_957_BDT_Logan_MT);
	Npc_ClearAIQueue	(Mod_958_BDT_Miguel_MT);
	Npc_ClearAIQueue	(Mod_964_BDT_Skinner_MT);
	Npc_ClearAIQueue	(Mod_4074_BDT_Bandit_MT);
	Npc_ClearAIQueue	(Mod_4075_BDT_Bandit_MT);
	Npc_ClearAIQueue	(Mod_790_BDT_Morgahard_MT);

	AI_StandUpQuick	(Mod_948_BDT_Esteban_MT);
	AI_Teleport	(Mod_948_BDT_Esteban_MT, "TOT");
	AI_StandUpQuick	(Mod_955_BDT_Juan_MT);
	AI_Teleport	(Mod_955_BDT_Juan_MT, "TOT");
	AI_StandUpQuick	(Mod_957_BDT_Logan_MT);
	AI_Teleport	(Mod_957_BDT_Logan_MT, "TOT");
	AI_StandUpQuick	(Mod_958_BDT_Miguel_MT);
	AI_Teleport	(Mod_958_BDT_Miguel_MT, "TOT");
	AI_StandUpQuick	(Mod_964_BDT_Skinner_MT);
	AI_Teleport	(Mod_964_BDT_Skinner_MT, "TOT");
	AI_StandUpQuick	(Mod_4074_BDT_Bandit_MT);
	AI_Teleport	(Mod_4074_BDT_Bandit_MT, "TOT");
	AI_StandUpQuick	(Mod_4075_BDT_Bandit_MT);
	AI_Teleport	(Mod_4075_BDT_Bandit_MT, "TOT");
	AI_StandUpQuick	(Mod_790_BDT_Morgahard_MT);
	AI_Teleport	(Mod_790_BDT_Morgahard_MT, "TOT");

	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "GEFANGEN");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "GEFANGEN");

	AI_PlayAni	(hero, "T_SLEEPGROUND_2_STAND");

	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_You_04_00"); //Take them away!

	AI_Wait	(self, 3.0);

	AI_Function_S(self, Wld_StopEffect, "BLACK_SCREEN_LONG");

	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_You_04_01"); //And now to you.

	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustTot))
	{
		AI_Output(self, hero, "Info_Mod_Oschust_BadOne_You_04_02"); //Ha, you thought you got me.
		AI_Output(self, hero, "Info_Mod_Oschust_BadOne_You_04_03"); //But I wasn't dead, only badly wounded and the magic stone I received from Hosh Pak made my wounds close.
		AI_Output(self, hero, "Info_Mod_Oschust_BadOne_You_04_04"); //Do you have anything else to say before I give you a painful death with my hairy friends here?
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Oschust_BadOne_You_04_05"); //All right, my friend, you're going to pay for the blows. Do you have anything else to say before I finish you off with my hairy friends?
	};

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "It was an ambush. Oschust betrayed us to the orcs and captured the other bandits. I should tell Dexter about it.");
};

INSTANCE Info_Mod_Oschust_BadOne_Trophies (C_INFO)
{
	npc		= Mod_7175_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_BadOne_Trophies_Condition;
	information	= Info_Mod_Oschust_BadOne_Trophies_Info;
	permanent	= 0;
	important	= 0;
	description	= "Another few more trophies for my collection.";
};

FUNC INT Info_Mod_Oschust_BadOne_Trophies_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_You))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_BadOne_Trophies_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_BadOne_Trophies_15_00"); //Another few more trophies for my collection.
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Trophies_04_01"); //You brash... Go on, cut him up.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "TOT");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "TOT");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "TOT");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "TOT");
	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "TOT");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "TOT");

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Oschust_BadOne_Gnade (C_INFO)
{
	npc		= Mod_7175_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_BadOne_Gnade_Condition;
	information	= Info_Mod_Oschust_BadOne_Gnade_Info;
	permanent	= 0;
	important	= 0;
	description	= "Please give me a break.";
};

FUNC INT Info_Mod_Oschust_BadOne_Gnade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_You))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_BadOne_Gnade_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_BadOne_Gnade_15_00"); //Please give me a break.
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Gnade_04_01"); //(laughs evil) Ha, your whimpering won't help you now. You are just a piece of dirt that we eliminate before we finally destroy the bandit camp and repeat the amulet of the magicians.
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Gnade_04_02"); //And the captured bandits will expect no less bad fate... but enough words. Go on, gut him out.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "TOT");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "TOT");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "TOT");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "TOT");
	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "TOT");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "TOT");

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Oschust_BadOne_Plan (C_INFO)
{
	npc		= Mod_7175_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_BadOne_Plan_Condition;
	information	= Info_Mod_Oschust_BadOne_Plan_Info;
	permanent	= 0;
	important	= 0;
	description	= "Would you let me in on your other plans first?";
};

FUNC INT Info_Mod_Oschust_BadOne_Plan_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_You))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_BadOne_Plan_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_BadOne_Plan_15_00"); //Would you let me in on your other plans first?
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Plan_04_01"); //Ha, since you're about to die anyway... We destroy the bandit camp and get the amulet by force from the magicians.
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Plan_04_02"); //Well, and the captured bandits are sacrificed in a nice ritual. Be glad that you are spared this fate (laughs evil).
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Plan_04_03"); //Now enough of the words. I will cut off the curious ears of your shredded body as trophies. Come on, tear him up.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "TOT");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "TOT");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "TOT");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "TOT");
	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "TOT");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "TOT");

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Oschust_BadOne_Billig (C_INFO)
{
	npc		= Mod_7175_BDT_Oschust_MT;
	nr		= 1;
	condition	= Info_Mod_Oschust_BadOne_Billig_Condition;
	information	= Info_Mod_Oschust_BadOne_Billig_Info;
	permanent	= 0;
	important	= 0;
	description	= "Deeply sunk, to sell itself to the orcs....";
};

FUNC INT Info_Mod_Oschust_BadOne_Billig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_You))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oschust_BadOne_Billig_Info()
{
	AI_Output(hero, self, "Info_Mod_Oschust_BadOne_Billig_15_00"); //Deeply sunk, to sell itself to the orcs....
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Billig_04_01"); //Huh, but at a good price. The orcs rewarded me with magic, gold and powerful artifacts.
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Billig_04_02"); //I can now compete with the strongest fighters. And my blade will be the one to cut your guts out.
	AI_Output(self, hero, "Info_Mod_Oschust_BadOne_Billig_04_03"); //Come on, let's finish him off.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "TOT");
	B_StartOtherRoutine	(Mod_955_BDT_Juan_MT, "TOT");
	B_StartOtherRoutine	(Mod_957_BDT_Logan_MT, "TOT");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "TOT");
	B_StartOtherRoutine	(Mod_964_BDT_Skinner_MT, "TOT");
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "TOT");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "TOT");

	B_Attack	(self, hero, AR_Kill, 0);
	B_Attack	(Mod_10021_ORC_Elite_MT, hero, AR_Kill, 0);
	B_Attack	(Mod_10022_ORC_Elite_MT, hero, AR_Kill, 0);
	B_Attack	(Mod_10029_Orc_Warrior_MT, hero, AR_Kill, 0);
	B_Attack	(Mod_10030_Orc_Warrior_MT, hero, AR_Kill, 0);
	B_Attack	(Mod_10031_Orc_Warrior_MT, hero, AR_Kill, 0);
};
