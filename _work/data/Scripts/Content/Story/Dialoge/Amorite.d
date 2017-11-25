INSTANCE Info_Mod_Amorite_Hi (C_INFO)
{
	npc		= Mod_7768_OUT_Amorite_EIS;
	nr		= 1;
	condition	= Info_Mod_Amorite_Hi_Condition;
	information	= Info_Mod_Amorite_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Amorite_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Amorite_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Amorite_Hi_17_00"); //Kto przyjezdza, zeby mnie zobaczyc?
	AI_Output(hero, self, "Info_Mod_Amorite_Hi_15_01"); //l--
	AI_Output(self, hero, "Info_Mod_Amorite_Hi_17_02"); //Nie badz niesmialy. Usiadz i napój z mna.
	AI_Output(self, hero, "Info_Mod_Amorite_Hi_17_03"); //Ostatnio mam tak mala firme.
	AI_Output(hero, self, "Info_Mod_Amorite_Hi_15_04"); //Cóz, rozgrzewajacy napój nie zaszkodzi.
	AI_Output(self, hero, "Info_Mod_Amorite_Hi_17_05"); //Nigdy nie widzialem Cie tutaj. Czy jestes z daleka?
	AI_Output(hero, self, "Info_Mod_Amorite_Hi_15_06"); //Skad pochodze, mozesz obserwowac jak rosnie trawa.
	AI_Output(self, hero, "Info_Mod_Amorite_Hi_17_07"); //Jestes czlowiekiem z poczuciem humoru.... Lubie to jedno. Zwlaszcza ze ostatnio bylem samotny, to troche balsam rozrywkowy dla mojej samotnej duszy.
	AI_Output(hero, self, "Info_Mod_Amorite_Hi_15_08"); //Po co jestes samotny?
	AI_Output(self, hero, "Info_Mod_Amorite_Hi_17_09"); //O, mój maz jest mysliwym. Czesto poluje przez wiele tygodni na pustkowiu.... podczas gdy ja jestem w domu sam.
	AI_Output(self, hero, "Info_Mod_Amorite_Hi_17_10"); //Mijaja trzy tygodnie od czasu, kiedy byl ze mna.... Ale tu jeszcze jeden lyk miodu pitnego.
	AI_Output(hero, self, "Info_Mod_Amorite_Hi_15_11"); //Dzieki.
	AI_Output(self, hero, "Info_Mod_Amorite_Hi_17_12"); //Z tak dobra kropla ogrzewa cie cieplo, czyz nie? Ale sa jeszcze inne rzeczy, które moga dawac cieplo.
	AI_Output(self, hero, "Info_Mod_Amorite_Hi_17_13"); //Chodz, daj mi reke.... Pokaze Ci.

	Info_ClearChoices	(Info_Mod_Amorite_Hi);

	Info_AddChoice	(Info_Mod_Amorite_Hi, "Nie, nie sadze, ze tak nie jest.", Info_Mod_Amorite_Hi_B);
	Info_AddChoice	(Info_Mod_Amorite_Hi, "Ok....", Info_Mod_Amorite_Hi_A);
};

FUNC VOID Info_Mod_Amorite_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Amorite_Hi_B_15_00"); //Nie, nie sadze, ze tak nie jest.
	AI_Output(self, hero, "Info_Mod_Amorite_Hi_B_17_01"); //Co? Masz odwage odrzucic mnie?

	Info_ClearChoices	(Info_Mod_Amorite_Hi);

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Mod_7769_OUT_Wuetar_EIS, "EIS_DORF_002");

	Mod_EIS_Amorite = 2;
};

FUNC VOID Info_Mod_Amorite_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Amorite_Hi_A_15_01"); //Ok....
	AI_Output(self, hero, "DEFAULT"); //

	AI_UnequipArmor	(hero);
	AI_UnequipArmor	(self);

	Info_ClearChoices	(Info_Mod_Amorite_Hi);

	PlayVideo ("LOVESCENE.BIK");

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Mod_7769_OUT_Wuetar_EIS, "EIS_DORF_002");

	Mod_EIS_Amorite = 1;
};

INSTANCE Info_Mod_Amorite_LassMich (C_INFO)
{
	npc		= Mod_7768_OUT_Amorite_EIS;
	nr		= 1;
	condition	= Info_Mod_Amorite_LassMich_Condition;
	information	= Info_Mod_Amorite_LassMich_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Amorite_LassMich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Amorite_Hi))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amorite_LassMich_Info()
{
	AI_Output(self, hero, "Info_Mod_Amorite_LassMich_17_00"); //Udajcie sie ode mnie!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Amorite_Pickpocket (C_INFO)
{
	npc		= Mod_7768_OUT_Amorite_EIS;
	nr		= 1;
	condition	= Info_Mod_Amorite_Pickpocket_Condition;
	information	= Info_Mod_Amorite_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Amorite_Pickpocket_Condition()
{
	C_Beklauen	(59, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Amorite_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Amorite_Pickpocket);

	Info_AddChoice	(Info_Mod_Amorite_Pickpocket, DIALOG_BACK, Info_Mod_Amorite_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Amorite_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Amorite_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Amorite_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Amorite_Pickpocket);
};

FUNC VOID Info_Mod_Amorite_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Amorite_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Amorite_Pickpocket);

		Info_AddChoice	(Info_Mod_Amorite_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Amorite_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Amorite_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Amorite_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Amorite_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Amorite_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Amorite_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Amorite_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Amorite_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Amorite_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Amorite_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Amorite_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Amorite_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Amorite_EXIT (C_INFO)
{
	npc		= Mod_7768_OUT_Amorite_EIS;
	nr		= 1;
	condition	= Info_Mod_Amorite_EXIT_Condition;
	information	= Info_Mod_Amorite_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Amorite_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Amorite_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
