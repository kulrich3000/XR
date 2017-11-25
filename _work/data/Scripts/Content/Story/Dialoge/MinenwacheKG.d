instance Info_Mod_MinenwacheKG_Hi (C_INFO)
{
	npc		= Mod_7537_KG_Minenwache_MT;
	nr		= 1;
	condition	= Info_Mod_MinenwacheKG_Hi_Condition;
	information	= Info_Mod_MinenwacheKG_Hi_Info;
	permanent	= 0;
	important	= 1;
};                       

func int Info_Mod_MinenwacheKG_Hi_Condition()
{
	return TRUE;
};

func void Info_Mod_MinenwacheKG_Hi_Info()
{
	AI_Output (self, hero, "Info_Mod_MinenwacheKG_Hi_07_00"); //Zatrzymaj sie! Nikt nie moze wejsc do kopalni bez wyraznej zgody Hymira.
	AI_Output (hero, self, "Info_Mod_MinenwacheKG_Hi_15_01"); //Dlaczego nie wolno jeszcze nikomu w mojej kopalni?
	AI_Output (self, hero, "Info_Mod_MinenwacheKG_Hi_07_02"); //Dla wlasnego bezpieczenstwa. W kopalni znajduja sie potwory, o kt�rych nic nie jest jeszcze znane, a jesli mnie o to poprosza, to byli oni odpowiedzialni za upadek kopalni.
	AI_Output (hero, self, "Info_Mod_MinenwacheKG_Hi_15_03"); //Jakie to sa potwory, jak minecrawler?
	AI_Output (self, hero, "Info_Mod_MinenwacheKG_Hi_07_04"); //Nie wiemy, co jest glebsze w kopalni.
	AI_Output (self, hero, "Info_Mod_MinenwacheKG_Hi_07_05"); //Bernd ocenia, ze kamienne potwory, kt�re uniemozliwily nam wejscie do kopalni, uciekaja przed czyms.
	AI_Output (self, hero, "Info_Mod_MinenwacheKG_Hi_07_06"); //Ze swej strony wierze, ze kamienne potwory maja magiczne pochodzenie, w przeciwnym razie nie mielibysmy z nimi zadnych problem�w.
};

const string MinenwacheKG_Checkpoint	= "WP_MINENWACHE";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_MinenwacheKG_FirstWarn (C_INFO)
{
	npc		= Mod_7537_KG_Minenwache_MT;
	nr		= 1;
	condition	= Info_Mod_MinenwacheKG_FirstWarn_Condition;
	information	= Info_Mod_MinenwacheKG_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_MinenwacheKG_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, MinenwacheKG_Checkpoint) <= 500) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	
	if ((self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_RefuseTalk(self) == FALSE))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Esteban_AtVM))
	|| (Npc_KnowsInfo(hero, Info_Mod_Esteban_AtVM4)))
	{
		return TRUE;
	};
};

func void Info_Mod_MinenwacheKG_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_MinenwacheKG_FirstWarn_07_00"); //HALT! Nikt nie moze w tym czasie wejsc do kopalni.

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, MinenwacheKG_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_MinenwacheKG_SecondWarn (C_INFO)
{
	npc		= Mod_7537_KG_Minenwache_MT;
	nr		= 1;
	condition	= Info_Mod_MinenwacheKG_SecondWarn_Condition;
	information	= Info_Mod_MinenwacheKG_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_MinenwacheKG_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, MinenwacheKG_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_MinenwacheKG_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_MinenwacheKG_SecondWarn_07_00"); //Opowiem ci to po raz ostatni. Jeszcze jeden krok i wejdziesz w swiat b�lu!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,MinenwacheKG_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_MinenwacheKG_Attack (C_INFO)
{
	npc		= Mod_7537_KG_Minenwache_MT;
	nr		= 1;
	condition	= Info_Mod_MinenwacheKG_Attack_Condition;
	information	= Info_Mod_MinenwacheKG_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_MinenwacheKG_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,MinenwacheKG_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_MinenwacheKG_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_MinenwacheKG_Attack_07_00"); //Poprosil pan o to.....

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_MinenwacheKG_Pickpocket (C_INFO)
{
	npc		= Mod_7537_KG_Minenwache_MT;
	nr		= 1;
	condition	= Info_Mod_MinenwacheKG_Pickpocket_Condition;
	information	= Info_Mod_MinenwacheKG_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_MinenwacheKG_Pickpocket_Condition()
{
	C_Beklauen	(57, ItMi_Nugget, 3);
};

FUNC VOID Info_Mod_MinenwacheKG_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_MinenwacheKG_Pickpocket);

	Info_AddChoice	(Info_Mod_MinenwacheKG_Pickpocket, DIALOG_BACK, Info_Mod_MinenwacheKG_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_MinenwacheKG_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_MinenwacheKG_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_MinenwacheKG_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_MinenwacheKG_Pickpocket);
};

FUNC VOID Info_Mod_MinenwacheKG_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_MinenwacheKG_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_MinenwacheKG_Pickpocket);

		Info_AddChoice	(Info_Mod_MinenwacheKG_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_MinenwacheKG_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_MinenwacheKG_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_MinenwacheKG_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_MinenwacheKG_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_MinenwacheKG_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_MinenwacheKG_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_MinenwacheKG_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_MinenwacheKG_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_MinenwacheKG_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_MinenwacheKG_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_MinenwacheKG_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_MinenwacheKG_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_MinenwacheKG_EXIT (C_INFO)
{
	npc		= Mod_7537_KG_Minenwache_MT;
	nr		= 1;
	condition	= Info_Mod_MinenwacheKG_EXIT_Condition;
	information	= Info_Mod_MinenwacheKG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_MinenwacheKG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_MinenwacheKG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
