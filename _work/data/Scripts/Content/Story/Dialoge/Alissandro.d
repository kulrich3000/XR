INSTANCE Info_Mod_Alissandro_Hi (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Hi_Condition;
	information	= Info_Mod_Alissandro_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Alissandro_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alissandro_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Alissandro_Hi_23_01"); //I'm a new baron and advisor to Thorus.
};

INSTANCE Info_Mod_Alissandro_Dieb (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Dieb_Condition;
	information	= Info_Mod_Alissandro_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you know about the thief?";
};

FUNC INT Info_Mod_Alissandro_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Thorus_Pruefung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Dieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_Dieb_15_00"); //What do you know about the thief?
	AI_Output(self, hero, "Info_Mod_Alissandro_Dieb_23_01"); //Well, it's usually between 11:00 and 6:00, when he strikes. Around this time, four guards are on guard duty, who should be aware of this:
	AI_Output(self, hero, "Info_Mod_Alissandro_Dieb_23_02"); //Bullit, editor, Jackal and Bloodwyn. That they haven't noticed anything so far makes them suspicious in my eyes. At least one of them will have a finger in the pie.
	AI_Output(hero, self, "Info_Mod_Alissandro_Dieb_15_03"); //All right, I'll ask around.

	B_LogEntry	(TOPIC_MOD_PDV, "Bullit, Cutter, Jackal and Bloodwyn are suspected of theft. I think I'll pay them a visit.");
};

INSTANCE Info_Mod_Alissandro_Unbekannter (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Unbekannter_Condition;
	information	= Info_Mod_Alissandro_Unbekannter_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Unbekannter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thorus_Verloren))
	&& (Mod_GorKarantoSchwach == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Unbekannter_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Unbekannter_23_00"); //You've been instructed by Thorus to prove the fraud to the unknown.
	AI_Output(hero, self, "Info_Mod_Alissandro_Unbekannter_15_01"); //Yeah, and?
	AI_Output(self, hero, "Info_Mod_Alissandro_Unbekannter_23_02"); //I know which hut the stranger's sleeping in. When you get out of the castle and turn right towards the arena, then the cabin next to Scatty's booth.
	AI_Output(hero, self, "Info_Mod_Alissandro_Unbekannter_15_03"); //Thanks.

	B_LogEntry	(TOPIC_MOD_AL_ARENA, "Alissandro told me where to find the hut of the unknown. It's the cabin right next to Scatty's booth. Maybe I should take a look around.");

	Mod_GorKarantoSchwach = 6;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Alissandro_ThorusTot (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_ThorusTot_Condition;
	information	= Info_Mod_Alissandro_ThorusTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_ThorusTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_ThorusTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_ThorusTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_ThorusTot_23_00"); //Damn, there was nothing I could do.
	AI_Output(hero, self, "Info_Mod_Alissandro_ThorusTot_15_01"); //What's happening?
	AI_Output(self, hero, "Info_Mod_Alissandro_ThorusTot_23_02"); //This filthy pig Bartholo led us to this cave, said the Buddler would rise up.
	AI_Output(self, hero, "Info_Mod_Alissandro_ThorusTot_23_03"); //When we were there, he robbed us with a horde of guardsmen. He killed Thorus, Arto and I fought until we realized that we couldn't win against the outnumber.
	AI_Output(self, hero, "Info_Mod_Alissandro_ThorusTot_23_04"); //So Arto cast a sleep spell on me to make it look like I was dead. He managed to escape. He said we'd meet at the old fort, up on the mountain.
	AI_Output(self, hero, "Info_Mod_Alissandro_ThorusTot_23_05"); //He proposed to plan our counterattack from there, because Bartholo took over the camp.
	AI_Output(self, hero, "Info_Mod_Alissandro_ThorusTot_23_06"); //I'll lead you there.

	B_LogEntry	(TOPIC_MOD_AL_SCHMUGGLER, "Alissandro told me that Bartholo has taken over the camp. Makanius wants to offer Bartholo his help in order to be able to observe him better, but I will join Alissandro and plan the counterattack with him.");

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOKASTELLPARTONE");
};

INSTANCE Info_Mod_Alissandro_ZwischenstationA (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_ZwischenstationA_Condition;
	information	= Info_Mod_Alissandro_ZwischenstationA_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_ZwischenstationA_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_ThorusTot))
	&& (Npc_GetDistToWP(self, "OC_ROUND_18") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_ZwischenstationA_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_ZwischenstationA_23_00"); //Hm, the way here is well guarded, we should take another one.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOKASTELLPARTTWO");
};

INSTANCE Info_Mod_Alissandro_ZwischenstationB (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_ZwischenstationB_Condition;
	information	= Info_Mod_Alissandro_ZwischenstationB_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_ZwischenstationB_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_ZwischenstationA))
	&& (Npc_GetDistToWP(self, "OW_PATH_001") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_ZwischenstationB_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_ZwischenstationB_23_00"); //From here, the road should not be too difficult any more.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOKASTELL");
};

INSTANCE Info_Mod_Alissandro_Kastell (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Kastell_Condition;
	information	= Info_Mod_Alissandro_Kastell_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Kastell_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_ZwischenstationB))
	&& (Npc_GetDistToWP(self, "CASTLE_01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Kastell_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Kastell_23_00"); //Here we are. Here we will prepare for the counterblow.
	AI_Output(self, hero, "Info_Mod_Alissandro_Kastell_23_01"); //I'll consult with Arto. Come back tomorrow.

	B_SetTopicStatus	(TOPIC_MOD_AL_SCHMUGGLER, LOG_SUCCESS);

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	Mod_AtKastell = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KASTELL");

	B_GivePlayerXP	(1000);

	B_Göttergefallen(2, 2);
};

INSTANCE Info_Mod_Alissandro_Botschafter (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Botschafter_Condition;
	information	= Info_Mod_Alissandro_Botschafter_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Botschafter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Kastell))
	&& (Mod_AtKastell < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Botschafter_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Botschafter_23_00"); //There's a problem, and I want you to solve it.
	AI_Output(hero, self, "Info_Mod_Alissandro_Botschafter_15_01"); //I see, what have I got to do?
	AI_Output(self, hero, "Info_Mod_Alissandro_Botschafter_23_02"); //We have sent ambassadors to all camps to ask for help in the fight against Bartholo. However, an ambassador didn't come back.
	AI_Output(hero, self, "Info_Mod_Alissandro_Botschafter_15_03"); //Where did you send him?
	AI_Output(self, hero, "Info_Mod_Alissandro_Botschafter_23_04"); //To the bandit camp near Troll Gorge.
	AI_Output(hero, self, "Info_Mod_Alissandro_Botschafter_15_05"); //And you're wondering why he didn't come back?
	AI_Output(self, hero, "Info_Mod_Alissandro_Botschafter_23_06"); //Yes, indeed. The bandits wouldn't kill him without warning. If they were interested in killing him, they would have tried to collect ransom for him.

	Log_CreateTopic	(TOPIC_MOD_AL_BOTSCHAFTER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_BOTSCHAFTER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_BOTSCHAFTER, "Alissandro sent me to the bandit camp to explain what happened to the ambassador.");

	Wld_InsertNpc	(Mod_1875_GRD_Botschafter_MT, "OC1");
	B_KillNpc	(Mod_1875_GRD_Botschafter_MT);
};

INSTANCE Info_Mod_Alissandro_BanditenDabei (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_BanditenDabei_Condition;
	information	= Info_Mod_Alissandro_BanditenDabei_Info;
	permanent	= 0;
	important	= 0;
	description	= "The bandits are joining us.";
};

FUNC INT Info_Mod_Alissandro_BanditenDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Feuerregen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_BanditenDabei_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_BanditenDabei_15_00"); //The bandits are joining us.
	AI_Output(self, hero, "Info_Mod_Alissandro_BanditenDabei_23_01"); //All right, so we have one more ally.
	AI_Output(self, hero, "Info_Mod_Alissandro_BanditenDabei_23_02"); //Here, take your reward.

	CreateInvItems	(self, ItMi_Nugget, 5);
	B_GiveInvItems	(self, hero, ItMi_Nugget, 5);

	B_GivePlayerXP	(500);

	B_Göttergefallen(2, 1);

	Mod_AlissandroBanditen_GetDay	= Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_AL_BOTSCHAFTER, "Alissandro is satisfied with me, now we have another camp on our side.");
	B_SetTopicStatus	(TOPIC_MOD_AL_BOTSCHAFTER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Alissandro_EigentlichBereit (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_EigentlichBereit_Condition;
	information	= Info_Mod_Alissandro_EigentlichBereit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_EigentlichBereit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_BanditenDabei))
	&& (Wld_GetDay() > Mod_AlissandroBanditen_GetDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_EigentlichBereit_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_EigentlichBereit_23_00"); //We now have enough people to storm the old camp, but there is still a problem.
	AI_Output(self, hero, "Info_Mod_Alissandro_EigentlichBereit_23_01"); //We don't know the list of guardsmen. And that's where your next assignment lies.
	AI_Output(hero, self, "Info_Mod_Alissandro_EigentlichBereit_15_02"); //All right, what do you want me to do?
	AI_Output(self, hero, "Info_Mod_Alissandro_EigentlichBereit_23_03"); //I want you to break into the camp and steal the map with the lineup.
	AI_Output(hero, self, "Info_Mod_Alissandro_EigentlichBereit_15_04"); //How am I supposed to get into the camp?
	AI_Output(self, hero, "Info_Mod_Alissandro_EigentlichBereit_23_05"); //I've got some spell rolls from the transformation magicians, so you'll get into the camp.

	CreateInvItems	(self, ItSc_TrfRabbit, 3);
	B_GiveInvItems	(self, hero, ItSc_TrfRabbit, 3);

	AI_Output(self, hero, "Info_Mod_Alissandro_EigentlichBereit_23_06"); //You can't turn back until you're in Bartholo's room, the place where Gomez used to live.

	B_StartOtherRoutine	(Mod_1106_EBR_Bartholo_MT, "SMALLTALK");
	B_StartOtherRoutine	(Mod_1876_EBR_Bloodwyn_MT, "SMALLTALK");

	Log_CreateTopic	(TOPIC_MOD_AL_KARTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_KARTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_KARTE, "Alissandro instructed me to steal the plan for setting up the guards. But he gave me some transformational roles. That should get me to Bartholo's room.");
};

INSTANCE Info_Mod_Alissandro_HierPlan (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_HierPlan_Condition;
	information	= Info_Mod_Alissandro_HierPlan_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the plan.";
};

FUNC INT Info_Mod_Alissandro_HierPlan_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_EigentlichBereit))
	&& (Npc_HasItems(hero, AL_Aufstellung) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_HierPlan_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_HierPlan_15_00"); //I have the plan.
	
	B_GiveInvItems	(hero, self, AL_Aufstellung, 1);

	AI_Output(self, hero, "Info_Mod_Alissandro_HierPlan_23_01"); //Well, then we'll be able to attack the camp soon.

	B_GivePlayerXP	(500);

	B_Göttergefallen(2, 1);

	Mod_AlissandroBanditen_GetDay	= Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_AL_KARTE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Alissandro_GotoJackal (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_GotoJackal_Condition;
	information	= Info_Mod_Alissandro_GotoJackal_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_GotoJackal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_HierPlan))
	&& (Wld_GetDay() > Mod_AlissandroBanditen_GetDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_GotoJackal_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_00"); //Bald können wir das Lager angreifen, aber einen Schritt haben wir noch zu machen.
	AI_Output(hero, self, "Info_Mod_Alissandro_GotoJackal_15_01"); //Und der wäre?
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_02"); //Dem Plan nach sind Bartholos Leute sehr gut geordnet, so dass das Lager kaum verwundbar ist.
	AI_Output(hero, self, "Info_Mod_Alissandro_GotoJackal_15_03"); //Und wie soll ich dieses Problem lösen?
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_04"); //Der Mann, der dich gerettet hat, hat den Auftrag, die wichtigen Mitglieder des Lagers zu töten. Allerdings hat Bloodwyn ein Auge auf ihn geworfen, Bartholo schöpft vermutlich Verdacht.
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_05"); //Nun musst du seinen Auftrag übernehmen.
	AI_Output(hero, self, "Info_Mod_Alissandro_GotoJackal_15_06"); //Wer war der Kerl eigentlich?
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_07"); //Der Gardist Jackal. Wenn du mehr Fragen hast, unterhalte dich mit ihm.
	AI_Output(hero, self, "Info_Mod_Alissandro_GotoJackal_15_08"); //Wie soll ich in das Lager kommen?
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_09"); //Ich habe eine Teleportrune von den Heilmagiern bekommen, du kommst damit in das Haus der Magier.

	B_GiveInvItems	(self, hero, ItRu_TeleportOldcamp, 1);

	AI_Output(self, hero, "Info_Mod_Alissandro_GotoJackal_23_10"); //Außerdem bekommst du eine Liste mit den Leuten, die du töten sollst. 

	B_GiveInvItems	(self, hero, ItWr_Alissandro_KillList, 1);

	B_StartOtherRoutine	(Mod_1874_HMG_Makanius_MT, "TREFFEN");
	B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "WACHE");
	B_StartOtherRoutine	(Mod_1902_STT_Ian_MT, "KILLMISSION");
	B_StartOtherRoutine	(Mod_1025_KGD_Cathran_MT, "KILLMISSION");

	Log_CreateTopic	(TOPIC_MOD_AL_KillMission, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_KillMission, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_KillMission, "Alissandro sent me to the camp to kill certain members. He gave me a list.");
};

INSTANCE Info_Mod_Alissandro_WarnungLagerEntdeckt (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_WarnungLagerEntdeckt_Condition;
	information	= Info_Mod_Alissandro_WarnungLagerEntdeckt_Info;
	permanent	= 0;
	important	= 0;
	description	= "The guards know our hideout, we must flee.";
};

FUNC INT Info_Mod_Alissandro_WarnungLagerEntdeckt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_BloodwynDead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_WarnungLagerEntdeckt_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_WarnungLagerEntdeckt_15_00"); //The guards know our hideout, we must flee.
	AI_Output(self, hero, "Info_Mod_Alissandro_WarnungLagerEntdeckt_23_01"); //Damn it, we're splitting up. Go to the goblin cave on the way to the swamp camp.
	AI_Output(self, hero, "Info_Mod_Alissandro_WarnungLagerEntdeckt_23_02"); //Don't use the pass, I've marked the path on the map.

	B_GiveInvItems	(self, hero, ItWr_MapToGobboHoehle, 1);

	B_LogEntry	(TOPIC_MOD_AL_KillMission, "Alissandro was warned. We'll split up. I'm supposed to go to the old goblin cave where the almanac was hidden. He drew me the route on the map.");

	B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "WAITATKASTELL");

	// Zufluchten füllen
	Wld_InsertNpc	(Mod_1917_GRD_Gardist_MT, "OC1");
	Wld_InsertNpc	(Mod_1918_GRD_Gardist_MT, "OC1");
	Wld_InsertNpc	(Mod_1919_GRD_Gardist_MT, "OC1");
	Wld_InsertNpc	(Mod_1920_GRD_Gardist_MT, "OC1");
	Wld_InsertNpc	(Mod_1921_GRD_Gardist_MT, "OC1");
	Wld_InsertNpc	(Mod_1922_GRD_Gardist_MT, "OC1");
	//Wld_InsertNpc	(Mod_1923_GRD_Gardist_MT, "OC1"); //Kommt später wegen Gefangennahme
};

INSTANCE Info_Mod_Alissandro_ThanksForRettung (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_ThanksForRettung_Condition;
	information	= Info_Mod_Alissandro_ThanksForRettung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_ThanksForRettung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_InOC))
	&& (Mod_AL_AlissandroBefreit == 1)
	&& (Npc_GetDistToWP(self, "GOBBO_MASTERCAVE") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_ThanksForRettung_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_ThanksForRettung_23_00"); //I'm glad you could help me. Here, you earned it.
	
	CreateInvItems	(self, Grd_Armor_H, 1);
	B_GiveInvItems	(self, hero, Grd_Armor_H, 1);

	Mod_AL_AlissandroBefreit = 2;

	B_LogEntry	(TOPIC_MOD_AL_WhereAlissandro, "We're safe. Alissandro gave me the heavy wardrobe.");
	B_SetTopicStatus	(TOPIC_MOD_AL_WhereAlissandro, LOG_SUCCESS);

	B_GivePlayerXP	(1000);

	B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "ALIWACHEZUFLUCHT");
	B_StartOtherRoutine	(self, "ATZUFLUCHT");

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Alissandro_GotoZufluchten (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_GotoZufluchten_Condition;
	information	= Info_Mod_Alissandro_GotoZufluchten_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_GotoZufluchten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_ThanksForRettung))
	&& (Mod_AL_AlissandroBefreit == 2)
	&& (Npc_GetDistToWP(self, "GOBBO_MASTERCAVE9") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_GotoZufluchten_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoZufluchten_23_00"); //It is now time to recapture the camp. I want you to go to our people's other refuges and send them to the cult camp where we'll have a consultation.
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoZufluchten_23_01"); //Jackal will seek out the allies in time and deliver this message to them.
	AI_Output(hero, self, "Info_Mod_Alissandro_GotoZufluchten_15_02"); //Where are the other refuges?
	AI_Output(self, hero, "Info_Mod_Alissandro_GotoZufluchten_23_03"); //You get this card from me.
	
	CreateInvItems	(self, ItWrWorldmapZufluchten, 1);
	B_GiveInvItems	(self, hero, ItWrWorldmapZufluchten, 1);

	AI_Output(self, hero, "Info_Mod_Alissandro_GotoZufluchten_23_04"); //If you've been to all seven refuges, go to the sects camp at the temple forecourt.

	Mod_AL_AlissandroBefreit = 3;

	Log_CreateTopic	(TOPIC_MOD_AL_EROBERUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_EROBERUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "Alissandro instructed me to visit our people's refuges and send them to the temple forecourt of the sect. 7 positions are marked on the map.");

	B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "INPSICAMP");
	B_StartOtherRoutine	(Mod_761_BDT_Dexter_MT, "INPSICAMP");
	B_StartOtherRoutine	(Mod_1016_KGD_Hymir_MT, "INPSICAMP");
	B_StartOtherRoutine	(Mod_2005_GUR_CorCadar_MT, "INPSICAMP");
	B_StartOtherRoutine	(Mod_106_TPL_Angar_MT, "INPSICAMP");
	B_StartOtherRoutine	(Mod_1874_HMG_Makanius_MT, "INPSICAMP");
	B_StartOtherRoutine	(self, "INPSICAMP");

	Wld_InsertNpc	(Mod_1923_GRD_Gardist_MT, "OC1");
};

INSTANCE Info_Mod_Alissandro_Eroberung_01 (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Eroberung_01_Condition;
	information	= Info_Mod_Alissandro_Eroberung_01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Eroberung_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_AtPC))
	&& (Npc_GetDistToWP(hero, "PSI_TEMPLE_IN_05") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Eroberung_01_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_01_23_00"); //We've worked out a plan of how we're gonna take camp.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Alissandro_Eroberung_08 (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Eroberung_08_Condition;
	information	= Info_Mod_Alissandro_Eroberung_08_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Eroberung_08_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Eroberung_07))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Eroberung_08_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_08_23_00"); //We don't care about the battle outside, we look for Bartholo.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Alissandro_Eroberung_10 (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Eroberung_10_Condition;
	information	= Info_Mod_Alissandro_Eroberung_10_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Eroberung_10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_Eroberung_09))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Eroberung_10_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_10_23_00"); //Well, let me get it straight:
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_10_23_01"); //1. Step: We enter the camp dressed as swamp herb merchants. We are escorted by two Templars.
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_10_23_02"); //2. Step: Makanius gives the sign for our people in the camp to open the gates.
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_10_23_03"); //3. Step: The bandits from one gate and the guards from the other one join us and fight the guards.
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_10_23_04"); //4. Step: Our mission is to kill Bartholo, and the healing mages help us do this.
	AI_Output(self, hero, "Info_Mod_Alissandro_Eroberung_10_23_05"); //All right, let's get going. Follow me. Follow me.

	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "He explained the plan to me, it's called:");
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "1. Step: We enter the camp dressed as swamp herb merchants. We are escorted by two Templars.");
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "2. Step: Makanius gives the sign for our people in the camp to open the gates.");
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "3. Step: The bandits from one gate and the guards from the other one join us and fight the guards.");
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "4. Step: Our mission is to kill Bartholo, and the healing mages help us do this.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GOTOTEMPELVORPLATZ");
	
	Wld_InsertNpc(Mod_9999_HMG_Heilungsmagier_MT, "PSI_TEMPLE_STAIRS_1");
};

INSTANCE Info_Mod_Alissandro_BeiBartholo (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_BeiBartholo_Condition;
	information	= Info_Mod_Alissandro_BeiBartholo_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_BeiBartholo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GardistFuerEroberung_Hi_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_BeiBartholo_Info()
{
	AI_UnequipArmor	(self);

	AI_EquipArmor	(self, EBR_ARMOR_H2);

	AI_Output(self, hero, "Info_Mod_Alissandro_BeiBartholo_23_00"); //Attack!

	AI_StopProcessInfos	(self);
	
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "We are now with Bartholo and Makanius has given the signal for the bandits and royal guards, but Bartholo has fled and has set a guardsman on our backs.");
	
	Mod_1106_EBR_Bartholo_MT.aivar[AIV_ToughGuy] = TRUE;
	B_StartOtherRoutine	(Mod_1106_EBR_Bartholo_MT, "FLUCHTINKERKER");

	Wld_SendTrigger	("EVT_KERKERGATE_01");

	B_Attack	(self, Mod_1156_GRD_Gardist_MT, AR_GuildEnemy, 0);
	B_Attack	(Mod_1924_TPL_GorNaMon_MT, Mod_1156_GRD_Gardist_MT, AR_GuildEnemy, 0);
	B_Attack	(Mod_1925_TPL_GorNaKar_MT, Mod_1156_GRD_Gardist_MT, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Alissandro_WacheTotWoBartholo (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_WacheTotWoBartholo_Condition;
	information	= Info_Mod_Alissandro_WacheTotWoBartholo_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_WacheTotWoBartholo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_BeiBartholo))
	&& (Npc_IsDead(Mod_1156_GRD_Gardist_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_WacheTotWoBartholo_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_WacheTotWoBartholo_23_00"); //Now we have to find Bartholo. He couldn't have left the camp.
	
	B_StartOtherRoutine	(self, "GOTOMAKANIUS");
	B_StartOtherRoutine	(Mod_1924_TPL_GorNaMon_MT, "STAYATOC");
	B_StartOtherRoutine	(Mod_1925_TPL_GorNaKar_MT, "STAYATOC");
	B_StartOtherRoutine	(Mod_1874_HMG_Makanius_MT, "WAITFORPLAYER");
};

INSTANCE Info_Mod_Alissandro_BartholoTot (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_BartholoTot_Condition;
	information	= Info_Mod_Alissandro_BartholoTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "The warehouse is now in our hands again.";
};

FUNC INT Info_Mod_Alissandro_BartholoTot_Condition()
{
	if (Npc_IsDead(Mod_1106_EBR_Bartholo_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_BartholoTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_BartholoTot_15_00"); //The warehouse is now in our hands again.
	AI_Output(self, hero, "Info_Mod_Alissandro_BartholoTot_23_01"); //All right, now the fight is over. In that case, you deserve to be rewarded.
	AI_Output(self, hero, "Info_Mod_Alissandro_BartholoTot_23_02"); //Come to the throne room tomorrow.

	AI_StopProcessInfos	(self);
	
	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "I found Bartholo in the dungeons and killed him. The next day I shall come to the throne room.");

	B_StartOtherRoutine	(self, "BOSS");
	
	B_StartOtherRoutine	(Mod_1874_HMG_Makanius_MT, "ALTESLAGER");
	B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "START");
	B_StartOtherRoutine	(Mod_761_BDT_Dexter_MT, "START");
	B_StartOtherRoutine	(Mod_1016_KGD_Hymir_MT, "START");
	B_StartOtherRoutine	(Mod_2005_GUR_CorCadar_MT, "START");
	B_StartOtherRoutine	(Mod_106_TPL_Angar_MT, "START");

	Mod_AL_BelohnungFuerEroberung = Wld_GetDay();
};

INSTANCE Info_Mod_Alissandro_BelohnungFuerEroberung (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_BelohnungFuerEroberung_Condition;
	information	= Info_Mod_Alissandro_BelohnungFuerEroberung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_BelohnungFuerEroberung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_BartholoTot))
	&& (Wld_GetDay() > Mod_AL_BelohnungFuerEroberung)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_BelohnungFuerEroberung_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_BelohnungFuerEroberung_23_00"); //Well, you have now been called here to take the highest rank in the camp.
	AI_Output(self, hero, "Info_Mod_Alissandro_BelohnungFuerEroberung_23_01"); //Take this armor and repeat after me:

	CreateInvItems	(hero, Ebr_Armor_H2, 1);

	B_ShowGivenThings	("Heavy ore baron armor received");

	AI_Output(self, hero, "Info_Mod_Alissandro_BelohnungFuerEroberung_23_02"); //I swear on behalf of every member of the camp,
	AI_Output(hero, self, "Info_Mod_Alissandro_BelohnungFuerEroberung_15_03"); //I swear on behalf of every member of the camp,
	AI_Output(self, hero, "Info_Mod_Alissandro_BelohnungFuerEroberung_23_04"); //... whether Buddler, Shadow or Baron,...
	AI_Output(hero, self, "Info_Mod_Alissandro_BelohnungFuerEroberung_15_05"); //... whether Buddler, Shadow or Baron,...
	AI_Output(self, hero, "Info_Mod_Alissandro_BelohnungFuerEroberung_23_06"); //... that I lead and protect the camp justly.
	AI_Output(hero, self, "Info_Mod_Alissandro_BelohnungFuerEroberung_15_07"); //... that I lead and protect the camp justly.
	AI_Output(self, hero, "Info_Mod_Alissandro_BelohnungFuerEroberung_23_08"); //All right, now you're the baron of the Old Camp.

	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "I was appointed by Alissandro to the Erzbaron.");
	B_SetTopicStatus	(TOPIC_MOD_AL_EROBERUNG, LOG_SUCCESS);

	B_GivePlayerXP	(2500);

	B_Göttergefallen(2, 3);
};

INSTANCE Info_Mod_Alissandro_WasTunAlsErzbaron (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_WasTunAlsErzbaron_Condition;
	information	= Info_Mod_Alissandro_WasTunAlsErzbaron_Info;
	permanent	= 0;
	important	= 0;
	description	= "What is my role as an Erzbaron?";
};

FUNC INT Info_Mod_Alissandro_WasTunAlsErzbaron_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_BelohnungFuerEroberung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_WasTunAlsErzbaron_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_WasTunAlsErzbaron_15_00"); //What is my role as an Erzbaron?
	AI_Output(self, hero, "Info_Mod_Alissandro_WasTunAlsErzbaron_23_01"); //Well, we'll take care of the camp's problems and try to make it more influential.
	AI_Output(hero, self, "Info_Mod_Alissandro_WasTunAlsErzbaron_15_02"); //And how am I supposed to contribute?
	AI_Output(self, hero, "Info_Mod_Alissandro_WasTunAlsErzbaron_23_03"); //Our current goal is to expand our influence on khorinis.
	AI_Output(hero, self, "Info_Mod_Alissandro_WasTunAlsErzbaron_15_04"); //And what can I do about it?
	AI_Output(self, hero, "Info_Mod_Alissandro_WasTunAlsErzbaron_23_05"); //Go into town and talk to Larius, the governor.
	AI_Output(hero, self, "Info_Mod_Alissandro_WasTunAlsErzbaron_15_06"); //Larius' posts have taken over the paladins.
	AI_Output(self, hero, "Info_Mod_Alissandro_WasTunAlsErzbaron_23_07"); //Damn, I didn't know that.
	AI_Output(hero, self, "Info_Mod_Alissandro_WasTunAlsErzbaron_15_08"); //And what am I supposed to do now?
	AI_Output(self, hero, "Info_Mod_Alissandro_WasTunAlsErzbaron_23_09"); //Shadow Whistler's already on his way into town. Talk to him. Talk to him.

	Log_CreateTopic	(TOPIC_MOD_AL_AUSBREITUNGK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_AUSBREITUNGK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_AUSBREITUNGK, "Alissandro wants us to expand the camp's influence into the city of Khorini. I'm supposed to meet Whistler outside the city gate.");

	B_StartOtherRoutine	(Mod_1161_STT_Whistler_MT, "TOT");
	AI_Teleport	(Mod_1161_STT_Whistler_MT, "TOT");

	B_StartOtherRoutine	(Mod_948_BDT_Esteban_MT, "TOT");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "TOT");
};

INSTANCE Info_Mod_Alissandro_Daemonenritter (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Daemonenritter_Condition;
	information	= Info_Mod_Alissandro_Daemonenritter_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Daemonenritter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_Daemonen))
	&& (Npc_IsDead(Mod_1935_DMR_Daemonenritter_MT))
	&& (Npc_IsDead(Mod_1936_DMR_Daemonenritter_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Daemonenritter_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Daemonenritter_23_00"); //Who are these people? What do they want from us?
	AI_Output(hero, self, "Info_Mod_Alissandro_Daemonenritter_15_01"); //It's a long story, but we don't have time for it now. We'll have backup soon. We should get out of here before more of these guys get here.
	AI_Output(self, hero, "Info_Mod_Alissandro_Daemonenritter_23_02"); //All right, follow me!

	B_LogEntry	(TOPIC_MOD_AL_MINE, "It's too late, the demon knights are already with Alissandro. We were able to beat them, but reinforcements will be coming soon. We should run.");

	B_StartOtherRoutine	(self, "TOCAVALORN");
	B_StartOtherRoutine	(Mod_1105_EBR_Arto_MT, "TOCAVALORN");
};

INSTANCE Info_Mod_Alissandro_AtCavalorn (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_AtCavalorn_Condition;
	information	= Info_Mod_Alissandro_AtCavalorn_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_AtCavalorn_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Daemonenritter))
	&& (Npc_GetDistToWP(self, "OW_SAWHUT_GREENGOBBO_SPAWN") < 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_AtCavalorn_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_AtCavalorn_23_00"); //We should be safe here. Now tell me what people in the black armour want from us.
	AI_Output(hero, self, "Info_Mod_Alissandro_AtCavalorn_15_01"); //These guys work for Gomez who wants the camp back. I went to the Demon Knights as requested to make them an offer about the Old Mine.
	AI_Output(hero, self, "Info_Mod_Alissandro_AtCavalorn_15_02"); //There have been a few minor problems in the negotiations, which have led to the Demon Knights now wanting to conquer the Old Camp so that Gomez, Raven and Scar can take their place here again.
	AI_Output(self, hero, "Info_Mod_Alissandro_AtCavalorn_23_03"); //All right, now we should plan the next step.
	AI_Output(self, hero, "Info_Mod_Alissandro_AtCavalorn_23_04"); //I'll think about it, we'll talk about it tomorrow.

	Mod_AL_AtCavalorn = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_AL_MINE, "I escaped with Alissandro to Cavalorn's old hut. Here we can work out the next step.");
	B_SetTopicStatus	(TOPIC_MOD_AL_MINE, LOG_SUCCESS);

	B_GivePlayerXP	(1000);

	B_StartOtherRoutine	(self, "ATCAVALORN");
	B_StartOtherRoutine	(Mod_1105_EBR_Arto_MT, "ATCAVALORN");

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Alissandro_Flucht (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Flucht_Condition;
	information	= Info_Mod_Alissandro_Flucht_Info;
	permanent	= 0;
	important	= 0;
	description	= "What next?";
};

FUNC INT Info_Mod_Alissandro_Flucht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_AtCavalorn))
	&& (Wld_GetDay() > Mod_AL_AtCavalorn)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Flucht_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_00"); //What now?
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_01"); //We won't be safe here long. They'll probably be looking for us by now.
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_02"); //Then we kick the ass of those who are looking for us.
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_03"); //There are too many of them and we can't call for backup. We have to flee and ask for support and I would have a plan...
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_04"); //What does it look like?
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_05"); //The Paladins are enemies to Gomez's people and they are a strong guild, so we might be able to hope for their support.
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_06"); //Why should the Paladins help us?
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_07"); //Oh, I have a remarkably good connection to them...
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_08"); //How so?
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_09"); //All right, I think I should tell you... Before I settled on Khorinis as a merchant, I was Paladin in Myrtana and friends with Hagen.
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_10"); //We fought the battle of Ishtar together, when it was occupied by us and the Assassin leader Zuben wanted to recapture the city.... Well, we fought off the attack back then, but today the Assassins have regained power in Varant....
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_11"); //But that doesn't matter. Anyway, I'm friends with Lord Hagen and I think he'll help us.
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_12"); //Well, how am I supposed to get out of the Minental? Gomez' people are guarding all exits.
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_13"); //That is true and makes it more difficult. Only the guards at the exchange site discovered this stuff they were selling in Khorata.... What was it again? Frustration donor?
	AI_Output(hero, self, "Info_Mod_Alissandro_Flucht_15_14"); //Pleasure giver.... I understand. I'll try to reach Lord Hagen.
	AI_Output(self, hero, "Info_Mod_Alissandro_Flucht_23_15"); //Well, good luck!

	Wld_InsertNpc	(DemonKnight_01,	"START");
	Wld_InsertNpc	(DemonKnight_02,	"START");
	Wld_InsertNpc	(Mod_7065_DMR_Daemonenritter_MT,	"START");
	Wld_InsertNpc	(Mod_7066_DMR_Daemonenritter_MT,	"START");

	Log_CreateTopic	(TOPIC_MOD_AL_FLUCHT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_FLUCHT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_FLUCHT, "Alissandro sent me to the paladins. To leave the Minental, I should take it away at the exchange place.");
};

INSTANCE Info_Mod_Alissandro_Hagen (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Hagen_Condition;
	information	= Info_Mod_Alissandro_Hagen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lord Hagen has assured us of the paladin's help.";
};

FUNC INT Info_Mod_Alissandro_Hagen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Alissandro))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Hagen_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_Hagen_15_00"); //Lord Hagen has assured us of the paladin's help.
	AI_Output(self, hero, "Info_Mod_Alissandro_Hagen_23_01"); //Very good. Very good. Now we wait for his men to come.

	B_GivePlayerXP	(500);

	Mod_AL_Alissandro_WaitForOric = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_AL_FLUCHT, "I told Alissandro about Lord Hagen's help.");
	B_SetTopicStatus	(TOPIC_MOD_AL_FLUCHT, LOG_SUCCESS);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Alissandro_OricDa (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_OricDa_Condition;
	information	= Info_Mod_Alissandro_OricDa_Info;
	permanent	= 0;
	important	= 0;
	description	= "I was expecting a little more paladins.";
};

FUNC INT Info_Mod_Alissandro_OricDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Hagen))
	&& (Mod_AL_Alissandro_WaitForOric < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_OricDa_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_OricDa_15_00"); //I was expecting a little more paladins.
	AI_Output(self, hero, "Info_Mod_Alissandro_OricDa_23_01"); //This is just the troop we're going to take the first steps with. For the liberation of the mine, more will come to us and for the siege as well.
	AI_Output(self, hero, "Info_Mod_Alissandro_OricDa_23_02"); //With Oric's troupe we take the paths from the valley of the Mine. We will leave right away and conquer the Old Mine as well as the exchange place.
	AI_Output(hero, self, "Info_Mod_Alissandro_OricDa_15_03"); //What are we going to do with the Belarusian shrines?
	AI_Output(self, hero, "Info_Mod_Alissandro_OricDa_23_04"); //The orcs in the Orc City are enemies to all humans. Those in the fortress have relations with the black magician who leads the demon knights and summoners...
	AI_Output(self, hero, "Info_Mod_Alissandro_OricDa_23_05"); //... but he does not support Gomez' plans and has closed the altars to the knights who work with Gomez.
	AI_Output(hero, self, "Info_Mod_Alissandro_OricDa_15_06"); //That makes things a little easier.
	AI_Output(self, hero, "Info_Mod_Alissandro_OricDa_23_07"); //Good. We're gonna do it now. Let's follow Oric.

	Log_CreateTopic	(TOPIC_MOD_AL_ERSTERSCHRITT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_ERSTERSCHRITT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_ERSTERSCHRITT, "The first thing we're supposed to do is take the entrances to the Minental. Some paladins under Oric stand by our side.");

	B_StartOtherRoutine	(self, "TOVM");
	B_StartOtherRoutine	(Mod_7039_PAL_Oric_MT, "TOVM");
	B_StartOtherRoutine	(Mod_7040_RIT_Ritter_MT, "TOVM");
	B_StartOtherRoutine	(Mod_7041_RIT_Ritter_MT, "TOVM");
	B_StartOtherRoutine	(Mod_7042_RIT_Ritter_MT, "TOVM");
	B_StartOtherRoutine	(Mod_7043_RIT_Ritter_MT, "TOVM");
	B_StartOtherRoutine	(Mod_7044_RIT_Ritter_MT, "TOVM");
	B_StartOtherRoutine	(Mod_7045_RIT_Ritter_MT, "TOVM");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7039_PAL_Oric_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7040_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7041_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7042_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7043_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7044_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7045_RIT_Ritter_MT.aivar[AIV_PARTYMEMBER] = TRUE;

	Wld_InsertNpc	(Mod_7051_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7052_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7053_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7054_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7055_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7056_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7057_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7058_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7059_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7060_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7061_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7062_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7063_DMR_Daemonenritter_MT, "OC1");
	Wld_InsertNpc	(Mod_7064_DMR_Daemonenritter_MT, "OC1");

	Wld_SendTrigger	("EVT_AM_LOB_GATE_BIG");
};

INSTANCE Info_Mod_Alissandro_Lockvogel (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Lockvogel_Condition;
	information	= Info_Mod_Alissandro_Lockvogel_Info;
	permanent	= 0;
	important	= 0;
	description	= "What happens now?";
};

FUNC INT Info_Mod_Alissandro_Lockvogel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Oric_MineUns))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Lockvogel_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_Lockvogel_15_00"); //What happens now?

	if (Npc_HasItems(hero, ITRU_TELEPORTOLDCAMP) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_01"); //You still have the teleportrune in the warehouse...
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_02"); //Here you have a teleportrune in the camp....

		B_GiveInvItems	(self, hero, ITRU_TELEPORTOLDCAMP, 1);

		Wld_RemoveItem	(ITRU_TELEPORTOLDCAMP);
	};

	AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_03"); //She'll take you to the House of Healing Magicians. They're trapped in the house, under guard.
	AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_04"); //However, they are on our side. So they won't betray you if you teleport into their building.
	AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_05"); //Together with the healing magicians, you kill the guard of the house and take their armor.
	AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_06"); //Go with this one to Gomez and try to lure him and his people out of the camp into the forest near the hut.
	AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_07"); //There we will prepare an ambush.
	AI_Output(hero, self, "Info_Mod_Alissandro_Lockvogel_15_08"); //Sounds risky. How do I know the other demon knights won't be alerted if I kill the guard at the Healing Magicians?
	AI_Output(self, hero, "Info_Mod_Alissandro_Lockvogel_23_09"); //Leave it to Makanius. He seems to have a plan. Now go and do your job... good luck.

	Log_CreateTopic	(TOPIC_MOD_AL_LOCKVOGEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_LOCKVOGEL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_LOCKVOGEL, "Alissandro has a plan to eliminate Gomez, so I have to teleport myself first to the House of Healing Magicians. Makanius will explain the rest.");
};

INSTANCE Info_Mod_Alissandro_Ende (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Ende_Condition;
	information	= Info_Mod_Alissandro_Ende_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alissandro_Ende_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Raven))
	&& (!Npc_IsInState(Mod_680_DMB_Xardas_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Ende_Info()
{
	AI_Output(self, hero, "Info_Mod_Alissandro_Ende_23_00"); //That's a wrap. Now nothing stands in the way of the camp. we will lead it into a bright future!
	
	B_LogEntry	(TOPIC_MOD_AL_LOCKVOGEL, "The camp is ours and remains so!");
	B_SetTopicStatus	(TOPIC_MOD_AL_LOCKVOGEL, LOG_SUCCESS);

	B_GivePlayerXP	(1000);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7039_PAL_Oric_MT, "TOT");
	B_StartOtherRoutine	(Mod_1874_HMG_Makanius_MT, "ALTESLAGER");

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Alissandro_Erzbaron (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Erzbaron_Condition;
	information	= Info_Mod_Alissandro_Erzbaron_Info;
	permanent	= 0;
	important	= 0;
	description	= "How did you become Erzbaron?";
};

FUNC INT Info_Mod_Alissandro_Erzbaron_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alissandro_Erzbaron_Info()
{
	AI_Output(hero, self, "Info_Mod_Alissandro_Erzbaron_15_00"); //How did you become Erzbaron?
	AI_Output(self, hero, "Info_Mod_Alissandro_Erzbaron_23_01"); //I was a merchant in Khorinis before and bought and sold ore. So after the fall of the barrier, I came to the Minental to see how it was with the ore.
	AI_Output(self, hero, "Info_Mod_Alissandro_Erzbaron_23_02"); //My inquiries led me to the Old Camp.
	AI_Output(self, hero, "Info_Mod_Alissandro_Erzbaron_23_03"); //When I had talked to Thorus for a while, he asked me if I could not help him with my trading skills.
	AI_Output(self, hero, "Info_Mod_Alissandro_Erzbaron_23_04"); //Well, since I also had the ore in prospect, of course I agreed.
	AI_Output(self, hero, "Info_Mod_Alissandro_Erzbaron_23_05"); //And so we're working together here now, and I'm his chief advisor.
};

INSTANCE Info_Mod_Alissandro_Pickpocket (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_Pickpocket_Condition;
	information	= Info_Mod_Alissandro_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Alissandro_Pickpocket_Condition()
{
	C_Beklauen	(169, ItMi_Gold, 92);
};

FUNC VOID Info_Mod_Alissandro_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);

	Info_AddChoice	(Info_Mod_Alissandro_Pickpocket, DIALOG_BACK, Info_Mod_Alissandro_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Alissandro_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Alissandro_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Alissandro_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);
};

FUNC VOID Info_Mod_Alissandro_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);

		Info_AddChoice	(Info_Mod_Alissandro_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Alissandro_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Alissandro_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Alissandro_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Alissandro_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Alissandro_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Alissandro_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Alissandro_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Alissandro_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Alissandro_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Alissandro_EXIT (C_INFO)
{
	npc		= Mod_1870_EBR_Alissandro_MT;
	nr		= 1;
	condition	= Info_Mod_Alissandro_EXIT_Condition;
	information	= Info_Mod_Alissandro_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alissandro_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alissandro_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
