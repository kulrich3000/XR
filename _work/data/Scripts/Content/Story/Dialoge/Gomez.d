INSTANCE Info_Mod_Gomez_Hi (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_Hi_Condition;
	information	= Info_Mod_Gomez_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gomez_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gomez_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gomez_Hi_16_00"); //Hey, buster. Take it easy or you'll be dead.
	AI_Output(hero, self, "Info_Mod_Gomez_Hi_15_01"); //Gomez?!
	AI_Output(self, hero, "Info_Mod_Gomez_Hi_16_02"); //Quite so. What are you doing here?
	AI_Output(hero, self, "Info_Mod_Gomez_Hi_15_03"); //Uh... I want to see a certain Andokai.
	AI_Output(self, hero, "Info_Mod_Gomez_Hi_16_04"); //That's a good fit. Cause that's what I'm gonna take you to now.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Gomez_Belagerung (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_Belagerung_Condition;
	information	= Info_Mod_Gomez_Belagerung_Info;
	permanent	= 0;
	important	= 0;
	description	= "You got something to do for me?";
};

FUNC INT Info_Mod_Gomez_Belagerung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_Belagerung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_Belagerung_Info()
{
	AI_Output(hero, self, "Info_Mod_Gomez_Belagerung_15_00"); //You got something to do for me?
	AI_Output(self, hero, "Info_Mod_Gomez_Belagerung_16_01"); //Hmmm... nothing that could matter!
	AI_Output(hero, self, "Info_Mod_Gomez_Belagerung_15_02"); //What am I supposed to do?
	AI_Output(self, hero, "Info_Mod_Gomez_Belagerung_16_03"); //In the forest in front of the fortress are some dead novices and magicians. They're preventing us from catching the Innos' main troops on the plateau.
	AI_Output(self, hero, "Info_Mod_Gomez_Belagerung_16_04"); //I want you to kill these guys so we can finally fight back.
	AI_Output(hero, self, "Info_Mod_Gomez_Belagerung_15_05"); //I'll be leaving soon!
	AI_Output(self, hero, "Info_Mod_Gomez_Belagerung_16_06"); //Kill all the enemies!
	AI_Output(hero, self, "Info_Mod_Gomez_Belagerung_15_07"); //I won't ignore anyone.

	Log_CreateTopic	(TOPIC_MOD_BEL_DURCHBRUCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_DURCHBRUCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_DURCHBRUCH, "Gomez wants me to do the undead novices and magicians in the forest in front of the fortress.");
};

INSTANCE Info_Mod_Gomez_Durchbruch (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_Durchbruch_Condition;
	information	= Info_Mod_Gomez_Durchbruch_Info;
	permanent	= 0;
	important	= 0;
	description	= "The enemy is weakened.";
};

FUNC INT Info_Mod_Gomez_Durchbruch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gomez_Belagerung))
	&& (Npc_IsDead(Mod_4037_UntoterNovize_20_MT))
	&& (Npc_IsDead(Mod_4038_UntoterNovize_21_MT))
	&& (Npc_IsDead(Mod_4039_UntoterNovize_22_MT))
	&& (Npc_IsDead(Mod_4040_UntoterNovize_23_MT))
	&& (Npc_IsDead(Mod_4041_UntoterNovize_24_MT))
	&& (Npc_IsDead(Mod_4042_UntoterNovize_25_MT))
	&& (Npc_IsDead(Mod_4043_UntoterNovize_26_MT))
	&& (Npc_IsDead(Mod_4044_UntoterNovize_27_MT))
	&& (Npc_IsDead(Mod_4045_UntoterNovize_28_MT))
	&& (Npc_IsDead(Mod_4046_UntoterNovize_29_MT))
	&& (Npc_IsDead(Mod_4047_UntoterMagier_06_MT))
	&& (Npc_IsDead(Mod_4048_UntoterMagier_07_MT))
	&& (Npc_IsDead(Mod_4049_UntoterMagier_08_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_Durchbruch_Info()
{
	AI_Output(hero, self, "Info_Mod_Gomez_Durchbruch_15_00"); //The enemy is weakened.
	AI_Output(self, hero, "Info_Mod_Gomez_Durchbruch_16_01"); //You did a good job. So we can counterattack. I'll tell Raven about it!

	B_GivePlayerXP	(600);

	B_LogEntry_More	(TOPIC_MOD_BEL_DURCHBRUCH, TOPIC_MOD_BEL_BELAGERUNG, "I told Gomez that the siege was struck back.", "I helped Gomez and broke the siege. He's going to let Raven know now.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_DURCHBRUCH, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Gomez_TruheMage (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_TruheMage_Condition;
	information	= Info_Mod_Gomez_TruheMage_Info;
	permanent	= 0;
	important	= 0;
	description	= "Scar sent me.";
};

FUNC INT Info_Mod_Gomez_TruheMage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Scar_TruheMage))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_TruheMage_Info()
{
	AI_Output(hero, self, "Info_Mod_Gomez_TruheMage_15_00"); //Scar sent me.
	AI_Output(self, hero, "Info_Mod_Gomez_TruheMage_16_01"); //What's going on?
	AI_Output(hero, self, "Info_Mod_Gomez_TruheMage_15_02"); //He wants to have new weapons manufactured, but the building instructions are locked in a magic chest. The chest is located on top of the tower of the fortress.
	AI_Output(self, hero, "Info_Mod_Gomez_TruheMage_16_03"); //You'll need a magic lock pick. He can break such a spell.
	AI_Output(hero, self, "Info_Mod_Gomez_TruheMage_15_04"); //Where do I get a lock pick?
	AI_Output(self, hero, "Info_Mod_Gomez_TruheMage_16_05"); //Turn to Eduard. He shall make you a special dietrich, which I will give you the necessary strength.
	AI_Output(hero, self, "Info_Mod_Gomez_TruheMage_15_06"); //Why can't it be any easier?

	B_LogEntry	(TOPIC_MOD_BEL_STAEBE, "Gomez sent me to Eduard's. I want him to make me a magic dietrich, which Gomez will give me the strength I need.");
};

INSTANCE Info_Mod_Gomez_HabDietrich (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_HabDietrich_Condition;
	information	= Info_Mod_Gomez_HabDietrich_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the lock pick.";
};

FUNC INT Info_Mod_Gomez_HabDietrich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eduard_DietrichFertig))
	&& (Npc_HasItems(hero, ItKe_Lockpick_Mage_Unloaded) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_HabDietrich_Info()
{
	AI_Output(hero, self, "Info_Mod_Gomez_HabDietrich_15_00"); //Here's the lock pick.

	B_GiveInvItems	(hero, self, ItKe_Lockpick_Mage_Unloaded, 1);

	AI_Output(self, hero, "Info_Mod_Gomez_HabDietrich_16_01"); //All right, hold on.

	AI_PlayAni	(self,"T_PRACTICEMAGIC5");

	AI_Output(self, hero, "Info_Mod_Gomez_HabDietrich_16_02"); //Here's the lock pick.

	B_GiveInvItems	(self, hero, ItKe_Lockpick_Mage, 1);

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_BEL_STAEBE, "The lock pick is magically charged and I can crack the chest now.");
};

INSTANCE Info_Mod_Gomez_Jagd01 (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_Jagd01_Condition;
	information	= Info_Mod_Gomez_Jagd01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gomez_Jagd01_Condition()
{
	if (hero.guild == GIL_KDF)
	&& (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_Jagd01_Info()
{
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd01_16_00"); //There you are again.
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd01_15_01"); //Were you waiting for me?
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd01_16_02"); //I wanted to invite you on a little hunting trip.
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd01_15_03"); //And why me?
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd01_16_04"); //Well... For a better acquaintance. So I can see what you've got.

	Info_ClearChoices	(Info_Mod_Gomez_Jagd01);

	Info_AddChoice	(Info_Mod_Gomez_Jagd01, "Maybe some other time. I don't have time right now.", Info_Mod_Gomez_Jagd01_B);
	Info_AddChoice	(Info_Mod_Gomez_Jagd01, "Gladly.", Info_Mod_Gomez_Jagd01_A);
};

FUNC VOID Info_Mod_Gomez_Jagd01_B()
{
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd01_B_15_00"); //Maybe some other time. I don't have time right now.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd01_B_16_01"); //That's too bad.

	Info_ClearChoices	(Info_Mod_Gomez_Jagd01);
};

FUNC VOID Info_Mod_Gomez_Jagd01_A()
{
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd01_A_15_00"); //Gladly.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd01_A_16_01"); //Outside the fortress, behind the dense forest, there is a huge plateau.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd01_A_16_02"); //You'll always find plenty of booty there.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd01_A_16_03"); //Let me know when we're on our way.

	Log_CreateTopic	(TOPIC_MOD_GOMEZHORN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GOMEZHORN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GOMEZHORN, "Gomez invited me to a hunt - I couldn't say no to it.");
	
	Mod_GomezHorn = 1;

	Info_ClearChoices	(Info_Mod_Gomez_Jagd01);
};

INSTANCE Info_Mod_Gomez_Jagd02 (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_Jagd02_Condition;
	information	= Info_Mod_Gomez_Jagd02_Info;
	permanent	= 0;
	important	= 0;
	description	= "We can leave now.";
};

FUNC INT Info_Mod_Gomez_Jagd02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gomez_Jagd01))
	&& (Mod_GomezHorn == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_Jagd02_Info()
{
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd02_15_00"); //We can leave now.
	AI_Output(self, hero, "DEFAULT"); //

	Wld_SendTrigger	("AUSENTORBURG");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "JAGD");
};

INSTANCE Info_Mod_Gomez_Jagd03 (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_Jagd03_Condition;
	information	= Info_Mod_Gomez_Jagd03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gomez_Jagd03_Condition()
{
	if (Npc_GetDistToWP(self, "PALTO_25") < 500)
	&& (Npc_KnowsInfo(hero, Info_Mod_Gomez_Jagd02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_Jagd03_Info()
{
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_16_00"); //Now we're all alone together.
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd03_15_01"); //Ouch...
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_16_02"); //It's about my time in the colony. Andokai and Xardas told me a lot about it, that I was a simple Buddler in the old camp.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_16_03"); //But I don't believe them. Me a digger and ass-kisser? Never ever!
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_16_04"); //They're hiding something from me.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_16_05"); //I noticed you were in the colony, too. So - did you know me from colony times?

	Info_ClearChoices	(Info_Mod_Gomez_Jagd03);

	Info_AddChoice	(Info_Mod_Gomez_Jagd03, "No. I never met you.", Info_Mod_Gomez_Jagd03_B);
	Info_AddChoice	(Info_Mod_Gomez_Jagd03, "Yeah.", Info_Mod_Gomez_Jagd03_A);
};

FUNC VOID Info_Mod_Gomez_Jagd03_C()
{
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_C_16_00"); //(quietly) Well, then, you don't seem to be able to help me greatly either. We should concentrate on the hunt, shouldn't we?
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd03_C_15_01"); //You say it.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_C_16_02"); //What do you say we make this a little contest?
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd03_C_15_03"); //Go right ahead.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_C_16_04"); //So, listen, we're both starting from here. Everyone has five minutes to kill as many rabbits as possible.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_C_16_05"); //Whoever killed the most rabbits after this time is the winner.

	B_LogEntry	(TOPIC_MOD_GOMEZHORN, "I agreed to a competition with Gomez: If you manage to kill more rabbits in five minutes, you are the winner.");

	Info_ClearChoices	(Info_Mod_Gomez_Jagd03);

	Info_AddChoice	(Info_Mod_Gomez_Jagd03, "I'm ready.", Info_Mod_Gomez_Jagd03_G);
	Info_AddChoice	(Info_Mod_Gomez_Jagd03, "What is the reward?", Info_Mod_Gomez_Jagd03_F);
};

FUNC VOID Info_Mod_Gomez_Jagd03_G()
{
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd03_G_15_00"); //I'm ready.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Gomez_Jagd03);

	self.aivar[AIV_Partymember] = TRUE;

	self.guild = GIL_KDF;
	Npc_SetTrueGuild	(self, GIL_KDF);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "HASENJAGD");

	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_01");

	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_02");

	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_03");

	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_04");

	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_05");

	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_06");

	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_07");

	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_08");

	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");
	Wld_InsertNpc	(Rabbit_Gomez,	"FP_ROAM_RABBITS_GOMEZ_09");

	Mod_Gomez_Timer = 300;
};

FUNC VOID Info_Mod_Gomez_Jagd03_F()
{
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd03_F_15_00"); //What is the reward?
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_F_16_01"); //It's only honor here.
};

FUNC VOID Info_Mod_Gomez_Jagd03_B()
{
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd03_B_15_00"); //No. I never met you.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_B_16_01"); //How unfortunate. I'm gonna have to do more research.

	Info_Mod_Gomez_Jagd03_C();
};

FUNC VOID Info_Mod_Gomez_Jagd03_A()
{
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd03_A_15_00"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_A_16_01"); //Then tell me about it.

	Info_ClearChoices	(Info_Mod_Gomez_Jagd03);

	Info_AddChoice	(Info_Mod_Gomez_Jagd03, "You've been the most powerful man in the dome for years.", Info_Mod_Gomez_Jagd03_E);
	Info_AddChoice	(Info_Mod_Gomez_Jagd03, "Xardas and Andokai are right - you were just a Buddler.", Info_Mod_Gomez_Jagd03_D);
};

FUNC VOID Info_Mod_Gomez_Jagd03_E()
{
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd03_E_15_00"); //You've been the most powerful man in the dome for years.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_E_16_01"); //He did time. Then how did it get this far?
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd03_E_15_02"); //Uh... I don't really know. Except you were overthrown.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_E_16_03"); //That's interesting to know. Some more research will be needed.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_E_16_04"); //By the way, if you still want to go hunting, don't force yourself. The meadows are full of animals.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_E_16_05"); //I don't have time for this now.

	B_SetTopicStatus	(TOPIC_MOD_GOMEZHORN, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Gomez_Jagd03);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

FUNC VOID Info_Mod_Gomez_Jagd03_D()
{
	AI_Output(hero, self, "Info_Mod_Gomez_Jagd03_D_15_00"); //Xardas and Andokai are right - you were just a Buddler.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_D_16_01"); //And I still don't believe it. Maybe I had some activities you didn't even notice.
	AI_Output(self, hero, "Info_Mod_Gomez_Jagd03_D_16_02"); //But I wasn't just an ordinary Buddler!

	Info_Mod_Gomez_Jagd03_C();
};

INSTANCE Info_Mod_Gomez_Jagd04 (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_Jagd04_Condition;
	information	= Info_Mod_Gomez_Jagd04_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gomez_Jagd04_Condition()
{
	if (Mod_Gomez_Timer == 0)
	&& (Mod_Gomez_HasenKiller+Mod_Gomez_HasenKiller2 > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_Jagd04_Info()
{
	self.guild = GIL_DMT;
	Npc_SetTrueGuild	(self, GIL_DMT);

	if (Mod_Gomez_HasenKiller >= Mod_Gomez_HasenKiller2)
	{
		AI_Output(self, hero, "Info_Mod_Gomez_Jagd04_16_00"); //Now who's the best now?
		AI_Output(hero, self, "Info_Mod_Gomez_Jagd04_15_01"); //You just got lucky.
		AI_Output(self, hero, "Info_Mod_Gomez_Jagd04_16_02"); //Yeah, believe that. But I know better.
		AI_Output(self, hero, "Info_Mod_Gomez_Jagd04_16_03"); //I'm going back to the fortress and have a cold beer.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Gomez_Jagd04_16_04"); //Today the hunting luck wasn't on my side.
		AI_Output(hero, self, "Info_Mod_Gomez_Jagd04_15_05"); //Must be like that.
		AI_Output(self, hero, "Info_Mod_Gomez_Jagd04_16_06"); //I'll think of something until next time.
		AI_Output(self, hero, "Info_Mod_Gomez_Jagd04_16_07"); //But now I'm going back to the fortress and have a cold beer.

		B_GivePlayerXP	(250);
	};

	B_SetTopicStatus	(TOPIC_MOD_GOMEZHORN, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Gomez_DuHier (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_DuHier_Condition;
	information	= Info_Mod_Gomez_DuHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "You here? How did you get here?";
};

FUNC INT Info_Mod_Gomez_DuHier_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gomez_DuHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Gomez_DuHier_15_00"); //You here? How did you get here?
	AI_Output(self, hero, "Info_Mod_Gomez_DuHier_16_01"); //You want to know the whole story? It's pretty complicated.
	AI_Output(hero, self, "Info_Mod_Gomez_DuHier_15_02"); //Sure!
	AI_Output(self, hero, "Info_Mod_Gomez_DuHier_16_03"); //It starts in Myrtana, in my time as diplomat of King Rhobar.
	AI_Output(self, hero, "Info_Mod_Gomez_DuHier_16_04"); //It all started with the King uncovering my collaboration with the orcs, where I had earned a little extra bread.
	AI_Output(self, hero, "Info_Mod_Gomez_DuHier_16_05"); //Oh yes, that was fun - to see the disappointed face of the old sack, it was worth it.
	AI_Output(self, hero, "Info_Mod_Gomez_DuHier_16_06"); //As punishment, I was of course thrown into the barrier, as was customary at the time.
	AI_Output(self, hero, "Info_Mod_Gomez_DuHier_16_07"); //At other times the rope would have expected me, but the ore was more important to the king than my death.
	AI_Output(self, hero, "Info_Mod_Gomez_DuHier_16_08"); //And as we all knew, the barrier had not been built for ever to be lifted again, so all criminals could be put in with a clear conscience.
	AI_Output(self, hero, "Info_Mod_Gomez_DuHier_16_09"); //I can hardly remember the time in the dome.
	AI_Output(self, hero, "Info_Mod_Gomez_DuHier_16_10"); //I remember that a small camp was set up at the foot of the mountain with the exchange point where the other prisoners were.
	AI_Output(self, hero, "Info_Mod_Gomez_DuHier_16_11"); //Seems to have been a hard time - I first came to consciousness here, under Xardas' eyes.
};

INSTANCE Info_Mod_Gomez_Angebot (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_Angebot_Condition;
	information	= Info_Mod_Gomez_Angebot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gomez_Angebot_Condition()
{
	if (Hat_BuddlerNachrichtVonAL == TRUE)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_Angebot_Info()
{
	AI_UnequipWeapons	(hero);

	AI_Output(self, hero, "Info_Mod_Gomez_Angebot_16_00"); //Hey, what do you want?
	AI_Output(hero, self, "Info_Mod_Gomez_Angebot_15_01"); //I'm from the Old Camp and I want to make Raven an offer.
	AI_Output(self, hero, "Info_Mod_Gomez_Angebot_16_02"); //Old camp? Why is this stinging me again? Damn, if I could just remember what was before that old witch and Raven brought me to the Demon Knights....
	AI_Output(hero, self, "Info_Mod_Gomez_Angebot_15_03"); //Believe me, it's better if you don't remember.
	AI_Output(self, hero, "Info_Mod_Gomez_Angebot_16_04"); //Now that I think about it, I think I've seen your face and now that I see it again, I feel the need to sink my axe into it.
	AI_Output(hero, self, "Info_Mod_Gomez_Angebot_15_05"); //I think it's better if you let me pass by now, I'm sending a request from the Archbarones to Raven.
	AI_Output(self, hero, "Info_Mod_Gomez_Angebot_16_06"); //Er Barone, you say? I've heard that, too. Over time, my memories come back pretty vague. The first days in the Minental... then I ran a camp and Raven ruled with me....
	AI_Output(self, hero, "Info_Mod_Gomez_Angebot_16_07"); //There was another camp we fought against. Then someone knocked me down and I woke up with Xardas without memories. If I can get my hands on this dog that's been...
	AI_Output(hero, self, "Info_Mod_Gomez_Angebot_15_08"); //(nervous) Well, I have to go to Raven's now, I...
	AI_Output(self, hero, "Info_Mod_Gomez_Angebot_16_09"); //Nowhere to go! It was a mistake to cross my eyes again! I've lost my camp and memory to you, but now you're losing your head!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

INSTANCE Info_Mod_Gomez_AtAL (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_AtAL_Condition;
	information	= Info_Mod_Gomez_AtAL_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gomez_AtAL_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_DaemonenritterWache_Hi))
	&& (!Npc_IsInState(Mod_7066_DMR_Daemonenritter_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_AtAL_Info()
{
	AI_TurnToNpc	(self, Mod_7066_DMR_Daemonenritter_MT);

	AI_Output(self, hero, "Info_Mod_Gomez_AtAL_16_00"); //Someone I want to hear, and now shut up if you don't want me to cut your tongue out.
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Gomez_AtAL2 (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_AtAL2_Condition;
	information	= Info_Mod_Gomez_AtAL2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gomez_AtAL2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_DaemonenritterWache_Hi))
	&& (!Npc_IsInState(Mod_7066_DMR_Daemonenritter_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_AtAL2_Info()
{
	AI_Output(self, hero, "Info_Mod_Gomez_AtAL2_16_00"); //So, young warrior, say what you have to say and may the gods have mercy on you if it's not really important.
};

INSTANCE Info_Mod_Gomez_AtAL2_A (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_AtAL2_A_Condition;
	information	= Info_Mod_Gomez_AtAL2_A_Info;
	permanent	= 0;
	important	= 0;
	description	= "The guards outside the camp are attacked.";
};

FUNC INT Info_Mod_Gomez_AtAL2_A_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gomez_AtAL2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Gomez_AtAL2_B))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_AtAL2_A_Info()
{
	AI_Output(hero, self, "Info_Mod_Gomez_AtAL2_A_15_00"); //The guards outside the camp are attacked. We need you in person.
	AI_Output(self, hero, "Info_Mod_Gomez_AtAL2_A_16_01"); //if those losers can't handle it on their own, it's their fault... as long as no one attacks in the camp, I don't care. Another what?
};

INSTANCE Info_Mod_Gomez_AtAL2_B (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_AtAL2_B_Condition;
	information	= Info_Mod_Gomez_AtAL2_B_Info;
	permanent	= 0;
	important	= 0;
	description	= "On one of the high seats outside the camp, one of our people is going crazy and shooting at them.";
};

FUNC INT Info_Mod_Gomez_AtAL2_B_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gomez_AtAL2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_AtAL2_B_Info()
{
	AI_Output(hero, self, "Info_Mod_Gomez_AtAL2_B_15_00"); //On one of the high seats outside the camp, one of our people is going crazy and shooting at them. He's too strong for us, we need you personally.
	AI_Output(self, hero, "Info_Mod_Gomez_AtAL2_B_16_01"); //A traitor? That's what worries me. I think I should take care of this guy before he causes losses inside the camp.

	B_LogEntry	(TOPIC_MOD_AL_LOCKVOGEL, "Gomez leaves the camp.... now we knew he was dead!");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "OUTDOOR");

	B_StartOtherRoutine	(Mod_1874_HMG_Makanius_MT, "OUTDOOR");
	AI_Teleport	(Mod_1874_HMG_Makanius_MT, "OC1");

	B_StartOtherRoutine	(Mod_7039_PAL_Oric_MT, "OUTDOOR");
	AI_Teleport	(Mod_7039_PAL_Oric_MT, "OC1");

	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "OUTDOOR");
	AI_Teleport	(Mod_1870_EBR_Alissandro_MT, "OC1");
};

INSTANCE Info_Mod_Gomez_AtAL2_C (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_AtAL2_C_Condition;
	information	= Info_Mod_Gomez_AtAL2_C_Info;
	permanent	= 0;
	important	= 0;
	description	= "Alissandro wants to negotiate.";
};

FUNC INT Info_Mod_Gomez_AtAL2_C_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gomez_AtAL2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Gomez_AtAL2_B))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_AtAL2_C_Info()
{
	AI_Output(hero, self, "Info_Mod_Gomez_AtAL2_C_15_00"); //Alissandro wants to negotiate. However, he insists on seeing you in person and without armed escort.
	AI_Output(self, hero, "Info_Mod_Gomez_AtAL2_C_16_01"); //Does that old bastard think I'm stupid? Smells like a trap. Negotiations are conducted on my terms.
};

INSTANCE Info_Mod_Gomez_AtAL3 (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_AtAL3_Condition;
	information	= Info_Mod_Gomez_AtAL3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gomez_AtAL3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_Oric))
	&& (!Npc_IsInState(Mod_520_DMR_Raven_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gomez_AtAL3_Info()
{
	AI_TurnToNpc	(self, Mod_520_DMR_Raven_MT);

	AI_Output(self, hero, "Info_Mod_Gomez_AtAL3_16_00"); //What was that about? You want to take my camp back? You don't have to order me, Raven.
	AI_Output(self, hero, "Info_Mod_Gomez_AtAL3_16_01"); //I used to be the one who gave you the orders, and just because you suck up to Xardas, you don't have the right to decide things like that.
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Gomez_Pickpocket (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_Pickpocket_Condition;
	information	= Info_Mod_Gomez_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Gomez_Pickpocket_Condition()
{
	C_Beklauen	(160, ItMi_Gold, 106);
};

FUNC VOID Info_Mod_Gomez_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gomez_Pickpocket);

	Info_AddChoice	(Info_Mod_Gomez_Pickpocket, DIALOG_BACK, Info_Mod_Gomez_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gomez_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gomez_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gomez_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gomez_Pickpocket);
};

FUNC VOID Info_Mod_Gomez_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gomez_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gomez_Pickpocket);

		Info_AddChoice	(Info_Mod_Gomez_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gomez_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gomez_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gomez_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gomez_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gomez_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gomez_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gomez_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gomez_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gomez_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Gomez_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gomez_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gomez_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gomez_EXIT (C_INFO)
{
	npc		= Mod_517_DMR_Gomez_MT;
	nr		= 1;
	condition	= Info_Mod_Gomez_EXIT_Condition;
	information	= Info_Mod_Gomez_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gomez_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gomez_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
