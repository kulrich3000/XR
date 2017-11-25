INSTANCE Info_Mod_Velaya_NW_Irdorath (C_INFO)
{
	npc		= Mod_7416_BAU_Velaya_NW;
	nr		= 1;
	condition	= Info_Mod_Velaya_NW_Irdorath_Condition;
	information	= Info_Mod_Velaya_NW_Irdorath_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Velaya_NW_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_NW_Irdorath_Info()
{
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_17_00"); //You can't have that, can you?
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_01"); //Ohh, I'm surprised to find you here too...
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_17_02"); //Well, I couldn't be here without you, I would still be sitting in the valley of the river Minental, I would let myself be gawked in the bath and share my bed with the ore barons.... even if it wasn't as bad as it was in Gomez's day.
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_03"); //Hmm, that brings back memories...
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_17_04"); //What do you say?
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_05"); //Uh, nothing. I just meant.... that I remembered having to prepare everything for the upcoming voyage.
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_17_06"); //Sea voyage? The big wide world? How wonderful...
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_17_07"); //Oh, if only I could go with you...
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_08"); //Well, it's not going to be completely harmless. It is called to hold an evil magician accountable for his atrocities.
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_09"); //I don't know if this would be right for you...
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_17_10"); //Friendly, ironic. Just listen to the gentleman. I have learned a lot in the last weeks....
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_11"); //Well, I guess you don't mean the fieldwork...
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_17_12"); //Well, with my bow I can shoot out the eye of a boar at 10m...
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath_17_13"); //... and intrusive guys with the sword to show restraint when it goes where it hurts....
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath_15_14"); //Soso, sounds like someone from experience is speaking.
};

INSTANCE Info_Mod_Velaya_NW_Irdorath2 (C_INFO)
{
	npc		= Mod_7416_BAU_Velaya_NW;
	nr		= 1;
	condition	= Info_Mod_Velaya_NW_Irdorath2_Condition;
	information	= Info_Mod_Velaya_NW_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "All right, if you have moulted like this in a few weeks, you won't burn anything on the ship.";
};

FUNC INT Info_Mod_Velaya_NW_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velaya_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_NW_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath2_15_00"); //All right, if you have moulted like this in a few weeks, you won't burn anything on the ship.
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath2_17_01"); //Great! And the ship, is that the fantastic big one in the back of the harbour?
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath2_17_02"); //Man, I gotta get a closer look at this.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "If you don't find everything in Khorinis... with my' old acquaintance' Velaya, my crew is now one more crew member.");

	B_GivePlayerXP	(100);

	Mod_VelayaDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Velaya_NW_Irdorath3 (C_INFO)
{
	npc		= Mod_7416_BAU_Velaya_NW;
	nr		= 1;
	condition	= Info_Mod_Velaya_NW_Irdorath3_Condition;
	information	= Info_Mod_Velaya_NW_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems we're too many.";
};

FUNC INT Info_Mod_Velaya_NW_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velaya_NW_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_VelayaDabei == 1)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_NW_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath3_15_00"); //I'm sorry, but it seems we're too many. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath3_17_01"); //Too bad. I'll go back then. You know where to find me if there's ever gonna be a seat left.

	Mod_VelayaDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Velaya_NW_Irdorath4 (C_INFO)
{
	npc		= Mod_7416_BAU_Velaya_NW;
	nr		= 1;
	condition	= Info_Mod_Velaya_NW_Irdorath4_Condition;
	information	= Info_Mod_Velaya_NW_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I can give you a ride.";
};

FUNC INT Info_Mod_Velaya_NW_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velaya_NW_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_VelayaDabei == 0)
	&& (Mod_CedricDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velaya_NW_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Velaya_NW_Irdorath4_15_00"); //I can give you a ride. There's room on the ship.
	AI_Output(self, hero, "Info_Mod_Velaya_NW_Irdorath4_17_01"); //Very well, I'll be back at the harbour.

	Mod_VelayaDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Velaya_NW_EXIT (C_INFO)
{
	npc		= Mod_7416_BAU_Velaya_NW;
	nr		= 1;
	condition	= Info_Mod_Velaya_NW_EXIT_Condition;
	information	= Info_Mod_Velaya_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Velaya_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Velaya_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
