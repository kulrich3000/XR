INSTANCE Info_Mod_Lomar_Hi (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_Hi_Condition;
	information	= Info_Mod_Lomar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lomar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lomar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_00"); //Oops, the undead filthy creatures have never ventured out of the moor that far.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_01"); //I'm gonna hit him with a club and throw it back into the moor.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_02"); //Although... I could really use the meat...

	AI_DrawWeapon	(self);

	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_03"); //Uh... always slow. I'm not an undead.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_04"); //What, you're talking? Are you a ghost? No, I can't see through you.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_05"); //Or are you not real at all, is my mind playing a trick on me?
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_06"); //No, I'm pretty real, I think.

	AI_RemoveWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_07"); //Is it possible? Someone who made it through the moor alive after so long? Speak, who are you?
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_08"); //An adventurer and knight of fortune.... like most on the other side of the moor who came to recover his treasures.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_09"); //But I don't think nobody's come this far.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_10"); //What, the madmen voluntarily enter this damn piece of land just to fill their pockets?!
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_11"); //Well... but good to know there's someone else out there.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_12"); //Wouldn't have thought that after such a long time I would be able to see a living person again.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_13"); //A long time? How did you get to that abandoned spot?
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_14"); //Well, it must have been almost two decades ago when I went out with my companions to provide the governor.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_15"); //This wicked thief had stolen the magical focus that protected our settlement and had fled to the moor.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_16"); //When we entered it, however, it proved to be more hostile than we had ever experienced before.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_17"); //Evil creatures were rising from all sides, falling over us and the air was so full of poison, that you could hardly see the bare hand in front of your eyes.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_18"); //It was like trying to get rid of us by any means possible.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_19"); //I quickly lost track of my companions... and ran like I had never done before in my life without knowing where to go... until I land here.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_20"); //So you've been here for 20 years?! How did you manage to survive here?
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_21"); //Well, as you can see, this piece of land has been spared from the direct influence of the moor.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_22"); //This cabin was standing right here when I got lost here.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_23"); //Some of the tools and weapons I needed to survive were already with me when I left for the moor.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_24"); //I found the rest at the edge of the moor over the years.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_25"); //And what do you eat? You mentioned something earlier about... the flesh of the undead.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_26"); //What?! No, at Innos, not what you think.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_27"); //I used the flesh to extract poison for my arrows.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_28"); //The bog bodies are exposed to toxic fumes for so long that they are completely permeated by them.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_29"); //Now and then I shoot one of the harpies that nest in the rocks.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_30"); //Sometimes I climb up to steal one of their eggs.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_31"); //Well, last time I was lucky, I could even shoot a goblin who was about to plunder one of their nests.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_32"); //Finally some variety on the menu.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_33"); //But what a host I am. The first visit in 20 years and I don't offer my guest anything.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_34"); //So how about a crispy piece of goblin meat?

	Info_ClearChoices	(Info_Mod_Lomar_Hi);

	Info_AddChoice	(Info_Mod_Lomar_Hi, "Goblin meat? Hmm, something new...", Info_Mod_Lomar_Hi_B);
	Info_AddChoice	(Info_Mod_Lomar_Hi, "Uh, thanks, another time.", Info_Mod_Lomar_Hi_A);
};

FUNC VOID Info_Mod_Lomar_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_00"); //Be that as it may, the moor provides fruit. It was another good season. That's where I harvested a lot of bog bilberries.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_C_15_01"); //Harvested? How so?
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_02"); //Well, these carnivorous plants with a big appetite thrive here.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_03"); //I started growing them on a small field behind my hut.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_04"); //And when the harvest time has come, I take a sharp blade and prune it a little bit.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_05"); //If you want to taste a mulberry, help yourself. There's more in the cabin.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_C_15_06"); //You seem to have settled in here really well.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_07"); //Yes, with time you learn to get along with what nature has to offer.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_08"); //Just once in a while.... Yes, I would like to eat a juicy piece of cheese.

	Info_ClearChoices	(Info_Mod_Lomar_Hi);
};

FUNC VOID Info_Mod_Lomar_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_B_15_00"); //Goblin meat? Hmm, something new...
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_B_10_01"); //Here you go, please.

	B_GiveInvItems	(self, hero, ItFo_Mutton, 1);

	B_UseItem	(hero, ItFo_Mutton);

	AI_Output(hero, self, "Info_Mod_Lomar_Hi_B_15_02"); //(surprised) Hmm, not bad at all. Reminds me of.... Chicken.

	B_GivePlayerXP	(50);

	Info_Mod_Lomar_Hi_C();
};

FUNC VOID Info_Mod_Lomar_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_A_15_00"); //Uh, thanks, another time.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_A_10_01"); //Too bad. You don't know what tasty stuff you're missing.

	Info_Mod_Lomar_Hi_C();
};

INSTANCE Info_Mod_Lomar_Kaese (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_Kaese_Condition;
	information	= Info_Mod_Lomar_Kaese_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's your cheese.";
};

FUNC INT Info_Mod_Lomar_Kaese_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lomar_Hi))
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lomar_Kaese_Info()
{
	AI_Output(hero, self, "Info_Mod_Lomar_Kaese_15_00"); //Here's your cheese.

	B_GiveInvItems	(hero, self, ItFo_Cheese, 1);

	AI_Output(self, hero, "Info_Mod_Lomar_Kaese_10_01"); //Real cheese..... Thank you very much.
	AI_Output(self, hero, "Info_Mod_Lomar_Kaese_10_02"); //What can I give you for that? ahh, here, take this gold trophy.

	B_GiveInvItems	(self, hero, ItMi_GoldCup, 1);

	AI_Output(self, hero, "Info_Mod_Lomar_Kaese_10_03"); //He's no use to me here.

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Lomar_WarumNichtWeg (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_WarumNichtWeg_Condition;
	information	= Info_Mod_Lomar_WarumNichtWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why don't you leave the moor?";
};

FUNC INT Info_Mod_Lomar_WarumNichtWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lomar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lomar_WarumNichtWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Lomar_WarumNichtWeg_15_00"); //Why don't you leave the moor?
	AI_Output(self, hero, "Info_Mod_Lomar_WarumNichtWeg_10_01"); //Well, because of all the creatures in the moor.
	AI_Output(self, hero, "Info_Mod_Lomar_WarumNichtWeg_10_02"); //Because since the theft of focus, it has become - as already mentioned - much more hostile to life than it was before.
	AI_Output(self, hero, "Info_Mod_Lomar_WarumNichtWeg_10_03"); //As long as that doesn't change, I see myself walking through it.... which means I'm going to spend the rest of my days here.
};

INSTANCE Info_Mod_Lomar_GanzAlleine (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_GanzAlleine_Condition;
	information	= Info_Mod_Lomar_GanzAlleine_Info;
	permanent	= 0;
	important	= 0;
	description	= "20 years without the company of others... Admirable.";
};

FUNC INT Info_Mod_Lomar_GanzAlleine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lomar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lomar_GanzAlleine_Info()
{
	AI_Output(hero, self, "Info_Mod_Lomar_GanzAlleine_15_00"); //20 years without the company of others... It's admirable that you can communicate so well and are clear-minded.
	AI_Output(self, hero, "Info_Mod_Lomar_GanzAlleine_10_01"); //Oh, I wasn't all alone. I'm lucky to have Paul.
	AI_Output(self, hero, "Info_Mod_Lomar_GanzAlleine_10_02"); //He's always kept me in good company, and he's been up to a lot of jokes.
	AI_Output(self, hero, "Info_Mod_Lomar_GanzAlleine_10_03"); //Usually he waits at the entrance to the hut.
	AI_Output(self, hero, "Info_Mod_Lomar_GanzAlleine_10_04"); //But say hello to him when you meet him... he's easily hurt, you know....
};

INSTANCE Info_Mod_Lomar_Siedlung (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_Siedlung_Condition;
	information	= Info_Mod_Lomar_Siedlung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lomar_Siedlung_Condition()
{
	if (Mod_Parcival_VorKneipe == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lomar_Siedlung_Info()
{
	AI_Output(self, hero, "Info_Mod_Lomar_Siedlung_10_00"); //Yes, the settlement will soon be restored to its former glory.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Lomar_EXIT (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_EXIT_Condition;
	information	= Info_Mod_Lomar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lomar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lomar_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Lomar_EXIT_10_00"); //Don't get yourself killed.

	AI_StopProcessInfos	(self);
};
