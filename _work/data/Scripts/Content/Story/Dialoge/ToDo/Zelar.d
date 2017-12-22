INSTANCE Info_Mod_Zelar_Hi (C_INFO)
{
	npc		= Mod_7433_JG_Zelar_MT;
	nr		= 1;
	condition	= Info_Mod_Zelar_Hi_Condition;
	information	= Info_Mod_Zelar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Zelar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Zelar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Zelar_Hi_31_00"); //Are you new?
	AI_Output(hero, self, "Info_Mod_Zelar_Hi_15_01"); //Maybe. And you're a ranger?
	AI_Output(self, hero, "Info_Mod_Zelar_Hi_31_02"); //Yeah. As you can see from my beautiful armor.
	AI_Output(hero, self, "Info_Mod_Zelar_Hi_15_03"); //Mine isn't without it either. But what are you doing here?
	AI_Output(self, hero, "Info_Mod_Zelar_Hi_31_04"); //I'll be on guard duty like the hunters here and the Ranger at the gate.
	AI_Output(hero, self, "Info_Mod_Zelar_Hi_15_05"); //Is that necessary?
	AI_Output(self, hero, "Info_Mod_Zelar_Hi_31_06"); //What do you think? All sorts of riffraff have been roaming the valley lately.
	AI_Output(self, hero, "Info_Mod_Zelar_Hi_31_07"); //Besides, have you ever seen a camp without a gatekeeper?
	AI_Output(hero, self, "Info_Mod_Zelar_Hi_15_08"); //Actually, I don't. I want to keep going.
};

INSTANCE Info_Mod_Zelar_CyrcoMine (C_INFO)
{
	npc		= Mod_7433_JG_Zelar_MT;
	nr		= 1;
	condition	= Info_Mod_Zelar_CyrcoMine_Condition;
	information	= Info_Mod_Zelar_CyrcoMine_Info;
	permanent	= 0;
	important	= 0;
	description	= "You look so tidy. Interested in an excursion?";
};

FUNC INT Info_Mod_Zelar_CyrcoMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_BaalOrun))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zelar_CyrcoMine_Info()
{
	AI_Output(hero, self, "Info_Mod_Zelar_CyrcoMine_15_00"); //Hi, Ranger. You look so tidy. Interested in a trip?
	AI_Output(self, hero, "Info_Mod_Zelar_CyrcoMine_31_01"); //Gladly. It's just the legs in your stomach.
	AI_Output(hero, self, "Info_Mod_Zelar_CyrcoMine_15_02"); //We're marching to the Old Mine, there's something to smoke out.
	AI_Output(self, hero, "Info_Mod_Zelar_CyrcoMine_31_03"); //That's swell. Do you have a stem for me? While we're at it....
	AI_Output(hero, self, "Info_Mod_Zelar_CyrcoMine_15_04"); //After work you get ten pieces. I promise.
	AI_Output(self, hero, "Info_Mod_Zelar_CyrcoMine_31_05"); //If that's nothing! When do we start?
	AI_Output(hero, self, "Info_Mod_Zelar_CyrcoMine_15_06"); //I'll let you know.

	if (Npc_KnowsInfo(hero, Info_Mod_Sonor_CyrcoMine))
	{
		B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "So, I've got it all together. Equipment and two men. Sonor and Zelar will go with them. Have another look at Cyrco...");
	};
};

INSTANCE Info_Mod_Zelar_AlterMann (C_INFO)
{
	npc		= Mod_7433_JG_Zelar_MT;
	nr		= 1;
	condition	= Info_Mod_Zelar_AlterMann_Condition;
	information	= Info_Mod_Zelar_AlterMann_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ask about old man in the woods.";
};

FUNC INT Info_Mod_Zelar_AlterMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_AlterWaldMann))
	&& (Mod_BDT_AlterWaldMann < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zelar_AlterMann_Info()
{
	if (Mod_BDT_AlterWaldMann == 0)
	{
		B_Say	(hero, self, "$ALTERWALDMANN01");

		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_00"); //Ahh, you mean the old man of the woods. Yeah, I know something about him.
		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_01"); //It is said to be centuries old and to protect the animals of the forest around Khorata.
		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_02"); //It is said that he is blind, but at the same time he has a magical talent.
		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_03"); //That's all I can think of right now. Maybe someone else knows more.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "From the first ranger I didn't get much new information. The old man of the forest protects the animals, he is ancient, blind and magical. Maybe another ranger knows more.");
	}
	else if (Mod_BDT_AlterWaldMann == 1)
	{
		B_Say	(hero, self, "$ALTERWALDMANN02");

		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_04"); //The old man of the forest? Yes, I heard he was once a servant of Adano.
		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_05"); //It is unclear whether he was a ranger like us, a magician of water, or a transforming mage.
		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_06"); //His magical abilities, as well as his strong attachment to the animal and plant world are proof that he has something of everything.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "The second ranger didn't tell me much worth knowing. The old man of the forest is said to be associated with Adanos and creation, especially the fauna and flora.");
	}
	else if (Mod_BDT_AlterWaldMann == 2)
	{
		B_Say	(hero, self, "$ALTERWALDMANN03");

		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_07"); //Well, I can't tell you much about him.
		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_08"); //The problem is also that he does not talk to anyone, not even us, even if we are pursuing similar goals.
		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_09"); //Alone with the animals of the forest he entertains himself.
		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_10"); //Well, if I were a boar, I'm sure I could tell you more about him.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Oh, yeah, that could have been an important clue. The old man of the forest completely avoids humans, only speaks to animals.");
	}
	else if (Mod_BDT_AlterWaldMann == 3)
	{
		B_Say	(hero, self, "$ALTERWALDMANN04");

		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_11"); //The old man of the forest? Well, he's supposed to be closely related to the fauna and flora.
		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_12"); //It is said that he leads pack animals such as boar or wolves to protect the forest against intruders.
		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_13"); //Even it is said that it is often found in the shape of a green wolf.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Above all, he should also instruct larger pack animals such as boar and wolves to protect the forest against intruders.");
	}
	else if (Mod_BDT_AlterWaldMann == 4)
	{
		B_Say	(hero, self, "$ALTERWALDMANN05");

		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_14"); //You're interested in stories about the old man of the forest?
		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_15"); //Well, I don't know much about this mystical oddball.
		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_16"); //It is said to reside mostly in the dark forest, but also near water bodies such as lakes.
		AI_Output(self, hero, "Info_Mod_Zelar_AlterMann_31_17"); //Rarely has someone seen him....

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "It is most likely to be found in the dense forest of Khorata near a lake.");
	};

	Mod_BDT_AlterWaldMann += 1;
};

INSTANCE Info_Mod_Zelar_Urs (C_INFO)
{
	npc		= Mod_7433_JG_Zelar_MT;
	nr		= 1;
	condition	= Info_Mod_Zelar_Urs_Condition;
	information	= Info_Mod_Zelar_Urs_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, I bring you the magic arrows of Urs.";
};

FUNC INT Info_Mod_Zelar_Urs_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urs_Hi))
	&& (Npc_HasItems(hero, ItMi_PfeilpaketZelar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zelar_Urs_Info()
{
	AI_Output(hero, self, "Info_Mod_Zelar_Urs_15_00"); //Hello, I bring you the magic arrows of Urs.

	B_GiveInvItems	(hero, self, ItMi_PfeilpaketZelar, 1);

	AI_Output(self, hero, "Info_Mod_Zelar_Urs_31_01"); //That's a good thing. Just now these obtrusive Night Wisps are again dangerously close to our camp.
	AI_Output(self, hero, "Info_Mod_Zelar_Urs_31_02"); //Whether human or animal, they attack everything that goes and stands.
	AI_Output(self, hero, "Info_Mod_Zelar_Urs_31_03"); //When the arrows reach their effect, you shall keep your skins.
	AI_Output(self, hero, "Info_Mod_Zelar_Urs_31_04"); //Come with me.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "IRRLICHTER");

	self.aivar[AIV_Partymember] = TRUE;

	Wld_InsertNpc	(Wisp_Zelar_01,	"ALTERWALD_20");
	Wld_InsertNpc	(Wisp_Zelar_02,	"ALTERWALD_20");
	Wld_InsertNpc	(Wisp_Zelar_03,	"ALTERWALD_20");
};

INSTANCE Info_Mod_Zelar_Urs2 (C_INFO)
{
	npc		= Mod_7433_JG_Zelar_MT;
	nr		= 1;
	condition	= Info_Mod_Zelar_Urs2_Condition;
	information	= Info_Mod_Zelar_Urs2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Zelar_Urs2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zelar_Urs))
	&& (Npc_IsDead(Wisp_Zelar_01))
	&& (Npc_IsDead(Wisp_Zelar_02))
	&& (Npc_IsDead(Wisp_Zelar_03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zelar_Urs2_Info()
{
	AI_Output(self, hero, "Info_Mod_Zelar_Urs2_31_00"); //Well, these nuisances are done with. The arrows are worth every coat. Here, and thank you.

	CreateInvItems	(hero, ItAt_WargFur, 2);
	CreateInvItems	(hero, ItAt_ShadowFur, 2);
	CreateInvItems	(hero, ItAt_TrollFur, 1);

	B_ShowGivenThings	("2 warning pelts, 2 shadow runners and 1 troll fur preserved");

	B_GivePlayerXP	(300);

	B_LogEntry	(TOPIC_MOD_URS_HUND, "I have Zelar's skins.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Zelar_Heiltrank (C_INFO)
{
	npc		= Mod_7433_JG_Zelar_MT;
	nr		= 1;
	condition	= Info_Mod_Zelar_Heiltrank_Condition;
	information	= Info_Mod_Zelar_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(give healing potion)";
};

FUNC INT Info_Mod_Zelar_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zelar_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Zelar_Heiltrank);

	Info_AddChoice	(Info_Mod_Zelar_Heiltrank, DIALOG_BACK, Info_Mod_Zelar_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Zelar_Heiltrank, "Essence of Healing", Info_Mod_Zelar_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Zelar_Heiltrank, "Elixir of Healing", Info_Mod_Zelar_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Zelar_Heiltrank, "Extract of Healing", Info_Mod_Zelar_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Zelar_Heiltrank, "Essence of Healing", Info_Mod_Zelar_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Zelar_Heiltrank, "Drink of light healing", Info_Mod_Zelar_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Zelar_Heiltrank, "Light healing potion", Info_Mod_Zelar_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Zelar_Heiltrank, "Drink of fast healing", Info_Mod_Zelar_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Zelar_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Zelar_Heiltrank);
};

FUNC VOID Info_Mod_Zelar_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Zelar_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Zelar_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Zelar_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Zelar_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Zelar_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Zelar_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Zelar_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Zelar_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Zelar_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Zelar_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Zelar_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Zelar_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Zelar_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Zelar_Pickpocket (C_INFO)
{
	npc		= Mod_7433_JG_Zelar_MT;
	nr		= 1;
	condition	= Info_Mod_Zelar_Pickpocket_Condition;
	information	= Info_Mod_Zelar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Zelar_Pickpocket_Condition()
{
	C_Beklauen	(58, ItAt_Teeth, 1);
};

FUNC VOID Info_Mod_Zelar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Zelar_Pickpocket);

	Info_AddChoice	(Info_Mod_Zelar_Pickpocket, DIALOG_BACK, Info_Mod_Zelar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Zelar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Zelar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Zelar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Zelar_Pickpocket);
};

FUNC VOID Info_Mod_Zelar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Zelar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Zelar_Pickpocket);

		Info_AddChoice	(Info_Mod_Zelar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Zelar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Zelar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Zelar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Zelar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Zelar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Zelar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Zelar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Zelar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Zelar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Zelar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Zelar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Zelar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Zelar_EXIT (C_INFO)
{
	npc		= Mod_7433_JG_Zelar_MT;
	nr		= 1;
	condition	= Info_Mod_Zelar_EXIT_Condition;
	information	= Info_Mod_Zelar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Zelar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Zelar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
