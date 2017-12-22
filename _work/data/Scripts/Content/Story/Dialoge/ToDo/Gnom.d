INSTANCE Info_Mod_Gnom_Hi (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_Hi_Condition;
	information	= Info_Mod_Gnom_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gnom_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gnom_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gnom_Hi_11_00"); //Hello, man. Long time no one of your kind seen...
	AI_Output(self, hero, "Info_Mod_Gnom_Hi_11_01"); //Anyway, after the drink I would like to smoke again.
	AI_Output(self, hero, "Info_Mod_Gnom_Hi_11_02"); //You must have something with you.
};

INSTANCE Info_Mod_Gnom_Joint (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_Joint_Condition;
	information	= Info_Mod_Gnom_Joint_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sure, here's a resinous stem.";
};

FUNC INT Info_Mod_Gnom_Joint_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gnom_Hi))
	&& (Npc_HasItems(hero, ItMi_Joint) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gnom_Joint_Info()
{
	AI_Output(hero, self, "Info_Mod_Gnom_Joint_15_00"); //Sure, here's a resinous stem.

	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_01"); //Ahh, thank you very much.

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_02"); //After 5000 years it is really a pleasure to smoke again.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_03"); //Yes, the magical prison was really a time of hardship.
	AI_Output(hero, self, "Info_Mod_Gnom_Joint_15_04"); //The magic prison? Tell me more about it.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_05"); //That cursed book we were trapped in.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_06"); //At least there was a lot of space there, more than you could have guessed from the outside.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_07"); //So you didn't stand on your feet with goblins, witches and dragons all the time.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_08"); //Dragon Dragon and Lich, the undead magician, quickly made themselves big bosses.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_09"); //Have also after several centuries some magic pact or so closed....
	AI_Output(hero, self, "Info_Mod_Gnom_Joint_15_10"); //Magic Pact? What was that about?
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_11"); //Oh, I don't know. Immortality against dragon power and servantry or something. I wasn't so interested.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_12"); //My buddy Gormgniez had more to do with the others and picked up a lot of things.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_13"); //The greedy goblin, however, has set out into the valley of the ore to fill his pockets with the precious metal in some boiler mine....
	AI_Output(hero, self, "Info_Mod_Gnom_Joint_15_14"); //And where are they now?
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_15"); //Ooh, Lich wanted to ravish the city or some cave graves or something like that.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_16"); //And Dragon, I think, has moved to the mountains not far from the place of our liberation, now wants to hire some new servants....
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_17"); //Oh, now I notice how my head gets heavy with the brew.
	AI_Output(self, hero, "Info_Mod_Gnom_Joint_11_18"); //Do you have maybe ten of these sticks left for me? They were much easier on me.

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Talking to the drunken gnome, I learned that the undead magician Lich and a dragon named Dragon have entered into a magical alliance. The exchange of immortality for dragon power and servant creatures seems to play a role.");
	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "The gnome told me that his friend, a goblin, knew more about the subject. However, he set off to the Minental to quench his greed for magical ore. He wanted to visit the mine in a valley basin. I should ask Lee for access to the free mine.");
};

INSTANCE Info_Mod_Gnom_Joints (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_Joints_Condition;
	information	= Info_Mod_Gnom_Joints_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sure, here they are.";
};

FUNC INT Info_Mod_Gnom_Joints_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gnom_Joint))
	&& (Npc_HasItems(hero, ItMi_Joint) >= 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gnom_Joints_Info()
{
	AI_Output(hero, self, "Info_Mod_Gnom_Joints_15_00"); //Sure, here they are.

	B_GiveInvItems	(hero, self, ItMi_Joint, 10);

	AI_Output(self, hero, "Info_Mod_Gnom_Joints_11_01"); //Ahh, thank you very much. How can I repay you?
	AI_Output(self, hero, "Info_Mod_Gnom_Joints_11_02"); //Oh, here, take this package with the brew, which I left at the tavern.

	B_GiveInvItems	(self, hero, ItMi_OrlansSchnaps, 1);
};

INSTANCE Info_Mod_Gnom_NoJoint (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_NoJoint_Condition;
	information	= Info_Mod_Gnom_NoJoint_Info;
	permanent	= 0;
	important	= 0;
	description	= "Any other New Year's greetings, half-portion?";
};

FUNC INT Info_Mod_Gnom_NoJoint_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gnom_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Gnom_Joint))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gnom_NoJoint_Info()
{
	AI_Output(hero, self, "Info_Mod_Gnom_NoJoint_15_00"); //Any other New Year's greetings, half-portion?
	AI_Output(self, hero, "Info_Mod_Gnom_NoJoint_11_01"); //Watch your tongue, man, and let some smoke grow over you. You'll be in bad shape.
};

INSTANCE Info_Mod_Gnom_NoJoint2 (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_NoJoint2_Condition;
	information	= Info_Mod_Gnom_NoJoint2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Yes, of course. You better go pick flowers, you dwarf.";
};

FUNC INT Info_Mod_Gnom_NoJoint2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gnom_NoJoint))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Gnom_Joint))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gnom_NoJoint2_Info()
{
	AI_Output(hero, self, "Info_Mod_Gnom_NoJoint2_15_00"); //Yes, of course. You better go pick flowers, you dwarf.
	AI_Output(self, hero, "Info_Mod_Gnom_NoJoint2_11_01"); //Okay, that's it.
	AI_Output(hero, self, "Info_Mod_Gnom_NoJoint2_15_02"); //Well, then, I'm just...

	AI_EquipBestMeleeWeapon	(self);

	AI_DrawWeapon	(self);

	AI_Output(hero, self, "Info_Mod_Gnom_NoJoint2_15_03"); //... ohh.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Gnom_Verbatscht (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_Verbatscht_Condition;
	information	= Info_Mod_Gnom_Verbatscht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gnom_Verbatscht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gnom_NoJoint2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gnom_Verbatscht_Info()
{
	AI_Output(self, hero, "Info_Mod_Gnom_Verbatscht_11_01"); //You want to fuck with me again?
};

INSTANCE Info_Mod_Gnom_EXIT (C_INFO)
{
	npc		= Gnom_11005_NW;
	nr		= 1;
	condition	= Info_Mod_Gnom_EXIT_Condition;
	information	= Info_Mod_Gnom_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gnom_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gnom_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
