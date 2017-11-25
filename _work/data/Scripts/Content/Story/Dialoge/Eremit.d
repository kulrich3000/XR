INSTANCE Info_Mod_Eremit_Hi (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Hi_Condition;
	information	= Info_Mod_Eremit_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "So there's our thief.";
};

FUNC INT Info_Mod_Eremit_Hi_Condition()
{
	if (Mod_Saturas_Gast_Fortschritt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Hi_15_00"); //So there's our thief.
	AI_Output(self, hero, "Info_Mod_Eremit_Hi_04_01"); //No thief, no thief! Just play!
	AI_Output(self, hero, "Info_Mod_Eremit_Hi_04_02"); //I told you to get out of here. It was clear that someone would find you.
	AI_Output(self, hero, "Info_Mod_Eremit_Hi_04_03"); //But I want to play!
};

INSTANCE Info_Mod_Eremit_WerBistDu (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_WerBistDu_Condition;
	information	= Info_Mod_Eremit_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you, by the way?";
};

FUNC INT Info_Mod_Eremit_WerBistDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_WerBistDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_WerBistDu_15_00"); //Who are you, by the way?
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_04_01"); //Which one of us do you mean?
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_04_02"); //(seriously) Of course, me. Why would he want to talk to you, child's head?
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_04_03"); //You take that back immediately!
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_04_04"); //Seriously, forget it.
	AI_Output(hero, self, "Info_Mod_Eremit_WerBistDu_15_05"); //Hey, be quiet. Can't you, uh, agree before you say anything?
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_04_06"); //In secret?
	AI_Output(hero, self, "Info_Mod_Eremit_WerBistDu_15_07"); //Yeah, that's right.
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_04_08"); //(Children, enthusiastic) Ohhhh...
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_04_09"); //I don't want it to fail because of me.
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_04_10"); //Seriously, I'm embarrassed anyway when someone has to listen to the comments of this retarded person.
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_04_11"); //You take that back!
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_04_12"); //(really) No!
	AI_Output(hero, self, "Info_Mod_Eremit_WerBistDu_15_13"); //Shh.
	AI_Output(self, hero, "Info_Mod_Eremit_WerBistDu_04_14"); //(clears throat, normal voice) Hello. Reminds us darkly of old times, so to speak.
	AI_Output(hero, self, "Info_Mod_Eremit_WerBistDu_15_15"); //Much better now.
};

INSTANCE Info_Mod_Eremit_Woher (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Woher_Condition;
	information	= Info_Mod_Eremit_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where are you from?";
};

FUNC INT Info_Mod_Eremit_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Woher_15_00"); //Where are you from?
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_01"); //Originally we came from the mainland and produced maps together.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_02"); //Until we hired this ship to create a map of Khorini's coast.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_03"); //We weren't even in shallow waters when we were attacked and sunk by an Orkgaleere.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_04"); //On a barrel of port wine we made it to the beach - the only one.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_05"); //Until then, the Piranhas had already nibbled off four toes.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_06"); //Just three to me.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_07"); //You just can't count any further than three.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_08"); //Afterwards we settled in comfortably.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_09"); //Not on the beach, the buccaneers live there. We didn't want anything to do with them.
	AI_Output(hero, self, "Info_Mod_Eremit_Woher_15_10"); //Didn't you ever try to get back to the mainland?
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_11"); //Nah, man. There's only one annoying woman waiting for us who doesn't want to have children.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_12"); //We can also draw maps here.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_13"); //Through trade with the pirates, we are supplied with the essentials, and that is all we need.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_14"); //The loneliness gets boring sometimes and we get on each other's nerves.
	AI_Output(self, hero, "Info_Mod_Eremit_Woher_04_15"); //Sometimes we wish for a third in the alliance.
	AI_Output(hero, self, "Info_Mod_Eremit_Woher_15_16"); //Save Adanos!
};

INSTANCE Info_Mod_Eremit_WiesoDieb (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_WiesoDieb_Condition;
	information	= Info_Mod_Eremit_WiesoDieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why did you steal the water magicians' equipment?";
};

FUNC INT Info_Mod_Eremit_WiesoDieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_WiesoDieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_WiesoDieb_15_00"); //Why did you steal the water magicians' equipment?
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_04_01"); //Water magicians are the guys in the robes?
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_04_02"); //On the one hand... (must overcome) we wanted to play with them.
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_04_03"); //On the other hand, we need the ingredients for a few recipes left by the old people.
	AI_Output(hero, self, "Info_Mod_Eremit_WiesoDieb_15_04"); //So you can read her language?
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_04_05"); //Reading, speaking, whatever you want.
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_04_06"); //I read all the texts I found.
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_04_07"); //At the beginning I didn't understand a word, of course, but I had time.
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_04_08"); //Wenn es ein Wort gibt, dass das alte Volk beschreibt, dann ist es "magical".
	AI_Output(self, hero, "Info_Mod_Eremit_WiesoDieb_04_09"); //In that respect, they were ahead of you.
};

INSTANCE Info_Mod_Eremit_AlteSprache (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_AlteSprache_Condition;
	information	= Info_Mod_Eremit_AlteSprache_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me the language of the old people?";
};

FUNC INT Info_Mod_Eremit_AlteSprache_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_WiesoDieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_AlteSprache_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_AlteSprache_15_00"); //Can you teach me the language of the old people?
	AI_Output(self, hero, "Info_Mod_Eremit_AlteSprache_04_01"); //In due course of time, it could be negotiated.
	AI_Output(self, hero, "Info_Mod_Eremit_AlteSprache_04_02"); //Fnidhdr gröggel snüt!
	AI_Output(self, hero, "Info_Mod_Eremit_AlteSprache_04_03"); //Just watch your mouth!
};

INSTANCE Info_Mod_Eremit_Prisma (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma_Condition;
	information	= Info_Mod_Eremit_Prisma_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need help making a prism.";
};

FUNC INT Info_Mod_Eremit_Prisma_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_WiesoDieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma_15_00"); //I need help making a magical prism.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_04_01"); //A magic prism? We've heard about that, too.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_04_02"); //For a while it used to be fashionable for the old folk.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_04_03"); //However, the parts disappeared as quickly as they came up. Don't ask why.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma_15_04"); //You wouldn't happen to know how to make a prism like that, would you?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_04_05"); //Yes, we'd probably manage that.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_04_06"); //(seriously) Well, me anyway.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_04_07"); //All we need is a black pearl.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma_15_08"); //If I bring you one, will you grind my prism?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_04_09"); //Yeah. On one condition.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma_15_10"); //Which is?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_04_11"); //We can keep the water magicians' stuff.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma_15_12"); //Satan's gonna rip my head off, but fine.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_04_13"); //We'll make our way back, come by as far as you're ready.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma_04_14"); //On this map we have marked where you can find us.

	B_GiveInvItems	(self, hero, ItWr_Map_Eremit, 1);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItMi_DarkPearl, 1);

	if (Mod_Saturas_Gast == 1)
	{
		B_LogEntry_More (TOPIC_MOD_MAGIEPRISMA, TOPIC_MOD_SATURAS_TAGGAST, "The hermit who stole from the water magicians wants to be able to help with the prism. I just have to come to him with a black pearl. He recorded the way to his dwelling for me.", "The thief is a hermit. In exchange with his knowledge, I promised to take the blame for Satan's guilt.");
	}
	else
	{
		B_LogEntry_More (TOPIC_MOD_MAGIEPRISMA, TOPIC_MOD_SATURAS_NACHTGAST, "The hermit who stole from the water magicians wants to be able to help with the prism. I just have to come to him with a black pearl. He recorded the way to his dwelling for me.", "The thief is a hermit. In exchange with his knowledge, I promised to take the blame for Satan's guilt.");
	};
};

INSTANCE Info_Mod_Eremit_Prisma2 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma2_Condition;
	information	= Info_Mod_Eremit_Prisma2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm there and ready.";
};

FUNC INT Info_Mod_Eremit_Prisma2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma))
	&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
	&& (Npc_GetDistToWP(self, "ADW_VALLEY_BENCH") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma2_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma2_15_00"); //I'm there and ready.
	
	B_GiveInvItems(hero, self, ItMi_DarkPearl, 1);
	
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma2_04_01"); //And you even brought your friends to play with you?
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma2_15_02"); //(irritated) What friends?

	B_LogEntry	(TOPIC_MOD_MAGIEPRISMA, "My adversaries stay on my heels. When I visited the hermit for the prism, a number of undead men under Urnol's leadership attacked me.");

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(ZombieRandom_Eremit_01,	"ADW_VALLEY_PATH_031");
	Wld_InsertNpc	(ZombieRandom_Eremit_02,	"ADW_VALLEY_PATH_031");
	Wld_InsertNpc	(ZombieRandom_Eremit_03,	"ADW_VALLEY_PATH_031");
	Wld_InsertNpc	(ZombieRandom_Eremit_04,	"ADW_VALLEY_PATH_031");
	Wld_InsertNpc	(Skeleton_Eremit_01,	"ADW_VALLEY_PATH_031");
	Wld_InsertNpc	(Skeleton_Eremit_02,	"ADW_VALLEY_PATH_031");
};

INSTANCE Info_Mod_Eremit_Prisma3 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma3_Condition;
	information	= Info_Mod_Eremit_Prisma3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Prisma3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma2))
	&& (Npc_IsDead(ZombieRandom_Eremit_01))
	&& (Npc_IsDead(ZombieRandom_Eremit_02))
	&& (Npc_IsDead(ZombieRandom_Eremit_03))
	&& (Npc_IsDead(ZombieRandom_Eremit_04))
	&& (Npc_IsDead(Skeleton_Eremit_01))
	&& (Npc_IsDead(Skeleton_Eremit_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma3_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_04_00"); //We've heated them up pretty good. They didn't stand a chance against the three of us.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma3_15_01"); //How do they always know where I am right now?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_04_02"); //Nothing is impossible. Maybe they know a few tricks of the old people.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma3_15_03"); //What tricks?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_04_04"); //We're just guessing. They may have marked you magically so that you can draw a fine trace anywhere you go, which is visible to the caster.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_04_05"); //Have you ever come close to one of them before killing him?
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma3_15_06"); //Several times.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_04_07"); //At least that's one possibility.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma3_15_08"); //And how could I get rid of the marker?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_04_09"); //I don't know about that. The spell is not designed to be easily broken.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_04_10"); //You might be able to trick him by redirecting him to another item.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma3_15_11"); //An object that then randomly moves around the world to confuse my opponents.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_04_12"); //Exactly.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma3_15_13"); //All right, but how do I start?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_04_14"); //Don't ask us... What do your robes say? Maybe one of them has an idea.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_04_15"); //Or someone who knows the old people better than we do. If there's such a thing.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_04_16"); //It would be better if you stripped the marker before we proceeded. So many visitors is a little bit annoying to us.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma3_04_17"); //By the time you get back, we'll have finished polishing the prism.

	B_LogEntry_More	(TOPIC_MOD_MAGISCHEMARKIERUNG, TOPIC_MOD_MAGIEPRISMA, "The hermit suspects I would be visible everywhere because of a magical marker for this sinister Urnol and his master. He himself knows no way to get rid of them. I should turn to Vatras or one of the ancient people if I know one. Argez could also be an emergency solution.", "The hermit now grinds the black pearl. When I've stripped the magic marker, they want me to come back.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Eremit_Prisma4 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma4_Condition;
	information	= Info_Mod_Eremit_Prisma4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Prisma4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Magiespur2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma4_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma4_04_00"); //Come on, come on! We still have some way to go!
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma4_15_01"); //Where are we headed?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma4_04_02"); //There's a cave near here where Beliar's power is strong. That will have to be enough.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma4_15_03"); //Beliar? What the hell is she doing?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma4_04_04"); //Beliar is the only one of the three gods who embodies the irrepressible like Radanos, the god of the ancient people.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma4_04_05"); //Since we can't ask Radanos for help anymore, we have to make do with Beliar.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma4_15_06"); //I have a bad feeling...
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma4_04_07"); //It would also be unwise to feel secure in Beliar's presence.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma4_04_09"); //But now let's go!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RITUALHOEHLE");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Eremit_Prisma5 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma5_Condition;
	information	= Info_Mod_Eremit_Prisma5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Prisma5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma4))
	&& (Npc_GetDistToWP(self, "ADW_VALLEY_PATH_020_CAVE_05") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma5_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_04_00"); //You must assist us with the ritual.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma5_15_01"); //How does it even work?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_04_02"); //The prism is not yet receptive enough for multiple spells, so we will cast an expansion spell to increase the magical volume of the prism.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_04_03"); //This may take some time. The prism will try to repel the spell.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_04_04"); //But with Beliars and your help, it should work.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_04_05"); //My head is buzzing!
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma5_15_06"); //What can I do?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_04_07"); //The two of us have enough to do to maintain the stretch spell.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_04_08"); //You have to make sure he stays in the prism.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma5_15_09"); //And how?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_04_10"); //As long as it is in the prism, it lights up.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_04_11"); //Ermattet das Prisma, musst du schnell handeln - du hast nur wenige Sekunden, um den Zauber "Beliar's anger" zu wirken, der den Dehnzauber zurück in seinen eigentlichen Bestimmungsort treibt.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_04_12"); //Here's some spell rolls. If the first few attempts do not work, we will give you even more.

	B_GiveInvItems	(self, hero, ItSc_BeliarsRage, 6);

	AI_Output(self, hero, "Info_Mod_Eremit_Prisma5_04_13"); //Are you ready?

	B_LogEntry	(TOPIC_MOD_MAGIEPRISMA, "The ritual can now begin - I have to be careful that the stretching spell the hermit works does not leave the prism. If the prism should wear down, I must immediately cast the spell' Beliars Zorn'.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Eremit_Prisma6 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma6_Condition;
	information	= Info_Mod_Eremit_Prisma6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's give it a shot.";
};

FUNC INT Info_Mod_Eremit_Prisma6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma6_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma6_15_00"); //Let's give it a shot.
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RITUAL");

	Wld_InsertItem	(ItMi_Magieprisma_Fake, "FP_ITEM_MAGIEPRISMA");

	Wld_PlayEffect ("SPELLFX_PRISMA", ItMi_Magieprisma_Fake, ItMi_Magieprisma_Fake, 0, 0, 0, FALSE);
	
	Wld_SendTrigger("PRSIMAMOVER");
};

INSTANCE Info_Mod_Eremit_Prisma7 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma7_Condition;
	information	= Info_Mod_Eremit_Prisma7_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Prisma7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma6))
	&& (Mod_PrismaRitual_ZuLangsam == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma7_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma7_04_00"); //That hasn't quite worked yet. Again!

	AI_StopProcessInfos	(self);

	Mod_PrismaRitual_ZuLangsam = FALSE;

	Mod_PrismaRitual_Counter = 0;

	Wld_PlayEffect ("SPELLFX_PRISMA", ItMi_Magieprisma_Fake, ItMi_Magieprisma_Fake, 0, 0, 0, FALSE);
};

INSTANCE Info_Mod_Eremit_Prisma8 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma8_Condition;
	information	= Info_Mod_Eremit_Prisma8_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Prisma8_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma6))
	&& (Npc_HasItems(hero, ItSc_BeliarsRage) == 0)
	&& (Mod_PrismaRitual_Counter < 80)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma8_Info()
{
	if (!Mod_PrismaZauber_Eremit) {
		AI_Output(self, hero, "Info_Mod_Eremit_Prisma8_04_00"); //You're out of spells. Here, take some new ones.

		B_GiveInvItems	(self, hero, ItSc_BeliarsRage, 6);

		AI_StopProcessInfos	(self);

		Mod_PrismaZauber_Eremit = TRUE;
	} else {
		AI_Output(self, hero, "Info_Mod_Eremit_Prisma8_04_01"); //Phew, we're still not finished. We still have a few spells left, but with your wear and tear, we won't be able to.
		AI_Output(self, hero, "Info_Mod_Eremit_Prisma8_04_02"); //Are you trying to deceive us?
		AI_Output(self, hero, "Info_Mod_Eremit_Prisma8_04_03"); //If you want more spells, we'll charge 300 gold pieces from now on.

		Info_ClearChoices	(Info_Mod_Eremit_Prisma8);

		Info_AddChoice	(Info_Mod_Eremit_Prisma8, "I don't have that much gold yet.", Info_Mod_Eremit_Prisma8_B);

		if (Npc_HasItems(hero, ItMi_Gold) >= 300) {
			Info_AddChoice	(Info_Mod_Eremit_Prisma8, "All right, give me the magic.", Info_Mod_Eremit_Prisma8_A);
		};
	};

	Mod_PrismaRitual_ZuLangsam = FALSE;

	Mod_PrismaRitual_Counter = 0;
};

FUNC VOID Info_Mod_Eremit_Prisma8_A()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma8_A_15_00"); //All right, give me the magic.

	B_GiveInvItems	(hero, self, ItMi_Gold, 300);

	AI_Output(self, hero, "DEFAULT"); //

	B_GiveInvItems	(self, hero, ItSc_BeliarsRage, 6);

	Info_ClearChoices	(Info_Mod_Eremit_Prisma8);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Eremit_Prisma8_B()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma8_B_15_00"); //I don't have that much gold yet.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Eremit_Prisma8);

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk	(self, 30);
};

INSTANCE Info_Mod_Eremit_Prisma9 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Prisma9_Condition;
	information	= Info_Mod_Eremit_Prisma9_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Prisma9_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma6))
	&& (Mod_PrismaRitual_Counter == 80)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Prisma9_Info()
{
	Wld_RemoveItem	(ItMi_Magieprisma_Fake);

	Wld_InsertItem	(ItMi_Magieprisma, "FP_ITEM_MAGIEPRISMA");

	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_04_00"); //That's what we got. There lies your finished prism.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma9_15_01"); //How can I thank you?
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_04_02"); //A simple thank you is enough.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma9_15_03"); //Thanks.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_04_04"); //We can also give you a hint for use.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_04_05"); //The prism only becomes active if you take it out of your luggage and put it on.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_04_06"); //All damage spells you now cast will charge the prism.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_04_07"); //However, only three to four spells can be placed in the prism at the same time.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_04_08"); //If you talk more, the spells will be lost.
	AI_Output(hero, self, "Info_Mod_Eremit_Prisma9_15_09"); //I'll keep that in mind.
	AI_Output(self, hero, "Info_Mod_Eremit_Prisma9_04_10"); //May it bring you luck on your travels.

	B_GivePlayerXP	(350);

	Wld_StopEffect ("SPELLFX_PRISMA");

	B_SetTopicStatus	(TOPIC_MOD_MAGIEPRISMA, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_PRISMA, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_PRISMA, "When the prism is applied and the hero casts a damage spell, the prism is charged. The prism can hold four spells at the same time. The prism can be triggered by pressing the assigned key and then deals damage to surrounding enemies from the four spells.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
	
	Wld_SendUnTrigger("PRSIMAMOVER");
};

INSTANCE Info_Mod_Eremit_ScrollJG (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_ScrollJG_Condition;
	information	= Info_Mod_Eremit_ScrollJG_Info;
	permanent	= 0;
	important	= 0;
	description	= "Adanos, greeting.";
};

FUNC INT Info_Mod_Eremit_ScrollJG_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Riordian_AW_ScrollJG))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	&& (Npc_HasItems(hero, ItWr_TruhenNotizJG) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_ScrollJG_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_00"); //Adanos, greeting.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_04_01"); //Adanos? Spare us this new-fashioned nonsense!
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_02"); //You're not a fan of water?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_04_03"); //No, he didn't appear in the old writings we read. We were able to decipher four of the languages.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_04"); //Four? I only know three, which is the fourth?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_04_05"); //The language of scholars.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_04_06"); //Then we came across another language. It was so terrible that today we still panic when we think of it.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_07"); //Hmm. Then you can teach me the language of the scholars, too?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_04_08"); //We don't know if you're ready for this yet.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_09"); //Well, try it then. I didn't fall on my head.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_04_10"); //So hear:"Ralgnatiru chrenid kar. “
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_11"); //Stop it. I don't understand a word.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_04_12"); //Yes, you are. Sorry about that.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_13"); //Hmm. Can you at least translate this message for me?

	B_GiveInvItems	(hero, self, ItWr_TruhenNotizJG, 1);

	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_04_14"); //Let me see that.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_04_15"); //Yeah. The scholarly language.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_16"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_04_17"); //You got some gold for us? We have to go shopping with the pirates again.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_15_18"); //How much did you have in mind?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_04_19"); //You seem to care. About 500 gold...

	Info_ClearChoices	(Info_Mod_Eremit_ScrollJG);

	Info_AddChoice	(Info_Mod_Eremit_ScrollJG, "Here you are. Here you go. And?", Info_Mod_Eremit_ScrollJG_B);
	Info_AddChoice	(Info_Mod_Eremit_ScrollJG, "Do 200 gold do it too?", Info_Mod_Eremit_ScrollJG_A);
};

FUNC VOID Info_Mod_Eremit_ScrollJG_B()
{
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_B_15_00"); //Here you are. Here you go. And?

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_B_04_01"); //This text explains how to use a certain spell.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_B_15_02"); //We got the part too.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_B_04_03"); //It says here: Ralgnatiru chrenid....
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_B_04_04"); //By the way:"Take this role, a lump of impure ore, a potion of speed, part of an animal or a fly agaric, the flesh of an undead and two skeletal bones.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_B_04_05"); //
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_B_15_06"); //Whew. That raises more questions than there are answers.
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_B_04_07"); //Sorry about that. We can't help you there either.
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_B_15_08"); //I'll bet you do. So, we're even?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_B_04_09"); //Certainly. We wish you luck.

	B_GivePlayerXP	(250);

	Info_ClearChoices	(Info_Mod_Eremit_ScrollJG);

	Log_CreateTopic	(TOPIC_MOD_JG_OPFERSCHALE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_OPFERSCHALE, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_JG_SCROLL, TOPIC_MOD_JG_OPFERSCHALE, "The hermit has translated the text for me. It is written in the language of scholars and deals with a certain sacrificial bowl. Hmm. I hope Wulfgar knows about this.", "Hmm. I need two skeletal bones, something about a blood fly or a fly agaric, a speeding potion and impure ore. This could be the strange ore I have from Grimbald. Hope I've got it with me. And then the sacrificial bowl. Which one, please? Maybe Riordian...");
	B_SetTopicStatus	(TOPIC_MOD_JG_SCROLL, LOG_SUCCESS);
};

FUNC VOID Info_Mod_Eremit_ScrollJG_A()
{
	AI_Output(hero, self, "Info_Mod_Eremit_ScrollJG_A_15_00"); //Do 200 gold do it too?
	AI_Output(self, hero, "Info_Mod_Eremit_ScrollJG_A_04_01"); //No. We have to buy in advance.

	Info_ClearChoices	(Info_Mod_Eremit_ScrollJG);

	Info_AddChoice	(Info_Mod_Eremit_ScrollJG, "Here you are. Here you go. And?", Info_Mod_Eremit_ScrollJG_B);
};

INSTANCE Info_Mod_Eremit_Zeremoniendolch (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Zeremoniendolch_Condition;
	information	= Info_Mod_Eremit_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello! You know your way around here.";
};

FUNC INT Info_Mod_Eremit_Zeremoniendolch_Condition()
{
	if (Mod_ASS_DolchMonolog == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Zeremoniendolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch_15_00"); //Hello! You know your way around here.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch_04_01"); //That's what we mean. What are you looking for?
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch_15_02"); //Like a ritual site, sacrificial site, a mystical place or something.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch_04_03"); //We'd know something by now. But for us to tell you that, you have to do us a favor.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch_15_04"); //And what's that?
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch_04_05"); //We're running out of food. And then we'd like to have something else than the water from the lake by the pirates.
};

INSTANCE Info_Mod_Eremit_Zeremoniendolch2 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Zeremoniendolch2_Condition;
	information	= Info_Mod_Eremit_Zeremoniendolch2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got some stuff on me. Here, try this wine.";
};

FUNC INT Info_Mod_Eremit_Zeremoniendolch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Zeremoniendolch))
	&& (Npc_HasItems(hero, ItFo_Wine) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Zeremoniendolch2_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch2_15_00"); //I've got some stuff on me. Here, try this wine.

	B_GiveInvItems	(hero, self, ItFo_Wine, 1);

	B_UseItem	(self, ItFo_Wine);

	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch2_04_01"); //Boaar! It's been a long time since you drank that kind of good stuff! Where'd you get that?
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch2_15_02"); //You can buy it almost everywhere in Khorinis.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch2_04_03"); //Khorinis?
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch2_15_04"); //The other part of the island. Where I and the water magicians come from at the temple.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch2_04_05"); //How do you get there?
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch2_15_06"); //Through this very temple. I'm sure the magicians would help you.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch2_04_07"); //We'll think it over. But first, what we urgently need. We'll write you a note.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch2_04_08"); //Meanwhile, you could get us fresh water from the lake in the valley basin near the pirates. Here's a bucket.

	B_GiveInvItems	(self, hero, ItMi_Eimer, 1);

	Log_CreateTopic	(TOPIC_MOD_ASS_EREMIT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_EREMIT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_EREMIT, "The hermit wants to write me a list of things he needs. Meanwhile, I shall fetch him a bucket of water from the lake in the valley basin near the pirates.");
};

INSTANCE Info_Mod_Eremit_Zeremoniendolch3 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Zeremoniendolch3_Condition;
	information	= Info_Mod_Eremit_Zeremoniendolch3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the water.";
};

FUNC INT Info_Mod_Eremit_Zeremoniendolch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Zeremoniendolch2))
	&& (Npc_HasItems(hero, ItMi_EimerW) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Zeremoniendolch3_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch3_15_00"); //Here's the water.

	B_GiveInvItems	(hero, self, ItMi_EimerW, 1);

	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch3_04_01"); //And here's our list. And we also need a new hunting bow and a new pan.

	B_GiveInvItems	(self, hero, ItWr_EremitEinkaufsliste, 1);

	B_HEROFAKESCROLL();

	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch3_15_02"); //I read here: 30 wood. Do you mean normal or heavy branches?
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch3_04_03"); //It doesn't matter. The main thing is that it is dry and burns well.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch3_15_04"); //And then you'll tell me where I can find a place of sacrifice?
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch3_04_05"); //I promise.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch3_15_06"); //See you later.

	B_LogEntry	(TOPIC_MOD_ASS_EREMIT, "Maybe the hermit can help me. But I have to finish his shopping list first. He wants 20 loaves, 10 ham, 10 sausages, 10 wine, 5 grog, 30 branches, 300 arrows, 1 hunting bow, 2 molar fat and a new pan. Hopefully the effort is worthwhile....");

	Wld_InsertNpc	(Mod_7640_RDW_Cavalorn_AW, "ADW_ENTRANCE");
};

INSTANCE Info_Mod_Eremit_Zeremoniendolch4 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Zeremoniendolch4_Condition;
	information	= Info_Mod_Eremit_Zeremoniendolch4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello! Back with your stuff.";
};

FUNC INT Info_Mod_Eremit_Zeremoniendolch4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Zeremoniendolch2))
	&& (Npc_HasItems(hero, ItFo_Bread) >= 20)
	&& (Npc_HasItems(hero, ItFo_Bacon) >= 10)
	&& (Npc_HasItems(hero, ItFo_Wine) >= 10)
	&& (Npc_HasItems(hero, ItFo_Sausage) >= 10)
	&& (Npc_HasItems(hero, ItFo_Addon_Grog) >= 5)
	&& (Npc_HasItems(hero, ItMi_Ast) >= 30)
	&& (Npc_HasItems(hero, ItRw_Arrow) >= 300)
	&& (Npc_HasItems(hero, ItMi_MoleratLubric_MIS) >= 2)
	&& (Npc_HasItems(hero, ItRw_Bow_L_03) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Zeremoniendolch4_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch4_15_00"); //Hello! Back with your stuff. It was pretty expensive, all of it.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch4_04_01"); //Let me see that. Let's see first.

	Npc_RemoveInvItems	(hero, ItFo_Bread, 20);
	Npc_RemoveInvItems	(hero, ItFo_Bacon, 10);
	Npc_RemoveInvItems	(hero, ItFo_Wine, 10);
	Npc_RemoveInvItems	(hero, ItFo_Sausage, 10);
	Npc_RemoveInvItems	(hero, ItFo_Addon_Grog, 5);
	Npc_RemoveInvItems	(hero, ItMi_Ast, 30);
	Npc_RemoveInvItems	(hero, ItRw_Arrow, 300);
	Npc_RemoveInvItems	(hero, ItMi_MoleratLubric_MIS, 2);
	Npc_RemoveInvItems	(hero, ItRw_Bow_L_03, 1);

	B_ShowGivenThings	("Various objects given");

	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch4_04_02"); //Great, everything included. We will give you a suggestion: If our tip helps you, we will get the delivery free of charge. If not, we'll pay for it.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch4_15_03"); //Fine, fine. Where is this damn sacrificial site?
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch4_04_04"); //So listen: Right around the corner, on the way up from the valley, is a hidden turnoff to a small plateau.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch4_04_05"); //You'll find a crypt there. And in there could be your sacrificial site.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch4_15_06"); //Have you ever been there before?
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch4_04_07"); //Save it! It's full of monsters. No one can get us in. We may be a little strange, but we're not suicidal.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch4_15_08"); //I can handle it. I'm excited.

	B_LogEntry	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, "The hermit told me about a plateau near his hut. The entrance is on a path leading up. There's a tomb and lots of monsters. Let's see....");
	B_SetTopicStatus	(TOPIC_MOD_ASS_EREMIT, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	Wld_InsertNpc	(Troll_Weg, "FP_ROAM_VALLEY_010");
};

INSTANCE Info_Mod_Eremit_Zeremoniendolch5 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Zeremoniendolch5_Condition;
	information	= Info_Mod_Eremit_Zeremoniendolch5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Zeremoniendolch5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Zeremoniendolch4))
	&& (Npc_HasItems(hero, ItMw_Avaquar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Zeremoniendolch5_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch5_04_00"); //So, do you have your dagger?
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch5_15_01"); //Yeah. He was actually in the tomb, but well protected. And then the cattle!
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch5_04_02"); //That's what we said. Then we don't owe you anything.
	AI_Output(hero, self, "Info_Mod_Eremit_Zeremoniendolch5_15_03"); //That's the deal. Goodbye, I have to keep going.
	AI_Output(self, hero, "Info_Mod_Eremit_Zeremoniendolch5_04_04"); //May the sun show you the way. Old saying.
};

INSTANCE Info_Mod_Eremit_Sumpfmensch (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Sumpfmensch_Condition;
	information	= Info_Mod_Eremit_Sumpfmensch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Sumpfmensch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skip_Sumpfmensch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Sumpfmensch_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch_04_00"); //What do you want?
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch_15_01"); //Do you know a pirate named Darrion?
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch_04_02"); //Darrion? I know him.
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch_15_03"); //You've translated a book for him.
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch_04_04"); //What if it were? I don't know what that's your business!
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch_15_05"); //He's hurt, he's....
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch_04_06"); //I don't care about that! Go ahead and leave me alone.
	
	AI_StopProcessInfos(self);
};

INSTANCE Info_Mod_Eremit_Sumpfmensch2 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Sumpfmensch2_Condition;
	information	= Info_Mod_Eremit_Sumpfmensch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_Sumpfmensch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Sumpfmensch))
	&& (Npc_HasItems(hero, ItMi_StinkeCheese) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Sumpfmensch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_04_00"); //Wait a minute! That smell.... this beguiling scent... do you have any mould cheese with you?!
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch2_15_01"); //What if I did?
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_04_02"); //Uh... I have to apologize for my rudeness, I didn't mean that. You wanted to know about Darrion, didn't you?
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_04_03"); //He came to me with a book, it was written in the ancient scriptures of this land. He was particularly interested in describing a flower.
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_04_04"); //I translated his page and he disappeared again.
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch2_15_05"); //Otherwise?
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_04_06"); //I haven't seen him since.
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch2_15_07"); //All right, all right. Here.
	
	B_GiveInvItems(hero, self, ItMi_StinkeCheese, 1);
	
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_04_08"); //Oh, yeah! Thank you very much!
	
	B_UseItem(self, ItFo_Cheese);
	
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_04_09"); //Oh yes, tell Darrion, if you don't see him, don't let him put the plant in.
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_04_10"); //The book describes that the plant is somehow related to some kind of monster.
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_04_11"); //Genau hab ich es nicht verstanden, aber der Autor stellt irgendeine Beziehung zwischen einer dieser Pflanzen und fünf "giant marshes" her.
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch2_15_12"); //And why didn't you tell Darrion that?!
	AI_Output(self, hero, "Info_Mod_Eremit_Sumpfmensch2_04_13"); //That was on the next page, I hadn't translated it yet....
	AI_Output(hero, self, "Info_Mod_Eremit_Sumpfmensch2_15_14"); //Oh, man...
	
	AI_StopProcessInfos(self);

	B_LogEntry	(TOPIC_MOD_SL_SUMPFMENSCH, "The hermit told me about a plant that Darrion was interested in. According to the hermit, it is associated with five marsh giants. Maybe Darrion discovered this plant and planted it in the swamp? I should go back to the swamp camp and tell Baal Joru about my findings.");
};

INSTANCE Info_Mod_Eremit_NettHier (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_NettHier_Condition;
	information	= Info_Mod_Eremit_NettHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nice place you got here.";
};

FUNC INT Info_Mod_Eremit_NettHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma))
	&& (Npc_GetDistToWP(self, "ADW_VALLEY_BENCH") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_NettHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_NettHier_15_00"); //Nice place you got here.
	AI_Output(self, hero, "Info_Mod_Eremit_NettHier_04_01"); //You can do anything with a lot of time.
	AI_Output(self, hero, "Info_Mod_Eremit_NettHier_04_02"); //Since we've been together, the room is a little tight, so we sleep together in one bed.
	AI_Output(self, hero, "Info_Mod_Eremit_NettHier_04_03"); //But if you have only the essentials to live with, you will also be able to cope with little space.
};

INSTANCE Info_Mod_Eremit_PreLehrer (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_PreLehrer_Condition;
	information	= Info_Mod_Eremit_PreLehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Eremit_PreLehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma))
	&& (Npc_GetDistToWP(self, "ADW_VALLEY_BENCH") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_PreLehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer_04_00"); //We could teach you the language of ancient culture...
	AI_Output(hero, self, "Info_Mod_Eremit_PreLehrer_15_01"); //Fine. Well, what do I have to...?
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer_04_02"); //(interrupts) We said we could... but we don't have the nerve to do it right now!
	AI_Output(hero, self, "Info_Mod_Eremit_PreLehrer_15_03"); //Why, what's going on?
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer_04_04"); //Ah... those goddamn harpies are making our lives really hard.
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer_04_05"); //Whenever we want to cook something nice, they come in and... oh, damn it, there they are again!

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Harpie_Eremit_01, "ADW_VALLEY_PATH_032");
	Wld_InsertNpc	(Harpie_Eremit_02, "ADW_VALLEY_PATH_032");
};

INSTANCE Info_Mod_Eremit_PreLehrer2 (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_PreLehrer2_Condition;
	information	= Info_Mod_Eremit_PreLehrer2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Eremit_PreLehrer2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_PreLehrer))
	&& (Npc_IsDead(Harpie_Eremit_01))
	&& (Npc_IsDead(Harpie_Eremit_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_PreLehrer2_Info()
{
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer2_04_00"); //See, that's what we meant! Whenever we want to fry ourselves, these creatures come flying at us and defile everything with their stench and filth.
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer2_04_01"); //These damn beasts have their nests somewhere around here...
	AI_Output(hero, self, "Info_Mod_Eremit_PreLehrer2_15_02"); //Have you tried taking her down yet?
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer2_04_03"); //How?! Can we go up to their nests?! And we don't get along on ranged either.
	AI_Output(self, hero, "Info_Mod_Eremit_PreLehrer2_04_04"); //If this goes on like this, we will probably have to find another place to live...

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Harpie_Eremit_03, "FP_ROAM_EREMIT_HARPIE_01");
	Wld_InsertNpc	(Harpie_Eremit_04, "FP_ROAM_EREMIT_HARPIE_02");
	Wld_InsertNpc	(Harpie_Eremit_05, "FP_ROAM_EREMIT_HARPIE_03");

	Log_CreateTopic	(TOPIC_MOD_EREMIT_HARPIEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EREMIT_HARPIEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EREMIT_HARPIEN, "The hermit is repeatedly haunted by harpies that make life difficult for him. He said the creatures in the vicinity must have their nests.");
};

INSTANCE Info_Mod_Eremit_Lehrer (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Lehrer_Condition;
	information	= Info_Mod_Eremit_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "The harpies shouldn't cause you any more trouble in the future.";
};

FUNC INT Info_Mod_Eremit_Lehrer_Condition()
{
	if (Mod_Eremit_Harpien == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Eremit_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Eremit_Lehrer_15_00"); //The harpies shouldn't cause you any more trouble in the future.
	AI_Output(self, hero, "Info_Mod_Eremit_Lehrer_04_01"); //Then you got them all? Great, finally we have our peace again.
	AI_Output(self, hero, "Info_Mod_Eremit_Lehrer_04_02"); //We don't know how to thank you.... hmm, where... take these tablets.

	B_ShowGivenThings	("2 stone tablets preserved");

	CreateInvItems	(hero, ItWr_DexStonePlate1_Addon, 1);
	CreateInvItems	(hero, ItWr_ManaStonePlate1_Addon, 1);

	AI_Output(self, hero, "Info_Mod_Eremit_Lehrer_04_03"); //And if you can't read them yet, we will of course teach you.
	
	Log_CreateTopic	(TOPIC_MOD_LEHRER_JHARKENDAR, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_JHARKENDAR, "The hermit can teach me the languages of this country.");

	B_SetTopicStatus	(TOPIC_MOD_EREMIT_HARPIEN, LOG_SUCCESS);

	CurrentNQ += 1;

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Eremit_Lernen (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Lernen_Condition;
	information	= Info_Mod_Eremit_Lernen_Info;
	permanent 	= TRUE;
	description 	= "I want to learn the languages.";
};
FUNC INT Info_Mod_Eremit_Lernen_Condition ()
{
	if (Npc_KnowsInfo (other, Info_Mod_Eremit_Lehrer))
	&& (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_3] == FALSE)
	{
		return TRUE;
	};
};
FUNC VOID Info_Mod_Eremit_Lernen_Info ()
{
	AI_Output (other, self, "Info_Mod_Eremit_Lernen_15_00"); //I want to learn the languages.
	AI_Output (self, other, "Info_Mod_Eremit_Lernen_04_01"); //Which one do you want to learn?

	Info_ClearChoices (Info_Mod_Eremit_Lernen);
	Info_AddChoice (Info_Mod_Eremit_Lernen, DIALOG_BACK, Info_Mod_Eremit_Lernen_No);
	
	
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == FALSE)
	{
		Info_AddChoice (Info_Mod_Eremit_Lernen,B_BuildLearnString (NAME_ADDON_LEARNLANGUAGE_1 , B_GetLearnCostTalent (other, NPC_TALENT_FOREIGNLANGUAGE, LANGUAGE_1)),Info_Mod_Eremit_Lernen_Yes);
	}	
	else if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_2] == FALSE)
	&& (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Info_AddChoice (Info_Mod_Eremit_Lernen,B_BuildLearnString (NAME_ADDON_LEARNLANGUAGE_2 , B_GetLearnCostTalent (other, NPC_TALENT_FOREIGNLANGUAGE, LANGUAGE_2)),Info_Mod_Eremit_Lernen_Yes);
	}	
	else if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_3] == FALSE)
	&& (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	&& (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_2] == TRUE)
	{
		Info_AddChoice (Info_Mod_Eremit_Lernen,B_BuildLearnString (NAME_ADDON_LEARNLANGUAGE_3 , B_GetLearnCostTalent (other, NPC_TALENT_FOREIGNLANGUAGE, LANGUAGE_3)),Info_Mod_Eremit_Lernen_Yes);
	};
};

FUNC VOID B_Eremit_LernenLanguage()
{	
	AI_Output (self, other, "Info_Mod_Eremit_Lernen_04_02"); //Also, es es ganz einfach. Ein G ist ein O, ein T ist ein H und ein I ist ein C. 
	AI_Output (self, other, "Info_Mod_Eremit_Lernen_04_03"); //Wenn du das mal kapiert hast, ist der Rest eigentlich logisch ...
};

FUNC VOID B_Eremit_LernenLanguage2()
{	
	AI_Output (self, other, "Info_Mod_Eremit_Lernen_04_05"); //Probably for reasons of strategic secrecy, the warriors wrote their lyrics backwards.
	AI_Output (self, other, "Info_Mod_Eremit_Lernen_04_06"); //For example:"Tlah! Rew ad? "or" Elorap! "So it shouldn't be too hard to read these blackboards.
};

FUNC VOID Info_Mod_Eremit_Lernen_No()
{
	Info_ClearChoices (Info_Mod_Eremit_Lernen);
};

FUNC VOID Info_Mod_Eremit_Lernen_Yes()
{
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_3] == TRUE)
	{
		AI_Output (self, other, "Info_Mod_Eremit_Lernen_04_04"); //We don't think we can teach you anything else about it...
	}
	else if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_2] == TRUE)
	{
		if (B_TeachPlayerTalentForeignLanguage (self, other, LANGUAGE_3))
		{
			B_Eremit_LernenLanguage();
		};
	}
	else if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		if (B_TeachPlayerTalentForeignLanguage (self, other, LANGUAGE_2))
		{
			B_Eremit_LernenLanguage();
		};
	}
	else //Keine Language
	{
		if (B_TeachPlayerTalentForeignLanguage (self, other, LANGUAGE_1))
		{
			B_Eremit_LernenLanguage();
		};
	};
};

INSTANCE Info_Mod_Eremit_Pickpocket (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_Pickpocket_Condition;
	information	= Info_Mod_Eremit_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Eremit_Pickpocket_Condition()
{
	C_Beklauen	(80, ItWr_HitPointStonePlate2_Addon, 1);
};

FUNC VOID Info_Mod_Eremit_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);

	Info_AddChoice	(Info_Mod_Eremit_Pickpocket, DIALOG_BACK, Info_Mod_Eremit_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Eremit_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Eremit_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Eremit_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);
};

FUNC VOID Info_Mod_Eremit_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);

		Info_AddChoice	(Info_Mod_Eremit_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Eremit_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Eremit_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Eremit_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Eremit_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Eremit_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Eremit_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Eremit_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Eremit_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Eremit_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Eremit_EXIT (C_INFO)
{
	npc		= Mod_115_NONE_Eremit_AW;
	nr		= 1;
	condition	= Info_Mod_Eremit_EXIT_Condition;
	information	= Info_Mod_Eremit_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Eremit_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Eremit_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
