INSTANCE Info_Mod_Vanas_Hi (C_INFO)
{
	npc		= Mod_1537_WKR_Vanas_NW;
	nr		= 1;
	condition	= Info_Mod_Vanas_Hi_Condition;
	information	= Info_Mod_Vanas_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witam, przywiozlem cie z Engardo.";
};

FUNC INT Info_Mod_Vanas_Hi_Condition()
{
	if (Mod_SLD_Engardo == 1)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 12)
	&& (Npc_HasItems(hero, ItMi_Joint) >= 12)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vanas_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Vanas_Hi_15_00"); //Witam, przywiozlem cie z Engardo.

	B_ShowGivenThings	("12 dodanych grudek rudy i 12 lodyg roslin bagiennych");

	Npc_RemoveInvItems	(hero, ItMi_Nugget, 12);
	Npc_RemoveInvItems	(hero, ItMi_Joint, 12);

	AI_Output(self, hero, "Info_Mod_Vanas_Hi_06_01"); //Ahh, doskonaly. Niedawno wyczerpalem swój zapas magicznej energii. To wygodne dla mnie.
	AI_Output(hero, self, "Info_Mod_Vanas_Hi_15_02"); //Dostales cos dla mnie?
	AI_Output(self, hero, "Info_Mod_Vanas_Hi_06_03"); //Oh, tak, platnosc.

	B_GiveInvItems	(self, hero, ItMi_VanasPaket, 1);

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Vanas_Hi_06_04"); //(nieco cichszy) Nie mam wszystkiego. W opakowaniu brakuje pieciu kawalków sera, rolki lodu i szesciu piwa.
	AI_Output(self, hero, "Info_Mod_Vanas_Hi_06_05"); //Ale dla kogos, kto jest utalentowany w sztuce kucia rudy, moge miec cos interesujacego dla Ciebie.

	Info_ClearChoices	(Info_Mod_Vanas_Hi);

	Info_AddChoice	(Info_Mod_Vanas_Hi, "To budzi moja ciekawosc. Co o tym chodzi?", Info_Mod_Vanas_Hi_B);
	Info_AddChoice	(Info_Mod_Vanas_Hi, "Brak zainteresowania. Oddaj mi czesc rudy i ziola bagiennego.", Info_Mod_Vanas_Hi_A);
};

FUNC VOID Info_Mod_Vanas_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Vanas_Hi_B_15_00"); //To budzi moja ciekawosc. Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Vanas_Hi_B_06_01"); //Mój kolega Everaldo, wojownik wodny, przelozyl swój plan tworzenia starej kultury. Idz do niego i powiedz mu, ze przychodzisz od mnie.
	
	Info_ClearChoices	(Info_Mod_Vanas_Hi);

	Mod_SLD_Engardo = 2;

	B_LogEntry	(TOPIC_MOD_SLD_ENGARDO, "Vanas nie posiadal wszystkich towarów. Wodny wojownik Everaldo ma dla mnie ciekawy plan.");
};

FUNC VOID Info_Mod_Vanas_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Vanas_Hi_A_15_00"); //Brak zainteresowania. Oddaj mi czesc rudy i ziola bagiennego.
	AI_Output(self, hero, "Info_Mod_Vanas_Hi_A_06_01"); //Zbyt zle. Brakuje Ci czegos. Tutaj masz cztery rudy rudy i po cztery bagna.

	B_ShowGivenThings	("4 bulki rudy i 4 lodygi chwastu zakonserwowanego chwastu");

	CreateInvItems	(hero, ItMi_Nugget, 4);
	CreateInvItems	(hero, ItMi_Joint, 4);
	
	Info_ClearChoices	(Info_Mod_Vanas_Hi);

	Mod_SLD_Engardo = 3;

	B_LogEntry	(TOPIC_MOD_SLD_ENGARDO, "Vanas nie posiadal wszystkich towarów. Odzyskalem i otrzymalem czesc ziól bagiennych i rudy.");
};

INSTANCE Info_Mod_Vanas_Pickpocket (C_INFO)
{
	npc		= Mod_1537_WKR_Vanas_NW;
	nr		= 1;
	condition	= Info_Mod_Vanas_Pickpocket_Condition;
	information	= Info_Mod_Vanas_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Vanas_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 22);
};

FUNC VOID Info_Mod_Vanas_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);

	Info_AddChoice	(Info_Mod_Vanas_Pickpocket, DIALOG_BACK, Info_Mod_Vanas_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Vanas_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Vanas_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Vanas_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);
};

FUNC VOID Info_Mod_Vanas_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);

		Info_AddChoice	(Info_Mod_Vanas_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Vanas_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Vanas_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Vanas_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Vanas_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Vanas_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Vanas_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Vanas_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Vanas_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Vanas_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Vanas_EXIT (C_INFO)
{
	npc		= Mod_1537_WKR_Vanas_NW;
	nr		= 1;
	condition	= Info_Mod_Vanas_EXIT_Condition;
	information	= Info_Mod_Vanas_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Vanas_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vanas_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
