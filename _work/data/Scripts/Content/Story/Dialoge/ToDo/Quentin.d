INSTANCE Info_Mod_Quentin_Hi (C_INFO)
{
	npc		= Mod_7023_BDT_Quentin_MT;
	nr		= 1;
	condition	= Info_Mod_Quentin_Hi_Condition;
	information	= Info_Mod_Quentin_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Quentin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Quentin_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Quentin_Hi_07_01"); //Jestem Quentin.
};

INSTANCE Info_Mod_Quentin_AmulettWeg (C_INFO)
{
	npc		= Mod_7023_BDT_Quentin_MT;
	nr		= 1;
	condition	= Info_Mod_Quentin_AmulettWeg_Condition;
	information	= Info_Mod_Quentin_AmulettWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Postaram sie dostac amulet z powrotem do starego obozu.";
};

FUNC INT Info_Mod_Quentin_AmulettWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Quentin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dexter_TimeOver))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dexter_AmulettBack))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Quentin_AmulettWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Quentin_AmulettWeg_15_00"); //Postaram sie dostac amulet z powrotem do starego obozu.

	if (Kapitel < 4)
	{
		AI_Output(hero, self, "Info_Mod_Quentin_AmulettWeg_15_01"); //Czy mozesz mi powiedziec cos o Sabitsch, co moze mi pomóc?
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_02"); //Wiem, ze peknalem, czego nie potrafie odrobic.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_03"); //Spróbuje jednak przynajmniej dac ci jak najwiecej informacji na temat Sabitsch, mimo ze prawdopodobnie wiesz juz o tym od Dextera.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_04"); //Tak wiec, ten Sabitsch jest niesamowicie szybkim i poteznym wojownikiem, jakiego nigdy wczesniej nie widzialem. Obraca siekiere, bo jest mieczem.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_05"); //Nie bierzcie tego osobiscie, jesli watpie, ze masz szanse w walce przeciwko niemu.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_06"); //Ale jestem dobrym wojownikiem i nie moglem sprzeciwic sie mu przez ponad kilka sekund.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_07"); //No cóz, to mi przypomina, zdaje sie miec zamilowanie do pierscionków i amuletów.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_08"); //On nosi kilka z nich na swoim ciele i juz chciwie szukal mojego amuletu, zanim mógl nawet wiedziec o magicznych cechach.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_09"); //To wszystko, o czym moge pomyslec. Ale nadal moge dac ci te rolki zaklecia, które wzialem od handlowca na rynku w Khorinis.

		CreateInvItems	(hero, ItSc_IceCube, 1);
		CreateInvItems	(hero, ItSc_Charm, 1);

		B_ShowGivenThings	("2 Przyjmowanie roli mówienia");

		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_10"); //Mam nadzieje, ze przynajmniej móglbym panstwu w tym pomóc.

		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Nauczylem sie od Quentina, ze oprócz swoich umiejetnosci bizuteryjnych ma równiez zamilowanie do bizuterii. Czy to mi pomoze?");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_11"); //Wiem, ze peknalem, czego nie potrafie odrobic.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_12"); //Spróbuje jednak przynajmniej spróbowac. Tutaj moge dac ci te rolki zaklec, które wzialem od kupca na targowisku w Khorinis.

		B_ShowGivenThings	("2 Przyjmowanie roli mówienia");

		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_13"); //Moglyby one stanowic decydujaca pomoc. Zycze powodzenia.
		AI_Output(hero, self, "Info_Mod_Quentin_AmulettWeg_15_14"); //Tak, moge go uzyc.

		CreateInvItems	(hero, ItSc_TrfRabbit, 2);

		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Quentin nadal mi role w transformacji.");
	};
};

INSTANCE Info_Mod_Quentin_Pickpocket (C_INFO)
{
	npc		= Mod_7023_BDT_Quentin_MT;
	nr		= 1;
	condition	= Info_Mod_Quentin_Pickpocket_Condition;
	information	= Info_Mod_Quentin_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Quentin_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Quentin_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);

	Info_AddChoice	(Info_Mod_Quentin_Pickpocket, DIALOG_BACK, Info_Mod_Quentin_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Quentin_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Quentin_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Quentin_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);
};

FUNC VOID Info_Mod_Quentin_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);

		Info_AddChoice	(Info_Mod_Quentin_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Quentin_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Quentin_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Quentin_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Quentin_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Quentin_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Quentin_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Quentin_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Quentin_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Quentin_EXIT (C_INFO)
{
	npc		= Mod_7023_BDT_Quentin_MT;
	nr		= 1;
	condition	= Info_Mod_Quentin_EXIT_Condition;
	information	= Info_Mod_Quentin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Quentin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Quentin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
