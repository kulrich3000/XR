INSTANCE Info_Mod_Urnol_XW_Hi (C_INFO)
{
	npc		= Schattenlord_998_Urnol;
	nr		= 1;
	condition	= Info_Mod_Urnol_XW_Hi_Condition;
	information	= Info_Mod_Urnol_XW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urnol_XW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urnol_XW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Hi_14_00"); //(hemic) And - bang! It has already snapped shut.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Hi_14_01"); //I'd love to kill you myself, but then my master would be unhappy - after all, you're his toy.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Hi_14_02"); //That's why I'll be content to see you behind bars for the time being.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Hi_14_03"); //Come on, let's go!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Urnol_XW_Gefangen (C_INFO)
{
	npc		= Schattenlord_998_Urnol;
	nr		= 1;
	condition	= Info_Mod_Urnol_XW_Gefangen_Condition;
	information	= Info_Mod_Urnol_XW_Gefangen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urnol_XW_Gefangen_Condition()
{
	if (Mod_XW_Startscene == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urnol_XW_Gefangen_Info()
{
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_00"); //Now the annoying game of hide-and-seek has come to an end. I should have taken you with me on our first encounter.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_01"); //Too bad our plans weren't completed at that time.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_02"); //But no one could know that you would be able to remove the Signum Magicum.
	AI_Output(hero, self, "Info_Mod_Urnol_XW_Gefangen_15_03"); //Why did you kidnap Argez?
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_04"); //Well, we were looking for you, but it was he who carried the signum.
	AI_Output(hero, self, "Info_Mod_Urnol_XW_Gefangen_15_05"); //What?!
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_06"); //(laughs) Even better if it wasn't intentional.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_07"); //But when we've been there before, we thought we could use him as a lever.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_08"); //Well, I hope it won't be too long before Xeres returns. He's got urgent business upstairs, you know.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_09"); //Matters he had to put off for thousands of years.
	AI_Output(self, hero, "Info_Mod_Urnol_XW_Gefangen_14_10"); //But don't worry, you won't have to wait that long for your painful execution. (laughs)

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Urnol_XW_EXIT (C_INFO)
{
	npc		= Schattenlord_998_Urnol;
	nr		= 1;
	condition	= Info_Mod_Urnol_XW_EXIT_Condition;
	information	= Info_Mod_Urnol_XW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Urnol_XW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urnol_XW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
