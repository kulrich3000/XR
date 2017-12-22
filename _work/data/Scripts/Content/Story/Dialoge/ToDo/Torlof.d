INSTANCE Info_Mod_Torlof_Hi (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Hi_Condition;
	information	= Info_Mod_Torlof_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Torlof_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torlof_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Torlof_Hi_01_01"); //You're still alive.
	AI_Output(self, hero, "Info_Mod_Torlof_Hi_01_02"); //Didn't think I'd see you again.
};

INSTANCE Info_Mod_Torlof_Auftrag (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Auftrag_Condition;
	information	= Info_Mod_Torlof_Auftrag_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lares sent me.";
};

FUNC INT Info_Mod_Torlof_Auftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_WillSoeldner))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torlof_Hi))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Auftrag_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Auftrag_15_00"); //Lares sends me. I want you to give me a job.
	AI_Output(self, hero, "Info_Mod_Torlof_Auftrag_01_01"); //Okay. As you know, the Paladins betrayed our leader Lee back then. That's why he was thrown into the barrier.
	AI_OUtput(self, hero, "Info_Mod_Torlof_Auftrag_01_02"); //So it's no wonder we're rebelling against the paladins.
	AI_Output(self, hero, "Info_Mod_Torlof_Auftrag_01_03"); //We need something we can use to put pressure on them. But the Paladins know us, but you're new here.
	AI_Output(self, hero, "Info_Mod_Torlof_Auftrag_01_04"); //Go into town and find out what we could do about the paladins.
	AI_Output(self, hero, "Info_Mod_Torlof_Auftrag_01_05"); //You need to get something or find out how we can squeeze the paladins in the city.
	AI_Output(hero, self, "Info_Mod_Torlof_Auftrag_15_06"); //And how should I proceed?
	AI_Output(self, hero, "Info_Mod_Torlof_Auftrag_01_07"); //You'll think of something. If you don't know what to do, ask Gorn, who you remember from the times of the colony. He has his contacts in town.

	Log_CreateTopic	(TOPIC_MOD_TORLOFSPIONAGE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TORLOFSPIONAGE, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_SÖLDNER, TOPIC_MOD_TORLOFSPIONAGE, "As proof of my loyalty to Lee, I'm here to spy on the Paladins.", "Torlof wants me to find out or procure something that can be used against the paladins. Maybe Gorn can give me some tips.");
};

INSTANCE Info_Mod_Torlof_Kristall (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Kristall_Condition;
	information	= Info_Mod_Torlof_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the Paladin crystal here.";
};

FUNC INT Info_Mod_Torlof_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Auftrag))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Dieb))
	&& (Npc_HasItems(hero, Mod_PaladinKristall) >= 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Kristall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Kristall_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Kristall_15_00"); //I have the Paladin crystal here.

	B_GiveInvItems	(hero, self, Mod_PaladinKristall, 1);
	
	AI_Output(self, hero, "Info_Mod_Torlof_Kristall_01_01"); //A magic crystal. I have to discuss this with Lares first. Come back in a few hours.


	B_LogEntry	(TOPIC_MOD_TORLOFSPIONAGE, "I learned from Gorn that Paladin Lothar has a weakness for alcohol and a big mouth in the upper quarter.");
	B_SetTopicStatus	(TOPIC_MOD_TORLOFSPIONAGE, LOG_SUCCESS);
	
	B_GivePlayerXP	(400);

	Npc_SetRefuseTalk(self, 120);
};

INSTANCE Info_Mod_Torlof_KristallEnd (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_KristallEnd_Condition;
	information	= Info_Mod_Torlof_KristallEnd_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torlof_KristallEnd_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Kristall))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_KristallEnd_Info()
{
	AI_Output(self, hero, "Info_Mod_Torlof_KristallEnd_01_00"); //Oh, there you are. Well, we really can't really do anything with the crystal in the paladins.
	AI_Output(self, hero, "Info_Mod_Torlof_KristallEnd_01_01"); //We could sell it back for a few coins at the most. But we have a strategically better idea.
	AI_Output(self, hero, "Info_Mod_Torlof_KristallEnd_01_02"); //If you really want to join us, you have to bring the crystal and this letter to the water magicians at their excavation site.

	CreateInvItems	(hero, Mod_PaladinKristall, 1);
	CreateInvItems	(hero, ItWr_TorlofForSaturas, 1);

	Npc_RemoveInvItems	(self, Mod_PaladinKristall, 1);

	B_ShowGivenThings	("Crystal of fire and message received");

	AI_Output(self, hero, "Info_Mod_Torlof_Kristall_01_03"); //Then you come back to us with the fee.

	Log_CreateTopic	(TOPIC_MOD_NL_KRISTALL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_KRISTALL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_KRISTALL, "Torlof told me to bring the crystal of the fire along with a letter to the Water Magicians. I should take the payment to him.");
	
	Wld_InsertNpc	(Mod_7214_OUT_Halunke_NW, "PORTAL");
};

INSTANCE Info_Mod_Torlof_KristallEntgelt (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_KristallEntgelt_Condition;
	information	= Info_Mod_Torlof_KristallEntgelt_Info;
	permanent	= 0;
	important	= 0;
	description	= "I handed over the crystal.";
};

FUNC INT Info_Mod_Torlof_KristallEntgelt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lance_KristallEntgelt))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	&& (Npc_HasItems(hero, ItMi_MagicPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_KristallEntgelt_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_KristallEntgelt_15_00"); //I handed over the crystal and received 1000 pieces of gold and this package.

	B_ShowGivenThings	("1000 Gold and package given");

	Npc_RemoveInvItems	(hero, ItMi_Gold, 1000);
	Npc_RemoveInvItems	(hero, ItMi_MagicPaket, 1);

	AI_Output(self, hero, "Info_Mod_Torlof_KristallEntgelt_01_01"); //Excellent. Now nothing stands in the way of your recording. Why don't you go straight to Lares.

	B_SetTopicStatus	(TOPIC_MOD_NL_KRISTALL, LOG_SUCCESS);

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_SÖLDNER, "Torlof thinks I can be a mercenary now.");

	B_Göttergefallen(2, 3);
};

INSTANCE Info_Mod_Torlof_NeueAufgabe (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_NeueAufgabe_Condition;
	information	= Info_Mod_Torlof_NeueAufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have another job for me?";
};

FUNC INT Info_Mod_Torlof_NeueAufgabe_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Andre_Kristall))
	|| (Npc_KnowsInfo(hero, Info_Mod_Vatras_Kristall))
	|| (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Kristall)))
	&& (Mod_Gilde	==	0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Torlof_Auftrag))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_NeueAufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_NeueAufgabe_15_00"); //Do you have another job for me?
	AI_Output(self, hero, "Info_Mod_Torlof_NeueAufgabe_01_01"); //You failed your first test. But we don't want to be like this, you get a second chance.
	AI_Output(hero, self, "Info_Mod_Torlof_NeueAufgabe_15_02"); //What am I supposed to do?
	AI_Output(self, hero, "Info_Mod_Torlof_NeueAufgabe_01_03"); //Bring us another mercenary candidate.

	Wld_InsertNpc	(Mod_200_NONE_Alvares_NW,	"NW_CITY_ENTRANCE_01");

	B_SetTopicStatus	(TOPIC_MOD_TORLOFSPIONAGE, LOG_FAILED);
	
	Log_CreateTopic	(TOPIC_MOD_TORLOF_NEUERANWÄRTER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TORLOF_NEUERANWÄRTER, LOG_RUNNING);
	
	B_LogEntry_More	(TOPIC_MOD_SÖLDNER, TOPIC_MOD_TORLOF_NEUERANWÄRTER, "I'm to take a new mercenary candidate to Torlof.", "Torlof told me to find a mercenary candidate. Maybe Gorn can give me a hint.");
};

INSTANCE Info_Mod_Torlof_Alvares (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Alvares_Condition;
	information	= Info_Mod_Torlof_Alvares_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a new candidate for you.";
};

FUNC INT Info_Mod_Torlof_Alvares_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alvares_Hof))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Alvares_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Alvares_15_00"); //I have a new candidate for you.
	AI_Output(self, hero, "Info_Mod_Torlof_Alvares_01_01"); //Who?
	AI_Output(hero, self, "Info_Mod_Torlof_Alvares_15_02"); //Alvares. He fought with a militia and I had to get him out of jail.
	AI_Output(self, hero, "Info_Mod_Torlof_Alvares_01_03"); //Very good. Very good. You passed the test. Now you can join us.

	B_LogEntry_More	(TOPIC_MOD_SÖLDNER, TOPIC_MOD_TORLOF_NEUERANWÄRTER, "I passed the exam", "I can become a mercenary now.");
	B_SetTopicStatus	(TOPIC_MOD_TORLOF_NEUERANWÄRTER, LOG_SUCCESS);

	B_GivePlayerXP	(300);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Torlof_Hexen (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Hexen_Condition;
	information	= Info_Mod_Torlof_Hexen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torlof_Hexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Hi))
	&& (Mod_WM_Beeinflussend == 1)
	&& (Mod_TrfWoman == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Hexen_Info()
{
	AI_Output(self, hero, "Info_Mod_Torlof_Hexen_01_00"); //Hi, kiddo. Want to have some fun with each other? You want to look like you.
	AI_Output(hero, self, "Info_Mod_Torlof_Hexen_15_01"); //Gladly.
	AI_Output(self, hero, "Info_Mod_Torlof_Hexen_01_02"); //What, really?! Let's go to the room.
	AI_Output(hero, self, "Info_Mod_Torlof_Hexen_15_03"); //Sure. There's only one problem...
	AI_Output(self, hero, "Info_Mod_Torlof_Hexen_01_04"); //Oh, don't be shy. What problem?

	Mod_WM_Beeinflussend = 0;

	Info_ClearChoices	(Info_Mod_Torlof_Hexen);

	Info_AddChoice	(Info_Mod_Torlof_Hexen, "You're on fire. Quickly.", Info_Mod_Torlof_Hexen_B);
	Info_AddChoice	(Info_Mod_Torlof_Hexen, "There's a lot of goblins standing around in the yard threatening me.", Info_Mod_Torlof_Hexen_A);
};

FUNC VOID Info_Mod_Torlof_Hexen_B()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Hexen_B_15_00"); //You're on fire. Quickly, get rid of your clothes and run around the yard to extinguish the flames.
	AI_Output(self, hero, "Info_Mod_Torlof_Hexen_B_01_01"); //What?! Wuahh, actually, this heat this pain.

	AI_UnequipArmor	(self);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "So, after I turn Torlof in to the madness, I can tell Elena about it.");

	Info_ClearChoices	(Info_Mod_Torlof_Hexen);

	AI_StopProcessInfos	(self);

	AI_StartState	(self, ZS_Flee, 0, "");
};

FUNC VOID Info_Mod_Torlof_Hexen_A()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Hexen_A_15_00"); //There's a lot of goblins standing around in the yard threatening me. Get them done, then we can get to the point.
	AI_Output(self, hero, "Info_Mod_Torlof_Hexen_A_01_01"); //What goblins?! Yeah, actually, now I see her too.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "So, after I turn Torlof in to the madness, I can tell Elena about it.");

	Info_ClearChoices	(Info_Mod_Torlof_Hexen);

	AI_StopProcessInfos	(self);

	B_Attack	(self, Mod_798_SLD_Wolf_NW, AR_None, 0);
};

INSTANCE Info_Mod_Torlof_Grog (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Grog_Condition;
	information	= Info_Mod_Torlof_Grog_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got something for you.";
};

FUNC INT Info_Mod_Torlof_Grog_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Skip_Francis))
	&& (Npc_HasItems(hero, Mod_GrogPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Grog_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Grog_15_00"); //I got something for you.
	AI_Output(self, hero, "Info_Mod_Torlof_Grog_01_01"); //What do you mean?
	AI_Output(hero, self, "Info_Mod_Torlof_Grog_15_02"); //Package of grog.

	B_GiveInvItems	(hero, self, Mod_GrogPaket, 1);

	AI_Output(self, hero, "Info_Mod_Torlof_Grog_01_03"); //It's about time. Finally we have something to drink here again.
	AI_Output(self, hero, "Info_Mod_Torlof_Grog_01_04"); //Here's your gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);
};

INSTANCE Info_Mod_Torlof_HaradLehrling (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling_Condition;
	information	= Info_Mod_Torlof_HaradLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Harad sent me to make you an offer.";
};

FUNC INT Info_Mod_Torlof_HaradLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Job))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling_15_00"); //Harad sent me to make you an offer.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling_01_01"); //Harad? We've got Bennet. He makes everything we need.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling_01_02"); //Besides, Harad's supposed to be quite an asshole. Why should we care about his offer?
};

INSTANCE Info_Mod_Torlof_HaradLehrling2 (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling2_Condition;
	information	= Info_Mod_Torlof_HaradLehrling2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Look at that sword.";
};

FUNC INT Info_Mod_Torlof_HaradLehrling2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling))
	&& (Npc_HasItems(hero, ItMw_HaradSchwert) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling2_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling2_15_00"); //Look at that sword.

	B_GiveInvItems	(hero, self, ItMw_HaradSchwert, 1);

	EquipWeapon (self, ItMw_HaradSchwert);

	AI_DrawWeapon	(self);

	AI_PlayAni	(self, "T_1HSINSPECT");

	AI_RemoveWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling2_01_01"); //Really not bad. But I'm not an expert on swords and I can't judge whether it's better than Bennet's swords.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling2_01_02"); //How about you compete with Hock?
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling2_01_03"); //He should be about your collar size, and I could see how the weapon behaves in battle.
};

INSTANCE Info_Mod_Torlof_HaradLehrling3 (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling3_Condition;
	information	= Info_Mod_Torlof_HaradLehrling3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Of course you do.";
};

FUNC INT Info_Mod_Torlof_HaradLehrling3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling3_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling3_15_00"); //Of course you do.

	AI_TurnToNpc	(self, Mod_1200_SLD_Soeldner_NW);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling3_01_01"); //Hock, come here!

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling3_01_02"); //You two pretty girls are gonna have a practice fight now.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling3_01_03"); //Take the sword and show me what you got.

	B_GiveInvItems	(self, hero, ItMw_HaradSchwert, 1);

	EquipWeapon (hero, ItMw_HaradSchwert);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling3_01_04"); //3,2,1, go!

	AI_StopProcessInfos	(self);

	AI_Teleport	(Mod_1200_SLD_Soeldner_NW, "NW_BIGFARM_PATH_01");
	B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "HARAD");

	Mod_1200_SLD_Soeldner_NW.flags = 0;
};

INSTANCE Info_Mod_Torlof_HaradLehrling4 (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling4_Condition;
	information	= Info_Mod_Torlof_HaradLehrling4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torlof_HaradLehrling4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hock_HaradLehrling))
	&& (!Npc_IsInState(Mod_1200_SLD_Soeldner_NW, ZS_Attack))
	&& (!Npc_IsInState(Mod_1200_SLD_Soeldner_NW, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling4_Info()
{
	if (Mod_HaradLehrling_Kampf == 0)
	{
		AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling4_01_00"); //Looks reasonable. Light, fast and well balanced.
		AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling4_01_01"); //Tell Harad we'd be willing to take a sample delivery from him.

		B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_ONE, "I convinced Torlof to order a shipment from Harad. I should deliver the message as soon as possible.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling4_01_02"); //(laughs extensively) Do you think I can't see when you change the gun?
		AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling4_01_03"); //That was the worst prank I've ever seen!
		AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling4_15_04"); //Do you still want to buy the guns from Harad?
		AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling4_01_05"); //You got a lot of nerve! Get back to him!
	};

	B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "START");

	Mod_1200_SLD_Soeldner_NW.flags = 2;
};

INSTANCE Info_Mod_Torlof_HaradLehrling5 (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling5_Condition;
	information	= Info_Mod_Torlof_HaradLehrling5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Weapons delivery from Harad.";
};

FUNC INT Info_Mod_Torlof_HaradLehrling5_Condition()
{
	if (Npc_HasItems(hero, ItMi_Waffenbuendel) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling5_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling5_15_00"); //Weapons delivery from Harad.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_01"); //It's about time. We've been waiting for this for days.
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling5_15_02"); //The Paladins didn't approve of Harad working for you.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_03"); //I understand that very well. But the sly one made it, after all.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_04"); //Let's have a look.

	B_GiveInvItems	(hero, self, ItMi_Waffenbuendel, 1);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_05"); //(counts muttering) 5,10,15,17.... Just 17 swords? We ordered 20.
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling5_15_06"); //Are you sure about this?
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_07"); //Yeah. 20 swords with 100 gold coins each. Clear bill.
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling5_15_08"); //Then you give me the gold, and I'll tell Harad to make three more swords.
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_09"); //That's not how it works. We only pay for what we get.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1700);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling5_01_10"); //If Harad wants more, let him deliver quickly, otherwise we might change our minds.

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_TWO, "Torlof claims that he didn't get enough of three swords from Harad, so he didn't give me as much gold as Harad wanted.");
};

INSTANCE Info_Mod_Torlof_HaradLehrling6 (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling6_Condition;
	information	= Info_Mod_Torlof_HaradLehrling6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here are the missing swords.";
};

FUNC INT Info_Mod_Torlof_HaradLehrling6_Condition()
{
	if ((Npc_HasItems(hero, ItMw_1H_Common_01_BonusMeisterschmied) >= 3)
	|| (Npc_HasItems(hero, ItMw_1H_Common_01_Meisterschmied) >= 3)
	|| (Npc_HasItems(hero, ItMw_1H_Common_01_Bonus) >= 3)
	|| (Npc_HasItems(hero, ItMw_1H_Common_01) >= 3))
	&& (Schaerfen_Perk == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling6_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling6_15_00"); //Here are the missing swords.

	if (Npc_HasItems(hero, ItMw_1H_Common_01) >= 3) {
		B_GiveInvItems	(hero, self, ItMw_1H_Common_01, 3);
	} else if (Npc_HasItems(hero, ItMw_1H_Common_01_Bonus) >= 3) {
		B_GiveInvItems	(hero, self, ItMw_1H_Common_01_Bonus, 3);
	} else if (Npc_HasItems(hero, ItMw_1H_Common_01_Meisterschmied) >= 3) {
		B_GiveInvItems	(hero, self, ItMw_1H_Common_01_Meisterschmied, 3);
	} else if (Npc_HasItems(hero, ItMw_1H_Common_01_BonusMeisterschmied) >= 3) {
		B_GiveInvItems	(hero, self, ItMw_1H_Common_01_BonusMeisterschmied, 3);
	};

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling6_01_01"); //You and your master always take a long time. But you can't complain about the quality.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling6_01_02"); //I just hope you'll hurry up on your next assignment.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_SUCCESS);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Torlof_HaradLehrling7 (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_HaradLehrling7_Condition;
	information	= Info_Mod_Torlof_HaradLehrling7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can I offer you my services as a blacksmith?";
};

FUNC INT Info_Mod_Torlof_HaradLehrling7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest9))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_HaradLehrling7_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_HaradLehrling7_15_00"); //Can I offer you my services as a blacksmith?
	AI_Output(self, hero, "Info_Mod_Torlof_HaradLehrling7_01_01"); //No, thank you. After the difficulties we had with Harad, we prefer to stay with Bennet. Sorry about that.
};

INSTANCE Info_Mod_Torlof_Lehrer (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Lehrer_Condition;
	information	= Info_Mod_Torlof_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Torlof_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Hi))
	&& ((Mod_Gilde == 4)
	|| (Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Torlof_Lehrer_01_01"); //I can help you get stronger.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, "Torlof can help me become stronger.");
};

INSTANCE Info_Mod_Torlof_Lernen (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Lernen_Condition;
	information	= Info_Mod_Torlof_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me something.";
};

FUNC INT Info_Mod_Torlof_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Lehrer))
	&& ((Mod_Gilde == 4)
	|| (Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torlof_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Torlof_Lernen_15_00"); //Teach me something.
	AI_Output(self, hero, "Info_Mod_Torlof_Lernen_01_01"); //What do you want to learn?

	Info_ClearChoices	(Info_Mod_Torlof_Lernen);

	Info_AddChoice 		(Info_Mod_Torlof_Lernen, DIALOG_BACK, Info_Mod_Torlof_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Torlof_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Torlof_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Torlof_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Torlof_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Torlof_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Torlof_Lernen);
};

FUNC VOID Info_Mod_Torlof_Lernen_Staerke_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_STRENGTH, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Torlof_Lernen);

	Info_AddChoice 		(Info_Mod_Torlof_Lernen, DIALOG_BACK, Info_Mod_Torlof_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Torlof_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Torlof_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Torlof_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Torlof_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Torlof_Lernen_Staerke_1()
{
	B_TeachAttributePoints (self, hero, ATR_STRENGTH, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Torlof_Lernen);

	Info_AddChoice 		(Info_Mod_Torlof_Lernen, DIALOG_BACK, Info_Mod_Torlof_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Torlof_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Torlof_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Torlof_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Torlof_Lernen_Staerke_1);
};

INSTANCE Info_Mod_Torlof_Pickpocket (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_Pickpocket_Condition;
	information	= Info_Mod_Torlof_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Torlof_Pickpocket_Condition()
{
	C_Beklauen	(130, ItMi_Gold, 69);
};

FUNC VOID Info_Mod_Torlof_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);

	Info_AddChoice	(Info_Mod_Torlof_Pickpocket, DIALOG_BACK, Info_Mod_Torlof_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Torlof_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Torlof_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Torlof_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);
};

FUNC VOID Info_Mod_Torlof_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);

		Info_AddChoice	(Info_Mod_Torlof_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Torlof_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Torlof_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Torlof_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Torlof_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Torlof_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Torlof_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Torlof_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Torlof_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Torlof_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Torlof_EXIT (C_INFO)
{
	npc		= Mod_527_SLD_Torlof_NW;
	nr		= 1;
	condition	= Info_Mod_Torlof_EXIT_Condition;
	information	= Info_Mod_Torlof_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torlof_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torlof_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
