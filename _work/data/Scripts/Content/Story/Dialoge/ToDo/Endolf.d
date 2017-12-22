INSTANCE Info_Mod_Endolf_Hi (C_INFO)
{
	npc		= Mod_1590_SLD_Endolf_FM;
	nr		= 1;
	condition	= Info_Mod_Endolf_Hi_Condition;
	information	= Info_Mod_Endolf_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Endolf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Endolf_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_00"); //Wreszcie wsparcie. Ostatnim razem, gdy istoty zaatakowaly, stracilismy innego czlowieka.
	AI_Output(hero, self, "Info_Mod_Endolf_Hi_15_01"); //Jak dlugo trwaja te uporczywe ataki gasienicowe?
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_02"); //Dopiero niedawno. Zaczelo sie znikad, nagle. Smutne, smierdzace stworzenia.
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_03"); //Za kazdym razem wysylalismy naszych chlopców na rzezi, tak jak wielu bylo po krótkim czasie.
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_04"); //Kilka godzin temu bylo ich tak wiele, ze nas przegonili, czesc naszych chlopców zginela.
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_05"); //Musielismy sie tu wycofac i zabarykadowac.
	AI_Output(hero, self, "Info_Mod_Endolf_Hi_15_06"); //Cóz, mysle, ze bede musial samemu zbadac zagrozenie, jakie stanowia nekajace gasienice.
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_07"); //No cóz, naprawde pomóglbys nam to tutaj. To zawsze tak wiele zwierzat, za którymi podazac bedzie prawdopodobnie oznaczac, ze......
	AI_Output(hero, self, "Info_Mod_Endolf_Hi_15_08"); //... Musi byc tutaj gniazdo.
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_09"); //Cóz, kiedy szlaban jeszcze stal, byles w kopalni....
	AI_Output(hero, self, "Info_Mod_Endolf_Hi_15_10"); //nerwowy) Ale to pociagnelo za soba szerokie kregi, co z kopalnia starego obozu.
	AI_Output(hero, self, "Info_Mod_Endolf_Hi_15_11"); //A teraz powinienem to zrobic sam z wszystkimi gasienicowymi królowymi na calym Khorinisie....
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_12"); //I tam bedziemy trzymac sie jak najdluzej. Zycze powodzenia.
	AI_Output(hero, self, "Info_Mod_Endolf_Hi_15_13"); //Szlifuj, Ty równiez....

	B_LogEntry	(TOPIC_MOD_NL_CRAWLER, "Och, wielki. Tym razem pozwolono mi jak zwykle isc samotnie, aby znalezc pochodzenie smierdzacych gasienic. Byc moze znów królowa Minecrawler.....");
};

INSTANCE Info_Mod_Endolf_Gormgniez (C_INFO)
{
	npc		= Mod_1590_SLD_Endolf_FM;
	nr		= 1;
	condition	= Info_Mod_Endolf_Gormgniez_Condition;
	information	= Info_Mod_Endolf_Gormgniez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Endolf_Gormgniez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gormgniez_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Endolf_Gormgniez_Info()
{
	AI_Output(self, hero, "Info_Mod_Endolf_Gormgniez_09_00"); //Czy móglbys znalezc zródlo tego zla i zniszczyc je?
	AI_Output(hero, self, "Info_Mod_Endolf_Gormgniez_15_01"); //Tak, udalo mi sie.
	AI_Output(self, hero, "Info_Mod_Endolf_Gormgniez_09_02"); //Doskonale, dzieki temu praca moze byc kontynuowana spokojnie.
	AI_Output(self, hero, "Info_Mod_Endolf_Gormgniez_09_03"); //Tutaj wez rude jako podziekowanie.
	
	B_GiveInvItems	(self, hero, ItMi_Nugget, 10);

	B_GivePlayerXP	(400);
};

INSTANCE Info_Mod_Endolf_Pickpocket (C_INFO)
{
	npc		= Mod_1590_SLD_Endolf_FM;
	nr		= 1;
	condition	= Info_Mod_Endolf_Pickpocket_Condition;
	information	= Info_Mod_Endolf_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Endolf_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Nugget, 2);
};

FUNC VOID Info_Mod_Endolf_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);

	Info_AddChoice	(Info_Mod_Endolf_Pickpocket, DIALOG_BACK, Info_Mod_Endolf_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Endolf_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Endolf_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Endolf_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);
};

FUNC VOID Info_Mod_Endolf_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);

		Info_AddChoice	(Info_Mod_Endolf_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Endolf_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Endolf_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Endolf_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Endolf_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Endolf_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Endolf_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Endolf_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Endolf_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Endolf_EXIT (C_INFO)
{
	npc		= Mod_1590_SLD_Endolf_FM;
	nr		= 1;
	condition	= Info_Mod_Endolf_EXIT_Condition;
	information	= Info_Mod_Endolf_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Endolf_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Endolf_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
