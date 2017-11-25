INSTANCE Info_Mod_Wedge_Hi (C_INFO)
{
	npc		= Mod_1297_SLD_Wedge_REL;
	nr		= 1;
	condition	= Info_Mod_Wedge_Hi_Condition;
	information	= Info_Mod_Wedge_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wedge_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wedge_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_00"); //Spójrzmy na to, nowe oblicze. Ale poczekaj.... przed upadkiem zapory, czy nie widzialem cie w nowym obozie?
	AI_Output(hero, self, "Info_Mod_Wedge_Hi_15_01"); //Tak, to prawda. Wyglada na to, ze ma pan dobra pamiec.
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_02"); //No cóz, nie szkodzi to, ze nie chce sie skonczyc jako cialo bagienne.
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_03"); //Poniewaz najlepszym sposobem, aby sie nim stac jest zagubienie sie w moczarze.
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_04"); //To trwa wiecej niz tylko ciche podeszwy, aby nie skonczyly sie jak tusze na pierwszym nalocie.
	AI_Output(hero, self, "Info_Mod_Wedge_Hi_15_05"); //No cóz, gdy przychodzi do tego, ze z pewnoscia trzeba umiec wziac nogi w reke.... miekkie podeszwy do tylu i do przodu.
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_06"); //Ale jeden nie musi wykluczac drugiego.
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_07"); //Kiedy juz nauczysz sie, jak dobrze dzialac, mozesz byc prawie tak spokojny podczas biegania, jak gdybys wykradal sie.
	AI_Output(hero, self, "Info_Mod_Wedge_Hi_15_08"); //Dzwieki przydatne dla mnie.
	AI_Output(self, hero, "Info_Mod_Wedge_Hi_05_09"); //Tak, to nie jest wada. Ci, którzy opanuja ciche podeszwy, zyja lepiej.... i dluzej.
};

INSTANCE Info_Mod_Wedge_Lehrer (C_INFO)
{
	npc		= Mod_1297_SLD_Wedge_REL;
	nr		= 1;
	condition	= Info_Mod_Wedge_Lehrer_Condition;
	information	= Info_Mod_Wedge_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz nauczyc mnie chodzic cicho?";
};

FUNC INT Info_Mod_Wedge_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wedge_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wedge_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Wedge_Lehrer_15_00"); //Czy mozesz nauczyc mnie chodzic cicho?
	AI_Output(self, hero, "Info_Mod_Wedge_Lehrer_05_01"); //No cóz, nie wiem.... Czy mozna nawet wymazac sie racjonalnie?
	AI_Output(self, hero, "Info_Mod_Wedge_Lehrer_05_02"); //Nie zmarnuje cennego czasu z trampolina, która ma nogi golema.

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Wedge_Lehrer_05_03"); //Mówienie o drogocennosci i czasie.... Jesli jestes naprawde powazny, mozesz poluzowac do 300 monet.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Wedge_Lehrer_05_04"); //Mówienie o drogocennosci i czasie.... Jesli jestes naprawde powazny, mozesz poluzowac 1800 monet.
	};
};

INSTANCE Info_Mod_Wedge_Lernen (C_INFO)
{
	npc		= Mod_1297_SLD_Wedge_REL;
	nr		= 1;
	condition	= Info_Mod_Wedge_Lernen_Condition;
	information	= Info_Mod_Wedge_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "";
};

FUNC INT Info_Mod_Wedge_Lernen_Condition()
{
	if (Mod_Schwierigkeit != 4)
	{
		Info_Mod_Wedge_Lernen.description = "Cichy bieg (15 MP, 300 zl, wymaga pelzania)";
	}
	else
	{
		Info_Mod_Wedge_Lernen.description = "Cichy bieg (1800 zl, wymaga pelzania)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Wedge_Lehrer))
	&& (LeisenLaufen_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wedge_Lernen_Info()
{
	if (Mod_Schwierigkeit != 4)
	&& (hero.lp < 15)
	{
		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_00"); //Zbierz niezbedne doswiadczenie, Greenbill.
	}
	else if ((Mod_Schwierigkeit != 4)
	&& (Npc_HasItems(hero, ItMi_Gold) < 300))
	|| ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) < 1800))
	{
		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_01"); //I zloto? Nie ma bowiem mowy o smierci....
	}
	else if (Npc_GetTalentSkill(hero, NPC_TALENT_SNEAK) == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_02"); //Poczatkujacy, ucza sie jak dosc dobrze przeslizgiwac sie. Za pomoca swoich kroków zagluszales kazdy troll.
	}
	else
	{
		if (Mod_Schwierigkeit != 4)
		{
			hero.lp -= 15;

			B_GiveInvItems	(hero, self, ItMi_Gold, 300);
		}
		else
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 1800);
		};

		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_03"); //Godny czlowieka chce nauczyc sie, jak spokojnie i szybko postawic noge.
		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_04"); //Musisz sie upewnic, ze delikatnie nakladasz piete i równomiernie zwijasz stope.
		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_05"); //Miekkie buty równiez nie sa wada. Prosze pozwolic mi pokazac.

		AI_PlayAni	(self, "T_PLUNDER");

		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_06"); //Wiec teraz nie powinienes szumic podczas biegania.
		AI_Output(self, hero, "Info_Mod_Wedge_Lernen_05_07"); //Baw sie z nowymi umiejetnosciami.

		LeisenLaufen_Perk = TRUE;
	};
};

INSTANCE Info_Mod_Wedge_Pickpocket (C_INFO)
{
	npc		= Mod_1297_SLD_Wedge_REL;
	nr		= 1;
	condition	= Info_Mod_Wedge_Pickpocket_Condition;
	information	= Info_Mod_Wedge_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Wedge_Pickpocket_Condition()
{
	C_Beklauen	(74, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Wedge_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);

	Info_AddChoice	(Info_Mod_Wedge_Pickpocket, DIALOG_BACK, Info_Mod_Wedge_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wedge_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wedge_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wedge_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);
};

FUNC VOID Info_Mod_Wedge_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);

		Info_AddChoice	(Info_Mod_Wedge_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wedge_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wedge_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wedge_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wedge_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wedge_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wedge_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wedge_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wedge_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wedge_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wedge_EXIT (C_INFO)
{
	npc		= Mod_1297_SLD_Wedge_REL;
	nr		= 1;
	condition	= Info_Mod_Wedge_EXIT_Condition;
	information	= Info_Mod_Wedge_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wedge_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wedge_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
