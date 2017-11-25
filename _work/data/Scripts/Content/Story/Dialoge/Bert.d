INSTANCE Info_Mod_Bert_Hi (C_INFO)
{
	npc		= Mod_1582_SFB_Bert_FM;
	nr		= 1;
	condition	= Info_Mod_Bert_Hi_Condition;
	information	= Info_Mod_Bert_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bert_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bert_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_00"); //What, who are you? Have the crawlers gone?
	AI_Output(hero, self, "Info_Mod_Bert_Hi_15_01"); //What are you doing up here?
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_02"); //The last time the crawlers robbed, I fled here.
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_03"); //I had to watch with my own eyes how many of my friends were slaughtered by the crawlers and dragged away to the back of the cave.
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_04"); //Only Claus couldn't get it out because his body hung with one leg between the scaffolding.
	AI_Output(hero, self, "Info_Mod_Bert_Hi_15_05"); //Yeah, well, why are you telling me all this? Besides, I don't see any corpse lying around here....
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_06"); //Damn, that's what I was just explaining.
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_07"); //After a few hours, I fell asleep from exhaustion.
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_08"); //Hours later I was suddenly awakened by strange sounds and lights.
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_09"); //As I peeked over the rock, I saw that I didn't want to believe my eyes, Claus was swaying and disappearing behind the rocks and further back I felt as if a shining figure was jumping around.
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_10"); //Then she disappeared suddenly. I think I'm starting to lose my mind....
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_11"); //Do you have anything to eat and drink for me so that I can regain my mind and strength?

	B_LogEntry	(TOPIC_MOD_NL_CRAWLER, "I met a survivor scout. He told of how he saw his dead friend walk away in the dark and of shining figures. Sounds rather diffuse.");

	Info_ClearChoices	(Info_Mod_Bert_Hi);

	Info_AddChoice	(Info_Mod_Bert_Hi, "No.", Info_Mod_Bert_Hi_C);

	if (Npc_HasItems(hero, ItFo_Milk) >= 1)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 1)
	&& (Npc_HasItems(hero, ItFo_Mutton) >= 1)
	{
		Info_AddChoice	(Info_Mod_Bert_Hi, "Here, take this. (giving milk, fried meat and bread)", Info_Mod_Bert_Hi_B);
	};

	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 1)
	{
		Info_AddChoice	(Info_Mod_Bert_Hi, "Here, take this. (add bread and water)", Info_Mod_Bert_Hi_A);
	};
};

FUNC VOID Info_Mod_Bert_Hi_C()
{
	B_Say	(hero, self, "$NO");

	AI_Output(self, hero, "Info_Mod_Bert_Hi_C_10_01"); //Well, I'll just have to get through it.
	
	Info_ClearChoices	(Info_Mod_Bert_Hi);
};

FUNC VOID Info_Mod_Bert_Hi_B()
{
	B_Say	(hero, self, "$HIERNIMM");

	B_ShowGivenThings	("Milk, bread and fried meat given");

	Npc_RemoveInvItems	(hero, ItFo_Milk, 1);
	Npc_RemoveInvItems	(hero, ItFo_Bread, 1);
	Npc_RemoveInvItems	(hero, ItFo_Mutton, 1);

	AI_Output(self, hero, "Info_Mod_Bert_Hi_B_10_01"); //Thank you very much. That's all you can ask for.

	B_GivePlayerXP	(200);

	Mod_NL_Bert = 1;
	
	Info_ClearChoices	(Info_Mod_Bert_Hi);
};

FUNC VOID Info_Mod_Bert_Hi_A()
{
	B_Say	(hero, self, "$HIERNIMM");

	B_ShowGivenThings	("Bread and water added");

	Npc_RemoveInvItems	(hero, ItFo_Water, 1);
	Npc_RemoveInvItems	(hero, ItFo_Bread, 1);

	AI_Output(self, hero, "Info_Mod_Bert_Hi_A_10_01"); //I appreciate it.

	B_GivePlayerXP	(100);

	Mod_NL_Bert = 1;
	
	Info_ClearChoices	(Info_Mod_Bert_Hi);
};

INSTANCE Info_Mod_Bert_Gormgniez (C_INFO)
{
	npc		= Mod_1582_SFB_Bert_FM;
	nr		= 1;
	condition	= Info_Mod_Bert_Gormgniez_Condition;
	information	= Info_Mod_Bert_Gormgniez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bert_Gormgniez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gormgniez_Hi))
	&& (Mod_NL_Bert == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bert_Gormgniez_Info()
{
	AI_Output(self, hero, "Info_Mod_Bert_Gormgniez_10_00"); //Thank you very much for my salvation, as well as food and drink.
	AI_Output(self, hero, "Info_Mod_Bert_Gormgniez_10_01"); //I have little that I can give you, but at least I will teach you to dig into the art of mining ore.
	AI_Output(self, hero, "Info_Mod_Bert_Gormgniez_10_02"); //Pay attention to the structure and texture of the ore. Where do cracks and weak points in the vein run into which you can drive your pickaxe?
	AI_Output(self, hero, "Info_Mod_Bert_Gormgniez_10_03"); //If you take that into account, you'll be able to knock out big chunks.

	B_GivePlayerXP	(200);

	B_Upgrade_ErzHackChance (10);
};

INSTANCE Info_Mod_Bert_Pickpocket (C_INFO)
{
	npc		= Mod_1582_SFB_Bert_FM;
	nr		= 1;
	condition	= Info_Mod_Bert_Pickpocket_Condition;
	information	= Info_Mod_Bert_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Bert_Pickpocket_Condition()
{
	C_Beklauen	(32, ItMi_Nugget, 2);
};

FUNC VOID Info_Mod_Bert_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bert_Pickpocket);

	Info_AddChoice	(Info_Mod_Bert_Pickpocket, DIALOG_BACK, Info_Mod_Bert_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bert_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bert_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bert_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bert_Pickpocket);
};

FUNC VOID Info_Mod_Bert_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bert_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bert_Pickpocket);

		Info_AddChoice	(Info_Mod_Bert_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bert_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bert_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bert_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bert_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bert_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bert_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bert_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bert_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bert_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bert_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bert_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bert_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bert_EXIT (C_INFO)
{
	npc		= Mod_1582_SFB_Bert_FM;
	nr		= 1;
	condition	= Info_Mod_Bert_EXIT_Condition;
	information	= Info_Mod_Bert_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bert_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bert_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
