INSTANCE Info_Mod_Farim_Hi (C_INFO)
{
	npc		= Mod_762_NONE_Farim_NW;
	nr		= 1;
	condition	= Info_Mod_Farim_Hi_Condition;
	information	= Info_Mod_Farim_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Farim_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Farim_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Farim_Hi_11_01"); //Jestem Farimem, rybakiem. Jesli chcesz kupic rybe, musisz udac sie do Halvor.
};

INSTANCE Info_Mod_Farim_Salzwasser (C_INFO)
{
	npc		= Mod_762_NONE_Farim_NW;
	nr		= 1;
	condition	= Info_Mod_Farim_Salzwasser_Condition;
	information	= Info_Mod_Farim_Salzwasser_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz slona wode?";
};

FUNC INT Info_Mod_Farim_Salzwasser_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Farim_Hi))
	&& (Mod_ConstantinoZauberwasser == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Farim_Salzwasser_Info()
{
	AI_Output(hero, self, "Info_Mod_Farim_Salzwasser_15_00"); //Masz slona wode?
	AI_Output(self, hero, "Info_Mod_Farim_Salzwasser_11_01"); //Do czego potrzebna jest slona woda?
	AI_Output(hero, self, "Info_Mod_Farim_Salzwasser_15_02"); //Konstantyn potrzebuje go na swoja magiczna wode.
	AI_Output(self, hero, "Info_Mod_Farim_Salzwasser_11_03"); //No cóz, w takim przypadku. Ile potrzebujesz?
	AI_Output(hero, self, "Info_Mod_Farim_Salzwasser_15_04"); //Dwie butelki.
	AI_Output(self, hero, "Info_Mod_Farim_Salzwasser_11_05"); //Tutaj masz dwie.

	B_GiveInvItems	(self, hero, ItMi_Salzwasser, 2);

	AI_Output(self, hero, "Info_Mod_Farim_Salzwasser_11_06"); //Teraz spiesz sie, nadszedl czas, aby Cardif otrzymal kolejna przesylke.
};

INSTANCE Info_Mod_Farim_HalvorHolFische (C_INFO)
{
	npc		= Mod_762_NONE_Farim_NW;
	nr		= 1;
	condition	= Info_Mod_Farim_HalvorHolFische_Condition;
	information	= Info_Mod_Farim_HalvorHolFische_Info;
	permanent	= 0;
	important	= 0;
	description	= "Halvor wyslal mnie.";
};

FUNC INT Info_Mod_Farim_HalvorHolFische_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Farim_Hi))
	&& (Mod_HalvorHolFischeQuest > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Farim_HalvorHolFische_Info()
{
	AI_Output(hero, self, "Info_Mod_Farim_HalvorHolFische_15_00"); //Halvor wyslal mnie. Jestem tu po to, aby odebrac rybe.
	AI_Output(self, hero, "Info_Mod_Farim_HalvorHolFische_11_01"); //Wiec znalazl innego chlopca? No cóz, nie obchodzi mnie to.
	AI_Output(self, hero, "Info_Mod_Farim_HalvorHolFische_11_02"); //Oto dziesiec ryb.

	CreateInvItems	(self, ItFo_Fish, 10);
	B_GiveInvItems	(self, hero, ItFo_Fish, 10);

	B_LogEntry	(TOPIC_MOD_HALVOR_HOLFISCHE, "Farim dal mi dziesiec ryb.");
};

INSTANCE Info_Mod_Farim_Paddel (C_INFO)
{
	npc		= Mod_762_NONE_Farim_NW;
	nr		= 1;
	condition	= Info_Mod_Farim_Paddel_Condition;
	information	= Info_Mod_Farim_Paddel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zostaly jakies padoki?";
};

FUNC INT Info_Mod_Farim_Paddel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Farim_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Skip_Francis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Farim_Paddel_Info()
{
	AI_Output(hero, self, "Info_Mod_Farim_Paddel_15_00"); //Zostaly jakies padoki?
	AI_Output(self, hero, "Info_Mod_Farim_Paddel_11_01"); //Nie. Potrzebuja nowych. Nie trwaja wiecznie w slonej wodzie.
	AI_Output(hero, self, "Info_Mod_Farim_Paddel_15_02"); //A gdzie je dostajesz?
	AI_Output(self, hero, "Info_Mod_Farim_Paddel_11_03"); //Stocznia sprzedaje czesc statków.
	AI_Output(hero, self, "Info_Mod_Farim_Paddel_15_04"); //Dzieki, czlowiek. Zawsze dobry polów!
	AI_Output(self, hero, "Info_Mod_Farim_Paddel_11_05"); //No cóz, to nie jest takie wielkie.

	B_LogEntry	(TOPIC_MOD_SKIP_PADDEL, "Farim dostaje swoje wioslo od Garvella, stoczniowca.");
};

INSTANCE Info_Mod_Farim_Flugblaetter (C_INFO)
{
	npc		= Mod_762_NONE_Farim_NW;
	nr		= 1;
	condition	= Info_Mod_Farim_Flugblaetter_Condition;
	information	= Info_Mod_Farim_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Farim_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Farim_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Farim_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Farim_Flugblaetter_11_01"); //Dziekuje, dziekuje. Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Farim_Flugblaetter_11_02"); //Ah tak. Moze zatrzymam sie przy Matteo' s.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Farim_Pickpocket (C_INFO)
{
	npc		= Mod_762_NONE_Farim_NW;
	nr		= 1;
	condition	= Info_Mod_Farim_Pickpocket_Condition;
	information	= Info_Mod_Farim_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Farim_Pickpocket_Condition()
{
	C_Beklauen	(20, ItFo_Fish, 3);
};

FUNC VOID Info_Mod_Farim_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Farim_Pickpocket);

	Info_AddChoice	(Info_Mod_Farim_Pickpocket, DIALOG_BACK, Info_Mod_Farim_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Farim_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Farim_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Farim_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Farim_Pickpocket);
};

FUNC VOID Info_Mod_Farim_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Farim_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Farim_Pickpocket);

		Info_AddChoice	(Info_Mod_Farim_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Farim_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Farim_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Farim_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Farim_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Farim_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Farim_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Farim_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Farim_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Farim_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Farim_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Farim_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Farim_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Farim_EXIT (C_INFO)
{
	npc		= Mod_762_NONE_Farim_NW;
	nr		= 1;
	condition	= Info_Mod_Farim_EXIT_Condition;
	information	= Info_Mod_Farim_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Farim_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Farim_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
