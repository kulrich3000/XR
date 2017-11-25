INSTANCE Info_Mod_Xardas_MT_Felsenfestung (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Felsenfestung_Condition;
	information	= Info_Mod_Xardas_MT_Felsenfestung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_Felsenfestung_Condition()
{
	if (Mod_Xeres_Kampf01 == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Felsenfestung_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_00"); //That was close. Thank God I followed you. It seems you're not strong enough to defeat Xeres.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_01"); //Good thing we know that now, after all.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_02"); //I underestimated Xeres's powers. Makes him even more dangerous than I thought.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_03"); //I don't know anyone who could compete with him.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_04"); //Why don't you go check your old folios again? It always says something useful.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_05"); //We're gonna have to take our chances.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_06"); //Can I help you in the meantime?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_07"); //I've made sure that no one else could break out of Xeres' prison.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_08"); //To assist you, I had to leave my guard post.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_09"); //I'm afraid that hell has broken loose in Jharkendar by now.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_10"); //That means I can enjoy myself there.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_11"); //I won't rest until I find out something. As long as you have to stop Xeres' troops there.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_12"); //Nothing could be easier.

	B_LogEntry	(TOPIC_MOD_XERES, "Xardas is looking for a way how we might be able to compete with Xeres. In the meantime, I am to stop Xeres' approaching troops in Jharkendar.");

	B_StartOtherRoutine	(Xeres_01, "START");
};

INSTANCE Info_Mod_Xardas_MT_ArgezSicher (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_ArgezSicher_Condition;
	information	= Info_Mod_Xardas_MT_ArgezSicher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_ArgezSicher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Rettung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_ArgezSicher_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_00"); //I'm glad you came. Did you hold back Xeres's people?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_ArgezSicher_15_01"); //Argez and I wiped out a small squad.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_02"); //I hope we'll be at ease for now. I have a new assignment for you.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_ArgezSicher_15_03"); //Only if Xeres can stop it.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_04"); //I have already told you that Radanos split into several personalities who competed with each other and aspired to break up - the birth of Innos, Adanos and Beliar.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_05"); //The three new gods were deadly enemies from the beginning and fought each other wherever they could.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_06"); //As my studies have shown, they also used weapons.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_ArgezSicher_15_07"); //Hmm. Pretty powerful weapons, I suppose?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_08"); //The most powerful weapons I've ever seen. With one of them it should be possible to beat Xeres.

	Wld_InsertNpc	(SkeletonMage_Riddler, "OW_FOGDUNGEON_36_MOVEMENT2");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_36");
	Wld_InsertNpc	(Lesser_Skeleton, "FP_FOGTOWER_BOOK");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_30");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_30");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_28");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_31");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_25");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_16");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_17");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_18");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_22");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_10");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_09");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_08");

	Log_CreateTopic	(TOPIC_MOD_ERSTEWAFFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ERSTEWAFFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ERSTEWAFFE, "I'm supposed to find a magic weapon. This comes from one of the three gods and was hidden on khorinis.");
};

INSTANCE Info_Mod_Xardas_MT_WoWaffe (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_WoWaffe_Condition;
	information	= Info_Mod_Xardas_MT_WoWaffe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where should I start the search?";
};

FUNC INT Info_Mod_Xardas_MT_WoWaffe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_ArgezSicher))
	&& (Npc_HasItems(hero, ItMw_BeliarWeapon_Raven) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_WoWaffe_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_WoWaffe_15_00"); //Where should I start the search?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_01"); //Zwei Schauplätze der Kampfhandlungen müssen sich im Minental befunden haben. Es ist von "mystical places" die Rede.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_02"); //Der eine sei bei der "moondial" - ich vermute, damit ist der Steinkreis gemeint, in dem auch ein Fokusstein verborgen war.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_03"); //The other one is a cursed wall. The description of the place fits exactly on the fog tower at the coast.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_04"); //The best place to start your search is in one of these two places, where you should find what you are looking for.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_05"); //As soon as you take it, come back.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_06"); //However, if for the time being you only come across some poor hints that you don't know how to interpret, I'll give you my advice.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_07"); //May Beliar watch over you in your quest and cover the eyes of your enemies in darkness.

	B_LogEntry	(TOPIC_MOD_ERSTEWAFFE,	"Xardas mentioned a difficult puzzle. I'll probably have to solve it to get the gun. But first I have to find the place. Xardas says I should go to a mystical place. Either the Stonehenge or the Nebelturm would be a good choice. If I don't understand any hints, Xardas might be able to help me.");
};

INSTANCE Info_Mod_Xardas_MT_RiddleHelper (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_RiddleHelper_Condition;
	information	= Info_Mod_Xardas_MT_RiddleHelper_Info;
	permanent	= 1;
	important	= 0;
	description	= "I found a book of clues.";
};

FUNC INT Info_Mod_Xardas_MT_RiddleHelper_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_WoWaffe))
	&& (Npc_HasItems(hero, ItMw_BeliarWeapon_Raven) == 0)
	&& (riddle6 == FALSE)
	&& (riddle1 == TRUE)
	{
		return 1;
	};
};

var int riddle1Hint;
var int riddle2Hint;
var int riddle3Hint;
var int riddle4Hint;
var int riddle5Hint;

FUNC VOID Info_Mod_Xardas_MT_RiddleHelper_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_00"); //I found a book of clues.

	if (riddle5 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_01"); //In this text it says that I will find someone, or something in the place where it all started....
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_02"); //Has it been so long since you remembered the place where you found the first clue?
		
		if (!riddle5Hint) {
			B_LogEntry(TOPIC_MOD_THERIDDLE, "I'm supposed to go back to the place where I found the first book. That was in the fog tower.");
			
			riddle5Hint = TRUE;
		};
	}
	else if (riddle4 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_03"); //It is said here that the deeds of those who were on board have long since been forgotten.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_04"); //Needless to say, I think we're talking about a ship.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_05"); //And from the text, one can conclude that he was ruthlessly deprived of seaworthiness due to adverse circumstances.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_06"); //Would you like me to point out where you could find one?
		
		if (!riddle4Hint) {
			B_LogEntry(TOPIC_MOD_THERIDDLE, "I need to find a shipwreck. I think I'll find it on the coast of the Minental.");
			
			riddle4Hint = TRUE;
		};
	}
	else if (riddle3 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_07"); //It is said that I should now find the place where a clever fisherman would not eject his net.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_08"); //Well, if the mind commands it to fish in clear waters.... look around the east of the colony....
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_09"); //(dry) More hints should hardly be needed.
		
		if (!riddle3Hint) {
			B_LogEntry(TOPIC_MOD_THERIDDLE, "Xardas told me that clever fishermen fish in clear waters. What kind of water in the Minental isn't clear?");
			
			riddle3Hint = TRUE;
		};
	}
	else if (riddle2 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_10"); //This time I am supposed to find a place that is almost full of water, but still offers enough air to breathe.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_11"); //Wenn du dich nördlich vom Alten Lager umsiehst, müsstest du den gesuchten Ort finden ... wobei ich mit "look" nicht nur den oberflächlichen Gebrauch deiner Augen meine ...
		
		if (!riddle2Hint) {
			B_LogEntry(TOPIC_MOD_THERIDDLE, "The sought-after place should be north of the Old Camp. But I should not only make superficial use of my eyes....");
			
			riddle2Hint = TRUE;
		};
	}
	else if (riddle1 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_12"); //I'm to begin my search in the place where I left.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_13"); //Well, then you're certainly not out of place here.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_14"); //In the immediate vicinity I have only just felt the emergence of a magical aura.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_15"); //Just take a good look around, and you'll find what you're looking for.
		
		if (!riddle1Hint) {
			B_LogEntry(TOPIC_MOD_THERIDDLE, "Xardas thinks that I am not wrong here in the mountain fortress and he felt a magical aura in the immediate vicinity. I should take a look around the fortress.");
			
			riddle1Hint = TRUE;
		};
	};
};

INSTANCE Info_Mod_Xardas_MT_HabSchwert (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_HabSchwert_Condition;
	information	= Info_Mod_Xardas_MT_HabSchwert_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the sword.";
};

FUNC INT Info_Mod_Xardas_MT_HabSchwert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riddler_Chromanin))
	&& ((Npc_HasItems(hero, ItMw_BeliarWeapon_Raven) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_01) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_02) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_03) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_04) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_05) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_06) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_07) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_08) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_09) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_10) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_11) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_12) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_13) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_14) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_15) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_16) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_17) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_18) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_19) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_20) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_01) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_02) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_03) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_04) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_05) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_06) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_07) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_08) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_09) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_10) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_11) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_12) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_13) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_14) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_15) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_16) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_17) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_18) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_19) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_20) == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_HabSchwert_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_HabSchwert_15_00"); //I found the sword.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_01"); //Very good. Very good. I suspect this is Beliar's claw. With their power, you should be able to defeat Xeres without problems.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_02"); //Before using the weapon, you should dedicate it to a Beliar shrine.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_03"); //Take this amulet for safety.

	B_GiveInvItems	(self, hero, ItAm_Xardas_SchutzVorXeres, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_04"); //This amulet should be able to protect you from Xere's bondage spells.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_05"); //Be warned, though. After your last encounter with him, his influence on the orcs in the city has grown.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_06"); //Don't count on standards to protect you now.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_07"); //You'll have to think of other ways to get to him, be it magic, potion or sword.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_08"); //I will now return to Khorinis. Beliar be with you.

	B_LogEntry_More	(TOPIC_MOD_XERES, TOPIC_MOD_ERSTEWAFFE, "I have the sword, and Xardas thinks I can use it to destroy Xeres. To protect me from Xeres' bondage spells he still gave me an amulet, which I should definitely wear. I can go to Xeres in the Orc City now.", "I have the sword, and Xardas thinks I can use it to destroy Xeres.");
	B_SetTopicStatus	(TOPIC_MOD_ERSTEWAFFE, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Xardas_MT_PreBefoerderung (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_PreBefoerderung_Condition;
	information	= Info_Mod_Xardas_MT_PreBefoerderung_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to become a black magician.";
};

FUNC INT Info_Mod_Xardas_MT_PreBefoerderung_Condition()
{
	if (Mod_Gilde == 12)
	&& (Kapitel > 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_PreBefoerderung_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_PreBefoerderung_14_00"); //There's something I need to talk to you about.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_PreBefoerderung_14_01"); //You have been with us for some time now and have proven yourself as a capable Beliaran trailer.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_PreBefoerderung_14_02"); //We can use your help so we want you to take the next step and decide whether you want to go the way of a magician or a warrior in the future.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_PreBefoerderung_14_03"); //I don't have to tell you anymore that your decision is final. Choose which of the two camps corresponds more to your essence.
};

INSTANCE Info_Mod_Xardas_MT_Befoerderung (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Befoerderung_Condition;
	information	= Info_Mod_Xardas_MT_Befoerderung_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to become a black magician.";
};

FUNC INT Info_Mod_Xardas_MT_Befoerderung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_PreBefoerderung))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_BefoerderungKrieger))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Befoerderung_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Befoerderung_15_00"); //I want to become a black magician.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Befoerderung_14_01"); //So you choose the path of magic. A wise decision.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Befoerderung_14_02"); //I'll elevate you to the rank of black magician. Hopefully this will help in the destruction of Xeres.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Befoerderung_14_03"); //Here's your robe.

	CreateInvItems	(self, SCHWARZMAGIERROBE, 1);
	B_GiveInvItems	(self, hero, SCHWARZMAGIERROBE, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, Schwarzmagierrobe);

	B_GivePlayerXP	(400);

	B_Göttergefallen(3, 5);

	Mod_Gilde = 13;

	Snd_Play ("LEVELUP");
};

INSTANCE Info_Mod_Xardas_MT_BefoerderungKrieger (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_BefoerderungKrieger_Condition;
	information	= Info_Mod_Xardas_MT_BefoerderungKrieger_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to be a Black Warrior.";
};

FUNC INT Info_Mod_Xardas_MT_BefoerderungKrieger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_PreBefoerderung))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Befoerderung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_BefoerderungKrieger_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_BefoerderungKrieger_15_00"); //I want to be a Black Warrior.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_BefoerderungKrieger_14_01"); //So you have made a decision and I believe that this is the right thing to do, in accordance with the circumstances.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_BefoerderungKrieger_14_02"); //Unfortunately, I have to tell you that as a Black Warrior I can't teach you - this will be done by Raven.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_BefoerderungKrieger_14_03"); //Soon go to him and tell him of your decision so that he can initiate your next lesson.
};

INSTANCE Info_Mod_Xardas_MT_Angebot (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Angebot_Condition;
	information	= Info_Mod_Xardas_MT_Angebot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_Angebot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gomez_Angebot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Angebot_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_00"); //What was that all about?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Angebot_15_01"); //How was I supposed to know that your memory spell was diminishing so quickly?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_02"); //How was I supposed to know you were challenging him?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_03"); //You are lucky that I am in the camp at the moment, otherwise we would have seen each other only in Beliar's empire again...
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Angebot_15_04"); //I also wanted to talk to Raven, the old camp wants to make an offer to the demonic knights.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_05"); //Then make me an offer before Raven has a fiasco like Gomez. Gomez will contact Raven and Scar, but the later that happens, the better.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Angebot_15_06"); //Can't you repeat the memory spell?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_07"); //No, at that time Gomez was dead and I made an agreement with Beliar that he was revived. After his death I was able to cast such a powerful memory spell, but now it is no longer possible for me...
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_08"); //Anyway, what's your offer?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Angebot_15_09"); //The old camp wants to offer the demonic knights to give us a part of the old mine for a lot of money, otherwise we have to take tougher measures.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_10"); //I don't think that's possible after this conversation with Gomez.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_11"); //However, I have a piece of advice for you: now that Gomez knows about the Old Camp and its history, he will do everything in his power to take up his old position again.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Angebot_14_12"); //In this case, I can't help you either. Now you should leave the camp before Gomez regains consciousness.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_AL_MINE, "I met Gomez, who attacked me, in the demon knights' camp. Xardas could paralyze him and told me to flee. I better tell Whistler what happened.");

	AI_Teleport	(self, "TOT");

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Xardas_MT_Gomez (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Gomez_Condition;
	information	= Info_Mod_Xardas_MT_Gomez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_Gomez_Condition()
{
	if (Mod_GomezAngriff == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Gomez_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Gomez_14_00"); //That's enough! We still need Gomez.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xardas_MT_Raven (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Raven_Condition;
	information	= Info_Mod_Xardas_MT_Raven_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_Raven_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_GomezNervt))
	&& (!Npc_IsInState(Mod_520_DMR_Raven_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Raven_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Raven_14_00"); //Let us now put an end to this touching reconciliation and go....

	B_LogEntry	(TOPIC_MOD_AL_LOCKVOGEL, "Unfortunately, Xardas and Raven prevented the killing of Gomez.... However, Raven orders his people to leave the camp and gives me Gomez's old sword as compensation.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_StartOtherRoutine	(Mod_517_DMR_Gomez_MT, "START");
	B_StartOtherRoutine	(Mod_520_DMR_Raven_MT, "START");
	B_StartOtherRoutine	(Mod_7066_DMR_Daemonenritter_MT, "TOT");

	AI_Teleport	(self, "TOT");
	AI_Teleport	(Mod_517_DMR_Gomez_MT, "TOT");
	AI_Teleport	(Mod_520_DMR_Raven_MT, "TOT");
	AI_Teleport	(Mod_7066_DMR_Daemonenritter_MT, "TOT");
};

INSTANCE Info_Mod_Xardas_MT_Orkfriedhof (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Orkfriedhof_Condition;
	information	= Info_Mod_Xardas_MT_Orkfriedhof_Info;
	permanent	= 0;
	important	= 0;
	description	= "In the swamp an undead shaman of the orcs appeared and robbed a chromanine book.";
};

FUNC INT Info_Mod_Xardas_MT_Orkfriedhof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_UndeadOrkShamane_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Orkfriedhof_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Orkfriedhof_15_00"); //In the swamp an undead shaman of the orcs appeared and robbed a chromanine book.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Orkfriedhof_15_01"); //He was talking about retreating to a place of dead silence.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Orkfriedhof_14_02"); //In the swamp, you say? Is it not in the immediate vicinity of the orcish cemetery that you already visited during the time of the sleeper?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Orkfriedhof_15_03"); //This would be the most obvious place for your search... but you could certainly have come across it yourself.

	Mod_NL_UOS_Day = Wld_GetDay() - 1;
};

INSTANCE Info_Mod_Xardas_MT_UndeadOrk (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_UndeadOrk_Condition;
	information	= Info_Mod_Xardas_MT_UndeadOrk_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_UndeadOrk_Condition()
{
	if (Mod_NL_UOS == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_UndeadOrk_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_14_00"); //Have you been able to obtain chromanin by now?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_15_01"); //There are certain difficulties.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_14_02"); //Trouble?!
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_15_03"); //Well... Oh, I'll make it short.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_15_04"); //An undead orc shaman robbed a book and settled in the orc cemetery, where he prevented me from getting to the book through magical barriers and hostages.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_14_05"); //Is it within range of your magic?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_15_06"); //I think so....
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_14_07"); //Then use a spell to destroy him. Since he may be the creator of the barrier, there is nothing to prevent you from getting to the book.

	Info_ClearChoices	(Info_Mod_Xardas_MT_UndeadOrk);

	Info_AddChoice	(Info_Mod_Xardas_MT_UndeadOrk, "Yeah, but the hostages did.", Info_Mod_Xardas_MT_UndeadOrk_B);
	Info_AddChoice	(Info_Mod_Xardas_MT_UndeadOrk, "Okay, copy that.", Info_Mod_Xardas_MT_UndeadOrk_A);
};

FUNC VOID Info_Mod_Xardas_MT_UndeadOrk_B()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_B_15_00"); //Yeah, but the hostages did. There are undead creatures among them who would not be very pleased about the passing of their Master....
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_B_14_01"); //This is about the existence of the world as we know it, and you are concerned about such nullities.... Hmph, all right, let me think about it...
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_B_14_02"); //Hmm, you would have to recombine the effects of two different roles to destroy all undead creatures in one fell swoop.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_B_14_03"); //I can do this just once for you.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_B_14_04"); //With which roles, however, you have to decide for yourself? and of course you'll have to get them, too.

	Mod_NL_Xardas_ScrollCombiner = 1;
	
	Info_ClearChoices	(Info_Mod_Xardas_MT_UndeadOrk);
};

FUNC VOID Info_Mod_Xardas_MT_UndeadOrk_A()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_A_15_00"); //Okay, copy that.
	
	Info_ClearChoices	(Info_Mod_Xardas_MT_UndeadOrk);
};

INSTANCE Info_Mod_Xardas_MT_ScrollCombining (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_ScrollCombining_Condition;
	information	= Info_Mod_Xardas_MT_ScrollCombining_Info;
	permanent	= 0;
	important	= 0;
	description	= "I would like to combine two roles.";
};

FUNC INT Info_Mod_Xardas_MT_ScrollCombining_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_UndeadOrk))
	&& (Mod_NL_Xardas_ScrollCombiner == 1)
	{
		return 1;
	};
};

FUNC VOID B_Xardas_MT_WrongScrollCombination ()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WrongScrollCombination_14_00"); //(shortly tied, disrespectful) Hmm, I hope these spells will meet the needs.
};

FUNC VOID B_Xardas_MT_RightScrollCombination ()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_RightScrollCombination_14_00"); //In fact, your choice was not the worst, it seems to me.
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_ScrollCombining_15_00"); //I would like to combine two roles.

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Destroy Undead", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Fire Rain", Info_Mod_Xardas_MT_ScrollCombining_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Ice Wave", Info_Mod_Xardas_MT_ScrollCombining_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "freezing rain", Info_Mod_Xardas_MT_ScrollCombining_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Destroy Undead", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Fire Rain", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Ice Wave", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "freezing rain", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HarmUndead, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_HarmUndead, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_HolyWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Destroy Undead", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Fire Rain", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Ice Wave", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "freezing rain", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_HarmUndead, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_HolyWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Destroy Undead", Info_Mod_Xardas_MT_ScrollCombining_FireRain_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_FireRain_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Fire Rain", Info_Mod_Xardas_MT_ScrollCombining_FireRain_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_FireRain_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Ice Wave", Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "freezing rain", Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_FireRain, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_FireRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_FireWave, 1);
	CreateInvItems	(hero, ItSc_IceRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_FireRain, 1);
	CreateInvItems	(hero, ItSc_IceRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_FireBolt, 1);
	CreateInvItems	(hero, ItSc_IceRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Destroy Undead", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Fire Rain", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Ice Wave", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "freezing rain", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HarmUndead, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_FireRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_FireBolt, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_FireWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_FireRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_FireBolt, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Destroy Undead", Info_Mod_Xardas_MT_ScrollCombining_IceWave_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_IceWave_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Fire Rain", Info_Mod_Xardas_MT_ScrollCombining_IceWave_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_IceWave_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Ice Wave", Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "freezing rain", Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_HolyWave, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_HolyWave, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_FireWave, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_FireWave, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_IceWave, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_IceWave, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_IceWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Destroy Undead", Info_Mod_Xardas_MT_ScrollCombining_IceRain_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_IceRain_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Fire Rain", Info_Mod_Xardas_MT_ScrollCombining_IceRain_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_IceRain_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Ice Wave", Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "freezing rain", Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_FireRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_FireRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_IceWave, 1);
	CreateInvItems	(hero, ItSc_IceRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Destroy Undead", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Fire Rain", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Ice Wave", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "freezing rain", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HarmUndead, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_IceWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

INSTANCE Info_Mod_Xardas_MT_Chromanin3 (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Chromanin3_Condition;
	information	= Info_Mod_Xardas_MT_Chromanin3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a chromanine book here with me....";
};

FUNC INT Info_Mod_Xardas_MT_Chromanin3_Condition()
{
	if (Mod_NL_UOS > 6)
	&& (Npc_HasItems(hero, ItWr_Chromanin3) == 1)
	&& (Mod_NL_Chromanin == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Chromanin3_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_00"); //I have a chromanine book with me here....
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_01"); //(uninterested) Good. It was also your job to salvage them.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_02"); //There is, however, a problem.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_03"); //Problem? If you are good at reading, where should there be a problem?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_04"); //Well... it's empty.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_05"); //What?! Nonsense, let's see...

	B_GiveInvItems	(hero, self, ItWr_Chromanin3, 1);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_06"); //With Beliar! But how is that possible? Under what circumstances did you get this book?

	B_GiveInvItems	(self, hero, ItWr_Chromanin3, 1);

	AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_07"); //I snatched it from the corpse of an undead orc shaman.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_08"); //Undead orchamans?! Evil magic seems to be involved here... Yeah, I can feel it. The magical energy of this book seems to be almost completely extinguished.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_09"); //But how did he succeed? Did he have anything else with him?

	if (Mod_NL_Siegelbuch == 0)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_10"); //I don't know....
		AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_11"); //Then go and look!
	};

	B_SetTopicStatus	(TOPIC_MOD_SLD_FRIEDHOF, LOG_SUCCESS);
};

INSTANCE Info_Mod_Xardas_MT_Siegelbuch_01 (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Siegelbuch_01_Condition;
	information	= Info_Mod_Xardas_MT_Siegelbuch_01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Yes, this sealed book.";
};

FUNC INT Info_Mod_Xardas_MT_Siegelbuch_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Chromanin3))
	&& (Npc_HasItems(hero, ItWr_Siegelbuch) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Siegelbuch_01_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_01_15_00"); //Yes, this sealed book.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_01"); //Let me see...

	B_GiveInvItems	(hero, self, ItWr_Siegelbuch, 1);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_02"); //It.... it seems to create a magic vacuum around you.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_03"); //Much more, it absorbs magical energy from the environment, slowly but steadily.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_01_15_04"); //I still don't understand. Why all this magic frills?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_01_15_05"); //The Chromanin-Book is simply a reference book, in which a few sentences were recorded.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_06"); //Stupid fool! But what do you expect from a simple mercenary....
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_07"); //It's not just paper on which something was written with ink and pen. The writing is of magical nature and can only be removed with magical means.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_08"); //And now I want to study quietly the sealed book you brought me. Tomorrow at the earliest I can tell you more about it.

	Mod_NL_XardasSiegelDay = Wld_GetDay();
};

INSTANCE Info_Mod_Xardas_MT_Siegelbuch_02 (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Siegelbuch_02_Condition;
	information	= Info_Mod_Xardas_MT_Siegelbuch_02_Info;
	permanent	= 0;
	important	= 0;
	description	= "And what did you find out?";
};

FUNC INT Info_Mod_Xardas_MT_Siegelbuch_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Siegelbuch_01))
	&& (Wld_GetDay()-1 == Mod_NL_XardasSiegelDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Siegelbuch_02_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_02_15_00"); //And what did you find out?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_02_14_01"); //I said tomorrow at the earliest!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xardas_MT_Siegelbuch_03 (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Siegelbuch_03_Condition;
	information	= Info_Mod_Xardas_MT_Siegelbuch_03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have you found anything out yet?";
};

FUNC INT Info_Mod_Xardas_MT_Siegelbuch_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Siegelbuch_01))
	&& (Wld_GetDay()-1 > Mod_NL_XardasSiegelDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Siegelbuch_03_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_03_15_00"); //Have you found anything out yet?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_01"); //Yes, I did, even if it wasn't easy. It seems to confirm what I had already suspected.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_02"); //The sealed tome must have absorbed the magical energy of the chromanine beech.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_03"); //Presumably, the undead orchid has recognized the danger that chromanin poses to his master and has taken this step.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_03_15_04"); //What can we do in this case to restore the magic of the book?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_05"); //Nun, aus den wenigen Quellen die ich fand konnte ich schließen, dass es sich um das "Book of the Pondaros" handeln könnte.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_06"); //It's ancient and is said to have possessed those same qualities as the book you brought me.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_07"); //To regain the magic of the chromanine book, we would have to break the three seals and open the Pondaro's book.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_03_15_08"); //And how are we supposed to do that? I don't suppose it could be done by force, right?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_09"); //Richtig. Jedoch gaben die lückenhaften Quellen in dieser Beziehung nur den Satz preis "break the seals in the circle of the stones". Sehr rätselhaft.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_10"); //Look at Khorinis to see if you can find phenomena that correspond to this paraphrase.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_11"); //In these places you will surely find certain mechanisms that will help you when you use them.

	B_GiveInvItems	(self, hero, ItWr_Siegelbuch, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_12"); //I will try to learn more about this ominous book during this time.

	Mod_NL_Siegelbuch = 2;

	B_LogEntry	(TOPIC_MOD_ERSTEWAFFE, "Apparently, the' Book of Pondaro' has absorbed the magic of the Chromanin book. To restore them, the seals must be broken. But Xardas could only give me the phrase' breaking the seals in the circle of the stones'. Hmm, circle of stones... In any case, there should be mechanisms there that will help me when I use them?");
};

INSTANCE Info_Mod_Xardas_MT_EXIT (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_EXIT_Condition;
	information	= Info_Mod_Xardas_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Xardas_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Xardas_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
