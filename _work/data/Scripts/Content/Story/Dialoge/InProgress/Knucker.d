INSTANCE Info_Mod_Knucker_Hi (C_INFO)
{
	npc		= Knucker_11001_NW;
	nr		= 1;
	condition	= Info_Mod_Knucker_Hi_Condition;
	information	= Info_Mod_Knucker_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Knucker_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Knucker_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Knucker_Hi_22_00"); //Hey, babe, what are you doing here?

	Info_ClearChoices	(Info_Mod_Knucker_Hi);

	Info_AddChoice	(Info_Mod_Knucker_Hi, "I'm your worst nightmare.", Info_Mod_Knucker_Hi_C);
	Info_AddChoice	(Info_Mod_Knucker_Hi, "I was picking turnips.", Info_Mod_Knucker_Hi_B);
	Info_AddChoice	(Info_Mod_Knucker_Hi, "I just happen to be here.", Info_Mod_Knucker_Hi_A);
};

FUNC VOID Info_Mod_Knucker_Hi_D()
{
	AI_Output(self, hero, "Info_Mod_Knucker_Hi_D_22_00"); //(disinterested) Yes yes.... You can do something for me. I have an arrow in my paw. I want you to pull it out.

	Info_ClearChoices	(Info_Mod_Knucker_Hi);

	Info_AddChoice	(Info_Mod_Knucker_Hi, "No, screw you.", Info_Mod_Knucker_Hi_F);
	Info_AddChoice	(Info_Mod_Knucker_Hi, "Sure, I'll be glad to help.", Info_Mod_Knucker_Hi_E);
};

FUNC VOID Info_Mod_Knucker_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Knucker_Hi_C_15_00"); //I'm your worst nightmare.

	Info_Mod_Knucker_Hi_D();
};

FUNC VOID Info_Mod_Knucker_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Knucker_Hi_B_15_00"); //I was picking turnips.

	Info_Mod_Knucker_Hi_D();
};

FUNC VOID Info_Mod_Knucker_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Knucker_Hi_A_15_00"); //I just happen to be here.

	Info_Mod_Knucker_Hi_D();
};

FUNC VOID Info_Mod_Knucker_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Knucker_Hi_F_15_00"); //Nah, screw you.
	AI_Output(self, hero, "Info_Mod_Knucker_Hi_F_22_01"); //Then I'll roast and eat you.

	Info_ClearChoices	(Info_Mod_Knucker_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
	B_Attack	(Feuerdrache_11002_NW, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Knucker_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Knucker_Hi_E_15_00"); //Sure, I'll be glad to help.

	AI_PlayAni	(hero, "T_PLUNDER");

	AI_Output(self, hero, "Info_Mod_Knucker_Hi_E_22_01"); //Ahh, same much better. You did a good job, you big man. You can go now.

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Knucker_Hi);

	AI_StopProcessInfos	(self);
};
