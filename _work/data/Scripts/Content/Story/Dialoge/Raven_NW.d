INSTANCE Info_Mod_Raven_Irdorath (C_INFO)
{
	npc		= Mod_510_DMR_Raven_NW;
	nr		= 1;
	condition	= Info_Mod_Raven_Irdorath_Condition;
	information	= Info_Mod_Raven_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have to take the ship to an island in the harbour.";
};

FUNC INT Info_Mod_Raven_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_Irdorath_15_00"); //I have to take the ship to an island in the harbour.
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_01"); //And?
	AI_Output(hero, self, "Info_Mod_Raven_Irdorath_15_02"); //Would you join my crew?
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_03"); //Why would I do that, please?!
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_04"); //On a ship of the Paladins and then puke the whole voyage out of my soul?!
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_05"); //No 10 trolls can get me up there.
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_06"); //How do you even get the absurd idea that I can come with you?
	AI_Output(hero, self, "Info_Mod_Raven_Irdorath_15_07"); //Well, uh, so Xardas said...
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_08"); //Damn, it's an order from Xardas.
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath_03_09"); //(reluctantly to the hero) All right, I'll see you at the harbour.
	AI_Output(hero, self, "Info_Mod_Raven_Irdorath_15_10"); //Well, that was a quick change of mood.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Despite some resistance I was able to' win' Raven for the trip.");

	B_GivePlayerXP	(100);

	Mod_RavenDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Raven_Irdorath3 (C_INFO)
{
	npc		= Mod_510_DMR_Raven_NW;
	nr		= 1;
	condition	= Info_Mod_Raven_Irdorath3_Condition;
	information	= Info_Mod_Raven_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems there are too many of us.";
};

FUNC INT Info_Mod_Raven_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_Irdorath))
	&& (Mod_Irdorath == 0)
	&& (Mod_RavenDabei == 1)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raven_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Raven_Irdorath3_15_00"); //I'm sorry, but it seems there are too many of us. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath3_03_01"); //What?! Well, let's get the hell out of here...
	AI_Output(self, hero, "Info_Mod_Raven_Irdorath3_03_02"); //Not that he'll change his mind.

	Mod_RavenDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RAT");
};

INSTANCE Info_Mod_Raven_NW_EXIT (C_INFO)
{
	npc		= Mod_510_DMR_Raven_NW;
	nr		= 1;
	condition	= Info_Mod_Raven_NW_EXIT_Condition;
	information	= Info_Mod_Raven_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Raven_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raven_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
