INSTANCE Info_Mod_Jesse_Hi (C_INFO)
{
	npc		= Mod_1506_BUD_Jesse_MT;
	nr		= 1;
	condition	= Info_Mod_Jesse_Hi_Condition;
	information	= Info_Mod_Jesse_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "How's work, prospector?";
};

FUNC INT Info_Mod_Jesse_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jesse_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesse_Hi_15_00"); //How's work, prospector?
	AI_Output(self, hero, "Info_Mod_Jesse_Hi_36_01"); //Oh, the same job I had to do as a Buddler back then.
	AI_Output(self, hero, "Info_Mod_Jesse_Hi_36_02"); //But after all the filth that the Old Camp used to do, I preferred to go to the New Camp.
	AI_Output(hero, self, "Info_Mod_Jesse_Hi_15_03"); //You mean the robbery of the mine here?
	AI_Output(self, hero, "Info_Mod_Jesse_Hi_36_04"); //Yes, among other things. That's why there are a few places available for prospectors.
	AI_Output(self, hero, "Info_Mod_Jesse_Hi_36_05"); //After the guards had slaughtered all of them, the New Camp desperately looked for workers. It's all right here.
	AI_Output(self, hero, "Info_Mod_Jesse_Hi_36_06"); //And at least there are no madmen here who hunt with a magic sword for anything that works and stands? like that madman in Old Camp back then.
	AI_Output(self, hero, "Info_Mod_Jesse_Hi_36_07"); //Wouldn't want to think back.
};

INSTANCE Info_Mod_Jesse_Costa (C_INFO)
{
	npc		= Mod_1506_BUD_Jesse_MT;
	nr		= 1;
	condition	= Info_Mod_Jesse_Costa_Condition;
	information	= Info_Mod_Jesse_Costa_Info;
	permanent	= 0;
	important	= 0;
	description	= "You got something that belonged to Costa.";
};

FUNC INT Info_Mod_Jesse_Costa_Condition()
{
	if (Mod_Costa_Guertel == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesse_Costa_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesse_Costa_15_00"); //You got something that belonged to Costa.
	AI_Output(self, hero, "Info_Mod_Jesse_Costa_36_01"); //Yeah, I got some of his stuff. You know what he's become? Did the guards catch him?
	AI_Output(hero, self, "Info_Mod_Jesse_Costa_15_02"); //No. He overslept the time.
	AI_Output(self, hero, "Info_Mod_Jesse_Costa_36_03"); //(falling) Oh, no! And we thought something had happened to him! Is he still stuck in the camp?
	AI_Output(hero, self, "Info_Mod_Jesse_Costa_15_04"); //That's how it is.
	AI_Output(self, hero, "Info_Mod_Jesse_Costa_36_05"); //Then I have to save him. I'll leave tonight and get him out of there.
	AI_Output(hero, self, "Info_Mod_Jesse_Costa_15_06"); //Isn't that a bit hasty?
	AI_Output(self, hero, "Info_Mod_Jesse_Costa_36_07"); //Not if he knows and prepares for it. Can you move freely in the camp?

	Info_ClearChoices	(Info_Mod_Jesse_Costa);

	Info_AddChoice	(Info_Mod_Jesse_Costa, "No.", Info_Mod_Jesse_Costa_B);
	Info_AddChoice	(Info_Mod_Jesse_Costa, "Yes.", Info_Mod_Jesse_Costa_A);
};

FUNC VOID Info_Mod_Jesse_Costa_B()
{
	AI_Output(hero, self, "Info_Mod_Jesse_Costa_B_15_00"); //No.
	AI_Output(self, hero, "Info_Mod_Jesse_Costa_B_36_01"); //Too bad. Then that's how I'll try.

	Info_ClearChoices	(Info_Mod_Jesse_Costa);

	Mod_Costa_Guertel = 2;
};

FUNC VOID Info_Mod_Jesse_Costa_A()
{
	AI_Output(hero, self, "Info_Mod_Jesse_Costa_A_15_00"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Jesse_Costa_A_36_01"); //You have to warn Costa today to meet me at our last agreed place at midnight. Absolutely today, you know?

	Info_ClearChoices	(Info_Mod_Jesse_Costa);

	B_LogEntry	(TOPIC_MOD_COSTA_GUERTEL, "I found Jesse. But instead of giving me the belt, he wants to free Costa himself. In order to do this, it is urgently necessary that I inform Costa before midnight so that he can prepare himself for the escape.");

	Mod_Costa_Guertel_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Jesse_Pickpocket (C_INFO)
{
	npc		= Mod_1506_BUD_Jesse_MT;
	nr		= 1;
	condition	= Info_Mod_Jesse_Pickpocket_Condition;
	information	= Info_Mod_Jesse_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Jesse_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Nugget, 2);
};

FUNC VOID Info_Mod_Jesse_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);

	Info_AddChoice	(Info_Mod_Jesse_Pickpocket, DIALOG_BACK, Info_Mod_Jesse_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jesse_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jesse_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jesse_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);
};

FUNC VOID Info_Mod_Jesse_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);

		Info_AddChoice	(Info_Mod_Jesse_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jesse_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jesse_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jesse_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jesse_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jesse_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jesse_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jesse_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jesse_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jesse_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jesse_EXIT (C_INFO)
{
	npc		= Mod_1506_BUD_Jesse_MT;
	nr		= 1;
	condition	= Info_Mod_Jesse_EXIT_Condition;
	information	= Info_Mod_Jesse_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jesse_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jesse_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
