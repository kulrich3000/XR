INSTANCE Info_Mod_Orun_Hi (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_Hi_Condition;
	information	= Info_Mod_Orun_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Orun_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Cyrco_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orun_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Orun_Hi_12_01"); //Nazywam sie Baal Orun i zajmuje sie produkcja chwastów bagiennych.
};

INSTANCE Info_Mod_Orun_GotoTempel (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_GotoTempel_Condition;
	information	= Info_Mod_Orun_GotoTempel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestescie oczekiwani w swiatyni.";
};

FUNC INT Info_Mod_Orun_GotoTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_KarrasDa))
	&& ((Npc_KnowsInfo(hero, Info_Mod_Orun_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Hi)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orun_GotoTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Orun_GotoTempel_15_00"); //Jestescie oczekiwani w swiatyni.

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "TEMPEL");
};

INSTANCE Info_Mod_Orun_Cyrco (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_Cyrco_Condition;
	information	= Info_Mod_Orun_Cyrco_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobre popoludnie, wielki mistrz.";
};

FUNC INT Info_Mod_Orun_Cyrco_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Hi))
	&& (Npc_HasItems(hero, ItWr_MagicPaper) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orun_Cyrco_Info()
{
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_00"); //Dobre popoludnie, wielki mistrz.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_12_01"); //Hu?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_02"); //Glosne) Dobre popoludnie.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_12_03"); //Tak. Ja równiez sie zgadzam. Czego chcesz?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_04"); //Pochodze z Cyrco, druidu.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_12_05"); //Tak. Znam go równiez. Jak on postepuje?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_06"); //Dobre. Oto jego dokument. Do-ku-ment.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_12_07"); //Dokument? Prosze mi to dac.

	B_GiveInvItems	(hero, self, ItWr_MagicPaper, 1);

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_12_08"); //Hmm..... czary potezna magia..... czarna magia.... zly magia....
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_09"); //A co? Co to jest?
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_12_10"); //RUHE!
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_12_11"); //Hm.... Widze cos..... Uwaga.... jaskinia....... bardzo mocna magia.... Obcy?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_12"); //Tak Mistrz?
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_12_13"); //Obcy!
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_14"); //Tutaj!
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_12_15"); //Och, widze. Sluchaj: Mialem wizje. Widzialem ja w poblizu jaskini otoczonej silna czarna magia. Nie poszedlbym tam sam.
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_16"); //I na pewno?
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_12_17"); //Tak. Jestem tego pewien.
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_18"); //Dziekuje.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_12_19"); //Co Anke?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_20"); //Dziekuje!

	Wld_InsertNpc	(Mod_7426_NOV_Novize_MT, "WP_MT_JAEGERLAGER_04");
	Wld_InsertNpc	(Mod_7427_BDT_Bandit_MT, "WP_MT_JAEGERLAGER_04");
	Wld_InsertNpc	(Mod_7428_BDT_Bandit_MT, "WP_MT_JAEGERLAGER_04");
	Wld_InsertNpc	(Mod_7429_BDT_Bandit_MT, "WP_MT_JAEGERLAGER_04");
	Wld_InsertNpc	(Mod_7430_BDT_Bandit_MT, "WP_MT_JAEGERLAGER_04");

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Baal Orun mial wizje jaskini w poblizu nuty otoczonej silna czarna magia. To powinno zainteresowac Cyrco.");
};

INSTANCE Info_Mod_Orun_Woher (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_Woher_Condition;
	information	= Info_Mod_Orun_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak dotarles do sekty?";
};

FUNC INT Info_Mod_Orun_Woher_Condition()
{
	if (Guru_Dabei == 1)
	|| (Templer_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orun_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Orun_Woher_15_00"); //Jak dotarles do sekty?
	AI_Output(self, hero, "Info_Mod_Orun_Woher_12_01"); //Przed wrzuceniem do kolonii bylem zolnierzem milicji Khorinis.
	AI_Output(self, hero, "Info_Mod_Orun_Woher_12_02"); //Jednak po tym jak przypadkowo ranilem jakiegos obywatela podczas operacji, zostalem wrzucony do kolonii.
	AI_Output(self, hero, "Info_Mod_Orun_Woher_12_03"); //Poczatkowo dolaczylem do ludu Gomeza i szybko stalem sie wplywowym cieniem, ale kiedy uslyszalem o obozie bagiennym, zostalem do niego przyciagniety.
};

INSTANCE Info_Mod_Orun_Pickpocket (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_Pickpocket_Condition;
	information	= Info_Mod_Orun_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Orun_Pickpocket_Condition()
{
	C_Beklauen	(143, ItMi_Gold, 66);
};

FUNC VOID Info_Mod_Orun_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Orun_Pickpocket);

	Info_AddChoice	(Info_Mod_Orun_Pickpocket, DIALOG_BACK, Info_Mod_Orun_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Orun_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Orun_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Orun_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Orun_Pickpocket);
};

FUNC VOID Info_Mod_Orun_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Orun_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Orun_Pickpocket);

		Info_AddChoice	(Info_Mod_Orun_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Orun_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Orun_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Orun_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Orun_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Orun_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Orun_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Orun_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Orun_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Orun_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Orun_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Orun_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Orun_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Orun_EXIT (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_EXIT_Condition;
	information	= Info_Mod_Orun_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Orun_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Orun_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
