INSTANCE Info_Mod_Trent_MT_Hi (C_INFO)
{
	npc		= Mod_7528_RIT_Trent_MT;
	nr		= 1;
	condition	= Info_Mod_Trent_MT_Hi_Condition;
	information	= Info_Mod_Trent_MT_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you feeling better?";
};

FUNC INT Info_Mod_Trent_MT_Hi_Condition()
{
	if (Mod_KG_TrentInMT == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_MT_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Trent_MT_Hi_15_00"); //Are you feeling better?
	AI_Output(self, hero, "Info_Mod_Trent_MT_Hi_06_01"); //Not really. I haven't had much time to recover.
	AI_Output(self, hero, "Info_Mod_Trent_MT_Hi_06_02"); //The air is burning, I tell you. I've already lost three of my men, and we're running low on water.
	AI_Output(hero, self, "Info_Mod_Trent_MT_Hi_15_03"); //Did you find out anything yet?
	AI_Output(self, hero, "Info_Mod_Trent_MT_Hi_06_04"); //Yeah, every man I lose here, the orcs sacrifice in their cave. Not a particularly encouraging thought. We're just too few, especially now!
	AI_Output(hero, self, "Info_Mod_Trent_MT_Hi_15_05"); //All right, but maybe you can do it with me.
	AI_Output(self, hero, "Info_Mod_Trent_MT_Hi_06_06"); //It's worth a try. We can't hold out much longer than the next day anyway.
	AI_Output(self, hero, "Info_Mod_Trent_MT_Hi_06_07"); //On your signal, we attack them.

	B_LogEntry	(TOPIC_MOD_KG_RITUAL, "Trent's situation is not looking good. We must attack the orcs together in their place of sacrifice, and soon. I'm supposed to give the signal as soon as I'm ready.");
};

INSTANCE Info_Mod_Trent_MT_Angriff (C_INFO)
{
	npc		= Mod_7528_RIT_Trent_MT;
	nr		= 1;
	condition	= Info_Mod_Trent_MT_Angriff_Condition;
	information	= Info_Mod_Trent_MT_Angriff_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's attack!";
};

FUNC INT Info_Mod_Trent_MT_Angriff_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_MT_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_MT_Angriff_Info()
{
	AI_Output(hero, self, "Info_Mod_Trent_MT_Angriff_15_00"); //Let's attack!
	AI_Output(self, hero, "DEFAULT"); //

	B_LogEntry	(TOPIC_MOD_KG_RITUAL, "Here we go!");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOORKS");
	B_StartOtherRoutine	(Mod_7635_MIL_Miliz_MT, "GUIDETOORKS");
	B_StartOtherRoutine	(Mod_7636_MIL_Miliz_MT, "GUIDETOORKS");

	self.aivar[AIV_Partymember] = TRUE;
	Mod_7635_MIL_Miliz_MT.aivar[AIV_Partymember] = TRUE;
	Mod_7636_MIL_Miliz_MT.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Trent_MT_EXIT (C_INFO)
{
	npc		= Mod_7528_RIT_Trent_MT;
	nr		= 1;
	condition	= Info_Mod_Trent_MT_EXIT_Condition;
	information	= Info_Mod_Trent_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Trent_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trent_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
