INSTANCE Info_Mod_Albi_Hi (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Hi_Condition;
	information	= Info_Mod_Albi_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Hi_Condition()
{
	if (Mod_Echsis == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Hi_23_00"); //Shhhhhhhhhhhhhhhhhhhhhhhhhhhhhzzz.
	AI_Output(hero, self, "Info_Mod_Albi_Hi_15_01"); //Would you mind repeating that?
	AI_Output(self, hero, "Info_Mod_Albi_Hi_23_02"); //Shhhhschshshshshshshshshshshhhhhhhhhhhhhhhhh.

	Info_ClearChoices	(Info_Mod_Albi_Hi);

	Info_AddChoice	(Info_Mod_Albi_Hi, "Try again, gaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", Info_Mod_Albi_Hi_B);
	Info_AddChoice	(Info_Mod_Albi_Hi, "I don't understand a word.", Info_Mod_Albi_Hi_A);
};

FUNC VOID Info_Mod_Albi_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Albi_Hi_C_23_00"); //Do you understand me?
	AI_Output(hero, self, "Info_Mod_Albi_Hi_C_15_01"); //You speak the language of the builders?
	AI_Output(self, hero, "Info_Mod_Albi_Hi_C_23_02"); //Do you understand what I'm saying?
	AI_Output(hero, self, "Info_Mod_Albi_Hi_C_15_03"); //Yes... you asked me if I understood...?
	AI_Output(self, hero, "Info_Mod_Albi_Hi_C_23_04"); //I meant before that!

	Info_ClearChoices	(Info_Mod_Albi_Hi);

	Info_AddChoice	(Info_Mod_Albi_Hi, "Um... like shhcschsh?", Info_Mod_Albi_Hi_E);
	Info_AddChoice	(Info_Mod_Albi_Hi, "No, not a word.", Info_Mod_Albi_Hi_D);
};

FUNC VOID Info_Mod_Albi_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_B_15_00"); //Try again, gaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

	Info_Mod_Albi_Hi_C();
};

FUNC VOID Info_Mod_Albi_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_A_15_00"); //I don't understand a word.

	Info_Mod_Albi_Hi_C();
};

FUNC VOID Info_Mod_Albi_Hi_F()
{
	AI_Output(self, hero, "Info_Mod_Albi_Hi_F_23_00"); //I offered you your freedom if you can tell me what color my dandruff is.

	Info_ClearChoices	(Info_Mod_Albi_Hi);

	Info_AddChoice	(Info_Mod_Albi_Hi, "White!!!!!", Info_Mod_Albi_Hi_H);
	Info_AddChoice	(Info_Mod_Albi_Hi, "Why?", Info_Mod_Albi_Hi_G);
};

FUNC VOID Info_Mod_Albi_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_E_15_00"); //Um... like shhcschsh?

	Info_Mod_Albi_Hi_F();
};

FUNC VOID Info_Mod_Albi_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_D_15_00"); //No, not a word.

	Info_Mod_Albi_Hi_F();
};

FUNC VOID Info_Mod_Albi_Hi_I()
{
	AI_Output(self, hero, "Info_Mod_Albi_Hi_I_23_00"); //I had to find out if you speak our language. Obviously not.
	AI_Output(hero, self, "Info_Mod_Albi_Hi_I_15_01"); //I'll repeat myself, but why?!
	AI_Output(self, hero, "Info_Mod_Albi_Hi_I_23_02"); //I need your help. And only someone who doesn't speak our language can help me.

	Info_ClearChoices	(Info_Mod_Albi_Hi);

	Info_AddChoice	(Info_Mod_Albi_Hi, "What makes you think I'm gonna help you?", Info_Mod_Albi_Hi_K);
	Info_AddChoice	(Info_Mod_Albi_Hi, "What's this about?", Info_Mod_Albi_Hi_J);
};

FUNC VOID Info_Mod_Albi_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_H_15_00"); //White!!!!!
	AI_Output(self, hero, "Info_Mod_Albi_Hi_H_23_01"); //Shut up!

	Info_Mod_Albi_Hi_I();
};

FUNC VOID Info_Mod_Albi_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_G_15_00"); //Why?

	Info_Mod_Albi_Hi_I();
};

FUNC VOID Info_Mod_Albi_Hi_J()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_J_15_00"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Albi_Hi_J_23_01"); //You must go to the other side of the swamp. But I'll tell you more tomorrow.
	AI_Output(self, hero, "Info_Mod_Albi_Hi_J_23_02"); //Get some rest and come to the city exit tomorrow.
	AI_Output(self, hero, "Info_Mod_Albi_Hi_J_23_03"); //But find a place to sleep outside the huts!
	AI_Output(hero, self, "Info_Mod_Albi_Hi_J_15_04"); //All right...
	AI_Output(self, hero, "Info_Mod_Albi_Hi_J_23_05"); //Here, take this.

	B_GiveInvItems	(self, hero, ItMi_MerkwuerdigesDing, 1);

	B_Say	(hero, self, "$WASISTDAS");

	AI_Output(self, hero, "Info_Mod_Albi_Hi_J_23_06"); //Put it in the fire in the forge. Take what's left. You can buy herbs from the lizard dealer. You're gonna need it. Go away now.

	Mod_EchsenTag = Wld_GetDay();

	Mod_Echsis = 4;

	Info_ClearChoices	(Info_Mod_Albi_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "HUT");

	B_LogEntry	(TOPIC_MOD_ECHSEN, "Albi, apparently the head of the lizard people, has an important task for me. Unfortunately, they also confiscated all of my equipment. He gave me a strange thing. I'm supposed to set it on fire in the forge and take what's left. I can buy medicinal herbs from the lizard dealer. Tomorrow I shall go to the exit of the city, where Albi will tell me more about my task.");
};

FUNC VOID Info_Mod_Albi_Hi_K()
{
	AI_Output(hero, self, "Info_Mod_Albi_Hi_K_15_00"); //What makes you think I'm gonna help you?
	AI_Output(self, hero, "Info_Mod_Albi_Hi_K_23_01"); //For one thing, we have all your possessions.
	AI_Output(self, hero, "Info_Mod_Albi_Hi_K_23_02"); //On the other hand, you are a prisoner and if you don't help us, we will put you with the sharks.
	AI_Output(hero, self, "Info_Mod_Albi_Hi_K_15_03"); //Convinced.

	Info_Mod_Albi_Hi_J();
};

INSTANCE Info_Mod_Albi_Wuerdebeweis (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Wuerdebeweis_Condition;
	information	= Info_Mod_Albi_Wuerdebeweis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Wuerdebeweis_Condition()
{
	if (Mod_Echsis == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Wuerdebeweis_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Wuerdebeweis_23_00"); //You have to get through a ritual. Defeat the shark and you are worthy!
	AI_Output(hero, self, "Info_Mod_Albi_Wuerdebeweis_15_01"); //And where's my armor and gun?
	AI_Output(self, hero, "Info_Mod_Albi_Wuerdebeweis_23_02"); //YOU shall defeat him and not your sword! Fight now!

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ECHSEN, "I'm supposed to prove I'm worthy by killing a bog shark without armor and weapon. Well, this can be fun...");

	Wld_InsertNpc	(Sumpfhai_11023_AW,	"BL_DOWN_01");
};

INSTANCE Info_Mod_Albi_Wuerdebewiesen (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Wuerdebewiesen_Condition;
	information	= Info_Mod_Albi_Wuerdebewiesen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Wuerdebewiesen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Wuerdebeweis))
	&& (Npc_IsDead(Sumpfhai_11023_AW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Wuerdebewiesen_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Wuerdebewiesen_23_00"); //You are worthy. Here, take this. You can now move freely in the swamp.

	B_GiveInvItems	(self, hero, ItAr_Echsi_01, 1);

	AI_EquipArmor	(hero, ItAr_Echsi_01);

	AI_Output(hero, self, "Info_Mod_Albi_Wuerdebewiesen_15_01"); //You mean I can go?
	AI_Output(self, hero, "Info_Mod_Albi_Wuerdebewiesen_23_02"); //I said swamp. Come to my cabin. We'll talk there.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ECHSEN, "I've proven I'm worthy. Strangely enough, the swamp shark was already very weakened.... Well, anyway, I'm allowed to move freely in the swamp now. But I'm not allowed to leave him yet. He wants me to come to Albi's hut, where he will probably explain more.");

	B_GivePlayerXP	(500);

	B_StartOtherRoutine	(self, "HUT");

	Mod_12004_DRA_Wache_AW.aivar[AIV_PASSGATE] = TRUE;
	Mod_12005_DRA_Wache_AW.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Albi_AtHut (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_AtHut_Condition;
	information	= Info_Mod_Albi_AtHut_Info;
	permanent	= 0;
	important	= 0;
	description	= "What was that about?";
};

FUNC INT Info_Mod_Albi_AtHut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Wuerdebewiesen))
	&& (Npc_GetDistToWP(self, "BL_BLOODWYN_BOOK") < 1000)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_AtHut_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_AtHut_15_00"); //What was that about?
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_01"); //The fight? Some kind of rite of passage.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_02"); //Our youngsters are not allowed to leave the city until they defeat a swamp shark in battle, unarmed.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_03"); //That's how I took the suspicion away from you, at least a little bit.
	AI_Output(hero, self, "Info_Mod_Albi_AtHut_15_04"); //What's the whole con? The swamp shark was half dead when they brought him here.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_05"); //Are you not listening to me or don't you understand me?
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_06"); //I NEED YOU. And not here in the city and not as swamp shark food, as what you would have ended without your steel skin and your iron claws.
	AI_Output(hero, self, "Info_Mod_Albi_AtHut_15_07"); //Why me? Why don't you send a lizard?
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_08"); //Shut up! You're not in the position to ask questions.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_09"); //You will now go to the southern part of the swamp, this part is inhabited by marsh golems.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_10"); //That's where you'll be looking for my brother.
	AI_Output(hero, self, "Info_Mod_Albi_AtHut_15_11"); //Another lizard?
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_12"); //Another white lizard. You MUST find her. Not only your life depends on it.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_13"); //If he's still alive, it's imperative that you bring him here.
	AI_Output(self, hero, "Info_Mod_Albi_AtHut_23_14"); //If he's dead, don't forget to bring me the key he's carrying.

	B_LogEntry	(TOPIC_MOD_ECHSEN, "The whole swindle with the sumphaic fight served to make the other lizards accept me and I can leave the camp. Albi has a task in the swamp for me, for which he apparently cannot park a normal lizard. I'm supposed to be looking for his brother in the southern part of the swamp where the marsh golems live. If he's still alive, let me take him to town, or else I'll take the key to Albi, who is carrying it.");

	Wld_InsertNpc	(Mod_12006_DRA_Echse_AW,	"ADW_SWAMP_07");

	B_KillNpc	(Mod_12006_DRA_Echse_AW);
};

INSTANCE Info_Mod_Albi_KeyGefunden (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_KeyGefunden_Condition;
	information	= Info_Mod_Albi_KeyGefunden_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_KeyGefunden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_AtHut))
	&& (Npc_HasItems(hero, ItKe_EchsenKey) == 1)
	&& (Npc_HasItems(hero, ItAr_Echsi_01) == 1)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_KeyGefunden_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_KeyGefunden_23_00"); //There you are at last! Did you find my brother?
	AI_Output(hero, self, "Info_Mod_Albi_KeyGefunden_15_01"); //Yeah, I'm afraid the Golems must have found him before I did. Here's the key.

	B_GiveInvItems	(hero, self, ItKe_EchsenKey, 1);

	AI_Output(self, hero, "Info_Mod_Albi_KeyGefunden_23_02"); //Shhhhhhhhhhhhhhhhhhhhhhhhhhhhhzzz.
	AI_Output(hero, self, "Info_Mod_Albi_KeyGefunden_15_03"); //Can I go now?
	AI_Output(self, hero, "Info_Mod_Albi_KeyGefunden_23_04"); //Yes, leave. Your things are in the trunk there. Here's the key.

	B_GiveInvItems	(self, hero, ITKE_Addon_Thorus, 1);

	AI_Output(self, hero, "Info_Mod_Albi_KeyGefunden_23_05"); //And here.... Wear this armor and the guards at the gate will let you pass.

	AI_UnequipArmor	(hero);

	Npc_RemoveInvItems	(hero, ItAr_Echsi_01, 1);

	B_GiveInvItems	(self, hero, ItAr_Echsi_02, 1);

	AI_EquipArmor	(hero, ItAr_Echsi_02);

	B_LogEntry	(TOPIC_MOD_ECHSEN, "Albi seems to be unhappy about his brother's death, but I can now leave the swamp.");
	B_SetTopicStatus	(TOPIC_MOD_ECHSEN, LOG_SUCCESS);

	Mod_12000_DRA_Wache_AW.aivar[AIV_PASSGATE] = TRUE;
	Mod_12001_DRA_Wache_AW.aivar[AIV_PASSGATE] = TRUE;

	B_GivePlayerXP	(1000);
};

INSTANCE Info_Mod_Albi_FokusEinsetzen (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_FokusEinsetzen_Condition;
	information	= Info_Mod_Albi_FokusEinsetzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you make sure I get to the top of town?";
};

FUNC INT Info_Mod_Albi_FokusEinsetzen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_KeyGefunden))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_FokusEinsetzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_FokusEinsetzen_15_00"); //Can you make sure I get to the top of town?
	AI_Output(self, hero, "Info_Mod_Albi_FokusEinsetzen_23_01"); //Of course, but only adult lizards are allowed in the upper town.
	AI_Output(self, hero, "Info_Mod_Albi_FokusEinsetzen_23_02"); //You may be a lizard now, but you're not yet an adult.
	AI_Output(hero, self, "Info_Mod_Albi_FokusEinsetzen_15_03"); //I could have sworn it was the other way around.
	AI_Output(self, hero, "Info_Mod_Albi_FokusEinsetzen_23_04"); //Shut up! If you want to go to the upper town, earn it and make yourself useful!
	AI_Output(hero, self, "Info_Mod_Albi_FokusEinsetzen_15_05"); //It's hard to make me useful when I don't understand anyone.
	AI_Output(self, hero, "Info_Mod_Albi_FokusEinsetzen_23_06"); //I'll talk to the lizards. Talk to them tomorrow, if they have anything for you to do, they'll give you a note.
	AI_Output(hero, self, "Info_Mod_Albi_FokusEinsetzen_15_07"); //Wouldn't it be easier if I learned your language?
	AI_Output(self, hero, "Info_Mod_Albi_FokusEinsetzen_23_08"); //YOU MAY not learn our language, and now leave me alone, I'll go to the upper town.
	AI_Output(self, hero, "Info_Mod_Albi_FokusEinsetzen_23_09"); //If you've proven yourself worthy, I'll wait for you outside the gate.

	Log_CreateTopic	(TOPIC_MOD_ECHSEN_VERTRAUEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ECHSEN_VERTRAUEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ECHSEN_VERTRAUEN, "To get to the upper city of lizards, I need to win their trust. Tomorrow, the lizards who have a job for me will give me a note. If I've done enough work, Albi will be expecting me.");

	Mod_Albi_VertrauensTag = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MINE");
};

INSTANCE Info_Mod_Albi_VertrauenGewonnen (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_VertrauenGewonnen_Condition;
	information	= Info_Mod_Albi_VertrauenGewonnen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_VertrauenGewonnen_Condition()
{
	if (Mod_EchsenQuest == 1)
	&& (Npc_HasItems(hero, ItMi_Focus_Kloster) == 1)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_VertrauenGewonnen_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_VertrauenGewonnen_23_00"); //You seem to have made yourself really useful. Almost everything is ready. You may go.
	AI_Output(hero, self, "Info_Mod_Albi_VertrauenGewonnen_15_01"); //What?
	AI_Output(self, hero, "Info_Mod_Albi_VertrauenGewonnen_23_02"); //You are free to leave the swamp! Now go.
	AI_Output(hero, self, "Info_Mod_Albi_VertrauenGewonnen_15_03"); //But I have to go to the upper town!
	AI_Output(self, hero, "Info_Mod_Albi_VertrauenGewonnen_23_04"); //The upper town? I told you, only adults are allowed in the upper town. What are you doing there anyway?
	AI_Output(hero, self, "Info_Mod_Albi_VertrauenGewonnen_15_05"); //I want to place this blue stone on a pedestal in front of the temple.

	B_GiveInvItems	(hero, self, ItMi_Focus_Kloster, 1);

	AI_Output(self, hero, "Info_Mod_Albi_VertrauenGewonnen_23_06"); //Well, you helped me a lot, I'll do it for you, but not now, I've got work to do!

	B_LogEntry	(TOPIC_MOD_ECHSEN_VERTRAUEN, "I have won the trust of the lizards and Albi will focus on me in the Upper Town.");
	B_SetTopicStatus	(TOPIC_MOD_ECHSEN_VERTRAUEN, LOG_SUCCESS);

	B_GivePlayerXP	(1000);

	AI_StopProcessInfos	(self);

	Mod_EchsenQuest = 2;
};

INSTANCE Info_Mod_Albi_Kap4Stab (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Kap4Stab_Condition;
	information	= Info_Mod_Albi_Kap4Stab_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Kap4Stab_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_VertrauenGewonnen))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrizielKaputt))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Kap4Stab_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_00"); //You're back....
	AI_Output(hero, self, "Info_Mod_Albi_Kap4Stab_15_01"); //I must go to the temple.
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_02"); //Only fully-fledged warriors are allowed to go to the temple... but you came at the right time, we're on the verge of a battle.
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_03"); //If you fight, the guards will take you to the temple.
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_04"); //I'll let them go into battle, but you do a job for me.
	AI_Output(hero, self, "Info_Mod_Albi_Kap4Stab_15_05"); //All right, all right. What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_06"); //You need a gun. None of the small human weapons, you need a warrior dagger.
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_07"); //You'll have to bring a swamp shark tooth to every black lizard in the tribe.
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_08"); //Besides, you need the spine of a swamp crawler.
	AI_Output(self, hero, "Info_Mod_Albi_Kap4Stab_23_09"); //You'll have to go to a cave in the northern swamp. There's a guard there, she'll let you in.

	Log_CreateTopic	(TOPIC_MOD_ECHSEN_SCHLACHT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ECHSEN_SCHLACHT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ECHSEN_SCHLACHT, "Albi wants me to get me a warrior dagger. I'm supposed to bring a swamp shark tooth to every black lizard. In addition, I need the spine of a swamp crawler. I find such a specimen in a cave north of the marsh shark farm.");

	Mod_12017_DRA_Wache_AW.aivar[AIV_PASSGATE] = TRUE;

	Wld_InsertNpc	(SwampCrawler, "ADW_CANYON_PATH_TO_BANDITS_06E");
};

INSTANCE Info_Mod_Albi_Schlacht (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Schlacht_Condition;
	information	= Info_Mod_Albi_Schlacht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here, the spine.";
};

FUNC INT Info_Mod_Albi_Schlacht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Kap4Stab))
	&& (Npc_HasItems(hero, ItAt_Wirbelsaeule) == 1)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Schlacht_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht_15_00"); //Here, the spine.

	B_GiveInvItems	(hero, self, ItAt_Wirbelsaeule, 1);

	AI_Output(self, hero, "Info_Mod_Albi_Schlacht_23_01"); //Good. Come to my cabin at night and you'll be promoted to a contender.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht_23_02"); //If you then go with us into battle, you may enter the temple. Go away now.

	if (Mod_ECHSI_SumpfhaiZaehne < 5)
	{
		AI_Output(self, hero, "Info_Mod_Albi_Schlacht_23_03"); //And don't forget to bring the black lizards the swamp sharks.
	};

	B_LogEntry	(TOPIC_MOD_ECHSEN_SCHLACHT, "I'm supposed to come back to Albi tonight, then I'll be a candidate.");
};

INSTANCE Info_Mod_Albi_Schlacht2 (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Schlacht2_Condition;
	information	= Info_Mod_Albi_Schlacht2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Schlacht2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Schlacht))
	&& (Mod_ECHSI_SumpfhaiZaehne == 5)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Schlacht2_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_00"); //You're ready for battle.

	B_GiveInvItems	(self, hero, ItMw_EchsenKriegerDolch, 1);

	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_01"); //Now there's only one problem with the golems.
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht2_15_02"); //Golems? I didn't see a single one of them when I first came here.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_03"); //That's the problem.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_04"); //The war between the lizards and the golems is as old as our two races.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_05"); //The swamp itself spits out the slimy beasts, we lizards hatch out of eggs.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_06"); //But for that we need the Golems.
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht2_15_07"); //You need your enemies to procreate? Sounds like love-hate relationship.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_08"); //SCHWEIG! We're not like you people, we're warriors.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_09"); //Our females live outside the city, under the surface of the swamp.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_10"); //We fight against the golems, the warriors who fall in battle, donate the seed.
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht2_15_11"); //So without Golems, no descendants.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_12"); //Yeah. And as long as no new lizards hatch, I will remain the only white lizard....
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht2_15_13"); //Are you feeling lonely or what's your problem? And anyway, where should I get swamp golems from?
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_14"); //Watch your tongue, man! My reasons are none of your business.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_15"); //I need you to get in the swamp. Here.

	B_GiveInvItems	(self, hero, ItKe_EchsenKey2, 1);

	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_16"); //The key opens a door in the south of the swamp.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_17"); //You're gonna open it, and then you're gonna turn around and run back here.
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht2_15_18"); //Is that an order?
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht2_23_19"); //No, that's just advice. The battle begins when you open the door.

	B_LogEntry	(TOPIC_MOD_ECHSEN_SCHLACHT, "I'm supposed to come back to Albi tonight, then I'll be a candidate.");
};

INSTANCE Info_Mod_Albi_Schlacht3 (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Schlacht3_Condition;
	information	= Info_Mod_Albi_Schlacht3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Schlacht3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Schlacht2))
	&& (Mod_HQ_AlraunenTor == 3)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Schlacht3_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht3_23_00"); //The battle is over, you fought well... for a human being.
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht3_23_01"); //You can go to the upper part of town.
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht3_15_02"); //What about the temple?
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht3_23_03"); //The temple? What's wrong with it?
	AI_Output(hero, self, "Info_Mod_Albi_Schlacht3_15_04"); //Can I come in?
	AI_Output(self, hero, "Info_Mod_Albi_Schlacht3_23_05"); //You can try, but the doors are thick. Take a good look at them.

	B_SetTopicStatus	(TOPIC_MOD_ECHSEN_SCHLACHT, LOG_SUCCESS);

	B_GivePlayerXP	(1000);

	Mod_12008_DRA_Wache_AW.aivar[AIV_PassGate] = TRUE;
};

INSTANCE Info_Mod_Albi_Mutantengolem (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Mutantengolem_Condition;
	information	= Info_Mod_Albi_Mutantengolem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Mutantengolem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Schlacht3))
	&& (Mod_Mutantengolem == 4)
	&& (Npc_IsDead(Monster_11057_Mutantengolem_AW))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Mutantengolem_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Mutantengolem_23_00"); //That was close... you fought well. For a human being.
	AI_Output(hero, self, "Info_Mod_Albi_Mutantengolem_15_01"); //What was that thing?
	AI_Output(self, hero, "Info_Mod_Albi_Mutantengolem_23_02"); //A swamp golem... But something has changed him. I have to look into it....
	AI_Output(self, hero, "Info_Mod_Albi_Mutantengolem_23_03"); //I can only hope that next litter, white lizards hatch.

	Info_ClearChoices	(Info_Mod_Albi_Mutantengolem);

	Info_AddChoice	(Info_Mod_Albi_Mutantengolem, "What's it got to do with you white lizards and the golems?", Info_Mod_Albi_Mutantengolem_C);
	Info_AddChoice	(Info_Mod_Albi_Mutantengolem, "Anything I can do for you?", Info_Mod_Albi_Mutantengolem_B);
	Info_AddChoice	(Info_Mod_Albi_Mutantengolem, "Anyway, I'm going to the temple.", Info_Mod_Albi_Mutantengolem_A);
};

FUNC VOID Info_Mod_Albi_Mutantengolem_C()
{
	AI_Output(hero, self, "Info_Mod_Albi_Mutantengolem_C_15_00"); //What's it got to do with you white lizards and the golems? Something's not right.
	AI_Output(self, hero, "Info_Mod_Albi_Mutantengolem_C_23_01"); //I want you to know, but not here. I need some rest, come to my cabin for the next few days.

	Mod_Echsis_Geheimnis_Tag = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Albi_Mutantengolem);
};

FUNC VOID Info_Mod_Albi_Mutantengolem_B()
{
	AI_Output(hero, self, "Info_Mod_Albi_Mutantengolem_B_15_00"); //Anything I can do for you?
	AI_Output(self, hero, "Info_Mod_Albi_Mutantengolem_B_23_01"); //Yes... but not yet. Come to my cabin tomorrow.

	Mod_Echsis_Geheimnis_Tag = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Albi_Mutantengolem);
};

FUNC VOID Info_Mod_Albi_Mutantengolem_A()
{
	AI_Output(hero, self, "Info_Mod_Albi_Mutantengolem_A_15_00"); //Anyway, I'm going to the temple.
	AI_Output(self, hero, "Info_Mod_Albi_Mutantengolem_A_23_01"); //Do that. If you have time, there's still a lot to do.

	Mod_Echsis_Geheimnis_Tag = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Albi_Mutantengolem);
};

INSTANCE Info_Mod_Albi_Geheimnis (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Geheimnis_Condition;
	information	= Info_Mod_Albi_Geheimnis_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you have to do for me?";
};

FUNC INT Info_Mod_Albi_Geheimnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Mutantengolem))
	&& (Wld_GetDay() > Mod_Echsis_Geheimnis_Tag)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Geheimnis_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis_15_00"); //What do you have to do for me?
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis_23_01"); //The most important thing now is the eggs. They should be swimming in the swamp by now.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis_23_02"); //Pick them up. There should be at least ten of them!
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis_23_03"); //Take it to the guard at Brutloch in the upper part of town.

	Log_CreateTopic	(TOPIC_MOD_ECHSIS_EIERSUCHE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ECHSIS_EIERSUCHE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ECHSIS_EIERSUCHE, "I'm supposed to go pick up lizard eggs in the swamp. They seem to be swimming in the water. If I have at least ten pieces, I shall give them to the guard at the broodhole in the upper part of the city.");

	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_01");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_02");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_03");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_04");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_05");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_06");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_07");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_08");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_09");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_10");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_11");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_12");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_13");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_14");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_15");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_16");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_17");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_18");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_19");
	Wld_InsertItem	(ItMi_EchsenEgg,	"FP_ITEM_ECHSENEGG_20");
};

INSTANCE Info_Mod_Albi_Geheimnis2 (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Geheimnis2_Condition;
	information	= Info_Mod_Albi_Geheimnis2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The eggs are in the brood cave.";
};

FUNC INT Info_Mod_Albi_Geheimnis2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_EchseWache_05_Eier))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Geheimnis2_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis2_15_00"); //The eggs are in the brood cave. But there are an unusually large number of golems in the swamp.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis2_23_01"); //That's what I was afraid of.... But I can't do anything until another white lizard hatches.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis2_23_02"); //But if we don't control the problem with the golems, they'll run us over. I'll send the warriors to the border area.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis2_23_03"); //It'll be a while before the eggs hatch out. If you want to make yourself useful, kill Golems.

	B_LogEntry	(TOPIC_MOD_ECHSIS_EIERSUCHE, "It'll take a while before the new lizards hatch. As long as I have to kill Golems in the swamp.");

	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_BF_NEST_08");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_BF_NEST_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_09");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_08");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_07");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_05");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_04");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_WAND_03");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_06");
	Wld_InsertNpc	(Swampgolem,	"ADW_BANDIT_VP1_07");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_LITTLE_HILL_03");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HOHLWEG_05");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HOHLWEG_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HOHLWEG_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_13");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_12");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_09");
	Wld_InsertNpc	(Swampgolem,	"ADW_SOUTHEAST_TELEPORTSTATION");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HILLS_DOWN_06");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_10");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_04");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_MONSTER_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_SIDE_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_SIDE_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HILLS_DOWN_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HILLS_DOWN_03");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_LOCH_03");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_LOCH_05");
	Wld_InsertNpc	(Swampgolem,	"ADW_PFUETZE_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_PATH_TO_GOLEM_08");
	Wld_InsertNpc	(Swampgolem,	"ADW_BANDIT_VP2_01");

	Mod_Echsis_Golemkiller = 0;
};

INSTANCE Info_Mod_Albi_Geheimnis3 (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Geheimnis3_Condition;
	information	= Info_Mod_Albi_Geheimnis3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Albi_Geheimnis3_Condition()
{
	if (Mod_Echsis_Geheimnis == 1)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Geheimnis3_Info()
{
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_00"); //Oh, there you are. We got lucky, we got two new white lizards.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_01"); //You are worthy to be initiated. I already told them our story.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_02"); //If you want to know her, sit down and listen.

	AI_PlayAniBS (hero, "T_STAND_2_SIT", BS_SIT);

	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_03"); //The war between the lizards and the golems has been going on for many battles, but it is indispensable to us because otherwise we would not be able to reproduce.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_04"); //Moreover, only lizards that have experienced what it means to live and face death in war will grow up.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_05"); //At the beginning of history it was uncertain who would win the war, but even before the eons our ancestors won it.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_06"); //The result was discord, tribal wars, envy.... the curse with which we paid the victory was manifold.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_07"); //So the tribal leaders decided to breed new golems.
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis3_15_08"); //To breed?
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_09"); //Yeah. They had found out that the marsh golems ripen from buds of certain plants.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_10"); //In the White Garden, they bred Golems so that the war against them would reunite us.
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis3_15_11"); //And why are the white lizards so important?
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_12"); //The golems don't see our sheds in the twilight. We can move freely among them. That means we could move freely among them.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_13"); //Shortly before you arrived, my brothers never returned, the Golems killed them.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_14"); //Since the white garden was closed, no golems could get out, but as the last white man I was not allowed to leave the city.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_15"); //But now the Golems are proliferating without hindrance, none of us can cut them down. If we do nothing, they'll wipe us out.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_16"); //White lizards are not warriors, and since our camouflage no longer works, we can't get into the garden without help. You have to help us.
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis3_15_17"); //Why don't you let your warriors move there?
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_18"); //Fool! Do you think they know the fight's long gone?
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_19"); //Faith in our enemy holds us together. If they knew the truth, our race would be damned.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_20"); //Will you help us?
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis3_15_21"); //All right, all right.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_22"); //We owe you a debt of gratitude. I will organize a battle. That'll distract most of the golems.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_23"); //Take these two with you. At least one of them must arrive safely at the garden to disable the trap.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_24"); //Kill the golems and find out what changed them!
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis3_23_25"); //We'll wait outside the gate, if you're ready, meet us there.

	B_LogEntry	(TOPIC_MOD_ECHSIS_EIERSUCHE, "Together with the two new white lizards, I am to set off to the white garden, the place of origin of the marsh golems, and find the reason for their mutation. At least one of the white lizards must survive the path alive to deactivate the trap at the entrance. Albi and the white lizards are now preparing a battle and awaiting me at the entrance of the city.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ABLENKUNG");
	B_StartOtherRoutine	(Mod_12021_DRA_Albino_AW, "TOR");
	B_StartOtherRoutine	(Mod_12022_DRA_Albino_AW, "TOR");

	B_StartOtherRoutine	(Mod_12002_DRA_Patroullie_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12004_DRA_Wache_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12005_DRA_Wache_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12006_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12009_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12010_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12011_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12012_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12013_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12014_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12015_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12018_DRA_Echse_AW, "SCHLACHT");
	B_StartOtherRoutine	(Mod_12019_DRA_Echse_AW, "SCHLACHT");

	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_BF_NEST_08");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_BF_NEST_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_09");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_08");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_SHARKSTREET_04");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_WAND_03");
	Wld_InsertNpc	(Swampgolem,	"ADW_LITTLE_HILL_03");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HOHLWEG_05");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HOHLWEG_02");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_HOHLWEG_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_13");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_12");
	Wld_InsertNpc	(Swampgolem,	"ADW_SWAMP_10");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_04");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_MONSTER_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_SENAT_01");
	Wld_InsertNpc	(Swampgolem,	"ADW_PATH_TO_GOLEM_08");
	Wld_InsertNpc	(Swampgolem,	"ADW_BANDIT_VP2_01");

	Wld_InsertNpc	(Alraune_Echsis,	"FP_ROAM_HEILER");
};

INSTANCE Info_Mod_Albi_Geheimnis4 (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Geheimnis4_Condition;
	information	= Info_Mod_Albi_Geheimnis4_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm ready.";
};

FUNC INT Info_Mod_Albi_Geheimnis4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Geheimnis3))
	&& (Npc_GetDistToWP(self, "BL_ENTRANCE_04_B") < 500)
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Geheimnis4_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis4_15_00"); //I'm ready.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis4_23_01"); //Very good. Very good. The battle can begin.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis4_23_02"); //Those two will follow you, take good care of them.

	B_LogEntry	(TOPIC_MOD_ECHSIS_EIERSUCHE, "Together with the two new white lizards, I am to set off to the white garden, the place of origin of the marsh golems, and find the reason for their mutation. At least one of the white lizards must survive the path alive to deactivate the trap at the entrance. Albi and the white lizards are now preparing a battle and awaiting me at the entrance of the city.");

	B_StartOtherRoutine	(self, "HUT");
	B_StartOtherRoutine	(Mod_12021_DRA_Albino_AW, "FOLLOW");
	B_StartOtherRoutine	(Mod_12022_DRA_Albino_AW, "FOLLOW");

	Mod_12021_DRA_Albino_AW.aivar[AIV_Partymember] = TRUE;
	Mod_12022_DRA_Albino_AW.aivar[AIV_Partymember] = TRUE;

	Wld_InsertNpc	(SwampGolem, "ADW_SWAMP_SIT_BENCH_03");
	Wld_InsertNpc	(SwampGolem, "ADW_SWAMP_SIT_BENCH_03");
	Wld_InsertNpc	(SwampGolem, "ADW_SWAMP_SIT_BENCH_03");
	Wld_InsertNpc	(SwampGolem, "ADW_SWAMP_SIT_BENCH_03");

	Wld_InsertNpc	(SwampGolem, "ADW_PATH_TO_BL_03");
	Wld_InsertNpc	(SwampGolem, "ADW_PATH_TO_BL_03");
	Wld_InsertNpc	(SwampGolem, "ADW_PATH_TO_BL_03");
	Wld_InsertNpc	(SwampGolem, "ADW_PATH_TO_BL_03");

	Wld_InsertNpc	(SwampGolem, "ADW_BANDIT_VP1_04_B");
	Wld_InsertNpc	(SwampGolem, "ADW_BANDIT_VP1_04_B");
	Wld_InsertNpc	(SwampGolem, "ADW_BANDIT_VP1_04_B");
	Wld_InsertNpc	(SwampGolem, "ADW_BANDIT_VP1_04_B");
	Wld_InsertNpc	(SwampGolem, "ADW_BANDIT_VP1_04_B");
};

INSTANCE Info_Mod_Albi_Geheimnis5 (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Geheimnis5_Condition;
	information	= Info_Mod_Albi_Geheimnis5_Info;
	permanent	= 0;
	important	= 0;
	description	= "We were successful.";
};

FUNC INT Info_Mod_Albi_Geheimnis5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Geheimnis4))
	&& (Mod_AlraunenFalle == 2)
	&& (Npc_IsDead(Alraune_Echsis))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Geheimnis5_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Geheimnis5_15_00"); //We were successful. There was an mandrake in the garden.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis5_23_01"); //That explains the golems mutations. You saved our race from destruction. You are always welcome in our city.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis5_23_02"); //Besides, you've earned the right of warrior.
	AI_Output(self, hero, "Info_Mod_Albi_Geheimnis5_23_03"); //If you want to go into battle, let me know. I will provide the warriors and let the golems mature.

	B_LogEntry	(TOPIC_MOD_ECHSIS_EIERSUCHE, "The problem with the golems is resolved and I'm now a warlord of the lizards. I can go hunting for Golems anytime I feel like it.");
	B_SetTopicStatus	(TOPIC_MOD_ECHSIS_EIERSUCHE, LOG_SUCCESS);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_18);

	B_GivePlayerXP	(2500);
};

INSTANCE Info_Mod_Albi_Unbewaffnet (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Unbewaffnet_Condition;
	information	= Info_Mod_Albi_Unbewaffnet_Info;
	permanent	= 0;
	important	= 0;
	description	= "You want me to go to the golems unarmed?";
};

FUNC INT Info_Mod_Albi_Unbewaffnet_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_AtHut))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Unbewaffnet_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Unbewaffnet_15_00"); //You want me to go to the golems unarmed? You could've let that swamp shark tear me apart.
	AI_Output(self, hero, "Info_Mod_Albi_Unbewaffnet_23_01"); //Here, Golemherzen.

	B_GiveInvItems	(self, hero, ItAt_SwampGolemHeart, 2);

	AI_Output(hero, self, "Info_Mod_Albi_Unbewaffnet_15_02"); //What am I supposed to do with golem hearts?
	AI_Output(self, hero, "Info_Mod_Albi_Unbewaffnet_23_03"); //Same as with the last one I gave you.
	AI_Output(self, hero, "Info_Mod_Albi_Unbewaffnet_23_04"); //Put it in the fire, take the heart fragments and buy a weapon and herbs!
};

INSTANCE Info_Mod_Albi_EigeneSachen (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_EigeneSachen_Condition;
	information	= Info_Mod_Albi_EigeneSachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can I get MY stuff back?";
};

FUNC INT Info_Mod_Albi_EigeneSachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_AtHut))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_EigeneSachen_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_EigeneSachen_15_00"); //Can I get MY stuff back?
	AI_Output(self, hero, "Info_Mod_Albi_EigeneSachen_23_01"); //No.
};

INSTANCE Info_Mod_Albi_Schluessel (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_Schluessel_Condition;
	information	= Info_Mod_Albi_Schluessel_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's the key to that?";
};

FUNC INT Info_Mod_Albi_Schluessel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_AtHut))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_Schluessel_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_Schluessel_15_00"); //What's the key to that?
	AI_Output(self, hero, "Info_Mod_Albi_Schluessel_23_01"); //To a gate in the swamp, that's all you need to know.
	AI_Output(self, hero, "Info_Mod_Albi_Schluessel_23_02"); //Don't look for it, you'll only find death. Now go away!
};

INSTANCE Info_Mod_Albi_WarumNichtSelbst (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_WarumNichtSelbst_Condition;
	information	= Info_Mod_Albi_WarumNichtSelbst_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why don't you go yourself?";
};

FUNC INT Info_Mod_Albi_WarumNichtSelbst_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Schlacht2))
	&& (Mod_Echsis > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Albi_WarumNichtSelbst_Info()
{
	AI_Output(hero, self, "Info_Mod_Albi_WarumNichtSelbst_15_00"); //Why don't you go yourself?
	AI_Output(self, hero, "Info_Mod_Albi_WarumNichtSelbst_23_01"); //I'm the last white lizard, I can't leave town.
	AI_Output(hero, self, "Info_Mod_Albi_WarumNichtSelbst_15_02"); //And why don't you send any of the warriors or scouts?
	AI_Output(self, hero, "Info_Mod_Albi_WarumNichtSelbst_23_03"); //Because you don't speak our language, and no one would believe you anyway.
	AI_Output(self, hero, "Info_Mod_Albi_WarumNichtSelbst_23_04"); //Now get out of my sight.
};

INSTANCE Info_Mod_Albi_EXIT (C_INFO)
{
	npc		= Mod_12003_DRA_Albi_AW;
	nr		= 1;
	condition	= Info_Mod_Albi_EXIT_Condition;
	information	= Info_Mod_Albi_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Albi_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Albi_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
