INSTANCE Info_Mod_Karim_Hi (C_INFO)
{
	npc		= Mod_7125_ASS_Karim_NW;
	nr		= 1;
	condition	= Info_Mod_Karim_Hi_Condition;
	information	= Info_Mod_Karim_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Karim_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Training4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karim_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Karim_Hi_13_00"); //Och, tam jestescie.
	AI_Output(hero, self, "Info_Mod_Karim_Hi_15_01"); //Bylem z Sinbadem. Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Karim_Hi_13_02"); //Czy slyszales kiedys o kubkach na krew?
	AI_Output(hero, self, "Info_Mod_Karim_Hi_15_03"); //Juz raz dostalem go na Amir. Od pozyczkodawcy w Khorinis. On nie zyje.
	AI_Output(self, hero, "Info_Mod_Karim_Hi_13_04"); //Oczywiscie w przeciwnym razie puchar nie mialby zadnej wartosci. Aby kielichy staly sie skuteczne, wlasciciel musi umrzec.
	AI_Output(hero, self, "Info_Mod_Karim_Hi_15_05"); //Ile kielichów jest?
	AI_Output(self, hero, "Info_Mod_Karim_Hi_13_06"); //To jest trzy. Wedlug naszych informacji, jeden z nich nalezy do sedziów w Khorinis. Tego wlasnie chce wielka Rada.
	AI_Output(hero, self, "Info_Mod_Karim_Hi_15_07"); //Wtedy zamorduje sedziego i naucze pucharu.
	AI_Output(self, hero, "Info_Mod_Karim_Hi_13_08"); //Inteligentny facet. Jesli sie uda, dostaniesz miejsce z kandydatami,
	AI_Output(hero, self, "Info_Mod_Karim_Hi_15_09"); //Wtedy chce spojrzec....

	Log_CreateTopic	(TOPIC_MOD_ASS_BLUTKELCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_BLUTKELCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_BLUTKELCH, "Mam zajac drugie miejsce w radzie. Pobierz kubek krwi. Sedzia w Khorinis prawdopodobnie go ma. On musi umrzec. Nie powinien powodowac mieszania. Odpowiednim srodkiem zaradczym dla zabójcy bylaby trucizna. Gdzies tam byl alchemik....");
};

INSTANCE Info_Mod_Karim_Lehrer (C_INFO)
{
	npc		= Mod_7125_ASS_Karim_NW;
	nr		= 1;
	condition	= Info_Mod_Karim_Lehrer_Condition;
	information	= Info_Mod_Karim_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie jest Twoje imie?";
};

FUNC INT Info_Mod_Karim_Lehrer_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Karim_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Karim_Lehrer_15_00"); //Jakie jest Twoje imie?
	AI_Output(self, hero, "Info_Mod_Karim_Lehrer_13_01"); //Nazywaja mnie Karimem. Chcesz czegos ode mnie?
	AI_Output(hero, self, "Info_Mod_Karim_Lehrer_15_02"); //Dostales cos?
	AI_Output(self, hero, "Info_Mod_Karim_Lehrer_13_03"); //Cóz, móglbym wam cos nauczyc.
	AI_Output(hero, self, "Info_Mod_Karim_Lehrer_15_04"); //Uh-huh. Co dostales?
	AI_Output(self, hero, "Info_Mod_Karim_Lehrer_13_05"); //Potrafie nauczyc cie, jak wymykac sie lub zabijac kogos niezauwazalnie z tylu.
};

INSTANCE Info_Mod_Karim_Lernen_Schleichen (C_INFO)
{
	npc		= Mod_7125_ASS_Karim_NW;
	nr		= 1;
	condition	= Info_Mod_Karim_Lernen_Schleichen_Condition;
	information	= Info_Mod_Karim_Lernen_Schleichen_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("Skradanie siê", B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, 1));
};

FUNC INT Info_Mod_Karim_Lernen_Schleichen_Condition()
{
	Info_Mod_Cavalorn_Lernen_Schleichen.description = B_BuildLearnString("Skradanie siê", B_GetLearnCostTalent(hero, NPC_TALENT_SNEAK, 1));

	if (Npc_KnowsInfo(hero, Info_Mod_Karim_Lehrer))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karim_Lernen_Schleichen_Info()
{
	AI_Output(hero, self, "Info_Mod_Karim_Lernen_Schleichen_15_00"); //Naucz mnie skradac sie.

	if (B_TeachThiefTalent (self, hero, NPC_TALENT_SNEAK))
	{
		AI_Output(self, hero, "Info_Mod_Karim_Lernen_Schleichen_13_01"); //Miekkie podeszwy daja Ci wieksza szanse na zblizenie sie do przeciwników, bez ich zauwazania.
	};
};

INSTANCE Info_Mod_Karim_Lernen_Meucheln (C_INFO)
{
	npc		= Mod_7125_ASS_Karim_NW;
	nr		= 1;
	condition	= Info_Mod_Karim_Lernen_Meucheln_Condition;
	information	= Info_Mod_Karim_Lernen_Meucheln_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("zamachy", B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, 1));
};

FUNC INT Info_Mod_Karim_Lernen_Meucheln_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Karim_Lernen_Meucheln.description = "Oszukac. Koszt: 1000 zloty";
	}
	else
	{
		Info_Mod_Karim_Lernen_Meucheln.description = "Oszukac. Koszt: 10 MP";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Karim_Lehrer))
	&& (Delirium_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Karim_Lernen_Meucheln_Info()
{
	AI_Output(hero, self, "Info_Mod_Karim_Lernen_Meucheln_15_00"); //Naucz mnie jak zabijac.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 10))
	{
		AI_Output(self, hero, "Info_Mod_Karim_Lernen_Meucheln_08_01"); //To naprawde dobrze. Mozesz pozbyc sie takiej osoby bez zauwazania kogokolwiek.
		AI_Output(self, hero, "Info_Mod_Karim_Lernen_Meucheln_08_02"); //Powinienes jednak do tego celu uzyc sztyletu. Dlugi miecz moze zostac zauwazony przez kogos w poblizu.
		AI_Output(self, hero, "Info_Mod_Karim_Lernen_Meucheln_08_03"); //Kiedy juz wyposazyles sztylet, idziesz za swoja ofiare i postepujesz tak, jakbys chcial sie nia zajac.
		AI_Output(self, hero, "Info_Mod_Karim_Lernen_Meucheln_08_04"); //Reszta z nich pójdzie sama.

		Delirium_Perk = TRUE;

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 1000);
		}
		else
		{
			hero.lp -= 10;
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Karim_Lernen_Meucheln_08_05"); //Wróc do domu, gdy bedziesz gotowy.
	};
};

INSTANCE Info_Mod_Karim_Pickpocket (C_INFO)
{
	npc		= Mod_7125_ASS_Karim_NW;
	nr		= 1;
	condition	= Info_Mod_Karim_Pickpocket_Condition;
	information	= Info_Mod_Karim_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Karim_Pickpocket_Condition()
{
	C_Beklauen	(85, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Karim_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Karim_Pickpocket);

	Info_AddChoice	(Info_Mod_Karim_Pickpocket, DIALOG_BACK, Info_Mod_Karim_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Karim_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Karim_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Karim_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Karim_Pickpocket);
};

FUNC VOID Info_Mod_Karim_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Karim_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Karim_Pickpocket);

		Info_AddChoice	(Info_Mod_Karim_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Karim_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Karim_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Karim_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Karim_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Karim_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Karim_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Karim_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Karim_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Karim_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Karim_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Karim_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Karim_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Karim_EXIT (C_INFO)
{
	npc		= Mod_7125_ASS_Karim_NW;
	nr		= 1;
	condition	= Info_Mod_Karim_EXIT_Condition;
	information	= Info_Mod_Karim_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Karim_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Karim_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
