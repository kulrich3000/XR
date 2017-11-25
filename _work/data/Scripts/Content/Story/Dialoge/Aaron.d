INSTANCE Info_Mod_Aaron_Hi (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Hi_Condition;
	information	= Info_Mod_Aaron_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well, hard at praying?";
};

FUNC INT Info_Mod_Aaron_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagon_HabFoki))
	&& (Wld_IsTime(22,00,05,00))
	&& (Npc_HasItems(hero, ItWr_PatherionNachricht1) == 1)
	&& (Npc_HasItems(hero, ItWr_PatherionNachricht2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_00"); //Well, hard at praying?
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_01"); //Damn Beliar pendant! For a long time I tried to kill you, and now you come to church with me?
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_02"); //I will not desecrate this holy place with your blood!
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_03"); //You call me Beliar Pendant? What makes you think I belong to Beliar?
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_04"); //(surprised silence)
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_05"); //Is it possible Tojan told you that?
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_06"); //How do you know that?
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_07"); //Well, let's put it this way: I too should kill someone. On Tojan's behalf.
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_08"); //And that's you.
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_09"); //(surprised) What?
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_10"); //Tojan's playing the wrong game with us.
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_11"); //You're just trying to mess with me so you can ram your knife through my back!
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_12"); //Do you really think a black magician would enter the holiest of all the places of the Innos Church?
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_13"); //HA! I knew it. You must be a black magician. Every one of our brothers knows that this is not the most sacred place of the Innos Church. It's....
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_14"); //The chapel on the hill. I came through this chapel.
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_15"); //You're lying!
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_16"); //Here. Is that proof enough?

	Npc_RemoveInvItems	(hero, ItWr_PatherionNachricht1, 1);
	Npc_RemoveInvItems	(hero, ItWr_PatherionNachricht2, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_17"); //... my diary? You were actually there. Then you can't be a Beliar pendant. Then.... Wasn't the monastery infiltrated?
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_18"); //Yes, I'm afraid so. But someone I wouldn't have suspected.
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_19"); //You mean...
	AI_Output(hero, self, "Info_Mod_Aaron_Hi_15_20"); //... Tojan.
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_21"); //You're right. You're right. Everything fits.

	B_Say	(hero, self, "$WASMACHENWIRJETZT");

	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_22"); //We're gonna set him up. Come to the marketplace tomorrow night.
	AI_Output(self, hero, "Info_Mod_Aaron_Hi_11_23"); //Before that you should go to Tojan and point him out to me.

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "Aaron is innocent. He was hired by Tojan to kill me. It seems that Tojan is the real traitor. I'm meeting Aaron at the marketplace tomorrow night. I'm supposed to call Tojan and Aaron's attention to him first.");

	AI_StopProcessInfos	(self);

	Mod_FM_AaronDay = Wld_GetDay();
};

INSTANCe Info_Mod_Aaron_Falle (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Falle_Condition;
	information	= Info_Mod_Aaron_Falle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_Falle_Condition()
{
	if (Wld_IsTime(22,00,05,00))
	&& (Mod_FM_Foki == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Falle_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_Falle_11_00"); //There you are!

	B_Say	(hero, self, "$WASMACHENWIRJETZT");

	AI_Output(self, hero, "Info_Mod_Aaron_Falle_11_01"); //We'll find out from Tojan why he's here in the monastery.
	AI_Output(hero, self, "Info_Mod_Aaron_Falle_15_02"); //And how are you gonna do that?
	AI_Output(self, hero, "Info_Mod_Aaron_Falle_11_03"); //With a trick. We'll play to him that you killed me.
	AI_Output(hero, self, "Info_Mod_Aaron_Falle_15_04"); //And then I call him with the amulet he gave me. Could work.

	AI_StopProcessInfos	(self);

	Mod_FM_Foki = 5;

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "I must now put on the amulet to summon Tojan.");
};

INSTANCe Info_Mod_Aaron_KillTojan (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_KillTojan_Condition;
	information	= Info_Mod_Aaron_KillTojan_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_KillTojan_Condition()
{
	if (Mod_FM_Foki == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_KillTojan_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_KillTojan_11_00"); //Move aside, I'll kill him now!

	AI_StopProcessInfos	(self);

	Mod_1746_KDF_Tojan_PAT.protection[PROT_FIRE] = 0;
	Mod_1746_KDF_Tojan_PAT.protection[PROT_MAGIC] = 0;
	Mod_1746_KDF_Tojan_PAT.attribute[ATR_HITPOINTS_MAX] = 50;
	Mod_1746_KDF_Tojan_PAT.attribute[ATR_HITPOINTS] = 50;

	B_Attack	(self, Mod_1746_KDF_Tojan_PAT, AR_GuildEnemy, 0);

	Mod_FM_Foki = 10;
};

INSTANCe Info_Mod_Aaron_TojanDead (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_TojanDead_Condition;
	information	= Info_Mod_Aaron_TojanDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_TojanDead_Condition()
{
	if (Mod_FM_Foki == 10)
	&& (Npc_IsDead(Mod_1746_KDF_Tojan_PAT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_TojanDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_TojanDead_11_00"); //It's true.... He was my son.
	AI_Output(hero, self, "Info_Mod_Aaron_TojanDead_15_01"); //Then you're Ragon's son?
	AI_Output(self, hero, "Info_Mod_Aaron_TojanDead_11_02"); //Yes... And my name is not Aaron, it's Garan.
	AI_Output(hero, self, "Info_Mod_Aaron_TojanDead_15_03"); //And the Witch Queen?
	AI_Output(self, hero, "Info_Mod_Aaron_TojanDead_11_04"); //I don't exactly remember her.... Something is still missing in my memory.... But that doesn't matter now.
	AI_Output(self, hero, "Info_Mod_Aaron_TojanDead_11_05"); //Now I must return to my place in the Innos Church. I will destroy the barrier with my four brothers.
	AI_Output(self, hero, "Info_Mod_Aaron_TojanDead_11_06"); //I don't know how I can ever thank you!

	AI_StopProcessInfos	(self);

	self.name = "guaranty";

	B_StartOtherRoutine	(self, "BOSS");

	Mod_FM_Foki = 11;

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "garanic He's going to retire first. I should see him later.");
};

INSTANCE Info_Mod_Aaron_Barriere (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Barriere_Condition;
	information	= Info_Mod_Aaron_Barriere_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_Barriere_Condition()
{
	if (Wld_IsTime(05,00,22,00))
	&& (Mod_FM_Foki == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Barriere_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_Barriere_11_00"); //Ah, hello, brother. As you can see, I took my father's place.
	AI_Output(hero, self, "Info_Mod_Aaron_Barriere_15_01"); //I'm glad to see that.
	AI_Output(self, hero, "Info_Mod_Aaron_Barriere_11_02"); //We're considering a spell to destroy the barrier.
	AI_Output(self, hero, "Info_Mod_Aaron_Barriere_11_03"); //It shouldn't take us more than a day. Come back this time tomorrow.

	Mod_FM_Barriere = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "Garan and the other mages are now considering how to destroy the barrier. They want me to come back tomorrow.");
};

INSTANCE Info_Mod_Aaron_BarriereWeg (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_BarriereWeg_Condition;
	information	= Info_Mod_Aaron_BarriereWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_BarriereWeg_Condition()
{
	if (Mod_FM_Barriere < Wld_GetDay())
	&& (Npc_KnowsInfo(hero, Info_Mod_Aaron_Barriere))
	&& (Wld_IsTime(05,00,22,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_BarriereWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_BarriereWeg_11_00"); //It is done, the barrier is destroyed!
	AI_Output(hero, self, "Info_Mod_Aaron_BarriereWeg_15_01"); //That's good news.
	AI_Output(self, hero, "Info_Mod_Aaron_BarriereWeg_11_02"); //Indeed, brother. You can now return to Khorinis. Take these two runes.

	CreateInvItems	(hero, ItRu_Teleport_Pat_01, 1);
	CreateInvItems	(hero, ItRu_Teleport_Pat_02, 1);

	AI_PrintScreen	("2 Runes preserved", -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);

	AI_Output(self, hero, "Info_Mod_Aaron_BarriereWeg_11_03"); //With them you can teleport to the chapel and here in the church.

	Wld_SendTrigger	("EVT_PAT_BARRIERE");

	B_StartOtherRoutine	(self, "ARBEIT");

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "It is finished and the barrier is broken. I can now return to Khorinis and should inform Pyrokar.");
	B_SetTopicStatus	(TOPIC_MOD_FM_VERRAT, LOG_SUCCESS);
};

INSTANCE Info_Mod_Aaron_Back (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Back_Condition;
	information	= Info_Mod_Aaron_Back_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's going on here?";
};

FUNC INT Info_Mod_Aaron_Back_Condition()
{
	if (Mod_Enter_PAT_Second == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Back_Info()
{
	B_Say	(hero, self, "$WASISTDENNHIERLOS");

	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_00"); //Well, as you may know, the council of the gods has been called. That means the black mages can't besiege us any more.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_01"); //And why are they here at the monastery?
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_02"); //Well, unfortunately, we're still under siege, but not by the black mages.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_03"); //Then who did?
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_04"); //From the witches.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_05"); //What? Of witches? You mean from the mother of Tojan?
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_06"); //It looks that way, yeah.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_07"); //Yeah, but the black mages don't really care, do they?
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_08"); //Not exactly. The witches have long been allies of the black magicians.
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_09"); //That is, if the witches attack us, it would be no different than if the black mages themselves attacked us.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_10"); //And that forces them to help us, so to speak.
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_11"); //Exactly. Actually, we wouldn't accept this help, but the witches are in an overwhelming number that we wouldn't be able to manage on our own.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_12"); //I understand. So what are you gonna do now?
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_13"); //Well, it's a good thing you just got here. The witches have taken over the altogether five camps of the black magicians.
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_14"); //And you will attack the witches there.
	AI_Output(hero, self, "Info_Mod_Aaron_Back_15_15"); //What? The witches are in such abundance that you have to accept the help of the black mages and I have to go against them alone?
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_16"); //Of course, not alone. A group is already waiting for your orders in the monastery courtyard!
	AI_Output(self, hero, "Info_Mod_Aaron_Back_11_17"); //Now hurry up. The sooner you destroy the camps, the better!

	Mod_FM_Hexencounter += 60;

	Wld_InsertNpc	(Mod_1855_PAL_Paladin_PAT, "WP_PAT_WEG_178");
	Wld_InsertNpc	(Mod_1856_PAL_Paladin_PAT, "WP_PAT_WEG_178");
	Wld_InsertNpc	(Mod_1857_KDF_Magier_PAT, "WP_PAT_WEG_178");
	Wld_InsertNpc	(Mod_7333_KDS_SchwarzerMagier_PAT, "WP_PAT_WEG_178");
	Wld_InsertNpc	(Mod_7332_SMK_SchwarzerKrieger_PAT, "WP_PAT_WEG_178");

	Log_CreateTopic	(TOPIC_MOD_FM_HEXEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_HEXEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_HEXEN, "Garan wants me to kill the witches who settled in the black mages' camps. There's a troop waiting for me in the monastery courtyard.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Aaron_Hexen (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Hexen_Condition;
	information	= Info_Mod_Aaron_Hexen_Info;
	permanent	= 0;
	important	= 0;
	description	= "The camps have been conquered.";
};

FUNC INT Info_Mod_Aaron_Hexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aaron_Back))
	&& (Mod_FM_Hexencounter == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Hexen_Info()
{
	AI_Output(hero, self, "Info_Mod_Aaron_Hexen_15_00"); //The camps have been conquered.
	AI_Output(self, hero, "Info_Mod_Aaron_Hexen_11_01"); //That should be enough for now. But now we must act quickly!

	B_Say	(hero, self, "$WASMEINSTDU");

	AI_Output(self, hero, "Info_Mod_Aaron_Hexen_11_03"); //Cut off the snake's head! We must destroy the Witch Queen.
	AI_Output(hero, self, "Info_Mod_Aaron_Hexen_15_04"); //So you mean the...?
	AI_Output(self, hero, "Info_Mod_Aaron_Hexen_11_05"); //Yes, Tojan's mother. She'll pay for everything now!
	AI_Output(self, hero, "Info_Mod_Aaron_Hexen_11_06"); //I'm ordering you to do this job, brother. Be strong!
	AI_Output(self, hero, "Info_Mod_Aaron_Hexen_11_07"); //Now go destroy the Witch Queen. She settled in the old tower. But watch out, she's under heavy guard.

	B_SetTopicStatus	(TOPIC_MOD_FM_HEXEN, LOG_SUCCESS);

	B_Göttergefallen(1, 2);

	B_StartOtherRoutine	(Mod_1855_PAL_Paladin_PAT, "START");
	B_StartOtherRoutine	(Mod_1856_PAL_Paladin_PAT, "START");
	B_StartOtherRoutine	(Mod_1857_KDF_Magier_PAT, "START");
	
	Log_CreateTopic	(TOPIC_MOD_FM_HEXENQUEEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_HEXENQUEEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_HEXENQUEEN, "Garan hired me to kill the Witch Queen. She's in the old tower.");
};

INSTANCE Info_Mod_Aaron_Door (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Door_Condition;
	information	= Info_Mod_Aaron_Door_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_Door_Condition()
{
	if (CHECKOPENDOORPATHERION_OPENED == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Door_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_Door_11_00"); //You're back already? Did you destroy the Witch Queen?
	AI_Output(hero, self, "Info_Mod_Aaron_Door_15_01"); //No. I can't get through the door.
	AI_Output(self, hero, "Info_Mod_Aaron_Door_11_02"); //Did you try to break it?
	AI_Output(hero, self, "Info_Mod_Aaron_Door_15_03"); //Yeah, but it didn't work.
	AI_Output(self, hero, "Info_Mod_Aaron_Door_11_04"); //Well, then I'll come with you and open the door.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DOOR");
};

INSTANCE Info_Mod_Aaron_DoorIn (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_DoorIn_Condition;
	information	= Info_Mod_Aaron_DoorIn_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_DoorIn_Condition()
{
	if (Npc_GetDistToWP(self, "WP_PAT_TURM_03") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_DoorIn_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_DoorIn_11_00"); //Strange...
	AI_Output(hero, self, "Info_Mod_Aaron_DoorIn_15_01"); //That didn't look very difficult now.
	AI_Output(self, hero, "Info_Mod_Aaron_DoorIn_11_02"); //It wasn't. Whatever. We have to keep moving. AH!

	B_Say	(hero, self, "$WASISTDENN");

	AI_Output(self, hero, "Info_Mod_Aaron_DoorIn_11_03"); //I lost my rune. She must still be down the stairs. I'll go and get them quick.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TREPPE");

	Wld_InsertNpc	(Mod_1858_KDF_Aaron_PAT, "WP_PAT_TURMWEG_04");
};

INSTANCE Info_Mod_Aaron_Blut (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Blut_Condition;
	information	= Info_Mod_Aaron_Blut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_Blut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hexenqueen_Blut))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Blut_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_Blut_11_00"); //Don't you need both our blood to reawaken our mother?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Aaron_Kill (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Kill_Condition;
	information	= Info_Mod_Aaron_Kill_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_Kill_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hexenqueen_Falsch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Kill_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_Kill_11_00"); //Come on, let's kill them!

	AI_StopProcessInfos	(self);

	B_Attack	(self, Mod_1859_HEX_Hexenqueen_PAT, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Aaron_Party (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_Party_Condition;
	information	= Info_Mod_Aaron_Party_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aaron_Party_Condition()
{
	if (Mod_FM_AtHexe == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aaron_Party_Info()
{
	AI_Output(self, hero, "Info_Mod_Aaron_Party_11_00"); //Thank you, my friend. Without you, I would never have found out who I really am.
	AI_Output(self, hero, "Info_Mod_Aaron_Party_11_01"); //I'd like to reward you richly.
	AI_Output(self, hero, "Info_Mod_Aaron_Party_11_02"); //But I can't give you much, you have to be satisfied with this gift.

	B_ShowGivenThings	("Present received");

	CreateInvItems	(hero, ItPo_PotionOfDeath_01_Mis, 1);

	B_Say	(hero, self, "$WASISTDAS");

	AI_Output(self, hero, "Info_Mod_Aaron_Party_11_03"); //This, my friend, is my father's legacy. What he's been looking for all his life. The sixth tear of Inno's.
	AI_Output(hero, self, "Info_Mod_Aaron_Party_15_04"); //He actually found her?
	AI_Output(self, hero, "Info_Mod_Aaron_Party_11_05"); //Yeah. before he got involved with my mother. You shall have her.
	AI_Output(self, hero, "Info_Mod_Aaron_Party_11_06"); //Now let's celebrate!

	B_SetTopicStatus	(TOPIC_MOD_FM_HEXENQUEEN, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_PATHERION, LOG_SUCCESS);

	B_Göttergefallen(1, 2);

	B_GivePlayerXP	(1000);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Aaron_EXIT (C_INFO)
{
	npc		= Mod_1771_KDF_Aaron_PAT;
	nr		= 1;
	condition	= Info_Mod_Aaron_EXIT_Condition;
	information	= Info_Mod_Aaron_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Aaron_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Aaron_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
