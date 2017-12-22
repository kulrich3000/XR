INSTANCE Info_Mod_Tom_Hi (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Hi_Condition;
	information	= Info_Mod_Tom_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tom_Hi_Condition()
{
	var C_Item itm;
	itm = Npc_GetEquippedArmor(other);
	
	if (Hlp_IsItem(itm, ITAR_MIL_L) == TRUE)
	|| (Hlp_IsItem(itm, ITAR_MIL_M) == TRUE)
	|| (Hlp_IsItem(itm, ITAR_PAL_M) == TRUE)
	|| (Hlp_IsItem(itm, ITAR_PAL_H) == TRUE)
	|| (Hlp_IsItem(itm, ITAR_PAL_TIGER) == TRUE)
	|| (Hlp_IsItem(itm, ITAR_MIL_s2) == TRUE)
	|| (hero.guild == GIL_PAL)
	{
		return 0;
	}
	else if (Mod_Gilde > 0)
	&& (Mod_DidCrime)
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tom_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_00"); //Hej, co mówi Pan o gromadzeniu pieniedzy w magazynie przez Bloodwyn?
	AI_Output(hero, self, "Info_Mod_Tom_Hi_15_01"); //Co? To byl dlugi czas..... kto troszczy sie o.....
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_02"); //Wiec czy ty jestes wtedy facetem z kolonii?
	AI_Output(hero, self, "Info_Mod_Tom_Hi_15_03"); //Co myslisz?
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_04"); //Bylem wówczas Buddlerka w Starym Obozie i myslalem, ze poznalem Ciebie jako wspólwiezniów.
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_05"); //Szczerze mówiac, zadalem panstwu to pytanie.
	AI_Output(hero, self, "Info_Mod_Tom_Hi_15_06"); //Jaki jest cel?
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_07"); //No cóz, mam problem z tym, ze niekoniecznie moge ufac kazdej drobnej burzuazji z tego miasta..... a raczej inny ex-con.
	AI_Output(hero, self, "Info_Mod_Tom_Hi_15_08"); //Co mam dla Ciebie zrobic?
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_09"); //Mój przyjaciel posiada obóz przy moscie w poblizu tawerny. Dowiedzialam sie jednak, ze tam zostawila sie mala milicja.
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_10"); //Trzeba go ostrzec.

	Mod_Tom_Boese = TRUE;

	Log_CreateTopic	(TOPIC_MOD_TOMSFREUND, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TOMSFREUND, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TOMSFREUND, "Pewien Tomek poprosil mnie, abym ostrzegl swojego przyjaciela, który znajduje sie w poblizu tawerny przy moscie, przed milicja.");
};

INSTANCE Info_Mod_Tom_Franco (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Franco_Condition;
	information	= Info_Mod_Tom_Franco_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ostrzeglem Franco.";
};

FUNC INT Info_Mod_Tom_Franco_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Franco_Warnung))
	&& (Mod_Tom_Boese == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tom_Franco_Info()
{
	AI_Output(hero, self, "Info_Mod_Tom_Franco_15_00"); //Ostrzeglem Franco. Powiedzial, ze jedzie do Edgoru.
	AI_Output(self, hero, "Info_Mod_Tom_Franco_11_01"); //Bardzo dobrze, dziekuje.

	B_LogEntry	(TOPIC_MOD_TOMSFREUND, "Opowiedzialem Tomkowi o ucieczce z Franco.");
	B_SetTopicStatus	(TOPIC_MOD_TOMSFREUND, LOG_SUCCESS);

	Mod_Tom_Boese = FALSE;

	B_GivePlayerXP	(100);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Tom_Belohnung (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Belohnung_Condition;
	information	= Info_Mod_Tom_Belohnung_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co z nagroda?";
};

FUNC INT Info_Mod_Tom_Belohnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tom_Franco))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tom_Belohnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Tom_Belohnung_15_00"); //A co z nagroda?
	AI_Output(self, hero, "Info_Mod_Tom_Belohnung_11_01"); //No cóz, zrobiles mi laske, a teraz zrobie ci jedna.
	AI_Output(self, hero, "Info_Mod_Tom_Belohnung_11_02"); //Wez ten pierscien i przejdz do Edgor. Znajduje sie w poblizu farmy Bengarskiej.

	B_GiveInvItems	(self, hero, Mod_Banditenring, 1);

	AI_Output(self, hero, "Info_Mod_Tom_Belohnung_11_03"); //Bedziesz musial cos dla niego zrobic, a wtedy on da ci pierwsza polowe slowa. Jesli masz obie polówki, mozesz udac sie do naszego obozu glównego i zostac zabrany.

	Log_CreateTopic	(TOPIC_MOD_AUFNAHME_BANDITEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AUFNAHME_BANDITEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AUFNAHME_BANDITEN, "Tomek dal mi pierscionek do Edgoru. Nastepnie otrzymuje pierwsza polowe slowa. Kiedy bede mial obie polówki, dostaniem sie do domu.");
};

INSTANCE Info_Mod_Tom_Krautquest (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Krautquest_Condition;
	information	= Info_Mod_Tom_Krautquest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tom_Krautquest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Senyan_TomKraut))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tom_Krautquest_Info()
{
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest_11_00"); //Ty tutaj? Sluchaj, pomóz mi pan.
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest_11_01"); //Swinie zlapaly mnie na roslinach bagiennych i chca, abym zostal w lochach.
	AI_Output(hero, self, "Info_Mod_Tom_Krautquest_15_02"); //Czy kupie cie?
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest_11_03"); //Tak, zobacz co mozesz zrobic. Chociaz nie jestem pewien, czy Andre's gonna sie zaangazuje.
	AI_Output(hero, self, "Info_Mod_Tom_Krautquest_15_04"); //Dobrze, porozmawiam z nim.

	B_LogEntry	(TOPIC_MOD_TOM_KRAUT, "Powinienem zobaczyc, czy moge zostac zwolniony Andre.");
};

INSTANCE Info_Mod_Tom_Krautquest2 (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Krautquest2_Condition;
	information	= Info_Mod_Tom_Krautquest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zle wiesci....";
};

FUNC INT Info_Mod_Tom_Krautquest2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_TomKraut))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tom_Krautquest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Tom_Krautquest2_15_00"); //Zle wiesci....
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest2_11_01"); //No tak, wiem, slyszalem wszystko.
	AI_Output(hero, self, "Info_Mod_Tom_Krautquest2_15_02"); //Co dalej?
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest2_11_03"); //Cóz, niech mi sie nad tym zastanowie..... Z tego, co widze, chwast bagienny znajduje sie w skrzynce dowodowej za Andre' em.....
	AI_Output(hero, self, "Info_Mod_Tom_Krautquest2_15_04"); //Czy powinienem ja ukrasc?
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest2_11_05"); //Nie, chyba nie jest to takie proste.
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest2_11_06"); //Ostatecznie, strózkowie moga swiadczyc, jak ziol zostal przejety ode mnie...... i tylko slowo Mica oznacza duzo.
	AI_Output(hero, self, "Info_Mod_Tom_Krautquest2_15_07"); //Co zatem?
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest2_11_08"); //Hmm..... ziól, które widzieli......
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest2_11_09"); //Przypomina mi to, ze kiedys widzialem ziolo, które wygladalo bardzo podobnie jak chwasty bagienne...... ale nie bylo to tylko ziolo bagienne.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_TOM_KRAUT, "Tomek wspomnial o innym ziole, które wygladaja bardzo podobnie do bagna..... Jesli zamienilem chwast bagienny w klatce piersiowej z tym....");
};

INSTANCE Info_Mod_Tom_Krautquest3 (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Krautquest3_Condition;
	information	= Info_Mod_Tom_Krautquest3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tom_Krautquest3_Condition()
{
	if (Mod_SenyanTom_Kraut == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tom_Krautquest3_Info()
{
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest3_11_00"); //Wykonal pan wspaniala prace. I balem sie, ze bede musial zostac tam na zawsze. (smiertelnicy)
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest3_11_01"); //Powinien byles widziec twarz Andre' a, kiedy wpuscil mnie z celi i wcisnal mi do reki wielka torbe pelna monet z wyrazami zalu, huh?
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest3_11_02"); //W tym przypadku zloto jest oczywiscie twoim zlotem.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(self, hero, "Info_Mod_Tom_Krautquest3_11_03"); //I wez równiez ten pierscien. Zasluzyl pan na to równiez.

	B_GiveInvItems	(self, hero, ItRi_Talentring, 1);

	AI_Output(self, hero, "Info_Mod_Tom_Krautquest3_11_04"); //Dbaj o siebie.

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_TOM_KRAUT, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Tom_Pickpocket (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Pickpocket_Condition;
	information	= Info_Mod_Tom_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Tom_Pickpocket_Condition()
{
	C_Beklauen	(52, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Tom_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Tom_Pickpocket);

	Info_AddChoice	(Info_Mod_Tom_Pickpocket, DIALOG_BACK, Info_Mod_Tom_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Tom_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Tom_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Tom_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Tom_Pickpocket);
};

FUNC VOID Info_Mod_Tom_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Tom_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Tom_Pickpocket);

		Info_AddChoice	(Info_Mod_Tom_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Tom_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Tom_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Tom_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Tom_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Tom_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Tom_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Tom_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Tom_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Tom_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Tom_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Tom_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Tom_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Tom_EXIT (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_EXIT_Condition;
	information	= Info_Mod_Tom_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tom_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tom_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
