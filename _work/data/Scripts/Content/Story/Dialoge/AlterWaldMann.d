INSTANCE Info_Mod_AlterWaldMann_Hi (C_INFO)
{
	npc		= Mod_7529_OUT_AlterMann_REL;
	nr		= 1;
	condition	= Info_Mod_AlterWaldMann_Hi_Condition;
	information	= Info_Mod_AlterWaldMann_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlterWaldMann_Hi_Condition()
{
	if (Mod_IstKeiler == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlterWaldMann_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_00"); //Ahh, hello, I've never seen you around here before... you must have come from the forests of Khorini.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_01"); //Has it become as uneasy as here?
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_02"); //There is no peace of mind from poachers and bandits, from people who ruthlessly clear and plunder the forest...
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_03"); //Well, it's a good thing you showed up here.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_04"); //You could watch over this part of the forest while I have to go to another place where troublemakers have spread.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_05"); //In any case, I'll leave you with some of my power so you can chase away any poachers and vagabond.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Hi_11_06"); //It shouldn't take too long for me to get it done and get back here. Good luck to you.

	B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "The old man of the woods wants me to clean up the surrounding forest of poachers until he gets back. For that purpose, he gave me some of his power.");

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");

	Wld_InsertNpc	(Mod_7530_JG_Wilderer_NW, "REL_SURFACE_033");
	Wld_InsertNpc	(Mod_7531_JG_Wilderer_REL, "REL_SURFACE_005");
	Wld_InsertNpc	(Mod_7532_JG_Wilderer_REL, "REL_SURFACE_139");

	Mod_BDT_AlterWaldMann = 9;

	if (Mod_IstKeiler == TRUE)
	{
		hero.attribute[ATR_HITPOINTS_MAX] = hero.attribute[ATR_HITPOINTS_MAX]*2;
		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS]*2;
		hero.attribute[ATR_STRENGTH] = hero.attribute[ATR_STRENGTH]*2;
	};
};

INSTANCE Info_Mod_AlterWaldMann_Aufgabe (C_INFO)
{
	npc		= Mod_7529_OUT_AlterMann_REL;
	nr		= 1;
	condition	= Info_Mod_AlterWaldMann_Aufgabe_Condition;
	information	= Info_Mod_AlterWaldMann_Aufgabe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlterWaldMann_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlterWaldMann_Hi))
	&& (Npc_IsDead(Mod_7530_JG_Wilderer_NW))
	&& (Npc_IsDead(Mod_7531_JG_Wilderer_REL))
	&& (Npc_IsDead(Mod_7532_JG_Wilderer_REL))
	&& (Mod_IstKeiler == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlterWaldMann_Aufgabe_Info()
{
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Aufgabe_11_00"); //Ahh, I notice you've done a lot of work.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Aufgabe_11_01"); //Here you have a root as a reward that will strengthen you....

	CreateInvItems	(self, ItPl_Strength_Herb_01, 1);

	AI_DropItem	(self, ItPl_Strength_Herb_01);

	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Aufgabe_11_02"); //I have to go further north now. As I have learned, the greedy people there want to open another mine.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_Aufgabe_11_03"); //This must not happen under any circumstances.

	B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "The old man of the forest wants to go further north to prevent the construction of a mine.");

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "REL_SURFACE_146");
	B_StartOtherRoutine	(self, "MINE");

	Mod_BDT_AlterWaldMann = 10;
};

INSTANCE Info_Mod_AlterWaldMann_AtMine (C_INFO)
{
	npc		= Mod_7529_OUT_AlterMann_REL;
	nr		= 1;
	condition	= Info_Mod_AlterWaldMann_AtMine_Condition;
	information	= Info_Mod_AlterWaldMann_AtMine_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlterWaldMann_AtMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlterWaldMann_Aufgabe))
	&& (Mod_IstKeiler == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlterWaldMann_AtMine_Info()
{
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_00"); //Do you see what people do to the forest?
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_01"); //If the trees fell, the vegetation was destroyed, only to enrich itself with more gold and ore.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_02"); //When they reach their destination and open up the mine, many trees will have to die to serve as beams and firewood in the stoves...
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_03"); //Hmm, I have an idea you need to help me with. The tree trunks of the beams are still fresh and full of life...
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_04"); //However, in order for me to realize my plan, you have to distract people for a while.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_05"); //Unfortunately, their armor seems to be very strong and you won't be able to penetrate them with a bite.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine_11_06"); //So watch out and make sure they don't get too close to you with their swords.

	B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "The old man of the forest seems to have a plan related to the fresh beams supporting the mine. However, in order for him to realize his plans, I will have to distract people for a while. However, the attempt to bite them into their bodies will not succeed, as their armor is too thick. So I will have to be quick and careful.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_AlterWaldMann_AtMine2 (C_INFO)
{
	npc		= Mod_7529_OUT_AlterMann_REL;
	nr		= 1;
	condition	= Info_Mod_AlterWaldMann_AtMine2_Condition;
	information	= Info_Mod_AlterWaldMann_AtMine2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlterWaldMann_AtMine2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlterWaldMann_AtMine))
	&& (Npc_IsDead(Mod_7582_OUT_Buddler_REL))
	&& (Npc_IsDead(Mod_7583_OUT_Wache_REL))
	&& (Npc_IsDead(Mod_7584_OUT_Wache_REL))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlterWaldMann_AtMine2_Info()
{
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine2_11_00"); //You've done a good service to the forest.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine2_11_01"); //I have been able to stimulate the fresh beams to new growth, so that they now act as large stable trees to access the mine.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine2_11_02"); //People will now think it is not right and hopefully they will finish their project.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine2_11_03"); //Since you have shown so much skill this time, a berry should increase your agility even more. Ahh, I don't have any on me right now.
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine2_11_04"); //Then I will now go to my chamber of treasures and riches and get you your reward.

	AI_StopProcessInfos	(self);

	AI_GotoWP	(self, "REL_SURFACE_189");

	AI_UseMob	(self, "TOUCHPLATE", 1);
	AI_UseMob	(self, "TOUCHPLATE", -1);

	AI_GotoWP	(self, "REL_SURFACE_188");

	AI_GotoNpc	(self, hero);
};

INSTANCE Info_Mod_AlterWaldMann_AtMine3 (C_INFO)
{
	npc		= Mod_7529_OUT_AlterMann_REL;
	nr		= 1;
	condition	= Info_Mod_AlterWaldMann_AtMine3_Condition;
	information	= Info_Mod_AlterWaldMann_AtMine3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlterWaldMann_AtMine3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlterWaldMann_AtMine2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlterWaldMann_AtMine3_Info()
{
	AI_Output(self, hero, "Info_Mod_AlterWaldMann_AtMine3_11_00"); //Here you are. I must now move on to look elsewhere. Good luck to you. Maybe our paths will cross again soon.

	CreateInvItems	(self, ItPl_Dex_Herb_01, 1);

	AI_DropItem	(self, ItPl_Dex_Herb_01);

	B_GivePlayerXP	(400);

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");

	B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Uh-huh, a mechanism on the stone that leads to its treasures.");

	Wld_SendTrigger	("EVT_WALDMANNVERSTECKK_TRIGGERLIST");
};

INSTANCE Info_Mod_AlterWaldMann_EXIT (C_INFO)
{
	npc		= Mod_7529_OUT_AlterMann_REL;
	nr		= 1;
	condition	= Info_Mod_AlterWaldMann_EXIT_Condition;
	information	= Info_Mod_AlterWaldMann_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_AlterWaldMann_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_AlterWaldMann_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
