INSTANCE Info_Mod_Suchender_Hi (C_INFO)
{
	npc		= Mod_7434_DMT_Suchender_MT;
	nr		= 1;
	condition	= Info_Mod_Suchender_Hi_Condition;
	information	= Info_Mod_Suchender_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Suchender_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Suchender_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Suchender_Hi_10_00"); //Ah, I didn't expect to see you here so soon...
	AI_Output(hero, self, "Info_Mod_Suchender_Hi_15_01"); //Expected? Who are you?
	AI_Output(self, hero, "Info_Mod_Suchender_Hi_10_02"); //You're in one of my homes and don't even know who you're actually visiting? (laughs)
	AI_Output(hero, self, "Info_Mod_Suchender_Hi_15_03"); //What do you have to do with the raids on hunters and rangers?
	AI_Output(self, hero, "Info_Mod_Suchender_Hi_10_04"); //Isn't that clear, monsters?
	AI_Output(hero, self, "Info_Mod_Suchender_Hi_15_05"); //You murderer, I will send you to your victims!

	AI_ReadyMeleeWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_Suchender_Hi_10_06"); //(laughs) Are you sure about that? Maybe I'm not the murderer you're looking for.
	AI_Output(hero, self, "Info_Mod_Suchender_Hi_15_07"); //If you have anything else to say, say it fast, or you'll run out of time.
	AI_Output(self, hero, "Info_Mod_Suchender_Hi_10_08"); //I have all the time I need. But maybe you just haven't done enough research.
	AI_Output(self, hero, "Info_Mod_Suchender_Hi_10_09"); //Or maybe you do and you just don't discover it? I'll be waiting for you soon.

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Suchender_Turm (C_INFO)
{
	npc		= Mod_7434_DMT_Suchender_MT;
	nr		= 1;
	condition	= Info_Mod_Suchender_Turm_Condition;
	information	= Info_Mod_Suchender_Turm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Suchender_Turm_Condition()
{
	if (Mod_SuchenderAtTurm == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Suchender_Turm_Info()
{
	AI_Output(self, hero, "Info_Mod_Suchender_Turm_10_00"); //Ha, you again! Found you here. Amazing, but free.
	AI_Output(self, hero, "Info_Mod_Suchender_Turm_10_01"); //My master hasn't lived here in a long time.
	AI_Output(hero, self, "Info_Mod_Suchender_Turm_15_02"); //But I'm gonna get you this time!
	AI_Output(self, hero, "Info_Mod_Suchender_Turm_10_03"); //Stop! If you kill me, which is difficult for you to do, you will never know where he is who you are looking for. Therefore...

	AI_PlayAni	(hero, "T_STAND_2_VICTIM_SLE");

	B_LogEntry	(TOPIC_MOD_JG_TURM, "Once again, this seeker has escaped. Well, at least I have his key. I'm sure it'll come in handy. Maybe Wulfgar knows something.");

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Suchender_EXIT (C_INFO)
{
	npc		= Mod_7434_DMT_Suchender_MT;
	nr		= 1;
	condition	= Info_Mod_Suchender_EXIT_Condition;
	information	= Info_Mod_Suchender_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Suchender_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Suchender_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
