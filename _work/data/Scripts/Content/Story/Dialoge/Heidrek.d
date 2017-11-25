INSTANCE Info_Mod_Heidrek_Hi (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_Hi_Condition;
	information	= Info_Mod_Heidrek_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Looks like you got a lot of work to do.";
};

FUNC INT Info_Mod_Heidrek_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Heidrek_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Heidrek_Hi_15_00"); //Looks like you got a lot of work to do.
	AI_Output(self, hero, "Info_Mod_Heidrek_Hi_04_01"); //There is no shortage of work here in the camp. But that's also because no one is doing anything except me and Bernd.
	AI_Output(hero, self, "Info_Mod_Heidrek_Hi_15_02"); //And what do you think is the reason for that?
	AI_Output(self, hero, "Info_Mod_Heidrek_Hi_04_03"); //Refurbishing a mine isn't a Sunday night job. If we want to mine ore here, we must do something about it.
	AI_Output(self, hero, "Info_Mod_Heidrek_Hi_04_04"); //But they're all scared of the monsters in the mine.
	AI_Output(hero, self, "Info_Mod_Heidrek_Hi_15_05"); //Don't you?
	AI_Output(self, hero, "Info_Mod_Heidrek_Hi_04_06"); //No, why should they let themselves be killed just like any other monster.
	AI_Output(hero, self, "Info_Mod_Heidrek_Hi_15_07"); //Then why don't you go to the mine?!
	AI_Output(self, hero, "Info_Mod_Heidrek_Hi_04_08"); //In contrast to most of you here, I have another argument besides muscular strength: I can forge!
	AI_Output(self, hero, "Info_Mod_Heidrek_Hi_04_09"); //If I were to die in the mine, it would be too much of a loss for the camp, and I cannot answer for that.
	AI_Output(hero, self, "Info_Mod_Heidrek_Hi_15_10"); //(ironic) Ah, I understand...
};

INSTANCE Info_Mod_Heidrek_InGilde (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_InGilde_Condition;
	information	= Info_Mod_Heidrek_InGilde_Info;
	permanent	= 0;
	important	= 0;
	description	= "Could you teach me the art of blacksmithing?";
};

FUNC INT Info_Mod_Heidrek_InGilde_Condition()
{
	if (KG_Dabei == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Heidrek_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heidrek_InGilde_Info()
{
	AI_Output(hero, self, "Info_Mod_Heidrek_InGilde_15_00"); //Could you teach me the art of blacksmithing?
	AI_Output(self, hero, "Info_Mod_Heidrek_InGilde_04_01"); //I should have known, another one too lazy to take care of the mine.
	AI_Output(self, hero, "Info_Mod_Heidrek_InGilde_04_02"); //These are not prerequisites under which I would take you. You wouldn't use your knowledge anyway, so leave me alone.
	AI_Output(hero, self, "Info_Mod_Heidrek_InGilde_15_03"); //What's it got to do with the...? Oh, forget it.
};

INSTANCE Info_Mod_Heidrek_Trollholz (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_Trollholz_Condition;
	information	= Info_Mod_Heidrek_Trollholz_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a piece of trollwood here.";
};

FUNC INT Info_Mod_Heidrek_Trollholz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_Trollholz))
	&& (Npc_HasItems(hero, ItMi_Trollholz) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heidrek_Trollholz_Info()
{
	AI_Output(hero, self, "Info_Mod_Heidrek_Trollholz_15_00"); //I have a piece of trollwood here. I want you to make a club out of it for Granmar.

	B_GiveInvItems	(hero, self, ItMi_Trollholz, 1);

	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz_04_01"); //All right, but I need at least two more lumps of ore.
	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz_04_02"); //Ask Cathran, he should have some more, maybe he'll give it to you.

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "Heidrek needs two more chunks of ore for the club. I should check with Cathran....");
};

INSTANCE Info_Mod_Heidrek_Trollholz2 (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_Trollholz2_Condition;
	information	= Info_Mod_Heidrek_Trollholz2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the two ore chunks.";
};

FUNC INT Info_Mod_Heidrek_Trollholz2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heidrek_Trollholz))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heidrek_Trollholz2_Info()
{
	AI_Output(hero, self, "Info_Mod_Heidrek_Trollholz2_15_00"); //I found the two ore chunks.

	B_GiveInvItems	(hero, self, ItMi_Nugget, 2);

	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz2_04_01"); //Very well, now all I have to do is put this on the club.
	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz2_04_02"); //Come back tomorrow, she should be finished by then.

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "Heidrek now covers the club with ore. She'll be done tomorrow.");

	Mod_KG_Trollholz_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Heidrek_Trollholz3 (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_Trollholz3_Condition;
	information	= Info_Mod_Heidrek_Trollholz3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is the club ready?";
};

FUNC INT Info_Mod_Heidrek_Trollholz3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heidrek_Trollholz2))
	&& (Wld_GetDay() > Mod_KG_Trollholz_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Heidrek_Trollholz3_Info()
{
	AI_Output(hero, self, "Info_Mod_Heidrek_Trollholz3_15_00"); //Is the club ready?
	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz3_04_01"); //Yeah, and I've got to say, this thing sure is coming along real well.

	B_GiveInvItems	(self, hero, ItMw_GranmarKeule, 1);

	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz3_04_02"); //Granmar said you needed one, too.
	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz3_04_03"); //Fortunately, the piece of wood was big enough for two clubs, even if your club was a little smaller.
	AI_Output(self, hero, "Info_Mod_Heidrek_Trollholz3_04_04"); //Here you have them.

	B_GiveInvItems	(self, hero, ItMw_ErzKeule, 1);

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "I got the club of Granmar and even a smaller one for me.");
};

INSTANCE Info_Mod_Heidrek_Pickpocket (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_Pickpocket_Condition;
	information	= Info_Mod_Heidrek_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Heidrek_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Heidrek_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);

	Info_AddChoice	(Info_Mod_Heidrek_Pickpocket, DIALOG_BACK, Info_Mod_Heidrek_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Heidrek_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Heidrek_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Heidrek_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);
};

FUNC VOID Info_Mod_Heidrek_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);

		Info_AddChoice	(Info_Mod_Heidrek_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Heidrek_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Heidrek_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Heidrek_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Heidrek_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Heidrek_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Heidrek_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Heidrek_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Heidrek_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Heidrek_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Heidrek_EXIT (C_INFO)
{
	npc		= Mod_1020_KGD_Heidrek_MT;
	nr		= 1;
	condition	= Info_Mod_Heidrek_EXIT_Condition;
	information	= Info_Mod_Heidrek_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Heidrek_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Heidrek_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
