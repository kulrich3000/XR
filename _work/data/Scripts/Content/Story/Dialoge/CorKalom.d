INSTANCE Info_Mod_Kalom_Hi (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_Hi_Condition;
	information	= Info_Mod_Kalom_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kalom_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_Hi_12_00"); //Who do we have here?

	if (HeroIstKeinZombie == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Kalom_Hi_12_01"); //The decaying corpse of the unbelieving fool, who foiled the great plans of my Master, has awakened to being undead.
		AI_Output(self, hero, "Info_Mod_Kalom_Hi_12_02"); //Just rot, it will give me long enough distraction and satisfaction while I wait for the return of my Master.
	};
};

INSTANCE Info_Mod_Kalom_LeckMich (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_LeckMich_Condition;
	information	= Info_Mod_Kalom_LeckMich_Info;
	permanent	= 0;
	important	= 0;
	description	= "You can wait a long time, you ectoplasmic filth.";
};

FUNC INT Info_Mod_Kalom_LeckMich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kalom_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_LeckMich_Info()
{
	AI_Output(hero, self, "Info_Mod_Kalom_LeckMich_15_00"); //You can wait a long time, you ectoplasmic filth.
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_01"); //What, like...?! Your spirit has not left the decomposing shell?! How is that possible?
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_02"); //Well, that won't change your destiny. (laughs)
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_03"); //The exit is blocked by huge boulders, the bridge collapsed and after many years nothing will be left of you except dust.
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_04"); //And I can't feel any magical aptitude in you that could help you to leave this holy place.
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_05"); //You're a simple zombie now. At the sight of your rotting guts, I will be refreshing.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Kalom_KeinZombie (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_KeinZombie_Condition;
	information	= Info_Mod_Kalom_KeinZombie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_KeinZombie_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Kalom_LeckMich))
	|| (!Npc_KnowsInfo(hero, Info_Mod_Kalom_Hi)))
	&& (HeroIstKeinZombie == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_KeinZombie_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_KeinZombie_12_00"); //What, how is that possible?! You're back among the living. But...
	AI_Output(hero, self, "Info_Mod_Kalom_KeinZombie_15_01"); //Disappointed? Didn't your bill work out for you?
	AI_Output(self, hero, "Info_Mod_Kalom_KeinZombie_12_02"); //We can fix that right away. You fool! And you're actually coming back here.
	AI_Output(hero, self, "Info_Mod_Kalom_KeinZombie_15_03"); //Why not? You're just a ghost.
	AI_Output(self, hero, "Info_Mod_Kalom_KeinZombie_12_04"); //(laughs) Exactly, just a ghost. Feel the power the sleeper gave me.

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(200);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Kalom_LebtNoch01 (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_LebtNoch01_Condition;
	information	= Info_Mod_Kalom_LebtNoch01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_LebtNoch01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kalom_KeinZombie))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_LebtNoch01_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_LebtNoch01_12_00"); //What! You're still alive?

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Kalom_LebtNoch02 (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_LebtNoch02_Condition;
	information	= Info_Mod_Kalom_LebtNoch02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_LebtNoch02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kalom_LebtNoch01))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_LebtNoch02_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_LebtNoch02_12_00"); //It's you again.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Kalom_LebtNoch03 (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_LebtNoch03_Condition;
	information	= Info_Mod_Kalom_LebtNoch03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_LebtNoch03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kalom_LebtNoch02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_LebtNoch03_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_LebtNoch03_12_00"); //How annoying. Don't they get rid of you?

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Kalom_EXIT (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_EXIT_Condition;
	information	= Info_Mod_Kalom_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kalom_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kalom_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_EXIT_12_00"); //There's a little meat on your arm. (laughs)

	AI_StopProcessInfos	(self);
};
