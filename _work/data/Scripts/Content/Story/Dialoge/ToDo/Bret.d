INSTANCE Info_Mod_Bret_Hi (C_INFO)
{
	npc		= Mod_7414_JG_Bret_NW;
	nr		= 1;
	condition	= Info_Mod_Bret_Hi_Condition;
	information	= Info_Mod_Bret_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Bret_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Jäger_Dabei == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bret_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bret_Hi_08_00"); //Jesli chcesz cos od nas, przejdz do Dragomiru.
};

INSTANCE Info_Mod_Bret_PreJaeger (C_INFO)
{
	npc		= Mod_7414_JG_Bret_NW;
	nr		= 1;
	condition	= Info_Mod_Bret_PreJaeger_Condition;
	information	= Info_Mod_Bret_PreJaeger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wlasciwie, bede. Chce jednak wiedziec cos o Tobie.";
};

FUNC INT Info_Mod_Bret_PreJaeger_Condition()
{
	if (Jäger_Dabei == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bret_PreJaeger_Info()
{
	AI_Output(hero, self, "Info_Mod_Bret_PreJaeger_15_00"); //Wlasciwie, bede. Chce jednak wiedziec cos o Tobie.
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_01"); //I co to jest?
	AI_Output(hero, self, "Info_Mod_Bret_PreJaeger_15_02"); //Jak sie tu dostales?
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_03"); //Glupie pytanie. Spacer z miasta.
	AI_Output(hero, self, "Info_Mod_Bret_PreJaeger_15_04"); //Nie o to chodzi. Dlaczego jestes w tym obozie?
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_05"); //Kiedy mialem wystarczajaco duzo lat, Mistrz Bosper mnie nauczyl.
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_06"); //Tak jak mój brat i ojciec.
	AI_Output(hero, self, "Info_Mod_Bret_PreJaeger_15_07"); //Urodziles sie tutaj?
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_08"); //Tak, jak wiekszosc mysliwych na wyspie.
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_09"); //A po odbyciu praktyki wstapilem tutaj do Dragomira. Nie tak dawno temu.
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_10"); //Chcesz dolaczyc do mysliwych?
	AI_Output(hero, self, "Info_Mod_Bret_PreJaeger_15_11"); //Nie zdecydowalem sie jeszcze na to. Zobaczmy teraz.
};

INSTANCE Info_Mod_Bret_Ambient (C_INFO)
{
	npc		= Mod_7414_JG_Bret_NW;
	nr		= 1;
	condition	= Info_Mod_Bret_Ambient_Condition;
	information	= Info_Mod_Bret_Ambient_Info;
	permanent	= 0;
	important	= 0;
	description	= "Teraz zostalem przyjety przez mysliwych.";
};

FUNC INT Info_Mod_Bret_Ambient_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Jäger_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bret_Ambient_Info()
{
	AI_Output(hero, self, "Info_Mod_Bret_Ambient_15_00"); //Teraz zostalem przyjety przez mysliwych.
	AI_Output(self, hero, "Info_Mod_Bret_Ambient_08_01"); //(motywowany) Widze to. Witamy, witamy.
	AI_Output(hero, self, "Info_Mod_Bret_Ambient_15_02"); //Jakies wskazówki, które chcialbys mi przekazac w drodze?
	AI_Output(self, hero, "Info_Mod_Bret_Ambient_08_03"); //Idz do Dragomir, on bedzie mial misje dla Ciebie.
	AI_Output(hero, self, "Info_Mod_Bret_Ambient_15_04"); //Oh, tak.
};

INSTANCE Info_Mod_Bret_Pickpocket (C_INFO)
{
	npc		= Mod_7414_JG_Bret_NW;
	nr		= 1;
	condition	= Info_Mod_Bret_Pickpocket_Condition;
	information	= Info_Mod_Bret_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Bret_Pickpocket_Condition()
{
	C_Beklauen	(60, ItAt_Claw, 2);
};

FUNC VOID Info_Mod_Bret_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bret_Pickpocket);

	Info_AddChoice	(Info_Mod_Bret_Pickpocket, DIALOG_BACK, Info_Mod_Bret_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bret_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bret_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bret_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bret_Pickpocket);
};

FUNC VOID Info_Mod_Bret_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bret_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bret_Pickpocket);

		Info_AddChoice	(Info_Mod_Bret_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bret_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bret_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bret_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bret_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bret_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bret_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bret_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bret_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bret_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bret_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bret_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bret_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bret_EXIT (C_INFO)
{
	npc		= Mod_7414_JG_Bret_NW;
	nr		= 1;
	condition	= Info_Mod_Bret_EXIT_Condition;
	information	= Info_Mod_Bret_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bret_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bret_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
