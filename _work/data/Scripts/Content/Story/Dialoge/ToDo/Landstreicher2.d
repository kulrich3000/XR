var int Mod_LandstreicherAttack;

INSTANCE Info_Mod_Landstreicher2_Hi (C_INFO)
{
	npc		= Mod_7745_BDT_Landstreicher_NW;
	nr		= 1;
	condition	= Info_Mod_Landstreicher2_Hi_Condition;
	information	= Info_Mod_Landstreicher2_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Landstreicher2_Hi_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	&& (!Mod_LandstreicherAttack)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Landstreicher2_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Landstreicher2_Hi_07_00"); //Hey, you. Better let 100 coins grow over if you don't want them on your mouth.

	Info_ClearChoices	(Info_Mod_Landstreicher2_Hi);

	Info_AddChoice	(Info_Mod_Landstreicher2_Hi, "Forget it, I'm not giving you a dime.", Info_Mod_Landstreicher2_Hi_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Landstreicher2_Hi, "I don't want any trouble. Here's 100 coins.", Info_Mod_Landstreicher2_Hi_A);
	};
};

FUNC VOID Info_Mod_Landstreicher2_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Landstreicher2_Hi_B_15_00"); //Forget it, I'm not giving you a dime.
	AI_Output(self, hero, "Info_Mod_Landstreicher2_Hi_B_07_01"); //Then I'll have to beat the gold out of you.

	Info_ClearChoices	(Info_Mod_Landstreicher2_Hi);
	
	Mod_LandstreicherAttack = TRUE;

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);
};

FUNC VOID Info_Mod_Landstreicher2_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Landstreicher2_Hi_A_15_00"); //I don't want any trouble. Here's 100 coins.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	AI_Output(self, hero, "Info_Mod_Landstreicher2_Hi_A_07_01"); //Exactly. You know what's good for you.

	Info_ClearChoices	(Info_Mod_Landstreicher2_Hi);

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk	(self, 240);
};

INSTANCE Info_Mod_Landstreicher2_EXIT (C_INFO)
{
	npc		= Mod_7745_BDT_Landstreicher_NW;
	nr		= 1;
	condition	= Info_Mod_Landstreicher2_EXIT_Condition;
	information	= Info_Mod_Landstreicher2_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Landstreicher2_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Landstreicher2_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
