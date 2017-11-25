INSTANCE Info_Mod_Sekob_Hi (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_Hi_Condition;
	information	= Info_Mod_Sekob_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Sekob_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sekob_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Sekob_Hi_01_01"); //Jestem Sekobem, jestem wlascicielem tego gospodarstwa. Czego od mnie oczekujesz?
};

INSTANCE Info_Mod_Sekob_Daemonisch (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_Daemonisch_Condition;
	information	= Info_Mod_Sekob_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sekob_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sekob_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Sekob_Daemonisch_01_00"); //Spedzilem dwa fucking miesieczne pensje na siebie i sluge w tawernie.
	AI_Output(self, hero, "Info_Mod_Sekob_Daemonisch_01_01"); //Dlaczego nikt mnie nie powstrzymal!
};

INSTANCE Info_Mod_Sekob_Untier (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_Untier_Condition;
	information	= Info_Mod_Sekob_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy zdarzylo Ci sie spotkac niezwyklego drapieznika na farmie w ostatnich dniach?";
};

FUNC INT Info_Mod_Sekob_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sekob_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sekob_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Sekob_Untier_15_00"); //Czy zdarzylo Ci sie spotkac niezwyklego drapieznika na farmie w ostatnich dniach?
	AI_Output(self, hero, "Info_Mod_Sekob_Untier_01_01"); //Niepowtarzalne drapiezniki! Mam rózne problemy.
	AI_Output(self, hero, "Info_Mod_Sekob_Untier_01_02"); //Te zwariowane nieumarle osoby niedawno wyszly z grobów i niebezpiecznie zblizyly sie do moich zagród.
	AI_Output(self, hero, "Info_Mod_Sekob_Untier_01_03"); //Noca nie moge miec otwartego oka, poniewaz obawiam sie, ze w pewnym momencie moga wejsc do mojej sypialni...
	AI_Output(hero, self, "Info_Mod_Sekob_Untier_15_04"); //Tak, ale.....
	AI_Output(self, hero, "Info_Mod_Sekob_Untier_01_05"); //Jesli szukasz gry, zapytaj Balthasara. Mówil o jakiejs bestii.
	AI_Output(self, hero, "Info_Mod_Sekob_Untier_01_06"); //Ha, nie daj mi sie smiac. Prawdopodobnie tylko szczur od stodoly....

	Wld_InsertNpc	(Zombie_AtSekobsHof_01, "FP_ROAM_SEKOBSZOMBIE_01");
	Wld_InsertNpc	(Zombie_AtSekobsHof_02, "FP_ROAM_SEKOBSZOMBIE_02");
};

INSTANCE Info_Mod_Sekob_ZombiesTot (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_ZombiesTot_Condition;
	information	= Info_Mod_Sekob_ZombiesTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Z nieumarlym rozwiazalem problem.";
};

FUNC INT Info_Mod_Sekob_ZombiesTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sekob_Untier))
	&& (Npc_IsDead(Zombie_AtSekobsHof_01))
	&& (Npc_IsDead(Zombie_AtSekobsHof_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sekob_ZombiesTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Sekob_ZombiesTot_15_00"); //Z nieumarlym rozwiazalem problem.
	AI_Output(self, hero, "Info_Mod_Sekob_ZombiesTot_01_01"); //Piekny, wtedy bede mógl znów spac spokojnie.
	AI_Output(hero, self, "Info_Mod_Sekob_ZombiesTot_15_02"); //Nie tak szybko. Ile wynosi Twój spokojny sen?
	AI_Output(self, hero, "Info_Mod_Sekob_ZombiesTot_01_03"); //Dobrze, oto 50 zlotych monet.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Sekob_Unheil (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_Unheil_Condition;
	information	= Info_Mod_Sekob_Unheil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy ostatnio zdarzylo Ci sie w gospodarstwie cos dziwnego?";
};

FUNC INT Info_Mod_Sekob_Unheil_Condition()
{
	if (Mod_WM_Boeden == 14)
	|| (Mod_WM_Boeden == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sekob_Unheil_Info()
{
	AI_Output(hero, self, "Info_Mod_Sekob_Unheil_15_00"); //Czy ostatnio zdarzylo Ci sie w gospodarstwie cos dziwnego?
	AI_Output(self, hero, "Info_Mod_Sekob_Unheil_01_01"); //Co? Próbujesz mnie oszukac! Poscigam cie na cmentarz za nieumarla paczke. Wyjdzcie stad z piekla!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Sekob_Bauer (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_Bauer_Condition;
	information	= Info_Mod_Sekob_Bauer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cokolwiek tu zrobic?";
};

FUNC INT Info_Mod_Sekob_Bauer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sekob_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sekob_Bauer_Info()
{
	AI_Output(hero, self, "Info_Mod_Sekob_Bauer_15_00"); //Cokolwiek tu zrobic?
	AI_Output(self, hero, "Info_Mod_Sekob_Bauer_01_01"); //Jesli chcesz sie przydac, porozmawiaj z Balthazar.
	AI_Output(self, hero, "Info_Mod_Sekob_Bauer_01_02"); //Prawdopodobnie ma on troche do zrobienia.
};

INSTANCE Info_Mod_Sekob_SagittaKraeuter (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_SagittaKraeuter_Condition;
	information	= Info_Mod_Sekob_SagittaKraeuter_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sekob_SagittaKraeuter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sagitta_Kraeuter2))
	&& (Npc_HasItems(hero, ItPo_SekobMedizin) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sekob_SagittaKraeuter_Info()
{
	AI_Output(self, hero, "Info_Mod_Sekob_SagittaKraeuter_01_00"); //Co robisz w moim domu?
	AI_Output(hero, self, "Info_Mod_Sekob_SagittaKraeuter_15_01"); //Uh, przyniose Ci lek Sagitta.
	AI_Output(self, hero, "Info_Mod_Sekob_SagittaKraeuter_01_02"); //Co? No cóz, daj mi ja. Trwalo to na zawsze.

	B_GiveInvItems	(hero, self, ItPo_SekobMedizin, 1);

	B_UseItem	(self, ItPo_SekobMedizin);

	AI_Output(hero, self, "Info_Mod_Sekob_SagittaKraeuter_15_03"); //Ona mówila, ze codziennie rano i wieczorem bierze dwie lyzki stolowe.
	AI_Output(self, hero, "Info_Mod_Sekob_SagittaKraeuter_01_04"); //Nie zwracajac uwagi na bohatera, na siebie samego) Ahh, to lepiej.
	AI_Output(self, hero, "Info_Mod_Sekob_SagittaKraeuter_01_05"); //(znowu bohatera) Huh, czy jest jeszcze cos innego?
	AI_Output(hero, self, "Info_Mod_Sekob_SagittaKraeuter_15_06"); //Platnosc.
	AI_Output(self, hero, "Info_Mod_Sekob_SagittaKraeuter_01_07"); //Co? Ach, cóz. Idz do mojej zony.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Sekob_Pickpocket (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_Pickpocket_Condition;
	information	= Info_Mod_Sekob_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Sekob_Pickpocket_Condition()
{
	C_Beklauen	(50, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Sekob_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);

	Info_AddChoice	(Info_Mod_Sekob_Pickpocket, DIALOG_BACK, Info_Mod_Sekob_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sekob_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sekob_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sekob_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);
};

FUNC VOID Info_Mod_Sekob_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);

		Info_AddChoice	(Info_Mod_Sekob_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sekob_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sekob_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sekob_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sekob_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sekob_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sekob_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sekob_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sekob_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sekob_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sekob_EXIT (C_INFO)
{
	npc		= Mod_105_BAU_Sekob_NW;
	nr		= 1;
	condition	= Info_Mod_Sekob_EXIT_Condition;
	information	= Info_Mod_Sekob_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sekob_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sekob_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
