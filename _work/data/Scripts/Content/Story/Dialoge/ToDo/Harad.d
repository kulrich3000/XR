INSTANCE Info_Mod_Harad_Hi (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Hi_Condition;
	information	= Info_Mod_Harad_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're a blacksmith, right?";
};

FUNC INT Info_Mod_Harad_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Harad_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Hi_15_00"); //You're a blacksmith, right?
	AI_Output(self, hero, "Info_Mod_Harad_Hi_28_01"); //(insulted) You can see that!
};

INSTANCE Info_Mod_Harad_Waffenverkauf (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Waffenverkauf_Condition;
	information	= Info_Mod_Harad_Waffenverkauf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you sell weapons, too?";
};

FUNC INT Info_Mod_Harad_Waffenverkauf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Waffenverkauf_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Waffenverkauf_15_00"); //Do you sell guns?
	AI_Output(self, hero, "Info_Mod_Harad_Waffenverkauf_28_01"); //Now I'm supposed to sell guns?!
	AI_Output(self, hero, "Info_Mod_Harad_Waffenverkauf_28_02"); //Isn't it enough that I stand in front of the blacksmith's shop all day long, scorching my face and hands?
	AI_Output(self, hero, "Info_Mod_Harad_Waffenverkauf_28_03"); //Ask Brian the rascal. He can turn into something useful.
};

INSTANCE Info_Mod_Harad_SchlechteLaune (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_SchlechteLaune_Condition;
	information	= Info_Mod_Harad_SchlechteLaune_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why are you in such a bad mood?";
};

FUNC INT Info_Mod_Harad_SchlechteLaune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_SchlechteLaune_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_SchlechteLaune_15_00"); //Why are you in such a bad mood?
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_28_01"); //I'm seriously considering whether I should just hang up the work.
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_28_02"); //Apparently, she's no longer appreciated.
	AI_Output(hero, self, "Info_Mod_Harad_SchlechteLaune_15_03"); //What's happening?
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_28_04"); //The last delivery of steel never reached me. It was confiscated by the Paladins. Like I'm a criminal!
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_28_05"); //Don't be surprised if I don't want to forge weapons for them.
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_28_06"); //How one calls into the forest, it sounds out.
};

INSTANCE Info_Mod_Harad_Bartok (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Bartok_Condition;
	information	= Info_Mod_Harad_Bartok_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a special mission from Bartok.";
};

FUNC INT Info_Mod_Harad_Bartok_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bartok_Stimme))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	&& (Mod_Bartok_Ruestung_Day == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Bartok_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_00"); //I have a special mission from Bartok.
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_01"); //Well, I can imagine the payment habits of the fornicator.
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_02"); //He wants swamp weed armor.
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_03"); //Haha, how funny. I should've known you guys were kidding me.
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_04"); //Go have fun with someone else.
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_05"); //He gave me 1,000 gold...
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_06"); //A bogweed kit? No problem! So... practically none!
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_07"); //So you'll take care of it?
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_08"); //What else am I supposed to do?
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_09"); //And how much will it cost?
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_10"); //(considered) Material costs, working time, transport routes.... I'm coming pretty close to 1,000 gold!
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_11"); //(ironic) Pott thousand, what a coincidence.
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_28_12"); //There should be. Come by tomorrow and I'll tell you more!

	B_LogEntry	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, "Harad needs a day to design the armour. Then you want me to stop by again.");

	Mod_Bartok_Ruestung_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Harad_Sumpfkrautruestung (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Sumpfkrautruestung_Condition;
	information	= Info_Mod_Harad_Sumpfkrautruestung_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's new on the swamp herb kit?";
};

FUNC INT Info_Mod_Harad_Sumpfkrautruestung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Bartok))
	&& (Mod_Bartok_Ruestung_Day < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Sumpfkrautruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung_15_00"); //What's new on the swamp herb kit?
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung_28_01"); //Two things. First, I need your support to get everything I need.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung_28_02"); //I made you a list.

	B_GiveInvItems	(self, hero, ItWr_KrautruestungListe, 1);

	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung_15_03"); //And two?
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung_28_04"); //Think of the gold when you bring me the things. Without the.... Uh, I can't start.
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung_15_05"); //All right, all right.

	B_LogEntry	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, "Harad gave me a list of things to get until he can start with the armor. Besides, I'm supposed to remember to bring the gold.");
};

INSTANCE Info_Mod_Harad_Sumpfkrautruestung2 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Sumpfkrautruestung2_Condition;
	information	= Info_Mod_Harad_Sumpfkrautruestung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here are the armor items.";
};

FUNC INT Info_Mod_Harad_Sumpfkrautruestung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Sumpfkrautruestung))
	&& (Npc_HasItems(hero, ItAt_LurkerSkin) >= 10)
	&& (Npc_HasItems(hero, ItMiSwordRaw) >= 5)
	&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 3)
	&& (Npc_HasItems(hero, ItPl_Swampherb) >= 15)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Sumpfkrautruestung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung2_15_00"); //Here are the armor items.

	Npc_RemoveInvItems	(hero, ItAt_LurkerSkin, 10);
	Npc_RemoveInvItems	(hero, ItMiSwordRaw, 5);
	Npc_RemoveInvItems	(hero, ItPl_Swampherb, 15);
	Npc_RemoveInvItems	(hero, ItAt_SkeletonBone, 3);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 1000);
	Npc_RemoveInvItems	(hero, ItWr_KrautruestungListe, 1);

	B_ShowGivenThings	("1000 gold, 15 bogweed plants, 10 reptile skins, 5 crude steel and 3 skeletal bones given.");

	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung2_28_01"); //It may be difficult to make a respectable leather armor, but rest assured that no one else could have done better.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung2_28_02"); //Since the skins still have to be tanned, the completion of the armour takes a few days.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung2_28_03"); //Your friend Bartok can pick them up in a week.
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung2_15_04"); //He's not my friend.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung2_28_05"); //However. Tell him that.

	B_GivePlayerXP	(400);

	B_SetTopicStatus	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Harad_Sumpfkrautruestung3 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Sumpfkrautruestung3_Condition;
	information	= Info_Mod_Harad_Sumpfkrautruestung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bartok doesn't want the armor anymore. You can give it to me.";
};

FUNC INT Info_Mod_Harad_Sumpfkrautruestung3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartok_Ruestung))
	&& (Mod_Bartok_Ruestung_Day+7 < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Sumpfkrautruestung3_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung3_15_00"); //Bartok doesn't want the armor anymore. You can give it to me.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung3_28_01"); //You'll have to choose between you.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung3_28_02"); //I hate to praise her, but she's become a real gem. Here she is.

	CreateInvItems	(self, ItAr_Sumpfkraut, 1);
	B_GiveInvItems	(self, hero, ItAr_Sumpfkraut, 1);
};

INSTANCE Info_Mod_Harad_Piraten (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Piraten_Condition;
	information	= Info_Mod_Harad_Piraten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you get the rust off that blade?";
};

FUNC INT Info_Mod_Harad_Piraten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_Aufgabe))
	&& (Npc_HasItems(hero, ItMw_Piratensaebel_Greg) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Piraten_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Piraten_15_00"); //Can you get the rust off that blade?

	B_GiveInvItems	(hero, self, ItMw_Piratensaebel_Greg, 1);

	AI_Output(self, hero, "Info_Mod_Harad_Piraten_28_01"); //Hmm... Let me see...

	AI_UnequipWeapons	(self);
	EquipItem	(self, ItMw_Piratensaebel_Greg);
	AI_ReadyMeleeWeapon	(self);
	AI_PlayAni	(self, "T_1HSINSPECT");
	AI_RemoveWeapon	(self);
	AI_UnequipWeapons	(self);

	AI_Output(self, hero, "Info_Mod_Harad_Piraten_28_02"); //It's a rarely beautiful thing, although it doesn't come from me. Where'd you get it?
	AI_Output(hero, self, "Info_Mod_Harad_Piraten_15_03"); //It doesn't matter. Can you?
	AI_Output(self, hero, "Info_Mod_Harad_Piraten_28_04"); //I don't have time to clean the blades now.
	AI_Output(self, hero, "Info_Mod_Harad_Piraten_28_05"); //I'm not a master blacksmith. I'm not the type of master.
	AI_Output(hero, self, "Info_Mod_Harad_Piraten_15_06"); //All right, all right. Then give it back.

	B_GiveInvItems	(self, hero, ItMw_Piratensaebel_Greg, 1);

	B_LogEntry	(TOPIC_MOD_GREG_ROST, "Harad's got too many jobs right now. Maybe I should ask Bennet about the mercenaries.");
};

INSTANCE Info_Mod_Harad_Lehrling (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Lehrling_Condition;
	information	= Info_Mod_Harad_Lehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Matteo says I need your approval, (...) ).";
};

FUNC INT Info_Mod_Harad_Lehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Matteo_OberesViertel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Lehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Lehrling_15_00"); //Matteo says I need your approval to become an apprentice.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_01"); //Oh, no, now I'm supposed to come up with another test, huh?
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_02"); //Like I've got nothing better to do all day!
	AI_Output(hero, self, "Info_Mod_Harad_Lehrling_15_03"); //There's something I can do to help you with.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_04"); //There's only one thing - but you won't be able to help me with that either.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_05"); //It is about my confiscated steel package that the paladins loaded onto their ship to bring to the king - may he kill himself with it!
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_06"); //The ship is guarded all the time, and the guards won't let anyone get through to the steel package, not even me as the rightful owner.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_07"); //So you'd have to find another way to get onto the ship.
	AI_Output(hero, self, "Info_Mod_Harad_Lehrling_15_08"); //Where is the package on the ship?
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_09"); //This is probably located in the cargo hold below deck, where it should be modern for the next few months.
	AI_Output(hero, self, "Info_Mod_Harad_Lehrling_15_10"); //I'll have a look.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_28_11"); //Don't get your hopes up!

	Log_CreateTopic	(TOPIC_MOD_HARADSSTAHL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_HARADSSTAHL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_HARADSSTAHL, "To get Harad's voice I have to bring him his steel package, which is on the ship of the Paladin.");
};

INSTANCE Info_Mod_Harad_Stimme (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Stimme_Condition;
	information	= Info_Mod_Harad_Stimme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Look what I got here.";
};

FUNC INT Info_Mod_Harad_Stimme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Lehrling))
	&& (Npc_HasItems(hero, ItMi_Addon_Steel_Paket) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Stimme_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Stimme_15_00"); //Look what I got here.

	B_GiveInvItems	(hero, self, ItMi_Addon_Steel_Paket, 1);

	AI_Output(self, hero, "Info_Mod_Harad_Stimme_28_01"); //So the guardians were bribed after all?
	AI_Output(hero, self, "Info_Mod_Harad_Stimme_15_02"); //No.
	AI_Output(self, hero, "Info_Mod_Harad_Stimme_28_03"); //Then I don't want to know how you got it.
	AI_Output(self, hero, "Info_Mod_Harad_Stimme_28_04"); //I have already suffered considerable losses as a result of the delayed package, but at least it is now there.
	AI_Output(self, hero, "Info_Mod_Harad_Stimme_28_05"); //Because of me, you can have my vote.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_HARADSSTAHL, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	Mod_LehrlingsStimmen += 1;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Harad_DeinLehrling (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_DeinLehrling_Condition;
	information	= Info_Mod_Harad_DeinLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can I be an apprentice with you?";
};

FUNC INT Info_Mod_Harad_DeinLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Stimme))
	&& (Mod_LehrlingsStimmen == 5)
	&& (Mod_IstLehrling == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_DeinLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_DeinLehrling_15_00"); //Can I be an apprentice with you?
	AI_Output(self, hero, "Info_Mod_Harad_DeinLehrling_28_01"); //Impossible! I can't work at the same time and look after two apprentices.
	AI_Output(hero, self, "Info_Mod_Harad_DeinLehrling_15_03"); //But Brian has already learned a lot...
	AI_Output(self, hero, "Info_Mod_Harad_DeinLehrling_28_04"); //... And if you don't look at him all the time, he does everything wrong!
	AI_Output(self, hero, "Info_Mod_Harad_DeinLehrling_28_05"); //No, I will not accept a second apprentice.
};

INSTANCE Info_Mod_Harad_DeinLehrlingStattBrian (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_DeinLehrlingStattBrian_Condition;
	information	= Info_Mod_Harad_DeinLehrlingStattBrian_Info;
	permanent	= 0;
	important	= 0;
	description	= "Would you want to take me instead of Brian?";
};

FUNC INT Info_Mod_Harad_DeinLehrlingStattBrian_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_DeinLehrling))
	&& (Mod_IstLehrling == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_DeinLehrlingStattBrian_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_DeinLehrlingStattBrian_15_00"); //Would you want to take me instead of Brian?
	AI_Output(self, hero, "Info_Mod_Harad_DeinLehrlingStattBrian_28_01"); //Well, more clumsy than he is, you can hardly queue up.
	AI_Output(hero, self, "Info_Mod_Harad_DeinLehrlingStattBrian_15_02"); //Then I'll have a talk with him.
};

INSTANCE Info_Mod_Harad_Aufnahme (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Aufnahme_Condition;
	information	= Info_Mod_Harad_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "I spoke to Brian.";
};

FUNC INT Info_Mod_Harad_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brian_HaradLehrling))
	&& (Mod_IstLehrling == 0)
	&& (Mod_LehrlingsStimmen == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_15_00"); //I spoke to Brian.
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_09_01"); //(drawn) I know! I couldn't help but notice his stuttering!
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_09_02"); //He will regret his words even more.

	Info_ClearChoices	(Info_Mod_Harad_Aufnahme);

	Info_AddChoice	(Info_Mod_Harad_Aufnahme, "Brian convinced me I shouldn't be a blacksmith.", Info_Mod_Harad_Aufnahme_B);
	Info_AddChoice	(Info_Mod_Harad_Aufnahme, "How about you take me as an apprentice now?", Info_Mod_Harad_Aufnahme_A);
};

FUNC VOID Info_Mod_Harad_Aufnahme_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_B_15_00"); //Brian convinced me I shouldn't be a blacksmith.
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_B_09_01"); //That wretched little worm! What did I do to be punished with him?

	Info_ClearChoices	(Info_Mod_Harad_Aufnahme);
};

FUNC VOID Info_Mod_Harad_Aufnahme_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_A_15_00"); //How about you take me as an apprentice now?
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_01"); //I'd like to say no. Who's going to assure me you don't want to rip me off, too?
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_02"); //But without an apprentice, I'd lose my reputation. I don't want to end up like Constantino or Bosper.
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_03"); //That's why I want to try it with you.
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_A_15_04"); //Fine. When do we start?
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_05"); //As soon as you're a citizen of the city.
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_A_15_06"); //What do I have to do?
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_07"); //Put this one on.

	CreateInvItems	(hero, ItAr_Smith, 1);
	B_ShowGivenThings ("Preserving blacksmith's clothing");

	AI_UnequipArmor	(hero);

	AI_EquipArmor	(hero, ItAr_Smith);

	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_08"); //That's it, I think.

	Info_ClearChoices	(Info_Mod_Harad_Aufnahme);

	Mod_IstLehrling	= 1;

	Mod_LehrlingBei = 5;

	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Auftrag))
	{
		B_LogEntry_More	(TOPIC_MOD_BÜRGER, TOPIC_MOD_TORLOFSPIONAGE, "Harad the merchant accepted me as his apprentice. That makes me a citizen of the city now.", "Since Harad accepted me as his apprentice it is now possible for me to enter the upper quarter.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_BÜRGER, "Harad the merchant accepted me as his apprentice. That makes me a citizen of the city now.");
	};

	B_SetTopicStatus	(TOPIC_MOD_BÜRGER, LOG_SUCCESS);

	Wld_AssignRoomToGuild ("schmied",	GIL_NONE);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Harad_Job (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Job_Condition;
	information	= Info_Mod_Harad_Job_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to learn something.";
};

FUNC INT Info_Mod_Harad_Job_Condition()
{
	if (Mod_LehrlingBei == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Job_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Job_15_00"); //I want to learn something.
	AI_Output(self, hero, "Info_Mod_Harad_Job_28_01"); //Then you'll make yourself useful first.
	AI_Output(self, hero, "Info_Mod_Harad_Job_28_02"); //By the fact that the Paladins have done such an open breach of trust, I don't feel much like being at their disposal.
	AI_Output(self, hero, "Info_Mod_Harad_Job_28_03"); //However, I cannot survive without new orders. That's why I'm gonna have to offer my services to the mercenaries.
	AI_Output(self, hero, "Info_Mod_Harad_Job_28_04"); //Here you have a self-forged sword. You'll show them, then they'll be convinced of my abilities.

	B_GiveInvItems	(self, hero, ItMw_HaradSchwert, 1);

	AI_Output(hero, self, "Info_Mod_Harad_Job_15_05"); //And if that doesn't work?
	AI_Output(self, hero, "Info_Mod_Harad_Job_28_06"); //Don't be stupid, it'll work.

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_HARAD_ONE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_ONE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_ONE, "Harad gave me one of his swords to impress the mercenaries.");
};

INSTANCE Info_Mod_Harad_GildenZeug (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_GildenZeug_Condition;
	information	= Info_Mod_Harad_GildenZeug_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_GildenZeug_Condition()
{
	if (Mod_LehrlingBei == 5)
	&& (hero.guild > GIL_NONE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_GildenZeug_Info()
{
	if (hero.guild == GIL_PAL)
	{
		AI_Output(self, hero, "Info_Mod_Harad_GildenZeug_09_00"); //You in the militia too? You better reconsider.
	}
	else if (hero.guild == GIL_VLK)
	|| (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Harad_GildenZeug_09_01"); //Magician and blacksmith? How's that supposed to work out?
	}
	else if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Harad_GildenZeug_09_02"); //Going to mercenaries today is probably the noblest way to be a fighter.
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output(self, hero, "Info_Mod_Harad_GildenZeug_09_03"); //Just be happy if I don't tell the townspeople about your guild choice.
	};
};

INSTANCE Info_Mod_Harad_LehrlingQuest (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest_Condition;
	information	= Info_Mod_Harad_LehrlingQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Torlof has agreed to a trial delivery.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling4))
	&& (Mod_HaradLehrling_Kampf == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest_15_00"); //Torlof has agreed to a trial delivery.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_01"); //That's more than you can hope for these days.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_02"); //As a reward, you may keep my sword. You can either use it for fighting or sell it on the marketplace.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest_15_03"); //I would then be ready for a first lesson.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_04"); //(sighs) If I have to. I'll teach you a technique I've perfected myself.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_05"); //You won't be as good as I am, but you'll be much better than the usual botcher.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest_15_06"); //What kind of technique is this?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_07"); //I'm getting to that now! It's about balancing the weapon.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_08"); //Some idiots put the centre of gravity of the sword near the middle of the blade.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_09"); //This way the strokes have more power, but this is at the expense of handiness.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_10"); //Much better is a centre of gravity near the parry bar.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_11"); //Together with a low weight this makes the sword much easier to handle in combat.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_12"); //For two-handed users, it is advisable to place the centre of gravity further to the parry bar than for the single-handed user, as full control is even more important here.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest_15_13"); //Thanks. I'll make sure of that.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_14"); //You should be. This gives you an advantage over your opponents from the very beginning.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_15"); //Now let me get back to my urgent work.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_16"); //And get yourself some practice before you come next time, because then it will be more demanding.

	B_GivePlayerXP	(100);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_ONE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Harad_LehrlingQuestFailed (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuestFailed_Condition;
	information	= Info_Mod_Harad_LehrlingQuestFailed_Info;
	permanent	= 0;
	important	= 0;
	description	= "I couldn't do the job.";
};

FUNC INT Info_Mod_Harad_LehrlingQuestFailed_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling4))
	&& (Mod_HaradLehrling_Kampf == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuestFailed_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuestFailed_15_00"); //I couldn't do the job.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuestFailed_09_01"); //And what am I supposed to do for a living? What a fool you are!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuestFailed_15_02"); //You still gonna teach me something?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuestFailed_09_03"); //I don't want to see you again for now!
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuestFailed_09_04"); //The instruction is cancelled.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_ONE, LOG_FAILED);
};

INSTANCE Info_Mod_Harad_LehrlingQuest2 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest2_Condition;
	information	= Info_Mod_Harad_LehrlingQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "You got something to do for me again?";
};

FUNC INT Info_Mod_Harad_LehrlingQuest2_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest))
	|| (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuestFailed)))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest2_15_00"); //You got something to do for me again?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_01"); //A long time ago. I'm just waiting for you to show yourself again.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest2_15_02"); //What's the matter?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_03"); //Tengron was here. He forbade me from delivering the swords to the mercenaries.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_04"); //I suppose he thinks it'll keep me from doing anything. I don't care about the paladin.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_05"); //They have nothing more to say to me.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_06"); //However, I can't get through the city gates. The guards there are just waiting to frisk me.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_07"); //That's why you'll find a way to drop your weapons off at Torlof.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_08"); //Teleport or do whatever you like, as long as the guards don't see the shipment!
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_09"); //I get gold from Torlof for the Swords 2000. You bring it back to me.

	B_GiveInvItems	(self, hero, ItMi_Waffenbuendel, 1);

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_TWO, "Harad told me to bring a shipment of weapons to the mercenaries. All I have to do is make sure that the city guard doesn't search me, for example by teleporting me outside.");
};

INSTANCE Info_Mod_Harad_LehrlingQuest3 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest3_Condition;
	information	= Info_Mod_Harad_LehrlingQuest3_Info;
	permanent	= 0;
	important	= 0;
	description	= "You only gave me 17 swords.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling5))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1700)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest3_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_00"); //You only gave me 17 swords.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_01"); //Don't fuck around. There were 20 swords, as ordered.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_02"); //Torlof said otherwise. And only paid 1700 gold.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_03"); //Then he lied. I'm not counting myself for three swords!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_04"); //He wants three more guns before he pays the remaining 300 gold.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_05"); //All right, that's your problem, then.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_06"); //Why mine?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_07"); //Because you're gonna give me 2,000 pieces of gold, all right?
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_08"); //But...
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_09"); //Otherwise you can forget your next lesson!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest3);

	if (Npc_HasItems(hero, ItMi_Gold) >= 2000)
	{
		Info_AddChoice	(Info_Mod_Harad_LehrlingQuest3, "That's not worth the stupid lesson.", Info_Mod_Harad_LehrlingQuest3_B);
	};

	Info_AddChoice	(Info_Mod_Harad_LehrlingQuest3, "All right, all right. But how do I get the 300 gold from Torlof?", Info_Mod_Harad_LehrlingQuest3_A);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest3_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_B_15_00"); //That's not worth the stupid lesson.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1700);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_B_09_01"); //(strikes) This time it's out of order. Now get out of here, I've got work to do!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest3);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest3_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_A_15_00"); //All right, all right. But how do I get the 300 gold from Torlof?

	B_GiveInvItems	(hero, self, ItMi_Gold, 2000);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_01"); //Just forge three normal swords for him, then he will be satisfied.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_A_15_02"); //And what are you gonna teach me today?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_03"); //I want to teach you something that every blacksmith should know, but what only very few really know.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_04"); //I'll show you how to make a really durable sharp blade.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_05"); //Sharpening is child's play. However, beginners and blenders tend to choose the cutting angle of the blade too low.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_06"); //In short, the blade cuts through wood as well as butter - but after two times of use it has worn out or breaks in the worst case.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_07"); //Since the metals we work with are usually of poor quality, it is therefore much more appropriate to increase the cutting angle.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_08"); //You won't get spectacular results, but the weapon stays sharp for a long time.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_09"); //If you're not standing in my way, you can practice on the grindstone.

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest3);

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_TWO, "I've decided to pay Harad the full amount. If I want to get the missing gold from Torlof, I'll have to make him three more swords.");

	B_GivePlayerXP	(200);

	CurrentNQ += 1;

	Schaerfen_Perk = TRUE;
};

INSTANCE Info_Mod_Harad_LehrlingQuest3Failed (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest3Failed_Condition;
	information	= Info_Mod_Harad_LehrlingQuest3Failed_Info;
	permanent	= 0;
	important	= 0;
	description	= "The city guards took the package from me.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest3Failed_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling5))
	&& (Npc_HasItems(hero, ItMi_Waffenbuendel) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest3Failed_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3Failed_15_00"); //The city guards took the package from me.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3Failed_09_01"); //(groans) Excuse me?! You ignored everything I told you and ran into their arms?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3Failed_09_02"); //Why am I always beaten with such good-for-nothing?
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3Failed_15_03"); //The guards said there would be consequences for you...
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3Failed_09_04"); //Cheek! Don't ever cross my eyes again!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_FAILED);
};

INSTANCE Info_Mod_Harad_LehrlingQuest4 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest4_Condition;
	information	= Info_Mod_Harad_LehrlingQuest4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here I am again.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest4_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest3))
	|| (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest3Failed)))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest4_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_00"); //Here I am again. What's the mercenary trade doing?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_01"); //I let myself be told that they haven't been particularly impressed so far. That will now change.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_02"); //How so?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_03"); //I intend to give a gift to the mercenary leader of Onar's court.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_04"); //In return, I hope to receive new orders.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_05"); //What kind of a gift is that?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_06"); //A sword of splendour where I use all my skills. This means that this Bennet can finally pack up.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_07"); //You have to help me with this. And that's why I'm going to give you an introduction to making a master weapon.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_08"); //I look forward to it.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_09"); //In the case of a showpiece weapon, both appearance and quality must be convincing.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_10"); //I use a complicated method for making the sword, which would be too expensive for standard swords:
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_11"); //I take four bars of different steel, which are stacked and welded in the fire.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_12"); //The metals are then folded.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_13"); //After cooling down, the sword shows a much higher hardness than those that were forged from a single steel rod.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_14"); //I have to try that out. Do I get any of that in the fight?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_15"); //That goes without saying. When you fight against opponents who use conventional weapons, you can strike much more carelessly without having to worry about the sword breaking apart.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_16"); //Sounds useful.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_17"); //In order to achieve a special look, I use two means: First of all, decorations are worked into the blade and the shaft.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_18"); //Afterwards I carve notches on the Knauf, into which later precious stones are inserted.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_19"); //Anything I can help you with?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_20"); //I don't have all the gems I need for ornamentation yet.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_21"); //I'm still missing some pearls, at least three. Even better would be five.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_22"); //I'll see if I can find some.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_23"); //But don't take too long!

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_HARAD_THREE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_THREE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_THREE, "Harad needs at least three more beads before he can start forging a splendid weapon for Lares.");
};

INSTANCE Info_Mod_Harad_LehrlingQuest5 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest5_Condition;
	information	= Info_Mod_Harad_LehrlingQuest5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_LehrlingQuest5_Condition()
{
	if (Npc_HasItems(hero, ItMi_Addon_WhitePearl) >= 3)
	&& (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest4))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest5_Info()
{
	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest5);

	if (Npc_HasItems(hero, ItMi_Addon_WhitePearl) >= 3)
	{
		Info_AddChoice	(Info_Mod_Harad_LehrlingQuest5, "Here are five pearls.", Info_Mod_Harad_LehrlingQuest5_B);
	};

	Info_AddChoice	(Info_Mod_Harad_LehrlingQuest5, "I have three beads with me.", Info_Mod_Harad_LehrlingQuest5_A);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest5_C()
{
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_00"); //Now, if you want to watch a master do his work... you can learn a lot from it.

	AI_UseMob	(self, "BSFIRE", 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_01"); //First, the steel bars are superimposed and heated.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_02"); //Pumping properly to get the right temperature, that's a fucking mess.

	AI_UseMob	(self, "BSFIRE", -1);

	AI_UseMob	(self, "BSANVIL", 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_03"); //The various steel alloys are folded and brought into the right shape.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_04"); //Recesses and decorations are worked in. I'm embossing a pretty lettering.

	AI_UseMob	(self, "BSANVIL", -1);

	AI_UseMob	(self, "BSCOOL", 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_05"); //Cool it down nicely. But don't leave it in the bucket too long, Brian ruined some swords for me.

	AI_UseMob	(self, "BSCOOL", -1);

	AI_UseMob	(self, "BSSHARP", 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_06"); //Now grind it and this thing is perfect.

	AI_UseMob	(self, "BSSHARP", -1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_07"); //Ready. Now only the beads have to be inserted...

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest5);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_980_MIL_Olav_NW, "HARAD");
};

FUNC VOID Info_Mod_Harad_LehrlingQuest5_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest5_B_15_00"); //Here are five pearls.

	B_GiveInvItems	(hero, self, ItMi_Addon_WhitePearl, 5);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_B_09_01"); //I can use them all.

	B_GivePlayerXP	(150);

	Info_Mod_Harad_LehrlingQuest5_C();
};

FUNC VOID Info_Mod_Harad_LehrlingQuest5_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest5_A_15_00"); //I have three beads with me.

	B_GiveInvItems	(hero, self, ItMi_Addon_WhitePearl, 3);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_A_09_01"); //At least something.

	B_GivePlayerXP	(100);

	Info_Mod_Harad_LehrlingQuest5_C();
};

INSTANCE Info_Mod_Harad_LehrlingQuest6 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest6_Condition;
	information	= Info_Mod_Harad_LehrlingQuest6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_LehrlingQuest6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Olav_HaradLehrling))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest6_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest6_09_00"); //That is so terribly unfair!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest6_15_01"); //Come on, you'll be all right.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest6_09_02"); //But I have to start all over again! All over again!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest6_15_03"); //You showed me how to do it. Give me the pearls and I'll forge your sword.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest6_09_04"); //Throw pearls in front of the Molerats! I'm going in the house. l-- I have a headache!

	B_GiveInvItems	(self, hero, ItMi_Addon_WhitePearl, Npc_HasItems(self, ItMi_Addon_WhitePearl));

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_THREE, "Harad's gun for Lares was confiscated, and that's what gave the master the rest of it. I'm gonna have to try myself on a specimen. Don't forget: Follow all steps in the correct order. And put the beads in at the end.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INHAUS");
};

INSTANCE Info_Mod_Harad_LehrlingQuest7 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest7_Condition;
	information	= Info_Mod_Harad_LehrlingQuest7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's a new splendour sword.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest6))
	&& (Npc_HasItems(hero, ItMw_Prunkschwert) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest7_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest7_15_00"); //Here's a new splendour sword.

	B_GiveInvItems	(hero, self, ItMw_Prunkschwert, 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_01"); //(insulted) Oh, stay away from me with that.

	B_GiveInvItems	(self, hero, ItMw_Prunkschwert, 1);

	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest7_15_02"); //No, you take that now. And say something about it.

	B_GiveInvItems	(hero, self, ItMw_Prunkschwert, 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_03"); //Yeah, that's good work.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest7_15_04"); //Should I take it to Lares?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_05"); //No, that would be too conspicuous by now. It just needs to see someone near the mercenaries and tell on the guards and - whoops! It's my turn.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_06"); //That's why I'd rather give the sword to a merchant.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_07"); //Now leave me alone. I don't want to talk to anyone right now.

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_THREE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Harad_LehrlingQuest8 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest8_Condition;
	information	= Info_Mod_Harad_LehrlingQuest8_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_LehrlingQuest8_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Olav_HaradLehrling))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest8_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_09_00"); //You're the one.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_15_01"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_09_02"); //You can't cheer me up, either.

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest8);

	Info_AddChoice	(Info_Mod_Harad_LehrlingQuest8, "I don't want to. You just deserved to go mouldy in there.", Info_Mod_Harad_LehrlingQuest8_B);
	Info_AddChoice	(Info_Mod_Harad_LehrlingQuest8, "But maybe get it out.", Info_Mod_Harad_LehrlingQuest8_A);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest8_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_B_15_00"); //I don't want to. You just deserved to go mouldy in there.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_B_09_01"); //Now the last person is also falling in my back.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_FOUR, LOG_FAILED);

	Mod_HaradLehrling_Kap4 = 2;

	Mod_HaradLehrling_SterbTag = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest8);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest8_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_A_15_00"); //But maybe get it out.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_A_09_01"); //But how?
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_A_15_02"); //Don't you have any ideas?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_A_09_03"); //No. Boltan won't be bribed anyway.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_A_15_04"); //Then I'll have to think of something.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_A_09_05"); //It's not gonna work anyway.

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest8);

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "Harad has no idea how to free him.");
};

INSTANCE Info_Mod_Harad_LehrlingQuest9 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest9_Condition;
	information	= Info_Mod_Harad_LehrlingQuest9_Info;
	permanent	= 0;
	important	= 0;
	description	= "There's a way you can get out.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest9_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_HaradLehrling2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest9_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest9_15_00"); //There's a way you can get out.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest9_09_01"); //There are a few options, the only question is whether or not I'm considering them.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest9_15_02"); //The Paladins demand that you forge for them instead of the mercenaries.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest9_09_03"); //These grimaces have taken away my honor. I won't bend a finger for them!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest9_15_04"); //I could work for the Paladin. And you're doing your own stuff.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest9_09_05"); //But I won't let you go to my forge!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest9_15_06"); //All right, that's enough for me now. I'll look around for my own assignments.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest9_09_07"); //(toxic) Yeah, forget who gave you all your knowledge! Just let me down!

	B_StartOtherRoutine	(Mod_980_MIL_Olav_NW, "START");
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_44);

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "Since I can't expect any help from Harad, I decided to leave him where he is. I should offer my help to the paladins or the mercenaries themselves.");
};

INSTANCE Info_Mod_Harad_LehrlingQuest10 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest10_Condition;
	information	= Info_Mod_Harad_LehrlingQuest10_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you still like it?";
};

FUNC INT Info_Mod_Harad_LehrlingQuest10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_HaradLehrling3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest10_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest10_15_00"); //Do you still like it?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest10_09_01"); //(threatening) Just leave me alone.
};

INSTANCE Info_Mod_Harad_Blutkelch (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Blutkelch_Condition;
	information	= Info_Mod_Harad_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need a particularly hard pickaxe. You got anything like that?";
};

FUNC INT Info_Mod_Harad_Blutkelch_Condition()
{
	if (Mod_ASS_Blutkelch3 == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Blutkelch_15_00"); //I need a particularly hard pickaxe. You got anything like that?
	AI_Output(self, hero, "Info_Mod_Harad_Blutkelch_28_01"); //No. I only make real weapons.
	AI_Output(hero, self, "Info_Mod_Harad_Blutkelch_15_02"); //And who could help me?
	AI_Output(self, hero, "Info_Mod_Harad_Blutkelch_28_03"); //How should I know? The man himself is the man.
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis_Condition()
{
	if (Mod_AndreSchwert == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis_28_00"); //Aren't you the one to succeed Andre?
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis_15_01"); //Yeah, that's right.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis_28_02"); //Andre was a good-for-nothing who kept poking me into work.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis_28_03"); //I hope you don't become like him.
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis2 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis2_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Andre left me this sword and said you could forge it for me.";
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_AndreVermaechtnis))
	&& (Npc_HasItems(hero, ItMi_Schmelzschwert) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_15_00"); //Andre left me this sword and said you could forge it for me.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_01"); //Let me see that.

	EquipWeapon	(self, Weltenspalter);

	AI_ReadyMeleeWeapon	(self);
	AI_PlayAni	(self, "T_1HSINSPECT");
	AI_RemoveWeapon	(self);

	AI_UnequipWeapons	(self);

	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_02"); //I know that sword! He used it to pierce the demon.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_15_03"); //What are you talking about?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_04"); //Many years ago, when I was doing the annoying military service, I fought with Andre on the battlefield in the war against the Orcs.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_05"); //We had just wiped out the enemy army and the victory in the battle seemed certain when some orcish shamans conjured up a mighty fire demon.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_06"); //He began to rage in our ranks and mercilessly scorched many paladins and warriors with his flames.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_07"); //Then Andre stormed forward and pushed his sword into the chest of the monster, which was instantly dead.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_08"); //But the fire in his chest was so hot that the steel melted.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_15_09"); //What? It must have been like a forge.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_10"); //No... much hotter.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_11"); //It was a sword of the highest quality, forged in the mines of Nordmars, blessed in the monastery and bearing the seal of fire.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_12"); //A blade like only a few paladins had at that time... and even less so today.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_28_13"); //Andre inherited it from his father.

	Info_ClearChoices	(Info_Mod_Harad_AndreVermaechtnis2);

	Info_AddChoice	(Info_Mod_Harad_AndreVermaechtnis2, "Why wasn't the blade reforged for Andre?", Info_Mod_Harad_AndreVermaechtnis2_B);
	Info_AddChoice	(Info_Mod_Harad_AndreVermaechtnis2, "Why are such blades so rare nowadays?", Info_Mod_Harad_AndreVermaechtnis2_A);
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_C()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_C_15_00"); //Will you reforge the sword for me?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_C_28_01"); //I don't feel very much like it, because I don't owe Andre anything. But I hope you'll show your gratitude when I do. For you.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_C_28_02"); //But you should know that such a sword only unfolds its full power in the hands of a paladin and true believers.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_C_28_03"); //An unbeliever, on the other hand, will feel the wrath of Inno if he tries to put on the weapon.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_C_28_04"); //Anyway, should I make the sword as a one-hand or two-handed weapon?

	Info_ClearChoices	(Info_Mod_Harad_AndreVermaechtnis2);

	Info_AddChoice	(Info_Mod_Harad_AndreVermaechtnis2, "Two-handed.", Info_Mod_Harad_AndreVermaechtnis2_E);
	Info_AddChoice	(Info_Mod_Harad_AndreVermaechtnis2, "One-handed.", Info_Mod_Harad_AndreVermaechtnis2_D);
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_B_15_00"); //Why wasn't the blade reforged for Andre?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_B_28_01"); //The heat that melted the sword also scorched his hand.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_B_28_02"); //He could never carry a gun like he did back then again. Instead, he was elevated to captain. If only his hand hadn't been damaged...
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_B_28_03"); //He kept the melted sword as a souvenir.

	Mod_AndreSchwert_Counter += 1;

	if (Mod_AndreSchwert_Counter == 2)
	{
		Info_Mod_Harad_AndreVermaechtnis2_C();
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_A_15_00"); //Why are such blades so rare nowadays?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_A_28_01"); //Well, why don't you take a look around the mainland? The art of forging is crippled by the incompetent.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_A_28_02"); //The orcs invade from all sides, the kingdom threatens to fall apart.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_A_28_03"); //Today you have to make sure that you find enough ore and iron to equip each fighter with a simple weapon.

	Mod_AndreSchwert_Counter += 1;

	if (Mod_AndreSchwert_Counter == 2)
	{
		Info_Mod_Harad_AndreVermaechtnis2_C();
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_F()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_F_28_00"); //That's what I'll do. However, it will take me a few days.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_F_28_01"); //When I'm done, I'll let you know.

	Info_ClearChoices	(Info_Mod_Harad_AndreVermaechtnis2);

	Mod_AndreSchwert_Tag = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Harad will forge the sword. However, it will take him a few days.");
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_E()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_E_15_00"); //Two-handed.

	Mod_AndreSchwert_Art = 2;

	Info_Mod_Harad_AndreVermaechtnis2_F();
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_D()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_D_15_00"); //One-handed.

	Mod_AndreSchwert_Art = 1;

	Info_Mod_Harad_AndreVermaechtnis2_F();
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis3 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis3_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_AndreVermaechtnis2))
	&& (Mod_AndreSchwert_Tag-2 < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis3_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_00"); //It's done! The sword is newly forged.

	if (Mod_AndreSchwert_Art == 1)
	{
		B_GiveInvItems	(self, hero, ItMw_1H_Blessed_01, 1);
	}
	else
	{
		B_GiveInvItems	(self, hero, ItMw_2H_Blessed_01, 1);
	};

	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_01"); //You can be proud and fortunate at Innos to carry such a weapon.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis3_15_02"); //Yes, the weapon seems to be a very special source of strength.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_03"); //That's what I mean. Besides, she's been worked on by me. However, it will not regain its true power until after such a long time, when it is consecrated again.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis3_15_04"); //Consecration?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_05"); //Each paladin sword was consecrated before it was placed in the hands of an Innos pendant.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_06"); //In particular, it has the power to banish undead and demonic creatures.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_07"); //For the consecration you must go to the monastery and speak with a magician of Innos.... I think it was Marduk.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_28_08"); //Then the power of the sword will grow.

	B_GivePlayerXP	(1000);

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_SUCCESS);
	Log_CreateTopic	(TOPIC_MOD_MILIZ_INNOSKLINGE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_INNOSKLINGE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Harad said that I should have the sword consecrated at the monastery near Marduk.");
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis4 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis4_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis4_Condition()
{
	if (Npc_KnowsInfo(hero, PC_PrayShrine_BlessSword))
	&& (Mod_Gilde == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis4_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_28_00"); //You did the consecration?
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis4_15_01"); //Yes, and the power of the sword has grown.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_28_02"); //That's just.... fantastic. Now the blade is perfect. Hmm, where...
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis4_15_03"); //Yes?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_28_04"); //I remember traditions that apart from the simple consecration of the sword, there was also a pilgrimage for such blades to perfect the blade.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_28_05"); //But maybe it was just rumors. It's been a long time.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis4_15_06"); //What do you think?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_28_07"); //I really don't remember.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_28_08"); //If I had a little more reading, I would probably have a look at the monastery library.... but my trade is the steel.

	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Harad mentioned something about a pilgrimage path that could make the blade even more powerful. He didn't know anything more specific. Maybe the monastery library can help me.");

	Wld_InsertItem	(ItWr_Innosklinge, "FP_ITEM_INNOSKLINGENBUCH");
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis5 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis5_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis5_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a possible clue.";
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis5_Condition()
{
	if (Mod_AndreSchwert_Test == 2)
	&& (Npc_HasItems(hero, ItWr_Innosklinge) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis5_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_00"); //I have a possible clue.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_01"); //Let me see.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_02"); //Aha... so, so... interesting. Hmm... the warrior's call.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_03"); //Yes?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_04"); //Let me think about it.... Yeah, that could be it...
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_05"); //I'm all ears.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_06"); //The call of the warrior.... could mean Dominique's reputation.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_07"); //It is said to have been a lyrics that the paladins once played before they went into battle.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_08"); //That was a long time ago.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_09"); //I think I remember a myth that in this context actually spoke of the holy fire that pervaded the warrior and his blade.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_10"); //So maybe more than just a metaphor?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_11"); //That would be just.... unbelievable. And you could be the one who might find out.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_12"); //However, I would have to have this text for that.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_13"); //Wait a minute.... I think Ingmar might be able to help you with that.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_14"); //Like no other paladin he is enthusiastic about poems and songs about war and faith.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_15"); //Then I'll try him.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_28_16"); //Yeah, do that. And let me know when you get it.

	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "As I heard from Harad, it is possible that the lyrics refer to the song' Dominiques Ruf'. Paladin Ingmar might still have this one.");
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis6 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis6_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ingmar_Innosklinge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis6_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_28_00"); //Did you get the lines?
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis6_15_01"); //Yes, he did have it.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_28_02"); //So now you can set off on the pilgrimage... when you have everything you need.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_28_03"); //The lyrics said the things you need as you move from shrine to shrine and each time you speak a part of the lyrics.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_28_04"); //And once you're done with that, hopefully the sword will have new qualities.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_28_05"); //Good luck with that. And remember who gave you all the valuable clues!

	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Now I can go on the pilgrimage.");
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis7 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis7_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis7_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis7_Condition()
{
	if (Npc_KnowsInfo(hero, PC_PrayShrine_BlessSword_05))
	&& ((Npc_HasItems(hero, ItMw_1H_Blessed_03) == 1)
	|| (Npc_HasItems(hero, ItMw_2H_Blessed_03) == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis7_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_28_00"); //So, did you complete the consecration?
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis7_15_01"); //Yeah, it actually worked.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_28_02"); //Let me see...

	EquipWeapon	(self, ItMw_2H_Blessed_03);

	AI_ReadyMeleeWeapon	(self);
	AI_PlayAni	(self, "T_1HSINSPECT");
	AI_RemoveWeapon	(self);

	AI_UnequipWeapons	(self);	

	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_28_03"); //That's right, this is a unique sword now. (enthusiastic) My and Innos' powers united in one blade...
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis7_15_04"); //All right, all right. Thanks anyway for your help.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_28_05"); //One helps where one can.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_28_06"); //Take good care of my sword and don't give it to any of the money-grubbing paladins!

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_INNOSKLINGE, LOG_SUCCESS);

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Harad_Anschlagtafel (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Anschlagtafel_Condition;
	information	= Info_Mod_Harad_Anschlagtafel_Info;
	permanent	= 1;
	important	= 0;
	description	= "I saw your poster on the billboard...";
};

FUNC INT Info_Mod_Harad_Anschlagtafel_Condition()
{
	if (Mod_Anschlagtafel_Khorinis_Harad == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Anschlagtafel_Info()
{
	B_Say	(hero, self, "$ANSCHLAGTAFEL01");

	if (Npc_HasItems(hero, ItMw_1h_MISC_Sword) >= Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert)
	&& (Npc_HasItems(hero, ItMw_2H_Sword_M_01) >= Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender)
	&& (Npc_HasItems(hero, ItMi_GoldNugget_Addon) >= Mod_Anschlagtafel_Khorinis_Harad_Goldbrocken)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= Mod_Anschlagtafel_Khorinis_Harad_Erzbrocken)
	&& (Npc_HasItems(hero, ItMw_1H_Mace_L_04) >= Mod_Anschlagtafel_Khorinis_Harad_Schmiedehammer)
	&& (Npc_HasItems(hero, ItMi_Pliers) >= Mod_Anschlagtafel_Khorinis_Harad_Zange)
	&& (Npc_HasItems(hero, ItMw_1H_Mace_L_01) >= Mod_Anschlagtafel_Khorinis_Harad_Schuerhaken)
	&& (Npc_HasItems(hero, ItMiSwordraw) >= Mod_Anschlagtafel_Khorinis_Harad_Rohstahl)
	{
		Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword, Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert);
		Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01, Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender);
		Npc_RemoveInvItems	(hero, ItMi_GoldNugget_Addon, Mod_Anschlagtafel_Khorinis_Harad_Goldbrocken);
		Npc_RemoveInvItems	(hero, ItMi_Nugget, Mod_Anschlagtafel_Khorinis_Harad_Erzbrocken);
		Npc_RemoveInvItems	(hero, ItMw_1H_Mace_L_04, Mod_Anschlagtafel_Khorinis_Harad_Schmiedehammer);
		Npc_RemoveInvItems	(hero, ItMi_Pliers, Mod_Anschlagtafel_Khorinis_Harad_Zange);
		Npc_RemoveInvItems	(hero, ItMw_1H_Mace_L_01, Mod_Anschlagtafel_Khorinis_Harad_Schuerhaken);
		Npc_RemoveInvItems	(hero, ItMiSwordraw, Mod_Anschlagtafel_Khorinis_Harad_Rohstahl);

		AI_Output(self, hero, "Info_Mod_Harad_Anschlagtafel_28_00"); //What? Show me... In fact, all of it. Not in best condition, but still usable.
		AI_Output(self, hero, "Info_Mod_Harad_Anschlagtafel_28_01"); //Here's your reward.

		B_GiveInvItems	(self, hero, ItMi_Gold, Mod_Anschlagtafel_Khorinis_Harad_Gold);

		AI_Output(self, hero, "Info_Mod_Harad_Anschlagtafel_28_02"); //Better quality next time, please, yes?

		if (Mod_Anschlagtafel_Khorinis_Harad_Gold < 200)
		{
			B_GivePlayerXP	(300);
		}
		else if (Mod_Anschlagtafel_Khorinis_Harad_Gold < 400)
		{
			B_GivePlayerXP	(400);
		}
		else if (Mod_Anschlagtafel_Khorinis_Harad_Gold < 600)
		{
			B_GivePlayerXP	(500);
		}
		else
		{
			B_GivePlayerXP	(600);
		};

		Mod_Anschlagtafel_Khorinis_Harad = 0;
		Mod_Anschlagtafel_Khorinis_Harad_Cooldown = 3600;

		Npc_RemoveInvItems	(hero, ItWr_Anschlagtafel_Harad, 1);
	}
	else
	{
		B_Say	(hero, self, "$ANSCHLAGTAFEL02");
	};
};

INSTANCE Info_Mod_Harad_Staerke (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Staerke_Condition;
	information	= Info_Mod_Harad_Staerke_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to get stronger.";
};

FUNC INT Info_Mod_Harad_Staerke_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Job))
	&& (hero.attribute[ATR_STRENGTH]	<	120)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Staerke_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Staerke_15_00"); //I want to be stronger.

	Info_ClearChoices	(Info_Mod_Harad_Staerke);

	Info_AddChoice 		(Info_Mod_Harad_Staerke, DIALOG_BACK, Info_Mod_Harad_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_5);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_1);
};

FUNC VOID Info_Mod_Harad_Staerke_BACK()
{
	Info_ClearChoices	(Info_Mod_Harad_Staerke);
};

func void Info_Mod_Harad_Staerke_1()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 1, 120);

	Info_ClearChoices	(Info_Mod_Harad_Staerke);
	Info_AddChoice		(Info_Mod_Harad_Staerke, DIALOG_BACK, Info_Mod_Harad_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_5);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_1);
};

// ------ 5 Stärke ------
func void Info_Mod_Harad_Staerke_5()
{
	B_TeachAttributePoints_New (self, other, ATR_STRENGTH, 5, 120);
	
	Info_ClearChoices	(Info_Mod_Harad_Staerke);
	Info_AddChoice		(Info_Mod_Harad_Staerke, DIALOG_BACK, Info_Mod_Harad_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_5);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_1);
};

INSTANCE Info_Mod_Harad_Schmieden (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Schmieden_Condition;
	information	= Info_Mod_Harad_Schmieden_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me forging.";
};

FUNC INT Info_Mod_Harad_Schmieden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Job))
	&& ((PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	|| (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	|| (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	|| (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	|| (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Schmieden_15_00"); //Teach me forging.

	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Learn to forge "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_BACK()
{
	Info_ClearChoices	(Info_Mod_Harad_Schmieden);
};

FUNC VOID Info_Mod_Harad_Schmieden_Common()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_Common)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Common_28_01"); //It's very simple, boy. Get yourself a piece of crude steel, keep it in the fire until it glows.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Common_28_02"); //Then you'll strike the blade right on the anvil.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Common_28_03"); //Your first swords won't be masterpieces, but you can learn everything else later.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Learn to forge "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Harad01()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_1H_Harad_01)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad01_28_01"); //It's very simple, boy. Get yourself a piece of crude steel, keep it in the fire until it glows.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad01_28_02"); //Then you'll strike the blade right on the anvil.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Learn to forge "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Harad02()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_1H_Harad_02)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad02_28_01"); //It's very simple, boy. Get yourself a piece of crude steel, keep it in the fire until it glows.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad02_28_02"); //Then you'll strike the blade right on the anvil.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Learn to forge "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Harad03()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_1H_Harad_03)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad03_28_01"); //It's very simple, boy. Get yourself a piece of crude steel, keep it in the fire until it glows.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad03_28_02"); //Then you'll strike the blade right on the anvil.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Learn to forge "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Harad04()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_1H_Harad_04)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad04_28_01"); //It's very simple, boy. Get yourself a piece of crude steel, keep it in the fire until it glows.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad04_28_02"); //Then you'll strike the blade right on the anvil.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Learn to forge "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

INSTANCE Info_Mod_Harad_Verkaufen (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Verkaufen_Condition;
	information	= Info_Mod_Harad_Verkaufen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to sell the weapons I forged.";
};

FUNC INT Info_Mod_Harad_Verkaufen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Job))
	&& (Mod_HaradLehrling_Kap4 == 0) {
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Verkaufen_Info()
{
	AI_Output (hero, self, "Info_Mod_Harad_Verkaufen_15_00"); //I want to sell my forged weapons.
	
	AI_UnequipWeapons	(hero);
	
	var int anzahl_common; anzahl_common = Npc_HasItems (hero, ItMw_1H_Common_01);
	var int anzahl_schwert1; anzahl_schwert1 = Npc_HasItems (hero, ItMw_Schwert1);
	var int anzahl_schwert4; anzahl_schwert4 = Npc_HasItems (hero, ItMw_Schwert4);
	var int anzahl_rubinklinge; anzahl_rubinklinge = Npc_HasItems (hero, ItMw_Rubinklinge);
	var int anzahl_elbastardo; anzahl_elbastardo = Npc_HasItems (hero, ItMw_ElBastardo);
	
	var int anzahl_common_stark; anzahl_common = Npc_HasItems (hero, ItMw_1H_Common_01_Stark);
	var int anzahl_schwert1_stark; anzahl_schwert1 = Npc_HasItems (hero, ItMw_Schwert1_Stark);
	var int anzahl_schwert4_stark; anzahl_schwert4 = Npc_HasItems (hero, ItMw_Schwert4_Stark);
	var int anzahl_rubinklinge_stark; anzahl_rubinklinge = Npc_HasItems (hero, ItMw_Rubinklinge_Stark);
	var int anzahl_elbastardo_stark; anzahl_elbastardo = Npc_HasItems (hero, ItMw_ElBastardo_Stark);
	
	var int gesamt; gesamt = (anzahl_common + anzahl_schwert1 + anzahl_schwert4 + anzahl_rubinklinge + anzahl_elbastardo + anzahl_common_stark + anzahl_schwert1_stark + anzahl_schwert4_stark + anzahl_rubinklinge_stark + anzahl_elbastardo_stark);
	
	if (gesamt == 0)
	{
		AI_Output (self, hero, "Info_Mod_Harad_Verkaufen_28_01"); //Then make some! I only accept simple swords.
	}
	else //(gesamt >= 1) - die verbeliebenden Klingen verkaufen ------
	{
		AI_Output (self, hero, "Info_Mod_Harad_Verkaufen_28_02"); //All right, give it to me.
		
		Npc_RemoveInvItems (hero, ItMw_1H_Common_01, anzahl_common);
		Npc_RemoveInvItems (hero, ItMw_Schwert1, anzahl_Schwert1);
		Npc_RemoveInvItems (hero, ItMw_Schwert4, anzahl_Schwert4);
		Npc_RemoveInvItems (hero, ItMw_Rubinklinge, anzahl_Rubinklinge);
		Npc_RemoveInvItems (hero, ItMw_ElBastardo, anzahl_ElBastardo);
		
		Npc_RemoveInvItems (hero, ItMw_1H_Common_01_Stark, anzahl_common_stark);
		Npc_RemoveInvItems (hero, ItMw_Schwert1_Stark, anzahl_Schwert1_stark);
		Npc_RemoveInvItems (hero, ItMw_Schwert4_Stark, anzahl_Schwert4_stark);
		Npc_RemoveInvItems (hero, ItMw_Rubinklinge_Stark, anzahl_Rubinklinge_stark);
		Npc_RemoveInvItems (hero, ItMw_ElBastardo_Stark, anzahl_ElBastardo_stark);
		
		var string concatText;
		concatText = ConcatStrings(IntToString(gesamt), PRINT_ItemsGegeben);		// "x Gegenstände gegeben"
		AI_PrintScreen (concatText, -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
				
		AI_Output (self, hero, "Info_Mod_Harad_Verkaufen_28_03"); //Here's your paycheck.
		var int lohn;
		lohn = ((anzahl_common + anzahl_common_stark) * Value_Common1) + ((anzahl_schwert1 + anzahl_schwert1_stark) * Value_Schwert1) + ((anzahl_schwert4 + anzahl_schwert4_stark) * Value_Schwert4) + ((anzahl_rubinklinge + anzahl_rubinklinge) * Value_Rubinklinge) + ((anzahl_elbastardo + anzahl_elbastardo) * Value_ElBastardo);
				
		lohn = (lohn / 3);
		
		B_GiveInvItems (self, hero, ItMi_Gold, lohn);
	};
};

INSTANCE Info_Mod_Harad_Pfeilspitzen (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Pfeilspitzen_Condition;
	information	= Info_Mod_Harad_Pfeilspitzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bosper thinks you could teach me to forge arrowheads.";
};

FUNC INT Info_Mod_Harad_Pfeilspitzen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Spitzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Pfeilspitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Pfeilspitzen_15_00"); //Bosper thinks you could teach me to forge arrowheads.
	AI_Output(self, hero, "Info_Mod_Harad_Pfeilspitzen_28_01"); //Yeah, if that's absolutely necessary.
};

INSTANCE Info_Mod_Harad_Spitzen (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Spitzen_Condition;
	information	= Info_Mod_Harad_Spitzen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring me to forge arrowheads (2 LP)";
};

FUNC INT Info_Mod_Harad_Spitzen_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Harad_Spitzen.description = "Bring me some arrowheads to forge (200 gold)";
	}
	else
	{
		Info_Mod_Harad_Spitzen.description = "Bring me to forge arrowheads (2 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Pfeilspitzen))
	&& (Mod_PfeileSpitzen == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Spitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Spitzen_15_00"); //Bring me some arrowhead forging.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 2))
	{
		AI_Output(self, hero, "Info_Mod_Harad_Spitzen_06_01"); //Take a piece of crude steel and go to an anvil. You will get about 10 arrowheads from one piece of crude steel.

		Mod_PfeileSpitzen = TRUE;

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
		AI_Output (self, hero, "Info_Mod_Harad_Spitzen_06_02"); //Come back when you're ready.
	};
};

INSTANCE Info_Mod_Harad_Pickpocket (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Pickpocket_Condition;
	information	= Info_Mod_Harad_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Harad_Pickpocket_Condition()
{
	C_Beklauen	(85, ItMiSwordRaw, 18);
};

FUNC VOID Info_Mod_Harad_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

	Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_BACK, Info_Mod_Harad_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Harad_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Harad_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Harad_Pickpocket);
};

FUNC VOID Info_Mod_Harad_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

		Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Harad_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Harad_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Harad_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Harad_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Harad_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Harad_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Harad_EXIT (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_EXIT_Condition;
	information	= Info_Mod_Harad_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Harad_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Harad_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
