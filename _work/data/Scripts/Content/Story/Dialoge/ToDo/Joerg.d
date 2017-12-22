INSTANCE Info_Mod_Joerg_Hi (C_INFO)
{
	npc		= Mod_1047_VLK_Joerg_NW;
	nr		= 1;
	condition	= Info_Mod_Joerg_Hi_Condition;
	information	= Info_Mod_Joerg_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Joerg_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Joerg_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Joerg_Hi_01_01"); //Jestem Joerg, asystentem Carla.
};

INSTANCE Info_Mod_Joerg_Wilfried (C_INFO)
{
	npc		= Mod_1047_VLK_Joerg_NW;
	nr		= 1;
	condition	= Info_Mod_Joerg_Wilfried_Condition;
	information	= Info_Mod_Joerg_Wilfried_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joerg_Wilfried_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_Wilfried))
	&& (Mod_WilfriedsQuest == 2)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joerg_Wilfried_Info()
{
	AI_Output(self, hero, "Info_Mod_Joerg_Wilfried_01_00"); //Czego chcesz?
	AI_Output(hero, self, "Info_Mod_Joerg_Wilfried_15_01"); //Pamietasz, ze kiedykolwiek miales zle doswiadczenia z Wilfriedem?
	AI_Output(self, hero, "Info_Mod_Joerg_Wilfried_01_02"); //Byc moze...... Ale czy moge panu ufac?

	if (Npc_HasItems(hero, ItMi_Gold) >= 10)
	{
		AI_Output(hero, self, "Info_Mod_Joerg_Wilfried_15_03"); //Oczywiscie.

		B_GiveInvItems	(hero, self, ItMi_Gold, 10);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Joerg_Wilfried_15_04"); //Plotka ma go kryminalista.
	};

	AI_Output(self, hero, "Info_Mod_Joerg_Wilfried_01_05"); //Ach, tak, to prawdziwy glos zaufania. Ale teraz na pierwsze pytanie: Tak, unikam Wilfrieda, poniewaz jego dzialalnosc wydaje mi sie nieco watpliwa.
	AI_Output(self, hero, "Info_Mod_Joerg_Wilfried_01_06"); //Nie moge to jednak naprawic w poszczególnych wydarzeniach, ale raczej ogólne wrazenie jest dla niego nieprawdziwe.
	AI_Output(hero, self, "Info_Mod_Joerg_Wilfried_15_07"); //Czy to wszystko, co mozesz mi powiedziec?
	AI_Output(self, hero, "Info_Mod_Joerg_Wilfried_01_08"); //Mysle, ze ma to zwiazek z jego towarem. Nigdy nie bylem zadowolony z produktów, przynajmniej nie w stosunku do ceny. To wszystko, co moge ci powiedziec.
	AI_Output(self, hero, "Info_Mod_Joerg_Wilfried_01_09"); //Ale chcialbym zobaczyc, co by sie stalo, gdyby Wilfried i jego sklep zostaly dokladniej zbadane......
	AI_Output(hero, self, "Info_Mod_Joerg_Wilfried_15_10"); //Zobaczymy jak....

	if (Npc_KnowsInfo(hero, Info_Mod_Nimius_Wilfried))
	{
		Mod_WilfriedsQuest = 3;

		B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "Znalazlem jeszcze dwie osoby, które sa przekonane, ze Wilfried niesprawiedliwie handluje. Wciaz jednak brakuje dowodów na to, co jest....");

		B_StartOtherRoutine	(Mod_544_NONE_Wilfried_NW, "HOEHLE");
		AI_Teleport	(Mod_544_NONE_Wilfried_NW, "TAVERNE");
	};
};

INSTANCE Info_Mod_Joerg_WilfriedTot (C_INFO)
{
	npc		= Mod_1047_VLK_Joerg_NW;
	nr		= 1;
	condition	= Info_Mod_Joerg_WilfriedTot_Condition;
	information	= Info_Mod_Joerg_WilfriedTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joerg_WilfriedTot_Condition()
{
	if (Mod_WilfriedsQuest == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joerg_WilfriedTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Joerg_WilfriedTot_01_00"); //Czy trzeba bylo zabic Wilfriela?
	AI_Output(hero, self, "Info_Mod_Joerg_WilfriedTot_15_01"); //Zaatakowal mnie.
	AI_Output(self, hero, "Info_Mod_Joerg_WilfriedTot_01_02"); //Wtedy przypuszczam, ze tak.
};

INSTANCE Info_Mod_Joerg_Flugblaetter (C_INFO)
{
	npc		= Mod_1047_VLK_Joerg_NW;
	nr		= 1;
	condition	= Info_Mod_Joerg_Flugblaetter_Condition;
	information	= Info_Mod_Joerg_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Joerg_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Joerg_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joerg_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Joerg_Flugblaetter_01_01"); //Dziekuje, dziekuje. Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Joerg_Flugblaetter_01_02"); //Ah tak. Moze zatrzymam sie przy Matteo' s.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Joerg_Pickpocket (C_INFO)
{
	npc		= Mod_1047_VLK_Joerg_NW;
	nr		= 1;
	condition	= Info_Mod_Joerg_Pickpocket_Condition;
	information	= Info_Mod_Joerg_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Joerg_Pickpocket_Condition()
{
	C_Beklauen	(10, ItMi_Gold, 14);
};

FUNC VOID Info_Mod_Joerg_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Joerg_Pickpocket);

	Info_AddChoice	(Info_Mod_Joerg_Pickpocket, DIALOG_BACK, Info_Mod_Joerg_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Joerg_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Joerg_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Joerg_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Joerg_Pickpocket);
};

FUNC VOID Info_Mod_Joerg_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Joerg_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Joerg_Pickpocket);

		Info_AddChoice	(Info_Mod_Joerg_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Joerg_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Joerg_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Joerg_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Joerg_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Joerg_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Joerg_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Joerg_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Joerg_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Joerg_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Joerg_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Joerg_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Joerg_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Joerg_EXIT (C_INFO)
{
	npc		= Mod_1047_VLK_Joerg_NW;
	nr		= 1;
	condition	= Info_Mod_Joerg_EXIT_Condition;
	information	= Info_Mod_Joerg_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Joerg_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Joerg_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
