INSTANCE Info_Mod_Elvrich_MT_Hi (C_INFO)
{
	npc		= Mod_7404_NONE_Elvrich_MT;
	nr		= 1;
	condition	= Info_Mod_Elvrich_MT_Hi_Condition;
	information	= Info_Mod_Elvrich_MT_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elvrich_MT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvrich_MT_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_00"); //Hey, you here?
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_01"); //I was about to say the same thing. What brings you here?
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_02"); //Well, that's a long story... but it's told quickly.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_03"); //As I told you back then, I went to the waterfront to meet my girlfriend.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_04"); //Then this lousy demon warrior showed up and teleported me to one of their camps.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_05"); //They put me in their mine, where I was to work to the death, like the other poor bastards who had kidnapped them from the city and who are now rotting in an abandoned tunnel.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_06"); //Since I didn't want to end up like this, I used the confusion in a collapse to escape.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_07"); //I sat down in this camp here, from which a demon warrior has always raved so much between the trains on the swampweed stalk.... and I have not regretted it.
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_08"); //There, there.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_09"); //Yes, since I've been here, I've only realized the true value of life.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_10"); //There is always enough swamp herb to relax and I am respected and appreciated for my knowledge of carpentry.
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_11"); //And your girlfriend?
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_12"); //What?! Just stay away from me with that witch...
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_13"); //Okay, if you think she can't do anything for your kidnapping.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_14"); //No, you don't understand. That bitch was the one who made us guys lose our minds and betrayed us to the demon warriors.
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_15"); //Oh, I see. This makes the dislike of course more understandable.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_16"); //Be that as it may, everything has come to a happy end for me.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_17"); //I will continue to make cupboards, smoke the stalks and enjoy my life. What more do you want....

	if (!Npc_KnowsInfo(hero, Info_Mod_Vatras_RealInfos))
	{
		B_LogEntry	(TOPIC_MOD_VERMISSTE, "Okay, so that settles the fate of the abductees, and I can report to Vatra.");
	};

	Mod_WM_ElvrichImSumpf = 4;

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Elvrich_MT_EXIT (C_INFO)
{
	npc		= Mod_7404_NONE_Elvrich_MT;
	nr		= 1;
	condition	= Info_Mod_Elvrich_MT_EXIT_Condition;
	information	= Info_Mod_Elvrich_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Elvrich_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvrich_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
