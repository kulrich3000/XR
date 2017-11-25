INSTANCE Info_Mod_Trent_Hi (C_INFO)
{
	npc		= Mod_7629_RIT_Trent_NW;
	nr		= 1;
	condition	= Info_Mod_Trent_Hi_Condition;
	information	= Info_Mod_Trent_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trent_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_00"); //Ah, very good, a helping sword is convenient for me.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_01"); //My name is Trent, knight of the great King Rhobar and self-declared adventure. One can at least be proud of the latter.
	AI_Output(hero, self, "Info_Mod_Trent_Hi_15_02"); //Sounds like you're not exactly a knight of passion.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_03"); //Well, I guess you're right. No one has a special passion if he is allowed to guard gates all day long or if he is put in the front row during the war.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_04"); //The mere fact that a whole army of paladins is not doing anything in the harbour, while the farmers on their farms are being torn apart by field robbers, shows that something doesn't fit here.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_05"); //No, there's no need for another knight standing around the island.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_06"); //My passion is exploring new countries.
	AI_Output(hero, self, "Info_Mod_Trent_Hi_15_07"); //It's kind of like me somehow.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_08"); //If you want, you can help me get that shadow runner out of there.
	AI_Output(hero, self, "Info_Mod_Trent_Hi_15_09"); //Sure, why not.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_10"); //Wonderful!

	self.aivar[AIV_Partymember] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SHADOWBEAST");
};

INSTANCE Info_Mod_Trent_Shadowbeast (C_INFO)
{
	npc		= Mod_7629_RIT_Trent_NW;
	nr		= 1;
	condition	= Info_Mod_Trent_Shadowbeast_Condition;
	information	= Info_Mod_Trent_Shadowbeast_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_Shadowbeast_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_Hi))
	&& (Npc_IsDead(Shadowbeast_Trent))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_Shadowbeast_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_00"); //Well, that's it.... just out of curiosity: what were you doing here?
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_01"); //I should see you from Commander Andre. I want you to help me with a little problem in a mine.
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_02"); //What about the mine?
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_03"); //We have a little problem with the monsters there and not enough men.
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_04"); //All right, you helped me, then I'll help you, too. What kind of mine is it?
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_05"); //The one at the entrance to the Minental. Do you even know where that is?
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_06"); //Of course, I know the island like the back of my hand.
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_07"); //I thought you'd never been here before.
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_08"); //The crossings between the islands are sometimes so boring, as I study mostly the maps of the islands.
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_09"); //Well then, Commander Andre wanted to see you first. He wanted to.... (interrupted)
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_10"); //That can wait. These commanders usually talk around the bush anyway. I'll see you at the mine.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Trent hurried ahead and will be waiting for me in the mine.");

	self.aivar[AIV_Partymember] = FALSE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Trent_EXIT (C_INFO)
{
	npc		= Mod_7629_RIT_Trent_NW;
	nr		= 1;
	condition	= Info_Mod_Trent_EXIT_Condition;
	information	= Info_Mod_Trent_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Trent_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trent_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
