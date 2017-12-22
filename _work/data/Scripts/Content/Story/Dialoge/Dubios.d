FUNC VOID Info_Mod_Dubios_Hi()
{
	AI_Output(self, hero, "Info_Mod_Dubios_Hi_09_00"); //(opposite) Hähähä,... what is this rich bag running around in the middle of the wilderness. He must expect to be attacked.
	AI_Output(self, hero, "Info_Mod_Dubios_Hi_09_01"); //And the bum was so persistently hanging on his ring... I gave him this to eat.
	AI_Output(self, hero, "Info_Mod_Dubios_Hi_09_02"); //Had more than enough gold and silver. He could easily take it with him into his wet grave.
	AI_Output(self, hero, "Info_Mod_Dubios_Hi_09_03"); //But who do we have here? Another donkey? To him!

	B_LogEntry	(TOPIC_MOD_HEROLD_SIEGELRING, "Looks like the two dubious characters robbed my robber themselves. They must have left the ring to him. He is now in his wet grave....");
};

INSTANCE Info_Mod_Dubios_REL_Hi (C_INFO)
{
	npc		= Mod_7746_OUT_Dubios_REL;
	nr		= 1;
	condition	= Info_Mod_Dubios_REL_Hi_Condition;
	information	= Info_Mod_Dubios_REL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dubios_REL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dubios_REL_Hi_Info()
{
	Info_Mod_Dubios_Hi();

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	Mod_7747_OUT_Dubios_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7747_OUT_Dubios_REL, GIL_STRF);

	Wld_InsertNpc	(Mod_7748_OUT_Raeuber_REL, "REL_CITY_001");

	if (Hlp_Random(2) == 0)
	{
		B_StartOtherRoutine	(Mod_7748_OUT_Raeuber_REL, "SEE");
	};

	B_KillNpc	(Mod_7748_OUT_Raeuber_REL);
};

INSTANCE Info_Mod_Dubios_MT_Hi (C_INFO)
{
	npc		= Mod_7750_OUT_Dubios_MT;
	nr		= 1;
	condition	= Info_Mod_Dubios_MT_Hi_Condition;
	information	= Info_Mod_Dubios_MT_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dubios_MT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dubios_MT_Hi_Info()
{
	Info_Mod_Dubios_Hi();

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	Mod_7751_OUT_Dubios_MT.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7751_OUT_Dubios_MT, GIL_STRF);

	Wld_InsertNpc	(Mod_7749_OUT_Raeuber_MT, "WP_INTRO_SHORE");

	if (Hlp_Random(2) == 0)
	{
		B_StartOtherRoutine	(Mod_7749_OUT_Raeuber_MT, "SEE");
	}
	else
	{
		B_StartOtherRoutine	(Mod_7749_OUT_Raeuber_MT, "SEE2");
	};

	B_KillNpc	(Mod_7749_OUT_Raeuber_MT);
};
