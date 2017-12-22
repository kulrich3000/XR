INSTANCE Info_Mod_Nimius_Hi (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_Hi_Condition;
	information	= Info_Mod_Nimius_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Nimius_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nimius_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Nimius_Hi_01_01"); //Jestem Nimiusem.
};

INSTANCE Info_Mod_Nimius_Wilfried (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_Wilfried_Condition;
	information	= Info_Mod_Nimius_Wilfried_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pamietasz....?";
};

FUNC INT Info_Mod_Nimius_Wilfried_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_Wilfried))
	&& (Mod_WilfriedsQuest == 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Nimius_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nimius_Wilfried_Info()
{
	AI_Output(hero, self, "Info_Mod_Nimius_Wilfried_15_00"); //Pamietasz, ze kiedykolwiek miales zle doswiadczenia z Wilfriedem?
	AI_Output(self, hero, "Info_Mod_Nimius_Wilfried_01_01"); //(zdziwiony) Tak! Ze po tak dlugim czasie ktos by mi o tym porozmawial...... Niemal zapomnialem.
	AI_Output(hero, self, "Info_Mod_Nimius_Wilfried_15_02"); //Co sie wtedy stalo?
	AI_Output(self, hero, "Info_Mod_Nimius_Wilfried_01_03"); //Oszukal mnie z mojego zlota obracajac mi tani pasek, który wygladal jak pas zabójczy Mora Sul, który zamówilem.
	AI_Output(hero, self, "Info_Mod_Nimius_Wilfried_15_04"); //Skad to wiesz? Masz dowody?
	AI_Output(self, hero, "Info_Mod_Nimius_Wilfried_01_05"); //Naja, immerhin stand dort in kleiner Schrift "Wykonane w Myrtanie" eingebrannt. Ich glaube nicht, dass dieser Schriftzug auf einem Original gestanden hätte.
	AI_Output(hero, self, "Info_Mod_Nimius_Wilfried_15_06"); //Dlaczego cos z tym nie zrobiles?
	AI_Output(self, hero, "Info_Mod_Nimius_Wilfried_01_07"); //Gdy rozmawialem z nim, Wilfried powiedzial mi ukrytymi gestami, ze jesli go zaciemnie, szkodliwy bylby dla mojego zdrowia.
	AI_Output(self, hero, "Info_Mod_Nimius_Wilfried_01_08"); //I w ten sposób pozwalam sie rozwijac. Nie wiem, czego oczekujesz od moich informacji, ale bardzo bym to docenil, gdybys mógl trzymac moje imie z dala od gry.
	AI_Output(hero, self, "Info_Mod_Nimius_Wilfried_15_09"); //Tak, widzialem to juz wczesniej. Dziekuje za zaufanie.

	if (Npc_KnowsInfo(hero, Info_Mod_Joerg_Wilfried))
	{
		Mod_WilfriedsQuest = 3;

		B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "Znalazlem jeszcze dwie osoby, które sa przekonane, ze Wilfried niesprawiedliwie handluje. Wciaz jednak brakuje dowodów na to, co jest....");

		B_StartOtherRoutine	(Mod_544_NONE_Wilfried_NW, "HOEHLE");
		AI_Teleport	(Mod_544_NONE_Wilfried_NW, "TAVERNE");
	};
};

INSTANCE Info_Mod_Nimius_WilfriedTot (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_WilfriedTot_Condition;
	information	= Info_Mod_Nimius_WilfriedTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nimius_WilfriedTot_Condition()
{
	if (Mod_WilfriedsQuest == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nimius_WilfriedTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Nimius_WilfriedTot_01_00"); //Martwy Wilfried? Wykonal pan dobra prace.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);
};

INSTANCE Info_Mod_Nimius_Sumpfkraut (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_Sumpfkraut_Condition;
	information	= Info_Mod_Nimius_Sumpfkraut_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wiesz skad moge otrzymac ziola bagienne?";
};

FUNC INT Info_Mod_Nimius_Sumpfkraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Moe_Sumpfkraut))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nimius_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nimius_Sumpfkraut_Info()
{
	AI_Output(hero, self, "Info_Mod_Nimius_Sumpfkraut_15_00"); //Wiesz skad moge otrzymac ziola bagienne?
	AI_Output(self, hero, "Info_Mod_Nimius_Sumpfkraut_01_01"); //Nie, nie obchodze sie z takimi rzeczami.
};

INSTANCE Info_Mod_Nimius_Flugblaetter (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_Flugblaetter_Condition;
	information	= Info_Mod_Nimius_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Nimius_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nimius_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nimius_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Nimius_Flugblaetter_01_01"); //Dziekuje, dziekuje. Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Nimius_Flugblaetter_01_02"); //Ah tak. Moze zatrzymam sie przy Matteo' s.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Nimius_Pickpocket (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_Pickpocket_Condition;
	information	= Info_Mod_Nimius_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Nimius_Pickpocket_Condition()
{
	C_Beklauen	(10, ItMi_Gold, 10);
};

FUNC VOID Info_Mod_Nimius_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);

	Info_AddChoice	(Info_Mod_Nimius_Pickpocket, DIALOG_BACK, Info_Mod_Nimius_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Nimius_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Nimius_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Nimius_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);
};

FUNC VOID Info_Mod_Nimius_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);

		Info_AddChoice	(Info_Mod_Nimius_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Nimius_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Nimius_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Nimius_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Nimius_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Nimius_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Nimius_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Nimius_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Nimius_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Nimius_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Nimius_EXIT (C_INFO)
{
	npc		= Mod_1054_VLK_Nimius_NW;
	nr		= 1;
	condition	= Info_Mod_Nimius_EXIT_Condition;
	information	= Info_Mod_Nimius_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nimius_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nimius_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
