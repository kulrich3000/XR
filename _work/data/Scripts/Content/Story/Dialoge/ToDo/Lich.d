INSTANCE Info_Mod_Lich_Hi (C_INFO)
{
	npc		= Lich_11008_NW;
	nr		= 1;
	condition	= Info_Mod_Lich_Hi_Condition;
	information	= Info_Mod_Lich_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lich_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lich_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lich_Hi_10_00"); //Hahaha, another visitor who can join my undead followers.
	AI_Output(self, hero, "Info_Mod_Lich_Hi_10_01"); //Kill me?! It takes a lot to do so... and yet so little.
	AI_Output(self, hero, "Info_Mod_Lich_Hi_10_02"); //But in a few seconds, you won't have to worry about it.

	Wld_SendTrigger	("LICHDUNGEON");

	AI_StopProcessInfos	(self);

	Mod_7290_PAL_Athos_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7290_PAL_Athos_NW, GIL_STRF);

	Mod_7291_PAL_Aramis_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7291_PAL_Aramis_NW, GIL_STRF);

	Mod_7292_PAL_Porthos_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7292_PAL_Porthos_NW, GIL_STRF);

	Npc_SendPassivePerc	(hero, PERC_ASSESSPLAYER, hero, hero);

	Wld_InsertNpc	(Kobold, "NW_TROLLAREA_TROLLROCKCAVE_06");
	Wld_InsertNpc	(Kobold, "NW_TROLLAREA_TROLLROCKCAVE_06");
	Wld_InsertNpc	(Kobold, "NW_TROLLAREA_TROLLROCKCAVE_06");
};

INSTANCE Info_Mod_Lich_PalasTot (C_INFO)
{
	npc		= Lich_11008_NW;
	nr		= 1;
	condition	= Info_Mod_Lich_PalasTot_Condition;
	information	= Info_Mod_Lich_PalasTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lich_PalasTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lich_Hi))
	&& (Npc_IsDead(Mod_7290_PAL_Athos_NW))
	&& (Npc_IsDead(Mod_7291_PAL_Aramis_NW))
	&& (Npc_IsDead(Mod_7292_PAL_Porthos_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lich_PalasTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Lich_PalasTot_10_00"); //You amaze me. And it pleases me all the more to be able to call a fighter like you my servant.

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Blutgolem, "LICH");
};

INSTANCE Info_Mod_Lich_Blutgolem (C_INFO)
{
	npc		= Lich_11008_NW;
	nr		= 1;
	condition	= Info_Mod_Lich_Blutgolem_Condition;
	information	= Info_Mod_Lich_Blutgolem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lich_Blutgolem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lich_PalasTot))
	&& (Npc_IsDead(Blutgolem))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lich_Blutgolem_Info()
{
	AI_Output(self, hero, "Info_Mod_Lich_Blutgolem_10_00"); //You're getting on my nerves. Then I'll have to do it myself.

	self.flags = 0;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Lich_Unbesiegbar (C_INFO)
{
	npc		= Lich_11008_NW;
	nr		= 1;
	condition	= Info_Mod_Lich_Unbesiegbar_Condition;
	information	= Info_Mod_Lich_Unbesiegbar_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lich_Unbesiegbar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lich_Blutgolem))
	&& (Mod_NL_Lich == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lich_Unbesiegbar_Info()
{
	AI_Output(self, hero, "Info_Mod_Lich_Unbesiegbar_10_00"); //(laughs spitefully) Ha, you fool think you can defeat me with simple weaponry?!
	AI_Output(self, hero, "Info_Mod_Lich_Unbesiegbar_10_01"); //I've been playing with you long enough, now I'm serious.
	AI_Output(hero, self, "Info_Mod_Lich_Unbesiegbar_15_02"); //Damn, I'm powerless. Let's get outta here.

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Shit, I can't seem to touch this light. What did he mean by that, to defeat him you would need a lot and yet a little...? I should be consulting Xarda again....");

	AI_StopProcessInfos	(self);

	self.flags = 2;

	AI_GotoWP	(hero, "NW_TROLLAREA_RITUALFOREST_04_MONSTER");
};

INSTANCE Info_Mod_Lich_Kamm (C_INFO)
{
	npc		= Lich_11008_NW;
	nr		= 1;
	condition	= Info_Mod_Lich_Kamm_Condition;
	information	= Info_Mod_Lich_Kamm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lich_Kamm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lich_Unbesiegbar))
	&& (Mod_NL_HasKamm == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lich_Kamm_Info()
{
	AI_Output(self, hero, "Info_Mod_Lich_Kamm_10_00"); //How?! How?! What are you doing here? It must have been you who destroyed my comb.
	AI_Output(self, hero, "Info_Mod_Lich_Kamm_10_01"); //You'll regret this even more, one day I'll return...
	AI_Output(hero, self, "Info_Mod_Lich_Kamm_15_02"); //That's what you think.
	AI_Output(self, hero, "Info_Mod_Lich_Kamm_10_03"); //(tired) Ahhhh...

	AI_StopProcessInfos	(self);
};
