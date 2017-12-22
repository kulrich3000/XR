INSTANCE Info_Mod_Oric_Hi (C_INFO)
{
	npc		= Mod_7039_PAL_Oric_MT;
	nr		= 1;
	condition	= Info_Mod_Oric_Hi_Condition;
	information	= Info_Mod_Oric_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Oric_Hi_Condition()
{
	if (Npc_GetDistToWP(self, "OW_PATH_1_16") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oric_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Oric_Hi_11_00"); //That was the beginning. I'm gonna leave some people here. Now we have to free the exchange point, then we get reinforcements to take care of the mine.
	AI_Output(hero, self, "Info_Mod_Oric_Hi_15_01"); //I see.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOAUSTAUSCH");
	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "TOAUSTAUSCH");
	B_StartOtherRoutine	(Mod_7040_RIT_Ritter_MT, "TOAUSTAUSCH");
	B_StartOtherRoutine	(Mod_7041_RIT_Ritter_MT, "TOAUSTAUSCH");
	B_StartOtherRoutine	(Mod_7042_RIT_Ritter_MT, "ATVM");
	B_StartOtherRoutine	(Mod_7043_RIT_Ritter_MT, "ATVM");
	B_StartOtherRoutine	(Mod_7044_RIT_Ritter_MT, "ATVM");
	B_StartOtherRoutine	(Mod_7045_RIT_Ritter_MT, "ATVM");

	Mod_7042_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7043_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7044_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7045_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_LogEntry	(TOPIC_MOD_AL_ERSTERSCHRITT, "We've taken the entrance to the abandoned mine.");
};

INSTANCE Info_Mod_Oric_AtAustausch (C_INFO)
{
	npc		= Mod_7039_PAL_Oric_MT;
	nr		= 1;
	condition	= Info_Mod_Oric_AtAustausch_Condition;
	information	= Info_Mod_Oric_AtAustausch_Info;
	permanent	= 0;
	important	= 0;
	description	= "What happens now?";
};

FUNC INT Info_Mod_Oric_AtAustausch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oric_Hi))
	&& (Npc_GetDistToWP(self, "WP_INTRO_FALL3") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oric_AtAustausch_Info()
{
	AI_Output(hero, self, "Info_Mod_Oric_AtAustausch_15_00"); //What happens now?
	AI_Output(self, hero, "Info_Mod_Oric_AtAustausch_11_01"); //Now it's the mine. Our people have already positioned themselves near you. In the next battle, you play a special role.
	AI_Output(hero, self, "Info_Mod_Oric_AtAustausch_15_02"); //Oh, what?
	AI_Output(self, hero, "Info_Mod_Oric_AtAustausch_11_03"); //Yeah, I hope you're aware of the importance of your commitment. No doubt he contributes to the outcome of the battle. One could almost say that the success of the enterprise depends on you, so hopefully you know....
	AI_Output(hero, self, "Info_Mod_Oric_AtAustausch_15_04"); //Now spit out what you want from me.
	AI_Output(self, hero, "Info_Mod_Oric_AtAustausch_11_05"); //Enter the mine and send the leader to Beliar.
	AI_Output(hero, self, "Info_Mod_Oric_AtAustausch_15_06"); //There you are. How am I supposed to get to the mine?
	AI_Output(self, hero, "Info_Mod_Oric_AtAustausch_11_07"); //I have an invisibility role here. It doesn't make you invisible, of course, but only makes sure that others can't see you.

	B_GiveInvItems	(self, hero, ItSc_Unsichtbarkeit, 1);

	AI_Output(self, hero, "Info_Mod_Oric_AtAustausch_11_08"); //Sneak into the mine and kill Kurgan, the leader. The invisibility lasts ten minutes. Besides, Kurgan can see you after you attacked him. That means you have to be quick.
	AI_Output(self, hero, "Info_Mod_Oric_AtAustausch_11_09"); //Then run out of the mine and talk to me, I'll wait for you in front of the mine.

	Mod_AL_Oric = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATAM");
	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "ATAM");
	B_StartOtherRoutine	(Mod_7040_RIT_Ritter_MT, "ATAUSTAUSCH");
	B_StartOtherRoutine	(Mod_7041_RIT_Ritter_MT, "ATAUSTAUSCH");

	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1870_EBR_Alissandro_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7040_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7041_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	if (Mod_MinentalTor == 1)
	{
		Wld_SendTrigger	("EVT_AM_LOB_GATE_BIG");
	};

	B_LogEntry	(TOPIC_MOD_AL_ERSTERSCHRITT, "The exchange place is ours. Now I'm supposed to sneak invisibly into the old mine and kill Kurgan, the leader.");
};

INSTANCE Info_Mod_Oric_KurganTot (C_INFO)
{
	npc		= Mod_7039_PAL_Oric_MT;
	nr		= 1;
	condition	= Info_Mod_Oric_KurganTot_Condition;
	information	= Info_Mod_Oric_KurganTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kurgan's dead.";
};

FUNC INT Info_Mod_Oric_KurganTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oric_AtAustausch))
	&& (Mod_AL_Oric == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oric_KurganTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Oric_KurganTot_15_00"); //Kurgan's dead.
	AI_Output(self, hero, "Info_Mod_Oric_KurganTot_11_01"); //Perfect. Now we will attack the mine. Go ahead, my troops will follow you.

	Mod_AL_Oric = 4;

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_AL_ERSTERSCHRITT, "Now we can attack the mine.");
};

INSTANCE Info_Mod_Oric_MineUns (C_INFO)
{
	npc		= Mod_7039_PAL_Oric_MT;
	nr		= 1;
	condition	= Info_Mod_Oric_MineUns_Condition;
	information	= Info_Mod_Oric_MineUns_Info;
	permanent	= 0;
	important	= 0;
	description	= "The mine is ours.";
};

FUNC INT Info_Mod_Oric_MineUns_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oric_KurganTot))
	&& (Mod_AL_Oric == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oric_MineUns_Info()
{
	AI_Output(hero, self, "Info_Mod_Oric_MineUns_15_00"); //The mine is ours.
	AI_Output(self, hero, "Info_Mod_Oric_MineUns_11_01"); //Very good. Very good. Now we only have one step ahead of us. Alissandro will explain it to you at the cabin.

	Mod_AL_Oric = 7;

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_AL_ERSTERSCHRITT, LOG_SUCCESS);
};

INSTANCE Info_Mod_Oric_Gomez (C_INFO)
{
	npc		= Mod_7039_PAL_Oric_MT;
	nr		= 1;
	condition	= Info_Mod_Oric_Gomez_Condition;
	information	= Info_Mod_Oric_Gomez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Oric_Gomez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_GomezLebenLassen))
	&& (!Npc_IsInState(Mod_520_DMR_Raven_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Oric_Gomez_Info()
{
	AI_TurnToNpc	(self, Mod_520_DMR_Raven_MT);

	AI_Output(self, hero, "Info_Mod_Oric_Gomez_11_00"); //Shut up, scum Beliars. We have defeated your husband, and so we have the right to kill him.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Oric_EXIT (C_INFO)
{
	npc		= Mod_7039_PAL_Oric_MT;
	nr		= 1;
	condition	= Info_Mod_Oric_EXIT_Condition;
	information	= Info_Mod_Oric_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Oric_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Oric_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
