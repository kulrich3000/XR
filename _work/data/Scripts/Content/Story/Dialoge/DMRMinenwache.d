INSTANCE Info_Mod_DMRMinenwache_GoIn (C_INFO)
{
	npc		= Mod_7358_DMR_Daemonenritter_MT;
	nr		= 1;
	condition	= Info_Mod_DMRMinenwache_GoIn_Condition;
	information	= Info_Mod_DMRMinenwache_GoIn_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jest jakis sposób, w jaki moge mnie wpuscic?";
};

FUNC INT Info_Mod_DMRMinenwache_GoIn_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Fertig))
	{
		return 1;
	};
};

FUNc VOID Info_Mod_DMRMinenwache_GoIn_Info()
{
	AI_Output(hero, self, "Info_Mod_DMRMinenwache_GoIn_15_00"); //Czy jest jakis sposób, w jaki moge mnie wpuscic?
	AI_Output(self, hero, "Info_Mod_DMRMinenwache_GoIn_05_01"); //Nie, nie tak dlugo jak jestes z nami. Teraz wyjdz z tego miejsca.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_DMRMinenwache_GoIn2 (C_INFO)
{
	npc		= Mod_7358_DMR_Daemonenritter_MT;
	nr		= 1;
	condition	= Info_Mod_DMRMinenwache_GoIn2_Condition;
	information	= Info_Mod_DMRMinenwache_GoIn2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I czy móglbys na chwile oddalic sie od wejscia? )";
};

FUNC INT Info_Mod_DMRMinenwache_GoIn2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_DMRMinenwache_GoIn))
	{
		return 1;
	};
};

FUNc VOID Info_Mod_DMRMinenwache_GoIn2_Info()
{
	AI_Output(hero, self, "Info_Mod_DMRMinenwache_GoIn2_15_00"); //I czy móglbys po prostu oddalic sie od wejscia na torbe 200 zlotych monet, gdy przypadkowo wypadne na ziemie?
	AI_Output(self, hero, "Info_Mod_DMRMinenwache_GoIn2_05_01"); //Jedynym powodem oddalenia sie od wejscia jest kopniecie tylka.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_DMRMinenwache_GoIn3 (C_INFO)
{
	npc		= Mod_7358_DMR_Daemonenritter_MT;
	nr		= 1;
	condition	= Info_Mod_DMRMinenwache_GoIn3_Condition;
	information	= Info_Mod_DMRMinenwache_GoIn3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Patrz, jestem niebezpieczny.";
};

FUNC INT Info_Mod_DMRMinenwache_GoIn3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_DMRMinenwache_GoIn2))
	{
		return 1;
	};
};

FUNc VOID Info_Mod_DMRMinenwache_GoIn3_Info()
{
	AI_Output(hero, self, "Info_Mod_DMRMinenwache_GoIn3_15_00"); //Patrz, jestem niebezpieczny.
	AI_Output(self, hero, "Info_Mod_DMRMinenwache_GoIn3_05_01"); //Haha, nie smieje sie, robisz. Móglbym cie wybic z zamknietymi oczami.
	AI_Output(hero, self, "Info_Mod_DMRMinenwache_GoIn3_15_02"); //Nie wierze w to dopóki nie zobacze tego.
	AI_Output(self, hero, "Info_Mod_DMRMinenwache_GoIn3_05_03"); //Wszystko w porzadku, teraz przezywasz swój niebieski cud.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SHOWTRAINING");
};

INSTANCE Info_Mod_DMRMinenwache_GoIn4 (C_INFO)
{
	npc		= Mod_7358_DMR_Daemonenritter_MT;
	nr		= 1;
	condition	= Info_Mod_DMRMinenwache_GoIn4_Condition;
	information	= Info_Mod_DMRMinenwache_GoIn4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kopiac moja dupe? Nie wierze w to dopiero wtedy, gdy ja (....). )";
};

FUNC INT Info_Mod_DMRMinenwache_GoIn4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_DMRMinenwache_GoIn2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_DMRMinenwache_GoIn3))
	{
		return 1;
	};
};

FUNc VOID Info_Mod_DMRMinenwache_GoIn4_Info()
{
	AI_Output(hero, self, "Info_Mod_DMRMinenwache_GoIn4_15_00"); //Kopiac moja dupe? Nie uwierze w to, dopóki nie zobacze tego.....
	AI_Output(self, hero, "Info_Mod_DMRMinenwache_GoIn4_05_01"); //To wystarczy.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

const string DMRMinenwache_Checkpoint	= "PALTOBURGLINKS_2_4";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_DMRMinenwache_FirstWarn (C_INFO)
{
	npc		= Mod_7358_DMR_Daemonenritter_MT;
	nr		= 1;
	condition	= Info_Mod_DMRMinenwache_FirstWarn_Condition;
	information	= Info_Mod_DMRMinenwache_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_DMRMinenwache_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, DMRMinenwache_Checkpoint) <= 700) //NICHT von hinten!
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

func void Info_Mod_DMRMinenwache_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_DMRMinenwache_FirstWarn_05_00"); //HALT! Nikt nie moze wejsc do kopalni bez zezwolenia.

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, DMRMinenwache_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_DMRMinenwache_SecondWarn (C_INFO)
{
	npc		= Mod_7358_DMR_Daemonenritter_MT;
	nr		= 1;
	condition	= Info_Mod_DMRMinenwache_SecondWarn_Condition;
	information	= Info_Mod_DMRMinenwache_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_DMRMinenwache_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, DMRMinenwache_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_DMRMinenwache_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_DMRMinenwache_SecondWarn_05_00"); //Nie wykonuj kolejnego kroku!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,DMRMinenwache_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_DMRMinenwache_Attack (C_INFO)
{
	npc		= Mod_7358_DMR_Daemonenritter_MT;
	nr		= 1;
	condition	= Info_Mod_DMRMinenwache_Attack_Condition;
	information	= Info_Mod_DMRMinenwache_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_DMRMinenwache_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,DMRMinenwache_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_DMRMinenwache_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_DMRMinenwache_Attack_05_00"); //Poprosil pan o to.....

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_DMRMinenwache_EXIT (C_INFO)
{
	npc		= Mod_7358_DMR_Daemonenritter_MT;
	nr		= 1;
	condition	= Info_Mod_DMRMinenwache_EXIT_Condition;
	information	= Info_Mod_DMRMinenwache_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_DMRMinenwache_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_DMRMinenwache_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
