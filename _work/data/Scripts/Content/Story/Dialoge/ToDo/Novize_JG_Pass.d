INSTANCE Info_Mod_Novize_JG_Pass_Hi (C_INFO)
{
	npc		= Mod_7435_NOV_Novize_MT;
	nr		= 1;
	condition	= Info_Mod_Novize_JG_Pass_Hi_Condition;
	information	= Info_Mod_Novize_JG_Pass_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Novize_JG_Pass_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_03_00"); //Have mercy on me, I'm not gonna do anything, honestly.

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	Info_AddChoice	(Info_Mod_Novize_JG_Pass_Hi, "Why did you attack me?", Info_Mod_Novize_JG_Pass_Hi_B);
	Info_AddChoice	(Info_Mod_Novize_JG_Pass_Hi, "Forget it, die.", Info_Mod_Novize_JG_Pass_Hi_A);
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_B_15_00"); //Why did you attack me?
	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_B_03_01"); //l-- I couldn't help myself. He made me do it.
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_B_15_02"); //Who forced you to?
	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_B_03_03"); //My master. Please let me live.

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	Info_AddChoice	(Info_Mod_Novize_JG_Pass_Hi, "Before your death you would at least have your conscience (.... )", Info_Mod_Novize_JG_Pass_Hi_D);
	Info_AddChoice	(Info_Mod_Novize_JG_Pass_Hi, "All right, I won't hurt you anymore. Now tell me, (... )", Info_Mod_Novize_JG_Pass_Hi_C);
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_D_15_00"); //Before you died, at least you could have relieved your conscience. Die.
	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_D_03_01"); //master

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_C_15_00"); //All right, I won't hurt you anymore. Now tell me who your master is.
	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_C_03_01"); //I can't, he's killing me for it. Please let me go.

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	Info_AddChoice	(Info_Mod_Novize_JG_Pass_Hi, "No. Sirb.", Info_Mod_Novize_JG_Pass_Hi_F);
	Info_AddChoice	(Info_Mod_Novize_JG_Pass_Hi, "Get out of here and don't come back, coward.", Info_Mod_Novize_JG_Pass_Hi_E);
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_F_15_00"); //No. Sirb.

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_E_15_00"); //Get out of here and don't come back, coward.

	AI_TurnAway	(hero, self);

	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_E_03_01"); //You fool die. I would never be able to stand under the eyes of my master like this.

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Novize_JG_Pass_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Novize_JG_Pass_Hi_A_15_00"); //Forget it, die.
	AI_Output(self, hero, "Info_Mod_Novize_JG_Pass_Hi_A_03_01"); //Nope!

	Info_ClearChoices	(Info_Mod_Novize_JG_Pass_Hi);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
