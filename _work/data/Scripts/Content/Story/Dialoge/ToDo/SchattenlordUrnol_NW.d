INSTANCE Info_Mod_Urnol_Hi (C_INFO)
{
	npc		= Mod_7036_NONE_Pilger_NW;
	nr		= 1;
	condition	= Info_Mod_Urnol_Hi_Condition;
	information	= Info_Mod_Urnol_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urnol_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erol_DunklerPilger))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urnol_Hi_Info()
{
	Wld_PlayEffect("DEMENTOR_FX",  self, self, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_Fear",  self, self, 0, 0, 0, FALSE );

	AI_UnequipArmor	(self);
	Npc_RemoveInvItems	(self, ItAr_Dementor, 1);
	CreateInvItems	(self, ItAr_Pal_Skel, 1);
	AI_EquipBestArmor	(self);

	Mod_UrnolBS = TRUE;
	
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_00"); //Ahh, there you are. I've been expecting you.
	AI_Output(hero, self, "Info_Mod_Urnol_Hi_15_01"); //What?! Who are you?
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_02"); //I am Urnol, a messenger of my Master who will come to kill you.
	AI_Output(hero, self, "Info_Mod_Urnol_Hi_15_03"); //And who is your master? Not the sleeper?
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_04"); //The sleeper is not my master, he was just one of his servants.
	AI_Output(hero, self, "Info_Mod_Urnol_Hi_15_05"); //But then who is your master? The God of darkness, Beliar?!
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_06"); //(laughs) No, you're wrong, man. But you'll find out soon enough!
	AI_Output(hero, self, "Info_Mod_Urnol_Hi_15_07"); //But why does your master want to kill me?
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_08"); //You banished one of his servants, as well as destroying the magical prison in which he wanted to use the ore to create an army under his control to enslave all Khorini.
	AI_Output(hero, self, "Info_Mod_Urnol_Hi_15_09"); //And why isn't your master here? Why did he send you anyway?
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_10"); //(laughs) Many questions you have, man... and some of them remain unanswered for the time being.
	AI_Output(self, hero, "Info_Mod_Urnol_Hi_14_11"); //(laughs spitefully) Hahaha, you will die, man.

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Urnol_WerBistDu (C_INFO)
{
	npc		= Mod_7036_NONE_Pilger_NW;
	nr		= 1;
	condition	= Info_Mod_Urnol_WerBistDu_Condition;
	information	= Info_Mod_Urnol_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "END";
};

FUNC INT Info_Mod_Urnol_WerBistDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urnol_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urnol_WerBistDu_Info()
{
	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");

	Wld_StopEffect	("DEMENTOR_FX");

	B_LogEntry	(TOPIC_MOD_DIEBEDROHUNG, "A certain shadow lord Urnol told me that his master will return from his kingdom to kill me. He justifies it by saying that I killed the sleeper, one of his servants. I should tell Xardas about it.");
	B_SetTopicStatus	(TOPIC_MOD_DUNKLERPILGER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Urnol_Daemonisch (C_INFO)
{
	npc		= Mod_7422_NONE_Frau_NW;
	nr		= 1;
	condition	= Info_Mod_Urnol_Daemonisch_Condition;
	information	= Info_Mod_Urnol_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urnol_Daemonisch_Condition()
{
	if (Mod_HQ_Daemonisch == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urnol_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Urnol_Daemonisch_14_00"); //What, you here? Cursed, my camouflage blown up, the soul tormentors almost all banished, the possessed healed. You'll pay for this.
	AI_Output(hero, self, "Info_Mod_Urnol_Daemonisch_15_01"); //Well, it seems your master's plans have failed again.
	AI_Output(self, hero, "Info_Mod_Urnol_Daemonisch_14_02"); //Yeah, just mock. The conquest of Khorinis may be postponed.... more than that, but not at all.
	AI_Output(self, hero, "Info_Mod_Urnol_Daemonisch_14_03"); //Xeres has enough means and ways to reach his goal.... And I will command his armies. We'll see each other again.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Urnol's cover has been blown.... even if I suspected someone else. He must have gone to the Minental again and I can tell Xardas about my success.");
};
