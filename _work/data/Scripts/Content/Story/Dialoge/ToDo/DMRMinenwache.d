INSTANCE Info_Mod_DMRMinenwache_GoIn (C_INFO)
{
	npc		= Mod_7358_DMR_Daemonenritter_MT;
	nr		= 1;
	condition	= Info_Mod_DMRMinenwache_GoIn_Condition;
	information	= Info_Mod_DMRMinenwache_GoIn_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is there any way you can let me in?";
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
	AI_Output(hero, self, "Info_Mod_DMRMinenwache_GoIn_15_00"); //Is there any way you can let me in?
	AI_Output(self, hero, "Info_Mod_DMRMinenwache_GoIn_05_01"); //No, not as long as you're with us. Now get out of here.

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
	description	= "And could you just step away from the entrance for a moment? )";
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
	AI_Output(hero, self, "Info_Mod_DMRMinenwache_GoIn2_15_00"); //And could you just step away from the entrance for a bag of 200 gold coins if I accidentally fall to the ground?
	AI_Output(self, hero, "Info_Mod_DMRMinenwache_GoIn2_05_01"); //The only reason to walk away from the entrance is to kick your ass.

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
	description	= "Look, I'm dangerous.";
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
	AI_Output(hero, self, "Info_Mod_DMRMinenwache_GoIn3_15_00"); //Look, I'm dangerous.
	AI_Output(self, hero, "Info_Mod_DMRMinenwache_GoIn3_05_01"); //Haha, I'm not laughing, you worm. I could knock you out with my eyes closed.
	AI_Output(hero, self, "Info_Mod_DMRMinenwache_GoIn3_15_02"); //I won't believe that until I see it.
	AI_Output(self, hero, "Info_Mod_DMRMinenwache_GoIn3_05_03"); //All right, now you're experiencing your blue miracle.

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
	description	= "Kicking my ass? I don't believe that until I (.... )";
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
	AI_Output(hero, self, "Info_Mod_DMRMinenwache_GoIn4_15_00"); //Kicking my ass? I won't believe that until I see it....
	AI_Output(self, hero, "Info_Mod_DMRMinenwache_GoIn4_05_01"); //All right, that's enough.

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
	AI_Output (self, hero,"Info_Mod_DMRMinenwache_FirstWarn_05_00"); //HALT! No one is allowed to enter the mine without permission.

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
	AI_Output (self, hero,"Info_Mod_DMRMinenwache_SecondWarn_05_00"); //Don't take another step!

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
	
	AI_Output (self, hero,"Info_Mod_DMRMinenwache_Attack_05_00"); //You asked for it...

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
