INSTANCE Info_Mod_Heidrek_Hi (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_Hi_Condition;
	information	= Info_Mod_Heidrek_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wyglada na to, ze masz wiele do zrobienia.";
};

FUNC INT Info_Mod_Heidrek_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Heidrek_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Heidrek_Hi_15_00"); //Wyglada na to, ze masz wiele do zrobienia.
	AI_Output(self, hero, "Info_Mod_Heidrek_Hi_04_01"); //W obozie nie brakuje pracy. Ale to równiez dlatego, ze nikt nie robi nic oprócz mnie i Bernda.
	AI_Output(hero, self, "Info_Mod_Heidrek_Hi_15_02"); //A co Pana zdaniem jest tego powodem?
	AI_Output(self, hero, "Info_Mod_Heidrek_Hi_04_03"); //Modernizacja kopalni nie jest praca nocna w niedziele. Jezeli chcemy tu wydobywac rude, musimy cos z tym zrobic.
	AI_Output(self, hero, "Info_Mod_Heidrek_Hi_04_04"); //Wszyscy jednak boja sie potworów w kopalni.
	AI_Output(hero, self, "Info_Mod_Heidrek_Hi_15_05"); //Nie?
	AI_Output(self, hero, "Info_Mod_Heidrek_Hi_04_06"); //Nie, dlaczego mieliby dac sie zabic jak kazdy inny potwór.
	AI_Output(hero, self, "Info_Mod_Heidrek_Hi_15_07"); //Dlaczego wiec nie pójdziesz do kopalni?
	AI_Output(self, hero, "Info_Mod_Heidrek_Hi_04_08"); //W przeciwienstwie do wiekszosci z panstwa tutaj obecnych, oprócz sily miesni mam jeszcze jeden argument: potrafie kuzc!
	AI_Output(self, hero, "Info_Mod_Heidrek_Hi_04_09"); //Gdybym mial zginac w mojej kopalni, byloby to zbyt duza strata dla obozu i nie moge na to odpowiedziec.
	AI_Output(hero, self, "Info_Mod_Heidrek_Hi_15_10"); //(ironiczne) Ah, rozumiem, rozumiem.....
};

INSTANCE Info_Mod_Heidrek_InGilde (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_InGilde_Condition;
	information	= Info_Mod_Heidrek_InGilde_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy móglbys nauczyc mnie sztuki kowalstwa?";
};

FUNC INT Info_Mod_Heidrek_InGilde_Condition()
{
	if (KG_Dabei == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Heidrek_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heidrek_InGilde_Info()
{
	AI_Output(hero, self, "Info_Mod_Heidrek_InGilde_15_00"); //Czy móglbys nauczyc mnie sztuki kowalstwa?
	AI_Output(self, hero, "Info_Mod_Heidrek_InGilde_04_01"); //Powinienem wiedziec, ze kolejny jest zbyt leniwy, by zajac sie kopalnia.
	AI_Output(self, hero, "Info_Mod_Heidrek_InGilde_04_02"); //Nie sa to warunki wstepne, zgodnie z którymi bym pana zabral. Tak czy owak nie uzylibyscie swojej wiedzy, wiec zostawcie mnie samemu.
	AI_Output(hero, self, "Info_Mod_Heidrek_InGilde_15_03"); //Co to jest z....? Och, zapomnij.
};

INSTANCE Info_Mod_Heidrek_Trollholz (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_Trollholz_Condition;
	information	= Info_Mod_Heidrek_Trollholz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tu trollwood.";
};

FUNC INT Info_Mod_Heidrek_Trollholz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_Trollholz))
	&& (Npc_HasItems(hero, ItMi_Trollholz) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heidrek_Trollholz_Info()
{
	AI_Output(hero, self, "Info_Mod_Heidrek_Trollholz_15_00"); //Mam tu trollwood. Chce, zebys z tego klubu stworzyl dla Granmar.

	B_GiveInvItems	(hero, self, ItMi_Trollholz, 1);

	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz_04_01"); //Wszystko w porzadku, ale potrzebuje co najmniej dwóch kolejnych bryl rudy.
	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz_04_02"); //Zapytajcie Cathrana, powinien miec jeszcze cos wiecej, moze poda ci to.

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "Heidrek potrzebuje do klubu jeszcze dwóch kawalków rudy. Powinienem skontaktowac sie z Cathranem.....");
};

INSTANCE Info_Mod_Heidrek_Trollholz2 (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_Trollholz2_Condition;
	information	= Info_Mod_Heidrek_Trollholz2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem dwa kawalki rudy.";
};

FUNC INT Info_Mod_Heidrek_Trollholz2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heidrek_Trollholz))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heidrek_Trollholz2_Info()
{
	AI_Output(hero, self, "Info_Mod_Heidrek_Trollholz2_15_00"); //Znalazlem dwa kawalki rudy.

	B_GiveInvItems	(hero, self, ItMi_Nugget, 2);

	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz2_04_01"); //Bardzo dobrze, teraz wszystko, co musze zrobic, to umiescic to na klubie.
	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz2_04_02"); //Wróc jutro, a do tego czasu powinna sie skonczyc.

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "Teraz Heidrek przykrywa klub ruda. Jutro sie skonczy.");

	Mod_KG_Trollholz_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Heidrek_Trollholz3 (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_Trollholz3_Condition;
	information	= Info_Mod_Heidrek_Trollholz3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy klub jest gotowy?";
};

FUNC INT Info_Mod_Heidrek_Trollholz3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heidrek_Trollholz2))
	&& (Wld_GetDay() > Mod_KG_Trollholz_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heidrek_Trollholz3_Info()
{
	AI_Output(hero, self, "Info_Mod_Heidrek_Trollholz3_15_00"); //Czy klub jest gotowy?
	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz3_04_01"); //Tak, i musze przyznac, ze to cos na pewno idzie dobrze.

	B_GiveInvItems	(self, hero, ItMw_GranmarKeule, 1);

	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz3_04_02"); //Granmar równiez powiedzial, ze trzeba.
	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz3_04_03"); //Na szczescie kawalek drewna byl wystarczajaco duzy dla dwóch klubów, nawet jesli Twój klub byl troche mniejszy.
	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz3_04_04"); //Tutaj je masz.

	B_GiveInvItems	(self, hero, ItMw_ErzKeule, 1);

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "Dostalem klub Granmar, a nawet mniejszy dla mnie.");
};

INSTANCE Info_Mod_Heidrek_Pickpocket (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_Pickpocket_Condition;
	information	= Info_Mod_Heidrek_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Heidrek_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Heidrek_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);

	Info_AddChoice	(Info_Mod_Heidrek_Pickpocket, DIALOG_BACK, Info_Mod_Heidrek_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Heidrek_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Heidrek_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Heidrek_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);
};

FUNC VOID Info_Mod_Heidrek_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);

		Info_AddChoice	(Info_Mod_Heidrek_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Heidrek_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Heidrek_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Heidrek_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Heidrek_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Heidrek_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Heidrek_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Heidrek_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Heidrek_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Heidrek_EXIT (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_EXIT_Condition;
	information	= Info_Mod_Heidrek_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Heidrek_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Heidrek_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
