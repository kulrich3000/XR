INSTANCE Info_Mod_Wolf_Hi (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Hi_Condition;
	information	= Info_Mod_Wolf_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wolf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wolf_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_00"); //Hey, you're still alive. Didn't think I'd see you again.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_01"); //The Minecrawler gear seems to have been quite stable.
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_02"); //Yeah, you did a great job.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_03"); //Right... really two gems I made together.
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_04"); //Two? Where's the other one?
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_05"); //I gave it to my old buddy Gestath, who I traded with on the edge of the barrier.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_06"); //He got me the things that were mostly outside of our prison, and I gave him some special items that the colony had produced.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_07"); //He then wanted to go to some inhospitable area inhabited by wild beasts... a hunter's paradise, as he said.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_08"); //I definitely didn't see him again after the barrier came down.
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_09"); //Can you make me another one of those armor?
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_10"); //I could. But I need the necessary raw materials. Don't you remember how to strip the beasts of their plates?
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_11"); //So... I have forgotten so many things....
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_12"); //All right, I could show you again. But without crawler warriors, that wouldn't do us any good.
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_13"); //Where will I find them?
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_14"); //I don't know.... there's nothing close by that would actually cross my mind... south at the most.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_15"); //Gorn had told something about a cursed fortress in the mountains he wanted to take. In any case, not yet tapped.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_31_16"); //Maybe there are caves with the creatures... no idea.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SÖLDNER, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SÖLDNER, "Wolf can show me how to get crawler records again.");
};

INSTANCE Info_Mod_Wolf_MinecrawlerRuestung (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_MinecrawlerRuestung_Condition;
	information	= Info_Mod_Wolf_MinecrawlerRuestung_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have some crawler records.";
};

FUNC INT Info_Mod_Wolf_MinecrawlerRuestung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Hi))
	&& (Npc_HasItems(hero, ItAt_CrawlerPlate) >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_MinecrawlerRuestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_MinecrawlerRuestung_15_00"); //I have some crawler records.
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_01"); //Is that so?

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_02"); //(to himself) So there are crawler warriors here after all.... that's good.

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_03"); //If you get me at least 15 of them, I can make you a new armor.
	AI_Output(hero, self, "Info_Mod_Wolf_MinecrawlerRuestung_15_04"); //15 pieces this time?!
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_05"); //Hey, you admitted that your minecrawler gear saved your life back in the Minental.
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_06"); //Therefore, I think it is only appropriate to make a little more profit this time.
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_07"); //And it's not my fault you lost your old armor.
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_08"); //Besides, the few crawlers shouldn't make any difference to you after you've taken on orcs, undead and demons.
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung_31_09"); //So, like I said, 15 records and everybody's fine.
};

INSTANCE Info_Mod_Wolf_MinecrawlerRuestung2 (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_MinecrawlerRuestung2_Condition;
	information	= Info_Mod_Wolf_MinecrawlerRuestung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got 15 minecrawler plates here.";
};

FUNC INT Info_Mod_Wolf_MinecrawlerRuestung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_MinecrawlerRuestung))
	&& (Npc_HasItems(hero, ItAt_CrawlerPlate) >= 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_MinecrawlerRuestung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_MinecrawlerRuestung2_15_00"); //I've got 15 minecrawler plates here.

	B_GiveInvItems	(hero, self, ItAt_CrawlerPlate, 15);

	Npc_RemoveInvItems	(self, ItAt_CrawlerPlate, 15);

	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung2_31_01"); //Great! I'll get right to work. Come back in a few days.

	Mod_Wolf_MinecrawlerRuestung_Day = Wld_GetDay();

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Wolf_MinecrawlerRuestung3 (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_MinecrawlerRuestung3_Condition;
	information	= Info_Mod_Wolf_MinecrawlerRuestung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I see the crawler gear is ready.";
};

FUNC INT Info_Mod_Wolf_MinecrawlerRuestung3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_MinecrawlerRuestung2))
	&& (Mod_Wolf_MinecrawlerRuestung == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_MinecrawlerRuestung3_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_MinecrawlerRuestung3_15_00"); //I see the crawler gear is ready.
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung3_31_01"); //Yes... mine. I'll need a few more days for yours.

	Mod_Wolf_MinecrawlerRuestung_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Wolf_MinecrawlerRuestung4 (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_MinecrawlerRuestung4_Condition;
	information	= Info_Mod_Wolf_MinecrawlerRuestung4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wolf_MinecrawlerRuestung4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_MinecrawlerRuestung3))
	&& (Wld_GetDay()-2 > Mod_Wolf_MinecrawlerRuestung_Day)
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_MinecrawlerRuestung4_Info()
{
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung4_31_00"); //You don't have to ask. Here's your nice new crawler plate armor.

	CreateInvItems	(hero, ITAR_DJG_Crawler, 1);

	B_ShowGivenThings	("Get armor from crawler plates");

	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung4_31_01"); //Have fun with that.

	B_GivePlayerXP	(200);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_30);
};

INSTANCE Info_Mod_Wolf_MinecrawlerRuestung5 (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_MinecrawlerRuestung5_Condition;
	information	= Info_Mod_Wolf_MinecrawlerRuestung5_Info;
	permanent	= 1;
	important	= 0;
	description	= "Is the armour ready yet?";
};

FUNC INT Info_Mod_Wolf_MinecrawlerRuestung5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_MinecrawlerRuestung3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Wolf_MinecrawlerRuestung4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_MinecrawlerRuestung5_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_MinecrawlerRuestung5_15_00"); //Is the armour ready yet?
	AI_Output(self, hero, "Info_Mod_Wolf_MinecrawlerRuestung5_31_01"); //No, I need some more time.
};

INSTANCE Info_Mod_Wolf_Snapperbogen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Snapperbogen_Condition;
	information	= Info_Mod_Wolf_Snapperbogen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wolf_Snapperbogen_Condition()
{
	var C_ITEM rwp;
	rwp = Npc_GetEquippedMeleeWeapon(hero);

	if (Hlp_IsItem(rwp, ItRw_Snapperbogen) == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Snapperbogen_Info()
{
	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_31_00"); //Hold on a second. What's that strange bow on your back?
	AI_Output(hero, self, "Info_Mod_Wolf_Snapperbogen_15_01"); //A snapper bow. Ever seen one?
	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_31_02"); //Let me see that.

	B_GiveInvItems	(hero, self, ItRw_Snapperbogen, 1);

	EquipItem	(self, ItRw_Snapperbogen);

	AI_ReadyRangedWeapon	(self);

	AI_PlayAni	(self, "T_1HINSPECT");

	AI_DrawWeapon	(self);

	AI_UnequipWeapons	(self);

	B_GiveInvItems	(self, hero, ItRw_Snapperbogen, 1);

	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_31_03"); //Hmm, somehow I feel like I've seen such a bow somewhere before... hmm.
	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_31_04"); //But wait a minute... which is amazingly easy to handle.... ideal for hunting wildlife.
	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_31_05"); //Are you selling it to me? I wouldn't give you a hard time... 800 pieces of gold for it.
};

INSTANCE Info_Mod_Wolf_Snapperbogen2 (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Snapperbogen2_Condition;
	information	= Info_Mod_Wolf_Snapperbogen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "(Sell Snap Bow for 800 gold pieces)";
};

FUNC INT Info_Mod_Wolf_Snapperbogen2_Condition()
{
	if (Npc_HasItems(hero, ItRw_Snapperbogen) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Snapperbogen2_Info()
{
	B_GiveInvItems	(hero, self, ItRw_Snapperbogen, 1);

	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen2_31_00"); //Nice doing business with you.

	B_GiveInvItems	(self, hero, ItMi_Gold, 800);

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen2_31_01"); //And now I'm gonna take a good look at this thing.... I'd be laughing if I couldn't make those bows.

	B_GivePlayerXP	(400);
};

INSTANCE Info_Mod_Wolf_Lehrer (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Lehrer_Condition;
	information	= Info_Mod_Wolf_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Wolf_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Hi))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Wolf_Lehrer_31_01"); //I can help you become more skillful and I can teach you how to use a bow.
		AI_Output(self, hero, "Info_Mod_Wolf_Lehrer_31_02"); //I can also show you how to make arrows.

		Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, "Wolf can help me to be more skillful, teach me how to use a bow and how to make arrows.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Wolf_Lehrer_31_03"); //I can show you how to make arrows.

		Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, "Wolf can show me how to make arrows.");
	};
};

INSTANCE Info_Mod_Wolf_Lernen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Lernen_Condition;
	information	= Info_Mod_Wolf_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me something.";
};

FUNC INT Info_Mod_Wolf_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Lehrer))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Lernen_15_00"); //Teach me something.
	AI_Output(self, hero, "Info_Mod_Wolf_Lernen_31_01"); //What do you want to learn?

	Info_ClearChoices	(Info_Mod_Wolf_Lernen);

	Info_AddChoice 		(Info_Mod_Wolf_Lernen, DIALOG_BACK, Info_Mod_Wolf_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_1);
};

FUNC VOID Info_Mod_Wolf_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Wolf_Lernen);
};

FUNC VOID Info_Mod_Wolf_Lernen_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 140);
	
	Info_ClearChoices	(Info_Mod_Wolf_Lernen);

	Info_AddChoice 		(Info_Mod_Wolf_Lernen, DIALOG_BACK, Info_Mod_Wolf_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_1);
};

FUNC VOID Info_Mod_Wolf_Lernen_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 140);
	
	Info_ClearChoices	(Info_Mod_Wolf_Lernen);

	Info_AddChoice 		(Info_Mod_Wolf_Lernen, DIALOG_BACK, Info_Mod_Wolf_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_1);
};

INSTANCE Info_Mod_Wolf_Lernen_Bogen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Lernen_Bogen_Condition;
	information	= Info_Mod_Wolf_Lernen_Bogen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me archery.";
};

FUNC INT Info_Mod_Wolf_Lernen_Bogen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Lehrer))
	&& (hero.hitchance[NPC_TALENT_BOW] < 100)
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Lernen_Bogen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Lernen_Bogen_15_00"); //Teach me archery.

	Info_ClearChoices	(Info_Mod_Wolf_Lernen_Bogen);
	
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, "Back off.", Info_Mod_Wolf_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Wolf_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Wolf_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Wolf_Lernen_Bogen_BACK()
{
	Info_ClearChoices	(Info_Mod_Wolf_Lernen_Bogen);
};

FUNC VOID Info_Mod_Wolf_Lernen_Bogen_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_BOW, 5, 100);

	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, "Back off.", Info_Mod_Wolf_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Wolf_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Wolf_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Wolf_Lernen_Bogen_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_BOW, 1, 100);

	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, "Back off.", Info_Mod_Wolf_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Wolf_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Wolf_Lernen_Bogen_1);
};

INSTANCE Info_Mod_Wolf_Schnitzen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Schnitzen_Condition;
	information	= Info_Mod_Wolf_Schnitzen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring me arrows to carve (2 LP)";
};

FUNC INT Info_Mod_Wolf_Schnitzen_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Wolf_Schnitzen.description = "Bring me arrows to carve (200 gold)";
	}
	else
	{
		Info_Mod_Wolf_Schnitzen.description = "Bring me arrows to carve (2 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Lehrer))
	&& (Mod_PfeileSchnitzen	== 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Schnitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Schnitzen_15_00"); //Teach me to carve arrows.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 2))
	{
		AI_Output(self, hero, "Info_Mod_Wolf_Schnitzen_31_01"); //Okay. First you should buy a piece of wood from Thorben. Then take this to a tree saw and carve it to about 10 arrows.
		AI_Output(self, hero, "Info_Mod_Wolf_Schnitzen_31_02"); //Then you join the arrow with an arrowhead on an anvil and your arrow is ready.

		Mod_PfeileSchnitzen = 1;

		Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_PFEILE, "To create arrows, I need arrow bars. I can cut them out of branches.");

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
		}
		else
		{
			hero.lp -= 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Wolf_Schnitzen_31_03"); //Come back when you're ready.
	};
};

INSTANCE Info_Mod_Wolf_Spitzen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Spitzen_Condition;
	information	= Info_Mod_Wolf_Spitzen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring me to forge arrowheads (2 LP)";
};

FUNC INT Info_Mod_Wolf_Spitzen_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Wolf_Spitzen.description = "Teach me to forge arrowheads (200 gold)";
	}
	else
	{
		Info_Mod_Wolf_Spitzen.description = "Teach me to forge arrowheads (2 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Lehrer))
	&& (Mod_PfeileSpitzen == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Spitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Spitzen_15_00"); //Teach me to forge arrowheads.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 2))
	{
		AI_Output(self, hero, "Info_Mod_Wolf_Spitzen_31_01"); //Take a piece of crude steel and go to an anvil. You will get about 10 arrowheads from one piece of crude steel.

		Mod_PfeileSpitzen = 1;

		Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_PFEILE, "To create arrows, I need arrowheads. I can win this at an anvil made of crude steel.");

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
		}
		else
		{
			hero.lp -= 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Wolf_Spitzen_31_02"); //Come back when you're ready.
	};
};

INSTANCE Info_Mod_Wolf_PlattenNehmen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_PlattenNehmen_Condition;
	information	= Info_Mod_Wolf_PlattenNehmen_Info;
	permanent	= 1;
	important	= 0;
	description	= "How do I get these plates from the beasts? (5 LP)";
};

FUNC INT Info_Mod_Wolf_PlattenNehmen_Condition()
{
	Info_Mod_Wolf_PlattenNehmen.description = B_BuildLearnString("How can I remove the plates from those beasts?", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_CrawlerPlate));

	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Hi))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_CrawlerPlate] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_PlattenNehmen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_PlattenNehmen_15_00"); //How do I get these plates from the beasts?

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_CrawlerPlate))
	{
		AI_Output(self, hero, "Info_Mod_Wolf_PlattenNehmen_31_01"); //It's relatively simple. The back plates are only fused to the body at their edges.
		AI_Output(self, hero, "Info_Mod_Wolf_PlattenNehmen_31_02"); //Just take a razor and cut half diagonally along the edges.
	};
};

INSTANCE Info_Mod_Wolf_Pickpocket (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Pickpocket_Condition;
	information	= Info_Mod_Wolf_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Wolf_Pickpocket_Condition()
{
	C_Beklauen	(137, ItRw_Arrow, 45);
};

FUNC VOID Info_Mod_Wolf_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);

	Info_AddChoice	(Info_Mod_Wolf_Pickpocket, DIALOG_BACK, Info_Mod_Wolf_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wolf_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wolf_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wolf_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);
};

FUNC VOID Info_Mod_Wolf_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);

		Info_AddChoice	(Info_Mod_Wolf_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wolf_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wolf_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wolf_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wolf_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wolf_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wolf_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wolf_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wolf_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wolf_EXIT (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_EXIT_Condition;
	information	= Info_Mod_Wolf_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wolf_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wolf_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
