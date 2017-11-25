INSTANCE Info_Mod_Griselda_Hi (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Hi_Condition;
	information	= Info_Mod_Griselda_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Griselda_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Griselda_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_00"); //What, a visitor? And a handsome fellow, too.
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_01"); //Amazing, you actually managed to get to me.
	AI_Output(hero, self, "Info_Mod_Griselda_Hi_15_02"); //What?! Who are you?
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_03"); //(innocent) Me? I'm just an old mother.
	AI_Output(hero, self, "Info_Mod_Griselda_Hi_15_04"); //Hidden in a cave with snow ghosts?! I don't think so. Stop talking and explain yourself!
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_05"); //(ironic) Ohh, a man with brains. And he won't be faked.
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_06"); //Very well. I am the mother of a sisterhood dedicated to the magic arts.
	AI_Output(hero, self, "Info_Mod_Griselda_Hi_15_07"); //Sisterhood of magical arts? You're not talking about witches, are you?!
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_08"); //Ohh, welch schlimmes Wort ... "Hexe". Ich ziehe die Umschreibung "Sister of Dark Art" vor.
	AI_Output(hero, self, "Info_Mod_Griselda_Hi_15_09"); //What's with the puns. What are you doing here and what are you up to?
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_10"); //What am I doing here? You came to me, didn't you?
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_11"); //So the question must be: What are you doing here?
	AI_Output(hero, self, "Info_Mod_Griselda_Hi_15_12"); //Well...
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_13"); //You don't seem to be in the mood after puns. Maybe it will be a test?
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_14"); //Yeah, you look like a man who's thirsty for trials.
	AI_Output(hero, self, "Info_Mod_Griselda_Hi_15_15"); //Exams? What do you think?
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_16"); //Well, examinations. They put people to the test, show whether they have brains, courage, strength and skill.
	AI_Output(self, hero, "Info_Mod_Griselda_Hi_26_17"); //If you prove yourself, there are rewards in sight. What do you say, hero?
};

INSTANCE Info_Mod_Griselda_Pruefung (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung_Condition;
	information	= Info_Mod_Griselda_Pruefung_Info;
	permanent	= 0;
	important	= 0;
	description	= "All right, I can give it a go with the exam.";
};

FUNC INT Info_Mod_Griselda_Pruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung_15_00"); //All right, I can give it a go with the exam.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_01"); //You can now show whether you know as much about creation as you think you know.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_02"); //More specifically, the animated part of creation, the beings and creatures that walk, crawl and crawl on the earth's bottom.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_03"); //In the arena, a creature will appear and you can choose one of several beings to compete against it.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_04"); //You gain control of your creature in battle and can control it according to your will.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_05"); //If you triumph, you get a reward.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_06"); //If you try to interrupt a fight by retransformation, it is considered lost.

	AI_PlayAni	(self, "T_PRACTICEMAGIC5");

	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_07"); //As you will see, there is now a wolf in the arena. Make your choice.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_26_08"); //Which creature would you like to fight with?

	B_StartOtherRoutine	(self, "ARENA");

	Wld_InsertNpc	(Wolf_Griselda_01, "HEXE_ARENA_SPAWN_SOLO_01");

	playerIsTransformed = FALSE;

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung);

	Info_AddChoice	(Info_Mod_Griselda_Pruefung, "Snapper.", Info_Mod_Griselda_Pruefung_C);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung, "Meat bug.", Info_Mod_Griselda_Pruefung_B);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung, "Sheep.", Info_Mod_Griselda_Pruefung_A);
};

FUNC VOID Info_Mod_Griselda_Pruefung_FalscheWahl()
{
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_FalscheWahl_26_00"); //Hohohohoo, my silly one.
};

FUNC VOID Info_Mod_Griselda_Pruefung_C()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung_C_15_00"); //Snapper.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung_C_26_01"); //That's the way it should be.

	B_GiveInvItems	(self, hero, ItSc_TrfSnapper, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung);
};

FUNC VOID Info_Mod_Griselda_Pruefung_B()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung_B_15_00"); //Meat bug.

	Info_Mod_Griselda_Pruefung_FalscheWahl();

	B_GiveInvItems	(self, hero, ItSc_TrfMeatbug, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung);
};

FUNC VOID Info_Mod_Griselda_Pruefung_A()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung_A_15_00"); //Sheep.

	Info_Mod_Griselda_Pruefung_FalscheWahl();

	B_GiveInvItems	(self, hero, ItSc_TrfSheep, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung);
};

INSTANCE Info_Mod_Griselda_Pruefung2 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung2_Condition;
	information	= Info_Mod_Griselda_Pruefung2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Griselda_Pruefung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung))
	&& (Mod_Griselda_Arena > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung2_Info()
{
	if (Mod_Griselda_Arena == 1)
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_00"); //Ohh, I'm disappointed in you.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_01"); //The pulsating life would have been your reward... Oh, how unfortunate, I forgot to mention:
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_02"); //Your betting debt will now be paid off in the same way. (laughs moaning)

		Mod_Griselda_Arena = -1;

		AI_StopProcessInfos	(self);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_03"); //Well, it wasn't too hard to make the right choice.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_04"); //At least I can now rule out the possibility of a complete fool standing before me. (laughs)
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_05"); //No offense, your reward should be a part of the life force of your dead opponent.

		B_RaiseAttribute_Rest (hero, ATR_HITPOINTS_MAX, 14);

		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_06"); //So, after you have survived the first fight successfully, don't you feel eager for a sequel?
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_07"); //Now there are again prizes to be won for the lucky boy.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung2_26_08"); //This time there are a handful of opponents, two blood flies and two spiders.... nothing to be feared, nothing but sediments of the animal kingdom.
	};
};

INSTANCE Info_Mod_Griselda_Pruefung3 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung3_Condition;
	information	= Info_Mod_Griselda_Pruefung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to fight.";
};

FUNC INT Info_Mod_Griselda_Pruefung3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung2))
	&& (Mod_Griselda_Arena == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung3_Info()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung3_15_00"); //I want to fight.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung3_26_01"); //Make your choice.

	Wld_InsertNpc	(Blutfliege_Griselda_01, "HEXE_ARENA_TEAM_01");
	Wld_InsertNpc	(Blutfliege_Griselda_02, "HEXE_ARENA_TEAM_02");
	Wld_InsertNpc	(Spinne_Griselda_01, "HEXE_ARENA_TEAM_03");
	Wld_InsertNpc	(Spinne_Griselda_02, "HEXE_ARENA_TEAM_04");

	playerIsTransformed = FALSE;

	Mod_Griselda_Arena = 0;

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung3);

	Info_AddChoice	(Info_Mod_Griselda_Pruefung3, "Shadow runners.", Info_Mod_Griselda_Pruefung3_C);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung3, "Skeleton.", Info_Mod_Griselda_Pruefung3_B);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung3, "Harpie.", Info_Mod_Griselda_Pruefung3_A);
};

FUNC VOID Info_Mod_Griselda_Pruefung3_Wahl()
{
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung3_Wahl_26_00"); //As you wish.
};

FUNC VOID Info_Mod_Griselda_Pruefung3_C()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung3_C_15_00"); //Shadow runners.

	Info_Mod_Griselda_Pruefung3_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfShadowbeast, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung3);
};

FUNC VOID Info_Mod_Griselda_Pruefung3_B()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung3_B_15_00"); //Skeleton.

	Info_Mod_Griselda_Pruefung3_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfSkeleton, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung3);
};

FUNC VOID Info_Mod_Griselda_Pruefung3_A()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung3_A_15_00"); //Harpie.

	Info_Mod_Griselda_Pruefung3_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfHarpie, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung3);
};

INSTANCE Info_Mod_Griselda_Pruefung4 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung4_Condition;
	information	= Info_Mod_Griselda_Pruefung4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Griselda_Pruefung4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung3))
	&& (Mod_Griselda_Arena > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung4_Info()
{
	if (Mod_Griselda_Arena == 1)
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_00"); //Ohh, how disillusioning. He couldn't withstand the toxins. Too bad, because as a reward the ability to escape the toxins would have awaited you...
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_01"); //Oh, how unfortunate I forgot to mention that your betting debts should now be paid off in the same way. (laughs moaning)

		Mod_Griselda_Arena = -1;

		AI_StopProcessInfos	(self);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_02"); //Ohh, you surprised me. You don't seem to have fallen on your head, my boy. (laughs)
		AI_Output(hero, self, "Info_Mod_Griselda_Pruefung4_15_03"); //Hey, what's with the swamp golem!?
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_04"); //Ohh, ich vergaß wohl, ihn zu erwähnen. Aber ich sagte doch "a handful", und das können durchaus fünf sein.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_05"); //Likewise, a golem is not a creature of the animal world.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_06"); //So don't be angry, you have fought courageously and defied poison, and you will also receive your reward for escaping the power of poison.

		if (Gift < 3)
		{
			Gift += 1;

			PrintScreen	("Your resistance to toxins has increased.", -1, -1, FONT_SCREEN, 2);
		};

		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_07"); //Now that you've fought so bravely, I don't think you'll be desperate to face the next test with joy.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_08"); //The elements in the ring, a golem of fire and ice await you.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_09"); //It seems daring, even impossible, to cut down both of them, so I also leave you to face both of them.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_10"); //Only one must be brought to his knees, and your battle is considered passed.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_11"); //What's more, they won't budge.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung4_26_12"); //That sounds like a piece of cake. What do you say, pigeon?
	};
};

INSTANCE Info_Mod_Griselda_Pruefung5 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung5_Condition;
	information	= Info_Mod_Griselda_Pruefung5_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm ready to go.";
};

FUNC INT Info_Mod_Griselda_Pruefung5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung4))
	&& (Mod_Griselda_Arena == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung5_Info()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung5_15_00"); //I'm ready to go.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung5_26_01"); //Well, so make your choice.

	Wld_InsertNpc	(Firegolem_Griselda_01, "HEXE_ARENA_TEAM_01");
	Wld_InsertNpc	(Icegolem_Griselda_01, "HEXE_ARENA_TEAM_03");

	playerIsTransformed = FALSE;

	Mod_Griselda_Arena = 0;

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung5);

	Info_AddChoice	(Info_Mod_Griselda_Pruefung5, "Warg.", Info_Mod_Griselda_Pruefung5_C);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung5, "Bloodhound.", Info_Mod_Griselda_Pruefung5_B);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung5, "Rabbit.", Info_Mod_Griselda_Pruefung5_A);
};

FUNC VOID Info_Mod_Griselda_Pruefung5_Wahl()
{
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung5_Wahl_26_00"); //Just as you wish.
};

FUNC VOID Info_Mod_Griselda_Pruefung5_C()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung5_C_15_00"); //Warg.

	Info_Mod_Griselda_Pruefung5_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfWarg, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung5);
};

FUNC VOID Info_Mod_Griselda_Pruefung5_B()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung5_B_15_00"); //Bloodhound.

	Info_Mod_Griselda_Pruefung5_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfBloodhound, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung5);
};

FUNC VOID Info_Mod_Griselda_Pruefung5_A()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung5_A_15_00"); //Rabbit.

	Info_Mod_Griselda_Pruefung5_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfRabbit, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung5);
};

INSTANCE Info_Mod_Griselda_Pruefung6 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung6_Condition;
	information	= Info_Mod_Griselda_Pruefung6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Griselda_Pruefung6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung5))
	&& (Mod_Griselda_Arena > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung6_Info()
{
	if (Mod_Griselda_Arena == 1)
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_00"); //Ohh, it got hot and cold in the rings for the tender boy.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_01"); //Too bad, because as a reward you would have been expected to resist heat and cold.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_02"); //Oh, how unfortunate I forgot to mention that your betting debts should now be paid off in the same way. (laughs moaning)

		Mod_Griselda_Arena = -1;

		Wld_PlayEffect	("INFERNALFIRE", hero, hero, 0, 0, 0, FALSE);

		AI_StopProcessInfos	(self);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_03"); //(surprised) Ohh... you make me almost speechless.
		AI_Output(hero, self, "Info_Mod_Griselda_Pruefung6_15_04"); //Why, it was child's play.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_05"); //All right, all right, all right. Then you shall have more of these games.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_06"); //But first the reward for defying the elements. The power of resistance against them shall grow in you.

		PrintScreen	("5 Protection against fire and magic", -1, -1, FONT_SCREEN, 2);

		hero.protection[PROT_FIRE] += 5;
		hero.protection[PROT_MAGIC] += 5;

		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_07"); //So, ready for the next round?
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_08"); //Next, you'll face three slow, lazy undead. And not even at the same time.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_09"); //Not until you defeat one will the next one appear.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_10"); //I hope you will not be offended if I entrust you with this undemanding task.
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung6_26_11"); //When you are ready, make your choice.
	};
};

INSTANCE Info_Mod_Griselda_Pruefung7 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung7_Condition;
	information	= Info_Mod_Griselda_Pruefung7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's move on.";
};

FUNC INT Info_Mod_Griselda_Pruefung7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung6))
	&& (Mod_Griselda_Arena == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung7_Info()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung7_15_00"); //Let's move on.
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung7_26_01"); //What kind of creature is it this time?

	Wld_InsertNpc	(Zombie_Griselda_01, "HEXE_ARENA_TEAM_01");

	playerIsTransformed = FALSE;

	Mod_Griselda_Arena = 0;

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung7);

	Info_AddChoice	(Info_Mod_Griselda_Pruefung7, "Snapper.", Info_Mod_Griselda_Pruefung7_C);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung7, "Boar.", Info_Mod_Griselda_Pruefung7_B);
	Info_AddChoice	(Info_Mod_Griselda_Pruefung7, "Golem.", Info_Mod_Griselda_Pruefung7_A);
};

FUNC VOID Info_Mod_Griselda_Pruefung7_Wahl()
{
	AI_Output(self, hero, "Info_Mod_Griselda_Pruefung7_Wahl_26_00"); //As you wish.
};

FUNC VOID Info_Mod_Griselda_Pruefung7_C()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung7_C_15_00"); //Snapper.

	Info_Mod_Griselda_Pruefung7_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfSnapper, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung7);
};

FUNC VOID Info_Mod_Griselda_Pruefung7_B()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung7_B_15_00"); //Boar.

	Info_Mod_Griselda_Pruefung7_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfKeiler, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung7);
};

FUNC VOID Info_Mod_Griselda_Pruefung7_A()
{
	AI_Output(hero, self, "Info_Mod_Griselda_Pruefung7_A_15_00"); //Golem.

	Info_Mod_Griselda_Pruefung7_Wahl();

	B_GiveInvItems	(self, hero, ItSc_TrfGolem, 1);

	Info_ClearChoices	(Info_Mod_Griselda_Pruefung7);
};

INSTANCE Info_Mod_Griselda_Pruefung8 (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pruefung8_Condition;
	information	= Info_Mod_Griselda_Pruefung8_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Griselda_Pruefung8_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Griselda_Pruefung7))
	&& (Mod_Griselda_Arena > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Griselda_Pruefung8_Info()
{
	if (Mod_Griselda_Arena == 1)
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung8_26_00"); //Ohh, did that boy get sick?
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung8_26_01"); //It's a pity, because as a reward you could have been expected to resist diseases...
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung8_26_02"); //Oh, how unfortunate I forgot to mention that your betting debts should now be paid off in the same way. (laughs moaning)

		Mod_Griselda_Arena = -1;

		AI_StopProcessInfos	(self);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung8_26_03"); //Amazing, even the breath of the plague you knew by skillful choice to resist.
		AI_Output(hero, self, "Info_Mod_Griselda_Pruefung8_15_04"); //This is how your resistance to diseases should grow.

		if (Krankheit < 4)
		{
			Krankheit += 1;

			PrintScreen	("Your resistance to disease has increased.", -1, -1, FONT_SCREEN, 2);
		};

		if (KHDP < 4)
		{
			KHDP += 1;

			//PrintScreen	("Deine Widerstandskraft gegenüber Giften ist gestiegen.", -1, -1, FONT_SCREEN, 2);
		};

		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung8_26_05"); //So, played you and won a lot of prizes. Don't you want to play one last time and give me the chance to win it all back?
		AI_Output(hero, self, "Info_Mod_Griselda_Pruefung8_15_06"); //What do you think? I believe...
		AI_Output(self, hero, "Info_Mod_Griselda_Pruefung8_26_07"); //It's not like you have a choice, hahahaha.

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(self, "TRANSFORM");
	};
};

INSTANCE Info_Mod_Griselda_Pickpocket (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_Pickpocket_Condition;
	information	= Info_Mod_Griselda_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Griselda_Pickpocket_Condition()
{
	C_Beklauen	(117, ItPo_Perm_Health, 1);
};

FUNC VOID Info_Mod_Griselda_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);

	Info_AddChoice	(Info_Mod_Griselda_Pickpocket, DIALOG_BACK, Info_Mod_Griselda_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Griselda_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Griselda_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Griselda_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);
};

FUNC VOID Info_Mod_Griselda_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);

		Info_AddChoice	(Info_Mod_Griselda_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Griselda_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Griselda_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Griselda_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Griselda_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Griselda_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Griselda_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Griselda_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Griselda_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Griselda_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Griselda_EXIT (C_INFO)
{
	npc		= Mod_7643_HEX_Griselda_EIS;
	nr		= 1;
	condition	= Info_Mod_Griselda_EXIT_Condition;
	information	= Info_Mod_Griselda_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Griselda_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Griselda_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
