INSTANCE Info_Mod_Velario_Hi (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_Hi_Condition;
	information	= Info_Mod_Velario_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Velario_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Velario_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Velario_Hi_06_01"); //I'm Velario.
};

INSTANCE Info_Mod_Velario_MangelQuest (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_MangelQuest_Condition;
	information	= Info_Mod_Velario_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you studying, brother?";
};

FUNC INT Info_Mod_Velario_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest_15_00"); //What are you studying, brother?
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_01"); //Hmm, huh? Ohh, sorry, I was just into the scriptures.
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest_15_02"); //What are you working on?
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_03"); //Well, I'm looking for new ways of magical warfare.
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_04"); //This siege demands everything of us, and I must do my utmost to gain an advantage in battle.
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest_15_05"); //And how are the studies going?
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_06"); //To be honest... miserable. I've read every one of these books here, but there's nothing worth mentioning.
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_07"); //I would simply need more writings for my studies, otherwise I seriously doubt that I will ever make any progress.

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Velario desperately searches for writings about magic warfare to better resist the siege.");
};

INSTANCE Info_Mod_Velario_MangelQuest2 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_MangelQuest2_Condition;
	information	= Info_Mod_Velario_MangelQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I think you might be interested in this.";
};

FUNC INT Info_Mod_Velario_MangelQuest2_Condition()
{
	B_StopMangel();
	
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_MangelQuest))
	&& (Npc_HasItems(hero, ItWr_ZombieToHuman) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_MangelQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest2_15_00"); //I think you might be interested in this.

	B_GiveInvItems	(hero, self, ItWr_ZombieToHuman, 1);

	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_01"); //Let me see.

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_02"); //What the...? At Innos, where did you get this work and under what circumstances did you get it?
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest2_15_03"); //It comes from an ancient temple and the circumstances... let's say I was closer to death than I cared about.
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_04"); //I have to study this thoroughly first. I think that this could help me gain crucial knowledge....
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_05"); //But wait, take these roles as a thank you.

	B_ShowGivenThings	("Fire rain saying roll and 2 firestorm saying rolls receive");

	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_06"); //A comparatively modest gift, if the book should actually keep what it seems to promise at first glance.

	CreateInvItems	(hero, ItSc_Firerain, 1);
	CreateInvItems	(hero, ItSc_Pyrokinesis, 2);

	B_GivePlayerXP	(500);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Velario was more than happy about the book.");

	Mod_PAT_VelarioDay = Wld_GetDay();
};

INSTANCE Info_Mod_Velario_AurenUndKristalle (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Velario_AurenUndKristalle_Condition()
{
	if (Mod_PAT_Velario == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle_Info()
{
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_00"); //Yes, finally, the breakthrough!
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_01"); //What did you find out?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_02"); //Im Buch waren zahlreiche Ausführungen über so genannte "aura spell" festgehalten.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_03"); //By studying together with one of the demon magicians, I have succeeded in creating spell rolls that hold this power.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_04"); //What are these spells capable of?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_05"); //If everything works as planned, it is advisable to maintain a constant flame damage to everyone in the environment for a longer period of time when using this spell.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_06"); //This could wipe out dozens of enemies in one fell swoop....
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_07"); //Sounds great to me. Just what we need.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_08"); //Yes... just... there's a problem...
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_09"); //Yeah, what?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_10"); //As I said, everyone in the area is being harmed by it.... including the magician who uses the role of spell itself.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_11"); //This is of course less good...
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_12"); //In addition, the role only affects enemies in the immediate vicinity.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_13"); //In other words, if one wanted to use the saying role with the greatest possible effect, the user would have to go alone in front of the gates among swarms of enemies.
};

INSTANCE Info_Mod_Velario_AurenUndKristalle2 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle2_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've crossed the siege ring so many times...";
};

FUNC INT Info_Mod_Velario_AurenUndKristalle2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle2_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_00"); //I've crossed the siege ring so many times...
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_01"); //Do I understand that correctly, you would agree to use the saying role?
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_02"); //Well, it wouldn't be the first time I've ever set foot in a wasp's nest...
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_03"); //Fantastic. But there's the magic and fire damage thing.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_04"); //Yeah, is there something that could help me resist that?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_05"); //Possibly... the book also gave clues.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_06"); //It seems to be possible to magically influence crystals in such a way that they absorb elemental and magical energies.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_07"); //Such a crystal could be able to protect you from much of the damage.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_08"); //However, this would require some materials that I do not have here.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_09"); //What would you need for that?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_10"); //Well, above all, crystals. And if I remember correctly, there is also a cave nearby where there are more than enough of them.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_11"); //If you could bring me maybe 20 rock crystals and 10 crystals of the crystal crawler, I could start my work on them.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_12"); //In order to get the crystals from the crawlers, you should try to pick them up with a forging tongs and break them off. This should work.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_13"); //All right, I'm on my way.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_14"); //Good. Innos keep you safe.

	Log_CreateTopic	(TOPIC_MOD_FM_AURENUNDKRISTALLE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_AURENUNDKRISTALLE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_AURENUNDKRISTALLE, "Velario has developed some powerful aura spelling roles, but they also devastate the user with fire damage. To protect me from this, it could magically influence crystals that absorb fire and magic damage. For this purpose I shall bring him 20 rock crystals from the crystal cave, as well as 10 crystals from the crawlers, for which I need a forging tongs.");

	Log_CreateTopic (TOPIC_TalentAnimalTrophy, LOG_NOTE);
	B_LogEntry_NS (TOPIC_TalentAnimalTrophy, "... crystal crawler crystals.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Velario_AurenUndKristalle3 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle3_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the crystals.";
};

FUNC INT Info_Mod_Velario_AurenUndKristalle3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle2))
	&& (Npc_HasItems(hero, ItAt_CrawlerKristall) >= 10)
	&& (Npc_HasItems(hero, ItMi_RockCrystal) >= 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle3_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle3_15_00"); //I got the crystals.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle3_06_01"); //Excellent. Beautiful specimens. I'm curious to see what can be made of it.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle3_06_02"); //It's best to check back every few days. When I make progress, I'll let you know immediately.

	B_LogEntry	(TOPIC_MOD_FM_AURENUNDKRISTALLE, "Velario has the crystals and gets right to work. In a few days I should be back at his place.");

	Mod_PAT_VelarioDay = Wld_GetDay();

	B_StartOtherRoutine	(self, "RUNEMAKER");
};

INSTANCE Info_Mod_Velario_AurenUndKristalle4 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle4_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Velario_AurenUndKristalle4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle3))
	&& (Wld_GetDay()-1 > Mod_PAT_VelarioDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle4_Info()
{
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_00"); //It has indeed succeeded! I was able to transform this crystal into a magical tool.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_01"); //If you carry it with you, it should provide you with a comprehensive protection against magic and fire that seeks its equal.

	B_GiveInvItems	(self, hero, ItMi_KristallPrisma, 1);

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_02"); //Here, now you should be able to use these aura sayings without great danger to your life.

	B_GiveInvItems	(self, hero, ItSc_AuraFlammen, 2);

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_03"); //Take also this speed potion and the transformational role.

	CreateInvItems	(hero, ItSc_TrfSnapper, 1);
	CreateInvItems	(hero, ItPo_Speed, 1);

	B_ShowGivenThings	("Drink of speed and saying role' transformation snapper' get obtained");

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_04"); //They may be useful to you in passing the ranks of enemies.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle4_15_05"); //Impressive utensils of magic. I appreciate it.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_06"); //And now.... Let the flame of Innos inspire you when you heat up these cursed witch women!

	B_SetTopicStatus	(TOPIC_MOD_FM_AURENUNDKRISTALLE, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Velario_AurenUndKristalle5 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle5_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle5_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've been using the scroll.";
};

FUNC INT Info_Mod_Velario_AurenUndKristalle5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle4))
	&& (Mod_AuraFlammen_Used == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle5_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle5_15_00"); //I've been using the scroll.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle5_06_01"); //So, how did it go?
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle5_15_02"); //You have fulfilled all expectations.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle5_06_03"); //(pleased) Excellent! This will provide some new impetus for research into magic.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle5_06_04"); //Here, take the recipe for the spell rolls and some mana drinks.

	CreateInvItems	(hero, ItWr_Scroll_AuraFlammen, 1);
	CreateInvItems	(hero, ItPo_Mana_Addon_04, 3);

	B_ShowGivenThings	("Recipe for' Aura of the Flames' and 3 Pure Mana obtained");

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle5_06_05"); //Innos be with you.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Velario_AurenUndKristalle6 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle6_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle6_Info;
	permanent	= 0;
	important	= 0;
	description	= "The crystal has changed.";
};

FUNC INT Info_Mod_Velario_AurenUndKristalle6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle4))
	&& (Npc_HasItems(hero, ItRu_KristallPrisma) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle6_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle6_15_00"); //The crystal has changed.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_01"); //What? Let me see.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_02"); //That... that's impossible.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle6_15_03"); //What has happened?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_04"); //Through repeated contact with fire and magic, he shines the effect of the... to be taken over. It can now be used like a rune.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_05"); //The incredible thing is that he draws his power from none of the gods. That is so fascinating... as well as frightening.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle6_15_06"); //Why?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_07"); //Don't you understand? So far only gods, or divine beings, have been able to enable humans to work magic.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_08"); //However, these research findings now contradict this law. This could mean a revolution for our entire understanding of magic.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_09"); //On the other hand, however...
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle6_15_10"); //Yes?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_11"); //... on the other hand, it at the same time questions the magic monopoly of the three churches.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_12"); //(thoughtfully) I don't think our research results would be particularly appreciated by the high magicians of the councils... especially in the current conflict with Xeres.

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_13"); //It would therefore be better if we kept our findings under lock and key for the time being.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_14"); //The church is not yet so far away and I would hate to see that our findings are a victim of the... well, I think you understand the situation.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_15"); //(slightly sad) It... it's the most sensible thing to do.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_16"); //And now.... Let the flame of Innos inspire you when you heat up these cursed witch women!

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Velario_Fake (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_Fake_Condition;
	information	= Info_Mod_Velario_Fake_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have you seen anything suspicious?";
};

FUNC INT Info_Mod_Velario_Fake_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faros_Fake))
	&& (Npc_KnowsInfo(hero, Info_Mod_Velario_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_Fake_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_Fake_15_00"); //Have you seen anything suspicious?
	AI_Output(self, hero, "Info_Mod_Velario_Fake_06_01"); //No, I don't think so.
	AI_Output(hero, self, "Info_Mod_Velario_Fake_15_02"); //Are you sure about this? Didn't a magician come by who was in a hurry?
	AI_Output(self, hero, "Info_Mod_Velario_Fake_06_03"); //There was actually someone there. I think he was going to the mine.

	B_LogEntry	(TOPIC_MOD_FM_SM, "Velario thinks the mage has fled to the mine.");
};

INSTANCE Info_Mod_Velario_EXIT (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_EXIT_Condition;
	information	= Info_Mod_Velario_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Velario_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Velario_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
