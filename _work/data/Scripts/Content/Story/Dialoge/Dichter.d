INSTANCE Info_Mod_Dichter_Hi (C_INFO)
{
	npc		= Mod_7346_OUT_Dichter_REL;
	nr		= 1;
	condition	= Info_Mod_Dichter_Hi_Condition;
	information	= Info_Mod_Dichter_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Dichter_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dichter_Hi_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Dichter_Hi_34_01"); //C�z, nerwowy, l-- uh, napisz. Wiersze i tak dalej.
};

INSTANCE Info_Mod_Dichter_Unzufrieden (C_INFO)
{
	npc		= Mod_7346_OUT_Dichter_REL;
	nr		= 1;
	condition	= Info_Mod_Dichter_Unzufrieden_Condition;
	information	= Info_Mod_Dichter_Unzufrieden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie brzmi to zbyt dobrze.";
};

FUNC INT Info_Mod_Dichter_Unzufrieden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dichter_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dichter_Unzufrieden_Info()
{
	AI_Output(hero, self, "Info_Mod_Dichter_Unzufrieden_15_00"); //Nie brzmi to zbyt dobrze.
	AI_Output(self, hero, "Info_Mod_Dichter_Unzufrieden_34_01"); //Czy mam? Czy moge byc dumny z siebie?
	AI_Output(self, hero, "Info_Mod_Dichter_Unzufrieden_34_02"); //Ludzie tacy jak ty sa zawsze w centrum uwagi....
	AI_Output(hero, self, "Info_Mod_Dichter_Unzufrieden_15_03"); //Nie zawsze calkowicie dobrowolne.....
	AI_Output(self, hero, "Info_Mod_Dichter_Unzufrieden_34_04"); //Siedze w ciemnej dendzie, piszac o rzeczach, kt�rych nigdy wczesniej nie widzialem!
	AI_Output(self, hero, "Info_Mod_Dichter_Unzufrieden_34_05"); //Z zajec, kt�rych nigdy wczesniej nie robilem!
	AI_Output(self, hero, "Info_Mod_Dichter_Unzufrieden_34_06"); //Jak mam sie udowodnic?
	AI_Output(hero, self, "Info_Mod_Dichter_Unzufrieden_15_07"); //Do kogo pr�bujesz sie udowodnic?
	AI_Output(self, hero, "Info_Mod_Dichter_Unzufrieden_34_08"); //Ja oczywiscie.
	AI_Output(hero, self, "Info_Mod_Dichter_Unzufrieden_15_09"); //Naprawde?
	AI_Output(self, hero, "Info_Mod_Dichter_Unzufrieden_34_10"); //C�z, jest Malgaretka....
	AI_Output(hero, self, "Info_Mod_Dichter_Unzufrieden_15_11"); //To wlasnie pomyslalem.
	AI_Output(self, hero, "Info_Mod_Dichter_Unzufrieden_34_12"); //Co ja robie?

	Info_ClearChoices	(Info_Mod_Dichter_Unzufrieden);

	Info_AddChoice	(Info_Mod_Dichter_Unzufrieden, "Zapomnij o niej.", Info_Mod_Dichter_Unzufrieden_C);
	Info_AddChoice	(Info_Mod_Dichter_Unzufrieden, "Wyrusz i poznaj swiat.", Info_Mod_Dichter_Unzufrieden_B);
	Info_AddChoice	(Info_Mod_Dichter_Unzufrieden, "Pokaz jej swoje wiersze.", Info_Mod_Dichter_Unzufrieden_A);
};

FUNC VOID Info_Mod_Dichter_Unzufrieden_C()
{
	AI_Output(hero, self, "Info_Mod_Dichter_Unzufrieden_C_15_00"); //Zapomnij o niej.
	AI_Output(self, hero, "Info_Mod_Dichter_Unzufrieden_C_34_01"); //(wycisniety) Pomyslalem, ze tak....

	Mod_REL_Dichter = 3;

	Info_ClearChoices	(Info_Mod_Dichter_Unzufrieden);
};

FUNC VOID Info_Mod_Dichter_Unzufrieden_B()
{
	AI_Output(hero, self, "Info_Mod_Dichter_Unzufrieden_B_15_00"); //Wyrusz i poznaj swiat.
	AI_Output(self, hero, "Info_Mod_Dichter_Unzufrieden_B_34_01"); //Po prostu nie myslec dalej, dobrze? Wlasciwie to zrobie.

	Info_ClearChoices	(Info_Mod_Dichter_Unzufrieden);

	Mod_REL_Dichter = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

FUNC VOID Info_Mod_Dichter_Unzufrieden_A()
{
	AI_Output(hero, self, "Info_Mod_Dichter_Unzufrieden_A_15_00"); //Zeig ihr deine Gedichte.
	AI_Output(self, hero, "Info_Mod_Dichter_Unzufrieden_A_34_01"); //(skeptisch) Meinst du, das klappt? Hmm, werd's mal probieren.	

	Info_ClearChoices	(Info_Mod_Dichter_Unzufrieden);

	Mod_REL_Dichter = 1;
};

INSTANCE Info_Mod_Dichter_AtMargarethe (C_INFO)
{
	npc		= Mod_7346_OUT_Dichter_REL;
	nr		= 1;
	condition	= Info_Mod_Dichter_AtMargarethe_Condition;
	information	= Info_Mod_Dichter_AtMargarethe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dichter_AtMargarethe_Condition()
{
	if (Mod_REL_DichterBeiMargarethe == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dichter_AtMargarethe_Info()
{
	AI_Output(self, hero, "Info_Mod_Dichter_AtMargarethe_34_00"); //Twoja wskaz�wka pomogla mi! Bardzo dziekuje!

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);
};

INSTANCE Info_Mod_Dichter_Freudenspender (C_INFO)
{
	npc		= Mod_7346_OUT_Dichter_REL;
	nr		= 1;
	condition	= Info_Mod_Dichter_Freudenspender_Condition;
	information	= Info_Mod_Dichter_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Chcesz dac wiecej inspiracji?";
};                       

FUNC INT Info_Mod_Dichter_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Dichter_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Dichter_Freudenspender_15_00"); //Chcesz dac wiecej inspiracji?
	AI_Output(self, hero, "Info_Mod_Dichter_Freudenspender_34_01"); //Myslisz, ze to Ci sie pomoze?
	AI_Output(hero, self, "Info_Mod_Dichter_Freudenspender_15_02"); //Oczywiscie.
	AI_Output(self, hero, "Info_Mod_Dichter_Freudenspender_34_03"); //Wtedy bede mial troche. Dzieki.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender += 1;
};

INSTANCE Info_Mod_Dichter_Pickpocket (C_INFO)
{
	npc		= Mod_7346_OUT_Dichter_REL;
	nr		= 1;
	condition	= Info_Mod_Dichter_Pickpocket_Condition;
	information	= Info_Mod_Dichter_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Dichter_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Dichter_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Dichter_Pickpocket);

	Info_AddChoice	(Info_Mod_Dichter_Pickpocket, DIALOG_BACK, Info_Mod_Dichter_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Dichter_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Dichter_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Dichter_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Dichter_Pickpocket);
};

FUNC VOID Info_Mod_Dichter_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Dichter_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Dichter_Pickpocket);

		Info_AddChoice	(Info_Mod_Dichter_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Dichter_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Dichter_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Dichter_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Dichter_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Dichter_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Dichter_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Dichter_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Dichter_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Dichter_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Dichter_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Dichter_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Dichter_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Dichter_EXIT (C_INFO)
{
	npc		= Mod_7346_OUT_Dichter_REL;
	nr		= 1;
	condition	= Info_Mod_Dichter_EXIT_Condition;
	information	= Info_Mod_Dichter_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dichter_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dichter_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
