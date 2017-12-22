INSTANCE Info_Mod_Jones_Hi (C_INFO)
{
	npc		= Mod_1554_KDW_Jones_DI;
	nr		= 1;
	condition	= Info_Mod_Jones_Hi_Condition;
	information	= Info_Mod_Jones_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jones_Hi_Condition()
{
	if (Mod_DI_InselErkunden == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jones_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_00"); //Cóz, jesli te notatki sa prawdziwe, to trzeba wyrzucic ducha, który przeklinal ich w ciagu ich zycia.
	AI_Output(hero, self, "Info_Mod_Jones_Hi_15_01"); //Pozbadz sie ducha? Jak mam to zrobic?
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_02"); //Cóz, najpierw musisz przekazac Ziemie jego smiertelne szczatki. Nastepnie trzeba mu wreczyc ceremonie pogrzebowa.
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_03"); //Jesli te warunki sa spelnione, to jego dusza nie jest juz zwiazana smiertelna skorupa.
	AI_Output(hero, self, "Info_Mod_Jones_Hi_15_04"); //A co wiec?
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_05"); //.... albo wchodzi w sfere Beliara, albo pozostaje w sferze Adano i nas zaatakuje.
	AI_Output(hero, self, "Info_Mod_Jones_Hi_15_06"); //A jak walczyc z duchami?
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_07"); //Mieczem lub kokarda? W ogóle nie. Nawet z ziemska magia bedziecie mieli malo szczescia.
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_08"); //Mam pusta rune duchów i miecz kuty z ektoplazmatyczna powloka.
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_09"); //Musisz albo zranic ducha tak zle mieczem, az jego aura zniknie, albo przygotowac zaklecie, które zlapiesz duch w tej runie.

	Info_ClearChoices	(Info_Mod_Jones_Hi);
	
	Info_AddChoice	(Info_Mod_Jones_Hi, "Potrafie radzic sobie z duchami.", Info_Mod_Jones_Hi_Schwert);
	Info_AddChoice	(Info_Mod_Jones_Hi, "Chce przygotowac zaklecie.", Info_Mod_Jones_Hi_Zauber);
};

FUNC VOID Info_Mod_Jones_Hi_Schwert()
{
	AI_Output(hero, self, "Info_Mod_Jones_Hi_Schwert_15_00"); //Potrafie radzic sobie z duchami.
	AI_Output(self, hero, "Info_Mod_Jones_Hi_Schwert_13_01"); //Wszystko w porzadku, oto miecz.

	CreateInvItems	(self, ItMw_Geisterschwert, 1);
	B_GiveInvItems	(self, hero, ItMw_Geisterschwert, 1);

	AI_Output(self, hero, "Info_Mod_Jones_Hi_Schwert_13_02"); //Kiedy uwolnie jego ducha, musisz go zniszczyc.

	Info_ClearChoices	(Info_Mod_Jones_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Jones_Hi_Zauber()
{
	AI_Output(hero, self, "Info_Mod_Jones_Hi_Zauber_15_00"); //Chce przygotowac zaklecie.
	AI_Output(self, hero, "Info_Mod_Jones_Hi_Zauber_13_01"); //Wszystko w porzadku, tutaj jest runa.

	CreateInvItems	(self, ItMi_Geisterrune, 1);
	B_GiveInvItems	(self, hero, ItMi_Geisterrune, 1);

	AI_Output(self, hero, "Info_Mod_Jones_Hi_Zauber_13_02"); //Duch jest w nim uwieziony. Czynia to zaklecia.
	AI_Output(self, hero, "Info_Mod_Jones_Hi_Zauber_13_03"); //Mam tylko piec rolek zaklec, wiec upewnij sie, ze nie uzywasz ich za duzo. Jesli trzykrotnie zastosowales zaklecie do ducha, dusza powinna byc uwieziona.

	CreateInvItems	(self, ItSc_Geisterspell, 5);
	B_GiveInvItems	(self, hero, ItSc_Geisterspell, 5);

	Info_ClearChoices	(Info_Mod_Jones_Hi);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jones_Los (C_INFO)
{
	npc		= Mod_1554_KDW_Jones_DI;
	nr		= 1;
	condition	= Info_Mod_Jones_Los_Condition;
	information	= Info_Mod_Jones_Los_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jones_Los_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jones_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jones_Los_Info()
{
	AI_Output(self, hero, "Info_Mod_Jones_Los_13_00"); //A zatem wszystko w porzadku. Wiesz, gdzie jest centrum zombie?
	AI_Output(hero, self, "Info_Mod_Jones_Los_15_01"); //Tak.
	AI_Output(self, hero, "Info_Mod_Jones_Los_13_02"); //Pózniej poprowadz mnie tam.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "SKELETT");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Jones_Anfang (C_INFO)
{
	npc		= Mod_1554_KDW_Jones_DI;
	nr		= 1;
	condition	= Info_Mod_Jones_Anfang_Condition;
	information	= Info_Mod_Jones_Anfang_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jones_Anfang_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jones_Los))
	&& (Npc_GetDistToWp(hero, "WP_DI_HOEHLE_RITUAL") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jones_Anfang_Info()
{
	AI_Output(self, hero, "Info_Mod_Jones_Anfang_13_00"); //Ach tak, badzcie gotowi, zaczne teraz.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Jones zaczyna teraz przywolywac ducha. Powinienem sie przygotowac.");

	Npc_ExchangeRoutine	(self, "CIRCLE");
	Npc_ExchangeRoutine	(Mod_1541_PIR_Greg_DI, "CIRCLE");
};

INSTANCE Info_Mod_Jones_Ende (C_INFO)
{
	npc		= Mod_1554_KDW_Jones_DI;
	nr		= 1;
	condition	= Info_Mod_Jones_Ende_Condition;
	information	= Info_Mod_Jones_Ende_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jones_Ende_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jones_Anfang))
	&& (Mod_GeisterpiratWurdeGekillt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jones_Ende_Info()
{
	AI_Output(self, hero, "Info_Mod_Jones_Ende_13_00"); //Zrobilismy to!

	if (Npc_HasItems(hero, ItMi_Geisterrune_Voll) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Jones_Ende_13_01"); //Duch jest uwieziony w runie. Zobaczmy, co moge z tym zrobic.

		B_GiveInvItems	(hero, self, ItMi_Geisterrune_Voll, 1);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Jones_Ende_13_02"); //Zniszczyles ducha i wyzwoliles jego dusze.
	};

	AI_Output(self, hero, "Info_Mod_Jones_Ende_13_03"); //Zauwazylem tam mur podczas rytualu. Mysle, ze jest mozliwe, iz to jeszcze nie koniec jaskini.
	AI_Output(self, hero, "Info_Mod_Jones_Ende_13_04"); //Powinienes szukac przelacznika lub czegos podobnego, moze znajdziesz tam cos ciekawego.
	AI_Output(self, hero, "Info_Mod_Jones_Ende_13_05"); //Wracam na plaze.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "START");

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Duch zostal pokonany, ale Jones zauwazyl mur, który jego zdaniem mozna otworzyc. Powinienem teraz porozmawiac z Gregiem.");

	self.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Jones_Pickpocket (C_INFO)
{
	npc		= Mod_1554_KDW_Jones_DI;
	nr		= 1;
	condition	= Info_Mod_Jones_Pickpocket_Condition;
	information	= Info_Mod_Jones_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Jones_Pickpocket_Condition()
{
	C_Beklauen	(97, ItMi_Gold, 42);
};

FUNC VOID Info_Mod_Jones_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jones_Pickpocket);

	Info_AddChoice	(Info_Mod_Jones_Pickpocket, DIALOG_BACK, Info_Mod_Jones_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jones_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jones_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jones_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jones_Pickpocket);
};

FUNC VOID Info_Mod_Jones_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jones_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jones_Pickpocket);

		Info_AddChoice	(Info_Mod_Jones_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jones_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jones_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jones_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jones_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jones_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jones_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jones_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jones_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jones_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jones_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jones_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jones_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jones_EXIT (C_INFO)
{
	npc		= Mod_1554_KDW_Jones_DI;
	nr		= 1;	
	condition	= Info_Mod_Jones_EXIT_Condition;
	information	= Info_Mod_Jones_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jones_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jones_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
