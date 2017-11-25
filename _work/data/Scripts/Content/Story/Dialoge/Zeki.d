INSTANCE Info_Mod_Zeki_Hi (C_INFO)
{
	npc		= Mod_7102_ASS_Zeki_NW;
	nr		= 1;
	condition	= Info_Mod_Zeki_Hi_Condition;
	information	= Info_Mod_Zeki_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Zeki_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Zeki_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Zeki_Hi_05_00"); //Nazywam sie Zeki. Jestem z tym smutnym klubem oszustów.
	AI_Output(hero, self, "Info_Mod_Zeki_Hi_15_01"); //Dlaczego smutny klub?
	AI_Output(self, hero, "Info_Mod_Zeki_Hi_05_02"); //Rozejrzyj sie dookola. Czy czulbys sie komfortowo, gdybys nigdy nie mial szansy na zdobycie wyzszej rangi?
	AI_Output(hero, self, "Info_Mod_Zeki_Hi_15_03"); //To nie byloby wielkie. Czy to oznacza, ze nie mozesz wygrac w gildii?
	AI_Output(self, hero, "Info_Mod_Zeki_Hi_05_04"); //Nie, nie wszyscy. Niektórzy, podobnie jak ja, sa skazywani jako oszustowie na mniejsze uslugi, takie jak polowania.
	AI_Output(self, hero, "Info_Mod_Zeki_Hi_05_05"); //Czego od mnie oczekujesz?
};

INSTANCE Info_Mod_Zeki_Aufgabe (C_INFO)
{
	npc		= Mod_7102_ASS_Zeki_NW;
	nr		= 1;
	condition	= Info_Mod_Zeki_Aufgabe_Condition;
	information	= Info_Mod_Zeki_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcialbym dolaczyc do Ciebie.";
};

FUNC INT Info_Mod_Zeki_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zeki_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zeki_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Zeki_Aufgabe_15_00"); //Chcialbym dolaczyc do Ciebie. Shakir powiedzial mi, ze musze przekonac pana oszustów.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_01"); //I jeszcze jeden, który chce sie tu wjechac do chwytu i.....
	AI_Output(hero, self, "Info_Mod_Zeki_Aufgabe_15_02"); //Nie masz dla mnie pracy?
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_03"); //Ale mam jeszcze cos do zrobienia.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_04"); //Uwielbiam grac w lutnie, ale przypadkowo upuscilem moja stara lutnie na podloge tak, ze jest zlamana.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_05"); //Chce miec nowy, ale nie mam czasu, zeby pojechac do miasta i dostac go.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_06"); //Prosze udac sie do Thorben, jednego z rzemieslników.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_07"); //Powiedz mu, ze chcesz nowa lutnie.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_08"); //Jest tu 250 zlotych monet, wiec mozesz mu zaplacic.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_09"); //Kiedy beda panstwo mieli dzwieki, oddam panstwu swój glos.
	AI_Output(hero, self, "Info_Mod_Zeki_Aufgabe_15_10"); //Tak wiec od razu zobacze Thorben.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_11"); //Dziekuje bardzo, czekam na Ciebie tutaj.

	Log_CreateTopic	(TOPIC_MOD_ASS_ZEKI_LAUTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_ZEKI_LAUTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_ZEKI_LAUTE, "crook Zeki jest czlowiekiem bardzo pesymistycznym. Uwielbia grac w lutnie, aby utrzymac sie w dobrym nastroju, ale przypadkowo zlamal swój stary instrument i dopiero od tamtej pory moping. Poniewaz nie ma czasu, aby pozwolic mistrzowi rzemieslnikowi Thorbenowi zbudowac nowa lutnie, pójde do niego i przejme te prace. Kiedy to uczynilem, byc moze bedzie nagroda i glosowanie za to, ze lzy mnie podniosa.");
};

INSTANCE Info_Mod_Zeki_Laute (C_INFO)
{
	npc		= Mod_7102_ASS_Zeki_NW;
	nr		= 1;
	condition	= Info_Mod_Zeki_Laute_Condition;
	information	= Info_Mod_Zeki_Laute_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto Twoja nowa lutnia.";
};

FUNC INT Info_Mod_Zeki_Laute_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thorben_LauteFertig))
	&& (Npc_HasItems(hero, ItMi_Lute_Zeki) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zeki_Laute_Info()
{
	AI_Output(hero, self, "Info_Mod_Zeki_Laute_15_00"); //Oto Twoja nowa lutnia.

	B_GiveInvItems	(hero, self, ItMi_Lute_Zeki, 1);

	AI_Output(self, hero, "Info_Mod_Zeki_Laute_05_01"); //Dziekuje, teraz cos wam zawdzieczam.
	AI_Output(hero, self, "Info_Mod_Zeki_Laute_15_02"); //A co z glosem na nagranie?
	AI_Output(self, hero, "Info_Mod_Zeki_Laute_05_03"); //Tak, tak jak obiecalem, dostaniesz to.
	AI_Output(self, hero, "Info_Mod_Zeki_Laute_05_04"); //Jesli Shakir poprosi Cie o pomoc, powie mu tylko to, co najlepsze.
	AI_Output(hero, self, "Info_Mod_Zeki_Laute_15_05"); //Dzieki temu wlasnie chcialem uslyszec.
	AI_Output(self, hero, "Info_Mod_Zeki_Laute_05_06"); //Teraz bede mógl poswiecic sie calkowicie grze lutni.

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_ASS_ZEKI_LAUTE, "Przynioslem Zeki swoja nowa lutnie i bardzo sie z tego cieszyl. Teraz mam glos na nagranie i teraz moge poswiecic sie wiekszej ilosci spraw.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_ZEKI_LAUTE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Zeki_Pickpocket (C_INFO)
{
	npc		= Mod_7102_ASS_Zeki_NW;
	nr		= 1;
	condition	= Info_Mod_Zeki_Pickpocket_Condition;
	information	= Info_Mod_Zeki_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Zeki_Pickpocket_Condition()
{
	C_Beklauen	(58, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Zeki_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);

	Info_AddChoice	(Info_Mod_Zeki_Pickpocket, DIALOG_BACK, Info_Mod_Zeki_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Zeki_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Zeki_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Zeki_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);
};

FUNC VOID Info_Mod_Zeki_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);

		Info_AddChoice	(Info_Mod_Zeki_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Zeki_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Zeki_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Zeki_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Zeki_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Zeki_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Zeki_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Zeki_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Zeki_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Zeki_EXIT (C_INFO)
{
	npc		= Mod_7102_ASS_Zeki_NW;
	nr		= 1;
	condition	= Info_Mod_Zeki_EXIT_Condition;
	information	= Info_Mod_Zeki_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Zeki_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Zeki_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
