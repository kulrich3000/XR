INSTANCE Info_Mod_Margarethe_Hi (C_INFO)
{
	npc		= Mod_7365_OUT_Margarethe_REL;
	nr		= 1;
	condition	= Info_Mod_Margarethe_Hi_Condition;
	information	= Info_Mod_Margarethe_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie wygladasz na szczesliwy.";
};

FUNC INT Info_Mod_Margarethe_Hi_Condition()
{
	if (Kapitel >= 2) {
		return 1;
	};
};

FUNC VOID Info_Mod_Margarethe_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_15_00"); //Nie wygladasz na szczesliwy.
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_17_01"); //Zabrali ja! Zamkniety! Lancuch! (sobbing)
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_15_02"); //Wez to teraz latwo.
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_17_03"); //(oddech gleboko) Anna..... ona jest moja siostra..... Wiele bylo plotek, ze jest czarownica.... Poswiecenie Beliara.
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_17_04"); //Zawsze uderza w zielarzy! Ktos musial ja potepic....
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_17_05"); //Bylem z nia, kiedy przyszli. (sobbing)

	Info_ClearChoices	(Info_Mod_Margarethe_Hi);

	Info_AddChoice	(Info_Mod_Margarethe_Hi, "Czy wiesz, kto potepil Anne?", Info_Mod_Margarethe_Hi_B);
	Info_AddChoice	(Info_Mod_Margarethe_Hi, "Kto przyszedl?", Info_Mod_Margarethe_Hi_A);
};

FUNC VOID Info_Mod_Margarethe_Hi_C()
{
	Info_ClearChoices	(Info_Mod_Margarethe_Hi);

	Info_AddChoice	(Info_Mod_Margarethe_Hi, "Anna nie zostanie zabrana bez powodu.", Info_Mod_Margarethe_Hi_E);
	Info_AddChoice	(Info_Mod_Margarethe_Hi, "Co mozemy zrobic?", Info_Mod_Margarethe_Hi_D);
};

FUNC VOID Info_Mod_Margarethe_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_E_15_00"); //Anna nie zostanie zabrana bez powodu. Bede uwazac, aby nie naruszac prawa.
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_E_17_01"); //Jestes tak glupi jak inni! Udajcie sie ode mnie!
	
	Info_ClearChoices	(Info_Mod_Margarethe_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Margarethe_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_D_15_00"); //Co mozemy zrobic?
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_D_17_01"); //Powiedz o tym Ulrichowi. To Anna i mój brat.... mieszka w odleglosci kilku bloków.
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_D_17_02"); //Ja, nie wiem, co jeszcze robic..... Prawdopodobnie jest teraz torturowana, pani Anna, musimy cos z tym zrobic!
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_D_15_03"); //Bedziemy miec racje.
	
	Log_CreateTopic	(TOPIC_MOD_KHORATA_HEXENWAHN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_HEXENWAHN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_HEXENWAHN, "Siostra Anna Margaret zostala nazwana czarownica przez mieszkanców Khoraty i z tego powodu zostala skonfiskowana. Margarethe poprosila mnie, abym opowiedziala o tym swojemu bratu Ulrichowi, który mieszka w poblizu Anny, i znalazla sposób na udzielenie jej pomocy.");

	Info_ClearChoices	(Info_Mod_Margarethe_Hi);

	Mod_AnnaQuest = 3;
};

FUNC VOID Info_Mod_Margarethe_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_B_15_00"); //Czy wiesz, kto potepil Anne?
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_B_17_01"); //Nie, nie wiem. Gorzkie: Niemal kazdemu prostolinijnemu czlowiekowi trudno byloby uwierzyc w bajki czarownic.

	Mod_AnnaQuest += 1;
	
	if (Mod_AnnaQuest == 1)
	{
		Info_ClearChoices	(Info_Mod_Margarethe_Hi);

		Info_AddChoice	(Info_Mod_Margarethe_Hi, "Kto przyszedl?", Info_Mod_Margarethe_Hi_A);
	}
	else
	{
		Info_Mod_Margarethe_Hi_C();
	};
};

FUNC VOID Info_Mod_Margarethe_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_A_15_00"); //Kto przyszedl?
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_A_17_01"); //Synowie suk! a potem zostala wywieziona do wiezienia. Próbowalem pomóc.....

	Mod_AnnaQuest += 1;
	
	if (Mod_AnnaQuest == 1)
	{
		Info_ClearChoices	(Info_Mod_Margarethe_Hi);

		Info_AddChoice	(Info_Mod_Margarethe_Hi, "Czy wiesz, kto potepil Anne?", Info_Mod_Margarethe_Hi_B);
	}
	else
	{
		Info_Mod_Margarethe_Hi_C();
	};
};

INSTANCE Info_Mod_Margarethe_AnnaBefreit (C_INFO)
{
	npc		= Mod_7365_OUT_Margarethe_REL;
	nr		= 1;
	condition	= Info_Mod_Margarethe_AnnaBefreit_Condition;
	information	= Info_Mod_Margarethe_AnnaBefreit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Margarethe_AnnaBefreit_Condition()
{
	if (Mod_AnnaQuest == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Margarethe_AnnaBefreit_Info()
{
	AI_Output(self, hero, "Info_Mod_Margarethe_AnnaBefreit_17_00"); //Rozpowszechnia sie plotka o miescie! Czy naprawde zabiles ich wszystkich?
	AI_Output(hero, self, "Info_Mod_Margarethe_AnnaBefreit_15_01"); //Tak.
	AI_Output(self, hero, "Info_Mod_Margarethe_AnnaBefreit_17_02"); //Oh Adanos, wciaz mamy straszne rzeczy do zrobienia!
};

INSTANCE Info_Mod_Margarethe_UlrichKO (C_INFO)
{
	npc		= Mod_7365_OUT_Margarethe_REL;
	nr		= 1;
	condition	= Info_Mod_Margarethe_UlrichKO_Condition;
	information	= Info_Mod_Margarethe_UlrichKO_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Margarethe_UlrichKO_Condition()
{
	if (Mod_AnnaQuest == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Margarethe_UlrichKO_Info()
{
	AI_Output(self, hero, "Info_Mod_Margarethe_UlrichKO_17_00"); //Rozpowszechnia sie plotka o miescie! Ulrich naprawde chcial ich wszystkich zabic?
	AI_Output(hero, self, "Info_Mod_Margarethe_UlrichKO_15_01"); //Tak.
	AI_Output(self, hero, "Info_Mod_Margarethe_UlrichKO_17_02"); //Nie moge Cie obwiniac za Twoja decyzje, ale ja jej nie akceptuje.
};

INSTANCE Info_Mod_Margarethe_Freudenspender (C_INFO)
{
	npc		= Mod_7365_OUT_Margarethe_REL;
	nr		= 1;
	condition	= Info_Mod_Margarethe_Freudenspender_Condition;
	information	= Info_Mod_Margarethe_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Chcesz kupic mi jakies przysmaki?";
};                       

FUNC INT Info_Mod_Margarethe_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Margarethe_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Margarethe_Freudenspender_15_00"); //Chcesz kupic mi jakies przysmaki?
	AI_Output(self, hero, "Info_Mod_Margarethe_Freudenspender_17_01"); //Moja rada to zniszczyc. Nie robi nic dobrego.
};

INSTANCE Info_Mod_Margarethe_Pickpocket (C_INFO)
{
	npc		= Mod_7365_OUT_Margarethe_REL;
	nr		= 1;
	condition	= Info_Mod_Margarethe_Pickpocket_Condition;
	information	= Info_Mod_Margarethe_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90_Female;
};

FUNC INT Info_Mod_Margarethe_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Margarethe_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);

	Info_AddChoice	(Info_Mod_Margarethe_Pickpocket, DIALOG_BACK, Info_Mod_Margarethe_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Margarethe_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Margarethe_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Margarethe_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);
};

FUNC VOID Info_Mod_Margarethe_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);

		Info_AddChoice	(Info_Mod_Margarethe_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Margarethe_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Margarethe_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Margarethe_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Margarethe_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Margarethe_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Margarethe_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Margarethe_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Margarethe_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Margarethe_EXIT (C_INFO)
{
	npc		= Mod_7365_OUT_Margarethe_REL;
	nr		= 1;
	condition	= Info_Mod_Margarethe_EXIT_Condition;
	information	= Info_Mod_Margarethe_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Margarethe_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Margarethe_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
