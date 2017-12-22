INSTANCE Info_Mod_Torwache_Halt (C_INFO)
{
	npc		= Mod_1130_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Halt_Condition;
	information	= Info_Mod_Torwache_Halt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_Halt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GorNaMon_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_Halt_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_Halt_08_00"); //HALT! What are you doing here?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Torwache_SabitschDieb (C_INFO)
{
	npc		= Mod_1130_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_SabitschDieb_Condition;
	information	= Info_Mod_Torwache_SabitschDieb_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_SabitschDieb_Condition()
{
	if (Mod_SabitschAmulettGeklaut == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torwache_AL_01_SabitschDieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_SabitschDieb_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschDieb_08_00"); //Dirty thieves haven't lost anything in our warehouse.
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschDieb_08_01"); //First pay your debt to Sabitsch, then you can go back inside.
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschDieb_08_02"); //1000 gold coins punishment for the bold theft and the amulet.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "I was able to steal the amulet, which Sabitsch noticed shortly afterwards. I was supposed to bring it to Dexter and figure out how to make the old camp friendly again after the theft.");
};

INSTANCE Info_Mod_Torwache_SabitschMoerder (C_INFO)
{
	npc		= Mod_1130_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_SabitschMoerder_Condition;
	information	= Info_Mod_Torwache_SabitschMoerder_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_SabitschMoerder_Condition()
{
	if (Mod_SabitschTotPetze == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torwache_AL_01_SabitschMoerder))
	&& (!Npc_IsDead(Mod_962_STT_Scatty_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_SabitschMoerder_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschMoerder_08_00"); //Thorus's buddy was killed in his cabin that night.
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschMoerder_08_01"); //We have a reliable witness who saw you nearby at that time.
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschMoerder_08_02"); //Until that's sorted out, you're definitely not coming back to the camp.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Damn one witness - presumably Scatty - testified to seeing me at night at the dead man's cabin. If I don't want to be permanently banned from the old camp, I have to do something.");
};

INSTANCE Info_Mod_Torwache_EXIT (C_INFO)
{
	npc		= Mod_1130_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_EXIT_Condition;
	information	= Info_Mod_Torwache_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torwache_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
