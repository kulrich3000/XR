INSTANCE Info_Mod_Katar_Daron (C_INFO)
{
	npc		= Mod_1190_NOV_Katar_NW;
	nr		= 1;
	condition	= Info_Mod_Katar_Daron_Condition;
	information	= Info_Mod_Katar_Daron_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Katar_Daron_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_Katar))
	&& (Mod_Sekte_Karras >= 1)
	&& (Mod_Sekte_Joseppe < 2)
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Karras_NamibHabBuch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Katar_Daron_Info()
{
	AI_Output(self, hero, "Info_Mod_Katar_Daron_03_00"); //Innos cannot always forgive.... Innos can fuck me! Fucking preacher.
	AI_Output(hero, self, "Info_Mod_Katar_Daron_15_01"); //You don't seem to speak so well of Innos.
	AI_Output(self, hero, "Info_Mod_Katar_Daron_03_02"); //So what? What do you care?
	AI_Output(hero, self, "Info_Mod_Katar_Daron_15_03"); //I might have something to do for someone who has access to the monastery.
	AI_Output(self, hero, "Info_Mod_Katar_Daron_03_04"); //What's this about?
	AI_Output(hero, self, "Info_Mod_Katar_Daron_15_05"); //The Fire Magicians have a book in the monastery that I need.
	AI_Output(self, hero, "Info_Mod_Katar_Daron_03_06"); //And what's that?
	AI_Output(hero, self, "Info_Mod_Katar_Daron_15_07"); //The necronomic.
	AI_Output(self, hero, "Info_Mod_Katar_Daron_03_08"); //Necronomy... what? It doesn't matter anyway... what's in it for me?
	AI_Output(hero, self, "Info_Mod_Katar_Daron_15_09"); //How about a packet of swampweed?
	AI_Output(self, hero, "Info_Mod_Katar_Daron_03_10"); //A packet of bogweed, soso. All right, it's a deal. Meet me tomorrow under the bridge near the tavern.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "The fire Novice Qatar will get me the book for the bogweed package.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BRIDGE");
	B_StartOtherRoutine	(Mod_523_KDF_Daron_NW, "LIFEKLOSTER");

	Mod_Sekte_KatarDay = Wld_GetDay();
};

INSTANCE Info_Mod_Katar_Necronomicum (C_INFO)
{
	npc		= Mod_1190_NOV_Katar_NW;
	nr		= 1;
	condition	= Info_Mod_Katar_Necronomicum_Condition;
	information	= Info_Mod_Katar_Necronomicum_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Katar_Necronomicum_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Npc_HasItems(hero, ItMi_HerbPaket) >= 1)
	&& (Mod_Sekte_KatarDay < Wld_GetDay())
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Katar_Necronomicum_Info()
{
	AI_Output(self, hero, "Info_Mod_Katar_Necronomicum_03_00"); //There you are at last. Here's your book.

	CreateInvItems	(self, ItWr_BeliarBook, 1);

	AI_Output(hero, self, "Info_Mod_Katar_Necronomicum_15_01"); //Here's your swampweed.

	B_GiveInvItems	(hero, self, ItMi_HerbPaket, 1);

	AI_Output(self, hero, "Info_Mod_Katar_Necronomicum_03_02"); //Oh, yes... I've changed my mind. I want four more. 000 gold pieces.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "I have received the book from Qatar and should now take it to Karras.");

	B_StartOtherRoutine	(self, "START");

	Info_ClearChoices	(Info_Mod_Katar_Necronomicum);

	Info_AddChoice	(Info_Mod_Katar_Necronomicum, "You'll get your mouth shut if you don't give me that book right now.", Info_Mod_Katar_Necronomicum_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 4000)
	{
		Info_AddChoice	(Info_Mod_Katar_Necronomicum, "All right, here.", Info_Mod_Katar_Necronomicum_A);
	};
};

FUNC VOID Info_Mod_Katar_Necronomicum_B()
{
	AI_Output(hero, self, "Info_Mod_Katar_Necronomicum_B_15_00"); //You'll get your mouth shut if you don't give me that book right now.
	AI_Output(self, hero, "Info_Mod_Katar_Necronomicum_B_03_01"); //Give it a shot.

	Info_ClearChoices	(Info_Mod_Katar_Necronomicum);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Katar_Necronomicum_A()
{
	AI_Output(hero, self, "Info_Mod_Katar_Necronomicum_A_15_00"); //All right, here.

	B_GiveInvItems	(hero, self, ItMi_Gold, 4000);

	AI_Output(self, hero, "Info_Mod_Katar_Necronomicum_A_03_01"); //Here, take it.

	B_GiveInvItems	(self, hero, ItWr_BeliarBook, 1);

	Info_ClearChoices	(Info_Mod_Katar_Necronomicum);
};

INSTANCE Info_Mod_Katar_Pickpocket (C_INFO)
{
	npc		= Mod_1190_NOV_Katar_NW;
	nr		= 1;
	condition	= Info_Mod_Katar_Pickpocket_Condition;
	information	= Info_Mod_Katar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Katar_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Katar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Katar_Pickpocket);

	Info_AddChoice	(Info_Mod_Katar_Pickpocket, DIALOG_BACK, Info_Mod_Katar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Katar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Katar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Katar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Katar_Pickpocket);
};

FUNC VOID Info_Mod_Katar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Katar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Katar_Pickpocket);

		Info_AddChoice	(Info_Mod_Katar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Katar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Katar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Katar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Katar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Katar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Katar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Katar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Katar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Katar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Katar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Katar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Katar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Katar_EXIT (C_INFO)
{
	npc		= Mod_1190_NOV_Katar_NW;
	nr		= 1;
	condition	= Info_Mod_Katar_EXIT_Condition;
	information	= Info_Mod_Katar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Katar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Katar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
