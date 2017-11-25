INSTANCE Info_Mod_Drach_Hi (C_INFO)
{
	npc		= GardeBeliars_1989_Drach;
	nr		= 1;
	condition	= Info_Mod_Drach_Hi_Condition;
	information	= Info_Mod_Drach_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Drach_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Drach_Hi_Info()
{
	Wld_PlayEffect("DEMENTOR_FX",  self, self, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_Fear",  self, self, 0, 0, 0, FALSE );

	AI_Output(self, hero, "Info_Mod_Drach_Hi_14_00"); //Don't take another step, man!
	AI_Output(hero, self, "Info_Mod_Drach_Hi_15_01"); //What do you want?
	AI_Output(self, hero, "Info_Mod_Drach_Hi_14_02"); //You and Xardas have something my master wants! GIVE ME THAT ALMANAC!
	AI_Output(hero, self, "Info_Mod_Drach_Hi_15_03"); //Forget it!

	AI_ReadyMeleeWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Drach_Hi_14_04"); //Then I'll kill you!

	AI_ReadyMeleeWeapon	(hero);

	AI_Output(hero, self, "Info_Mod_Drach_Hi_15_05"); //Try it yourself!
};

INSTANCE Info_Mod_Drach_WerBistDu (C_INFO)
{
	npc		= GardeBeliars_1989_Drach;
	nr		= 1;
	condition	= Info_Mod_Drach_WerBistDu_Condition;
	information	= Info_Mod_Drach_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "END";
};

FUNC INT Info_Mod_Drach_WerBistDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drach_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drach_WerBistDu_Info()
{
	Wld_StopEffect	("DEMENTOR_FX");

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);

	B_LogEntry	(TOPIC_MOD_BEL_ALMANACH, "In front of Xardas' tower I met a warrior named Dragon. He wanted the almanac for his master. I guess I'll have to kill him.");
};

INSTANCE Info_Mod_Drach_Besiegt (C_INFO)
{
	npc		= GardeBeliars_1989_Drach;
	nr		= 1;
	condition	= Info_Mod_Drach_Besiegt_Condition;
	information	= Info_Mod_Drach_Besiegt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Drach_Besiegt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drach_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drach_Besiegt_Info()
{
	AI_Output(self, hero, "Info_Mod_Drach_Besiegt_14_00"); //(Bizz) Damn it! Now you may have won, but I'll come back, and with me the other five warriors.

	self.aivar[AIV_Partymember] = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");

	Log_CreateTopic	(TOPIC_MOD_BEL_FIVEKNIGHTS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_FIVEKNIGHTS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_FIVEKNIGHTS, "Drach has fled and announced his return with another five warriors. This can be fun.");
};

INSTANCE Info_Mod_Drach_AtAlmanach (C_INFO)
{
	npc		= GardeBeliars_1989_Drach;
	nr		= 1;
	condition	= Info_Mod_Drach_AtAlmanach_Condition;
	information	= Info_Mod_Drach_AtAlmanach_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Drach_AtAlmanach_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_AlmanachOffen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drach_AtAlmanach_Info()
{
	AI_Output(self, hero, "Info_Mod_Drach_AtAlmanach_14_00"); //Ah, it's you, little man. You're too late! The others are already looking for the axe.
	AI_Output(hero, self, "Info_Mod_Drach_AtAlmanach_15_01"); //How did you find out what it says in the book?
	AI_Output(self, hero, "Info_Mod_Drach_AtAlmanach_14_02"); //(laughs) We have our eyes and ears everywhere! Now die!

	B_LogEntry	(TOPIC_MOD_BEL_FIVEKNIGHTS, "I met Drach again. I really have to kill him this time.");

	CreateInvItems	(self, ItWr_AxtAlmanach_01, 1);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};
