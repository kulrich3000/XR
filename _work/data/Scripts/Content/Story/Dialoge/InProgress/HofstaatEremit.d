INSTANCE Info_Mod_HofstaatEremit_Hi (C_INFO)
{
	npc		= Mod_7286_HS_Eremit_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatEremit_Hi_Condition;
	information	= Info_Mod_HofstaatEremit_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you the hermit?";
};

FUNC INT Info_Mod_HofstaatEremit_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatEremit_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_00"); //Are you the hermit?
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_03_01"); //Depends on it.
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_02"); //On what?
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_03_03"); //Which hermits you mean.
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_04"); //The royal one, of course.
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_03_05"); //Yes, I am him.
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_06"); //The magician sent me.
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_03_07"); //Which one?
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_08"); //The royal one.
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_03_09"); //Oh, well. And what does he want?
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_10"); //He said something about a mushroom delivery.
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_03_11"); //What mushroom loo.... (interrupted)
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_12"); //The royal goddamned one!
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_03_13"); //Oh, well. Then take this royal bag full of royal mushroom spores and bring it to the magician!

	B_GiveInvItems	(self, hero, ItMi_FreudenspenderSporen, 1);

	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_14"); //Which one?
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_03_15"); //The royal, of course!

	B_LogEntry	(TOPIC_MOD_SEKTE_FREUDENSPENDER, "The hermit gave me the fungal spores. I should take her to the magician.");
};

INSTANCE Info_Mod_HofstaatEremit_EXIT (C_INFO)
{
	npc		= Mod_7286_HS_Eremit_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatEremit_EXIT_Condition;
	information	= Info_Mod_HofstaatEremit_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatEremit_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatEremit_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
