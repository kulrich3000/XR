INSTANCE Info_Mod_Abuyin_Hi (C_INFO)
{
	npc		= Mod_558_NONE_Abuyin_NW;
	nr		= 1;
	condition	= Info_Mod_Abuyin_Hi_Condition;
	information	= Info_Mod_Abuyin_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Abuyin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Abuyin_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Abuyin_Hi_06_00"); //Stranger, come to Abuyin in the realm of a thousand senses.
	AI_Output(self, hero, "Info_Mod_Abuyin_Hi_06_01"); //Here you can smoke a wide variety of tobaccos and gain new experiences.
	AI_Output(self, hero, "Info_Mod_Abuyin_Hi_06_02"); //Just sit at one of the water pipes and choose one of the incomparable flavours.
};

INSTANCE Info_Mod_Abuyin_NewTabak (C_INFO)
{
	npc		= Mod_558_NONE_Abuyin_NW;
	nr		= 1;
	condition	= Info_Mod_Abuyin_NewTabak_Condition;
	information	= Info_Mod_Abuyin_NewTabak_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Abuyin_NewTabak_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Abuyin_Hi))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Abuyin_NewTabak_Info()
{
	AI_Output(self, hero, "Info_Mod_Abuyin_NewTabak_06_00"); //Son of destiny, you will be interested to hear that my offer is extended.
	AI_Output(self, hero, "Info_Mod_Abuyin_NewTabak_06_01"); //Take a break and enjoy the new tobacco from distant Varant.
};

INSTANCE Info_Mod_Abuyin_Flugblaetter (C_INFO)
{
	npc		= Mod_558_NONE_Abuyin_NW;
	nr		= 1;
	condition	= Info_Mod_Abuyin_Flugblaetter_Condition;
	information	= Info_Mod_Abuyin_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Abuyin_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter	<	20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Abuyin_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Abuyin_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Abuyin_Flugblaetter_06_01"); //I anticipated you'd come.
	AI_Output(self, hero, "Info_Mod_Abuyin_Flugblaetter_06_02"); //Maybe I'll stop by Matteo's.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Abuyin_Plagenquest (C_INFO)
{
	npc		= Mod_558_NONE_Abuyin_NW;
	nr		= 1;
	condition	= Info_Mod_Abuyin_Plagenquest_Condition;
	information	= Info_Mod_Abuyin_Plagenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have strong tobacco? And I don't mean apple tobacco....";
};

FUNC INT Info_Mod_Abuyin_Plagenquest_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Lukas_Plagenquest_02))
	|| (Npc_KnowsInfo(hero, Info_Mod_Wendel_Plagenquest_02))
	|| (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Plagenquest_02)))
	&& (Npc_KnowsInfo(hero, Info_Mod_Abuyin_Hi))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Abuyin_Plagenquest_Info()
{
	AI_Output(hero, self, "Info_Mod_Abuyin_Plagenquest_15_00"); //Do you have strong tobacco? And I don't mean apple tobacco....
	AI_Output(self, hero, "Info_Mod_Abuyin_Plagenquest_06_01"); //Yes, I am also in possession of such a son of the Occident, if you feel the pleasure afterwards....
	AI_Output(hero, self, "Info_Mod_Abuyin_Plagenquest_15_02"); //How much do two servings of this tobacco cost?
	AI_Output(self, hero, "Info_Mod_Abuyin_Plagenquest_06_03"); //100 gold coins. But I know you'll be happy to pay that amount.

	if (Mod_Verhandlungsgeschick > 0)
	{
		AI_Output(hero, self, "Info_Mod_Abuyin_Plagenquest_15_04"); //This time your foresight is deceiving you.

		if (self.aivar[AIV_Verhandlung] == TRUE)
		{
			AI_Output(self, hero, "Info_Mod_Abuyin_Plagenquest_06_05"); //Did I say 100 gold coins? I was talking about 50, of course.
			AI_Output(self, hero, "Info_Mod_Abuyin_Plagenquest_06_06"); //Abuyin is never wrong.

			B_GiveInvItems	(hero, self, ItMi_Gold, 50);

			B_RaiseHandelsgeschick (2);
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Abuyin_Plagenquest_06_07"); //Certainly not.

			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		};
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Abuyin_Plagenquest_15_08"); //Then I'd like two portions.

		B_GiveInvItems	(hero, self, ItMi_Gold, 100);
	};

	AI_Output(self, hero, "Info_Mod_Abuyin_Plagenquest_06_09"); //Here you are.

	B_GiveInvItems	(self, hero, ItMi_StarkerTabak, 2);
};

INSTANCE Info_Mod_Abuyin_Pickpocket (C_INFO)
{
	npc		= Mod_558_NONE_Abuyin_NW;
	nr		= 1;
	condition	= Info_Mod_Abuyin_Pickpocket_Condition;
	information	= Info_Mod_Abuyin_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Abuyin_Pickpocket_Condition()
{
	C_Beklauen	(74, ItMi_ApfelTabak, 2);
};

FUNC VOID Info_Mod_Abuyin_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Abuyin_Pickpocket);

	Info_AddChoice	(Info_Mod_Abuyin_Pickpocket, DIALOG_BACK, Info_Mod_Abuyin_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Abuyin_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Abuyin_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Abuyin_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Abuyin_Pickpocket);
};

FUNC VOID Info_Mod_Abuyin_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Abuyin_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Abuyin_Pickpocket);

		Info_AddChoice	(Info_Mod_Abuyin_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Abuyin_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Abuyin_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Abuyin_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Abuyin_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Abuyin_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Abuyin_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Abuyin_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Abuyin_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Abuyin_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Abuyin_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Abuyin_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Abuyin_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Abuyin_EXIT (C_INFO)
{
	npc		= Mod_558_NONE_Abuyin_NW;
	nr		= 1;
	condition	= Info_Mod_Abuyin_EXIT_Condition;
	information	= Info_Mod_Abuyin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Abuyin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Abuyin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
