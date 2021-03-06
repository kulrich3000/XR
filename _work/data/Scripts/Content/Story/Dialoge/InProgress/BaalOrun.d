INSTANCE Info_Mod_Orun_Hi (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_Hi_Condition;
	information	= Info_Mod_Orun_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer bist du?";
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

	AI_Output(self, hero, "Info_Mod_Orun_Hi_03_01"); //Ich bin Baal Orun und k�mmere mich um die Herstellung der Sumpfkrautst�ngel aus Sumpfkraut.
};

INSTANCE Info_Mod_Orun_GotoTempel (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_GotoTempel_Condition;
	information	= Info_Mod_Orun_GotoTempel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du wirst am Tempel erwartet.";
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
	AI_Output(hero, self, "Info_Mod_Orun_GotoTempel_15_00"); //Du wirst am Tempel erwartet.

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
	description	= "Guten Tag, gro�er Meister.";
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
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_00"); //Guten Tag, gro�er Meister.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_01"); //H�?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_02"); //(laut) Guten Tag.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_03"); //Ja. Finde ich auch. Was willst du?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_04"); //Ich komme von Cyrco, dem Druiden.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_05"); //Ja. Den kenne ich auch. Wie geht's dem?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_06"); //Gut. Hier sein Dokument. Do-ku-ment.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_07"); //Dokument? Gib her.

	B_GiveInvItems	(hero, self, ItWr_MagicPaper, 1);

	B_UseFakeScroll ();

	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_08"); //Hmm ... Magie ... starke Magie ... schwarze Magie ... b�se Magie ...
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_09"); //Und? Was ist?
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_10"); //RUHE!
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_11"); //Hm ... Ich sehe was ... Ein Zettel ... eine H�hle ... sehr starke Magie ... Fremder?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_12"); //Ja Meister?
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_13"); //Fremder!
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_14"); //Hier!
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_15"); //Ach so. H�re: Ich hatte eine Vision. Ich sah diesen Zettel nahe einer H�hle, umgeben von starker schwarzer Magie. Da w�rde ich nicht allein hingehen.
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_16"); //Und du bist sicher?
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_17"); //Ja. Ganz sicher.
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_18"); //Dann sag ich mal danke.
	AI_Output(self, hero, "Info_Mod_Orun_Cyrco_03_19"); //Welche Anke?
	AI_Output(hero, self, "Info_Mod_Orun_Cyrco_15_20"); //Dankeee!

	Wld_InsertNpc	(Mod_7426_NOV_Novize_MT, "WP_MT_JAEGERLAGER_04");
	Wld_InsertNpc	(Mod_7427_BDT_Bandit_MT, "WP_MT_JAEGERLAGER_04");
	Wld_InsertNpc	(Mod_7428_BDT_Bandit_MT, "WP_MT_JAEGERLAGER_04");
	Wld_InsertNpc	(Mod_7429_BDT_Bandit_MT, "WP_MT_JAEGERLAGER_04");
	Wld_InsertNpc	(Mod_7430_BDT_Bandit_MT, "WP_MT_JAEGERLAGER_04");

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Baal Orun hatte eine Vision von einer H�hle, die dem Zettel nahe war, umgeben von starker schwarzer Magie. Das sollte Cyrco interessieren.");
};

INSTANCE Info_Mod_Orun_Woher (C_INFO)
{
	npc		= Mod_2007_GUR_BaalOrun_MT;
	nr		= 1;
	condition	= Info_Mod_Orun_Woher_Condition;
	information	= Info_Mod_Orun_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wie bist du zur Sekte gekommen?";
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
	AI_Output(hero, self, "Info_Mod_Orun_Woher_15_00"); //Wie bist du zur Sekte gekommen?
	AI_Output(self, hero, "Info_Mod_Orun_Woher_03_01"); //Bevor man mich in die Kolonie geworfen hat war ich Milizsoldat von Khorinis.
	AI_Output(self, hero, "Info_Mod_Orun_Woher_03_02"); //Doch nachdem ich einen B�rger bei einem Einsatz versehentlich verletzt hatte, wurde ich in die Kolonie geworfen.
	AI_Output(self, hero, "Info_Mod_Orun_Woher_03_03"); //Zuerst habe ich mich Gomez' Leuten angeschlossen und war schon bald ein einflussreicher Schatten, aber als ich vom Sumpflager erfuhr, zog es mich dorthin.
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