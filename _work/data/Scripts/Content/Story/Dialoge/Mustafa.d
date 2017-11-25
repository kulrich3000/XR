INSTANCE Info_Mod_Mustafa_Hi (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Hi_Condition;
	information	= Info_Mod_Mustafa_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here, the blood cup.";
};

FUNC INT Info_Mod_Mustafa_Hi_Condition()
{
	if (Npc_HasItems(hero, ItMi_Bloodcup_Richter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Mustafa_Hi_15_00"); //Here, the blood cup.
	AI_Output(self, hero, "Info_Mod_Mustafa_Hi_13_01"); //Outstanding. Give it to Na' im.
};

INSTANCE Info_Mod_Mustafa_PosWechsel (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_PosWechsel_Condition;
	information	= Info_Mod_Mustafa_PosWechsel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Good day, High Council. You want to see me.";
};

FUNC INT Info_Mod_Mustafa_PosWechsel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zahit_PosWechsel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_PosWechsel_Info()
{
	AI_Output(hero, self, "Info_Mod_Mustafa_PosWechsel_15_00"); //Good day, High Council. You want to see me.
	AI_Output(self, hero, "Info_Mod_Mustafa_PosWechsel_13_01"); //It's the rumor about the third blood cup. One of the dealers is said to have offered it.
	AI_Output(hero, self, "Info_Mod_Mustafa_PosWechsel_15_02"); //Well, there are a lot of dealers. Who exactly has the calyx?
	AI_Output(self, hero, "Info_Mod_Mustafa_PosWechsel_13_03"); //How should I know? Find the cup and bring it to us. And don't forget that the owner has to die.
	AI_Output(hero, self, "Info_Mod_Mustafa_PosWechsel_15_04"); //Always at your service, High Council.
	AI_Output(self, hero, "Info_Mod_Mustafa_PosWechsel_13_05"); //Spute yourself then.

	Log_CreateTopic	(TOPIC_MOD_ASS_LASTBLUTKELCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_LASTBLUTKELCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "One of the merchants shall take a 3rd place. blood calyx. I have to get it and take it to Mustafa's. Maybe I'll find it in town. Start at the marketplace...");
};

INSTANCE Info_Mod_Mustafa_Blutkelch (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Blutkelch_Condition;
	information	= Info_Mod_Mustafa_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi, Council. Did you get the third blood cup yet?";
};

FUNC INT Info_Mod_Mustafa_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Azhar_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_00"); //Hi, Council. Did you get the third blood cup yet?
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_01"); //No. But I'm waiting urgently. Why do you ask?
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_02"); //I haven't been able to locate the goblet yet.
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_03"); //Can I ask you something?
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_04"); //Certainly.
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_05"); //What are these three goblets good for?
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_06"); //You'll find out when we all get together.
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_07"); //What about the ceremonial dagger you're supposed to get?
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_08"); //That's work in progress, too. I found out that the dagger is somewhere in Jharkendar. Just don't know where yet.
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_09"); //Jharkendar? Where's that?
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_10"); //A remote area on the island that can only be reached by boat or the portal of the water magicians.
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_11"); //Interesting. You'll have to tell me more about that later. Now finish your assignments first.
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_12"); //But the dagger is more important to me. Bring him to me and you'll be a warrior.
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_13"); //I'm trying, good advice.

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "The calyx has disappeared. Looks like someone's cooking their own soup. Won't be easy to figure out what's going on.");
};

INSTANCE Info_Mod_Mustafa_Zeremoniendolch (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Zeremoniendolch_Condition;
	information	= Info_Mod_Mustafa_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mustafa_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Amir_Zeremoniendolch3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Zeremoniendolch_Info()
{
	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch_13_00"); //Oh, there you are. Did you...? Step aside a little bit.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATKAMAL");
	B_StartOtherRoutine	(Mod_7163_ASS_Kamal_NW, "PLAUDERN");
};

INSTANCE Info_Mod_Mustafa_Zeremoniendolch2 (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Zeremoniendolch2_Condition;
	information	= Info_Mod_Mustafa_Zeremoniendolch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mustafa_Zeremoniendolch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_Zeremoniendolch))
	&& (Npc_GetDistToWP(self, "WP_ASSASSINE_53") < 250)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Zeremoniendolch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_00"); //Do you have the ceremonial dagger?
	AI_Output(hero, self, "Info_Mod_Mustafa_Zeremoniendolch2_15_01"); //It was difficult, but I got him.
	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_02"); //Let me see that.

	B_GiveInvItems	(hero, self, ItMw_Avaquar, 1);

	AI_UnequipWeapons	(self);

	Npc_RemoveInvItems	(self, ItMw_Katana, 1);

	AI_EquipBestMeleeWeapon	(self);

	AI_ReadyMeleeWeapon	(self);

	AI_PlayAni	(self, "T_1HINSPECT");

	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_03"); //That seems to be him, actually. That's a good thing. Look, you keep the dagger for now.

	AI_UnequipWeapons	(self);

	B_GiveInvItems	(self, hero, ItMw_Avaquar, 1);

	CreateInvItems	(self, ItMw_Katana, 1);

	AI_EquipBestMeleeWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_04"); //You'll probably still need it. But to no one a word about it!
	AI_Output(hero, self, "Info_Mod_Mustafa_Zeremoniendolch2_15_05"); //Understood. You wanted to make me a warrior.
	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_06"); //That's the truth. I hereby appoint you Assassin Warrior and give you the warrior equipment.

	CreateInvItems	(hero, ItAr_Assassine_01, 1);

	B_ShowGivenThings	("Assassin armor received");

	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_07"); //And congratulations for your swift ascent in our caste. I wish we had more of your caliber.
	AI_Output(hero, self, "Info_Mod_Mustafa_Zeremoniendolch2_15_08"); //Thanks. I have to take care of the blood calyx.
	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_09"); //Do that. And talk to Masut. He must have noticed something unusual.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7163_ASS_Kamal_NW, "START");

	B_SetTopicStatus	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, LOG_SUCCESS);

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Mustafa has made me a warrior. Let me keep the ceremonial dagger for now. There's something out there, too! But first, the cup.");

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Mustafa_Verschwoerung (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Verschwoerung_Condition;
	information	= Info_Mod_Mustafa_Verschwoerung_Info;
	permanent	= 0;
	important	= 0;
	description	= "High advice, I must show you something.";
};

FUNC INT Info_Mod_Mustafa_Verschwoerung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mirza_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Verschwoerung_Info()
{
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung_15_00"); //High advice, I must show you something.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung_15_01"); //If you'd like to follow me. I'll wait for you in the hallway by the crate pile.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung_13_02"); //If it has to be....

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Mustafa_Verschwoerung2 (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Verschwoerung2_Condition;
	information	= Info_Mod_Mustafa_Verschwoerung2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mustafa_Verschwoerung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_Verschwoerung))
	&& (Npc_GetDistTowP(self, "WP_ASSASSINE_41") < 500)
	&& (Npc_HasItems(hero, ItMi_Bloodcup_MIS) == 1)
	&& (Npc_HasItems(hero, ItMi_Bloodcup_Richter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Verschwoerung2_Info()
{
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_00"); //What can you see here? Maybe the blood cup?
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_01"); //I got that one. Two of them, actually. But...
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_02"); //Let me see that.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_03"); //Here.

	Npc_RemoveInvItems	(hero, ItMi_Bloodcup_MIS, 1);
	Npc_RemoveInvItems	(hero, ItMi_Bloodcup_Richter, 1);

	B_ShowGivenThings	("calyx");

	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_04"); //But I have something to report that no one else should hear.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_05"); //What a circumstance. We have no secrets in the Council.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_06"); //I know better than that. Listen, the mages are plotting a conspiracy under the leadership of Rat Norek.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_07"); //Impossible.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_08"); //Yes, it is. You have two goblets.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_09"); //The magician Mufid found one in front of me and kept it in a chest in a cave far away from the city. There was a second one in there, too. Chalice.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_10"); //I'm sure the second one's the one Norek got from Amir at first.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_11"); //And I gave the last one to Na' im.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_12"); //Hmm. I could find out if Norek still has his cup. But what's the point?
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_13"); //The magicians plan to leave the camp here and dive into this cave.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_14"); //Then let Zahit in the city tell the paladins our hideout here.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_15"); //Norek thinks he can get himself and his people a licence here on Khorinis.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_16"); //Unbelievable, but it's possible.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_17"); //Listen, you go into town and silence the traitor.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_18"); //I'm gonna find out whose calyx is missing. I'll meet you back here.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_19"); //Yes, Council.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_20"); //Hold on, hold on. Have you tried the new dagger yet?

	if (Mod_ASS_AvaquarGemeuchelt == 1)
	{
		AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_21"); //The ceremonial dagger? Oh, yeah, it's a scary thing.
		AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_22"); //Then use that. We can't afford any fuss.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_23"); //The ceremonial dagger? No...
		AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_24"); //Then use that. We can't afford any fuss.
		AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_25"); //Will do.
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_ASS_VERSCHWOERUNG, "I told Mustafa all about Norek and the magicians. He seems to believe me. Now I'm to silence the traitor in town. Afterwards I meet Mustafa again at the boxes.");
};

INSTANCE Info_Mod_Mustafa_Verschwoerung3 (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Verschwoerung3_Condition;
	information	= Info_Mod_Mustafa_Verschwoerung3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mustafa_Verschwoerung3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_Verschwoerung2))
	&& (Npc_GetDistTowP(self, "WP_ASSASSINE_41") < 500)
	&& (Npc_IsDead(Mod_7100_ASS_Zahit_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Verschwoerung3_Info()
{
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_00"); //I brought the blood cups to the Council's attention once.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_01"); //Norek couldn't show his. He said he kept it in a safe place.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_02"); //Na' im had the cup with him...
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_03"); //And the traitor is dead.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_04"); //Then the information you got has to be right.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_05"); //Now I just need to know which side of Rat Na' im is actually on.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_06"); //He still has the cup.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_07"); //Yeah, but if he's on the other side, it doesn't matter if he or Norek has him.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_08"); //True again. Hm... you'd have to work on that three. Chalice arrive without Na' im noticing that. For all cases...
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_09"); //That's got something. But how? He always carries it with him.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_10"); //A sleeping spell, perhaps?
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_11"); //This could work. But I'm sure Norek would notice...
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_12"); //Two sleeping spells, then.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_13"); //Very good. Very good. But we'll wait for the night. That's where most mages sleep.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_14"); //You take the two goblets back now and keep them safe. You never know....

	CreateInvItems	(hero, ItMi_Bloodcup_MIS, 1);
	CreateInvItems	(hero, ItMi_Bloodcup_Richter, 1);

	B_ShowGivenThings	("cups of blood preserved");

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ASS_VERSCHWOERUNG, "Now it's certain that Norek and his magicians are planning treason. I'm supposed to keep the two available goblets safe for now. For all cases. And then tonight with two sleeping spells at the council...");
};

INSTANCE Info_Mod_Mustafa_Verschwoerung4 (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Verschwoerung4_Condition;
	information	= Info_Mod_Mustafa_Verschwoerung4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mustafa_Verschwoerung4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_Verschwoerung3))
	&& (Npc_GetDistTowP(self, "WP_ASSASSINE_41") < 500)
	&& (Wld_IsTime(22,00,24,00))
	&& ((Npc_HasItems(hero, ItSc_Sleep) >= 2)
	|| (Npc_HasItems(hero, ItRu_Sleep) >= 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Verschwoerung4_Info()
{
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung4_13_00"); //It's high time you came. Norek is extremely nervous. Asked for Mufid several times.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung4_13_01"); //And the other magicians are also restless.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung4_15_02"); //Should I go to the council now?
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung4_13_03"); //Absolutely. Fall asleep both of you and take the cup of Na' im. You can do this.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung4_13_04"); //I'm talking to my warriors now.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ASS_VERSCHWOERUNG, "The time has come. Now I have to put Norek and Na' im to sleep and then Na' im take the cup off....");
};

INSTANCE Info_Mod_Mustafa_Verschwoerung5 (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Verschwoerung5_Condition;
	information	= Info_Mod_Mustafa_Verschwoerung5_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the cup! What now?";
};

FUNC INT Info_Mod_Mustafa_Verschwoerung5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_Verschwoerung4))
	&& (Mod_ASS_NaimBlutkelch == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Verschwoerung5_Info()
{
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung5_15_00"); //I got the cup! What now?
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung5_13_01"); //Good work, warrior. You've earned yourself the rank of elite assassin.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung5_13_02"); //Now take the chalices to safety and return as soon as possible.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung5_15_03"); //Thank you, good advice. I'll hurry.

	B_LogEntry	(TOPIC_MOD_ASS_VERSCHWOERUNG, "I shall take the cups to safety and return as soon as possible....");
	B_SetTopicStatus	(TOPIC_MOD_ASS_LASTBLUTKELCH, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Mustafa_NachSchlacht (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_NachSchlacht_Condition;
	information	= Info_Mod_Mustafa_NachSchlacht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here.";
};

FUNC INT Info_Mod_Mustafa_NachSchlacht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Naim_NachSchlacht2))
	&& (Npc_HasItems(hero, ItMi_Bloodcup_Richter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_NachSchlacht_Info()
{
	AI_Output(hero, self, "Info_Mod_Mustafa_NachSchlacht_15_00"); //Here.

	B_GiveInvItems	(hero, self, ItMi_Bloodcup_Richter, 1);

	AI_Output(self, hero, "Info_Mod_Mustafa_NachSchlacht_13_01"); //Thank you, Warrior. Exactly as the lore says. A new life for the drink from the cup.
	AI_Output(hero, self, "Info_Mod_Mustafa_NachSchlacht_15_02"); //What does that mean?
	AI_Output(self, hero, "Info_Mod_Mustafa_NachSchlacht_13_03"); //Talk to Na' im. He'll explain it to you. I'm still weak.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Mustafa_Pickpocket (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Pickpocket_Condition;
	information	= Info_Mod_Mustafa_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Mustafa_Pickpocket_Condition()
{
	C_Beklauen	(118, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Mustafa_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);

	Info_AddChoice	(Info_Mod_Mustafa_Pickpocket, DIALOG_BACK, Info_Mod_Mustafa_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Mustafa_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Mustafa_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Mustafa_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);
};

FUNC VOID Info_Mod_Mustafa_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);

		Info_AddChoice	(Info_Mod_Mustafa_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Mustafa_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Mustafa_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Mustafa_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Mustafa_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Mustafa_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Mustafa_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Mustafa_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Mustafa_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Mustafa_EXIT (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_EXIT_Condition;
	information	= Info_Mod_Mustafa_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Mustafa_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mustafa_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
