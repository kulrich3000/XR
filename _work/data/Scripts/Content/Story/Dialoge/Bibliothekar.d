INSTANCE Info_Mod_Bibliothekar_Hi (C_INFO)
{
	npc		= Mod_7278_OUT_Bibliothekar_REL;
	nr		= 1;
	condition	= Info_Mod_Bibliothekar_Hi_Condition;
	information	= Info_Mod_Bibliothekar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie masz ksiazki?";
};

FUNC INT Info_Mod_Bibliothekar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bibliothekar_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bibliothekar_Hi_15_00"); //Jakie masz ksiazki?
	AI_Output(self, hero, "Info_Mod_Bibliothekar_Hi_01_01"); //(Absent) Historia panstwa sadu, czesc 1, Historia panstwa sadu, czesc 2, Historia panstwa sadu, czesc 3, Historia panstwa trybunalu, czesc 3, Historia panstwa sadu, czesc 2.....
	AI_Output(hero, self, "Info_Mod_Bibliothekar_Hi_15_02"); //Widze, ekscytujace czytanie nocne.
	AI_Output(self, hero, "Info_Mod_Bibliothekar_Hi_01_03"); //Tak, tak, tak, tak, tak. 101 ziolowych receptur dla starszej matki, kt�ra ja pozyczyla? Po prawej, Regina.
	AI_Output(self, hero, "Info_Mod_Bibliothekar_Hi_01_04"); //Czy jest jeszcze cos, co moge dla Ciebie zrobic?
};

INSTANCE Info_Mod_Bibliothekar_Ausleihen (C_INFO)
{
	npc		= Mod_7278_OUT_Bibliothekar_REL;
	nr		= 1;
	condition	= Info_Mod_Bibliothekar_Ausleihen_Condition;
	information	= Info_Mod_Bibliothekar_Ausleihen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge wypozyczyc ksiazki?";
};

FUNC INT Info_Mod_Bibliothekar_Ausleihen_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bibliothekar_Ausleihen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bibliothekar_Ausleihen_15_00"); //Czy moge wypozyczyc ksiazki?
	AI_Output(self, hero, "Info_Mod_Bibliothekar_Ausleihen_01_01"); //Zdejmij mi rece!
};

INSTANCE Info_Mod_Bibliothekar_Buerger (C_INFO)
{
	npc		= Mod_7278_OUT_Bibliothekar_REL;
	nr		= 1;
	condition	= Info_Mod_Bibliothekar_Buerger_Condition;
	information	= Info_Mod_Bibliothekar_Buerger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz ksiazke o poczatkach khoraty?";
};

FUNC INT Info_Mod_Bibliothekar_Buerger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Buerger2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bibliothekar_Buerger_Info()
{
	AI_Output(hero, self, "Info_Mod_Bibliothekar_Buerger_15_00"); //Masz ksiazke o poczatkach khoraty?
	AI_Output(self, hero, "Info_Mod_Bibliothekar_Buerger_01_01"); //Tak, naprawde bardzo ladna pogoda na zewnatrz.....
	AI_Output(self, hero, "Info_Mod_Bibliothekar_Buerger_01_02"); //W jaki spos�b? Ktos pyta mnie o ksiazke?
	AI_Output(hero, self, "Info_Mod_Bibliothekar_Buerger_15_03"); //Tak, rzeczywiscie.
	AI_Output(self, hero, "Info_Mod_Bibliothekar_Buerger_01_04"); //Musze sie nad tym zastanowic.
	AI_Output(self, hero, "Info_Mod_Bibliothekar_Buerger_01_05"); //Powinnas byc w stanie z tym pracowac. Mam go dwukrotnie, wiec zachowaj spok�j.

	B_GiveInvItems	(self, hero, ItWr_KhorataGeschichte, 1);

	AI_Output(self, hero, "Info_Mod_Bibliothekar_Buerger_01_06"); //A jesli jestes zainteresowany, po prostu przyjdz!
	AI_Output(hero, self, "Info_Mod_Bibliothekar_Buerger_15_07"); //Bede o tym pamietac. Dzieki.
};

INSTANCE Info_Mod_Bibliothekar_Glorie (C_INFO)
{
	npc		= Mod_7278_OUT_Bibliothekar_REL;
	nr		= 1;
	condition	= Info_Mod_Bibliothekar_Glorie_Condition;
	information	= Info_Mod_Bibliothekar_Glorie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bibliothekar_Glorie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_Glorie))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bibliothekar_Glorie_Info()
{
	AI_Output(self, hero, "Info_Mod_Bibliothekar_Glorie_01_00"); //Gdzie to pieklo zrobilem, zostawiam te cholerna rzecz....
	AI_Output(self, hero, "Info_Mod_Bibliothekar_Glorie_01_01"); //Jestes tym samym? Prosze mi wybaczyc, spiesze sie.

	AI_GotoWP	(self, "REL_CITY_150");

	AI_PlayAni	(self, "T_PLUNDER");

	AI_GotoNpc	(self, hero);

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Bibliothekar_Glorie_01_02"); //Oto jestes, panie posle.

	B_GiveInvItems	(self, hero, ItWr_DiebDokumente, 1);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bibliothekar_Pickpocket (C_INFO)
{
	npc		= Mod_7278_OUT_Bibliothekar_REL;
	nr		= 1;
	condition	= Info_Mod_Bibliothekar_Pickpocket_Condition;
	information	= Info_Mod_Bibliothekar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Bibliothekar_Pickpocket_Condition()
{
	C_Beklauen	(99, ItMi_Gold, 40);
};

FUNC VOID Info_Mod_Bibliothekar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bibliothekar_Pickpocket);

	Info_AddChoice	(Info_Mod_Bibliothekar_Pickpocket, DIALOG_BACK, Info_Mod_Bibliothekar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bibliothekar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bibliothekar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bibliothekar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bibliothekar_Pickpocket);
};

FUNC VOID Info_Mod_Bibliothekar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bibliothekar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bibliothekar_Pickpocket);

		Info_AddChoice	(Info_Mod_Bibliothekar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bibliothekar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bibliothekar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bibliothekar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bibliothekar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bibliothekar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bibliothekar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bibliothekar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bibliothekar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bibliothekar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bibliothekar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bibliothekar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bibliothekar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bibliothekar_EXIT (C_INFO)
{
	npc		= Mod_7278_OUT_Bibliothekar_REL;
	nr		= 1;
	condition	= Info_Mod_Bibliothekar_EXIT_Condition;
	information	= Info_Mod_Bibliothekar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bibliothekar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bibliothekar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
