INSTANCE Info_Mod_HSBauer_04_Hi (C_INFO)
{
	npc		= Mod_7018_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_04_Hi_Condition;
	information	= Info_Mod_HSBauer_04_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_HSBauer_04_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HSBauer_04_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_05_00"); //HEY! Watch it! Watch out!
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_15_01"); //What's going on?
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_05_02"); //You can't go through here, there's a construction site!
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_15_03"); //Where?
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_05_04"); //FOR GOD' S SAKE, GET THAT KID OUT OF THERE!

	Info_ClearChoices	(Info_Mod_HSBauer_04_Hi);

	Info_AddChoice	(Info_Mod_HSBauer_04_Hi, "Watch out! A scaffold is breaking down behind you!", Info_Mod_HSBauer_04_Hi_C);
	Info_AddChoice	(Info_Mod_HSBauer_04_Hi, "Stay where you are, or I' ll--", Info_Mod_HSBauer_04_Hi_B);
	Info_AddChoice	(Info_Mod_HSBauer_04_Hi, "Oh, fuck off!", Info_Mod_HSBauer_04_Hi_A);
};

FUNC VOID Info_Mod_HSBauer_04_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_C_15_00"); //Watch out! A scaffold is breaking down behind you!
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_C_05_01"); //NEEEIN! I've been working on this scaffolding for six days. 6 TAGE!!!

	Info_ClearChoices	(Info_Mod_HSBauer_04_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_HSBauer_04_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_B_15_00"); //Stay where you are, or I' ll-- Bite his head off!
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_B_05_01"); //Hey, man! It's not your fault! Don't do anything you'll regret later! I love this child like my own!

	Info_ClearChoices	(Info_Mod_HSBauer_04_Hi);

	Info_AddChoice	(Info_Mod_HSBauer_04_Hi, "All right... here you have it.", Info_Mod_HSBauer_04_Hi_E);
	Info_AddChoice	(Info_Mod_HSBauer_04_Hi, "Do you have some mustard?", Info_Mod_HSBauer_04_Hi_D);
};

FUNC VOID Info_Mod_HSBauer_04_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_A_15_00"); //Oh, fuck off!
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_A_05_01"); //Don't tell me I wouldn't have warned you if a squared lumber flies on your head!

	Info_ClearChoices	(Info_Mod_HSBauer_04_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_HSBauer_04_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_E_15_00"); //All right... here you have it.
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_E_05_01"); //Thank you, noble sir. I am indefinitely indebted to you with my motherly love.
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_E_15_02"); //It's okay...

	Info_ClearChoices	(Info_Mod_HSBauer_04_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_HSBauer_04_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_D_15_00"); //Do you have some mustard?
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_D_05_01"); //Yes, here. What for? ... No, you're not going to...
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_D_15_02"); //Meal. (takes an imaginary bite)
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_D_05_03"); //NEEEEEEIN! MEIN BABY... Now you have to make me a new one!
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_D_15_04"); //You can't be serious?
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_D_05_05"); //Don't you find me attractive? Is that it? Oh, you must be having an affair, honey! Think of our son, eh?!
	AI_Output(hero, self, "Info_Mod_HSBauer_04_Hi_D_15_06"); //I ate that....
	AI_Output(self, hero, "Info_Mod_HSBauer_04_Hi_D_05_07"); //Oh, yes... in that case, I'm sorry to bother you, sir... uh... continue.

	Info_ClearChoices	(Info_Mod_HSBauer_04_Hi);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HSBauer_04_Pickpocket (C_INFO)
{
	npc		= Mod_7018_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_04_Pickpocket_Condition;
	information	= Info_Mod_HSBauer_04_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_HSBauer_04_Pickpocket_Condition()
{
	C_Beklauen	(15, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_HSBauer_04_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);

	Info_AddChoice	(Info_Mod_HSBauer_04_Pickpocket, DIALOG_BACK, Info_Mod_HSBauer_04_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HSBauer_04_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HSBauer_04_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HSBauer_04_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);
};

FUNC VOID Info_Mod_HSBauer_04_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);

		Info_AddChoice	(Info_Mod_HSBauer_04_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HSBauer_04_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HSBauer_04_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HSBauer_04_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HSBauer_04_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HSBauer_04_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HSBauer_04_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HSBauer_04_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HSBauer_04_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HSBauer_04_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HSBauer_04_EXIT (C_INFO)
{
	npc		= Mod_7018_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_04_EXIT_Condition;
	information	= Info_Mod_HSBauer_04_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HSBauer_04_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HSBauer_04_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
