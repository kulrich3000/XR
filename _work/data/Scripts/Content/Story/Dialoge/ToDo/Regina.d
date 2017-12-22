INSTANCE Info_Mod_Regina_Hi (C_INFO)
{
	npc		= Mod_7276_OUT_Regina_REL;
	nr		= 1;
	condition	= Info_Mod_Regina_Hi_Condition;
	information	= Info_Mod_Regina_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Regina_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Regina_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Regina_Hi_26_00"); //Regina, a simple housewife.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_26_01"); //I've never seen you before... do you travel a lot?

	Info_ClearChoices	(Info_Mod_Regina_Hi);

	Info_AddChoice	(Info_Mod_Regina_Hi, "No, I just moved in.", Info_Mod_Regina_Hi_B);
	Info_AddChoice	(Info_Mod_Regina_Hi, "You could say that for sure.", Info_Mod_Regina_Hi_A);
};

FUNC VOID Info_Mod_Regina_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_00"); //My boy always wanted to go out into the wide world, so I can tell you something, yeah.
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_01"); //Another time.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_02"); //He said, Mommy, when I grow up, I want to rule over people. Cute, isn't it?
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_03"); //Maybe you know his name?
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_04"); //What's that one there?
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_05"); //His name's Gomez. Haven't seen his mother in a long time, the rascal.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_06"); //I'd like to know where he's been.
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_07"); //Gomez?!
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_08"); //You know him? You can't be serious!
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_09"); //His dream has come true.... if only for a short time.
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_10"); //Then he was overthrown by a stranger.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_11"); //No, isn't it? And I'm still saying, boy, I'm saying, let it be, this domination stuff doesn't lead to a happy ending.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_12"); //I told him! But no, he didn't want to hear about it, he always had to be stubborn.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_13"); //And don't even write me letters, the boy.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_14"); //He didn't clean up his room, nothing, imagine that.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_15"); //When he was a little boy, we used to go down to the lake together and did laundry, so he helped.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_16"); //But not anymore, no, I was always allowed to do everything alone.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_17"); //Almost became like his father, the boy.
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_18"); //Aha...
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_19"); //At some point he took these joyful donors and was always funny in Kopp.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_20"); //He had visions, I'll tell you.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_21"); //I don't know where he got all the ideas from, but don't think I liked them!
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_22"); //His image of a woman, you didn't know it!
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_23"); //I have to go...
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_24"); //... but the altitude was still... What?
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_25"); //Have I been talking too much again?
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_26"); //You're going to check on an old mother, aren't you?
	AI_Output(hero, self, "Info_Mod_Regina_Hi_C_15_27"); //I'll think about it.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_C_26_28"); //Take care, then. Goodbye. Goodbye.

	Info_ClearChoices	(Info_Mod_Regina_Hi);
};

FUNC VOID Info_Mod_Regina_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Regina_Hi_B_15_00"); //No, I just moved in.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_B_26_01"); //Too bad.

	Info_Mod_Regina_Hi_C();
};

FUNC VOID Info_Mod_Regina_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Regina_Hi_A_15_00"); //You could say that for sure.
	AI_Output(self, hero, "Info_Mod_Regina_Hi_A_26_01"); //Oh, how pretty.

	Info_Mod_Regina_Hi_C();
};

INSTANCE Info_Mod_Regina_Freudenspender (C_INFO)
{
	npc		= Mod_7276_OUT_Regina_REL;
	nr		= 1;
	condition	= Info_Mod_Regina_Freudenspender_Condition;
	information	= Info_Mod_Regina_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Do you want to give pleasure?";
};                       

FUNC INT Info_Mod_Regina_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Regina_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Regina_Freudenspender_15_00"); //Do you want to give pleasure?
	AI_Output(self, hero, "Info_Mod_Regina_Freudenspender_26_01"); //Certainly not! This has already clouded my son's mind.
};

INSTANCE Info_Mod_Regina_Pickpocket (C_INFO)
{
	npc		= Mod_7276_OUT_Regina_REL;
	nr		= 1;
	condition	= Info_Mod_Regina_Pickpocket_Condition;
	information	= Info_Mod_Regina_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90_Female;
};

FUNC INT Info_Mod_Regina_Pickpocket_Condition()
{
	C_Beklauen	(76, ItMi_Gold, 29);
};

FUNC VOID Info_Mod_Regina_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Regina_Pickpocket);

	Info_AddChoice	(Info_Mod_Regina_Pickpocket, DIALOG_BACK, Info_Mod_Regina_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Regina_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Regina_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Regina_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Regina_Pickpocket);
};

FUNC VOID Info_Mod_Regina_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Regina_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Regina_Pickpocket);

		Info_AddChoice	(Info_Mod_Regina_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Regina_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Regina_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Regina_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Regina_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Regina_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Regina_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Regina_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Regina_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Regina_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Regina_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Regina_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Regina_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Regina_EXIT (C_INFO)
{
	npc		= Mod_7276_OUT_Regina_REL;
	nr		= 1;
	condition	= Info_Mod_Regina_EXIT_Condition;
	information	= Info_Mod_Regina_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Regina_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Regina_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
