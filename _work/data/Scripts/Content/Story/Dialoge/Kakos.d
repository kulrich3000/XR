INSTANCE Info_Mod_Kakos_Hi (C_INFO)
{
	npc		= Kakos_11006_NW;
	nr		= 1;
	condition	= Info_Mod_Kakos_Hi_Condition;
	information	= Info_Mod_Kakos_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kakos_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kakos_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Kakos_Hi_10_00"); //(coarse) Hey, man. You must have come from the tavern.
	AI_Output(self, hero, "Info_Mod_Kakos_Hi_10_01"); //You can go back there and get me something to drink. 30 beers or 15 junipers.

	Info_ClearChoices	(Info_Mod_Kakos_Hi);

	Info_AddChoice	(Info_Mod_Kakos_Hi, "Why don't you get your own brew?", Info_Mod_Kakos_Hi_B);
	Info_AddChoice	(Info_Mod_Kakos_Hi, "Sure, I'll be glad to help.", Info_Mod_Kakos_Hi_A);
};

FUNC VOID Info_Mod_Kakos_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Kakos_Hi_B_15_00"); //Why don't you get your own brew?
	AI_Output(self, hero, "Info_Mod_Kakos_Hi_B_10_01"); //Then I'll have to smash your head in.

	Info_ClearChoices	(Info_Mod_Kakos_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Kakos_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Kakos_Hi_A_15_00"); //Sure, I'll be glad to help.
	AI_Output(self, hero, "Info_Mod_Kakos_Hi_A_10_01"); //Then don't just stand there, but get out of here before I have to make you feel better.

	Info_ClearChoices	(Info_Mod_Kakos_Hi);

	Mod_NL_Kakos = 1;

	AI_StopProcessInfos	(self);

	Log_CreateTopic	(TOPIC_MOD_NL_KAKOS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_KAKOS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_KAKOS, "I'm supposed to get 30 beers or 15 bottles of juniper for the giant who's dressed up at Bengar. Maybe I should increase the pleasure of the drinks with some fly agaric mushrooms....");
};

INSTANCE Info_Mod_Kakos_Alkohol (C_INFO)
{
	npc		= Kakos_11006_NW;
	nr		= 1;
	condition	= Info_Mod_Kakos_Alkohol_Condition;
	information	= Info_Mod_Kakos_Alkohol_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the booze.";
};

FUNC INT Info_Mod_Kakos_Alkohol_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kakos_Hi))
	&& (Mod_NL_Kakos == 1)
	&& ((Npc_HasItems(hero, ItFo_Beer) >= 30)
	|| (Npc_HasItems(hero, ItFo_Booze) >= 15)
	|| ((Npc_HasItems(hero, ItFo_Beer) >= 29)
	&& (Npc_HasItems(hero, ItFo_GiftBooze) == 1))
	|| ((Npc_HasItems(hero, ItFo_Booze) >= 14)
	&& (Npc_HasItems(hero, ItFo_GiftBooze) == 1)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kakos_Alkohol_Info()
{
	AI_Output(hero, self, "Info_Mod_Kakos_Alkohol_15_00"); //I got the booze.
	AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_10_01"); //Give me that.

	B_ShowGivenThings	("alcohol");

	if (Npc_HasItems(hero, ItFo_GiftBooze) == 1)
	{
		AI_Output(hero, self, "Info_Mod_Kakos_Alkohol_15_02"); //Hehehe, I guess I'll get it.

		Npc_RemoveInvItems	(hero, ItFo_GiftBooze, 1);

		self.attribute[ATR_HITPOINTS] -= self.attribute[ATR_HITPOINTS_MAX]*6/10;

		if (Npc_HasItems(hero, ItFo_Beer) >= 29)
		{
			Npc_RemoveInvItems	(hero, ItFo_Beer, 29);
		}
		else
		{
			Npc_RemoveInvItems	(hero, ItFo_Booze, 14);
		};

		B_UseItem	(self, ItFo_GiftBooze);
	}
	else
	{
		if (Npc_HasItems(hero, ItFo_Beer) >= 30)
		{
			Npc_RemoveInvItems	(hero, ItFo_Beer, 30);

			B_UseItem	(self, ItFo_Beer);
		}
		else
		{
			Npc_RemoveInvItems	(hero, ItFo_Booze, 15);

			B_UseItem	(self, ItFo_Booze);
		};
	};

	AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_10_03"); //Ahh, that was good...
	AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_10_04"); //And now some pieces of meat.
	AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_10_05"); //Whether roasted or not, I don't care, but my big nose tells me you have something with you.

	Info_ClearChoices	(Info_Mod_Kakos_Alkohol);

	Info_AddChoice	(Info_Mod_Kakos_Alkohol, "I have nothing left.", Info_Mod_Kakos_Alkohol_Ende);
	if (Npc_HasItems(hero, ItFoMuttonZombie) > 0)
	{
		Info_AddChoice	(Info_Mod_Kakos_Alkohol, "give zombie flesh", Info_Mod_Kakos_Alkohol_MuttonZombie);
	};
	if (Npc_HasItems(hero, ItFo_MuttonRaw) > 0)
	{
		Info_AddChoice	(Info_Mod_Kakos_Alkohol, "Add raw meat", Info_Mod_Kakos_Alkohol_MuttonRaw);
	};
	if (Npc_HasItems(hero, ItFo_Mutton) > 0)
	{
		Info_AddChoice	(Info_Mod_Kakos_Alkohol, "Giving fried meat", Info_Mod_Kakos_Alkohol_Mutton);
	};
};

FUNC VOID B_CheckKakosFleisch ()
{
	if (Mod_NL_KakosFleisch == 30)
	{
		Mod_NL_Kakos = 2;

		AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_00"); //Ahh, that's enough, you've prepared me a very rich meal.
		AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_01"); //Let me now give you the thanks of the giants.

		AI_StopProcessInfos	(self);

		B_Attack	(self, hero, AR_Kill, 0);
	}
	else
	{
		var int Random;
		Random = Hlp_Random(5);
		
		if (Random == 0)
		{
			AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_02"); //Is that all you got?
		}
		else if (Random == 1)
		{
			AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_03"); //Give me that!
		}
		else if (Random == 2)
		{
			AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_04"); //Give it to me!
		}
		else if (Random == 3)
		{
			AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_05"); //More, more, more!
		}
		else if (Random == 4)
		{
			AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_FleischCheck_10_06"); //I'm far from full.
		};		

		Info_ClearChoices	(Info_Mod_Kakos_Alkohol);

		Info_AddChoice	(Info_Mod_Kakos_Alkohol, "I have nothing left.", Info_Mod_Kakos_Alkohol_Ende);
		if (Npc_HasItems(hero, ItFoMuttonZombie) > 0)
		{
			Info_AddChoice	(Info_Mod_Kakos_Alkohol, "give zombie flesh", Info_Mod_Kakos_Alkohol_MuttonZombie);
		};
	if (Npc_HasItems(hero, ItFo_MuttonRaw) > 0)
	{
		Info_AddChoice	(Info_Mod_Kakos_Alkohol, "Add raw meat", Info_Mod_Kakos_Alkohol_MuttonRaw);
	};
	if (Npc_HasItems(hero, ItFo_Mutton) > 0)
	{
		Info_AddChoice	(Info_Mod_Kakos_Alkohol, "Giving fried meat", Info_Mod_Kakos_Alkohol_Mutton);
	};
	};
};

FUNC VOID Info_Mod_Kakos_Alkohol_Ende()
{
	AI_Output(hero, self, "Info_Mod_Kakos_Alkohol_Ende_15_00"); //I have nothing left.
	AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_Ende_10_01"); //What?! You're just trying to fool me, aren't you?
	AI_Output(self, hero, "Info_Mod_Kakos_Alkohol_Ende_10_02"); //I'll take what you wouldn't give me from your broken body.

	Info_ClearChoices	(Info_Mod_Kakos_Alkohol);

	B_CheckKakosFleisch();
};

FUNC VOID Info_Mod_Kakos_Alkohol_MuttonZombie()
{
	Npc_RemoveInvItems	(hero, ItFoMuttonZombie, 1);

	Mod_NL_KakosFleisch += 1;

	self.attribute[ATR_HITPOINTS] -= self.attribute[ATR_HITPOINTS]/10;

	Info_ClearChoices	(Info_Mod_Kakos_Alkohol);

	B_CheckKakosFleisch();
};

FUNC VOID Info_Mod_Kakos_Alkohol_MuttonRaw()
{
	Npc_RemoveInvItems	(hero, ItFo_MuttonRaw, 1);

	Mod_NL_KakosFleisch += 1;

	Info_ClearChoices	(Info_Mod_Kakos_Alkohol);

	B_CheckKakosFleisch();
};

FUNC VOID Info_Mod_Kakos_Alkohol_Mutton()
{
	Npc_RemoveInvItems	(hero, ItFo_Mutton, 1);

	Mod_NL_KakosFleisch += 1;

	Info_ClearChoices	(Info_Mod_Kakos_Alkohol);

	B_CheckKakosFleisch();
};

INSTANCE Info_Mod_Kakos_EXIT (C_INFO)
{
	npc		= Kakos_11006_NW;
	nr		= 1;
	condition	= Info_Mod_Kakos_EXIT_Condition;
	information	= Info_Mod_Kakos_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kakos_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kakos_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
