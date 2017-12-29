INSTANCE Info_Mod_GorNaDrak_Lehrer (C_INFO)
{
	npc		= Mod_2011_TPL_GorNaDrak_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaDrak_Lehrer_Condition;
	information	= Info_Mod_GorNaDrak_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_GorNaDrak_Lehrer_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_GorNaDrak_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_GorNaDrak_Lehrer_09_00"); //I can show you how to take out the forceps from minecrawlers.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SUMPF, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SUMPF, "Gor Na Drak can show me how to take the pliers from minecrawlers.");
};

INSTANCE Info_Mod_GorNaDrak_Hueterklinge (C_INFO)
{
	npc		= Mod_2011_TPL_GorNaDrak_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaDrak_Hueterklinge_Condition;
	information	= Info_Mod_GorNaDrak_Hueterklinge_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear you've been with the Templars a long time.";
};

FUNC INT Info_Mod_GorNaDrak_Hueterklinge_Condition()
{
	if (Mod_TPL_Hueterklinge_Drak == 2)
	&& (Mod_TPL_Hueterklinge == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge_Info()
{
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_15_00"); //I hear you've been with the Templars a long time.
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_09_01"); //Yeah, yeah, I've seen it all. The great famine of 84, the terrible stunk of 3, the purgatory of 72, the...
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_15_02"); //I understand, you've been through a lot. You fought a lot, didn't you?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_09_03"); //Yeah, I fought a lot.
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_09_04"); //Against the big troll in front of 62, against the nasty dragon of 112, against the sharp Scavanger of...
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_15_05"); //I understand, you've fought a lot.

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge);

	Info_AddChoice	(Info_Mod_GorNaDrak_Hueterklinge, "If you've fought so much, then you actually deserve... Never mind, not so important.", Info_Mod_GorNaDrak_Hueterklinge_C);
	Info_AddChoice	(Info_Mod_GorNaDrak_Hueterklinge, "If you've fought so much, your sword will have quite a few notches, won't it?", Info_Mod_GorNaDrak_Hueterklinge_B);
	Info_AddChoice	(Info_Mod_GorNaDrak_Hueterklinge, "If you've fought so much, you won't need your sword anymore, will you?", Info_Mod_GorNaDrak_Hueterklinge_A);
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge_C()
{
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_C_15_00"); //If you've fought so much, then you actually deserve... Never mind, not so important.

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge);
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge_B()
{
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_B_15_00"); //If you've fought so much, your sword will have quite a few notches, won't it?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_B_09_01"); //Yes... now that you're saying it, my sword has a lot of notches...
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_B_15_02"); //Wouldn't it then be appropriate to carry a new sword and get rid of the old one?

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_B_09_03"); //Certainly... that would indeed be appropriate, that would even be very appropriate!
		AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_B_09_04"); //But where do I ever get a new sword?
		AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_B_09_05"); //We're in the middle of the desert, and there's no smithy in the world.
		AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_B_15_06"); //I'll get you one.

		Mod_TPL_Hueterklinge_Drak = 2;

		B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "I have to get Gor Na Drak a new sword.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_B_09_07"); //A new sword?! Never ever!
		AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_B_09_08"); //I don't know if you know it, but I have already fought with this sword against the great troll of 62, and against the nasty dragon of 112 and...

		AI_TurnAway	(hero, self);

		AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_B_15_09"); //I guess I can forget that.

		AI_TurnToNpc	(hero, self);
	};

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge);
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge_A()
{
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_A_15_00"); //If you've fought so much, you won't need your sword anymore, will you?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_A_09_01"); //YOU DON' T NEED MY SWORD ANYMORE?"
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_A_09_02"); //But what if the great troll of 62 is unkilled by black magic and becomes the great undead troll of 417?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_A_09_03"); //What if the bones of the nasty Dragon of 112 reunite and become the horrible dragon skeleton of 45?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_A_09_04"); //What if...?
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_A_15_05"); //I see, you still need your sword.

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge);
};

INSTANCE Info_Mod_GorNaDrak_Hueterklinge2 (C_INFO)
{
	npc		= Mod_2011_TPL_GorNaDrak_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaDrak_Hueterklinge2_Condition;
	information	= Info_Mod_GorNaDrak_Hueterklinge2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a sword for you.";
};

FUNC INT Info_Mod_GorNaDrak_Hueterklinge2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GorNaDrak_Hueterklinge))
	&& (Mod_TPL_Hueterklinge_Drak == 2)
	&& (Mod_TPL_Hueterklinge == 0)
	&& ((Npc_HasItems(hero, ItMw_1h_MISC_Sword) >= 1)
	|| (Npc_HasItems(hero, ItMw_1H_Common_01) >= 1)
	|| (Npc_HasItems(hero, ItMw_Schwert1) >= 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge2_Info()
{
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge2_15_00"); //I have a sword for you.
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_09_01"); //Oh, yeah? Which one?

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge2);

	if (Npc_HasItems(hero, ItMw_Schwert1) >= 1)
	{
		Info_AddChoice	(Info_Mod_GorNaDrak_Hueterklinge2, "(offering noble sword)", Info_Mod_GorNaDrak_Hueterklinge2_C);
	};
	if (Npc_HasItems(hero, ItMw_1H_Common_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_GorNaDrak_Hueterklinge2, "(offering sword)", Info_Mod_GorNaDrak_Hueterklinge2_B);
	};
	if (Npc_HasItems(hero, ItMw_1h_MISC_Sword) >= 1)
	{
		Info_AddChoice	(Info_Mod_GorNaDrak_Hueterklinge2, "(offering rusty sword)", Info_Mod_GorNaDrak_Hueterklinge2_A);
	};
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge2_E()
{
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_E_09_00"); //Oh yes, a beautiful sword, a masterpiece!
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_E_09_01"); //Forged by nimble fingers to be guided by a strong hand! I LOVE it!
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge2_E_15_02"); //You won't need your old sword now, will you?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_E_09_03"); //Oh, yes... I should probably throw that away.
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_E_09_04"); //But we are here on the top of a glacier and I don't see any waste bins for scrap metal...
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge2_E_15_05"); //I'll throw it away for you.
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge2_E_15_06"); //That's very kind of you! Thank you very much.

	if (Mod_TPL_Hueterklinge_Art == 2)
	{
		B_GiveInvItems	(self, hero, ItMw_AlteHueterklinge_2H, 1);
	}
	else
	{
		B_GiveInvItems	(self, hero, ItMw_AlteHueterklinge_1H, 1);
	};

	B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "I got the old Keeper's Blade from Gor Na Drak. I'm supposed to go to Cor Angar and introduce myself.");

	Mod_TPL_Hueterklinge = 1;

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge2);
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge2_D()
{
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_D_09_00"); //What?! That's a sword?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_D_09_01"); //I wouldn't wipe my butt with something like that!

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge2);
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge2_C()
{
	B_GiveInvItems	(hero, self, ItMw_Schwert1, 1);

	Info_Mod_GorNaDrak_Hueterklinge2_E();
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge2_B()
{
	B_GiveInvItems	(hero, self, ItMw_Schwert1, 1);

	if (Hlp_Random(100) < 50)
	{
		Info_Mod_GorNaDrak_Hueterklinge2_E();
	}
	else
	{
		Info_Mod_GorNaDrak_Hueterklinge2_D();
	};
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge2_A()
{
	B_GiveInvItems	(hero, self, ItMw_Schwert1, 1);

	if (Hlp_Random(100) < 25)
	{
		Info_Mod_GorNaDrak_Hueterklinge2_E();
	}
	else
	{
		Info_Mod_GorNaDrak_Hueterklinge2_D();
	};
};

INSTANCE Info_Mod_GorNaDrak_CrawlerZangen (C_INFO)
{
	npc		= Mod_2011_TPL_GorNaDrak_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaDrak_CrawlerZangen_Condition;
	information	= Info_Mod_GorNaDrak_CrawlerZangen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can you tell me how to get to the secretary of a minecrawler? (3 LP)";
};

FUNC INT Info_Mod_GorNaDrak_CrawlerZangen_Condition()
{
	Info_Mod_GorNaDrak_CrawlerZangen.description = B_BuildLearnString("Can you tell me how to get the secretion of a minecrawler?", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Mandibles));

	if (Npc_KnowsInfo(hero, Info_Mod_GorNaDrak_Lehrer))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Mandibles] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaDrak_CrawlerZangen_Info()
{
	AI_Output(hero, self, "Info_Mod_GorNaDrak_CrawlerZangen_15_00"); //Can you tell me how to get to the secretary of a minecrawler?

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, other, TROPHY_Mandibles))
	{
		AI_Output(self, hero, "Info_Mod_GorNaDrak_CrawlerZangen_09_01"); //Sure, after you kill the cattle, grab it by the tongs and rip it out. Then the secretion gland comes out without tearing.
		AI_Output(self, hero, "Info_Mod_GorNaDrak_CrawlerZangen_09_02"); //By the way, I've heard that this is how it works with field robbers.
	};
};

INSTANCE Info_Mod_GorNaDrak_Pickpocket (C_INFO)
{
	npc		= Mod_2011_TPL_GorNaDrak_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaDrak_Pickpocket_Condition;
	information	= Info_Mod_GorNaDrak_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_GorNaDrak_Pickpocket_Condition()
{
	C_Beklauen	(104, ItAt_CrawlerMandibles, 3);
};

FUNC VOID Info_Mod_GorNaDrak_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);

	Info_AddChoice	(Info_Mod_GorNaDrak_Pickpocket, DIALOG_BACK, Info_Mod_GorNaDrak_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_GorNaDrak_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_GorNaDrak_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_GorNaDrak_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);
};

FUNC VOID Info_Mod_GorNaDrak_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);

		Info_AddChoice	(Info_Mod_GorNaDrak_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_GorNaDrak_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_GorNaDrak_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_GorNaDrak_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_GorNaDrak_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_GorNaDrak_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_GorNaDrak_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_GorNaDrak_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_GorNaDrak_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_GorNaDrak_EXIT (C_INFO)
{
	npc		= Mod_2011_TPL_GorNaDrak_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaDrak_EXIT_Condition;
	information	= Info_Mod_GorNaDrak_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_GorNaDrak_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_GorNaDrak_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
