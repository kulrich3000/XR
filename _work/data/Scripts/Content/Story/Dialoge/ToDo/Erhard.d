INSTANCE Info_Mod_Erhard_NeuHier (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_NeuHier_Condition;
	information	= Info_Mod_Erhard_NeuHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm new here. How do I get to Khorata fastest?";
};

FUNC INT Info_Mod_Erhard_NeuHier_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_August_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_NeuHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_NeuHier_15_00"); //I'm new here. How do I get to Khorata fastest?
	AI_Output(self, hero, "Info_Mod_Erhard_NeuHier_06_01"); //A new one? And no dealer? It's not often that we get visitors.
	AI_Output(self, hero, "Info_Mod_Erhard_NeuHier_06_02"); //The shortest way leads behind my house through a narrow rocky pass.
	AI_Output(self, hero, "Info_Mod_Erhard_NeuHier_06_03"); //Then you will find a road leading left to the city gate.
};

INSTANCE Info_Mod_Erhard_Arbeit (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Arbeit_Condition;
	information	= Info_Mod_Erhard_Arbeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have you got work for me?";
};

FUNC INT Info_Mod_Erhard_Arbeit_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Erhard_Arbeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Arbeit_15_00"); //Do you have a job for me?
	AI_Output(self, hero, "Info_Mod_Erhard_Arbeit_06_01"); //Nah, man. We'll be all right.
	AI_Output(self, hero, "Info_Mod_Erhard_Arbeit_06_02"); //In the city there is certainly someone who has something to do for you.
};

INSTANCE Info_Mod_Erhard_Moor (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Moor_Condition;
	information	= Info_Mod_Erhard_Moor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you tell me something about the moor?";
};

FUNC INT Info_Mod_Erhard_Moor_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Erhard_Moor_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Moor_15_00"); //Can you tell me something about the moor?
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_01"); //Yeah, I could do that. It wouldn't make you have pleasant dreams tonight.
	AI_Output(hero, self, "Info_Mod_Erhard_Moor_15_02"); //I'll take my chances.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_03"); //Some of the outcasts live there under the thumb of an old witch.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_04"); //It's been several generations since her ancestors had to leave Khorata because of some rituals.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_05"); //Well, now they're even crazier than the average court bailiff.
	AI_Output(hero, self, "Info_Mod_Erhard_Moor_15_06"); //Court farmer?
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_07"); //Jesus Christ, you haven't heard of them?
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_08"); //They have discovered a very effective drug they call a giver of joy.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_09"); //And now they're walking around all stoned up all day.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_10"); //Don't ask me how they still manage to trade that stuff.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_11"); //But it is also very popular in Khorata. I'm sure that's how much...
};

INSTANCE Info_Mod_Erhard_Hofstaat (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Hofstaat_Condition;
	information	= Info_Mod_Erhard_Hofstaat_Info;
	permanent	= 0;
	important	= 0;
	description	= "And how do I get to the court?";
};

FUNC INT Info_Mod_Erhard_Hofstaat_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Erhard_Moor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Hofstaat_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Hofstaat_15_00"); //And how do I get to the court?
	AI_Output(self, hero, "Info_Mod_Erhard_Hofstaat_06_01"); //That's a long way to go.
	AI_Output(self, hero, "Info_Mod_Erhard_Hofstaat_06_02"); //If you continue along this path in front of my house and keep to the right at the turn-offs beside the entrance to the swamp, you will eventually come to a long cave behind which the royal court is situated.
	AI_Output(self, hero, "Info_Mod_Erhard_Hofstaat_06_03"); //However, the court is not recommended to all those who are still fairly clear in their minds.
};

INSTANCE Info_Mod_Erhard_Korndiebe (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Korndiebe_Condition;
	information	= Info_Mod_Erhard_Korndiebe_Info;
	permanent	= 0;
	important	= 0;
	description	= "There's something I have to tell you...";
};

FUNC INT Info_Mod_Erhard_Korndiebe_Condition()
{
	if (Mod_REL_Korndiebe == 2)
	&& (Npc_HasItems(hero, ItMi_Kornballen) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Korndiebe_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Korndiebe_15_00"); //There's something I have to tell you...
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_01"); //What do you mean?
	AI_Output(hero, self, "Info_Mod_Erhard_Korndiebe_15_02"); //A band of robbers sent me to bring them your grain.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_03"); //(laughs) Oh, it's nothing new that they're trying to steal my crops.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_04"); //One time someone snuck into my house at noon.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_05"); //Everyone was watching him, but he didn't realize it until he came out with the grain on his arm.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_06"); //Don't worry about the boys, I already told you in town.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_07"); //Your camp won't last much longer.

	B_LogEntry	(TOPIC_MOD_KHORATA_KORNDIEBE, "I betrayed the corn thieves. You should keep your stupid boy games.");

	B_GivePlayerXP	(100);

	B_Göttergefallen (1, 1);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Erhard_Dokumente (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Dokumente_Condition;
	information	= Info_Mod_Erhard_Dokumente_Info;
	permanent	= 0;
	important	= 0;
	description	= "Did you happen to find some lost notes here?";
};

FUNC INT Info_Mod_Erhard_Dokumente_Condition()
{
	if (Mod_REL_Dokumente == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Dokumente_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Dokumente_15_00"); //Did you happen to find some lost notes here?
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_01"); //You bet! A few days ago, behind the house.
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_02"); //I have to say, my wife and I could learn a lot from it!
	AI_Output(hero, self, "Info_Mod_Erhard_Dokumente_15_03"); //May I have the pages?
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_04"); //I don't blame you for wanting to take a look.
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_05"); //But I'm sorry to disappoint you; shortly after that, I passed the records on to a friend of mine.
	AI_Output(hero, self, "Info_Mod_Erhard_Dokumente_15_06"); //Where can I find the dealer?
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_07"); //Not always in the same place! But he's in Khorinis right now, if I'm not mistaken.
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_08"); //Baltram is his name.
	AI_Output(hero, self, "Info_Mod_Erhard_Dokumente_15_09"); //Thanks for the information.

	B_LogEntry	(TOPIC_MOD_KHORATA_DOKUMENTE, "Erhard had the documents for a short time, but passed them on to Baltram, whom I find in the city of Khorini.");

	Mod_REL_Dokumente = 2;
};

INSTANCE Info_Mod_Erhard_Hopfensack (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Hopfensack_Condition;
	information	= Info_Mod_Erhard_Hopfensack_Info;
	permanent	= 0;
	important	= 0;
	description	= "The brewer's running out of beer because you're not delivering hops.";
};

FUNC INT Info_Mod_Erhard_Hopfensack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brauer_August02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Hopfensack_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Hopfensack_15_00"); //The brewer's running out of beer because you're not delivering hops.
	AI_Output(self, hero, "Info_Mod_Erhard_Hopfensack_06_01"); //So what? Should they smoke weed or swallow this delicacy?
	AI_Output(self, hero, "Info_Mod_Erhard_Hopfensack_06_02"); //Seriously. I got three bags of hops. The servant should take it to the brewer. But he's missing.
	AI_Output(hero, self, "Info_Mod_Erhard_Hopfensack_15_03"); //This can't be happening. I just got back from the brewer.
	AI_Output(self, hero, "Info_Mod_Erhard_Hopfensack_06_04"); //The servant, I mean. He was supposed to take the bags into town. He's been gone for two days now. If it's urgent, maybe you could...
	AI_Output(hero, self, "Info_Mod_Erhard_Hopfensack_15_06"); //I see. I'll take the bags with me.
	AI_Output(self, hero, "Info_Mod_Erhard_Hopfensack_06_07"); //That's swell. Here, some porterage. And tell the brewer he owes 150 gold.

	CreateInvItems	(hero, ItMi_Gold, 30);
	CreateInvItems	(hero, ItMi_Hopfensack, 3);

	B_ShowGivenThings	("30 Gold and 3 hop sacks received");
};

INSTANCE Info_Mod_Erhard_RebellischesSchaf (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_RebellischesSchaf_Condition;
	information	= Info_Mod_Erhard_RebellischesSchaf_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm supposed to lead one of your sheep to the butcher.";
};

FUNC INT Info_Mod_Erhard_RebellischesSchaf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Metzger_Schaf))
	&& (Mod_Metzger_Schaf == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_RebellischesSchaf_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_00"); //I'm supposed to lead one of your sheep to the butcher.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_01"); //Somebody's finally coming!
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_02"); //Why are you so happy about this?
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_03"); //I have a very young sheep, which causes me problems all the time.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_04"); //A few years ago, one of my harvesters stole a few lambs and released them later.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_05"); //These lambs have survived by chance and have now grown into a small herd.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_06"); //Since Vincent has fallen for the bon vivant, he no longer cares about the regulation of animal populations.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_07"); //And so the wild sheep population continues to grow.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_08"); //My lamb Emma ran away from me some time ago and probably came into contact with this group.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_09"); //Since then, it's been using every diversion to try to escape.
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_10"); //Why don't you just let Emma go?
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_11"); //Do you know how much gold a lamb brings? Of course not, or you wouldn't have asked.
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_12"); //Why don't you catch some specimens from the wild herd in return? Maybe they're more frugal.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_13"); //No. Their meat hardly yields any profit on the market.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_14"); //In the wild, sheep hardly collect fat reserves and their lean flesh is tough and sinewy.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_15"); //No one is satisfied with that these days.
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_16"); //All right, then. Then I'll take Emma with me to the butcher's.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_17"); //That's exactly what I was going to suggest. But don't let that animal fool you!
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_18"); //The wild herd grazes on the meadow with the abandoned house, opposite the waterfall.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_19"); //You should go around them a lot.

	B_LogEntry	(TOPIC_MOD_METZGER_SCHAF, "The lamb Emma has been causing Erhard problems lately because she wanted to overflow into a wild flock of sheep. I'm supposed to put an end to it by taking Emma to the butcher. I can't get in sight of the sheep herd so I don't lose Emma.");

	Wld_InsertNpc	(Hammel_Emma_01,	"REL_SURFACE_225");
	Wld_InsertNpc	(Hammel_Emma_02,	"REL_SURFACE_225");

	Wld_InsertNpc	(Schaf_Emma_01,	"REL_SURFACE_225");
	Wld_InsertNpc	(Schaf_Emma_02,	"REL_SURFACE_225");
	Wld_InsertNpc	(Schaf_Emma_03,	"REL_SURFACE_225");
	Wld_InsertNpc	(Schaf_Emma_04,	"REL_SURFACE_225");
	Wld_InsertNpc	(Schaf_Emma_05,	"REL_SURFACE_225");
};

INSTANCE Info_Mod_Erhard_Bierhexen (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Bierhexen_Condition;
	information	= Info_Mod_Erhard_Bierhexen_Info;
	permanent	= 0;
	important	= 0;
	description	= "The brewmaster's barley is contaminated by urine.";
};

FUNC INT Info_Mod_Erhard_Bierhexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brauer_Bierhexen4))
	&& (Mod_Bierhexen == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Bierhexen_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen_15_00"); //The brewmaster's barley is contaminated by urine. What do you know about it?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_01"); //That someone must have voided his bladder about it. (laughing)
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen_15_02"); //Do you have anything to do with this?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_03"); //Is this gonna be an interrogation or something? Of course, I'll piss on the barley before I send them out. (laughs)
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen_15_04"); //Calm down, will you? I am quite serious.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_05"); //All right, even if it's hard.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_06"); //So what do you want me to do with it?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_07"); //The barley is stored in the warehouse after grinding. If someone wanted to play a joke on me, he could do it there.
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen_15_08"); //And who would want to play a trick on you?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_09"); //Melvin and his gang of hollow bulbs, that's for sure.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_10"); //Although I'm sure they wouldn't have gone unnoticed. Just don't have any talent.
};

INSTANCE Info_Mod_Erhard_Bierhexen2 (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Bierhexen2_Condition;
	information	= Info_Mod_Erhard_Bierhexen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm gonna take Melvin.";
};

FUNC INT Info_Mod_Erhard_Bierhexen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erhard_Bierhexen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Bierhexen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen2_15_00"); //I'm gonna take Melvin.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen2_06_01"); //I don't mind if you beat the shit out of him. He certainly deserves it.

	B_LogEntry	(TOPIC_MOD_KHORATA_BIERHEXEN, "Erhard has redirected suspicion to Melvin and his gang, who are apparently available for such jokes.");
};

INSTANCE Info_Mod_Erhard_Bierhexen3 (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Bierhexen3_Condition;
	information	= Info_Mod_Erhard_Bierhexen3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Where is he and his troop at?";
};

FUNC INT Info_Mod_Erhard_Bierhexen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erhard_Bierhexen))
	&& (Mod_Bierhexen == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Bierhexen3_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen3_15_00"); //Where is he and his troop at?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen3_06_01"); //In northeastern Relendel. You walk from here towards the moor, but don't follow the path into it, but you go straight through a small forest.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen3_06_02"); //Behind them on a small clearing stand their meagre tents.
};

INSTANCE Info_Mod_Erhard_Freudenspender (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Freudenspender_Condition;
	information	= Info_Mod_Erhard_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Do you want to give pleasure?";
};                       

FUNC INT Info_Mod_Erhard_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Erhard_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Freudenspender_15_00"); //Do you want to give pleasure?
	AI_Output(self, hero, "Info_Mod_Erhard_Freudenspender_06_01"); //Boy, I'm too old for that. At my age, you're happy about every day you can keep your clear mind.
};

INSTANCE Info_Mod_Erhard_Pickpocket (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Pickpocket_Condition;
	information	= Info_Mod_Erhard_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Erhard_Pickpocket_Condition()
{
	C_Beklauen	(71, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Erhard_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

	Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_BACK, Info_Mod_Erhard_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Erhard_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Erhard_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);
};

FUNC VOID Info_Mod_Erhard_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

		Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Erhard_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Erhard_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Erhard_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Erhard_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Erhard_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Erhard_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Erhard_EXIT (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_EXIT_Condition;
	information	= Info_Mod_Erhard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Erhard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Erhard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
