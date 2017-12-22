INSTANCE Info_Mod_FeuerNovize_Hi (C_INFO)
{
	npc		= Mod_7193_NOV_Novize_NW;
	nr		= 1;
	condition	= Info_Mod_FeuerNovize_Hi_Condition;
	information	= Info_Mod_FeuerNovize_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing?";
};

FUNC INT Info_Mod_FeuerNovize_Hi_Condition()
{
	if (WM_Boden_09 == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FeuerNovize_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_FeuerNovize_Hi_15_00"); //What are you doing?
	AI_Output(self, hero, "Info_Mod_FeuerNovize_Hi_13_01"); //(arrogant intonation) Don't bother me. I work the blessing of my Mr Innos on this profane environment.
	AI_Output(hero, self, "Info_Mod_FeuerNovize_Hi_15_02"); //For my part, I am a servant of Adanos and here to ask you to stop this process. It hurts the....
	AI_Output(self, hero, "Info_Mod_FeuerNovize_Hi_13_03"); //You don't want to tell me, a servant of Inno's, what he has to do.
	AI_Output(self, hero, "Info_Mod_FeuerNovize_Hi_13_04"); //Now, get out of here and don't bother me anymore with my sacred work.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_FeuerNovize_Entweihung (C_INFO)
{
	npc		= Mod_7193_NOV_Novize_NW;
	nr		= 1;
	condition	= Info_Mod_FeuerNovize_Entweihung_Condition;
	information	= Info_Mod_FeuerNovize_Entweihung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_FeuerNovize_Entweihung_Condition()
{
	if (WM_Boden_09 == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FeuerNovize_Entweihung_Info()
{
	AI_Output(self, hero, "Info_Mod_FeuerNovize_Entweihung_13_00"); //What are you doing?! You're destroying my work. Wait, I'll be right with you.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_FeuerNovize_EXIT (C_INFO)
{
	npc		= Mod_7193_NOV_Novize_NW;
	nr		= 1;
	condition	= Info_Mod_FeuerNovize_EXIT_Condition;
	information	= Info_Mod_FeuerNovize_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_FeuerNovize_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_FeuerNovize_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
