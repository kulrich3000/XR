INSTANCE Info_Mod_Ausgestossener_Hi (C_INFO)
{
	npc		= Mod_7716_OUT_Ausgestossener_EIS;
	nr		= 1;
	condition	= Info_Mod_Ausgestossener_Hi_Condition;
	information	= Info_Mod_Ausgestossener_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ausgestossener_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ausgestossener_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Hi_08_00"); //There she goes, your Lolita. Happened to me once, before.
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Hi_15_01"); //What do you want?
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Hi_08_02"); //Nothing at all. Just survive.
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Hi_15_03"); //Good.
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Hi_08_04"); //If you give us three bottles of wine and three loaves of bread, we'll be quiet and won't harm you.
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Hi_15_05"); //That's blackmail.
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Hi_08_06"); //Like I said, we're just trying to survive.
};

INSTANCE Info_Mod_Ausgestossener_Murks (C_INFO)
{
	npc		= Mod_7716_OUT_Ausgestossener_EIS;
	nr		= 1;
	condition	= Info_Mod_Ausgestossener_Murks_Condition;
	information	= Info_Mod_Ausgestossener_Murks_Info;
	permanent	= 0;
	important	= 0;
	description	= "I can handle the three of you.";
};

FUNC INT Info_Mod_Ausgestossener_Murks_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ausgestossener_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausgestossener_Murks_Info()
{
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Murks_15_00"); //I can handle the three of you.
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Murks_08_01"); //We don't want a fight. Give us the things and we'll get out of here.
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Murks_15_02"); //Not a chance. Go begging somewhere else.
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Murks_08_03"); //I'm sorry, but we have no choice.

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	Mod_7717_OUT_Ausgestossener_EIS.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7717_OUT_Ausgestossener_EIS, GIL_STRF);

	Mod_7718_OUT_Ausgestossener_EIS.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7718_OUT_Ausgestossener_EIS, GIL_STRF);
};

INSTANCE Info_Mod_Ausgestossener_Gutmensch (C_INFO)
{
	npc		= Mod_7716_OUT_Ausgestossener_EIS;
	nr		= 1;
	condition	= Info_Mod_Ausgestossener_Gutmensch_Condition;
	information	= Info_Mod_Ausgestossener_Gutmensch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's what you need.";
};

FUNC INT Info_Mod_Ausgestossener_Gutmensch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ausgestossener_Hi))
	&& (Npc_HasItems(hero, ItFo_Bread) >= 3)
	&& (Npc_HasItems(hero, ItFo_Wine) >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausgestossener_Gutmensch_Info()
{
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Gutmensch_15_00"); //Here's what you need.

	Npc_RemoveInvItems	(hero, ItFo_Bread, 3);
	Npc_RemoveInvItems	(hero, ItFo_Wine, 3);

	AI_Output(self, hero, "Info_Mod_Ausgestossener_Gutmensch_08_01"); //They still exist, benevolent people. I wish you a good journey.

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_StartOtherRoutine	(Mod_7717_OUT_Ausgestossener_EIS, "TOT");
	B_StartOtherRoutine	(Mod_7718_OUT_Ausgestossener_EIS, "TOT");
};

INSTANCE Info_Mod_Ausgestossener_Nix (C_INFO)
{
	npc		= Mod_7716_OUT_Ausgestossener_EIS;
	nr		= 1;
	condition	= Info_Mod_Ausgestossener_Nix_Condition;
	information	= Info_Mod_Ausgestossener_Nix_Info;
	permanent	= 0;
	important	= 0;
	description	= "I don't have anything.";
};

FUNC INT Info_Mod_Ausgestossener_Nix_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ausgestossener_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausgestossener_Nix_Info()
{
	AI_Output(hero, self, "Info_Mod_Ausgestossener_Nix_15_00"); //I don't have anything.
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Nix_08_01"); //We've heard that many times before, but then there was always something to get.
	AI_Output(self, hero, "Info_Mod_Ausgestossener_Nix_08_02"); //Come on, boys, let's search him!

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	Mod_7717_OUT_Ausgestossener_EIS.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7717_OUT_Ausgestossener_EIS, GIL_STRF);

	Mod_7718_OUT_Ausgestossener_EIS.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7718_OUT_Ausgestossener_EIS, GIL_STRF);
};
