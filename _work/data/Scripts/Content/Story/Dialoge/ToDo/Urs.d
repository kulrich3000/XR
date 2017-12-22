INSTANCE Info_Mod_Urs_Hi (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hi_Condition;
	information	= Info_Mod_Urs_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urs_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urs_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_00"); //Oh, what misfortune, he has run away.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_01"); //What's going on?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_02"); //(Scared) Huh, who is it?
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_03"); //Just a visitor to the valley.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_04"); //Ohh, thank Innos. I thought you were another bandit. That's all I need.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_05"); //Why, what's going on?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_06"); //Oh, you see those two bandits back there? Full of malice, they chased a pack of Scavenger before my cart.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_07"); //After that, my Wally ran away and chased them. Now I'm standing here and I can't leave.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_08"); //Who's Wally?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_09"); //My loyal, tame friend. He pulls my cart because my own powers won't let me do it anymore.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_10"); //Besides, he keeps a scoundrel from giving me any trouble.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_11"); //Just like the last time I did business in the Mental.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_12"); //The two cutthroaters have already greedily approached my precious goods.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_13"); //But when my Wally grimly growled at them, the courage left them and they changed their minds.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_14"); //Ahh, Wally's your dog. Well, the two bandits are heroes to me.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_15"); //doggy uh, well, kind of. He's an orc dog.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_16"); //An Ork dog? But...
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_17"); //Oh, that's a story that goes back a long way.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_18"); //At that time I accompanied some paladins on the mainland near Faring when they discovered a group of orcs.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_19"); //The fighters Innos immediately took up the fight and killed all the orcs and their animals with the advantage of surprise.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_20"); //When the dust of the battle had settled, I heard a wailing whimpering.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_21"); //Close to a dead orc dog I discovered a fidgeting, helpless puppy.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_22"); //I didn't have the heart to leave him to himself, so I picked him up and pulled him up with my hand.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_23"); //Well, now I understand, of course. Your friend and companion is gone and the bandits are just waiting to take your goods.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_24"); //Hmm, should I trim the two villains?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_25"); //Oh, what good would that do? They have camp in the mountains and when they get help, I'm in trouble.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_26"); //I can still keep them in check just by myself, but the cart...
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_27"); //I don't understand. You can't pull a cart, but you can stop bandits from looting your goods?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_28"); //Well, after my Wally ran away and the two villains tried to pounce on my goods, I used Inno's power to put them in their place once again.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_29"); //When I loaded the ball of fire in my hands....
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_30"); //A fireball? But...
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_31"); //Yeah, you're also making one reveal all the unfortunate details of the past.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_32"); //For I was once a magician of fire, the first three circles mighty.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_33"); //But I began to deal more deeply with the divine powers, with their effect... and the manipulation and equipping of objects with their power.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_34"); //You mean enchantment?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_35"); //Yes, enchant and bless. Usually this is only allowed in very rare cases, for example during the holy consecration of a paladin sword.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_36"); //I violated this commandment when I also enchanted simple items with Inno's fiery magic and passed them on to ordinary people.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_37"); //The chief magician of the fire found out about it and threatened me with excommunication, in case of another violation.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_38"); //And how did it come to that? You didn't stop, did you?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_39"); //No, I obeyed the order.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_40"); //But... but then I was faced with a decision... I just couldn't make up my mind in the sense of Innos... or what the Order of Fire saw as such.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_41"); //I already told you about the circumstances when Wally stepped into my life.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_42"); //But that it was forbidden, under the most severe punishment, to maintain contact with sinister creatures - for as such the order sees orcs and their creatures - or even to house them, I had concealed that.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_43"); //I did raise him in a hut outside the city, but after a few months, when he grew up and I was more often with him in the forest, we noticed that we did.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_44"); //I was offered a choice to get rid of this creature.... or leaving the Order and the city forever.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_45"); //What choice I made, I don't need to mention. He was too dear to my heart.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_46"); //Hmm, yes, a touching story. But what are you going to do now?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_47"); //Oh, I don't know. I can't stand here forever.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_48"); //But don't leave, and neither does my merchandise, and most of all leave Wally behind.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_49"); //I'm sure he'll come back when he shooed the flock around.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_50"); //On the other hand, he could meet guards or mercenaries who would certainly not be well disposed towards him.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_51"); //That's why I should probably go and find him after all.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_52"); //Hmm, let me think... Couldn't you deliver the goods for me?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_53"); //Then I could find him during his Wally.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_54"); //Yeah, why not.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_55"); //Thank you very much. So...

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_56"); //Then I would first have a fiery hammer for the blacksmith Thofeistos, in the New Camp.

	B_GiveInvItems	(self, hero, ItMw_FeurigerHammer, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_57"); //You'll find him in the big den. He will eagerly await the good piece. Surely he will pay 20 lumps of ore for it.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_58"); //Hmm, and from there you will easily find the camp of the Rangers, which you also have to visit.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_59"); //Just follow the road to the old mine. There's a passage behind the camp.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_60"); //For the hunter Zelar I have this charge of magically enchanted arrows.

	B_GiveInvItems	(self, hero, ItMi_PfeilpaketZelar, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_61"); //They wanted them, in case the Night Wisp feeds on their camp again. Because with normal weapons, they can't be handled.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_62"); //Anyway, you'll get some valuable skins for it.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_63"); //Next thing you know, there's this blazing pan for Omid. He's the chef at the House of the Er Barons.

	B_GiveInvItems	(self, hero, ItMi_MagischePfanne, 1);

	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_64"); //Wait a minute, a magic pan for the cook?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_65"); //Yes, some of the ore barons always like to fry their dishes very crisply.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_66"); //And the contented palate of an ore baron can hardly be outweighed in gold. You should certainly get 400 coins for it.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_67"); //So, then this small pack of blessed blanks for the blacksmith Darrion, from the swamp camp.

	B_GiveInvItems	(self, hero, ItMi_ErzpaketDarrion, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_68"); //The blades forged from this material should be more effective against demonic creatures.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_69"); //The ones in the swamp camp used to have trouble with an archdaemon or something.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_70"); //Hmm, looks familiar.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_71"); //Anyway, you'll get a nice package of swampweed for that.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_72"); //Now, then, the camps that have only recently been built.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_73"); //To the magicians in the monastery ruins still this ring, which carries the light Innos' in itself.

	B_GiveInvItems	(self, hero, ItRi_Licht, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_74"); //When it is applied, it illuminates the surroundings for some time.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_75"); //One of the metamorphosis mages wanted to have it so that he could continue his research late at night without any incisions.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_76"); //If you don't know where to find it yet: Just follow this river downstream until it splits into two runs.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_77"); //To the left is the monastery ruin. You will give the ring to the gatekeeper Ferco and get a magic run for it.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_78"); //I'll sell the rest some other time when there's less trouble in the air.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_79"); //As soon as you get it all together, you'll find me here.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_80"); //As a reward, I want you to get one of my best pieces. You will certainly be satisfied.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_81"); //Don't take too long, please. I can't stay here forever.

	Log_CreateTopic	(TOPIC_MOD_URS_HUND, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_URS_HUND, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_URS_HUND, "Dealer Urs has pulled out his Orkhund Wally below the pass. Since the bandits are close by and he wants to find his Wally quickly, I'm going to take care of his most important goods. In the New Camp the blacksmith Thofeistos expects a fiery hammer, for which I get ore. Near the old mine I meet the Rangers. For several blessed arrows I get some valuable skins. In the Old Camp I shall hand over a blazing pan to the chef of the Erzbarone Omid, for which some gold coins will pop out. Blacksmith Darrion in the swamp camp is waiting for some blessed blanks, for which I get a packet of bogweed. Following the course of the river below the pass, I will find a monastery ruin on the left, in which magicians of transformation live. I give a ring of light to the gatekeeper Ferco and in return I get a rune. When I have everything together, I should bring it to Urs, for which he promised me a satisfactory reward. I should hurry though, because he can't stay in place forever.");
};

INSTANCE Info_Mod_Urs_Hund (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hund_Condition;
	information	= Info_Mod_Urs_Hund_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urs_Hund_Condition()
{
	if (Mod_Urs_Hund == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urs_Hund_Info()
{
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_00"); //Ahh, there you are.
	AI_Output(hero, self, "Info_Mod_Urs_Hund_15_01"); //I read your note. But I see you still haven't found Wally.
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_02"); //No, unfortunately not here either. Now there is one last possibility. Yes, of course, he'll be there.
	AI_Output(hero, self, "Info_Mod_Urs_Hund_15_03"); //Yes?
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_04"); //The orc region. His instincts and memories probably led him there. That's where I'll find him.
	AI_Output(hero, self, "Info_Mod_Urs_Hund_15_05"); //The orcish area? Isn't that suicide? even with your magic.
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_06"); //No, not necessarily. It will not be the flame Innos that gives me safe passage there.
	AI_Output(hero, self, "Info_Mod_Urs_Hund_15_07"); //What do you think?
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_08"); //Well, a little ritual.
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_09"); //You'll see... but I need the things you get in exchange for my goods.
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_10"); //Have you got everything you need?
};

INSTANCE Info_Mod_Urs_Hund2 (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hund2_Condition;
	information	= Info_Mod_Urs_Hund2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got everything.";
};

FUNC INT Info_Mod_Urs_Hund2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urs_Hund))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 20)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 400)
	&& (Npc_HasItems(hero, ItMi_HerbPaket) >= 1)
	&& (Npc_HasItems(hero, ItRu_TrfMolerat) == 1)
	&& (Npc_HasItems(hero, ItAt_WargFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_ShadowFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_TrollFur) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urs_Hund2_Info()
{
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_00"); //I got everything.

	B_ShowGivenThings	("Urs Waren given");

	Npc_RemoveInvItems	(hero, ItMi_Nugget, 20);
	Npc_RemoveInvItems	(hero, ItMi_HerbPaket, 1);
	Npc_RemoveInvItems	(hero, ItRu_TrfMolerat, 1);
	Npc_RemoveInvItems	(hero, ItAt_WargFur, 2);
	Npc_RemoveInvItems	(hero, ItAt_ShadowFur, 2);
	Npc_RemoveInvItems	(hero, ItAt_TrollFur, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_01"); //Excellent. You did a fine job of that.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_02"); //I don't need you to keep the gold, I don't need it... and, well, here's your real reward.

	B_GiveInvItems	(self, hero, ItRi_Versengung, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_03"); //This ring will reinforce your attacks with some fire and magic.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_04"); //All right, thank you. And what next?
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_05"); //Well, to perform this ritual, I need a mystical, magical place.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_06"); //Not far from here I saw a stone circle in a forest.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_07"); //During my time as a fire magician I had dealt with the relics of ancient cultures.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_08"); //It was said that these circles were once able to overcome barriers of magic, space and time.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_09"); //That sounds like very powerful rites.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_10"); //Yes, indeed. The mages of earlier cultures had to decay into a kind of magical, meditative state and unite their powers or use strong external sources of magical energy.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_11"); //Magic Source? You mean the magic thing...
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_12"); //Exactly, the magic ore. And a packet of bogweed should be more than enough to ensure a meditation-like state.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_13"); //All right, but what kind of ritual are you going to do?
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_14"); //I intend to transfer the power of a somewhat stronger animal to the metamorphosis rune.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_15"); //As a Molerat I would probably not get too far in the orc region, but end up as a lunchtime snack for all the wild creatures.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_16"); //Ahh, that's what the ritual is all about.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_17"); //Exactly. Well, I have the necessary things.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_18"); //Now I have to overcome all the magical creatures in the stone circle.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_19"); //It should be in my power, and I know you've already done a lot for me.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_20"); //However, I would be very grateful if you would help me once again by helping me against the creatures in the stent circle.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_21"); //If you put on the ring, you will even be able to damage Night Wispers, which are largely immune to common weapons.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_22"); //All right, let's go to the stone circle.

	B_LogEntry	(TOPIC_MOD_URS_HUND, "Urs will now go to the stone circle to create a new transformation rune. He's trying to find Wally, who's probably on his way to the orcish area. I was supposed to help Urs break the creatures at the Stone Circle. I could put the new ring on right away and try it out.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ZUSTEINKREIS");

	self.aivar[AIV_Partymember] = TRUE;

	B_GivePlayerXP	(600);

	Wld_InsertNpc	(Wisp,	"OW_PATH_WARAN01_SPAWN02");
	Wld_InsertNpc	(Wisp,	"FP_ROAM_OW_BLOODFLY_WALD_OC4");
	Wld_InsertNpc	(Wisp,	"FP_ROAM_OW_BLOODFLY_WALD_OC2");
};

INSTANCE Info_Mod_Urs_Hund3 (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hund3_Condition;
	information	= Info_Mod_Urs_Hund3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urs_Hund3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urs_Hund2))
	&& (Npc_GetDistToWP(hero, "OW_FOREST_EAST_UMWEG_02") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urs_Hund3_Info()
{
	AI_Output(self, hero, "Info_Mod_Urs_Hund3_12_00"); //Now it can begin.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATSTEINKREIS");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Urs_Hund4 (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hund4_Condition;
	information	= Info_Mod_Urs_Hund4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urs_Hund4_Condition()
{
	if (Mod_Urs_Hund == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urs_Hund4_Info()
{
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_00"); //You here?
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_01"); //Just visiting old acquaintances. And I'm also surprised to find you here.... I see with Wally.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_02"); //Yeah, well, maybe it was an adventure, you wouldn't believe that.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_03"); //After I had slipped into the shape of a warg, I wanted to go straight into the orc area.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_04"); //But I had forgotten that most people are not particularly pleased about the appearance of such a creature... and a guardsman's bolt would have caught me.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_05"); //Well, when I remembered that, of course, I quickly gave him the heel money and then - at first in a very unusual way - I was able to bring myself to safety in the middle of a hurricane.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_06"); //And how could you find Wally among all the quadrupeds?
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_07"); //Not at all. He found me. However, I had to roam the orcish area for quite a while.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_08"); //After one day I felt almost at home among all the orcs and quadrupeds.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_09"); //And when I got hungry, I even caught myself chasing after a scavenger who had lost his way to the orcish area.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_10"); //Well, all of that in a nutshell.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_11"); //Anyway, after some time I also passed near a tower where a pack of hurricane dogs camped.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_12"); //At first it seemed that I was not right and I wanted to walk on when I suddenly heard a loud bark from the abandoned building.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_13"); //When I turned around, I saw Wally come rushing out.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_14"); //At first he had probably only scented me and was confusedly standing in front of me, in the unusual shape.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_15"); //When I was just about to turn back, I remembered the close pack of hurricane dogs and only walked a few meters further on, whereupon Wally followed me carefully after some hesitation.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_16"); //When I finally stood before him in my normal form, the joy of seeing him again was naturally great.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_17"); //Well, wasn't exactly uncomplicated either. Hmm, and Wally just got away from his fellows again?
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_18"); //Well, his instincts make Wally naturally strive towards the environment of his early puppyhood.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_19"); //But at the end of the day he probably lived among people for too long and got used to me... as I am to him, as my faithful friend and companion.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_20"); //Yeah, I guess you two aren't getting separated that easily. And then you went on roaming the orcish territory together?
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_21"); //Yes, because at the exits to the orc area orcs sat on warg on guards too close to each other, so that we could not have passed without getting between you fronts... whether as a human being, warg or man accompanied by an orc dog.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_22"); //That wouldn't have gone well.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_23"); //So we looked for another way out and after some time we met the abandoned mountain fortress, with these friendly orcs.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_24"); //Incredible, isn't it?
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_25"); //Oh, some things are possible...
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_26"); //Yeah, everything that doesn't exist. Some narrow-minded Inno-servants would explain that as a thing of impossibility.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_27"); //After all, the world is not so easily divided into darkness and light, good and evil, as many a hypocritical priest would like to depict it.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_28"); //Yeah, there's some truth in that. So what are you two going to do now?
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_29"); //We don't really know yet.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_30"); //But at least as I have heard from the orcs here, there is a narrow path that leads out of the orc region and is not guarded by guards.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_31"); //We'll take that... and then keep looking.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_32"); //Hmm, at least somewhere where you don't get chased out of the city because of your best friend or moron heads immediately draw the sword against him.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_33"); //Good luck with that, then.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_34"); //Thanks, you too. I'm sure we'll meet again sometime.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Urs_EXIT (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_EXIT_Condition;
	information	= Info_Mod_Urs_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Urs_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urs_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
