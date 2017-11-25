INSTANCE Info_Mod_Kyle_Hi (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_Hi_Condition;
	information	= Info_Mod_Kyle_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kyle! Jak robisz, starszy przyjaciel?";
};

FUNC INT Info_Mod_Kyle_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kyle_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_Hi_15_00"); //Kyle! Jak robisz, starszy przyjaciel?
	AI_Output(self, hero, "Info_Mod_Kyle_Hi_10_01"); //Jak to robie? Absolutnie przepalony! Od rana do nocy pracuje plecami do garbu i nie zebralismy jeszcze niczego jadalnego.
};

INSTANCE Info_Mod_Kyle_WarumArbeit (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_WarumArbeit_Condition;
	information	= Info_Mod_Kyle_WarumArbeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego tak ciezko pracujesz? To nie jest tak jak Ty.";
};

FUNC INT Info_Mod_Kyle_WarumArbeit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kyle_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kyle_WarumArbeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_WarumArbeit_15_00"); //Dlaczego tak ciezko pracujesz? To nie jest tak jak Ty.
	AI_Output(self, hero, "Info_Mod_Kyle_WarumArbeit_10_01"); //Zamknac usta. Thorus uwaza, ze mnie to rozbije. Ale wycial sie z nim.
	AI_Output(self, hero, "Info_Mod_Kyle_WarumArbeit_10_02"); //Czy jest jasne, czy to byl taki dobry pomysl, ze pozwolil mi pracowac tak blisko jego tronu......
};

INSTANCE Info_Mod_Kyle_SchatzImSchlammsee (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_SchatzImSchlammsee_Condition;
	information	= Info_Mod_Kyle_SchatzImSchlammsee_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sluchaj tutaj. Ta rzecz z skarbem....";
};

FUNC INT Info_Mod_Kyle_SchatzImSchlammsee_Condition()
{
	if (Mod_Gravo_Schatz == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kyle_SchatzImSchlammsee_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_SchatzImSchlammsee_15_00"); //Sluchaj tutaj. Ta rzecz z skarbem....
	AI_Output(self, hero, "Info_Mod_Kyle_SchatzImSchlammsee_10_01"); //Nie masz go, to powinno byc oczywiste!
	AI_Output(self, hero, "Info_Mod_Kyle_SchatzImSchlammsee_10_02"); //Po prostu szeptalem to do Gravo, zeby nie biegal przez moja chate tysiac razy dziennie.
	AI_Output(self, hero, "Info_Mod_Kyle_SchatzImSchlammsee_10_03"); //Moglem powiedziec innym, ale z Gravo nie pomoglo mi, ze umiescilem mój kameralny garnek w jednym drzwiach.
	AI_Output(self, hero, "Info_Mod_Kyle_SchatzImSchlammsee_10_04"); //Niech dlugo po czyms kopie. Kto wie, moze kiedys znajdzie zyle wodna!

	B_LogEntry	(TOPIC_MOD_GRAVO_SCHATZ, "Kyle stworzyl skarb, aby pozbyc sie Gravo.");
};

INSTANCE Info_Mod_Kyle_Lagermusik (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_Lagermusik_Condition;
	information	= Info_Mod_Kyle_Lagermusik_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gravo naprawde cos znalazl. Miejsce, do którego go wyslales.";
};

FUNC INT Info_Mod_Kyle_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kyle_Lagermusik_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_Lagermusik_15_00"); //Gravo naprawde cos znalazl. Miejsce, do którego go wyslales.
	AI_Output(self, hero, "Info_Mod_Kyle_Lagermusik_10_01"); //Stara moneta, a moze co?
	AI_Output(hero, self, "Info_Mod_Kyle_Lagermusik_15_02"); //Nie. Garaz i Pacho przechowali tam swoje instrumenty muzyczne.
	AI_Output(self, hero, "Info_Mod_Kyle_Lagermusik_10_03"); //Moze powinienem pracowac jako sprzedawca fortuny?
	AI_Output(self, hero, "Info_Mod_Kyle_Lagermusik_10_04"); //Oto moja nastepna przepowiednia: Gravo bedzie raz jeszcze przechodzic przez chate codziennie, jak poprzednio.
	AI_Output(hero, self, "Info_Mod_Kyle_Lagermusik_15_05"); //Nie sadze. Teraz chce przejsc do tworzenia muzyki.
	AI_Output(self, hero, "Info_Mod_Kyle_Lagermusik_10_06"); //Tak? To byloby fantastyczne. Miejmy nadzieje, ze daleko ode mnie.

	if (!Npc_KnowsInfo(hero, Info_Mod_Kyle_SchatzImSchlammsee))	{
		B_GivePlayerXP	(100);

		B_SetTopicStatus	(TOPIC_MOD_GRAVO_SCHATZ, LOG_SUCCESS);

		CurrentNQ += 1;
	};
};

INSTANCE Info_Mod_Kyle_KGBuddler (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_KGBuddler_Condition;
	information	= Info_Mod_Kyle_KGBuddler_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcesz ponownie pracowac jako kopaczka?";
};

FUNC INT Info_Mod_Kyle_KGBuddler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Costa_Buddler))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kyle_KGBuddler_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_KGBuddler_15_00"); //Chcesz ponownie pracowac jako kopaczka?
	AI_Output(self, hero, "Info_Mod_Kyle_KGBuddler_10_01"); //Zatrzymajmy sie! Ten wieczny rozdrobnienie w dawnej kopalni bylo straszne.
	AI_Output(self, hero, "Info_Mod_Kyle_KGBuddler_10_02"); //Z drugiej strony, praca w terenie to czysta regeneracja.
};

INSTANCE Info_Mod_Kyle_Pickpocket (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_Pickpocket_Condition;
	information	= Info_Mod_Kyle_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Kyle_Pickpocket_Condition()
{
	C_Beklauen	(43, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Kyle_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);

	Info_AddChoice	(Info_Mod_Kyle_Pickpocket, DIALOG_BACK, Info_Mod_Kyle_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Kyle_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Kyle_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Kyle_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);
};

FUNC VOID Info_Mod_Kyle_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);

		Info_AddChoice	(Info_Mod_Kyle_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Kyle_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Kyle_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Kyle_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Kyle_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Kyle_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Kyle_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Kyle_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Kyle_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Kyle_EXIT (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_EXIT_Condition;
	information	= Info_Mod_Kyle_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kyle_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kyle_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
