INSTANCE Info_Mod_Logan_Quest (C_INFO)
{
	npc		= Mod_957_BDT_Logan_MT;
	nr		= 1;
	condition	= Info_Mod_Logan_Quest_Condition;
	information	= Info_Mod_Logan_Quest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Logan_Quest_Condition()
{
	if (Banditen_Dabei == TRUE)
	&& (Mod_OC_Miguel == 0)
	&& (Mod_OC_Morgahard == 0)
	&& (Kapitel < 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Logan_Quest_Info()
{
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_00"); //Hey, you're new at camp.
	AI_Output(hero, self, "Info_Mod_Logan_Quest_15_01"); //Yeah, you got that right.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_02"); //And you made it all the way from Khorinis to us, and you're still alive.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_03"); //You need to be on your feet fast. Those are already good conditions.
	AI_Output(hero, self, "Info_Mod_Logan_Quest_15_04"); //Good conditions for what?
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_05"); //For our plan.
	AI_Output(hero, self, "Info_Mod_Logan_Quest_15_06"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_07"); //Well, as is clear may be located are some riches in the house of the Archbarone. Also, at the moment a stinking rich merchant is with them in the castle, with trading goods of considerable value.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_08"); //The only problem is to get to all of this. That requires a little distraction. That's where you come in.
	AI_Output(hero, self, "Info_Mod_Logan_Quest_15_09"); //What exactly did you have in mind?
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_10"); //Nun, uns ist vor einigen Wochen eine Söldnerrüstung "fallen into the hands of". Wie du vielleicht mitbekommen hast, sind das Alte und Neue Lager nicht so gut aufeinander zu sprechen.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_11"); //If someone with a mercenary armor would march into the Old Camp....
	AI_Output(hero, self, "Info_Mod_Logan_Quest_15_12"); //What, you really mean it!? You want me to go to the wasp nest?
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_13"); //It's not quite as dangerous as it sounds. You will also be equipped with a speed potion.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_14"); //You run a few minutes. and draw the guard's attention to you. The more time you give us, the better.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_10_15"); //However, camouflaged with old shadow armor, we take some of the wealth of the interior of the castle. What do you say?

	Info_ClearChoices	(Info_Mod_Logan_Quest);

	Info_AddChoice	(Info_Mod_Logan_Quest, "No way, I'm not suicidal.", Info_Mod_Logan_Quest_B);
	Info_AddChoice	(Info_Mod_Logan_Quest, "Okay, I'll do it.", Info_Mod_Logan_Quest_A);
};

FUNC VOID Info_Mod_Logan_Quest_B()
{
	AI_Output(hero, self, "Info_Mod_Logan_Quest_B_15_00"); //No way, I'm not suicidal.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_B_10_01"); //Too bad. (criminating) I hope you know that and with it, a decent booty escapes.
	
	Info_ClearChoices	(Info_Mod_Logan_Quest);
};

FUNC VOID Info_Mod_Logan_Quest_A()
{
	AI_Output(hero, self, "Info_Mod_Logan_Quest_A_15_00"); //Okay, I'll do it.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_A_10_01"); //Very good. Very good. Okay, Me, Morgahard and Miguel are waiting outside the entrance to the inner castle.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_A_10_02"); //As soon as you create a distraction inside, I and Morgahard take over the Merchant and the House of the Er Barons, while Miguel is rummaging in the ancient writings of the Fire Magicians for useful and profitable knowledge.
	AI_Output(self, hero, "Info_Mod_Logan_Quest_A_10_03"); //You all right? All right, here we go.

	CreateInvItems	(hero, ItAr_Sld_Logan, 1);
	CreateInvItems	(hero, ItPo_Speed, 1);

	B_ShowGivenThings	("light mercenary scaffolding and potion preserved");

	Mod_LoganQuest = 1;

	Log_CreateTopic	(TOPIC_MOD_BDT_LOGAN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_LOGAN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_LOGAN, "I am to distract the guards in the inner castle with Logan's light mercenary armor while he, Miguel and Morgahard rob the treasures there.");

	Info_ClearChoices	(Info_Mod_Logan_Quest);

	AI_StopProcessInfos	(self);

	CreateInvItems	(self, Stt_Armor_M, 1);
	CreateInvItems	(Mod_790_BDT_Morgahard_MT, Stt_Armor_M, 1);
	CreateInvItems	(Mod_958_BDT_Miguel_MT, Stt_Armor_M, 1);

	AI_EquipArmor	(self, Stt_Armor_M);
	AI_EquipArmor	(Mod_790_BDT_Morgahard_MT, Stt_Armor_M);
	AI_EquipArmor	(Mod_958_BDT_Miguel_MT, Stt_Armor_M);

	B_StartOtherRoutine	(self, "AL");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "AL");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "AL");
};

INSTANCE Info_Mod_Logan_Belohnung (C_INFO)
{
	npc		= Mod_957_BDT_Logan_MT;
	nr		= 1;
	condition	= Info_Mod_Logan_Belohnung_Condition;
	information	= Info_Mod_Logan_Belohnung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Logan_Belohnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Logan_Quest))
	&& (Mod_LoganQuest == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Logan_Belohnung_Info()
{
	if (Mod_LaufZeit <= 60)
	{
		AI_Output(self, hero, "Info_Mod_Logan_Belohnung_10_00"); //You could have really put in a little more effort. In that short time, we haven't gotten so much together.

		B_GiveInvItems	(self, hero, ItMi_Gold, 200);

		B_GivePlayerXP	(200);
	}
	else if (Mod_LaufZeit <= 120)
	{
		AI_Output(self, hero, "Info_Mod_Logan_Belohnung_10_01"); //Well, we could have used a little more time. Here's your share.

		CreateInvItems	(hero, ItMi_Gold, 300);
		CreateInvItems	(hero, ItMi_Nugget, 4);
		CreateInvItems	(hero, ItAt_LurkerSkin, 4);

		B_ShowGivenThings	("300 gold, 4 pieces of ore and 4 reptile skins preserved");

		B_GivePlayerXP	(300);
	}
	else if (Mod_LaufZeit < 180)
	{
		AI_Output(self, hero, "Info_Mod_Logan_Belohnung_10_02"); //You've done your job well and earned your share, so here's a Miguel prescription.

		CreateInvItems	(hero, ItMi_Gold, 350);
		CreateInvItems	(hero, ItMi_Nugget, 5);
		CreateInvItems	(hero, ItAt_LurkerSkin, 4);
		CreateInvItems	(hero, ItAt_TrollTooth, 1);
		CreateInvItems	(hero, ItAt_Shadowhorn, 2);
		CreateInvItems	(hero, ITWr_Addon_MCELIXIER_01, 1);

		B_ShowGivenThings	("350 gold, 5 pieces of ore, 4 reptile skins, Trollhauer, 2 shadow runner horns and recipe preserved");

		B_GivePlayerXP	(400);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Logan_Belohnung_10_03"); //Muahahaha, you really did a great job leading the guards around and giving us more than enough time to snatch some precious treasures from the old camp.
		AI_Output(self, hero, "Info_Mod_Logan_Belohnung_10_04"); //Miguel also found something useful in the books that you get your share of.

		CreateInvItems	(hero, ItMi_Gold, 500);
		CreateInvItems	(hero, ItMi_Nugget, 7);
		CreateInvItems	(hero, ItAt_LurkerSkin, 5);
		CreateInvItems	(hero, ItAt_TrollTooth, 2);
		CreateInvItems	(hero, ItAt_Shadowhorn, 2);
		CreateInvItems	(hero, ITWr_Addon_MCELIXIER_01, 1);
		CreateInvItems	(hero, ItAt_SharkTeeth, 4);

		if (hero.guild == GIL_NOV)
		{
			CreateInvItems	(hero, ItSc_AuraFrost, 1);
			CreateInvItems	(hero, ItSc_SumIceGol, 1);
		}
		else if (hero.guild == GIL_VLK)
		{
			CreateInvItems	(hero, ItSc_AuraFeuer, 1);
			CreateInvItems	(hero, ItSc_SumFireGol, 1);
		}
		else if (hero.guild == GIL_KDF)
		{
			CreateInvItems	(hero, ItSc_SumFireGol, 1);
			CreateInvItems	(hero, ItSc_SumIceGol, 1);
		}
		else
		{
			CreateInvItems	(hero, ItSc_AuraBerserker, 1);
		};

		B_ShowGivenThings	("500 gold, 7 chunks of ore, 5 reptile skins, 2 troll tusks, 2 shadow runner horns, recipe and 4 swamp hairs preserved.");

		B_GivePlayerXP	(600);
	};

	AI_UnequipArmor	(hero);
	AI_UnequipArmor	(self);
	AI_UnequipArmor	(Mod_790_BDT_Morgahard_MT);
	AI_UnequipArmor	(Mod_958_BDT_Miguel_MT);

	AI_EquipArmor	(self, ItAr_BDT_M_01);
	AI_EquipArmor	(Mod_790_BDT_Morgahard_MT, ItAr_BDT_M_01);
	AI_EquipArmor	(Mod_958_BDT_Miguel_MT, ItAr_BDT_M_01);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_790_BDT_Morgahard_MT, "START");
	B_StartOtherRoutine	(Mod_958_BDT_Miguel_MT, "START");

	Npc_RemoveInvItems	(hero, ItAr_Sld_Logan, 1);

	AI_EquipArmor	(hero, ItAr_BDT_M_01);

	B_SetTopicStatus	(TOPIC_MOD_BDT_LOGAN, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Logan_Pickpocket (C_INFO)
{
	npc		= Mod_957_BDT_Logan_MT;
	nr		= 1;
	condition	= Info_Mod_Logan_Pickpocket_Condition;
	information	= Info_Mod_Logan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Logan_Pickpocket_Condition()
{
	C_Beklauen	(67, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Logan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Logan_Pickpocket);

	Info_AddChoice	(Info_Mod_Logan_Pickpocket, DIALOG_BACK, Info_Mod_Logan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Logan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Logan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Logan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Logan_Pickpocket);
};

FUNC VOID Info_Mod_Logan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Logan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Logan_Pickpocket);

		Info_AddChoice	(Info_Mod_Logan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Logan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Logan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Logan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Logan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Logan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Logan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Logan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Logan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Logan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Logan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Logan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Logan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Logan_EXIT (C_INFO)
{
	npc		= Mod_957_BDT_Logan_MT;
	nr		= 1;
	condition	= Info_Mod_Logan_EXIT_Condition;
	information	= Info_Mod_Logan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Logan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Logan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
