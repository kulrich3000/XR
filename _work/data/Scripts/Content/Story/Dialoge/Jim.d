INSTANCE Info_Mod_Jim_Hi (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_Hi_Condition;
	information	= Info_Mod_Jim_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Jim_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jim_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Jim_Hi_18_00"); //Ja, Jim.
};

INSTANCE Info_Mod_Jim_WieStadt (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_WieStadt_Condition;
	information	= Info_Mod_Jim_WieStadt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak Ci sie podoba miasto?";
};

FUNC INT Info_Mod_Jim_WieStadt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jim_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_WieStadt_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_WieStadt_15_00"); //Jak Ci sie podoba miasto?
	AI_Output(self, hero, "Info_Mod_Jim_WieStadt_18_01"); //Jeszcze kilka tygodni temu Jim byl szczesliwy w Menschenstadt, ale teraz jest smutny.
};

INSTANCE Info_Mod_Jim_Traurig (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_Traurig_Condition;
	information	= Info_Mod_Jim_Traurig_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego jestes smutny?";
};

FUNC INT Info_Mod_Jim_Traurig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jim_WieStadt))
	&& (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_Traurig_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_Traurig_15_00"); //Dlaczego jestes smutny?
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_01"); //Menschenhäuptling kommen zu Jim und sagen: "Pracujesz teraz w kopalni Khoraty."
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_02"); //Aber Jim sagen: "Nie!"
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_03"); //Jim nie chcial pracowac jak jego bracia w Kopalni.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_04"); //Menschenhäuptling sagen: "Piekny, ale potem Jim nie dostanie wiecej przyjemnosci darczyncy, jesli nie pójdzie do Kopalni."
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_05"); //Jim lubi przyjemnosci darczynców, a szefowie lubia wiedziec.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_06"); //Jim wolalby jednak nie pracowac w brudnej kopalni. Od tego czasu Jim teskni za radoscia dawcy.
	AI_Output(hero, self, "Info_Mod_Jim_Traurig_15_07"); //Teraz bylby to dobry czas na pozbycie sie tego wszystkiego.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_08"); //Nie! Jim nie chce sie odstawic od piersi! Jim chce radosci darczyncy!
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_09"); //A Jim ma zamiar ja odzyskac.
	AI_Output(hero, self, "Info_Mod_Jim_Traurig_15_10"); //Teraz jestem ciekawy.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_11"); //Jim buduje ludzki szef amulet chroniacy przed duchami.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_12"); //Wtedy ludzki szef tresci i ponownie kochac Jim i dac darczyncy Jim radosci.
	AI_Output(hero, self, "Info_Mod_Jim_Traurig_15_13"); //I to ma dzialac?
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_14"); //Jim bardzo dobry rzemieslnik, ludzie nie musza sie bac. Jim zachwycil wielkiego orka szefa Orkiestry Grshki amuletem duchowym.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_18_15"); //Aby jednak spróbowac amuletu, Jim musi znalezc dusze duchów.

	Info_ClearChoices	(Info_Mod_Jim_Traurig);

	Info_AddChoice	(Info_Mod_Jim_Traurig, "Szukaj zabawy!", Info_Mod_Jim_Traurig_B);
	Info_AddChoice	(Info_Mod_Jim_Traurig, "Chcesz, abym sobie z tym poradzil?", Info_Mod_Jim_Traurig_A);
};

FUNC VOID Info_Mod_Jim_Traurig_B()
{
	AI_Output(hero, self, "Info_Mod_Jim_Traurig_B_15_00"); //Szukaj zabawy!

	Info_ClearChoices	(Info_Mod_Jim_Traurig);
};

FUNC VOID Info_Mod_Jim_Traurig_A()
{
	AI_Output(hero, self, "Info_Mod_Jim_Traurig_A_15_00"); //Chcesz, abym sobie z tym poradzil?
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_A_18_01"); //Jim szczesliwy, gdy ludzie szukaja duchowej duszy.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_A_18_02"); //Spogladajac na cien, gdy jest ciemno, na cmentarz mezczyzny w poblizu Hofstaat-Pass.
	AI_Output(self, hero, "Info_Mod_Jim_Traurig_A_18_03"); //Byc moze wokól panuje dusza.

	B_GiveInvItems	(self, hero, ItAm_Geisteramulett, 1);

	AI_Output(hero, self, "Info_Mod_Jim_Traurig_A_15_04"); //Wszystko jasne. Zobacze.

	Log_CreateTopic	(TOPIC_MOD_JIM_SCHUTZ, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JIM_SCHUTZ, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JIM_SCHUTZ, "Orc Jim w Khoracie nie jest juz dawca radosci od Anselm, poniewaz odmówil pracy w kopalni. Teraz chce dac Anselmowi amulet duchowy, aby uspokoic go, ale nie zostal jeszcze przetestowany. Na pólnocny wschód od Hofstaat-Pass znajduje sie cmentarz, na którym dusza duchowa moze byc noca.");

	Mod_Jim_Schutz = 1;

	Info_ClearChoices	(Info_Mod_Jim_Traurig);
};

INSTANCE Info_Mod_Jim_Schutzbeduerftig (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_Schutzbeduerftig_Condition;
	information	= Info_Mod_Jim_Schutzbeduerftig_Info;
	permanent	= 0;
	important	= 0;
	description	= "Spróbowalem waszego amuletu. To zadzialalo doskonale.";
};

FUNC INT Info_Mod_Jim_Schutzbeduerftig_Condition()
{
	if (Mod_Jim_Schutz == 2)
	&& (Npc_HasItems(hero, ItAm_Geisteramulett) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_Schutzbeduerftig_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_Schutzbeduerftig_15_00"); //Spróbowalem waszego amuletu. To zadzialalo doskonale.

	B_GiveInvItems	(hero, self, ItAm_Geisteramulett, 1);

	AI_Output(self, hero, "Info_Mod_Jim_Schutzbeduerftig_18_01"); //Jim radosny i wdzieczny. Ludzie przyjmuja to zloto jako podziekowanie od Jima.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	AI_Output(hero, self, "Info_Mod_Jim_Schutzbeduerftig_15_02"); //Czy dasz juz Anselmowi amulet?
	AI_Output(self, hero, "Info_Mod_Jim_Schutzbeduerftig_18_03"); //Tak! Jim nie moze sie doczekac, az darczynca odzyska przyjemnosc.
	AI_Output(hero, self, "Info_Mod_Jim_Schutzbeduerftig_15_04"); //Powodzenia.

	B_SetTopicStatus	(TOPIC_MOD_JIM_SCHUTZ, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;

	Mod_Jim_AnselmDay = Wld_GetDay();
};

INSTANCE Info_Mod_Jim_SpenderFreuden (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_SpenderFreuden_Condition;
	information	= Info_Mod_Jim_SpenderFreuden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy odniesliscie sukcesy z amuletem?";
};

FUNC INT Info_Mod_Jim_SpenderFreuden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jim_Schutzbeduerftig))
	&& (Wld_GetDay() > Mod_Jim_AnselmDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_SpenderFreuden_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden_15_00"); //Czy odniesliscie sukcesy z amuletem?
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden_18_01"); //Rozpad) zabrac szefów ludzkich, ale nie oddawac radosci darczyncom.
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden_18_02"); //Powiedzmy, amulet jest ladny i dobrze pasuje do ubran.

	Info_ClearChoices	(Info_Mod_Jim_SpenderFreuden);

	Info_AddChoice	(Info_Mod_Jim_SpenderFreuden, "Prosze mi wierzyc, lepiej w ten sposób.", Info_Mod_Jim_SpenderFreuden_B);
	Info_AddChoice	(Info_Mod_Jim_SpenderFreuden, "Czy znajde dla Ciebie troche przysmaku?", Info_Mod_Jim_SpenderFreuden_A);
};

FUNC VOID Info_Mod_Jim_SpenderFreuden_B()
{
	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden_B_15_00"); //Prosze mi wierzyc, lepiej w ten sposób.
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden_B_18_01"); //Ale teraz Jim jest bardzo smutny.

	Info_ClearChoices	(Info_Mod_Jim_SpenderFreuden);
};

FUNC VOID Info_Mod_Jim_SpenderFreuden_A()
{
	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden_A_15_00"); //Czy znajde dla Ciebie troche przysmaku?
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden_A_18_01"); //Jim stanalby w wielkim dlugu czlowieka, jesli przyniesc darczyncy przyjemnosci.
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden_A_18_02"); //Ludzcy przywódcy zawsze jada do obozu na pasie, gdzie ludzie spia.
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden_A_18_03"); //Musi istniec duzy zapas przyjemnosci darczynców. Ale straznik nie opuszcza Jima w obozie domowym.
	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden_A_15_04"); //Wkrótce wróce.

	Mod_Jim_Freudenspender = 1;

	Log_CreateTopic	(TOPIC_MOD_JIM_FREUDENSPENDER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JIM_FREUDENSPENDER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JIM_FREUDENSPENDER, "Jim jest zdewastowany, poniewaz Anselm z entuzjazmem nie przyjal daru. Obiecalem mu, ze przyniose mu przysmaki z magazynu przy ulicy mieszkalnej Khoraty.");

	Wld_InsertItem	(ItMi_FreudenspenderPaket, "FP_ITEM_JIM_DROGEN");

	Info_ClearChoices	(Info_Mod_Jim_SpenderFreuden);
};

INSTANCE Info_Mod_Jim_SpenderFreuden2 (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_SpenderFreuden2_Condition;
	information	= Info_Mod_Jim_SpenderFreuden2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ten pakiet powinien wystarczyc na teraz, prawda?";
};

FUNC INT Info_Mod_Jim_SpenderFreuden2_Condition()
{
	if (Mod_Jim_Freudenspender == 3)
	&& (Npc_HasItems(hero, ItMi_FreudenspenderPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_SpenderFreuden2_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden2_15_00"); //Ten pakiet powinien wystarczyc na teraz, prawda?

	B_GiveInvItems	(hero, self, ItMi_FreudenspenderPaket, 1);

	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden2_18_01"); //Oh, Jim Mensch bardzo wdzieczny. Dzieki szkoleniom w Metzger Jim zaoszczedzil sporo pieniedzy.
	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden2_18_02"); //Jim chce dzielic sie z ludzmi.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden2_15_03"); //Dzieki. Teraz nalezy zachowac ostroznosc.

	B_SetTopicStatus	(TOPIC_MOD_JIM_FREUDENSPENDER, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;

	Mod_Jim_Freudenspender = 4;

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Jim_SpenderFreuden3 (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_SpenderFreuden3_Condition;
	information	= Info_Mod_Jim_SpenderFreuden3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tu cos w rodzaju radosci....";
};

FUNC INT Info_Mod_Jim_SpenderFreuden3_Condition()
{
	if (Mod_Jim_Freudenspender < 4)
	&& (Mod_Jim_Freudenspender > 0)
	&& (Npc_HasItems(hero, ItPo_FreudenspenderSuppe) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_SpenderFreuden3_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_SpenderFreuden3_15_00"); //Mam tu cos w rodzaju radosci....

	B_GiveInvItems	(hero, self, ItPo_FreudenspenderSuppe, 1);

	AI_Output(self, hero, "Info_Mod_Jim_SpenderFreuden3_18_01"); //Jim musi spróbowac. Nie pachna dobrze, ale moga smakowac dobrze.

	AI_StopProcessInfos	(self);

	Mod_Jim_Freudenspender = 5;
};

INSTANCE Info_Mod_Jim_Name (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_Name_Condition;
	information	= Info_Mod_Jim_Name_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nietypowa nazwa orka.";
};

FUNC INT Info_Mod_Jim_Name_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jim_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jim_Name_Info()
{
	AI_Output(hero, self, "Info_Mod_Jim_Name_15_00"); //Nietypowa nazwa orka.
	AI_Output(self, hero, "Info_Mod_Jim_Name_18_01"); //Jim Nazwisko ludzi. Jim nie zna nazwy orków.
};

INSTANCE Info_Mod_Jim_Pickpocket (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_Pickpocket_Condition;
	information	= Info_Mod_Jim_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Jim_Pickpocket_Condition()
{
	C_Beklauen	(70, ItMi_Orkstatuette, 1);
};

FUNC VOID Info_Mod_Jim_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jim_Pickpocket);

	Info_AddChoice	(Info_Mod_Jim_Pickpocket, DIALOG_BACK, Info_Mod_Jim_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jim_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jim_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jim_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jim_Pickpocket);
};

FUNC VOID Info_Mod_Jim_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jim_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jim_Pickpocket);

		Info_AddChoice	(Info_Mod_Jim_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jim_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jim_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jim_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jim_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jim_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jim_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jim_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jim_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jim_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jim_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jim_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jim_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jim_EXIT (C_INFO)
{
	npc		= Mod_10040_Orc_Jim_REL;
	nr		= 1;
	condition	= Info_Mod_Jim_EXIT_Condition;
	information	= Info_Mod_Jim_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jim_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jim_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
