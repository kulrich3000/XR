INSTANCE Info_Mod_Cedric_IR_Hi (C_INFO)
{
	npc		= Mod_7460_RIT_Cedric_IR;
	nr		= 1;
	condition	= Info_Mod_Cedric_IR_Hi_Condition;
	information	= Info_Mod_Cedric_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cedric_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cedric_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_00"); //What a dark, despicable place. Here Innos seems farther away than anywhere else in the world.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_01"); //It is our task, as his deputies, to enter the island and banish all unholy brood forever from this godforsaken place.
	AI_Output(hero, self, "Info_Mod_Cedric_IR_Hi_15_02"); //Yeah, let's see who's coming. I don't think a few battle-hardened companions would be missed for escort.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_03"); //I'll stay here and watch over the ship.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_04"); //There will be three battle-hardened paladins at your side, and Milten if you wish.

	if (Mod_DiegoDabei > 0)
	|| (Mod_LesterDabei > 0)
	|| (Mod_AngarDabei > 0)
	|| (Mod_NamibDabei > 0)
	|| (Mod_VatrasDabei > 0)
	|| (Mod_EthanDabei > 0)
	|| (Mod_RandolphDabei > 0)
	{
		AI_Output(hero, self, "Info_Mod_Cedric_IR_Hi_15_05"); //And what about the others on board?
		AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_06"); //I have already said that it is Inno's will that his servants bring this island to his blessing.
		AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_07"); //No one else has the necessary faith and strength.
		AI_Output(hero, self, "Info_Mod_Cedric_IR_Hi_15_08"); //But...
		AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_09"); //I'm not arguing about it.
		AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_10"); //Take the fighters you've been put on your side and do what you came here for.
	};

	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_11"); //What about Innos...?!

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(PC_Friend_IR, "SHIP_CREW_CAPTAIN");

	Mod_IR_Keroloth = 1;
	Mod_IR_Marcos = 1;
	Mod_IR_Gerold = 1;
	Mod_IR_Milten = 1;

	B_StartOtherRoutine	(Mod_7443_KDF_Milten_IR, "FOLLOW");
	B_StartOtherRoutine	(Mod_7462_RIT_Gerold_IR, "FOLLOW");
	B_StartOtherRoutine	(Mod_7461_RIT_Marcos_IR, "FOLLOW");
	B_StartOtherRoutine	(Mod_7463_RIT_Keroloth_IR, "FOLLOW");
};

INSTANCE Info_Mod_Cedric_IR_Argez (C_INFO)
{
	npc		= Mod_7460_RIT_Cedric_IR;
	nr		= 1;
	condition	= Info_Mod_Cedric_IR_Argez_Condition;
	information	= Info_Mod_Cedric_IR_Argez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cedric_IR_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_IR_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_IR_Argez_Info()
{
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_00"); //This man dares to enter the royal ship as a stowaway passenger?!
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_01"); //A Paladin ship on a holy mission?!
	AI_Output(hero, self, "Info_Mod_Cedric_IR_Argez_15_02"); //Don't be upset, he's on our side....
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_03"); //Oh, why would I accept that?
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_04"); //He could be a spy of the enemy who snuck on our ship to sabotage our sacred mission.
	AI_Output(hero, self, "Info_Mod_Cedric_IR_Argez_15_05"); //No, he already helped me and the magicians with help and advice. We can trust him.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_06"); //(slightly calmer) Who knows... All right, but I won't let him out of my sight... and now do your job!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cedric_IR_Fertig (C_INFO)
{
	npc		= Mod_7460_RIT_Cedric_IR;
	nr		= 1;
	condition	= Info_Mod_Cedric_IR_Fertig_Condition;
	information	= Info_Mod_Cedric_IR_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cedric_IR_Fertig_Condition()
{
	if (Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_IR_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Fertig_12_00"); //Hey, I heard you got it all taken care of.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Fertig_12_01"); //There is still plenty of time for congratulations during the trip.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Fertig_12_02"); //Can we finally put to sea again?
	AI_Output(hero, self, "Info_Mod_Cedric_IR_Fertig_15_03"); //Yeah, I wouldn't know why not.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Fertig_12_04"); //All right, here's the key to the cabin, hit the stern a little bit while I'm setting the sails.

	B_GiveInvItems	(self, hero, ItKe_Irdorath, 1);
};

INSTANCE Info_Mod_Cedric_IR_EXIT (C_INFO)
{
	npc		= Mod_7460_RIT_Cedric_IR;
	nr		= 1;
	condition	= Info_Mod_Cedric_IR_EXIT_Condition;
	information	= Info_Mod_Cedric_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cedric_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cedric_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
