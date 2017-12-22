INSTANCE Info_Mod_Froppi_Hi (C_INFO)
{
	npc		= Mod_7703_OUT_Froppi_REL;
	nr		= 1;
	condition	= Info_Mod_Froppi_Hi_Condition;
	information	= Info_Mod_Froppi_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Froppi_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Froppi_Hi))
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_KASERN_05_01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Froppi_Hi_Info()
{
	var c_npc Froppi; Froppi = Hlp_GetNpc(Mod_7703_OUT_Froppi_REL);
	var c_npc Ork; Ork = Hlp_GetNpc(Mod_10042_Orc_Ork_REL);

	TRIA_Invite(Ork);
	TRIA_Start();

	TRIA_Next(Froppi);

	AI_TurnToNpc	(Ork, hero);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_00"); //Well, look who's here.

	TRIA_Next(Ork);

	AI_TurnToNpc	(Ork, Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_18_01"); //I don't know, boss. Maybe the supremo?

	TRIA_Next(Froppi);

	AI_TurnToNpc	(Froppi, Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_02"); //No, it's thicker. That's someone who wants to toss honest treasure hunters into work.

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_18_03"); //And what do we do with him?

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_04"); //Guess what?

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_18_05"); //Ahhhhhh, I see. We'll put him on ice.

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_06"); //It's cold, you understand?

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_18_07"); //Mother always said to cool it.

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_08"); //She didn't talk about killing, either!

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_18_09"); //You're right as usual, of course, boss. What are we gonna do again?

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_10"); //We'll cross-examine the troublemaker.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_11"); //If he gives us any reason not to like him, we'll kill him.

	AI_TurnToNpc	(Froppi, hero);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_09_12"); //You hear that, hero?
	AI_Output(hero, self, "Info_Mod_Froppi_Hi_15_13"); //Yeah.

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_18_14"); //Do you like cheesecake?

	TRIA_Finish();

	Info_ClearChoices	(Info_Mod_Froppi_Hi);

	Info_AddChoice	(Info_Mod_Froppi_Hi, "No.", Info_Mod_Froppi_Hi_B);
	Info_AddChoice	(Info_Mod_Froppi_Hi, "Yeah.", Info_Mod_Froppi_Hi_A);
};

FUNC VOID Info_Mod_Froppi_Hi_B()
{
	var c_npc Froppi; Froppi = Hlp_GetNpc(Mod_7703_OUT_Froppi_REL);
	var c_npc Ork; Ork = Hlp_GetNpc(Mod_10042_Orc_Ork_REL);

	TRIA_Invite(Ork);
	TRIA_Start();

	TRIA_Next(Ork);

	AI_TurnToNpc	(Ork, hero);
	AI_TurnToNpc	(Froppi, hero);

	AI_Output(hero, self, "Info_Mod_Froppi_Hi_B_15_00"); //No.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_01"); //Me neither. Nobody likes cheesecake.

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_09_02"); //What kind of stupid question was that?!
	AI_Output(hero, self, "Info_Mod_Froppi_Hi_B_15_03"); //Can I say something?
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_09_04"); //No way, I'm the spokesman here.

	TRIA_Next(Ork);

	AI_TurnToNpc	(Ork, Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_05"); //And I.

	TRIA_Next(Froppi);

	AI_TurnToNpc	(Froppi, Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_09_06"); //No, you're just the leader of the fools.

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_07"); //Yes, boss.
	AI_Output(hero, self, "Info_Mod_Froppi_Hi_B_15_08"); //Why do you put up with the attitude of this pompous little dwarf?
	AI_Output(hero, self, "Info_Mod_Froppi_Hi_B_15_09"); //Wouldn't you rather beat him up?

	AI_TurnToNpc	(Ork, hero);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_10"); //That's right, but he's my father.

	TRIA_Next(Froppi);

	AI_TurnToNpc	(Froppi, Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_09_11"); //Enough babbling. Now you listen to me again!

	TRIA_Next(Ork);

	AI_TurnToNpc	(Ork, Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_12"); //No, boss, that's really enough.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_13"); //I think this person is nice and I can talk to her.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_14"); //Why don't you go find your stupid treasures by yourself?

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_09_15"); //What?! You're getting rebellious? That's a good one!

	TRIA_Next(Ork);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_16"); //I don't think you'd dare do that.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_17"); //You just need me as a bodyguard because you're too weak yourself.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_18_18"); //You thought I didn't notice, huh?

	TRIA_Next(Froppi);

	AI_Output(self, hero, "Info_Mod_Froppi_Hi_B_09_19"); //You naughty boy! You just wait!

	Froppi.guild = GIL_STRF;
	Npc_SetTrueGuild (Froppi, GIL_STRF);

	TRIA_Finish();

	Info_ClearChoices	(Info_Mod_Froppi_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Froppi_Hi_A()
{
	var c_npc Froppi; Froppi = Hlp_GetNpc(Mod_7703_OUT_Froppi_REL);
	var c_npc Ork; Ork = Hlp_GetNpc(Mod_10042_Orc_Ork_REL);

	TRIA_Invite(Ork);
	TRIA_Start();

	TRIA_Next(Froppi);

	AI_TurnToNpc	(Froppi, hero);

	AI_Output(hero, self, "Info_Mod_Froppi_Hi_A_15_00"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_A_09_01"); //What kind of stupid question was that? Who likes cheesecake?
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_A_09_02"); //I'd kill that guy!
	AI_Output(self, hero, "Info_Mod_Froppi_Hi_A_09_03"); //Shit, yeah!

	TRIA_Finish();

	Info_ClearChoices	(Info_Mod_Froppi_Hi);

	AI_StopProcessInfos	(self);

	B_SetAttitude (Froppi, ATT_HOSTILE);
	B_SetAttitude (Ork, ATT_HOSTILE);
};

INSTANCE Info_Mod_Froppi_Pickpocket (C_INFO)
{
	npc		= Mod_7703_OUT_Froppi_REL;
	nr		= 1;
	condition	= Info_Mod_Froppi_Pickpocket_Condition;
	information	= Info_Mod_Froppi_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Froppi_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 22);
};

FUNC VOID Info_Mod_Froppi_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);

	Info_AddChoice	(Info_Mod_Froppi_Pickpocket, DIALOG_BACK, Info_Mod_Froppi_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Froppi_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Froppi_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Froppi_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);
};

FUNC VOID Info_Mod_Froppi_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);

		Info_AddChoice	(Info_Mod_Froppi_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Froppi_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Froppi_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Froppi_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Froppi_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Froppi_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Froppi_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Froppi_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Froppi_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Froppi_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Froppi_EXIT (C_INFO)
{
	npc		= Mod_7703_OUT_Froppi_REL;
	nr		= 1;
	condition	= Info_Mod_Froppi_EXIT_Condition;
	information	= Info_Mod_Froppi_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Froppi_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Froppi_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
