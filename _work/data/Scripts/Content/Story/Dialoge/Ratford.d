INSTANCE Info_Mod_Ratford_Hi (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_Hi_Condition;
	information	= Info_Mod_Ratford_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Waidmannsheil.";
};

FUNC INT Info_Mod_Ratford_Hi_Condition()
{
	if (Npc_GetDistToWP(hero, "OW_PATH_1_5_A") < 1000) {
		return 1;
	};
};

FUNC VOID Info_Mod_Ratford_Hi_Info()
{
	var c_npc Ratford; Ratford = Hlp_GetNpc(Mod_1120_BDT_Ratford_MT);
	var c_npc Drax; Drax = Hlp_GetNpc(Mod_1121_BDT_Drax_MT);

	TRIA_Invite(Ratford);
	TRIA_Invite(Drax);
	TRIA_Start();

	TRIA_Next(Ratford);

	AI_Output(hero, self, "Info_Mod_Ratford_Hi_15_00"); //Waidmannsheil.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_36_01"); //Don't look so innocent to me. What do you want?
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_15_02"); //I'm just passing by.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_36_03"); //Coincidentally, no one passes by.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_15_04"); //All right - I'm coming from your boss and I'm supposed to kick your ass. Does that sound more reasonable?

	TRIA_Next(Drax);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_28_05"); //You can't be serious!

	TRIA_Next(Ratford);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_36_06"); //(laughs) He's just kidding, Drax. This guy seems like he's all right.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_15_07"); //What are you guys doing out here?
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_36_08"); //I'd love to chat, but I've got a dry throat right now. Without oiling, it's always so hard for me to speak.

	TRIA_Next(Drax);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_28_09"); //And me too. Let's have a couple of beers.

	TRIA_Next(Ratford);

	TRIA_Finish();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Ratford_Hi_Extend (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_Hi_Extend_Condition;
	information	= Info_Mod_Ratford_Hi_Extend_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ratford_Hi_Extend_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ratford_Hi))
	&& (Npc_GetDistToWP(hero, "OW_PATH_1_5_A") < 1000) {
		return 1;
	};
};

FUNC VOID Info_Mod_Ratford_Hi_Extend_Info()
{
	Info_ClearChoices	(Info_Mod_Ratford_Hi_Extend);

	Info_AddChoice	(Info_Mod_Ratford_Hi_Extend, "You can forget about that.", Info_Mod_Ratford_Hi_B);

	if (Npc_HasItems(hero, ItFo_Beer) >= 2) {
		Info_AddChoice	(Info_Mod_Ratford_Hi_Extend, "Round at me!", Info_Mod_Ratford_Hi_A);
	};
};

FUNC VOID Info_Mod_Ratford_Hi_B()
{
	var c_npc Ratford; Ratford = Hlp_GetNpc(Mod_1120_BDT_Ratford_MT);
	var c_npc Drax; Drax = Hlp_GetNpc(Mod_1121_BDT_Drax_MT);

	TRIA_Invite(Ratford);
	TRIA_Invite(Drax);
	TRIA_Start();

	TRIA_Next(Ratford);

	AI_Output(hero, self, "Info_Mod_Ratford_Hi_B_15_00"); //You can forget about that.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_B_36_01"); //That's no way to get into a chatty mood. I'd better get back to work.

	TRIA_Next(Drax);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_B_28_02"); //Yeah, fuck off!

	TRIA_Next(Ratford);

	TRIA_Finish();

	Info_ClearChoices	(Info_Mod_Ratford_Hi_Extend);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Ratford_Hi_A()
{
	var c_npc Ratford; Ratford = Hlp_GetNpc(Mod_1120_BDT_Ratford_MT);
	var c_npc Drax; Drax = Hlp_GetNpc(Mod_1121_BDT_Drax_MT);

	TRIA_Invite(Ratford);
	TRIA_Invite(Drax);
	TRIA_Start();

	TRIA_Next(Ratford);

	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_00"); //Round at me!

	B_ShowGivenThings	("Two beers served");

	Npc_RemoveInvItems	(hero, ItFo_Beer, 2);

	CreateInvItems	(Ratford, ItFo_Beer, 1);
	CreateInvItems	(Drax, ItFo_Beer, 1);

	B_UseItem	(Ratford, ItFo_Beer);
	B_UseItem	(Drax, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_01"); //All right, let's watch the area around here for the bandit camp.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_02"); //Bandit camp?
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_03"); //Yeah, that's a fine gang... We have not been around long, but we still know what cohesion means. We have had completely different experiences in this respect.

	TRIA_Next(Drax);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_28_04"); //As long as they let us do our thing in peace.

	TRIA_Next(Ratford);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_05"); //And they do. We take care that no invasion army crosses the pass, and if an animal runs into our bow, we kill it.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_06"); //The rest of the day, we're actually hanging out.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_07"); //Can you tell me anything about the Minental? What has happened here lately?
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_08"); //I don't know, but pretty much. In the big camps the shit is more or less steaming.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_09"); //In the old camp it seemed to be over and done with shortly after the fall of the barrier, at least we heard screams and noise up to here.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_10"); //Then a larger group of run-down characters passed by here.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_11"); //After that, the camp became suspiciously quiet. Hardly anyone else showed up. Who knows if there's anyone in there anymore.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_12"); //Sounds like I need to take a look at this.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_13"); //Don't let me stop you. Could be an insider's tip for looters, who knows.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_14"); //Have a nice day, then.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_15"); //Yes, we certainly will.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_16"); //Oh yes, if you want to visit us: Just walk along the rock face, first towards the forest, then uphill.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_17"); //We can always use someone like you.

	TRIA_Finish();

	Info_ClearChoices	(Info_Mod_Ratford_Hi_Extend);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Ratford_Fokus (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_Fokus_Condition;
	information	= Info_Mod_Ratford_Fokus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ratford_Fokus_Condition()
{
	if (Kapitel == 2)
	&& (Mod_RatfordDrax_Weg)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ratford_Fokus_Info()
{
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_00"); //Shit, I know you, man! Can you tell me what this is all about?
	AI_Output(hero, self, "Info_Mod_Ratford_Fokus_15_01"); //Do I look like that? What the hell happened?
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_02"); //Good question! Drax and I have just been hunting here, and this horde of Warge appeared behind us and is heading straight for us.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_03"); //So we immediately pulled our arrows and gave the beasts into their mouths, but there were way too many of them.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_04"); //But instead of falling over us, they run past us to that weird circle over there, grab a little square thing lying on top of us and run away.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_05"); //I've never seen anything so crazy. (laughs insecurely)
	AI_Output(hero, self, "Info_Mod_Ratford_Fokus_15_06"); //Where did the Warge disappear to?
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_07"); //Straight to hell, if you ask me.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_08"); //Drax is after them, they disappeared inland in the woods.
	AI_Output(hero, self, "Info_Mod_Ratford_Fokus_15_09"); //And you hold the line here.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_10"); //Well, the blow no longer works. I just hope Drax hasn't been mauled after all.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "When I was focusing on the cliffs, a war grotto preceded me. While under fire by Ratford and Drax, she grabbed the focus and disappeared inland in the forest. Drax was running after him.");

	B_StartOtherRoutine	(Mod_1121_BDT_Drax_MT, "FOKUS");

	Wld_InsertNpc	(Warg_RatfordDrax_09, "FP_WARGLEICHE_FOKUS_09");
	Wld_InsertNpc	(Warg_RatfordDrax_10, "FP_WARGLEICHE_FOKUS_10");
	Wld_InsertNpc	(Warg_RatfordDrax_11, "FP_WARGLEICHE_FOKUS_11");
	Wld_InsertNpc	(Warg_RatfordDrax_12, "FP_WARGLEICHE_FOKUS_12");
	Wld_InsertNpc	(Warg_RatfordDrax_13, "FP_WARGLEICHE_FOKUS_13");
	Wld_InsertNpc	(Warg_RatfordDrax_14, "FP_WARGLEICHE_FOKUS_14");
	Wld_InsertNpc	(Warg_RatfordDrax_15, "FP_WARGLEICHE_FOKUS_15");
	Wld_InsertNpc	(Warg_RatfordDrax_16, "FP_WARGLEICHE_FOKUS_16");
	Wld_InsertNpc	(Warg_RatfordDrax_17, "FP_WARGLEICHE_FOKUS_17");
	Wld_InsertNpc	(Warg_RatfordDrax_18, "FP_WARGLEICHE_FOKUS_18");
	Wld_InsertNpc	(Warg_RatfordDrax_19, "FP_WARGLEICHE_FOKUS_19");
	Wld_InsertNpc	(Warg_RatfordDrax_20, "FP_WARGLEICHE_FOKUS_20");
	Wld_InsertNpc	(Warg_RatfordDrax_21, "FP_WARGLEICHE_FOKUS_21");
	Wld_InsertNpc	(Warg_RatfordDrax_22, "FP_WARGLEICHE_FOKUS_22");

	B_KillNpc	(Warg_RatfordDrax_09);
	B_KillNpc	(Warg_RatfordDrax_10);
	B_KillNpc	(Warg_RatfordDrax_11);
	B_KillNpc	(Warg_RatfordDrax_12);
	B_KillNpc	(Warg_RatfordDrax_13);
	B_KillNpc	(Warg_RatfordDrax_14);
	B_KillNpc	(Warg_RatfordDrax_15);
	B_KillNpc	(Warg_RatfordDrax_16);
	B_KillNpc	(Warg_RatfordDrax_17);
	B_KillNpc	(Warg_RatfordDrax_18);
	B_KillNpc	(Warg_RatfordDrax_19);
	B_KillNpc	(Warg_RatfordDrax_20);
	B_KillNpc	(Warg_RatfordDrax_21);
	B_KillNpc	(Warg_RatfordDrax_22);
};

INSTANCE Info_Mod_Ratford_Pickpocket (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_Pickpocket_Condition;
	information	= Info_Mod_Ratford_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ratford_Pickpocket_Condition()
{
	C_Beklauen	(85, ItFo_MuttonRaw, 11);
};

FUNC VOID Info_Mod_Ratford_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

	Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_BACK, Info_Mod_Ratford_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ratford_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ratford_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);
};

FUNC VOID Info_Mod_Ratford_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

		Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ratford_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ratford_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ratford_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ratford_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ratford_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ratford_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ratford_EXIT (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_EXIT_Condition;
	information	= Info_Mod_Ratford_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ratford_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ratford_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
