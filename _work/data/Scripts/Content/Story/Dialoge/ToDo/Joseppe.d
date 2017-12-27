INSTANCE Info_Mod_Joseppe_Hi (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Hi_Condition;
	information	= Info_Mod_Joseppe_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joseppe_Hi_Condition()
{
	if (Mod_Sekte_Karras >= 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Karras_NamibHabBuch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Joseppe_Hi_08_00"); //Help!!!! I need urgent executive help! Are you militia, my good man?

	Info_ClearChoices	(Info_Mod_Joseppe_Hi);

	Info_AddChoice	(Info_Mod_Joseppe_Hi, "No.", Info_Mod_Joseppe_Hi_B);
	Info_AddChoice	(Info_Mod_Joseppe_Hi, "Yes.", Info_Mod_Joseppe_Hi_A);
};

FUNC VOID Info_Mod_Joseppe_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_Hi_B_15_00"); //No.
	AI_Output(self, hero, "Info_Mod_Joseppe_Hi_B_08_01"); //Wonderful. Excuse me, my name is Joseppe. I'm the man for special tasks.
	AI_Output(self, hero, "Info_Mod_Joseppe_Hi_B_08_02"); //If you want to use my services, I'll be standing in front of the Adanos shrine every night. Have a good life.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "A man named Joseppe offered me some sort of service. In the evening he stands at the Adanos shrine. I should visit him there sometime.");

	Mod_Sekte_Joseppe = 1;

	Info_ClearChoices	(Info_Mod_Joseppe_Hi);
};

FUNC VOID Info_Mod_Joseppe_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_Hi_A_15_00"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Joseppe_Hi_A_08_01"); //Sorry, I must have been wrong. I thought someone stole my wallet. Have a nice day.

	Info_ClearChoices	(Info_Mod_Joseppe_Hi);
};

INSTANCE Info_Mod_Joseppe_Auftrag (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Auftrag_Condition;
	information	= Info_Mod_Joseppe_Auftrag_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joseppe_Auftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joseppe_Hi))
	&& (Mod_Sekte_Joseppe == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Wld_IsTime(20,30,05,00))
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_Auftrag_Info()
{
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_00"); //You've come, how very pleasant. What do you have to do for me? Mass murder, assassination, slander, character murder, I'm a specialist in everything.
	AI_Output(hero, self, "Info_Mod_Joseppe_Auftrag_15_01"); //Can you get me a book?
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_02"); //You don't seem to recognize my potential... but in need, the devil eats to fly.
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_03"); //Which book do you want, and where is it?
	AI_Output(hero, self, "Info_Mod_Joseppe_Auftrag_15_04"); //The necronomic. Fire magicians hide it in the monastery.
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_05"); //A book of black magic? Your assignment seems pretty interesting.
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_06"); //Let's get paid. The basic package costs 10. 000 gold coins.
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_07"); //You'd get a discount if you got me equipment.
	AI_Output(self, hero, "Info_Mod_Joseppe_Auftrag_08_08"); //Depending on how useful it is, I'll go down with the price.

	Mod_Sekte_JoseppePreis = 10000;

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Joseppe is a specialist in all types of crime. For the theft of the book, however, he demands 10. 000 gold coins. But he offered me a discount when I brought him some useful equipment.");
};

INSTANCE Info_Mod_Joseppe_Equipment_Keule (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Equipment_Keule_Condition;
	information	= Info_Mod_Joseppe_Equipment_Keule_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a magic club here.";
};

FUNC INT Info_Mod_Joseppe_Equipment_Keule_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joseppe_Auftrag))
	&& (Mod_Sekte_Joseppe == 1)
	&& (Npc_HasItems(hero, ItMw_UnconsciousKnueppel) == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_Equipment_Keule_Info()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_Equipment_Keule_15_00"); //I've got a magic club here. Whoever is beaten with it will immediately become unconscious.

	B_GiveInvItems	(hero, self, ItMw_UnconsciousKnueppel, 1);

	AI_Output(hero, self, "Info_Mod_Joseppe_Equipment_Keule_15_01"); //Unfortunately, this only works once, after that it is worthless.
	AI_Output(self, hero, "Info_Mod_Joseppe_Equipment_Keule_08_02"); //Interesting, that should be pretty helpful. I'll give you a discount of two for this. 500 gold coins.

	Mod_Sekte_JoseppePreis -= 2500;
};

INSTANCE Info_Mod_Joseppe_Equipment_FakeNove (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Equipment_FakeNove_Condition;
	information	= Info_Mod_Joseppe_Equipment_FakeNove_Info;
	permanent	= 0;
	important	= 0;
	description	= "I still have a fake fire novice rehearsal.";
};

FUNC INT Info_Mod_Joseppe_Equipment_FakeNove_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joseppe_Auftrag))
	&& (Mod_Sekte_Joseppe == 1)
	&& (Npc_HasItems(hero, ITAR_FAKE_NOV_L) == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_Equipment_FakeNove_Info()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_Equipment_FakeNove_15_00"); //I still have a fake fire novice rehearsal.

	B_GiveInvItems	(hero, self, ITAR_FAKE_NOV_L, 1);

	AI_Output(self, hero, "Info_Mod_Joseppe_Equipment_FakeNove_08_01"); //I should come to the monastery lightly unharmed. That's two. Worth 500 gold coins.

	Mod_Sekte_JoseppePreis -= 2500;
};

INSTANCE Info_Mod_Joseppe_Equipment_Sumpfkraut (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Equipment_Sumpfkraut_Condition;
	information	= Info_Mod_Joseppe_Equipment_Sumpfkraut_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you think of this bog weed package?";
};

FUNC INT Info_Mod_Joseppe_Equipment_Sumpfkraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joseppe_Auftrag))
	&& (Mod_Sekte_Joseppe == 1)
	&& (Npc_HasItems(hero, ItMi_HerbPaket) >= 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_Equipment_Sumpfkraut_Info()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_Equipment_Sumpfkraut_15_00"); //What do you think of this bog weed package?

	B_GiveInvItems	(hero, self, ItMi_HerbPaket, 1);

	AI_Output(self, hero, "Info_Mod_Joseppe_Equipment_Sumpfkraut_08_01"); //Swampweed's always good, give it to me. I'll give you two. 500 gold coins.

	Mod_Sekte_JoseppePreis -= 2500;
};

INSTANCE Info_Mod_Joseppe_StartAuftrag (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_StartAuftrag_Condition;
	information	= Info_Mod_Joseppe_StartAuftrag_Info;
	permanent	= 1;
	important	= 0;
	description	= "Okay, you have the assignment.";
};

FUNC INT Info_Mod_Joseppe_StartAuftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joseppe_Auftrag))
	&& (Mod_Sekte_Joseppe == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_StartAuftrag_Info()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_StartAuftrag_15_00"); //Okay, you have the assignment.

	if (Mod_Sekte_JoseppePreis == 10000)
	{
		AI_Output(self, hero, "Info_Mod_Joseppe_StartAuftrag_08_01"); //That'll be 10. 000 gold coins.
	}
	else if (Mod_Sekte_JoseppePreis == 7500)
	{
		AI_Output(self, hero, "Info_Mod_Joseppe_StartAuftrag_08_02"); //That's seven. 500 gold coins.
	}
	else if (Mod_Sekte_JoseppePreis == 5000)
	{
		AI_Output(self, hero, "Info_Mod_Joseppe_StartAuftrag_08_03"); //That's five. 000 gold coins.
	}
	else if (Mod_Sekte_JoseppePreis == 2500)
	{
		AI_Output(self, hero, "Info_Mod_Joseppe_StartAuftrag_08_04"); //That makes two. 500 gold coins.
	};

	Info_ClearChoices	(Info_Mod_Joseppe_StartAuftrag);

	Info_AddChoice	(Info_Mod_Joseppe_StartAuftrag, "I don't have that much gold.", Info_Mod_Joseppe_StartAuftrag_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= Mod_Sekte_JoseppePreis)
	{
		Info_AddChoice	(Info_Mod_Joseppe_StartAuftrag, "Here's the gold.", Info_Mod_Joseppe_StartAuftrag_A);
	};
};

FUNC VOID Info_Mod_Joseppe_StartAuftrag_B()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_StartAuftrag_B_15_00"); //I don't have that much gold.
	AI_Output(self, hero, "Info_Mod_Joseppe_StartAuftrag_B_08_01"); //Then come back when you get it.
	
	Info_ClearChoices	(Info_Mod_Joseppe_StartAuftrag);
};

FUNC VOID Info_Mod_Joseppe_StartAuftrag_A()
{
	AI_Output(hero, self, "Info_Mod_Joseppe_StartAuftrag_A_15_00"); //Here's the gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, Mod_Sekte_JoseppePreis);

	AI_Output(self, hero, "Info_Mod_Joseppe_StartAuftrag_A_08_01"); //Well, come back tomorrow, then I should have your book.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Joseppe has taken over the job. Tomorrow he'll give me the book.");

	Mod_Sekte_Joseppe = 2;

	Mod_Sekte_JoseppeBuch = Wld_GetDay();
	
	Info_ClearChoices	(Info_Mod_Joseppe_StartAuftrag);
};

INSTANCE Info_Mod_Joseppe_Necronomicum (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Necronomicum_Condition;
	information	= Info_Mod_Joseppe_Necronomicum_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joseppe_Necronomicum_Condition()
{
	if (Mod_Sekte_Joseppe == 2)
	&& (Wld_GetDay() > Mod_Sekte_JoseppeBuch)
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joseppe_Necronomicum_Info()
{
	AI_Output(self, hero, "Info_Mod_Joseppe_Necronomicum_08_00"); //There you are again. I got your book. Here you have it.

	B_GiveInvItems	(self, hero, ItWr_BeliarBook, 1);

	AI_Output(hero, self, "Info_Mod_Joseppe_Necronomicum_15_01"); //Thanks.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "I have received the Neconomicum from Joseppe. I should now return to Karras.");
};

INSTANCE Info_Mod_Joseppe_Pickpocket (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_Pickpocket_Condition;
	information	= Info_Mod_Joseppe_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Joseppe_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Joseppe_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);

	Info_AddChoice	(Info_Mod_Joseppe_Pickpocket, DIALOG_BACK, Info_Mod_Joseppe_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Joseppe_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Joseppe_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Joseppe_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);
};

FUNC VOID Info_Mod_Joseppe_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);

		Info_AddChoice	(Info_Mod_Joseppe_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Joseppe_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Joseppe_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Joseppe_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Joseppe_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Joseppe_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Joseppe_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Joseppe_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Joseppe_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Joseppe_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Joseppe_EXIT (C_INFO)
{
	npc		= Mod_7267_VLK_Joseppe_NW;
	nr		= 1;
	condition	= Info_Mod_Joseppe_EXIT_Condition;
	information	= Info_Mod_Joseppe_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Joseppe_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Joseppe_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
