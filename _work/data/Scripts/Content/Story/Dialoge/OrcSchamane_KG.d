INSTANCE Info_Mod_OrcSchamane_KG_Hi (C_INFO)
{
	npc		= Mod_10041_Orc_Schamane_MT;
	nr		= 1;
	condition	= Info_Mod_OrcSchamane_KG_Hi_Condition;
	information	= Info_Mod_OrcSchamane_KG_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_OrcSchamane_KG_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_OrcSchamane_KG_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_OrcSchamane_KG_Hi_18_00"); //Ah... Man, you have managed to reach ritual places, but it is of no use to you any more.
	AI_Output(self, hero, "Info_Mod_OrcSchamane_KG_Hi_18_01"); //I already am immortal, made by black heart filled with red human blood.
	AI_Output(self, hero, "Info_Mod_OrcSchamane_KG_Hi_18_02"); //Well, I'll show you what power means.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_OrcSchamane_KG_NichtTot (C_INFO)
{
	npc		= Mod_10041_Orc_Schamane_MT;
	nr		= 1;
	condition	= Info_Mod_OrcSchamane_KG_NichtTot_Condition;
	information	= Info_Mod_OrcSchamane_KG_NichtTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_OrcSchamane_KG_NichtTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_OrcSchamane_KG_Hi))
	&& (Mod_KG_OrkZauber == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_OrcSchamane_KG_NichtTot_Info()
{
	AI_Output(self, hero, "Info_Mod_OrcSchamane_KG_NichtTot_18_01"); //What...? Man is still alive, the strangely his. Man strong, shamans keep honor and let man go.

	AI_StopProcessInfos	(self);

	AI_GotoWP	(hero, "CASTLE_30");
};

INSTANCE Info_Mod_OrcSchamane_KG_KillYou (C_INFO)
{
	npc		= Mod_10041_Orc_Schamane_MT;
	nr		= 1;
	condition	= Info_Mod_OrcSchamane_KG_KillYou_Condition;
	information	= Info_Mod_OrcSchamane_KG_KillYou_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_OrcSchamane_KG_KillYou_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Trent2))
	&& (Mod_KG_SchwarzerRing == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_OrcSchamane_KG_KillYou_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_OrcSchamane_KG_KillYou_15_00"); //Your last hour has come.
	AI_Output(self, hero, "Info_Mod_OrcSchamane_KG_KillYou_18_01"); //What my human being with hour should beat something like that?
	AI_Output(hero, self, "Info_Mod_OrcSchamane_KG_KillYou_15_02"); //Oh, forget it, die!
	AI_Output(self, hero, "DEFAULT"); //

	self.guild = GIL_ORC;
	Npc_SetTrueGuild (self, GIL_ORC);

	self.flags = 0;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_OrcSchamane_KG_EXIT (C_INFO)
{
	npc		= Mod_10041_Orc_Schamane_MT;
	nr		= 1;
	condition	= Info_Mod_OrcSchamane_KG_EXIT_Condition;
	information	= Info_Mod_OrcSchamane_KG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_OrcSchamane_KG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_OrcSchamane_KG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
