FUNC VOID Info_Mod_Dubios_Hi()
{
	AI_Output(self, hero, "Info_Mod_Dubios_Hi_09_00"); //.... co to jest ten bogaty worek biegnacy posrodku dzikiej przyrody. Musi oczekiwac, ze zostanie zaatakowany.
	AI_Output(self, hero, "Info_Mod_Dubios_Hi_09_01"); //A posladki tak uporczywie wisialy na jego pierscieniu.... Dalem mu to jesc.
	AI_Output(self, hero, "Info_Mod_Dubios_Hi_09_02"); //Mial wiecej niz wystarczajaco duzo zlota i srebra. Z latwoscia m�gl go z nim zabrac do swojego wilgotnego grobu.
	AI_Output(self, hero, "Info_Mod_Dubios_Hi_09_03"); //Ale kto tu mamy? Kolejny osiolek? Do niego!

	B_LogEntry	(TOPIC_MOD_HEROLD_SIEGELRING, "Wyglada na to, ze dwie watpliwe postacie rabowaly mnie samych. Musieli opuscic mu pierscien. Teraz jest w swoim mokrym grobie....");
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
