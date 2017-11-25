INSTANCE Info_Mod_Porthos_Hi (C_INFO)
{
	npc		= Mod_7292_PAL_Porthos_NW;
	nr		= 1;
	condition	= Info_Mod_Porthos_Hi_Condition;
	information	= Info_Mod_Porthos_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Porthos_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aramis_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Porthos_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Porthos_Hi_03_00"); //Presumably he has now gone to the other burial cave between black troll and stone circle.
	AI_Output(self, hero, "Info_Mod_Porthos_Hi_03_01"); //Quick, let's use the teleport spells of fire magicians.

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "The three paladins, who are trying to place an undead mage, have now left for a burial cave between stone circle and black troll.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LICH");
	B_StartOtherRoutine	(Mod_7290_PAL_Athos_NW, "LICH");
	B_StartOtherRoutine	(Mod_7291_PAL_Aramis_NW, "LICH");

	AI_Teleport	(self, "NW_TROLLAREA_TROLLROCKCAVE_02");
	AI_Teleport	(Mod_7290_PAL_Athos_NW, "NW_TROLLAREA_TROLLROCKCAVE_02");
	AI_Teleport	(Mod_7291_PAL_Aramis_NW, "NW_TROLLAREA_TROLLROCKCAVE_02");

	Wld_SendTrigger	("LICHDUNGEON");
};
