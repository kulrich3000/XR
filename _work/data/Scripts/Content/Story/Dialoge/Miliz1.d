INSTANCE Info_Mod_Miliz1_Hi (C_INFO)
{
	npc		= Mod_1893_MIL_Miliz_NW;
	nr		= 1;
	condition	= Info_Mod_Miliz1_Hi_Condition;
	information	= Info_Mod_Miliz1_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Miliz1_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Miliz1_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_00"); //What are you doing here?
	AI_Output(hero, self, "Info_Mod_Miliz1_Hi_15_01"); //I can ask you the same thing.
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_02"); //We found a key at Attila's, and it went in the back door.
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_03"); //Looks like we found the thieves' hideout... but tell me, how did you get here in the first place?
	AI_Output(hero, self, "Info_Mod_Miliz1_Hi_15_04"); //Guess what?
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_05"); //Don't tell me you're not one of the thieves.
	AI_Output(hero, self, "Info_Mod_Miliz1_Hi_15_06"); //What if it is?
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_07"); //You're not getting out of here alive!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
