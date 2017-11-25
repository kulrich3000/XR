INSTANCE Info_Mod_Namib_Hi (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Hi_Condition;
	information	= Info_Mod_Namib_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Namib_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_Hi_02_00"); //You're alive?
	AI_Output(hero, self, "Info_Mod_Namib_Hi_15_01"); //You could put it that way.
	AI_Output(self, hero, "Info_Mod_Namib_Hi_02_02"); //So you managed to defeat the sleeper?
};

INSTANCE Info_Mod_Namib_Irdorath (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Irdorath_Condition;
	information	= Info_Mod_Namib_Irdorath_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_Irdorath))
	&& (Mod_Irdorath == 0)
	&& ((Guru_Dabei == 1)
	|| (Templer_Dabei == 1))
	{
		return 1;
	};
};

FUnc VOID Info_Mod_Namib_Irdorath_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_Irdorath_02_00"); //I had a vision! I saw the sea... a piece of wood drifted on it.... No, it was a ship.
	AI_Output(self, hero, "Info_Mod_Namib_Irdorath_02_01"); //It was moving towards something dark.... and then I suddenly saw Y' Berion.
	AI_Output(self, hero, "Info_Mod_Namib_Irdorath_02_02"); //He said to me,"Go to the port of Khorinis and join the crew.
};

INSTANCE Info_Mod_Namib_Irdorath2 (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Irdorath2_Condition;
	information	= Info_Mod_Namib_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Yes, indeed! That's why I'm here.";
};

FUNC INT Info_Mod_Namib_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUnc VOID Info_Mod_Namib_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Irdorath2_15_00"); //(amazed) Yes, indeed! That's why I'm here.
	AI_Output(hero, self, "Info_Mod_Namib_Irdorath2_15_01"); //I try to recruit a team with whom I have to visit an island in order to put an end to the sinister activity of the magician Xeres....
	AI_Output(hero, self, "Info_Mod_Namib_Irdorath2_15_02"); //Well, it is at least an important step in this direction.
	AI_Output(self, hero, "Info_Mod_Namib_Irdorath2_02_03"); //So it's the way I'm destined to go. I'll see you at the harbour.
	AI_Output(hero, self, "Info_Mod_Namib_Irdorath2_15_04"); //Uh, sure, see you there.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Namib had a vision in which he was told to join my team. And he has now.");

	B_GivePlayerXP	(100);

	Mod_NamibDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Namib_Sekte (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Sekte_Condition;
	information	= Info_Mod_Namib_Sekte_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lester told me you're still here.";
};

FUNC INT Info_Mod_Namib_Sekte_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_Aufnehmen))
	{
		return 1;
	};
};

FUnc VOID Info_Mod_Namib_Sekte_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Sekte_15_00"); //Lester told me you're still here.
	AI_Output(self, hero, "Info_Mod_Namib_Sekte_02_01"); //I didn't think I'd see you again!
	AI_Output(hero, self, "Info_Mod_Namib_Sekte_15_02"); //Are you mad at me for taking the sleeper?
	AI_Output(self, hero, "Info_Mod_Namib_Sekte_02_03"); //No, not at all! We are grateful to you for redeeming us from the demon who was the spirit of our spirit!
	AI_Output(hero, self, "Info_Mod_Namib_Sekte_15_04"); //So you're no longer praying to the sleeper?
	AI_Output(self, hero, "Info_Mod_Namib_Sekte_02_05"); //No.
	AI_Output(hero, self, "Info_Mod_Namib_Sekte_15_06"); //Ah...
	AI_Output(self, hero, "Info_Mod_Namib_Sekte_02_07"); //Yes...
	AI_Output(hero, self, "Info_Mod_Namib_Sekte_15_08"); //Then what are you doing out here?
	AI_Output(self, hero, "Info_Mod_Namib_Sekte_02_09"); //Well, mostly we sow, harvest and smoke swampweed.
	AI_Output(hero, self, "Info_Mod_Namib_Sekte_15_10"); //That's what I thought.
	AI_Output(self, hero, "Info_Mod_Namib_Sekte_02_11"); //We also study magic here.
};

INSTANCE Info_Mod_Namib_Aufnehmen (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Aufnehmen_Condition;
	information	= Info_Mod_Namib_Aufnehmen_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to join you!";
};

FUNC INT Info_Mod_Namib_Aufnehmen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Sekte))
	&& (Mod_Gilde > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Aufnehmen_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Aufnehmen_15_00"); //I want to join you!
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_01"); //I'm glad to hear that. Well, there's a job to be done. Find Lester first!
	AI_Output(hero, self, "Info_Mod_Namib_Aufnehmen_15_02"); //I've already seen Lester. He told me you were still here.
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_03"); //(confused) Ah yes.... you've already passed that test. Go to him. He has a parcel with him that he was supposed to drop off at Constantino, the alchemist of Khorini's.
	AI_Output(hero, self, "Info_Mod_Namib_Aufnehmen_15_04"); //Then why doesn't he drop it off there?
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_05"); //We made a small organizational mistake. We put Lester in charge of two tasks at once.
	AI_Output(hero, self, "Info_Mod_Namib_Aufnehmen_15_06"); //What's he doing now?
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_07"); //Have you ever been to the great tower of Xardas in Khorinis?
	AI_Output(hero, self, "Info_Mod_Namib_Aufnehmen_15_08"); //Uh...
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_09"); //Anyway, that's where he summoned undead creatures. He must have used a lot of energy, there were enough to build an entire tower in a short time.
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_10"); //However, the whole thing has changed the soil, withdrawn certain substances from it and when these undead were turned to stone, the soil has regained certain other substances.
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_11"); //Lester is supposed to test in the cave, which effects such a spell has on the marsh herb plants.
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_12"); //While you're at his place, ask him for a camp report.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Baal Namib has asked me to hand in Lester's package to Constantino and get a status report from Lester.");
};

INSTANCE Info_Mod_Namib_WarBeiLester (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_WarBeiLester_Condition;
	information	= Info_Mod_Namib_WarBeiLester_Info;
	permanent	= 0;
	important	= 0;
	description	= "I took the package to Constantino.";
};

FUNC INT Info_Mod_Namib_WarBeiLester_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_Zauberwasser))
	&& (Npc_HasItems(hero, ItMi_DuengerPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_WarBeiLester_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_WarBeiLester_15_00"); //I took the package to Constantino. He gave me this.

	B_GiveInvItems	(hero, self, ItMi_DuengerPaket, 1);

	AI_Output(self, hero, "Info_Mod_Namib_WarBeiLester_02_01"); //Ah, very good! Take it to the fields near Balor.

	B_GiveInvItems	(self, hero, ItMi_DuengerPaket, 1);

	AI_Output(hero, self, "Info_Mod_Namib_WarBeiLester_15_02"); //I was with Lester too.
	AI_Output(self, hero, "Info_Mod_Namib_WarBeiLester_02_03"); //And? What's he saying? Speak up.
	AI_Output(hero, self, "Info_Mod_Namib_WarBeiLester_15_04"); //He says the marsh weed thrives unusually well in the cave. He said something about the black mages.
	AI_Output(self, hero, "Info_Mod_Namib_WarBeiLester_02_05"); //Excellent... Have you brought the package to Balor yet? No? Well, hurry up and bring it to him.
	AI_Output(self, hero, "Info_Mod_Namib_WarBeiLester_02_06"); //Then get back to me!

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Baal Namib wants me to take the Constantino package to Balor.");
};

INSTANCE Info_Mod_Namib_DuengerVerteilt (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_DuengerVerteilt_Condition;
	information	= Info_Mod_Namib_DuengerVerteilt_Info;
	permanent	= 0;
	important	= 0;
	description	= "I was at Balor's and I fertilized the field.";
};

FUNC INT Info_Mod_Namib_DuengerVerteilt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balor_DuengerVerteilt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_DuengerVerteilt_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_DuengerVerteilt_15_00"); //I was at Balor's and I fertilized the field.
	AI_Output(self, hero, "Info_Mod_Namib_DuengerVerteilt_02_01"); //Very good. Very good. I have another assignment for you in a minute. Go to the black mages. We need your help.
	AI_Output(self, hero, "Info_Mod_Namib_DuengerVerteilt_02_02"); //Bring them this letter and this package of bogweed as a small present.

	B_ShowGivenThings	("2 Items received");

	CreateInvItems	(hero, ItWr_NamibForBeliar, 1);
	CreateInvItems	(hero, ItMi_HerbPaket, 1);

	AI_Output(self, hero, "Info_Mod_Namib_DuengerVerteilt_02_03"); //And on your way back, you can take Lester back with you!

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "I'm supposed to take a letter and a packet of swampweed to the Black Magicians. I think it would be best if I went to Xardas. On the way back to the Minental I should also take Lester with me.");
};

INSTANCE Info_Mod_Namib_KarrasDa (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_KarrasDa_Condition;
	information	= Info_Mod_Namib_KarrasDa_Info;
	permanent	= 0;
	important	= 0;
	description	= "Karras is here.";
};

FUNC INT Info_Mod_Namib_KarrasDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Karras_Namib2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_KarrasDa_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_KarrasDa_15_00"); //Karras is here.
	AI_Output(self, hero, "Info_Mod_Namib_KarrasDa_02_01"); //Very good. Very good. Go to the other gurus and tell them to come to the temple place.
	AI_Output(self, hero, "Info_Mod_Namib_KarrasDa_02_02"); //If you don't know who has to come or where you find the gurus, Talas will lead you to them.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Baal Namib wants me to tell the other gurus to come to the temple square. Talas can lead me to the gurus if I don't find them or don't know who is missing.");

	B_StartOtherRoutine	(self, "TEMPEL");
	B_StartOtherRoutine	(Mod_514_DMB_Karras_MT, "TEMPEL");
	B_StartOtherRoutine	(Mod_7268_PSINOV_Lester_MT, "START");
	B_StartOtherRoutine	(Mod_2005_GUR_CorCadar_MT, "TEMPEL");
};

INSTANCE Info_Mod_Namib_AtTempel (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_AtTempel_Condition;
	information	= Info_Mod_Namib_AtTempel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_AtTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orun_GotoTempel))
	&& (Npc_KnowsInfo(hero, Info_Mod_Tyon_GotoTempel))
	&& (Npc_KnowsInfo(hero, Info_Mod_Tondral_GotoTempel))
	&& (Npc_KnowsInfo(hero, Info_Mod_Joru_GotoTempel))
	&& (Npc_KnowsInfo(hero, Info_Mod_Caine_GotoTempel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_AtTempel_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_00"); //Ah, there you are.
	AI_Output(hero, self, "Info_Mod_Namib_AtTempel_15_01"); //What happens now?
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_02"); //You know that the black magicians in their valley have summoned undead men to build the Black Tower for them.
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_03"); //And as you know from Lester, this has influenced the soil to the extent that the bogweed thrives there.
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_04"); //We asked them to do the same thing here in the swamp, to increase the quality of our marsh herb even more, you know?
	AI_Output(hero, self, "Info_Mod_Namib_AtTempel_15_05"); //Uh...
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_06"); //Very good. Very good.
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_07"); //Anyway, I don't really trust the black mages. I guess they have some ulterior motive.
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_08"); //Go to Cor Angar. Tell him to have the Templars take up their position in case something goes wrong.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "The gurus are gathered at the temple site and now want to summon undead so that the quality of the marsh herb increases. As a precaution, I'm supposed to make sure the Templars are ready.");
};

INSTANCE Info_Mod_Namib_SUDD (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_SUDD_Condition;
	information	= Info_Mod_Namib_SUDD_Info;
	permanent	= 0;
	important	= 0;
	description	= "The swamp shark bombs are dead.";
};

FUNC INT Info_Mod_Namib_SUDD_Condition()
{
	if (Mod_Sekte_SH_Kampf == 4)
	&& (Npc_IsDead(Swampshark_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_SUDD_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_SUDD_15_00"); //The swamp shark bombs are dead.
	AI_Output(self, hero, "Info_Mod_Namib_SUDD_02_01"); //Very good! These damn sumphaizombies have now found their grave for the second time.
	AI_Output(self, hero, "Info_Mod_Namib_SUDD_02_02"); //I wonder what went wrong with the spell. The whole thing worked anyway! The bogweed should grow beautifully here now.
	AI_Output(self, hero, "Info_Mod_Namib_SUDD_02_03"); //You've been a big help to us! Us, and the swampweed.

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_106_TPL_Angar_MT, "START");
	B_StartOtherRoutine	(Mod_1219_TPL_Templer_MT, "START");
	B_StartOtherRoutine	(Mod_1218_TPL_Templer_MT, "START");
	B_StartOtherRoutine	(Mod_1221_TPL_Templer_MT, "START");
	B_StartOtherRoutine	(Mod_1226_TPL_Templer_MT, "START");
	B_StartOtherRoutine	(Mod_1116_PSINOV_Caine_MT, "START");
	B_StartOtherRoutine	(Mod_2013_PSINOV_Joru_MT, "START");
	B_StartOtherRoutine	(Mod_2007_GUR_BaalOrun_MT, "START");
	B_StartOtherRoutine	(Mod_2003_GUR_BaalTondral_MT, "START");
	B_StartOtherRoutine	(Mod_2006_GUR_BaalTyon_MT, "START");
	B_StartOtherRoutine	(Mod_2005_GUR_CorCadar_MT, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1218_TPL_Templer_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1219_TPL_Templer_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1221_TPL_Templer_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1226_TPL_Templer_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	if (hero.guild != GIL_KDF)
	{
		B_StartOtherRoutine	(Mod_514_DMB_Karras_MT, "START");
		AI_Teleport	(Mod_514_DMB_Karras_MT, "TOT");
	};

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		AI_Output(self, hero, "Info_Mod_Namib_SUDD_02_04"); //You can now ascend to the rank of a Templar or a Guru.

		Info_ClearChoices	(Info_Mod_Namib_SUDD);

		Info_AddChoice	(Info_Mod_Namib_SUDD, "I changed my mind.", Info_Mod_Namib_SUDD_No);
		Info_AddChoice	(Info_Mod_Namib_SUDD, "I want to be a guru.", Info_Mod_Namib_SUDD_Guru);
		Info_AddChoice	(Info_Mod_Namib_SUDD, "I want to be a Templar.", Info_Mod_Namib_SUDD_Templer);
	};

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_SEKTE_AUFNAHME, LOG_SUCCESS);
};

FUNC VOID Info_Mod_Namib_SUDD_No()
{
	AI_Output(hero, self, "Info_Mod_Namib_SUDD_No_15_00"); //I changed my mind.
	AI_Output(self, hero, "Info_Mod_Namib_SUDD_No_02_01"); //Too bad, we could have achieved a lot with you.

	Info_ClearChoices	(Info_Mod_Namib_SUDD);
};

FUNC VOID Info_Mod_Namib_SUDD_Guru()
{
	AI_Output(hero, self, "Info_Mod_Namib_SUDD_Guru_15_00"); //I want to be a guru.
	AI_Output(self, hero, "Info_Mod_Namib_SUDD_Guru_02_01"); //All right, here's your robe.

	CreateInvItems	(hero, Nov_Armor_H, 1);
	B_ShowGivenThings	("Get Gururobe");

	Mod_AnzahlNebengilden += 1;

	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_NEBENGILDEN, "I'm a guru now.");

	Mod_1210_TPL_Templer_MT.aivar[AIV_PASSGATE] = TRUE;

	Guru_Dabei = 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);

	Info_ClearChoices	(Info_Mod_Namib_SUDD);
};

FUNC VOID Info_Mod_Namib_SUDD_Templer()
{
	AI_Output(hero, self, "Info_Mod_Namib_SUDD_Templer_15_00"); //I want to be a Templar.
	AI_Output(self, hero, "Info_Mod_Namib_SUDD_Templer_02_01"); //All right, here's your armour.

	CreateInvItems	(self, Tpl_Armor_L, 1);
	B_GiveInvItems	(self, hero, Tpl_Armor_L, 1);

	Mod_AnzahlNebengilden += 1;

	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_NEBENGILDEN, "I'm a Templar now.");

	Mod_1210_TPL_Templer_MT.aivar[AIV_PASSGATE] = TRUE;

	Templer_Dabei = 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_68);

	Info_ClearChoices	(Info_Mod_Namib_SUDD);
};

INSTANCE Info_Mod_Namib_Dealer (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Dealer_Condition;
	information	= Info_Mod_Namib_Dealer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_Dealer_Condition()
{
	if ((Templer_Dabei == 1)
	|| (Guru_Dabei == 1))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Dealer_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_Dealer_02_00"); //Good of you to come! I have an assignment for you. Weed supplier got sick.
	AI_Output(self, hero, "Info_Mod_Namib_Dealer_02_01"); //You must take this package of swamp herbs to the mercenaries here in the Minental! Deliver it to Rath.

	CreateInvItems	(self, ItMi_HerbPaket, 1);
	B_GiveInvItems	(self, hero, ItMi_HerbPaket, 1);

	AI_Output(hero, self, "Info_Mod_Namib_Dealer_15_02"); //All clear.
	AI_Output(self, hero, "Info_Mod_Namib_Dealer_02_03"); //Here's some better armor.

	if (Templer_Dabei == 1)
	{
		CreateInvItems	(hero, TPL_Armor_M, 1);
	}
	else
	{
		CreateInvItems	(hero, GUR_Armor_M, 1);
	};

	Log_CreateTopic	(TOPIC_MOD_SEKTE_DEALER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SEKTE_DEALER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SEKTE_DEALER, "Baal Namib gave me a packet of herbs which I have to deliver to a mercenary named Rath here in the Minental.");
};

INSTANCE Info_Mod_Namib_NoDeal (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_NoDeal_Condition;
	information	= Info_Mod_Namib_NoDeal_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rath didn't want the weed?";
};

FUNC INT Info_Mod_Namib_NoDeal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rath_Sumpfkraut))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_NoDeal_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_NoDeal_15_00"); //Rath didn't want the weed?
	AI_Output(self, hero, "Info_Mod_Namib_NoDeal_02_01"); //But why is that?
	AI_Output(hero, self, "Info_Mod_Namib_NoDeal_15_02"); //He says there's a cheaper and better drug than swampweed. He calls it a giver of joy.
	AI_Output(hero, self, "Info_Mod_Namib_NoDeal_15_03"); //A guy at the marketplace in Khorata wants to sell it.
	AI_Output(self, hero, "Info_Mod_Namib_NoDeal_02_04"); //That's bad news. Go to Relendel and find out the secret of the giver of joy in Khorata. You're our last hope.

	Log_CreateTopic	(TOPIC_MOD_SEKTE_Freudenspender, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SEKTE_Freudenspender, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Baal Namib wants me to go to Khorata and pick up the trail of the giver of joy.");
	B_SetTopicStatus	(TOPIC_MOD_SEKTE_DEALER, LOG_SUCCESS);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Namib_Meer (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Meer_Condition;
	information	= Info_Mod_Namib_Meer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_Meer_Condition()
{
	if (Mod_SL_Meer == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Meer_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_Meer_02_00"); //DU!? You dare to come here after you betrayed us?
	AI_Output(self, hero, "Info_Mod_Namib_Meer_02_01"); //Look what you've done to the glorious community of the swamp!
	AI_Output(self, hero, "Info_Mod_Namib_Meer_02_02"); //They're all DEATH... Well, most of them have gone because we had no means to grow swampweed, but the spirit of our community is DEAD!
	AI_Output(hero, self, "Info_Mod_Namib_Meer_15_03"); //Calm down, calm down. I have an idea how to breathe new life into the swamp camp.
	AI_Output(self, hero, "Info_Mod_Namib_Meer_02_04"); //It's UNDIRECTORY what you do to us.... You have an idea? Speak up, don't let it all get out of your nose.
	AI_Output(hero, self, "Info_Mod_Namib_Meer_15_05"); //The king desires a sea. The swamp here would be just the thing.
	AI_Output(self, hero, "Info_Mod_Namib_Meer_02_06"); //You think we're just gonna let those weirdoes take our swamp? You're crazy!
	AI_Output(hero, self, "Info_Mod_Namib_Meer_15_07"); //Of course not, of course. I was thinking more of an alliance.
	AI_Output(hero, self, "Info_Mod_Namib_Meer_15_08"); //The court is allowed to stay here freely and I will make sure that you can grow swampweed again without any financial problems.
	AI_Output(self, hero, "Info_Mod_Namib_Meer_02_09"); //Oh, I don't know... when I think about such important matters.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Baal Namib is not yet sure what to think of the proposal. He needs to smoke before he can make a decision. I should bring him some bogweed or a bottle of pleasure.");

	Mod_SL_Meer = 2;
};

INSTANCE Info_Mod_Namib_KoenigJoint (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_KoenigJoint_Condition;
	information	= Info_Mod_Namib_KoenigJoint_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's a stem.";
};

FUNC INT Info_Mod_Namib_KoenigJoint_Condition()
{
	if (Mod_SL_Meer == 2)
	&& (Npc_HasItems(hero, ItMi_Joint) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_KoenigJoint_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_KoenigJoint_15_00"); //Here's a stem.

	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Namib_KoenigJoint_02_01"); //Ahhhh... That feels good... to breathe in the sweet smoke again after so long.
	AI_Output(self, hero, "Info_Mod_Namib_KoenigJoint_02_02"); //As far as I'm concerned, bring these castle fuzzies here if we can only grow our beloved swampweed again afterwards!

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Baal Namib has no objection to the King coming here. I should now talk to the king and inform him that I have found a sea for him.");

	Mod_SL_Meer = 3;

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Namib_KoenigFreudenspender (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_KoenigFreudenspender_Condition;
	information	= Info_Mod_Namib_KoenigFreudenspender_Info;
	permanent	= 0;
	important	= 0;
	description	= "Try this one.";
};

FUNC INT Info_Mod_Namib_KoenigFreudenspender_Condition()
{
	if (Mod_SL_Meer == 2)
	&& (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_KoenigFreudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_KoenigFreudenspender_15_00"); //Try this one.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_UseItem	(self, ItMi_Freudenspender);

	AI_Output(self, hero, "Info_Mod_Namib_KoenigFreudenspender_02_01"); //l-- I was at a mountain. There was a castle and a river there, too! And... Swampwort!
	AI_Output(self, hero, "Info_Mod_Namib_KoenigFreudenspender_02_02"); //There was a swamp herb talking to me! It has said that the Court is the answer! Come on, hurry up!

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Baal Namib has no objection to the King coming here. I should now talk to the king and inform him that I have found a sea for him.");

	Mod_SL_Meer = 3;

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Namib_Sporen (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Sporen_Condition;
	information	= Info_Mod_Namib_Sporen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here. These spores are the key to the drug of the court state.";
};

FUNC INT Info_Mod_Namib_Sporen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatBarde_Sporen))
	&& (Npc_HasItems(hero, ItMi_FreudenspenderSporen) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Sporen_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Sporen_15_00"); //Here. These spores are the key to the drug of the court state.

	B_GiveInvItems	(hero, self, ItMi_FreudenspenderSporen, 1);

	AI_Output(self, hero, "Info_Mod_Namib_Sporen_02_01"); //These spores are the key?
	AI_Output(hero, self, "Info_Mod_Namib_Sporen_15_02"); //Um... Yeah. That's what the magician said.
	AI_Output(self, hero, "Info_Mod_Namib_Sporen_02_03"); //That was really EVERYTHING you could find out?
	AI_Output(self, hero, "Info_Mod_Namib_Sporen_02_04"); //Well, anyway, I'm gonna examine these spores.
	AI_Output(hero, self, "Info_Mod_Namib_Sporen_15_05"); //And what am I supposed to do?
	AI_Output(self, hero, "Info_Mod_Namib_Sporen_02_06"); //What?
	AI_Output(hero, self, "Info_Mod_Namib_Sporen_15_07"); //What am I supposed to do now?
	AI_Output(self, hero, "Info_Mod_Namib_Sporen_02_08"); //It's obvious! Infiltrate them, weaken them, undermine their motivation, things like that!
	AI_Output(hero, self, "Info_Mod_Namib_Sporen_15_09"); //I'll see what I can find....

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "I'm supposed to infiltrate the court, weaken, undermine their motivation and so on. Meanwhile, Baal Namib examines the spores I brought him.");

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Namib_Motivation (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Motivation_Condition;
	information	= Info_Mod_Namib_Motivation_Info;
	permanent	= 0;
	important	= 0;
	description	= "I weakened the court and all that.";
};

FUNC INT Info_Mod_Namib_Motivation_Condition()
{
	if (Mod_SL_Schwaechen == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Motivation_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Motivation_15_00"); //I weakened the court and all that.
	AI_Output(self, hero, "Info_Mod_Namib_Motivation_02_01"); //Excellent! In the meantime I have analysed these spores, they are very interesting.
	AI_Output(self, hero, "Info_Mod_Namib_Motivation_02_02"); //Anyway, you should bring those spores to someone, right? Instead, you're gonna bring him this bag here.

	B_GiveInvItems	(self, hero, ItMi_FakeFreudenspenderSporen, 1);

	AI_Output(self, hero, "Info_Mod_Namib_Motivation_02_03"); //It contains the eggs of a parasitic insect species. If they spread them on their fields, the whole harvest will perish!
	AI_Output(self, hero, "Info_Mod_Namib_Motivation_02_04"); //That should be enough to finish them off once and for all! Come on, let's go!

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "I'm supposed to take the parasitic eggs to the secretary of drugs. I'll have to see the hunter first.");

	Mod_SL_Schwaechen = 5;
};

INSTANCE Info_Mod_Namib_HofstaatFutsch (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_HofstaatFutsch_Condition;
	information	= Info_Mod_Namib_HofstaatFutsch_Info;
	permanent	= 0;
	important	= 0;
	description	= "The court is history.";
};

FUNC INT Info_Mod_Namib_HofstaatFutsch_Condition()
{
	if (Mod_SL_Schwaechen == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_HofstaatFutsch_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_HofstaatFutsch_15_00"); //The court is history.
	AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_01"); //Excellent! Everything is developing excellently.

	if (Guru_Dabei == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_02"); //You're really worthy to become a high guru.
		AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_03"); //It is my honor to place you in the ranks of the high gurus.
		AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_04"); //Wear this robe with pride.

		HoherGuru_Dabei = TRUE;

		CreateInvItems	(hero, Gur_Armor_H, 1);

		B_ShowGivenThings	("Get high Gururobe");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_05"); //You're really worthy to become a high templar.
		AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_06"); //I have the honor of accepting you into the ranks of the high Knights Templars.
		AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_07"); //Wear this armor with pride and dignity.

		HoherTempler_Dabei = TRUE;

		CreateInvItems	(hero, Tpl_Armor_H, 1);

		B_ShowGivenThings	("Receiving heavy Templar equipment");
	};

	B_SetTopicStatus	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, LOG_SUCCESS);

	B_GivePlayerXP	(1000);
};

INSTANCE Info_Mod_Namib_Leichengase (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Leichengase_Condition;
	information	= Info_Mod_Namib_Leichengase_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_Leichengase_Condition()
{
	if ((Templer_Dabei == TRUE)
	|| (Guru_Dabei == TRUE))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Leichengase_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_02_00"); //Damn novices!

	Wld_SendTrigger	("EVT_SUMPFHAIPROBE_01");
	Wld_SendTrigger	("EVT_SUMPFHAIPROBE_02");

	Info_ClearChoices	(Info_Mod_Namib_Leichengase);

	Info_AddChoice	(Info_Mod_Namib_Leichengase, "Useless pack, all of them!", Info_Mod_Namib_Leichengase_B);
	Info_AddChoice	(Info_Mod_Namib_Leichengase, "What?", Info_Mod_Namib_Leichengase_A);
};

FUNC VOID Info_Mod_Namib_Leichengase_C()
{
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_00"); //What?
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_01"); //How? Oh, uh, it's about the novices!
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_02"); //Seit wir die Sumpfkrautfelder ... "fertilised" haben liegen sie mir tagein tagaus in den Ohren.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_03"); //"Baal Namib it's terrible, it's horrible horrible, unbearably bad and simply unsatisfying.", sagen sie!
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_04"); //"You gotta do something about it.", meinen sie.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_05"); //"This can't go on like this anymore.", beschweren sie sich.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_06"); //And me? What am I supposed to do?
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_07"); //Oh, it's bad... can you even imagine what it's like to have your ears full of whining?
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_08"); //Well...
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_09"); //I thought so! No one suffers as much as I do.... except perhaps the novices.
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_10"); //Maybe you can tell me what they suffer from.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_11"); //Fragrance.
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_12"); //Fragrance?
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_13"); //Naja, das trifft es nicht so ganz ... vielleicht würde der Begriff "odor" der Sache eher gerecht werden.
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_14"); //Smell then?
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_15"); //Yes... No... Maybe smell isn't the right word...
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_16"); //Let's see, maybe it would stink... or stench.... or... Oh MY GOD, the poor novices.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_17"); //You can't imagine how bad those putrid swamp sharks stink!
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_18"); //It's as if the sleeper had drunk his morning coffee after a long nap and then relieved himself in the swamp.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_19"); //You can't imagine how bad it stinks.
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_20"); //Well, stench isn't that bad.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_21"); //Oh, yeah? You think so?! One of the novices is blind, it stinks so much!
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_22"); //Please, PLEASE, help my poor little novices, they are like children to me!
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_23"); //And what am I supposed to do?
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_24"); //Go to Baal Caine. He's working on the problem. I hope he finds a solution soon.

	Log_CreateTopic	(TOPIC_MOD_SL_LEICHENGASE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SL_LEICHENGASE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SL_LEICHENGASE, "The novices suffer from the stench of the corpses of the bog sharks. Baal Caine is looking for a solution. I should go to him.");

	Info_ClearChoices	(Info_Mod_Namib_Leichengase);
};

FUNC VOID Info_Mod_Namib_Leichengase_A()
{
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_A_15_00"); //What?

	Info_Mod_Namib_Leichengase_C();
};

FUNC VOID Info_Mod_Namib_Leichengase_B()
{
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_B_15_00"); //Useless pack, all of them!
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_B_02_01"); //Yes, yes! Quite right, hardly a decent worker who appreciates that I sacrifice myself for this society.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_B_02_02"); //But I'm suffering quietly, you hear me?
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_B_15_03"); //It's hard to ignore. What's this about?

	Info_Mod_Namib_Leichengase_C();
};

INSTANCE Info_Mod_Namib_Leichengase2 (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Leichengase2_Condition;
	information	= Info_Mod_Namib_Leichengase2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey, I solved the problem.";
};

FUNC INT Info_Mod_Namib_Leichengase2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Caine_Leichengase5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Leichengase2_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase2_15_00"); //Hey, I solved the problem.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase2_02_01"); //You have done us an invaluable service!

	B_GivePlayerXP	(150);

	B_SetTopicStatus	(TOPIC_MOD_SL_LEICHENGASE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Namib_Orkfriedhof (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Orkfriedhof_Condition;
	information	= Info_Mod_Namib_Orkfriedhof_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_Orkfriedhof_Condition()
{
	if (Mod_NL_UOS > 0)
	&& (Mod_NL_UOS < 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Orkfriedhof_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_00"); //What are you doing here? Up at the orc cemetery, where your fighting power is needed.
	AI_Output(hero, self, "Info_Mod_Namib_Orkfriedhof_15_01"); //Take it easy... Report what happened?
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_02"); //Baal Tavor had recently embarked on an expedition of novices and Templars to the abandoned Orc Cemetery to search for artifacts and treasures and recover the corpse of our dead brothers from the first expedition.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_03"); //Yes, abandoned so we thought, just as we did on our first visit to the cemetery, when orcs and dark powers caused us painful losses among our brothers....
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_04"); //At first, nothing could be expected from the approaching disaster.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_05"); //Undisturbed, my confreres carried out what they had entered the place for, inspected the rooms, corridors and niches, and mourned the fate of the dead Templars, who were exposed there in the dust of decay.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_06"); //They stepped ever deeper into the rooms and split up.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_07"); //Suddenly they heard the screaming cry of a novice who fell obsessively from one of the deeper rooms and shouted something of shamans and lightning... but it was already too late.
	AI_Output(hero, self, "Info_Mod_Namib_Orkfriedhof_15_08"); //Yes, what happened... ?
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_09"); //That's told quickly. The orcs buried in the cemetery became undead.... just like the bodies of our confreres.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_10"); //They fell over Templars and novices and only Tala's novice escaped in the turmoil.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_11"); //What happened to the others, whether there are survivors, is unclear.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_12"); //Be that as it may, we have asked for the support of the New Camp and it would give me confidence if you were to attend this rescue expedition.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_13"); //You have already defied the adversities of the Orkriedhof once before?
};

INSTANCE Info_Mod_Namib_GeiselnSicher (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_GeiselnSicher_Condition;
	information	= Info_Mod_Namib_GeiselnSicher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_GeiselnSicher_Condition()
{
	if (Mod_NL_UOS == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_GeiselnSicher_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_GeiselnSicher_02_00"); //You actually managed to find and save the survivors, incredible. Here, take this as a thank you.

	B_ShowGivenThings	("Receive various items");

	AI_Output(self, hero, "Info_Mod_Namib_GeiselnSicher_02_01"); //Among them is also a newly developed spell roll, which was produced with a good portion of bogweed.
	AI_Output(self, hero, "Info_Mod_Namib_GeiselnSicher_02_02"); //It makes herbal material of your surroundings rise to a golem that follows your will. Have fun with that.

	CreateInvItems	(hero, ItPo_Health_03, 4);
	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItMi_Traumruf, 5);
	CreateInvItems	(hero, ItPl_SwampHerb, 10);
	CreateInvItems	(hero, ItSc_SumSwampGolem, 1);

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Namib_Hueterklinge (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Hueterklinge_Condition;
	information	= Info_Mod_Namib_Hueterklinge_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm looking for Baal Ydran.";
};

FUNC INT Info_Mod_Namib_Hueterklinge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GorNaKar_Hueterklinge2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Hueterklinge_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge_15_00"); //I'm looking for Baal Ydran.
	AI_Output(self, hero, "Info_Mod_Namib_Hueterklinge_02_01"); //You can find it in our cemetery. It is located in the swamp near the sea.

	B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Baal Ydran is said to be found in the cemetery in the marsh near the sea.");
};

INSTANCE Info_Mod_Namib_Hueterklinge2 (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Hueterklinge2_Condition;
	information	= Info_Mod_Namib_Hueterklinge2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found Ydran. He's dead.";
};

FUNC INT Info_Mod_Namib_Hueterklinge2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Hueterklinge))
	&& (Mod_TPL_HK_Ydran == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Hueterklinge2_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge2_15_00"); //I found Ydran. He's dead.
	AI_Output(self, hero, "Info_Mod_Namib_Hueterklinge2_02_01"); //I know. Tragic the whole story.
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge2_15_02"); //What's happening?
	AI_Output(self, hero, "Info_Mod_Namib_Hueterklinge2_02_03"); //I don't want to talk about it.... the wounds are still too fresh... SO FRESH (wake out loud)
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge2_15_04"); //Calm down, will you?
	AI_Output(self, hero, "Info_Mod_Namib_Hueterklinge2_02_05"); //You're right. You're right. Rydiger wouldn't want me to cry over him.
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge2_15_06"); //Rydiger? Never mind. Do you know a Templar named Gor Na Kosh?
	AI_Output(self, hero, "Info_Mod_Namib_Hueterklinge2_02_07"); //But yes, yes. A very shrewd young Templar. He takes his task very seriously.
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge2_15_08"); //Do you know where I can find him?
	AI_Output(self, hero, "Info_Mod_Namib_Hueterklinge2_02_09"); //Why don't you just try his cabin? It's right on the other side of my tree.
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge2_15_10"); //Thanks.

	B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Kosh's hut is directly on the other side of Baal Namib's tree. Let's see what I find there.");

	Wld_InsertItem	(ItMi_GorNaKoshsBeutel, "FP_ITEM_GORNAKOSH_BEUTEL");
	Wld_InsertItem	(ItWr_GorNaKoshsTagebuch1, "FP_ITEM_GORNAKOSH_TAGEBUCH");
};

INSTANCE Info_Mod_Namib_Magie (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Magie_Condition;
	information	= Info_Mod_Namib_Magie_Info;
	permanent	= 0;
	important	= 0;
	description	= "Magic?! How can you do magic?";
};

FUNC INT Info_Mod_Namib_Magie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Sekte))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Magie_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Magie_15_00"); //Magic?! How can you do magic? You received your magic from the sleeper.
	AI_Output(self, hero, "Info_Mod_Namib_Magie_02_01"); //That's what we thought. But we found out it wasn't the sleeper who gave us the magic. It was the marsh weed!
};

INSTANCE Info_Mod_Namib_Lehre (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Lehre_Condition;
	information	= Info_Mod_Namib_Lehre_Info;
	permanent	= 0;
	important	= 0;
	description	= "Then you're not a religious group anymore?";
};

FUNC INT Info_Mod_Namib_Lehre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Sekte))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Lehre_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Lehre_15_00"); //Then you're not a religious group anymore?
	AI_Output(self, hero, "Info_Mod_Namib_Lehre_02_01"); //No. We are more of an economic alliance and a living community. Whoever has had enough of the city's conventions and laws comes here.
	AI_Output(hero, self, "Info_Mod_Namib_Lehre_15_02"); //Then why are there still Templars here?
	AI_Output(self, hero, "Info_Mod_Namib_Lehre_02_03"); //Good question.... nobody ever thought of it. Well, Templars are always useful.
};

INSTANCE Info_Mod_Namib_Ruestung (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Ruestung_Condition;
	information	= Info_Mod_Namib_Ruestung_Info;
	permanent	= 0;
	important	= 0;
	description	= "If you no longer believe in the sleeper, why...";
};

FUNC INT Info_Mod_Namib_Ruestung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Sekte))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Ruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Ruestung_15_00"); //If you no longer believe in the sleeper, why do you still have the sign of his mask on your armor?
	AI_Output(self, hero, "Info_Mod_Namib_Ruestung_02_01"); //We decided to leave them there in memory of the old days. We never want to forget how false faith can be. Especially when you get it preached.
};

INSTANCE Info_Mod_Namib_Woher (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Woher_Condition;
	information	= Info_Mod_Namib_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why are you here with the sect?";
};

FUNC INT Info_Mod_Namib_Woher_Condition()
{
	if (Guru_Dabei == 1)
	|| (Templer_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Woher_15_00"); //Why are you here with the sect?
	AI_Output(self, hero, "Info_Mod_Namib_Woher_02_01"); //I used to live near Silden as the owner of a bogweed plantation.
	AI_Output(self, hero, "Info_Mod_Namib_Woher_02_02"); //When the king banned the bog weed, I was immediately thrown into the colony.
	AI_Output(hero, self, "Info_Mod_Namib_Woher_15_03"); //Then what did you do?
	AI_Output(self, hero, "Info_Mod_Namib_Woher_02_04"); //First I went to the new camp and worked there as a farmer.
	AI_Output(self, hero, "Info_Mod_Namib_Woher_02_05"); //When I found out that Y' Berion wanted to set up a camp in the swamp, I joined him. After some time he also named me a guru.
};

INSTANCE Info_Mod_Namib_Pickpocket (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Pickpocket_Condition;
	information	= Info_Mod_Namib_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Namib_Pickpocket_Condition()
{
	C_Beklauen	(123, ItMi_Gold, 66);
};

FUNC VOID Info_Mod_Namib_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Namib_Pickpocket);

	Info_AddChoice	(Info_Mod_Namib_Pickpocket, DIALOG_BACK, Info_Mod_Namib_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Namib_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Namib_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Namib_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Namib_Pickpocket);
};

FUNC VOID Info_Mod_Namib_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Namib_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Namib_Pickpocket);

		Info_AddChoice	(Info_Mod_Namib_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Namib_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Namib_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Namib_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Namib_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Namib_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Namib_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Namib_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Namib_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Namib_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Namib_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Namib_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Namib_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Namib_EXIT (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_EXIT_Condition;
	information	= Info_Mod_Namib_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Namib_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Namib_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_EXIT_02_01"); //Towards the goal!

	AI_StopProcessInfos	(self);
};
