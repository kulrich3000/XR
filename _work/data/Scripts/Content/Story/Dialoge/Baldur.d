INSTANCE Info_Mod_Baldur_Hi (C_INFO)
{
	npc		= Mod_7431_JG_Baldur_MT;
	nr		= 1;
	condition	= Info_Mod_Baldur_Hi_Condition;
	information	= Info_Mod_Baldur_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello! What do they call you?";
};

FUNC INT Info_Mod_Baldur_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Baldur_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Baldur_Hi_15_00"); //Hello! What do they call you?
	AI_Output(self, hero, "Info_Mod_Baldur_Hi_08_01"); //I am Baldur, hunter in the service of the druids and rangers.
	AI_Output(hero, self, "Info_Mod_Baldur_Hi_15_02"); //Ranger? Druids? What...?
	AI_Output(self, hero, "Info_Mod_Baldur_Hi_08_03"); //Rangers are also hunters, but they are partly committed to close combat.
	AI_Output(hero, self, "Info_Mod_Baldur_Hi_15_04"); //And the Druids?
	AI_Output(self, hero, "Info_Mod_Baldur_Hi_08_05"); //These are the leaders of the Rangers. And also all hunters.
	AI_Output(self, hero, "Info_Mod_Baldur_Hi_08_06"); //Wise men who know their way around medicine and magic.
	AI_Output(self, hero, "Info_Mod_Baldur_Hi_08_07"); //They don't hunt and fight rarely, they are nature-loving and pray to Adanos.
	AI_Output(hero, self, "Info_Mod_Baldur_Hi_15_08"); //Interesting! Thanks for the information.
};

INSTANCE Info_Mod_Baldur_CyrcoMine (C_INFO)
{
	npc		= Mod_7431_JG_Baldur_MT;
	nr		= 1;
	condition	= Info_Mod_Baldur_CyrcoMine_Condition;
	information	= Info_Mod_Baldur_CyrcoMine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey Baldur! You were in the fight earlier.";
};

FUNC INT Info_Mod_Baldur_CyrcoMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_BaalOrun))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baldur_CyrcoMine_Info()
{
	AI_Output(hero, self, "Info_Mod_Baldur_CyrcoMine_15_00"); //Hey Baldur! You were in the fight earlier.
	AI_Output(self, hero, "Info_Mod_Baldur_CyrcoMine_08_01"); //That's what I mean! That's a bunch we've got!
	AI_Output(hero, self, "Info_Mod_Baldur_CyrcoMine_15_02"); //You up for another round? I got another mission.
	AI_Output(self, hero, "Info_Mod_Baldur_CyrcoMine_08_03"); //No, let it go. I hurt my arm. Better not.
};

INSTANCE Info_Mod_Baldur_Felle (C_INFO)
{
	npc		= Mod_7431_JG_Baldur_MT;
	nr		= 1;
	condition	= Info_Mod_Baldur_Felle_Condition;
	information	= Info_Mod_Baldur_Felle_Info;
	permanent	= 0;
	important	= 0;
	description	= "The alchemist needs fresh skins.";
};

FUNC INT Info_Mod_Baldur_Felle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wulfgar_Felle3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baldur_Felle_Info()
{
	AI_Output(hero, self, "Info_Mod_Baldur_Felle_15_00"); //The alchemist needs fresh skins.
	AI_Output(self, hero, "Info_Mod_Baldur_Felle_08_01"); //There's a pile of them. Help yourself.
	AI_Output(hero, self, "Info_Mod_Baldur_Felle_15_02"); //I'll have 10 pieces.
	AI_Output(self, hero, "Info_Mod_Baldur_Felle_08_03"); //Go right ahead. I don't need to drag her down.

	AI_GotoWP	(hero, "WP_JL_14");

	AI_PlayAni	(hero, "T_PLUNDER");

	CreateInvItems	(hero, ItAt_Wolffur, 5);
	CreateInvItems	(hero, ItAt_WargFur, 5);

	B_ShowGivenThings	("5 Wolf- and warning furs preserved");
};

INSTANCE Info_Mod_Baldur_AlterMann (C_INFO)
{
	npc		= Mod_7431_JG_Baldur_MT;
	nr		= 1;
	condition	= Info_Mod_Baldur_AlterMann_Condition;
	information	= Info_Mod_Baldur_AlterMann_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ask about old man in the woods.";
};

FUNC INT Info_Mod_Baldur_AlterMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_AlterWaldMann))
	&& (Mod_BDT_AlterWaldMann < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baldur_AlterMann_Info()
{
	if (Mod_BDT_AlterWaldMann == 0)
	{
		B_Say	(hero, self, "$ALTERWALDMANN01");

		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_00"); //Ahh, you mean the old man of the woods. Yeah, I know something about him.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_01"); //It is said to be centuries old and to protect the animals of the forest around Khorata.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_02"); //It is said that he is blind, but at the same time he has a magical talent.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_03"); //That's all I can think of right now. Maybe someone else knows more.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "From the first ranger I didn't get much new information. The old man of the forest, protecting the animals, he is ancient, blind and magical. Maybe another ranger knows more.");
	}
	else if (Mod_BDT_AlterWaldMann == 1)
	{
		B_Say	(hero, self, "$ALTERWALDMANN02");

		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_04"); //The old man of the forest? Yes, I heard he was once a servant of Adano.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_05"); //It is unclear whether he was a ranger like us, a magician of water, or a transforming mage.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_06"); //His magical abilities, as well as his strong attachment to the animal and plant world are proof that he has something of everything.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "At the 2nd ranger I also didn't learn much worth knowing. The old man of the forest is said to be connected with Adanos and creation, especially the animals and plants.");
	}
	else if (Mod_BDT_AlterWaldMann == 2)
	{
		B_Say	(hero, self, "$ALTERWALDMANN03");

		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_07"); //Well, I can't tell you much about him.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_08"); //The problem is also that he does not talk to anyone, not even us, even if we are pursuing similar goals.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_09"); //Alone with the animals of the forest he entertains himself.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_10"); //Well, if I were a boar, I'm sure I could tell you more about him.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Acha, this could have been an important clue. The old man of the forest completely avoids humans, only speaks to animals.");
	}
	else if (Mod_BDT_AlterWaldMann == 3)
	{
		B_Say	(hero, self, "$ALTERWALDMANN04");

		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_11"); //The old man of the forest? Well, he's supposed to be closely related to the fauna and flora.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_12"); //It is said that he leads pack animals such as boar or wolves to protect the forest against intruders.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_13"); //Even it is said that it is often found in the shape of a green wolf.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Above all, he should also instruct larger pack animals such as boar and wolves to protect the forest against intruders.");
	}
	else if (Mod_BDT_AlterWaldMann == 4)
	{
		B_Say	(hero, self, "$ALTERWALDMANN05");

		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_14"); //You're interested in stories about the old man of the forest?
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_15"); //Well, I don't know much about this mystical oddball.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_16"); //It is said to reside mostly in the dark forest, but also near water bodies such as lakes.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_08_17"); //Rarely has someone seen him....

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "It is most likely to be found in Khorata's dense forest near a lake.");
	};

	Mod_BDT_AlterWaldMann += 1;
};

INSTANCE Info_Mod_Baldur_Pickpocket (C_INFO)
{
	npc		= Mod_7431_JG_Baldur_MT;
	nr		= 1;
	condition	= Info_Mod_Baldur_Pickpocket_Condition;
	information	= Info_Mod_Baldur_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Baldur_Pickpocket_Condition()
{
	C_Beklauen	(81, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Baldur_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);

	Info_AddChoice	(Info_Mod_Baldur_Pickpocket, DIALOG_BACK, Info_Mod_Baldur_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Baldur_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Baldur_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Baldur_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);
};

FUNC VOID Info_Mod_Baldur_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);

		Info_AddChoice	(Info_Mod_Baldur_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Baldur_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Baldur_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Baldur_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Baldur_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Baldur_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Baldur_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Baldur_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Baldur_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Baldur_EXIT (C_INFO)
{
	npc		= Mod_7431_JG_Baldur_MT;
	nr		= 1;
	condition	= Info_Mod_Baldur_EXIT_Condition;
	information	= Info_Mod_Baldur_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Baldur_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Baldur_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
