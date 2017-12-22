INSTANCE Info_Mod_Hecta_Hi (C_INFO)
{
	npc		= Mod_1972_GRD_Hecta_MT;
	nr		= 1;
	condition	= Info_Mod_Hecta_Hi_Condition;
	information	= Info_Mod_Hecta_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hecta_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hecta_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hecta_Hi_03_00"); //Well, look who's here.
	AI_Output(hero, self, "Info_Mod_Hecta_Hi_15_01"); //l--
	AI_Output(self, hero, "Info_Mod_Hecta_Hi_03_02"); //Oh, never mind. You just got out of the New Camp, huh?

	Info_ClearChoices	(Info_Mod_Hecta_Hi);

	Info_AddChoice	(Info_Mod_Hecta_Hi, "Well... no, not really.", Info_Mod_Hecta_Hi_B);
	Info_AddChoice	(Info_Mod_Hecta_Hi, "That's right.", Info_Mod_Hecta_Hi_A);
};

FUNC VOID Info_Mod_Hecta_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Hecta_Hi_B_15_00"); //Well... no, not really.
	AI_Output(self, hero, "Info_Mod_Hecta_Hi_B_03_01"); //In the name of Old Camp, give me all your gold and valuables.
	AI_Output(hero, self, "Info_Mod_Hecta_Hi_B_15_02"); //You'd like that, wouldn't you?
	AI_Output(self, hero, "Info_Mod_Hecta_Hi_B_03_03"); //There's your chance.

	Info_ClearChoices	(Info_Mod_Hecta_Hi);
};

FUNC VOID Info_Mod_Hecta_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Hecta_Hi_A_15_00"); //That's right.
	AI_Output(self, hero, "Info_Mod_Hecta_Hi_A_03_01"); //Then I'm really sorry for you. Now die.

	Info_ClearChoices	(Info_Mod_Hecta_Hi);
};

INSTANCE Info_Mod_Hecta_EXIT (C_INFO)
{
	npc		= Mod_1972_GRD_Hecta_MT;
	nr		= 1;
	condition	= Info_Mod_Hecta_EXIT_Condition;
	information	= Info_Mod_Hecta_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hecta_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hecta_EXIT_Info()
{
	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
	B_Attack	(Mod_1973_GRD_Achil_MT, hero, AR_Kill, 0);
};
