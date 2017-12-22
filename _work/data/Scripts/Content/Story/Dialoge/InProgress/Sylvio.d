INSTANCE Info_Mod_Sylvio_Hi (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_Hi_Condition;
	information	= Info_Mod_Sylvio_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sylvio_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_GotoSylvio))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Sylvio_Hi_03_00"); //Hej, Ty jestes facetem, który ma nas szpiegowac w starym obozie.
	AI_Output(hero, self, "Info_Mod_Sylvio_Hi_15_01"); //Tak, powinienem.
	AI_Output(self, hero, "Info_Mod_Sylvio_Hi_03_02"); //Chce Ci cos powiedziec: Jesli masz cokolwiek dostac, powinienes najpierw powiedziec mi, zanim pobiegniesz do Lee, zrozumiesz?
	AI_Output(self, hero, "Info_Mod_Sylvio_Hi_03_03"); //Dzieki temu mozna szybko stac sie mysliwym na orki i zarobic dodatkowe zloto i rude. Rozumiemy sie nawzajem?

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Sylvio chcial, abym najpierw zglosil sie do niego, na wypadek gdyby nauczyl sie czegos w Starym Obozie.");
};

INSTANCE Info_Mod_Sylvio_InfosAnLee (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_InfosAnLee_Condition;
	information	= Info_Mod_Sylvio_InfosAnLee_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sylvio_InfosAnLee_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_SchlachtDabei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lee_SchlachtVerpasst))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_InfosAnLee_Info()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Sylvio_Infos))
	{
		AI_Output(self, hero, "Info_Mod_Sylvio_InfosAnLee_03_00"); //Czyz nie powiedzialem ci, zebys najpierw przyszedl do mnie?
	};

	AI_Output(self, hero, "Info_Mod_Sylvio_InfosAnLee_03_01"); //Jeden z moich najlepszych mysliwych na orki zostal odsloniety i do mnie sie zwróci. I wcale mi sie to nie podoba.
	AI_Output(self, hero, "Info_Mod_Sylvio_InfosAnLee_03_02"); //Lepiej uwazac w przyszlosci, jesli nie zrobisz poteznych wrogów.
};

INSTANCE Info_Mod_Sylvio_Infos (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_Infos_Condition;
	information	= Info_Mod_Sylvio_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam wazne informacje (.....) )";
};

FUNC INT Info_Mod_Sylvio_Infos_Condition()
{
	if (Mod_SLD_Spy == 1)
	&& (Npc_HasItems(hero, ItAr_Stt_Mordrag) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Infos_15_00"); //Z moich rozmów z niektórymi cieniami zdobylem wazne informacje. Widocznie ofiara morderstwa padl straznik.
	AI_Output(hero, self, "Info_Mod_Lee_Infos_15_01"); //Inny straznik chce, aby jeden z naszych mezczyzn byl winowajca, a stary obóz planuje zaatakowac nas o swicie w najblizszych dniach.
	AI_Output(self, hero, "Info_Mod_Sylvio_Infos_03_02"); //To ciekawe. Przejdz do Sentenzy. On udzieli dalszych wskazówek.
	
	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Do Sentenzy przyjezdzam po dalsze instrukcje.");

	Mod_SLD_Spy = 4;

	Npc_RemoveInvItems	(hero, ItAr_Stt_Mordrag, 1);
};

INSTANCE Info_Mod_Sylvio_Frauenraub (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_Frauenraub_Condition;
	information	= Info_Mod_Sylvio_Frauenraub_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sylvio_Frauenraub_Condition()
{
	if (Mod_SLD_Spy == 7)
	|| (Mod_SLD_Spy == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_Frauenraub_Info()
{
	AI_Output(self, hero, "Info_Mod_Sylvio_Frauenraub_03_00"); //Nawiasem mówiac, jest inny sposób na udowodnienie siebie.
	AI_Output(self, hero, "Info_Mod_Sylvio_Frauenraub_03_01"); //Przejdz do Bullco. On powie ci wszystko inne.
	AI_Output(hero, self, "Info_Mod_Sylvio_Frauenraub_15_02"); //Ale Bullco nie jest jednak mysliwym orkiestrowym.
	AI_Output(self, hero, "Info_Mod_Sylvio_Frauenraub_03_03"); //To prawda, on jest mysliwym na smoka. Co wiec? Warto pracowac dla mnie. Znajdziesz go w ciagu dnia poza pubem.

	Log_CreateTopic	(TOPIC_MOD_SLD_BULLCO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_BULLCO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_BULLCO, "Widze Bullco, który zazwyczaj stoi przed pubem, zeby uzyskac dalsze instrukcje.");
};

INSTANCE Info_Mod_Sylvio_VelayaWeg (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_VelayaWeg_Condition;
	information	= Info_Mod_Sylvio_VelayaWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sylvio_VelayaWeg_Condition()
{
	if (Mod_SLD_Velaya == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_VelayaWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Sylvio_VelayaWeg_03_00"); //Co? Ty tutaj? A takze bez opieki?
	AI_Output(hero, self, "Info_Mod_Sylvio_VelayaWeg_15_01"); //Obawiam sie, ze to sie nie udalo.
	AI_Output(self, hero, "Info_Mod_Sylvio_VelayaWeg_03_02"); //Nie zadzialal? Po tym, jak juz to zrobiles, jest chyba wiele innych rzeczy, które nie sprawdza sie dla Ciebie. Wyjdz z oczu.

	B_SetTopicStatus	(TOPIC_MOD_SLD_BULLCO, LOG_SUCCESS);
};

INSTANCE Info_Mod_Sylvio_VelayaDabei (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_VelayaDabei_Condition;
	information	= Info_Mod_Sylvio_VelayaDabei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sylvio_VelayaDabei_Condition()
{
	if (Mod_SLD_Velaya == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_VelayaDabei_Info()
{
	AI_Output(self, hero, "Info_Mod_Sylvio_VelayaDabei_03_00"); //No cóz, spójrzcie, kogo tu przywiezli. Ona da mi dobry czas.
	AI_Output(self, hero, "Info_Mod_Sylvio_VelayaDabei_03_01"); //Zrobiles cos wiecej niz dobrze. Przyszedles znacznie blizej do dolaczenia do grona mysliwych Orka.
	AI_Output(self, hero, "Info_Mod_Sylvio_VelayaDabei_03_02"); //Oto Twoja nagroda. Zarobiles to sprawiedliwie.

	B_ShowGivenThings	("350 zlota, 10 rudy i 12 lodyg kapusty bagiennej konserwowanej");

	CreateInvItems	(hero, ItMi_Gold, 350);
	CreateInvItems	(hero, ItMi_Nugget, 10);
	CreateInvItems	(hero, ItMi_Joint, 12);

	B_SetTopicStatus	(TOPIC_MOD_SLD_BULLCO, LOG_SUCCESS);

	B_GivePlayerXP	(450);

	B_StartOtherRoutine	(Mod_1621_EBR_Velaya_MT, "ATSYLVIO");
};

INSTANCE Info_Mod_Sylvio_Befoerderung (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_Befoerderung_Condition;
	information	= Info_Mod_Sylvio_Befoerderung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy jestem gotów dolaczyc do grona Orkiewników?";
};

FUNC INT Info_Mod_Sylvio_Befoerderung_Condition()
{
	if (Mod_Gilde == 4)
	&& (Mod_SLD_Orkjaeger == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_Befoerderung_Info()
{
	AI_Output(hero, self, "Info_Mod_Sylvio_Befoerderung_15_00"); //Czy jestem gotów dolaczyc do grona Orkiewników?

	if (Kapitel == 1)
	{
		AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_01"); //Co? Oh, nagrywanie.... Za kilka dni bede o tym myslal.
	}
	else
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Sylvio_VelayaDabei))
		&& (Npc_KnowsInfo(hero, Info_Mod_Sentenza_Cutter))
		{
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_02"); //Oh, nagrywanie. Udowodniles, ze jestes po prawej stronie i w pelni usatysfakcjonowales swoje zadania.
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_03"); //Dzieki temu masz wiecej niz zarobiles na nagraniu. Witamy serdecznie w mysliwych Orc. Oto twój nowy pancerz.

			B_ShowGivenThings	("Zbroje mysliwskie otrzymuja");

			CreateInvItems	(hero, ItAr_Sld_H, 1);

			AI_UnequipArmor	(hero);
			AI_EquipArmor	(hero, ItAr_Sld_H);

			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_04"); //Mozesz odebrac bron w Thofeistos.

			Snd_Play ("LEVELUP");

			B_GivePlayerXP	(600);

			B_Göttergefallen(2, 5);

			Mod_Gilde = 19;

			Mod_SLD_Orkjaeger = 1;

			B_SetTopicStatus	(TOPIC_MOD_SLD_ORKJAEGER, LOG_SUCCESS);
		}
		else if (Npc_KnowsInfo(hero, Info_Mod_Sylvio_VelayaWeg))
		&& (Npc_KnowsInfo(hero, Info_Mod_Sylvio_InfosAnLee))
		{
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_05"); //Oh, nagranie. Naprawde sprawiles mi i moim chlopakom wiele klopotów, zgielku.
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_06"); //Ciesz sie, ze jestes znajomym Lee' s, lub zebym cie ciela cie na kawalki z moim dzialem.
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_07"); //Nagrywanie? Z rolnikami na polu ryzowym, ale nie z nami. Teraz wyjde z oczu, zanim zapomne siebie samego.

			Mod_SLD_Orkjaeger = 2;

			B_LogEntry	(TOPIC_MOD_SLD_ORKJAEGER, "Och, wielki. Jesli to jest Sylvio, nie jestem tam. Powinienem zapytac Lee, czy jest inny sposób.");
		}
		else if ((Npc_KnowsInfo(hero, Info_Mod_Sylvio_VelayaDabei))
		|| (Npc_KnowsInfo(hero, Info_Mod_Sentenza_Cutter)))
		&& ((Mod_SLD_Rufus == 7)
		|| ((Npc_KnowsInfo(hero, Info_Mod_Reislord_Hi))
		&& (Npc_KnowsInfo(hero, Info_Mod_Patrick_ShrikeDa))
		&& (Npc_KnowsInfo(hero, Info_Mod_Fester_BackAtCamp))
		&& (Mod_SLD_Engardo == 5)))
		{
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_08"); //Udalo ci sie zrobic kilka rzeczy, pokonac niektóre rzeczy, ale wszystko to wszystko zrobilo sie dobrze.
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_09"); //Byc moze nie wylaliscie na siebie chwaly, ale to juz wystarczy nagrac z nami nagranie. Oto twój nowy pancerz.

			B_ShowGivenThings	("Zbroje mysliwskie otrzymuja");

			CreateInvItems	(hero, ItAr_Sld_H, 1);

			AI_UnequipArmor	(hero);
			AI_EquipArmor	(hero, ItAr_Sld_H);

			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_04"); //Mozesz odebrac bron w Thofeistos.

			Snd_Play ("LEVELUP");

			B_GivePlayerXP	(600);

			B_Göttergefallen(2, 5);

			Mod_Gilde = 19;

			Mod_SLD_Orkjaeger = 1;

			B_SetTopicStatus	(TOPIC_MOD_SLD_ORKJAEGER, LOG_SUCCESS);
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_10"); //Co wlasciwie nic nie zrobiles.
			AI_Output(self, hero, "Info_Mod_Sylvio_Befoerderung_04_11"); //Dopóki nie udowodnisz, ze jestes w bledzie, odpowiedz brzmi "nie".
		};
	};
};

INSTANCE Info_Mod_Sylvio_Wettstreit (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_Wettstreit_Condition;
	information	= Info_Mod_Sylvio_Wettstreit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wzywam Panstwa do rywalizacji.";
};

FUNC INT Info_Mod_Sylvio_Wettstreit_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Lee_Wettstreit))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lee_Orkfriedhof)))
	&& (Mod_Gilde == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_Wettstreit_Info()
{
	AI_Output(hero, self, "Info_Mod_Sylvio_Wettstreit_15_00"); //Wzywam Panstwa do rywalizacji.
	AI_Output(self, hero, "Info_Mod_Sylvio_Wettstreit_03_01"); //Co.....? Co mówisz?
	AI_Output(hero, self, "Info_Mod_Sylvio_Wettstreit_15_02"); //Do konkursu na drugie miejsce. Oficer i przywódca mysliwych Orka.
	AI_Output(self, hero, "Info_Mod_Sylvio_Wettstreit_03_03"); //Smiejecie sie smiac.... Bedziesz tego zalowal.
	AI_Output(hero, self, "Info_Mod_Sylvio_Wettstreit_15_04"); //Po prostu chciales poinformowac Cie o tym i wrócic do Lee.
	AI_Output(self, hero, "Info_Mod_Sylvio_Wettstreit_03_05"); //Dobrze, jesli chcesz wziac udzial w konkursie, chce, zebys go mial.
};

INSTANCE Info_Mod_Sylvio_AtStonehenge (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_AtStonehenge_Condition;
	information	= Info_Mod_Sylvio_AtStonehenge_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sylvio_AtStonehenge_Condition()
{
	if (Mod_SLD_Wettstreit == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sylvio_AtStonehenge_Info()
{
	AI_Output(self, hero, "Info_Mod_Sylvio_AtStonehenge_03_00"); //Ty tutaj? Damn, gdzie mam klucz i haslo.
	AI_Output(self, hero, "Info_Mod_Sylvio_AtStonehenge_03_01"); //Do bohatera) Cóz, wyglada na to, ze musze wziac klucz. Nie powinienes sie ze mna balaganic.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Sylvio_Pickpocket (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_Pickpocket_Condition;
	information	= Info_Mod_Sylvio_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Sylvio_Pickpocket_Condition()
{
	C_Beklauen	(129, ItMi_Gold, 65);
};

FUNC VOID Info_Mod_Sylvio_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);

	Info_AddChoice	(Info_Mod_Sylvio_Pickpocket, DIALOG_BACK, Info_Mod_Sylvio_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sylvio_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sylvio_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sylvio_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);
};

FUNC VOID Info_Mod_Sylvio_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);

		Info_AddChoice	(Info_Mod_Sylvio_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sylvio_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sylvio_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sylvio_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sylvio_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sylvio_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sylvio_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sylvio_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sylvio_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sylvio_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sylvio_EXIT (C_INFO)
{
	npc		= Mod_797_SLD_Sylvio_MT;
	nr		= 1;
	condition	= Info_Mod_Sylvio_EXIT_Condition;
	information	= Info_Mod_Sylvio_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sylvio_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sylvio_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
