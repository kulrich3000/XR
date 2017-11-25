INSTANCE Info_Mod_Myxir_AW_Hi (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_Hi_Condition;
	information	= Info_Mod_Myxir_AW_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Myxir? How did you get here?";
};

FUNC INT Info_Mod_Myxir_AW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Myxir_AW_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_Hi_15_00"); //Myxir? How did you get here?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_Hi_28_01"); //Xardas had ordered me to keep an eye on you and prevent you from getting hurt.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_Hi_28_02"); //Lucky for you, or that guardswoman would have chased you down for sure.
	AI_Output(hero, self, "Info_Mod_Myxir_AW_Hi_15_03"); //Yeah, um.... thank you. Why are we in the Pirate camp?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_Hi_28_04"); //Because this happens to be the only place in Jharkendar where the Innos Guard hasn't invaded yet.
	AI_Output(hero, self, "Info_Mod_Myxir_AW_Hi_15_05"); //What about the bodies?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_Hi_28_06"); //Undead and the blood cult attacked us. I had taken a stand here with Greg and supported him in the attack.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_Hi_28_07"); //Some people have died, but the pirates can still survive. But for how much longer?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_Hi_28_08"); //The most important thing now is that we stop the Innos' Guard before they take possession of Innos's sword.

	Mod_934_PIR_Henry_AW.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Myxir_AW_WhatNow (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_WhatNow_Condition;
	information	= Info_Mod_Myxir_AW_WhatNow_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you want me to do?";
};

FUNC INT Info_Mod_Myxir_AW_WhatNow_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_AW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_WhatNow_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_WhatNow_15_00"); //What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNow_28_01"); //That's the sophisticated thing. The guards have managed to enchant their armour so that it is invulnerable.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNow_28_02"); //Therefore, we need a special weapon to penetrate the armour, the dagger of Beliar.
	AI_Output(hero, self, "Info_Mod_Myxir_AW_WhatNow_15_03"); //Beliar's dagger?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNow_28_04"); //Yeah. It can only be forged by powerful black mages and is devastating. With one blow, you can penetrate the armor of a guard Innos'.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNow_28_05"); //However, it only works once. The building instructions must be located somewhere in Jharkendar. You have to recover them so we can make the dagger.
	AI_Output(hero, self, "Info_Mod_Myxir_AW_WhatNow_15_06"); //Where do you want me to start looking?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNow_28_07"); //It's hard to say. However, there are several mansions of the builders in the valley. You'd better try your luck there.

	Log_CreateTopic	(TOPIC_MOD_BEL_BELIARDOLCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_BELIARDOLCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_BELIARDOLCH, "In order to defeat the invulnerable guardsmen, I need the dagger of Beliar. It can only be used once, but it destroys every armor with just one blow. The building instructions for this are to be found somewhere in Jharkendar. Myxir advised me to search the mansions.");
};

INSTANCE Info_Mod_Myxir_AW_WhatNext (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_WhatNext_Condition;
	information	= Info_Mod_Myxir_AW_WhatNext_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's next?";
};

FUNC INT Info_Mod_Myxir_AW_WhatNext_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_AW_WhatNow))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_WhatNext_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_WhatNext_15_00"); //What's next?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNext_28_01"); //We need to find out more about the Innos sword. The builders collected many ancient writings to form powerful artifacts.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNext_28_02"); //You need to find one of those old scripts. Probably located in the library of the builders in the canyon.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatNext_28_03"); //Go there and find the scripture. Be careful, though. The Orcs in the Canyon have befriended the guards and guarded the library.

	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "We need to find out more about the Innos sword. I'm supposed to check the old library of builders in the canyon to see if I can find any old records. However, the library is to be guarded by orcs.");
};

INSTANCE Info_Mod_Myxir_AW_WhatLast (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_WhatLast_Condition;
	information	= Info_Mod_Myxir_AW_WhatLast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Anything else?";
};

FUNC INT Info_Mod_Myxir_AW_WhatLast_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_AW_WhatNext))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_WhatLast_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_WhatLast_15_00"); //Anything else?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatLast_28_01"); //Yeah. We have to get Jharkendar back. Greg intends to free it.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_WhatLast_28_02"); //Talk to him about it. He has the plans.
	AI_Output(hero, self, "Info_Mod_Myxir_AW_WhatLast_15_03"); //All right, I'll leave immediately.

	Log_CreateTopic	(TOPIC_MOD_BEL_BEFREIUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_BEFREIUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_BEFREIUNG, "Greg wants to recapture Jharkendar from the Innos Guard. He wants me to go to his place because he has the plans.");
};

INSTANCE Info_Mod_Myxir_AW_LightHeal (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_LightHeal_Condition;
	information	= Info_Mod_Myxir_AW_LightHeal_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have a rune of light wound healing for me?";
};

FUNC INT Info_Mod_Myxir_AW_LightHeal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Samuel_SkipToDead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_LightHeal_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_LightHeal_15_00"); //Do you have a rune of light wound healing for me?
	AI_Output(self, hero, "Info_Mod_Myxir_AW_LightHeal_28_01"); //What do you want with it?
	AI_Output(hero, self, "Info_Mod_Myxir_AW_LightHeal_15_02"); //The Pirate Skip is dying, and without this rune the healing potion cannot be brewed.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_LightHeal_28_03"); //We can't afford to lose an ally. Here you have one.

	B_GiveInvItems	(self, hero, ItRu_LightHeal, 1);

	AI_Output(hero, self, "Info_Mod_Myxir_AW_LightHeal_15_04"); //Thanks.
};

INSTANCE Info_Mod_Myxir_AW_BeliarDolch (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_BeliarDolch_Condition;
	information	= Info_Mod_Myxir_AW_BeliarDolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the building instructions.";
};

FUNC INT Info_Mod_Myxir_AW_BeliarDolch_Condition()
{
	if (Npc_HasItems(hero, ItWr_Bauplan_BeliarDolch) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_BeliarDolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_BeliarDolch_15_00"); //I found the building instructions.
	AI_Output(self, hero, "Info_Mod_Myxir_AW_BeliarDolch_28_01"); //Unbelievable... show me...

	B_GiveInvItems	(hero, self, ItWr_Bauplan_BeliarDolch, 1);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Myxir_AW_BeliarDolch_28_02"); //Aha, a lump of it and a lump of it. Hmm, well, you wouldn't happen to have a lump of magic and black ore with you?
};

INSTANCE Info_Mod_Myxir_AW_BeliarDolchZutaten (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_BeliarDolchZutaten_Condition;
	information	= Info_Mod_Myxir_AW_BeliarDolchZutaten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here they are.";
};

FUNC INT Info_Mod_Myxir_AW_BeliarDolchZutaten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_AW_BeliarDolch))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 1)
	&& (Npc_HasItems(hero, ItMi_Zeitspalt_Addon) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_BeliarDolchZutaten_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_AW_BeliarDolchZutaten_15_00"); //Here they are.

	Npc_RemoveInvItems	(hero, ItMi_Nugget, 1);
	Npc_RemoveInvItems	(hero, ItMi_Zeitspalt_Addon, 1);

	B_ShowGivenThings	("1 ore and 1 black ore given");

	AI_Output(self, hero, "Info_Mod_Myxir_AW_BeliarDolchZutaten_28_01"); //Excellent. I'll get right to work. I should be ready in a few hours.
	AI_Output(hero, self, "Info_Mod_Myxir_AW_BeliarDolchZutaten_15_02"); //I hope we have a few more hours.

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk (self, 3600);

	B_LogEntry	(TOPIC_MOD_BEL_BELIARDOLCH, "Myxir has the ingredients for the dagger and will take a while to finish it.");
};

INSTANCE Info_Mod_Myxir_AW_BeliarDolchFertig (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_BeliarDolchFertig_Condition;
	information	= Info_Mod_Myxir_AW_BeliarDolchFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Myxir_AW_BeliarDolchFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_AW_BeliarDolchZutaten))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_AW_BeliarDolchFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Myxir_AW_BeliarDolchFertig_28_00"); //Here, take the dagger.

	B_GiveInvItems	(self, hero, ItMw_BeliarDolch, 1);

	AI_UnequipWeapons	(hero);

	EquipItem	(hero, ItMw_BeliarDolch);

	AI_DrawWeapon	(hero);

	AI_PlayAni	(hero, "T_1HSINSPECT");

	AI_Output(self, hero, "Info_Mod_Myxir_AW_BeliarDolchFertig_28_01"); //Now's not the time to look at this thing in every detail. Go ahead and kill the bastards.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BEL_BELIARDOLCH, "I have the dagger and should now be prepared to face the guard.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_BELIARDOLCH, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Myxir_AW_EXIT (C_INFO)
{
	npc		= Mod_7000_KDS_Myxir_AW;
	nr		= 1;
	condition	= Info_Mod_Myxir_AW_EXIT_Condition;
	information	= Info_Mod_Myxir_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Myxir_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Myxir_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
