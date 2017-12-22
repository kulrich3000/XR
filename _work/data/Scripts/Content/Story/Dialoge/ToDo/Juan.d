INSTANCE Info_Mod_Juan_Quest (C_INFO)
{
	npc		= Mod_955_BDT_Juan_MT;
	nr		= 1;
	condition	= Info_Mod_Juan_Quest_Condition;
	information	= Info_Mod_Juan_Quest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Juan_Quest_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Dexter_AngriffVorbei))
	&& (Mod_AlbertTransforms >= 8)
	&& (Mod_Dexter_BanditenParty + 2 <= Wld_GetDay()))
	|| ((Npc_KnowsInfo(hero, Info_Mod_Dexter_Hi))
	&& (Banditen_Dabei == FALSE))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juan_Quest_Info()
{
	AI_Output(self, hero, "Info_Mod_Juan_Quest_13_00"); //Hej, czy nie jestes twardym facetem? Oczywiscie jestes, udowodniles to.
	AI_Output(self, hero, "Info_Mod_Juan_Quest_13_01"); //Lubisz wyzwania. Wtedy mam dla Ciebie wlasciwa prace, gdzie dostaniesz duzo.
	AI_Output(hero, self, "Info_Mod_Juan_Quest_15_02"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Juan_Quest_13_03"); //Jest jakis dealer, który jest wlascicielem czegos, co chcialbym miec. A poniewaz jestes takim inteligentnym facetem, dostaniesz go dla mnie.
	AI_Output(self, hero, "Info_Mod_Juan_Quest_13_04"); //Bede mial na to 300 zlotych monet. Co mówisz?

	Info_ClearChoices	(Info_Mod_Juan_Quest);

	Info_AddChoice	(Info_Mod_Juan_Quest, "Nie, powinienes znalezc kogos innego.", Info_Mod_Juan_Quest_B);
	Info_AddChoice	(Info_Mod_Juan_Quest, "Tak, jestem.", Info_Mod_Juan_Quest_A);
};

FUNC VOID Info_Mod_Juan_Quest_B()
{
	AI_Output(hero, self, "Info_Mod_Juan_Quest_B_15_00"); //Nie, powinienes znalezc kogos innego.
	AI_Output(self, hero, "Info_Mod_Juan_Quest_B_13_01"); //Pah, nie.
	
	Info_ClearChoices	(Info_Mod_Juan_Quest);
};

FUNC VOID Info_Mod_Juan_Quest_A()
{
	AI_Output(hero, self, "Info_Mod_Juan_Quest_A_15_00"); //Tak, jestem.
	AI_Output(self, hero, "Info_Mod_Juan_Quest_A_13_01"); //Wspanialy! Nazwa kupca jest Antony. W dzisiejszych czasach musialby sie krecic wokól Starego Obozu. Hit go w dól i po prostu przyniesc mi wszystko, co ma, dobrze?

	Mod_JuanQuest = 1;

	Log_CreateTopic	(TOPIC_MOD_BDT_JUAN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_JUAN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_JUAN, "Mam okradac kupca Antoniusa dla Juana, który stoi przed starym obozem.");

	Wld_InsertNpc	(Mod_7189_OUT_Antonius_MT, "OC1");
	
	Info_ClearChoices	(Info_Mod_Juan_Quest);

	Info_AddChoice	(Info_Mod_Juan_Quest, "Co dokladnie powinienem otrzymac?", Info_Mod_Juan_Quest_D);
	Info_AddChoice	(Info_Mod_Juan_Quest, "Prawdopodobnie powinienem to zrobic.", Info_Mod_Juan_Quest_C);
};

FUNC VOID Info_Mod_Juan_Quest_D()
{
	AI_Output(hero, self, "Info_Mod_Juan_Quest_D_15_00"); //Co dokladnie powinienem otrzymac?
	AI_Output(self, hero, "Info_Mod_Juan_Quest_D_13_01"); //Wystarczy przyniesc mi wszystko, co ma. Bedzie mial go z nim.
	
	Info_ClearChoices	(Info_Mod_Juan_Quest);
};

FUNC VOID Info_Mod_Juan_Quest_C()
{
	AI_Output(hero, self, "Info_Mod_Juan_Quest_C_15_00"); //Prawdopodobnie powinienem to zrobic.
	
	Info_ClearChoices	(Info_Mod_Juan_Quest);
};

INSTANCE Info_Mod_Juan_Antonius (C_INFO)
{
	npc		= Mod_955_BDT_Juan_MT;
	nr		= 1;
	condition	= Info_Mod_Juan_Antonius_Condition;
	information	= Info_Mod_Juan_Antonius_Info;
	permanent	= 0;
	important	= 0;
	description	= "Uh, mam wszystko, co mial na mnie dealer.";
};

FUNC INT Info_Mod_Juan_Antonius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juan_Quest))
	&& (Mod_JuanQuest == 1)
	&& (Npc_IsDead(Mod_7189_OUT_Antonius_MT))
	&& (Npc_HasItems(hero, ItMi_Stuff_Barbknife_01) >= 10)
	&& (Npc_HasItems(hero, ItMi_Pan) >= 3)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 150)
	&& (Npc_HasItems(hero, ItFo_Addon_Grog) >= 10)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juan_Antonius_Info()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_15_00"); //Uh, mam wszystko, co mial na mnie dealer.
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_13_01"); //Tak, pokaz mi.
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_15_02"); //Sa golarki, patelnie, kilka butelek grog, 1 kawalek sera......
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_13_03"); //Ach, przepytaj, trzymaj chwyt. Chociaz.... Bede szamotala.

	B_GiveInvItems	(hero, self, ItFo_Addon_Grog, 10);

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Juan_Antonius_13_04"); //(mu samemu) Wtedy musi juz odsprzedac go Hortensiusowi.....
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_15_05"); //A co z moim zlotem teraz?

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Juan_Antonius_13_06"); //Bardzo zabawny. Zloze Ci oferte. Jesli grabiezy sie innego kupca, który musi miec przy sobie towar, dodaje 50 zlota.

	B_GivePlayerXP	(100);

	Info_ClearChoices	(Info_Mod_Juan_Antonius);

	Info_AddChoice	(Info_Mod_Juan_Antonius, "Zapomnij o tym. Daj mi tylko zloto.", Info_Mod_Juan_Antonius_C);
	Info_AddChoice	(Info_Mod_Juan_Antonius, "Chce wiedziec, co jestem gonna, najpierw cie dostaje.", Info_Mod_Juan_Antonius_B);
	Info_AddChoice	(Info_Mod_Juan_Antonius, "Wlasciwie to zrobie.", Info_Mod_Juan_Antonius_A);
};

FUNC VOID Info_Mod_Juan_Antonius_C()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_C_15_00"); //Zapomnij o tym. Daj mi tylko zloto.
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_C_13_01"); //Daje ci 100 zlota i wiecej monet.
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);

	Info_AddChoice	(Info_Mod_Juan_Antonius, "Dajesz mi uzgodniona sume, albo ja otrzymam!", Info_Mod_Juan_Antonius_E);
	Info_AddChoice	(Info_Mod_Juan_Antonius, "Dobrze, wtedy tylko 100....", Info_Mod_Juan_Antonius_D);
};

FUNC VOID Info_Mod_Juan_Antonius_B()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_B_15_00"); //Chce wiedziec, co jestem gonna, najpierw cie dostaje.
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_B_13_01"); //Dobrze, to ksiazka. Dealer nazywa sie Hortensius. Ma byc gdzies w poblizu matki bagiennej. Jak zwykle, zepsuj sie i przyprowadz mnie wszystko.
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);

	Info_AddChoice	(Info_Mod_Juan_Antonius, "Zapomnij o tym. Daj mi tylko zloto.", Info_Mod_Juan_Antonius_C);
	Info_AddChoice	(Info_Mod_Juan_Antonius, "W porzadku, odchodze.", Info_Mod_Juan_Antonius_F);
};

FUNC VOID Info_Mod_Juan_Antonius_A()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_A_15_00"); //Wlasciwie to zrobie.
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_A_13_01"); //Okay, nazwa dealera brzmi Hortensius. Ma byc gdzies w poblizu matki bagiennej. Jak zwykle, zepsuj sie i przyprowadz mnie wszystko.

	Mod_JuanQuest = 2;

	B_LogEntry	(TOPIC_MOD_BDT_JUAN, "Damn to! Antony nie mial przy sobie przedmiotu Juan. Teraz moge biec do obozu bagiennego i robic Hortensius.");

	Wld_InsertNpc	(Mod_7190_OUT_Hortensius_MT, "OC1");
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);
};

FUNC VOID Info_Mod_Juan_Antonius_E()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_E_15_00"); //Dajesz mi uzgodniona sume, albo ja otrzymam!
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_E_13_01"); //Grozisz mi?
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);

	AI_StopProcessInfos	(self);

	CreateInvItems	(self, ItMi_Gold, 340);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Juan_Antonius_D()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_D_15_00"); //Dobrze, wtedy tylko 100....

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_BDT_JUAN, LOG_FAILED);
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);
};

FUNC VOID Info_Mod_Juan_Antonius_F()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_F_15_00"); //W porzadku, odchodze.
	
	Mod_JuanQuest = 2;

	B_LogEntry	(TOPIC_MOD_BDT_JUAN, "Damn to! Antony nie mial przy sobie przedmiotu Juan. Teraz moge biec do obozu bagiennego i robic Hortensius.");

	Wld_InsertNpc	(Mod_7190_OUT_Hortensius_MT, "OC1");
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);
};

INSTANCE Info_Mod_Juan_Hortensius (C_INFO)
{
	npc		= Mod_955_BDT_Juan_MT;
	nr		= 1;
	condition	= Info_Mod_Juan_Hortensius_Condition;
	information	= Info_Mod_Juan_Hortensius_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto rzeczy.";
};

FUNC INT Info_Mod_Juan_Hortensius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juan_Quest))
	&& (Mod_JuanQuest == 2)
	&& (Npc_IsDead(Mod_7190_OUT_Hortensius_MT))
	&& (Npc_HasItems(hero, ItMi_Scoop) >= 7)
	&& (Npc_HasItems(hero, ItMi_Stomper) >= 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 140)
	&& (Npc_HasItems(hero, ItFo_Booze) >= 12)
	&& (Npc_HasItems(hero, ItFo_Honey) >= 6)
	&& (Npc_HasItems(hero, ItMi_Lute) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juan_Hortensius_Info()
{
	AI_Output(hero, self, "Info_Mod_Juan_Hortensius_15_00"); //Oto rzeczy.
	AI_Output(self, hero, "Info_Mod_Juan_Hortensius_13_01"); //Damn, nie moze byc.... chyba ze.... z wyjatkiem
	
	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Juan_Hortensius_13_02"); //(do siebie) potem Florentius musi je miec.
	
	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Juan_Hortensius_13_03"); //Dodam kolejne 50 zlota, jesli pójdziesz do nowego obozu i przynosisz mi ksiazke, która Florentius MUSI miec.
	AI_Output(self, hero, "Info_Mod_Juan_Hortensius_13_04"); //Och, a ja bede trzymac jalowiec.

	B_GiveInvItems	(hero, self, ItFo_Booze, 12);

	B_GivePlayerXP	(100);

	Info_ClearChoices	(Info_Mod_Juan_Hortensius);

	Info_AddChoice	(Info_Mod_Juan_Hortensius, "To juz wystarczy! Daj mi tylko zloto.", Info_Mod_Juan_Hortensius_B);
	Info_AddChoice	(Info_Mod_Juan_Hortensius, "(nieco rezygnujacy) Okay, a nastepnie do jednej trzeciej.", Info_Mod_Juan_Hortensius_A);
};

FUNC VOID Info_Mod_Juan_Hortensius_B()
{
	AI_Output(hero, self, "Info_Mod_Juan_Hortensius_B_15_00"); //To juz wystarczy! Daj mi tylko zloto.
	AI_Output(self, hero, "Info_Mod_Juan_Hortensius_B_13_01"); //Podaruj sobie 150 osób.
	
	Info_ClearChoices	(Info_Mod_Juan_Hortensius);

	Info_AddChoice	(Info_Mod_Juan_Hortensius, "Czy kochasz mnie? Podaj mi uzgodniona sume lub ja otrzymam.", Info_Mod_Juan_Hortensius_D);
	Info_AddChoice	(Info_Mod_Juan_Hortensius, "Wszystko w porzadku, nie mozna temu pomóc.", Info_Mod_Juan_Hortensius_c);
};

FUNC VOID Info_Mod_Juan_Hortensius_A()
{
	AI_Output(hero, self, "Info_Mod_Juan_Hortensius_A_15_00"); //(nieco rezygnujacy) Okay, a nastepnie do jednej trzeciej.
	
	Mod_JuanQuest = 3;

	B_LogEntry	(TOPIC_MOD_BDT_JUAN, "Zaczyna mi sie to podobac! Poniewaz Hortensius nie byl równiez w posiadaniu artefaktu, tym razem mam udac sie do Nowego Obozu, aby wykluczyc Florentiusa.");

	Wld_InsertNpc	(Mod_7191_OUT_Florentius_MT, "OC1");
	
	Info_ClearChoices	(Info_Mod_Juan_Hortensius);
};

FUNC VOID Info_Mod_Juan_Hortensius_D()
{
	AI_Output(hero, self, "Info_Mod_Juan_Hortensius_D_15_00"); //Czy kochasz mnie? Daj mi uzgodniona sume, albo ja otrzymam.
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_E_13_01"); //Grozisz mi?

	AI_StopProcessInfos	(self);

	CreateInvItems	(self, ItMi_Gold, 290);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Juan_Hortensius_C()
{
	AI_Output(hero, self, "Info_Mod_Juan_Hortensius_C_15_00"); //Wszystko w porzadku, nie mozna temu pomóc.

	B_GiveInvItems	(self, hero, ItMi_Gold, 150);

	B_SetTopicStatus	(TOPIC_MOD_BDT_JUAN, LOG_FAILED);
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);
};

INSTANCE Info_Mod_Juan_Florentius (C_INFO)
{
	npc		= Mod_955_BDT_Juan_MT;
	nr		= 1;
	condition	= Info_Mod_Juan_Florentius_Condition;
	information	= Info_Mod_Juan_Florentius_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam ksiazke.";
};

FUNC INT Info_Mod_Juan_Florentius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juan_Quest))
	&& ((Mod_JuanQuest == 3)
	|| (Mod_JuanQuest == 4))
	&& (Npc_IsDead(Mod_7191_OUT_Florentius_MT))
	&& (Npc_HasItems(hero, ItWr_JuanBook) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juan_Florentius_Info()
{
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_15_00"); //Mam ksiazke.
	AI_Output(self, hero, "Info_Mod_Juan_Florentius_13_01"); //Tak! Daj mi ja.
	
	B_GivePlayerXP	(500);

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Juan_Florentius);

	if (Mod_JuanQuest == 4)
	{
		Info_AddChoice	(Info_Mod_Juan_Florentius, "Cena wzrosla.", Info_Mod_Juan_Florentius_B);
	};
	Info_AddChoice	(Info_Mod_Juan_Florentius, "Tutaj ja masz.", Info_Mod_Juan_Florentius_A);
};

FUNC VOID Info_Mod_Juan_Florentius_B()
{
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_B_15_00"); //Cena wzrosla.
	AI_Output(self, hero, "Info_Mod_Juan_Florentius_B_13_01"); //Co masz na mysli?
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_B_15_02"); //Ze kosztuje to teraz wiecej. Kupcy zapewne zainteresowani byliby wiedza, ze rabuje ich w waszym imieniu.
	AI_Output(self, hero, "Info_Mod_Juan_Florentius_B_13_03"); //Brudny brudny dranie..... Ile chcesz?
	
	Info_ClearChoices	(Info_Mod_Juan_Florentius);

	Info_AddChoice	(Info_Mod_Juan_Florentius, "1.000 zlota.", Info_Mod_Juan_Florentius_E);
	Info_AddChoice	(Info_Mod_Juan_Florentius, "700 zlota.", Info_Mod_Juan_Florentius_D);
	Info_AddChoice	(Info_Mod_Juan_Florentius, "500 zlota.", Info_Mod_Juan_Florentius_c);
};

FUNC VOID Info_Mod_Juan_Florentius_A()
{
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_A_15_00"); //Tutaj ja masz.

	B_GiveInvItems	(hero, self, ItWr_JuanBook, 1);

	AI_Output(self, hero, "Info_Mod_Juan_Florentius_A_13_01"); //Bardzo dobry. Oto Twoje zloto.

	B_GiveInvItems	(self, hero, ItMi_Gold, 400);

	B_GivePlayerXP	(300);
	
	Mod_JuanQuest = 5;

	B_SetTopicStatus	(TOPIC_MOD_BDT_JUAN, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
	
	Info_ClearChoices	(Info_Mod_Juan_Florentius);
};

FUNC VOID Info_Mod_Juan_Florentius_E()
{
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_E_15_00"); //1.000 zlota.
	AI_Output(self, hero, "Info_Mod_Juan_Florentius_E_13_01"); //Trzymac jeszcze przez sekunde. Na ramieniu jest duza, brzydka bestia.
	
	Info_ClearChoices	(Info_Mod_Juan_Florentius);

	AI_StopProcessInfos	(self);

	CreateInvItems	(self, ItMi_Gold, 723);

	B_SetTopicStatus	(TOPIC_MOD_BDT_JUAN, LOG_SUCCESS);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Juan_Florentius_F(var int Goldi)
{
	AI_Output(self, hero, "Info_Mod_Juan_Florentius_F_13_00"); //Wszystkie sluszne, wszystkie sluszne. Oto Twoje zloto.

	B_GiveInvItems	(self, hero, ItMi_Gold, Goldi);

	AI_Output(self, hero, "Info_Mod_Juan_Florentius_F_13_01"); //Teraz podaj mi ksiazke.

	B_GiveInvItems	(hero, self, ItWr_JuanBook, 1);

	B_GivePlayerXP	(300);
	
	Mod_JuanQuest = 5;

	B_Göttergefallen(3, 1);

	B_SetTopicStatus	(TOPIC_MOD_BDT_JUAN, LOG_SUCCESS);
	
	Info_ClearChoices	(Info_Mod_Juan_Florentius);
};

FUNC VOID Info_Mod_Juan_Florentius_D()
{
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_D_15_00"); //700 zlota.

	Info_Mod_Juan_Florentius_F(700);
};

FUNC VOID Info_Mod_Juan_Florentius_C()
{
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_C_15_00"); //500 zlota.

	Info_Mod_Juan_Florentius_F(500);
};

INSTANCE Info_Mod_Juan_Pickpocket (C_INFO)
{
	npc		= Mod_955_BDT_Juan_MT;
	nr		= 1;
	condition	= Info_Mod_Juan_Pickpocket_Condition;
	information	= Info_Mod_Juan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Juan_Pickpocket_Condition()
{
	C_Beklauen	(69, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Juan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Juan_Pickpocket);

	Info_AddChoice	(Info_Mod_Juan_Pickpocket, DIALOG_BACK, Info_Mod_Juan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Juan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Juan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Juan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Juan_Pickpocket);
};

FUNC VOID Info_Mod_Juan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Juan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Juan_Pickpocket);

		Info_AddChoice	(Info_Mod_Juan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Juan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Juan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Juan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Juan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Juan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Juan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Juan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Juan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Juan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Juan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Juan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Juan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Juan_EXIT (C_INFO)
{
	npc		= Mod_955_BDT_Juan_MT;
	nr		= 1;
	condition	= Info_Mod_Juan_EXIT_Condition;
	information	= Info_Mod_Juan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Juan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Juan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
