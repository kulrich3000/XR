INSTANCE Info_Mod_Edgor_Hi (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Hi_Condition;
	information	= Info_Mod_Edgor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edgor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Edgor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Edgor_Hi_31_00"); //Co Pan tutaj robi? Wyjsc stad.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Edgor_Ring (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Ring_Condition;
	information	= Info_Mod_Edgor_Ring_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edgor_Ring_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tom_Belohnung))
	&& (Npc_HasItems(hero, Mod_Banditenring) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Ring_Info()
{
	AI_Output(self, hero, "Info_Mod_Edgor_Ring_31_00"); //Gdzie otrzymasz ten pierscien?
};

INSTANCE Info_Mod_Edgor_Tom (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Tom_Condition;
	information	= Info_Mod_Edgor_Tom_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tomek mi ja dal.";
};

FUNC INT Info_Mod_Edgor_Tom_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Ring))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Tom_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Tom_15_00"); //Tomek mi ja dal. Wyslal mnie, aby podac Ci pierwsza polowe hasla.
	AI_Output(self, hero, "Info_Mod_Edgor_Tom_31_01"); //I myslisz, ze po prostu mówie ci teraz? Chcesz to sobie wyobrazic, czy nie?
	AI_Output(self, hero, "Info_Mod_Edgor_Tom_31_02"); //Jesli potrzebujesz pierwszej polowy, musisz cos z tym zrobic.

	B_LogEntry	(TOPIC_MOD_AUFNAHME_BANDITEN, "Edgor nie powie mi pierwszej polowie hasla. Najpierw powinienem cos dla niego zrobic.");
};

INSTANCE Info_Mod_Edgor_Aufgabe (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Aufgabe_Condition;
	information	= Info_Mod_Edgor_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co mam dla Ciebie zrobic?";
};

FUNC INT Info_Mod_Edgor_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Tom))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Aufgabe_15_00"); //Co mam dla Ciebie zrobic?
	AI_Output(self, hero, "Info_Mod_Edgor_Aufgabe_31_01"); //Pozwól mi, abym.... dwanascie lodyg ziól bagiennych, szesc butelek jalowca, cztery butelki wina, trzy piwa, jedna szynka, piec kawalków prazonego miesa, trzy kawalki sera, dwie butelki mleka..... oraz..... i...
	AI_Output(hero, self, "Info_Mod_Edgor_Aufgabe_15_02"); //Wszystko inne?
	AI_Output(self, hero, "Info_Mod_Edgor_Aufgabe_31_03"); //Poniewaz pytasz.... 300 zlotych monet tez nie byloby zle....
	AI_Output(hero, self, "Info_Mod_Edgor_Aufgabe_15_04"); //...
	AI_Output(self, hero, "Info_Mod_Edgor_Aufgabe_31_05"); //Hej, nie patrz na mnie tak jak teraz. Musze sie z czegos utrzymac.
	AI_Output(self, hero, "Info_Mod_Edgor_Aufgabe_31_06"); //Juz w tym czasie moglem sprowadzic tylko troche z doliny Kopalni.... Wiecej a poza tym, ci zwariowani rabusie rozprzestrzenili sie na Khorinis i zostawili nam bandytów z mala iloscia czasu na grabiez.

	Log_CreateTopic	(TOPIC_MOD_EDGORSGOLD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EDGORSGOLD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EDGORSGOLD, "Mam przyniesc Edgor dwanascie lodyg kapusty bagiennej, szesc butelek jalowca, cztery butelki wina, trzy piwa, jedna szynke, piec kawalków miesa palonego, trzy kawalki sera, dwie butelki mleka i 300 zlotych monet, wtedy on mówi mi pierwsza polowe hasla.");
};

INSTANCE Info_Mod_Edgor_Raeuber (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Raeuber_Condition;
	information	= Info_Mod_Edgor_Raeuber_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zlodzieje sa historia....";
};

FUNC INT Info_Mod_Edgor_Raeuber_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Aufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Edgor_Gold))
	&& (Npc_IsDead(Mod_7772_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7773_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7774_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7775_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7776_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7777_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7778_BDT_Bandit_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Raeuber_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Raeuber_15_00"); //Zlodzieje sa historia....
	AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_01"); //Naprawde? No cóz, przeciez milicja jest dobra na cos. (smiertelnicy)
	AI_Output(hero, self, "Info_Mod_Edgor_Raeuber_15_02"); //Um....
	AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_03"); //Wtedy wkrótce bede w stanie pladrowac pelne kieszenie i wagony przejezdzajacych tu kupców tluszczu. (smiertelnicy)

	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Gold))
	{
		AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_04"); //Bez twardych uczuc. Tutaj, na wspaniala wiadomosc, wez tlusta szynke, która zostawilem, piwo i dwie lodygi.

		B_ShowGivenThings	("Szynka, piwo i 2 lodygi konserwowanej kapusty bagiennej");

		CreateInvItems	(hero, ItFo_Bacon, 1);
		CreateInvItems	(hero, ItFo_Beer, 1);
		CreateInvItems	(hero, ItMi_Joint, 2);

		AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_05"); //Zabawa z tym.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_06"); //Dla tej wspanialej wiadomosci podam Ci pierwsza polowe hasla. Jej imieniem Dex.
		AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_07"); //Druga polowa da Ci Senyan. Znajduje sie w poblizu miejscowosci Sekobs Hof.

		B_LogEntry_More	(TOPIC_MOD_AUFNAHME_BANDITEN, TOPIC_MOD_EDGORSGOLD, "Pierwsza polowa nazywana jest Dex. Druga polowa ma Senyan, który znajduje sie w poblizu placu Sekobs.", "Powiedzialem Edgorowi o zabitych bandytach. To bylo dla niego oczywiscie wystarczajace.....");
		B_SetTopicStatus	(TOPIC_MOD_EDGORSGOLD, LOG_SUCCESS);

		B_Göttergefallen(3, 1);
	};

	B_GivePlayerXP	(400);
};

INSTANCE Info_Mod_Edgor_Gold (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Gold_Condition;
	information	= Info_Mod_Edgor_Gold_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem rzeczy.";
};

FUNC INT Info_Mod_Edgor_Gold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Aufgabe))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 400)
	&& (Npc_HasItems(hero, ItMi_Joint) >= 12)
	&& (Npc_HasItems(hero, ItFo_Booze) >= 6)
	&& (Npc_HasItems(hero, ItFo_Wine) >= 4)
	&& (Npc_HasItems(hero, ItFo_Beer) >= 3)
	&& (Npc_HasItems(hero, ItFo_Bacon) >= 1)
	&& (Npc_HasItems(hero, ItFo_Mutton) >= 5)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 3)
	&& (Npc_HasItems(hero, ItFo_Milk) >= 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Edgor_Raeuber))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Gold_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Gold_15_00"); //Dostalem rzeczy.

	Npc_RemoveInvItems	(hero, ItFo_Booze, 6);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 400);
	Npc_RemoveInvItems	(hero, ItMi_Joint, 12);
	Npc_RemoveInvItems	(hero, ItFo_Wine, 4);
	Npc_RemoveInvItems	(hero, ItFo_Beer, 3);
	Npc_RemoveInvItems	(hero, ItFo_Bacon, 1);
	Npc_RemoveInvItems	(hero, ItFo_Mutton, 5);
	Npc_RemoveInvItems	(hero, ItFo_Cheese, 3);
	Npc_RemoveInvItems	(hero, ItFo_Milk, 2);

	B_ShowGivenThings	("Edgor's Things Gave");

	AI_Output(self, hero, "Info_Mod_Edgor_Gold_31_01"); //Na koniec cos do jedzenia i picia.
	AI_Output(hero, self, "Info_Mod_Edgor_Gold_15_02"); //Czy powie mi pan teraz pierwsza czesc?
	AI_Output(self, hero, "Info_Mod_Edgor_Gold_31_03"); //No cóz, przyniesliscie mi moje rzeczy i teraz bede w tym pomóc.
	AI_Output(self, hero, "Info_Mod_Edgor_Gold_31_04"); //Pierwsza polowa nazywana jest Dex. Druga polowa da Ci Senyan. Znajduje sie w poblizu miejscowosci Sekobs Hof.

	B_GivePlayerXP	(300);

	B_LogEntry_More	(TOPIC_MOD_AUFNAHME_BANDITEN, TOPIC_MOD_EDGORSGOLD, "Pierwsza polowa nazywana jest Dex. Druga polowa ma Senyan, który znajduje sie w poblizu placu Sekobs.", "Dalem Edgorowi jego rzeczy.");
	B_SetTopicStatus	(TOPIC_MOD_EDGORSGOLD, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Edgor_Skinner (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Skinner_Condition;
	information	= Info_Mod_Edgor_Skinner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tu cos dla panstwa. Powitania od Skinnera.";
};

FUNC INT Info_Mod_Edgor_Skinner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_01) >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Skinner_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Skinner_15_00"); //Mam tu cos dla panstwa. Powitania od Skinnera.
	AI_Output(self, hero, "Info_Mod_Edgor_Skinner_31_01"); //Ten brudny syn suki. Poczatkowo palil w nocy przed moim wyjazdem moja polówke bagna, wypil moje zapasy likieru pustego i teraz wysyla zdenerwowanego chlopca z trzema lodygami rabu bagnistego.
	AI_Output(hero, self, "Info_Mod_Edgor_Skinner_15_02"); //Chcesz ziól bagiennych czy nie?
	AI_Output(self, hero, "Info_Mod_Edgor_Skinner_31_03"); //Och, daj mi go.

	B_GiveInvItems	(hero, self, ItMi_Addon_Joint_01, 3);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Edgor otrzymal lodygi.");
};

INSTANCE Info_Mod_Edgor_IstBandit (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_IstBandit_Condition;
	information	= Info_Mod_Edgor_IstBandit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edgor_IstBandit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Hi))
	&& (Wld_IsTime(22,15,02,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_IstBandit_Info()
{
	AI_Output(self, hero, "Info_Mod_Edgor_IstBandit_31_00"); //Czlowiek, jak nudny, caly czas siedzacy wokól ogniska. Czas na kolejny rabunek.
	AI_Output(self, hero, "Info_Mod_Edgor_IstBandit_31_01"); //Bylby to dobry czas na ubój owiec na plaskowyzu pastwiskowym. Z pasterzem i jego psem powinnismy poradzic sobie latwo. Czy jestes?
	
	Info_ClearChoices	(Info_Mod_Edgor_IstBandit);

	Info_AddChoice	(Info_Mod_Edgor_IstBandit, "Naprawde mam lepsze rzeczy do zrobienia (.....). )", Info_Mod_Edgor_IstBandit_B);
	Info_AddChoice	(Info_Mod_Edgor_IstBandit, "Oczywiscie, nie bede przegapil zabawy.", Info_Mod_Edgor_IstBandit_A);
};

FUNC VOID Info_Mod_Edgor_IstBandit_B()
{
	AI_Output(hero, self, "Info_Mod_Edgor_IstBandit_B_15_00"); //Naprawde mam wiecej do zrobienia niz ubój owiec rolnika na polu.
	AI_Output(self, hero, "Info_Mod_Edgor_IstBandit_B_31_01"); //Nie badz.
	
	Info_ClearChoices	(Info_Mod_Edgor_IstBandit);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Edgor_IstBandit_A()
{
	AI_Output(hero, self, "Info_Mod_Edgor_IstBandit_A_15_00"); //Oczywiscie, nie bede przegapil zabawy.
	AI_Output(self, hero, "Info_Mod_Edgor_IstBandit_A_31_01"); //No cóz, przejdzmy wiec.
	
	Info_ClearChoices	(Info_Mod_Edgor_IstBandit);

	Mod_Edgor_SchafeSchlachten = 1;

	Log_CreateTopic	(TOPIC_MOD_BDT_EDGOR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_EDGOR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_EDGOR, "Poniewaz Edgor jest nudny, wraz z nim i Franco dokonam uboju owiec na pastwiskach.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MALAK");
	B_StartOtherRoutine	(Mod_952_BDT_Franco_NW, "MALAK");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_952_BDT_Franco_NW.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Edgor_SchafeTot (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_SchafeTot_Condition;
	information	= Info_Mod_Edgor_SchafeTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edgor_SchafeTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_IstBandit))
	&& (Mod_Edgor_Schafeschlachten == 2)
	&& (Npc_IsDead(Sheep_Bengar_04))
	&& (Npc_IsDead(Sheep_Bengar_05))
	&& (Npc_GetDistToWP(Mod_946_BDT_Edgor_NW, "NW_FARM3_MOUNTAINLAKE_05") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_SchafeTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Edgor_SchafeTot_31_00"); //No cóz, to byla zabawa. Owcze uda pozwolilismy nam teraz spróbowac dobrego smaku, a skóra, która z pewnoscia pozbedziemy sie gdzies za kilka zlotych monet. Oto Twój udzial.
	
	CreateInvItems	(hero, ItFo_MuttonRaw, 3);
	CreateInvItems	(hero, ItAt_SheepFur, 2);
	
	B_GivePlayerXP	(200);

	Mod_Edgor_SchafeSchlachten = 3;

	B_SetTopicStatus	(TOPIC_MOD_BDT_EDGOR, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_952_BDT_Franco_NW, "BEIFRANCO");

	CurrentNQ += 1;

	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_952_BDT_Franco_NW.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Edgor_Pickpocket (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Pickpocket_Condition;
	information	= Info_Mod_Edgor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Edgor_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Edgor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

	Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_BACK, Info_Mod_Edgor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Edgor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Edgor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);
};

FUNC VOID Info_Mod_Edgor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

		Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Edgor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Edgor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Edgor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Edgor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Edgor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Edgor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Edgor_EXIT (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_EXIT_Condition;
	information	= Info_Mod_Edgor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Edgor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Edgor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
