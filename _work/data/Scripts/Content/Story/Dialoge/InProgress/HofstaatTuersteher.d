INSTANCE Info_Mod_HofstaatTuersteher_Hi (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_Hi_Condition;
	information	= Info_Mod_HofstaatTuersteher_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatTuersteher_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatTuersteher_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_05_00"); //Hej! Nie mozesz przejsc tutaj!
	AI_Output(hero, self, "Info_Mod_HofstaatTuersteher_Hi_15_01"); //Dlaczego nie?
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_05_02"); //Tylko czlonkowie sadu sa dopuszczeni!
	AI_Output(hero, self, "Info_Mod_HofstaatTuersteher_Hi_15_03"); //Czy sad?
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_05_04"); //Tak, czlowiek! W zamku nie ma miejsca na wzgórze!
	AI_Output(hero, self, "Info_Mod_HofstaatTuersteher_Hi_15_05"); //A jak zostac czlonkiem sadu?
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_05_06"); //Przede wszystkim trzeba tu uzyskac obywatelstwo dla naszego imperium.
	AI_Output(hero, self, "Info_Mod_HofstaatTuersteher_Hi_15_07"); //Jak zostac obywatelem?
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_05_08"); //Masz dwie mozliwosci: poslubic jednego z nas lub otworzyc sklep.
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_05_09"); //Nawiasem mówiac, gdybys zamierzal sie ozenic, nie trzymalbym sie chlopów.
	AI_Output(hero, self, "Info_Mod_HofstaatTuersteher_Hi_15_10"); //Dlaczego nie?
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_05_11"); //Chlopi sa po prostu rabusi! Zostaniesz uznany za wscieklego, ale nie czlonka tego panstwa. Aby to zrobic, trzeba sie przeprowadzic do domu z zona rolnika....

	B_LogEntry	(TOPIC_MOD_SEKTE_FREUDENSPENDER, "Drzwiowiec zamku mówi, ze nie wolno mi wejsc do niego, dopóki nie zostane czlonkiem sadu. Aby to osiagnac, mam dwie mozliwosci: poslubic dyrektora domu lub otworzyc sklep. Jesli jednak powinienem poslubic zone rolnika, to musze sie z nia przeniesc do zamku.");
};

INSTANCE Info_Mod_HofstaatTuersteher_NachFest (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_NachFest_Condition;
	information	= Info_Mod_HofstaatTuersteher_NachFest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatTuersteher_NachFest_Condition()
{
	if (Mod_SL_KingAtSwamp == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatTuersteher_NachFest_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_NachFest_05_00"); //Hej, czyz nie jestes asystentem basenów królewskich? Król szuka cie.

	Log_CreateTopic	(TOPIC_MOD_SEKTE_KING, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SEKTE_KING, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SEKTE_KING, "Drzwiowiec uwaza, ze król mnie szuka. Powinienem zatrzymac sie przy jego miejscu.");

	AI_StopProcessInfos	(self);
};

const string HofstaatTuersteher_Checkpoint	= "REL_277";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_HofstaatTuersteher_FirstWarn (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_FirstWarn_Condition;
	information	= Info_Mod_HofstaatTuersteher_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_HofstaatTuersteher_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, HofstaatTuersteher_Checkpoint) <= 500) //NICHT von hinten!
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

func void Info_Mod_HofstaatTuersteher_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_HofstaatTuersteher_FirstWarn_05_00"); //HALT! Nie mozesz tu jeszcze wejsc.

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, HofstaatTuersteher_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_HofstaatTuersteher_SecondWarn (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_SecondWarn_Condition;
	information	= Info_Mod_HofstaatTuersteher_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_HofstaatTuersteher_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, HofstaatTuersteher_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_HofstaatTuersteher_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_HofstaatTuersteher_SecondWarn_05_00"); //Opowiem ci to po raz ostatni. Jeszcze jeden krok i wejdziesz w swiat bólu!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,HofstaatTuersteher_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_HofstaatTuersteher_Attack (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_Attack_Condition;
	information	= Info_Mod_HofstaatTuersteher_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_HofstaatTuersteher_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,HofstaatTuersteher_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_HofstaatTuersteher_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_HofstaatTuersteher_Attack_05_00"); //Poprosil pan o to.....

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_HofstaatTuersteher_Pickpocket (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_Pickpocket_Condition;
	information	= Info_Mod_HofstaatTuersteher_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_HofstaatTuersteher_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 28);
};

FUNC VOID Info_Mod_HofstaatTuersteher_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatTuersteher_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatTuersteher_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatTuersteher_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatTuersteher_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatTuersteher_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatTuersteher_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatTuersteher_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatTuersteher_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatTuersteher_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatTuersteher_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatTuersteher_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatTuersteher_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatTuersteher_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatTuersteher_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatTuersteher_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatTuersteher_EXIT (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_EXIT_Condition;
	information	= Info_Mod_HofstaatTuersteher_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatTuersteher_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatTuersteher_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
