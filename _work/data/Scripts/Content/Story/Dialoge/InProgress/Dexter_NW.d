INSTANCE Info_Mod_Dexter_NW_Hi (C_INFO)
{
	npc		= Mod_7806_BDT_Dexter_NW;
	nr		= 1;
	condition	= Info_Mod_Dexter_NW_Hi_Condition;
	information	= Info_Mod_Dexter_NW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_NW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dexter_NW_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_NW_Hi_15_00"); //Dexter?! What are you doing here?
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Hi_28_01"); //Well, in the Minental it just got too hot for me and the boys.
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Hi_28_02"); //Lately, the orcs had simply overloaded us too much and after all the events that we survived, I didn't want to put our happiness to the test.
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Hi_28_03"); //That's why we prefer to leave the monster-infested valley and make ourselves comfortable in this abandoned fortress.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SESSEL");
};

INSTANCE Info_Mod_Dexter_NW_AllesRoger (C_INFO)
{
	npc		= Mod_7806_BDT_Dexter_NW;
	nr		= 1;
	condition	= Info_Mod_Dexter_NW_AllesRoger_Condition;
	information	= Info_Mod_Dexter_NW_AllesRoger_Info;
	permanent	= 0;
	important	= 0;
	description	= "So, do you like it here?";
};

FUNC INT Info_Mod_Dexter_NW_AllesRoger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_NW_Hi))
	&& (Npc_GetDistToWP(hero, "NW_CASTLEMINE_HUT_10") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_NW_AllesRoger_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_NW_AllesRoger_15_00"); //So, do you like it here?
	AI_Output(self, hero, "Info_Mod_Dexter_NW_AllesRoger_28_01"); //Well, what more do you want? We have a roof over our heads, thanks to the location it is easy to defend, you always have everything in sight.
	AI_Output(self, hero, "Info_Mod_Dexter_NW_AllesRoger_28_02"); //Now it would only be practical if we had access to the mine. Maybe there would be something to get.... just can't get in.
};

INSTANCE Info_Mod_Dexter_NW_Minenzugang (C_INFO)
{
	npc		= Mod_7806_BDT_Dexter_NW;
	nr		= 1;
	condition	= Info_Mod_Dexter_NW_Minenzugang_Condition;
	information	= Info_Mod_Dexter_NW_Minenzugang_Info;
	permanent	= 0;
	important	= 0;
	description	= "Behind the grill there is a stone slab (.... )";
};

FUNC INT Info_Mod_Dexter_NW_Minenzugang_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_NW_AllesRoger))
	&& (Mod_Mineneingang_Castle)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_NW_Minenzugang_Info()
{
	AI_Output(hero, self, "Info_Mod_Dexter_NW_Minenzugang_15_00"); //Behind the grill there is a stone slab, which reacts to arrows and bolts to expose access to the mine.
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Minenzugang_28_01"); //Really? We have to try it out at the next opportunity....
};

INSTANCE Info_Mod_Dexter_NW_Minenzugang2 (C_INFO)
{
	npc		= Mod_7806_BDT_Dexter_NW;
	nr		= 1;
	condition	= Info_Mod_Dexter_NW_Minenzugang2_Condition;
	information	= Info_Mod_Dexter_NW_Minenzugang2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_NW_Minenzugang2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_NW_Minenzugang))
	&& (Mod_Banditen_Mine == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_NW_Minenzugang2_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Minenzugang2_28_00"); //(laughs) This mine seems to be a real gold mine. If mining continues to go so well, we will soon be as rich as the established snoop in the town halls.
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Minenzugang2_28_01"); //No offense, that was good work. Here's your share of the profits.

	B_GiveInvItems	(self, hero, ItMi_Gold, 400);

	B_GivePlayerXP	(200);

	Mod_Banditen_Mine_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Dexter_NW_Minenzugang3 (C_INFO)
{
	npc		= Mod_7806_BDT_Dexter_NW;
	nr		= 1;
	condition	= Info_Mod_Dexter_NW_Minenzugang3_Condition;
	information	= Info_Mod_Dexter_NW_Minenzugang3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dexter_NW_Minenzugang3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_NW_Minenzugang2))
	&& (Mod_Banditen_Mine == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dexter_NW_Minenzugang3_Info()
{
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Minenzugang3_28_00"); //(laughs) Well, there you look, huh? Now we have really reached the top.... true ore barons! Someone has to keep up the tradition, right?
	AI_Output(self, hero, "Info_Mod_Dexter_NW_Minenzugang3_28_01"); //Here you also have the fiddle, if you want to make one on fine gentleman... Of course, no gold and ore should be missing. Have fun with that.

	CreateInvItems	(hero, ItMi_Gold, 700);
	CreateInvItems	(hero, ItMi_Nugget, 20);
	CreateInvItems	(hero, ITAR_Governor, 1);

	B_ShowGivenThings	("Gown, 700 gold and 20 ore preserved");

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Dexter_NW_EXIT (C_INFO)
{
	npc		= Mod_7806_BDT_Dexter_NW;
	nr		= 1;
	condition	= Info_Mod_Dexter_NW_EXIT_Condition;
	information	= Info_Mod_Dexter_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dexter_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dexter_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
