FUNC VOID Info_Mod_PennerVater_Gruss()
{
	AI_Output(hero, self, "Info_Mod_PennerVater_Gruss_15_00"); //Good afternoon, old man.
	AI_Output(self, hero, "Info_Mod_PennerVater_Gruss_03_01"); //In peace, every day is a good day.
	AI_Output(hero, self, "Info_Mod_PennerVater_Gruss_15_02"); //How? Oh, I see. I met your son.
};

FUNC VOID Info_Mod_PennerVater_Liste()
{
	AI_Output(hero, self, "Info_Mod_PennerVater_Liste_15_00"); //You got that right. By the way, how are you doing here?
	AI_Output(self, hero, "Info_Mod_PennerVater_Liste_03_01"); //Hunger is the best cook.
	AI_Output(hero, self, "Info_Mod_PennerVater_Liste_15_02"); //Maybe so. I mean....
	AI_Output(self, hero, "Info_Mod_PennerVater_Liste_03_03"); //Better own bread than roasted meat.
	AI_Output(hero, self, "Info_Mod_PennerVater_Liste_15_04"); //Hmm.
	AI_Output(self, hero, "Info_Mod_PennerVater_Liste_03_05"); //Man does not live on bread alone. Everything has an end, only the sausage has two.
	AI_Output(hero, self, "Info_Mod_PennerVater_Liste_15_06"); //Ah, I understand. You want something to eat.
	AI_Output(self, hero, "Info_Mod_PennerVater_Liste_03_07"); //The stew is poor people's Sunday meal and a glass of wine on the soup, the healer is deprived of a coin.
	AI_Output(hero, self, "Info_Mod_PennerVater_Liste_15_08"); //That's quite a list. Another what?
	AI_Output(self, hero, "Info_Mod_PennerVater_Liste_03_09"); //The cheese tastes good even without bread and the apple does not fall far from the tree.
	AI_Output(hero, self, "Info_Mod_PennerVater_Liste_15_10"); //I see. Does it have to be the same? I'd like to hear about the coin and the treasure.
	AI_Output(self, hero, "Info_Mod_PennerVater_Liste_03_11"); //Don't put off till tomorrow what you can get today.
};

FUNC VOID Info_Mod_PennerVater_Abgabe()
{
	AI_Output(hero, self, "Info_Mod_PennerVater_Abgabe_15_00"); //Here. Eating and drinking keeps body and soul together.

	Npc_RemoveInvItems	(hero, ItFo_Bread, 1);
	Npc_RemoveInvItems	(hero, ItFo_Sausage, 1);
	Npc_RemoveInvItems	(hero, ItFo_Stew, 1);
	Npc_RemoveInvItems	(hero, ItFo_Apple, 1);
	Npc_RemoveInvItems	(hero, ItFo_Wine, 1);
	Npc_RemoveInvItems	(hero, ItFo_Cheese, 1);

	B_ShowGivenThings	("given food");

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_PennerVater_Abgabe_15_01"); //(even) Ha! I can do that, too.

	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_PennerVater_Abgabe_03_02"); //Wes' bread I eat of the' song I sing.
	AI_Output(hero, self, "Info_Mod_PennerVater_Abgabe_15_03"); //I hear....
};

FUNC VOID Info_Mod_PennerVater_Schlusssatz()
{
	AI_Output(self, hero, "Info_Mod_PennerVater_Schlusssatz_03_00"); //Freshly ventured is half the battle. Don't stop travelers.
};

INSTANCE Info_Mod_PennerVater_Hi (C_INFO)
{
	npc		= Mod_7541_OUT_PennerVater_REL;
	nr		= 1;
	condition	= Info_Mod_PennerVater_Hi_Condition;
	information	= Info_Mod_PennerVater_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Good afternoon, old man.";
};

FUNC INT Info_Mod_PennerVater_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Penner_NochDa))
	&& (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_PennerVater_Hi_Info()
{
	Info_Mod_PennerVater_Gruss();

	AI_Output(hero, self, "Info_Mod_PennerVater_Hi_15_00"); //His wife....
	AI_Output(self, hero, "Info_Mod_PennerVater_Hi_03_01"); //Early morning free never did.
	AI_Output(hero, self, "Info_Mod_PennerVater_Hi_15_02"); //... is dying. He needs some money for the crossing.
	AI_Output(self, hero, "Info_Mod_PennerVater_Hi_03_03"); //Save your time and you'll be in trouble.
	AI_Output(hero, self, "Info_Mod_PennerVater_Hi_15_04"); //True! But maybe you do have some gold pieces...

	B_GiveInvItems	(self, hero, ItMi_Gold, 2);

	AI_Output(self, hero, "Info_Mod_PennerVater_Hi_03_05"); //The sparrow in the hand is better than the dove on the roof.
	AI_Output(hero, self, "Info_Mod_PennerVater_Hi_15_06"); //Says you. I don't know....
	AI_Output(self, hero, "Info_Mod_PennerVater_Hi_03_07"); //Whoever does not honor the coin is not worthy of the treasure.

	Info_Mod_PennerVater_Liste();

	B_LogEntry	(TOPIC_MOD_JG_PENNERSVATER, "It's a funny fellow, the old man. I want to know where he got all those sayings. Let's see if I have everything the old man wants: bread, sausage, stew, wine, cheese and an apple. I'll have to go back to the dealer.");
};

INSTANCE Info_Mod_PennerVater_Aufgabe (C_INFO)
{
	npc		= Mod_7541_OUT_PennerVater_REL;
	nr		= 1;
	condition	= Info_Mod_PennerVater_Aufgabe_Condition;
	information	= Info_Mod_PennerVater_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here. Eating and drinking keeps body and soul together.";
};

FUNC INT Info_Mod_PennerVater_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_PennerVater_Hi))
	&& (Npc_HasItems(hero, ItFo_Bread) >= 1)
	&& (Npc_HasItems(hero, ItFo_Sausage) >= 1)
	&& (Npc_HasItems(hero, ItFo_Stew) >= 1)
	&& (Npc_HasItems(hero, ItFo_Apple) >= 1)
	&& (Npc_HasItems(hero, ItFo_Wine) >= 1)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_PennerVater_Aufgabe_Info()
{
	Info_Mod_PennerVater_Abgabe();

	AI_Output(self, hero, "Info_Mod_PennerVater_Aufgabe_03_00"); //Silent waters are deep. And loud falling.
	AI_Output(hero, self, "Info_Mod_PennerVater_Aufgabe_15_01"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_PennerVater_Aufgabe_03_02"); //The best fish swim at the bottom.
	AI_Output(hero, self, "Info_Mod_PennerVater_Aufgabe_15_03"); //Aha! But I don't get it.
	AI_Output(self, hero, "Info_Mod_PennerVater_Aufgabe_03_04"); //No master has fallen from heaven yet.
	AI_Output(hero, self, "Info_Mod_PennerVater_Aufgabe_15_05"); //But water, right?

	Info_Mod_PennerVater_Schlusssatz();

	B_LogEntry	(TOPIC_MOD_JG_PENNERSVATER, "Hm... deep water... fall out loud.... top-down the best at the bottom... Falling water.... Hm...");
	
	Wld_InsertItem(ItMi_Piratenschatz, "FP_ITEM_PIRATENSCHATZ");
};

INSTANCE Info_Mod_PennerVater_Kimon (C_INFO)
{
	npc		= Mod_7541_OUT_PennerVater_REL;
	nr		= 1;
	condition	= Info_Mod_PennerVater_Kimon_Condition;
	information	= Info_Mod_PennerVater_Kimon_Info;
	permanent	= 0;
	important	= 0;
	description	= "Good afternoon, old man.";
};

FUNC INT Info_Mod_PennerVater_Kimon_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Penner_Kimon3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_PennerVater_Kimon_Info()
{
	Info_Mod_PennerVater_Gruss();

	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon_15_00"); //He sent me here...
	AI_Output(self, hero, "Info_Mod_PennerVater_Kimon_03_01"); //Here is as good as anywhere else.
	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon_15_02"); //... and said...
	AI_Output(self, hero, "Info_Mod_PennerVater_Kimon_03_03"); //Lies have short legs.
	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon_15_04"); //(loudly) he said that you have glee dispensers.
	AI_Output(self, hero, "Info_Mod_PennerVater_Kimon_03_05"); //Rich possession makes soul poor.

	AI_TurnAway	(self, hero);

	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon_15_06"); //I can't go on like this. Ask differently.

	AI_TurnToNpc	(self, hero);

	Info_Mod_PennerVater_Liste();

	B_LogEntry	(TOPIC_MOD_KIMON_FREUDENSPENDER, "It's a funny fellow, the old man. I want to know where he got all those sayings. Let's see if I have everything the old man wants: bread, sausage, stew, wine, cheese and an apple. I'll have to go back to the dealer.");
};

INSTANCE Info_Mod_PennerVater_Kimon2 (C_INFO)
{
	npc		= Mod_7541_OUT_PennerVater_REL;
	nr		= 1;
	condition	= Info_Mod_PennerVater_Kimon2_Condition;
	information	= Info_Mod_PennerVater_Kimon2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here. Eating and drinking keeps body and soul together.";
};

FUNC INT Info_Mod_PennerVater_Kimon2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_PennerVater_Kimon))
	&& (Npc_HasItems(hero, ItFo_Bread) >= 1)
	&& (Npc_HasItems(hero, ItFo_Sausage) >= 1)
	&& (Npc_HasItems(hero, ItFo_Stew) >= 1)
	&& (Npc_HasItems(hero, ItFo_Apple) >= 1)
	&& (Npc_HasItems(hero, ItFo_Wine) >= 1)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_PennerVater_Kimon2_Info()
{
	Info_Mod_PennerVater_Abgabe();

	AI_Output(self, hero, "Info_Mod_PennerVater_Kimon2_03_00"); //Whoever gives joy has the key to happiness.
	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon2_15_01"); //Uh-huh. So you have the key? Can I have it?
	AI_Output(self, hero, "Info_Mod_PennerVater_Kimon2_03_02"); //The rich man's trunk is full.
	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon2_15_03"); //Hmm. (according to) The good man deserves the key to the kingdom of heaven.
	AI_Output(self, hero, "Info_Mod_PennerVater_Kimon2_03_04"); //And only the wise man achieves his goal.

	B_GiveInvItems	(self, hero, ItKe_PennerVaterFreudenspender, 1);

	AI_Output(hero, self, "Info_Mod_PennerVater_Kimon2_15_05"); //Can you tell me any more?

	Info_Mod_PennerVater_Schlusssatz();

	B_LogEntry	(TOPIC_MOD_KIMON_FREUDENSPENDER, "A complicated man. But I've got the bon vivants. Kimon will be surprised.");
};

INSTANCE Info_Mod_PennerVater_EXIT (C_INFO)
{
	npc		= Mod_7541_OUT_PennerVater_REL;
	nr		= 1;
	condition	= Info_Mod_PennerVater_EXIT_Condition;
	information	= Info_Mod_PennerVater_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_PennerVater_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_PennerVater_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
