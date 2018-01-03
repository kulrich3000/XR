INSTANCE Info_Mod_Ramirez_Hi (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Hi_Condition;
	information	= Info_Mod_Ramirez_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ramirez_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ramirez_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ramirez_Hi_03_00"); //Co Pan tutaj robi?
};

INSTANCE Info_Mod_Ramirez_Dieb (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Dieb_Condition;
	information	= Info_Mod_Ramirez_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "(Pokaz znak zlodziejstwa)";
};

FUNC INT Info_Mod_Ramirez_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_Dieb_Info()
{
	AI_PlayAni (hero, "T_YES");

	AI_Output(self, hero, "Info_Mod_Ramirez_Dieb_03_00"); //Wiec jestes z nami.
	AI_Output(self, hero, "Info_Mod_Ramirez_Dieb_03_01"); //Potrafie nauczyc sie wybierac zamki.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Ramirez moze nauczyc mnie wybierac sluzy.");
};

INSTANCE Info_Mod_Ramirez_Cassia (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Cassia_Condition;
	information	= Info_Mod_Ramirez_Cassia_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego mi nie ufasz?";
};

FUNC INT Info_Mod_Ramirez_Cassia_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_WasNun_Ramirez))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Dieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_Cassia_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramirez_Cassia_15_00"); //Dlaczego mi nie ufasz?
	AI_Output(self, hero, "Info_Mod_Ramirez_Cassia_03_01"); //Wystarczy spojrzec i wyobrazic sobie, ze chcesz zlamac koszary.
	AI_Output(hero, self, "Info_Mod_Ramirez_Cassia_15_02"); //Czy moge sie w jakikolwiek sposób udowodnic?
	AI_Output(self, hero, "Info_Mod_Ramirez_Cassia_03_03"); //Móglbys na chwile podjac prace w Attyli, aby spotkac sie z najwiekszym sprawca problemów.
	AI_Output(hero, self, "Info_Mod_Ramirez_Cassia_15_04"); //Ale potem przychodzisz ze mna do koszar.
	AI_Output(self, hero, "Info_Mod_Ramirez_Cassia_03_05"); //Jesli uda ci sie zdjac gang na nabrzezu i przyniesc mi pierscionek od ich przywódcy, przyjde z wami.
	AI_Output(hero, self, "Info_Mod_Ramirez_Cassia_15_06"); //A gdzie sie zabieraja?
	AI_Output(self, hero, "Info_Mod_Ramirez_Cassia_03_07"); //Wszedzie trzeba ja znalezc jako pierwsza.

	Wld_InsertNpc	(Mod_1891_NONE_Bandenchef_NW,	"BIGFARM");
	Wld_InsertNpc	(Mod_1892_NONE_Bandenmitglied1_NW,	"BIGFARM");

	Log_CreateTopic	(TOPIC_MOD_RAMIREZ_BANDE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_RAMIREZ_BANDE, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_DIEB_ATTILA, TOPIC_MOD_RAMIREZ_BANDE, "Zeby Ramirez towarzyszyl mi do koszar, zgladze gang w dzielnicy portowej i przywieze mu pierscionek od jego przywódcy.", "Ramirez chce, abym zdjal gang w doku. Dowodem na to jest to, ze mam go zabrac z ringu od ich przywódcy.");
};

INSTANCE Info_Mod_Ramirez_Bandenchef (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Bandenchef_Condition;
	information	= Info_Mod_Ramirez_Bandenchef_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto pierscien od lidera gangu.";
};

FUNC INT Info_Mod_Ramirez_Bandenchef_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Cassia))
	&& (Npc_IsDead(Mod_1891_NONE_Bandenchef_NW))
	&& (Npc_HasItems(hero, ItRi_Bandenchef) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_Bandenchef_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramirez_Bandenchef_15_00"); //Oto pierscien od lidera gangu.

	B_GiveInvItems	(hero, self, ItRi_Bandenchef, 1);

	AI_Output(self, hero, "Info_Mod_Ramirez_Bandenchef_03_01"); //Tak naprawde nie sadzilabym, zebys to potrafil.
	AI_Output(self, hero, "Info_Mod_Ramirez_Bandenchef_03_02"); //Bawilem sie po prostu mysl, ze jestes juz martwy.
	AI_Output(hero, self, "Info_Mod_Ramirez_Bandenchef_15_03"); //Wiec ufasz mi teraz i jestes gonna mnie do baraków?
	AI_Output(self, hero, "Info_Mod_Ramirez_Bandenchef_03_04"); //Tak, dalem ci moje slowo. Po prostu pozwól Cassii poznac najpierw.

	B_GivePlayerXP	(250);

	B_StartOtherRoutine	(Mod_1892_NONE_Bandenmitglied1_NW, "TOT");

	B_SetTopicStatus	(TOPIC_MOD_RAMIREZ_BANDE, LOG_SUCCESS);
	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Przekonalem Ramirez. Zanim wyjedziemy, powinienem poinformowac Cassie.");

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Ramirez_ZuAndre (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_ZuAndre_Condition;
	information	= Info_Mod_Ramirez_ZuAndre_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cassia wie, odejdzmy.";
};

FUNC INT Info_Mod_Ramirez_ZuAndre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_RamirezDabei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_ZuAndre_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramirez_ZuAndre_15_00"); //Cassia wie, odejdzmy.
	AI_Output(self, hero, "Info_Mod_Ramirez_ZuAndre_03_01"); //Wszystko na wskros, ide dalej, pójde za Toba.

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Ramirez podaza za mna i zatrzymam sie przy koszarach.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOANDRE");
};

INSTANCE Info_Mod_Ramirez_Flucht (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Flucht_Condition;
	information	= Info_Mod_Ramirez_Flucht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto jestem.";
};

FUNC INT Info_Mod_Ramirez_Flucht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Boltan_Hilfe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_Flucht_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramirez_Flucht_15_00"); //Oto jestem.
	AI_Output(self, hero, "Info_Mod_Ramirez_Flucht_03_01"); //W koncu myslalem, ze zostawiles nas tutaj na zawsze.
	AI_Output(hero, self, "Info_Mod_Ramirez_Flucht_15_02"); //Jedz spokojnie, droga jest czysta.
	AI_Output(self, hero, "Info_Mod_Ramirez_Flucht_03_03"); //Spotkaj mnie w Kassia. Jeszcze jedna rzecz: gdy jestes przy nim, rabuj klatke piersiowa Pana Andre' a.
	AI_Output(self, hero, "Info_Mod_Ramirez_Flucht_03_04"); //Zauwazylem, ze w jego klatce piersiowej ma byc cale zloto.
	AI_Output(hero, self, "Info_Mod_Ramirez_Flucht_15_05"); //Ale to juz koniec.
	AI_Output(self, hero, "Info_Mod_Ramirez_Flucht_03_06"); //Potem zaplacilismy im naprawde.

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Ramirez i Attila sa wolne. Ale mam jeszcze grabic klatke piersiowa Pana Andresa.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");
	B_StartOtherRoutine	(Mod_760_NONE_Attila_NW, "FLUCHT");
};

INSTANCE Info_Mod_Ramirez_WelcomeBack (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_WelcomeBack_Condition;
	information	= Info_Mod_Ramirez_WelcomeBack_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ramirez_WelcomeBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Flucht))
	&& (Mob_HasItems("ANDRETRUHE", ItMi_Gold) == 0)
	&& (Npc_GetDistToWP(self, "NW_CITY_KANAL_ROOM_05_03") < 300)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 5000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_WelcomeBack_Info()
{
	AI_Output(self, hero, "Info_Mod_Ramirez_WelcomeBack_03_00"); //Jest nasz dostawca. Najlepiej mówiac, wrócisz do Pana Andre' a i opowiedz mu bajke o naszej ucieczce i poddaj sie jako milicja.
	AI_Output(hero, self, "Info_Mod_Ramirez_WelcomeBack_15_01"); //I co mam mu powiedziec?
	AI_Output(self, hero, "Info_Mod_Ramirez_WelcomeBack_03_02"); //Pomysl o czyms.

	Npc_RemoveInvItems	(hero, ItMi_Gold, 5000);

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Ramirez i Attila sa wolne. Ale mam jeszcze grabic klatke piersiowa Pana Andresa.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_760_NONE_Attila_NW, "FREE");

	Mod_Diebe_Andre_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Ramirez_AndreFertig (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_AndreFertig_Condition;
	information	= Info_Mod_Ramirez_AndreFertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mówilem do Pana Andre' a - mówilem";
};

FUNC INT Info_Mod_Ramirez_AndreFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_MortisBadGuy))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_AndreFertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramirez_AndreFertig_15_00"); //Rozmawialem z Panem Andre, a on kupil moja historie.
	AI_Output(self, hero, "Info_Mod_Ramirez_AndreFertig_03_01"); //Bardzo dobrze, wszystko zbliza sie do szczesliwego konca. Attyla jest znowu wolna, Meldor nie jest juz zaklócany, a milicja stala sie o wiele ubozsza.
	AI_Output(self, hero, "Info_Mod_Ramirez_AndreFertig_03_02"); //Wtedy pomagales z wieloma innymi drobnymi rzeczami. Mysle, ze bez Ciebie nie osiagnelibysmy tak duzo.
	AI_Output(hero, self, "Info_Mod_Ramirez_AndreFertig_15_03"); //Teraz to przeszkadza.
	AI_Output(self, hero, "Info_Mod_Ramirez_AndreFertig_03_04"); //Udowodniles mi, ze jestes jednym z najlepszych zlodziei w naszych szeregach!
	AI_Output(hero, self, "Info_Mod_Ramirez_AndreFertig_15_05"); //Lepiej teraz idz i zobacz, co inni sa w stanie zrobic.
	AI_Output(self, hero, "Info_Mod_Ramirez_AndreFertig_03_06"); //Wszystko w prawo, ale zatrzymaj sie tutaj raz na chwile.

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ATTILA, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	AI_StopProcessInfos	(self);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Ramirez_Lernen (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Lernen_Condition;
	information	= Info_Mod_Ramirez_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Nauczyc sie lamania zamków (10 dlugopisów)";
};

FUNC INT Info_Mod_Ramirez_Lernen_Condition()
{
	Info_Mod_Ramirez_Lernen.description = B_BuildLearnString("Nauczyc sie wybierac zamki", B_GetLearnCostTalent(hero, NPC_TALENT_PICKLOCK, 1));

	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Dieb))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_PICKLOCK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramirez_Lernen_15_00"); //Naucz mnie, jak wybierac zamki.

	if (B_TeachThiefTalent (self, other, NPC_TALENT_PICKLOCK))
	{
		AI_Output (self, hero, "Info_Mod_Ramirez_Lernen_03_01"); //Jesli chcesz wybrac zamek, powinienes miec przy sobie wystarczajaca ilosc szafek. Poza tym powinienes byc calkiem madry.
	};
};

INSTANCE Info_Mod_Ramirez_Pickpocket (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Pickpocket_Condition;
	information	= Info_Mod_Ramirez_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Ramirez_Pickpocket_Condition()
{
	C_Beklauen	(120, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Ramirez_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);

	Info_AddChoice	(Info_Mod_Ramirez_Pickpocket, DIALOG_BACK, Info_Mod_Ramirez_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ramirez_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ramirez_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ramirez_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);
};

FUNC VOID Info_Mod_Ramirez_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);

		Info_AddChoice	(Info_Mod_Ramirez_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ramirez_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ramirez_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ramirez_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ramirez_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ramirez_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ramirez_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ramirez_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ramirez_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ramirez_EXIT (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_EXIT_Condition;
	information	= Info_Mod_Ramirez_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ramirez_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ramirez_EXIT_Info()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Dieb))
	{
		AI_Output(self, hero, "Info_Mod_Ramirez_EXIT_03_00"); //Nie wracaj do domu z pustymi rekami!
	};

	AI_StopProcessInfos	(self);
};
