INSTANCE Info_Mod_Pendler_02_Hi (C_INFO)
{
	npc		= Mod_7707_OUT_Pendler_REL;
	nr		= 1;
	condition	= Info_Mod_Pendler_02_Hi_Condition;
	information	= Info_Mod_Pendler_02_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You look thirsty. How about a sip of cool beer?";
};

FUNC INT Info_Mod_Pendler_02_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pendler_02_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Pendler_02_Hi_15_00"); //You look thirsty. How about a sip of cool beer?
	AI_Output(self, hero, "Info_Mod_Pendler_02_Hi_08_01"); //Give it, give it!

	Info_ClearChoices	(Info_Mod_Pendler_02_Hi);

	if (Npc_HasItems(hero, ItFo_Beer) >= 1)
	{
		Info_AddChoice	(Info_Mod_Pendler_02_Hi, "I've changed my mind. Watch me drink!", Info_Mod_Pendler_02_Hi_C);
	};
	Info_AddChoice	(Info_Mod_Pendler_02_Hi, "I don't have one anymore.", Info_Mod_Pendler_02_Hi_B);
	if (Npc_HasItems(hero, ItFo_Beer) >= 1)
	{
		Info_AddChoice	(Info_Mod_Pendler_02_Hi, "There you have one.", Info_Mod_Pendler_02_Hi_A);
	};
};

FUNC VOID Info_Mod_Pendler_02_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Pendler_02_Hi_C_15_00"); //I've changed my mind. Watch me drink!

	B_UseItem	(hero, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Pendler_02_Hi_C_08_01"); //Fuck off, you fucking asshole!

	Info_ClearChoices	(Info_Mod_Pendler_02_Hi);
};

FUNC VOID Info_Mod_Pendler_02_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Pendler_02_Hi_B_15_00"); //I don't have one anymore.
	AI_Output(self, hero, "Info_Mod_Pendler_02_Hi_B_08_01"); //Me neither, and my tongue is already dragging on the ground.
	AI_Output(self, hero, "Info_Mod_Pendler_02_Hi_B_08_02"); //Afterwards, Ditmar will have a good fall.

	Info_ClearChoices	(Info_Mod_Pendler_02_Hi);
};

FUNC VOID Info_Mod_Pendler_02_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Pendler_02_Hi_A_15_00"); //There you have one.

	B_GiveInvItems	(hero, self, ItFo_Beer, 1);

	B_UseItem	(self, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Pendler_02_Hi_A_08_01"); //Damn, that's the only thing I can think about all day. Thanks, man!

	B_GivePlayerXP	(25);

	Info_ClearChoices	(Info_Mod_Pendler_02_Hi);
};

INSTANCE Info_Mod_Pendler_02_EXIT (C_INFO)
{
	npc		= Mod_7707_OUT_Pendler_REL;
	nr		= 1;
	condition	= Info_Mod_Pendler_02_EXIT_Condition;
	information	= Info_Mod_Pendler_02_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Pendler_02_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pendler_02_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
