INSTANCE Info_Mod_PaladinHafen_Hi (C_INFO)
{
	npc		= Mod_1257_PAL_Ritter_NW;
	nr		= 1;
	condition	= Info_Mod_PaladinHafen_Hi_Condition;
	information	= Info_Mod_PaladinHafen_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_PaladinHafen_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Steinmonster))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_PaladinHafen_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Hi_04_00"); //Hey, you? Do you have any cigarettes? I haven't had anything for ages and the constant waiting here in the harbour slowly makes me tired!
};

INSTANCE Info_Mod_PaladinHafen_Trent (C_INFO)
{
	npc		= Mod_1257_PAL_Ritter_NW;
	nr		= 1;
	condition	= Info_Mod_PaladinHafen_Trent_Condition;
	information	= Info_Mod_PaladinHafen_Trent_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sure, no problem. All you have to do is tell me where I can find a paladin named Trent.";
};

FUNC INT Info_Mod_PaladinHafen_Trent_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_PaladinHafen_Hi))
	&& (Npc_HasItems(hero, ItMi_Joint) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_PaladinHafen_Trent_Info()
{
	AI_Output(hero, self, "Info_Mod_PaladinHafen_Trent_15_00"); //Sure, no problem. All you have to do is tell me where I can find a paladin named Trent.
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_01"); //Trent?! No, I'm sorry. I've never heard that name before.
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_02"); //Mhm... Strange, I actually know every paladin on khorinis. You mean the new Paladin of the Southern Islands?
	AI_Output(hero, self, "Info_Mod_PaladinHafen_Trent_15_03"); //Yeah, I suppose that's him.
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_04"); //Well, then at least I know where he is.
	AI_Output(hero, self, "Info_Mod_PaladinHafen_Trent_15_05"); //Ok... and where is he?
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_06"); //He jumped into the sea.
	AI_Output(hero, self, "Info_Mod_PaladinHafen_Trent_15_07"); //What?!
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_08"); //Yeah, he asked one of us where there are unexplored places.
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_09"); //The knight then pointed to the island up ahead. You should have seen that, I didn't even wink and he jumped into the bay.
	AI_Output(hero, self, "Info_Mod_PaladinHafen_Trent_15_10"); //So he's still on the island?
	AI_Output(self, hero, "Info_Mod_PaladinHafen_Trent_04_11"); //I suppose so.
	AI_Output(hero, self, "Info_Mod_PaladinHafen_Trent_15_12"); //Thank you! That's all I wanted to know.

	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Trent seems to be on the small island off Khorinis. If I'm lucky, I'll find him there.");

	Wld_InsertNpc	(Mod_7629_RIT_Trent_NW, "WAYTOPORT_07");

	Wld_InsertNpc	(Shadowbeast_Trent, "WAYTOPORT_09");
};
