INSTANCE Info_Mod_SchlaegerCanthar02_HiVorher (C_INFO)
{
	npc		= Mod_7496_NONE_Schlaeger_NW;
	nr		= 1;
	condition	= Info_Mod_SchlaegerCanthar02_HiVorher_Condition;
	information	= Info_Mod_SchlaegerCanthar02_HiVorher_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_SchlaegerCanthar02_HiVorher_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Canthar_AtLager2))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SchlaegerCanthar02_HiVorher_Info()
{
	AI_Output(self, hero, "Info_Mod_SchlaegerCanthar02_HiVorher_28_00"); //Get out of here!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_SchlaegerCanthar02_Hi (C_INFO)
{
	npc		= Mod_7496_NONE_Schlaeger_NW;
	nr		= 1;
	condition	= Info_Mod_SchlaegerCanthar02_Hi_Condition;
	information	= Info_Mod_SchlaegerCanthar02_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do I get back to Khorinis?";
};

FUNC INT Info_Mod_SchlaegerCanthar02_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Canthar_AtLager2))
	&& (Mod_CantharSelbstmord == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SchlaegerCanthar02_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_SchlaegerCanthar02_Hi_15_00"); //How do I get back to Khorinis?
	AI_Output(self, hero, "Info_Mod_SchlaegerCanthar02_Hi_28_01"); //Learn to swim.
	AI_Output(hero, self, "Info_Mod_SchlaegerCanthar02_Hi_15_02"); //Don't you have a boat?
	AI_Output(self, hero, "Info_Mod_SchlaegerCanthar02_Hi_28_03"); //Not for you.
};

INSTANCE Info_Mod_SchlaegerCanthar02_EXIT (C_INFO)
{
	npc		= Mod_7496_NONE_Schlaeger_NW;
	nr		= 1;
	condition	= Info_Mod_SchlaegerCanthar02_EXIT_Condition;
	information	= Info_Mod_SchlaegerCanthar02_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_SchlaegerCanthar02_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SchlaegerCanthar02_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
