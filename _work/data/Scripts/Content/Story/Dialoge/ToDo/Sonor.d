INSTANCE Info_Mod_Sonor_Hi (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_Hi_Condition;
	information	= Info_Mod_Sonor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Sonor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sonor_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Sonor_Hi_06_00"); //Sonor. Hunters and candidates for my admission to the Rangers.
	AI_Output(hero, self, "Info_Mod_Sonor_Hi_15_01"); //You want to be a ranger? Is that possible?
	AI_Output(self, hero, "Info_Mod_Sonor_Hi_06_02"); //That's what I said. I'll make sure of that with Baldur and another one in the camp for flesh and skins.
};

INSTANCE Info_Mod_Sonor_CyrcoMine (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_CyrcoMine_Condition;
	information	= Info_Mod_Sonor_CyrcoMine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello Waidmann! I have a mission. Are you in?";
};

FUNC INT Info_Mod_Sonor_CyrcoMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_BaalOrun))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonor_CyrcoMine_Info()
{
	AI_Output(hero, self, "Info_Mod_Sonor_CyrcoMine_15_00"); //Hello Waidmann! I have a mission. Are you in?
	AI_Output(self, hero, "Info_Mod_Sonor_CyrcoMine_06_01"); //Oh, yes, you are. I'm still warm from earlier. We showed them. What's up now?
	AI_Output(hero, self, "Info_Mod_Sonor_CyrcoMine_15_02"); //We have to get to the old mine. Some kind of cave. That's all I know.
	AI_Output(self, hero, "Info_Mod_Sonor_CyrcoMine_06_03"); //Go right ahead. Let me know when it starts.
	AI_Output(hero, self, "Info_Mod_Sonor_CyrcoMine_15_04"); //All right, I will.

	if (Npc_KnowsInfo(hero, Info_Mod_Zelar_CyrcoMine))
	{
		B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "So, I've got it all together. Equipment and two men. Sonor and Zelar will go with them. Have another look at Cyrco...");
	};
};

INSTANCE Info_Mod_Sonor_AlterMann (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_AlterMann_Condition;
	information	= Info_Mod_Sonor_AlterMann_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ask about old man in the woods.";
};

FUNC INT Info_Mod_Sonor_AlterMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_AlterWaldMann))
	&& (Mod_BDT_AlterWaldMann < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonor_AlterMann_Info()
{
	if (Mod_BDT_AlterWaldMann == 0)
	{
		B_Say	(hero, self, "$ALTERWALDMANN01");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_00"); //Ahh, you mean the old man of the woods. Yeah, I know something about him.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_01"); //It is said to be centuries old and to protect the animals of the forest around Khorata.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_02"); //It is said that he is blind, but at the same time he has a magical talent.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_03"); //That's all I can think of right now. Maybe someone else knows more.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "From the first ranger I didn't get much new information. The old man of the forest, protecting the animals, he is ancient, blind and magical. Maybe another ranger knows more.");
	}
	else if (Mod_BDT_AlterWaldMann == 1)
	{
		B_Say	(hero, self, "$ALTERWALDMANN02");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_04"); //The old man of the forest? Yes, I heard he was once a servant of Adano.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_05"); //It is unclear whether he was a ranger like us, a magician of water, or a transforming mage.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_06"); //His magical abilities, as well as his strong attachment to the animal and plant world are proof that he has something of everything.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "At the 2nd ranger I also didn't learn much worth knowing. The old man of the forest is said to be connected with Adanos and creation, especially the animals and plants.");
	}
	else if (Mod_BDT_AlterWaldMann == 2)
	{
		B_Say	(hero, self, "$ALTERWALDMANN03");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_07"); //Well, I can't tell you much about him.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_08"); //The problem is also that he does not talk to anyone, not even us, even if we are pursuing similar goals.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_09"); //Alone with the animals of the forest he entertains himself.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_10"); //Well, if I were a boar, I'm sure I could tell you more about him.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Acha, this could have been an important clue. The old man of the forest completely avoids humans, only speaks to animals.");
	}
	else if (Mod_BDT_AlterWaldMann == 3)
	{
		B_Say	(hero, self, "$ALTERWALDMANN04");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_11"); //The old man of the forest? Well, he's supposed to be closely related to the fauna and flora.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_12"); //It is said that he leads pack animals such as boar or wolves to protect the forest against intruders.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_13"); //Even it is said that it is often found in the shape of a green wolf.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Above all, he should also instruct larger pack animals such as boar and wolves to protect the forest against intruders.");
	}
	else if (Mod_BDT_AlterWaldMann == 4)
	{
		B_Say	(hero, self, "$ALTERWALDMANN05");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_14"); //You're interested in stories about the old man of the forest?
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_15"); //Well, I don't know much about this mystical oddball.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_16"); //It is said to reside mostly in the dark forest, but also near water bodies such as lakes.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_17"); //Rarely has someone seen him....

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "It is most likely to be found in Khorata's dense forest near a lake.");
	};

	Mod_BDT_AlterWaldMann += 1;
};

INSTANCE Info_Mod_Sonor_Heiltrank (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_Heiltrank_Condition;
	information	= Info_Mod_Sonor_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(give healing potion)";
};

FUNC INT Info_Mod_Sonor_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	Info_AddChoice	(Info_Mod_Sonor_Heiltrank, DIALOG_BACK, Info_Mod_Sonor_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Essence of Healing", Info_Mod_Sonor_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Elixir of Healing", Info_Mod_Sonor_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Extract of Healing", Info_Mod_Sonor_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Essence of Healing", Info_Mod_Sonor_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Drink of light healing", Info_Mod_Sonor_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Light healing potion", Info_Mod_Sonor_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Potion of Quick Healing", Info_Mod_Sonor_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Sonor_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Sonor_Pickpocket (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_Pickpocket_Condition;
	information	= Info_Mod_Sonor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Sonor_Pickpocket_Condition()
{
	C_Beklauen	(77, ItRw_Arrow, 26);
};

FUNC VOID Info_Mod_Sonor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);

	Info_AddChoice	(Info_Mod_Sonor_Pickpocket, DIALOG_BACK, Info_Mod_Sonor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sonor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sonor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sonor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);
};

FUNC VOID Info_Mod_Sonor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);

		Info_AddChoice	(Info_Mod_Sonor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sonor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sonor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sonor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sonor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sonor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sonor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sonor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sonor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sonor_EXIT (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_EXIT_Condition;
	information	= Info_Mod_Sonor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sonor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sonor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
