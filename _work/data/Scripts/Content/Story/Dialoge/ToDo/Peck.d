INSTANCE Info_Mod_Peck_Hi (C_INFO)
{
	npc		= Mod_745_MIL_Peck_NW;
	nr		= 1;
	condition	= Info_Mod_Peck_Hi_Condition;
	information	= Info_Mod_Peck_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Peck_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Peck_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Peck_Hi_12_01"); //Jestem Peck. Sprzedaje zbroje milicjom.
};

INSTANCE Info_Mod_Peck_Ruestung (C_INFO)
{
	npc		= Mod_745_MIL_Peck_NW;
	nr		= 1;
	condition	= Info_Mod_Peck_Ruestung_Condition;
	information	= Info_Mod_Peck_Ruestung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy moge uzyskac od Ciebie lepsza zbroje?";
};

FUNC INT Info_Mod_Peck_Ruestung_Condition()
{
	if ((Mod_Gilde == 1)
	|| (Mod_Gilde == 2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Peck_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Peck_Ruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Peck_Ruestung_15_00"); //Czy moge uzyskac od Ciebie lepsza zbroje?

	if (Mod_HasMILH == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_12_01"); //Mam tu ciezka zbroje milicji.
	};

	if (Kapitel > 1)
	&& (Mod_ErsteVerbesserung == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_12_02"); //Slysze, ze na Minentalowym Przeleczy jest zapalaczka. Dzieki jego skórze z pewnoscia moge nieco poprawic twoja ciezka zbroje milicyjna.
	
		Mod_ErsteVerbesserung = TRUE;
	
		Wld_InsertNpc	(Feuersnapper,	"NW_PASS_06");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "Na Minentalowej przeleczy powinna znajdowac sie strzelanka, której skóra Peck moze posluzyc do poprawy mojego ciezkiego pancerza milicji.");
	};

	if (Kapitel > 3)
	&& (Mod_ZweiteVerbesserung == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_12_03"); //Slyszalem, ze w drodze do wykopaliska mówi sie, ze magik wodny jest strazakiem. Z jego plaszczem moglem nieco poprawic zbroje rycerska.
	
		Mod_ZweiteVerbesserung = TRUE;
	
		Wld_InsertNpc	(Feuerlaeufer,	"FP_MAGICGOLEM");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "W drodze do wodnego miejsca wykopaliska maga znajduje sie strazak, którego futro Peck moze wykorzystac do poprawy zbroi rycerskiej.");
	};

	Info_ClearChoices	(Info_Mod_Peck_Ruestung);
	Info_AddChoice	(Info_Mod_Peck_Ruestung, DIALOG_BACK, Info_Mod_Peck_Ruestung_BACK);

	if (Mod_ErsteVerbesserung == TRUE)
	&& (Mod_Gilde == 1)
	{
		Info_AddChoice	(Info_Mod_Peck_Ruestung, "Poprawa ciezkiego sprzetu milicji", Info_Mod_Peck_Ruestung_MIL_S);
	};

	if (Mod_ZweiteVerbesserung == TRUE)
	&& (Mod_Gilde == 2)
	{
		Info_AddChoice	(Info_Mod_Peck_Ruestung, "Poprawa zbroi rycerskiej", Info_Mod_Peck_Ruestung_RIT_S);
	};

	if (Mod_Gilde == 1)
	&& (Mod_HasMILH == FALSE)
	{
		Info_AddChoice	(Info_Mod_Peck_Ruestung, "Sprzet ciezkiej milicji (koszt: 2500)", Info_Mod_Peck_Ruestung_MIL_M);
	};
};

FUNC VOID Info_Mod_Peck_Ruestung_BACK ()
{
	Info_ClearChoices	(Info_Mod_Peck_Ruestung);
};

FUNC VOID Info_Mod_Peck_Ruestung_MIL_S ()
{
	AI_Output(hero, self, "Info_Mod_Peck_Ruestung_MIL_S_15_00"); //Ulepsz mój ciezki pancerz milicji.

	if (Npc_HasItems(hero, ItAt_FeuersnapperHaut) == 1)
	&& (Npc_HasItems(hero, ItAr_MIL_M) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_MIL_S_12_01"); //Wszystko jasne.

		Npc_RemoveInvItems	(hero, ItAt_FeuersnapperHaut, 1);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_MIL_M, 1);

		CreateInvItems	(self, ItAr_MIL_S2, 1);

		B_GiveInvItems	(self, hero, ItAr_Mil_S2, 1);

		Mod_ErsteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_Mil_M) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_MIL_S_12_02"); //Musisz miec jakis ciezki bieg milicji, bo nie bede mógl go dla ciebie naprawic.
	}
	else if (Npc_HasItems(hero, ItAt_Feuersnapperhaut) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_MIL_S_12_03"); //Nie moge poprawic zbroi, jesli nie masz skóry na szpicke.
	};

	Info_ClearChoices	(Info_Mod_Peck_Ruestung);
};

FUNC VOID Info_Mod_Peck_Ruestung_RIT_S ()
{
	AI_Output(hero, self, "Info_Mod_Peck_Ruestung_RIT_S_15_00"); //Poprawic zbroje rycerska.

	if (Npc_HasItems(hero, ItAt_FireShadowFur) == 1)
	&& (Npc_HasItems(hero, ItAr_PAL_M) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_RIT_S_12_01"); //Wszystko jasne.

		Npc_RemoveInvItems	(hero, ItAt_FireShadowFur, 1);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_PAL_M, 1);

		CreateInvItems	(self, ItAr_RIT_S, 1);

		B_GiveInvItems	(self, hero, ItAr_RIT_S, 1);

		Mod_ZweiteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_PAL_M) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_RIT_S_12_02"); //Musisz miec zbroje rycerska lub nie bede w stanie ja dla ciebie naprawic.
	}
	else if (Npc_HasItems(hero, ItAt_FireShadowFur) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_RIT_S_12_03"); //Nie moge poprawic pancerza, jesli nie masz skóry Firefinch.
	};

	Info_ClearChoices	(Info_Mod_Peck_Ruestung);
};

FUNC VOID Info_Mod_Peck_Ruestung_MIL_M ()
{
	AI_Output(hero, self, "Info_Mod_Peck_Ruestung_MIL_M_15_00"); //Zabiore ciezka pancerz milicji.

	if (Npc_HasItems(hero, ItMi_Gold) >= 2500)
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_MIL_M_12_01"); //Wszystko jasne.

		B_GiveInvItems	(hero, self, ItMi_Gold, 2500);

		CreateInvItems	(self, ItAr_MIL_M, 1);

		B_GiveInvItems	(self, hero, ItAr_Mil_M, 1);

		Mod_HasMILH = TRUE;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Peck_Ruestung_MIL_M_12_02"); //Bez zlota, bez zbroi.
	};

	Info_ClearChoices	(Info_Mod_Peck_Ruestung);
};

INSTANCE Info_Mod_Peck_Pickpocket (C_INFO)
{
	npc		= Mod_745_MIL_Peck_NW;
	nr		= 1;
	condition	= Info_Mod_Peck_Pickpocket_Condition;
	information	= Info_Mod_Peck_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Peck_Pickpocket_Condition()
{
	C_Beklauen	(62, ItMi_Gold, 29);
};

FUNC VOID Info_Mod_Peck_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Peck_Pickpocket);

	Info_AddChoice	(Info_Mod_Peck_Pickpocket, DIALOG_BACK, Info_Mod_Peck_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Peck_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Peck_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Peck_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Peck_Pickpocket);
};

FUNC VOID Info_Mod_Peck_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Peck_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Peck_Pickpocket);

		Info_AddChoice	(Info_Mod_Peck_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Peck_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Peck_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Peck_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Peck_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Peck_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Peck_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Peck_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Peck_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Peck_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Peck_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Peck_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Peck_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Peck_EXIT (C_INFO)
{
	npc		= Mod_745_MIL_Peck_NW;
	nr		= 1;
	condition	= Info_Mod_Peck_EXIT_Condition;
	information	= Info_Mod_Peck_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Peck_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Peck_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
