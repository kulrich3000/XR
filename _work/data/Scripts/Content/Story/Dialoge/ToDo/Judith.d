INSTANCE Info_Mod_Judith_Hi (C_INFO)
{
	npc		= Mod_7680_OUT_Judith_REL;
	nr		= 1;
	condition	= Info_Mod_Judith_Hi_Condition;
	information	= Info_Mod_Judith_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powiedz mi o sobie.";
};

FUNC INT Info_Mod_Judith_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Judith_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Judith_Hi_15_00"); //Powiedz mi o sobie.
	AI_Output(self, hero, "Info_Mod_Judith_Hi_06_01"); //Co mam powiedziec o sobie samym?
	AI_Output(self, hero, "Info_Mod_Judith_Hi_06_02"); //Planowalem regularne dlugie wieczorne spacery.
	AI_Output(self, hero, "Info_Mod_Judith_Hi_06_03"); //Stojac w kuchni przez caly dzien, utrzymujac gospodarstwo domowe w dobrej kondycji - aby uzyskac czysta glowe, potrzebna jest takze niewielka zmiana.
	AI_Output(self, hero, "Info_Mod_Judith_Hi_06_04"); //Jesli to wlasnie chciales uslyszec....
};

INSTANCE Info_Mod_Judith_Pavillon (C_INFO)
{
	npc		= Mod_7680_OUT_Judith_REL;
	nr		= 1;
	condition	= Info_Mod_Judith_Pavillon_Condition;
	information	= Info_Mod_Judith_Pavillon_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Judith_Pavillon_Condition()
{
	if (Npc_GetDistToWP(self, "PARK_BETEN") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Judith_Pavillon_Info()
{
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_06_00"); //Czy to ty, ulubieniec?

	Info_ClearChoices	(Info_Mod_Judith_Pavillon);

	Info_AddChoice	(Info_Mod_Judith_Pavillon, "Tak, moje ulubienie.", Info_Mod_Judith_Pavillon_B);
	Info_AddChoice	(Info_Mod_Judith_Pavillon, "Prosze o wybaczenie?", Info_Mod_Judith_Pavillon_A);
};

FUNC VOID Info_Mod_Judith_Pavillon_B()
{
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_B_15_00"); //Tak, moje ulubienie.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_B_06_01"); //Naprawde musze panstwu powiedziec, co wydarzylo sie wczesniej.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_B_06_02"); //Mysle, ze lucas stal sie podejrzliwy.

	Info_ClearChoices	(Info_Mod_Judith_Pavillon);

	Info_AddChoice	(Info_Mod_Judith_Pavillon, "Co podejrzewal?", Info_Mod_Judith_Pavillon_D);
	Info_AddChoice	(Info_Mod_Judith_Pavillon, "Czy mamy ciec do poscigu?", Info_Mod_Judith_Pavillon_C);
};

FUNC VOID Info_Mod_Judith_Pavillon_A()
{
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_A_15_00"); //Prosze o wybaczenie?
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_A_06_01"); //Nic nie ma nic. Musze byc spiaczka.

	Info_ClearChoices	(Info_Mod_Judith_Pavillon);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

FUNC VOID Info_Mod_Judith_Pavillon_D()
{
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_D_15_00"); //Co podejrzewal?
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_D_06_01"); //No cóz, ze cie widze.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_D_06_02"); //Kiedy powiedzialem mu, ze znowu musze odrobine swiezego powietrza, bo bylem chory, odpowiedzial:"Dopóki nie skonczy sie na Piotrze.
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_D_15_03"); //Jestem Piotrem?
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_D_06_04"); //(ironiczne) No z pewnoscia, o tej godzinie spedzilem z nim czas.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_D_06_05"); //Po prostu graj w gry przy mnie!
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_D_15_06"); //Ty mnie znasz, znasz mnie!
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_D_06_07"); //Teraz wystarczy Lukasza. Musze byc tylko nieco ostrozny.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_D_06_08"); //Uczynmy sie komfortowymi!

	Info_ClearChoices	(Info_Mod_Judith_Pavillon);

	AI_StopProcessInfos	(self);

	Mod_JudithNacht = 1;
};

FUNC VOID Info_Mod_Judith_Pavillon_C()
{
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_C_15_00"); //Czy mamy ciec do poscigu?
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_C_06_01"); //Do jakiej przyczyny?
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon_C_15_02"); //.... cokolwiek jeszcze robimy.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_C_06_03"); //Zawsze? To nasze trzecie spotkanie! Zaczynam odczuwac....

	AI_GotoNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Judith_Pavillon_C_06_04"); //Ach! Nie jestes..... Nie wlasciwy czlowiek!

	Info_ClearChoices	(Info_Mod_Judith_Pavillon);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Judith_Pavillon2 (C_INFO)
{
	npc		= Mod_7680_OUT_Judith_REL;
	nr		= 1;
	condition	= Info_Mod_Judith_Pavillon2_Condition;
	information	= Info_Mod_Judith_Pavillon2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Judith_Pavillon2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Judith_Pavillon))
	&& (Mod_JudithNacht == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Judith_Pavillon2_Info()
{
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon2_06_00"); //Kiedy spotkamy sie ponownie?
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon2_15_01"); //Kiedykolwiek chcesz.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon2_06_02"); //Ten sam czas jutro?
	AI_Output(hero, self, "Info_Mod_Judith_Pavillon2_15_03"); //Wyraznie. Ale moze nie jestem na czas.
	AI_Output(self, hero, "Info_Mod_Judith_Pavillon2_06_04"); //To zawsze mówisz. I zawsze jestes na czas. Do zobaczenia jutro!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RUPRECHT");
	
	Spine_OverallSaveSetInt("JudithSex", 1);
	CheckSexAchievement();
};

INSTANCE Info_Mod_Judith_Pickpocket (C_INFO)
{
	npc		= Mod_7680_OUT_Judith_REL;
	nr		= 1;
	condition	= Info_Mod_Judith_Pickpocket_Condition;
	information	= Info_Mod_Judith_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Judith_Pickpocket_Condition()
{
	C_Beklauen	(47, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Judith_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Judith_Pickpocket);

	Info_AddChoice	(Info_Mod_Judith_Pickpocket, DIALOG_BACK, Info_Mod_Judith_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Judith_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Judith_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Judith_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Judith_Pickpocket);
};

FUNC VOID Info_Mod_Judith_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Judith_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Judith_Pickpocket);

		Info_AddChoice	(Info_Mod_Judith_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Judith_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Judith_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Judith_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Judith_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Judith_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Judith_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Judith_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Judith_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Judith_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Judith_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Judith_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Judith_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Judith_EXIT (C_INFO)
{
	npc		= Mod_7680_OUT_Judith_REL;
	nr		= 1;
	condition	= Info_Mod_Judith_EXIT_Condition;
	information	= Info_Mod_Judith_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Judith_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Judith_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
