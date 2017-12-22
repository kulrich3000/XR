INSTANCE Info_Mod_Uriela_GoOutOfHere (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_GoOutOfHere_Condition;
	information	= Info_Mod_Uriela_GoOutOfHere_Info;
	permanent	= 1;
	important	= 0;
	description	= "Leave this house and get the hell out of here!";
};

FUNC INT Info_Mod_Uriela_GoOutOfHere_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hausbesetzer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_GoOutOfHere_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_GoOutOfHere_15_00"); //Leave this house and get the hell out of here!
	AI_Output(self, hero, "Info_Mod_Uriela_GoOutOfHere_17_01"); //No, we won't be driven away from here.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Uriela_WhoAreYou (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_WhoAreYou_Condition;
	information	= Info_Mod_Uriela_WhoAreYou_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you and what are you doing here?";
};

FUNC INT Info_Mod_Uriela_WhoAreYou_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hausbesetzer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_WhoAreYou_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_WhoAreYou_15_00"); //Who are you and what are you doing here?
	AI_Output(self, hero, "Info_Mod_Uriela_WhoAreYou_17_01"); //We are believing Beliaran followers who had to flee from the island of Khorala and are looking for a new place to stay.
};

INSTANCE Info_Mod_Uriela_WhyFlight (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_WhyFlight_Condition;
	information	= Info_Mod_Uriela_WhyFlight_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why did you have to flee?";
};

FUNC INT Info_Mod_Uriela_WhyFlight_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_WhoAreYou))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_WhyFlight_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_WhyFlight_15_00"); //Why did you have to flee?
	AI_Output(self, hero, "Info_Mod_Uriela_WhyFlight_17_01"); //The minions of a wicked magician named Xeres entered our settlement and demanded that we deny Beliar and serve their Lord instead.
	AI_Output(self, hero, "Info_Mod_Uriela_WhyFlight_17_02"); //We refused steadfastly and were attacked by them.
	AI_Output(self, hero, "Info_Mod_Uriela_WhyFlight_17_03"); //As it turned out, they too were masters of the spherical manifestation and they also managed to bring some of our creatures under their control.
	AI_Output(self, hero, "Info_Mod_Uriela_WhyFlight_17_04"); //We lost and could only save ourselves by a quick teleport spell on this island - as some of the few survivors.
};

INSTANCE Info_Mod_Uriela_FarmWorking (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_FarmWorking_Condition;
	information	= Info_Mod_Uriela_FarmWorking_Info;
	permanent	= 0;
	important	= 0;
	description	= "This farm is already inhabited by some people.";
};

FUNC INT Info_Mod_Uriela_FarmWorking_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_WhyFlight))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_FarmWorking_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_FarmWorking_15_00"); //This farm is already inhabited by some people.
	AI_Output(self, hero, "Info_Mod_Uriela_FarmWorking_17_01"); //And?! What are we supposed to do? We also need shelter.
};

INSTANCE Info_Mod_Uriela_LiveTogether (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_LiveTogether_Condition;
	information	= Info_Mod_Uriela_LiveTogether_Info;
	permanent	= 0;
	important	= 0;
	description	= "Couldn't you live here with them?";
};

FUNC INT Info_Mod_Uriela_LiveTogether_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_FarmWorking))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_LiveTogether_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_LiveTogether_15_00"); //Couldn't you live here with them?
	AI_Output(self, hero, "Info_Mod_Uriela_LiveTogether_17_01"); //With them?! They're probably but servants Innos'. How would that work?
	AI_Output(hero, self, "Info_Mod_Uriela_LiveTogether_15_02"); //They, too, have suffered losses from the very same fiend. He is a danger to all the servants of Inno, as well as to Beliar's servants.
	AI_Output(self, hero, "Info_Mod_Uriela_LiveTogether_17_03"); //Hmm, you may be right. In these circumstances, I have no objection to temporary cooperation.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_TELBOR_HAUSBESETZER, "They are Beliar's servants who had to flee from Xeres's henchmen. They would agree to live together with the others on the farm for some time. I hope that Telbor can also be won over.");
};

INSTANCE Info_Mod_Uriela_LiveOtherway (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_LiveOtherway_Condition;
	information	= Info_Mod_Uriela_LiveOtherway_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can't you imagine going somewhere else after all?";
};

FUNC INT Info_Mod_Uriela_LiveOtherway_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_TalkAgain))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_LiveOtherway_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_LiveOtherway_15_00"); //Can't you imagine going somewhere else after all?
	AI_Output(self, hero, "Info_Mod_Uriela_LiveOtherway_17_01"); //What?! But where are you going? Until we have another option, we'll stay here.
};

INSTANCE Info_Mod_Uriela_ThinkForPlace (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_ThinkForPlace_Condition;
	information	= Info_Mod_Uriela_ThinkForPlace_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well, let me think, maybe I'll think of something.";
};

FUNC INT Info_Mod_Uriela_ThinkForPlace_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_LiveOtherway))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_ThinkForPlace_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_ThinkForPlace_15_00"); //Well, let me think, maybe I'll think of something.
};

INSTANCE Info_Mod_Uriela_MageAndFighter (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_MageAndFighter_Condition;
	information	= Info_Mod_Uriela_MageAndFighter_Info;
	permanent	= 0;
	important	= 0;
	description	= "You are magically gifted, you surely know something about agriculture (... )";
};

FUNC INT Info_Mod_Uriela_MageAndFighter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_ThinkForPlace))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_MageAndFighter_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_MageAndFighter_15_00"); //You're magically gifted, have some knowledge of agriculture and can probably fight with weapons.
	AI_Output(hero, self, "Info_Mod_Uriela_MageAndFighter_15_01"); //The demon magicians or demonic warriors or the big farm will certainly take you in.
	AI_Output(self, hero, "Info_Mod_Uriela_MageAndFighter_17_02"); //We are magically gifted, but we don't understand ourselves on rune-bound magic.
	AI_Output(self, hero, "Info_Mod_Uriela_MageAndFighter_17_03"); //And my son isn't so good at fighting with weapons.
};

INSTANCE Info_Mod_Uriela_Bengar (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_Bengar_Condition;
	information	= Info_Mod_Uriela_Bengar_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bengar's farm is deserted.";
};

FUNC INT Info_Mod_Uriela_Bengar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_ThinkForPlace))
	&& (Mod_BengarsHofLeer == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_Bengar_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_Bengar_15_00"); //Bengar's farm is deserted. You have to cross the bridge and turn right the next time, onto the pasture plateau.
	AI_Output(self, hero, "Info_Mod_Uriela_Bengar_17_01"); //Sounds good, and if we can avoid further conflicts in this way...

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATBENGAR");
	B_StartOtherRoutine	(Mod_7168_HEX_Hexe_NW, "ATBENGAR");
	B_StartOtherRoutine	(Mod_7169_OUT_Mann_NW, "ATBENGAR");
	B_StartOtherRoutine	(Mod_7170_OUT_Mann_NW, "ATBENGAR");

	Wld_InsertNpc	(FeldarbeiterSkelett_Bengar, "FARM3");

	B_GivePlayerXP	(300);

	B_LogEntry	(TOPIC_MOD_TELBOR_HAUSBESETZER, "Well, the Belians are heading for their new home. Now all I have to do is let Telbor know that the house is free again.");
};

INSTANCE Info_Mod_Uriela_TeachMage (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_TeachMage_Condition;
	information	= Info_Mod_Uriela_TeachMage_Info;
	permanent	= 0;
	important	= 0;
	description	= "(Teach Circle 1 and 2 of Runemagic)";
};

FUNC INT Info_Mod_Uriela_TeachMage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_MageAndFighter))
	&& (Mod_MagieKreis >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_TeachMage_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_TeachMage_15_00"); //The first circle allows you to use the runes you have created.
	AI_Output(hero, self, "Info_Mod_Uriela_TeachMage_15_01"); //You can now learn the spell formulas to create your own runes.
	AI_Output(hero, self, "Info_Mod_Uriela_TeachMage_15_02"); //Step into the second circle and learn to cast even more powerful spells.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Uriela_TeachingFinished (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_TeachingFinished_Condition;
	information	= Info_Mod_Uriela_TeachingFinished_Info;
	permanent	= 0;
	important	= 0;
	description	= "I taught you.";
};

FUNC INT Info_Mod_Uriela_TeachingFinished_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_TeachMage))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mann_TeachFight))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_TeachingFinished_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_TeachingFinished_15_00"); //I taught you.

	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_TeachMage))
	{
		AI_Output(hero, self, "Info_Mod_Uriela_TeachingFinished_15_01"); //You are now powerful in rune magic.
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Mann_TeachFight))
	{
		AI_Output(hero, self, "Info_Mod_Uriela_TeachingFinished_15_02"); //Your son can fight.
	};

	AI_Output(self, hero, "Info_Mod_Uriela_TeachingFinished_17_03"); //Thank you very much. Now we can look elsewhere and do more than just pick turnips.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATDEMON");
	B_StartOtherRoutine	(Mod_7168_HEX_Hexe_NW, "ATDEMON");
	B_StartOtherRoutine	(Mod_7169_OUT_Mann_NW, "ATDEMON");
	B_StartOtherRoutine	(Mod_7170_OUT_Mann_NW, "ATDEMON");

	B_GivePlayerXP	(300);

	B_LogEntry	(TOPIC_MOD_TELBOR_HAUSBESETZER, "Well, the Belians are heading for their new home. Now all I have to do is let Telbor know that the house is free again.");
};

INSTANCE Info_Mod_Uriela_Verbatscht (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_Verbatscht_Condition;
	information	= Info_Mod_Uriela_Verbatscht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Uriela_Verbatscht_Condition()
{
	if (Mod_UrielaCo_Weg == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_Verbatscht_Info()
{
	AI_Output(self, hero, "Info_Mod_Uriela_Verbatscht_17_00"); //Damn it, Beliar shall punish you for doing this, you scoundrel.

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Uriela_Irdorath (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_Irdorath_Condition;
	information	= Info_Mod_Uriela_Irdorath_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Uriela_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_Irdorath_Info()
{
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath_17_00"); //Nice to see you again. How have you been?
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath_17_01"); //Any news worth mentioning?
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath_15_02"); //Well, I'm still alive and I sent some nasty beasts to the kingdom of Beliar.
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath_15_03"); //With magic and on Schuster's Rappen I visited many spots of the island, but where I have to go next, only a ship can transport me.
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath_17_04"); //Actually, you're planning an ocean voyage?
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath_15_05"); //Yes, to an island to place the footman of the dark Xerere....
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath_17_06"); //What?! The loathsome magician who is responsible for the destruction of my settlement, the one who seeks to banish my Lord Beliar?
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath_15_07"); //This one right here.
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath_17_08"); //If it is within your means, please allow me to accompany you on this excursion.
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath_17_09"); //It would be important to me. Finally the satisfaction of taking revenge on the wicked man for his wrongdoings....
};

INSTANCE Info_Mod_Uriela_Irdorath2 (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_Irdorath2_Condition;
	information	= Info_Mod_Uriela_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Then I am looking forward to enriching the team with someone who understands witch magic.";
};

FUNC INT Info_Mod_Uriela_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath2_15_00"); //Then I am looking forward to enriching the team with someone who understands witch magic. Come into town to the harbour.
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath2_17_01"); //I will, I will.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Uriela is looking for revenge on Xeres and will wait at the harbour.");

	B_GivePlayerXP	(100);

	Mod_UrielaDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Uriela_Irdorath3 (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_Irdorath3_Condition;
	information	= Info_Mod_Uriela_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems we're too many.";
};

FUNC INT Info_Mod_Uriela_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_UrielaDabei == 1)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath3_15_00"); //I'm sorry, but it seems we're too many. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath3_17_01"); //Too bad. I'll go back then. You know where to find me if there's ever gonna be a seat left.

	Mod_UrielaDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Uriela_Irdorath4 (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_Irdorath4_Condition;
	information	= Info_Mod_Uriela_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I can give you a ride.";
};

FUNC INT Info_Mod_Uriela_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_UrielaDabei == 0)
	&& (Mod_CedricDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Uriela_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Uriela_Irdorath4_15_00"); //I can give you a ride. There's room on the ship.
	AI_Output(self, hero, "Info_Mod_Uriela_Irdorath4_17_01"); //Very well, I'll be back at the harbour.

	Mod_UrielaDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Uriela_EXIT (C_INFO)
{
	npc		= Mod_7167_HEX_Uriela_NW;
	nr		= 1;
	condition	= Info_Mod_Uriela_EXIT_Condition;
	information	= Info_Mod_Uriela_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Uriela_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Uriela_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
