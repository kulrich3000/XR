INSTANCE Info_Mod_Rico_Hi (C_INFO)
{
	npc		= Mod_4017_EIS_Rico_EIS;
	nr		= 1;
	condition	= Info_Mod_Rico_Hi_Condition;
	information	= Info_Mod_Rico_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rico_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rico_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Rico_Hi_04_00"); //Come closer, stranger.

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "What's the matter?", Info_Mod_Rico_Hi_B);
	Info_AddChoice	(Info_Mod_Rico_Hi, "What if he doesn't?", Info_Mod_Rico_Hi_A);
};

FUNC VOID Info_Mod_Rico_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_B_15_00"); //What's the matter?
	AI_Output(self, hero, "Info_Mod_Rico_Hi_B_04_01"); //Surely you're interested in good business, aren't you?

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "What's this about?", Info_Mod_Rico_Hi_D);
	Info_AddChoice	(Info_Mod_Rico_Hi, "Of course it is.", Info_Mod_Rico_Hi_C);
};

FUNC VOID Info_Mod_Rico_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_A_15_00"); //What if he doesn't?
	AI_Output(self, hero, "Info_Mod_Rico_Hi_A_04_01"); //Everyone is the blacksmith of his own fortune.

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "What's the matter?", Info_Mod_Rico_Hi_B);
	Info_AddChoice	(Info_Mod_Rico_Hi, "I'd better get going.", Info_Mod_Rico_Hi_H);
};

FUNC VOID Info_Mod_Rico_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_H_15_00"); //I'd better get going.
	AI_Output(self, hero, "Info_Mod_Rico_Hi_H_04_01"); //This is a missed opportunity!

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "What's the matter?", Info_Mod_Rico_Hi_B);
	Info_AddChoice	(Info_Mod_Rico_Hi, "END", Info_Mod_Rico_Hi_I);
};

FUNC VOID Info_Mod_Rico_Hi_I()
{
	Info_ClearChoices	(Info_Mod_Rico_Hi);
};

FUNC VOID Info_Mod_Rico_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_D_15_00"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Rico_Hi_D_04_01"); //So you're in?

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "This is not for me.", Info_Mod_Rico_Hi_E);
	Info_AddChoice	(Info_Mod_Rico_Hi, "Of course it is.", Info_Mod_Rico_Hi_C);
};

FUNC VOID Info_Mod_Rico_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_E_15_00"); //This is not for me.
	AI_Output(self, hero, "Info_Mod_Rico_Hi_E_04_01"); //This is a missed opportunity!

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "What's this about?", Info_Mod_Rico_Hi_G);
	Info_AddChoice	(Info_Mod_Rico_Hi, "I'd rather not.", Info_Mod_Rico_Hi_F);
};

FUNC VOID Info_Mod_Rico_Hi_J()
{
	AI_Output(self, hero, "Info_Mod_Rico_Hi_J_04_00"); //Very good. Very good. I know someone who has a valuable belt. He's so rich, he almost stinks.
	AI_Output(self, hero, "Info_Mod_Rico_Hi_J_04_01"); //Aren't we going to relieve him of his heavy burden?

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "This is not for me.", Info_Mod_Rico_Hi_L);
	Info_AddChoice	(Info_Mod_Rico_Hi, "That's a good idea.", Info_Mod_Rico_Hi_K);
};

FUNC VOID Info_Mod_Rico_Hi_L()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_L_15_00"); //This is not for me.
	AI_Output(self, hero, "Info_Mod_Rico_Hi_L_04_01"); //This is a missed opportunity!

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	Info_AddChoice	(Info_Mod_Rico_Hi, "Okay, I'll do it.", Info_Mod_Rico_Hi_N);
	Info_AddChoice	(Info_Mod_Rico_Hi, "I'm not getting involved in this kind of thing.", Info_Mod_Rico_Hi_M);
};

FUNC VOID Info_Mod_Rico_Hi_P()
{
	AI_Output(self, hero, "Info_Mod_Rico_Hi_P_04_00"); //I like you. I like you. Follow me. Follow me.

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDE");
};

FUNC VOID Info_Mod_Rico_Hi_O()
{
	AI_Output(self, hero, "Info_Mod_Rico_Hi_O_04_00"); //Suit yourself.

	Info_ClearChoices	(Info_Mod_Rico_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Rico_Hi_N()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_N_15_00"); //Okay, I'll do it.

	Info_Mod_Rico_Hi_P();
};

FUNC VOID Info_Mod_Rico_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_C_15_00"); //Of course it is.

	Info_Mod_Rico_Hi_J();
};

FUNC VOID Info_Mod_Rico_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_G_15_00"); //What's this about?

	Info_Mod_Rico_Hi_J();
};

FUNC VOID Info_Mod_Rico_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_F_15_00"); //I'd rather not.

	Info_Mod_Rico_Hi_O();
};

FUNC VOID Info_Mod_Rico_Hi_K()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_K_15_00"); //That's a good idea.

	Info_Mod_Rico_Hi_P();
};

FUNC VOID Info_Mod_Rico_Hi_M()
{
	AI_Output(hero, self, "Info_Mod_Rico_Hi_M_15_00"); //I'm not getting involved in this kind of thing.

	Info_Mod_Rico_Hi_O();
};

INSTANCE Info_Mod_Rico_AtDungeon (C_INFO)
{
	npc		= Mod_4017_EIS_Rico_EIS;
	nr		= 1;
	condition	= Info_Mod_Rico_AtDungeon_Condition;
	information	= Info_Mod_Rico_AtDungeon_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rico_AtDungeon_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rico_Hi))
	&& (Npc_GetDistToWP(self, "EIS_132") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rico_AtDungeon_Info()
{
	AI_Output(self, hero, "Info_Mod_Rico_AtDungeon_04_00"); //You idiot, we're going to kill you now.

	Info_ClearChoices	(Info_Mod_Rico_AtDungeon);

	Info_AddChoice	(Info_Mod_Rico_AtDungeon, "Come on, then!", Info_Mod_Rico_AtDungeon_B);
	Info_AddChoice	(Info_Mod_Rico_AtDungeon, "Hey, there's gotta be a peaceful solution.", Info_Mod_Rico_AtDungeon_A);
};

FUNC VOID Info_Mod_Rico_AtDungeon_B()
{
	AI_Output(hero, self, "Info_Mod_Rico_AtDungeon_B_15_00"); //Come on, then!

	AI_TurnToNpc	(self, Mod_4018_EIS_Buck_EIS);

	AI_Output(self, hero, "Info_Mod_Rico_AtDungeon_B_04_01"); //Buck! Come on, let's go!

	Info_ClearChoices	(Info_Mod_Rico_AtDungeon);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_KILL, 0);
	B_Attack	(Mod_4018_EIS_Buck_EIS, hero, AR_KILL, 3);
};

FUNC VOID Info_Mod_Rico_AtDungeon_A()
{
	AI_Output(hero, self, "Info_Mod_Rico_AtDungeon_A_15_00"); //Hey, there's gotta be a peaceful solution.
	AI_Output(self, hero, "Info_Mod_Rico_AtDungeon_A_04_01"); //Then give us all your gold or we'll get it.

	Info_ClearChoices	(Info_Mod_Rico_AtDungeon);

	Info_AddChoice	(Info_Mod_Rico_AtDungeon, "Here's my gold, now let me go.", Info_Mod_Rico_AtDungeon_D);
	Info_AddChoice	(Info_Mod_Rico_AtDungeon, "Is there another solution?", Info_Mod_Rico_AtDungeon_C);
};

FUNC VOID Info_Mod_Rico_AtDungeon_D()
{
	AI_Output(hero, self, "Info_Mod_Rico_AtDungeon_D_15_00"); //Here's my gold, now let me go.

	B_GiveInvItems	(hero, self, ItMi_Gold, Npc_HasItems(hero, ItMi_Gold));

	AI_Output(self, hero, "Info_Mod_Rico_AtDungeon_D_04_01"); //Now get out of here.

	Info_ClearChoices	(Info_Mod_Rico_AtDungeon);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Rico_AtDungeon_C()
{
	AI_Output(hero, self, "Info_Mod_Rico_AtDungeon_C_15_00"); //Is there another solution?
	AI_Output(self, hero, "Info_Mod_Rico_AtDungeon_C_04_01"); //No.

	Info_ClearChoices	(Info_Mod_Rico_AtDungeon);

	Info_AddChoice	(Info_Mod_Rico_AtDungeon, "Here's my gold, now let me go.", Info_Mod_Rico_AtDungeon_D);
};

INSTANCE Info_Mod_Rico_EXIT (C_INFO)
{
	npc		= Mod_4017_EIS_Rico_EIS;
	nr		= 1;
	condition	= Info_Mod_Rico_EXIT_Condition;
	information	= Info_Mod_Rico_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Rico_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rico_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
