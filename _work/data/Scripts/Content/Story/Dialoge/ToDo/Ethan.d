INSTANCE Info_Mod_Ethan_Hi (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Hi_Condition;
	information	= Info_Mod_Ethan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Ethan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ethan_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Ethan_Hi_13_01"); //I am Ethan, supreme guardian of the water community. I lead and direct the Water Warriors.
};

INSTANCE Info_Mod_Ethan_Irdorath (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Irdorath_Condition;
	information	= Info_Mod_Ethan_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "The way to the destruction of the evil Xeres will lead me by ship to an island.";
};

FUNC INT Info_Mod_Ethan_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath_15_00"); //The way to the destruction of the evil Xeres will lead me by ship to an island.
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath_15_01"); //However, I am dependent on the support of strong and courageous companions.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath_13_02"); //Then you did well to contact me.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath_13_03"); //The banishment of this fiend has highest priority and I will help you with ice and sword to do my part.
};

INSTANCE Info_Mod_Ethan_Irdorath2 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Irdorath2_Condition;
	information	= Info_Mod_Ethan_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Then I'm glad to know a fighter for balance in our ranks.";
};

FUNC INT Info_Mod_Ethan_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath2_15_00"); //Then I'm glad to know a fighter for balance in our ranks.
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath2_15_01"); //The meeting point for our excursion is the harbour of Khorinis.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath2_13_02"); //Then I'll be right on my way.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Now, with Ethan, I know a strong fighter on board.");

	B_GivePlayerXP	(100);

	Mod_EthanDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Ethan_Irdorath3 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Irdorath3_Condition;
	information	= Info_Mod_Ethan_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems we're too many.";
};

FUNC INT Info_Mod_Ethan_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_EthanDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath3_15_00"); //I'm sorry, but it seems we're too many. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath3_13_01"); //Too bad. I'll go back then. You know where to find me if there's ever gonna be a seat left.

	Mod_EthanDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Ethan_Irdorath4 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Irdorath4_Condition;
	information	= Info_Mod_Ethan_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I can give you a ride.";
};

FUNC INT Info_Mod_Ethan_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_EthanDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath4_15_00"); //I can give you a ride. There's room on the ship.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath4_13_01"); //Very well, I'll be back at the harbour.

	Mod_EthanDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Ethan_DungeonSounds_01 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_DungeonSounds_01_Condition;
	information	= Info_Mod_Ethan_DungeonSounds_01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_DungeonSounds_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_26))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_01_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_00"); //You've proven that you have both fighting power and brains.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_01"); //Well, I have a request that you might be able to help me with...
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_01_15_02"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_03"); //Well, I have a habit of going out to practice in the evening.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_04"); //A few days ago I was training near a cave when I heard strange noises. I fed the cave, and then....
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_01_15_05"); //Yeah, what happened?
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_06"); //Um... I woke up the next morning in the cave.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_07"); //I repeated it on the other evenings to track down the source of the sounds, but the same thing happened every time.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_08"); //I was a bit embarrassed, well, as if I was chasing ghosts, so I didn't ask anyone else for help.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_09"); //Could you come to the pyramid cave at night to help me with my, uh, research?

	Info_ClearChoices	(Info_Mod_Ethan_DungeonSounds_01);

	Info_AddChoice	(Info_Mod_Ethan_DungeonSounds_01, "Really, I have better things to do.", Info_Mod_Ethan_DungeonSounds_01_B);
	Info_AddChoice	(Info_Mod_Ethan_DungeonSounds_01, "Of course, of course. We have to get to the bottom of it.", Info_Mod_Ethan_DungeonSounds_01_A);
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_01_B()
{
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_01_B_15_00"); //So really, I have better things to do than get to the bottom of the cause of sudden drowsiness.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_B_13_01"); //Ahhm, yeah, maybe you're right.
	
	Info_ClearChoices	(Info_Mod_Ethan_DungeonSounds_01);
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_01_A()
{
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_01_A_15_00"); //Of course, of course. We have to get to the bottom of it.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_A_13_01"); //All right, all right. I'll be waiting for you outside the cave at night.

	Log_CreateTopic	(TOPIC_MOD_ADANOS_ETHAN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ADANOS_ETHAN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ADANOS_ETHAN, "Ethan always hears strange sounds from the cave near the pyramid in the evening, but falls asleep whenever he feeds them. I'm supposed to help him investigate the cause. He'll be waiting for me outside the cave at night.");

	Mod_WM_EthanQuest = 1;
	
	Info_ClearChoices	(Info_Mod_Ethan_DungeonSounds_01);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATDUNGEON");
};

INSTANCE Info_Mod_Ethan_DungeonSounds_02 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_DungeonSounds_02_Condition;
	information	= Info_Mod_Ethan_DungeonSounds_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_DungeonSounds_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_DungeonSounds_01))
	&& (Mod_WM_EthanQuest == 1)
	&& (Npc_GetDistToWP(self, "NW_TROLLAREA_RUINS_39") < 500)
	&& (Wld_IsTime(20,00,24,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_02_13_00"); //Oh, there you are. Do you hear the noises?
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_02_15_01"); //Yes, actually...
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_02_13_02"); //All right, all right. I'll go inside and you stay outside to see what happens.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INDUNGEON");

	Wld_InsertNpc	(Minenzwerg_01, "NW_TROLLAREA_RUINS_CAVE_01");
	Wld_InsertNpc	(Minenzwerg_02, "NW_TROLLAREA_RUINS_CAVE_01");
	Wld_InsertNpc	(Minenzwerg_03, "NW_TROLLAREA_RUINS_CAVE_01");
	Wld_InsertNpc	(Minenzwerg_04, "NW_TROLLAREA_RUINS_CAVE_01");
};

INSTANCE Info_Mod_Ethan_DungeonSounds_03 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_DungeonSounds_03_Condition;
	information	= Info_Mod_Ethan_DungeonSounds_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_DungeonSounds_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_DungeonSounds_02))
	&& (Mod_WM_EthanQuest == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_00"); //Well, what happened?
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_03_15_01"); //Small figures walked through the cave with pickaxes and worked the rocks.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_02"); //Small figures with pickaxes? Hmm, sounds like mine-dwarves.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_03"); //Nothing that could be a danger for us, otherwise we wouldn't be alive.
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_03_15_04"); //Mine gnomes?
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_05"); //Oh, creatures that want to mine minerals at night in peace and quiet. That solves this mystery.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_06"); //Thanks for your support. Here, take this gold and the scroll as a reward.

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItSc_IceRAin, 1);

	B_ShowGivenThings	("300 Gold and scroll received");

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_ETHAN, LOG_SUCCESS);

	B_GivePlayerXP	(300);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Ethan_Befoerderung (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Befoerderung_Condition;
	information	= Info_Mod_Ethan_Befoerderung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_Befoerderung_Condition()
{
	if (Mod_Gilde == 9)
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_08))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Befoerderung_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_00"); //I understand that you come to me to join the Water Warriors.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_01"); //I'm pleased to have an energetic man like you in our ranks.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_02"); //So, but first of all, give the testimony of communion with the water and say the words of the oath:
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_03"); //I swear by the powers of the gods... and the power of holy water....
	AI_Output(hero, self, "Info_Mod_Ethan_Befoerderung_15_04"); //I swear by the powers of the gods... and the power of holy water....
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_05"); //... that my knowledge and actions will be connected to the water from now on and forever...
	AI_Output(hero, self, "Info_Mod_Ethan_Befoerderung_15_06"); //... that my knowledge and actions will be connected to the water from now on and forever...
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_07"); //... and the fountain of life.
	AI_Output(hero, self, "Info_Mod_Ethan_Befoerderung_15_08"); //... and the fountain of life.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_09"); //It is done. From now on you will serve as a warrior of the waters of our community and follow Adano's will.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_10"); //Here, I give you your armor of water and the sword of a warrior.

	CreateInvItems	(self, ItAr_WKR_H, 1);
	B_GiveInvItems	(self, hero, ItAr_WKR_H, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_WKR_H);

	if (hero.Hitchance[NPC_TALENT_2H] >= hero.Hitchance[NPC_TALENT_1H])
	{
		CreateInvItems	(hero, ItMw_XRSchwert_01, 1);
	}
	else
	{
		CreateInvItems	(hero, ItMw_AdanosSchwert, 1);
	};

	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_11"); //In addition, this Rune of the Ice Blade will support you in close combat.

	B_GiveInvItems	(self, hero, ItRu_Eisklinge, 1);

	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_12"); //May Adanos always assist you in your trials and let you continue to follow the path of balance.

	Snd_Play ("LEVELUP");
	
	B_GivePlayerXP	(1000);

	Mod_Gilde = 17;

	B_Göttergefallen(2, 5);
};

INSTANCE Info_Mod_Ethan_Befoerderung_2 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Befoerderung_2_Condition;
	information	= Info_Mod_Ethan_Befoerderung_2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_Befoerderung_2_Condition()
{
	if (Mod_Gilde == 17)
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Rasend02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Befoerderung_2_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_00"); //Ahh, there you are. I have already heard of your merit and can only fully support Satra's will.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_01"); //So I ask you this question: Do you feel ready to serve as the guardian of Adano's water?
	AI_Output(hero, self, "Info_Mod_Ethan_Befoerderung_2_15_02"); //Yes, my wish is to become the keeper of the water.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_03"); //Then take this armor and Adano's blessing.

	CreateInvItems	(hero, ItAr_Hueter, 1);
	B_ShowGivenThings	("Getting Guardian Armor");

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Hueter);

	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_04"); //You will also find that you can now use your Rune of the Ice Blade even more effectively.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_05"); //May the balance continue to exist through your work.

	Snd_Play ("LEVELUP");
	
	B_GivePlayerXP	(400);

	Mod_Gilde = 18;

	B_Göttergefallen(2, 5);
};

INSTANCE Info_Mod_Ethan_Pickpocket (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Pickpocket_Condition;
	information	= Info_Mod_Ethan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Ethan_Pickpocket_Condition()
{
	C_Beklauen	(144, ItMi_Gold, 70);
};

FUNC VOID Info_Mod_Ethan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);

	Info_AddChoice	(Info_Mod_Ethan_Pickpocket, DIALOG_BACK, Info_Mod_Ethan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ethan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ethan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ethan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);
};

FUNC VOID Info_Mod_Ethan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);

		Info_AddChoice	(Info_Mod_Ethan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ethan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ethan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ethan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ethan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ethan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ethan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ethan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ethan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ethan_EXIT (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_EXIT_Condition;
	information	= Info_Mod_Ethan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ethan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ethan_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_EXIT_13_00"); //For the fight for balance!

	AI_StopProcessInfos	(self);
};
