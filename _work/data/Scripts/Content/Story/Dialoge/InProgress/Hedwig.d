INSTANCE Info_Mod_Hedwig_Hi (C_INFO)
{
	npc		= Mod_7723_OUT_Hedwig_REL;
	nr		= 1;
	condition	= Info_Mod_Hedwig_Hi_Condition;
	information	= Info_Mod_Hedwig_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hedwig_Hi_Condition()
{
	if (Mod_Kneipe_Ditmar == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hedwig_Hi_Info()
{
	var c_npc Hedwig; Hedwig = Hlp_GetNpc(Mod_7723_OUT_Hedwig_REL);
	var c_npc Berta; Berta = Hlp_GetNpc(Mod_7724_OUT_Berta_REL);
	var c_npc Irmgard; Irmgard = Hlp_GetNpc(Mod_7725_OUT_Irmgard_REL);
	var c_npc Salmey; Salmey = Hlp_GetNpc(Mod_7726_OUT_Salmey_REL);

	TRIA_Invite(Berta);
	TRIA_Invite(Irmgard);
	TRIA_Invite(Salmey);

	TRIA_Start();

	AI_TurnToNpc	(Hedwig, hero);
	AI_TurnToNpc	(Berta, hero);
	AI_TurnToNpc	(Irmgard, hero);

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_21_00"); //Raise your cups! Uh, up the hats!

	CreateInvItems	(self, ItFo_Beer, 10);

	B_UseItem	(self, ItFo_Beer);

	TRIA_Next(Irmgard);

	CreateInvItems	(self, ItFo_Beer, 10);

	B_UseItem	(self, ItFo_Beer);

	TRIA_Next(Berta);

	CreateInvItems	(self, ItFo_Beer, 10);

	B_UseItem	(self, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_16_01"); //(hicky)

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_02"); //Don't you think we've had enough to drink?
	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_03"); //Poor Berta can hardly walk straight ahead.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_21_04"); //That's the point! That's the whole point!

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_05"); //Well, I don't know.

	TRIA_Next(Berta);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_16_01"); //(hicky)

	TRIA_Next(Hedwig);

	AI_TurnToNpc	(Hedwig, Salmey);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_21_06"); //Hey, Salmey, bring another round!

	TRIA_Next(Salmey);

	AI_GotoNpc	(self, Hedwig);

	AI_GotoWP	(self, self.wp);

	TRIA_Next(Irmgard);

	B_UseItem	(self, ItFo_Beer);

	TRIA_Next(Berta);

	B_UseItem	(self, ItFo_Beer);

	TRIA_Next(Hedwig);

	B_UseItem	(self, ItFo_Beer);

	AI_Output(hero, self, "Info_Mod_Hedwig_Hi_15_07"); //May I ask what kind of meeting this is?
	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_21_08"); //Of course it is. We get drunk until we're almost unconscious, stagger home loudly and throw up in front of the bed.

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_09"); //I'm not gonna throw up in the house!

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_21_10"); //Oh, yes, you will. You don't give a damn at that moment.

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_11"); //Well, I don't know.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_21_12"); //You don't have to wipe it off.
	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_21_13"); //You're not gonna wipe it off, all right? And you too, Berta?

	TRIA_Next(Berta);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_16_01"); //(hicky)

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_14"); //But who then?

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_21_15"); //We've talked about this a thousand times! Your husband's gonna clean up the mess this time!

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_16"); //Well, I don't know.
	AI_Output(hero, self, "Info_Mod_Hedwig_Hi_15_17"); //Can't you solve the problems with your men any other way?

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_21_18"); //We've decided on this solution.

	TRIA_Next(Irmgard);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_26_19"); //Actually, that's what you decided.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_21_20"); //(poisonous) So what? Did you protest?

	TRIA_Next(Berta);

	AI_Output(self, hero, "Info_Mod_Hedwig_Hi_16_21"); //It's funny here. Who's having another drink?

	TRIA_Finish();

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_DITMAR_DICKELUFT, "The three of them are really persistent. Wherein... Hedwig seems to be the mastermind and convinced that her path to success leads her. There's not much left to do with Berta. But Irmgard seems to be getting tired of it.");
};

INSTANCE Info_Mod_Hedwig_Kneipe (C_INFO)
{
	npc		= Mod_7723_OUT_Hedwig_REL;
	nr		= 1;
	condition	= Info_Mod_Hedwig_Kneipe_Condition;
	information	= Info_Mod_Hedwig_Kneipe_Info;
	permanent	= 0;
	important	= 0;
	description	= "How long are you going to stay?";
};

FUNC INT Info_Mod_Hedwig_Kneipe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hedwig_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hedwig_Kneipe_Info()
{
	AI_Output(hero, self, "Info_Mod_Hedwig_Kneipe_15_00"); //How long are you going to stay?
	AI_Output(self, hero, "Info_Mod_Hedwig_Kneipe_21_01"); //Nice try, but you can tell Ditmar we're holding the fort.
	AI_Output(self, hero, "Info_Mod_Hedwig_Kneipe_21_02"); //As long as certain masters of creation do not gain insight, our mission is not finished.
};

INSTANCE Info_Mod_Hedwig_Kneipe2 (C_INFO)
{
	npc		= Mod_7723_OUT_Hedwig_REL;
	nr		= 1;
	condition	= Info_Mod_Hedwig_Kneipe2_Condition;
	information	= Info_Mod_Hedwig_Kneipe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who's your husband, anyway?";
};

FUNC INT Info_Mod_Hedwig_Kneipe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hedwig_Kneipe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hedwig_Kneipe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Hedwig_Kneipe2_15_00"); //Who's your husband, anyway?
	AI_Output(self, hero, "Info_Mod_Hedwig_Kneipe2_21_01"); //Well, you're a joke to me! You don't know the keeper's wife!
	AI_Output(hero, self, "Info_Mod_Hedwig_Kneipe2_15_02"); //Oh. But why did Anselm ask you... why did you ask Anselm.... (thought) Although...
};

INSTANCE Info_Mod_Hedwig_Kneipe3 (C_INFO)
{
	npc		= Mod_7723_OUT_Hedwig_REL;
	nr		= 1;
	condition	= Info_Mod_Hedwig_Kneipe3_Condition;
	information	= Info_Mod_Hedwig_Kneipe3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why don't you just talk to Anselm?";
};

FUNC INT Info_Mod_Hedwig_Kneipe3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hedwig_Kneipe2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hedwig_Kneipe3_Info()
{
	AI_Output(hero, self, "Info_Mod_Hedwig_Kneipe3_15_00"); //Why don't you just talk to Anselm?
	AI_Output(self, hero, "Info_Mod_Hedwig_Kneipe3_21_01"); //It's useless. I want him to feel for himself, what it's like not to be mothered all day long.
};

INSTANCE Info_Mod_Hedwig_Pickpocket (C_INFO)
{
	npc		= Mod_7723_OUT_Hedwig_REL;
	nr		= 1;
	condition	= Info_Mod_Hedwig_Pickpocket_Condition;
	information	= Info_Mod_Hedwig_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Hedwig_Pickpocket_Condition()
{
	C_Beklauen	(52, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Hedwig_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);

	Info_AddChoice	(Info_Mod_Hedwig_Pickpocket, DIALOG_BACK, Info_Mod_Hedwig_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hedwig_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hedwig_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hedwig_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);
};

FUNC VOID Info_Mod_Hedwig_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);

		Info_AddChoice	(Info_Mod_Hedwig_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hedwig_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hedwig_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hedwig_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hedwig_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hedwig_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hedwig_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hedwig_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hedwig_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hedwig_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hedwig_EXIT (C_INFO)
{
	npc		= Mod_7723_OUT_Hedwig_REL;
	nr		= 1;
	condition	= Info_Mod_Hedwig_EXIT_Condition;
	information	= Info_Mod_Hedwig_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hedwig_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hedwig_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Hedwig_EXIT_21_00"); //I'll see you.... hopefully.

	AI_StopProcessInfos	(self);
};
