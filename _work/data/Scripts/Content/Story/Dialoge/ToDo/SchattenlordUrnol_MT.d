INSTANCE Info_Mod_Urnol_MT_Hi (C_INFO)
{
	npc		= Schattenlord_877_Urnol;
	nr		= 1;
	condition	= Info_Mod_Urnol_MT_Hi_Condition;
	information	= Info_Mod_Urnol_MT_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urnol_MT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urnol_MT_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Urnol_MT_Hi_14_00"); //So we meet again. You did it, you freed my master from the underworld.
	AI_Output(self, hero, "Info_Mod_Urnol_MT_Hi_14_01"); //You go right back to him, he's waiting for you.

	B_Say	(hero, self, "$WOFINDEICHIHN");

	AI_Output(self, hero, "Info_Mod_Urnol_MT_Hi_14_03"); //On the way to the underground part of the city. You can't miss him. (laughs)

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Urnol_MT_EXIT (C_INFO)
{
	npc		= Schattenlord_877_Urnol;
	nr		= 1;
	condition	= Info_Mod_Urnol_MT_EXIT_Condition;
	information	= Info_Mod_Urnol_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Urnol_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urnol_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
