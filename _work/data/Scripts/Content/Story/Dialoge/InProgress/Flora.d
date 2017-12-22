INSTANCE Info_Mod_Flora_Hi (C_INFO)
{
	npc		= Mod_4030_VLK_Flora_NW;
	nr		= 1;
	condition	= Info_Mod_Flora_Hi_Condition;
	information	= Info_Mod_Flora_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Flora_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& ((hero.attribute[ATR_DEXTERITY] < 100)
	|| (Npc_KnowsInfo(hero, Info_Mod_Flora_Dachratte)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Flora_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Flora_Hi_21_00"); //Tak?
};

INSTANCE Info_Mod_Flora_Port (C_INFO)
{
	npc		= Mod_4030_VLK_Flora_NW;
	nr		= 1;
	condition	= Info_Mod_Flora_Port_Condition;
	information	= Info_Mod_Flora_Port_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes w niebezpieczenstwie.";
};

FUNC INT Info_Mod_Flora_Port_Condition()
{
	if (Moe_KnowsPort == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Flora_Port_Info()
{
	AI_Output(hero, self, "Info_Mod_Flora_Port_15_00"); //Jestes w niebezpieczenstwie.
	AI_Output(self, hero, "Info_Mod_Flora_Port_21_01"); //Jaki jest cel? Czy zrobilem cos zlego?
	AI_Output(hero, self, "Info_Mod_Flora_Port_15_02"); //Znajdujesz sie na liscie trafien zabójcy. Ma to zwiazek z portem Johannes Port.
	AI_Output(self, hero, "Info_Mod_Flora_Port_21_03"); //Co sie naprawde stalo? Czy ma racje?
	AI_Output(hero, self, "Info_Mod_Flora_Port_15_04"); //Jak go zabrac. On juz nie odczuwa bólu.
	AI_Output(self, hero, "Info_Mod_Flora_Port_21_05"); //(bez jezyka) Oh....... takie jak...... Co? On nie zyje? Nie! ... Ale dlaczego do mnie przychodzisz?
	AI_Output(hero, self, "Info_Mod_Flora_Port_15_06"); //Aby ostrzec i zapytac, jaki motyw zabójca móglby miec.
	AI_Output(self, hero, "Info_Mod_Flora_Port_21_07"); //Hmm..... Z pewnoscia Jan mial swoje tajemnice.... Ale byla jedna rzecz, której on nawet nie chcial mi powiedziec, jego kuzyn.
	AI_Output(self, hero, "Info_Mod_Flora_Port_21_08"); //W swoim ostatnim liscie wspomnial tylko o tym, co sie dowiedzial, ale ze moze to byc niebezpieczne dla zycia, nie spodziewalem sie.....
	AI_Output(self, hero, "Info_Mod_Flora_Port_21_09"); //Och, poczekaj! Pamietam imie, osoba Johannes ostrzegl mnie przed tym.
	AI_Output(hero, self, "Info_Mod_Flora_Port_15_10"); //Jaka jest nazwa osoby?
	AI_Output(self, hero, "Info_Mod_Flora_Port_21_11"); //Brahim to zrobil. Johannes nie znal go, ale myslal, ze ma mroczne zwiazki..... Zastanawiam sie, co to oznacza.
	AI_Output(hero, self, "Info_Mod_Flora_Port_15_12"); //Zobacze to.
	AI_Output(self, hero, "Info_Mod_Flora_Port_21_13"); //Dobre. Dzieki Waszemu ostrzezeniu bede uwazny. Powodzenia!

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_MOE_PORT, "Czy Brahim stoi za zabójstwami?");
};

INSTANCE Info_Mod_Flora_Dachratte (C_INFO)
{
	npc		= Mod_4030_VLK_Flora_NW;
	nr		= 1;
	condition	= Info_Mod_Flora_Dachratte_Condition;
	information	= Info_Mod_Flora_Dachratte_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Flora_Dachratte_Condition()
{
	if (hero.attribute[ATR_DEXTERITY] >= 100)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Flora_Dachratte_Info()
{
	AI_Output(self, hero, "Info_Mod_Flora_Dachratte_21_00"); //Och, wygladasz jak wyszkolony wspinacz.
	AI_Output(self, hero, "Info_Mod_Flora_Dachratte_21_01"); //Prosze, pomóz mi odebrac te straszna bestie z mojego dachu!

	Info_ClearChoices	(Info_Mod_Flora_Dachratte);

	Info_AddChoice	(Info_Mod_Flora_Dachratte, "Przepraszam, nie ma na to czasu.", Info_Mod_Flora_Dachratte_B);
	Info_AddChoice	(Info_Mod_Flora_Dachratte, "Nic nie moze byc latwiejsze. Jakie jest to zwierze?", Info_Mod_Flora_Dachratte_A);
};

FUNC VOID Info_Mod_Flora_Dachratte_B()
{
	AI_Output(hero, self, "Info_Mod_Flora_Dachratte_B_15_00"); //Och, wygladasz jak wyszkolony wspinacz.

	Info_ClearChoices	(Info_Mod_Flora_Dachratte);
};

FUNC VOID Info_Mod_Flora_Dachratte_A()
{
	AI_Output(hero, self, "Info_Mod_Flora_Dachratte_A_15_00"); //Nic nie moze byc latwiejsze. Jakie jest to zwierze?
	AI_Output(self, hero, "Info_Mod_Flora_Dachratte_A_21_01"); //Szczura! Miejmy nadzieje, ze jej cala rodzina nie osiedlila sie jeszcze na strychu!
	AI_Output(hero, self, "Info_Mod_Flora_Dachratte_A_15_02"); //Jak dojsc do dachu?
	AI_Output(self, hero, "Info_Mod_Flora_Dachratte_A_21_03"); //Trzeba gdzies znalezc sposób. Dlatego prosze Cie!
	AI_Output(hero, self, "Info_Mod_Flora_Dachratte_A_15_04"); //Zajme sie tym.

	Mod_Flora_Dachratte = 1;

	Log_CreateTopic	(TOPIC_MOD_FLORA_RATTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FLORA_RATTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FLORA_RATTE, "Flora z pietra prosila mnie, abym zabil szczura siedzacego na jej domu.");

	Info_ClearChoices	(Info_Mod_Flora_Dachratte);

	Wld_InsertNpc	(Rat_Flora,	"FP_ROAM_FLORA_DACHRATTE");
};

INSTANCE Info_Mod_Flora_Dachratte2 (C_INFO)
{
	npc		= Mod_4030_VLK_Flora_NW;
	nr		= 1;
	condition	= Info_Mod_Flora_Dachratte2_Condition;
	information	= Info_Mod_Flora_Dachratte2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Szczur wypada z klopotów.";
};

FUNC INT Info_Mod_Flora_Dachratte2_Condition()
{
	if (Mod_Flora_Dachratte == 1)
	&& (Npc_IsDead(Rat_Flora))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Flora_Dachratte2_Info()
{
	AI_Output(hero, self, "Info_Mod_Flora_Dachratte2_15_00"); //Szczur wypada z klopotów.
	AI_Output(self, hero, "Info_Mod_Flora_Dachratte2_21_01"); //Ach, tam sa jeszcze ludzie pomocni. Bardzo dziekuje!

	B_GivePlayerXP	(100);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_FLORA_RATTE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Flora_Pickpocket (C_INFO)
{
	npc		= Mod_4030_VLK_Flora_NW;
	nr		= 1;
	condition	= Info_Mod_Flora_Pickpocket_Condition;
	information	= Info_Mod_Flora_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Flora_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Flora_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Flora_Pickpocket);

	Info_AddChoice	(Info_Mod_Flora_Pickpocket, DIALOG_BACK, Info_Mod_Flora_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Flora_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Flora_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Flora_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Flora_Pickpocket);
};

FUNC VOID Info_Mod_Flora_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Flora_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Flora_Pickpocket);

		Info_AddChoice	(Info_Mod_Flora_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Flora_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Flora_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Flora_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Flora_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Flora_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Flora_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Flora_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Flora_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Flora_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Flora_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Flora_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Flora_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Flora_EXIT (C_INFO)
{
	npc		= Mod_4030_VLK_Flora_NW;
	nr		= 1;
	condition	= Info_Mod_Flora_EXIT_Condition;
	information	= Info_Mod_Flora_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Flora_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Flora_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
