INSTANCE Info_Mod_Elvira_Frauenkleider (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Frauenkleider_Condition;
	information	= Info_Mod_Elvira_Frauenkleider_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elvira_Frauenkleider_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvira_Frauenkleider_Info()
{
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider_21_00"); //Poczekac! Mam dla Ciebie prace!
	AI_Output(hero, self, "Info_Mod_Elvira_Frauenkleider_15_01"); //Ach, tak?
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider_21_02"); //Zostalem okradziony w drodze do Khoraty i zrabowany z ubran.
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider_21_03"); //Otrzymasz ja dla mnie!
};

INSTANCE Info_Mod_Elvira_Frauenkleider2 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Frauenkleider2_Condition;
	information	= Info_Mod_Elvira_Frauenkleider2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego tak niegrzecznie?";
};

FUNC INT Info_Mod_Elvira_Frauenkleider2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Frauenkleider))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Frauenkleider2_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Frauenkleider2_15_00"); //Dlaczego tak niegrzecznie?
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider2_21_01"); //Wy macie za to wine!
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider2_21_02"); //Najpierw przekonuje mnie zle sumienie, bo nie jestem mezczyzna, a potem wykradziony jest takze znak mojej kobiecosci!
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider2_21_03"); //Co pozostalo?
};

INSTANCE Info_Mod_Elvira_Frauenkleider3 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Frauenkleider3_Condition;
	information	= Info_Mod_Elvira_Frauenkleider3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie dokladnie byles przytulony?";
};

FUNC INT Info_Mod_Elvira_Frauenkleider3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Frauenkleider2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Frauenkleider3_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Frauenkleider3_15_00"); //Gdzie dokladnie byles przytulony?
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider3_21_01"); //Czy ma to znaczenie? Zlodzieje nie zostawia po sobie zadnego sladu, bo przeciez zabrali mi tylko walizke.
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider3_21_02"); //Ale nie moze tu byc tak wiele szlafroków, czy to mozliwe?

	Info_ClearChoices	(Info_Mod_Elvira_Frauenkleider3);

	Info_AddChoice	(Info_Mod_Elvira_Frauenkleider3, "Dlaczego nie szukasz tego samemu?", Info_Mod_Elvira_Frauenkleider3_B);
	Info_AddChoice	(Info_Mod_Elvira_Frauenkleider3, "Rozejrze sie dookola.", Info_Mod_Elvira_Frauenkleider3_A);
};

FUNC VOID Info_Mod_Elvira_Frauenkleider3_B()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Frauenkleider3_B_15_00"); //Dlaczego nie szukasz tego samemu?
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider3_B_21_01"); //(przypadkowo) Dziekuje.

	Info_ClearChoices	(Info_Mod_Elvira_Frauenkleider3);
};

FUNC VOID Info_Mod_Elvira_Frauenkleider3_A()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Frauenkleider3_A_15_00"); //Rozejrze sie dookola.
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider3_A_21_01"); //No cóz, przynajmniej wydaje sie pan rozsadny.

	Info_ClearChoices	(Info_Mod_Elvira_Frauenkleider3);

	Log_CreateTopic	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, "Elvira, czarodziejka ognia z Khoraty, zgubila ubrania w rabunku. Mówi sie, ze za to odpowiedzialna jest banda zlodziei.");

	Mod_REL_Frauenkleider = 1;
};

INSTANCE Info_Mod_Elvira_Frauenkleider4 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Frauenkleider4_Condition;
	information	= Info_Mod_Elvira_Frauenkleider4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przynioslem wasze ubrania.";
};

FUNC INT Info_Mod_Elvira_Frauenkleider4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Frauenkleider2))
	&& (Npc_HasItems(hero, ItMi_Kleiderkoffer) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Frauenkleider4_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Frauenkleider4_15_00"); //Przynioslem wasze ubrania.

	B_GiveInvItems	(hero, self, ItMi_Kleiderkoffer, 1);

	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider4_21_01"); //Tak, tak. Nie spodziewalem sie, ze nie zobaczyl jej juz wiecej.
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider4_21_02"); //Wez te eliksiry jako podziekowania.

	B_GiveInvItems	(self, hero, ItPo_Health_02, 3);

	B_GivePlayerXP	(150);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Elvira_Dorn (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Dorn_Condition;
	information	= Info_Mod_Elvira_Dorn_Info;
	permanent	= 0;
	important	= 0;
	description	= "Musimy porozmawiac....";
};

FUNC INT Info_Mod_Elvira_Dorn_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Idrico_Dorn))
	&& (Mod_REL_IdricoDorn == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Dorn_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_15_00"); //Musimy porozmawiac....
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_21_01"); //Co to jest sprawa?

	Info_ClearChoices	(Info_Mod_Elvira_Dorn);

	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_DiebeKey2))
	{
		Info_AddChoice	(Info_Mod_Elvira_Dorn, "Jesli nie pójdziesz, powiem wszystkim, co wydarzylo sie miedzy nami.", Info_Mod_Elvira_Dorn_C);
	};
	Info_AddChoice	(Info_Mod_Elvira_Dorn, "Idrico chce sie cie pozbyc.", Info_Mod_Elvira_Dorn_B);
	Info_AddChoice	(Info_Mod_Elvira_Dorn, "Trzeba opuscic miasto juz teraz.", Info_Mod_Elvira_Dorn_A);
};

FUNC VOID Info_Mod_Elvira_Dorn_C()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_C_15_00"); //Jesli nie pójdziesz, powiem wszystkim, co wydarzylo sie miedzy nami.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_C_21_01"); //Synkujesz z suki!
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_C_21_02"); //Wtedy nie mam wyboru.... Mam nadzieje, ze jestes zadowolony z tego, co robisz.

	Info_ClearChoices	(Info_Mod_Elvira_Dorn);

	Mod_REL_IdricoDorn = 2;

	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "Elvira opusci miasto.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

FUNC VOID Info_Mod_Elvira_Dorn_B()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_B_15_00"); //Idrico chce sie cie pozbyc.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_B_21_01"); //Ten bum, który zawsze patrzy na mnie krzywa? Czy uwazasz, ze móglby byc niewygodny?
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_B_15_02"); //To juz jego zapach. Fanatyzm jest w nim silny.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_B_21_03"); //Powinnismy na niego zalozyc sluzówke.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_B_21_04"); //Sadzisz, ze mozesz przeciagnac Anselm na nasza strone, aby utrzymac go w spokoju?
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_B_15_05"); //Moge spróbowac.

	Info_ClearChoices	(Info_Mod_Elvira_Dorn);

	Mod_REL_IdricoDorn = 3;

	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "Uwazam, ze plan Idrico jest bledny i chce przekonac Anzelma, ze nalezy go wdrozyc.");
};

FUNC VOID Info_Mod_Elvira_Dorn_A()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_A_15_00"); //Trzeba opuscic miasto juz teraz.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_A_21_01"); //Mój codzienny plan byl wlasciwie troche inny. Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_A_15_02"); //Nie bedziesz juz tu dluzej tolerowany. Albo ochotniczo, albo pomagam.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_A_21_03"); //Brzmi to jak powazne. Zastanawiam sie, jak wyglada wasza pomoc.

	Info_ClearChoices	(Info_Mod_Elvira_Dorn);

	Mod_REL_IdricoDorn = 2;

	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "Elvira nie chciala opuscic miasta bez walki, a teraz doznala obrazen. Idrico wciaz powinno byc zadowolone.");

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
	B_Attack	(Mod_7425_KDF_Fuego_REL, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Elvira_Dorn2 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Dorn2_Condition;
	information	= Info_Mod_Elvira_Dorn2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Anselm prosi o zaplate plemiennej platnosci (....). )";
};

FUNC INT Info_Mod_Elvira_Dorn2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn))
	&& (Mod_REL_IdricoDorn == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Dorn2_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn2_15_00"); //Anselm prosi o dokonanie platnosci w zamian za jego pomoc.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn2_21_01"); //Co za szmalcownik! Ale jesli go usatysfakcjonuje....
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn2_21_02"); //Nadal wolalbym, zeby tak sie nie stalo z taka koszula slobberballowa.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "Mam zloto magów ognia i powinienem dostarczyc je Anselmowi.");
};

INSTANCE Info_Mod_Elvira_Dorn3 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Dorn3_Condition;
	information	= Info_Mod_Elvira_Dorn3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elvira_Dorn3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn2))
	&& (Mod_REL_IdricoDorn == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Dorn3_Info()
{
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn3_21_01"); //Oferowales tylko zlote monety Anselm 50? Wyjdz z niego, zlodziej!
};

INSTANCE Info_Mod_Elvira_Dorn4 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Dorn4_Condition;
	information	= Info_Mod_Elvira_Dorn4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nalezy rozwiazac sprawe Idrico.";
};

FUNC INT Info_Mod_Elvira_Dorn4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn2))
	&& (Mod_REL_IdricoDorn == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Dorn4_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn4_15_00"); //Nalezy rozwiazac sprawe Idrico.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn4_21_01"); //Ciesze sie, ze mozna na Ciebie liczyc. Oto niewielka rekompensata.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(100);

	B_Göttergefallen(1, 1);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_DORN, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Elvira_DiebeKey (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_DiebeKey_Condition;
	information	= Info_Mod_Elvira_DiebeKey_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elvira_DiebeKey_Condition()
{
	if (Mod_Diebe_Elvira == 1)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_DiebeKey_Info()
{
	AI_Output(self, hero, "Info_Mod_Elvira_DiebeKey_21_00"); //Och, ja sie zmieniam. Tak latwo i smiesznie sie zmienia.
	AI_Output(self, hero, "Info_Mod_Elvira_DiebeKey_21_01"); //A przede mna.... oh...... to przystojny przyjaciel.
	AI_Output(self, hero, "Info_Mod_Elvira_DiebeKey_21_02"); //Chodzcie tutaj, nie wahajcie sie, nie ugryze, chyba ze chcecie....

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Elvira_DiebeKey2 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_DiebeKey2_Condition;
	information	= Info_Mod_Elvira_DiebeKey2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elvira_DiebeKey2_Condition()
{
	if (Mod_Diebe_Elvira == 2)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_DiebeKey2_Info()
{
	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Elvira_DiebeKey2_15_00"); //(ja sama) Zdjecie klucza bylo dziecinna zabawa.

	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Elvira_DiebeKey2_21_01"); //Tak jak to sie stalo. l-- moja szata.

	AI_EquipBestArmor	(self);

	AI_Output(self, hero, "Info_Mod_Elvira_DiebeKey2_21_02"); //Oh, nie, co zrobilem?
	AI_Output(self, hero, "Info_Mod_Elvira_DiebeKey2_21_03"); //Innos. Najciezej zgrzeszylem (....). Musze pokutowac.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BUSSE");
	
	Spine_OverallSaveSetInt("ElviraSex", 1);
};

INSTANCE Info_Mod_Elvira_DickeLuft (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_DickeLuft_Condition;
	information	= Info_Mod_Elvira_DickeLuft_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcialbym zamienic sie w owce.";
};

FUNC INT Info_Mod_Elvira_DickeLuft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Irmgard_Kneipe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_DickeLuft_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_DickeLuft_15_00"); //Chcialbym zamienic sie w owce.
	AI_Output(self, hero, "Info_Mod_Elvira_DickeLuft_21_01"); //Musisz to zrobic, jesli chcesz przyjechac z kobietami.
	AI_Output(self, hero, "Info_Mod_Elvira_DickeLuft_21_02"); //Z tak niezgrabna linia odbiorcza, to nie zadziala!
	AI_Output(hero, self, "Info_Mod_Elvira_DickeLuft_15_03"); //Wiec nie masz nic do powiedzenia?
	AI_Output(self, hero, "Info_Mod_Elvira_DickeLuft_21_04"); //Nie. Przeksztalcenia nie sa moja specjalnoscia.
};

INSTANCE Info_Mod_Elvira_Freudenspender (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Freudenspender_Condition;
	information	= Info_Mod_Elvira_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Czy mozna uzyc dozowników blyszczacych?";
};                       

FUNC INT Info_Mod_Elvira_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Elvira_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Freudenspender_15_00"); //Czy mozna uzyc dozowników blyszczacych?
	AI_Output(self, hero, "Info_Mod_Elvira_Freudenspender_21_01"); //Przyjemnosc przekazujacego narusza nasz kodeks. Tak wiec nie.
};

INSTANCE Info_Mod_Elvira_Pickpocket_Quest (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Pickpocket_Quest_Condition;
	information	= Info_Mod_Elvira_Pickpocket_Quest_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180_Female;
};

FUNC INT Info_Mod_Elvira_Pickpocket_Quest_Condition()
{
	if (C_Beklauen(166, ItKe_RELMagier, 1))
	&& (Npc_HasItems(self, ItKe_RELMagier) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Cassia_Elvira))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Quest_Info()
{
	Info_ClearChoices	(Info_Mod_Elvira_Pickpocket_Quest);

	Info_AddChoice	(Info_Mod_Elvira_Pickpocket_Quest, DIALOG_BACK, Info_Mod_Elvira_Pickpocket_Quest_BACK);
	Info_AddChoice	(Info_Mod_Elvira_Pickpocket_Quest, DIALOG_PICKPOCKET, Info_Mod_Elvira_Pickpocket_Quest_DoIt);
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Quest_BACK()
{
	Info_ClearChoices	(Info_Mod_Elvira_Pickpocket_Quest);
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Quest_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Elvira_Pickpocket_Quest);
};

INSTANCE Info_Mod_Elvira_Pickpocket (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Pickpocket_Condition;
	information	= Info_Mod_Elvira_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120_Female;
};

FUNC INT Info_Mod_Elvira_Pickpocket_Condition()
{
	C_Beklauen	(96, ItMi_Gold, 41);
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);

	Info_AddChoice	(Info_Mod_Elvira_Pickpocket, DIALOG_BACK, Info_Mod_Elvira_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Elvira_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Elvira_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Elvira_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);
};

FUNC VOID Info_Mod_Elvira_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);

		Info_AddChoice	(Info_Mod_Elvira_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Elvira_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Elvira_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Elvira_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Elvira_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Elvira_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Elvira_EXIT (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_EXIT_Condition;
	information	= Info_Mod_Elvira_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Elvira_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvira_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
