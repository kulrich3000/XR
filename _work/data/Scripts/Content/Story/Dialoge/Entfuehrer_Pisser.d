INSTANCE Info_Mod_Entfuehrer_Pisser_Hi (C_INFO)
{
	npc		= Mod_7030_OUT_Entfuehrer_NW;
	nr		= 1;
	condition	= Info_Mod_Entfuehrer_Pisser_Hi_Condition;
	information	= Info_Mod_Entfuehrer_Pisser_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Entfuehrer_Pisser_Hi_Condition()
{
	if (Npc_GetDistToWP(self, "WP_PINKELPAUSE") < 400)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Entfuehrer_Pisser_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Entfuehrer_Pisser_Hi_05_00"); //Stop! What do you want from me?

	Info_ClearChoices	(Info_Mod_Entfuehrer_Pisser_Hi);

	Info_AddChoice	(Info_Mod_Entfuehrer_Pisser_Hi, "I was just trying to kill you.", Info_Mod_Entfuehrer_Pisser_Hi_B);
	Info_AddChoice	(Info_Mod_Entfuehrer_Pisser_Hi, "I was wondering if you could help me pick flowers.", Info_Mod_Entfuehrer_Pisser_Hi_A);
};

FUNC VOID Info_Mod_Entfuehrer_Pisser_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Entfuehrer_Pisser_Hi_C_05_00"); //You're the one we're looking for. I could call out loud and attack you now. You wouldn't have a chance.
	AI_Output(hero, self, "Info_Mod_Entfuehrer_Pisser_Hi_C_15_01"); //And why don't you do it?
	AI_Output(self, hero, "Info_Mod_Entfuehrer_Pisser_Hi_C_05_02"); //I have three children to feed, and with a sword in my chest it is hard to make money.
	AI_Output(self, hero, "Info_Mod_Entfuehrer_Pisser_Hi_C_05_03"); //I suggest you let me go, and I won't call for help.

	Info_ClearChoices	(Info_Mod_Entfuehrer_Pisser_Hi);

	Info_AddChoice	(Info_Mod_Entfuehrer_Pisser_Hi, "No, I can't let you live.", Info_Mod_Entfuehrer_Pisser_Hi_E);
	Info_AddChoice	(Info_Mod_Entfuehrer_Pisser_Hi, "Agreed. Get out of here!", Info_Mod_Entfuehrer_Pisser_Hi_D);
};

FUNC VOID Info_Mod_Entfuehrer_Pisser_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Entfuehrer_Pisser_Hi_B_15_00"); //I was just trying to kill you.

	Info_Mod_Entfuehrer_Pisser_Hi_C();
};

FUNC VOID Info_Mod_Entfuehrer_Pisser_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Entfuehrer_Pisser_Hi_A_15_00"); //I was wondering if you could help me pick flowers.
	AI_Output(self, hero, "Info_Mod_Entfuehrer_Pisser_Hi_A_05_01"); //(untouched) Ha-ha. (pause)

	Info_Mod_Entfuehrer_Pisser_Hi_C();
};

FUNC VOID Info_Mod_Entfuehrer_Pisser_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Entfuehrer_Pisser_Hi_E_15_00"); //No, I can't let you live.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Entfuehrer_Pisser_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Entfuehrer_Pisser_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Entfuehrer_Pisser_Hi_D_15_00"); //Agreed. Get out of here!
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Entfuehrer_Pisser_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");

	B_GivePlayerXP	(100);

	Mod_ValentineKill03 = 2;
};
