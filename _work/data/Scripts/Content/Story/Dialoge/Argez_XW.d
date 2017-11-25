INSTANCE Info_Mod_Argez_XW_Vorsicht (C_INFO)
{
	npc		= PC_Friend_XW;
	nr		= 1;
	condition	= Info_Mod_Argez_XW_Vorsicht_Condition;
	information	= Info_Mod_Argez_XW_Vorsicht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_XW_Vorsicht_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_XW_Vorsicht_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_XW_Vorsicht_01_00"); //Look, it's a trap!

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Schattenlord_998_Urnol, "KNASTGANG_02");
};

INSTANCE Info_Mod_Argez_XW_Gefangen (C_INFO)
{
	npc		= PC_Friend_XW;
	nr		= 1;
	condition	= Info_Mod_Argez_XW_Gefangen_Condition;
	information	= Info_Mod_Argez_XW_Gefangen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_XW_Gefangen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urnol_XW_Gefangen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_XW_Gefangen_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_00"); //Thank you for coming.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_01"); //It hasn't done that much good now.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_02"); //Well, yeah.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_03"); //Why were you tagged?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_04"); //Do you remember that the animal ran away from me at the moment I was doing magic?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_05"); //I was just checking to see if you were free of the marker, and that was you. That's why I didn't think about it any more.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_06"); //In reality, however, the marking did not jump over to the animal, but to me.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_07"); //I'm sorry to hear that.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_08"); //That's the way it is.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_09"); //How am I supposed to get you out of here? I can teleport at any time, but I can't get to you.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_10"); //(laughs joylessly) That won't be possible. There is no teleport from Xeres' kingdom. This world is completely shielded from our own.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_11"); //Then how are we supposed to escape?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_12"); //We'd have to escape. And then forward to the gate. Impossible.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_13"); //What's the matter with you? You're not usually so hopeless.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_14"); //That... I can't tell you that. But rest assured that my gloomy mood is perfectly justified.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_15"); //All right, put your head in the sand. I'm going to look for an escape route.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_16"); //Good luck.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ARGEZ, "I'm trapped next to Argez in a cell trying to escape. Too many possibilities are not available.");

	Wld_InsertNpc	(Monster_11074_Leprechaun_XW, "KNASTGANG_02");
};

INSTANCE Info_Mod_Argez_XW_Gefangen2 (C_INFO)
{
	npc		= PC_Friend_XW;
	nr		= 1;
	condition	= Info_Mod_Argez_XW_Gefangen2_Condition;
	information	= Info_Mod_Argez_XW_Gefangen2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_XW_Gefangen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leprechaun_XW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_XW_Gefangen2_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_00"); //Don't you think we should be careful? If it's a test, a game of this leprechaun?
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen2_15_01"); //What do we have to lose? This may be our last chance.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_02"); //All right, then.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen2_15_03"); //Are you weakened? Can you make it all the way back?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_04"); //I hope that won't be necessary.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_05"); //I am sure that Xeres has his own teleport platform, with which he can travel to the prison gate.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_06"); //A teleport within this world is at least possible, and he will certainly have come up with the idea that it could be useful to stand at the entrance of the prison in a matter of seconds.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen2_15_07"); //Then let's storm his private chambers.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_08"); //But no detours. No time for heroics.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Leprechaun dropped the cell key so I could free myself and Argez. Argez assumes that Xeres has a private teleportation platform in his chambers. It's time to find them and escape from this damned underworld.");
};

INSTANCE Info_Mod_Argez_XW_Ende (C_INFO)
{
	npc		= PC_Friend_XW;
	nr		= 1;
	condition	= Info_Mod_Argez_XW_Ende_Condition;
	information	= Info_Mod_Argez_XW_Ende_Info;
	permanent	= 0;
	important	= 0;
	description	= "Argez, what are you doing here?";
};

FUNC INT Info_Mod_Argez_XW_Ende_Condition()
{
	if (Kapitel == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_XW_Ende_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_00"); //Argez, what are you doing here?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_01"); //I came here so that Xeres could be erased from the face of the earth once and for all.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_02"); //So it was really you who banished Xeres from eons...
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_03"); //Yes, it's true.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_04"); //Hence your knowledge of the old culture...
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_05"); //However, your intervention will no longer be necessary. With Uriziel I was able to send Xeres and his power holders to the eternal hunting grounds.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_06"); //You're mistaken.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_07"); //Though you may have banished the sleeper back to the middle world before he could awaken, and you may have snatched away their soul stones from the other three powerbearers.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_08"); //However, as long as the last of his powerbearers is still walking on earth, Xeres will never enter the world beyond.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_09"); //The fifth power carrier?
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_10"); //The magicians were not able to find out if it even existed, even where it could be. What do you know about him?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_11"); //Everything! I have regained my memory and the events of the past are again accessible to my consciousness.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_12"); //What kind of creature is he? Where is he located?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_13"); //He's right in front of you. It's me!
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_14"); //What?! That's impossible.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_15"); //It was you who once exiled Xeres and his powerbearers to the middle world...
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_16"); //Yes! I am a failed creature.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_17"); //It is I who was fed not by Xeres' will, but only by his power.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_18"); //I am the one whose existence Xeres's henchmen wanted to erase any testimony by depriving me of my memory.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_19"); //And it is I who now, with his existence, threatens our lives...
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_20"); //What are you doing? What are you saying?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_21"); //You know that.... You won't be able to destroy him permanently until I'm dead.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_22"); //So hurry up before he recovers. Kill me and bring peace to the world.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_23"); //No! I can't do that. This fight has already cost too many lives.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_24"); //You have to! Otherwise, I will sacrifice myself!

	Info_ClearChoices	(Info_Mod_Argez_XW_Ende);

	Info_AddChoice	(Info_Mod_Argez_XW_Ende, "There's gotta be another way.", Info_Mod_Argez_XW_Ende_B);
	Info_AddChoice	(Info_Mod_Argez_XW_Ende, "All right, then. You asked for it.", Info_Mod_Argez_XW_Ende_A);
};

FUNC VOID Info_Mod_Argez_XW_Ende_B()
{
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_00"); //There's gotta be another way.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_01"); //No. As long as I live, Xeres is not completely dead either.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_02"); //Xeres doesn't necessarily have to die.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_03"); //We could fix him again. No back doors this time. He would burn here forever.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_04"); //The danger that Xeres could somehow break out would always be there.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_05"); //He wouldn't have made it after thousands of years without the Foki.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_06"); //You really think so?
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_07"); //Yeah. You've earned a normal life.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_08"); //All right, all right. Let's give it a shot.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_09"); //Make sure Xeres doesn't get up. I'm preparing the teleport.

	Info_ClearChoices	(Info_Mod_Argez_XW_Ende);

	AI_StopProcessInfos	(self);
	
	B_StartOtherRoutine(self, "RITUAL");

	AI_Teleport	(Xeres_02, "TOT");
	Wld_InsertNpc	(Xeres_03,	"ARENA_01");
};

FUNC VOID Info_Mod_Argez_XW_Ende_A()
{
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_A_15_00"); //All right, then. You asked for it.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Argez_XW_Ende);

	AI_StopProcessInfos	(self);

	self.flags = 0;

	AI_UnequipArmor	(self);

	AI_Teleport	(Xeres_02, "TOT");
	Wld_InsertNpc	(Xeres_03,	"ARENA_01");
};
