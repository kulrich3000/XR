INSTANCE Info_Mod_Wirt_Hi (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Hi_Condition;
	information	= Info_Mod_Wirt_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wirt_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wirt_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wirt_Hi_29_00"); //Przyjedz blizej, przyjdz blizej, obcy! Napic sie u nas, wszystko jest darmowe juz dzis!

	CreateInvItems	(self, ItFo_Beer, 3);

	B_GiveInvItems	(self, hero, ItFo_Beer, 1);

	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);
};

INSTANCE Info_Mod_Wirt_Spender (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Spender_Condition;
	information	= Info_Mod_Wirt_Spender_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jest darczynca charytatywny?";
};

FUNC INT Info_Mod_Wirt_Spender_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wirt_Spender_Info()
{
	AI_Output(hero, self, "Info_Mod_Wirt_Spender_15_00"); //Kim jest darczynca charytatywny?
	AI_Output(self, hero, "Info_Mod_Wirt_Spender_29_01"); //Matteo! Jego interesy ida dobrze, a on ma wielki miazdzy! (zlobienia zagli)

	Info_ClearChoices	(Info_Mod_Wirt_Spender);

	Info_AddChoice	(Info_Mod_Wirt_Spender, "Nie musze tego robic dla siebie.", Info_Mod_Wirt_Spender_B);
	Info_AddChoice	(Info_Mod_Wirt_Spender, "Powiedz mi wiecej.", Info_Mod_Wirt_Spender_A);
};

FUNC VOID Info_Mod_Wirt_Spender_B()
{
	AI_Output(hero, self, "Info_Mod_Wirt_Spender_B_15_00"); //Nie musze tego robic dla siebie.

	Info_ClearChoices	(Info_Mod_Wirt_Spender);
};

FUNC VOID Info_Mod_Wirt_Spender_A()
{
	AI_Output(hero, self, "Info_Mod_Wirt_Spender_A_15_00"); //Powiedz mi wiecej.
	AI_Output(self, hero, "Info_Mod_Wirt_Spender_A_29_01"); //Walentynka z Górnej Dzielnicy jest jego ukochana. Powiedzial mi, ze angazuje sie w nia.

	Mod_Wirt_Freibier = 1;

	Info_ClearChoices	(Info_Mod_Wirt_Spender);
};

INSTANCE Info_Mod_Wirt_Bild (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Bild_Condition;
	information	= Info_Mod_Wirt_Bild_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co jeszcze slyszysz?";
};

FUNC INT Info_Mod_Wirt_Bild_Condition()
{
	if (Mod_Wirt_Freibier == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_Bild_Info()
{
	Mod_Wirt_Freibier = 2;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wirt_Bild2 (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Bild2_Condition;
	information	= Info_Mod_Wirt_Bild2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wirt_Bild2_Condition()
{
	if (Mod_Wirt_Freibier == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_Bild2_Info()
{
	AI_Output(self, hero, "Info_Mod_Wirt_Bild2_29_00"); //(smiech) I Wilfried, czy go znasz? Badz z dala od niego.
};

INSTANCE Info_Mod_Wirt_Wilfried (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Wilfried_Condition;
	information	= Info_Mod_Wirt_Wilfried_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co z Wilfriedem?";
};

FUNC INT Info_Mod_Wirt_Wilfried_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wirt_Bild2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_Wilfried_Info()
{
	AI_Output(hero, self, "Info_Mod_Wirt_Wilfried_15_00"); //A co z Wilfriedem?
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_01"); //Codziennie slysze o nim opowiesci.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_02"); //
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_03"); //To prawda, ze teraz gotuje sam w swoim domku w dzielnicy portowej!
	AI_Output(hero, self, "Info_Mod_Wirt_Wilfried_15_04"); //Pamietam to.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_05"); //Och, prawie zapomnialem wspomniec o przemówieniu miasta, upadku Minny, lodzi rybackiej z Myrtany!
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_06"); //Musialo byc widowisko, wszyscy umarli unosza sie w wodzie i wszyscy chcieli ich zobaczyc.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_07"); //Mówi sie, ze byl on znanym na calym swiecie malarzem na pokladzie, no cóz.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_08"); //Jesli jeszcze nie rozmawiales z Moe' em, powinienes to nadrobic, prawdopodobnie wie o tym wiecej.
	AI_Output(hero, self, "Info_Mod_Wirt_Wilfried_15_09"); //Dziekujemy za wywiad.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_29_10"); //Jeszcze jedno!

	CreateInvItems	(self, ItFo_Beer, 3);

	B_GiveInvItems	(self, hero, ItFo_Beer, 1);

	B_UseItem	(hero, ItFo_Beer);
	B_UseItem	(self, ItFo_Beer);
};

INSTANCE Info_Mod_Wirt_WacholderDieb (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_WacholderDieb_Condition;
	information	= Info_Mod_Wirt_WacholderDieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy wiesz cos o kradziezy Coragon?";
};

FUNC INT Info_Mod_Wirt_WacholderDieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_WacholderDieb))
	&& (Npc_KnowsInfo(hero, Info_Mod_Wirt_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_WacholderDieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Wirt_WacholderDieb_15_00"); //Czy wiesz cos o kradziezy Coragon?
	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_29_01"); //Nawet gdybym to zrobil, dlaczego mialabym Ci cos powiedziec?
	AI_Output(hero, self, "Info_Mod_Wirt_WacholderDieb_15_02"); //Poniewaz moge byc w stanie zaoferowac Ci pieniadze.
	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_29_03"); //Zadalbym wtedy 200 sztuk zlota.

	B_LogEntry	(TOPIC_MOD_CORAGON_WACHOLDER, "Wynajmujacy chce uzyskac informacje o 200 szt. zlota.");
};

INSTANCE Info_Mod_Wirt_WacholderDieb_Pay (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_WacholderDieb_Pay_Condition;
	information	= Info_Mod_Wirt_WacholderDieb_Pay_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto zloto. Teraz powiedz mi, co wiesz.";
};

FUNC INT Info_Mod_Wirt_WacholderDieb_Pay_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wirt_WacholderDieb))
	&& (Npc_HasItems(hero, ItMi_Gold) > 199)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_WacholderDieb_Pay_Info()
{
	AI_Output(hero, self, "Info_Mod_Wirt_WacholderDieb_Pay_15_00"); //Oto zloto. Teraz powiedz mi, co wiesz.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_Pay_29_01"); //W dniu kradziezy, caly czas wokól tawerny Coragon wisial Rukhar.
	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_Pay_29_02"); //Zazwyczaj siedzi w tawernie Orlana i pija sie. Bardzo dziwne, czyz nie?
	AI_Output(hero, self, "Info_Mod_Wirt_WacholderDieb_Pay_15_03"); //Moze tak. Dziekuje za napiwek!
	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_Pay_29_04"); //(grinning) Jesli znów potrzebujesz informacji, wiesz skad je otrzymasz!

	B_LogEntry	(TOPIC_MOD_CORAGON_WACHOLDER, "Rukhar, który zwykle przebywa w tawernie Orlanu, podobno w dniu kradziezy wisial wokól pubu Coragon. Powinienem go zobaczyc i sprawdzic, czy ta informacja byla warta 200 sztuk zlota.");
};

INSTANCE Info_Mod_Wirt_Pickpocket (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Pickpocket_Condition;
	information	= Info_Mod_Wirt_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Wirt_Pickpocket_Condition()
{
	C_Beklauen	(67, ItFo_Beer, 3);
};

FUNC VOID Info_Mod_Wirt_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);

	Info_AddChoice	(Info_Mod_Wirt_Pickpocket, DIALOG_BACK, Info_Mod_Wirt_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wirt_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wirt_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wirt_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);
};

FUNC VOID Info_Mod_Wirt_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);

		Info_AddChoice	(Info_Mod_Wirt_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wirt_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wirt_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wirt_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wirt_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wirt_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wirt_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wirt_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wirt_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wirt_EXIT (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_EXIT_Condition;
	information	= Info_Mod_Wirt_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wirt_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wirt_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
