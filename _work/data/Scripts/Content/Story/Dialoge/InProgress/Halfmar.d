INSTANCE Info_Mod_Halfmar_Hi (C_INFO)
{
	npc		= Mod_7645_OUT_Halfmar_EIS;
	nr		= 1;
	condition	= Info_Mod_Halfmar_Hi_Condition;
	information	= Info_Mod_Halfmar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Halfmar_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alfans_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Halfmar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_00"); //(surprised) Who is it? Where are you from?
	AI_Output(hero, self, "Info_Mod_Halfmar_Hi_15_01"); //I'm from the village just north of here. Alfans asked me to look you in the right direction.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_02"); //Well, as you can see, I'm not too well.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_03"); //When collecting herbs, a root demon surprised me and bit me in the hand.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_04"); //Since then, I've been sitting here in my cabin trying to cure myself. But nothing seems to help.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_05"); //The poisoning he inflicted on me seems to be magical in nature and there are no simple herbs to help.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_06"); //(thoughtful) If only I had some raven herb and moon shadow plant...
	AI_Output(hero, self, "Info_Mod_Halfmar_Hi_15_07"); //Why, what about these herbs?
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_08"); //They are special plants.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_09"); //Unlike other plants, they do not need sunlight because they draw their energy from magical radiation.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_10"); //Therefore, they are often found in caves with magical ore or near mystical places...
	AI_Output(hero, self, "Info_Mod_Halfmar_Hi_15_11"); //And are there such places around here?
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_12"); //Yes, there is, some hundred meters south of here, a stone circle with a cave.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_13"); //The magical powers there are strong...
	AI_Output(hero, self, "Info_Mod_Halfmar_Hi_15_14"); //Then I'll look for the plants there.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_15"); //Yes, but as I said, the magical energies there are powerful... even in so far that they can manifest themselves.... to creatures.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_16"); //Although I know my way around here, I don't even dare to go there very often....
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_17"); //Just like a few days ago, when I was surprised by the nasty demon collecting herbs.
	AI_Output(self, hero, "Info_Mod_Halfmar_Hi_16_18"); //So take care of yourself.

	B_LogEntry	(TOPIC_MOD_ALFANS_HALFMAR, "I found Halfmar. He's in his hut and in bad shape. A demon bit him in the hand and poisoned him with it. Only the healing effect of a moon shadow and a raven herb can heal him. A few hundred metres to the south there is a stone circle and a cave where I have to find some... demonic creatures.");

	Wld_InsertItem	(ItPl_Mondschatten, "FP_ITEM_MONDSCHATTEN_01");
	Wld_InsertItem	(ItPl_Rabenkraut, "FP_ITEM_RABENKRAUT_01");

	Wld_InsertNpc	(ZombieRandom,	"SUEDMINE_2");
	Wld_InsertNpc	(Demon,	"SUEDMINE_6");
	Wld_InsertNpc	(Skeleton_Halfmar,	"SUEDMINE_15");
};

INSTANCE Info_Mod_Halfmar_HabKraeuter (C_INFO)
{
	npc		= Mod_7645_OUT_Halfmar_EIS;
	nr		= 1;
	condition	= Info_Mod_Halfmar_HabKraeuter_Condition;
	information	= Info_Mod_Halfmar_HabKraeuter_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Halfmar_HabKraeuter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Halfmar_Hi))
	&& (Npc_HasItems(hero, ItPl_Mondschatten) >= 1)
	&& (Npc_HasItems(hero, ItPl_Rabenkraut) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Halfmar_HabKraeuter_Info()
{
	AI_Output(self, hero, "Info_Mod_Halfmar_HabKraeuter_16_00"); //There you are again. Were you successful?
	AI_Output(hero, self, "Info_Mod_Halfmar_HabKraeuter_15_01"); //Yeah, I got the herbs.

	Npc_RemoveInvItems	(hero, ItPl_Mondschatten, 1);
	Npc_RemoveInvItems	(hero, ItPl_Rabenkraut, 1);

	B_ShowGivenThings	("Raven herb and moon shadow given");

	AI_Output(self, hero, "Info_Mod_Halfmar_HabKraeuter_16_02"); //Actually. And you're safe?
	AI_Output(hero, self, "Info_Mod_Halfmar_HabKraeuter_15_03"); //Yes, I could help the demons...
	AI_Output(self, hero, "Info_Mod_Halfmar_HabKraeuter_16_04"); //Excellent. Wait... here, take these herbs as a reward.

	CreateInvItems	(hero, ItPl_Perm_Herb, 1);
	CreateInvItems	(hero, ItPl_Heilknospe, 1);
	CreateInvItems	(hero, ItPl_Health_Herb_03, 1);
	CreateInvItems	(hero, ItPl_Mana_Herb_03, 1);

	B_ShowGivenThings	("Crescent, healing bud, healing root and fire root preserved");

	AI_Output(self, hero, "Info_Mod_Halfmar_HabKraeuter_16_05"); //I'm going to make the potion for my recovery.
	AI_Output(self, hero, "Info_Mod_Halfmar_HabKraeuter_16_06"); //Well, when you get back to Alfans, you can tell him that I'll be coming by with the herbs in the next few days.
	AI_Output(hero, self, "Info_Mod_Halfmar_HabKraeuter_15_07"); //All right, I will.
	AI_Output(self, hero, "Info_Mod_Halfmar_HabKraeuter_16_08"); //Well, thank you very much for everything.

	B_GivePlayerXP	(350);

	B_LogEntry	(TOPIC_MOD_ALFANS_HALFMAR, "Halfmar has the herbs and should be back on his feet soon. When I get back to the village, I can tell Alfans that he'll be back soon.");
};

INSTANCE Info_Mod_Halfmar_GeistGetroffen (C_INFO)
{
	npc		= Mod_7645_OUT_Halfmar_EIS;
	nr		= 1;
	condition	= Info_Mod_Halfmar_GeistGetroffen_Condition;
	information	= Info_Mod_Halfmar_GeistGetroffen_Info;
	permanent	= 0;
	important	= 0;
	description	= "In the cave I met the ghost of a deceased.";
};

FUNC INT Info_Mod_Halfmar_GeistGetroffen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Halfmar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Geist_EIS_Hi))
	&& (Mod_Geist_EIS_Bruder == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Halfmar_GeistGetroffen_Info()
{
	AI_Output(hero, self, "Info_Mod_Halfmar_GeistGetroffen_15_00"); //In the cave I met the ghost of a deceased. He seemed bound to this place for ages.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_01"); //A restless soul trapped in this place?
	AI_Output(hero, self, "Info_Mod_Halfmar_GeistGetroffen_15_02"); //Yeah. As a living man, he once left his life there and since then has waited in vain for the other side.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_03"); //Amazing. I knew this place would attract and capture magical energy.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_04"); //But I would not have thought it possible that he would be able to prevent the dead from going beyond.
	AI_Output(hero, self, "Info_Mod_Halfmar_GeistGetroffen_15_05"); //Well, he mentioned promises he made once.
	AI_Output(hero, self, "Info_Mod_Halfmar_GeistGetroffen_15_06"); //Not to rest until he has found his brother, or until his mortal body has returned to the hereafter.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_07"); //Is that so? Well, that's more understandable.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_08"); //The promise prevents the passage to the other side and the place prevents him from moving freely.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_09"); //He would therefore have to keep his promise to find peace.
	AI_Output(hero, self, "Info_Mod_Halfmar_GeistGetroffen_15_10"); //But all this happened a long time ago, probably well over 100 years ago.
	AI_Output(hero, self, "Info_Mod_Halfmar_GeistGetroffen_15_11"); //Is it possible that his brother is still alive?
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_12"); //Hmm, I don't know... There is a lot of mysticism and magic in this part of the world.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_13"); //It is quite possible that something supernatural has happened, which makes this possible.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_14"); //Judging by your report, his brother was away, far from any settlement.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_15"); //Maybe he came across something unknown to us. That's all I can say.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_16"); //Maybe someday your steps will lead you there if fate wants you to.
	AI_Output(self, hero, "Info_Mod_Halfmar_GeistGetroffen_16_17"); //Perhaps the mystery surrounding the fate of the restless mind will remain in the dark forever...

	B_LogEntry	(TOPIC_MOD_GEIST_BRUDER, "Halfmar believes it is possible that Strewak encountered something supernatural and unknown far from civilization in this world, which prevented him from decaying over time. Maybe someday I'll find out what it was.");
};

INSTANCE Info_Mod_Halfmar_EXIT (C_INFO)
{
	npc		= Mod_7645_OUT_Halfmar_EIS;
	nr		= 1;
	condition	= Info_Mod_Halfmar_EXIT_Condition;
	information	= Info_Mod_Halfmar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Halfmar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Halfmar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
