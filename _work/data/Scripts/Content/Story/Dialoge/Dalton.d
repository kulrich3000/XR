INSTANCE Info_Mod_Dalton_Hi (C_INFO)
{
	npc		= Mod_7515_OUT_Dalton_REL;
	nr		= 1;
	condition	= Info_Mod_Dalton_Hi_Condition;
	information	= Info_Mod_Dalton_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dalton_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dalton_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_04_00"); //Hej, Ty!
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_04_01"); //Wygladasz dla mnie jak hartowany w bitwie rycerz. Czy mozesz mi pomóc?
	AI_Output(hero, self, "Info_Mod_Dalton_Hi_15_02"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_04_03"); //Martwi mnie mój syn Ivan. Teraz dorasta, ale obawia sie zwierzat jak slabnace.
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_04_04"); //Chcialbym, aby poszedl moim sladem za drwalem.
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_04_05"); //Jestem za stary, zeby sie polowac, ale mozna go zabrac i zabrac strach, nie mógles?

	Info_ClearChoices	(Info_Mod_Dalton_Hi);

	Info_AddChoice	(Info_Mod_Dalton_Hi, "Brak zainteresowania.", Info_Mod_Dalton_Hi_B);
	Info_AddChoice	(Info_Mod_Dalton_Hi, "Co to dla mnie jest?", Info_Mod_Dalton_Hi_A);
};

FUNC VOID Info_Mod_Dalton_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Dalton_Hi_B_15_00"); //Brak zainteresowania.

	Info_ClearChoices	(Info_Mod_Dalton_Hi);
};

FUNC VOID Info_Mod_Dalton_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Dalton_Hi_A_15_00"); //Co to dla mnie jest?
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_A_04_01"); //Oczywiscie dziekuje panstwu.
	AI_Output(hero, self, "Info_Mod_Dalton_Hi_A_15_02"); //Spróbuje wtedy nakarmic sie wasza wdziecznoscia.
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_A_04_03"); //Haha. Dobrze, ze dostaje sie chleb i jablka.
	AI_Output(hero, self, "Info_Mod_Dalton_Hi_A_15_04"); //Jezeli musze.
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_A_04_05"); //Trzymaj sie w lewo przy bramie Khoraty, az do momentu, gdy spotkasz pole, na którym niedawno scialem drzewa.
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_A_04_06"); //Rozprzestrzenili sie tam lazniarki Graslandscavenger. To byloby dobre cwiczenie dla mojego syna.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_HASENFUSS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_HASENFUSS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_HASENFUSS, "Z synem Daltona Ivanem, niedaleko od bramy miasta Khorata, bede polowal na Graslandscavenger.");

	Mod_REL_Hasenfuss = 1;

	Info_ClearChoices	(Info_Mod_Dalton_Hi);

	Wld_InsertNpc	(Scavenger_Demon_Dalton_01,	"FP_ROAM_SCAVENGER_DALTON_01");
	Wld_InsertNpc	(Scavenger_Demon_Dalton_02,	"FP_ROAM_SCAVENGER_DALTON_02");
	Wld_InsertNpc	(Scavenger_Demon_Dalton_03,	"FP_ROAM_SCAVENGER_DALTON_03");
	Wld_InsertNpc	(Scavenger_Demon_Dalton_04,	"FP_ROAM_SCAVENGER_DALTON_04");
};

INSTANCE Info_Mod_Dalton_Hasenfuss (C_INFO)
{
	npc		= Mod_7515_OUT_Dalton_REL;
	nr		= 1;
	condition	= Info_Mod_Dalton_Hasenfuss_Condition;
	information	= Info_Mod_Dalton_Hasenfuss_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dalton_Hasenfuss_Condition()
{
	if (Mod_REL_Hasenfuss == 7)
	|| (Mod_REL_Hasenfuss == 8)
	|| (Mod_REL_Hasenfuss == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dalton_Hasenfuss_Info()
{
	if (Mod_REL_Hasenfuss == 7)
	{
		AI_Output(self, hero, "Info_Mod_Dalton_Hasenfuss_04_00"); //Co Pan zrobil? Slyszalem, ze Ivan mieszka teraz na farmie Erharda i nie chce juz z nim rozmawiac. To wszystko, co robisz!
	}
	else if (Mod_REL_Hasenfuss == 8)
	{
		AI_Output(self, hero, "Info_Mod_Dalton_Hasenfuss_04_01"); //Ivan nadal chwalil sie swoja podróza. Dzieki za wasza pomoc, jestem w waszym dlugu.

		CreateInvItems	(hero, ItFo_Bread, 1);
		CreateInVItems	(hero, ItFo_Apple, 2);

		B_ShowGivenThings	("Chleb i 2 konserwowane jablka");

		B_GivePlayerXP	(100);

		B_SetTopicStatus	(TOPIC_MOD_KHORATA_HASENFUSS, LOG_SUCCESS);

		CurrentNQ += 1;

		Mod_REL_QuestCounter += 1;

		B_StartOtherRoutine	(Mod_7514_OUT_Ivan_REL, "START");
	}
	else if (Mod_REL_Hasenfuss == 9)
	{
		AI_Output(self, hero, "Info_Mod_Dalton_Hasenfuss_04_02"); //Dziekuje wam za wasze wysilki na rzecz zblizenia Ivana do polowan, nawet jesli nie wydawalo sie, by przyniosly one cokolwiek do zniesienia.

		CreateInvItems	(hero, ItFo_Bread, 1);
		CreateInVItems	(hero, ItFo_Apple, 2);

		B_ShowGivenThings	("Chleb i 2 konserwowane jablka");

		B_GivePlayerXP	(50);

		B_SetTopicStatus	(TOPIC_MOD_KHORATA_HASENFUSS, LOG_SUCCESS);

		CurrentNQ += 1;

		Mod_REL_QuestCounter += 1;
	};
};

INSTANCE Info_Mod_Dalton_Freudenspender (C_INFO)
{
	npc		= Mod_7515_OUT_Dalton_REL;
	nr		= 1;
	condition	= Info_Mod_Dalton_Freudenspender_Condition;
	information	= Info_Mod_Dalton_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Ciesze sie, ze mam cie tutaj....";
};                       

FUNC INT Info_Mod_Dalton_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Dalton_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Dalton_Freudenspender_15_00"); //Ciesze sie, ze mam cie tutaj....
	AI_Output(self, hero, "Info_Mod_Dalton_Freudenspender_04_01"); //Niech cos sie rozrosnie! Zawsze mozna go uzywac.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender += 1;
};

INSTANCE Info_Mod_Dalton_Pickpocket (C_INFO)
{
	npc		= Mod_7515_OUT_Dalton_REL;
	nr		= 1;
	condition	= Info_Mod_Dalton_Pickpocket_Condition;
	information	= Info_Mod_Dalton_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Dalton_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Dalton_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);

	Info_AddChoice	(Info_Mod_Dalton_Pickpocket, DIALOG_BACK, Info_Mod_Dalton_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Dalton_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Dalton_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Dalton_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);
};

FUNC VOID Info_Mod_Dalton_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);

		Info_AddChoice	(Info_Mod_Dalton_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Dalton_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Dalton_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Dalton_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Dalton_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Dalton_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Dalton_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Dalton_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Dalton_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Dalton_EXIT (C_INFO)
{
	npc		= Mod_7515_OUT_Dalton_REL;
	nr		= 1;
	condition	= Info_Mod_Dalton_EXIT_Condition;
	information	= Info_Mod_Dalton_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dalton_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dalton_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
