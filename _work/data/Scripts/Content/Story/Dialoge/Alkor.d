INSTANCE Info_Mod_Alkor_Hi (C_INFO)
{
	npc		= Mod_7654_OUT_Alkor_REL;
	nr		= 1;
	condition	= Info_Mod_Alkor_Hi_Condition;
	information	= Info_Mod_Alkor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alkor_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alkor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_31_00"); //Czego chcesz, Linnet? Skarby wrzosowiska? Ha, nie daj mi sie smiac.
	AI_Output(hero, self, "Info_Mod_Alkor_Hi_15_01"); //Jaki jest twój problem?
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_31_02"); //Tak, spójrzcie na siebie.
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_31_03"); //Jesli nie przezyjesz przez dziesiec sekund w trujacym bagnie, tak zalosnym jak ci sie wydaje.
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_31_04"); //Ha, prawdopodobnie nie przezyjecie nawet prawdziwego lyku jalowca.

	Info_ClearChoices	(Info_Mod_Alkor_Hi);

	Info_AddChoice	(Info_Mod_Alkor_Hi, "Jestem pewien, ze moge wziac wiecej niz Ty.", Info_Mod_Alkor_Hi_B);
	Info_AddChoice	(Info_Mod_Alkor_Hi, "Uzyskaj nerwy innych. ", Info_Mod_Alkor_Hi_A);
};

FUNC VOID Info_Mod_Alkor_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Alkor_Hi_B_15_00"); //Jestem pewien, ze moge wziac wiecej niz Ty.
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_B_31_01"); //Ha, nie daj mi sie smiac.... Gdybyscie kiedykolwiek zdolali nadazyc za mna, oddalibysmy wszystkie moje rezerwy antidotum.
	AI_Output(hero, self, "Info_Mod_Alkor_Hi_B_15_02"); //Zawsze moge uzyc antidotum.
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_B_31_03"); //Zobaczymy to. Za kazda próbe wypicia mnie pod stolem, za napar nalezy zaplacic 40 kawalków zlota.

	Info_ClearChoices	(Info_Mod_Alkor_Hi);

	Mod_Alkor_Contest = 1;
};

FUNC VOID Info_Mod_Alkor_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Alkor_Hi_A_15_00"); //Fall jemand anderem auf die Nerven. 
	AI_Output(self, hero, "Info_Mod_Alkor_Hi_A_31_01"); //Ja, verzieh dich bloß wieder in die Stadt, du Weichei, geh zu deiner Mami!

	Info_ClearChoices	(Info_Mod_Alkor_Hi);
};

INSTANCE Info_Mod_Alkor_StarteContest (C_INFO)
{
	npc		= Mod_7654_OUT_Alkor_REL;
	nr		= 1;
	condition	= Info_Mod_Alkor_StarteContest_Condition;
	information	= Info_Mod_Alkor_StarteContest_Info;
	permanent	= 1;
	important	= 0;
	description	= "Oto zloto.";
};

FUNC INT Info_Mod_Alkor_StarteContest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alkor_Hi))
	&& (Mod_Alkor_Contest == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 40)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alkor_StarteContest_Info()
{
	AI_Output(hero, self, "Info_Mod_Alkor_StarteContest_15_00"); //Oto zloto.

	B_GiveInvItems	(hero, self, ItMi_Gold, 40);

	AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_31_01"); //Wszystkie sluszne, wszystkie sluszne. Nastepnie przejdz do pierwszej rundy.

	AI_UseMob	(self, "CHAIR", -1);

	Info_ClearChoices	(Info_Mod_Alkor_StarteContest);

	Info_AddChoice	(Info_Mod_Alkor_StarteContest, "(Ciag dalszy)", Info_Mod_Alkor_StarteContest_Weiter_01);
};

FUNC VOID Info_Mod_Alkor_StarteContest_Weiter_01()
{
	CreateInvItems	(hero, ItFo_Beer, 3);
	CreateInvItems	(self, ItFo_Beer, 3);

	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);
	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);
	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_01_31_00"); //Stoisz? Byc moze nie jestes taki jak spizarnia, o której myslalem, ze jestes. Przejdzmy do drugiej rundy.

	Info_ClearChoices	(Info_Mod_Alkor_StarteContest);

	Info_AddChoice	(Info_Mod_Alkor_StarteContest, "(Ciag dalszy)", Info_Mod_Alkor_StarteContest_Weiter_02);
};

FUNC VOID Info_Mod_Alkor_StarteContest_Weiter_02()
{
	CreateInvItems	(hero, ItFo_Booze, 3);
	CreateInvItems	(self, ItFo_Booze, 3);

	B_UseItem	(self, ItFo_Booze);
	B_UseItem	(hero, ItFo_Booze);
	B_UseItem	(self, ItFo_Booze);
	B_UseItem	(hero, ItFo_Booze);
	B_UseItem	(self, ItFo_Booze);
	B_UseItem	(hero, ItFo_Booze);

	if (Mod_Betrunken == 1)
	{
		AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_02_31_00"); //Ha, znalem to. Na pierwszym lopacie czegos silniejszego, nie bedzie trzymal sie na nogach.
		AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_02_31_01"); //Nigdy wczesniej nie byles juz odurzony, czy?
		AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_02_31_02"); //Ale dziekuje za zloto, bohater.

		Info_ClearChoices	(Info_Mod_Alkor_StarteContest);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_02_31_03"); //Co? Nadal stoisz, ale...... ale juz nie wiecej, jesli pójdziemy do trzeciego.... do trójki.

		Info_ClearChoices	(Info_Mod_Alkor_StarteContest);

		Info_AddChoice	(Info_Mod_Alkor_StarteContest, "(Ciag dalszy)", Info_Mod_Alkor_StarteContest_Weiter_03);
	};
};

FUNC VOID Info_Mod_Alkor_StarteContest_Weiter_03()
{
	CreateInvItems	(self, ItFo_Addon_Grog, 1);

	B_UseItem	(self, ItFo_Addon_Grog);

	AI_Output(hero, self, "Info_Mod_Alkor_StarteContest_Weiter_03_15_00"); //No cóz, czy to jest?
	AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_03_31_01"); //Co? Ahh, glowa pieprzu. Synkujesz z suki!
	AI_Output(hero, self, "Info_Mod_Alkor_StarteContest_Weiter_03_15_02"); //No cóz, nie powinienes miec ust tak duzo, jesli nie mozesz wziac zbyt wiele. Czy eliksiry?
	AI_Output(self, hero, "Info_Mod_Alkor_StarteContest_Weiter_03_31_03"); //Ahh, syn suki. Oto antidotum. A teraz..... Wyciagnij z tego fuge!

	B_GiveInvItems	(self, hero, ItPo_Gegengift, 2);

	B_GivePlayerXP	(300);

	Mod_Alkor_Contest = 2;

	Info_ClearChoices	(Info_Mod_Alkor_StarteContest);
};

INSTANCE Info_Mod_Alkor_Wasserleichen (C_INFO)
{
	npc		= Mod_7654_OUT_Alkor_REL;
	nr		= 1;
	condition	= Info_Mod_Alkor_Wasserleichen_Condition;
	information	= Info_Mod_Alkor_Wasserleichen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alkor_Wasserleichen_Condition()
{
	if (Mod_Botschek_Wasserleichen == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alkor_Wasserleichen_Info()
{
	AI_Output(self, hero, "Info_Mod_Alkor_Wasserleichen_31_00"); //Zakoncze to, czego ciala nie osiagnely!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	B_LogEntry	(TOPIC_MOD_BOTSCHEK_WASSERLEICHEN, "utopione ciala sa wykonczone. Ale czego chce Alkor? Czy stracil umysl?");
};

INSTANCE Info_Mod_Alkor_Pickpocket (C_INFO)
{
	npc		= Mod_7654_OUT_Alkor_REL;
	nr		= 1;
	condition	= Info_Mod_Alkor_Pickpocket_Condition;
	information	= Info_Mod_Alkor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Alkor_Pickpocket_Condition()
{
	C_Beklauen	(85, ItMi_GoldPlate, 2);
};

FUNC VOID Info_Mod_Alkor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);

	Info_AddChoice	(Info_Mod_Alkor_Pickpocket, DIALOG_BACK, Info_Mod_Alkor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Alkor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Alkor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Alkor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);
};

FUNC VOID Info_Mod_Alkor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);

		Info_AddChoice	(Info_Mod_Alkor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Alkor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Alkor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Alkor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Alkor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Alkor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Alkor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Alkor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Alkor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Alkor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Alkor_EXIT (C_INFO)
{
	npc		= Mod_7654_OUT_Alkor_REL;
	nr		= 1;
	condition	= Info_Mod_Alkor_EXIT_Condition;
	information	= Info_Mod_Alkor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alkor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alkor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
