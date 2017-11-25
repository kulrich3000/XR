INSTANCE Info_Mod_HeroBot_Gelaber (C_INFO)
{
	npc		= HeroBot_NW;
	nr		= 1;
	condition	= Info_Mod_HeroBot_Gelaber_Condition;
	information	= Info_Mod_HeroBot_Gelaber_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're Kolam's combat robot!";
};

FUNC INT Info_Mod_HeroBot_Gelaber_Condition()
{
	if (Mod_PAL_HeroBot == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HeroBot_Gelaber_Info()
{
	AI_Output(hero, self, "Info_Mod_HeroBot_Gelaber_15_00"); //You are Kolam's battle robot!
	AI_Output(self, hero, "Info_Mod_HeroBot_Gelaber_33_01"); //"The threat of violence against an individual or the general public as such is a criminal offence."
	AI_Output(hero, self, "Info_Mod_HeroBot_Gelaber_15_02"); //We're gonna end this once and for all.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "The crazy guru was killed by Kolam's robot. Now I'm going to crush him once and for all.");
};

INSTANCE Info_Mod_HeroBot_Weg (C_INFO)
{
	npc		= HeroBot_NW;
	nr		= 1;
	condition	= Info_Mod_HeroBot_Weg_Condition;
	information	= Info_Mod_HeroBot_Weg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HeroBot_Weg_Condition()
{
	if (Mod_PAL_HeroBot == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HeroBot_Weg_Info()
{
	AI_Output(self, hero, "Info_Mod_HeroBot_Weg_33_00"); //Mission accomplished. Search operation initiated.
	
	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PAL_RL, "The robot has disappeared. I couldn't even touch it.");

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");
};
