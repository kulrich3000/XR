INSTANCE Info_Mod_Gaan_Hi (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_Hi_Condition;
	information	= Info_Mod_Gaan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Gaan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gaan_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Gaan_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Gaan_Hi_07_01"); //Hi.
};

INSTANCE Info_Mod_Gaan_Dragomir (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_Dragomir_Condition;
	information	= Info_Mod_Gaan_Dragomir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dragomir mnie poslal.";
};

FUNC INT Info_Mod_Gaan_Dragomir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gaan_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Mitmachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gaan_Dragomir_Info()
{
	AI_Output(hero, self, "Info_Mod_Gaan_Dragomir_15_00"); //Dragomir mnie poslal.
	AI_Output(self, hero, "Info_Mod_Gaan_Dragomir_07_01"); //Przypuszczam, ze chce wiedziec, co sie dowiedzialem?
	AI_Output(hero, self, "Info_Mod_Gaan_Dragomir_15_02"); //Prawo.
	AI_Output(self, hero, "Info_Mod_Gaan_Dragomir_07_03"); //Do tej pory nie widzialem jeszcze niczego blyskotliwego. Jest to równiez piekny teren lowiecki i masz doskonaly widok na przelecz z niemal kazdego punktu.
	AI_Output(self, hero, "Info_Mod_Gaan_Dragomir_07_04"); //Przypomnialem sobie tylko, ze wczoraj wieczorem zobaczylem przez nia paczke luznego pucharu.
	AI_Output(hero, self, "Info_Mod_Gaan_Dragomir_15_05"); //I co jest w nim tak szczególnego?
	AI_Output(self, hero, "Info_Mod_Gaan_Dragomir_07_06"); //Nic.

	B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Gaan mówi, ze przelecz jest dobrym polowaniem.");
};

INSTANCE Info_Mod_Gaan_Untier (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_Untier_Condition;
	information	= Info_Mod_Gaan_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "A w ostatnich dniach spotkalo sie z jakas dzika przyroda?";
};

FUNC INT Info_Mod_Gaan_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gaan_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gaan_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Gaan_Untier_15_00"); //A w ostatnich dniach spotkalo sie z jakas dzika przyroda?
	AI_Output(self, hero, "Info_Mod_Gaan_Untier_07_01"); //Nie, po prostu troche petli i zwykle.
};

INSTANCE Info_Mod_Gaan_Ornament (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_Ornament_Condition;
	information	= Info_Mod_Gaan_Ornament_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gaan_Ornament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gaan_Ornament_Info()
{
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_00"); //Damn to, ide na wszystkie klopoty, a potem przychodzi ta paczka petli....
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_01"); //Co sie stalo?
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_02"); //Oh, to prawdziwy udój myszy.
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_03"); //Dopiero niedawno zastrzelilem kilka padlinozerców, aby dostac ich mieso, a potem pojawiaja sie paznokcie......
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_04"); //Przelecz nie wydaje sie byc niegrozna, gdy jest tyle zabawy.
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_05"); //Tak, to prawda, ze pewna nieostroznosc kosztowala mu juz zycie.
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_06"); //Aha.... No cóz, w kazdym razie szukam kamiennego ornamentu.
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_07"); //Moze byc gdzies w poblizu przeleczy. Czy zdarzylo Ci sie zobaczyc jedna z nich?
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_08"); //Cóz, jestes dla mnie dobry. Przelecz jest pelna skal.
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_09"); //Jest to równiez powód, dla którego padliny wciaz powracaja z powrotem......
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_10"); //Dlaczego tak jest? Czego szukaja szczotkarze z kamieniami?
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_11"); //Oni jedza.
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_12"); //Co?
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_13"); //Dla ich trawienia, bo zle gryzi dziobem.
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_14"); //Kamienie w zoladku pomagaja im rozdrabniac jedzenie.
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_15"); //Ach, bardzo ciekawe....
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_16"); //Ktos zainteresowal sie fauna, to milo.
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_07_17"); //Cóz, teraz wiesz, czego szukac w przepustce.
	AI_Output(hero, self, "Info_Mod_Gaan_Ornament_15_18"); //mysle, ze tak....

	Wld_InsertNpc	(Snapper_Gaan, "NW_PASS_06");
	Wld_InsertNpc	(Snapper_Gaan, "NW_PASS_06");
	Wld_InsertNpc	(Snapper_Gaan, "NW_PASS_06");

	Wld_InsertNpc	(Scavenger_Gaan_01, "NW_PASS_06");
	Wld_InsertNpc	(Scavenger_Gaan_02, "NW_PASS_06");
	Wld_InsertNpc	(Scavenger_Gaan_03, "NW_PASS_06");
	Wld_InsertNpc	(Scavenger_Gaan, "NW_PASS_06");

	B_KillNpc	(Scavenger_Gaan_01);
	B_KillNpc	(Scavenger_Gaan_02);
	B_KillNpc	(Scavenger_Gaan_03);
	B_KillNpc	(Scavenger_Gaan);
};

INSTANCE Info_Mod_Gaan_Ornament_02 (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_Ornament_02_Condition;
	information	= Info_Mod_Gaan_Ornament_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gaan_Ornament_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gaan_Ornament))
	&& (Mod_GaanSnapperOrni == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gaan_Ornament_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Gaan_Ornament_02_07_00"); //Czysta wydajnosc. Nadal moge dostac mieso.

	AI_GotoNpc	(self, Scavenger_Gaan);

	AI_PlayAni	(self, "T_PLUNDER");


	if (Npc_HasItems(Scavenger_Gaan, ItMi_Ornament_Heiler) == 1)
	{
		AI_TurnToNpc	(self, hero);

		AI_Output(self, hero, "Info_Mod_Gaan_Ornament_02_07_01"); //Cóz, co znalazlem w zoladku tego padlinozercy. Kamienny ornament!
		AI_Output(hero, self, "Info_Mod_Gaan_Ornament_02_15_02"); //Co? Dokladnie to, czego szukalem....
		AI_Output(self, hero, "Info_Mod_Gaan_Ornament_02_07_03"); //Wez to tutaj.

		B_GiveInvItems	(self, hero, ItMi_Ornament_Heiler, 1);
		Npc_RemoveInvItems	(Scavenger_Gaan, ItMi_Ornament_Heiler, 1);

		AI_Output(self, hero, "Info_Mod_Gaan_Ornament_02_07_04"); //Pomógles mi dostac sie do ciala i nie trzeba mówic, ze podaje ci kawalek kamienia. Do zobaczenia dookola.
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PRESTART");
};

INSTANCE Info_Mod_Gaan_Pickpocket (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_Pickpocket_Condition;
	information	= Info_Mod_Gaan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Gaan_Pickpocket_Condition()
{
	C_Beklauen	(77, ItAt_Teeth, 6);
};

FUNC VOID Info_Mod_Gaan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);

	Info_AddChoice	(Info_Mod_Gaan_Pickpocket, DIALOG_BACK, Info_Mod_Gaan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gaan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gaan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gaan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);
};

FUNC VOID Info_Mod_Gaan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);

		Info_AddChoice	(Info_Mod_Gaan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gaan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gaan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gaan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gaan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gaan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gaan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gaan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gaan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gaan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gaan_EXIT (C_INFO)
{
	npc		= Mod_763_NONE_Gaan_NW;
	nr		= 1;
	condition	= Info_Mod_Gaan_EXIT_Condition;
	information	= Info_Mod_Gaan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gaan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gaan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
