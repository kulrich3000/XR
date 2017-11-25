INSTANCE Info_Mod_Drax_Hi (C_INFO)
{
	npc		= Mod_1121_BDT_Drax_MT;
	nr		= 1;
	condition	= Info_Mod_Drax_Hi_Condition;
	information	= Info_Mod_Drax_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie nauczyc o polowaniach?";
};

FUNC INT Info_Mod_Drax_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Drax_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Drax_Hi_15_00"); //Czy mozesz mnie nauczyc o polowaniach?

	if (Banditen_Dabei == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Drax_Hi_30_01"); //Moglem, ale Ty nie jestes jednym z nas.
	}
	else
	{
		if (Mod_Schwierigkeit != 4)
		{
			AI_Output(self, hero, "Info_Mod_Drax_Hi_30_02"); //Hmm, poniewaz jestes jednym z nas, ucze Cie o polowaniach i lucznictwie.

			Log_CreateTopic	(TOPIC_MOD_LEHRER_BANDITEN, LOG_NOTE);
			B_LogEntry	(TOPIC_MOD_LEHRER_BANDITEN, "Od Draxu moge nauczyc sie róznych talentów lowieckich i lucznictwa.");
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Drax_Hi_30_03"); //Hmm, poniewaz jestes jednym z nas, ucze Cie o polowaniach.

			Log_CreateTopic	(TOPIC_MOD_LEHRER_BANDITEN, LOG_NOTE);
			B_LogEntry	(TOPIC_MOD_LEHRER_BANDITEN, "Od Draxu moge nauczyc sie róznych talentów lowieckich.");
		};
	};
};

INSTANCE Info_Mod_Drax_Fokus (C_INFO)
{
	npc		= Mod_1121_BDT_Drax_MT;
	nr		= 1;
	condition	= Info_Mod_Drax_Fokus_Condition;
	information	= Info_Mod_Drax_Fokus_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak sie czujesz?";
};

FUNC INT Info_Mod_Drax_Fokus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ratford_Fokus))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drax_Fokus_Info()
{
	AI_Output(hero, self, "Info_Mod_Drax_Fokus_15_00"); //Jak sie czujesz?
	AI_Output(self, hero, "Info_Mod_Drax_Fokus_30_01"); //(walka o oddech) Nie wiem. Poczatkowo stwory przestraszyly mnie z gówno, ale jak nigdy wczesniej bawilem sie z nastepnymi polowaniami.
	AI_Output(hero, self, "Info_Mod_Drax_Fokus_15_02"); //Czy to jest cala reszta Warge?
	AI_Output(self, hero, "Info_Mod_Drax_Fokus_30_03"); //Nie widzialem zadnej ucieczki. Ale po co chcesz wiedziec?
	AI_Output(hero, self, "Info_Mod_Drax_Fokus_15_04"); //Jeden z nich ma cos, czego szukam.
	AI_Output(self, hero, "Info_Mod_Drax_Fokus_30_05"); //Niebieski lsniacy? Czy musi byc duzo warta, huh?
	AI_Output(hero, self, "Info_Mod_Drax_Fokus_15_06"); //Nie w zlocie.
	AI_Output(self, hero, "Info_Mod_Drax_Fokus_30_07"); //(wylaczony) No cóz, to....... Rozejrzyjmy sie dookola, jeden z nich nadal bedzie mial go z nim.

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1120_BDT_Ratford_MT, "START");
};

INSTANCE Info_Mod_Drax_Lernen_Bogen (C_INFO)
{
	npc		= Mod_1121_BDT_Drax_MT;
	nr		= 1;
	condition	= Info_Mod_Drax_Lernen_Bogen_Condition;
	information	= Info_Mod_Drax_Lernen_Bogen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie lucznictwa.";
};

FUNC INT Info_Mod_Drax_Lernen_Bogen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drax_Hi))
	&& (hero.hitchance[NPC_TALENT_BOW] < 60)
	&& (Banditen_Dabei == TRUE)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drax_Lernen_Bogen_Info()
{
	AI_Output(hero, self, "Info_Mod_Drax_Lernen_Bogen_15_00"); //Naucz mnie lucznictwa.

	Info_ClearChoices	(Info_Mod_Drax_Lernen_Bogen);
	
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, "Z powrotem.", Info_Mod_Drax_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Drax_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Drax_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Drax_Lernen_Bogen_BACK()
{
	Info_ClearChoices	(Info_Mod_Drax_Lernen_Bogen);
};

FUNC VOID Info_Mod_Drax_Lernen_Bogen_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_BOW, 5, 60);

	Info_ClearChoices	(Info_Mod_Drax_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, "Z powrotem.", Info_Mod_Drax_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Drax_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Drax_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Drax_Lernen_Bogen_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_BOW, 1, 60);

	Info_ClearChoices	(Info_Mod_Drax_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, "Z powrotem.", Info_Mod_Drax_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Drax_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Drax_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Drax_Lernen_Bogen_1);
};

INSTANCE Info_Mod_Drax_Jagdtalente (C_INFO)
{
	npc		= Mod_1121_BDT_Drax_MT;
	nr		= 1;
	condition	= Info_Mod_Drax_Jagdtalente_Condition;
	information	= Info_Mod_Drax_Jagdtalente_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czego mozesz mnie nauczyc?";
};

FUNC INT Info_Mod_Drax_Jagdtalente_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drax_Hi))
	&& (Banditen_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drax_Jagdtalente_Info()
{
	AI_Output(hero, self, "Info_Mod_Drax_Jagdtalente_15_00"); //Czego mozesz mnie nauczyc?

	if ((PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Claws] == FALSE)
	||(PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Fur] == FALSE)
	||(PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_ReptileSkin] == FALSE)
	||(PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Teeth] == FALSE))
	{
		AI_Output(self, hero, "Info_Mod_Drax_Jagdtalente_30_01"); //Zalezy od tego, co chcesz wiedziec.

		Info_AddChoice		(Info_Mod_Drax_Jagdtalente, DIALOG_BACK, Info_Mod_Drax_Jagdtalente_BACK);
		
		if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Teeth] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Drax_Jagdtalente, B_BuildLearnString ("rozdarte zeby",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)),  Info_Mod_Drax_Jagdtalente_Teeth);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Claws] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Drax_Jagdtalente, B_BuildLearnString ("pazury",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)),  Info_Mod_Drax_Jagdtalente_Claws);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Fur] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Drax_Jagdtalente, B_BuildLearnString ("skórka",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)),  Info_Mod_Drax_Jagdtalente_Fur);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_ReptileSkin] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Drax_Jagdtalente, B_BuildLearnString ("Skinowanie gadów",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_ReptileSkin)),  Info_Mod_Drax_Jagdtalente_ReptileSkin);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Drax_Jagdtalente_30_02"); //Nie moge cie nauczyc wiecej niz juz wiesz. Przepraszam za to.
	};
};

FUNC VOID Info_Mod_Drax_Jagdtalente_BACK()
{
	Info_ClearChoices	(Info_Mod_Drax_Jagdtalente);
};

FUNC VOID Info_Mod_Drax_Jagdtalente_Claws()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Claws))
	{
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Claws_30_00"); //Zwierzeta nie lubia oddawac pazurów. Musisz trafic dokladnie tam, gdzie idziesz nozem.
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Claws_30_01"); //Postawa dloni powinna byc lekko uwiklana. Z mocnym wstrzasem odciales pazur.
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Claws_30_02"); //Sprzet jest zawsze pozadanym srodkiem platniczym dla przedsiebiorcy.
	};

	Info_ClearChoices	(Info_Mod_Drax_Jagdtalente);
		
};

FUNC VOID Info_Mod_Drax_Jagdtalente_Teeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Teeth))
	{
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Teeth_30_00"); //Najprostsza rzecza, która mozna wziac od zwierzat jest ich zeby. Jezdzisz nozem dookola protezy w ustach.
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Teeth_30_01"); //Potem umiejetnie odciac go od czaszki zwierzecia.
	};

	Info_ClearChoices	(Info_Mod_Drax_Jagdtalente);
};

FUNC VOID Info_Mod_Drax_Jagdtalente_Fur()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Fur))
	{
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Fur_30_00"); //Najlepszym sposobem usuniecia siersci jest wykonanie glebokiego ciecia na tylnych nogach zwierzecia.
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_Fur_30_01"); //Dzieki temu zawsze mozna latwo sciagnac futro z przodu do tylu.
	};

	Info_ClearChoices	(Info_Mod_Drax_Jagdtalente);
};

FUNC VOID Info_Mod_Drax_Jagdtalente_ReptileSkin()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_ReptileSkin))
	{
		AI_Output			(self, hero, "Info_Mod_Drax_Jagdtalente_BFSting_30_00"); //Po przecieciu skóry po bokach, skóra sie rozprezy. Od teraz nie powinno sie miec problemu z skórowaniem jaszczurek.
	};

	Info_ClearChoices	(Info_Mod_Drax_Jagdtalente);
};

INSTANCE Info_Mod_Drax_Pickpocket (C_INFO)
{
	npc		= Mod_1121_BDT_Drax_MT;
	nr		= 1;
	condition	= Info_Mod_Drax_Pickpocket_Condition;
	information	= Info_Mod_Drax_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Drax_Pickpocket_Condition()
{
	C_Beklauen	(65, ItAt_WolfFur, 3);
};

FUNC VOID Info_Mod_Drax_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Drax_Pickpocket);

	Info_AddChoice	(Info_Mod_Drax_Pickpocket, DIALOG_BACK, Info_Mod_Drax_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Drax_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Drax_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Drax_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Drax_Pickpocket);
};

FUNC VOID Info_Mod_Drax_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Drax_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Drax_Pickpocket);

		Info_AddChoice	(Info_Mod_Drax_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Drax_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Drax_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Drax_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Drax_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Drax_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Drax_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Drax_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Drax_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Drax_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Drax_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Drax_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Drax_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Drax_EXIT (C_INFO)
{
	npc		= Mod_1121_BDT_Drax_MT;
	nr		= 1;
	condition	= Info_Mod_Drax_EXIT_Condition;
	information	= Info_Mod_Drax_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Drax_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Drax_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
