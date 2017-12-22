INSTANCE Info_Mod_Heiler_Hi (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Hi_Condition;
	information	= Info_Mod_Heiler_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozecie mnie wyleczyc?";
};

FUNC INT Info_Mod_Heiler_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Heiler_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Hi_15_00"); //Czy mozecie mnie wyleczyc?
	AI_Output(self, hero, "Info_Mod_Heiler_Hi_10_01"); //Moge, za oplata.
};

INSTANCE Info_Mod_Heiler_Endres (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Endres_Condition;
	information	= Info_Mod_Heiler_Endres_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co spowodowalo smierc Endresa?";
};

FUNC INT Info_Mod_Heiler_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Endres_15_00"); //Co spowodowalo smierc Endresa?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres_10_01"); //Nie jestem do konca pewna, ale moze..... Tak, ale moze to byc pierwszy otwór w tylnej czesci glowy.
	AI_Output(hero, self, "Info_Mod_Heiler_Endres_15_02"); //Jakiego rodzaju bron zostala uzyta do uderzenia w rane?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres_10_03"); //Z zakrzywionym ostrzem. Wyglada mi duzo jak kosa lub piknik.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres_10_04"); //Otwór nie jest wbijany pionowo w tyl glowy, lecz lekko wygiety.
	AI_Output(hero, self, "Info_Mod_Heiler_Endres_15_05"); //To musialo to byc morderstwo?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres_10_06"); //Bez wzgledu na to, czy chodzi o morderstwo, zabójstwo czy wypadek - zostal on wyraznie spowodowany przez kogos innego.
	AI_Output(hero, self, "Info_Mod_Heiler_Endres_15_07"); //Dziekujemy za informacje.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Istnieja dalsze dowody na to, ze jeden z górników jest odpowiedzialny za smierc Endre' a - zgieta bron.");
};

INSTANCE Info_Mod_Heiler_Endres02 (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Endres02_Condition;
	information	= Info_Mod_Heiler_Endres02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes podejrzany o wymuszenie.";
};

FUNC INT Info_Mod_Heiler_Endres02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leonhard_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Endres02_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Endres02_15_00"); //Jestes podejrzany o wymuszenie.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres02_10_01"); //Co robisz? Kampania wymazujaca?
	AI_Output(hero, self, "Info_Mod_Heiler_Endres02_15_02"); //Czy moge zadac kilka pytan?
	AI_Output(hero, self, "Info_Mod_Heiler_Endres02_15_03"); //Jesli jestes niewinny, nie masz nic do zmartwienia.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres02_10_04"); //Zacznij juz teraz.
};

INSTANCE Info_Mod_Heiler_Endres03 (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Endres03_Condition;
	information	= Info_Mod_Heiler_Endres03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co robilas w czasie smierci Endresa?";
};

FUNC INT Info_Mod_Heiler_Endres03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Endres03_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Endres03_15_00"); //Co robilas w czasie smierci Endresa?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres03_10_01"); //Bylem tutaj w domu opiekujac sie swoim pacjentem.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres03_10_02"); //Nie opuscilem domu przez caly dzien.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Leczacy twierdzi, ze opiekowal sie swoim pacjentem przez caly dzien w domu.");
};

INSTANCE Info_Mod_Heiler_Endres04 (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Endres04_Condition;
	information	= Info_Mod_Heiler_Endres04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co wiesz o zwiazku miedzy Endresem a jego zona?";
};

FUNC INT Info_Mod_Heiler_Endres04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Endres04_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Endres04_15_00"); //Co wiesz o zwiazku miedzy Endresem a jego zona?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres04_10_01"); //Ha, Juliana byla niezadowolona z jej zwiazku. Ona oddawala mu czesc, a on zostal wchloniety w jego pracy.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Mówi sie, ze milosc Juliany do Endresa nie zostala przez niego w pelni odwzajemniona.");
};

INSTANCE Info_Mod_Heiler_Endres05 (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Endres05_Condition;
	information	= Info_Mod_Heiler_Endres05_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co wiesz o zwiazku pomiedzy Endres i Wendel?";
};

FUNC INT Info_Mod_Heiler_Endres05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Endres05_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Endres05_15_00"); //Co wiesz o zwiazku pomiedzy Endres i Wendel?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres05_10_01"); //Oni mieli dobre relacje, jak sadze. Endres byl bozkiem Wendla.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Wedlug uzdrowiciela, miedzy Endresem a Wendel nigdy nie bylo problemu.");
};

INSTANCE Info_Mod_Heiler_Endres06 (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Endres06_Condition;
	information	= Info_Mod_Heiler_Endres06_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jest pan powaznie podejrzany.";
};

FUNC INT Info_Mod_Heiler_Endres06_Condition()
{
	if (Mod_EndresIndizien == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Endres06_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Endres06_15_00"); //Jest pan powaznie podejrzany.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_01"); //(nieimpregnowane) Interesujace.
	AI_Output(hero, self, "Info_Mod_Heiler_Endres06_15_02"); //Chce przeszukac dom.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_03"); //Niestety, nie bedzie to mozliwe.
	AI_Output(hero, self, "Info_Mod_Heiler_Endres06_15_04"); //Dlaczego?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_05"); //Poniewaz nie pozwole na to.
	AI_Output(hero, self, "Info_Mod_Heiler_Endres06_15_06"); //Wtedy sedzia mi pozwoli. Bede z powrotem.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_07"); //A zatem wszystko w porzadku. Prosil pan o to. Wszyscy chcieliscie tego w ten sposób. Nie ruszaj sie!
	AI_Output(hero, self, "Info_Mod_Heiler_Endres06_15_08"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_09"); //Tak, zabilem Endresa. Uwodzilem Juliane, robilem z nia obscenicznosci.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_10"); //I nie zaluje. Kocham ja.

	AI_PlayAni  (self, "T_MAGRUN_2_HEASHOOT");
	AI_PlayAni  (self, "T_HEASHOT_2_STAND");

	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_11"); //Nie!
	AI_Output(hero, self, "Info_Mod_Heiler_Endres06_15_12"); //Przypuszczam, ze jest wyzsza sprawiedliwosc.
	AI_Output(self, hero, "Info_Mod_Heiler_Endres06_10_13"); //Nie jest to mozliwe!

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Lecznik udal sie po powrocie Endresa do Julian. Ale najwyrazniej to nie wystarczylo mu, wiec maz wyszedl z drogi. Och, milosc....");

	B_StartOtherRoutine	(self, "TOT");

	Info_ClearChoices	(Info_Mod_Heiler_Endres06);

	Info_AddChoice	(Info_Mod_Heiler_Endres06, "Bede mscic sie konczy!", Info_Mod_Heiler_Endres06_B);
	Info_AddChoice	(Info_Mod_Heiler_Endres06, "Bedziesz teraz zamkniety.", Info_Mod_Heiler_Endres06_A);
};

FUNC VOID Info_Mod_Heiler_Endres06_B()
{
	Info_ClearChoices	(Info_Mod_Heiler_Endres06);

	Mod_EndresIndizien = 3;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Heiler_Endres06_A()
{
	Info_ClearChoices	(Info_Mod_Heiler_Endres06);

	AI_StopProcessInfos	(self);

	Mod_EndresIndizien = 5;

	Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);
};

INSTANCE Info_Mod_Heiler_Heilen (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Heilen_Condition;
	information	= Info_Mod_Heiler_Heilen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Uzdrowic mnie (75 zl)";
};

FUNC INT Info_Mod_Heiler_Heilen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heiler_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heiler_Heilen_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Heilen_15_00"); //Uzdrowic mnie.

	if (Npc_HasItems(hero, ItMi_Gold) >= 75)
	{
		B_GiveInvItems	(hero, self, ItMi_Gold, 75);

		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Heiler_Heilen_10_01"); //Bez zlota, bez leczenia.
	};
};

INSTANCE Info_Mod_Heiler_WasGeht (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_WasGeht_Condition;
	information	= Info_Mod_Heiler_WasGeht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to sie dzieje?";
};

FUNC INT Info_Mod_Heiler_WasGeht_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Heiler_WasGeht_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_WasGeht_15_00"); //Jak to sie dzieje?
	AI_Output(self, hero, "Info_Mod_Heiler_WasGeht_10_01"); //Bez przerw biegalby plynnie, oh tak.
};

INSTANCE Info_Mod_Heiler_Freudenspender (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Freudenspender_Condition;
	information	= Info_Mod_Heiler_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Zródlo radosci dla relaksujacego wieczoru?";
};                       

FUNC INT Info_Mod_Heiler_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Heiler_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Heiler_Freudenspender_15_00"); //Zródlo radosci dla relaksujacego wieczoru?
	AI_Output(self, hero, "Info_Mod_Heiler_Freudenspender_10_01"); //Nie zly pomysl.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender += 1;
};

INSTANCE Info_Mod_Heiler_Pickpocket (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_Pickpocket_Condition;
	information	= Info_Mod_Heiler_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Heiler_Pickpocket_Condition()
{
	C_Beklauen	(53, ItPo_Health_Addon_04, 2);
};

FUNC VOID Info_Mod_Heiler_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);

	Info_AddChoice	(Info_Mod_Heiler_Pickpocket, DIALOG_BACK, Info_Mod_Heiler_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Heiler_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Heiler_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Heiler_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);
};

FUNC VOID Info_Mod_Heiler_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);

		Info_AddChoice	(Info_Mod_Heiler_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Heiler_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Heiler_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Heiler_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Heiler_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Heiler_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Heiler_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Heiler_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Heiler_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Heiler_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Heiler_EXIT (C_INFO)
{
	npc		= Mod_7476_OUT_Arzt_REL;
	nr		= 1;
	condition	= Info_Mod_Heiler_EXIT_Condition;
	information	= Info_Mod_Heiler_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Heiler_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Heiler_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
