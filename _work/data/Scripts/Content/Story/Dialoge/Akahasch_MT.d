INSTANCE Info_Mod_Akahasch_MT_Hi (C_INFO)
{
	npc		= Mod_7760_NOV_Akahasch_MT;
	nr		= 1;
	condition	= Info_Mod_Akahasch_MT_Hi_Condition;
	information	= Info_Mod_Akahasch_MT_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Weren't you even a novice in the Innos monastery?";
};

FUNC INT Info_Mod_Akahasch_MT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Akahasch_MT_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_MT_Hi_15_00"); //Weren't you even a novice in the Innos monastery?
	AI_Output(self, hero, "Info_Mod_Akahasch_MT_Hi_24_01"); //Don't remind me of that. After the history with the city they made my life in the monastery a living hell.
	AI_Output(self, hero, "Info_Mod_Akahasch_MT_Hi_24_02"); //Somebody must have ratted me out. I have suspicion of this Ulf...
	AI_Output(self, hero, "Info_Mod_Akahasch_MT_Hi_24_03"); //Anyway, I feel a thousand times better now. As former fire innovators, they welcomed me here with open arms.
};

INSTANCE Info_Mod_Akahasch_MT_EXIT (C_INFO)
{
	npc		= Mod_7760_NOV_Akahasch_MT;
	nr		= 1;
	condition	= Info_Mod_Akahasch_MT_EXIT_Condition;
	information	= Info_Mod_Akahasch_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Akahasch_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Akahasch_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
