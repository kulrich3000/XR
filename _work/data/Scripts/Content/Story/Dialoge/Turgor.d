INSTANCE Info_Mod_Turgor_Hi (C_INFO)
{
	npc		= Mod_7397_PSINOV_Turgor_REL;
	nr		= 1;
	condition	= Info_Mod_Turgor_Hi_Condition;
	information	= Info_Mod_Turgor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Turgor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Turgor_Hi_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Turgor_Hi_27_01"); //Chce to równiez wiedziec!
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_27_02"); //"Przejdz do Relendel.", haben sie gesagt, "tam istnieje wolny rynek zbytu dla bagna."
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_27_03"); //Tak, ale oni mi nie mówili, ze tam jest cos lepszego!
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_27_04"); //Cos, co sprawia, ze ??cala pieluszka chwastów niepotrzebne!

	Info_ClearChoices	(Info_Mod_Turgor_Hi);

	Info_AddChoice	(Info_Mod_Turgor_Hi, "(pozwól im rozmawiac i odchodzic)", Info_Mod_Turgor_Hi_B);
	Info_AddChoice	(Info_Mod_Turgor_Hi, "Kim sa oni?", Info_Mod_Turgor_Hi_A);
};

FUNC VOID Info_Mod_Turgor_Hi_B()
{
	AI_TurnAway	(hero, self);

	AI_Output(self, hero, "Info_Mod_Turgor_Hi_B_27_00"); //I tylko ludzie tutaj...... Hej, co ty robisz?

	Info_ClearChoices	(Info_Mod_Turgor_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Turgor_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Turgor_Hi_A_15_00"); //Wer sind "ona"?
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_01"); //Skad jestem, huh?
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_02"); //Stare worki Guru prawdopodobnie chcialy mnie pozbyc.
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_03"); //Niech gnija w bagnie!
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_04"); //Nie zrobie im laski i wróce.
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_05"); //Nie jest to jednak duzo lepiej. Guru sa przynajmniej wywazone!
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_06"); //W Khoracie kazdy dostaje na siebie nawzajem nerwy, jeki, sa niezadowoleni......
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_07"); //Nie jest to zaden sposób, aby normalnie sobie nawzajem radzic.
	AI_Output(hero, self, "Info_Mod_Turgor_Hi_A_15_08"); //Zauwazyc cos niezwyklego?
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_09"); //(Pauza) Oh, gówno. (healthy) Tak, przepraszam.
	AI_Output(hero, self, "Info_Mod_Turgor_Hi_A_15_10"); //Können wir dann "normalnie obchodzic sie nawzajem"?
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_11"); //"Oczywiscie. Masz pytania lub w jaki sposób?

	Info_ClearChoices	(Info_Mod_Turgor_Hi);
};

INSTANCE Info_Mod_Turgor_WieLaeufts (C_INFO)
{
	npc		= Mod_7397_PSINOV_Turgor_REL;
	nr		= 1;
	condition	= Info_Mod_Turgor_WieLaeufts_Condition;
	information	= Info_Mod_Turgor_WieLaeufts_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to sie dzieje?";
};

FUNC INT Info_Mod_Turgor_WieLaeufts_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turgor_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turgor_WieLaeufts_Info()
{
	AI_Output(hero, self, "Info_Mod_Turgor_WieLaeufts_15_00"); //Jak to sie dzieje?
	AI_Output(self, hero, "Info_Mod_Turgor_WieLaeufts_27_01"); //Haha, smieszny. Bagno rosnie, ale nikt nie chce. Moge palic tylko samemu.
};

INSTANCE Info_Mod_Turgor_Freudenspender (C_INFO)
{
	npc		= Mod_7397_PSINOV_Turgor_REL;
	nr		= 1;
	condition	= Info_Mod_Turgor_Freudenspender_Condition;
	information	= Info_Mod_Turgor_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Cieszylabym sie, ze moge Cie tutaj zobaczyc.";
};                       

FUNC INT Info_Mod_Turgor_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Turgor_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Turgor_Freudenspender_15_00"); //Cieszylabym sie, ze moge Cie tutaj zobaczyc.
	AI_Output(self, hero, "Info_Mod_Turgor_Freudenspender_27_01"); //Zamknij sie, chcesz mnie teraz zrujnowac! Co sie dzieje z moim ziolem?
	AI_Output(hero, self, "Info_Mod_Turgor_Freudenspender_15_02"); //Nie?
	AI_Output(self, hero, "Info_Mod_Turgor_Freudenspender_27_03"); //Pospiesz sie, daj mi to. Znacznie lepiej niz pieluszka.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Turgor_Pickpocket (C_INFO)
{
	npc		= Mod_7397_PSINOV_Turgor_REL;
	nr		= 1;
	condition	= Info_Mod_Turgor_Pickpocket_Condition;
	information	= Info_Mod_Turgor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Turgor_Pickpocket_Condition()
{
	C_Beklauen	(76, ItMi_Gold, 29);
};

FUNC VOID Info_Mod_Turgor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);

	Info_AddChoice	(Info_Mod_Turgor_Pickpocket, DIALOG_BACK, Info_Mod_Turgor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Turgor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Turgor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Turgor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);
};

FUNC VOID Info_Mod_Turgor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);

		Info_AddChoice	(Info_Mod_Turgor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Turgor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Turgor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Turgor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Turgor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Turgor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Turgor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Turgor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Turgor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Turgor_EXIT (C_INFO)
{
	npc		= Mod_7397_PSINOV_Turgor_REL;
	nr		= 1;
	condition	= Info_Mod_Turgor_EXIT_Condition;
	information	= Info_Mod_Turgor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Turgor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Turgor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
