INSTANCE Info_Mod_Wirt_Hi (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Hi_Condition;
	information	= Info_Mod_Wirt_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wirt_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wirt_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wirt_Hi_29_00"); //Come closer, stranger! Have a drink with us, it's all free today!

	CreateInvItems	(self, ItFo_Beer, 3);

	B_GiveInvItems	(self, hero, ItFo_Beer, 1);

	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);
};

INSTANCE Info_Mod_Wirt_Spender (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Spender_Condition;
	information	= Info_Mod_Wirt_Spender_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who's the charitable donor?";
};

FUNC INT Info_Mod_Wirt_Spender_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wirt_Spender_Info()
{
	AI_Output(hero, self, "Info_Mod_Wirt_Spender_15_00"); //Who's the charitable donor?
	AI_Output(self, hero, "Info_Mod_Wirt_Spender_29_01"); //Matteo! His business is going well, and he's got a big crush! (laughs roaring)

	Info_ClearChoices	(Info_Mod_Wirt_Spender);

	Info_AddChoice	(Info_Mod_Wirt_Spender, "I don't have to do that to myself.", Info_Mod_Wirt_Spender_B);
	Info_AddChoice	(Info_Mod_Wirt_Spender, "Tell me more.", Info_Mod_Wirt_Spender_A);
};

FUNC VOID Info_Mod_Wirt_Spender_B()
{
	AI_Output(hero, self, "Info_Mod_Wirt_Spender_B_15_00"); //I don't have to do that to myself.

	Info_ClearChoices	(Info_Mod_Wirt_Spender);
};

FUNC VOID Info_Mod_Wirt_Spender_A()
{
	AI_Output(hero, self, "Info_Mod_Wirt_Spender_A_15_00"); //Tell me more.
	AI_Output(self, hero, "Info_Mod_Wirt_Spender_A_29_01"); //Valentine from the Upper Quarter is his beloved. He told me he was getting engaged to her.

	Mod_Wirt_Freibier = 1;

	Info_ClearChoices	(Info_Mod_Wirt_Spender);
};

INSTANCE Info_Mod_Wirt_Bild (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Bild_Condition;
	information	= Info_Mod_Wirt_Bild_Info;
	permanent	= 0;
	important	= 0;
	description	= "What else do you hear?";
};

FUNC INT Info_Mod_Wirt_Bild_Condition()
{
	if (Mod_Wirt_Freibier == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_Bild_Info()
{
	Mod_Wirt_Freibier = 2;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wirt_Bild2 (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Bild2_Condition;
	information	= Info_Mod_Wirt_Bild2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wirt_Bild2_Condition()
{
	if (Mod_Wirt_Freibier == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_Bild2_Info()
{
	AI_Output(self, hero, "Info_Mod_Wirt_Bild2_29_00"); //(laughs) And Wilfried, do you know him? Stay away from him.
};

INSTANCE Info_Mod_Wirt_Wilfried (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Wilfried_Condition;
	information	= Info_Mod_Wirt_Wilfried_Info;
	permanent	= 0;
	important	= 0;
	description	= "What about Wilfried?";
};

FUNC INT Info_Mod_Wirt_Wilfried_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wirt_Bild2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_Wilfried_Info()
{
	AI_Output(hero, self, "Info_Mod_Wirt_Wilfried_15_00"); //What about Wilfried?
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_01"); //I hear stories about him every day.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_02"); //I don't think there's anyone in Khorinis he hasn't fucked up yet.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_03"); //That's right, that he is now cooking alone in his hut in the harbour district!
	AI_Output(hero, self, "Info_Mod_Wirt_Wilfried_15_04"); //I'll remember that.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_05"); //Oh, I almost forgot to mention the town talk, the downfall of Minna, a fishing boat from Myrtana!
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_06"); //Must have been a spectacle, all the dead were floating in the water and everyone wanted to see them.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_07"); //It is said to have been a world-famous painter on deck, well.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_08"); //If you haven't talked to Moe yet, you should make up for it, he probably knows more about it.
	AI_Output(hero, self, "Info_Mod_Wirt_Wilfried_15_09"); //Thanks for the interview.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_10"); //One more!

	CreateInvItems	(self, ItFo_Beer, 3);

	B_GiveInvItems	(self, hero, ItFo_Beer, 1);

	B_UseItem	(hero, ItFo_Beer);
	B_UseItem	(self, ItFo_Beer);
};

INSTANCE Info_Mod_Wirt_WacholderDieb (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_WacholderDieb_Condition;
	information	= Info_Mod_Wirt_WacholderDieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you know anything about the theft at Coragon?";
};

FUNC INT Info_Mod_Wirt_WacholderDieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_WacholderDieb))
	&& (Npc_KnowsInfo(hero, Info_Mod_Wirt_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_WacholderDieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Wirt_WacholderDieb_15_00"); //Do you know anything about the theft at Coragon?
	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_29_01"); //Even if I did, why would I tell you anything?
	AI_Output(hero, self, "Info_Mod_Wirt_WacholderDieb_15_02"); //Because I might be able to offer you money.
	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_29_03"); //Then I would demand 200 pieces of gold.

	B_LogEntry	(TOPIC_MOD_CORAGON_WACHOLDER, "The landlord wants 200 pieces of gold for information.");
};

INSTANCE Info_Mod_Wirt_WacholderDieb_Pay (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_WacholderDieb_Pay_Condition;
	information	= Info_Mod_Wirt_WacholderDieb_Pay_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the gold. Now tell me what you know.";
};

FUNC INT Info_Mod_Wirt_WacholderDieb_Pay_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wirt_WacholderDieb))
	&& (Npc_HasItems(hero, ItMi_Gold) > 199)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_WacholderDieb_Pay_Info()
{
	AI_Output(hero, self, "Info_Mod_Wirt_WacholderDieb_Pay_15_00"); //Here's the gold. Now tell me what you know.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_Pay_29_01"); //On the day of theft, a guy named Rukhar was hanging around Coragon's tavern all the time.
	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_Pay_29_02"); //He usually sits in Orlan's tavern and gets drunk. Very strange, isn't it?
	AI_Output(hero, self, "Info_Mod_Wirt_WacholderDieb_Pay_15_03"); //Maybe so. Thanks for the tip!
	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_Pay_29_04"); //(grinning) If you need information again, then you know who you get it from!

	B_LogEntry	(TOPIC_MOD_CORAGON_WACHOLDER, "Rukhar, who usually stays in the tavern of Orlan, is said to have been hanging around Coragon's pub on the day of the theft. I should go see him and see if that information was worth the 200 pieces of gold.");
};

INSTANCE Info_Mod_Wirt_Pickpocket (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Pickpocket_Condition;
	information	= Info_Mod_Wirt_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Wirt_Pickpocket_Condition()
{
	C_Beklauen	(67, ItFo_Beer, 3);
};

FUNC VOID Info_Mod_Wirt_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);

	Info_AddChoice	(Info_Mod_Wirt_Pickpocket, DIALOG_BACK, Info_Mod_Wirt_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wirt_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wirt_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wirt_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);
};

FUNC VOID Info_Mod_Wirt_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);

		Info_AddChoice	(Info_Mod_Wirt_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wirt_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wirt_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wirt_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wirt_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wirt_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wirt_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wirt_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wirt_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wirt_EXIT (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_EXIT_Condition;
	information	= Info_Mod_Wirt_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wirt_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wirt_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
