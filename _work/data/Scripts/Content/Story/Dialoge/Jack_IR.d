INSTANCE Info_Mod_Jack_IR_Hi (C_INFO)
{
	npc		= Mod_7458_NONE_Jack_IR;
	nr		= 1;
	condition	= Info_Mod_Jack_IR_Hi_Condition;
	information	= Info_Mod_Jack_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jack_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jack_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Jack_IR_Hi_14_00"); //What a dark hole, I'm not so sure.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Hi_14_01"); //Get what you need on this island as soon as possible and then let's get out of here.
	AI_Output(hero, self, "Info_Mod_Jack_IR_Hi_15_02"); //Yeah, let's see who's coming.
	AI_Output(hero, self, "Info_Mod_Jack_IR_Hi_15_03"); //I don't think a few battle-hardened companions would be missed for escort.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Hi_14_04"); //Just leave some to protect the ship, though.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Hi_14_05"); //I don't want to have to greet unloaded monsters and undead on my ship while you're searching the island with the others.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Hi_14_06"); //Half you can take, the rest stay here. And make it quick.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Hi_14_07"); //I take a look around the storeroom during this time to see if I can find some torches and some grog, against the darkness and cold....

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LAGERRAUM");
};

INSTANCE Info_Mod_Jack_IR_Argez (C_INFO)
{
	npc		= Mod_7458_NONE_Jack_IR;
	nr		= 1;
	condition	= Info_Mod_Jack_IR_Argez_Condition;
	information	= Info_Mod_Jack_IR_Argez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jack_IR_Argez_Condition()
{
	if (Mod_IR_Argez == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_IR_Argez_Info()
{
	AI_Output(self, hero, "Info_Mod_Jack_IR_Argez_14_00"); //Why don't you eat my blue bass? We got a stowaway on board.
	AI_Output(hero, self, "Info_Mod_Jack_IR_Argez_15_01"); //What, where?

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARGEZ");

	Wld_InsertNpc	(PC_Friend_IR, "SHIP_CREW_CAPTAIN");
};

INSTANCE Info_Mod_Jack_IR_Argez2 (C_INFO)
{
	npc		= Mod_7458_NONE_Jack_IR;
	nr		= 1;
	condition	= Info_Mod_Jack_IR_Argez2_Condition;
	information	= Info_Mod_Jack_IR_Argez2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jack_IR_Argez2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_IR_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_IR_Argez2_Info()
{
	AI_Output(self, hero, "Info_Mod_Jack_IR_Argez2_14_00"); //Jo, he doesn't seem to be getting back on his feet that fast.
	AI_Output(hero, self, "Info_Mod_Jack_IR_Argez2_15_01"); //Then I guess I'll have to walk the island without him.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Argez2_14_02"); //Yeah, hurry up and get out of here fast.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Argez2_14_03"); //In the meantime, I'll see if I can find something in the storage room to help him.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LAGERRAUM");
};

INSTANCE Info_Mod_Jack_IR_Fertig (C_INFO)
{
	npc		= Mod_7458_NONE_Jack_IR;
	nr		= 1;
	condition	= Info_Mod_Jack_IR_Fertig_Condition;
	information	= Info_Mod_Jack_IR_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jack_IR_Fertig_Condition()
{
	if (Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_IR_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Jack_IR_Fertig_14_00"); //Hey, I heard you got it all taken care of.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Fertig_14_01"); //There is still plenty of time for congratulations during the trip.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Fertig_14_02"); //Can we finally put to sea again?
	AI_Output(hero, self, "Info_Mod_Jack_IR_Fertig_15_03"); //Yeah, I wouldn't know why not.
	AI_Output(self, hero, "Info_Mod_Jack_IR_Fertig_14_04"); //All right, here's the key to the cabin, hit the stern a little bit while I'm setting the sails.

	B_GiveInvItems	(self, hero, ItKe_Irdorath, 1);
};

INSTANCE Info_Mod_Jack_IR_EXIT (C_INFO)
{
	npc		= Mod_7458_NONE_Jack_IR;
	nr		= 1;
	condition	= Info_Mod_Jack_IR_EXIT_Condition;
	information	= Info_Mod_Jack_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jack_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jack_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
