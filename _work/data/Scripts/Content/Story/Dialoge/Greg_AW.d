INSTANCE Info_Mod_Greg_Hi (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Hi_Condition;
	information	= Info_Mod_Greg_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_00"); //Adanos! A landlubber! What do you want?
	AI_Output(hero, self, "Info_Mod_Greg_Hi_15_01"); //I want to be a pirate.
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_02"); //Pirate? You? We don't host tea party min young!
	AI_Output(hero, self, "Info_Mod_Greg_Hi_15_03"); //I don't want to drink tea!
	AI_Output(hero, self, "Info_Mod_Greg_Hi_15_04"); //You look like hell you would!
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_05"); //Don't get your mouth so full.
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_06"); //Where do you come from? Skip probably didn't bring you.
	AI_Output(hero, self, "Info_Mod_Greg_Hi_15_07"); //I'm from Khorinis. Through the mountains to some extent.
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_08"); //The mountains? Is there a secret path or something?
	AI_Output(hero, self, "Info_Mod_Greg_Hi_15_09"); //No. Magicians have found a way to create a passageway to Jharkendar between the old temple above and a counterpart in Khorinis.
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_10"); //Jharkendar?
	AI_Output(hero, self, "Info_Mod_Greg_Hi_15_11"); //That's what the ancient builders called this area. They are said to have settled the island centuries ago.
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_12"); //Uh-huh. And you really want to be a pirate, huh?
	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_13"); //All right, all right. Take the hoe to your right and the map to your left.

	CreateInvItems	(hero, ItWR_Addon_TreasureMap, 1);
	CreateInvItems	(hero, ItMw_2H_Axe_L_01, 1);

	B_ShowGivenThings	("Pickaxe and card received");

	AI_Output(self, hero, "Info_Mod_Greg_Hi_01_14"); //We'll see if you've got what it takes to be a pirate!

	Log_CreateTopic	(TOPIC_MOD_GREG_AUFNAHME, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GREG_AUFNAHME, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GREG_AUFNAHME, "Greg gave me a treasure map and a pickaxe. I'm supposed to get him the treasures.");
};

INSTANCE Info_Mod_Greg_Sweetwater (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Sweetwater_Condition;
	information	= Info_Mod_Greg_Sweetwater_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's your problem?";
};

FUNC INT Info_Mod_Greg_Sweetwater_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Sweetwater))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Sweetwater_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Sweetwater_15_00"); //What's your problem?
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_01"); //Water. We're running out of water. And yourselves too.
	AI_Output(hero, self, "Info_Mod_Greg_Sweetwater_15_02"); //Water runs out? By the sea? Are you kidding me?
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_03"); //I mean fresh water. The lake up in the valley is the only fresh water we have here.
	AI_Output(hero, self, "Info_Mod_Greg_Sweetwater_15_04"); //And? That's enough, I'd like mine.
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_05"); //Yeah, but we can't reach it. The valley is teeming with alligators.
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_06"); //Does Adanos know where they all suddenly come from?
	AI_Output(hero, self, "Info_Mod_Greg_Sweetwater_15_07"); //Uh-huh. And there I'm supposed to....
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_08"); //Talk to Alligator Jack. He's outside the gate. Make sure those things don't come down here.
	AI_Output(hero, self, "Info_Mod_Greg_Sweetwater_15_09"); //Alligator Jack? You have a specialist.
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_10"); //It is. But he doesn't stand a chance on his own, he says.
	AI_Output(hero, self, "Info_Mod_Greg_Sweetwater_15_11"); //All right, all right. I'll talk to him.
	AI_Output(self, hero, "Info_Mod_Greg_Sweetwater_01_12"); //Then it's good.

	B_LogEntry	(TOPIC_MOD_JG_SWEETWATER, "plague of alligators in the valley basin, the freshwater reservoir.... Let's see what Alligator Jack tells us.");

	B_StartOtherRoutine	(Mod_928_PIR_AlligatorJack_AW, "PRESTART");
};

INSTANCE Info_Mod_Greg_Irdorath (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Irdorath_Condition;
	information	= Info_Mod_Greg_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "I intend to make an excursion across the wide sea.";
};

FUNC INT Info_Mod_Greg_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath))
	&& (Mod_Irdorath == 0)
	&& (Piraten_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Irdorath_15_00"); //I intend to make an excursion across the wide sea.
	AI_Output(hero, self, "Info_Mod_Greg_Irdorath_15_01"); //But for this I need a captain who is able to take the ship of the Paladin out of the harbour....
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_02"); //(interrupts) You want me to go to the seaport and ship of the Paladins?
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_03"); //You're good with me, so I can turn myself over to the royal daughters.
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_04"); //Nah, boy, if I want to step down, then certainly not with a rope around my neck and boundless stupidity....
	AI_Output(hero, self, "Info_Mod_Greg_Irdorath_15_05"); //Too bad... Then I must find another captain to take me to this ominous island...
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_06"); //What island?
	AI_Output(hero, self, "Info_Mod_Greg_Irdorath_15_07"); //The island where the powerful minions of the magician Xeres lurk.
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_08"); //(to himself) Tjo, maybe there's something to pick up. As we all know, poor swallowers are never magicians...
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_09"); //(again to the hero) Well, min young, I can't let myself be seen in the city, but maybe you can convince my best fighter Bones to come with me.
	AI_Output(self, hero, "Info_Mod_Greg_Irdorath_01_10"); //I don't want it to fail because of me.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Greg won't come to port town to lead the ship. However, he gave me the freedom to take Bones if I could convince him to come with me.");
};

INSTANCE Info_Mod_Greg_Schatzsuche (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Schatzsuche_Condition;
	information	= Info_Mod_Greg_Schatzsuche_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the treasures.";
};

FUNC INT Info_Mod_Greg_Schatzsuche_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Hi))
	&& (Npc_HasItems(hero, ItMi_Sextant_Greg) > 0)
	&& (Npc_HasItems(hero, ItMi_JeweleryChest_Greg) > 0)
	&& (Npc_HasItems(hero, ItMi_DarkPearl_Greg) > 0)
	&& (Npc_HasItems(hero, ItMw_Piratensaebel_Greg) > 0)
	&& (Npc_HasItems(hero, ItMi_RuneBlank_Greg) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Schatzsuche_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Schatzsuche_15_00"); //I found the treasures.
	
	Npc_RemoveInvItems	(hero, ItMi_Sextant_Greg, 1);
	Npc_RemoveInvItems	(hero, ItMi_JeweleryChest_Greg, 1);
	Npc_RemoveInvItems	(hero, ItMi_DarkPearl_Greg, 1);
	Npc_RemoveInvItems	(hero, ItMw_Piratensaebel_Greg, 1);
	Npc_RemoveInvItems	(hero, ItMi_RuneBlank_Greg, 1);

	AI_Output(self, hero, "Info_Mod_Greg_Schatzsuche_01_01"); //Well, you seem to need something!

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		AI_Output(self, hero, "Info_Mod_Greg_Schatzsuche_01_02"); //If you want, you can become a real sailor now.
	}
	else 
	{
		AI_Output(self, hero, "Info_Mod_Greg_Schatzsuche_01_03"); //Unfortunately, you've joined too many communities.
	};

	B_Göttergefallen(2, 1);

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_GREG_AUFNAHME, LOG_SUCCESS);
};

INSTANCE Info_Mod_Greg_Aufnahme (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Aufnahme_Condition;
	information	= Info_Mod_Greg_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to be a pirate.";
};

FUNC INT Info_Mod_Greg_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Schatzsuche))
	&& (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Aufnahme_15_00"); //I want to be a pirate.
	AI_Output(self, hero, "Info_Mod_Greg_Aufnahme_01_01"); //Then get some decent clothes on and get to work.

	CreateInvItems	(self, ITAR_PIR_L_Addon, 1);
	B_GiveInvItems	(self, hero, ITAR_PIR_L_Addon, 1);

	AI_Output(hero, self, "Info_Mod_Greg_Aufnahme_15_02"); //What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Greg_Aufnahme_01_03"); //You'll have to find a squad first, then we'll see.

	Mod_AnzahlNebengilden += 1;

	Piraten_Dabei = 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_69);

	B_GivePlayerXP	(400);

	B_Göttergefallen(2, 2);

	AI_Output(hero, self, "Info_Mod_Greg_Aufnahme_15_05"); //Aye, aye, Captain.

	Log_CreateTopic	(TOPIC_MOD_PIRATEN_ENTERTRUPP, LOG_MISSION);
	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_ENTERTRUPP, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_NEBENGILDEN, TOPIC_MOD_PIRATEN_ENTERTRUPP, "I'm a real pirate now.", "Greg says I should join a troop first.");
};

INSTANCE Info_Mod_Greg_WasJetzt (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_WasJetzt_Condition;
	information	= Info_Mod_Greg_WasJetzt_Info;
	permanent	= 1;
	important	= 0;
	description	= "What am I supposed to do now?";
};

FUNC INT Info_Mod_Greg_WasJetzt_Condition()
{
	if (Mod_InEntertrupp == 1)
	&& (Kapitel == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_WasJetzt_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_WasJetzt_15_00"); //What am I supposed to do now?
	AI_Output(self, hero, "Info_Mod_Greg_WasJetzt_01_01"); //Right now, I have nothing for you to do.
	AI_Output(self, hero, "Info_Mod_Greg_WasJetzt_01_02"); //I'm sure you have other things to do.
	AI_Output(hero, self, "Info_Mod_Greg_WasJetzt_15_03"); //You can say that again. See you later, then.

	Npc_ExchangeRoutine	(Mod_940_PIR_Samuel_AW, "START");
};

INSTANCE Info_Mod_Greg_Karte (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Karte_Condition;
	information	= Info_Mod_Greg_Karte_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_Karte_Condition()
{
	if (Mod_InEntertrupp == 1)
	&& (Kapitel > 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Karte_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_Karte_01_00"); //Hey, good of you to come.
	AI_Output(self, hero, "Info_Mod_Greg_Karte_01_01"); //This map here was found by one of Morgan's boys in a washed up bottle.
	AI_Output(self, hero, "Info_Mod_Greg_Karte_01_02"); //A shipwrecked man writes that he was stranded on an island, where zombies made a mess and apparently guarded a huge treasure.
	AI_Output(self, hero, "Info_Mod_Greg_Karte_01_03"); //I think we should look into it. Been sitting here too long anyway.
	AI_Output(self, hero, "Info_Mod_Greg_Karte_01_04"); //You'll help people with the preparations. Ask the men.
	AI_Output(hero, self, "Info_Mod_Greg_Karte_15_05"); //Aye, aye, Captain.

	B_StartOtherRoutine	(Mod_940_PIR_Samuel_AW, "START");

	Log_CreateTopic	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, "One of Morgan's hijackers found a map. I'm supposed to help prepare everything in the camp for the treasure hunt.");
};

INSTANCE Info_Mod_Greg_Aufgabe (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Aufgabe_Condition;
	information	= Info_Mod_Greg_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "You got something to do for me?";
};

FUNC INT Info_Mod_Greg_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Karte))
	&& (Mod_VorbereitungenFertig == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Aufgabe_15_00"); //You got something to do for me?
	AI_Output(self, hero, "Info_Mod_Greg_Aufgabe_01_01"); //Well, you could take my old pirate sabre you brought me to a blacksmith's and have it repaired.

	B_GiveInvItems	(self, hero, ItMw_Piratensaebel_Greg, 1);

	AI_Output(self, hero, "Info_Mod_Greg_Aufgabe_01_02"); //That old rusty old thing makes me look really stupid. So hurry up!
	AI_Output(hero, self, "Info_Mod_Greg_Aufgabe_15_03"); //Aye, aye, Captain.

	Log_CreateTopic	(TOPIC_MOD_GREG_ROST, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GREG_ROST, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GREG_ROST, "I'm to have Greg's old pirate sabre repaired at a blacksmith's.");
};

INSTANCE Info_Mod_Greg_Saebel (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Saebel_Condition;
	information	= Info_Mod_Greg_Saebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm back and I brought you something.";
};

FUNC INT Info_Mod_Greg_Saebel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bennet_Piraten))
	&& (Npc_HasItems(hero, ItMw_BennetGreg) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Saebel_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Saebel_15_00"); //I'm back and I brought you something.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_01"); //My pepped-up saber?
	AI_Output(hero, self, "Info_Mod_Greg_Saebel_15_02"); //No, something better. The blacksmith Bennet wants to keep your saber.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_03"); //The Klabautermann! A heirloom! My grandfather himself!
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_04"); //He was called the buccaneer of the seas....
	AI_Output(hero, self, "Info_Mod_Greg_Saebel_15_05"); //The blacksmith gave me this sword for it.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_06"); //This sword has drunk gallon by gallon blood!
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_07"); //My ancestor would die in the grave... in the sea!
	AI_Output(hero, self, "Info_Mod_Greg_Saebel_15_08"); //Here. Take a look first.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_09"); //The souls of all the fallen pirates would be stalking me.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_10"); //Hm... Let me see that.

	B_GiveInvItems	(hero, self, ItMw_BennetGreg, 1);

	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_11"); //What's that supposed to be?

	AI_UnequipWeapons	(self);

	EquipWeapon	(self, ItMw_BennetGreg);

	AI_ReadyMeleeWeapon	(self);
	AI_PlayAni	(self, "T_1HSINSPECT");
	AI_RemoveWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_12"); //Why is it painted black? Ow! That's so hot.
	AI_Output(hero, self, "Info_Mod_Greg_Saebel_15_13"); //Three times sharper than any blade and twice as stable. Completely new material, says Bennet.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_14"); //I have to see for myself. I'm going to Bones's to test the blade.
	AI_Output(self, hero, "Info_Mod_Greg_Saebel_01_15"); //You ask Skip if the supplies are loaded.
	AI_Output(hero, self, "Info_Mod_Greg_Saebel_15_16"); //Aye, sir.

	B_SetTopicStatus	(TOPIC_MOD_GREG_ROST, LOG_SUCCESS);

	Mod_PiratenVorbereitungen += 1;

	B_GivePlayerXP	(200);

	B_Göttergefallen(2, 1);

	B_LogEntry	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, "Now I'm supposed to check with Skip to see if everything's on board.");

	B_StartOtherRoutine	(self, "TRAINING");
};

INSTANCE Info_Mod_Greg_Bill (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Bill_Condition;
	information	= Info_Mod_Greg_Bill_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bill tried to sabotage the treasure hunt.";
};

FUNC INT Info_Mod_Greg_Bill_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bill_Rezept))
	&& (Mod_BillsVerbrechenPetzen == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Bill_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Bill_15_00"); //Bill tried to sabotage the treasure hunt.
	AI_Output(self, hero, "Info_Mod_Greg_Bill_01_01"); //What makes you think that?
	AI_Output(hero, self, "Info_Mod_Greg_Bill_15_02"); //This note says so. I got the note from an alchemist from Khorinis.

	B_GiveInvItems	(hero, self, Mod_BillsRumRezept, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Greg_Bill_01_03"); //Actually. Wait a minute, he'll get hurt. Well done, min young!

	B_GivePlayerXP	(200);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Greg_Vorbereitungen (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Vorbereitungen_Condition;
	information	= Info_Mod_Greg_Vorbereitungen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can we get started?";
};

FUNC INT Info_Mod_Greg_Vorbereitungen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Karte))
	&& (Mod_VorbereitungenFertig == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Vorbereitungen_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Vorbereitungen_15_00"); //Can we get started?

	if (Mod_PiratenVorbereitungen > 5)
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Josephina_Hi))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Greg_AJAlive4))
		{
			AI_Output(self, hero, "Info_Mod_Greg_Vorbereitungen_01_03"); //No, now's not the best time.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Greg_Vorbereitungen_01_01"); //Yes, the preparations have been made. We're ready to go.
	
			Mod_VorbereitungenFertig = 1;

			B_LogEntry	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, "The preparations have been made and the treasure hunt can begin.");

			B_Göttergefallen(2, 1);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Greg_Vorbereitungen_01_02"); //Not enough preparations have not yet been made, you still need to help a little bit.
	};
};

INSTANCE Info_Mod_Greg_GehtsLos (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_GehtsLos_Condition;
	information	= Info_Mod_Greg_GehtsLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can we leave now?";
};

FUNC INT Info_Mod_Greg_GehtsLos_Condition()
{
	if (Mod_VorbereitungenFertig == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_GehtsLos_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_GehtsLos_15_00"); //Can we leave now? Except for the crew, everything is on board.
	AI_Output(self, hero, "Info_Mod_Greg_GehtsLos_01_01"); //Jo, so far everything's done. Make sure you don't need anything else from here once we leave, we won't be back so soon.

	Info_ClearChoices	(Info_Mod_Greg_GehtsLos);

	Info_AddChoice	(Info_Mod_Greg_GehtsLos, "There's something I have to do.", Info_Mod_Greg_GehtsLos_Nein);
	Info_AddChoice	(Info_Mod_Greg_GehtsLos, "I'm ready.", Info_Mod_Greg_GehtsLos_Ja);
};

FUNC VOID Info_Mod_Greg_GehtsLos_Nein ()
{
	AI_Output(hero, self, "Info_Mod_Greg_GehtsLos_Nein_15_00"); //There's something I have to do.
	AI_Output(self, hero, "Info_Mod_Greg_GehtsLos_Nein_01_01"); //All right, come as soon as you're ready.

	Info_ClearChoices	(Info_Mod_Greg_GehtsLos);
};

FUNC VOID Info_Mod_Greg_GehtsLos_Ja ()
{
	AI_Output(hero, self, "Info_Mod_Greg_GehtsLos_Ja_15_00"); //I'm ready.
	AI_Output(self, hero, "Info_Mod_Greg_GehtsLos_Ja_01_01"); //So here we go.

	Mod_VorbereitungenFertig = 2;

	Info_ClearChoices	(Info_Mod_Greg_GehtsLos);

	Info_AddChoice	(Info_Mod_Greg_GehtsLos, "Let's go!", Info_Mod_Greg_GehtsLos_Los);
};

FUNC VOID Info_Mod_Greg_GehtsLos_Los ()
{
	Info_ClearChoices	(Info_Mod_Greg_GehtsLos);
	
	AI_StopProcessInfos	(self);

	Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

	B_StartOtherRoutine	(self, "PLAUDERN");
};

INSTANCE Info_Mod_Greg_Kompass (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Kompass_Condition;
	information	= Info_Mod_Greg_Kompass_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the compass.";
};

FUNC INT Info_Mod_Greg_Kompass_Condition()
{
	if (Mod_VorbereitungenFertig == 4)
	&& (Npc_HasItems(hero, ItMi_Kompass) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Kompass_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_00"); //Here's the compass.

	B_GiveInvItems	(hero, self, ItMi_Kompass, 1);

	AI_Output(self, hero, "Info_Mod_Greg_Kompass_01_01"); //Good. But we still have a problem.
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_02"); //And what would that be?
	AI_Output(self, hero, "Info_Mod_Greg_Kompass_01_03"); //Do you feel the slightest breeze?
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_04"); //Actually, I don't.
	AI_Output(self, hero, "Info_Mod_Greg_Kompass_01_05"); //And do we have a galley where oar slaves propel the ship forward?
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_06"); //Actually, neither.
	AI_Output(self, hero, "Info_Mod_Greg_Kompass_01_07"); //So what else do we need?
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_08"); //The stiff breeze from the southwest?
	AI_Output(self, hero, "Info_Mod_Greg_Kompass_01_09"); //Exactly! As long as it doesn't blow, we can't leak.
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_10"); //Which means?
	AI_Output(self, hero, "Info_Mod_Greg_Kompass_01_11"); //You're off. Come back if it's really windy.
	AI_Output(hero, self, "Info_Mod_Greg_Kompass_15_12"); //If you say so. See you around.

	//Mod_VorbereitungenFertig = 5;

	B_SetTopicStatus	(TOPIC_MOD_GREG_KOMPASS, LOG_SUCCESS);
	B_LogEntry	(TOPIC_MOD_PIRATEN_SCHATZSUCHE, "Unfortunately, we are in a doldrums right now, so we can't yet start our treasure hunt. I'm supposed to come back later.");
};

INSTANCE Info_Mod_Greg_Schatzaufteilung (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Schatzaufteilung_Condition;
	information	= Info_Mod_Greg_Schatzaufteilung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_Schatzaufteilung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skip_Schatzaufteilung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Schatzaufteilung_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_01_00"); //In fact, you're still alive! I didn't think anyone could survive a blow with an axe like that!
	AI_Output(hero, self, "Info_Mod_Greg_Schatzaufteilung_15_01"); //I guess I got lucky. I just don't remember anything.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_01_02"); //Jo! During the crossing we were attacked by an orcish galley. They secretly took you out while you were asleep.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_01_03"); //It was a powerful blow, because it was so loud that we noticed that these beasts boarded our ship.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_01_04"); //After that, we fought them back. But you were unconscious until recently.
	AI_Output(hero, self, "Info_Mod_Greg_Schatzaufteilung_15_05"); //What about the treasure?
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_01_06"); //What's wrong with it? Nobody touched him. Even though I allowed it! They all wanted to wait for you.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_01_07"); //So you can choose your part!

	Info_ClearChoices	(Info_Mod_Greg_Schatzaufteilung);

	Info_AddChoice	(Info_Mod_Greg_Schatzaufteilung, "potion of balance", Info_Mod_Greg_Schatzaufteilung_Trank);
	Info_AddChoice	(Info_Mod_Greg_Schatzaufteilung, "10. 000 gold coins", Info_Mod_Greg_Schatzaufteilung_Gold);
};

FUNC VOID Info_Mod_Greg_Schatzaufteilung_Trank ()
{
	AI_Output(hero, self, "Info_Mod_Greg_Schatzaufteilung_Trank_15_00"); //I'll take the potion.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_Trank_01_01"); //It must be a good choice. We don't know what it does.
	AI_Output(hero, self, "Info_Mod_Greg_Schatzaufteilung_Trank_15_02"); //Where did you get him, anyway?
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_Trank_01_03"); //He was lying in the shipwreck. While you were exploring the island, Skip was investigating the shipwreck.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_Trank_01_04"); //He stumbled upon the potion and brought it with him.

	B_GiveInvItems	(self, hero, ItPo_Piratentrank, 1);

	Info_ClearChoices	(Info_Mod_Greg_Schatzaufteilung);
};

FUNC VOID Info_Mod_Greg_Schatzaufteilung_Gold ()
{
	AI_Output(hero, self, "Info_Mod_Greg_Schatzaufteilung_Gold_15_00"); //I'll take the gold.
	AI_Output(self, hero, "Info_Mod_Greg_Schatzaufteilung_Gold_01_01"); //All right, here's your gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, 10000);

	Info_ClearChoices	(Info_Mod_Greg_Schatzaufteilung);
};

INSTANCE Info_Mod_Greg_Befreiung (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Befreiung_Condition;
	information	= Info_Mod_Greg_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need to talk to you.";
};

FUNC INT Info_Mod_Greg_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_AW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung_15_00"); //I need to talk to you.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung_01_01"); //What do you want from me? Can't you see I want to stay undisturbed?
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung_15_02"); //It doesn't matter now, damn it!
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung_01_03"); //What do you think you're doing, you bum!
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung_15_04"); //More important now is to stop the guard Innos' first, before everything is going down the drain!
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung_01_05"); //(sighs) All right. What's up?
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung_15_06"); //Myxir told me that you have plans to free Jharkendar from all this evil.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung_01_07"); //So, did he? Well, let me tell you something first. Before we can even think of doing anything, we have to make sure that everything gets right!
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung_15_08"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung_01_09"); //Take a look around you. All sorts of things have happened since we were attacked by the zombies. We have to make preparations first!
};

INSTANCE Info_Mod_Greg_Befreiung2 (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Befreiung2_Condition;
	information	= Info_Mod_Greg_Befreiung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "What can I do?";
};

FUNC INT Info_Mod_Greg_Befreiung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Befreiung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Befreiung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung2_15_00"); //What can I do?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung2_01_01"); //You should go to all my boys and see if you can help them with their problems, because we have nothing else to report.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung2_01_02"); //Help at least eight of them.
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung2_15_03"); //What's in it for me?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung2_01_04"); //This can't be happening! You want payment for helping us?
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung2_15_05"); //(sighs) Well, then I' ll...
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung2_01_06"); //(hasty) Okay, okay! You get 500 gold coins after you do that. Agreed?
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung2_15_07"); //Okay.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung2_01_08"); //Then get to work!

	Log_CreateTopic	(TOPIC_MOD_BEL_PIRATENLAGER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRATENLAGER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_PIRATENLAGER, "Before the liberation operation of the pirates can start, the camp has to be brought back into shape. Greg wants me to help at least eight of his people.");
};

INSTANCE Info_Mod_Greg_Befreiung3 (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Befreiung3_Condition;
	information	= Info_Mod_Greg_Befreiung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I executed the order and got the camp going again.";
};

FUNC INT Info_Mod_Greg_Befreiung3_Condition()
{
	if (Mod_Piratenbefreiung == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Befreiung3_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung3_15_00"); //I executed the order and got the camp going again.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_01"); //Very good, boy. Then maybe one day we'll be able to have an outbreak after all.
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung3_15_02"); //What about my gold?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_03"); //Ohh, yeah... All right, here's your 500 gold coins.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_04"); //I should have offered him less.
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung3_15_05"); //So how do we proceed? Open the closed palisades and kick the invaders' butts?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_06"); //Well, uh, ne, mei young, it's hardly going to be that simple.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_07"); //The guys we're dealing with here are from a very bad shot.
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung3_15_08"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_09"); //Well, I'm talking about the three undead high priests in front of the palisade.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_10"); //The bastards are standing around some magical thing that protects them and gives them incredible magic power.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_11"); //The black magician who brought you here has tried to teleport himself several times, but has failed every attempt.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_12"); //He even has to send an undead servant to request assistance.
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_13"); //The three bastards had teleported to him in no time at all and made him all.
	AI_Output(hero, self, "Info_Mod_Greg_Befreiung3_15_14"); //Then what can we do?
	AI_Output(self, hero, "Info_Mod_Greg_Befreiung3_01_15"); //I don't know yet. There should be a way to get the three of them up close and personal to this magical thing. A distraction...

	AI_Teleport	(Mod_939_PIR_Owen_AW,	"WP_BLA_PIR_01");
	B_StartOtherRoutine	(Mod_939_PIR_Owen_AW, "GREG");

	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRATENLAGER, LOG_SUCCESS);
	B_LogEntry	(TOPIC_MOD_BEL_BEFREIUNG, "In front of the camp there are three undead high priests around a magical artifact that protects them and gives them great power. They can quickly catch up with every fugitive using teleportation and  also prevent the use of teleport magic in the warehouse.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PLAUDERN");
};

INSTANCE Info_Mod_Greg_ArtefaktAttacke (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_ArtefaktAttacke_Condition;
	information	= Info_Mod_Greg_ArtefaktAttacke_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_ArtefaktAttacke_Condition()
{
	if (Mod_BEL_GregOwen == 2)
	&& (Npc_GetDistToWP(self, "ADW_PIRATECAMP_WAY_02") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_ArtefaktAttacke_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_ArtefaktAttacke_01_00"); //Come on, men, this is a good time.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_1079_PIR_PIRAT_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_1078_PIR_PIRAT_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_1077_PIR_PIRAT_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_963_PIR_Malcom_NW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_941_PIR_Angus_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_942_PIR_Hank_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_939_PIR_Owen_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_940_PIR_Samuel_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_936_PIR_Matt_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_938_PIR_Morgan_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_1080_PIR_PIRAT_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_935_PIR_Malcom_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_933_PIR_Garett_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_934_PIR_Henry_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_932_PIR_Francis_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_930_PIR_Bones_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_931_PIR_Brandon_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_775_PIR_Skip_AW, "ARTEFAKT");
	B_StartOtherRoutine	(Mod_929_PIR_Bill_AW, "ARTEFAKT");
};

INSTANCE Info_Mod_Greg_ArtefaktTot (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_ArtefaktTot_Condition;
	information	= Info_Mod_Greg_ArtefaktTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_ArtefaktTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_ArtefaktAttacke))
	&& (Npc_GetDistToWP(self, "ADW_PIRATECAMP_WAY_06") < 1000)
	&& (Npc_IsDead(Mod_7300_Artefakt_AW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_ArtefaktTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_ArtefaktTot_01_00"); //Well, that's done. We would have dealt the undead bastards a severe blow.
	AI_Output(hero, self, "Info_Mod_Greg_ArtefaktTot_15_01"); //Yes, but the threat has not yet been averted. We have to kill the Orcs in the Canyon, in order to...
	AI_Output(self, hero, "Info_Mod_Greg_ArtefaktTot_01_02"); //... and leave the camp unprotected during that time? No, we'll hold the position here for a while and wait and see what evolves.
	AI_Output(self, hero, "Info_Mod_Greg_ArtefaktTot_01_03"); //Besides, we'll have to wait and see if Owen doesn't come back. We already lost a good man.
	AI_Output(self, hero, "Info_Mod_Greg_ArtefaktTot_01_04"); //As long as he's still alive, we'll wait for him here.
	AI_Output(hero, self, "Info_Mod_Greg_ArtefaktTot_15_05"); //But...
	AI_Output(self, hero, "Info_Mod_Greg_ArtefaktTot_01_06"); //No, min young, if you want to learn more languages, you have to do it on your own. See you around.

	B_SetTopicStatus	(TOPIC_MOD_BEL_BEFREIUNG, LOG_SUCCESS);

	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "The besiegers are destroyed. Now I can go to the library in the canyon to look for clues to the sword.");
	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "Unfortunately, the pirates won't be motivated to come along. Do I have to make my own way through again?");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1079_PIR_PIRAT_AW, "START");
	B_StartOtherRoutine	(Mod_1078_PIR_PIRAT_AW, "START");
	B_StartOtherRoutine	(Mod_1077_PIR_PIRAT_AW, "START");
	B_StartOtherRoutine	(Mod_963_PIR_Malcom_NW, "START");
	B_StartOtherRoutine	(Mod_941_PIR_Angus_AW, "START");
	B_StartOtherRoutine	(Mod_942_PIR_Hank_AW, "START");
	B_StartOtherRoutine	(Mod_939_PIR_Owen_AW, "START");
	B_StartOtherRoutine	(Mod_940_PIR_Samuel_AW, "START");
	B_StartOtherRoutine	(Mod_936_PIR_Matt_AW, "START");
	B_StartOtherRoutine	(Mod_938_PIR_Morgan_AW, "START");
	B_StartOtherRoutine	(Mod_1080_PIR_PIRAT_AW, "START");
	B_StartOtherRoutine	(Mod_935_PIR_Malcom_AW, "START");
	B_StartOtherRoutine	(Mod_933_PIR_Garett_AW, "START");
	B_StartOtherRoutine	(Mod_934_PIR_Henry_AW, "START");
	B_StartOtherRoutine	(Mod_932_PIR_Francis_AW, "START");
	B_StartOtherRoutine	(Mod_930_PIR_Bones_AW, "START");
	B_StartOtherRoutine	(Mod_931_PIR_Brandon_AW, "START");
	B_StartOtherRoutine	(Mod_775_PIR_Skip_AW, "START");
	B_StartOtherRoutine	(Mod_929_PIR_Bill_AW, "START");

	B_StartOtherRoutine	(GardeInnos_4099_Josephina, "BIB");

	CreateInvItems	(hero, ITKE_CANYONLIBRARY_HIERARCHY_BOOKS_ADDON, 1);
};

INSTANCE Info_Mod_Greg_Beerdigung (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Beerdigung_Condition;
	information	= Info_Mod_Greg_Beerdigung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_Beerdigung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Owen_Beerdigung))
	&& (Npc_HasItems(hero, ItMi_WaterOfLife) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Beerdigung_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_00"); //Ahh, boy, you're back too. You're just in time.
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_01"); //We have buried Alligator Jack with some of his belongings and say a sailor prayer for him.... after all we boys have been through together.
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_02"); //Well, losses of man and material will have to be experienced more often as a pirate....
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_03"); //I'm just wondering what happened to those bastards who caused all this.
	AI_Output(hero, self, "Info_Mod_Greg_Beerdigung_15_04"); //They have received their just punishment and will never again cause strife.
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_05"); //(surprised) Yeah?! Don't tell me... And I'm sure you have your share of it. That's worth a thousand gold coins to me, right here.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_06"); //Tjo, so his death shall receive at least vengeance... even if it cannot be undone....
	AI_Output(hero, self, "Info_Mod_Greg_Beerdigung_15_07"); //Hmm, I wouldn't be so sure...
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_08"); //How?! I really don't think this is the time for jokes.
	AI_Output(self, hero, "Info_Mod_Greg_Beerdigung_01_09"); //And we can't have undead in the camp either, if that's what you meant.
	AI_Output(hero, self, "Info_Mod_Greg_Beerdigung_15_10"); //No, look....

	B_SetTopicStatus	(TOPIC_MOD_BEL_INNOSSCHWERT, LOG_SUCCESS);

	Npc_RemoveInvItems	(hero, ItMi_WaterOfLife, 1);

	AI_GotoWP	(hero, "ADW_PIRATECAMP_TRAIN_01");
	AI_PlayAni	(hero, "T_PLUNDER");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Greg_AJAlive (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_AJAlive_Condition;
	information	= Info_Mod_Greg_AJAlive_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_AJAlive_Condition()
{
	if (Mod_BEL_AJ == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_AJAlive_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_AJAlive_01_00"); //Yo, potz thousand, there's the ray stabbing me...

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Greg_AJAlive2 (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_AJAlive2_Condition;
	information	= Info_Mod_Greg_AJAlive2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_AJAlive2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlligatorJack_Beerdigung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_AJAlive2_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_AJAlive2_01_00"); //Well, have a good sip of sailor's grog first. There's going to be a feast tonight.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Greg_AJAlive3 (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_AJAlive3_Condition;
	information	= Info_Mod_Greg_AJAlive3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_AJAlive3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bones_Beerdigung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_AJAlive3_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_AJAlive3_01_00"); //Well...

	AI_TurnToNpc	(self, Rabbit);

	B_GivePlayerXP	(2000);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Greg_AJAlive4 (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_AJAlive4_Condition;
	information	= Info_Mod_Greg_AJAlive4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_AJAlive4_Condition()
{
	if (Mod_BEL_AJ == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_AJAlive4_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_AJAlive4_01_00"); //Boy, you've done an awful lot for our camp. I can hardly outweigh my gold.
	AI_Output(self, hero, "Info_Mod_Greg_AJAlive4_01_01"); //That's why I want you to have my best piece: Blackbarts pirate hat. Wear it proudly.

	B_ShowGivenThings	("Get Blackbarts Pirate Hat");

	CreateInvItems	(hero, ItAr_Piratenhut, 1);

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Greg_AJAlive4_15_02"); //Great, that's an old ragged hat.

	B_GivePlayerXP	(2000);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Greg_Todesangst (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Todesangst_Condition;
	information	= Info_Mod_Greg_Todesangst_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_Todesangst_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Todesangst2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Todesangst_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_00"); //What are you doing? No stranger in the warehouse, I said.
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_01"); //Calm down, calm down! You know me, don't you? Besides, Jack guards me.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_02"); //All right, then. You already helped us. Why are you here?
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_03"); //First, I'd like to know what's wrong with you.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_04"); //What's the matter with me? I'm in danger of death! That's what's going on!
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_05"); //Did you poison yourself? I would know a good healer....
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_06"); //A strange old man came by here the other day.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_07"); //He can see into the future, he says, and has told me that I will soon be assassinated.
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_08"); //Ha ha ha ha. They say sailors are superstitious. Klabautermann and stuff. But something like that... By the way, that means prophesying.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_09"); //I just don't care. At least I believe him. Don't trust my own people no more.
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_10"); //This is bad. Maybe you should go to a monastery until the danger is over.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_11"); //Just stop it! There are the biggest hypocrites and assassins.
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_12"); //Too bad. I was going to suggest the business of your life.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_13"); //That would be? Just for interest...
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_14"); //I know a bunch of people, like 20 men who want to go to the mainland...
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_15"); //Are you out of your mind? 20 strangers near me! I can drown myself right now.
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_16"); //... the price of the crossing is irrelevant. You could ask for anything you want.
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_17"); //Sounds good to me. But no, even if I survive the voyage, there are the ships of the King's Loyalty, which cross off the coast and possibly still orcships. No. Totally impossible.
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_18"); //Too bad. I'll go and report back. Watch your back!
	AI_Output(self, hero, "Info_Mod_Greg_Todesangst_01_19"); //What do you mean?
	AI_Output(hero, self, "Info_Mod_Greg_Todesangst_15_20"); //No reason.

	B_GivePlayerXP	(300);

	B_StartOtherRoutine	(Mod_928_PIR_AlligatorJack_AW,	"START");

	B_SetTopicStatus	(TOPIC_MOD_ASS_TODESANGST, LOG_SUCCESS);

	B_LogEntry	(TOPIC_MOD_ASS_HEIMWEH, "Incredible! The captain actually believes the sayings of a rag walked by. Tell fortune tellers I'm not laughing! It can only be the hermit from the valley. I wonder what it was for. Anyway, I have to report. It won't please the council...");
};

INSTANCE Info_Mod_Greg_Sumpfmensch (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Sumpfmensch_Condition;
	information	= Info_Mod_Greg_Sumpfmensch_Info;
	permanent	= 0;
	important	= 0;
	description	= "I wanted to ask you about a former pirate.";
};

FUNC INT Info_Mod_Greg_Sumpfmensch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fortuno_Sumpfmensch2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Sumpfmensch_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Sumpfmensch_15_00"); //I wanted to ask you about a former pirate.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_01"); //Former pirate? There's no such thing! Once a pirate, always a pirate, that's the motto!
	AI_Output(hero, self, "Info_Mod_Greg_Sumpfmensch_15_02"); //It's Darrion.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_03"); //WAS?! That son of a mangy bitch? Don't tell me that old bastard's still alive!
	AI_Output(hero, self, "Info_Mod_Greg_Sumpfmensch_15_04"); //He has meanwhile joined a swamp community and until recently led a quiet life there.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_05"); //So he retired? That I may live to see that.
	AI_Output(hero, self, "Info_Mod_Greg_Sumpfmensch_15_06"); //He hasn't had it that quiet lately. He's been messing with a swamp monster lately, and that didn't end well for him. He won't wake up that fast.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_07"); //What did you say? A monster that can take on old Darrion? Is there a goddamn dragon in that swamp or what?
	AI_Output(hero, self, "Info_Mod_Greg_Sumpfmensch_15_08"); //Whatever it is, it's dangerous. And I think Darrion knows more about the monster than he wanted to say. Can you make sense of that?
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_09"); //I'm sorry, min young, but I've always stayed out of his business.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_10"); //Darrion and I were the two Enter squad leaders under our previous captain. When he appointed me as his successor, Darrion came to us only sporadically.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_11"); //He spent most of his time near the old tower near the camp. Just stopped by once in a while to do something and occasionally drink the newcomers under the table!
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_12"); //Why don't you go talk to Skip? He might have some info for you.
	AI_Output(hero, self, "Info_Mod_Greg_Sumpfmensch_15_13"); //All right, I will. Thanks.
	AI_Output(self, hero, "Info_Mod_Greg_Sumpfmensch_01_14"); //Not a thing, min young!

	B_LogEntry	(TOPIC_MOD_SL_SUMPFMENSCH, "Greg said that Darrion spent a lot of time at the old tower near the pirate camp. Skip may have some more information for me.");
};

INSTANCE Info_Mod_Greg_Steg (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Steg_Condition;
	information	= Info_Mod_Greg_Steg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where's that jetty over there?";
};

FUNC INT Info_Mod_Greg_Steg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Aufnahme))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_Steg_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_Steg_15_00"); //Where's that jetty over there?
	AI_Output(self, hero, "Info_Mod_Greg_Steg_01_01"); //To one of our backup camps. If an overpowering enemy attacks from the sea.
};

INSTANCE Info_Mod_Greg_Pickpocket (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_Pickpocket_Condition;
	information	= Info_Mod_Greg_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Greg_Pickpocket_Condition()
{
	C_Beklauen	(150, ItFo_Addon_Rum, 7);
};

FUNC VOID Info_Mod_Greg_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Greg_Pickpocket);

	Info_AddChoice	(Info_Mod_Greg_Pickpocket, DIALOG_BACK, Info_Mod_Greg_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Greg_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Greg_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Greg_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Greg_Pickpocket);
};

FUNC VOID Info_Mod_Greg_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Greg_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Greg_Pickpocket);

		Info_AddChoice	(Info_Mod_Greg_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Greg_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Greg_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Greg_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Greg_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Greg_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Greg_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Greg_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Greg_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Greg_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Greg_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Greg_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Greg_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Greg_EXIT (C_INFO)
{
	npc		= Mod_764_PIR_Greg_AW;
	nr		= 1;
	condition	= Info_Mod_Greg_EXIT_Condition;
	information	= Info_Mod_Greg_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Greg_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Greg_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
