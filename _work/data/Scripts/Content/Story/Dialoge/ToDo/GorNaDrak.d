INSTANCE Info_Mod_GorNaDrak_Lehrer (C_INFO)
{
	npc		= Mod_2011_TPL_GorNaDrak_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaDrak_Lehrer_Condition;
	information	= Info_Mod_GorNaDrak_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_GorNaDrak_Lehrer_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_GorNaDrak_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_GorNaDrak_Lehrer_09_00"); //Pokazuje wam jak wyjac szczypce z minecrawlerów.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SUMPF, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SUMPF, "Gor Na Drak moze mi pokazac, jak wyciagnac szczypce z minecrawlerów.");
};

INSTANCE Info_Mod_GorNaDrak_Hueterklinge (C_INFO)
{
	npc		= Mod_2011_TPL_GorNaDrak_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaDrak_Hueterklinge_Condition;
	information	= Info_Mod_GorNaDrak_Hueterklinge_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze, ze od dawna jestes z templariuszami.";
};

FUNC INT Info_Mod_GorNaDrak_Hueterklinge_Condition()
{
	if (Mod_TPL_Hueterklinge_Drak == 2)
	&& (Mod_TPL_Hueterklinge == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge_Info()
{
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_15_00"); //Slysze, ze od dawna jestes z templariuszami.
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_09_01"); //Tak, tak, tak, widzialem to wszystko. Wielki glód 84 osób, straszny kawalk 3, czysciec 72, czysciec 72....
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_15_02"); //Rozumiem, ze przeszedles wiele. Wiele walczyles/as, czyz nie?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_09_03"); //Tak, wiele walczylem.
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_09_04"); //Przeciwko wielki troll przed 62, przeciwko paskudnemu smokowi 112, przeciw ostremu Szajfarzowi z...
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_15_05"); //Rozumiem, ze wiele walczyles.

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge);

	Info_AddChoice	(Info_Mod_GorNaDrak_Hueterklinge, "Jesli walczylas tak wiele, to naprawde zaslugujesz na to.... Nigdy nie przeszkadzac, nie byc tak waznym.", Info_Mod_GorNaDrak_Hueterklinge_C);
	Info_AddChoice	(Info_Mod_GorNaDrak_Hueterklinge, "Jesli tak wiele walczysz, to Twój miecz bedzie mial sporo karbów, czyz nie?", Info_Mod_GorNaDrak_Hueterklinge_B);
	Info_AddChoice	(Info_Mod_GorNaDrak_Hueterklinge, "Jesli tak wiele walczyles, to nie bedziesz juz potrzebowal miecza, czy?", Info_Mod_GorNaDrak_Hueterklinge_A);
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge_C()
{
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_C_15_00"); //Jesli walczylas tak wiele, to naprawde zaslugujesz na to.... Nigdy nie przeszkadzac, nie byc tak waznym.

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge);
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge_B()
{
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_B_15_00"); //Jesli tak wiele walczysz, to Twój miecz bedzie mial sporo karbów, czyz nie?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_B_09_01"); //Tak..... teraz, gdy mówisz to, mój miecz ma mnóstwo karbów....
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_B_15_02"); //Czyz nie byloby wiec wskazane niesc nowy miecz i pozbyc sie starego?

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_B_09_03"); //Oczywiscie.... byloby to rzeczywiscie wlasciwe, byloby to nawet bardzo wlasciwe!
		AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_B_09_04"); //Ale gdzie kiedykolwiek dostalem nowy miecz?
		AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_B_09_05"); //Jestesmy posrodku pustyni i nie ma na swiecie kuzni.
		AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_B_15_06"); //Dostane cie jeden.

		Mod_TPL_Hueterklinge_Drak = 2;

		B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Musze zdobyc Gor Na Drak nowego miecza.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_B_09_07"); //Nowy miecz! Nigdy nigdy!
		AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_B_09_08"); //Nie wiem, czy to wiesz, ale juz walczylem z tym mieczem przeciwko wielkiemu trollowi 62, oraz przeciwko paskudnemu smokowi 112 i....

		AI_TurnAway	(hero, self);

		AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_B_15_09"); //Mysle, ze moge o tym zapomniec.

		AI_TurnToNpc	(hero, self);
	};

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge);
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge_A()
{
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_A_15_00"); //Jesli tak wiele walczyles, to nie bedziesz juz potrzebowal miecza, czy?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_A_09_01"); //NIE POTRZEBUJESZ JUZ MIECZA"?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_A_09_02"); //Ale co by sie stalo, gdyby wielki trolla 62-lecial czarna magia i stal sie wielkim nieumarlym trolla 417?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_A_09_03"); //Co by sie stalo, gdyby kosci paskudnego smoka 112 ponownie sie polaczyly i staly sie straszliwym szkieletem smoka 45?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge_A_09_04"); //Co jesli.....?
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge_A_15_05"); //Widze, ze nadal potrzebuje pan miecza.

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge);
};

INSTANCE Info_Mod_GorNaDrak_Hueterklinge2 (C_INFO)
{
	npc		= Mod_2011_TPL_GorNaDrak_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaDrak_Hueterklinge2_Condition;
	information	= Info_Mod_GorNaDrak_Hueterklinge2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie miecz.";
};

FUNC INT Info_Mod_GorNaDrak_Hueterklinge2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GorNaDrak_Hueterklinge))
	&& (Mod_TPL_Hueterklinge_Drak == 2)
	&& (Mod_TPL_Hueterklinge == 0)
	&& ((Npc_HasItems(hero, ItMw_1h_MISC_Sword) >= 1)
	|| (Npc_HasItems(hero, ItMw_1H_Common_01) >= 1)
	|| (Npc_HasItems(hero, ItMw_Schwert1) >= 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge2_Info()
{
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge2_15_00"); //Mam dla Ciebie miecz.
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_09_01"); //Ach, tak? Który z nich?

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge2);

	if (Npc_HasItems(hero, ItMw_Schwert1) >= 1)
	{
		Info_AddChoice	(Info_Mod_GorNaDrak_Hueterklinge2, "(ofiarowanie szlachetnego miecza)", Info_Mod_GorNaDrak_Hueterklinge2_C);
	};
	if (Npc_HasItems(hero, ItMw_1H_Common_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_GorNaDrak_Hueterklinge2, "(ofiarowanie miecza)", Info_Mod_GorNaDrak_Hueterklinge2_B);
	};
	if (Npc_HasItems(hero, ItMw_1h_MISC_Sword) >= 1)
	{
		Info_AddChoice	(Info_Mod_GorNaDrak_Hueterklinge2, "(ofiarowanie zardzewialego miecza)", Info_Mod_GorNaDrak_Hueterklinge2_A);
	};
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge2_E()
{
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_E_09_00"); //Tak, piekny miecz, arcydzielo!
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_E_09_01"); //Kute za pomoca zwinnych palców, aby mozna je bylo prowadzic mocna reka! Uwielbiam to!
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge2_E_15_02"); //Nie potrzebujesz juz swojego starego miecza, czy nie?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_E_09_03"); //Oh, tak, tak.... Prawdopodobnie powinienem to odrzucic.
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_E_09_04"); //Ale jestesmy tu na szczycie lodowca i nie widze zadnych pojemników na odpady na zlom metalowy....
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge2_E_15_05"); //Wyrzuce ja za Ciebie.
	AI_Output(hero, self, "Info_Mod_GorNaDrak_Hueterklinge2_E_15_06"); //To bardzo cos dla Ciebie! Dziekuje bardzo.

	if (Mod_TPL_Hueterklinge_Art == 2)
	{
		B_GiveInvItems	(self, hero, ItMw_AlteHueterklinge_2H, 1);
	}
	else
	{
		B_GiveInvItems	(self, hero, ItMw_AlteHueterklinge_1H, 1);
	};

	B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Stare ostrze stary straznika dostalem od Gor Na Drak. Mam pójsc do Cor Angar i przedstawic sie.");

	Mod_TPL_Hueterklinge = 1;

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge2);
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge2_D()
{
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_D_09_00"); //Co? To miecz?
	AI_Output(self, hero, "Info_Mod_GorNaDrak_Hueterklinge2_D_09_01"); //Nie przecieralbym tarczy czyms takim!

	Info_ClearChoices	(Info_Mod_GorNaDrak_Hueterklinge2);
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge2_C()
{
	B_GiveInvItems	(hero, self, ItMw_Schwert1, 1);

	Info_Mod_GorNaDrak_Hueterklinge2_E();
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge2_B()
{
	B_GiveInvItems	(hero, self, ItMw_Schwert1, 1);

	if (Hlp_Random(100) < 50)
	{
		Info_Mod_GorNaDrak_Hueterklinge2_E();
	}
	else
	{
		Info_Mod_GorNaDrak_Hueterklinge2_D();
	};
};

FUNC VOID Info_Mod_GorNaDrak_Hueterklinge2_A()
{
	B_GiveInvItems	(hero, self, ItMw_Schwert1, 1);

	if (Hlp_Random(100) < 25)
	{
		Info_Mod_GorNaDrak_Hueterklinge2_E();
	}
	else
	{
		Info_Mod_GorNaDrak_Hueterklinge2_D();
	};
};

INSTANCE Info_Mod_GorNaDrak_CrawlerZangen (C_INFO)
{
	npc		= Mod_2011_TPL_GorNaDrak_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaDrak_CrawlerZangen_Condition;
	information	= Info_Mod_GorNaDrak_CrawlerZangen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy moze mi Pan powiedziec, jak dotrzec do sekretarza minecrawera? (3 LP)";
};

FUNC INT Info_Mod_GorNaDrak_CrawlerZangen_Condition()
{
	Info_Mod_GorNaDrak_CrawlerZangen.description = B_BuildLearnString("Czy moze mi Pan powiedziec, jak dotrzec do sekretarza minecrawera?", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Mandibles));

	if (Npc_KnowsInfo(hero, Info_Mod_GorNaDrak_Lehrer))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Mandibles] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaDrak_CrawlerZangen_Info()
{
	AI_Output(hero, self, "Info_Mod_GorNaDrak_CrawlerZangen_15_00"); //Czy moze mi Pan powiedziec, jak dotrzec do sekretarza minecrawera?

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, other, TROPHY_Mandibles))
	{
		AI_Output(self, hero, "Info_Mod_GorNaDrak_CrawlerZangen_09_01"); //Z pewnoscia, po zabiciu bydla, chwycic go za szczypce i wyrwac. Nastepnie gruczol wydzielania wychodzi bez rozdarcia.
		AI_Output(self, hero, "Info_Mod_GorNaDrak_CrawlerZangen_09_02"); //Nawiasem mówiac, slyszalem, ze tak wlasnie dziala z polowymi zlodziejami.
	};
};

INSTANCE Info_Mod_GorNaDrak_Pickpocket (C_INFO)
{
	npc		= Mod_2011_TPL_GorNaDrak_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaDrak_Pickpocket_Condition;
	information	= Info_Mod_GorNaDrak_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_GorNaDrak_Pickpocket_Condition()
{
	C_Beklauen	(104, ItAt_CrawlerMandibles, 3);
};

FUNC VOID Info_Mod_GorNaDrak_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);

	Info_AddChoice	(Info_Mod_GorNaDrak_Pickpocket, DIALOG_BACK, Info_Mod_GorNaDrak_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_GorNaDrak_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_GorNaDrak_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_GorNaDrak_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);
};

FUNC VOID Info_Mod_GorNaDrak_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);

		Info_AddChoice	(Info_Mod_GorNaDrak_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_GorNaDrak_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_GorNaDrak_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_GorNaDrak_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_GorNaDrak_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_GorNaDrak_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_GorNaDrak_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_GorNaDrak_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_GorNaDrak_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_GorNaDrak_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_GorNaDrak_EXIT (C_INFO)
{
	npc		= Mod_2011_TPL_GorNaDrak_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaDrak_EXIT_Condition;
	information	= Info_Mod_GorNaDrak_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_GorNaDrak_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_GorNaDrak_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
