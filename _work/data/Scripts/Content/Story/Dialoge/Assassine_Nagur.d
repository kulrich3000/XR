INSTANCE Info_Mod_Assassine_Nagur_Hi (C_INFO)
{
	npc		= Mod_7782_ASS_Assassine_NW;
	nr		= 1;
	condition	= Info_Mod_Assassine_Nagur_Hi_Condition;
	information	= Info_Mod_Assassine_Nagur_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Assassine_Nagur_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Assassine_Nagur_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_03_00"); //What?! You?!

	AI_TurnToNpc	(self, Mod_7783_OUT_Schmuggler_NW);

	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_03_01"); //(To the others) That's the guy who did the novice for Nagur.

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_03_02"); //Did you follow us? What are you doing here?!

	Info_ClearChoices	(Info_Mod_Assassine_Nagur_Hi);

	Info_AddChoice	(Info_Mod_Assassine_Nagur_Hi, "Nagur gave me the assignment to get you guys done.", Info_Mod_Assassine_Nagur_Hi_B);
	Info_AddChoice	(Info_Mod_Assassine_Nagur_Hi, "Ease your dead body around the contraband.", Info_Mod_Assassine_Nagur_Hi_A);
};

FUNC VOID Info_Mod_Assassine_Nagur_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Assassine_Nagur_Hi_B_15_00"); //Nagur gave me the assignment to get you guys done.

	AI_ReadyMeleeWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_B_03_01"); //What?! That son of a bitch! And you should think carefully about what you're going to do... who you're taking sides for!
	AI_Output(hero, self, "Info_Mod_Assassine_Nagur_Hi_B_15_02"); //What do you have to offer?
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_B_03_03"); //Well... you could come without a fight and scratches on some gold coins.
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_B_03_04"); //All you have to do is turn around and tell Nagur that you've done your job.
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_B_03_05"); //He's going to get careless, and this is the moment we strike.
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_B_03_06"); //As soon as it's done, you'll find out at the pub and get a bag of gold.

	Info_ClearChoices	(Info_Mod_Assassine_Nagur_Hi);

	Info_AddChoice	(Info_Mod_Assassine_Nagur_Hi, "Sounds good to me.", Info_Mod_Assassine_Nagur_Hi_D);
	Info_AddChoice	(Info_Mod_Assassine_Nagur_Hi, "No, I'd rather ease your dead bodies around the contraband.", Info_Mod_Assassine_Nagur_Hi_C);
};

FUNC VOID Info_Mod_Assassine_Nagur_Hi_E()
{
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_E_03_00"); //Let's have a look!

	Info_ClearChoices	(Info_Mod_Assassine_Nagur_Hi);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	Mod_7781_SNOV_Novize_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7781_SNOV_Novize_NW, GIL_STRF);

	Mod_7783_OUT_Schmuggler_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7783_OUT_Schmuggler_NW, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	Mod_Nagur_Geschaeft = 5;
};

FUNC VOID Info_Mod_Assassine_Nagur_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Assassine_Nagur_Hi_A_15_00"); //Ease your dead body around the contraband.

	Info_Mod_Assassine_Nagur_Hi_E();
};

FUNC VOID Info_Mod_Assassine_Nagur_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Assassine_Nagur_Hi_D_15_00"); //Sounds good to me.
	AI_Output(self, hero, "Info_Mod_Assassine_Nagur_Hi_D_03_01"); //Very good... you're being reasonable. Well, you know what to do.

	Info_ClearChoices	(Info_Mod_Assassine_Nagur_Hi);

	B_LogEntry	(TOPIC_MOD_NAGUR_GESCHAEFT, "I can now report to Nagur that his competitors have been eliminated.");

	AI_StopProcessInfos	(self);

	Mod_Nagur_Geschaeft = 4;
};

FUNC VOID Info_Mod_Assassine_Nagur_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Assassine_Nagur_Hi_C_15_00"); //No, I'd rather ease your dead bodies around the contraband.

	Info_Mod_Assassine_Nagur_Hi_E();
};

INSTANCE Info_Mod_Assassine_Nagur_EXIT (C_INFO)
{
	npc		= Mod_7782_ASS_Assassine_NW;
	nr		= 1;
	condition	= Info_Mod_Assassine_Nagur_EXIT_Condition;
	information	= Info_Mod_Assassine_Nagur_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Assassine_Nagur_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Assassine_Nagur_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
