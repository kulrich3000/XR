INSTANCE Info_Mod_Roman_Hi (C_INFO)
{
	npc		= Mod_7478_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_Hi_Condition;
	information	= Info_Mod_Roman_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to sie dzieje?";
};

FUNC INT Info_Mod_Roman_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Roman_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Roman_Hi_15_00"); //Jak to sie dzieje?
	AI_Output(self, hero, "Info_Mod_Roman_Hi_08_01"); //Nie wiesz, co sie dzieje, czy ty? Badzcie z dala od mnie! (kaszel)
};

INSTANCE Info_Mod_Roman_Endres (C_INFO)
{
	npc		= Mod_7478_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_Endres_Condition;
	information	= Info_Mod_Roman_Endres_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sadzisz o Endresach?";
};

FUNC INT Info_Mod_Roman_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Roman_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Roman_Endres_15_00"); //Co sadzisz o Endresach?
	AI_Output(self, hero, "Info_Mod_Roman_Endres_08_01"); //Mysle, ze jego ojciec byl czlowieczym psem.
	AI_Output(self, hero, "Info_Mod_Roman_Endres_08_02"); //A jego matka brudna mama.... (niewielkie pasowanie kaszlu)

	Info_ClearChoices	(Info_Mod_Roman_Endres);

	Info_AddChoice	(Info_Mod_Roman_Endres, "Koniec jest martwy.", Info_Mod_Roman_Endres_B);
	Info_AddChoice	(Info_Mod_Roman_Endres, "Dlaczego nie lubisz Endres?", Info_Mod_Roman_Endres_A);
};

FUNC VOID Info_Mod_Roman_Endres_C()
{
	AI_Output(self, hero, "Info_Mod_Roman_Endres_C_08_00"); //Zanim znowu odetchniecie, aby zadawac mi pytania, musze powrócic do pracy.
	AI_Output(self, hero, "Info_Mod_Roman_Endres_C_08_01"); //Nie musze placic za lenistwo.

	Info_ClearChoices	(Info_Mod_Roman_Endres);
};

FUNC VOID Info_Mod_Roman_Endres_B()
{
	AI_Output(hero, self, "Info_Mod_Roman_Endres_B_15_00"); //Endres ist tot.
	AI_Output(self, hero, "Info_Mod_Roman_Endres_B_08_01"); //Ja, ich weiß. Verdammt, aber das bringt uns nix. Uns wurde gesagt, das Schürfen geht weiter.	
	AI_Output(hero, self, "Info_Mod_Roman_Endres_B_15_02"); //Jemand übernimmt also die Leitung des Projekts?
	AI_Output(self, hero, "Info_Mod_Roman_Endres_B_08_03"); //Muss wohl. Hab' ich davon 'ne Ahnung? (hustet)

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Górnik Roman nie jest bardzo dobry w Endres. A kto odpowiada za projekt?");

	Mod_Roman_Endres_02 = 1;

	if (Mod_Roman_Endres_01 == 1)
	{
		Info_Mod_Roman_Endres_C();
	};
};

FUNC VOID Info_Mod_Roman_Endres_A()
{
	AI_Output(hero, self, "Info_Mod_Roman_Endres_A_15_00"); //Dlaczego nie lubisz Endres?
	AI_Output(self, hero, "Info_Mod_Roman_Endres_A_08_01"); //Pozwole sobie to panstwu wyjasnic. Gosc powiedzial, ze pracujemy dla placy glodowej, aby zebrac razem rude za cos.
	AI_Output(self, hero, "Info_Mod_Roman_Endres_A_08_02"); //A kiedy nie chcielismy tego zrobic, on po prostu idzie do Anselm i walczy z jego sprawa! (kaszel)
	AI_Output(self, hero, "Info_Mod_Roman_Endres_A_08_03"); //Wszyscy bezrobotni i s.... spiew Znalezieni przez niego pomocnicy musza teraz skrócic swoje zycie.
	AI_Output(self, hero, "Info_Mod_Roman_Endres_A_08_04"); //Praca uderza w pluca, dziecko, mówie ci.

	Mod_Roman_Endres_01 = 1;

	if (Mod_Roman_Endres_02 == 1)
	{
		Info_Mod_Roman_Endres_C();
	};
};

INSTANCE Info_Mod_Roman_Pickpocket (C_INFO)
{
	npc		= Mod_7478_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_Pickpocket_Condition;
	information	= Info_Mod_Roman_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Roman_Pickpocket_Condition()
{
	C_Beklauen	(51, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Roman_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Roman_Pickpocket);

	Info_AddChoice	(Info_Mod_Roman_Pickpocket, DIALOG_BACK, Info_Mod_Roman_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Roman_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Roman_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Roman_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Roman_Pickpocket);
};

FUNC VOID Info_Mod_Roman_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Roman_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Roman_Pickpocket);

		Info_AddChoice	(Info_Mod_Roman_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Roman_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Roman_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Roman_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Roman_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Roman_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Roman_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Roman_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Roman_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Roman_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Roman_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Roman_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Roman_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Roman_EXIT (C_INFO)
{
	npc		= Mod_7478_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_EXIT_Condition;
	information	= Info_Mod_Roman_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Roman_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Roman_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
