INSTANCE Info_Mod_Lagerhauswache_Diebe (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Diebe_Condition;
	information	= Info_Mod_Lagerhauswache_Diebe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lagerhauswache_Diebe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_REL_Lagerhaus))
	&& (Npc_HasItems(hero, ItMi_Kiste) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Diebe_Info()
{
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Diebe_28_00"); //Poczekaj minute! Gdzie idziesz?
	AI_Output(hero, self, "Info_Mod_Lagerhauswache_Diebe_15_01"); //Do obozu ciagnace sie pudla.
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Diebe_28_02"); //A gdzie jest jego pudelko? Spójrzcie, oni sa tam.
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Diebe_28_03"); //Zlap ladunek karmy dla swin.... Nie placi za to, by stac.

	self.aivar[AIV_PASSGATE] = FALSE;
};

INSTANCE Info_Mod_Lagerhauswache_Diebe2 (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Diebe2_Condition;
	information	= Info_Mod_Lagerhauswache_Diebe2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lagerhauswache_Diebe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_REL_Lagerhaus))
	&& (Npc_HasItems(hero, ItMi_Kiste) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Diebe2_Info()
{
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Diebe2_28_00"); //Poczekac, raz zaczekac.... ahhh, skrzynka pelna karmy dla swin dla naszego obozu.
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Diebe2_28_01"); //Chodz, on idzie dalej.

	self.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Lagerhauswache_Stadthalter (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Stadthalter_Condition;
	information	= Info_Mod_Lagerhauswache_Stadthalter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem gubernatorem. Pozwólcie mi wejsc!";
};

FUNC INT Info_Mod_Lagerhauswache_Stadthalter_Condition()
{
	if (Mod_Jim_Freudenspender == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Stadthalter_Info()
{
	AI_Output(hero, self, "Info_Mod_Lagerhauswache_Stadthalter_15_00"); //Jestem gubernatorem. Pozwólcie mi wejsc!
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Stadthalter_28_01"); //Nie daj mi glupca! Z daleka widze, ze do Jego zyl nie naplywa niebieska krew!
};

INSTANCE Info_Mod_Lagerhauswache_Duell (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Duell_Condition;
	information	= Info_Mod_Lagerhauswache_Duell_Info;
	permanent	= 1;
	important	= 0;
	description	= "Zachecam Cie do pojedynku!";
};

FUNC INT Info_Mod_Lagerhauswache_Duell_Condition()
{
	if (Mod_Jim_Freudenspender == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Duell_Info()
{
	AI_Output(hero, self, "Info_Mod_Lagerhauswache_Duell_15_00"); //Zachecam Cie do pojedynku!
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Duell_28_01"); //Pojedynek? Z jakiego powodu?

	Info_ClearChoices	(Info_Mod_Lagerhauswache_Duell);

	Info_AddChoice	(Info_Mod_Lagerhauswache_Duell, "Twój ojciec zbezczeszczyl mój rodzinny zaszczyt!", Info_Mod_Lagerhauswache_Duell_B);
	Info_AddChoice	(Info_Mod_Lagerhauswache_Duell, "Tak wlasnie jest!", Info_Mod_Lagerhauswache_Duell_A);
};

FUNC VOID Info_Mod_Lagerhauswache_Duell_B()
{
	AI_Output(hero, self, "Info_Mod_Lagerhauswache_Duell_B_15_00"); //Twój ojciec zbezczeszczyl mój rodzinny zaszczyt!
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Duell_B_28_01"); //Mój ojciec? Nie! Mój ojciec byl prawym czlowiekiem!
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Duell_B_28_02"); //Oskarzeniem wciagnal moja rodzine w brud. Nie moge tego bezkarnie.
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Duell_B_28_03"); //Wyciaga swój pistolet!

	Info_ClearChoices	(Info_Mod_Lagerhauswache_Duell);

	Mod_Jim_Freudenspender = 2;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

FUNC VOID Info_Mod_Lagerhauswache_Duell_A()
{
	AI_Output(hero, self, "Info_Mod_Lagerhauswache_Duell_A_15_00"); //Tak wlasnie jest!
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Duell_A_28_01"); //Och, nie, nie dlatego nie moge zaniedbywac mojego obowiazku.

	Info_ClearChoices	(Info_Mod_Lagerhauswache_Duell);
};

INSTANCE Info_Mod_Lagerhauswache_Bestechung (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Bestechung_Condition;
	information	= Info_Mod_Lagerhauswache_Bestechung_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co z malym zlotem?";
};

FUNC INT Info_Mod_Lagerhauswache_Bestechung_Condition()
{
	if (Mod_Jim_Freudenspender == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Bestechung_Info()
{
	AI_Output(hero, self, "Info_Mod_Lagerhauswache_Bestechung_15_00"); //A co z malym zlotem?
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Bestechung_28_01"); //Pah, nie obrazaj mnie!
};

INSTANCE Info_Mod_Lagerhauswache_Umgehauen (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Umgehauen_Condition;
	information	= Info_Mod_Lagerhauswache_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lagerhauswache_Umgehauen_Condition()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Umgehauen_Info()
{
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Umgehauen_28_00"); //Prosze, prosze, nie zwracajcie sie juz do mnie. Prosze Go o przebaczenie za wszystkie zniewagi, które spotkaly Go przez moja rodzine!

	// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Lagerhauswache_Umgehauen2 (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Umgehauen2_Condition;
	information	= Info_Mod_Lagerhauswache_Umgehauen2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lagerhauswache_Umgehauen2_Condition()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Umgehauen2_Info()
{
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Umgehauen2_28_00"); //Co On osmiela sie zwrócic do mnie po swojej klesce? Pozostawcie Go w zapyleniu drogi!

	// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;

	AI_StopProcessInfos	(self);
};

const string Lagerhauswache_Checkpoint	= "REL_CITY_144";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_Lagerhauswache_FirstWarn (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_FirstWarn_Condition;
	information	= Info_Mod_Lagerhauswache_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Lagerhauswache_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, Lagerhauswache_Checkpoint) <= 300) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	
	if ((self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_RefuseTalk(self) == FALSE))
	{
		return TRUE;
	};
};

func void Info_Mod_Lagerhauswache_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Lagerhauswache_FirstWarn_28_00"); //Lagodny w tempie! Ten magazyn jest otwarty tylko dla naszego najlepszego wlasciciela!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, Lagerhauswache_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Lagerhauswache_SecondWarn (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_SecondWarn_Condition;
	information	= Info_Mod_Lagerhauswache_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Lagerhauswache_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, Lagerhauswache_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_Lagerhauswache_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Lagerhauswache_SecondWarn_28_00"); //Opowiem mu to po raz ostatni. O krok dalej i On wchodzi w swiat bólu!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,Lagerhauswache_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Lagerhauswache_Attack (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Attack_Condition;
	information	= Info_Mod_Lagerhauswache_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Lagerhauswache_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,Lagerhauswache_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_Lagerhauswache_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_Lagerhauswache_Attack_28_00"); //W ten sposób chcial....

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_Lagerhauswache_EXIT (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_EXIT_Condition;
	information	= Info_Mod_Lagerhauswache_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lagerhauswache_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lagerhauswache_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
