INSTANCE Info_Mod_Akil_Hi (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Hi_Condition;
	information	= Info_Mod_Akil_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Akil_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Akil_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Akil_Hi_16_00"); //Jesli twoje zycie jest ci drogie, opusc ten dom. Tutaj mozna znalezc tylko chorobe i smierc.
};

INSTANCE Info_Mod_Akil_Blablabla (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Blablabla_Condition;
	information	= Info_Mod_Akil_Blablabla_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co z....?";
};

FUNC INT Info_Mod_Akil_Blablabla_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Hi))
	&& (Npc_HasItems(hero, ItPo_HealBesessenheit) < 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akil_Blablabla_Info()
{
	AI_Output(hero, self, "Info_Mod_Akil_Blablabla_15_00"); //A co z....?
	AI_Output(Self, hero, "Info_Mod_Akil_Blablabla_16_01"); //Nieszczesliwy! Idz tak dlugo, jak mozesz! Jesli chcesz porozmawiac, udaj sie do Telboru.
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Akil_Heilung (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Heilung_Condition;
	information	= Info_Mod_Akil_Heilung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj powinno to zlagodzic twoje cierpienie.";
};

FUNC INT Info_Mod_Akil_Heilung_Condition()

{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Hi))
	&& (Npc_HasItems(hero, ItPo_HealBesessenheit) == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akil_Heilung_Info()
{
	AI_Output(hero, self, "Info_Mod_Akil_Heilung_15_00"); //Tutaj powinno to zlagodzic twoje cierpienie.

	B_GiveInvItems	(hero, self, ItPo_HealBesessenheit, 3);

	B_UseItem	(self, ItPo_HealBesessenheit);

	AI_Output(Self, hero, "Info_Mod_Akil_Heilung_16_01"); //Dzieki temu nie wiem, jak to zrobic.
	
	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(350);

	B_StartOtherRoutine	(Mod_906_BAU_Randolph_NW, "FOLLOWPLAYER");

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "Ja dalem Akilowi lekarstwo.....");
};

INSTANCE Info_Mod_Akil_Randolph (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Randolph_Condition;
	information	= Info_Mod_Akil_Randolph_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Akil_Randolph_Condition()

{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	&& (Npc_KnowsInfo(hero, Info_Mod_Randolph_Hi))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akil_Randolph_Info()
{
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_16_00"); //Ten glupiec, gdyby tylko wzial eliksir.
	AI_Output(hero, self, "Info_Mod_Akil_Randolph_15_01"); //Mówisz o Randolphie?
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_16_02"); //Tak. Po incydencie z ciemna figura, poczatkowo wygladal na bardzo dobry.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_16_03"); //Co wiecej, mial sile i wytrzymalosc przez trzy lata i pracowal bez wysilku w dniu, który w przeciwnym razie trwalby tydzien.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_16_04"); //Ale z biegiem czasu stawal sie coraz bardziej melancholijny i zaczal wycofywac sie z innych na farmie.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_16_05"); //Wydawalo mu sie, ze drecza go glosy, których nikt inny nie slyszal i czesto obudzil sie krzyczac w nocy.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_16_06"); //Wczoraj tak, zupelnie stracil on swój umysl.
	AI_Output(hero, self, "Info_Mod_Akil_Randolph_15_07"); //Rozmawiaj dalej.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_16_08"); //Nie ma wiele wiecej do powiedzenia.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_16_09"); //Pracujac na polu, nagle zaczal walczyc dziko z otaczajacymi go rekami i krzyczec:"Zyczylabym, zeby zostawili go samotnie.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_16_10"); //Zanim wiesz, wbiegl do wielkiego lasu i zniknal.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_16_11"); //Telbor próbowal go jeszcze przesledzic, ale stracil szlak w poblizu kamiennego kola.
	AI_Output(Self, hero, "Info_Mod_Akil_Randolph_16_12"); //O ile mam na to nadzieje, o tyle zanika moja nadzieja na ponowne przyjrzenie sie jemu za godzine.
	
	Log_CreateTopic	(TOPIC_MOD_AKIL_RANDOLPH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AKIL_RANDOLPH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AKIL_RANDOLPH, "Randolf, który pogardzal uzdrawiajacym eliksirem, wbiegl do lasu jakby opetany. Jego szlak zaginal w poblizu kamiennego kola.");
};

INSTANCE Info_Mod_Akil_RandolphWiederFit (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_RandolphWiederFit_Condition;
	information	= Info_Mod_Akil_RandolphWiederFit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Akil_RandolphWiederFit_Condition()

{
	if (Npc_KnowsInfo(hero, Info_Mod_Randolph_NoMoreDemon))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akil_RandolphWiederFit_Info()
{
	AI_Output(Self, hero, "Info_Mod_Akil_RandolphWiederFit_16_00"); //Randolph's back and healed. Wydaje sie, ze odgrywacie decydujaca role.
	AI_Output(Self, hero, "Info_Mod_Akil_RandolphWiederFit_16_01"); //Nie wiele mam, ale wez to zloto jako podziekowanie.
	
	B_GivePlayerXP	(400);

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);
};

INSTANCE Info_Mod_Akil_Untier (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Untier_Condition;
	information	= Info_Mod_Akil_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy w ciagu ostatnich kilku dni miales jakies problemy z dzikimi zwierzetami?";
};

FUNC INT Info_Mod_Akil_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akil_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Akil_Untier_15_00"); //Czy w ciagu ostatnich kilku dni miales jakies problemy z dzikimi zwierzetami?
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_16_01"); //Blad! To na pewno.
	AI_Output(self, hero, "Info_Mod_Akil_Untier_16_02"); //Wczoraj, kiedy chcialem wniesc do tawerny Orlan ladunek ciezko marynowanej owczej nogi, uderzyla mnie najbardziej ohydna bestia, jaka kiedykolwiek widzialem.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_16_03"); //Byl wysoki jako wysoki czlowiek biegnacy na czworakach i syczacy.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_16_04"); //Wysunalem swój cenny ladunek i cofnalem sie na podwórko.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_16_05"); //Z daleka moglem zobaczyc, jak ten potwór przenika przez cialo.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_16_06"); //Potem przez kilka minut na ziemie, prawdopodobnie nie dostal tyle soli, a potem wbiegl do lasu syczac za moim gospodarstwem.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_16_07"); //Niech ta bestia umrze z slonego miesa.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_16_08"); //Ale naprawde nie wiem, jak zrekompensowac sobie strate.
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_16_09"); //Mieso przywiózloby mi kilka zlotych monet, a czasy sa tak ciezkie....

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "Akil zaluje utraty slonego miesa po ataku bestii. Chodzila do lasu za jego gospodarstwem.");
	
	Info_ClearChoices	(Info_Mod_Akil_Untier);

	Info_AddChoice	(Info_Mod_Akil_Untier, "Moze moge wam pomóc.....", Info_Mod_Akil_Untier_B);
	Info_AddChoice	(Info_Mod_Akil_Untier, "Nie moja dzialalnosc.", Info_Mod_Akil_Untier_A);
};

FUNC VOID Info_Mod_Akil_Untier_F()
{
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_F_16_00"); //Dziekuje bardzo. Nie wiem, jak to zrobic.

	B_GivePlayerXP	(100);
	
	Info_ClearChoices	(Info_Mod_Akil_Untier);
};

FUNC VOID Info_Mod_Akil_Untier_E()
{
	AI_Output(hero, self, "Info_Mod_Akil_Untier_E_15_00"); //Pomysle o czyms.
	
	Info_ClearChoices	(Info_Mod_Akil_Untier);
};

FUNC VOID Info_Mod_Akil_Untier_D()
{
	AI_Output(hero, self, "Info_Mod_Akil_Untier_D_15_00"); //Tutaj masz dziesiec klubów.

	B_GiveInvItems	(hero, self, ItFo_MuttonRaw, 10);
	
	Info_Mod_Akil_Untier_F();
};

FUNC VOID Info_Mod_Akil_Untier_C()
{
	AI_Output(hero, self, "Info_Mod_Akil_Untier_C_15_00"); //Oto 50 zlotych monet.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);
	
	Info_Mod_Akil_Untier_F();
};

FUNC VOID Info_Mod_Akil_Untier_B()
{
	AI_Output(hero, self, "Info_Mod_Akil_Untier_B_15_00"); //Moze moge wam pomóc.....
	AI_Output(Self, hero, "Info_Mod_Akil_Untier_B_16_01"); //(mamy nadzieje) Tak?
	
	Info_ClearChoices	(Info_Mod_Akil_Untier);

	Info_AddChoice	(Info_Mod_Akil_Untier, "Pomysle o czyms.", Info_Mod_Akil_Untier_E);
	if (Npc_HasItems(hero, ItFo_MuttonRaw) >= 10)
	{
		Info_AddChoice	(Info_Mod_Akil_Untier, "Tutaj masz dziesiec klubów.", Info_Mod_Akil_Untier_D);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 50)
	{
		Info_AddChoice	(Info_Mod_Akil_Untier, "Oto 50 zlotych monet.", Info_Mod_Akil_Untier_C);
	};
};

FUNC VOID Info_Mod_Akil_Untier_A()
{
	AI_Output(hero, self, "Info_Mod_Akil_Untier_A_15_00"); //Nie moja dzialalnosc.
	
	Info_ClearChoices	(Info_Mod_Akil_Untier);
};

INSTANCE Info_Mod_Akil_Lich (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Lich_Condition;
	information	= Info_Mod_Akil_Lich_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Akil_Lich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akil_Lich_Info()
{
	AI_Output(Self, hero, "Info_Mod_Akil_Lich_16_00"); //Lepiej dostac sie do miasta, tu nie jest bezpiecznie.
	AI_Output(hero, self, "Info_Mod_Akil_Lich_15_01"); //Co sie stalo?
	AI_Output(Self, hero, "Info_Mod_Akil_Lich_16_02"); //Te straszne demony wydawaly sie znikad i meczyly nas do kosci.
	AI_Output(self, hero, "Info_Mod_Akil_Lich_16_03"); //Gdyby te trzy paladyny nie pojawily sie, byloby zle dla nas.
	AI_Output(hero, self, "Info_Mod_Akil_Lich_15_04"); //Gdzie sa teraz paladyni?
	AI_Output(Self, hero, "Info_Mod_Akil_Lich_16_05"); //Po zabiciu koledzy, dzieki Innosowi, przeszli do jaskini grobowej kolo Orlanu.
};

INSTANCE Info_Mod_Akil_Pickpocket (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_Pickpocket_Condition;
	information	= Info_Mod_Akil_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Akil_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Akil_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Akil_Pickpocket);

	Info_AddChoice	(Info_Mod_Akil_Pickpocket, DIALOG_BACK, Info_Mod_Akil_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Akil_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Akil_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Akil_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Akil_Pickpocket);
};

FUNC VOID Info_Mod_Akil_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Akil_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Akil_Pickpocket);

		Info_AddChoice	(Info_Mod_Akil_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Akil_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Akil_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Akil_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Akil_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Akil_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Akil_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Akil_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Akil_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Akil_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Akil_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Akil_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Akil_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Akil_EXIT (C_INFO)
{
	npc		= Mod_900_BAU_Akil_NW;
	nr		= 1;
	condition	= Info_Mod_Akil_EXIT_Condition;
	information	= Info_Mod_Akil_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Akil_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Akil_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
