INSTANCE Info_Mod_Regis_Hi (C_INFO)
{
	npc		= Mod_530_NONE_Regis_NW;
	nr		= 1;
	condition	= Info_Mod_Regis_Hi_Condition;
	information	= Info_Mod_Regis_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Regis_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Regis_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Regis_Hi_03_01"); //Jestem Regis. Najlepiej wiem, co sie dzieje w miescie.
};

INSTANCE Info_Mod_Regis_Paladine (C_INFO)
{
	npc		= Mod_530_NONE_Regis_NW;
	nr		= 1;
	condition	= Info_Mod_Regis_Paladine_Condition;
	information	= Info_Mod_Regis_Paladine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co wiesz o Paladynach?";
};

FUNC INT Info_Mod_Regis_Paladine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Regis_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Regis_Paladine_Info()
{
	AI_Output(hero, self, "Info_Mod_Regis_Paladine_15_00"); //Co wiesz o Paladynach?
	AI_Output(self, hero, "Info_Mod_Regis_Paladine_03_01"); //Poczatkowo przybyli do Khorinis tylko sporadycznie, aby wrzucic wieznia do kolonii karnej lub negocjowac z skazanymi.
	AI_Output(self, hero, "Info_Mod_Regis_Paladine_03_02"); //Ale po upadku zapory kr�l wyslal tu wojska, aby uchronic miasto.
	AI_Output(self, hero, "Info_Mod_Regis_Paladine_03_03"); //Od tego czasu przejmuja kontrole nad miastem. Obawiaja sie, ze miasto przejma najemnicy z Minentala.
	AI_Output(self, hero, "Info_Mod_Regis_Paladine_03_04"); //M�wi sie, ze przyw�dca najemnik�w mial w owym czasie problem z kr�lem i dlatego jest przeciw paladynom i pr�buje ich wyeliminowac ze swoimi najemnikami, aby poplynac z paladyna statkiem do Myrtany i zemscic sie na kr�la.
};

INSTANCE Info_Mod_Regis_MehrPaladine (C_INFO)
{
	npc		= Mod_530_NONE_Regis_NW;
	nr		= 1;
	condition	= Info_Mod_Regis_MehrPaladine_Condition;
	information	= Info_Mod_Regis_MehrPaladine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz opowiedziec mi wiecej o Paladynach?";
};

FUNC INT Info_Mod_Regis_MehrPaladine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Regis_Paladine))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Regis_MehrPaladine_Info()
{
	AI_Output(hero, self, "Info_Mod_Regis_MehrPaladine_15_00"); //Czy mozesz opowiedziec mi wiecej o Paladynach?
	AI_Output(self, hero, "Info_Mod_Regis_MehrPaladine_03_01"); //Powiedzialem wam wszystko, co wiem.
	AI_Output(self, hero, "Info_Mod_Regis_MehrPaladine_03_02"); //Jesli chcesz wiedziec wiecej, powinienes porozmawiac z paladynami w G�rnej dzielnicy.
};

INSTANCE Info_Mod_Regis_Flugblaetter (C_INFO)
{
	npc		= Mod_530_NONE_Regis_NW;
	nr		= 1;
	condition	= Info_Mod_Regis_Flugblaetter_Condition;
	information	= Info_Mod_Regis_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Regis_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 10)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Regis_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Regis_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");
	
	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Regis_Flugblaetter_03_01"); //Dziekujemy za papier. mimo ze i tak caly dzien siedze w jego sklepie.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Regis_Pickpocket (C_INFO)
{
	npc		= Mod_530_NONE_Regis_NW;
	nr		= 1;
	condition	= Info_Mod_Regis_Pickpocket_Condition;
	information	= Info_Mod_Regis_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Regis_Pickpocket_Condition()
{
	C_Beklauen	(56, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Regis_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Regis_Pickpocket);

	Info_AddChoice	(Info_Mod_Regis_Pickpocket, DIALOG_BACK, Info_Mod_Regis_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Regis_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Regis_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Regis_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Regis_Pickpocket);
};

FUNC VOID Info_Mod_Regis_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Regis_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Regis_Pickpocket);

		Info_AddChoice	(Info_Mod_Regis_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Regis_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Regis_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Regis_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Regis_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Regis_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Regis_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Regis_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Regis_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Regis_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Regis_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Regis_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Regis_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Regis_EXIT (C_INFO)
{
	npc		= Mod_530_NONE_Regis_NW;
	nr		= 1;
	condition	= Info_Mod_Regis_EXIT_Condition;
	information	= Info_Mod_Regis_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Regis_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Regis_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
