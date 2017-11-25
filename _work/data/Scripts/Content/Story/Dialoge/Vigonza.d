INSTANCE Info_Mod_Vigonza_Hi (C_INFO)
{
	npc		= Mod_7572_OUT_Vigonza_EIS;
	nr		= 1;
	condition	= Info_Mod_Vigonza_Hi_Condition;
	information	= Info_Mod_Vigonza_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vigonza_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vigonza_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_00"); //What the hell?! How did you get up here and what did you do with my men?
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_01"); //I wouldn't worry about your men no more, the Grim Reaper had his fun with them. You're missing it.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_02"); //Do you even have the faintest idea what we're doing and who we are?
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_03"); //It's your own fault. Why are your people attacking everyone?
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_04"); //Suddenly my people are to blame? We were the first ones to be attacked.
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_05"); //Who's supposed to have attacked you?
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_06"); //A hunter. He fired his bow at one of my best men.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_07"); //Of course I couldn't let him get away with it and sent two of my men to bring him to me.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_08"); //But they have not returned to this day. That is why I have ordered to attack anyone who approaches us until I know whether we are hostile here.
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_09"); //I found the hunter who was pursued by your people. They killed him and tried the same thing on me, but without success.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_10"); //If they killed him, it was because he attacked her. And can you blame them if they think you're an enemy too?
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_11"); //Well, then explain to me why a hunter should attack you?
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_12"); //I guess he wanted that, which is why we came to this country. Except he was after the fast gold and we're fighting for our livelihood.
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_13"); //You'll have to explain that to me in more detail.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_14"); //I am the captain of our King George Goddard, the Second.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_15"); //Our king sent us to fetch the blood of the Dalma, a giant spider that usually lives deep underground, to cure him of his family illness.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_16"); //However, it has escaped us in battle in the depths of the mountains and fled to this country.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_17"); //When my best warrior was to defeat them for me, he was attacked by the hunter. Probably because he was aware of the value of the trophies.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_18"); //And since then, I've been trying to prepare my people for an attack. But without my best warrior, they probably wouldn't have made it.
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_19"); //I believe you. If this had been sorted out in advance, your people would still be alive.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_20"); //Maybe it was fate. You look like you can fight well, and maybe you have more chances against the monster than all my people put together.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_21"); //I ask you to stand by me in the fight against the Dalma. I can't let myself be seen in my homeland without the blood.
	AI_Output(hero, self, "Info_Mod_Vigonza_Hi_15_22"); //All right, all right. Take me to the spider and I'll help you.
	AI_Output(self, hero, "Info_Mod_Vigonza_Hi_08_23"); //Follow me!

	B_LogEntry	(TOPIC_MOD_EIS_ALTERTURM, "It's all just a misunderstanding. It seems Randi provoked this attack. At least he got his just sentence. Vigonza, the leader of the gang, asked me to help him fight a dangerous giant spider as he fought against the Dalma. He will lead me there.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DALMA");

	Wld_InsertNpc	(Dalma, "EIS_400");
};

INSTANCE Info_Mod_Vigonza_Dalma (C_INFO)
{
	npc		= Mod_7572_OUT_Vigonza_EIS;
	nr		= 1;
	condition	= Info_Mod_Vigonza_Dalma_Condition;
	information	= Info_Mod_Vigonza_Dalma_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vigonza_Dalma_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vigonza_Hi))
	&& (Npc_GetDistToWP(self, "EIS_400") < 500)
	&& (Npc_IsDead(Dalma))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vigonza_Dalma_Info()
{
	AI_Output(self, hero, "Info_Mod_Vigonza_Dalma_08_00"); //Finally the beast has been killed. Thank you, thank you. Here, take this as a reward.

	B_GiveInvItems	(self, hero, ItAt_DalmaZange, 2);

	AI_Output(self, hero, "Info_Mod_Vigonza_Dalma_08_01"); //It's the pliers of the Dalma. May they give you a shower of gold.
	AI_Output(self, hero, "Info_Mod_Vigonza_Dalma_08_02"); //I'm going to go to the pass now. I hope I'm not too late. Good luck, stranger.

	B_LogEntry	(TOPIC_MOD_EIS_ALTERTURM, "The Dalma is finished. Vigonza will now return and I should go to Keith.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Vigonza_EXIT (C_INFO)
{
	npc		= Mod_7572_OUT_Vigonza_EIS;
	nr		= 1;
	condition	= Info_Mod_Vigonza_EXIT_Condition;
	information	= Info_Mod_Vigonza_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Vigonza_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vigonza_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
