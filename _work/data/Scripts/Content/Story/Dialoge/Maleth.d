INSTANCE Info_Mod_Maleth_Hi (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_Hi_Condition;
	information	= Info_Mod_Maleth_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Maleth_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Maleth_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_08_00"); //Spójrz na ciebie, innego nieznajomego! Czy jestes w drodze do miasta?

	Info_ClearChoices	(Info_Mod_Maleth_Hi);

	Info_AddChoice	(Info_Mod_Maleth_Hi, "Zaden z Panstwa dzialalnosci.", Info_Mod_Maleth_Hi_B);
	Info_AddChoice	(Info_Mod_Maleth_Hi, "Tak, dokladnie.", Info_Mod_Maleth_Hi_A);
};

FUNC VOID Info_Mod_Maleth_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Maleth_Hi_B_15_00"); //Zaden z Panstwa dzialalnosci.

	var C_Item NovArmorOrNot;
	NovArmorOrNot = Npc_GetEquippedArmor(hero);

	if (Hlp_IsItem(NovArmorOrNot, ITAR_FAKE_NOV_L))
	{
		AI_Output(self, hero, "Info_Mod_Maleth_Hi_B_08_01"); //Cokolwiek mówisz. Nie oczekuj jednak, ze zapewnimy Ci wyzywienie i zakwaterowanie, nawet jesli jestes nowicjuszem klasztoru.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Maleth_Hi_B_08_02"); //Cokolwiek mówisz, nieznajomy. Ale nie spraw dla nas tutaj.
	};

	Info_ClearChoices	(Info_Mod_Maleth_Hi);
};

FUNC VOID Info_Mod_Maleth_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Maleth_Hi_A_15_00"); //Tak, to prawda.
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_01"); //Dobrze by bylo.
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_02"); //Oprócz dzikich zwierzat, od czasu upadku zapory wisza tu wszystkie rodzaje pelzajacego riffraffa, jak dziwny mroczny pielgrzym, który przybyl tu wczesniej.
	AI_Output(hero, self, "Info_Mod_Maleth_Hi_A_15_03"); //Mroczny pielgrzym?
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_04"); //Tak, raczej zlowieszcza figura. Poszedl do miasta. Na szczescie nie prosil nas o schronienie.
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_05"); //No cóz, nasz rolnik i tak nie dalby mu miejsca do zycia, ale raczej skierowal go do miasta.
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_06"); //Tak jak ostatni gosc, który tu byl. Nie czulem sie tez z nim zbyt dobrze.
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_07"); //Mówiac spokojnie, ale z tatuazem wygladal, jak gdyby przyszedl do twojego gardla.
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_08"); //Nie wpuszczono go do miasta. Od tego czasu wiele sie od tej pory owijal.

	B_LogEntry	(TOPIC_MOD_DUNKLERPILGER, "Maleth widziala mroczne przejscie pielgrzymów w kierunku miasta. Byc moze dowiemy sie wiecej od strazników.");

	B_GivePlayerXP	(50);
	
	Info_ClearChoices	(Info_Mod_Maleth_Hi);
};

INSTANCE Info_Mod_Maleth_Neuankoemmlinge (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_Neuankoemmlinge_Condition;
	information	= Info_Mod_Maleth_Neuankoemmlinge_Info;
	permanent	= 0;
	important	= 0;
	description	= "Brzmisz tak, jakbys mógl sluchac wszystkich nowicjuszy (....). )";
};

FUNC INT Info_Mod_Maleth_Neuankoemmlinge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Maleth_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Maleth_Neuankoemmlinge_Info()
{
	AI_Output(hero, self, "Info_Mod_Maleth_Neuankoemmlinge_15_00"); //Brzmi to tak, jak mozesz przekazywac wiadomosci wszystkim nowicjuszom.
	AI_Output(self, hero, "Info_Mod_Maleth_Neuankoemmlinge_08_01"); //No cóz, teraz jest juz troche zatloczony. Zaledwie kilka tygodni temu bylo to najcichsze gospodarstwo w Khorinis i musialem tylko uwazac, aby gobliny i wilki nie byly zbyt smieszne.
	AI_Output(self, hero, "Info_Mod_Maleth_Neuankoemmlinge_08_02"); //Ale od tego czasu: obcy przechodza obok nas jak gdyby bylismy atrakcja turystyczna. Robberzy osiedlili sie gdzies po drodze, a dalej z powrotem podobno zbudowano potezna wieze, z której emanuje zla moc.
	AI_Output(self, hero, "Info_Mod_Maleth_Neuankoemmlinge_08_03"); //I ja i moje stado owiec, gówno.
};

INSTANCE Info_Mod_Maleth_Hof (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_Hof_Condition;
	information	= Info_Mod_Maleth_Hof_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie to jest gospodarstwo rolne?";
};

FUNC INT Info_Mod_Maleth_Hof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Maleth_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Maleth_Hof_Info()
{
	AI_Output(hero, self, "Info_Mod_Maleth_Hof_15_00"); //Jakie to jest gospodarstwo rolne?
	AI_Output(self, hero, "Info_Mod_Maleth_Hof_08_01"); //Gospodarstwo nalezy do rolnika Lobart. Korzystamy z ochrony miasta - przynajmniej teoretycznie. W zamian musimy pozostawic znaczna czesc naszego plonu paladynom.
	AI_Output(self, hero, "Info_Mod_Maleth_Hof_08_02"); //Znajdziesz tam Lobart, w kierunku domów. Oglada wszystko.
};

INSTANCE Info_Mod_Maleth_Wolfsplage (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_Wolfsplage_Condition;
	information	= Info_Mod_Maleth_Wolfsplage_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego robisz taka twarz?";
};

FUNC INT Info_Mod_Maleth_Wolfsplage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Maleth_Hi))
	&& (Kapitel > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Maleth_Wolfsplage_Info()
{
	AI_Output(hero, self, "Info_Mod_Maleth_Wolfsplage_15_00"); //Dlaczego robisz taka twarz?
	AI_Output(self, hero, "Info_Mod_Maleth_Wolfsplage_08_01"); //Oh, ostatnio mamy coraz wiecej problemów z wilkami. Oni rozdzieraja moje owce i nie moge ich zlapac.
	AI_Output(hero, self, "Info_Mod_Maleth_Wolfsplage_15_02"); //Gdzie sa te zwierzeta?
	AI_Output(self, hero, "Info_Mod_Maleth_Wolfsplage_08_03"); //Chcesz zamieszac z tymi zwierzetami?
	AI_Output(hero, self, "Info_Mod_Maleth_Wolfsplage_15_04"); //To wlasnie mialem na mysli.
	AI_Output(self, hero, "Info_Mod_Maleth_Wolfsplage_08_05"); //Czy móglbys to zrobic? Cóz, te stworzenia zawsze wisza w poblizu posagów Inno i zawsze pojawiaja sie, gdy patrzysz dalej.
	AI_Output(hero, self, "Info_Mod_Maleth_Wolfsplage_15_06"); //Zobacze to.
	AI_Output(self, hero, "Info_Mod_Maleth_Wolfsplage_08_07"); //Powodzenia!

	Log_CreateTopic	(TOPIC_MOD_MALETH_WOLFSPLAGE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MALETH_WOLFSPLAGE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MALETH_WOLFSPLAGE, "Pasterz Maleth ma problem z wilkami. Chowaja sie w okolicach Innoshrine i lzawia swoje owce, gdy nie wygladaja. Powinienem sie tym zajac.");

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Blackwolf_Maleth_01, "NW_FARM1_PATH_SPAWN_07");
	Wld_InsertNpc	(Blackwolf_Maleth_02, "NW_FARM1_PATH_SPAWN_07");
	Wld_InsertNpc	(Blackwolf_Maleth_03, "NW_FARM1_PATH_SPAWN_07");
};

INSTANCE Info_Mod_Maleth_WoelfeTot (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_WoelfeTot_Condition;
	information	= Info_Mod_Maleth_WoelfeTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "wilki nie sprawia ci wiecej klopotów!";
};

FUNC INT Info_Mod_Maleth_WoelfeTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Maleth_Wolfsplage))
	&& (Npc_IsDead(Blackwolf_Maleth_01))
	&& (Npc_IsDead(Blackwolf_Maleth_02))
	&& (Npc_IsDead(Blackwolf_Maleth_03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Maleth_WoelfeTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Maleth_WoelfeTot_15_00"); //wilki nie sprawia ci wiecej klopotów!
	AI_Output(self, hero, "Info_Mod_Maleth_WoelfeTot_08_01"); //Dziekuje, jestem Panstwu to winien.

	B_LogEntry	(TOPIC_MOD_MALETH_WOLFSPLAGE, "Zabilem wilki i Maleth byla szczesliwa.");
	B_SetTopicStatus	(TOPIC_MOD_MALETH_WOLFSPLAGE, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	B_Göttergefallen(1, 1);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Maleth_Pickpocket (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_Pickpocket_Condition;
	information	= Info_Mod_Maleth_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Maleth_Pickpocket_Condition()
{
	C_Beklauen	(50, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Maleth_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);

	Info_AddChoice	(Info_Mod_Maleth_Pickpocket, DIALOG_BACK, Info_Mod_Maleth_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Maleth_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Maleth_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Maleth_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);
};

FUNC VOID Info_Mod_Maleth_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);

		Info_AddChoice	(Info_Mod_Maleth_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Maleth_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Maleth_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Maleth_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Maleth_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Maleth_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Maleth_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Maleth_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Maleth_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Maleth_EXIT (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_EXIT_Condition;
	information	= Info_Mod_Maleth_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Maleth_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Maleth_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
