INSTANCE Info_Mod_Argez_IR_Hi (C_INFO)
{
	npc		= PC_Friend_IR;
	nr		= 1;
	condition	= Info_Mod_Argez_IR_Hi_Condition;
	information	= Info_Mod_Argez_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Argez?";
};

FUNC INT Info_Mod_Argez_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_00"); //Argez?
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_01"); //Yeah, excuse my uninvited appearance.
	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_02"); //What, like...?
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_03"); //Well, I was hiding in the storage room. I just had to go with you on this trip.
	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_04"); //The need to come to this despicable, dark island?
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_05"); //Don't ask why. I can't say for sure either....
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_06"); //On the one hand, it is a terrible place, full of abominable creatures of wickedness, which I usually never wanted to enter... but then again...
	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_07"); //Yeah, you know anything about that?
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_08"); //Well, it seems so familiar to me... so many fragments of sensations and memories that invade me....
	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_09"); //What is it?
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_10"); //l-- it's so much that penetrates my mind at once... Impressions, pictures, voices.... it...

	AI_PlayAni  (self, "T_MAGRUN_2_HEASHOOT");

	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_11"); //The path that is revealed by the hands of two... that which seems to connect and yet will separate...
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_12"); //... to the right and left will decide whether soaked in blood or pure, like spring water....
	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_13"); //What does all this mean?

	AI_PlayAni  (self, "T_HEASHOOT_2_STAND");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DRAINED");

	AI_TurnToNpc	(hero, Mod_7458_NONE_Jack_IR);

	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_14"); //Damn it, he's passed out.
};

INSTANCE Info_Mod_Argez_IR_Bridge (C_INFO)
{
	npc		= PC_Friend_IR;
	nr		= 1;
	condition	= Info_Mod_Argez_IR_Bridge_Condition;
	information	= Info_Mod_Argez_IR_Bridge_Info;
	permanent	= 0;
	important	= 0;
	description	= "Argez! You're conscious?";
};

FUNC INT Info_Mod_Argez_IR_Bridge_Condition()
{
	if (Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_IR_Bridge_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_IR_Bridge_15_00"); //Argez! You're conscious? And the bridge is accessible again. Was that your doing?
	AI_Output(self, hero, "Info_Mod_Argez_IR_Bridge_37_01"); //Yes, I have succeeded in magically triggering the mechanism for the bridge... and I sense that the presence of the demon has been extinguished.
	AI_Output(self, hero, "Info_Mod_Argez_IR_Bridge_37_02"); //The moment you killed him, I regained consciousness.
	AI_Output(self, hero, "Info_Mod_Argez_IR_Bridge_37_03"); //Now it is still my only wish to leave the island quickly.
	AI_Output(hero, self, "Info_Mod_Argez_IR_Bridge_15_04"); //Yeah, nothing's going to stop us. Back to the ship.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Argez_IR_EXIT (C_INFO)
{
	npc		= PC_Friend_IR;
	nr		= 1;
	condition	= Info_Mod_Argez_IR_EXIT_Condition;
	information	= Info_Mod_Argez_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Argez_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
