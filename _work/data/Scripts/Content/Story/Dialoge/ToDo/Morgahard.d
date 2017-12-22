INSTANCE Info_Mod_Morgahard_Hi (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_Hi_Condition;
	information	= Info_Mod_Morgahard_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, who are you and what's your job at the camp?";
};

FUNC INT Info_Mod_Morgahard_Hi_Condition()
{
	if (Banditen_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_Hi_15_00"); //Hello, who are you and what's your job at the camp?
	AI_Output(self, hero, "Info_Mod_Morgahard_Hi_07_01"); //I'm Morgahard. I'm doing this and that. Sometimes I organize a robbery, and sometimes I organize hot goods.
	AI_Output(self, hero, "Info_Mod_Morgahard_Hi_07_02"); //Besides, I can show you some bandit trick that's worth its weight in gold on assaults.

	Npc_SetRefuseTalk	(self, 60);

	Log_CreateTopic	(TOPIC_MOD_LEHRER_BANDITEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_BANDITEN, "I can learn certain bandit tricks from Morgahard.");
};

INSTANCE Info_Mod_Morgahard_OrkQuest (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_OrkQuest_Condition;
	information	= Info_Mod_Morgahard_OrkQuest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Morgahard_OrkQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_Hi))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_Info()
{
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_07_00"); //Hey, I might have something for you to prove yourself in camp.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_07_01"); //It's a little more sophisticated than robbing a few miserable dealers. Meanwhile it has almost become a habit for us.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_07_02"); //There are always patrols of the enemy Orklager around the camp.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_07_03"); //Maybe you have met orcs during your imprisonment in the barrier?

	Log_CreateTopic	(TOPIC_MOD_BDT_MORGAHARD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_MORGAHARD, LOG_RUNNING);

	Info_ClearChoices	(Info_Mod_Morgahard_OrkQuest);

	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "At that time, I single-handedly crushed the Orc City....", Info_Mod_Morgahard_OrkQuest_C);
	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "Real, big, evil orcs?!", Info_Mod_Morgahard_OrkQuest_B);
	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "Yeah, actually ran across orcs a couple of times...", Info_Mod_Morgahard_OrkQuest_A);
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_D()
{
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_D_07_00"); //In any case, our scouts have watched a group of orcs settling every evening in the small cave just below our camp.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_D_07_01"); //And your job now is to sneak out with a group of bandits at night and surprise them when they are sitting on their slack skins at ground level and have laid down their weapons next to them.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_D_07_02"); //What do you say? That'd bring you a lot of respect in the camp.

	Info_ClearChoices	(Info_Mod_Morgahard_OrkQuest);

	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "It's too dangerous for me.", Info_Mod_Morgahard_OrkQuest_F);
	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "A small group of sleeping orcs?", Info_Mod_Morgahard_OrkQuest_E);
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_C()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_C_15_00"); //At that time, I single-handedly crushed the Orc City....
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_C_07_01"); //But of course, and I killed a black troll alone yesterday. (laughs) But with this attitude, you'll definitely be able to do the few orcs.

	Info_Mod_Morgahard_OrkQuest_D();
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_B()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_B_15_00"); //Real, big, evil orcs?!
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_B_07_01"); //Oh, don't be like that. Most of us have at least killed an orc scout before, and you've proven you can fight.

	Info_Mod_Morgahard_OrkQuest_D();
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_A()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_A_15_00"); //Yeah, actually ran across orcs a couple of times...
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_A_07_01"); //And you're still alive. These are already good conditions for the task.

	Info_Mod_Morgahard_OrkQuest_D();
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_F()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_F_15_00"); //It's too dangerous for me.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_F_07_01"); //What?! I'm really disappointed in you.

	Mod_MorgahardBeleidigt = 1;

	B_SetTopicStatus	(TOPIC_MOD_BDT_MORGAHARD, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Morgahard_OrkQuest);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_E()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_E_15_00"); //A small group of sleeping orcs? You can find me a buyer for their equipment.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_E_07_01"); //Very well, I didn't expect anything else from you. Find three to five other bandits from the camp who will leave at midnight from the camp exit with you.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_E_07_02"); //And take Skinner too. The lazybones should get some fresh air.

	Mod_Orks_Morgahard = 1;

	Wld_InsertNpc	(OrkWarrior_BDTPatroullie, "OW_PATH_184");
	Wld_InsertNpc	(OrkScout_BDTPatroullie_01, "OW_PATH_184");
	Wld_InsertNpc	(OrkScout_BDTPatroullie_02, "OW_PATH_184");
	Wld_InsertNpc	(OrkScout_BDTPatroullie_03, "OW_PATH_184");

	Info_ClearChoices	(Info_Mod_Morgahard_OrkQuest);

	B_LogEntry	(TOPIC_MOD_BDT_MORGAHARD, "Morgahard entrusted me with taking out a small orc patrol that settles in the cave below the camp every night. With Skinner and three to five other bandits, I shall gather in front of the camp at midnight to strike out.");
};

INSTANCE Info_Mod_Morgahard_OrkPatroullie (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_OrkPatroullie_Condition;
	information	= Info_Mod_Morgahard_OrkPatroullie_Info;
	permanent	= 0;
	important	= 0;
	description	= "The orcs will never leave the cave again.";
};

FUNC INT Info_Mod_Morgahard_OrkPatroullie_Condition()
{
	if (Mod_Orks_Morgahard == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_OrkPatroullie_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkPatroullie_15_00"); //The orcs will never leave the cave again.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkPatroullie_07_01"); //Very good, I expected nothing else. Here's your reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	B_SetTopicStatus	(TOPIC_MOD_BDT_MORGAHARD, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Morgahard_AlterWaldMann (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_AlterWaldMann_Condition;
	information	= Info_Mod_Morgahard_AlterWaldMann_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Morgahard_AlterWaldMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_AngriffVorbei))
	&& ((Mod_AlbertTransforms == 8)
	|| (Mod_AlbertTransforms == 9)
	|| (Mod_AlbertTransforms == 10))
	&& (Mod_OC_Miguel == 0)
	&& (Mod_OC_Morgahard == 0)
	&& (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_AlterWaldMann_Info()
{
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_00"); //Hey, after all the adventures you've survived, there's one thing you seem to me to be the most suitable for. You've been around a lot...
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_01"); //Yeah, what's it about?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_02"); //Well, Logan had accidentally fallen into the hands of a document written by the transforming magicians.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_03"); //Coincidentally?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_04"); //Well, he was there to thank them for their support with the Orcs and to close some deals.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_05"); //And in a pile of leaves, well, he read something of a treasure and took the leaf itself.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_06"); //So, so, by itself....
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_07"); //Anyway, it was about a guardian of the animals and the forest, which is supposed to be ancient, blind, inhabited the forests of Khorata and so on and owned....
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_08"); //... in possession of great treasures, I suppose.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_09"); //Uh, yeah, that's right.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_10"); //And I'm supposed to get to the treasures now? Steal an old blind old man's old age?
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_11"); //Really, you should just be able to do it yourself....
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_12"); //Yeah, yeah, that's what we tried to do. The only problem is that he also seems to be a little magical...
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_13"); //Magic gifted?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_14"); //Yes, when we tried to set him up, he fooled us with all kinds of magic, metamorphosis and deception and turned our long nose.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_15"); //We tried again and again to catch him, but we had to pull out under his scornful laughter.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_16"); //So we can't get to the treasure in the normal way.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_17"); //Hmm, "normal way". Und was soll ich da jetzt machen?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_18"); //Well, try to find out more about him somehow, let your contacts play.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_19"); //We can hardly ask the transforming mages, because it could raise their suspicion after the disappearance of the document, well, of course. You understand?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_20"); //So you have to find another way to get more information.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_21"); //Maybe you can find out something about those forest spinners who have pitched their tents under the trees all over Khorinis...
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_22"); //Well, you'll be fine. Let me know when you find the treasure.

	Log_CreateTopic	(TOPIC_MOD_BDT_ALTERMANN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_ALTERMANN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Morgahard wants me to learn more about a keeper of the animals and the forest, who is in Khorata and is said to own a great treasure. He said that maybe the Rangers could tell me more about him. As soon as I find the treasure, I have to let Morgahard know.");
};

INSTANCE Info_Mod_Morgahard_AlterWaldMann2 (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_AlterWaldMann2_Condition;
	information	= Info_Mod_Morgahard_AlterWaldMann2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Morgahard_AlterWaldMann2_Condition()
{
	if (Mod_BDT_AlterWaldMann == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_AlterWaldMann2_Info()
{
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann2_07_00"); //And, have you learned more about the Keeper of the Forest?
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann2_15_01"); //Um, yeah.... I even found his treasure.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann2_07_02"); //His treasure? Where's he at? Gold, silver, gemstones and doubloons buried somewhere in the earth, waiting for us to recover them?
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann2_15_03"); //Well, underground's all right. But it's not gold and silver, which the old man of the forest doesn't know how to do so much.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann2_15_04"); //It is the treasure of the forest of knowledge, herbs, potions and plants.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann2_07_05"); //Anyway, it was about a guardian of the animals and the forest, which is supposed to be ancient, blind, inhabited the forests of Khorata and so on and owned....
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann2_15_06"); //What, and all that trouble? Damn it.

	B_SetTopicStatus	(TOPIC_MOD_BDT_ALTERMANN, LOG_SUCCESS);
};

INSTANCE Info_Mod_Morgahard_Lernen_Schleichen (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_Lernen_Schleichen_Condition;
	information	= Info_Mod_Morgahard_Lernen_Schleichen_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("Sneak", B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, 1));
};

FUNC INT Info_Mod_Morgahard_Lernen_Schleichen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_Hi))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_Lernen_Schleichen_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_Lernen_Schleichen_15_00"); //Teach me to sneak.

	if (B_TeachThiefTalent (self, other, NPC_TALENT_SNEAK))
	{
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Schleichen_07_01"); //Soft soles give you a better chance to approach your opponents without them noticing.
	};
};

INSTANCE Info_Mod_Morgahard_Lernen_Knockout (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_Lernen_Knockout_Condition;
	information	= Info_Mod_Morgahard_Lernen_Knockout_Info;
	permanent	= 1;
	important	= 0;
	description	= "Precipitation (10 learning points)";
};

FUNC INT Info_Mod_Morgahard_Lernen_Knockout_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_Hi))
	&& (Knockout_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_Lernen_Knockout_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_Lernen_Knockout_15_00"); //Show me how to knock someone down.

	if (hero.lp >= 10)
	{
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_31_01"); //All right, so you want to know how to surprise someone with a surprise attack.
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_31_02"); //Sneak quietly from behind to the person without being noticed.
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_31_03"); //If you're close enough, give him a good blow to the back of the head with your gun.
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_31_04"); //Since your victim is not prepared for this, it will be particularly damaging and, with a little luck, will go down without you having to help any further.
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_31_05"); //By the way, this also has an effect on sleepers, animals, orcs and everything else that cracks and lights up.

		Knockout_Perk = TRUE;
		
		hero.lp -= 10;
	}
	else
	{
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_31_06"); //Come back when you have more experience.
	};
};

INSTANCE Info_Mod_Morgahard_Pickpocket (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_Pickpocket_Condition;
	information	= Info_Mod_Morgahard_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Morgahard_Pickpocket_Condition()
{
	C_Beklauen	(78, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

	Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_BACK, Info_Mod_Morgahard_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Morgahard_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

		Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Morgahard_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Morgahard_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Morgahard_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Morgahard_EXIT (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_EXIT_Condition;
	information	= Info_Mod_Morgahard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Morgahard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Morgahard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
