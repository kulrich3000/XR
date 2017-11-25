INSTANCE Info_Mod_Leprechaun_XW_Hi (C_INFO)
{
	npc		= Monster_11074_Leprechaun_XW;
	nr		= 1;
	condition	= Info_Mod_Leprechaun_XW_Hi_Condition;
	information	= Info_Mod_Leprechaun_XW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leprechaun_XW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leprechaun_XW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_Hi_20_00"); //Another new one! Leprechaun knows you!
};

INSTANCE Info_Mod_Leprechaun_XW_Antworten (C_INFO)
{
	npc		= Monster_11074_Leprechaun_XW;
	nr		= 1;
	condition	= Info_Mod_Leprechaun_XW_Antworten_Condition;
	information	= Info_Mod_Leprechaun_XW_Antworten_Info;
	permanent	= 0;
	important	= 0;
	description	= "You owe me some answers.";
};

FUNC INT Info_Mod_Leprechaun_XW_Antworten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leprechaun_XW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leprechaun_XW_Antworten_Info()
{
	AI_Output(hero, self, "Info_Mod_Leprechaun_XW_Antworten_15_00"); //You owe me some answers.
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_Antworten_20_01"); //He can't remember owing you anything. The Stone Keeper was supposed to have paid for everything. (laughs moaning)
};

INSTANCE Info_Mod_Leprechaun_XW_TuerAuf (C_INFO)
{
	npc		= Monster_11074_Leprechaun_XW;
	nr		= 1;
	condition	= Info_Mod_Leprechaun_XW_TuerAuf_Condition;
	information	= Info_Mod_Leprechaun_XW_TuerAuf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Aren't you gonna open the door?";
};

FUNC INT Info_Mod_Leprechaun_XW_TuerAuf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leprechaun_XW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Leprechaun_XW_TuerAuf_Info()
{
	AI_Output(hero, self, "Info_Mod_Leprechaun_XW_TuerAuf_15_00"); //Aren't you gonna open the door? I'm not gonna hurt you, either.
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_TuerAuf_20_01"); //Yeah, why wouldn't I be? All he has to do is take out the key he always has with him, put it in the lock and turn it around three times - right?
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_TuerAuf_20_02"); //So it's not a difficult task. Even he would be able to do that.
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_TuerAuf_20_03"); //But you know what? Wouldn't be any fun at all!
};

INSTANCE Info_Mod_Leprechaun_XW_EXIT (C_INFO)
{
	npc		= Monster_11074_Leprechaun_XW;
	nr		= 1;
	condition	= Info_Mod_Leprechaun_XW_EXIT_Condition;
	information	= Info_Mod_Leprechaun_XW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Leprechaun_XW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leprechaun_XW_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_EXIT_20_00"); //Now there's a tasty Happi-Happi and then Leprechaun has to go again.
	AI_Output(self, hero, "Info_Mod_Leprechaun_XW_EXIT_20_01"); //He wishes you a blessed appetite. Huh!

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};
