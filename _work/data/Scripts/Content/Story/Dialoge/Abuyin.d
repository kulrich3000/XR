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
	AI_Output(self, hero, "Info_Mod_Abuyin_Hi_06_00"); //Obcy, przychodza do Abuyin w królestwie tysiaca zmyslów.
	AI_Output(self, hero, "Info_Mod_Abuyin_Hi_06_01"); //Tutaj mozesz palic tyton i zdobywac nowe doswiadczenia.
	AI_Output(self, hero, "Info_Mod_Abuyin_Hi_06_02"); //Wystarczy usiasc w jednej z rur wody i wybrac jeden z niezrównanych smaków.
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
	AI_Output(self, hero, "Info_Mod_Abuyin_NewTabak_06_00"); //Syn przeznaczenia, bedziesz zainteresowany, aby uslyszec, ze moja oferta jest rozszerzona.
	AI_Output(self, hero, "Info_Mod_Abuyin_NewTabak_06_01"); //Zrób sobie przerwe i ciesz sie nowym tytoniem z odleglej Varant.
};

INSTANCE Info_Mod_Abuyin_Flugblaetter (C_INFO)
{
	npc		= Mod_558_NONE_Abuyin_NW;
	nr		= 1;
	condition	= Info_Mod_Abuyin_Flugblaetter_Condition;
	information	= Info_Mod_Abuyin_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
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

	AI_Output(self, hero, "Info_Mod_Abuyin_Flugblaetter_06_01"); //Spodziewalem sie, ze przyjdziesz.
	AI_Output(self, hero, "Info_Mod_Abuyin_Flugblaetter_06_02"); //Moze zatrzymam sie przy Matteo' s.

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
	description	= "Masz silny tyton? I nie mam na mysli tytoniu jablkowego....";
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
	AI_Output(hero, self, "Info_Mod_Abuyin_Plagenquest_15_00"); //Masz silny tyton? I nie mam na mysli tytoniu jablkowego....
	AI_Output(self, hero, "Info_Mod_Abuyin_Plagenquest_06_01"); //Tak, jestem tez w posiadaniu takiego syna Okolicznosci, jesli poczujesz przyjemnosc pózniej.....
	AI_Output(hero, self, "Info_Mod_Abuyin_Plagenquest_15_02"); //Ile kosztuja dwie porcje tego tytoniu?
	AI_Output(self, hero, "Info_Mod_Abuyin_Plagenquest_06_03"); //100 zlotych monet. Ale wiem jednak, ze z przyjemnoscia zaplacicie te kwote.

	if (Mod_Verhandlungsgeschick > 0)
	{
		AI_Output(hero, self, "Info_Mod_Abuyin_Plagenquest_15_04"); //Tym razem twój dalekowzrocznosc cie oszukuje.

		if (self.aivar[AIV_Verhandlung] == TRUE)
		{
			AI_Output(self, hero, "Info_Mod_Abuyin_Plagenquest_06_05"); //Czy powiedzialem 100 zlotych monet? Mówilem oczywiscie o 50.
			AI_Output(self, hero, "Info_Mod_Abuyin_Plagenquest_06_06"); //Abuyin nigdy sie nie myli.

			B_GiveInvItems	(hero, self, ItMi_Gold, 50);

			B_RaiseHandelsgeschick (2);
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Abuyin_Plagenquest_06_07"); //Oczywiscie nie.

			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		};
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Abuyin_Plagenquest_15_08"); //Wtedy lubie dwie porcje.

		B_GiveInvItems	(hero, self, ItMi_Gold, 100);
	};

	AI_Output(self, hero, "Info_Mod_Abuyin_Plagenquest_06_09"); //Tutaj jestes.

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
