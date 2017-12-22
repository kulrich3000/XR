INSTANCE Info_Mod_Neoras_Hi (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_Hi_Condition;
	information	= Info_Mod_Neoras_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Neoras_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neoras_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Neoras_Hi_04_01"); //Jestem Neoraszem, mistrzem eliksirów.
};

INSTANCE Info_Mod_Neoras_Aufgabe (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_Aufgabe_Condition;
	information	= Info_Mod_Neoras_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge Ci pomóc?";
};

FUNC INT Info_Mod_Neoras_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Neoras_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Mitglied))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neoras_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Neoras_Aufgabe_15_00"); //Czy moge Ci pomóc?
	AI_Output(self, hero, "Info_Mod_Neoras_Aufgabe_04_01"); //Nie potrzebuje zadnej pomocy. Idz do innych magów, byc moze maja dla Ciebie cos do zrobienia.
};

INSTANCE Info_Mod_Neoras_HabTrank (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_HabTrank_Condition;
	information	= Info_Mod_Neoras_HabTrank_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla pana tutaj eliksir.";
};

FUNC INT Info_Mod_Neoras_HabTrank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Neoras_Aufgabe))
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_HabTrank))
	&& (Npc_HasItems(hero, NeorasTrankVonMilten) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neoras_HabTrank_Info()
{
	AI_Output(hero, self, "Info_Mod_Neoras_HabTrank_15_00"); //Mam dla Ciebie eliksir.

	B_GiveInvItems	(hero, self, NeorasTrankVonMilten, 1);

	AI_Output(self, hero, "Info_Mod_Neoras_HabTrank_04_01"); //Na ten eliksir dlugo czekalem. Gdzie otrzymasz?
	AI_Output(hero, self, "Info_Mod_Neoras_HabTrank_15_02"); //Pomagalem Miltenowi w jego produkcji.
	AI_Output(self, hero, "Info_Mod_Neoras_HabTrank_04_03"); //Udowodniles mi, ze jestes godzien zostac nowicjuszem. Wez to zloto jako nagrode.

	B_LogEntry_More	(TOPIC_MOD_FEUERMAGIER, TOPIC_MOD_NEORAS_TRANK, "Neoras uwaza, ze warto byc nowicjuszem.", "Przywiózlem eliksir do Neorasa.");
	B_SetTopicStatus	(TOPIC_MOd_NEORAS_TRANK, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Neoras_Mitgift (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_Mitgift_Condition;
	information	= Info_Mod_Neoras_Mitgift_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Neoras_Mitgift_Condition()
{
	if (hero.guild == GIL_VLK)
	&& (Mod_Gilde == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neoras_Mitgift_Info()
{
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_00"); //Jestes nowicjuszem, który przyniósl mi ten eliksir.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_01"); //Moge miec kolejne zadanie dla kogos z twoimi umiejetnosciami.
	AI_Output(hero, self, "Info_Mod_Neoras_Mitgift_15_02"); //Jestem uszy.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_03"); //Jak zapewne zauwazyliscie, produkujemy tu w klasztorze antidotum.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_04"); //Jest to konieczne, poniewaz jest tam duzo trujacych zwierzat i roslin.
	AI_Output(hero, self, "Info_Mod_Neoras_Mitgift_15_05"); //Tak, zapoznalem sie juz z nia.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_06"); //Dokladnie. Rozumiesz wiec jego cel, jak dotad bardzo dobrze.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_07"); //Ostatnio jednak w Khorini coraz wiecej osób umiera z powodu powaznych zatruc.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_08"); //Nie byly one jednak spowodowane przez zwierzeta czy rosliny, ale przez bron stworzona przez czlowieka.... Wiecej Miecze i strzalki.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_09"); //
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_10"); //Wydaje sie, ze w tym celu uzywaja szczególnie skoncentrowanych toksyn.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_11"); //Chcialbym teraz poprosic o butelke trucizny zwierzecej i roslinnej, aby zintensyfikowac badania w tej dziedzinie.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift_04_12"); //Najlepszym sposobem na to jest wizyta u alchemików lub zielarzy. Móglbys tam znalezc, gdybys mial szczescie.

	Log_CreateTopic	(TOPIC_MOD_NEORAS_MITGIFT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NEORAS_MITGIFT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NEORAS_MITGIFT, "Mam otrzymac Neorasa butelke trucizny zwierzecej i roslinnej do celów badawczych. Powiedzial mi, zebym rozejrzal sie za zielalistami i alchemikami.");
};

INSTANCE Info_Mod_Neoras_Mitgift2 (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_Mitgift2_Condition;
	information	= Info_Mod_Neoras_Mitgift2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto wiec butelka trucizny roslinnej i butelka trucizny zwierzecej.";
};

FUNC INT Info_Mod_Neoras_Mitgift2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Neoras_Mitgift))
	&& (Npc_HasItems(hero, ItPo_Tiergift) >= 1)
	&& (Npc_HasItems(hero, ItPo_Pflanzengift) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neoras_Mitgift2_Info()
{
	AI_Output(hero, self, "Info_Mod_Neoras_Mitgift2_15_00"); //Oto wiec butelka trucizny roslinnej i butelka trucizny zwierzecej.


	B_ShowGivenThings	("Podane trucizny na zwierzetach i roslinach");

	Npc_RemoveInvItems	(hero, ItPo_Tiergift, 1);
	Npc_RemoveInvItems	(hero, ItPo_Pflanzengift, 1);

	if (Npc_KnowsInfo(hero, Info_Mod_Constantino_Mitgift2))
	{
		AI_Output(hero, self, "Info_Mod_Neoras_Mitgift2_15_01"); //Z wyrazami uznania dla Constantino.
	};

	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift2_04_02"); //Ahh, doskonaly. To material wystarczajacy do moich badan. Zrealizowales swoja prace dobrze.
	AI_Output(self, hero, "Info_Mod_Neoras_Mitgift2_04_03"); //Tutaj wez troche zlota na swoje wydatki i odtrutki.

	CreateInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItPo_Gegengift, 3);

	B_ShowGivenThings	("200 zlota i 3 konserwowane antyoksydacyjne");

	B_GivePlayerXP	(350);

	B_SetTopicStatus	(TOPIC_MOD_NEORAS_MITGIFT, LOG_SUCCESS);
};

INSTANCE Info_Mod_Neoras_Lehrer (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_Lehrer_Condition;
	information	= Info_Mod_Neoras_Lehrer_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy moge sie z Toba uczyc?";
};

FUNC INT Info_Mod_Neoras_Lehrer_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Neoras_Hi))
	&& ((Mod_Gilde == 6)
	|| (Mod_Gilde == 7)
	|| (Mod_Gilde == 8))
	&& (Mod_IstLehrling == 1)
	{	
		return 1;
	};
};
FUNC VOID Info_Mod_Neoras_Lehrer_Info()
{
	AI_Output (hero, self, "Info_Mod_Neoras_Lehrer_15_00"); //Czy moge sie z Toba uczyc?
	
	if (Mod_Gilde == 6)
	|| (Mod_Gilde == 7)
	|| (Mod_Gilde == 8)
	{
		AI_Output (self, hero, "Info_Mod_Neoras_Lehrer_04_01"); //Pozwólcie sie na tajemnice alchemii.
		
		if (!Npc_KnowsInfo(hero, Info_Mod_Neoras_Lehrer))
		{
			Log_CreateTopic	(TOPIC_MOD_LEHRER_KLOSTER, LOG_NOTE);
			B_LogEntry	(TOPIC_MOD_LEHRER_KLOSTER, "Neory moga mnie nauczyc o alchemii.");
		};

		Info_ClearChoices 	(Info_Mod_Neoras_Lehrer);
		Info_AddChoice 		(Info_Mod_Neoras_Lehrer,DIALOG_BACK,Info_Mod_Neoras_Lehrer_BACK);
	
		if ( PLAYER_TALENT_ALCHEMY[POTION_Gegengift] == FALSE)
		{
			Info_AddChoice 		(Info_Mod_Neoras_Lehrer,B_BuildLearnString ("antidotum", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Gegengift)),Info_Mod_Neoras_Lehrer_Gegengift);
		};
	
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_01] == FALSE)
		&& (Mod_LehrlingBei != 1)
		{
			Info_AddChoice 		(Info_Mod_Neoras_Lehrer,B_BuildLearnString ("Istota uzdrawiania", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_01)),Info_Mod_Neoras_Lehrer_HEALTH_01);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_02] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Ekstrakt z ekstraktu leczniczego", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_02)), Info_Mod_Neoras_Lehrer_Health_02);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_03] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_02] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Eliksir uzdrawiania", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_03)), Info_Mod_Neoras_Lehrer_Health_03);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE)
		&& (Mod_LehrlingBei != 1)
		&& (Kapitel >= 4)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Eliksir zycia", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_Health)), Info_Mod_Neoras_Lehrer_Perm_Health);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == FALSE)
		&& (Mod_LehrlingBei != 1)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Mana Essence", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_01)), Info_Mod_Neoras_Lehrer_Mana_01);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("ekstrakt z maneny", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_02)), Info_Mod_Neoras_Lehrer_Mana_02);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Mana Elixir", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_03)), Info_Mod_Neoras_Lehrer_Mana_03);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE)
		&& (Kapitel >= 4)
		{
			Info_AddChoice	  (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Eliksir Ducha Swietego", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_Mana)), Info_Mod_Neoras_Lehrer_Perm_Mana);
		};                                                                                                                                                                            
		if (PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] == FALSE) 
		&& (Kapitel >= 4)
		{                                                                                                                                                                                     
			Info_AddChoice (Info_Mod_Neoras_Lehrer, B_BuildLearnString ("Skrobia Eliksir", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_STR)), Info_Mod_Neoras_Lehrer_PermSTR);               
		};
		if (PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] == FALSE)
		&& (Kapitel >= 4)
		{
			Info_AddChoice (Info_Mod_Neoras_Lehrer,B_BuildLearnString ("Eliksir umiejetnosci", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_DEX)), Info_Mod_Neoras_Lehrer_Perm_DEX);
		};
		
	};
};
FUNC VOID Info_Mod_Neoras_Lehrer_BACK()
{
	Info_ClearChoices 	(Info_Mod_Neoras_Lehrer);
};
FUNC VOID Info_Mod_Neoras_Lehrer_Gegengift()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Gegengift);
};
FUNC VOID Info_Mod_Neoras_Lehrer_HEALTH_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_01);
};
FUNC VOID Info_Mod_Neoras_Lehrer_HEALTH_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_02);
};
FUNC VOID Info_Mod_Neoras_Lehrer_Health_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_03);
};
FUNC VOID Info_Mod_Neoras_Lehrer_PermStr()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_STR);
};
FUNC VOID Info_Mod_Neoras_Lehrer_Perm_DEX()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_DEX);
};
FUNC VOID Info_Mod_Neoras_Lehrer_Perm_Health()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_Health);
};
FUNC VOID Info_Mod_Neoras_Lehrer_MANA_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_01);
};
FUNC VOID Info_Mod_Neoras_Lehrer_MANA_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_02);
};
FUNC VOID Info_Mod_Neoras_Lehrer_MANA_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_03);
};
FUNC VOID Info_Mod_Neoras_Lehrer_Perm_Mana()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_Mana);
};

INSTANCE Info_Mod_Neoras_Pickpocket (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_Pickpocket_Condition;
	information	= Info_Mod_Neoras_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Neoras_Pickpocket_Condition()
{
	C_Beklauen	(130, ItPo_Perm_Mana, 1);
};

FUNC VOID Info_Mod_Neoras_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);

	Info_AddChoice	(Info_Mod_Neoras_Pickpocket, DIALOG_BACK, Info_Mod_Neoras_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Neoras_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Neoras_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Neoras_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);
};

FUNC VOID Info_Mod_Neoras_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);

		Info_AddChoice	(Info_Mod_Neoras_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Neoras_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Neoras_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Neoras_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Neoras_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Neoras_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Neoras_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Neoras_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Neoras_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Neoras_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Neoras_EXIT (C_INFO)
{
	npc		= Mod_922_KDF_Neoras_NW;
	nr		= 1;
	condition	= Info_Mod_Neoras_EXIT_Condition;
	information	= Info_Mod_Neoras_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Neoras_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neoras_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
