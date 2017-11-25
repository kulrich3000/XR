INSTANCE Info_Mod_Bert_Hi (C_INFO)
{
	npc		= Mod_1582_SFB_Bert_FM;
	nr		= 1;
	condition	= Info_Mod_Bert_Hi_Condition;
	information	= Info_Mod_Bert_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bert_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bert_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_00"); //Co, kim jestes? Czy gasienice zniknely?
	AI_Output(hero, self, "Info_Mod_Bert_Hi_15_01"); //Co Pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_02"); //Ostatnim razem, gdy gasienice rabuja, ucieklem tutaj.
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_03"); //Musialem na wlasne oczy obserwowac, ilu moich przyjaciól zostalo zabitych przez gasienice i wciagnietych na tyly jaskini.
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_04"); //Tylko Claus nie mógl go wyjac, poniewaz jego cialo zawislo jedna noga miedzy rusztowaniami.
	AI_Output(hero, self, "Info_Mod_Bert_Hi_15_05"); //No cóz, dlaczego mi to wszystko mówisz? Poza tym, nie widze tu zadnego trupa, który by lezal.....
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_06"); //Damn, to wlasnie wyjasnialem.
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_07"); //Po kilku godzinach zasnalem z wyczerpania.
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_08"); //Godziny pózniej nagle obudzily mnie dziwne dzwieki i swiatla.
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_09"); //Kiedy zagladalam nad skale, zobaczylam, ze nie chce wierzyc moim oczom, Claus kolyszyl sie i znikal za skalami, a dalej z powrotem czulam sie jak blyszczaca figura.
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_10"); //Potem nagle zniknela. Mysle, ze zaczynam tracic umysl.....
	AI_Output(self, hero, "Info_Mod_Bert_Hi_10_11"); //Masz dla mnie cos do jedzenia i picia, abym mógl odzyskac umysl i sile?

	B_LogEntry	(TOPIC_MOD_NL_CRAWLER, "Spotkalem ocalalego harcerza. Opowiedzial o tym, jak zobaczyl, ze jego zmarly przyjaciel odchodzi w ciemnosci i o blyszczacych figurach. Dzwieki raczej rozproszone.");

	Info_ClearChoices	(Info_Mod_Bert_Hi);

	Info_AddChoice	(Info_Mod_Bert_Hi, "Nie.", Info_Mod_Bert_Hi_C);

	if (Npc_HasItems(hero, ItFo_Milk) >= 1)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 1)
	&& (Npc_HasItems(hero, ItFo_Mutton) >= 1)
	{
		Info_AddChoice	(Info_Mod_Bert_Hi, "Wez to tutaj. (wydajace mleko, mieso smazone i chleb)", Info_Mod_Bert_Hi_B);
	};

	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 1)
	{
		Info_AddChoice	(Info_Mod_Bert_Hi, "Wez to tutaj. (dodac chleb i wode)", Info_Mod_Bert_Hi_A);
	};
};

FUNC VOID Info_Mod_Bert_Hi_C()
{
	B_Say	(hero, self, "$NO");

	AI_Output(self, hero, "Info_Mod_Bert_Hi_C_10_01"); //No cóz, po prostu bede musial przez to przejsc.
	
	Info_ClearChoices	(Info_Mod_Bert_Hi);
};

FUNC VOID Info_Mod_Bert_Hi_B()
{
	B_Say	(hero, self, "$HIERNIMM");

	B_ShowGivenThings	("Mleko, chleb i mieso smazone");

	Npc_RemoveInvItems	(hero, ItFo_Milk, 1);
	Npc_RemoveInvItems	(hero, ItFo_Bread, 1);
	Npc_RemoveInvItems	(hero, ItFo_Mutton, 1);

	AI_Output(self, hero, "Info_Mod_Bert_Hi_B_10_01"); //Dziekuje bardzo. To wszystko, o co mozesz poprosic.

	B_GivePlayerXP	(200);

	Mod_NL_Bert = 1;
	
	Info_ClearChoices	(Info_Mod_Bert_Hi);
};

FUNC VOID Info_Mod_Bert_Hi_A()
{
	B_Say	(hero, self, "$HIERNIMM");

	B_ShowGivenThings	("Chleb i dodana woda");

	Npc_RemoveInvItems	(hero, ItFo_Water, 1);
	Npc_RemoveInvItems	(hero, ItFo_Bread, 1);

	AI_Output(self, hero, "Info_Mod_Bert_Hi_A_10_01"); //Doceniam to.

	B_GivePlayerXP	(100);

	Mod_NL_Bert = 1;
	
	Info_ClearChoices	(Info_Mod_Bert_Hi);
};

INSTANCE Info_Mod_Bert_Gormgniez (C_INFO)
{
	npc		= Mod_1582_SFB_Bert_FM;
	nr		= 1;
	condition	= Info_Mod_Bert_Gormgniez_Condition;
	information	= Info_Mod_Bert_Gormgniez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bert_Gormgniez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gormgniez_Hi))
	&& (Mod_NL_Bert == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bert_Gormgniez_Info()
{
	AI_Output(self, hero, "Info_Mod_Bert_Gormgniez_10_00"); //Dziekuje bardzo za moje zbawienie, jak równiez jedzenie i picie.
	AI_Output(self, hero, "Info_Mod_Bert_Gormgniez_10_01"); //Mam niewiele, co moge wam dac, ale przynajmniej naucze Was kopac w sztuke górnictwa rudy.
	AI_Output(self, hero, "Info_Mod_Bert_Gormgniez_10_02"); //Zwrócic uwage na strukture i strukture rudy. Gdzie wystepuja pekniecia i slabe punkty w przebiegu zyly, do których mozesz wjechac pikserem?
	AI_Output(self, hero, "Info_Mod_Bert_Gormgniez_10_03"); //Jesli wezmiemy to pod uwage, bedzie mozna wybic duze kawalki.

	B_GivePlayerXP	(200);

	B_Upgrade_ErzHackChance (10);
};

INSTANCE Info_Mod_Bert_Pickpocket (C_INFO)
{
	npc		= Mod_1582_SFB_Bert_FM;
	nr		= 1;
	condition	= Info_Mod_Bert_Pickpocket_Condition;
	information	= Info_Mod_Bert_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Bert_Pickpocket_Condition()
{
	C_Beklauen	(32, ItMi_Nugget, 2);
};

FUNC VOID Info_Mod_Bert_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bert_Pickpocket);

	Info_AddChoice	(Info_Mod_Bert_Pickpocket, DIALOG_BACK, Info_Mod_Bert_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bert_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bert_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bert_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bert_Pickpocket);
};

FUNC VOID Info_Mod_Bert_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bert_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bert_Pickpocket);

		Info_AddChoice	(Info_Mod_Bert_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bert_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bert_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bert_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bert_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bert_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bert_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bert_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bert_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bert_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bert_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bert_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bert_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bert_EXIT (C_INFO)
{
	npc		= Mod_1582_SFB_Bert_FM;
	nr		= 1;
	condition	= Info_Mod_Bert_EXIT_Condition;
	information	= Info_Mod_Bert_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bert_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bert_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
