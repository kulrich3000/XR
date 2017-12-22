INSTANCE Info_Mod_Kolam_Hi (C_INFO)
{
	npc		= Mod_1981_Kolam_FI;
	nr		= 1;
	condition	= Info_Mod_Kolam_Hi_Condition;
	information	= Info_Mod_Kolam_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kolam_Hi_Condition()
{
	if (FI_Story == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kolam_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_00"); //All right, let's get to you. I'm sure you're burning with questions.
	AI_Output(hero, self, "Info_Mod_Kolam_Hi_15_01"); //What did you do to the inventor?
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_02"); //(laughs) Haahahaha. You fool still don't get it. I'm the inventor.
	AI_Output(hero, self, "Info_Mod_Kolam_Hi_15_03"); //What? You're the inventor?
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_04"); //Of course! The whole kidnapping thing was just a trick to lure you here!
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_05"); //The only magic I know is the magic of technique. Unfortunately, this is too high for these idiots with their sleeper, so I performed as the great Guru Cor Kolam, Cor Kalom's brother.
	AI_Output(hero, self, "Info_Mod_Kolam_Hi_15_06"); //To lure me here? What's that for? It's just a way of putting the whole militia on your neck.
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_07"); //It's all part of my brilliant plan!
	AI_Output(hero, self, "Info_Mod_Kolam_Hi_15_08"); //Plan? Let me guess. It's about money, women, power... World domination?
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_09"); //Do you have your ideas from a dictionary of clichés? How primitive do you think I am? It is not about power, but only about technology as such.
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_10"); //I wanted to build the perfect machine, and I succeeded in doing so. ATTACK INITIALIZE

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Kolam_SleeperDead (C_INFO)
{
	npc		= Mod_1981_Kolam_FI;
	nr		= 1;
	condition	= Info_Mod_Kolam_SleeperDead_Condition;
	information	= Info_Mod_Kolam_SleeperDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kolam_SleeperDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kolam_Hi))
	&& (Npc_IsDead(Sleeper))
	&& (Npc_GetDistToWP(self, "FI_81") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kolam_SleeperDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_00"); //Wonderful!
	AI_Output(hero, self, "Info_Mod_Kolam_SleeperDead_15_01"); //Have all your fuses blown? I just turned your "perfect machine" into scrap metal.
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_02"); //What? Perfect machine? This? No, don't do that.
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_03"); //My perfect machine is not even finished.... which means it wasn't finished yet, because something decisive was missing.
	AI_Output(hero, self, "Info_Mod_Kolam_SleeperDead_15_04"); //Namely?
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_05"); //The brain. Of course, only in a metaphorical sense. The construction is finished, but the programming was missing.
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_06"); //I couldn't write just any program, not to build the perfect machine.... since it's a fighting machine, she needs the perfect fighting style. And that's where you come in.
	AI_Output(hero, self, "Info_Mod_Kolam_SleeperDead_15_07"); //And you think I'll help you build your machine? I'm a militia soldier, and I'm here to uphold at least a little law and order, not to help you build a crazy killer machine.
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_08"); //Oh, I understand your moral concerns, but it's not like I asked for your help. I took them.
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_09"); //Your impressive performance in the battle with the sleeper-bot gave my machine all the information it needed.
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_10"); //She has analyzed you so far, but now that she knows everything she needs to know, get ready to become the first victim of true perfection!
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_11"); //INPUT BEENDEN. LOAD ATTACK PATTERNS, INITIATE ATTACK!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(HeroBot_FI, "ABSCHIED");
};

INSTANCE Info_Mod_Kolam_EXIT (C_INFO)
{
	npc		= Mod_1981_Kolam_FI;
	nr		= 1;
	condition	= Info_Mod_Kolam_EXIT_Condition;
	information	= Info_Mod_Kolam_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kolam_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kolam_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
