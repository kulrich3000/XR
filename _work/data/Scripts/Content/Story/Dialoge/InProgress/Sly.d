INSTANCE Info_Mod_Sly_Hi (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Hi_Condition;
	information	= Info_Mod_Sly_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy nie masz nic innego do zrobienia?";
};

FUNC INT Info_Mod_Sly_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sly_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_Hi_15_00"); //Czy nie masz nic innego do zrobienia?
	AI_Output(self, hero, "Info_Mod_Sly_Hi_28_01"); //Wystarczy wziac to latwo, brodzac. Dlaczego nie siedzisz i baw sie z nami?
};

INSTANCE Info_Mod_Sly_WasPassiert (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_WasPassiert_Condition;
	information	= Info_Mod_Sly_WasPassiert_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sie z Toba stalo?";
};

FUNC INT Info_Mod_Sly_WasPassiert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_WasPassiert_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_WasPassiert_15_00"); //Co sie z Toba stalo?
	AI_Output(self, hero, "Info_Mod_Sly_WasPassiert_28_01"); //Nic wiecej.... Mysle. Tak dlugo, jak dlugo Cutter nie zmusza nas do pracy na polu, nie mozemy nic zrobic.
	AI_Output(self, hero, "Info_Mod_Sly_WasPassiert_28_02"); //Wszystko od czasu do czasu, czyjas poluje. Nigdy nie bylem w stanie tego zrobic i nie chce, aby skonczylo sie to jako karma dla wilków.
};

INSTANCE Info_Mod_Sly_LagerLeerer (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_LagerLeerer_Condition;
	information	= Info_Mod_Sly_LagerLeerer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jest pusta w magazynie?";
};

FUNC INT Info_Mod_Sly_LagerLeerer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_LagerLeerer_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_LagerLeerer_15_00"); //Czy jest pusta w magazynie?
	AI_Output(self, hero, "Info_Mod_Sly_LagerLeerer_28_01"); //Troche troche, tak. Wiekszosc ludzi nie wie, co sie z nimi stalo.
	AI_Output(self, hero, "Info_Mod_Sly_LagerLeerer_28_02"); //Niektórzy z nich chcieli polowac i nigdy juz nie wrócili.
	AI_Output(self, hero, "Info_Mod_Sly_LagerLeerer_28_03"); //Albo biedne dranie zostalo uderzone, albo laty wyszly z drogi.
	AI_Output(self, hero, "Info_Mod_Sly_LagerLeerer_28_04"); //Dlatego nie wolno nam opuscic obozu bez zezwolenia.
	AI_Output(self, hero, "Info_Mod_Sly_LagerLeerer_28_05"); //Oczywiscie, jesli naprawde chcesz sie wydostac, nie mozesz byc utrudniony przez zakaz.
};

INSTANCE Info_Mod_Sly_Arena (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Arena_Condition;
	information	= Info_Mod_Sly_Arena_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co z arena? Nie chcesz tam konkurowac?";
};

FUNC INT Info_Mod_Sly_Arena_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_WasPassiert))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_Arena_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_Arena_15_00"); //A co z arena? Nie chcesz tam konkurowac?
	AI_Output(self, hero, "Info_Mod_Sly_Arena_28_01"); //Hala bylaby dla mnie czyms wiecej...... Za kazdym razem, gdy sa walki, wyobrazam sobie, ze jestem jednym z bojowników.
	AI_Output(self, hero, "Info_Mod_Sly_Arena_28_02"); //Ale jestem po prostu zwyklym cieniem i od dawna nie mialem w reku miecza.
	AI_Output(self, hero, "Info_Mod_Sly_Arena_28_03"); //Kiedys bylem dobry, bylem jednym z najlepszych w obozie. Ale teraz?
	AI_Output(self, hero, "Info_Mod_Sly_Arena_28_04"); //Tak jak ja, sprzataja arene na sniadanie.
};

INSTANCE Info_Mod_Sly_Arena2 (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Arena2_Condition;
	information	= Info_Mod_Sly_Arena2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak trenowac?";
};

FUNC INT Info_Mod_Sly_Arena2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_Arena))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_Arena2_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_Arena2_15_00"); //Jak trenowac?
	AI_Output(self, hero, "Info_Mod_Sly_Arena2_28_01"); //Wyglada na to, ze masz cos w pudelku. Nie obchodze sie z nim.
	AI_Output(self, hero, "Info_Mod_Sly_Arena2_28_02"); //Jesli na arenie odniose sukces, bedziesz czescia zysków.
	AI_Output(hero, self, "Info_Mod_Sly_Arena2_15_03"); //Grzywna. Kiedy chcesz zaczac?
	AI_Output(self, hero, "Info_Mod_Sly_Arena2_28_04"); //Niech mi bedzie najpierw wszystko trzezwe. Jutro rano rano mozemy sie spotkac na trawniku miedzy stawem a targowiskiem.
	AI_Output(self, hero, "Info_Mod_Sly_Arena2_28_05"); //Musi byc wystarczajaco duzo miejsca.

	Log_CreateTopic	(TOPIC_MOD_SLY_ARENA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLY_ARENA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLY_ARENA, "Zgodzilem sie z Sly' em, ze rano spotkamy sie na trawniku miedzy stawem a targowiskiem, bym mógl go przeszkolic na arene.");

	Mod_Sly_Arena_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Sly_Arena3 (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Arena3_Condition;
	information	= Info_Mod_Sly_Arena3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sly_Arena3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_Arena2))
	&& (Mod_Sly_Arena == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_Arena3_Info()
{
	AI_Output(self, hero, "Info_Mod_Sly_Arena3_28_00"); //Chodzcie, przyjdzcie. Jestem juz goracy! Jak zaczac?
	AI_Output(hero, self, "Info_Mod_Sly_Arena3_15_01"); //Kiedy patrze na Ciebie tak, z kondycjonowaniem. Piekny spacer po zamku zrobi dobrze.
	AI_Output(hero, self, "Info_Mod_Sly_Arena3_15_02"); //Lepiej pójde z toba, zebys nie oszukiwal.
	AI_Output(self, hero, "Info_Mod_Sly_Arena3_28_03"); //Chodzic? Myslalem, ze doskonalimy moja miecze?
	AI_Output(hero, self, "Info_Mod_Sly_Arena3_15_04"); //Wiec mozesz zrobic ciotke, a potem zadyszke? Wejdz na nogi!
	AI_Output(self, hero, "Info_Mod_Sly_Arena3_28_05"); //Wszystko w porzadku, jesli musze....

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRAINING2");
};

INSTANCE Info_Mod_Sly_Arena4 (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Arena4_Condition;
	information	= Info_Mod_Sly_Arena4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sly_Arena4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_Arena3))
	&& (Mod_Sly_Arena == 3)
	&& (Npc_GetDistToWP(hero, "OCR_OUTSIDE_HUT_65_MOVEMENT") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_Arena4_Info()
{
	AI_Output(self, hero, "Info_Mod_Sly_Arena4_28_00"); //Ach, umieram!
	AI_Output(hero, self, "Info_Mod_Sly_Arena4_15_01"); //Wczesniej musimy sie pojedynkowac. Masz pistolet?
	AI_Output(self, hero, "Info_Mod_Sly_Arena4_28_02"); //Tak, tak, tak, tak, tak, tak, wszystko. Dostales cos dla siebie, wiec nie ranilas mnie zbytnio.

	B_GiveInvItems	(self, hero, ItMw_Schlagstock, 1);

	EquipWeapon	(hero, ItMw_Schlagstock);

	AI_Output(hero, self, "Info_Mod_Sly_Arena4_15_03"); //Zobaczmy, co jeszcze dostales.
	AI_Output(self, hero, "Info_Mod_Sly_Arena4_28_04"); //Okay.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Sly_Arena5 (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Arena5_Condition;
	information	= Info_Mod_Sly_Arena5_Info;
	permanent	= 0;
	important	= 0;
	description	= "To bylo dosc schludne.";
};

FUNC INT Info_Mod_Sly_Arena5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_Arena4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_Arena5_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_Arena5_15_00"); //To bylo dosc schludne. Czy uczucie powoli powraca?
	AI_Output(self, hero, "Info_Mod_Sly_Arena5_28_01"); //Jesli przez uczucia masz na mysli ból, to zdecydowanie jest to ból.
	AI_Output(self, hero, "Info_Mod_Sly_Arena5_28_02"); //Masz dla mnie wiecej wskazówek?

	Info_ClearChoices	(Info_Mod_Sly_Arena5);

	Info_AddChoice	(Info_Mod_Sly_Arena5, "Nah, to grzywna.", Info_Mod_Sly_Arena5_B);
	Info_AddChoice	(Info_Mod_Sly_Arena5, "Walczyc mniej obrazliwie. Jestes bardziej defensywny.", Info_Mod_Sly_Arena5_A);
};

FUNC VOID Info_Mod_Sly_Arena5_C()
{
	AI_Output(self, hero, "Info_Mod_Sly_Arena5_C_28_00"); //Dobre. Dziekuje za pomoc. Mysle, ze to robie. Jestem gonna powiedziec Scatty' emu, aby umiescil mnie na liscie.
	AI_Output(self, hero, "Info_Mod_Sly_Arena5_C_28_01"); //Jesli wygrasz, otrzymasz polowe mojej wyplaty.
	AI_Output(self, hero, "Info_Mod_Sly_Arena5_C_28_02"); //Teraz bede cwiczyc troche wiecej.

	Info_ClearChoices	(Info_Mod_Sly_Arena5);

	B_LogEntry	(TOPIC_MOD_SLY_ARENA, "Sly chce teraz ubiegac sie o Scatty na arenie walki. Powinienem wiec zatrzymac sie przy jego miejscu i zapytac go kiedy Sly bedzie walczyl. Jesli Sly wygra, obiecal mi polowe swojego wynagrodzenia.");

	B_StartOtherRoutine	(self, "ATARENA");
};

FUNC VOID Info_Mod_Sly_Arena5_B()
{
	AI_Output(hero, self, "Info_Mod_Sly_Arena5_B_15_00"); //Nah, to grzywna.

	B_LogEntry	(TOPIC_MOD_SLY_ARENA, "Przygotowalem Sly' a w szybkim programie do walki na arenie. To wszystko, czego potrzeba, aby przetrwac.");

	Info_Mod_Sly_Arena5_C();
};

FUNC VOID Info_Mod_Sly_Arena5_A()
{
	AI_Output(hero, self, "Info_Mod_Sly_Arena5_A_15_00"); //Walczyc mniej obrazliwie. Jestes bardziej defensywny.

	B_LogEntry	(TOPIC_MOD_SLY_ARENA, "Przygotowalem Sly' a w szybkim programie walki na arenie i dalem mu sugestie.");

	Mod_Sly_Tipp = 1;

	Info_Mod_Sly_Arena5_C();
};

INSTANCE Info_Mod_Sly_Arena6 (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Arena6_Condition;
	information	= Info_Mod_Sly_Arena6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sly_Arena6_Condition()
{
	if (Mod_Sly_Arena == 5)
	|| (Mod_Sly_Arena == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_Arena6_Info()
{
	if (Mod_Sly_Arena == 5)
	{
		AI_Output(self, hero, "Info_Mod_Sly_Arena6_28_00"); //Szkoda, ze prawie pobilem to caranto. To wymaga zemsty!
		AI_Output(hero, self, "Info_Mod_Sly_Arena6_15_01"); //Wiec trzymasz sie tego wszystkiego?
		AI_Output(self, hero, "Info_Mod_Sly_Arena6_28_02"); //Oczywiscie! Wystarczy go ubrac!

		B_GivePlayerXP	(50);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Sly_Arena6_28_03"); //Czlowiek, bez twojej defensywnej rady, nie zlamalbym Gora Karanto. Powiedzialbym, ze jest to szczelne, ale zasluzone.
		AI_Output(hero, self, "Info_Mod_Sly_Arena6_15_04"); //Gratulacje.
		AI_Output(self, hero, "Info_Mod_Sly_Arena6_28_05"); //Oto Twój udzial.

		B_GiveInvItems	(self, hero, ItMi_Gold, 150);

		AI_Output(self, hero, "Info_Mod_Sly_Arena6_28_06"); //Z niecierpliwoscia czekam na kolejny pojedynek.

		B_GivePlayerXP	(100);
	};

	B_SetTopicStatus	(TOPIC_MOD_SLY_ARENA, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Sly_SLDSpy (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_SLDSpy_Condition;
	information	= Info_Mod_Sly_SLDSpy_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj, co nowego w obozie?";
};

FUNC INT Info_Mod_Sly_SLDSpy_Condition()
{
	if (Mod_SLD_STT_Mordrag == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_GotoSylvio))
	&& (Mod_SLD_Spy == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_SLDSpy_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_SLDSpy_15_00"); //Witaj, co nowego w obozie?
	AI_Output(self, hero, "Info_Mod_Sly_SLDSpy_28_01"); //Dlaczego pytasz?
	AI_Output(hero, self, "Info_Mod_Sly_SLDSpy_15_02"); //Spedzilem troche czasu na obozie bagiennym i zastrzelilem tam wszystko. Oto lodyga.

	B_ShowGivenThings	("Podane mokradlo");

	CreateInvItems	(self, ItMi_Joint, 1);

	AI_Output(self, hero, "Info_Mod_Sly_SLDSpy_28_03"); //Ahh, swiezy ped zywiczny.

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Sly_SLDSpy_28_04"); //Tak, owszem, o nowinkach. Slyszalem, jak straznicy planuja cos wielkiego na najblizsze kilka dni.
	AI_Output(self, hero, "Info_Mod_Sly_SLDSpy_28_05"); //Powiedzieli cos w rodzaju ataku o swicie. Jestem bardzo ciekawy.....

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Sly pomyslalem, ze straznicy beda planowac duzy atak o swicie.");
};

INSTANCE Info_Mod_Sly_Pickpocket (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Pickpocket_Condition;
	information	= Info_Mod_Sly_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Sly_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Sly_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sly_Pickpocket);

	Info_AddChoice	(Info_Mod_Sly_Pickpocket, DIALOG_BACK, Info_Mod_Sly_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sly_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sly_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sly_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sly_Pickpocket);
};

FUNC VOID Info_Mod_Sly_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sly_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sly_Pickpocket);

		Info_AddChoice	(Info_Mod_Sly_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sly_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sly_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sly_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sly_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sly_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sly_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sly_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sly_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sly_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sly_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sly_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sly_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sly_EXIT (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_EXIT_Condition;
	information	= Info_Mod_Sly_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sly_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sly_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
