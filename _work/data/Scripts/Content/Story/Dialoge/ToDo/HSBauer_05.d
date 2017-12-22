INSTANCE Info_Mod_HSBauer_05_Hi (C_INFO)
{
	npc		= Mod_7019_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_05_Hi_Condition;
	information	= Info_Mod_HSBauer_05_Hi_Info;
	permanent	= 1;
	important	= 0;
	description	= "What is this neighborhood?";
};

FUNC INT Info_Mod_HSBauer_05_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HSBauer_05_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_15_00"); //What is this neighborhood?
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_05_01"); //Maaan... you see it all too tight, m' kay?
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_15_02"); //...?
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_05_03"); //You know, I was like you once, m' kay?
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_05_04"); //I thought we were all just an individual in this world... but the truth is, we're all huge individuals, m' kay?
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_05_05"); //Do you understand the message I'm trying to get across to you?

	Info_ClearChoices	(Info_Mod_HSBauer_05_Hi);

	Info_AddChoice	(Info_Mod_HSBauer_05_Hi, "But if we are all a huge individual, what do you measure this greatness by?", Info_Mod_HSBauer_05_Hi_C);
	Info_AddChoice	(Info_Mod_HSBauer_05_Hi, "Yes... is clear.", Info_Mod_HSBauer_05_Hi_B);
	Info_AddChoice	(Info_Mod_HSBauer_05_Hi, "It's that late?", Info_Mod_HSBauer_05_Hi_A);
};

FUNC VOID Info_Mod_HSBauer_05_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_00"); //But if we are all a huge individual, what do you measure this greatness by?
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_01"); //You need a yardstick to call something big, and we can't all be big individuals because we are the yardstick for ourselves.
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_02"); //So "huge" has to be relative to the average, which means that most of them are average individuals and there are a few big and some small ones.
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_C_05_03"); //But... uh... we're all a huge individual, you know?
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_04"); //Well, you can't say individual because we can't look at our entire world from the perspective of individualism.
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_05"); //Apart from man's inner urge to seek protection and security in a group, it is also in our nature to form packs of animals.
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_06"); //Ultimately, you too are in such a pack, and in a "pack" it is not about the individual but about the well-being of the whole.
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_C_05_07"); //I have to think about that now, my friend.... m' kay?

	Info_ClearChoices	(Info_Mod_HSBauer_05_Hi);
};

FUNC VOID Info_Mod_HSBauer_05_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_B_15_00"); //Yes... is clear.
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_B_05_01"); //Fine, my friend. You got the message, m' kay?
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_B_15_02"); //M' kay!
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_B_05_03"); //M' kay...

	Info_ClearChoices	(Info_Mod_HSBauer_05_Hi);
};

FUNC VOID Info_Mod_HSBauer_05_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_A_15_00"); //It's that late?

	Info_ClearChoices	(Info_Mod_HSBauer_05_Hi);
};

INSTANCE Info_Mod_HSBauer_05_Pickpocket (C_INFO)
{
	npc		= Mod_7019_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_05_Pickpocket_Condition;
	information	= Info_Mod_HSBauer_05_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_HSBauer_05_Pickpocket_Condition()
{
	C_Beklauen	(15, ItMi_Gold, 13);
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);

	Info_AddChoice	(Info_Mod_HSBauer_05_Pickpocket, DIALOG_BACK, Info_Mod_HSBauer_05_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HSBauer_05_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HSBauer_05_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);

		Info_AddChoice	(Info_Mod_HSBauer_05_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HSBauer_05_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HSBauer_05_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HSBauer_05_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HSBauer_05_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HSBauer_05_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HSBauer_05_EXIT (C_INFO)
{
	npc		= Mod_7019_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_05_EXIT_Condition;
	information	= Info_Mod_HSBauer_05_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HSBauer_05_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HSBauer_05_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
