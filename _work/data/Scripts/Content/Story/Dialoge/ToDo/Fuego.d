INSTANCE Info_Mod_Fuego_Lehrer (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_Lehrer_Condition;
	information	= Info_Mod_Fuego_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie nauczyc?";
};

FUNC INT Info_Mod_Fuego_Lehrer_Condition()
{
	if (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fuego_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_Lehrer_15_00"); //Czy mozesz mnie nauczyc?

	if ((Mod_Gottstatus == 9)
	|| (Mod_Gottstatus == 10)
	|| (Mod_Gottstatus == 11)
	|| (Mod_Gottstatus == 12))
	{
		AI_Output(self, hero, "Info_Mod_Fuego_Lehrer_32_01"); //Oh, tak. Potrafie pokazac wam jak zwiekszyc swoja magiczna moc.

		Mod_FuegoLehrer = 1;

		Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORATA, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_KHORATA, "Fuego moze mi pomóc w rozwoju MANA.");
	}
	else if ((Mod_Gottstatus == 1)
	|| (Mod_Gottstatus == 2)
	|| (Mod_Gottstatus == 3)
	|| (Mod_Gottstatus == 4))
	{
		AI_Output(self, hero, "Info_Mod_Fuego_Lehrer_32_02"); //Ucze tylko szanownych studentów. Znajdujesz sie na niewlasciwym torze.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Fuego_Lehrer_32_03"); //Aby przekazac darowizne na mój rozkaz, naucze Cie jak zwiekszyc moc magiczna.

		Mod_FuegoLehrer = 2;

		Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORATA, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_KHORATA, "Fuego moze mi pomóc w rozwoju MANA.");
	};
};

INSTANCE Info_Mod_Fuego_AdanosLernen (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_AdanosLernen_Condition;
	information	= Info_Mod_Fuego_AdanosLernen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Naucz mnie! Wynagrodzenie (100 zlote)";
};

FUNC INT Info_Mod_Fuego_AdanosLernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fuego_Lehrer))
	&& (Mod_FuegoLehrer == 2)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fuego_AdanosLernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_AdanosLernen_15_00"); //Naucz mnie!

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	Mod_FuegoLehrer = 1;
};

INSTANCE Info_Mod_Fuego_BrokenRune (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_BrokenRune_Condition;
	information	= Info_Mod_Fuego_BrokenRune_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Innos, straznik ognia.";
};                       

FUNC INT Info_Mod_Fuego_BrokenRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daniel_BrokenRune))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Idrico_BrokenRune))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_BrokenRune_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_BrokenRune_15_00"); //Innos, straznik ognia.
	AI_Output(self, hero, "Info_Mod_Fuego_BrokenRune_32_01"); //Swiatlo jest z wami. Co cie do mnie sprowadza?
	AI_Output(hero, self, "Info_Mod_Fuego_BrokenRune_15_02"); //Mam tu zlamana rune. Czy twoja magia moze je naprawic?
	AI_Output(self, hero, "Info_Mod_Fuego_BrokenRune_32_03"); //Pozwole sobie to zobaczyc. Hm.... czysta przerwa. Powiedzialbym zaklecie teleportu.
	AI_Output(hero, self, "Info_Mod_Fuego_BrokenRune_15_04"); //A co? Czy mozesz mi pomóc?
	AI_Output(self, hero, "Info_Mod_Fuego_BrokenRune_32_05"); //Nie. To nie jest nasza magia. Magik wody powinien lepiej sobie radzic.
	AI_Output(self, hero, "Info_Mod_Fuego_BrokenRune_32_06"); //W slumsach mieszka magik wody. Zgodnie z jego wiekiem, powinien miec wszystkie konsekracje.
	AI_Output(hero, self, "Info_Mod_Fuego_BrokenRune_15_07"); //Slyszalem o nim. Pytam go.
	AI_Output(self, hero, "Info_Mod_Fuego_BrokenRune_32_08"); //Zrób to. A Innos jest z toba.
};

INSTANCE Info_Mod_Fuego_Unruhen (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_Unruhen_Condition;
	information	= Info_Mod_Fuego_Unruhen_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Fuego_Unruhen_Condition()
{
	if (Mod_REL_Stadthalter == 3)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_Unruhen_Info()
{
	AI_Output(self, hero, "Info_Mod_Fuego_Unruhen_32_00"); //Tak, dziekuje bardzo za danie nam Lukasza.
	AI_Output(hero, self, "Info_Mod_Fuego_Unruhen_15_01"); //Czy jest to problem?
	AI_Output(self, hero, "Info_Mod_Fuego_Unruhen_32_02"); //Tak, rzeczywiscie. Dal Elvirze i ja wybór, aby opuscic Khorate lub zmienic wiare.
	AI_Output(self, hero, "Info_Mod_Fuego_Unruhen_32_03"); //Jaka decyzja! Juz dzis spakujemy sie i odejdziemy.
	AI_Output(self, hero, "Info_Mod_Fuego_Unruhen_32_04"); //Nie wracasz do nas nigdy wiecej!

	Mod_REL_FuegoDay = Wld_GetDay();
};

INSTANCE Info_Mod_Fuego_Blutkelch (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_Blutkelch_Condition;
	information	= Info_Mod_Fuego_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Szukam filizanki. Filizanka krwi.";
};                       

FUNC INT Info_Mod_Fuego_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morpheus_Blutkelch))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_Blutkelch_15_00"); //Szukam filizanki. Filizanka krwi.
	AI_Output(self, hero, "Info_Mod_Fuego_Blutkelch_32_01"); //Nigdy nie widzial, nigdy o tym nie slyszal.
	AI_Output(self, hero, "Info_Mod_Fuego_Blutkelch_32_02"); //Móglbym jednak poprosic Innosa o inspiracje. Za mala darowizne.....
	AI_Output(hero, self, "Info_Mod_Fuego_Blutkelch_15_03"); //Wszystkie sluszne, wszystkie sluszne. Do zobaczenia dookola.
};

var int Mod_Fuego_ElviraGoodInfo;

INSTANCE Info_Mod_Fuego_ElviraKey (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_ElviraKey_Condition;
	information	= Info_Mod_Fuego_ElviraKey_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy mozesz mi cos powiedziec o Elwirze?";
};                       

FUNC INT Info_Mod_Fuego_ElviraKey_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Elvira))
	&& (Npc_HasItems(Mod_7499_KDF_Elvira_REL, ItKe_RELMagier) == 1)
	&& (!Mod_Fuego_ElviraGoodInfo)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_ElviraKey_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_ElviraKey_15_00"); //Czy mozesz mi cos powiedziec o Elwirze?

	if (Npc_KnowsInfo(hero, Info_Mod_Fuego_ElviraKey2))
	{
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_01"); //Oczywiscie, dla wierzacego Innosa niezwykle wydaje sie widzenie kobiety w tej roli.
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_02"); //Moge jednak zapewnic, ze jako elekt Inno wykonuje swoje obowiazki z najwyzsza sumiennoscia.
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_03"); //Tylko.... no cóz.....
		AI_Output(hero, self, "Info_Mod_Fuego_ElviraKey_15_04"); //Tak?
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_05"); //Ona zawsze pije klasztorny wino bez alkoholu. Dodatkowa butelka w tulowiu.
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_06"); //Oczywiscie nie jest to naganne, ale raczej przyzwyczajenie, które sprawia, ze ludzie sie usmiechaja.
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_07"); //Ale juz za duzo mówilem. Innos towarzysza Ci po drodze.
		
		B_LogEntry	(TOPIC_MOD_DIEB_ELVIRA, "Hm, Fuego mówi, ze Elvira pije tylko klasztorne wino bezalkoholowe, które trzyma w klatce piersiowej. Niewielkie wymieszanie moze pomóc.....");
		
		Mod_Fuego_ElviraGoodInfo = TRUE;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_08"); //Ona jest prawdziwa Wybrana Inno, sprawiedliwa i zawsze wierna swojemu obowiazkowi.
		AI_Output(hero, self, "Info_Mod_Fuego_ElviraKey_15_09"); //Czy mozesz mi powiedziec cos wiecej o niej?
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_10"); //Co masz na mysli? Jaki jest Twój cel?
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_11"); //Cokolwiek to jest, radzilbym Ci nie lekcewazyc.
		AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey_32_12"); //Teraz odejdzmy! Mam prace do wykonania.
	};
};

INSTANCE Info_Mod_Fuego_ElviraKey2 (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_ElviraKey2_Condition;
	information	= Info_Mod_Fuego_ElviraKey2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce przekazac Innos. (100 zloto)";
};                       

FUNC INT Info_Mod_Fuego_ElviraKey2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Elvira))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Fuego_ElviraKey))
	&& (Npc_HasItems(Mod_7499_KDF_Elvira_REL, ItKe_RELMagier) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_ElviraKey2_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_ElviraKey2_15_00"); //Chce przekazac Innos.
	AI_Output(self, hero, "Info_Mod_Fuego_ElviraKey2_32_01"); //Z wdziecznoscia przyjmuje Pana hojny dar dla Innosa i jego kosciola.

	B_Göttergefallen(1, 3);
};

INSTANCE Info_Mod_Fuego_DickeLuft (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_DickeLuft_Condition;
	information	= Info_Mod_Fuego_DickeLuft_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz rolki konwersji?";
};                       

FUNC INT Info_Mod_Fuego_DickeLuft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Irmgard_Kneipe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_DickeLuft_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_DickeLuft_15_00"); //Masz rolki konwersji?
	AI_Output(self, hero, "Info_Mod_Fuego_DickeLuft_32_01"); //Pozostalo mi jeszcze kilka. Co moge Ci dostac?
	AI_Output(hero, self, "Info_Mod_Fuego_DickeLuft_15_02"); //Do owcy.
	AI_Output(self, hero, "Info_Mod_Fuego_DickeLuft_32_03"); //Do owcy? Dlaczego mialbys zamienic sie w cos takiego?
	AI_Output(self, hero, "Info_Mod_Fuego_DickeLuft_32_04"); //Jest to niemal tak glupi jak metamorfoza w chorobie miesnej!
	AI_Output(hero, self, "Info_Mod_Fuego_DickeLuft_15_05"); //Przypuszczam, ze tak.
	AI_Output(self, hero, "Info_Mod_Fuego_DickeLuft_32_06"); //Naprawde nie moge Ci pomóc. Mam tylko uzyteczne zaklecia.
	AI_Output(hero, self, "Info_Mod_Fuego_DickeLuft_15_07"); //Wszystko jasne.
};

INSTANCE Info_Mod_Fuego_Freudenspender (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_Freudenspender_Condition;
	information	= Info_Mod_Fuego_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Potrzebujesz dozowników radosci?";
};                       

FUNC INT Info_Mod_Fuego_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_Freudenspender_15_00"); //Potrzebujesz dozowników radosci?
	AI_Output(self, hero, "Info_Mod_Fuego_Freudenspender_32_01"); //No cóz, tak naprawde zakazuje sie mi tego, ale jesli zatrzymasz to dla siebie....
	AI_Output(hero, self, "Info_Mod_Fuego_Freudenspender_15_02"); //Oczywiscie oczywiscie.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Fuego_FireMage (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_FireMage_Condition;
	information	= Info_Mod_Fuego_FireMage_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Fuego_FireMage_Condition()
{
	if (hero.guild == GIL_VLK)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Fuego_FireMage_Info()
{
	AI_Output(self, hero, "Info_Mod_Fuego_FireMage_32_00"); //Milo jest spotkac osoby o podobnych pogladach. Czy pochodzisz z Khorinis?
	AI_Output(hero, self, "Info_Mod_Fuego_FireMage_15_01"); //Nie do konca. Ale udajmy. Masz ciezki czas w Khoracie?
	AI_Output(self, hero, "Info_Mod_Fuego_FireMage_32_02"); //Mozna to powiedziec. Wybacz mi Innos, ale to jest bezbozne miejsce. Ludzie tutaj wierza w ich majatek i bogactwo, nic wiecej.
	AI_Output(hero, self, "Info_Mod_Fuego_FireMage_15_03"); //Brzmi jak duzo pracy.....
	AI_Output(self, hero, "Info_Mod_Fuego_FireMage_32_04"); //Gdziekolwiek widzicie mozliwosc nauczania wlasciwej wiary lub chocby jakiejs przyzwoitosci, zwracam sie do was o podjecie dzialania. Ulatwialoby nam to troche nasza ciezka próbe Innosa.
	
	Info_ClearChoices(Info_Mod_Fuego_FireMage);
	
	Info_AddChoice(Info_Mod_Fuego_FireMage, "Przyjrzyjmy sie. Wlasciwie to mi sie podoba tak naprawde.", Info_Mod_Fuego_FireMage_B);
	Info_AddChoice(Info_Mod_Fuego_FireMage, "Ciezko sie staram. Obiecuje.", Info_Mod_Fuego_FireMage_A);
};

FUNC VOID Info_Mod_Fuego_FireMage_B()
{
	AI_Output(hero, self, "Info_Mod_Fuego_FireMage_B_15_00"); //Przyjrzyjmy sie. Wlasciwie to mi sie podoba tak naprawde.
	
	Info_ClearChoices(Info_Mod_Fuego_FireMage);
};

FUNC VOID Info_Mod_Fuego_FireMage_A()
{
	AI_Output(hero, self, "Info_Mod_Fuego_FireMage_A_15_00"); //Ciezko sie staram. Obiecuje.
	AI_Output(self, hero, "Info_Mod_Fuego_FireMage_A_32_01"); //Potem wez to razem z toba w podróz, w imie Innos!
	
	B_GiveInvItems(self, hero, ItPo_Mana_02, 1);
	
	Info_ClearChoices(Info_Mod_Fuego_FireMage);
};

INSTANCE Info_Mod_Fuego_Lernen (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_Lernen_Condition;
	information	= Info_Mod_Fuego_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce rozszerzyc swoja magiczna moc.";
};

FUNC INT Info_Mod_Fuego_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fuego_Lehrer))
	&& (Mod_RealMana < 200)
	&& (Mod_FuegoLehrer == 1)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fuego_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Fuego_Lernen_15_00"); //Chce rozszerzyc swoja magiczna moc.

	Info_ClearChoices	(Info_Mod_Fuego_Lernen);

	Info_AddChoice		(Info_Mod_Fuego_Lernen, DIALOG_BACK, INFO_MOD_Fuego_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Fuego_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Fuego_Lernen_5);
	Info_AddChoice		(Info_Mod_Fuego_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Fuego_Lernen_1);
};

FUNC VOID Info_Mod_Fuego_Lernen_BACK()
{
	if (Mod_RealMana	>=	200)
	{
		AI_Output(self, hero, "Info_Mod_Fuego_Lernen_BACK_05_01"); //Twoje magiczne umiejetnosci sa teraz tak dobre, ze nie moge cie niczego nauczyc.
	};
	Info_ClearChoices	(Info_Mod_Fuego_Lernen);
};

FUNC VOID Info_Mod_Fuego_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 200);

	Info_ClearChoices	(Info_Mod_Fuego_Lernen);

	Info_AddChoice		(Info_Mod_Fuego_Lernen, DIALOG_BACK, INFO_MOD_Fuego_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Fuego_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Fuego_Lernen_5);
	Info_AddChoice		(Info_Mod_Fuego_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Fuego_Lernen_1);
};

FUNC VOID Info_Mod_Fuego_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 200);

	Info_ClearChoices	(Info_Mod_Fuego_Lernen);

	Info_AddChoice		(Info_Mod_Fuego_Lernen, DIALOG_BACK, INFO_MOD_Fuego_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Fuego_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Fuego_Lernen_5);
	Info_AddChoice		(Info_Mod_Fuego_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Fuego_Lernen_1);
};

INSTANCE Info_Mod_Fuego_Pickpocket (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_Pickpocket_Condition;
	information	= Info_Mod_Fuego_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Fuego_Pickpocket_Condition()
{
	C_Beklauen	(157, ItMi_Gold, 100);
};

FUNC VOID Info_Mod_Fuego_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);

	Info_AddChoice	(Info_Mod_Fuego_Pickpocket, DIALOG_BACK, Info_Mod_Fuego_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Fuego_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Fuego_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Fuego_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);
};

FUNC VOID Info_Mod_Fuego_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);

		Info_AddChoice	(Info_Mod_Fuego_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Fuego_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Fuego_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Fuego_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Fuego_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Fuego_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Fuego_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Fuego_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Fuego_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Fuego_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Fuego_EXIT (C_INFO)
{
	npc		= Mod_7425_KDF_Fuego_REL;
	nr		= 1;
	condition	= Info_Mod_Fuego_EXIT_Condition;
	information	= Info_Mod_Fuego_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Fuego_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fuego_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
