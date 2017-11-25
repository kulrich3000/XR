INSTANCE Info_Mod_Soeren_Hi (C_INFO)
{
	npc		= Mod_7038_VMK_Soeren_TUG;
	nr		= 1;
	condition	= Info_Mod_Soeren_Hi_Condition;
	information	= Info_Mod_Soeren_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Soeren_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Faice))
	&& (Mod_VMG_FaiceGifty_Gift == 4)
	&& (!Npc_IsInState(Mod_1959_VMG_Genn_TUG, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Soeren_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Soeren_Hi_08_00"); //I've heard of you. But it would be incredibly friendly if we could both continue to talk in peace.
	AI_Output(hero, self, "Info_Mod_Soeren_Hi_15_01"); //I just want to talk to Genn for a minute, then I'll be gone.
	AI_Output(self, hero, "Info_Mod_Soeren_Hi_08_02"); //All right, all right.

	Mod_VMG_FaiceGifty_Gift = 5;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Soeren_Mendulus (C_INFO)
{
	npc		= Mod_7038_VMK_Soeren_TUG;
	nr		= 1;
	condition	= Info_Mod_Soeren_Mendulus_Condition;
	information	= Info_Mod_Soeren_Mendulus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Soeren_Mendulus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Mendulus))
	&& (Mod_VMG_FaiceGifty_Gift == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Soeren_Mendulus_Info()
{
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_08_00"); //So you need a rare medicinal plant, have I noticed?

	Info_ClearChoices	(Info_Mod_Soeren_Mendulus);

	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "You're wrong about that.", Info_Mod_Soeren_Mendulus_B);
	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "What if it were?", Info_Mod_Soeren_Mendulus_A);
};

FUNC VOID Info_Mod_Soeren_Mendulus_E()
{
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_E_08_00"); //Then I would ask you now to give it to me so that bloodshed is avoided.

	Info_ClearChoices	(Info_Mod_Soeren_Mendulus);

	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "What if I didn't give it to you?", Info_Mod_Soeren_Mendulus_I);
	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "You don't want to help with reconstruction.", Info_Mod_Soeren_Mendulus_H);
};

FUNC VOID Info_Mod_Soeren_Mendulus_J()
{
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_J_08_00"); //If I told you that, I'd have to kill you afterwards.
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_J_15_01"); //Give it a shot.

	Info_ClearChoices	(Info_Mod_Soeren_Mendulus);

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Apparently, Sören is not the helpful man he represents. He was trying to take my plants.");

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Soeren_Mendulus_B()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_B_15_00"); //You're wrong about that.
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_B_08_01"); //Don't fuck with me!

	Info_ClearChoices	(Info_Mod_Soeren_Mendulus);

	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "Okay, I have the plant, and now?", Info_Mod_Soeren_Mendulus_D);
	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "I would never do that.", Info_Mod_Soeren_Mendulus_C);
};

FUNC VOID Info_Mod_Soeren_Mendulus_A()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_A_15_00"); //What if it were?
	
	Info_Mod_Soeren_Mendulus_E();
};

FUNC VOID Info_Mod_Soeren_Mendulus_D()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_D_15_00"); //Okay, I have the plant, and now?
	
	Info_Mod_Soeren_Mendulus_E();
};

FUNC VOID Info_Mod_Soeren_Mendulus_C()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_C_15_00"); //I would never do that.
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_C_08_01"); //Are you gonna go for it?

	Info_ClearChoices	(Info_Mod_Soeren_Mendulus);

	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "We can work something else out.", Info_Mod_Soeren_Mendulus_G);
	Info_AddChoice	(Info_Mod_Soeren_Mendulus, "Come over here.", Info_Mod_Soeren_Mendulus_F);
};

FUNC VOID Info_Mod_Soeren_Mendulus_G()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_G_15_00"); //We can work something else out.
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_G_08_01"); //Then give me the plant, I know you brought it.
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_I_15_02"); //Then tell me what you're doing with it.
	
	Info_Mod_Soeren_Mendulus_J();
};

FUNC VOID Info_Mod_Soeren_Mendulus_F()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_F_15_00"); //Come over here.
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_F_08_01"); //Suit yourself.

	Info_ClearChoices	(Info_Mod_Soeren_Mendulus);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Soeren_Mendulus_I()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_I_15_00"); //What if I didn't give it to you?
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_I_08_01"); //Then I'd have to knock myself out, but I'd hate to do that.
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_I_15_02"); //Then tell me what you're doing with it.
	
	Info_Mod_Soeren_Mendulus_J();
};

FUNC VOID Info_Mod_Soeren_Mendulus_H()
{
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_H_15_00"); //You don't want to help with reconstruction.
	AI_Output(self, hero, "Info_Mod_Soeren_Mendulus_H_08_01"); //You're a smart guy. Of course I don't want to help.
	AI_Output(hero, self, "Info_Mod_Soeren_Mendulus_H_15_02"); //Then what do you want?
	
	Info_Mod_Soeren_Mendulus_J();
};

INSTANCE Info_Mod_Soeren_EXIT (C_INFO)
{
	npc		= Mod_7038_VMK_Soeren_TUG;
	nr		= 1;
	condition	= Info_Mod_Soeren_EXIT_Condition;
	information	= Info_Mod_Soeren_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Soeren_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Soeren_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
