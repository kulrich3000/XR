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

	AI_Output(self, hero, "Info_Mod_Drach_Hi_14_00"); //Nie wykonuj kolejnego kroku, czlowieka!
	AI_Output(hero, self, "Info_Mod_Drach_Hi_15_01"); //Czego chcesz?
	AI_Output(self, hero, "Info_Mod_Drach_Hi_14_02"); //Ty i Xardas macie cos, czego chce mój mistrz! DAJ MI TEGO ALMANACHU!
	AI_Output(hero, self, "Info_Mod_Drach_Hi_15_03"); //Zapomnij o tym!

	AI_ReadyMeleeWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Drach_Hi_14_04"); //Wtedy cie zabije!

	AI_ReadyMeleeWeapon	(hero);

	AI_Output(hero, self, "Info_Mod_Drach_Hi_15_05"); //Wypróbuj to samodzielnie!
};

INSTANCE Info_Mod_Drach_WerBistDu (C_INFO)
{
	npc		= GardeBeliars_1989_Drach;
	nr		= 1;
	condition	= Info_Mod_Drach_WerBistDu_Condition;
	information	= Info_Mod_Drach_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "ENDE";
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

	B_LogEntry	(TOPIC_MOD_BEL_ALMANACH, "Przed wieza kardaska spotkalem wojownika o imieniu Smok. Chcial almanachu dla swego mistrza. Mysle, ze bede musial go zabic.");
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
	AI_Output(self, hero, "Info_Mod_Drach_Besiegt_14_00"); //(Bizz) Damn it! Byc moze wygrales, ale wróce, a wraz ze mna pozostalych pieciu wojowników.

	self.aivar[AIV_Partymember] = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");

	Log_CreateTopic	(TOPIC_MOD_BEL_FIVEKNIGHTS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_FIVEKNIGHTS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_FIVEKNIGHTS, "Drach uciekl i oglosil swój powrót z piecioma innymi wojownikami. To moze byc zabawa.");
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
	AI_Output(self, hero, "Info_Mod_Drach_AtAlmanach_14_00"); //Ach, to ty, maly czlowiek. Jestes za pózno! Inni juz szukaja siekiery.
	AI_Output(hero, self, "Info_Mod_Drach_AtAlmanach_15_01"); //Jak dowiedziales sie, co mówi ksiazka?
	AI_Output(self, hero, "Info_Mod_Drach_AtAlmanach_14_02"); //(smiech) Mamy oczy i uszy wszedzie! Teraz umrzec!

	B_LogEntry	(TOPIC_MOD_BEL_FIVEKNIGHTS, "Znów spotkalem sie z Drachiem. Naprawde musze go tym razem zabic.");

	CreateInvItems	(self, ItWr_AxtAlmanach_01, 1);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};
