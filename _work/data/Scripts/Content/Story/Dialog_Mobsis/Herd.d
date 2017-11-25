FUNC VOID Herd_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		B_SetAivar(self, AIV_INVINCIBLE, TRUE);
		PLAYER_MOBSI_PRODUCTION	=	MOBSI_Herd;
		Ai_ProcessInfos (her);
	};
}; 

var int Fleischbraten;

INSTANCE PC_Herd_Scavengerdung (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Herd_Scavengerdung_Condition;
	information	= PC_Herd_Scavengerdung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zmieszac separator powietrza w gulasie Theklas.";
};

FUNC INT PC_Herd_Scavengerdung_Condition()
{
	if (Npc_HasItems(hero, ItMi_Scavengerdung) == 1)
	&& ((Wld_IsTime(22,00,08,00))
	|| (Npc_GetDistToWP(Mod_799_BAU_Thekla_NW, "NW_BIGFARM_KITCHEN_04") < 300))
	&& (Npc_GetDistToWP(hero, "NW_BIGFARM_KITCHEN_COOK") < 500)
	{
		return 1;
	};
};

FUNC VOID PC_Herd_Scavengerdung_Info()
{
	Npc_RemoveInvItems	(hero, ItMi_Scavengerdung, 1);

	B_StartOtherRoutine	(Mod_799_BAU_Thekla_NW, "START");

	B_LogEntry	(TOPIC_MOD_JG_DUNG, "Wymieszalem szczoteczke do gulaszu Theklas. Teraz powinienem powr�cic do Groma i dac mu znac.");

	Mod_Scavengerdung_Tag = Wld_GetDay();

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Herd_Fleischbraten (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Herd_Fleischbraten_Condition;
	information	= PC_Herd_Fleischbraten_Info;
	permanent	= 1;
	important	= 0;
	description	= "pieczen miesa";
};

FUNC INT PC_Herd_Fleischbraten_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Herd)
	&& (Fleischbraten == FALSE)
	{
		return 1;
	};
};

FUNC VOID PC_Herd_Fleischbraten_Info()
{
	Fleischbraten = TRUE;
};

INSTANCE PC_Herd_Fleischbraten_Fisch_Alle (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Herd_Fleischbraten_Fisch_Alle_Condition;
	information	= PC_Herd_Fleischbraten_Fisch_Alle_Info;
	permanent	= 1;
	important	= 0;
	description	= "Fryzuj wszystkie ryby";
};

FUNC INT PC_Herd_Fleischbraten_Fisch_Alle_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Herd)
	&& (Fleischbraten == TRUE)
	&& (Npc_HasItems(hero, ItFo_Fish)	>=	1)
	{
		return 1;
	};
};

FUNC VOID PC_Herd_Fleischbraten_Fisch_Alle_Info()
{
	var string FleischText;

	FleischText = ConcatStrings(IntToString(Npc_HasItems(hero, ItFo_Fish)), " smazona ryba");

	CreateInvItems	(hero, ItFo_Fish_Gebraten, (Npc_HasItems(hero, ItFo_Fish)));

	Npc_RemoveInvItems	(hero, ItFo_Fish, (Npc_HasItems(hero, ItFo_Fish)));

	Print (FleischText);

	//CreateInvItems	(hero, ItMi_Pan, 1);

	//Npc_RemoveInvItems	(hero, ItFoMutton, 100);
};

INSTANCE PC_Herd_Fleischbraten_Fleisch_Alle (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Herd_Fleischbraten_Fleisch_Alle_Condition;
	information	= PC_Herd_Fleischbraten_Fleisch_Alle_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wszystkie rodzaje miesa surowego";
};

FUNC INT PC_Herd_Fleischbraten_Fleisch_Alle_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Herd)
	&& (Fleischbraten == TRUE)
	&& (Npc_HasItems(hero, ItFo_MuttonRaw)	>=	1)
	{
		return 1;
	};
};

FUNC VOID PC_Herd_Fleischbraten_Fleisch_Alle_Info()
{
	var string FleischText;

	FleischText = ConcatStrings(IntToString(Npc_HasItems(hero, ItFo_MuttonRaw)), " kawalek prazonego surowego miesa");

	CreateInvItems	(hero, ItFo_Mutton, (Npc_HasItems(hero, ItFo_MuttonRaw)));

	Npc_RemoveInvItems	(hero, ItFo_MuttonRaw, (Npc_HasItems(hero, ItFo_MuttonRaw)));

	Print (FleischText);
};

INSTANCE PC_Herd_Fleischbraten_Zur�ck (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Herd_Fleischbraten_Zur�ck_Condition;
	information	= PC_Herd_Fleischbraten_Zur�ck_Info;
	permanent	= 1;
	important	= 0;
	description	= "Poprzedni";
};

FUNC INT PC_Herd_Fleischbraten_Zur�ck_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Herd)
	&& (Fleischbraten == TRUE)
	{
		return 1;
	};
};

FUNC VOID PC_Herd_Fleischbraten_Zur�ck_Info()
{
	Fleischbraten = False;
};

INSTANCE PC_Herd_PfefferBacon (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Herd_PfefferBacon_Condition;
	information	= PC_Herd_PfefferBacon_Info;
	permanent	= 1;
	important	= 0;
	description	= "Pieprz z szynki: 1 x szynka + 1 x papryka";
};

FUNC INT PC_Herd_PfefferBacon_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Herd)
	&& (Fleischbraten == FALSE)
	&& (Npc_HasItems(hero, ItFo_Bacon)	>=	1)
	&& (Npc_HasItems(hero, ItFo_Addon_Pfeffer_01)	>=	1)
	{
		return 1;
	};
};

FUNC VOID PC_Herd_PfefferBacon_Info()
{
	Npc_RemoveInvItems	(hero, ItFo_Bacon, 1);
	Npc_RemoveInvItems	(hero, ItFo_Addon_Pfeffer_01, 1);

	CreateInvItems	(hero, ItFo_PfefferBacon, 1);

	Print (PRINT_KesselSuccess);
};

INSTANCE PC_Herd_Stockfisch (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Herd_Stockfisch_Condition;
	information	= PC_Herd_Stockfisch_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przygotowanie ryb: 1x smazone ryby";
};

FUNC INT PC_Herd_Stockfisch_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Herd)
	&& (Fleischbraten == FALSE)
	&& (Npc_HasItems(hero, ItFo_Fish_Gebraten)	>=	1)
	{
		return 1;
	};
};

FUNC VOID PC_Herd_Stockfisch_Info()
{
	Npc_RemoveInvItems	(hero, ItFo_Fish_Gebraten, 1);

	CreateInvItems	(hero, ItFo_StockFish, 1);

	Print (PRINT_KesselSuccess);
};

INSTANCE PC_Herd_EXIT (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Herd_EXIT_Condition;
	information	= PC_Herd_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT PC_Herd_EXIT_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Herd)
	&& (Fleischbraten	==	FALSE)
	{
		return 1;
	};
};

FUNC VOID PC_Herd_EXIT_Info()
{
	//CreateInvItems	(hero, ItMi_Pan, 1);

	//Npc_RemoveInvItems	(hero, ItFoMutton, 100);

	B_ENDPRODUCTIONDIALOG();
};
